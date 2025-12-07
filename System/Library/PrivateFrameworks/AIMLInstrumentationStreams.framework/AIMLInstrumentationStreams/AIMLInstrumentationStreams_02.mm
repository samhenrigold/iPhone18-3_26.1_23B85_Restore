unint64_t sub_23C5980C4()
{
  result = qword_27E1F9A50;
  if (!qword_27E1F9A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A50);
  }

  return result;
}

unint64_t sub_23C59811C()
{
  result = qword_27E1F9A58;
  if (!qword_27E1F9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A58);
  }

  return result;
}

unint64_t sub_23C598174()
{
  result = qword_27E1F9A60;
  if (!qword_27E1F9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A60);
  }

  return result;
}

unint64_t sub_23C5981CC()
{
  result = qword_27E1F9A68;
  if (!qword_27E1F9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A68);
  }

  return result;
}

unint64_t sub_23C598224()
{
  result = qword_27E1F9A70;
  if (!qword_27E1F9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A70);
  }

  return result;
}

unint64_t sub_23C59827C()
{
  result = qword_27E1F9A78;
  if (!qword_27E1F9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A78);
  }

  return result;
}

unint64_t sub_23C5982D4()
{
  result = qword_27E1F9A80;
  if (!qword_27E1F9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A80);
  }

  return result;
}

unint64_t sub_23C59832C()
{
  result = qword_27E1F9A88;
  if (!qword_27E1F9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9A88);
  }

  return result;
}

uint64_t sub_23C598380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C5983E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23C59844C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C40, &unk_23C87BE90);
    v3 = sub_23C871E94();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23C5FF898(v5, v6);
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

unint64_t sub_23C598564(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23C871E94();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_23C5FF898(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_23C598660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C50, &unk_23C87BEA0);
    v3 = sub_23C871E94();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_23C5FFB88(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_23C598798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBDE0, &qword_23C874D00);
    v3 = sub_23C871E94();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = i[1];
      v10 = i[2];
      v9 = i[3];
      v11 = i[4];
      v12 = i[5];

      result = sub_23C5FFB88(v5, v6, v7, v8);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 32 * result);
      *v15 = v5;
      v15[1] = v6;
      v15[2] = v7;
      v15[3] = v8;
      v16 = (v3[7] + 32 * result);
      *v16 = v10;
      v16[1] = v9;
      v16[2] = v11;
      v16[3] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

unint64_t sub_23C598900(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23C871E94();

    for (i = (a1 + 64); ; i += 5)
    {
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_23C5FFB88(v7, v8, v9, v10);
      if (v13)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v5[6] + 32 * result);
      *v14 = v7;
      v14[1] = v8;
      v14[2] = v9;
      v14[3] = v10;
      *(v5[7] + 8 * result) = v11;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_23C598A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD10, &qword_23C874AF8);
    v3 = sub_23C871E94();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_23C5FF898(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_23C598B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE10, &unk_23C874CD0);
    v3 = sub_23C871E94();
    v4 = a1 + 32;

    while (1)
    {
      sub_23C5855B0(v4, v13, &qword_27E1F9C28, &unk_23C87AB40);
      result = sub_23C5FF9C4(v13);
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
      result = sub_23C59A4B0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_23C598C5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C18, &qword_23C874CC0);
    v3 = sub_23C871E94();
    v4 = a1 + 32;

    while (1)
    {
      sub_23C5855B0(v4, &v13, &qword_27E1F9C20, &qword_23C874CC8);
      v5 = v13;
      v6 = v14;
      result = sub_23C5FF898(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23C59A4B0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_23C598D8C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C10, &qword_23C87BEF0);
  v3 = sub_23C871E94();
  v5 = a1[4];
  v4 = a1[5];
  result = sub_23C5FF958(v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v8 = a1 + 7;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    *(v3[7] + 8 * result) = v4;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    sub_23C59A744(v4);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v8 - 1);
    v4 = *v8;
    result = sub_23C5FF958(v5);
    v8 += 2;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23C598E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AC8, &qword_23C874B30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AD0, &qword_23C874B38);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9AC8, &qword_23C874B30);
      result = sub_23C5FFCB8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
      result = sub_23C5983E4(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_23C599088(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_23C871E94();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_23C5855B0(v16, v12, a2, v27);
      result = sub_23C5FFCB8(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
      result = sub_23C5983E4(v12, v21 + *(*(v22 - 8) + 72) * v20, type metadata accessor for SiriConversationPublisher.GraphUUID);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

unint64_t sub_23C599264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AA0, &qword_23C874B00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AA8, &qword_23C874B08);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9AA0, &qword_23C874B00);
      result = sub_23C5FFCB8(v5);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = *(*(type metadata accessor for SiriConversationPublisher.GraphUUID(0) - 8) + 72) * result;
      sub_23C5983E4(v5, v13 + v14, type metadata accessor for SiriConversationPublisher.GraphUUID);
      result = sub_23C5983E4(&v5[v8], v7[7] + v14, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
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

unint64_t sub_23C599478(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B90, &qword_23C874C18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B98, &qword_23C874C20);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9B90, &qword_23C874C18);
      v11 = *v5;
      v12 = v5[1];
      result = sub_23C5FF898(*v5, v12);
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
      v18 = type metadata accessor for ToolKitProtoTypedValue(0);
      result = sub_23C5983E4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for ToolKitProtoTypedValue);
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

unint64_t sub_23C599660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B80, &qword_23C874C08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B88, &qword_23C874C10);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9B80, &qword_23C874C08);
      v11 = *v5;
      v12 = v5[1];
      result = sub_23C5FF898(*v5, v12);
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
      v18 = type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
      result = sub_23C5983E4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
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

unint64_t sub_23C59985C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23C871E94();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_23C5FF898(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_23C599950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B68, &qword_23C874BF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B70, &qword_23C874BF8);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9B68, &qword_23C874BF0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_23C5FF898(*v5, v12);
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
      v18 = type metadata accessor for TranscriptProtoActionParameterValue(0);
      result = sub_23C5983E4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for TranscriptProtoActionParameterValue);
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

unint64_t sub_23C599B38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B58, &qword_23C874BE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B60, &qword_23C874BE8);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9B58, &qword_23C874BE0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_23C5FF898(*v5, v12);
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
      v18 = type metadata accessor for TranscriptProtoParameterValue(0);
      result = sub_23C5983E4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for TranscriptProtoParameterValue);
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

unint64_t sub_23C599D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B48, &qword_23C874BD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B50, &qword_23C874BD8);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9B48, &qword_23C874BD0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_23C5FF898(*v5, v12);
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
      v18 = type metadata accessor for TranscriptProtoShimParameters(0);
      result = sub_23C5983E4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for TranscriptProtoShimParameters);
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

unint64_t sub_23C599F08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B38, &qword_23C874BC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B40, &qword_23C874BC8);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9B38, &qword_23C874BC0);
      v11 = *v5;
      result = sub_23C5FF910(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 4 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for ToolKitProtoTypedValue(0);
      result = sub_23C5983E4(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for ToolKitProtoTypedValue);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_23C59A0E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B28, &qword_23C874BB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B30, &qword_23C874BB8);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9B28, &qword_23C874BB0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_23C5FF898(*v5, v12);
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
      v18 = type metadata accessor for TranscriptProtoASTFlatValue(0);
      result = sub_23C5983E4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for TranscriptProtoASTFlatValue);
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

unint64_t sub_23C59A2C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B18, &qword_23C874BA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B20, &qword_23C874BA8);
    v7 = sub_23C871E94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23C5855B0(v9, v5, &qword_27E1F9B18, &qword_23C874BA0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_23C5FF898(*v5, v12);
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
      v18 = type metadata accessor for TranscriptProtoStatementID(0);
      result = sub_23C5983E4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for TranscriptProtoStatementID);
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

_OWORD *sub_23C59A4B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23C59A51C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23C59A6F0();
  result = MEMORY[0x23EED72E0](v2, &type metadata for MessageTypeWrapper, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_23C64E73C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_23C59A590(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {
    v4 = type metadata accessor for ComponentIdentifierBridge();
    v5 = sub_23C58ABD4(&qword_27E1F9BF0, type metadata accessor for ComponentIdentifierBridge, MEMORY[0x277D85378]);
    result = MEMORY[0x23EED72E0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EED7610](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_23C64E838(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_23C871C34();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_23C59A6F0()
{
  result = qword_27E1F9C00;
  if (!qword_27E1F9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9C00);
  }

  return result;
}

unint64_t sub_23C59A744(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

id BiomeEventGraph.init(timestamp:events:)(uint64_t a1, double a2)
{
  sub_23C5A3FDC(0, &qword_2814FABB0, 0x277D86200);
  sub_23C871B54();
  sub_23C871664();
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEvents] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEventGraphs] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___siriTurns] = 0;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_timestamp] = a2;
  *&v2[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_eventsInternal] = a1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for BiomeEventGraph(0);
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t type metadata accessor for BiomeEventGraph(uint64_t a1)
{
  result = qword_27E1F9CD8;
  if (!qword_27E1F9CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C59A99C()
{
  if (*(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events))
  {
    v1 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_eventsInternal);
    *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___events) = v1;
    swift_bridgeObjectRetain_n();
  }

  return v1;
}

uint64_t (*sub_23C59AA10(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59A99C();
  return sub_23C59AA58;
}

unint64_t sub_23C59AA64()
{
  v1 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEvents);
  if (v1)
  {
  }

  else
  {
    v11 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___selfEvents;
    v2 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_eventsInternal);
    v12 = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
LABEL_20:
      v3 = sub_23C871C34();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    while (v3 != v4)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EED7610](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v8 = *&v5[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent];

      ++v4;
      if (v8)
      {
        MEMORY[0x23EED7170]();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23C8718D4();
        }

        sub_23C871904();
        v4 = v7;
      }
    }

    v12 = sub_23C5A3EE8(v9, sub_23C65368C, sub_23C6487D4);
    sub_23C59C9D0(&v12);

    v1 = v12;
    *(v0 + v11) = v12;
  }

  return v1;
}

uint64_t (*sub_23C59AC94(unint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59AA64();
  return sub_23C59ACDC;
}

uint64_t sub_23C59ACE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92B0, &qword_23C8734F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for TranscriptProtoEvent(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents];
  if (v9)
  {
  }

  else
  {
    v19 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___transcriptEvents;
    v10 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_eventsInternal];
    if (v10 >> 62)
    {
      goto LABEL_21;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v0; v11; i = v0)
    {
      v12 = 0;
      v25 = v10 & 0xC000000000000001;
      v23 = v6;
      v24 = v10 & 0xFFFFFFFFFFFFFF8;
      v21 = v5;
      v22 = (v5 + 48);
      v13 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v25)
        {
          v6 = MEMORY[0x23EED7610](v12, v10);
        }

        else
        {
          if (v12 >= *(v24 + 16))
          {
            goto LABEL_20;
          }

          v6 = *(v10 + 8 * v12 + 32);
        }

        v0 = v6;
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v14 = OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_transcriptProto;
        swift_beginAccess();
        sub_23C5855B0(&v0[v14], v3, &qword_27E1F92B0, &qword_23C8734F0);

        if ((*v22)(v3, 1, v23) == 1)
        {
          v6 = sub_23C585C34(v3, &qword_27E1F92B0, &qword_23C8734F0);
        }

        else
        {
          sub_23C5A3818(v3, v8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_23C58443C(0, v13[2] + 1, 1, v13);
          }

          v16 = v13[2];
          v15 = v13[3];
          v0 = (v16 + 1);
          if (v16 >= v15 >> 1)
          {
            v13 = sub_23C58443C((v15 > 1), v16 + 1, 1, v13);
          }

          v13[2] = v0;
          v6 = sub_23C5A3818(v8, v13 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16);
        }

        ++v12;
        if (v5 == v11)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v17 = v6;
      v11 = sub_23C871C34();
      v6 = v17;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_23:
    v26 = v13;

    sub_23C59C808(&v26);

    v9 = v26;
    *&i[v19] = v26;
  }

  return v9;
}

uint64_t (*sub_23C59B074(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59ACE8();
  return sub_23C59B0BC;
}

uint64_t sub_23C59B0C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A8, &qword_23C8734E8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_23C871604();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents];
  if (v9)
  {
  }

  else
  {
    v37 = v6;
    v28 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___gfiEvents;
    v10 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_eventsInternal];
    if (v10 >> 62)
    {
      goto LABEL_21;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v0; v11; i = v0)
    {
      v12 = 0;
      v35 = v10 & 0xFFFFFFFFFFFFFF8;
      v36 = v10 & 0xC000000000000001;
      v13 = (v5 + 6);
      v31 = v5;
      v32 = (v5 + 4);
      v14 = MEMORY[0x277D84F90];
      v5 = &qword_27E1F92A8;
      v33 = v11;
      v34 = v8;
      v15 = &qword_23C8734E8;
      v30 = v13;
      while (1)
      {
        if (v36)
        {
          v16 = v10;
          v17 = MEMORY[0x23EED7610](v12);
        }

        else
        {
          if (v12 >= *(v35 + 16))
          {
            goto LABEL_20;
          }

          v16 = v10;
          v17 = *(v10 + 8 * v12 + 32);
        }

        v0 = v17;
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v8 = v5;
        v19 = OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_gfiEvent;
        swift_beginAccess();
        v20 = &v0[v19];
        v5 = v8;
        sub_23C5855B0(v20, v3, v8, v15);

        v0 = v37;
        if ((*v13)(v3, 1, v37) == 1)
        {
          sub_23C585C34(v3, v8, v15);
        }

        else
        {
          v21 = v15;
          v22 = *v32;
          (*v32)(v34, v3, v0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_23C58448C(0, v14[2] + 1, 1, v14);
          }

          v24 = v14[2];
          v23 = v14[3];
          v0 = (v24 + 1);
          if (v24 >= v23 >> 1)
          {
            v14 = sub_23C58448C((v23 > 1), v24 + 1, 1, v14);
          }

          v14[2] = v0;
          v22((v14 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + v31[9] * v24), v34, v37);
          v5 = v8;
          v15 = v21;
          v13 = v30;
        }

        ++v12;
        v10 = v16;
        if (v18 == v33)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v25 = v10;
      v11 = sub_23C871C34();
      v10 = v25;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_23:
    v38 = v14;

    sub_23C59CA4C(&v38);

    v9 = v38;
    *&i[v28] = v38;
  }

  return v9;
}

uint64_t (*sub_23C59B490(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59B0C8();
  return sub_23C59B4D8;
}

uint64_t sub_23C59B4E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9290, &unk_23C8734D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_23C871414();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents];
  if (v9)
  {
  }

  else
  {
    v37 = v6;
    v28 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph____lazy_storage___telemetryEvents;
    v10 = *&v0[OBJC_IVAR____TtC26AIMLInstrumentationStreams15BiomeEventGraph_eventsInternal];
    if (v10 >> 62)
    {
      goto LABEL_21;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v0; v11; i = v0)
    {
      v12 = 0;
      v35 = v10 & 0xFFFFFFFFFFFFFF8;
      v36 = v10 & 0xC000000000000001;
      v13 = (v5 + 6);
      v31 = v5;
      v32 = (v5 + 4);
      v14 = MEMORY[0x277D84F90];
      v5 = &unk_27E1F9290;
      v33 = v11;
      v34 = v8;
      v15 = &unk_23C8734D0;
      v30 = v13;
      while (1)
      {
        if (v36)
        {
          v16 = v10;
          v17 = MEMORY[0x23EED7610](v12);
        }

        else
        {
          if (v12 >= *(v35 + 16))
          {
            goto LABEL_20;
          }

          v16 = v10;
          v17 = *(v10 + 8 * v12 + 32);
        }

        v0 = v17;
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v8 = v5;
        v19 = OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_telemetryEvent;
        swift_beginAccess();
        v20 = &v0[v19];
        v5 = v8;
        sub_23C5855B0(v20, v3, v8, v15);

        v0 = v37;
        if ((*v13)(v3, 1, v37) == 1)
        {
          sub_23C585C34(v3, v8, v15);
        }

        else
        {
          v21 = v15;
          v22 = *v32;
          (*v32)(v34, v3, v0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_23C584464(0, v14[2] + 1, 1, v14);
          }

          v24 = v14[2];
          v23 = v14[3];
          v0 = (v24 + 1);
          if (v24 >= v23 >> 1)
          {
            v14 = sub_23C584464((v23 > 1), v24 + 1, 1, v14);
          }

          v14[2] = v0;
          v22((v14 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + v31[9] * v24), v34, v37);
          v5 = v8;
          v15 = v21;
          v13 = v30;
        }

        ++v12;
        v10 = v16;
        if (v18 == v33)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v25 = v10;
      v11 = sub_23C871C34();
      v10 = v25;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_23:
    v38 = v14;

    sub_23C59C8EC(&v38);

    v9 = v38;
    *&i[v28] = v38;
  }

  return v9;
}

uint64_t (*sub_23C59B8AC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59B4E4();
  return sub_23C59B8F4;
}

void *sub_23C59B920()
{
  v0 = sub_23C870B74();
  v57 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v56 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v60 = v43 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5E0, &unk_23C87AE00);
  inited = swift_initStackObject();
  v5 = MEMORY[0x277D84F90];
  inited[2] = sub_23C595CB8(MEMORY[0x277D84F90]);
  inited[3] = sub_23C595DA8(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9CF8, &unk_23C874DD0);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_23C595DBC(v5);
  inited[4] = v6;
  inited[5] = sub_23C595DD0(v5);
  inited[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB5F0, &qword_23C87AE10);
  v7 = swift_initStackObject();
  *(v7 + 16) = sub_23C595EC8(v5);
  v8 = sub_23C5960B0(v5);
  v49 = v7;
  *(v7 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D00, &unk_23C874DE0);
  v9 = swift_initStackObject();
  *(v9 + 16) = sub_23C596298(v5);
  *(v9 + 24) = sub_23C59647C(v5);
  v10 = sub_23C59AA64();
  v62 = v5;
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_43:

    return MEMORY[0x277D84F90];
  }

LABEL_42:
  v40 = v9;
  v41 = v10;
  v42 = sub_23C871C34();
  v10 = v41;
  v9 = v40;
  if (!v42)
  {
    goto LABEL_43;
  }

LABEL_3:
  sub_23C667984(v10, inited, v49, v9);

  v10 = sub_23C608CF4();
  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

  v10 = sub_23C871C34();
  v12 = v10;
  if (!v10)
  {
LABEL_45:

    return MEMORY[0x277D84F90];
  }

