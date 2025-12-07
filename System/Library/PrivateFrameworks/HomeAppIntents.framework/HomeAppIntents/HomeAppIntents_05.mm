unint64_t sub_25278C9E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEF0, &qword_2528C25B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD440, &qword_2528C7F18);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FBEF0, &qword_2528C25B8);
      result = sub_252785918(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278CBD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC1F0, &qword_2528C38C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD438, &qword_2528C7F10);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FC1F0, &qword_2528C38C8);
      result = sub_252785A50(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278CDB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD248, &qword_2528C7D68);
    v3 = sub_2528C0F20();
    sub_2528BEA50();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_252786B48(v5, AttributeKind.rawValue.getter, sub_252787630);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_25278CED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1A8, &qword_2528C7D18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1B0, &unk_2528CDFD0);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD1A8, &qword_2528C7D18);
      result = sub_252785C40(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2528BECF0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_2528BEEC0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_25278D0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD090, &unk_2528C95C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD430, &qword_2528C7F08);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD090, &unk_2528C95C0);
      result = sub_252785C40(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2528BECF0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for HomeEntity.SnapshotPair(0);
      result = sub_252791C14(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for HomeEntity.SnapshotPair);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_25278D334(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE68, &unk_2528CE030);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD240, &qword_2528C7D60);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FCE68, &unk_2528CE030);
      result = sub_252785D14(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2528BF9D0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
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

void *sub_25278D540(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1C8, &qword_2528C7D20);
  v3 = sub_2528C0F20();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_252715000(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_252715000(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25278D648(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1D8, &qword_2528C7D28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1E0, &qword_2528C7D30);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD1D8, &qword_2528C7D28);
      v11 = *v5;
      result = sub_252715000(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_2528C0260();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
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

unint64_t sub_25278D824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1D0, &unk_2528CDFE0);
    v3 = sub_2528C0F20();
    sub_2528BEA50();
    for (i = (a1 + 73); ; i += 48)
    {
      v5 = *(i - 41);
      v6 = *(i - 33);
      v7 = *(i - 25);
      v8 = *(i - 17);
      v9 = *(i - 9);
      v10 = *(i - 1);
      v11 = *i;
      sub_25277B0C4(v6, v7, v8, v9, v10, *i);
      result = sub_252786B48(v5, AttributeKind.rawValue.getter, sub_252787630);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v14 = v3[7] + 40 * result;
      *v14 = v6;
      *(v14 + 8) = v7;
      *(v14 + 16) = v8;
      *(v14 + 24) = v9;
      *(v14 + 32) = v10;
      *(v14 + 33) = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_25278D994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD200, &qword_2528C7D38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD208, &qword_2528C7D40);
    v7 = sub_2528C0F20();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v8, v5, &qword_27F4FD200, &qword_2528C7D38);
      result = sub_252785DE8(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_2528BFB20();
      (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
      result = sub_25274AA0C(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &qword_27F4FD1F8, &unk_2528CDFF0);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
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

unint64_t sub_25278DBC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD060, &qword_2528C7490);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD260, &qword_2528C7D78);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD060, &qword_2528C7490);
      result = sub_252785C40(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2528BECF0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_2528C00D0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_25278DE04(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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
    v14 = sub_2528C0F20();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v16, v12, a2, v27);
      result = sub_252785BD4(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for DeviceEntity(0);
      result = sub_252791C14(v12, v21 + *(*(v22 - 8) + 72) * v20, type metadata accessor for DeviceEntity);
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

unint64_t sub_25278DFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC280, &unk_2528CE050);
    v3 = sub_2528C0F20();
    v4 = a1 + 32;
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v4, &v13, &qword_27F4FD428, &qword_2528C7F00);
      v5 = v13;
      v6 = v14;
      result = sub_252785B30(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_252712E3C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_25278E110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25278E178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD218, &qword_2528C7D50);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD210, &qword_2528C7D48);
      result = sub_252785EBC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2528BFDE0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_252712E3C(&v5[v8], (v7[7] + 32 * v13));
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

unint64_t sub_25278E364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD418, &unk_2528C8810);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD420, &qword_2528C7EF8);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD418, &unk_2528C8810);
      result = sub_252786B48(*v5, HomeError.rawValue.getter, sub_252787AB8);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278E574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD408, &qword_2528C8800);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD410, &qword_2528C7EF0);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD408, &qword_2528C8800);
      result = sub_252786B48(*v5, DeviceError.rawValue.getter, sub_252788010);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278E784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD190, &qword_2528CDFB0);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD188, &qword_2528CDFA0);
      result = sub_252785EBC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2528BFDE0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for RequiredCharacteristicValue(0);
      result = sub_252791C14(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for RequiredCharacteristicValue);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_25278E9A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3F8, &qword_2528C7EE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD400, &qword_2528C7EE8);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD3F8, &qword_2528C7EE0);
      result = sub_252785FBC(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278EB88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3E8, &qword_2528C7ED0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3F0, &qword_2528C7ED8);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD3E8, &qword_2528C7ED0);
      result = sub_252786084(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278ED70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3D8, &qword_2528C7EC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3E0, &qword_2528C7EC8);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD3D8, &qword_2528C7EC0);
      result = sub_252786128(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278EF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3C8, &qword_2528C7EB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3D0, &qword_2528C7EB8);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD3C8, &qword_2528C7EB0);
      result = sub_2527861D0(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278F140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3B8, &qword_2528C7EA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3C0, &qword_2528C7EA8);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD3B8, &qword_2528C7EA0);
      result = sub_25278628C(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278F328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3A8, &qword_2528C7E90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3B0, &qword_2528C7E98);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD3A8, &qword_2528C7E90);
      result = sub_2527863A0(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278F510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD398, &qword_2528C7E80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3A0, &qword_2528C7E88);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD398, &qword_2528C7E80);
      result = sub_252786470(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278F6F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD388, &qword_2528C7E70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD390, &qword_2528C7E78);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD388, &qword_2528C7E70);
      result = sub_252786554(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278F8E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD378, &qword_2528C7E60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD380, &qword_2528C7E68);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD378, &qword_2528C7E60);
      result = sub_252786B48(*v5, RobotVacuumCleanerCleanMode.rawValue.getter, sub_252789284);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278FAF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD368, &qword_2528C7E50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD370, &qword_2528C7E58);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD368, &qword_2528C7E50);
      result = sub_252786654(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278FCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD358, &qword_2528C7E40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD360, &qword_2528C7E48);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD358, &qword_2528C7E40);
      result = sub_252786B48(*v5, RobotVacuumCleanerRunState.rawValue.getter, sub_2527897D8);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_25278FEE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD348, &qword_2528C7E30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD350, &qword_2528C7E38);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD348, &qword_2528C7E30);
      result = sub_252786710(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_2527900D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD338, &qword_2528C7E20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD340, &qword_2528C7E28);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD338, &qword_2528C7E20);
      result = sub_252786804(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_2527902B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD328, &qword_2528C7E10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD330, &qword_2528C7E18);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD328, &qword_2528C7E10);
      result = sub_2527868FC(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_2527904A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD318, &qword_2528C7E00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD320, &qword_2528C7E08);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD318, &qword_2528C7E00);
      result = sub_252786A08(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_252790688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD308, &qword_2528C7DF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD310, &qword_2528C7DF8);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD308, &qword_2528C7DF0);
      result = sub_252786AB8(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

uint64_t sub_25279089C()
{
  sub_2528C1130();
  sub_2528C0A40();
  v0 = sub_2528C1180();

  return sub_252790870(v0);
}

unint64_t sub_252790904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2F8, &qword_2528CDDD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD300, &qword_2528C7DE8);
    v7 = sub_2528C0F20();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v8, v5, &qword_27F4FD2F8, &qword_2528CDDD0);
      result = sub_25279089C();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_2528BE910();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
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

unint64_t sub_252790AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2E8, &qword_2528D0E00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2F0, &qword_2528C7DE0);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD2E8, &qword_2528D0E00);
      result = sub_252786B48(*v5, DeviceType.SingleDeviceType.rawValue.getter, sub_25278A6F8);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_252790D04(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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
    v14 = sub_2528C0F20();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v16, v12, a2, v27);
      result = sub_252785C40(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_2528BECF0();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
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

unint64_t sub_252790EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2D0, &unk_2528CE040);
    v3 = sub_2528C0F20();
    sub_2528BEA50();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_252786CBC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

unint64_t sub_252790FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2C0, &qword_2528C7DC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2C8, &qword_2528C7DC8);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD2C0, &qword_2528C7DC0);
      result = sub_252786DD0(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_2527911C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2B0, &qword_2528C7DB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2B8, &qword_2528C7DB8);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD2B0, &qword_2528C7DB0);
      result = sub_252786CBC(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_2527913AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2A0, &qword_2528C7DA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2A8, &qword_2528C7DA8);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD2A0, &qword_2528C7DA0);
      v11 = *v5;
      result = sub_252786E74(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_2528BF350();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
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

unint64_t sub_252791594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD288, &qword_2528D5560);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD290, &qword_2528C7D98);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD288, &qword_2528D5560);
      result = sub_252786B48(*v5, AttributeKind.rawValue.getter, sub_252787630);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

unint64_t sub_2527917A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD278, &qword_2528E41F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD280, &qword_2528C7D90);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FD278, &qword_2528E41F0);
      result = sub_252786EB8(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

uint64_t sub_25279198C(uint64_t result)
{
  if (result > 11)
  {
    if (result > 30)
    {
      switch(result)
      {
        case 31:
          return 9;
        case 32:
          return 10;
        case 33:
          return 11;
      }
    }

    else
    {
      switch(result)
      {
        case 12:
          return 6;
        case 13:
          return 7;
        case 30:
          return 8;
      }
    }

    return 12;
  }

  if (result <= 2)
  {
    if (result <= 2)
    {
      return result;
    }

    return 12;
  }

  if (result != 3)
  {
    if (result == 10)
    {
      return 4;
    }

    if (result == 11)
    {
      return 5;
    }

    return 12;
  }

  return result;
}

uint64_t sub_252791A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252791AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252791B6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252791BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252791C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252791C80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 160) = a5;
  *(v6 + 168) = a6;
  *(v6 + 51) = a4;
  *(v6 + 144) = a1;
  *(v6 + 152) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  *(v6 + 176) = swift_task_alloc();
  v7 = sub_2528BEEC0();
  *(v6 + 184) = v7;
  *(v6 + 192) = *(v7 - 8);
  *(v6 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v8 = sub_2528C06B0();
  *(v6 + 232) = v8;
  *(v6 + 240) = *(v8 - 8);
  *(v6 + 248) = swift_task_alloc();
  v9 = sub_2528C0530();
  *(v6 + 256) = v9;
  *(v6 + 264) = *(v9 - 8);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  *(v6 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD458, &unk_2528C7FE0);
  *(v6 + 296) = swift_task_alloc();
  v10 = sub_2528BFD00();
  *(v6 + 304) = v10;
  *(v6 + 312) = *(v10 - 8);
  *(v6 + 320) = swift_task_alloc();
  sub_2528BEC40();
  *(v6 + 328) = swift_task_alloc();
  v11 = sub_2528BECF0();
  *(v6 + 336) = v11;
  *(v6 + 344) = *(v11 - 8);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  *(v6 + 376) = swift_task_alloc();
  v12 = sub_2528BF290();
  *(v6 + 384) = v12;
  *(v6 + 392) = *(v12 - 8);
  *(v6 + 400) = swift_task_alloc();
  v13 = type metadata accessor for DeviceEntity(0);
  *(v6 + 408) = v13;
  *(v6 + 416) = *(v13 - 8);
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  *(v6 + 472) = v14;
  *(v6 + 480) = *(v14 - 8);
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  v15 = sub_2528BFB20();
  *(v6 + 504) = v15;
  *(v6 + 512) = *(v15 - 8);
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD460, &qword_2528C7FF0);
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  *(v6 + 560) = swift_task_alloc();
  v16 = sub_2528C0060();
  *(v6 + 568) = v16;
  *(v6 + 576) = *(v16 - 8);
  *(v6 + 584) = swift_task_alloc();
  v17 = sub_2528BEE30();
  *(v6 + 592) = v17;
  *(v6 + 600) = *(v17 - 8);
  *(v6 + 608) = swift_task_alloc();
  *(v6 + 616) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = swift_task_alloc();
  v18 = sub_2528C00D0();
  *(v6 + 672) = v18;
  *(v6 + 680) = *(v18 - 8);
  *(v6 + 688) = swift_task_alloc();
  *(v6 + 696) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  *(v6 + 720) = swift_task_alloc();
  *(v6 + 728) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252792484, 0, 0);
}

uint64_t sub_252792484(uint64_t a1, uint64_t a2)
{
  v180 = v2;
  v3 = *(v2 + 144);
  v4 = *(v3 + 16);
  v167 = v3;
  if (v4)
  {
    v5 = *(v2 + 416);
    v6 = sub_252865A0C(v4, 0);
    v7 = sub_252868A7C(v177, v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, v3);
    v8 = *&v177[0];

    sub_25271A648(v8);
    if (v7 != v4)
    {
LABEL_138:
      __break(1u);
      return MEMORY[0x28216E680]();
    }

    v3 = *(v2 + 144);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *(v2 + 736) = v6;
  v9 = v3 + 64;
  v172 = *(v2 + 416);
  v174 = *(v2 + 696);
  v10 = -1;
  v11 = -1 << *(v3 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v3 + 64);
  v13 = (63 - v11) >> 6;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  v169 = v3;
LABEL_9:
  if (v12)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_116;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
LABEL_14:
      v17 = *(v2 + 728);
      v18 = *(v2 + 720);
      v19 = __clz(__rbit64(v12)) | (v14 << 6);
      sub_25272E7DC(*(v3 + 48) + *(v172 + 72) * v19, v17);
      *(v17 + *(v174 + 48)) = *(*(v3 + 56) + 8 * v19);
      sub_25274AA0C(v17, v18, &qword_27F4FCE48, &unk_2528C61E0);
      v20 = *(v18 + *(v174 + 48));

      sub_25272E840(v18);
      v21 = *(v20 + 16);
      v22 = *(v15 + 2);
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
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
        goto LABEL_134;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v23 > *(v15 + 3) >> 1)
      {
        if (v22 <= v23)
        {
          v25 = v22 + v21;
        }

        else
        {
          v25 = v22;
        }

        v15 = sub_252737E74(isUniquelyReferenced_nonNull_native, v25, 1, v15);
      }

      v12 &= v12 - 1;
      if (*(v20 + 16))
      {
        if ((*(v15 + 3) >> 1) - *(v15 + 2) < v21)
        {
          goto LABEL_133;
        }

        swift_arrayInitWithCopy();

        v3 = v169;
        if (v21)
        {
          v26 = *(v15 + 2);
          v27 = __OFADD__(v26, v21);
          v28 = v26 + v21;
          if (v27)
          {
            goto LABEL_136;
          }

          *(v15 + 2) = v28;
        }
      }

      else
      {

        v3 = v169;
        if (v21)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_9;
    }
  }

  v29 = *(v15 + 2);
  v3 = MEMORY[0x277D84F90];
  if (!v29)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_36:

    v38 = sub_252743F64(v32);
    *(v2 + 744) = v38;

    if (!*(v167 + 16) || !*(v38 + 16))
    {

      type metadata accessor for HomeAppIntentError(0);
      sub_25279F2D0(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v51 = *(v2 + 8);

      return v51();
    }

    v39 = *(v2 + 680);
    v40 = *(v2 + 672);
    v41 = *(v2 + 664);
    v42 = *(v2 + 168);
    *(v2 + 104) = v3;
    sub_25272006C(v42, v41, &qword_27F4FCDB8, &unk_2528C5CC0);
    v43 = *(v39 + 48);
    *(v2 + 752) = v43;
    *(v2 + 760) = (v39 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v43(v41, 1, v40) != 1)
    {
      v53 = *(v2 + 688);
      v54 = *(v2 + 680);
      v55 = *(v2 + 672);
      v56 = *(v2 + 664);
      v57 = *(v54 + 32);
      *(v2 + 768) = v57;
      *(v2 + 776) = (v54 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v57(v53, v56, v55);
      sub_2528BF2F0();
      v58 = swift_task_alloc();
      *(v2 + 784) = v58;
      *v58 = v2;
      v58[1] = sub_252793B24;

      return MEMORY[0x28216E680]();
    }

    sub_2527213D8(*(v2 + 664), &qword_27F4FCDB8, &unk_2528C5CC0);
    *(v2 + 904) = 0;
    v44 = *(v2 + 416);
    v45 = *(v2 + 144);
    *(v2 + 112) = v3;
    v46 = *(v45 + 32);
    *(v2 + 1084) = v46;
    v47 = -1;
    v48 = -1 << v46;
    if (-(-1 << v46) < 64)
    {
      v47 = ~(-1 << -(-1 << v46));
    }

    v49 = v47 & *(v45 + 64);
    *(v2 + 52) = *MEMORY[0x277D15F78];
    *(v2 + 1080) = *MEMORY[0x277D15F70];

    if (v49)
    {
      v50 = 0;
LABEL_52:
      *(v2 + 920) = v50;
      *(v2 + 912) = v49;
      v60 = *(v2 + 720);
      v61 = *(v2 + 712);
      v62 = *(v2 + 704);
      v63 = *(v2 + 696);
      v64 = __clz(__rbit64(v49)) | (v50 << 6);
      v175 = *(v44 + 72);
      sub_25272E7DC(*(v45 + 48) + v175 * v64, v61);
      v65 = *(*(v45 + 56) + 8 * v64);
      v66 = *(v63 + 48);
      sub_25279F090(v61, v62);
      *(v62 + v66) = v65;
      sub_25272006C(v62, v60, &qword_27F4FCE48, &unk_2528C61E0);
      v67 = *(v60 + *(v63 + 48));

      sub_25272E840(v60);
      v161 = v67;
      v173 = *(v67 + 16);
      if (v173)
      {
        v68 = 0;
        v160 = v67 + 32;
        v69 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v68 >= *(v67 + 16))
          {
            goto LABEL_130;
          }

          v70 = *(v2 + 736);
          v71 = *(v70 + 16);
          if (v71)
          {
            v168 = v68;
            v170 = v69;
            v72 = v160 + 40 * v68;
            v74 = *v72;
            v73 = *(v72 + 8);
            v75 = *(v72 + 16);
            v76 = *(v72 + 24);
            v77 = *(v72 + 32);
            v78 = *(*(v2 + 416) + 80);
            v79 = v70 + ((v78 + 32) & ~v78);
            v164 = v75;
            v165 = v73;
            v163 = v76;
            sub_252760C18(v74, v73, v75, v76, v77);
            v162 = v77;
            v80 = v77 >> 1;
            v166 = v74;
            v81 = v74 & 1;
            v82 = MEMORY[0x277D84F90];
            while (1)
            {
              sub_25272E7DC(v79, *(v2 + 432));
              sub_2528BE6B0();
              v83 = *(v2 + 49);
              v84 = v83 >> 14;
              v85 = (v83 >> 8) & 0x3F;
              if (v84 != 1)
              {
                v85 = *(v2 + 49);
              }

              if (!v84)
              {
                v85 = *(v2 + 49);
              }

              if (v80 == 44)
              {
                if (v85 != 2)
                {
LABEL_71:
                  (*(*(v2 + 312) + 56))(*(v2 + 296), 1, 1, *(v2 + 304));
                  goto LABEL_72;
                }

                v86 = *(v2 + 52);
              }

              else
              {
                if (v80 != 36)
                {
                  goto LABEL_71;
                }

                v86 = *(v2 + 1080);
              }

              v88 = *(v2 + 304);
              v87 = *(v2 + 312);
              v89 = *(v2 + 296);
              *v89 = v81;
              (*(v87 + 104))(v89, v86, v88);
              (*(v87 + 56))(v89, 0, 1, v88);
LABEL_72:
              v91 = *(v2 + 304);
              v90 = *(v2 + 312);
              v92 = *(v2 + 296);
              sub_25272E840(*(v2 + 432));
              if ((*(v90 + 48))(v92, 1, v91) == 1)
              {
                sub_2527213D8(*(v2 + 296), &qword_27F4FD458, &unk_2528C7FE0);
              }

              else
              {
                v93 = *(*(v2 + 312) + 32);
                v93(*(v2 + 320), *(v2 + 296), *(v2 + 304));
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v82 = sub_252737FAC(0, *(v82 + 2) + 1, 1, v82);
                }

                v95 = *(v82 + 2);
                v94 = *(v82 + 3);
                if (v95 >= v94 >> 1)
                {
                  v82 = sub_252737FAC((v94 > 1), v95 + 1, 1, v82);
                }

                v97 = *(v2 + 312);
                v96 = *(v2 + 320);
                v98 = *(v2 + 304);
                *(v82 + 2) = v95 + 1;
                v93(&v82[((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v95], v96, v98);
              }

              v79 += v175;
              if (!--v71)
              {
                sub_25272C15C(v166, v165, v164, v163, v162);
                v68 = v168;
                v69 = v170;
                v67 = v161;
                goto LABEL_80;
              }
            }
          }

          v82 = MEMORY[0x277D84F90];
LABEL_80:
          v99 = *(v82 + 2);
          v100 = v69[2];
          v101 = v100 + v99;
          if (__OFADD__(v100, v99))
          {
            goto LABEL_131;
          }

          v102 = swift_isUniquelyReferenced_nonNull_native();
          if ((v102 & 1) != 0 && v101 <= v69[3] >> 1)
          {
            if (!*(v82 + 2))
            {
              goto LABEL_54;
            }
          }

          else
          {
            if (v100 <= v101)
            {
              v103 = v100 + v99;
            }

            else
            {
              v103 = v100;
            }

            v69 = sub_252737FAC(v102, v103, 1, v69);
            if (!*(v82 + 2))
            {
LABEL_54:

              if (v99)
              {
                goto LABEL_132;
              }

              goto LABEL_55;
            }
          }

          if ((v69[3] >> 1) - v69[2] < v99)
          {
            goto LABEL_135;
          }

          swift_arrayInitWithCopy();

          if (v99)
          {
            v104 = v69[2];
            v27 = __OFADD__(v104, v99);
            v105 = v104 + v99;
            if (v27)
            {
              goto LABEL_137;
            }

            v69[2] = v105;
          }

LABEL_55:
          if (++v68 == v173)
          {
            goto LABEL_94;
          }
        }
      }

      v69 = MEMORY[0x277D84F90];
LABEL_94:
      v171 = v69;
      *(v2 + 928) = v69;
      v106 = *(v2 + 736);
      v107 = *(v106 + 16);
      v108 = MEMORY[0x277D84F90];
      if (v107)
      {
        v109 = *(v2 + 416);
        *(v2 + 120) = MEMORY[0x277D84F90];
        sub_25282EFDC(0, v107, 0);
        v108 = *(v2 + 120);
        v110 = v106 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
        while (1)
        {
          v112 = *(v2 + 336);
          v111 = *(v2 + 344);
          v113 = *(v2 + 288);
          sub_25272E7DC(v110, *(v2 + 424));
          sub_2528BE6B0();
          sub_2528BECA0();

          if ((*(v111 + 48))(v113, 1, v112) == 1)
          {
            break;
          }

          v114 = *(v2 + 424);
          v115 = *(*(v2 + 344) + 32);
          v115(*(v2 + 360), *(v2 + 288), *(v2 + 336));
          sub_25272E840(v114);
          *(v2 + 120) = v108;
          v117 = *(v108 + 16);
          v116 = *(v108 + 24);
          if (v117 >= v116 >> 1)
          {
            sub_25282EFDC((v116 > 1), v117 + 1, 1);
            v108 = *(v2 + 120);
          }

          v118 = *(v2 + 360);
          v119 = *(v2 + 336);
          v120 = *(v2 + 344);
          *(v108 + 16) = v117 + 1;
          v115(v108 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v117, v118, v119);
          v110 += v175;
          --v107;
          v67 = v161;
          if (!v107)
          {
            goto LABEL_100;
          }
        }

        sub_2527213D8(*(v2 + 288), &qword_27F4FC628, &qword_2528C4750);
        *&v177[0] = 0;
        *(&v177[0] + 1) = 0xE000000000000000;
        sub_2528C0E70();
        v129 = *(&v177[0] + 1);
        *(v2 + 72) = *&v177[0];
        *(v2 + 80) = v129;
        MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
        sub_2528C0ED0();
        MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
        sub_2528BE6B0();
        MEMORY[0x2530A80B0](*(v2 + 88), *(v2 + 96));

        MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
        return sub_2528C0EE0();
      }

LABEL_100:
      *(v2 + 936) = v108;
      if (!v173)
      {
        v123 = MEMORY[0x277D84F90];
LABEL_111:
        *(v2 + 944) = v123;
        v130 = *(v2 + 51);
        v132 = *(v2 + 152);
        v131 = *(v2 + 160);

        v133 = swift_task_alloc();
        *(v2 + 952) = v133;
        *(v133 + 16) = v108;
        *(v133 + 24) = v131;
        *(v133 + 32) = v132;
        *(v133 + 40) = v130 & 1;
        v134 = swift_task_alloc();
        *(v2 + 960) = v134;
        *v134 = v2;
        v134[1] = sub_252797060;
        v135 = *(v2 + 736);
        v136 = *(v2 + 160);

        return sub_252777E20(v171, v136, v123, v135, &unk_2528C8000, v133);
      }

      v121 = 0;
      v122 = (v67 + 64);
      v123 = MEMORY[0x277D84F90];
      while (v121 < *(v67 + 16))
      {
        v124 = *v122;
        v125 = *(v122 - 1);
        *(v2 + 16) = *(v122 - 2);
        *(v2 + 32) = v125;
        *(v2 + 48) = v124;
        sub_252870158(v177);
        v126 = v177[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_252737FD4(0, *(v123 + 2) + 1, 1, v123);
        }

        v128 = *(v123 + 2);
        v127 = *(v123 + 3);
        if (v128 >= v127 >> 1)
        {
          v123 = sub_252737FD4((v127 > 1), v128 + 1, 1, v123);
        }

        ++v121;
        *(v123 + 2) = v128 + 1;
        v123[v128 + 32] = v126;
        v122 += 40;
        if (v173 == v121)
        {
          goto LABEL_111;
        }
      }

LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v59 = 0;
    while (((63 - v48) >> 6) - 1 != v59)
    {
      v50 = v59 + 1;
      v49 = *(v45 + 8 * v59++ + 72);
      if (v49)
      {
        goto LABEL_52;
      }
    }

    v137 = *(v2 + 280);
    v138 = *(v2 + 160);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD468, &qword_2528C8008);
    v139 = swift_allocObject();
    *(v139 + 16) = xmmword_2528C3910;
    sub_2528C06A0();
    *(v2 + 128) = v139;
    sub_25279F2D0(&qword_27F4FD470, MEMORY[0x277D16C90], MEMORY[0x277D16C98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD478, &qword_2528C8010);
    sub_25279F1C0();
    sub_2528C0DF0();
    sub_2528C0500();
    v140 = swift_task_alloc();
    *(v140 + 16) = v138;
    *(v140 + 24) = v137;
    sub_2527E4E5C(sub_25279F224, v140, v45);
LABEL_116:

    v141 = sub_2528C0520();
    v30 = *(v2 + 744);
    if ((v141 & 1) == 0)
    {
      goto LABEL_121;
    }

    v142 = *(v2 + 280);
    v143 = *(v2 + 256);
    v144 = *(v2 + 264);

    v145 = *(v2 + 112);
    v179 = v3;
    sub_252735C2C(v145);
    sub_252735C2C(*(v2 + 104));
    v146 = sub_25280D9C4(v179);

    (*(v144 + 8))(v142, v143);

    v147 = *(v2 + 8);

    return v147(v146);
  }

  v30 = 0;
  v31 = v15 + 64;
  v32 = MEMORY[0x277D84F90];
  while (v30 < *(v15 + 2))
  {
    v33 = *v31;
    v34 = *(v31 - 1);
    v177[0] = *(v31 - 2);
    v177[1] = v34;
    v178 = v33;
    sub_252870158(&v176);
    v35 = v176;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_252737FD4(0, *(v32 + 2) + 1, 1, v32);
    }

    v37 = *(v32 + 2);
    v36 = *(v32 + 3);
    if (v37 >= v36 >> 1)
    {
      v32 = sub_252737FD4((v36 > 1), v37 + 1, 1, v32);
    }

    ++v30;
    *(v32 + 2) = v37 + 1;
    v32[v37 + 32] = v35;
    v31 += 40;
    if (v29 == v30)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_121:
  v148 = *(v30 + 16);
  if (v148)
  {
    v149 = sub_252865914(*(v30 + 16), 0);
    v150 = sub_252868980(v177, v149 + 32, v148, v30);
    sub_25271A648(*&v177[0]);
    if (v150 != v148)
    {
      __break(1u);
      goto LABEL_124;
    }
  }

  else
  {
LABEL_124:

    v149 = MEMORY[0x277D84F90];
  }

  *(v2 + 976) = v149;
  v151 = *(v2 + 272);
  v152 = *(v2 + 280);
  v153 = *(v2 + 256);
  v154 = *(v2 + 264);
  v155 = *(v2 + 224);
  v156 = sub_2528BF400();
  *(v2 + 984) = v156;
  v157 = *(v156 - 8);
  v158 = *(v157 + 56);
  *(v2 + 992) = v158;
  *(v2 + 1000) = (v157 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v158(v155, 1, 1, v156);
  (*(v154 + 16))(v151, v152, v153);
  *(v2 + 1008) = sub_2528BEFC0();
  v159 = swift_task_alloc();
  *(v2 + 1016) = v159;
  *v159 = v2;
  v159[1] = sub_25279831C;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_252793B24(uint64_t a1)
{
  v2 = *(*v1 + 616);
  v3 = *(*v1 + 600);
  v4 = *(*v1 + 592);
  *(*v1 + 792) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_252793C84, 0, 0);
}

uint64_t sub_252793C84()
{
  v130 = v0;
  if (*(v0 + 792))
  {
    v1 = *(v0 + 736);
    v2 = *(v0 + 688);
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v0 + 800) = sub_2527A2F84(sub_252756820, v3, v1);
    *(v0 + 808) = 0;

    *(v0 + 816) = sub_2528BEFC0();
    sub_2528C0C20();
    *(v0 + 824) = sub_2528C0C10();
    v5 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_252794ED0, v5, v4);
  }

  (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  *(v0 + 904) = 0;
  v6 = *(v0 + 416);
  v7 = *(v0 + 144);
  v8 = MEMORY[0x277D84F90];
  *(v0 + 112) = MEMORY[0x277D84F90];
  v9 = *(v7 + 32);
  *(v0 + 1084) = v9;
  v10 = -1;
  v11 = -1 << v9;
  if (-(-1 << v9) < 64)
  {
    v10 = ~(-1 << -(-1 << v9));
  }

  v12 = v10 & *(v7 + 64);
  *(v0 + 52) = *MEMORY[0x277D15F78];
  *(v0 + 1080) = *MEMORY[0x277D15F70];

  if (!v12)
  {
    v14 = 0;
    while (((63 - v11) >> 6) - 1 != v14)
    {
      v13 = v14 + 1;
      v12 = *(v7 + 8 * v14++ + 72);
      if (v12)
      {
        goto LABEL_12;
      }
    }

    v92 = *(v0 + 280);
    v93 = *(v0 + 160);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD468, &qword_2528C8008);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_2528C3910;
    sub_2528C06A0();
    *(v0 + 128) = v94;
    sub_25279F2D0(&qword_27F4FD470, MEMORY[0x277D16C90], MEMORY[0x277D16C98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD478, &qword_2528C8010);
    sub_25279F1C0();
    sub_2528C0DF0();
    sub_2528C0500();
    v95 = swift_task_alloc();
    *(v95 + 16) = v93;
    *(v95 + 24) = v92;
    sub_2527E4E5C(sub_25279F224, v95, v7);

    v96 = sub_2528C0520();
    v97 = *(v0 + 744);
    if (v96)
    {

      v98 = *(v0 + 280);
      v99 = *(v0 + 256);
      v100 = *(v0 + 264);

      v101 = *(v0 + 112);
      v129[5] = v8;
      sub_252735C2C(v101);
      sub_252735C2C(*(v0 + 104));
      v102 = sub_25280D9C4(v8);

      (*(v100 + 8))(v98, v99);

      v103 = *(v0 + 8);

      return v103(v102);
    }

    v104 = *(v97 + 16);
    if (v104)
    {
      v105 = sub_252865914(*(v97 + 16), 0);
      v106 = sub_252868980(v129, v105 + 32, v104, v97);
      sub_25271A648(v129[0]);
      if (v106 == v104)
      {
        goto LABEL_82;
      }

      __break(1u);
    }

    v105 = MEMORY[0x277D84F90];
LABEL_82:
    *(v0 + 976) = v105;
    v107 = *(v0 + 272);
    v108 = *(v0 + 280);
    v109 = *(v0 + 256);
    v110 = *(v0 + 264);
    v111 = *(v0 + 224);
    v112 = sub_2528BF400();
    *(v0 + 984) = v112;
    v113 = *(v112 - 8);
    v114 = *(v113 + 56);
    *(v0 + 992) = v114;
    *(v0 + 1000) = (v113 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v114(v111, 1, 1, v112);
    (*(v110 + 16))(v107, v108, v109);
    *(v0 + 1008) = sub_2528BEFC0();
    v115 = swift_task_alloc();
    *(v0 + 1016) = v115;
    *v115 = v0;
    v115[1] = sub_25279831C;

    return MEMORY[0x28216EA40]();
  }

  v13 = 0;
LABEL_12:
  *(v0 + 920) = v13;
  *(v0 + 912) = v12;
  v15 = *(v0 + 720);
  v16 = *(v0 + 712);
  v17 = *(v0 + 704);
  v18 = *(v0 + 696);
  v19 = __clz(__rbit64(v12)) | (v13 << 6);
  v128 = *(v6 + 72);
  sub_25272E7DC(*(v7 + 48) + v128 * v19, v16);
  v20 = *(*(v7 + 56) + 8 * v19);
  v21 = *(v18 + 48);
  sub_25279F090(v16, v17);
  *(v17 + v21) = v20;
  sub_25272006C(v17, v15, &qword_27F4FCE48, &unk_2528C61E0);
  v22 = *(v15 + *(v18 + 48));

  sub_25272E840(v15);
  v118 = v22;
  v127 = *(v22 + 16);
  if (v127)
  {
    v23 = 0;
    v117 = v22 + 32;
    v24 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v23 >= *(v22 + 16))
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        return MEMORY[0x28216EA40]();
      }

      v25 = *(v0 + 736);
      v26 = *(v25 + 16);
      if (v26)
      {
        v124 = v23;
        v125 = v24;
        v27 = v117 + 40 * v23;
        v29 = *v27;
        v28 = *(v27 + 8);
        v30 = *(v27 + 16);
        v31 = *(v27 + 24);
        v32 = *(v27 + 32);
        v33 = *(*(v0 + 416) + 80);
        v34 = v25 + ((v33 + 32) & ~v33);
        v121 = v30;
        v122 = v28;
        v120 = v31;
        sub_252760C18(v29, v28, v30, v31, v32);
        v119 = v32;
        v35 = v32 >> 1;
        v123 = v29;
        v36 = v29 & 1;
        v37 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_25272E7DC(v34, *(v0 + 432));
          sub_2528BE6B0();
          v38 = *(v0 + 49);
          v39 = v38 >> 14;
          v40 = (v38 >> 8) & 0x3F;
          if (v39 != 1)
          {
            v40 = *(v0 + 49);
          }

          if (!v39)
          {
            v40 = *(v0 + 49);
          }

          if (v35 == 44)
          {
            if (v40 != 2)
            {
LABEL_31:
              (*(*(v0 + 312) + 56))(*(v0 + 296), 1, 1, *(v0 + 304));
              goto LABEL_32;
            }

            v41 = *(v0 + 52);
          }

          else
          {
            if (v35 != 36)
            {
              goto LABEL_31;
            }

            v41 = *(v0 + 1080);
          }

          v43 = *(v0 + 304);
          v42 = *(v0 + 312);
          v44 = *(v0 + 296);
          *v44 = v36;
          (*(v42 + 104))(v44, v41, v43);
          (*(v42 + 56))(v44, 0, 1, v43);
LABEL_32:
          v46 = *(v0 + 304);
          v45 = *(v0 + 312);
          v47 = *(v0 + 296);
          sub_25272E840(*(v0 + 432));
          if ((*(v45 + 48))(v47, 1, v46) == 1)
          {
            sub_2527213D8(*(v0 + 296), &qword_27F4FD458, &unk_2528C7FE0);
          }

          else
          {
            v48 = *(*(v0 + 312) + 32);
            v48(*(v0 + 320), *(v0 + 296), *(v0 + 304));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_252737FAC(0, *(v37 + 2) + 1, 1, v37);
            }

            v50 = *(v37 + 2);
            v49 = *(v37 + 3);
            if (v50 >= v49 >> 1)
            {
              v37 = sub_252737FAC((v49 > 1), v50 + 1, 1, v37);
            }

            v52 = *(v0 + 312);
            v51 = *(v0 + 320);
            v53 = *(v0 + 304);
            *(v37 + 2) = v50 + 1;
            v48(&v37[((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v50], v51, v53);
          }

          v34 += v128;
          if (!--v26)
          {
            sub_25272C15C(v123, v122, v121, v120, v119);
            v23 = v124;
            v24 = v125;
            v22 = v118;
            goto LABEL_40;
          }
        }
      }

      v37 = MEMORY[0x277D84F90];
LABEL_40:
      v54 = *(v37 + 2);
      v55 = v24[2];
      v56 = v55 + v54;
      if (__OFADD__(v55, v54))
      {
        goto LABEL_86;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v56 <= v24[3] >> 1)
      {
        if (!*(v37 + 2))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v55 <= v56)
        {
          v58 = v55 + v54;
        }

        else
        {
          v58 = v55;
        }

        v24 = sub_252737FAC(isUniquelyReferenced_nonNull_native, v58, 1, v24);
        if (!*(v37 + 2))
        {
LABEL_14:

          if (v54)
          {
            goto LABEL_87;
          }

          goto LABEL_15;
        }
      }

      if ((v24[3] >> 1) - v24[2] < v54)
      {
        goto LABEL_89;
      }

      swift_arrayInitWithCopy();

      if (v54)
      {
        v59 = v24[2];
        v60 = __OFADD__(v59, v54);
        v61 = v59 + v54;
        if (v60)
        {
          goto LABEL_90;
        }

        v24[2] = v61;
      }