LABEL_5:
  v43[1] = v9;
  v13 = 0;
  v14 = 0;
  v50 = v11 & 0xC000000000000001;
  v45 = v11 & 0xFFFFFFFFFFFFFF8;
  v44 = v11 + 32;
  v59 = (v57 + 32);
  v15 = MEMORY[0x277D84F90];
  v55 = v0;
  v48 = inited;
  v47 = v11;
  v46 = v12;
  while (1)
  {
    while (1)
    {
      if (v50)
      {
        v10 = MEMORY[0x23EED7610](v13, v11);
        v16 = __OFADD__(v13++, 1);
        if (v16)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v13 >= *(v45 + 16))
        {
          goto LABEL_41;
        }

        v10 = *(v44 + 8 * v13);
        v16 = __OFADD__(v13++, 1);
        if (v16)
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      v17 = v10;
      v10 = sub_23C638AD4(v10);
      if (v18)
      {
        break;
      }

      if (v13 == v12)
      {
        goto LABEL_37;
      }
    }

    v19 = v18;
    v51 = *&v10;
    v52 = v17;
    v54 = v13;
    v20 = v18 & 0xFFFFFFFFFFFFFF8;
    if (v18 >> 62)
    {
      v10 = sub_23C871C34();
      v9 = v10;
    }

    else
    {
      v9 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v14;
    if (v9)
    {
      break;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_32:
    v32 = v51;
    v33 = v19;
    v34 = sub_23C596660(v22);

    v35 = v49;

    v14 = v53;
    v36 = sub_23C5A4024(v34, v35);

    v61 = v33;
    sub_23C6360C8(v36);
    v37 = v61;
    v38 = objc_allocWithZone(type metadata accessor for EventGraph());
    v39 = EventGraph.init(timestamp:events:)(v37, v32);
    MEMORY[0x23EED7170]();
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23C8718D4();
      v0 = v55;
    }

    sub_23C871904();

    v15 = v62;
    inited = v48;
    v11 = v47;
    v12 = v46;
    v13 = v54;
    if (v54 == v46)
    {
LABEL_37:

      return v15;
    }
  }

  v21 = 0;
  v58 = v19 & 0xC000000000000001;
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v58)
    {
      v10 = MEMORY[0x23EED7610](v21, v19);
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v21 >= *(v20 + 16))
      {
        goto LABEL_39;
      }

      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    v24 = v20;
    inited = v19;
    result = sub_23C870CF4();
    if (!result)
    {
      break;
    }

    v26 = result;
    v27 = v56;
    sub_23C870D94();

    v28 = *v59;
    (*v59)(v60, v27, v0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_23C5844B4(0, v22[2] + 1, 1, v22);
    }

    v30 = v22[2];
    v29 = v22[3];
    v20 = v24;
    if (v30 >= v29 >> 1)
    {
      v22 = sub_23C5844B4((v29 > 1), v30 + 1, 1, v22);
    }

    v22[2] = v30 + 1;
    v31 = v22 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v30;
    v0 = v55;
    v10 = v28(v31, v60, v55);
    ++v21;
    v19 = inited;
    if (v23 == v9)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23C59C038(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59B900();
  return sub_23C59C080;
}

uint64_t sub_23C59C0AC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_23C59C114()
{
  isUniquelyReferenced_nonNull_native = sub_23C59B900();
  v45 = MEMORY[0x277D84F90];
  v1 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_53;
  }

  v2 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = isUniquelyReferenced_nonNull_native; v2; i = v35)
  {
    v3 = 0;
    v44 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v4 = isUniquelyReferenced_nonNull_native + 32;
    v42 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v44)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x23EED7610](v3, i);
      }

      else
      {
        if (v3 >= *(v1 + 16))
        {
          goto LABEL_50;
        }

        isUniquelyReferenced_nonNull_native = *(v4 + 8 * v3);
      }

      v5 = isUniquelyReferenced_nonNull_native;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      objc_allocWithZone(type metadata accessor for SiriTurn());
      v7 = sub_23C5A3FDC(0, &qword_27E1F9CE8, 0x277D5A800);
      v8 = sub_23C601560();
      if (*(v8 + 16) && (v9 = sub_23C5FF958(v7), (v10 & 1) != 0))
      {
        v11 = *(*(v8 + 56) + 8 * v9);

        v12 = 0;
        v13 = 1 << *(v11 + 32);
        v14 = (v13 + 63) >> 6;
        v15 = 64;
        while (1)
        {
          v16 = *(v11 + v15);
          if (v16)
          {
            break;
          }

          v12 -= 64;
          v15 += 8;
          if (!--v14)
          {
            goto LABEL_16;
          }
        }

        v17 = __clz(__rbit64(v16));
        if (v17 - v13 == v12)
        {
LABEL_16:

          goto LABEL_17;
        }

        v18 = sub_23C5A3F8C(v17 - v12, *(v11 + 36), 0, v11);

        sub_23C601CF4(v18);

        v19 = *&v5[OBJC_IVAR___ISEventGraph_eventsInternal];
        v43 = v19 & 0xFFFFFFFFFFFFFF8;
        if (v19 >> 62)
        {
          v20 = sub_23C871C34();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v20)
        {
          v21 = 0;
          v40 = v19 & 0xC000000000000001;
          v37 = MEMORY[0x277D84F90];
          v38 = v2;
          v39 = v20;
          do
          {
            v22 = v21;
            while (1)
            {
              if (v40)
              {
                isUniquelyReferenced_nonNull_native = MEMORY[0x23EED7610](v22, v19);
                v23 = isUniquelyReferenced_nonNull_native;
                v24 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  goto LABEL_51;
                }
              }

              else
              {
                if (v22 >= *(v43 + 16))
                {
                  goto LABEL_52;
                }

                v23 = *(v19 + 8 * v22 + 32);

                v24 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  goto LABEL_51;
                }
              }

              v25 = v1;
              v26 = v4;
              v27 = v19;
              sub_23C5A3FDC(0, &qword_27E1F9CF0, 0x277D5A928);
              v28 = sub_23C870D44();
              if (v28)
              {
                break;
              }

              ++v22;
              v4 = v26;
              v1 = v25;
              v2 = v38;
              if (v24 == v39)
              {
                goto LABEL_41;
              }
            }

            v29 = *(v23 + 16);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_23C5845FC(0, *(v37 + 16) + 1, 1, v37);
              v37 = isUniquelyReferenced_nonNull_native;
            }

            v21 = v24;
            v31 = *(v37 + 16);
            v30 = *(v37 + 24);
            if (v31 >= v30 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_23C5845FC((v30 > 1), v31 + 1, 1, v37);
              v21 = v24;
              v37 = isUniquelyReferenced_nonNull_native;
            }

            *(v37 + 16) = v31 + 1;
            *(v37 + 8 * v31 + 32) = v29;
            v19 = v27;
            v4 = v26;
            v1 = v25;
            v2 = v38;
          }

          while (v21 != v39);
        }

        else
        {
          v37 = MEMORY[0x277D84F90];
        }

LABEL_41:

        if (*(v37 + 16))
        {
          v32 = (v37 + 32);
        }

        else
        {
          v32 = &v5[OBJC_IVAR___ISEventGraph_timestamp];
        }

        v33 = *v32;

        EventGraph.init(timestamp:events:)(v34, v33);

        MEMORY[0x23EED7170]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23C8718D4();
        }

        isUniquelyReferenced_nonNull_native = sub_23C871904();
        v42 = v45;
      }

      else
      {

LABEL_17:
        isUniquelyReferenced_nonNull_native = swift_deallocPartialClassInstance();
      }

      if (v3 == v2)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v35 = isUniquelyReferenced_nonNull_native;
    v2 = sub_23C871C34();
    isUniquelyReferenced_nonNull_native = v35;
  }

  v42 = MEMORY[0x277D84F90];
LABEL_55:

  return v42;
}

uint64_t (*sub_23C59C5E8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C59C08C();
  return sub_23C59C630;
}