LABEL_15:
      if (++v23 == v127)
      {
        goto LABEL_54;
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_54:
  v126 = v24;
  *(v0 + 928) = v24;
  v62 = *(v0 + 736);
  v63 = *(v62 + 16);
  v64 = MEMORY[0x277D84F90];
  if (v63)
  {
    v65 = *(v0 + 416);
    *(v0 + 120) = MEMORY[0x277D84F90];
    sub_25282EFDC(0, v63, 0);
    v64 = *(v0 + 120);
    v66 = v62 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    while (1)
    {
      v68 = *(v0 + 336);
      v67 = *(v0 + 344);
      v69 = *(v0 + 288);
      sub_25272E7DC(v66, *(v0 + 424));
      sub_2528BE6B0();
      sub_2528BECA0();

      if ((*(v67 + 48))(v69, 1, v68) == 1)
      {
        break;
      }

      v70 = *(v0 + 424);
      v71 = *(*(v0 + 344) + 32);
      v71(*(v0 + 360), *(v0 + 288), *(v0 + 336));
      sub_25272E840(v70);
      *(v0 + 120) = v64;
      v73 = *(v64 + 16);
      v72 = *(v64 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_25282EFDC((v72 > 1), v73 + 1, 1);
        v64 = *(v0 + 120);
      }

      v74 = *(v0 + 360);
      v75 = *(v0 + 336);
      v76 = *(v0 + 344);
      *(v64 + 16) = v73 + 1;
      v71(v64 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v73, v74, v75);
      v66 += v128;
      --v63;
      v22 = v118;
      if (!v63)
      {
        goto LABEL_60;
      }
    }

    sub_2527213D8(*(v0 + 288), &qword_27F4FC628, &qword_2528C4750);
    v129[0] = 0;
    v129[1] = 0xE000000000000000;
    sub_2528C0E70();
    *(v0 + 72) = 0;
    *(v0 + 80) = 0xE000000000000000;
    MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
    sub_2528C0ED0();
    MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
    sub_2528BE6B0();
    MEMORY[0x2530A80B0](*(v0 + 88), *(v0 + 96));

    MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
    return sub_2528C0EE0();
  }

  else
  {
LABEL_60:
    *(v0 + 936) = v64;
    if (v127)
    {
      v77 = 0;
      v78 = (v22 + 64);
      v79 = MEMORY[0x277D84F90];
      while (v77 < *(v22 + 16))
      {
        v80 = *v78;
        v81 = *(v78 - 1);
        *(v0 + 16) = *(v78 - 2);
        *(v0 + 32) = v81;
        *(v0 + 48) = v80;
        sub_252870158(v129);
        v82 = v129[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_252737FD4(0, *(v79 + 2) + 1, 1, v79);
        }

        v84 = *(v79 + 2);
        v83 = *(v79 + 3);
        if (v84 >= v83 >> 1)
        {
          v79 = sub_252737FD4((v83 > 1), v84 + 1, 1, v79);
        }

        ++v77;
        *(v79 + 2) = v84 + 1;
        v79[v84 + 32] = v82;
        v78 += 40;
        if (v127 == v77)
        {
          goto LABEL_71;
        }
      }

      goto LABEL_88;
    }

    v79 = MEMORY[0x277D84F90];
LABEL_71:
    *(v0 + 944) = v79;
    v85 = *(v0 + 51);
    v87 = *(v0 + 152);
    v86 = *(v0 + 160);

    v88 = swift_task_alloc();
    *(v0 + 952) = v88;
    *(v88 + 16) = v64;
    *(v88 + 24) = v86;
    *(v88 + 32) = v87;
    *(v88 + 40) = v85 & 1;
    v89 = swift_task_alloc();
    *(v0 + 960) = v89;
    *v89 = v0;
    v89[1] = sub_252797060;
    v90 = *(v0 + 736);
    v91 = *(v0 + 160);

    return sub_252777E20(v126, v91, v79, v90, &unk_2528C8000, v88);
  }
}

uint64_t sub_252794ED0()
{

  *(v0 + 832) = sub_2528BEF70();

  return MEMORY[0x2822009F8](sub_252794F44, 0, 0);
}

uint64_t sub_252794F44()
{
  v1 = v0[99];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = sub_252743EF0(v0[100]);

  *v2 = v6;
  v2[1] = v1;
  (*(v3 + 104))(v2, *MEMORY[0x277D16508], v4);
  v7 = sub_2528C00B0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[105] = v9;
  *v9 = v0;
  v9[1] = sub_2527950A4;
  v10 = v0[82];
  v11 = v0[73];
  v12 = v0[70];

  return MEMORY[0x282170970](v10, v11, v8, v12);
}

uint64_t sub_2527950A4()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 568);
  v4 = *(*v0 + 560);

  sub_2527213D8(v4, &qword_27F4FC478, &unk_2528C3F70);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_25279524C, 0, 0);
}

uint64_t sub_25279524C()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 656);
  v5 = *(v0 + 51);
  v6 = *(v0 + 152);
  v7 = *(v0 + 144);
  v8 = *(v2 + 56);
  *(v0 + 848) = v8;
  *(v0 + 856) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v4, 0, 1, v3);
  v9 = sub_25278D994(MEMORY[0x277D84F90]);
  v10 = swift_task_alloc();
  *(v10 + 16) = v4;
  sub_2527E4B84(v9, sub_25279F240, v10, v7);
  v12 = v11;
  *(v0 + 864) = v11;

  v13 = sub_25279C7AC(v12);
  *(v0 + 872) = v13;
  if (v5)
  {
    v6 = 60.0;
  }

  v14 = swift_task_alloc();
  *(v0 + 880) = v14;
  *v14 = v0;
  v14[1] = sub_2527953CC;
  v15 = *(v0 + 648);

  return sub_2528411C0(v15, v13, v1, v6);
}

uint64_t sub_2527953CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 888) = a1;
  *(v3 + 896) = v1;

  if (v1)
  {

    v4 = sub_252799238;
  }

  else
  {
    v4 = sub_252795538;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252795538()
{
  v236 = v0;
  if (qword_27F4FBB40 != -1)
  {
    goto LABEL_130;
  }

  while (1)
  {
    v1 = *(v0 + 888);
    v2 = *(v0 + 864);
    v3 = *(v0 + 680);
    v4 = *(v0 + 512);
    v204 = *(v0 + 480);
    v217 = *(v0 + 472);
    v5 = *(v0 + 392);
    v6 = *(v0 + 344);
    v7 = sub_2528C08B0();
    __swift_project_value_buffer(v7, qword_27F5025C8);
    v224 = v1;
    sub_25279B4A8(v1, v8);
    v9 = 0;
    v10 = v2 + 64;
    v11 = -1;
    v206 = v2;
    v12 = -1 << *(v2 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v2 + 64);
    v14 = (63 - v12) >> 6;
    v229 = (v4 + 32);
    v210 = (v5 + 8);
    v201 = (v6 + 8);
    v202 = (v3 + 8);
    v200 = (v4 + 48);
    v222 = (v4 + 8);
    v205 = v4;
    v199 = (v4 + 56);
    v15 = &qword_27F4FD488;
    v203 = *(v0 + 896);
    v212 = v14;
    v214 = v2 + 64;
    while (1)
    {
      if (v13)
      {
        v23 = v9;
        goto LABEL_18;
      }

      v24 = v14 <= v9 + 1 ? v9 + 1 : v14;
      v25 = v24 - 1;
      do
      {
        v23 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          goto LABEL_113;
        }

        if (v23 >= v14)
        {
          v77 = *(v0 + 544);
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD488, &qword_2528C8018);
          (*(*(v78 - 8) + 56))(v77, 1, 1, v78);
          v226 = 0;
          v9 = v25;
          goto LABEL_19;
        }

        v13 = *(v10 + 8 * v23);
        ++v9;
      }

      while (!v13);
      v9 = v23;
LABEL_18:
      v26 = *(v0 + 544);
      v27 = *(v0 + 536);
      v29 = *(v0 + 496);
      v28 = *(v0 + 504);
      v226 = (v13 - 1) & v13;
      v30 = __clz(__rbit64(v13)) | (v23 << 6);
      (*(v205 + 16))(v27, *(v206 + 48) + *(v205 + 72) * v30, v28);
      sub_25272006C(*(v206 + 56) + *(v204 + 72) * v30, v29, &qword_27F4FD1F8, &unk_2528CDFF0);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD488, &qword_2528C8018);
      v32 = *(v31 + 48);
      (*(v205 + 32))(v26, v27, v28);
      sub_25274AA0C(v29, v26 + v32, &qword_27F4FD1F8, &unk_2528CDFF0);
      (*(*(v31 - 8) + 56))(v26, 0, 1, v31);
LABEL_19:
      v33 = *(v0 + 552);
      sub_25274AA0C(*(v0 + 544), v33, &qword_27F4FD460, &qword_2528C7FF0);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD488, &qword_2528C8018);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v0 + 552);
      v36 = *(v0 + 528);
      v37 = *(v0 + 504);
      v38 = *(v0 + 488);
      v39 = *(v0 + 464);
      v40 = (v35 + *(v34 + 48));
      v41 = *v40;
      v42 = *(v217 + 48);
      sub_25279F090(v40 + v42, v38 + v42);
      v219 = *v229;
      (*v229)(v36, v35, v37);
      sub_25279F090(v38 + v42, v39);
      v43 = *(v41 + 16);
      v44 = MEMORY[0x277D84F90];
      if (v43)
      {
        v233 = MEMORY[0x277D84F90];
        sub_25282F064(0, v43, 0);
        v45 = v233;
        v46 = 64;
        do
        {
          v47 = byte_2528C807E[*(v41 + v46) >> 1];
          v233 = v45;
          v49 = *(v45 + 16);
          v48 = *(v45 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_25282F064((v48 > 1), v49 + 1, 1);
            v45 = v233;
          }

          *(v45 + 16) = v49 + 1;
          *(v45 + v49 + 32) = v47;
          v46 += 40;
          --v43;
        }

        while (v43);

        v44 = MEMORY[0x277D84F90];
      }

      else
      {

        v45 = v44;
      }

      v50 = *(v0 + 752);
      v51 = *(v0 + 672);
      v52 = *(v0 + 632);
      sub_25272006C(*(v0 + 648), v52, &qword_27F4FCDB8, &unk_2528C5CC0);
      if (v50(v52, 1, v51) == 1)
      {
        v53 = *(v0 + 752);
        v54 = *(v0 + 672);
        v55 = *(v0 + 632);
        sub_25272006C(*(v0 + 656), *(v0 + 640), &qword_27F4FCDB8, &unk_2528C5CC0);
        if (v53(v55, 1, v54) != 1)
        {
          sub_2527213D8(*(v0 + 632), &qword_27F4FCDB8, &unk_2528C5CC0);
        }
      }

      else
      {
        v56 = *(v0 + 848);
        v57 = *(v0 + 672);
        v58 = *(v0 + 640);
        (*(v0 + 768))(v58, *(v0 + 632), v57);
        v56(v58, 0, 1, v57);
      }

      v59 = *(v0 + 400);
      v60 = *(v0 + 384);
      sub_2528BFAB0();
      v61 = sub_2528BF0E0();
      (*v210)(v59, v60);
      if (*(v224 + 16) && (v62 = sub_252791C7C(v61), (v63 & 1) != 0))
      {
        v231 = *(*(v224 + 56) + 8 * v62);
      }

      else
      {
        v231 = 0;
      }

      v64 = *(v0 + 752);
      v65 = *(v0 + 672);
      v66 = *(v0 + 624);
      sub_25272006C(*(v0 + 640), v66, &qword_27F4FCDB8, &unk_2528C5CC0);
      if (v64(v66, 1, v65) == 1)
      {
        v16 = *(v0 + 504);
        v17 = *(v0 + 376);
        sub_2527213D8(*(v0 + 624), &qword_27F4FCDB8, &unk_2528C5CC0);
        (*v199)(v17, 1, 1, v16);
LABEL_6:
        sub_2527213D8(*(v0 + 376), &qword_27F4FCEF0, &unk_2528C6AB0);
        v18 = v44;
        goto LABEL_7;
      }

      v67 = *(v0 + 672);
      v68 = *(v0 + 624);
      v207 = *(v0 + 504);
      v70 = *(v0 + 368);
      v69 = *(v0 + 376);
      v71 = *(v0 + 336);
      sub_252819FA8(v70);
      sub_2528C0080();
      (*v201)(v70, v71);
      (*v202)(v68, v67);
      if ((*v200)(v69, 1, v207) == 1)
      {
        goto LABEL_6;
      }

      v72 = *(v0 + 520);
      v208 = *(v0 + 504);
      v73 = *(v0 + 456);
      v74 = *(v0 + 464);
      v75 = *(v0 + 448);
      v198 = *(v0 + 440);
      (v219)(v72, *(v0 + 376));
      v76 = swift_task_alloc();
      *(v76 + 16) = v72;
      *(v76 + 24) = v231;
      v220 = sub_2528072E8(sub_25279F25C, v76, v45);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC758, &unk_2528C8020);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_2528C3910;
      sub_25272E7DC(v74, v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
      sub_2528BEC20();
      sub_25279F2D0(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
      *(v18 + 32) = sub_2528BE6F0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD490, &unk_2528C8030);
      sub_2528BEC20();
      sub_25279F27C();
      *(v18 + 40) = sub_2528BE6F0();
      sub_25272E7DC(v73, v75);
      sub_25272E7DC(v75, v198);
      sub_2528BE6C0();
      sub_25272E840(v75);
      *(v0 + 136) = v220;
      sub_2528BE6C0();
      sub_25272E840(v73);
      (*v222)(v72, v208);
LABEL_7:
      v15 = &qword_27F4FD488;
      v19 = *(v0 + 640);
      v20 = *(v0 + 528);
      v21 = *(v0 + 504);
      v22 = *(v0 + 464);

      sub_2527213D8(v19, &qword_27F4FCDB8, &unk_2528C5CC0);
      sub_252735C2C(v18);
      sub_25272E840(v22);
      (*v222)(v20, v21);
      v14 = v212;
      v10 = v214;
      v13 = v226;
    }

    v79 = *(v0 + 792);
    v80 = *(v0 + 688);
    v81 = *(v0 + 672);
    v82 = *(v0 + 656);
    sub_2527213D8(*(v0 + 648), &qword_27F4FCDB8, &unk_2528C5CC0);

    (*v202)(v80, v81);
    sub_2527213D8(v82, &qword_27F4FCDB8, &unk_2528C5CC0);
    *(v0 + 904) = v203;
    v83 = *(v0 + 416);
    v84 = *(v0 + 144);
    v15 = MEMORY[0x277D84F90];
    *(v0 + 112) = MEMORY[0x277D84F90];
    v85 = *(v84 + 32);
    *(v0 + 1084) = v85;
    v86 = -1;
    v87 = -1 << v85;
    if (-(-1 << v85) < 64)
    {
      v86 = ~(-1 << -(-1 << v85));
    }

    v88 = v86 & *(v84 + 64);
    *(v0 + 52) = *MEMORY[0x277D15F78];
    *(v0 + 1080) = *MEMORY[0x277D15F70];

    if (!v88)
    {
      v90 = 0;
      while (((63 - v87) >> 6) - 1 != v90)
      {
        v89 = v90 + 1;
        v88 = *(v84 + 8 * v90++ + 72);
        if (v88)
        {
          goto LABEL_46;
        }
      }

      v170 = *(v0 + 280);
      v171 = *(v0 + 160);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD468, &qword_2528C8008);
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_2528C3910;
      sub_2528C06A0();
      *(v0 + 128) = v172;
      sub_25279F2D0(&qword_27F4FD470, MEMORY[0x277D16C90], MEMORY[0x277D16C98]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD478, &qword_2528C8010);
      sub_25279F1C0();
      sub_2528C0DF0();
      sub_2528C0500();
      v173 = swift_task_alloc();
      *(v173 + 16) = v171;
      *(v173 + 24) = v170;
      sub_2527E4E5C(sub_25279F224, v173, v84);
      if (v203)
      {
        v174 = *(v0 + 280);
        v175 = *(v0 + 256);
        v176 = *(v0 + 264);

        (*(v176 + 8))(v174, v175);

        v177 = *(v0 + 8);

        return v177();
      }

LABEL_113:

      v178 = sub_2528C0520();
      v179 = *(v0 + 744);
      if (v178)
      {

        v180 = v15;
        v181 = *(v0 + 280);
        v182 = *(v0 + 256);
        v183 = *(v0 + 264);

        v184 = *(v0 + 112);
        v235 = v180;
        sub_252735C2C(v184);
        sub_252735C2C(*(v0 + 104));
        v216 = sub_25280D9C4(v235);

        (*(v183 + 8))(v181, v182);

        v185 = *(v0 + 8);

        return v185(v216);
      }

      v186 = *(v179 + 16);
      if (v186)
      {
        v187 = sub_252865914(*(v179 + 16), 0);
        v188 = sub_252868980(&v233, v187 + 32, v186, v179);
        sub_25271A648(v233);
        if (v188 == v186)
        {
LABEL_121:
          *(v0 + 976) = v187;
          v189 = *(v0 + 272);
          v190 = *(v0 + 280);
          v191 = *(v0 + 256);
          v192 = *(v0 + 264);
          v193 = *(v0 + 224);
          v194 = sub_2528BF400();
          *(v0 + 984) = v194;
          v195 = *(v194 - 8);
          v196 = *(v195 + 56);
          *(v0 + 992) = v196;
          *(v0 + 1000) = (v195 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
          v196(v193, 1, 1, v194);
          (*(v192 + 16))(v189, v190, v191);
          *(v0 + 1008) = sub_2528BEFC0();
          v197 = swift_task_alloc();
          *(v0 + 1016) = v197;
          *v197 = v0;
          v197[1] = sub_25279831C;

          return MEMORY[0x28216EA40]();
        }

        __break(1u);
      }

      v187 = MEMORY[0x277D84F90];
      goto LABEL_121;
    }

    v89 = 0;