id BiomeEventGraph.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeEventGraph.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeEventGraph(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C59C808(uint64_t *a1)
{
  v2 = *(type metadata accessor for TranscriptProtoEvent(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23C648E14(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23C59CC34(v6, type metadata accessor for TranscriptProtoEvent, sub_23C59DE6C, sub_23C59CD84);
  *a1 = v3;
  return result;
}

uint64_t sub_23C59C8EC(uint64_t *a1)
{
  v2 = *(sub_23C871414() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23C648E28(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23C59CC34(v6, MEMORY[0x277D1F728], sub_23C59F370, sub_23C59D578);
  *a1 = v3;
  return result;
}

uint64_t sub_23C59C9D0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23C64BCE4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_23C59CB30(v6);
  return sub_23C871D64();
}

uint64_t sub_23C59CA4C(uint64_t *a1)
{
  v2 = *(sub_23C871604() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23C648E3C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23C59CC34(v6, MEMORY[0x277D20B20], sub_23C5A0ABC, sub_23C59DBCC);
  *a1 = v3;
  return result;
}

uint64_t sub_23C59CB30(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23C871FC4();
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
        type metadata accessor for TimestampedOrderedEvent();
        v6 = sub_23C8718F4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_23C5A03C4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_23C59DAB8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23C59CC34(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_23C871FC4();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_23C8718F4();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_23C59CD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v70 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v67 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v58 - v15;
  v77 = sub_23C870AE4();
  v16 = *(v77 - 8);
  v17 = MEMORY[0x28223BE20](v77);
  v62 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v61 = &v58 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v58 - v22;
  MEMORY[0x28223BE20](v21);
  v76 = &v58 - v23;
  v86 = type metadata accessor for TranscriptProtoEvent(0);
  v24 = MEMORY[0x28223BE20](v86);
  v84 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v87 = &v58 - v27;
  result = MEMORY[0x28223BE20](v26);
  v31 = &v58 - v30;
  v60 = a2;
  if (a3 != a2)
  {
    v32 = *a4;
    v33 = *(v29 + 72);
    v74 = (v16 + 32);
    v68 = (v16 + 8);
    v34 = v32 + v33 * (a3 - 1);
    v82 = -v33;
    v83 = v32;
    v35 = a1 - a3;
    v59 = v33;
    v36 = v32 + v33 * a3;
    v37 = &qword_27E1F9D08;
    v85 = &v58 - v30;
LABEL_5:
    v66 = a3;
    v63 = v36;
    v64 = v35;
    v65 = v34;
    v38 = v79;
    v39 = v86;
    while (1)
    {
      sub_23C5A4514(v36, v31);
      sub_23C5A4514(v34, v87);
      sub_23C5855B0(&v31[*(v39 + 52)], v38, v37, &qword_23C87D090);
      v40 = type metadata accessor for TranscriptProtoTimepoint(0);
      v41 = v37;
      v42 = *(*(v40 - 8) + 48);
      if (v42(v38, 1, v40) == 1)
      {
        break;
      }

      v43 = v78;
      sub_23C5855B0(v38 + *(v40 + 28), v78, &unk_27E1F9D10, &qword_23C874E00);
      sub_23C5A4578(v38, type metadata accessor for TranscriptProtoTimepoint);
      v44 = sub_23C870EC4();
      v45 = *(v44 - 8);
      v80 = *(v45 + 48);
      v81 = v44;
      if (v80(v43, 1) == 1)
      {
        sub_23C585C34(v43, &unk_27E1F9D10, &qword_23C874E00);
        v38 = v79;
        v31 = v85;
        v37 = &qword_27E1F9D08;
        goto LABEL_15;
      }

      v75 = v35;
      v46 = v69;
      sub_23C870EB4();
      v72 = *(v45 + 8);
      v73 = v45 + 8;
      v72(v43, v81);
      v71 = *v74;
      v71(v76, v46, v77);
      v47 = v70;
      sub_23C5855B0(v87 + *(v86 + 52), v70, &qword_27E1F9D08, &qword_23C87D090);
      if (v42(v47, 1, v40) == 1)
      {
        sub_23C585C34(v47, &qword_27E1F9D08, &qword_23C87D090);
        v31 = v85;
        v37 = &qword_27E1F9D08;
        v35 = v75;
        goto LABEL_14;
      }

      v48 = v67;
      sub_23C5855B0(v47 + *(v40 + 28), v67, &unk_27E1F9D10, &qword_23C874E00);
      sub_23C5A4578(v47, type metadata accessor for TranscriptProtoTimepoint);
      v49 = (v80)(v48, 1, v81);
      v35 = v75;
      if (v49 == 1)
      {
        sub_23C585C34(v48, &unk_27E1F9D10, &qword_23C874E00);
        v31 = v85;
        v37 = &qword_27E1F9D08;
LABEL_14:
        (*v68)(v76, v77);
        v38 = v79;
LABEL_15:
        v39 = v86;
        sub_23C5A4578(v87, type metadata accessor for TranscriptProtoEvent);
        result = sub_23C5A4578(v31, type metadata accessor for TranscriptProtoEvent);
        goto LABEL_16;
      }

      v52 = v62;
      sub_23C870EB4();
      v72(v48, v81);
      v53 = v61;
      v54 = v77;
      v71(v61, v52, v77);
      v55 = v76;
      v56 = sub_23C870A94();
      v57 = *v68;
      (*v68)(v53, v54);
      v57(v55, v54);
      sub_23C5A4578(v87, type metadata accessor for TranscriptProtoEvent);
      v31 = v85;
      v39 = v86;
      result = sub_23C5A4578(v85, type metadata accessor for TranscriptProtoEvent);
      v38 = v79;
      v37 = &qword_27E1F9D08;
      if ((v56 & 1) == 0)
      {
LABEL_4:
        a3 = v66 + 1;
        v34 = v65 + v59;
        v35 = v64 - 1;
        v36 = v63 + v59;
        if (v66 + 1 == v60)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_16:
      if (!v83)
      {
        __break(1u);
        return result;
      }

      v50 = v84;
      sub_23C5A3818(v36, v84);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23C5A3818(v50, v34);
      v34 += v82;
      v36 += v82;
      if (__CFADD__(v35++, 1))
      {
        goto LABEL_4;
      }
    }

    sub_23C585C34(v38, v41, &qword_23C87D090);
    v31 = v85;
    v37 = v41;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_23C59D578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v68 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v65 = &v47[-v11];
  v12 = sub_23C870AE4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v67 = &v47[-v16];
  v17 = sub_23C871414();
  v18 = MEMORY[0x28223BE20](v17);
  v57 = &v47[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &v47[-v21];
  result = MEMORY[0x28223BE20](v20);
  v66 = &v47[-v24];
  v49 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v23 + 16);
    v26 = v23 + 16;
    v28 = *(v26 + 56);
    v29 = (v13 + 48);
    v61 = (v13 + 32);
    v62 = v27;
    v59 = (v13 + 48);
    v60 = (v13 + 8);
    v58 = (v26 - 8);
    v63 = v26;
    v30 = v25 + v28 * (a3 - 1);
    v54 = -v28;
    v55 = (v26 + 16);
    v31 = a1 - a3;
    v56 = v25;
    v48 = v28;
    v32 = v25 + v28 * a3;
LABEL_5:
    v52 = v30;
    v53 = a3;
    v50 = v32;
    v51 = v31;
    v33 = v31;
    while (1)
    {
      v34 = v62;
      v62(v66, v32, v17);
      v34(v69, v30, v17);
      v35 = v65;
      sub_23C871374();
      v36 = *v29;
      if ((*v29)(v35, 1, v12) == 1)
      {
        sub_23C870AB4();
        if (v36(v35, 1, v12) != 1)
        {
          sub_23C585C34(v65, &unk_27E2054F0, &unk_23C874DF0);
        }
      }

      else
      {
        (*v61)(v67, v35, v12);
      }

      sub_23C871374();
      v37 = v68;
      if (v36(v68, 1, v12) == 1)
      {
        v38 = v64;
        sub_23C870AB4();
        if (v36(v37, 1, v12) != 1)
        {
          sub_23C585C34(v37, &unk_27E2054F0, &unk_23C874DF0);
        }
      }

      else
      {
        v38 = v64;
        (*v61)(v64, v37, v12);
      }

      v39 = v67;
      v40 = sub_23C870A94();
      v41 = v38;
      v42 = *v60;
      (*v60)(v41, v12);
      v42(v39, v12);
      v43 = *v58;
      (*v58)(v69, v17);
      result = v43(v66, v17);
      v29 = v59;
      if ((v40 & 1) == 0)
      {
LABEL_4:
        a3 = v53 + 1;
        v30 = v52 + v48;
        v31 = v51 - 1;
        v32 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v56)
      {
        break;
      }

      v44 = *v55;
      v45 = v57;
      (*v55)(v57, v32, v17);
      swift_arrayInitWithTakeFrontToBack();
      result = v44(v30, v45, v17);
      v30 += v54;
      v32 += v54;
      if (__CFADD__(v33++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C59DAB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v16 = v6;
    while (1)
    {
      v10 = *(v8 + 16);
      v11 = *(*v6 + 16);
      if (v10 == v11)
      {
        sub_23C870D74();

        v12 = sub_23C870D14();

        if ((v12 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v11)
      {
        goto LABEL_4;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v13;
      --v6;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v4;
        v6 = v16 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C59DBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_23C871604();
  v9 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v49 = &v35 - v12;
  result = MEMORY[0x28223BE20](v11);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v14 + 16);
    v47 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v43 = (v14 + 32);
    v44 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v22 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v48;
      v25 = v46;
      v46(v48, v21, v8);
      v26 = v49;
      v25(v49, v23, v8);
      sub_23C8715E4();
      v28 = v27;
      sub_23C8715E4();
      v30 = v29;
      v31 = *v18;
      (*v18)(v26, v8);
      result = v31(v24, v8);
      if (v28 >= v30)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = v40 + v36;
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v23, v33, v8);
      v23 += v42;
      v21 += v42;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C59DE6C(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v192 = a4;
  v188 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v212 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v182 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v190 = &v182 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v182 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v207 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v182 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v187 = &v182 - v24;
  MEMORY[0x28223BE20](v23);
  v194 = &v182 - v25;
  v220 = sub_23C870AE4();
  v26 = *(v220 - 8);
  v27 = MEMORY[0x28223BE20](v220);
  v202 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v201 = &v182 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v211 = &v182 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v218 = &v182 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v183 = &v182 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v182 = &v182 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v189 = &v182 - v40;
  MEMORY[0x28223BE20](v39);
  v196 = &v182 - v41;
  v42 = type metadata accessor for TranscriptProtoEvent(0);
  v205 = *(v42 - 8);
  v43 = MEMORY[0x28223BE20](v42);
  v195 = &v182 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v226 = &v182 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v230 = &v182 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v229 = &v182 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v210 = &v182 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v208 = &v182 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v185 = &v182 - v56;
  result = MEMORY[0x28223BE20](v55);
  v184 = &v182 - v58;
  v206 = a3;
  v59 = a3[1];
  if (v59 < 1)
  {
    v61 = MEMORY[0x277D84F90];
LABEL_117:
    v26 = *v188;
    if (!*v188)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_119;
    }

    goto LABEL_150;
  }

  v227 = result;
  v60 = 0;
  v217 = (v26 + 32);
  v213 = (v26 + 8);
  v61 = MEMORY[0x277D84F90];
  v62 = &qword_27E1F9D08;
  v219 = v12;
  v203 = v16;
  v216 = v22;
  while (2)
  {
    v204 = v61;
    v191 = v60;
    if (v60 + 1 >= v59)
    {
      v72 = v60 + 1;
      v97 = v192;
      goto LABEL_35;
    }

    v209 = v59;
    v186 = v5;
    v63 = v60;
    v64 = *v206;
    v225 = v64;
    v65 = *(v205 + 72);
    v66 = &v64[v65 * (v60 + 1)];
    v67 = v184;
    sub_23C5A4514(v66, v184);
    v68 = &v64[v65 * v63];
    v69 = v185;
    sub_23C5A4514(v68, v185);
    LODWORD(v224) = _s26AIMLInstrumentationStreams20TranscriptProtoEventV1loiySbAC_ACtFZ_0(v67, v69);
    sub_23C5A4578(v69, type metadata accessor for TranscriptProtoEvent);
    result = sub_23C5A4578(v67, type metadata accessor for TranscriptProtoEvent);
    v70 = v191 + 2;
    v228 = v65;
    v26 = &v225[v65 * (v191 + 2)];
    while (1)
    {
      v72 = v209;
      if (v209 == v70)
      {
        break;
      }

      v73 = v208;
      sub_23C5A4514(v26, v208);
      sub_23C5A4514(v66, v210);
      v74 = v73 + *(v227 + 52);
      v75 = v203;
      sub_23C5855B0(v74, v203, v62, &qword_23C87D090);
      v76 = type metadata accessor for TranscriptProtoTimepoint(0);
      v77 = *(v76 - 8);
      v78 = v62;
      v79 = *(v77 + 48);
      v225 = (v77 + 48);
      if (v79(v75, 1, v76) == 1)
      {
        sub_23C585C34(v75, v78, &qword_23C87D090);
        v71 = 1;
        v22 = v216;
        v62 = v78;
      }

      else
      {
        v222 = v79;
        v80 = v194;
        sub_23C5855B0(v75 + *(v76 + 28), v194, &unk_27E1F9D10, &qword_23C874E00);
        v81 = v75;
        v82 = v80;
        sub_23C5A4578(v81, type metadata accessor for TranscriptProtoTimepoint);
        v83 = sub_23C870EC4();
        v84 = *(v83 - 8);
        v85 = *(v84 + 48);
        v223 = v83;
        v221 = v85;
        if ((v85)(v82, 1) == 1)
        {
          sub_23C585C34(v82, &unk_27E1F9D10, &qword_23C874E00);
          v71 = 1;
          v12 = v219;
          v22 = v216;
        }

        else
        {
          v86 = v189;
          sub_23C870EB4();
          v214 = *(v84 + 8);
          v215 = v84 + 8;
          v214(v82, v223);
          v87 = *v217;
          (*v217)(v196, v86, v220);
          v88 = v190;
          sub_23C5855B0(v210 + *(v227 + 52), v190, &qword_27E1F9D08, &qword_23C87D090);
          if (v222(v88, 1, v76) == 1)
          {
            sub_23C585C34(v88, &qword_27E1F9D08, &qword_23C87D090);
            v62 = &qword_27E1F9D08;
            v12 = v219;
            v22 = v216;
LABEL_17:
            (*v213)(v196, v220);
            v71 = 1;
            goto LABEL_7;
          }

          v225 = v87;
          v89 = v187;
          sub_23C5855B0(v88 + *(v76 + 28), v187, &unk_27E1F9D10, &qword_23C874E00);
          v90 = v88;
          v91 = v89;
          sub_23C5A4578(v90, type metadata accessor for TranscriptProtoTimepoint);
          v92 = v221(v89, 1, v223);
          v22 = v216;
          if (v92 == 1)
          {
            sub_23C585C34(v89, &unk_27E1F9D10, &qword_23C874E00);
            v12 = v219;
            v62 = &qword_27E1F9D08;
            goto LABEL_17;
          }

          v93 = v183;
          sub_23C870EB4();
          v214(v91, v223);
          v94 = v182;
          v95 = v220;
          (v225)(v182, v93, v220);
          v71 = sub_23C870A94();
          v96 = *v213;
          (*v213)(v94, v95);
          v96(v196, v95);
          v12 = v219;
        }

        v62 = &qword_27E1F9D08;
      }

LABEL_7:
      sub_23C5A4578(v210, type metadata accessor for TranscriptProtoEvent);
      result = sub_23C5A4578(v208, type metadata accessor for TranscriptProtoEvent);
      ++v70;
      v26 += v228;
      v66 += v228;
      v61 = v204;
      if ((v224 ^ v71))
      {
        v72 = v70 - 1;
        break;
      }
    }

    v5 = v186;
    v97 = v192;
    v60 = v191;
    if (v224)
    {
      if (v72 < v191)
      {
        goto LABEL_146;
      }

      if (v191 < v72)
      {
        v98 = v72;
        v99 = v228 * (v72 - 1);
        v100 = v72 * v228;
        v209 = v72;
        v101 = v191;
        v102 = v191 * v228;
        do
        {
          if (v101 != --v98)
          {
            v103 = *v206;
            if (!*v206)
            {
LABEL_152:
              __break(1u);
              goto LABEL_153;
            }

            v26 = &v103[v102];
            sub_23C5A3818(&v103[v102], v195);
            if (v102 < v99 || v26 >= &v103[v100])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v102 != v99)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_23C5A3818(v195, &v103[v99]);
            v97 = v192;
            v22 = v216;
          }

          ++v101;
          v99 -= v228;
          v100 -= v228;
          v102 += v228;
        }

        while (v101 < v98);
        v5 = v186;
        v62 = &qword_27E1F9D08;
        v60 = v191;
        v72 = v209;
      }
    }

LABEL_35:
    v104 = v206[1];
    if (v72 >= v104)
    {
      goto LABEL_44;
    }

    if (__OFSUB__(v72, v60))
    {
      goto LABEL_145;
    }

    if (v72 - v60 >= v97)
    {
LABEL_44:
      v26 = v72;
      if (v72 < v60)
      {
        goto LABEL_144;
      }

      goto LABEL_45;
    }

    if (__OFADD__(v60, v97))
    {
      goto LABEL_147;
    }

    if (v60 + v97 >= v104)
    {
      v26 = v206[1];
    }

    else
    {
      v26 = v60 + v97;
    }

    if (v26 < v60)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      result = sub_23C6473A0(v61);
      v61 = result;
LABEL_119:
      v231 = v61;
      v178 = *(v61 + 2);
      if (v178 >= 2)
      {
        while (*v206)
        {
          v179 = *&v61[16 * v178];
          v180 = *&v61[16 * v178 + 24];
          sub_23C5A14CC(&(*v206)[*(v205 + 72) * v179], &(*v206)[*(v205 + 72) * *&v61[16 * v178 + 16]], &(*v206)[*(v205 + 72) * v180], v26);
          if (v5)
          {
          }

          if (v180 < v179)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = sub_23C6473A0(v61);
          }

          if (v178 - 2 >= *(v61 + 2))
          {
            goto LABEL_143;
          }

          v181 = &v61[16 * v178];
          *v181 = v179;
          *(v181 + 1) = v180;
          v231 = v61;
          result = sub_23C647314(v178 - 1);
          v61 = v231;
          v178 = *(v231 + 2);
          if (v178 <= 1)
          {
          }
        }

LABEL_153:
        __break(1u);
        break;
      }
    }

    if (v72 == v26)
    {
      goto LABEL_44;
    }

    v186 = v5;
    v151 = *v206;
    v152 = *(v205 + 72);
    v153 = &(*v206)[v152 * (v72 - 1)];
    v224 = -v152;
    v225 = v151;
    v154 = v60 - v72;
    v193 = v152;
    v5 = &v151[v72 * v152];
    v155 = v227;
    v61 = &qword_23C87D090;
    v197 = v26;
    while (2)
    {
      v209 = v72;
      v198 = v5;
      v199 = v154;
      v156 = v154;
      v200 = v153;
      v26 = v153;
      while (2)
      {
        v228 = v156;
        v157 = v229;
        sub_23C5A4514(v5, v229);
        sub_23C5A4514(v26, v230);
        sub_23C5855B0(v157 + *(v155 + 52), v12, v62, &qword_23C87D090);
        v158 = type metadata accessor for TranscriptProtoTimepoint(0);
        v159 = *(*(v158 - 8) + 48);
        if (v159(v12, 1, v158) == 1)
        {
          sub_23C585C34(v12, v62, &qword_23C87D090);
          v155 = v227;
          goto LABEL_106;
        }

        v222 = v159;
        sub_23C5855B0(&v12[*(v158 + 28)], v22, &unk_27E1F9D10, &qword_23C874E00);
        sub_23C5A4578(v12, type metadata accessor for TranscriptProtoTimepoint);
        v160 = sub_23C870EC4();
        v161 = v22;
        v162 = *(v160 - 8);
        v163 = *(v162 + 48);
        v223 = v160;
        v221 = v163;
        if ((v163)(v161, 1) == 1)
        {
          sub_23C585C34(v161, &unk_27E1F9D10, &qword_23C874E00);
          v12 = v219;
          v22 = v161;
          v155 = v227;
          v62 = &qword_27E1F9D08;
          v61 = &qword_23C87D090;
          goto LABEL_106;
        }

        v164 = v211;
        sub_23C870EB4();
        v214 = *(v162 + 8);
        v215 = v162 + 8;
        v214(v161, v223);
        v165 = *v217;
        (*v217)(v218, v164, v220);
        v166 = v212;
        v61 = &qword_23C87D090;
        sub_23C5855B0(v230 + *(v227 + 52), v212, &qword_27E1F9D08, &qword_23C87D090);
        if (v222(v166, 1, v158) == 1)
        {
          sub_23C585C34(v166, &qword_27E1F9D08, &qword_23C87D090);
          v22 = v216;
          v155 = v227;
          v62 = &qword_27E1F9D08;
LABEL_105:
          (*v213)(v218, v220);
          v12 = v219;
LABEL_106:
          sub_23C5A4578(v230, type metadata accessor for TranscriptProtoEvent);
          sub_23C5A4578(v229, type metadata accessor for TranscriptProtoEvent);
        }

        else
        {
          v167 = v165;
          v168 = v207;
          sub_23C5855B0(v166 + *(v158 + 28), v207, &unk_27E1F9D10, &qword_23C874E00);
          sub_23C5A4578(v166, type metadata accessor for TranscriptProtoTimepoint);
          if (v221(v168, 1, v223) == 1)
          {
            sub_23C585C34(v168, &unk_27E1F9D10, &qword_23C874E00);
            v22 = v216;
            v155 = v227;
            v62 = &qword_27E1F9D08;
            v61 = &qword_23C87D090;
            goto LABEL_105;
          }

          v172 = v202;
          sub_23C870EB4();
          v214(v168, v223);
          v173 = v201;
          v174 = v220;
          (v167)(v201, v172, v220);
          v175 = v218;
          v176 = sub_23C870A94();
          v177 = *v213;
          (*v213)(v173, v174);
          v177(v175, v174);
          sub_23C5A4578(v230, type metadata accessor for TranscriptProtoEvent);
          sub_23C5A4578(v229, type metadata accessor for TranscriptProtoEvent);
          v12 = v219;
          v22 = v216;
          v155 = v227;
          v62 = &qword_27E1F9D08;
          v61 = &qword_23C87D090;
          if ((v176 & 1) == 0)
          {
            break;
          }
        }

        v169 = v228;
        if (!v225)
        {
          goto LABEL_149;
        }

        v170 = v226;
        sub_23C5A3818(v5, v226);
        swift_arrayInitWithTakeFrontToBack();
        sub_23C5A3818(v170, v26);
        v26 += v224;
        v5 += v224;
        v171 = __CFADD__(v169, 1);
        v156 = v169 + 1;
        if (!v171)
        {
          continue;
        }

        break;
      }

      v72 = v209 + 1;
      v153 = v200 + v193;
      v154 = v199 - 1;
      v5 = v198 + v193;
      v26 = v197;
      if (v209 + 1 != v197)
      {
        continue;
      }

      break;
    }

    v5 = v186;
    v61 = v204;
    if (v197 < v191)
    {
      goto LABEL_144;
    }

LABEL_45:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23C584338(0, *(v61 + 2) + 1, 1, v61);
      v61 = result;
    }

    v106 = *(v61 + 2);
    v105 = *(v61 + 3);
    v107 = v106 + 1;
    if (v106 >= v105 >> 1)
    {
      result = sub_23C584338((v105 > 1), v106 + 1, 1, v61);
      v61 = result;
    }

    *(v61 + 2) = v107;
    v108 = &v61[16 * v106];
    *(v108 + 4) = v191;
    *(v108 + 5) = v26;
    v197 = v26;
    v26 = *v188;
    if (*v188)
    {
      v109 = v5;
      if (!v106)
      {
LABEL_3:
        v59 = v206[1];
        v60 = v197;
        v5 = v109;
        v62 = &qword_27E1F9D08;
        if (v197 >= v59)
        {
          goto LABEL_117;
        }

        continue;
      }

      while (2)
      {
        v5 = v107 - 1;
        if (v107 >= 4)
        {
          v114 = &v61[16 * v107 + 32];
          v115 = *(v114 - 64);
          v116 = *(v114 - 56);
          v120 = __OFSUB__(v116, v115);
          v117 = v116 - v115;
          if (v120)
          {
            goto LABEL_131;
          }

          v119 = *(v114 - 48);
          v118 = *(v114 - 40);
          v120 = __OFSUB__(v118, v119);
          v112 = v118 - v119;
          v113 = v120;
          if (v120)
          {
            goto LABEL_132;
          }

          v121 = &v61[16 * v107];
          v123 = *v121;
          v122 = *(v121 + 1);
          v120 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v120)
          {
            goto LABEL_134;
          }

          v120 = __OFADD__(v112, v124);
          v125 = v112 + v124;
          if (v120)
          {
            goto LABEL_137;
          }

          if (v125 >= v117)
          {
            v143 = &v61[16 * v5 + 32];
            v145 = *v143;
            v144 = *(v143 + 1);
            v120 = __OFSUB__(v144, v145);
            v146 = v144 - v145;
            if (v120)
            {
              goto LABEL_141;
            }

            if (v112 < v146)
            {
              v5 = v107 - 2;
            }
          }

          else
          {
LABEL_64:
            if (v113)
            {
              goto LABEL_133;
            }

            v126 = &v61[16 * v107];
            v128 = *v126;
            v127 = *(v126 + 1);
            v129 = __OFSUB__(v127, v128);
            v130 = v127 - v128;
            v131 = v129;
            if (v129)
            {
              goto LABEL_136;
            }

            v132 = &v61[16 * v5 + 32];
            v134 = *v132;
            v133 = *(v132 + 1);
            v120 = __OFSUB__(v133, v134);
            v135 = v133 - v134;
            if (v120)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v130, v135))
            {
              goto LABEL_140;
            }

            if (v130 + v135 < v112)
            {
              goto LABEL_78;
            }

            if (v112 < v135)
            {
              v5 = v107 - 2;
            }
          }
        }

        else
        {
          if (v107 == 3)
          {
            v110 = *(v61 + 4);
            v111 = *(v61 + 5);
            v120 = __OFSUB__(v111, v110);
            v112 = v111 - v110;
            v113 = v120;
            goto LABEL_64;
          }

          v136 = &v61[16 * v107];
          v138 = *v136;
          v137 = *(v136 + 1);
          v120 = __OFSUB__(v137, v138);
          v130 = v137 - v138;
          v131 = v120;
LABEL_78:
          if (v131)
          {
            goto LABEL_135;
          }

          v139 = &v61[16 * v5];
          v141 = *(v139 + 4);
          v140 = *(v139 + 5);
          v120 = __OFSUB__(v140, v141);
          v142 = v140 - v141;
          if (v120)
          {
            goto LABEL_138;
          }

          if (v142 < v130)
          {
            goto LABEL_3;
          }
        }

        v147 = v5 - 1;
        if (v5 - 1 >= v107)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v206)
        {
          __break(1u);
          goto LABEL_152;
        }

        v148 = *&v61[16 * v147 + 32];
        v149 = *&v61[16 * v5 + 40];
        sub_23C5A14CC(&(*v206)[*(v205 + 72) * v148], &(*v206)[*(v205 + 72) * *&v61[16 * v5 + 32]], &(*v206)[*(v205 + 72) * v149], v26);
        if (v109)
        {
        }

        if (v149 < v148)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_23C6473A0(v61);
        }

        if (v147 >= *(v61 + 2))
        {
          goto LABEL_130;
        }

        v150 = &v61[16 * v147];
        *(v150 + 4) = v148;
        *(v150 + 5) = v149;
        v231 = v61;
        result = sub_23C647314(v5);
        v61 = v231;
        v107 = *(v231 + 2);
        if (v107 <= 1)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_23C59F370(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v158 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v188 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v153 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v173 = &v153 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v153 - v16;
  v191 = sub_23C870AE4();
  v18 = *(v191 - 8);
  v19 = MEMORY[0x28223BE20](v191);
  v21 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v187 = &v153 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v153 - v25;
  MEMORY[0x28223BE20](v24);
  v172 = &v153 - v27;
  v189 = sub_23C871414();
  v28 = *(v189 - 8);
  v29 = MEMORY[0x28223BE20](v189);
  v160 = &v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v177 = &v153 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v190 = &v153 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v186 = &v153 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v166 = &v153 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v171 = &v153 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v153 = &v153 - v42;
  result = MEMORY[0x28223BE20](v41);
  v156 = &v153 - v44;
  v170 = a3;
  if (a3[1] < 1)
  {
    v48 = MEMORY[0x277D84F90];
LABEL_110:
    a4 = *v158;
    if (!*v158)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_112:
      v192 = v48;
      v148 = *(v48 + 16);
      if (v148 >= 2)
      {
        while (*v170)
        {
          v149 = *(v48 + 16 * v148);
          v150 = v48;
          v151 = *(v48 + 16 * (v148 - 1) + 32);
          v48 = *(v48 + 16 * (v148 - 1) + 40);
          sub_23C5A2484(*v170 + *(v28 + 9) * v149, (*v170 + *(v28 + 9) * v151), (*v170 + *(v28 + 9) * v48), a4);
          if (v5)
          {
          }

          if (v48 < v149)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = sub_23C6473A0(v150);
          }

          if (v148 - 2 >= *(v150 + 2))
          {
            goto LABEL_136;
          }

          v152 = &v150[16 * v148];
          *v152 = v149;
          *(v152 + 1) = v48;
          v192 = v150;
          result = sub_23C647314(v148 - 1);
          v48 = v192;
          v148 = *(v192 + 16);
          if (v148 <= 1)
          {
          }
        }

        goto LABEL_146;
      }
    }

LABEL_142:
    result = sub_23C6473A0(v48);
    v48 = result;
    goto LABEL_112;
  }

  v45 = a3[1];
  v163 = v26;
  v46 = 0;
  v183 = (v28 + 8);
  v184 = v28 + 16;
  v181 = (v18 + 32);
  v182 = (v18 + 48);
  v179 = (v28 + 32);
  v180 = (v18 + 8);
  v47 = v13;
  v48 = MEMORY[0x277D84F90];
  v157 = a4;
  v185 = v47;
  v168 = v17;
  v49 = v189;
  v167 = v28;
  while (1)
  {
    v169 = v48;
    if (v46 + 1 >= v45)
    {
      v67 = v46 + 1;
    }

    else
    {
      v174 = v45;
      v155 = v5;
      v50 = *v170;
      v162 = v50;
      v51 = *(v28 + 9);
      v52 = v28;
      v53 = *(v28 + 2);
      v178 = (v50 + v51 * (v46 + 1));
      (v53)(v156);
      v54 = v50 + v51 * v46;
      v55 = v153;
      v165 = v53;
      (v53)(v153, v54, v49);
      v56 = v156;
      LODWORD(v175) = _s27IntelligencePlatformLibrary0A13FlowTelemetryV26AIMLInstrumentationStreamsE1loiySbAC_ACtFZ_0();
      v57 = *(v52 + 1);
      (v57)(v55, v49);
      v164 = v57;
      result = (v57)(v56, v49);
      v154 = v46;
      v58 = v46 + 2;
      v176 = v51;
      v59 = v162 + v51 * (v46 + 2);
      v60 = v166;
      while (1)
      {
        v67 = v174;
        if (v174 == v58)
        {
          break;
        }

        v68 = v165;
        (v165)(v171, v59, v49);
        v68(v60, v178, v49);
        v69 = v191;
        v70 = v168;
        sub_23C871374();
        v71 = *v182;
        if ((*v182)(v70, 1, v69) == 1)
        {
          sub_23C870AB4();
          if (v71(v70, 1, v69) != 1)
          {
            sub_23C585C34(v168, &unk_27E2054F0, &unk_23C874DF0);
          }
        }

        else
        {
          (*v181)(v172, v70, v69);
        }

        sub_23C871374();
        v72 = v173;
        if (v71(v173, 1, v191) == 1)
        {
          v61 = v163;
          sub_23C870AB4();
          if (v71(v72, 1, v191) != 1)
          {
            sub_23C585C34(v72, &unk_27E2054F0, &unk_23C874DF0);
          }
        }

        else
        {
          v61 = v163;
          (*v181)(v163, v72, v191);
        }

        v62 = v172;
        v63 = sub_23C870A94();
        v64 = *v180;
        v65 = v191;
        (*v180)(v61, v191);
        v64(v62, v65);
        v60 = v166;
        v49 = v189;
        v66 = v164;
        (v164)(v166, v189);
        result = (v66)(v171, v49);
        ++v58;
        v59 += v176;
        v178 += v176;
        v48 = v169;
        if ((v175 ^ v63))
        {
          v67 = v58 - 1;
          break;
        }
      }

      v5 = v155;
      v28 = v167;
      a4 = v157;
      v46 = v154;
      if (v175)
      {
        if (v67 < v154)
        {
          goto LABEL_139;
        }

        if (v154 < v67)
        {
          v73 = v176 * (v67 - 1);
          v74 = v67 * v176;
          v174 = v67;
          v75 = v154;
          v76 = v154 * v176;
          do
          {
            if (v75 != --v67)
            {
              v78 = *v170;
              if (!*v170)
              {
                goto LABEL_145;
              }

              v79 = *v179;
              (*v179)(v160, v78 + v76, v189);
              if (v76 < v73 || v78 + v76 >= (v78 + v74))
              {
                v77 = v189;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v77 = v189;
                if (v76 != v73)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v79)(v78 + v73, v160, v77);
              v48 = v169;
              v49 = v77;
            }

            ++v75;
            v73 -= v176;
            v74 -= v176;
            v76 += v176;
          }

          while (v75 < v67);
          v5 = v155;
          v28 = v167;
          a4 = v157;
          v46 = v154;
          v67 = v174;
        }
      }
    }

    v80 = v170[1];
    if (v67 < v80)
    {
      if (__OFSUB__(v67, v46))
      {
        goto LABEL_138;
      }

      if (v67 - v46 < a4)
      {
        break;
      }
    }

LABEL_58:
    if (v67 < v46)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23C584338(0, *(v48 + 16) + 1, 1, v48);
      v48 = result;
    }

    a4 = *(v48 + 16);
    v103 = *(v48 + 24);
    v104 = a4 + 1;
    if (a4 >= v103 >> 1)
    {
      result = sub_23C584338((v103 > 1), a4 + 1, 1, v48);
      v48 = result;
    }

    *(v48 + 16) = v104;
    v105 = v48 + 16 * a4;
    *(v105 + 32) = v46;
    *(v105 + 40) = v67;
    v106 = *v158;
    if (!*v158)
    {
      goto LABEL_147;
    }

    v161 = v67;
    if (a4)
    {
      v28 = v106;
      while (1)
      {
        v107 = v104 - 1;
        if (v104 >= 4)
        {
          break;
        }

        if (v104 == 3)
        {
          v108 = *(v48 + 32);
          v109 = *(v48 + 40);
          v118 = __OFSUB__(v109, v108);
          v110 = v109 - v108;
          v111 = v118;
LABEL_79:
          if (v111)
          {
            goto LABEL_126;
          }

          v124 = (v48 + 16 * v104);
          v126 = *v124;
          v125 = v124[1];
          v127 = __OFSUB__(v125, v126);
          v128 = v125 - v126;
          v129 = v127;
          if (v127)
          {
            goto LABEL_129;
          }

          v130 = (v48 + 32 + 16 * v107);
          v132 = *v130;
          v131 = v130[1];
          v118 = __OFSUB__(v131, v132);
          v133 = v131 - v132;
          if (v118)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v128, v133))
          {
            goto LABEL_133;
          }

          if (v128 + v133 >= v110)
          {
            if (v110 < v133)
            {
              v107 = v104 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v134 = (v48 + 16 * v104);
        v136 = *v134;
        v135 = v134[1];
        v118 = __OFSUB__(v135, v136);
        v128 = v135 - v136;
        v129 = v118;
LABEL_93:
        if (v129)
        {
          goto LABEL_128;
        }

        v137 = v48 + 16 * v107;
        v139 = *(v137 + 32);
        v138 = *(v137 + 40);
        v118 = __OFSUB__(v138, v139);
        v140 = v138 - v139;
        if (v118)
        {
          goto LABEL_131;
        }

        if (v140 < v128)
        {
          goto LABEL_3;
        }

LABEL_100:
        a4 = v107 - 1;
        if (v107 - 1 >= v104)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v170)
        {
          goto LABEL_144;
        }

        v145 = *(v48 + 32 + 16 * a4);
        v146 = *(v48 + 32 + 16 * v107 + 8);
        sub_23C5A2484(*v170 + *(v167 + 9) * v145, (*v170 + *(v167 + 9) * *(v48 + 32 + 16 * v107)), (*v170 + *(v167 + 9) * v146), v28);
        if (v5)
        {
        }

        if (v146 < v145)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_23C6473A0(v48);
        }

        if (a4 >= *(v48 + 16))
        {
          goto LABEL_123;
        }

        v147 = v48 + 16 * a4;
        *(v147 + 32) = v145;
        *(v147 + 40) = v146;
        v192 = v48;
        result = sub_23C647314(v107);
        v48 = v192;
        v104 = *(v192 + 16);
        if (v104 <= 1)
        {
          goto LABEL_3;
        }
      }

      v112 = v48 + 32 + 16 * v104;
      v113 = *(v112 - 64);
      v114 = *(v112 - 56);
      v118 = __OFSUB__(v114, v113);
      v115 = v114 - v113;
      if (v118)
      {
        goto LABEL_124;
      }

      v117 = *(v112 - 48);
      v116 = *(v112 - 40);
      v118 = __OFSUB__(v116, v117);
      v110 = v116 - v117;
      v111 = v118;
      if (v118)
      {
        goto LABEL_125;
      }

      v119 = (v48 + 16 * v104);
      v121 = *v119;
      v120 = v119[1];
      v118 = __OFSUB__(v120, v121);
      v122 = v120 - v121;
      if (v118)
      {
        goto LABEL_127;
      }

      v118 = __OFADD__(v110, v122);
      v123 = v110 + v122;
      if (v118)
      {
        goto LABEL_130;
      }

      if (v123 >= v115)
      {
        v141 = (v48 + 32 + 16 * v107);
        v143 = *v141;
        v142 = v141[1];
        v118 = __OFSUB__(v142, v143);
        v144 = v142 - v143;
        if (v118)
        {
          goto LABEL_134;
        }

        if (v110 < v144)
        {
          v107 = v104 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v45 = v170[1];
    v46 = v161;
    a4 = v157;
    v28 = v167;
    if (v161 >= v45)
    {
      goto LABEL_110;
    }
  }

  if (__OFADD__(v46, a4))
  {
    goto LABEL_140;
  }

  if ((v46 + a4) < v80)
  {
    v80 = v46 + a4;
  }

  if (v80 < v46)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v161 = v80;
  if (v67 == v80)
  {
    goto LABEL_58;
  }

  v155 = v5;
  v81 = *v170;
  v82 = *(v28 + 9);
  v178 = *(v28 + 2);
  v83 = (v81 + v82 * (v67 - 1));
  v175 = -v82;
  v154 = v46;
  a4 = v46 - v67;
  v176 = v81;
  v159 = v82;
  v84 = v81 + v67 * v82;
LABEL_43:
  v174 = v67;
  v162 = v84;
  v85 = v84;
  v164 = a4;
  v165 = v83;
  v86 = v83;
  while (1)
  {
    v87 = v21;
    v88 = v178;
    (v178)(v186, v85, v49);
    v88(v190, v86, v49);
    v89 = v191;
    v90 = v185;
    sub_23C871374();
    v91 = *v182;
    if ((*v182)(v90, 1, v89) == 1)
    {
      sub_23C870AB4();
      if (v91(v90, 1, v89) != 1)
      {
        sub_23C585C34(v185, &unk_27E2054F0, &unk_23C874DF0);
      }
    }

    else
    {
      (*v181)(v187, v90, v89);
    }

    sub_23C871374();
    v92 = v188;
    v93 = v87;
    if (v91(v188, 1, v191) == 1)
    {
      sub_23C870AB4();
      if (v91(v92, 1, v191) != 1)
      {
        sub_23C585C34(v92, &unk_27E2054F0, &unk_23C874DF0);
      }
    }

    else
    {
      (*v181)(v87, v92, v191);
    }

    v94 = v187;
    v95 = sub_23C870A94();
    v96 = *v180;
    v97 = v93;
    v98 = v93;
    v99 = v191;
    (*v180)(v98, v191);
    v96(v94, v99);
    v100 = *v183;
    v28 = v189;
    (*v183)(v190, v189);
    result = (v100)(v186, v28);
    if ((v95 & 1) == 0)
    {
      v49 = v189;
      v21 = v97;
LABEL_42:
      v67 = v174 + 1;
      v83 = &v165[v159];
      a4 = (v164 - 1);
      v84 = v162 + v159;
      if (v174 + 1 == v161)
      {
        v5 = v155;
        v48 = v169;
        v46 = v154;
        v67 = v161;
        goto LABEL_58;
      }

      goto LABEL_43;
    }

    if (!v176)
    {
      break;
    }

    v101 = *v179;
    v28 = v177;
    v49 = v189;
    (*v179)(v177, v85, v189);
    swift_arrayInitWithTakeFrontToBack();
    v101(v86, v28, v49);
    v86 += v175;
    v85 += v175;
    v102 = __CFADD__(a4++, 1);
    v21 = v97;
    if (v102)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_23C5A03C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_97:
    v7 = *v92;
    if (!*v92)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_99:
      v85 = *(v9 + 2);
      if (v85 >= 2)
      {
        while (*a3)
        {
          v86 = *&v9[16 * v85];
          v87 = *&v9[16 * v85 + 24];
          sub_23C5A2F5C((*a3 + 8 * v86), (*a3 + 8 * *&v9[16 * v85 + 16]), (*a3 + 8 * v87), v7);
          if (v5)
          {
          }

          if (v87 < v86)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_23C6473A0(v9);
          }

          if (v85 - 2 >= *(v9 + 2))
          {
            goto LABEL_123;
          }

          v88 = &v9[16 * v85];
          *v88 = v86;
          *(v88 + 1) = v87;
          result = sub_23C647314(v85 - 1);
          v85 = *(v9 + 2);
          if (v85 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_23C6473A0(v9);
    v9 = result;
    goto LABEL_99;
  }

  v7 = a3;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8 + 1;
  v97 = v9;
  if (v8 + 1 < v6)
  {
    v90 = v5;
    v11 = *v7;
    v5 = (v8 + 1);
    v12 = *(*(*v7 + 8 * v10) + 16);
    v13 = *(*(*v7 + 8 * v8) + 16);
    if (v12 == v13)
    {
      sub_23C870D74();

      v95 = sub_23C870D14();
    }

    else
    {
      v95 = v12 < v13;
    }

    v14 = v11 + 8 * v8 + 16;
    v15 = 8 * v8 + 8;
    do
    {
      v7 = v5;
      v17 = v15;
      v5 = (v5 + 1);
      if (v5 >= v6)
      {
        break;
      }

      v18 = *(*v14 + 16);
      v19 = *(*(v14 - 8) + 16);
      if (v18 == v19)
      {
        sub_23C870D74();

        v16 = sub_23C870D14();
      }

      else
      {
        v16 = v18 < v19;
      }

      v9 = v97;
      v14 += 8;
      v15 = v17 + 8;
    }

    while ((v95 & 1) == (v16 & 1));
    if (v95)
    {
      v20 = v8;
      if (v5 < v8)
      {
        goto LABEL_126;
      }

      v10 = v5;
      if (v8 >= v5)
      {
        v7 = a3;
        v5 = v90;
      }

      else
      {
        v5 = v90;
        v21 = 8 * v8;
        do
        {
          if (v20 != v7)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_132;
            }

            v22 = *(v24 + v21);
            *(v24 + v21) = *(v24 + v17);
            *(v24 + v17) = v22;
          }

          v20 = (v20 + 1);
          v17 -= 8;
          v21 += 8;
          v23 = v20 < v7;
          v7 = (v7 - 1);
        }

        while (v23);
        v7 = a3;
      }
    }

    else
    {
      v7 = a3;
      v10 = v5;
      v5 = v90;
    }
  }

  v25 = v7[1];
  if (v10 >= v25)
  {
    goto LABEL_46;
  }

  if (__OFSUB__(v10, v8))
  {
    goto LABEL_125;
  }

  if (v10 - v8 >= a4)
  {
    goto LABEL_46;
  }

  v26 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_127;
  }

  if (v26 >= v25)
  {
    v26 = v7[1];
  }

  if (v26 < v8)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v10 == v26)
  {
    goto LABEL_46;
  }

  v91 = v5;
  v27 = *v7;
  v28 = *v7 + 8 * v10 - 8;
  v29 = v8 - v10;
  v93 = v26;
LABEL_36:
  v96 = v10;
  v30 = *(v27 + 8 * v10);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    v33 = *(v30 + 16);
    v34 = *(*v32 + 16);
    if (v33 == v34)
    {
      sub_23C870D74();

      v35 = sub_23C870D14();

      if ((v35 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v33 >= v34)
    {
      goto LABEL_35;
    }

    if (!v27)
    {
      break;
    }

    v36 = *v32;
    v30 = v32[1];
    *v32 = v30;
    v32[1] = v36;
    --v32;
    if (__CFADD__(v31++, 1))
    {
LABEL_35:
      v10 = v96 + 1;
      v28 += 8;
      --v29;
      if (v96 + 1 != v93)
      {
        goto LABEL_36;
      }

      v10 = v93;
      v5 = v91;
      v7 = a3;
      v9 = v97;
LABEL_46:
      if (v10 < v8)
      {
        goto LABEL_124;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23C584338(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v39 = *(v9 + 2);
      v38 = *(v9 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_23C584338((v38 > 1), v39 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v40;
      v41 = &v9[16 * v39];
      *(v41 + 4) = v8;
      *(v41 + 5) = v10;
      v8 = v10;
      v42 = *v92;
      if (!*v92)
      {
        goto LABEL_134;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v44 = *(v9 + 4);
            v45 = *(v9 + 5);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_66:
            if (v47)
            {
              goto LABEL_113;
            }

            v60 = &v9[16 * v40];
            v62 = *v60;
            v61 = *(v60 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_116;
            }

            v66 = &v9[16 * v43 + 32];
            v68 = *v66;
            v67 = *(v66 + 1);
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_120;
            }

            if (v64 + v69 >= v46)
            {
              if (v46 < v69)
              {
                v43 = v40 - 2;
              }

              goto LABEL_87;
            }

            goto LABEL_80;
          }

          v70 = &v9[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_80:
          if (v65)
          {
            goto LABEL_115;
          }

          v73 = &v9[16 * v43];
          v75 = *(v73 + 4);
          v74 = *(v73 + 5);
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_118;
          }

          if (v76 < v64)
          {
            goto LABEL_3;
          }

LABEL_87:
          v81 = v43 - 1;
          if (v43 - 1 >= v40)
          {
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
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (!*v7)
          {
            goto LABEL_131;
          }

          v82 = *&v9[16 * v81 + 32];
          v83 = *&v9[16 * v43 + 40];
          sub_23C5A2F5C((*v7 + 8 * v82), (*v7 + 8 * *&v9[16 * v43 + 32]), (*v7 + 8 * v83), v42);
          if (v5)
          {
          }

          if (v83 < v82)
          {
            goto LABEL_109;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_23C6473A0(v9);
          }

          if (v81 >= *(v9 + 2))
          {
            goto LABEL_110;
          }

          v84 = &v9[16 * v81];
          *(v84 + 4) = v82;
          *(v84 + 5) = v83;
          result = sub_23C647314(v43);
          v40 = *(v9 + 2);
          if (v40 <= 1)
          {
            goto LABEL_3;
          }
        }

        v48 = &v9[16 * v40 + 32];
        v49 = *(v48 - 64);
        v50 = *(v48 - 56);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_111;
        }

        v53 = *(v48 - 48);
        v52 = *(v48 - 40);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_112;
        }

        v55 = &v9[16 * v40];
        v57 = *v55;
        v56 = *(v55 + 1);
        v54 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (v54)
        {
          goto LABEL_114;
        }

        v54 = __OFADD__(v46, v58);
        v59 = v46 + v58;
        if (v54)
        {
          goto LABEL_117;
        }

        if (v59 >= v51)
        {
          v77 = &v9[16 * v43 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v54 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v54)
          {
            goto LABEL_121;
          }

          if (v46 < v80)
          {
            v43 = v40 - 2;
          }

          goto LABEL_87;
        }

        goto LABEL_66;
      }

LABEL_3:
      v6 = v7[1];
      if (v8 >= v6)
      {
        goto LABEL_97;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_23C5A0ABC(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v124 = a1;
  v9 = sub_23C871604();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v126 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v137 = &v121 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v143 = &v121 - v16;
  result = MEMORY[0x28223BE20](v15);
  v142 = &v121 - v18;
  v134 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_23C6473A0(a3);
    }

    v144 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v134)
      {
        v117 = *(result + 16 * a3);
        v118 = result;
        v119 = *(result + 16 * (a3 - 1) + 40);
        sub_23C5A324C(&(*v134)[v10[9] * v117], &(*v134)[v10[9] * *(result + 16 * (a3 - 1) + 32)], &(*v134)[v10[9] * v119], v5);
        if (v6)
        {
        }

        if (v119 < v117)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_23C6473A0(v118);
        }

        if (a3 - 2 >= *(v118 + 2))
        {
          goto LABEL_122;
        }

        v120 = &v118[16 * a3];
        *v120 = v117;
        *(v120 + 1) = v119;
        v144 = v118;
        sub_23C647314(a3 - 1);
        result = v144;
        a3 = *(v144 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v140 = (v10 + 1);
  v141 = v10 + 2;
  v139 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v133 = v10;
  v123 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v38 = v20 + 1;
    }

    else
    {
      v135 = v19;
      v128 = v6;
      v24 = v10[9];
      v5 = &(*v134)[v24 * v23];
      v131 = *v134;
      v25 = v131;
      v26 = v10[2];
      v27 = v142;
      v26(v142, &v131[v24 * v23], v9);
      v28 = &v25[v24 * v22];
      v29 = v143;
      v136 = v26;
      v26(v143, v28, v9);
      sub_23C8715E4();
      v31 = v30;
      sub_23C8715E4();
      v33 = v32;
      v34 = v22;
      v35 = v10[1];
      a3 = v140;
      v35(v29, v9);
      v132 = v35;
      result = (v35)(v27, v9);
      v122 = v34;
      v36 = v34 + 2;
      v138 = v24;
      v37 = &v131[v24 * (v34 + 2)];
      while (1)
      {
        v38 = v135;
        if (v135 == v36)
        {
          break;
        }

        a3 = v142;
        v39 = v136;
        v136(v142, v37, v9);
        v40 = v143;
        v39(v143, v5, v9);
        sub_23C8715E4();
        v42 = v41;
        sub_23C8715E4();
        v44 = v43;
        v45 = v132;
        (v132)(v40, v9);
        result = v45(a3, v9);
        v10 = v133;
        ++v36;
        v37 += v138;
        v5 += v138;
        if (v31 < v33 == v42 >= v44)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v46 = v127;
      v6 = v128;
      a4 = v123;
      v22 = v122;
      if (v31 < v33)
      {
        if (v38 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v38)
        {
          v47 = v38;
          a3 = v138 * (v38 - 1);
          v5 = v38 * v138;
          v135 = v38;
          v48 = v122 * v138;
          do
          {
            if (v22 != --v47)
            {
              v128 = v6;
              v49 = *v134;
              if (!*v134)
              {
                goto LABEL_131;
              }

              v50 = *v139;
              (*v139)(v126, &v49[v48], v9, v46);
              if (v48 < a3 || &v49[v48] >= &v49[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v50)(&v49[a3], v126, v9);
              v46 = v127;
              v6 = v128;
            }

            ++v22;
            a3 -= v138;
            v5 -= v138;
            v48 += v138;
          }

          while (v22 < v47);
          v10 = v133;
          a4 = v123;
          v22 = v122;
          v38 = v135;
        }
      }
    }

    v51 = v134[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v22))
      {
        goto LABEL_124;
      }

      if (v38 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = v134[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v127;
    }

    else
    {
      result = sub_23C584338(0, *(v127 + 2) + 1, 1, v127);
      v21 = result;
    }

    a3 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      result = sub_23C584338((v52 > 1), a3 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a3];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v124;
    if (!*v124)
    {
      goto LABEL_133;
    }

    v129 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v134)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a3 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_23C5A324C(&(*v134)[v10[9] * v94], &(*v134)[v10[9] * *&v21[16 * v5 + 32]], &(*v134)[v10[9] * v95], v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_23C6473A0(v93);
        }

        if (a3 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a3];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v144 = v93;
        result = sub_23C647314(v5);
        v21 = v144;
        v53 = *(v144 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v134[1];
    v20 = v129;
    a4 = v123;
    if (v129 >= v19)
    {
      goto LABEL_95;
    }
  }

  v128 = v6;
  v97 = *v134;
  v98 = v10[9];
  v138 = v10[2];
  v99 = &v97[v98 * (v38 - 1)];
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = (v100 - v38);
  v136 = v97;
  v125 = v98;
  v103 = &v97[v38 * v98];
  v129 = v5;
LABEL_85:
  v135 = v38;
  v130 = v103;
  v131 = v102;
  v104 = v103;
  v132 = v99;
  while (1)
  {
    v105 = v142;
    v106 = v138;
    (v138)(v142, v104, v9);
    v107 = v143;
    v106(v143, v99, v9);
    sub_23C8715E4();
    v109 = v108;
    sub_23C8715E4();
    v111 = v110;
    v112 = *v140;
    (*v140)(v107, v9);
    v113 = v105;
    a3 = v9;
    result = v112(v113, v9);
    if (v109 >= v111)
    {
LABEL_84:
      v38 = v135 + 1;
      v99 = &v132[v125];
      v102 = v131 - 1;
      v5 = v129;
      v103 = &v130[v125];
      if (v135 + 1 != v129)
      {
        goto LABEL_85;
      }

      v6 = v128;
      v10 = v133;
      v22 = v122;
      if (v129 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v136)
    {
      break;
    }

    v114 = *v139;
    v115 = v137;
    (*v139)(v137, v104, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v99, v115, v9);
    v99 += v101;
    v104 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_23C5A14CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v133 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v114 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v122 = (&v106 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v116 = &v106 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v106 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v111 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v118 = (&v106 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v112 = &v106 - v22;
  MEMORY[0x28223BE20](v21);
  v121 = &v106 - v23;
  v123 = sub_23C870AE4();
  v24 = *(v123 - 8);
  v25 = MEMORY[0x28223BE20](v123);
  v108 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v107 = &v106 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v113 = &v106 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v117 = (&v106 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v110 = &v106 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v109 = &v106 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v115 = &v106 - v38;
  MEMORY[0x28223BE20](v37);
  v120 = &v106 - v39;
  v40 = type metadata accessor for TranscriptProtoEvent(0);
  v41 = MEMORY[0x28223BE20](v40);
  v127 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v126 = (&v106 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v132 = &v106 - v46;
  result = MEMORY[0x28223BE20](v45);
  v131 = &v106 - v48;
  v50 = *(v49 + 72);
  if (!v50)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return result;
  }

  v51 = a2 - v133;
  if (a2 - v133 == 0x8000000000000000 && v50 == -1)
  {
    goto LABEL_84;
  }

  v52 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v50 == -1)
  {
    goto LABEL_85;
  }

  v136 = v133;
  v135 = a4;
  v130 = v40;
  if (v51 / v50 < v52 / v50)
  {
    v53 = v51 / v50 * v50;
    if (a4 < v133 || v133 + v53 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v133)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v127 = a4 + v53;
    v134 = a4 + v53;
    if (v53 < 1 || a2 >= a3)
    {
      goto LABEL_82;
    }

    v125 = a3;
    v126 = (v24 + 32);
    v117 = (v24 + 8);
    v119 = v15;
    v124 = v50;
    while (1)
    {
      v56 = v131;
      sub_23C5A4514(a2, v131);
      sub_23C5A4514(a4, v132);
      sub_23C5855B0(v56 + *(v40 + 52), v15, &qword_27E1F9D08, &qword_23C87D090);
      v57 = type metadata accessor for TranscriptProtoTimepoint(0);
      v58 = *(*(v57 - 8) + 48);
      if (v58(v15, 1, v57) == 1)
      {
        break;
      }

      v128 = a4;
      v129 = a2;
      v61 = v121;
      sub_23C5855B0(&v15[*(v57 + 28)], v121, &unk_27E1F9D10, &qword_23C874E00);
      sub_23C5A4578(v15, type metadata accessor for TranscriptProtoTimepoint);
      v62 = sub_23C870EC4();
      v63 = *(v62 - 8);
      v64 = *(v63 + 48);
      if (v64(v61, 1, v62) == 1)
      {
        sub_23C585C34(v61, &unk_27E1F9D10, &qword_23C874E00);
        a4 = v128;
        a2 = v129;
        v40 = v130;
        v60 = v124;
        v59 = v125;
        goto LABEL_30;
      }

      v65 = v115;
      sub_23C870EB4();
      v122 = *(v63 + 8);
      v122(v61, v62);
      v118 = *v126;
      v118(v120, v65, v123);
      v66 = v116;
      sub_23C5855B0(v132 + *(v130 + 52), v116, &qword_27E1F9D08, &qword_23C87D090);
      if (v58(v66, 1, v57) == 1)
      {
        sub_23C585C34(v66, &qword_27E1F9D08, &qword_23C87D090);
        a4 = v128;
        v40 = v130;
        v60 = v124;
        v59 = v125;
        goto LABEL_29;
      }

      v67 = v112;
      sub_23C5855B0(&v66[*(v57 + 28)], v112, &unk_27E1F9D10, &qword_23C874E00);
      sub_23C5A4578(v66, type metadata accessor for TranscriptProtoTimepoint);
      v68 = v64(v67, 1, v62);
      v60 = v124;
      if (v68 == 1)
      {
        sub_23C585C34(v67, &unk_27E1F9D10, &qword_23C874E00);
        a4 = v128;
        v40 = v130;
        v59 = v125;
LABEL_29:
        (*v117)(v120, v123);
        a2 = v129;
LABEL_30:
        v15 = v119;
LABEL_31:
        sub_23C5A4578(v132, type metadata accessor for TranscriptProtoEvent);
        sub_23C5A4578(v131, type metadata accessor for TranscriptProtoEvent);
        goto LABEL_32;
      }

      v69 = v110;
      sub_23C870EB4();
      v122(v67, v62);
      v70 = v109;
      v71 = v123;
      v118(v109, v69, v123);
      v72 = v120;
      v73 = sub_23C870A94();
      v74 = *v117;
      (*v117)(v70, v71);
      v74(v72, v71);
      sub_23C5A4578(v132, type metadata accessor for TranscriptProtoEvent);
      sub_23C5A4578(v131, type metadata accessor for TranscriptProtoEvent);
      a4 = v128;
      a2 = v129;
      v40 = v130;
      v59 = v125;
      v15 = v119;
      if ((v73 & 1) == 0)
      {
        v75 = v128 + v60;
        if (v133 < v128 || v133 >= v75)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v133 != v128)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v135 = v75;
        a4 += v60;
        goto LABEL_38;
      }

LABEL_32:
      if (v133 < a2 || v133 >= a2 + v60)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 += v60;
      }

      else
      {
        if (v133 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v60;
      }

LABEL_38:
      v133 += v60;
      v136 = v133;
      if (a4 >= v127 || a2 >= v59)
      {
        goto LABEL_82;
      }
    }

    sub_23C585C34(v15, &qword_27E1F9D08, &qword_23C87D090);
    v40 = v130;
    v60 = v124;
    v59 = v125;
    goto LABEL_31;
  }

  v54 = v52 / v50 * v50;
  if (a4 < a2 || a2 + v54 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v76 = a4 + v54;
  if (v54 < 1)
  {
    goto LABEL_78;
  }

  v77 = -v50;
  v115 = (v24 + 8);
  v116 = (v24 + 32);
  v78 = a4 + v54;
  v128 = a4;
  v121 = v77;
  do
  {
    v109 = v76;
    v79 = a2;
    v80 = a2 + v77;
    v81 = v122;
    v82 = v76;
    v129 = v80;
    v124 = v79;
    while (1)
    {
      if (v79 <= v133)
      {
        v136 = v79;
        v76 = v109;
        goto LABEL_81;
      }

      v125 = a3;
      v131 = v78;
      v132 = v78 + v77;
      v83 = v126;
      sub_23C5A4514(v78 + v77, v126);
      sub_23C5A4514(v80, v127);
      sub_23C5855B0(v83 + *(v40 + 52), v81, &qword_27E1F9D08, &qword_23C87D090);
      v84 = type metadata accessor for TranscriptProtoTimepoint(0);
      v85 = *(*(v84 - 8) + 48);
      v86 = v85(v81, 1, v84);
      v120 = v82;
      if (v86 == 1)
      {
        sub_23C585C34(v81, &qword_27E1F9D08, &qword_23C87D090);
        v87 = 1;
        v77 = v121;
LABEL_59:
        v78 = v131;
        v93 = v125;
        goto LABEL_67;
      }

      v88 = v118;
      sub_23C5855B0(v81 + *(v84 + 28), v118, &unk_27E1F9D10, &qword_23C874E00);
      v89 = v81;
      v90 = v88;
      sub_23C5A4578(v89, type metadata accessor for TranscriptProtoTimepoint);
      v91 = sub_23C870EC4();
      v92 = *(v91 - 8);
      v119 = *(v92 + 48);
      if ((v119)(v90, 1, v91) == 1)
      {
        sub_23C585C34(v90, &unk_27E1F9D10, &qword_23C874E00);
        v87 = 1;
        v40 = v130;
        v77 = v121;
        goto LABEL_59;
      }

      v94 = v113;
      sub_23C870EB4();
      v95 = *(v92 + 8);
      v112 = v92 + 8;
      v95(v90, v91);
      v110 = *v116;
      (v110)(v117, v94, v123);
      v96 = v114;
      sub_23C5855B0(v127 + *(v130 + 52), v114, &qword_27E1F9D08, &qword_23C87D090);
      if (v85(v96, 1, v84) == 1)
      {
        sub_23C585C34(v96, &qword_27E1F9D08, &qword_23C87D090);
        v40 = v130;
        v77 = v121;
        v93 = v125;
      }

      else
      {
        v97 = v111;
        sub_23C5855B0(v96 + *(v84 + 28), v111, &unk_27E1F9D10, &qword_23C874E00);
        sub_23C5A4578(v96, type metadata accessor for TranscriptProtoTimepoint);
        v98 = v91;
        v99 = (v119)(v97, 1, v91);
        v93 = v125;
        if (v99 != 1)
        {
          v100 = v108;
          sub_23C870EB4();
          v95(v97, v98);
          v101 = v107;
          v102 = v100;
          v103 = v123;
          (v110)(v107, v102, v123);
          v104 = v117;
          v87 = sub_23C870A94();
          v105 = *v115;
          (*v115)(v101, v103);
          v105(v104, v103);
          v40 = v130;
          v77 = v121;
          goto LABEL_66;
        }

        sub_23C585C34(v97, &unk_27E1F9D10, &qword_23C874E00);
        v40 = v130;
        v77 = v121;
      }

      (*v115)(v117, v123);
      v87 = 1;
LABEL_66:
      v78 = v131;
LABEL_67:
      a3 = v93 + v77;
      sub_23C5A4578(v127, type metadata accessor for TranscriptProtoEvent);
      sub_23C5A4578(v126, type metadata accessor for TranscriptProtoEvent);
      if (v87)
      {
        break;
      }

      v82 = v132;
      v80 = v129;
      if (v93 < v78 || a3 >= v78)
      {
        swift_arrayInitWithTakeFrontToBack();
        v81 = v122;
      }

      else
      {
        v81 = v122;
        if (v93 != v78)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v78 = v82;
      v79 = v124;
      if (v132 <= v128)
      {
        v76 = v82;
        v136 = v124;
        goto LABEL_81;
      }
    }

    a2 = v129;
    if (v93 < v124 || a3 >= v124)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v93 != v124)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v76 = v120;
  }

  while (v78 > v128);
LABEL_78:
  v136 = a2;
LABEL_81:
  v134 = v76;
LABEL_82:
  sub_23C6473B4(&v136, &v135, &v134);
  return 1;
}

uint64_t sub_23C5A2484(unint64_t a1, char *a2, char *a3, char *a4)
{
  v93 = a4;
  v95 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v86 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v74 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v92 = &v74 - v13;
  MEMORY[0x28223BE20](v12);
  v87 = &v74 - v14;
  v15 = sub_23C870AE4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v82 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v85 = (&v74 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v83 = &v74 - v22;
  MEMORY[0x28223BE20](v21);
  v91 = &v74 - v23;
  v24 = sub_23C871414();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v89 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v84 = (&v74 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v94 = &v74 - v31;
  result = MEMORY[0x28223BE20](v30);
  v90 = &v74 - v33;
  v88 = *(v34 + 72);
  if (!v88)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (&a2[-a1] == 0x8000000000000000 && v88 == -1)
  {
    goto LABEL_79;
  }

  v35 = v95 - a2;
  if (v95 - a2 != 0x8000000000000000 || v88 != -1)
  {
    v36 = &a2[-a1] / v88;
    v98 = a1;
    v37 = v93;
    v97 = v93;
    if (v36 < v35 / v88)
    {
      v38 = v36 * v88;
      if (v93 < a1 || a1 + v38 <= v93)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v93 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v93;
LABEL_17:
      v89 = (v37 + v38);
      v96 = v37 + v38;
      if (v38 >= 1 && a2 < v95)
      {
        v41 = *(v25 + 16);
        v42 = (v16 + 48);
        v84 = (v16 + 32);
        v85 = v41;
        v86 = (v25 + 16);
        v81 = (v25 + 8);
        v82 = (v16 + 8);
        do
        {
          v43 = a2;
          v44 = v37;
          v45 = v85;
          v85(v90, a2, v24);
          v93 = v44;
          v45(v94, v44, v24);
          v46 = v87;
          sub_23C871374();
          v47 = *v42;
          if ((*v42)(v46, 1, v15) == 1)
          {
            sub_23C870AB4();
            if (v47(v46, 1, v15) != 1)
            {
              sub_23C585C34(v87, &unk_27E2054F0, &unk_23C874DF0);
            }
          }

          else
          {
            (*v84)(v91, v46, v15);
          }

          sub_23C871374();
          v48 = v92;
          if (v47(v92, 1, v15) == 1)
          {
            v49 = v83;
            sub_23C870AB4();
            if (v47(v48, 1, v15) != 1)
            {
              sub_23C585C34(v48, &unk_27E2054F0, &unk_23C874DF0);
            }
          }

          else
          {
            v49 = v83;
            (*v84)(v83, v48, v15);
          }

          v50 = v91;
          v51 = sub_23C870A94();
          v52 = v49;
          v53 = *v82;
          (*v82)(v52, v15);
          v53(v50, v15);
          v54 = *v81;
          (*v81)(v94, v24);
          v54(v90, v24);
          if (v51)
          {
            v55 = v88;
            a2 = &v43[v88];
            if (a1 < v43 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v37 = v93;
          }

          else
          {
            v55 = v88;
            v56 = &v93[v88];
            a2 = v43;
            if (a1 < v93 || a1 >= v56)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v93)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v97 = v56;
            v37 = v56;
          }

          a1 += v55;
          v98 = a1;
        }

        while (v37 < v89 && a2 < v95);
      }

LABEL_77:
      sub_23C6473CC(&v98, &v97, &v96);
      return 1;
    }

    v39 = v35 / v88 * v88;
    if (v93 < a2 || &a2[v39] <= v93)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v93 == a2)
      {
LABEL_48:
        v91 = a2;
        v57 = v37 + v39;
        if (v39 >= 1)
        {
          v90 = v11;
          v58 = -v88;
          v80 = (v16 + 48);
          v81 = (v25 + 16);
          v78 = (v16 + 8);
          v79 = (v16 + 32);
          v77 = (v25 + 8);
          v59 = v57;
          v83 = v24;
          v87 = a1;
          v94 = -v88;
          do
          {
            v75 = v57;
            v60 = v91;
            v91 += v58;
            v88 = v60;
            while (1)
            {
              v61 = v95;
              if (v60 <= a1)
              {
                v98 = v60;
                v96 = v75;
                goto LABEL_77;
              }

              v76 = v57;
              v62 = (v59 + v58);
              v63 = *v81;
              (*v81)(v84, v62, v24);
              (v63)(v89, v91, v24);
              v64 = v90;
              sub_23C871374();
              v65 = *v80;
              if ((*v80)(v64, 1, v15) == 1)
              {
                sub_23C870AB4();
                if (v65(v64, 1, v15) != 1)
                {
                  sub_23C585C34(v90, &unk_27E2054F0, &unk_23C874DF0);
                }
              }

              else
              {
                (*v79)(v85, v64, v15);
              }

              sub_23C871374();
              v66 = v86;
              v67 = v65(v86, 1, v15);
              v68 = v82;
              v92 = v62;
              if (v67 == 1)
              {
                sub_23C870AB4();
                if (v65(v66, 1, v15) != 1)
                {
                  sub_23C585C34(v66, &unk_27E2054F0, &unk_23C874DF0);
                }
              }

              else
              {
                (*v79)(v82, v66, v15);
              }

              v95 = &v61[v94];
              v69 = v85;
              v70 = sub_23C870A94();
              v71 = *v78;
              (*v78)(v68, v15);
              v71(v69, v15);
              v72 = *v77;
              v24 = v83;
              (*v77)(v89, v83);
              v72(v84, v24);
              if (v70)
              {
                break;
              }

              v73 = v92;
              v57 = v92;
              v60 = v88;
              if (v61 < v59 || v95 >= v59)
              {
                swift_arrayInitWithTakeFrontToBack();
                v58 = v94;
              }

              else
              {
                v58 = v94;
                if (v61 != v59)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v59 = v57;
              a1 = v87;
              if (v73 <= v93)
              {
                v91 = v60;
                goto LABEL_76;
              }
            }

            if (v61 < v88 || v95 >= v88)
            {
              swift_arrayInitWithTakeFrontToBack();
              v57 = v76;
              v58 = v94;
            }

            else
            {
              v57 = v76;
              v58 = v94;
              if (v61 != v88)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            a1 = v87;
          }

          while (v59 > v93);
        }

LABEL_76:
        v98 = v91;
        v96 = v57;
        goto LABEL_77;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v37 = v93;
    goto LABEL_48;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_23C5A2F5C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v21 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v21 > v6)
    {
      v33 = v4;
LABEL_29:
      v32 = v21;
      v22 = v21 - 8;
      v23 = v5;
      v24 = v14;
      do
      {
        v25 = *(v24 - 1);
        v24 -= 8;
        v26 = v22;
        v27 = *(v25 + 16);
        v28 = *(*v22 + 16);
        if (v27 == v28)
        {
          sub_23C870D74();

          v29 = sub_23C870D14();

          v5 = v23 - 8;
          if (v29)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v5 = v23 - 8;
          if (v27 < v28)
          {
LABEL_37:
            v30 = v26;
            if (v23 != v32)
            {
              *v5 = *v26;
            }

            v4 = v33;
            if (v14 <= v33 || (v21 = v30, v30 <= v6))
            {
              v21 = v30;
              goto LABEL_43;
            }

            goto LABEL_29;
          }
        }

        if (v14 != v23)
        {
          *v5 = *v24;
        }

        v14 = v24;
        v23 = v5;
        v22 = v26;
      }

      while (v24 > v33);
      v14 = v24;
      v21 = v32;
      v4 = v33;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v15 = __src;
      do
      {
        v16 = *(*v15 + 16);
        v17 = *(*v4 + 16);
        if (v16 == v17)
        {
          sub_23C870D74();

          v18 = sub_23C870D14();

          if ((v18 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else if (v16 >= v17)
        {
LABEL_18:
          v19 = v4;
          v20 = v6 == v4;
          v4 += 8;
          if (v20)
          {
            goto LABEL_20;
          }

LABEL_19:
          *v6 = *v19;
          goto LABEL_20;
        }

        v19 = v15;
        v20 = v6 == v15;
        v15 += 8;
        if (!v20)
        {
          goto LABEL_19;
        }

LABEL_20:
        v6 += 8;
      }

      while (v4 < v14 && v15 < v5);
    }

    v21 = v6;
  }

LABEL_43:
  if (v21 != v4 || v21 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v21, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_23C5A324C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = sub_23C871604();
  v8 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v63 = &v53 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v68 = a1;
  v67 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v18;
    if (v18 >= 1)
    {
      v35 = -v14;
      v57 = a4;
      v58 = (v8 + 16);
      v55 = (v8 + 8);
      v56 = a1;
      v36 = v34;
      v59 = -v14;
      do
      {
        v54 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v61 = v37;
        v62 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v68 = v37;
            v66 = v54;
            goto LABEL_58;
          }

          v40 = a3;
          v60 = v34;
          v41 = a3 + v35;
          v42 = v36 + v35;
          v43 = *v58;
          v44 = v63;
          v45 = v65;
          (*v58)(v63, v42, v65);
          v46 = v38;
          v47 = v64;
          (v43)(v64, v46, v45);
          sub_23C8715E4();
          v49 = v48;
          sub_23C8715E4();
          v51 = v50;
          v52 = *v55;
          (*v55)(v47, v45);
          v52(v44, v45);
          if (v49 < v51)
          {
            break;
          }

          v34 = v42;
          a3 = v41;
          if (v40 < v36 || v41 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v62;
            a1 = v56;
          }

          else
          {
            v38 = v62;
            a1 = v56;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v42;
          v39 = v42 > v57;
          v35 = v59;
          v37 = v61;
          if (!v39)
          {
            a2 = v61;
            goto LABEL_57;
          }
        }

        a3 = v41;
        if (v40 < v61 || v41 >= v61)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v56;
          v35 = v59;
          v34 = v60;
        }

        else
        {
          a2 = v62;
          a1 = v56;
          v35 = v59;
          v34 = v60;
          if (v40 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v57);
    }

LABEL_57:
    v68 = a2;
    v66 = v34;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a4 + v17;
    v66 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v60 = a3;
      v61 = v8 + 16;
      v58 = (v8 + 8);
      v59 = v20;
      v21 = v64;
      do
      {
        v22 = a1;
        v23 = v63;
        v24 = a2;
        v25 = v65;
        v26 = a2;
        v27 = v59;
        (v59)(v63, v24, v65);
        v27(v21, a4, v25);
        sub_23C8715E4();
        v29 = v28;
        sub_23C8715E4();
        v31 = v30;
        v32 = *v58;
        (*v58)(v21, v25);
        v32(v23, v25);
        if (v29 >= v31)
        {
          v33 = v22;
          if (v22 < a4 || v22 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v22 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v26 + v14;
          v33 = v22;
          if (v22 < v26 || v22 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v33 + v14;
        v68 = a1;
      }

      while (a4 < v62 && a2 < v60);
    }
  }

LABEL_58:
  sub_23C6473E4(&v68, &v67, &v66);
  return 1;
}

uint64_t sub_23C5A3818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t keypath_setTm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(*a2 + *a5) = *a1;
}

uint64_t sub_23C5A38CC(uint64_t a1)
{
  result = sub_23C871654();
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

unint64_t sub_23C5A3EE8(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_23C871C34();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23C5A3F8C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_23C5A3FDC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_23C5A4024(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C870B74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);

  v51 = a2;
  result = swift_beginAccess();
  v13 = 0;
  v42 = (v9 + 63) >> 6;
  v49 = v5 + 16;
  v50 = v5;
  v48 = (v5 + 8);
  v53 = MEMORY[0x277D84F90];
  v46 = v7;
  v47 = v4;
  v45 = a1 + 56;
  v43 = a1;
  while (v11)
  {
LABEL_10:
    (*(v50 + 16))(v7, *(a1 + 48) + *(v50 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v4);
    v15 = *(v51 + 24);
    if (*(v15 + 16))
    {

      v16 = sub_23C5FFB04(v7);
      v17 = MEMORY[0x277D84F90];
      if (v18)
      {
        v17 = *(*(v15 + 56) + 8 * v16);
      }
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v19 = v11;
    (*v48)(v7, v4);
    v20 = v17 >> 62;
    v21 = v17;
    if (v17 >> 62)
    {
      v22 = sub_23C871C34();
    }

    else
    {
      v22 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v53;
    v24 = v53 >> 62;
    if (v53 >> 62)
    {
      result = sub_23C871C34();
    }

    else
    {
      result = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v22;
    v25 = __OFADD__(result, v22);
    v26 = result + v22;
    if (v25)
    {
      goto LABEL_46;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v24)
      {
LABEL_27:
        sub_23C871C34();
        v28 = v21;
      }

      else
      {
        v28 = v21;
      }

LABEL_28:
      v29 = v19;
      result = sub_23C871D34();
      v53 = result;
      v27 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_29;
    }

    if (v24)
    {
      goto LABEL_27;
    }

    v27 = v23 & 0xFFFFFFFFFFFFFF8;
    v28 = v21;
    if (v26 > *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_28;
    }

    v29 = v19;
LABEL_29:
    v30 = *(v27 + 16);
    v31 = *(v27 + 24);
    if (v20)
    {
      v33 = v27;
      result = sub_23C871C34();
      v27 = v33;
      v32 = result;
    }

    else
    {
      v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = (v29 - 1) & v29;
    if (v32)
    {
      if (((v31 >> 1) - v30) < v55)
      {
        goto LABEL_48;
      }

      v34 = v27 + 8 * v30 + 32;
      v52 = v11;
      v44 = v27;
      if (v20)
      {
        if (v32 < 1)
        {
          goto LABEL_50;
        }

        sub_23C5A44B0();
        for (i = 0; i != v32; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD50, &unk_23C87BE40);
          v36 = sub_23C594EDC(v54, i, v28);
          v38 = *v37;

          (v36)(v54, 0);
          *(v34 + 8 * i) = v38;
        }
      }

      else
      {
        type metadata accessor for TimestampedOrderedEvent();
        swift_arrayInitWithCopy();
      }

      a1 = v43;
      v7 = v46;
      v4 = v47;
      v8 = v45;
      v11 = v52;
      if (v55 >= 1)
      {
        v39 = *(v44 + 16);
        v25 = __OFADD__(v39, v55);
        v40 = v39 + v55;
        if (v25)
        {
          goto LABEL_49;
        }

        *(v44 + 16) = v40;
      }
    }

    else
    {

      v7 = v46;
      v4 = v47;
      v8 = v45;
      if (v55 > 0)
      {
        goto LABEL_47;
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v42)
    {

      return v53;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

unint64_t sub_23C5A44B0()
{
  result = qword_27E1FB5C0;
  if (!qword_27E1FB5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E1FBD50, &unk_23C87BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB5C0);
  }

  return result;
}

uint64_t sub_23C5A4514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C5A4578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *BiomeEventGraphsPublisher.init(streams:windowLength:trackingTag:)(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_inner;
  *(v4 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_inner) = 0;
  v7 = (v4 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_trackingTag);
  *v7 = 0;
  v7[1] = 0;
  *(v4 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_windowLength) = a4;
  *v7 = a2;
  v7[1] = a3;
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_23C871C34())
    {
LABEL_3:
      if ((a1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x23EED7610](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_29;
        }

        result = *(a1 + 32);
      }

      v6 = result;
      if (v8)
      {
        if (sub_23C871C34() >= 2)
        {
          v17 = a1;
          result = sub_23C871C34();
          if (result)
          {
            result = sub_23C871C34();
            if (result)
            {
LABEL_12:
              if ((a1 & 0xC000000000000001) != 0)
              {
                MEMORY[0x23EED7610](0, a1);
                swift_unknownObjectRelease();
                v10 = a1 & 0xFFFFFFFFFFFFFF8;
                if (!v8)
                {
LABEL_14:
                  result = *(v10 + 16);
                  goto LABEL_19;
                }
              }

              else
              {
                v10 = a1 & 0xFFFFFFFFFFFFFF8;
                if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_33:
                  __break(1u);
                  return result;
                }

                if (!v8)
                {
                  goto LABEL_14;
                }
              }

              result = sub_23C871C34();
LABEL_19:
              if (result)
              {
                v8 = v4;
                sub_23C5A7090(0, 1, sub_23C64BCEC, sub_23C5A6F84);
                if (!(v17 >> 62))
                {

                  sub_23C872024();
LABEL_22:

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D38, &qword_23C874E38);
                  v14 = sub_23C871894();

                  v23 = sub_23C5A7BE8;
                  v24 = 0;
                  aBlock = MEMORY[0x277D85DD0];
                  v20 = 1107296256;
                  v21 = sub_23C5A4A38;
                  v22 = &block_descriptor_3;
                  v15 = _Block_copy(&aBlock);
                  v16 = [v6 orderedMergeWithOthers:v14 comparator:v15];

                  _Block_release(v15);
                  v4 = v8;
                  *(v8 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_mergedStream) = v16;
                  goto LABEL_23;
                }

LABEL_29:

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D38, &qword_23C874E38);
                sub_23C871E44();

                goto LABEL_22;
              }

              goto LABEL_32;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
      {
        v17 = a1;
        goto LABEL_12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D38, &qword_23C874E38);
      v11 = sub_23C871894();
      v23 = sub_23C5A7BE8;
      v24 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v20 = 1107296256;
      v21 = sub_23C5A4A38;
      v22 = &block_descriptor;
      v12 = _Block_copy(&aBlock);
      v13 = [v6 orderedMergeWithOthers:v11 comparator:v12];

      _Block_release(v12);
      *(v4 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_mergedStream) = v13;
LABEL_23:
      v18.receiver = v4;
      v18.super_class = type metadata accessor for BiomeEventGraphsPublisher();
      return objc_msgSendSuper2(&v18, sel_init);
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  type metadata accessor for BiomeEventGraphsPublisher();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_23C5A4A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);

  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_23C5A4ADC(uint64_t a1, uint64_t a2)
{
  sub_23C588DC0(a1, v10);
  type metadata accessor for AnteroEvent(0);
  swift_dynamicCast();
  v3 = *&v9[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
  v4 = v9[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8];

  if (v4)
  {
    v3 = 0.0;
  }

  sub_23C588DC0(a2, v10);
  swift_dynamicCast();
  v5 = *&v9[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
  v6 = v9[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8];

  if (v6)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  if (v3 >= v7)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23C5A4C10(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_windowLength);
  v4 = v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_trackingTag;
  v5 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_trackingTag);
  v6 = *(v4 + 8);
  v7 = objc_allocWithZone(type metadata accessor for BiomeEventGraphsPublisher.SessionIDSubscriber(0));

  v8 = swift_unknownObjectRetain();
  v9 = sub_23C5A71D8(v8, v5, v6, v3);
  swift_unknownObjectRelease();
  v10 = *(v2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_inner);
  *(v2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_inner) = v9;
  v12 = v9;

  v11 = *(v2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_mergedStream);
  [v11 subscribe_];
}

uint64_t sub_23C5A4EFC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CoreAnalyticsTracker(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_upstreamFinished) = 1;
  sub_23C5A53C0();
  [*(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_downstream) receiveCompletion_];
  v10 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_tracker;
  swift_beginAccess();
  sub_23C5855B0(v1 + v10, v5, &unk_27E1FB5D0, &unk_23C874EE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_23C585C34(v5, &unk_27E1FB5D0, &unk_23C874EE0);
  }

  sub_23C5A7A78(v5, v9);
  sub_23C5FCF78(0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraph), 0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraphBuilder), 0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_eventsHandledInGraphBuilder), 0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionCount), 0);
  return sub_23C5A7ADC(v9);
}

uint64_t sub_23C5A5174()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for CoreAnalyticsTracker(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_upstreamFinished) = 1;
  [*(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_downstream) cancel];
  v8 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_tracker;
  swift_beginAccess();
  sub_23C5855B0(v0 + v8, v3, &unk_27E1FB5D0, &unk_23C874EE0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_23C585C34(v3, &unk_27E1FB5D0, &unk_23C874EE0);
  }

  sub_23C5A7A78(v3, v7);
  sub_23C5FCF78(1, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraph), 0, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraphBuilder), 0, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_eventsHandledInGraphBuilder), 0, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionCount), 0);
  return sub_23C5A7ADC(v7);
}

void sub_23C5A53C0()
{
  v1 = v0;
  v61 = sub_23C870B74();
  v2 = MEMORY[0x28223BE20](v61);
  v57 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v60 = &v45 - v4;
  v5 = 0;
  v46 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_graphSessionWindowLength;
  v47 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_latestRecievedTimestamp;
  v53 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionBuilder;
  v54 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_upstreamFinished;
  v51 = v0;
  v52 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraphBuilder;
  v6 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraph;
  v7 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionCount;
  v48 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_downstream;
  v49 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionCount;
  v58 = v8;
  v59 = (v8 + 32);
  for (i = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraph; ; v6 = i)
  {
    if (v1[v54] == 1)
    {
      v17 = *&v1[v53];
      v18 = sub_23C63858C();
      if (!v18[2])
      {
        goto LABEL_37;
      }
    }

    else
    {
      v17 = *&v1[v53];
      v18 = sub_23C637D50(*&v1[v47] - *&v1[v46]);
      if (!v18[2])
      {
LABEL_37:

        return;
      }
    }

    v19 = v18[4];
    v20 = v18[5];
    v21 = v18[6];
    v22 = v18[7];

    v23 = *&v1[v52];
    if (*(v17 + 48) > v23)
    {
      v23 = *(v17 + 48);
    }

    *&v1[v52] = v23;
    v24 = sub_23C638DD4(v19, v20, v21, v22);
    v26 = v25;

    if (!v26)
    {
      return;
    }

    v27 = *&v1[v6];
    v28 = v26 >> 62 ? sub_23C871C34() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v28 <= v27 ? v27 : v28;
    *&v1[v6] = v29;
    v30 = *&v1[v7];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      break;
    }

    v55 = *&v24;
    *&v1[v7] = v32;
    if (v26 >> 62)
    {
      v33 = sub_23C871C34();
      v56 = v5;
      if (v33)
      {
LABEL_21:
        v34 = 0;
        v9 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x23EED7610](v34, v26);
          }

          else
          {
            if (v34 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v35 = *(v26 + 8 * v34 + 32);
          }

          v36 = v35;
          v37 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          v38 = *&v35[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_selfEvent];
          if (v38)
          {
            v39 = *(v38 + 24);
            v40 = sub_23C870CF4();

            if (!v40)
            {
              goto LABEL_42;
            }

            v41 = v57;
            sub_23C870D94();

            v42 = *v59;
            (*v59)(v60, v41, v61);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_23C5844B4(0, *(v9 + 2) + 1, 1, v9);
            }

            v44 = *(v9 + 2);
            v43 = *(v9 + 3);
            if (v44 >= v43 >> 1)
            {
              v9 = sub_23C5844B4((v43 > 1), v44 + 1, 1, v9);
            }

            *(v9 + 2) = v44 + 1;
            v42(&v9[((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v44], v60, v61);
          }

          else
          {
          }

          ++v34;
          if (v37 == v33)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }
    }

    else
    {
      v33 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v56 = v5;
      if (v33)
      {
        goto LABEL_21;
      }
    }

    v9 = MEMORY[0x277D84F90];
LABEL_3:
    v10 = v55;
    v11 = sub_23C596660(v9);

    v1 = v51;
    v12 = v51;
    v5 = v56;
    v13 = sub_23C5A6AB8(v11, v12);

    v62 = v26;
    sub_23C6360E0(v13);
    v14 = v62;
    v15 = objc_allocWithZone(type metadata accessor for BiomeEventGraph(0));
    v16 = BiomeEventGraph.init(timestamp:events:)(v14, v10);
    [*&v1[v48] receiveInput_];

    v7 = v49;
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

char *sub_23C5A584C(char *result)
{
  if (result[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp + 8])
  {
    v2 = 0.0;
  }

  else
  {
    v2 = *&result[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_timestamp];
  }

  v3 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_latestRecievedTimestamp);
  if (v2 > v3)
  {
    v3 = v2;
  }

  *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_latestRecievedTimestamp) = v3;
  v4 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_eventsHandledInGraphBuilder);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_eventsHandledInGraphBuilder) = v6;
  v8 = &result[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_link];
  v9 = *&result[OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_link + 8];
  if (!v9)
  {
    goto LABEL_13;
  }

  v11 = v8[2];
  v10 = v8[3];
  v12 = *v8;

  sub_23C5A79B4(v12, v9, v11, v10);
  sub_23C58428C(v12, v9, v11, v10);
  if (v11 == 0x5F4C414349474F4CLL && v10 == 0xED00004B434F4C43)
  {

LABEL_18:
    v22 = v8[1];
    if (v22)
    {
      v23 = *v8;
      sub_23C5A79B4(*v8, v8[1], v8[2], v8[3]);

      sub_23C666CD0(v7, v23, v22, v2);

      return swift_bridgeObjectRelease_n();
    }

    return result;
  }

  v14 = sub_23C872014();

  if (v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = OBJC_IVAR____TtC26AIMLInstrumentationStreams11AnteroEvent_joiningLinks;
  result = swift_beginAccess();
  v16 = *&v7[v15];
  v17 = *(v16 + 16);
  v18 = v8[1];
  if (v17)
  {
    if (!v18)
    {
      v38 = v7;
      v27 = v7;
      goto LABEL_23;
    }

    v20 = v8[2];
    v19 = v8[3];
    v21 = *v8;

    sub_23C63576C(v7, v21, v18, v20, v19, v2);

    v16 = *&v7[v15];
    v17 = *(v16 + 16);
    if (v17)
    {
      v38 = 0;
LABEL_23:

      for (i = (v16 + 48); ; i += 8)
      {
        v30 = i[2];
        v29 = i[3];
        v31 = i[4];
        v32 = i[5];
        v33 = v31 == 0xD000000000000011 && 0x800000023C8A7280 == v32;
        if (v33 || (v34 = *(i - 1), v39 = *(i - 2), v35 = *i, v36 = i[1], (sub_23C872014() & 1) != 0))
        {

          sub_23C63BA88(v30, v29, v31, v32);
        }

        else
        {
          v37 = v35 == 0xD000000000000011 && 0x800000023C8A7280 == v36;
          if (!v37 && (sub_23C872014() & 1) == 0)
          {
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            if (v38)
            {
              sub_23C636734(v38, v39, v34, v35, v36, v30, v29, v31, v2, v32);
            }

            else
            {
              sub_23C5A5FA4(v39, v34, v35, v36, v30, v29, v31, v32, v2);
            }

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            goto LABEL_31;
          }

          sub_23C63BA88(v39, v34, v35, v36);
        }

LABEL_31:
        if (!--v17)
        {
        }
      }
    }
  }

  else if (v18)
  {
    v25 = v8[2];
    v24 = v8[3];
    v26 = *v8;

    sub_23C63576C(v7, v26, v18, v25, v24, v2);
  }

  return result;
}

id BiomeEventGraphsPublisher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23C5A5F0C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23C5A5FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v11 = a8;
  v13 = a4;
  v14 = a2;
  v125 = a5;
  v126 = a1;
  v124 = a3;
  v122 = a7;
  v15 = sub_23C637C60(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  swift_beginAccess();
  v127 = v9;
  v22 = *(v9 + 24);
  v23 = *(v22 + 16);
  v120 = v14;
  v121 = v13;
  if (v23)
  {

    v24 = sub_23C5FFB88(v15, v17, v19, v21);
    if (v25)
    {
      v115 = *(*(v22 + 56) + 8 * v24);
    }

    else
    {
      v115 = MEMORY[0x277D84F90];
    }

    v26 = v125;
    v14 = v120;
    v13 = v121;
  }

  else
  {

    v115 = MEMORY[0x277D84F90];
    v26 = v125;
  }

  v123 = a6;
  v119 = v11;
  v27 = sub_23C637C60(v126, v14, v124, v13, v26, a6, v122, v11);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v146[0] = *(v127 + 24);
  v35 = v146[0];
  *(v127 + 24) = 0x8000000000000000;
  v37 = sub_23C5FFB88(v27, v29, v31, v33);
  v38 = *(v35 + 16);
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
    goto LABEL_49;
  }

  LOBYTE(v11) = v36;
  if (*(v35 + 24) >= v40)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_51;
    }

    while (1)
    {
LABEL_12:
      v43 = v124;
      v44 = v146[0];
      *(v127 + 24) = v146[0];
      if ((v11 & 1) == 0)
      {
        sub_23C6429F8(v37, v27, v29, v31, v33, MEMORY[0x277D84F90], v44);
      }

      *(v44[7] + 8 * v37) = v115;

      swift_endAccess();

      v45 = v126;
      v47 = v120;
      v46 = v121;
      v146[0] = v126;
      v146[1] = v120;
      v146[2] = v43;
      v146[3] = v121;
      v48 = v43;
      v49 = v125;
      v50 = v122;
      v51 = v123;
      v146[4] = v125;
      v146[5] = v123;
      v52 = v119;
      v146[6] = v122;
      v146[7] = v119;

      sub_23C5855B0(v146, v147, &qword_27E1F9DD0, &unk_23C874ED0);
      sub_23C63B034(v45, v47, v48, v46, v49, v51, v50, v52);

      v147[0] = v45;
      v147[1] = v47;
      v147[2] = v48;
      v147[3] = v46;
      v147[4] = v49;
      v147[5] = v51;
      v147[6] = v50;
      v147[7] = v52;
      v53 = v127;
      swift_beginAccess();
      v54 = *(v53 + 40);
      if (*(v54 + 16))
      {
        sub_23C5855B0(v147, &v138, &qword_27E1F9DD0, &unk_23C874ED0);

        v55 = v124;
        v56 = sub_23C5FFB88(v126, v47, v124, v46);
        if (v57)
        {
          v58 = (*(v54 + 56) + 32 * v56);
          v59 = v58[1];
          v112 = *v58;
          v60 = v58[3];
          v114 = v58[2];
          v118 = v59;

          v111 = v60;
        }

        else
        {

          v111 = 0;
          v112 = 0;
          v118 = 0;
          v114 = 0;
        }

        v61 = v122;
        v62 = v125;
      }

      else
      {
        sub_23C5855B0(v147, &v138, &qword_27E1F9DD0, &unk_23C874ED0);
        v111 = 0;
        v112 = 0;
        v118 = 0;
        v114 = 0;
        v61 = v122;
        v55 = v124;
        v62 = v125;
      }

      v138 = v126;
      v139 = v47;
      v140 = v55;
      v141 = v46;
      v142 = v62;
      v143 = v51;
      v31 = v119;
      v144 = v61;
      v145 = v119;
      v63 = *(v127 + 40);
      v11 = v61;
      if (!*(v63 + 16))
      {
        break;
      }

      sub_23C5855B0(&v138, &v130, &qword_27E1F9DD0, &unk_23C874ED0);

      v64 = sub_23C5FFB88(v62, v51, v61, v31);
      if ((v65 & 1) == 0)
      {

        goto LABEL_25;
      }

      v66 = (*(v63 + 56) + 32 * v64);
      v67 = v66[1];
      v116 = *v66;
      v117 = v67;
      v68 = v66[3];
      v113 = v66[2];

      v110 = v68;

LABEL_26:
      v69 = v139;
      v70 = v141;
      v108 = v140;
      v109 = v138;

      if (!v118 || !v117)
      {
        goto LABEL_37;
      }

      v37 = v112;
      if ((v112 != v116 || v118 != v117) && (sub_23C872014() & 1) == 0)
      {
        sub_23C5A79B4(v37, v118, v114, v111);
        sub_23C5A79B4(v116, v117, v113, v110);

LABEL_37:
        v79 = v127;

        v80 = sub_23C63BA88(v109, v69, v108, v70);

        v81 = sub_23C591B98(v80);
        v83 = v82;
        v37 = v84;
        v86 = v85;
        v130 = v81;
        v131 = v82;
        v132 = v84;
        v133 = v85;
        MEMORY[0x28223BE20](v81);
        v107[2] = v79;
        v107[3] = &v130;
        sub_23C63269C(sub_23C5A79F8, v107, v80);

        v73 = v125;
        v87 = v86;
        v11 = v122;
        sub_23C58428C(v81, v83, v37, v87);
        goto LABEL_38;
      }

      v71 = v111;
      if (v114 == v113 && v111 == v110)
      {
        v72 = v114;
        sub_23C5A79B4(v37, v118, v114, v111);
        sub_23C5A79B4(v116, v117, v72, v71);

        v73 = v125;
        goto LABEL_38;
      }

      v74 = v110;
      v75 = v113;
      v76 = v114;
      v77 = sub_23C872014();
      v78 = v37;
      v37 = v118;
      sub_23C5A79B4(v78, v118, v76, v71);
      sub_23C5A79B4(v116, v117, v75, v74);

      v31 = v119;

      v73 = v125;
      if ((v77 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_38:
      v27 = v126;
      v88 = v120;
      v29 = v121;
      v130 = v126;
      v131 = v120;
      v33 = v124;
      v132 = v124;
      v133 = v121;
      v134 = v73;
      v135 = v123;
      v136 = v11;
      v137 = v31;
      v89 = *(v127 + 40);
      if (*(v89 + 16))
      {
        sub_23C5855B0(&v130, v129, &qword_27E1F9DD0, &unk_23C874ED0);

        v90 = sub_23C5FFB88(v27, v88, v33, v29);
        if (v91)
        {
          v92 = (*(v89 + 56) + 32 * v90);
          v93 = *v92;
          v94 = v92[1];
          v95 = v92[2];
          v96 = v92[3];

          v97 = v127;
          swift_beginAccess();
          v98 = *(v97 + 16);
          if (*(v98 + 16))
          {

            v99 = sub_23C5FFB88(v93, v94, v95, v96);
            v100 = 0.0;
            v102 = v125;
            v101 = v126;
            if (v103)
            {
              v100 = *(*(v98 + 56) + 8 * v99);
            }
          }

          else
          {
            v100 = 0.0;
            v102 = v125;
            v101 = v126;
          }

          if (v100 > a9)
          {
            a9 = v100;
          }

          v104 = v127;
          swift_beginAccess();
          v105 = swift_isUniquelyReferenced_nonNull_native();
          v128 = *(v104 + 16);
          *(v104 + 16) = 0x8000000000000000;
          sub_23C59461C(v93, v94, v95, v96, v105, a9);
          *(v104 + 16) = v128;
          swift_endAccess();
          sub_23C58428C(v116, v117, v113, v110);
          sub_23C58428C(v112, v118, v114, v111);

          v129[0] = v101;
          v129[1] = v120;
          v129[2] = v124;
          v129[3] = v121;
          v129[4] = v102;
          v129[5] = v123;
          v129[6] = v11;
          v129[7] = v119;
          return sub_23C585C34(v129, &qword_27E1F9DD0, &unk_23C874ED0);
        }
      }

      else
      {
LABEL_49:
        __break(1u);
      }

      __break(1u);
LABEL_51:
      sub_23C64412C();
    }

    sub_23C5855B0(&v138, &v130, &qword_27E1F9DD0, &unk_23C874ED0);
LABEL_25:
    v116 = 0;
    v117 = 0;
    v113 = 0;
    v110 = 0;
    goto LABEL_26;
  }

  sub_23C63EA3C(v40, isUniquelyReferenced_nonNull_native);
  v41 = sub_23C5FFB88(v27, v29, v31, v33);
  if ((v11 & 1) == (v42 & 1))
  {
    v37 = v41;
    goto LABEL_12;
  }

  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C5A698C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for EventGraph();
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
  result = sub_23C871C34();
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
    result = sub_23C871C34();
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

uint64_t sub_23C5A6AB8(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = sub_23C870B74();
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v56 = v4 + 16;
  v57 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_logicalClockBuilder;
  v58 = v4;
  v55 = (v4 + 8);

  v13 = 0;
  v62 = MEMORY[0x277D84F90];
  v52 = a1 + 56;
  v53 = v6;
  v51 = v11;
  v54 = a1;
  v49 = v3;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_42;
        }

        v10 = *(v7 + 8 * v14);
        ++v13;
        if (v10)
        {
          v13 = v14;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

LABEL_10:
    v15 = v10;
    (*(v58 + 16))(v6, *(a1 + 48) + *(v58 + 72) * (__clz(__rbit64(v10)) | (v13 << 6)), v3);
    v16 = *(v59 + v57);
    v17 = sub_23C870B04();
    v19 = v18;
    swift_beginAccess();
    v20 = *(v16 + 24);
    if (*(v20 + 16) && (, v21 = sub_23C5FF898(v17, v19), v23 = v22, , (v23 & 1) != 0))
    {
      v24 = *(*(v20 + 56) + 8 * v21);
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }

    (*v55)(v6, v3);
    v25 = v24 >> 62;
    v26 = v62;
    v27 = v24;
    v28 = v24 >> 62 ? sub_23C871C34() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v26 >> 62;
    if (v26 >> 62)
    {
      break;
    }

    v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v30 + v28;
    if (__OFADD__(v30, v28))
    {
      goto LABEL_41;
    }

LABEL_18:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v64 = v28;
    if (!result)
    {
      if (v29)
      {
LABEL_23:
        sub_23C871C34();
      }

LABEL_24:
      result = sub_23C871D34();
      v26 = result;
      v32 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_25;
    }

    if (v29)
    {
      goto LABEL_23;
    }

    v32 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v31 > *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_24;
    }

LABEL_25:
    v33 = *(v32 + 16);
    v34 = *(v32 + 24);
    if (v25)
    {
      v36 = v32;
      result = sub_23C871C34();
      v32 = v36;
      v35 = result;
    }

    else
    {
      v35 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = (v15 - 1) & v15;
    v62 = v26;
    if (v35)
    {
      if (((v34 >> 1) - v33) < v64)
      {
        goto LABEL_45;
      }

      v60 = v13;
      v37 = v32 + 8 * v33 + 32;
      v50 = v32;
      if (v25)
      {
        if (v35 < 1)
        {
          goto LABEL_47;
        }

        sub_23C5A7A14();
        v38 = 0;
        v39 = v27;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9DD8, &unk_23C87BEB0);
          v40 = sub_23C595568(v63, v38, v39);
          v42 = v35;
          v43 = *v41;
          (v40)(v63, 0);
          *(v37 + 8 * v38) = v43;
          v35 = v42;
          ++v38;
        }

        while (v42 != v38);
      }

      else
      {
        type metadata accessor for AnteroEvent(0);
        swift_arrayInitWithCopy();
      }

      v6 = v53;
      a1 = v54;
      v3 = v49;
      v11 = v51;
      v7 = v52;
      v13 = v60;
      v10 = v61;
      if (v64 >= 1)
      {
        v44 = *(v50 + 16);
        v45 = __OFADD__(v44, v64);
        v46 = v44 + v64;
        if (v45)
        {
          goto LABEL_46;
        }

        *(v50 + 16) = v46;
      }
    }

    else
    {

      v7 = v52;
      v6 = v53;
      v11 = v51;
      v10 = v61;
      a1 = v54;
      if (v64 > 0)
      {
        goto LABEL_44;
      }
    }
  }

  v47 = sub_23C871C34();
  v31 = v47 + v28;
  if (!__OFADD__(v47, v28))
  {
    goto LABEL_18;
  }

LABEL_41:
  __break(1u);
LABEL_42:

  return v62;
}

uint64_t sub_23C5A6F84(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9DF0, &qword_23C87BE00);
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
  result = sub_23C871C34();
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
    result = sub_23C871C34();
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

uint64_t sub_23C5A7090(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3;
    v5 = a2;
    v7 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v15 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_23C871C34();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v13 = sub_23C871C34();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v15(v7, v5, 0);
}

uint64_t type metadata accessor for BiomeEventGraphsPublisher.SessionIDSubscriber(uint64_t a1)
{
  result = qword_27E1F9DB8;
  if (!qword_27E1F9DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_23C5A71D8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v45 = a2;
  v46 = a3;
  v43 = a1;
  v7 = type metadata accessor for CoreAnalyticsTracker(0);
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23C870AE4();
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v42 - v14;
  v15 = sub_23C871654();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v8 + 56);
  v47 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_tracker;
  v52 = v8 + 56;
  v44 = v19;
  v19(&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_tracker], 1, 1, v7);
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_eventsHandledInGraphBuilder] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionCount] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraph] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_maxEventsInGraphBuilder] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_latestRecievedTimestamp] = 0;
  v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_upstreamFinished] = 0;
  v20 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_sessionBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9DF8, &qword_23C874EF0);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D84F90];
  v21[2] = sub_23C598660(MEMORY[0x277D84F90]);
  v21[3] = sub_23C598784(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E00, &qword_23C874EF8);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_23C5988EC(v22);
  v21[4] = v23;
  v21[5] = sub_23C598798(v22);
  v21[6] = 0;
  *&v5[v20] = v21;
  v24 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_logicalClockBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E08, &unk_23C874F00);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_23C59844C(v22);
  *(v25 + 24) = sub_23C598550(v22);
  *&v5[v24] = v25;
  v26 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_logger;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_downstream] = v43;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber_graphSessionWindowLength] = a4;
  (*(v16 + 16))(v18, &v5[v26], v15);
  swift_unknownObjectRetain();
  v27 = sub_23C871634();
  v28 = sub_23C871AC4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_23C56D000, v27, v28, "Constructed BiomeEventGraphsSubscriber", v29, 2u);
    MEMORY[0x23EED8240](v29, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  v30 = v48;
  sub_23C870AD4();
  *&v10[v7[7]] = 0;
  *v10 = 1;
  *(v10 + 1) = 0xD00000000000001BLL;
  *(v10 + 2) = 0x800000023C8A72D0;
  v32 = v50;
  v31 = v51;
  (*(v50 + 16))(&v10[v7[6]], v30, v51);
  v33 = &v10[v7[8]];
  v34 = v46;
  *v33 = v45;
  v33[1] = v34;
  if (qword_27E1F8308 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v15, qword_27E1FB2F8);
  v35 = sub_23C871634();
  v36 = sub_23C871AC4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    *(v37 + 4) = 1;
    _os_log_impl(&dword_23C56D000, v35, v36, "tracker starting for %ld", v37, 0xCu);
    MEMORY[0x23EED8240](v37, -1, -1);
  }

  (*(v32 + 8))(v30, v31);
  v38 = v49;
  sub_23C5A7A78(v10, v49);
  v44(v38, 0, 1, v7);
  v39 = v47;
  swift_beginAccess();
  sub_23C5A7B70(v38, &v5[v39]);
  swift_endAccess();
  v40 = type metadata accessor for BiomeEventGraphsPublisher.SessionIDSubscriber(0);
  v53.receiver = v5;
  v53.super_class = v40;
  return objc_msgSendSuper2(&v53, sel_init);
}

void sub_23C5A7858(uint64_t a1)
{
  sub_23C5A795C(319);
  if (v1 <= 0x3F)
  {
    sub_23C871654();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23C5A795C(uint64_t a1)
{
  if (!qword_27E1F9DC8)
  {
    type metadata accessor for CoreAnalyticsTracker(255);
    v1 = sub_23C871B74();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1F9DC8);
    }
  }
}

void sub_23C5A79B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_23C5A7A14()
{
  result = qword_27E1F9DE0;
  if (!qword_27E1F9DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F9DD8, &unk_23C87BEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9DE0);
  }

  return result;
}

uint64_t sub_23C5A7A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreAnalyticsTracker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C5A7ADC(uint64_t a1)
{
  v2 = type metadata accessor for CoreAnalyticsTracker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
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

uint64_t sub_23C5A7B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static BiomeInstrumentationStreamsFactory.constructRawJoinableProvider(startTime:endTime:maxEvents:lastN:useCase:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = v11;
  *(v8 + 64) = v12;
  *(v8 + 155) = v10;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 154) = a7;
  *(v8 + 153) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 152) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23C5A7C34, 0, 0);
}