LABEL_46:
    *(v0 + 920) = v89;
    *(v0 + 912) = v88;
    v91 = *(v0 + 720);
    v92 = *(v0 + 712);
    v93 = *(v0 + 704);
    v94 = *(v0 + 696);
    v95 = __clz(__rbit64(v88)) | (v89 << 6);
    v232 = *(v83 + 72);
    sub_25272E7DC(*(v84 + 48) + v232 * v95, v92);
    v96 = *(*(v84 + 56) + 8 * v95);
    v97 = *(v94 + 48);
    sub_25279F090(v92, v93);
    *(v93 + v97) = v96;
    sub_25272006C(v93, v91, &qword_27F4FCE48, &unk_2528C61E0);
    v98 = *(v91 + *(v94 + 48));

    sub_25272E840(v91);
    v211 = v98;
    v230 = *(v98 + 16);
    if (v230)
    {
      v99 = 0;
      v209 = v98 + 32;
      v100 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v99 >= *(v98 + 16))
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        v101 = *(v0 + 736);
        v102 = *(v101 + 16);
        if (v102)
        {
          v225 = v99;
          v227 = v100;
          v103 = v209 + 40 * v99;
          v105 = *v103;
          v104 = *(v103 + 8);
          v106 = *(v103 + 16);
          v107 = *(v103 + 24);
          v108 = *(v103 + 32);
          v109 = *(*(v0 + 416) + 80);
          v110 = v101 + ((v109 + 32) & ~v109);
          v218 = v106;
          v221 = v104;
          v215 = v107;
          sub_252760C18(v105, v104, v106, v107, v108);
          v213 = v108;
          v111 = v108 >> 1;
          v223 = v105;
          v112 = v105 & 1;
          v113 = MEMORY[0x277D84F90];
          while (1)
          {
            sub_25272E7DC(v110, *(v0 + 432));
            sub_2528BE6B0();
            v114 = *(v0 + 49);
            v115 = v114 >> 14;
            v116 = (v114 >> 8) & 0x3F;
            if (v115 != 1)
            {
              v116 = *(v0 + 49);
            }

            if (!v115)
            {
              v116 = *(v0 + 49);
            }

            if (v111 == 44)
            {
              if (v116 != 2)
              {
LABEL_65:
                (*(*(v0 + 312) + 56))(*(v0 + 296), 1, 1, *(v0 + 304));
                goto LABEL_66;
              }

              v117 = *(v0 + 52);
            }

            else
            {
              if (v111 != 36)
              {
                goto LABEL_65;
              }

              v117 = *(v0 + 1080);
            }

            v119 = *(v0 + 304);
            v118 = *(v0 + 312);
            v120 = *(v0 + 296);
            *v120 = v112;
            (*(v118 + 104))(v120, v117, v119);
            (*(v118 + 56))(v120, 0, 1, v119);
LABEL_66:
            v122 = *(v0 + 304);
            v121 = *(v0 + 312);
            v123 = *(v0 + 296);
            sub_25272E840(*(v0 + 432));
            if ((*(v121 + 48))(v123, 1, v122) == 1)
            {
              sub_2527213D8(*(v0 + 296), &qword_27F4FD458, &unk_2528C7FE0);
            }

            else
            {
              v124 = *(*(v0 + 312) + 32);
              v124(*(v0 + 320), *(v0 + 296), *(v0 + 304));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v113 = sub_252737FAC(0, *(v113 + 2) + 1, 1, v113);
              }

              v126 = *(v113 + 2);
              v125 = *(v113 + 3);
              if (v126 >= v125 >> 1)
              {
                v113 = sub_252737FAC((v125 > 1), v126 + 1, 1, v113);
              }

              v128 = *(v0 + 312);
              v127 = *(v0 + 320);
              v129 = *(v0 + 304);
              *(v113 + 2) = v126 + 1;
              v124(&v113[((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v126], v127, v129);
            }

            v110 += v232;
            if (!--v102)
            {
              sub_25272C15C(v223, v221, v218, v215, v213);
              v99 = v225;
              v100 = v227;
              goto LABEL_74;
            }
          }
        }

        v113 = MEMORY[0x277D84F90];
LABEL_74:
        v130 = *(v113 + 2);
        v131 = v100[2];
        v132 = v131 + v130;
        if (__OFADD__(v131, v130))
        {
          goto LABEL_125;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v132 <= v100[3] >> 1)
        {
          if (!*(v113 + 2))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v131 <= v132)
          {
            v134 = v131 + v130;
          }

          else
          {
            v134 = v131;
          }

          v100 = sub_252737FAC(isUniquelyReferenced_nonNull_native, v134, 1, v100);
          if (!*(v113 + 2))
          {
LABEL_48:

            v98 = v211;
            if (v130)
            {
              goto LABEL_126;
            }

            goto LABEL_49;
          }
        }

        if ((v100[3] >> 1) - v100[2] < v130)
        {
          goto LABEL_128;
        }

        swift_arrayInitWithCopy();

        v98 = v211;
        if (v130)
        {
          v135 = v100[2];
          v136 = __OFADD__(v135, v130);
          v137 = v135 + v130;
          if (v136)
          {
            goto LABEL_129;
          }

          v100[2] = v137;
        }

LABEL_49:
        if (++v99 == v230)
        {
          goto LABEL_88;
        }
      }
    }

    v100 = MEMORY[0x277D84F90];
LABEL_88:
    v228 = v100;
    *(v0 + 928) = v100;
    v138 = *(v0 + 736);
    v139 = *(v138 + 16);
    v140 = MEMORY[0x277D84F90];
    if (v139)
    {
      break;
    }

LABEL_94:
    *(v0 + 936) = v140;
    if (!v230)
    {
      v155 = MEMORY[0x277D84F90];
LABEL_105:
      *(v0 + 944) = v155;
      v163 = *(v0 + 51);
      v165 = *(v0 + 152);
      v164 = *(v0 + 160);

      v166 = swift_task_alloc();
      *(v0 + 952) = v166;
      *(v166 + 16) = v140;
      *(v166 + 24) = v164;
      *(v166 + 32) = v165;
      *(v166 + 40) = v163 & 1;
      v167 = swift_task_alloc();
      *(v0 + 960) = v167;
      *v167 = v0;
      v167[1] = sub_252797060;
      v168 = *(v0 + 736);
      v169 = *(v0 + 160);

      return sub_252777E20(v228, v169, v155, v168, &unk_2528C8000, v166);
    }

    v153 = 0;
    v154 = (v211 + 64);
    v155 = MEMORY[0x277D84F90];
    while (v153 < *(v211 + 16))
    {
      v156 = *v154;
      v157 = *(v154 - 1);
      *(v0 + 16) = *(v154 - 2);
      *(v0 + 32) = v157;
      *(v0 + 48) = v156;
      sub_252870158(&v233);
      v158 = v233;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v155 = sub_252737FD4(0, *(v155 + 2) + 1, 1, v155);
      }

      v160 = *(v155 + 2);
      v159 = *(v155 + 3);
      if (v160 >= v159 >> 1)
      {
        v155 = sub_252737FD4((v159 > 1), v160 + 1, 1, v155);
      }

      ++v153;
      *(v155 + 2) = v160 + 1;
      v155[v160 + 32] = v158;
      v154 += 40;
      if (v230 == v153)
      {
        goto LABEL_105;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    swift_once();
  }

  v141 = *(v0 + 416);
  *(v0 + 120) = MEMORY[0x277D84F90];
  sub_25282EFDC(0, v139, 0);
  v140 = *(v0 + 120);
  v142 = v138 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
  while (1)
  {
    v144 = *(v0 + 336);
    v143 = *(v0 + 344);
    v145 = *(v0 + 288);
    sub_25272E7DC(v142, *(v0 + 424));
    sub_2528BE6B0();
    sub_2528BECA0();

    if ((*(v143 + 48))(v145, 1, v144) == 1)
    {
      break;
    }

    v146 = *(v0 + 424);
    v147 = *(*(v0 + 344) + 32);
    v147(*(v0 + 360), *(v0 + 288), *(v0 + 336));
    sub_25272E840(v146);
    *(v0 + 120) = v140;
    v149 = *(v140 + 16);
    v148 = *(v140 + 24);
    if (v149 >= v148 >> 1)
    {
      sub_25282EFDC((v148 > 1), v149 + 1, 1);
      v140 = *(v0 + 120);
    }

    v150 = *(v0 + 360);
    v151 = *(v0 + 336);
    v152 = *(v0 + 344);
    *(v140 + 16) = v149 + 1;
    v147(v140 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v149, v150, v151);
    v142 += v232;
    if (!--v139)
    {
      goto LABEL_94;
    }
  }

  sub_2527213D8(*(v0 + 288), &qword_27F4FC628, &qword_2528C4750);
  v233 = 0;
  v234 = 0xE000000000000000;
  sub_2528C0E70();
  v161 = v234;
  *(v0 + 72) = v233;
  *(v0 + 80) = v161;
  MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
  sub_2528BE6B0();
  MEMORY[0x2530A80B0](*(v0 + 88), *(v0 + 96));

  MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
  return sub_2528C0EE0();
}

uint64_t sub_252797060(uint64_t a1)
{
  *(*v1 + 968) = a1;

  return MEMORY[0x2822009F8](sub_2527971DC, 0, 0);
}

uint64_t sub_2527971DC()
{
  v128 = v0;
  v1 = *(v0 + 704);
  sub_252735C2C(*(v0 + 968));
  sub_2527213D8(v1, &qword_27F4FCE48, &unk_2528C61E0);
  v2 = *(v0 + 920);
  v3 = (*(v0 + 912) - 1) & *(v0 + 912);
  if (v3)
  {
    v4 = *(v0 + 144);
    goto LABEL_7;
  }

  do
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_89;
    }

    if (v5 >= (((1 << *(v0 + 1084)) + 63) >> 6))
    {
      v84 = *(v0 + 904);
      v85 = *(v0 + 280);
      v86 = *(v0 + 160);
      v87 = *(v0 + 144);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD468, &qword_2528C8008);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_2528C3910;
      sub_2528C06A0();
      *(v0 + 128) = v88;
      sub_25279F2D0(&qword_27F4FD470, MEMORY[0x277D16C90], MEMORY[0x277D16C98]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD478, &qword_2528C8010);
      sub_25279F1C0();
      sub_2528C0DF0();
      sub_2528C0500();
      v89 = swift_task_alloc();
      *(v89 + 16) = v86;
      *(v89 + 24) = v85;
      sub_2527E4E5C(sub_25279F224, v89, v87);
      if (v84)
      {
        v90 = *(v0 + 280);
        v91 = *(v0 + 256);
        v92 = *(v0 + 264);

        (*(v92 + 8))(v90, v91);

        v93 = *(v0 + 8);

        return v93();
      }

      v94 = sub_2528C0520();
      v95 = *(v0 + 744);
      if (v94)
      {

        v96 = *(v0 + 280);
        v97 = *(v0 + 256);
        v98 = *(v0 + 264);

        v99 = *(v0 + 112);
        v127 = MEMORY[0x277D84F90];
        sub_252735C2C(v99);
        sub_252735C2C(*(v0 + 104));
        v117 = sub_25280D9C4(v127);

        (*(v98 + 8))(v96, v97);

        v100 = *(v0 + 8);

        return v100(v117);
      }

      v101 = *(v95 + 16);
      if (v101)
      {
        v102 = sub_252865914(*(v95 + 16), 0);
        v103 = sub_252868980(v126, v102 + 32, v101, v95);
        sub_25271A648(v126[0]);
        if (v103 == v101)
        {
          goto LABEL_81;
        }

        __break(1u);
      }

      v102 = MEMORY[0x277D84F90];
LABEL_81:
      *(v0 + 976) = v102;
      v104 = *(v0 + 272);
      v105 = *(v0 + 280);
      v106 = *(v0 + 256);
      v107 = *(v0 + 264);
      v108 = *(v0 + 224);
      v109 = sub_2528BF400();
      *(v0 + 984) = v109;
      v110 = *(v109 - 8);
      v111 = *(v110 + 56);
      *(v0 + 992) = v111;
      *(v0 + 1000) = (v110 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v111(v108, 1, 1, v109);
      (*(v107 + 16))(v104, v105, v106);
      *(v0 + 1008) = sub_2528BEFC0();
      v112 = swift_task_alloc();
      *(v0 + 1016) = v112;
      *v112 = v0;
      v112[1] = sub_25279831C;

      return MEMORY[0x28216EA40]();
    }

    v4 = *(v0 + 144);
    v3 = *(v4 + 8 * v5 + 64);
    ++v2;
  }

  while (!v3);
  v2 = v5;
LABEL_7:
  *(v0 + 920) = v2;
  *(v0 + 912) = v3;
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = __clz(__rbit64(v3)) | (v2 << 6);
  v125 = *(*(v0 + 416) + 72);
  sub_25272E7DC(*(v4 + 48) + v125 * v10, v7);
  v11 = *(*(v4 + 56) + 8 * v10);
  v12 = *(v9 + 48);
  sub_25279F090(v7, v8);
  *(v8 + v12) = v11;
  sub_25272006C(v8, v6, &qword_27F4FCE48, &unk_2528C61E0);
  v13 = *(v6 + *(v9 + 48));

  sub_25272E840(v6);
  v114 = v13;
  v124 = *(v13 + 16);
  if (v124)
  {
    v14 = 0;
    v113 = v13 + 32;
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v16 = *(v0 + 736);
      v17 = *(v16 + 16);
      if (v17)
      {
        v121 = v14;
        v122 = v15;
        v18 = v113 + 40 * v14;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(*(v0 + 416) + 80);
        v25 = v16 + ((v24 + 32) & ~v24);
        v118 = v21;
        v119 = v19;
        v116 = v22;
        sub_252760C18(v20, v19, v21, v22, v23);
        v115 = v23;
        v26 = v23 >> 1;
        v120 = v20;
        v27 = v20 & 1;
        v28 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_25272E7DC(v25, *(v0 + 432));
          sub_2528BE6B0();
          v29 = *(v0 + 49);
          v30 = v29 >> 14;
          v31 = (v29 >> 8) & 0x3F;
          if (v30 != 1)
          {
            v31 = *(v0 + 49);
          }

          if (!v30)
          {
            v31 = *(v0 + 49);
          }

          if (v26 == 44)
          {
            if (v31 != 2)
            {
LABEL_26:
              (*(*(v0 + 312) + 56))(*(v0 + 296), 1, 1, *(v0 + 304));
              goto LABEL_27;
            }

            v32 = *(v0 + 52);
          }

          else
          {
            if (v26 != 36)
            {
              goto LABEL_26;
            }

            v32 = *(v0 + 1080);
          }

          v34 = *(v0 + 304);
          v33 = *(v0 + 312);
          v35 = *(v0 + 296);
          *v35 = v27;
          (*(v33 + 104))(v35, v32, v34);
          (*(v33 + 56))(v35, 0, 1, v34);
LABEL_27:
          v37 = *(v0 + 304);
          v36 = *(v0 + 312);
          v38 = *(v0 + 296);
          sub_25272E840(*(v0 + 432));
          if ((*(v36 + 48))(v38, 1, v37) == 1)
          {
            sub_2527213D8(*(v0 + 296), &qword_27F4FD458, &unk_2528C7FE0);
          }

          else
          {
            v39 = *(*(v0 + 312) + 32);
            v39(*(v0 + 320), *(v0 + 296), *(v0 + 304));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_252737FAC(0, *(v28 + 2) + 1, 1, v28);
            }

            v41 = *(v28 + 2);
            v40 = *(v28 + 3);
            if (v41 >= v40 >> 1)
            {
              v28 = sub_252737FAC((v40 > 1), v41 + 1, 1, v28);
            }

            v43 = *(v0 + 312);
            v42 = *(v0 + 320);
            v44 = *(v0 + 304);
            *(v28 + 2) = v41 + 1;
            v39(&v28[((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v41], v42, v44);
          }

          v25 += v125;
          if (!--v17)
          {
            sub_25272C15C(v120, v119, v118, v116, v115);
            v14 = v121;
            v15 = v122;
            v13 = v114;
            goto LABEL_35;
          }
        }
      }

      v28 = MEMORY[0x277D84F90];
LABEL_35:
      v45 = *(v28 + 2);
      v46 = v15[2];
      v47 = v46 + v45;
      if (__OFADD__(v46, v45))
      {
        goto LABEL_85;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v47 <= v15[3] >> 1)
      {
        if (!*(v28 + 2))
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v46 <= v47)
        {
          v49 = v46 + v45;
        }

        else
        {
          v49 = v46;
        }

        v15 = sub_252737FAC(isUniquelyReferenced_nonNull_native, v49, 1, v15);
        if (!*(v28 + 2))
        {
LABEL_9:

          if (v45)
          {
            goto LABEL_86;
          }

          goto LABEL_10;
        }
      }

      if ((v15[3] >> 1) - v15[2] < v45)
      {
        goto LABEL_88;
      }

      swift_arrayInitWithCopy();

      if (v45)
      {
        v50 = v15[2];
        v51 = __OFADD__(v50, v45);
        v52 = v50 + v45;
        if (v51)
        {
          goto LABEL_90;
        }

        v15[2] = v52;
      }

LABEL_10:
      if (++v14 == v124)
      {
        goto LABEL_49;
      }
    }
  }

  v15 = MEMORY[0x277D84F90];