uint64_t sub_23C5A7C34()
{
  v0[9] = type metadata accessor for TranscriptStream(0);
  v1 = swift_allocObject();
  v0[10] = v1;
  sub_23C871644();
  *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams16TranscriptStream_name) = 0;
  v0[11] = type metadata accessor for RawJoinableStream(0);
  v2 = swift_allocObject();
  v0[12] = v2;
  *(v2 + 16) = 3;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  v0[13] = type metadata accessor for GMSStream(0);
  v3 = swift_allocObject();
  v0[14] = v3;
  sub_23C871644();
  *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams9GMSStream_name) = 1;
  v0[15] = type metadata accessor for TelemetryStream(0);
  v4 = swift_allocObject();
  v0[16] = v4;
  sub_23C871644();
  *(v4 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15TelemetryStream_name) = 2;
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_23C5A7E70;

  return sub_23C6289D0();
}

uint64_t sub_23C5A7E70()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_23C5A812C;
  }

  else
  {
    v2 = sub_23C5A7F84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C5A7F84()
{
  v17 = *(v0 + 120);
  v12 = *(v0 + 104);
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v20 = *(v0 + 155);
  v5 = *(v0 + 64);
  v21 = *(v0 + 56);
  v18 = *(v0 + 48);
  v19 = *(v0 + 128);
  v16 = *(v0 + 154);
  v13 = *(v0 + 153);
  v6 = *(v0 + 32);
  v14 = *(v0 + 40);
  v15 = *(v0 + 112);
  v7 = *(v0 + 152);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C30, &qword_23C874CE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23C873CF0;
  *(v10 + 56) = v4;
  *(v10 + 64) = &off_284F33190;
  *(v10 + 32) = v3;
  *(v10 + 96) = v2;
  *(v10 + 104) = &off_284F30398;
  *(v10 + 72) = v1;
  *(v10 + 136) = v12;
  *(v10 + 144) = &off_284F2FFD8;
  *(v10 + 112) = v15;
  *(v10 + 176) = v17;
  *(v10 + 184) = &off_284F311A8;
  *(v10 + 152) = v19;
  *v9 = v10;
  *(v9 + 8) = v8;
  *(v9 + 16) = v7 & 1;
  *(v9 + 24) = v6;
  *(v9 + 32) = v13 & 1;
  *(v9 + 40) = v14;
  *(v9 + 48) = v16 & 1;
  *(v9 + 56) = v18;
  *(v9 + 64) = v20 & 1;
  *(v9 + 72) = v21;
  *(v9 + 80) = v5;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_23C5A812C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static BiomeInstrumentationStreamsFactory.constructRawJoinableProvider(startTime:endTime:maxEvents:lastN:useCase:trackingTag:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 72) = v12;
  *(v8 + 80) = v13;
  *(v8 + 56) = v11;
  *(v8 + 171) = v10;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 170) = a7;
  *(v8 + 169) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 168) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23C5A820C, 0, 0);
}

uint64_t sub_23C5A820C()
{
  v0[11] = type metadata accessor for TranscriptStream(0);
  v1 = swift_allocObject();
  v0[12] = v1;
  sub_23C871644();
  *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams16TranscriptStream_name) = 0;
  v0[13] = type metadata accessor for RawJoinableStream(0);
  v2 = swift_allocObject();
  v0[14] = v2;
  *(v2 + 16) = 3;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  v0[15] = type metadata accessor for GMSStream(0);
  v3 = swift_allocObject();
  v0[16] = v3;
  sub_23C871644();
  *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams9GMSStream_name) = 1;
  v0[17] = type metadata accessor for TelemetryStream(0);
  v4 = swift_allocObject();
  v0[18] = v4;
  sub_23C871644();
  *(v4 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15TelemetryStream_name) = 2;
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_23C5A8448;

  return sub_23C6289D0();
}

uint64_t sub_23C5A8448()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_23C5A8730;
  }

  else
  {
    v2 = sub_23C5A855C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C5A855C()
{
  v21 = *(v0 + 144);
  v19 = *(v0 + 136);
  v17 = *(v0 + 128);
  v14 = *(v0 + 120);
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v23 = *(v0 + 72);
  v20 = *(v0 + 171);
  v6 = *(v0 + 64);
  v22 = *(v0 + 56);
  v18 = *(v0 + 48);
  v16 = *(v0 + 170);
  v13 = *(v0 + 169);
  v15 = *(v0 + 40);
  v12 = *(v0 + 32);
  v7 = *(v0 + 168);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C30, &qword_23C874CE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23C873CF0;
  *(v10 + 56) = v4;
  *(v10 + 64) = &off_284F33190;
  *(v10 + 32) = v3;
  *(v10 + 96) = v2;
  *(v10 + 104) = &off_284F30398;
  *(v10 + 72) = v1;
  *(v10 + 136) = v14;
  *(v10 + 144) = &off_284F2FFD8;
  *(v10 + 112) = v17;
  *(v10 + 176) = v19;
  *(v10 + 184) = &off_284F311A8;
  *(v10 + 152) = v21;
  *v8 = v10;
  *(v8 + 8) = v9;
  *(v8 + 16) = v7 & 1;
  *(v8 + 24) = v12;
  *(v8 + 32) = v13 & 1;
  *(v8 + 40) = v15;
  *(v8 + 48) = v16 & 1;
  *(v8 + 56) = v18;
  *(v8 + 64) = v20 & 1;
  *(v8 + 72) = v22;
  *(v8 + 80) = v6;
  *(v8 + 88) = v23;
  *(v8 + 96) = v5;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_23C5A8730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static BiomeInstrumentationStreamsFactory.constructProcessedJoinableProvider(startTime:endTime:maxEvents:lastN:useCase:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = v11;
  *(v8 + 64) = v12;
  *(v8 + 75) = v10;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 74) = a7;
  *(v8 + 73) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 72) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23C5A8808, 0, 0);
}