LABEL_49:
  v123 = v15;
  *(v0 + 928) = v15;
  v53 = *(v0 + 736);
  v54 = *(v53 + 16);
  v55 = MEMORY[0x277D84F90];
  if (!v54)
  {
LABEL_55:
    *(v0 + 936) = v55;
    if (!v124)
    {
      v70 = MEMORY[0x277D84F90];
LABEL_66:
      *(v0 + 944) = v70;
      v77 = *(v0 + 51);
      v79 = *(v0 + 152);
      v78 = *(v0 + 160);

      v80 = swift_task_alloc();
      *(v0 + 952) = v80;
      *(v80 + 16) = v55;
      *(v80 + 24) = v78;
      *(v80 + 32) = v79;
      *(v80 + 40) = v77 & 1;
      v81 = swift_task_alloc();
      *(v0 + 960) = v81;
      *v81 = v0;
      v81[1] = sub_252797060;
      v82 = *(v0 + 736);
      v83 = *(v0 + 160);

      return sub_252777E20(v123, v83, v70, v82, &unk_2528C8000, v80);
    }

    v68 = 0;
    v69 = (v13 + 64);
    v70 = MEMORY[0x277D84F90];
    while (v68 < *(v13 + 16))
    {
      v71 = *v69;
      v72 = *(v69 - 1);
      *(v0 + 16) = *(v69 - 2);
      *(v0 + 32) = v72;
      *(v0 + 48) = v71;
      sub_252870158(v126);
      v73 = v126[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_252737FD4(0, *(v70 + 2) + 1, 1, v70);
      }

      v75 = *(v70 + 2);
      v74 = *(v70 + 3);
      if (v75 >= v74 >> 1)
      {
        v70 = sub_252737FD4((v74 > 1), v75 + 1, 1, v70);
      }

      ++v68;
      *(v70 + 2) = v75 + 1;
      v70[v75 + 32] = v73;
      v69 += 40;
      if (v124 == v68)
      {
        goto LABEL_66;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    return MEMORY[0x28216EA40]();
  }

  v56 = *(v0 + 416);
  *(v0 + 120) = MEMORY[0x277D84F90];
  sub_25282EFDC(0, v54, 0);
  v55 = *(v0 + 120);
  v57 = v53 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
  while (1)
  {
    v59 = *(v0 + 336);
    v58 = *(v0 + 344);
    v60 = *(v0 + 288);
    sub_25272E7DC(v57, *(v0 + 424));
    sub_2528BE6B0();
    sub_2528BECA0();

    if ((*(v58 + 48))(v60, 1, v59) == 1)
    {
      break;
    }

    v61 = *(v0 + 424);
    v62 = *(*(v0 + 344) + 32);
    v62(*(v0 + 360), *(v0 + 288), *(v0 + 336));
    sub_25272E840(v61);
    *(v0 + 120) = v55;
    v64 = *(v55 + 16);
    v63 = *(v55 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_25282EFDC((v63 > 1), v64 + 1, 1);
      v55 = *(v0 + 120);
    }

    v65 = *(v0 + 360);
    v66 = *(v0 + 336);
    v67 = *(v0 + 344);
    *(v55 + 16) = v64 + 1;
    v62(v55 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v64, v65, v66);
    v57 += v125;
    --v54;
    v13 = v114;
    if (!v54)
    {
      goto LABEL_55;
    }
  }

  sub_2527213D8(*(v0 + 288), &qword_27F4FC628, &qword_2528C4750);
  v126[0] = 0;
  v126[1] = 0xE000000000000000;
  sub_2528C0E70();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
  sub_2528BE6B0();
  MEMORY[0x2530A80B0](*(v0 + 88), *(v0 + 96));

  MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
  return sub_2528C0EE0();
}

uint64_t sub_25279831C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 51);
  v5 = *v1;
  v3[128] = a1;

  v6 = swift_task_alloc();
  v3[129] = v6;
  *v6 = v5;
  v6[1] = sub_2527984AC;
  v7 = v2[34];
  v8 = v2[27];
  v9 = v2[19];

  return MEMORY[0x28216EA70](v8, v7, 0, 1, v9, v4 & 1);
}

uint64_t sub_2527984AC()
{
  v2 = *v1;
  v2[130] = v0;

  v3 = v2[128];
  if (v0)
  {

    v4 = sub_2527989AC;
  }

  else
  {
    (*(v2[33] + 8))(v2[34], v2[32]);

    v4 = sub_2527985FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2527985FC()
{
  sub_2527213D8(v0[28], &qword_27F4FCD98, &qword_2528C6200);
  v1 = v0[122];
  v2 = v0[92];
  v3 = v0[28];
  sub_25274AA0C(v0[27], v3, &qword_27F4FCD98, &qword_2528C6200);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v4, v2);

  sub_2527213D8(v3, &qword_27F4FCD98, &qword_2528C6200);

  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[33];

  sub_252735C2C(v0[14]);
  sub_252735C2C(v0[13]);
  v11 = sub_25280D9C4(v5);

  (*(v8 + 8))(v6, v7);

  v9 = v0[1];

  return v9(v11);
}

uint64_t sub_2527989AC()
{
  v1 = v0[22];
  (*(v0[33] + 8))(v0[34], v0[32]);
  v2 = sub_2528C05D0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[131] = v3;
  *v3 = v0;
  v3[1] = sub_252798AA4;
  v4 = v0[22];

  return MEMORY[0x28216E990](v4);
}

uint64_t sub_252798AA4(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 1056) = a1;

  v4 = swift_task_alloc();
  *(v3 + 1064) = v4;
  *v4 = v6;
  v4[1] = sub_252798BF0;

  return sub_25279D1DC(a1);
}

uint64_t sub_252798BF0(uint64_t a1)
{
  *(*v1 + 1072) = a1;

  return MEMORY[0x2822009F8](sub_252798CF0, 0, 0);
}

uint64_t sub_252798CF0()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  v5 = *(v0 + 176);

  sub_2527213D8(v5, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2528BF2F0();
  sub_2528BEE00();
  (*(v3 + 8))(v2, v4);
  if (*(v1 + 16) && (v6 = sub_252785C40(*(v0 + 352)), (v7 & 1) != 0))
  {
    v8 = *(v0 + 1040);
    v10 = *(v0 + 344);
    v9 = *(v0 + 352);
    v11 = *(v0 + 336);
    v31 = *(v0 + 224);
    v12 = *(v0 + 200);
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    (*(v13 + 16))(v12, *(*(v0 + 1072) + 56) + *(v13 + 72) * v6, v14);
    (*(v10 + 8))(v9, v11);

    sub_2528BEE70();

    sub_2527213D8(v31, &qword_27F4FCD98, &qword_2528C6200);
    (*(v13 + 8))(v12, v14);
    v15 = 0;
  }

  else
  {
    v17 = *(v0 + 344);
    v16 = *(v0 + 352);
    v18 = *(v0 + 336);
    v19 = *(v0 + 224);

    (*(v17 + 8))(v16, v18);
    sub_2527213D8(v19, &qword_27F4FCD98, &qword_2528C6200);
    v15 = 1;
  }

  (*(v0 + 992))(*(v0 + 208), v15, 1, *(v0 + 984));
  v20 = *(v0 + 976);
  v21 = *(v0 + 736);
  v22 = *(v0 + 224);
  sub_25274AA0C(*(v0 + 208), v22, &qword_27F4FCD98, &qword_2528C6200);
  v23 = swift_task_alloc();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  v24 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v23, v21);

  sub_2527213D8(v22, &qword_27F4FCD98, &qword_2528C6200);

  v25 = *(v0 + 280);
  v26 = *(v0 + 256);
  v27 = *(v0 + 264);

  sub_252735C2C(*(v0 + 112));
  sub_252735C2C(*(v0 + 104));
  v30 = sub_25280D9C4(v24);

  (*(v27 + 8))(v25, v26);

  v28 = *(v0 + 8);

  return v28(v30);
}

uint64_t sub_252799238()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 656);

  (*(v2 + 8))(v1, v3);
  sub_2527213D8(v4, &qword_27F4FCDB8, &unk_2528C5CC0);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252799538(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v2[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v2[4] = swift_task_alloc();
  sub_2528BEFC0();
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_252799654;

  return MEMORY[0x28216E990](a2);
}

uint64_t sub_252799654(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_252799754, 0, 0);
}

uint64_t sub_252799754()
{
  *(v0 + 56) = sub_2528C0C20();
  *(v0 + 64) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_2527997EC, v2, v1);
}

uint64_t sub_2527997EC()
{

  sub_2528BEF30();

  return MEMORY[0x2822009F8](sub_252799864, 0, 0);
}

uint64_t sub_252799864()
{
  v1 = *(v0 + 32);
  v2 = sub_2528BF400();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  *(v0 + 72) = sub_2528C0C10();
  v4 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252799934, v4, v3);
}

uint64_t sub_252799934()
{

  sub_2528BEF40();

  return MEMORY[0x2822009F8](sub_2527999AC, 0, 0);
}

uint64_t sub_2527999AC()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[2];
  v4 = sub_2528C00D0();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  sub_2528BEE60();

  v5 = sub_2528BEEC0();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_252799ABC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2528BE6B0();
  v4 = v12 >> 14;
  v5 = HIBYTE(v12) & 0x3F;
  if (v4 != 1)
  {
    v5 = v12;
  }

  if (!v4)
  {
    v5 = v12;
  }

  if (v3 == 41)
  {
    if (v5 == 2)
    {
      v6 = MEMORY[0x277D15F90];
      goto LABEL_10;
    }
  }

  else if (v3 == 33)
  {
    v6 = MEMORY[0x277D15F88];
LABEL_10:
    v7 = *v6;
    v8 = sub_2528BFD30();
    v9 = *(v8 - 8);
    (*(v9 + 104))(a2, v7, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  v11 = sub_2528BFD30();
  return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
}

uint64_t sub_252799C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 120) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_2528BEE30();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252799CF0, 0, 0);
}

uint64_t sub_252799CF0(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  sub_2528BF2F0();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v1[10] = sub_2527A3834(sub_25279F3B8, v4, v2);

  sub_2528BEFC0();
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = sub_252799DE8;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_252799DE8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *v1;
  v3[12] = a1;

  v6 = swift_task_alloc();
  v3[13] = v6;
  *v6 = v5;
  v6[1] = sub_252799F98;
  v7 = v2[10];
  v8 = v2[9];
  v9 = v2[6];
  v10 = v2[3];
  v11 = v2[2];

  return MEMORY[0x28216E9B8](v11, v8, v7, v10, v9, v4 & 1);
}

uint64_t sub_252799F98()
{
  v2 = *v1;
  v3 = *v1;
  v2[14] = v0;

  v4 = v2[12];
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25279A150, 0, 0);
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_25279A150()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25279A1D0@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_2528BECF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2528BF9D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528BF370();
  sub_252819FA8(v4);
  if (*(v9 + 16) && (v10 = sub_252785C40(v4), (v11 & 1) != 0))
  {
    (*(v6 + 16))(v8, *(v9 + 56) + *(v6 + 72) * v10, v5);
    (*(v2 + 8))(v4, v1);

    v12 = v17;
    sub_2528BF640();
    (*(v6 + 8))(v8, v5);
    v13 = 0;
  }

  else
  {

    (*(v2 + 8))(v4, v1);
    v13 = 1;
    v12 = v17;
  }

  v14 = sub_2528BFD50();
  return (*(*(v14 - 8) + 56))(v12, v13, 1, v14);
}

uint64_t sub_25279A424(uint64_t *a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v125 = a4;
  v117 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v6 - 8);
  v118 = v107 - v7;
  v8 = sub_2528BECF0();
  v120 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v107 - v12;
  v14 = sub_2528BF9D0();
  v126 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v123 = v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v122 = v107 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v107 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v113 = v107 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v114 = v107 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v119 = (v107 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v107 - v29;
  MEMORY[0x28223BE20](v28);
  v115 = a3;
  v116 = v107 - v31;
  v32 = sub_2528BF370();
  v124 = a2;
  sub_252819FA8(v13);
  if (!*(v32 + 16) || (v33 = sub_252785C40(v13), (v34 & 1) == 0))
  {

    return (*(v120 + 8))(v13, v8);
  }

  v108 = v21;
  v112 = v11;
  v35 = *(v32 + 56);
  v36 = v126;
  v127 = *(v126 + 72);
  v38 = v126 + 16;
  v37 = *(v126 + 16);
  v37(v30, v35 + v127 * v33, v14);
  v39 = *(v120 + 8);
  v110 = v120 + 8;
  v111 = v8;
  v109 = v39;
  v39(v13, v8);

  v40 = v36 + 32;
  v41 = *(v36 + 32);
  v42 = v116;
  v43 = v41(v116, v30, v14);
  MEMORY[0x28223BE20](v43);
  v44 = v125;
  v107[-2] = v124;
  v45 = v128;
  v46 = sub_25285383C(sub_25279F338, &v107[-4], v44);
  v47 = sub_252744064(v46);

  v124 = v37;
  v125 = v38;
  v48 = (v37)(v119, v42, v14);
  v49 = *(v47 + 16);
  v121 = v47;
  v107[1] = v40;
  v107[0] = v41;
  if (v49)
  {
    MEMORY[0x28223BE20](v48);
    v107[-2] = v42;

    v50 = sub_25279CB54(sub_25279F398, &v107[-4], v47);
    v128 = v45;
  }

  else
  {
    v128 = v45;
    v50 = 0;
  }

  v52 = v123;
  v53 = v118;
  v54 = v117;
  sub_252840B8C(v50, v119);
  sub_2528BF450();
  v55 = v120;
  v56 = v111;
  v57 = (*(v120 + 48))(v53, 1, v111);
  v58 = v112;
  v59 = v42;
  if (v57 == 1)
  {
    sub_2527213D8(v53, &qword_27F4FC628, &qword_2528C4750);
    v60 = v126;
  }

  else
  {
    (*(v55 + 32))(v112, v53, v56);
    v61 = sub_2528BF370();
    if (*(v61 + 16) && (v62 = sub_252785C40(v58), (v63 & 1) != 0))
    {
      v64 = v113;
      v65 = v124;
      v124(v113, *(v61 + 56) + v62 * v127, v14);

      v66 = v114;
      (v107[0])(v114, v64, v14);
      v67 = (v65)(v108, v66, v14);
      v68 = v121;
      if (*(v121 + 16))
      {
        MEMORY[0x28223BE20](v67);
        v107[-2] = v66;

        v69 = v128;
        v70 = sub_25279CB54(sub_25279F3E4, &v107[-4], v68);
        v128 = v69;
        v52 = v123;
      }

      else
      {
        v70 = 0;
      }

      v60 = v126;
      v71 = v112;
      sub_252840B8C(v70, v108);
      v109(v71, v56);
      (*(v60 + 8))(v66, v14);
      v59 = v116;
    }

    else
    {

      v109(v58, v56);
      v60 = v126;
    }
  }

  v72 = sub_2528BF430();
  v73 = v72;
  v120 = *(v72 + 16);
  if (!v120)
  {

    v78 = *(v60 + 8);
    return (v78)(v59, v14);
  }

  v74 = 0;
  v75 = v72 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
  v118 = v72;
  v119 = (v60 + 8);
  v76 = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v77 = v122;
  while (v74 < *(v73 + 2))
  {
    v79 = v124;
    v124(v77, v75, v14);
    v80 = (v79)(v52, v77, v14);
    if (*(v121 + 16))
    {
      v126 = v76;
      MEMORY[0x28223BE20](v80);
      v107[-2] = v77;
      v82 = v81;

      v83 = v128;
      v84 = sub_25279CB54(sub_25279F3E4, &v107[-4], v82);
      v128 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v54;
      v87 = isUniquelyReferenced_nonNull_native;
      v129 = *v86;
      v88 = v129;
      v90 = sub_252785D14(v52);
      v91 = v88[2];
      v92 = (v89 & 1) == 0;
      v93 = v91 + v92;
      if (__OFADD__(v91, v92))
      {
        goto LABEL_42;
      }

      v94 = v89;
      if (v88[3] >= v93)
      {
        if ((v87 & 1) == 0)
        {
          sub_2527E1078();
        }
      }

      else
      {
        sub_2527DDCC4(v93, v87);
        v95 = sub_252785D14(v123);
        if ((v94 & 1) != (v96 & 1))
        {
          goto LABEL_44;
        }

        v90 = v95;
      }

      v54 = v117;
      v102 = v129;
      if (v94)
      {
        *(v129[7] + 8 * v90) = v84;

        v78 = *v119;
        v52 = v123;
        (*v119)(v123, v14);
      }

      else
      {
        v129[(v90 >> 6) + 8] |= 1 << v90;
        v103 = v123;
        v124((v102[6] + v90 * v127), v123, v14);
        *(v102[7] + 8 * v90) = v84;
        v52 = v103;
        v78 = *v119;
        (*v119)(v52, v14);
        v104 = v102[2];
        v105 = __OFADD__(v104, 1);
        v106 = v104 + 1;
        if (v105)
        {
          goto LABEL_43;
        }

        v102[2] = v106;
      }

      *v54 = v102;
      v76 = v126;
    }

    else
    {
      v97 = sub_252785D14(v52);
      if (v98)
      {
        v99 = v97;
        v100 = swift_isUniquelyReferenced_nonNull_native();
        v101 = *v54;
        v129 = *v54;
        v73 = v118;
        if (!v100)
        {
          sub_2527E1078();
          v101 = v129;
        }

        v78 = *v119;
        (*v119)(*(v101 + 48) + v99 * v127, v14);

        sub_2528461D8(v99, v101);
        v52 = v123;
        v78(v123, v14);
        v54 = v117;
        *v117 = v101;
        goto LABEL_21;
      }

      v78 = *v119;
      (*v119)(v52, v14);
    }

    v73 = v118;
LABEL_21:
    ++v74;
    v77 = v122;
    v78(v122, v14);
    v75 += v127;
    if (v120 == v74)
    {

      v59 = v116;
      return (v78)(v59, v14);
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

uint64_t sub_25279AE54(uint64_t a1)
{
  v2 = sub_2528BF240();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2528BF460();
  v6 = sub_2528BF220();
  (*(v3 + 8))(v5, v2);
  LOBYTE(a1) = sub_2528193BC(a1, v6);

  return a1 & 1;
}

uint64_t sub_25279AF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4A8, &unk_2528C8040);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = (&v35 - v4);
  v5 = sub_2528BECF0();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v44 = sub_2528BFB20();
  v14 = *(v44 - 8);
  v15 = MEMORY[0x28223BE20](v44);
  v37 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v36 = &v35 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - v20;
  v22 = type metadata accessor for DeviceEntity(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25272006C(v42, v21, &qword_27F4FCE48, &unk_2528C61E0);
  v25 = *&v21[*(v19 + 56)];
  sub_25279F090(v21, v24);
  sub_25272006C(v43, v10, &qword_27F4FCDB8, &unk_2528C5CC0);
  v26 = sub_2528C00D0();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v10, 1, v26) == 1)
  {

    sub_2527213D8(v10, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v14 + 56))(v13, 1, 1, v44);
LABEL_5:
    sub_25272E840(v24);
    return sub_2527213D8(v13, &qword_27F4FCEF0, &unk_2528C6AB0);
  }

  sub_252819FA8(v7);
  sub_2528C0080();
  (*(v40 + 8))(v7, v41);
  (*(v27 + 8))(v10, v26);
  v28 = v44;
  if ((*(v14 + 48))(v13, 1, v44) == 1)
  {

    goto LABEL_5;
  }

  v30 = v36;
  (*(v14 + 32))(v36, v13, v28);
  v31 = v37;
  (*(v14 + 16))(v37, v30, v28);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  v33 = *(v32 + 48);
  v34 = v38;
  *v38 = v25;
  sub_25272E7DC(v24, v34 + v33);
  (*(*(v32 - 8) + 56))(v34, 0, 1, v32);
  sub_252840D4C(v34, v31);
  (*(v14 + 8))(v30, v28);
  return sub_25272E840(v24);
}

void sub_25279B4A8(uint64_t a1, uint64_t a2)
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
  v8 = 0;

  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = (v8 << 9) | (8 * v10);
    if (*(*(*(v2 + 56) + v11) + 16))
    {
      v12 = *(*(v2 + 48) + v11);

      v13 = sub_2528C0890();
      v14 = sub_2528C0D10();
      if (os_log_type_enabled(v13, v14))
      {
        log = v13;
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 134218242;
        *(v15 + 4) = v12;
        *(v15 + 12) = 2080;
        sub_25274A51C();
        v17 = sub_2528C08E0();
        v19 = v18;

        v20 = sub_2527389AC(v17, v19, &v23);
        v2 = v21;

        *(v15 + 14) = v20;
        _os_log_impl(&dword_252711000, log, v14, "Matter device %llu exited with errors %s", v15, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x2530A8D80](v16, -1, -1);
        MEMORY[0x2530A8D80](v15, -1, -1);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }
}