uint64_t sub_23C5A8808()
{
  v19 = *(v0 + 75);
  v20 = *(v0 + 56);
  v22 = *(v0 + 64);
  v18 = *(v0 + 48);
  v17 = *(v0 + 74);
  v15 = *(v0 + 73);
  v16 = *(v0 + 40);
  v14 = *(v0 + 32);
  v13 = *(v0 + 72);
  v1 = *(v0 + 16);
  v12 = *(v0 + 24);
  v2 = type metadata accessor for TranscriptStream(0);
  v3 = swift_allocObject();
  sub_23C871644();
  *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams16TranscriptStream_name) = 0;
  v11 = type metadata accessor for SelfProcessedEventJoinableStream();
  v4 = swift_allocObject();
  *(v4 + 16) = 4;
  v5 = type metadata accessor for GMSStream(0);
  v6 = swift_allocObject();
  sub_23C871644();
  *(v6 + OBJC_IVAR____TtC26AIMLInstrumentationStreams9GMSStream_name) = 1;
  v7 = type metadata accessor for TelemetryStream(0);
  v8 = swift_allocObject();
  sub_23C871644();
  *(v8 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15TelemetryStream_name) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C30, &qword_23C874CE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23C873CF0;
  *(v9 + 56) = v2;
  *(v9 + 64) = &off_284F33190;
  *(v9 + 32) = v3;
  *(v9 + 96) = v11;
  *(v9 + 104) = &off_284F30578;
  *(v9 + 72) = v4;
  *(v9 + 136) = v5;
  *(v9 + 144) = &off_284F2FFD8;
  *(v9 + 112) = v6;
  *(v9 + 176) = v7;
  *(v9 + 184) = &off_284F311A8;
  *(v9 + 152) = v8;
  *v1 = v9;
  *(v1 + 8) = v12;
  *(v1 + 16) = v13 & 1;
  *(v1 + 24) = v14;
  *(v1 + 32) = v15 & 1;
  *(v1 + 40) = v16;
  *(v1 + 48) = v17 & 1;
  *(v1 + 56) = v18;
  *(v1 + 64) = v19 & 1;
  *(v1 + 72) = v20;
  *(v1 + 80) = v22;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  v21 = *(v0 + 8);

  return v21();
}