uint64_t sub_25279B6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 88) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  sub_2528BEFC0();
  v7 = swift_task_alloc();
  *(v6 + 56) = v7;
  *v7 = v6;
  v7[1] = sub_25279B780;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_25279B780(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *v1;
  v3[8] = a1;

  v6 = swift_task_alloc();
  v3[9] = v6;
  *v6 = v5;
  v6[1] = sub_25279B934;
  v7 = v2[6];
  v8 = v2[5];
  v9 = v2[4];
  v10 = v2[3];
  v11 = v2[2];

  return MEMORY[0x28216EA68](v11, v10, v9, v8, 1, v7, v4 & 1);
}

uint64_t sub_25279B934()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25279BA70, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25279BA70()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25279BAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v32 = a2;
  v33 = sub_2528BECF0();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2528BF9D0();
  v7 = *(v31 - 8);
  v8 = MEMORY[0x28223BE20](v31);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v29 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for DeviceEntity(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_25272006C(a1, v13, &qword_27F4FCE48, &unk_2528C61E0);

  sub_25279F090(v13, v16);
  v17 = sub_2528BF370();
  sub_252819FA8(v6);
  if (*(v17 + 16) && (v18 = sub_252785C40(v6), (v19 & 1) != 0))
  {
    v20 = v27;
    v21 = v31;
    (*(v7 + 16))(v27, *(v17 + 56) + *(v7 + 72) * v18, v31);
    (*(v4 + 8))(v6, v33);

    v22 = v29;
    (*(v7 + 32))(v29, v20, v21);
    sub_25272006C(v28, v13, &qword_27F4FCE48, &unk_2528C61E0);
    v23 = *&v13[*(v11 + 48)];
    v24 = sub_25272E840(v13);
    MEMORY[0x28223BE20](v24);
    *(&v26 - 4) = v16;
    *(&v26 - 3) = v22;
    *(&v26 - 2) = v30;
    sub_2527E5018(sub_25279F318, (&v26 - 6), v23);

    (*(v7 + 8))(v22, v21);
  }

  else
  {

    (*(v4 + 8))(v6, v33);
  }

  return sub_25272E840(v16);
}

uint64_t sub_25279BE90(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v34 - v9;
  v44 = sub_2528BECF0();
  v11 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4B0, &unk_2528D4CC0);
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  LOBYTE(v15) = *(a1 + 32);
  v17 = *(a1 + 16);
  v47[0] = *a1;
  v47[1] = v17;
  v48 = v15;
  sub_2528BE6B0();
  v49 = v45;
  v18 = v47;
  v19 = v43;
  result = sub_2527E7218(&v49, a3);
  if (!v19)
  {
    v34[1] = 0;
    v38 = v14;
    v40 = v10;
    v42 = a2;
    v43 = result;
    v21 = result + 64;
    v22 = 1 << *(result + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(result + 64);
    v25 = (v22 + 63) >> 6;
    v36 = (v11 + 32);
    v37 = (v11 + 48);
    v35 = (v11 + 8);

    v26 = 0;
    v41 = a4;
    v39 = v13;
    if (v24)
    {
      while (1)
      {
        v27 = v26;
LABEL_9:
        v28 = __clz(__rbit64(v24)) | (v27 << 6);
        v29 = v43;
        v30 = *(v43 + 48);
        v31 = sub_2528BFDE0();
        (*(*(v31 - 8) + 16))(v16, v30 + *(*(v31 - 8) + 72) * v28, v31);
        sub_25272BF98(*(v29 + 56) + 32 * v28, &v16[*(v38 + 48)]);
        sub_2528BE6B0();
        v18 = v40;
        sub_2528BECA0();

        v32 = v44;
        if ((*v37)(v18, 1, v44) == 1)
        {
          break;
        }

        v24 &= v24 - 1;
        v33 = v39;
        (*v36)(v39, v18, v32);
        v18 = v41;
        sub_2528C0510();
        (*v35)(v33, v32);
        sub_2527213D8(v16, &qword_27F4FD4B0, &unk_2528D4CC0);
        v26 = v27;
        if (!v24)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v25)
        {
        }

        v24 = *(v21 + 8 * v27);
        ++v26;
        if (v24)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    sub_2527213D8(v18, &qword_27F4FC628, &qword_2528C4750);
    *&v47[0] = 0;
    *(&v47[0] + 1) = 0xE000000000000000;
    sub_2528C0E70();
    MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
    type metadata accessor for DeviceEntity(0);
    sub_2528C0ED0();
    MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
    sub_2528BE6B0();
    MEMORY[0x2530A80B0](v45, v46);

    MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
    result = sub_2528C0EE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25279C334@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v2 = sub_2528BF290();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2528BECF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_2528BFB20();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252819FA8(v8);
  sub_2528C0080();
  (*(v6 + 8))(v8, v5);
  v16 = (*(v13 + 48))(v11, 1, v12);
  if (v16 == 1)
  {
    result = sub_2527213D8(v11, &qword_27F4FCEF0, &unk_2528C6AB0);
    v18 = 0;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_2528BFAB0();
    v18 = sub_2528BF0E0();
    (*(v20 + 8))(v4, v21);
    result = (*(v13 + 8))(v15, v12);
  }

  v19 = v23;
  *v23 = v18;
  *(v19 + 8) = v16 == 1;
  return result;
}

uint64_t sub_25279C630@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_2528BECF0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 uniqueIdentifier];
  sub_2528BECD0();

  v12 = sub_2528BECC0();
  (*(v8 + 8))(v10, v7);
  if (v12)
  {
    return sub_25272006C(a3, a4, &qword_27F4FC480, &unk_2528C7FA0);
  }

  sub_2528C0580();
  v14 = sub_2528C05D0();
  return (*(*(v14 - 8) + 56))(a4, 0, 1, v14);
}

uint64_t sub_25279C7AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v44 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v43 = (&v34 - v6);
  MEMORY[0x28223BE20](v5);
  v42 = &v34 - v7;
  v51 = sub_2528BFB20();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4A0, &unk_2528D4340);
  result = sub_2528C0F00();
  v11 = result;
  v12 = 0;
  v47 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v35 = (v16 + 63) >> 6;
  v36 = v14;
  v38 = result + 64;
  v39 = v8 + 16;
  v40 = result;
  v41 = v8;
  v37 = v8 + 32;
  if (v18)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v18));
      v48 = (v18 - 1) & v18;
LABEL_10:
      v22 = v19 | (v12 << 6);
      v23 = v47;
      v24 = *(v47 + 48);
      v25 = v41;
      v49 = *(v41 + 72) * v22;
      (*(v41 + 16))(v50, v24 + v49, v51);
      v26 = v42;
      sub_25272006C(*(v23 + 56) + *(v45 + 72) * v22, v42, &qword_27F4FD1F8, &unk_2528CDFF0);
      v27 = v43;
      sub_25272006C(v26, v43, &qword_27F4FD1F8, &unk_2528CDFF0);
      v28 = *v27;
      v29 = *(v46 + 48);
      v30 = v44;
      *v44 = *v27;
      sub_25279F090(v27 + v29, v30 + v29);

      sub_2527213D8(v30, &qword_27F4FD1F8, &unk_2528CDFF0);
      sub_2527213D8(v26, &qword_27F4FD1F8, &unk_2528CDFF0);
      *(v38 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v11 = v40;
      result = (*(v25 + 32))(*(v40 + 48) + v49, v50, v51);
      *(*(v11 + 56) + 8 * v22) = v28;
      v31 = *(v11 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v11 + 16) = v33;
      v18 = v48;
      if (!v48)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v35)
      {
        return v11;
      }

      v21 = *(v36 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_25279CB54(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a1;
  v47 = *MEMORY[0x277D85DE8];
  v6 = sub_2528BFDE0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v11;
    v41 = v10;
    v42 = v8;
    v46 = v4;
    v37 = &v34;
    MEMORY[0x28223BE20](v8);
    v36 = &v34 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v12);
    v13 = 0;
    v44 = a3;
    v15 = *(a3 + 56);
    a3 += 56;
    v14 = v15;
    v16 = 1 << *(a3 - 24);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v14;
    v10 = ((v16 + 63) >> 6);
    v38 = 0;
    v39 = v7 + 16;
    v40 = (v7 + 8);
    while (v18)
    {
      v19 = __clz(__rbit64(v18));
      v45 = (v18 - 1) & v18;
LABEL_12:
      v11 = v19 | (v13 << 6);
      v22 = *(v44 + 48) + *(v7 + 72) * v11;
      v4 = v7;
      v23 = *(v7 + 16);
      v24 = v41;
      v25 = v42;
      v23(v41, v22, v42);
      v26 = v46;
      v27 = v43(v24);
      v46 = v26;
      if (v26)
      {
        (*v40)(v24, v25);

        return swift_willThrow();
      }

      v28 = v27;
      v8 = (*v40)(v24, v25);
      v7 = v4;
      v18 = v45;
      if (v28)
      {
        *&v36[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
          return sub_25283004C(v36, v35, v38, v44);
        }
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        return sub_25283004C(v36, v35, v38, v44);
      }

      v21 = *(a3 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v45 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v31 = v8;
    sub_2528BEA50();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v8 = v31;
  }

  v32 = swift_slowAlloc();
  v33 = sub_25279D14C(v32, v11, a3, v43);

  result = MEMORY[0x2530A8D80](v32, -1, -1);
  if (!v4)
  {
    return v33;
  }

  return result;
}

uint64_t sub_25279CEEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_2528BFDE0();
  result = MEMORY[0x28223BE20](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;
        sub_2528BEA50();
        return sub_25283004C(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_25279D14C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_25279CEEC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25279D1DC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2528BECF0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD078, &qword_2528C74A8);
  v1[6] = swift_task_alloc();
  v1[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v1[9] = swift_task_alloc();
  v3 = sub_2528BEEC0();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD450, &unk_2528C7FC8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25279D46C, 0, 0);
}

uint64_t sub_25279D46C()
{
  *(v0 + 184) = sub_2528C0C20();
  *(v0 + 192) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25279D504, v2, v1);
}

uint64_t sub_25279D504()
{

  *(v0 + 200) = sub_2528BEF60();

  return MEMORY[0x2822009F8](sub_25279D578, 0, 0);
}

uint64_t sub_25279D578(uint64_t a1)
{
  *(v1 + 208) = sub_2528C0C10();
  v3 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25279D604, v3, v2);
}

uint64_t sub_25279D604()
{

  *(v0 + 216) = sub_2528BEF50();

  return MEMORY[0x2822009F8](sub_25279D678, 0, 0);
}

void sub_25279D678()
{
  v1 = v0[27];
  v132 = v0[25];
  v137 = v0[18];
  v2 = v0[11];
  v3 = v0[4];
  v4 = sub_25278CED4(MEMORY[0x277D84F90]);
  v5 = v1 + 64;
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 64);
  v9 = (63 - v7) >> 6;
  v139 = v4;
  v131 = v3;
  v133 = (v2 + 32);
  v134 = (v3 + 8);
  v130 = v2;
  v102 = v1;

  v10 = 0;
  v99 = v9;
  v100 = v1 + 64;
  v101 = v0;
  while (v8)
  {
LABEL_11:
    v15 = v0[21];
    v16 = v0[22];
    v17 = __clz(__rbit64(v8)) | (v10 << 6);
    v103 = *(v131 + 72);
    v18 = *(v131 + 16);
    v18(v16, *(v102 + 48) + v103 * v17, v0[3]);
    v19 = *(v102 + 56);
    v20 = sub_2528BF400();
    v21 = *(v20 - 8);
    v135 = v20;
    (*(v21 + 16))(v16 + *(v137 + 48), v19 + *(v21 + 72) * v17);
    sub_25272006C(v16, v15, &qword_27F4FD450, &unk_2528C7FC8);
    v105 = v18;
    if (*(v132 + 16))
    {
      v22 = sub_252785C40(v0[21]);
      v23 = v0[17];
      if (v24)
      {
        v25 = v22;
        v26 = *(v132 + 56);
        v27 = sub_2528C00D0();
        v28 = *(v27 - 8);
        (*(v28 + 16))(v23, v26 + *(v28 + 72) * v25, v27);
        (*(v28 + 56))(v23, 0, 1, v27);
        goto LABEL_16;
      }
    }

    else
    {
      v23 = v0[17];
    }

    v29 = sub_2528C00D0();
    (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
LABEL_16:
    v30 = v0[21];
    v31 = v0[20];
    v110 = v0[22];
    v112 = v0[19];
    v117 = v0[16];
    v119 = v0[17];
    v121 = v0[15];
    v123 = v31;
    v125 = v0[14];
    v127 = v0[10];
    v32 = v0[3];
    v114 = v0[9];
    v107 = *(v21 + 8);
    v107(v30 + *(v137 + 48), v135);
    v33 = *v134;
    (*v134)(v30, v32);
    sub_25272006C(v110, v31, &qword_27F4FD450, &unk_2528C7FC8);
    sub_25272006C(v110, v112, &qword_27F4FD450, &unk_2528C7FC8);
    (*(v21 + 32))(v114, v112 + *(v137 + 48), v135);
    (*(v21 + 56))(v114, 0, 1, v135);
    sub_25272006C(v119, v117, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_2528BEE60();
    v34 = v33;
    v33(v112, v32);
    v35 = *v133;
    (*v133)(v125, v121, v127);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = sub_252785C40(v123);
    v39 = v139[2];
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      goto LABEL_57;
    }

    v43 = v38;
    if (v139[3] < v42)
    {
      v0 = v101;
      v44 = v101[20];
      sub_2527DD288(v42, isUniquelyReferenced_nonNull_native);
      v37 = sub_252785C40(v44);
      if ((v43 & 1) != (v45 & 1))
      {
LABEL_52:

        sub_2528C10A0();
        return;
      }

LABEL_21:
      v46 = v0[22];
      if (v43)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    v0 = v101;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v54 = v37;
    sub_2527E0A4C();
    v37 = v54;
    v46 = v101[22];
    if (v43)
    {
LABEL_4:
      v11 = v0[17];
      (*(v130 + 40))(v139[7] + *(v130 + 72) * v37, v0[14], v0[10]);
      sub_2527213D8(v11, &qword_27F4FCDB8, &unk_2528C5CC0);
      sub_2527213D8(v46, &qword_27F4FD450, &unk_2528C7FC8);
      goto LABEL_5;
    }

LABEL_22:
    v47 = v0[20];
    v128 = v0[17];
    v48 = v0[14];
    v49 = v0[10];
    v50 = v0[3];
    v139[(v37 >> 6) + 8] |= 1 << v37;
    v51 = v37;
    v105(v139[6] + v37 * v103, v47, v50);
    v35(v139[7] + *(v130 + 72) * v51, v48, v49);
    sub_2527213D8(v128, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_2527213D8(v46, &qword_27F4FD450, &unk_2528C7FC8);
    v52 = v139[2];
    v41 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v41)
    {
      goto LABEL_59;
    }

    v139[2] = v53;
LABEL_5:
    v8 &= v8 - 1;
    v12 = v0[20];
    v13 = *(v137 + 48);
    v34(v12, v0[3]);
    v107(v12 + v13, v135);
    v9 = v99;
    v5 = v100;
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v14 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v14);
    ++v10;
    if (v8)
    {
      v10 = v14;
      goto LABEL_11;
    }
  }

  v55 = v0[25];
  v56 = v0[11];
  v109 = v0[7];

  v57 = v55 + 64;
  v58 = -1;
  v59 = -1 << *(v55 + 32);
  if (-v59 < 64)
  {
    v58 = ~(-1 << -v59);
  }

  v60 = v58 & *(v55 + 64);
  v61 = (63 - v59) >> 6;
  v104 = (v56 + 16);
  v111 = v55;
  v113 = (v56 + 56);

  v62 = 0;
  v63 = v139;
  v106 = v61;
  v108 = v55 + 64;
  while (v60)
  {
LABEL_37:
    v65 = v0[8];
    v66 = __clz(__rbit64(v60)) | (v62 << 6);
    v115 = *(v131 + 72);
    v140 = *(v131 + 16);
    v140(v65, *(v111 + 48) + v115 * v66, v0[3]);
    v67 = *(v132 + 56);
    v68 = sub_2528C00D0();
    v69 = v67 + *(*(v68 - 8) + 72) * v66;
    v70 = *(v109 + 48);
    v136 = *(v68 - 8);
    v138 = v65;
    v129 = *(v136 + 16);
    v129(v65 + v70, v69, v68);
    if (v63[2] && (v71 = sub_252785C40(v0[8]), (v72 & 1) != 0))
    {
      v73 = v0[10];
      v74 = v0[6];
      (*v104)(v74, v63[7] + *(v130 + 72) * v71, v73);
      (*v113)(v74, 0, 1, v73);
      sub_2527213D8(v74, &qword_27F4FD078, &qword_2528C74A8);
    }

    else
    {
      v124 = v0[13];
      v126 = v0[12];
      v120 = v0[16];
      v122 = v0[10];
      v116 = v0[9];
      v118 = v70;
      v75 = v0[8];
      v76 = v0[5];
      v77 = v0[6];
      v78 = v0[3];
      (*v113)(v77, 1, 1);
      sub_2527213D8(v77, &qword_27F4FD078, &qword_2528C74A8);
      v140(v76, v75, v78);
      v79 = sub_2528BF400();
      (*(*(v79 - 8) + 56))(v116, 1, 1, v79);
      v129(v120, v138 + v118, v68);
      (*(v136 + 56))(v120, 0, 1, v68);
      sub_2528BEE60();
      v80 = *v133;
      (*v133)(v126, v124, v122);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v82 = sub_252785C40(v76);
      v84 = v63[2];
      v85 = (v83 & 1) == 0;
      v41 = __OFADD__(v84, v85);
      v86 = v84 + v85;
      if (v41)
      {
        goto LABEL_58;
      }

      v87 = v83;
      if (v63[3] >= v86)
      {
        if ((v81 & 1) == 0)
        {
          v97 = v82;
          sub_2527E0A4C();
          v82 = v97;
        }
      }

      else
      {
        v88 = v0[5];
        sub_2527DD288(v86, v81);
        v82 = sub_252785C40(v88);
        if ((v87 & 1) != (v89 & 1))
        {
          goto LABEL_52;
        }
      }

      v90 = v0[12];
      v91 = v0[10];
      if (v87)
      {
        (*(v130 + 40))(v63[7] + *(v130 + 72) * v82, v0[12], v0[10]);
      }

      else
      {
        v92 = v0[5];
        v93 = v0[3];
        v63[(v82 >> 6) + 8] |= 1 << v82;
        v94 = v82;
        v140(v63[6] + v82 * v115, v92, v93);
        v80(v63[7] + *(v130 + 72) * v94, v90, v91);
        v95 = v63[2];
        v41 = __OFADD__(v95, 1);
        v96 = v95 + 1;
        if (v41)
        {
          goto LABEL_60;
        }

        v63[2] = v96;
      }

      (*v134)(v0[5], v0[3]);
      v61 = v106;
      v57 = v108;
    }

    v60 &= v60 - 1;
    sub_2527213D8(v0[8], &qword_27F4FD448, &qword_2528C7FC0);
  }

  while (1)
  {
    v64 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v64 >= v61)
    {

      v98 = v0[1];

      v98(v63);
      return;
    }

    v60 = *(v57 + 8 * v64);
    ++v62;
    if (v60)
    {
      v62 = v64;
      goto LABEL_37;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_25279E2F8(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8);
  v2[8] = v3;
  v2[9] = *(v3 + 64);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v2[11] = swift_task_alloc();
  v4 = sub_2528BECF0();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v2[14] = *(v5 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25279E47C, 0, 0);
}

uint64_t sub_25279E47C()
{
  v45 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_25272006C(v0[7], v3, &qword_27F4FC628, &qword_2528C4750);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2527213D8(v0[11], &qword_27F4FC628, &qword_2528C4750);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v4 = sub_2528C08B0();
    __swift_project_value_buffer(v4, qword_27F5025C8);
    v5 = sub_2528C0890();
    v6 = sub_2528C0CE0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_252711000, v5, v6, "No home entity provided, not filtering homeStates", v7, 2u);
      MEMORY[0x2530A8D80](v7, -1, -1);
    }

    sub_2528BEFC0();
    v8 = swift_task_alloc();
    v0[23] = v8;
    *v8 = v0;
    v8[1] = sub_25279ECAC;
    v9 = v0[6];

    return MEMORY[0x28216E990](v9);
  }

  else
  {
    v43 = *(v0[13] + 32);
    v43(v0[17], v0[11], v0[12]);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v10 = v0[16];
    v11 = v0[17];
    v12 = v0[12];
    v13 = v0[13];
    v14 = sub_2528C08B0();
    __swift_project_value_buffer(v14, qword_27F5025C8);
    v42 = *(v13 + 16);
    v42(v10, v11, v12);
    v15 = sub_2528C0890();
    v16 = sub_2528C0CE0();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[16];
    v20 = v0[12];
    v19 = v0[13];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136315138;
      sub_25279F2D0(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_2528C1040();
      v25 = v24;
      v27 = *(v19 + 8);
      v26 = v19 + 8;
      v27(v18, v20);
      v28 = sub_2527389AC(v23, v25, &v44);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_252711000, v15, v16, "Home entity provided (%s), filtering homeStates", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x2530A8D80](v22, -1, -1);
      MEMORY[0x2530A8D80](v21, -1, -1);
    }

    else
    {

      v29 = *(v19 + 8);
      v26 = v19 + 8;
      v29(v18, v20);
    }

    v0[18] = v26;
    v31 = v0[14];
    v30 = v0[15];
    v32 = v0[12];
    v33 = v0[13];
    v34 = v0[10];
    v35 = v0[8];
    v36 = v0[6];
    v42(v30, v0[17], v32);
    sub_25272006C(v36, v34, &qword_27F4FC480, &unk_2528C7FA0);
    v37 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v38 = (v31 + *(v35 + 80) + v37) & ~*(v35 + 80);
    v39 = swift_allocObject();
    v0[19] = v39;
    v43(v39 + v37, v30, v32);
    sub_25274AA0C(v34, v39 + v38, &qword_27F4FC480, &unk_2528C7FA0);
    sub_2528BEFC0();
    v40 = swift_task_alloc();
    v0[20] = v40;
    *v40 = v0;
    v40[1] = sub_25279E990;

    return MEMORY[0x28216E998](sub_25279EFA0, v39);
  }
}

uint64_t sub_25279E990(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 168) = a1;

  v4 = swift_task_alloc();
  *(v3 + 176) = v4;
  *v4 = v6;
  v4[1] = sub_25279EADC;

  return sub_25279D1DC(a1);
}

uint64_t sub_25279EADC(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  return MEMORY[0x2822009F8](sub_25279EBDC, 0, 0);
}

uint64_t sub_25279EBDC()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[12];
  v4 = v0[13];

  (*(v4 + 8))(v2, v3);
  v5 = v0[3];

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_25279ECAC(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 192) = a1;

  v4 = swift_task_alloc();
  *(v3 + 200) = v4;
  *v4 = v6;
  v4[1] = sub_25279EDF8;

  return sub_25279D1DC(a1);
}

uint64_t sub_25279EDF8(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;

  return MEMORY[0x2822009F8](sub_25279EEF8, 0, 0);
}

uint64_t sub_25279EEF8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25279EFA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2528BECF0() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8);
  v8 = v2 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_25279C630(a1, v8, a2);
}

uint64_t sub_25279F090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25279F0F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25271F3AC;

  return sub_25279B6D4(a1, a2, v6, v7, v8, v9);
}

unint64_t sub_25279F1C0()
{
  result = qword_27F4FD480;
  if (!qword_27F4FD480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD478, &qword_2528C8010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD480);
  }

  return result;
}

unint64_t sub_25279F27C()
{
  result = qword_27F4FD498;
  if (!qword_27F4FD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD498);
  }

  return result;
}

uint64_t sub_25279F2D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25279F338@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  sub_2528BE6B0();
  v4[0] = v4[1];
  result = sub_252870A60(v4);
  *a2 = result;
  return result;
}

uint64_t sub_25279F404@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v3 = sub_2528C0390();
  v4 = *(v3 - 8);
  v29 = v3;
  v30 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = sub_2528C03A0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = sub_2528C03B0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 16);
  v31 = a1;
  v21(v20, a1, v17);
  v22 = (*(v18 + 88))(v20, v17);
  if (v22 == *MEMORY[0x277D16818])
  {
    (*(v18 + 96))(v20, v17);
    (*(v11 + 32))(v16, v20, v10);
    (*(v11 + 16))(v14, v16, v10);
    v23 = (*(v11 + 88))(v14, v10);
    if (v23 == *MEMORY[0x277D16800])
    {
      (*(v18 + 8))(v31, v17);
      result = (*(v11 + 8))(v16, v10);
      v25 = 20;
LABEL_26:
      *v32 = v25;
      return result;
    }

    if (v23 == *MEMORY[0x277D16808])
    {
      (*(v18 + 8))(v31, v17);
      result = (*(v11 + 8))(v16, v10);
      v25 = 3;
      goto LABEL_26;
    }

    if (v23 == *MEMORY[0x277D16810])
    {
      (*(v18 + 8))(v31, v17);
      result = (*(v11 + 8))(v16, v10);
      v25 = 4;
      goto LABEL_26;
    }

    if (v23 == *MEMORY[0x277D167F8])
    {
      (*(v18 + 8))(v31, v17);
      result = (*(v11 + 8))(v16, v10);
      v25 = 1;
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  if (v22 != *MEMORY[0x277D167F0])
  {
    if (v22 == *MEMORY[0x277D16820])
    {
      result = (*(v18 + 8))(v31, v17);
      v25 = 2;
      goto LABEL_26;
    }

    sub_2528C1050();
    __break(1u);
LABEL_46:
    sub_2528C1050();
    __break(1u);
    goto LABEL_47;
  }

  (*(v18 + 96))(v20, v17);
  v27 = v29;
  v26 = v30;
  (*(v30 + 32))(v9, v20, v29);
  (*(v26 + 16))(v7, v9, v27);
  v28 = (*(v26 + 88))(v7, v27);
  if (v28 == *MEMORY[0x277D167D8])
  {
    v25 = 6;
LABEL_25:
    (*(v18 + 8))(v31, v17);
    result = (*(v26 + 8))(v9, v27);
    goto LABEL_26;
  }

  if (v28 == *MEMORY[0x277D167E8])
  {
    v25 = 5;
    goto LABEL_25;
  }

  if (v28 == *MEMORY[0x277D16798])
  {
    v25 = 7;
    goto LABEL_25;
  }

  if (v28 == *MEMORY[0x277D16788])
  {
    v25 = 8;
    goto LABEL_25;
  }

  if (v28 == *MEMORY[0x277D167A0])
  {
    v25 = 10;
    goto LABEL_25;
  }

  if (v28 == *MEMORY[0x277D167B0])
  {
    v25 = 9;
    goto LABEL_25;
  }

  if (v28 == *MEMORY[0x277D167A8])
  {
    (*(v18 + 8))(v31, v17);
    result = (*(v26 + 8))(v9, v27);
    v25 = 11;
    goto LABEL_26;
  }

  if (v28 == *MEMORY[0x277D167D0])
  {
    (*(v18 + 8))(v31, v17);
    result = (*(v26 + 8))(v9, v27);
    v25 = 12;
    goto LABEL_26;
  }

  if (v28 == *MEMORY[0x277D16778])
  {
    (*(v18 + 8))(v31, v17);
    result = (*(v26 + 8))(v9, v27);
    v25 = 13;
    goto LABEL_26;
  }

  if (v28 == *MEMORY[0x277D167C0])
  {
    (*(v18 + 8))(v31, v17);
    result = (*(v26 + 8))(v9, v27);
    v25 = 14;
    goto LABEL_26;
  }

  if (v28 == *MEMORY[0x277D167B8])
  {
    (*(v18 + 8))(v31, v17);
    result = (*(v26 + 8))(v9, v27);
    v25 = 15;
    goto LABEL_26;
  }

  if (v28 == *MEMORY[0x277D167C8])
  {
    (*(v18 + 8))(v31, v17);
    result = (*(v26 + 8))(v9, v27);
    v25 = 16;
    goto LABEL_26;
  }

  if (v28 == *MEMORY[0x277D16790])
  {
    (*(v18 + 8))(v31, v17);
    result = (*(v30 + 8))(v9, v29);
    v25 = 17;
    goto LABEL_26;
  }

  if (v28 == *MEMORY[0x277D16780])
  {
    (*(v18 + 8))(v31, v17);
    result = (*(v30 + 8))(v9, v29);
    v25 = 18;
    goto LABEL_26;
  }

  if (v28 == *MEMORY[0x277D167E0])
  {
    (*(v18 + 8))(v31, v17);
    result = (*(v30 + 8))(v9, v29);
    v25 = 19;
    goto LABEL_26;
  }

LABEL_47:
  result = sub_2528C1050();
  __break(1u);
  return result;
}

uint64_t sub_25279FC6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v3 = sub_2528C03B0();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v56 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - v6;
  v8 = sub_2528C0360();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v48 - v11;
  v12 = sub_2528C0330();
  v13 = *(v12 - 8);
  v53 = v12;
  v54 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v48 - v17;
  v18 = sub_2528BFDF0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v48 - v23;
  v25 = sub_2528BFE00();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v26 + 16);
  v59 = a1;
  v29(v28, a1, v25);
  v30 = (*(v26 + 88))(v28, v25);
  if (v30 != *MEMORY[0x277D163A8])
  {
    if (v30 == *MEMORY[0x277D16388])
    {
      result = (*(v26 + 8))(v59, v25);
LABEL_13:
      v37 = 2;
      goto LABEL_14;
    }

    sub_2528C1050();
    __break(1u);
    goto LABEL_45;
  }

  (*(v26 + 96))(v28, v25);
  (*(v19 + 32))(v24, v28, v18);
  (*(v19 + 16))(v22, v24, v18);
  v31 = (*(v19 + 88))(v22, v18);
  v32 = v18;
  if (v31 == *MEMORY[0x277D16390])
  {
    (*(v19 + 96))(v22, v18);
    v34 = v57;
    v33 = v58;
    (*(v57 + 32))(v7, v22, v58);
    v35 = v56;
    (*(v34 + 16))(v56, v7, v33);
    sub_25279F404(v35, &v61);
    (*(v26 + 8))(v59, v25);
    (*(v34 + 8))(v7, v33);
    result = (*(v19 + 8))(v24, v32);
    v37 = v61;
LABEL_14:
    *v60 = v37;
    return result;
  }

  if (v31 != *MEMORY[0x277D16398])
  {
    if (v31 == *MEMORY[0x277D163A0])
    {
      (*(v19 + 96))(v22, v18);
      v43 = v50;
      v42 = v51;
      v44 = v52;
      (*(v51 + 32))(v50, v22, v52);
      v45 = v49;
      (*(v42 + 16))(v49, v43, v44);
      v46 = (*(v42 + 88))(v45, v44);
      if (v46 == *MEMORY[0x277D16770])
      {
        goto LABEL_11;
      }

      if (v46 == *MEMORY[0x277D16750])
      {
        (*(v26 + 8))(v59, v25);
        (*(v42 + 8))(v43, v44);
        result = (*(v19 + 8))(v24, v32);
        v37 = 4;
        goto LABEL_14;
      }

      if (v46 == *MEMORY[0x277D16760])
      {
LABEL_11:
        (*(v26 + 8))(v59, v25);
        (*(v42 + 8))(v43, v44);
        goto LABEL_12;
      }

      if (v46 == *MEMORY[0x277D16758] || v46 == *MEMORY[0x277D16768])
      {
        (*(v26 + 8))(v59, v25);
        (*(v42 + 8))(v43, v44);
        result = (*(v19 + 8))(v24, v32);
        v37 = 1;
        goto LABEL_14;
      }

      goto LABEL_46;
    }

LABEL_45:
    sub_2528C1050();
    __break(1u);
LABEL_46:
    sub_2528C1050();
    __break(1u);
    goto LABEL_47;
  }

  (*(v19 + 96))(v22, v18);
  v39 = v54;
  v38 = v55;
  v40 = v53;
  (*(v54 + 32))(v55, v22, v53);
  (*(v39 + 16))(v16, v38, v40);
  v41 = (*(v39 + 88))(v16, v40);
  if (v41 == *MEMORY[0x277D16748])
  {
    (*(v26 + 8))(v59, v25);
    (*(v39 + 8))(v38, v40);
LABEL_12:
    result = (*(v19 + 8))(v24, v32);
    goto LABEL_13;
  }

  v47 = v24;
  if (v41 == *MEMORY[0x277D166F0])
  {
    v37 = 4;
LABEL_39:
    (*(v26 + 8))(v59, v25);
    (*(v39 + 8))(v55, v40);
    result = (*(v19 + 8))(v47, v32);
    goto LABEL_14;
  }

  if (v41 == *MEMORY[0x277D16718])
  {
    v37 = 2;
    goto LABEL_39;
  }

  if (v41 == *MEMORY[0x277D166F8])
  {
    v37 = 1;
    goto LABEL_39;
  }

  if (v41 == *MEMORY[0x277D16740])
  {
    v37 = 5;
    goto LABEL_39;
  }

  if (v41 == *MEMORY[0x277D16710])
  {
    v37 = 7;
    goto LABEL_39;
  }

  if (v41 == *MEMORY[0x277D16708])
  {
    v37 = 8;
    goto LABEL_39;
  }

  if (v41 == *MEMORY[0x277D16720])
  {
    v37 = 10;
    goto LABEL_39;
  }

  if (v41 == *MEMORY[0x277D16730])
  {
    v37 = 9;
    goto LABEL_39;
  }

  if (v41 == *MEMORY[0x277D16728])
  {
    v37 = 11;
    goto LABEL_39;
  }

  if (v41 == *MEMORY[0x277D16738])
  {
    (*(v26 + 8))(v59, v25);
    (*(v39 + 8))(v55, v40);
    result = (*(v19 + 8))(v24, v32);
    v37 = 12;
    goto LABEL_14;
  }

  if (v41 == *MEMORY[0x277D16700])
  {
    (*(v26 + 8))(v59, v25);
    (*(v54 + 8))(v55, v40);
    result = (*(v19 + 8))(v24, v32);
    v37 = 13;
    goto LABEL_14;
  }

LABEL_47:
  result = sub_2528C1050();
  __break(1u);
  return result;
}

uint64_t sub_2527A0688@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result > 2002)
  {
    switch(result)
    {
      case 2003:
        *a2 = 17;
        break;
      case 2404:
        *a2 = 16;
        break;
      case 2405:
        *a2 = 18;
        break;
      default:
LABEL_22:
        v2 = 20;
LABEL_23:
        *a2 = v2;
        break;
    }
  }

  else
  {
    v2 = 4;
    switch(result)
    {
      case 1:
      case 31:
      case 95:
        *a2 = 19;
        break;
      case 4:
        goto LABEL_23;
      case 5:
        *a2 = 7;
        break;
      case 8:
        *a2 = 9;
        break;
      case 10:
        *a2 = 15;
        break;
      case 15:
        *a2 = 8;
        break;
      case 25:
        *a2 = 13;
        break;
      case 44:
        *a2 = 6;
        break;
      case 45:
        *a2 = 5;
        break;
      case 63:
        *a2 = 10;
        break;
      case 64:
        *a2 = 12;
        break;
      case 65:
        *a2 = 11;
        break;
      case 82:
        *a2 = 14;
        break;
      case 88:
        *a2 = 3;
        break;
      default:
        goto LABEL_22;
    }
  }

  return result;
}

uint64_t sub_2527A07A4()
{
  sub_2528C1130();
  MEMORY[0x2530A87A0](0);
  return sub_2528C1180();
}

uint64_t sub_2527A0810(uint64_t a1)
{
  sub_2528C1130();
  MEMORY[0x2530A87A0](0);
  return sub_2528C1180();
}

uint64_t sub_2527A0850(uint64_t a1)
{
  v2 = sub_2527A2E9C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2527A088C(uint64_t a1)
{
  v2 = sub_2527A2E9C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2527A0910()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD620, &qword_2528C8808);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD418, &unk_2528C8810) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C80D0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v4[6 * v1] = 6;
  sub_2528BE8C0();
  v4[7 * v1] = 7;
  sub_2528BE8C0();
  v4[8 * v1] = 8;
  sub_2528BE8C0();
  v4[9 * v1] = 9;
  sub_2528BE8C0();
  v4[10 * v1] = 10;
  sub_2528BE8C0();
  v4[11 * v1] = 11;
  sub_2528BE8C0();
  v4[12 * v1] = 12;
  sub_2528BE8C0();
  v4[13 * v1] = 13;
  sub_2528BE8C0();
  v4[14 * v1] = 14;
  sub_2528BE8C0();
  v4[15 * v1] = 15;
  sub_2528BE8C0();
  v4[16 * v1] = 16;
  sub_2528BE8C0();
  v4[17 * v1] = 17;
  sub_2528BE8C0();
  v4[18 * v1] = 18;
  sub_2528BE8C0();
  v4[19 * v1] = 19;
  sub_2528BE8C0();
  v5 = sub_25278E364(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27F4FD4D0 = v5;
  return result;
}