uint64_t static BiomeInstrumentationStreamsFactory.constructProcessedJoinableProvider(startTime:endTime:maxEvents:lastN:useCase:trackingTag:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 72) = v12;
  *(v8 + 80) = v13;
  *(v8 + 56) = v11;
  *(v8 + 91) = v10;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 90) = a7;
  *(v8 + 89) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 88) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23C5A8B54, 0, 0);
}

uint64_t sub_23C5A8B54()
{
  v24 = *(v0 + 80);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  v19 = *(v0 + 91);
  v20 = *(v0 + 56);
  v18 = *(v0 + 48);
  v17 = *(v0 + 90);
  v15 = *(v0 + 89);
  v16 = *(v0 + 40);
  v14 = *(v0 + 32);
  v13 = *(v0 + 88);
  v1 = *(v0 + 16);
  v12 = *(v0 + 24);
  v2 = type metadata accessor for TranscriptStream(0);
  v3 = swift_allocObject();
  sub_23C871644();
  *(v3 + OBJC_IVAR____TtC26AIMLInstrumentationStreams16TranscriptStream_name) = 0;
  v11 = type metadata accessor for SelfProcessedEventJoinableStream();
  v4 = swift_allocObject();
  *(v4 + 16) = 4;
  v5 = type metadata accessor for GMSStream(0);
  v6 = swift_allocObject();
  sub_23C871644();
  *(v6 + OBJC_IVAR____TtC26AIMLInstrumentationStreams9GMSStream_name) = 1;
  v7 = type metadata accessor for TelemetryStream(0);
  v8 = swift_allocObject();
  sub_23C871644();
  *(v8 + OBJC_IVAR____TtC26AIMLInstrumentationStreams15TelemetryStream_name) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C30, &qword_23C874CE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23C873CF0;
  *(v9 + 56) = v2;
  *(v9 + 64) = &off_284F33190;
  *(v9 + 32) = v3;
  *(v9 + 96) = v11;
  *(v9 + 104) = &off_284F30578;
  *(v9 + 72) = v4;
  *(v9 + 136) = v5;
  *(v9 + 144) = &off_284F2FFD8;
  *(v9 + 112) = v6;
  *(v9 + 176) = v7;
  *(v9 + 184) = &off_284F311A8;
  *(v9 + 152) = v8;
  *v1 = v9;
  *(v1 + 8) = v12;
  *(v1 + 16) = v13 & 1;
  *(v1 + 24) = v14;
  *(v1 + 32) = v15 & 1;
  *(v1 + 40) = v16;
  *(v1 + 48) = v17 & 1;
  *(v1 + 56) = v18;
  *(v1 + 64) = v19 & 1;
  *(v1 + 72) = v20;
  *(v1 + 80) = v21;
  *(v1 + 88) = v22;
  *(v1 + 96) = v24;
  v23 = *(v0 + 8);

  return v23();
}

id BiomeInstrumentationStreamsFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeInstrumentationStreamsFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeInstrumentationStreamsFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BiomeInstrumentationStreamsFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BiomeInstrumentationStreamsFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t BiomeInstrumentationStreamsProvider.startTime.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.endTime.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.maxEvents.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.lastN.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.useCase.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t BiomeInstrumentationStreamsProvider.useCase.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t BiomeInstrumentationStreamsProvider.trackingTag.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t BiomeInstrumentationStreamsProvider.trackingTag.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

void BiomeInstrumentationStreamsProvider.transcriptEvents()(uint64_t a1@<X8>)
{
  v3 = *v1;
  v26 = v1[1];
  v25 = *(v1 + 16);
  v24 = v1[3];
  v23 = *(v1 + 32);
  v22 = v1[5];
  v21 = *(v1 + 48);
  v20 = v1[7];
  v19 = *(v1 + 64);
  v17 = v1[10];
  v18 = v1[9];
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      sub_23C5A9638(v6, &v28);
      v8 = v29;
      v9 = v30;
      __swift_project_boxed_opaque_existential_0(&v28, v29);
      (*(v9 + 8))(v27, v8, v9);
      if (LOBYTE(v27[0]))
      {
        __swift_destroy_boxed_opaque_existential_0(&v28);
      }

      else
      {
        sub_23C581A8C(&v28, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23C592C44(0, *(v7 + 16) + 1, 1);
          v7 = v31;
        }

        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_23C592C44((v11 > 1), v12 + 1, 1);
          v7 = v31;
        }

        *(v7 + 16) = v12 + 1;
        sub_23C581A8C(v27, v7 + 40 * v12 + 32);
      }

      ++v5;
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_13:
    if (*(v7 + 16))
    {
      sub_23C5A9638(v7 + 32, v27);

      sub_23C581A8C(v27, &v28);
      v13 = v29;
      v14 = v30;
      __swift_project_boxed_opaque_existential_0(&v28, v29);
      (*(v14 + 16))(v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v13, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94D0, &unk_23C873A00);
      (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
      __swift_destroy_boxed_opaque_existential_0(&v28);
    }

    else
    {

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94D0, &unk_23C873A00);
      (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    }
  }
}