uint64_t HomeError.localizedStringResource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2528BE910();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = *v1;
  if (qword_27F4FB698 != -1)
  {
    v19 = *v1;
    swift_once();
    v10 = v19;
  }

  v11 = off_27F4FD4D0;
  if (*(off_27F4FD4D0 + 2) && (v12 = sub_252785F90(v10), (v13 & 1) != 0))
  {
    (*(v4 + 16))(v6, v11[7] + *(v4 + 72) * v12, v3);
    sub_2528BE8F0();
    (*(v4 + 8))(v6, v3);
    v14 = sub_2528BEC40();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v9, 0, 1, v14);
    return (*(v15 + 32))(a1, v9, v14);
  }

  else
  {
    v17 = sub_2528BEC40();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    sub_2528BEC20();
    result = (*(v18 + 48))(v9, 1, v17);
    if (result != 1)
    {
      return sub_2527A2150(v9);
    }
  }

  return result;
}

unint64_t HomeError.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
    case 0xB:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 7:
    case 0x12:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0xD000000000000018;
      break;
    case 0xC:
      result = 0xD000000000000020;
      break;
    case 0xE:
      result = 0x6F4C656369766564;
      break;
    case 0xF:
      result = 0x6544737365636361;
      break;
    case 0x10:
      result = 0xD000000000000010;
      break;
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 0x13:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t sub_2527A1388@<X0>(unint64_t *a1@<X8>)
{
  result = HomeError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2527A13D8(uint64_t a1)
{
  v2 = sub_252746B7C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527A14A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2528BE9F0();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2527A153C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD618, &qword_2528C87F8);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD408, &qword_2528C8800) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C80D0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v4[6 * v1] = 6;
  sub_2528BE8C0();
  v4[7 * v1] = 7;
  sub_2528BE8C0();
  v4[8 * v1] = 8;
  sub_2528BE8C0();
  v4[9 * v1] = 9;
  sub_2528BE8C0();
  v4[10 * v1] = 10;
  sub_2528BE8C0();
  v4[11 * v1] = 11;
  sub_2528BE8C0();
  v4[12 * v1] = 12;
  sub_2528BE8C0();
  v4[13 * v1] = 13;
  sub_2528BE8C0();
  v4[14 * v1] = 14;
  sub_2528BE8C0();
  v4[15 * v1] = 15;
  sub_2528BE8C0();
  v4[16 * v1] = 16;
  sub_2528BE8C0();
  v4[17 * v1] = 17;
  sub_2528BE8C0();
  v4[18 * v1] = 18;
  sub_2528BE8C0();
  v4[19 * v1] = 19;
  sub_2528BE8C0();
  v5 = sub_25278E574(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FD4F0 = v5;
  return result;
}

double sub_2527A1A10(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

uint64_t sub_2527A1A84@<X0>(char *a4@<X8>)
{
  v5 = sub_2528C1070();

  v7 = 0;
  v8 = 2;
  switch(v5)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v7 = 1;
LABEL_3:
      v8 = v7;
      break;
    case 2:
      break;
    case 3:
      v8 = 3;
      break;
    case 4:
      v8 = 4;
      break;
    case 5:
      v8 = 5;
      break;
    case 6:
      v8 = 6;
      break;
    case 7:
      v8 = 7;
      break;
    case 8:
      v8 = 8;
      break;
    case 9:
      v8 = 9;
      break;
    case 10:
      v8 = 10;
      break;
    case 11:
      v8 = 11;
      break;
    case 12:
      v8 = 12;
      break;
    case 13:
      v8 = 13;
      break;
    case 14:
      v8 = 14;
      break;
    case 15:
      v8 = 15;
      break;
    case 16:
      v8 = 16;
      break;
    case 17:
      v8 = 17;
      break;
    case 18:
      v8 = 18;
      break;
    case 19:
      v8 = 19;
      break;
    default:
      v8 = 20;
      break;
  }

  *a4 = v8;
  return result;
}

unint64_t DeviceError.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      return result;
    case 3:
    case 0xF:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0x6B63757453637672;
      break;
    case 6:
    case 0x13:
      result = 0xD00000000000001BLL;
      break;
    case 7:
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x4274737544637672;
      break;
    case 9:
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xD:
      result = 0x6574746142637672;
      break;
    case 0xE:
      result = 0xD000000000000018;
      break;
    case 0x10:
      result = 0xD000000000000018;
      break;
    case 0x11:
      result = 0x6C65656857637672;
      break;
    case 0x12:
      result = 0x6873757242637672;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_2527A1DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

uint64_t sub_2527A1EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_2528C1130();
  a3(v4);
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527A1F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_2528C0A40();
}

uint64_t sub_2527A1FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_2528C1130();
  a4(v5);
  sub_2528C0A40();

  return sub_2528C1180();
}

unint64_t sub_2527A2038@<X0>(unint64_t *a1@<X8>)
{
  result = DeviceError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2527A2060(uint64_t a1)
{
  v2 = sub_2527A2824();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527A20D0(uint64_t a1)
{
  v2 = sub_2527A28E4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527A2150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2527A21BC()
{
  result = qword_27F4FD4F8;
  if (!qword_27F4FD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD4F8);
  }

  return result;
}

unint64_t sub_2527A2214()
{
  result = qword_27F4FD500;
  if (!qword_27F4FD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD500);
  }

  return result;
}

unint64_t sub_2527A226C()
{
  result = qword_27F4FD508;
  if (!qword_27F4FD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD508);
  }

  return result;
}

unint64_t sub_2527A22C4()
{
  result = qword_27F4FD510;
  if (!qword_27F4FD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD510);
  }

  return result;
}

unint64_t sub_2527A231C()
{
  result = qword_27F4FD518;
  if (!qword_27F4FD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD518);
  }

  return result;
}

unint64_t sub_2527A2370()
{
  result = qword_27F4FD520;
  if (!qword_27F4FD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD520);
  }

  return result;
}

unint64_t sub_2527A23C4()
{
  result = qword_27F4FD528;
  if (!qword_27F4FD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD528);
  }

  return result;
}

unint64_t sub_2527A241C()
{
  result = qword_27F4FD530;
  if (!qword_27F4FD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD530);
  }

  return result;
}

unint64_t sub_2527A248C()
{
  result = qword_27F4FD538;
  if (!qword_27F4FD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD538);
  }

  return result;
}

unint64_t sub_2527A24E4()
{
  result = qword_27F4FD540;
  if (!qword_27F4FD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD540);
  }

  return result;
}

unint64_t sub_2527A253C()
{
  result = qword_27F4FD548;
  if (!qword_27F4FD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD548);
  }

  return result;
}

unint64_t sub_2527A25C4()
{
  result = qword_27F4FD560;
  if (!qword_27F4FD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD560);
  }

  return result;
}

unint64_t sub_2527A261C()
{
  result = qword_27F4FD568;
  if (!qword_27F4FD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD568);
  }

  return result;
}

unint64_t sub_2527A2674()
{
  result = qword_27F4FD570;
  if (!qword_27F4FD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD570);
  }

  return result;
}

unint64_t sub_2527A26CC()
{
  result = qword_27F4FD578;
  if (!qword_27F4FD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD578);
  }

  return result;
}

unint64_t sub_2527A2724()
{
  result = qword_27F4FD580;
  if (!qword_27F4FD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD580);
  }

  return result;
}

unint64_t sub_2527A2778()
{
  result = qword_27F4FD588;
  if (!qword_27F4FD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD588);
  }

  return result;
}

unint64_t sub_2527A27CC()
{
  result = qword_27F4FD590;
  if (!qword_27F4FD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD590);
  }

  return result;
}

unint64_t sub_2527A2824()
{
  result = qword_27F4FD598;
  if (!qword_27F4FD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD598);
  }

  return result;
}

unint64_t sub_2527A28E4()
{
  result = qword_27F4FD5A0;
  if (!qword_27F4FD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD5A0);
  }

  return result;
}

unint64_t sub_2527A293C()
{
  result = qword_27F4FD5A8;
  if (!qword_27F4FD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD5A8);
  }

  return result;
}

unint64_t sub_2527A2994()
{
  result = qword_27F4FD5B0;
  if (!qword_27F4FD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD5B0);
  }

  return result;
}

unint64_t sub_2527A29EC()
{
  result = qword_27F4FD5B8;
  if (!qword_27F4FD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD5B8);
  }

  return result;
}

uint64_t sub_2527A2A70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for HomeAppIntentError(uint64_t a1)
{
  result = qword_27F4FD5D0;
  if (!qword_27F4FD5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2527A2B10(uint64_t a1)
{
  sub_2527A2BA0(319);
  if (v1 <= 0x3F)
  {
    sub_2527A2C2C();
    if (v2 <= 0x3F)
    {
      sub_2527A2CC4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2527A2BA0(uint64_t a1)
{
  if (!qword_27F4FD5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC628, &qword_2528C4750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD5E8, &qword_2528C8700);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4FD5E0);
    }
  }
}

void sub_2527A2C2C()
{
  if (!qword_27F4FD5F0)
  {
    sub_2527A2C74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FD5F0);
    }
  }
}

void sub_2527A2C74()
{
  if (!qword_27F4FD5F8)
  {
    v0 = sub_2528C0DC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FD5F8);
    }
  }
}

void sub_2527A2CC4(uint64_t a1)
{
  if (!qword_27F4FD600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD608, &qword_2528C8708);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4FD600);
    }
  }
}

uint64_t sub_2527A2D4C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2527A2DDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2527A2E9C()
{
  result = qword_27F4FD610;
  if (!qword_27F4FD610)
  {
    type metadata accessor for HomeAppIntentError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD610);
  }

  return result;
}

unint64_t sub_2527A2F08()
{
  result = qword_27F4FD628;
  if (!qword_27F4FD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD628);
  }

  return result;
}

char *sub_2527A2F84(char *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for DeviceEntity(0);
      v12 = *(v10 - 8);
      result = (v10 - 8);
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = (v6)(&v20, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if ((v21 & 1) == 0)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v13 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252737ABC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 2);
    v15 = *(v8 + 3);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v19 = v14 + 1;
      v17 = v8;
      v18 = *(v8 + 2);
      result = sub_252737ABC((v15 > 1), v14 + 1, 1, v17);
      v14 = v18;
      v16 = v19;
      v8 = result;
    }

    *(v8 + 2) = v16;
    *&v8[8 * v14 + 32] = v13;
  }

  while (v7 != v4);
  return v8;
}

void *sub_2527A3118(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6B8, &unk_2528D1AC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_2528BFD30();
  v10 = MEMORY[0x28223BE20](v9);
  v33 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v27 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = (a3 + 32);
  v16 = (v12 + 48);
  v30 = v12;
  v32 = (v12 + 32);
  v17 = MEMORY[0x277D84F90];
  v28 = v9;
  v29 = a1;
  v27 = (v12 + 48);
  while (1)
  {
    v18 = *v15++;
    v35 = v18;
    a1(&v35);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_2527213D8(v8, &qword_27F4FD6B8, &unk_2528D1AC0);
    }

    else
    {
      v19 = v31;
      v20 = *v32;
      (*v32)(v31, v8, v9);
      v20(v33, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_252737BDC(0, v17[2] + 1, 1, v17);
      }

      v22 = v17[2];
      v21 = v17[3];
      v23 = v30;
      if (v22 >= v21 >> 1)
      {
        v25 = sub_252737BDC((v21 > 1), v22 + 1, 1, v17);
        v23 = v30;
        v17 = v25;
      }

      v17[2] = v22 + 1;
      v24 = v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v22;
      v9 = v28;
      v20(v24, v33, v28);
      a1 = v29;
      v16 = v27;
    }

    if (!--v14)
    {
      return v17;
    }
  }

  return v17;
}

void sub_2527A33EC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v41 = type metadata accessor for DeviceEntity(0);
  v8 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v33 - v11;
  v12 = sub_2528BFB20();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 64);
  v21 = (v18 + 63) >> 6;
  v42 = v14 + 16;
  v43 = v14;
  v46 = (v14 + 8);
  v37 = v8;
  v40 = (v8 + 48);
  v22 = v13;
  v47 = a3;

  v23 = 0;
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v43 + 16))(v16, *(v47 + 56) + *(v43 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v22);
    v45(v16);
    if (v3)
    {
      (*v46)(v16, v22);

      return;
    }

    v20 &= v20 - 1;
    (*v46)(v16, v22);
    if ((*v40)(v7, 1, v41) == 1)
    {
      sub_2527213D8(v7, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v35 = v22;
      v25 = v36;
      sub_2527AAAB4(v7, v36, type metadata accessor for DeviceEntity);
      sub_2527AAAB4(v25, v38, type metadata accessor for DeviceEntity);
      v26 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_252738010(0, v26[2] + 1, 1, v26);
      }

      v28 = v26[2];
      v27 = v26[3];
      v39 = v26;
      v29 = v28 + 1;
      v22 = v35;
      if (v28 >= v27 >> 1)
      {
        v34 = v28;
        v32 = sub_252738010((v27 > 1), v28 + 1, 1, v39);
        v28 = v34;
        v39 = v32;
      }

      v30 = v38;
      v31 = v39;
      v39[2] = v29;
      sub_2527AAAB4(v30, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28, type metadata accessor for DeviceEntity);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

char *sub_2527A3834(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6B0, &qword_2528C8928);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_2528BFD50();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(type metadata accessor for DeviceEntity(0) - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x277D84F90];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_2527213D8(v8, &qword_27F4FD6B0, &qword_2528C8928);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_2527382CC(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_2527382CC((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

void sub_2527A3B60(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v43 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v40 = type metadata accessor for DeviceEntity(0);
  v9 = *(v40 - 8);
  v10 = MEMORY[0x28223BE20](v40);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v35 = &v35 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6C8, &unk_2528D3C60);
  MEMORY[0x28223BE20](v42);
  v14 = &v35 - v13;
  v15 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 64);
  v19 = (v16 + 63) >> 6;
  v36 = v9;
  v39 = (v9 + 48);
  v44 = a3;

  v20 = 0;
  v38 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v20;
    if (!v18)
    {
      break;
    }

    v22 = v8;
    v45 = v4;
LABEL_10:
    v23 = __clz(__rbit64(v18)) | (v20 << 6);
    v24 = v44;
    v25 = *(v44 + 48);
    v26 = sub_2528BECF0();
    (*(*(v26 - 8) + 16))(v14, v25 + *(*(v26 - 8) + 72) * v23, v26);
    v27 = *(v24 + 56);
    v28 = sub_2528BF9D0();
    (*(*(v28 - 8) + 16))(&v14[*(v42 + 48)], v27 + *(*(v28 - 8) + 72) * v23, v28);
    v8 = v22;
    v29 = v45;
    v43(v14);
    v4 = v29;
    if (v29)
    {
      sub_2527213D8(v14, &qword_27F4FD6C8, &unk_2528D3C60);

LABEL_19:

      return;
    }

    v18 &= v18 - 1;
    sub_2527213D8(v14, &qword_27F4FD6C8, &unk_2528D3C60);
    if ((*v39)(v22, 1, v40) == 1)
    {
      sub_2527213D8(v22, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v30 = v35;
      sub_2527AAAB4(v22, v35, type metadata accessor for DeviceEntity);
      sub_2527AAAB4(v30, v37, type metadata accessor for DeviceEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_252738010(0, v38[2] + 1, 1, v38);
      }

      v32 = v38[2];
      v31 = v38[3];
      if (v32 >= v31 >> 1)
      {
        v38 = sub_252738010((v31 > 1), v32 + 1, 1, v38);
      }

      v33 = v37;
      v34 = v38;
      v38[2] = v32 + 1;
      sub_2527AAAB4(v33, v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v32, type metadata accessor for DeviceEntity);
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v19)
    {
      goto LABEL_19;
    }

    v18 = *(v15 + 8 * v20);
    ++v21;
    if (v18)
    {
      v22 = v8;
      v45 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_2527A3FBC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD658, &qword_2528D35A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v49 = sub_2528BFC70();
  v8 = *(v49 - 8);
  v9 = MEMORY[0x28223BE20](v49);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v34 - v11;
  v12 = sub_2528BECF0();
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v44 = v14 + 16;
  v45 = v14;
  v48 = (v14 + 8);
  v43 = (v8 + 48);
  v38 = v8;
  v39 = (v8 + 32);
  v50 = a3;
  v22 = v13;

  v23 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v45 + 16))(v16, *(v50 + 48) + *(v45 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v22);
    v47(v16);
    if (v3)
    {
      (*v48)(v16, v22);

      return;
    }

    v20 &= v20 - 1;
    (*v48)(v16, v22);
    if ((*v43)(v7, 1, v49) == 1)
    {
      sub_2527213D8(v7, &qword_27F4FD658, &qword_2528D35A0);
    }

    else
    {
      v37 = v22;
      v25 = *v39;
      (*v39)(v40, v7, v49);
      v25(v41, v40, v49);
      v26 = v25;
      v27 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_25273831C(0, v27[2] + 1, 1, v27);
      }

      v29 = v27[2];
      v28 = v27[3];
      v42 = v27;
      v30 = v29 + 1;
      v22 = v37;
      if (v29 >= v28 >> 1)
      {
        v35 = v29;
        v36 = v29 + 1;
        v33 = sub_25273831C((v28 > 1), v29 + 1, 1, v42);
        v29 = v35;
        v30 = v36;
        v42 = v33;
      }

      v31 = v41;
      v32 = v42;
      v42[2] = v30;
      v26(&v32[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v29], v31, v49);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2527A4408(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD698, &qword_2528C8918);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v41 = type metadata accessor for ZoneEntity(0);
  v8 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v33 - v11;
  v12 = sub_2528BF070();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v42 = v14 + 16;
  v43 = v14;
  v46 = (v14 + 8);
  v37 = v8;
  v40 = (v8 + 48);
  v22 = v13;
  v47 = a3;

  v23 = 0;
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v43 + 16))(v16, *(v47 + 48) + *(v43 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v22);
    v45(v16);
    if (v3)
    {
      (*v46)(v16, v22);

      return;
    }

    v20 &= v20 - 1;
    (*v46)(v16, v22);
    if ((*v40)(v7, 1, v41) == 1)
    {
      sub_2527213D8(v7, &qword_27F4FD698, &qword_2528C8918);
    }

    else
    {
      v35 = v22;
      v25 = v36;
      sub_2527AAAB4(v7, v36, type metadata accessor for ZoneEntity);
      sub_2527AAAB4(v25, v38, type metadata accessor for ZoneEntity);
      v26 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_252738344(0, v26[2] + 1, 1, v26);
      }

      v28 = v26[2];
      v27 = v26[3];
      v39 = v26;
      v29 = v28 + 1;
      v22 = v35;
      if (v28 >= v27 >> 1)
      {
        v34 = v28;
        v32 = sub_252738344((v27 > 1), v28 + 1, 1, v39);
        v28 = v34;
        v39 = v32;
      }

      v30 = v38;
      v31 = v39;
      v39[2] = v29;
      sub_2527AAAB4(v30, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28, type metadata accessor for ZoneEntity);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}