unint64_t sub_24A78A2A4()
{
  result = qword_27EF5E578;
  if (!qword_27EF5E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E578);
  }

  return result;
}

uint64_t sub_24A78A2F8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(&qword_27EF5E540, &unk_24A8384C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A78A370()
{
  result = qword_27EF5E590;
  if (!qword_27EF5E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E590);
  }

  return result;
}

unint64_t sub_24A78A3C4()
{
  result = qword_27EF5E598;
  if (!qword_27EF5E598)
  {
    sub_24A6CCDC0(&qword_27EF5E520, &qword_24A8384B0);
    sub_24A67F050(&qword_27EF5E5A0, type metadata accessor for FMIPUnknownItemUTMetadata, &protocol conformance descriptor for FMIPUnknownItemUTMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E598);
  }

  return result;
}

unint64_t sub_24A78A47C()
{
  result = qword_27EF5E5A8;
  if (!qword_27EF5E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E5A8);
  }

  return result;
}

unint64_t sub_24A78A4D4()
{
  result = qword_27EF5E5B0;
  if (!qword_27EF5E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E5B0);
  }

  return result;
}

unint64_t sub_24A78A528()
{
  result = qword_27EF5E5B8;
  if (!qword_27EF5E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E5B8);
  }

  return result;
}

unint64_t sub_24A78A580()
{
  result = qword_27EF5E5C0;
  if (!qword_27EF5E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E5C0);
  }

  return result;
}

unint64_t sub_24A78A5D8()
{
  result = qword_27EF5E5C8;
  if (!qword_27EF5E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E5C8);
  }

  return result;
}

unint64_t sub_24A78A630()
{
  result = qword_27EF5E5D0;
  if (!qword_27EF5E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E5D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPUnknownItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPUnknownItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A78A878()
{
  result = qword_27EF5E608;
  if (!qword_27EF5E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E608);
  }

  return result;
}

unint64_t sub_24A78A8D0()
{
  result = qword_27EF5E610;
  if (!qword_27EF5E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E610);
  }

  return result;
}

unint64_t sub_24A78A928()
{
  result = qword_27EF5E618;
  if (!qword_27EF5E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E618);
  }

  return result;
}

unint64_t sub_24A78A97C(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E6F8, &qword_24A838D20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_24A6BBA94(&qword_27EF5E698, &qword_24A838CA8);
    v7 = sub_24A82D974();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24A67E964(v9, v5, &qword_27EF5E6F8, &qword_24A838D20);
      result = sub_24A77EDF8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24A82CAA4();
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

unint64_t sub_24A78AB88(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E6E8, &qword_24A838D10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_24A6BBA94(&qword_27EF5E670, &qword_24A838C78);
    v7 = sub_24A82D974();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24A67E964(v9, v5, &qword_27EF5E6E8, &qword_24A838D10);
      result = sub_24A77EDF8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24A82CAA4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
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

unint64_t sub_24A78AD70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5E638, &qword_24A838C28);
    v3 = sub_24A82D974();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A67E964(v4, &v11, &unk_27EF5E190, &unk_24A838C30);
      v5 = v11;
      result = sub_24A77EF00(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24A6A50DC(&v12, (v3[7] + 32 * result));
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

unint64_t sub_24A78AE98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5E6B0, &qword_24A838CD0);
    v3 = sub_24A82D974();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A67E964(v4, v10, &qword_27EF5E6B8, &qword_24A838CD8);
      result = sub_24A77EFD4(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_24A6A50DC(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_24A78AFB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A6BBA94(&qword_27EF5E740, &qword_24A838D58);
    v3 = sub_24A82D974();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_24A77F0D4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void *sub_24A78B0B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_24A6BBA94(&qword_27EF5E6A8, &unk_24A838CC0);
  v3 = sub_24A82D974();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_24A77F188(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
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
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_24A77F188(v4);
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

unint64_t sub_24A78B1C0(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E798, &qword_24A838DA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_24A6BBA94(&qword_27EF5E680, &qword_24A838C88);
    v7 = sub_24A82D974();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24A67E964(v9, v5, &qword_27EF5E798, &qword_24A838DA8);
      result = sub_24A77EDF8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24A82CAA4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
      result = sub_24A78B7D0(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for FMIPDeviceLostModeMetadata);
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

unint64_t sub_24A78B400(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_24A6BBA94(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_24A6BBA94(a4, a5);
    v14 = sub_24A82D974();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_24A67E964(v16, v12, a2, v27);
      result = sub_24A77EDF8(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_24A82CAA4();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + v20) = v12[v15];
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

unint64_t sub_24A78B604(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A78B650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A78B768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A78B7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A78B838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A78B898(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A78B908(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A78B978()
{
  result = qword_27EF5E720;
  if (!qword_27EF5E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E720);
  }

  return result;
}

unint64_t sub_24A78B9CC()
{
  result = qword_27EF5E728;
  if (!qword_27EF5E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E728);
  }

  return result;
}

void FMIPLocation.init(safeLocation:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 location];
  v5 = [a1 location];
  v6 = [v5 floor];

  if (v6)
  {
    v7 = [v6 level];

    v8 = v7;
  }

  else
  {
    v8 = -1.0;
  }

  v27 = 1;
  v26 = 0;
  v25 = 1;
  if (qword_27EF5CBF8 != -1)
  {
    swift_once();
  }

  v9 = qword_27EF5E7B8;
  if (qword_27EF5E7B8)
  {
    v10 = qword_27EF5E7B8;
  }

  else
  {
    v10 = v4;
    v9 = 0;
  }

  LODWORD(v24[0]) = 67174401;
  v24[1] = v10;
  *&v24[2] = v8;
  v11 = v9;
  v12 = FMIPLocation.debugDescription.getter();
  v14 = v13;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_281518F88);

  v16 = sub_24A82CD94();
  v17 = sub_24A82D4C4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136380675;
    v20 = sub_24A68761C(v12, v14, v24);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_24A675000, v16, v17, "FMIPLocation: initialized %{private}s", v18, 0xCu);
    sub_24A6876E8(v19);
    MEMORY[0x24C21E1D0](v19, -1, -1);
    MEMORY[0x24C21E1D0](v18, -1, -1);

    v21 = v27;
    v22 = v26;
    v23 = v25;
  }

  else
  {

    v22 = 0;
    v23 = 1;
    v21 = 1;
  }

  *a2 = v21;
  *(a2 + 1) = v22;
  *(a2 + 2) = v23;
  *(a2 + 3) = 4;
  *(a2 + 8) = v10;
  *(a2 + 16) = v8;
}

void FMIPLocation.init(location:shiftedLocation:)(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v23 = *(a1 + 1);
  v8 = *(a1 + 2);
  v27 = *a1;
  v26 = v5;
  v25 = v6;
  if (qword_27EF5CBF8 != -1)
  {
    v21 = a2;
    swift_once();
    a2 = v21;
  }

  v9 = qword_27EF5E7B8;
  v22 = a2;
  if (qword_27EF5E7B8)
  {
    v10 = qword_27EF5E7B8;
  }

  else
  {
    v10 = a2;
    v9 = 0;
  }

  LOBYTE(v24[0]) = v4;
  BYTE1(v24[0]) = v5;
  BYTE2(v24[0]) = v6;
  BYTE3(v24[0]) = v7;
  v24[1] = v10;
  v24[2] = v8;
  v11 = v9;
  v12 = FMIPLocation.debugDescription.getter();
  v14 = v13;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_281518F88);

  v16 = sub_24A82CD94();
  v17 = sub_24A82D4C4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136380675;
    v20 = sub_24A68761C(v12, v14, v24);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_24A675000, v16, v17, "FMIPLocation: initialized %{private}s", v18, 0xCu);
    sub_24A6876E8(v19);
    MEMORY[0x24C21E1D0](v19, -1, -1);
    MEMORY[0x24C21E1D0](v18, -1, -1);

    v4 = v27;
    v5 = v26;
    v6 = v25;
  }

  else
  {
  }

  *a3 = v4;
  *(a3 + 1) = v5;
  *(a3 + 2) = v6;
  *(a3 + 3) = v7;
  *(a3 + 8) = v10;
  *(a3 + 16) = v8;
}

void FMIPLocation.init(beaconLocation:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A82CA34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 latitude];
  v9 = v8;
  [a1 longitude];
  v11 = v10;
  [a1 horizontalAccuracy];
  v13 = v12;
  v14 = [a1 timestamp];
  sub_24A82C9F4();

  v19 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v15 = sub_24A82C994();
  v16 = [v19 initWithCoordinate:v15 altitude:v9 horizontalAccuracy:v11 verticalAccuracy:-1.0 course:v13 speed:-1.0 timestamp:{-1.0, -1.0}];

  v17 = *(v5 + 8);
  v17(v7, v4);
  v18 = [a1 source];
  sub_24A78CB20(&v43);

  LODWORD(v19) = v43;
  v20 = [a1 timestamp];
  sub_24A82C9F4();

  sub_24A82C9C4();
  v22 = v21;
  v17(v7, v4);
  v42 = v22 < -3600.0;
  v41 = 0;
  v40 = 1;
  if (qword_27EF5CBF8 != -1)
  {
    swift_once();
  }

  v23 = qword_27EF5E7B8;
  if (qword_27EF5E7B8)
  {
    v24 = qword_27EF5E7B8;
  }

  else
  {
    v24 = v16;
    v23 = 0;
  }

  LOBYTE(v39[0]) = v22 < -3600.0;
  *(v39 + 1) = 256;
  BYTE3(v39[0]) = v19;
  v39[1] = v24;
  v39[2] = 0xBFF0000000000000;
  v25 = v23;
  v26 = FMIPLocation.debugDescription.getter();
  v28 = v27;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v29 = sub_24A82CDC4();
  sub_24A6797D0(v29, qword_281518F88);

  v30 = sub_24A82CD94();
  v31 = sub_24A82D4C4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    HIDWORD(v38) = v19;
    v19 = v16;
    v34 = v33;
    v39[0] = v33;
    *v32 = 136380675;
    v35 = sub_24A68761C(v26, v28, v39);

    *(v32 + 4) = v35;
    _os_log_impl(&dword_24A675000, v30, v31, "FMIPLocation: initialized %{private}s", v32, 0xCu);
    sub_24A6876E8(v34);
    MEMORY[0x24C21E1D0](v34, -1, -1);
    MEMORY[0x24C21E1D0](v32, -1, -1);

    LOBYTE(v19) = BYTE4(v38);
  }

  else
  {
  }

  v36 = v41;
  v37 = v40;
  *a2 = v42;
  *(a2 + 1) = v36;
  *(a2 + 2) = v37;
  *(a2 + 3) = v19;
  *(a2 + 8) = v24;
  *(a2 + 16) = 0xBFF0000000000000;
}

FMIPCore::FMIPLocationType_optional __swiftcall FMIPLocationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82DC24();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24A78C490()
{
  v0 = FMIPLocationType.rawValue.getter();
  v2 = v1;
  if (v0 == FMIPLocationType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24A82DC04();
  }

  return v5 & 1;
}

uint64_t sub_24A78C52C()
{
  sub_24A82DCC4();
  FMIPLocationType.rawValue.getter();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A78C594(uint64_t a1)
{
  FMIPLocationType.rawValue.getter();
  sub_24A82D094();
}

uint64_t sub_24A78C5F8(uint64_t a1)
{
  sub_24A82DCC4();
  FMIPLocationType.rawValue.getter();
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A78C668@<X0>(unint64_t *a1@<X8>)
{
  result = FMIPLocationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24A78C6C0(unsigned __int8 a1)
{
  v1 = 0x656475746974616CLL;
  if (a1 > 5u)
  {
    v7 = 0x6E6F697469736F70;
    v8 = 0x6D617453656D6974;
    if (a1 != 10)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x6E6F697461636F6CLL;
    if (a1 != 7)
    {
      v9 = 0x64757469676E6F6CLL;
    }

    if (a1 != 6)
    {
      v1 = v9;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6564757469746C61;
    v3 = 0x756363616E497369;
    v4 = 0x646C4F7369;
    if (a1 == 4)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000012;
    if (a1 == 1)
    {
      v5 = 0x76654C726F6F6C66;
    }

    if (a1)
    {
      v2 = v5;
    }

    if (a1 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24A78C85C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24A78C6C0(*a1);
  v5 = v4;
  if (v3 == sub_24A78C6C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A78C8E4()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A78C6C0(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A78C948(uint64_t a1)
{
  sub_24A78C6C0(*v1);
  sub_24A82D094();
}

uint64_t sub_24A78C99C(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  sub_24A78C6C0(v2);
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A78C9FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A78E4A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24A78CA2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A78C6C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A78CA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A78E4A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A78CAA8(uint64_t a1)
{
  v2 = sub_24A688018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A78CAE4(uint64_t a1)
{
  v2 = sub_24A688018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A78CB20@<X0>(char *a2@<X8>)
{
  v3 = sub_24A82CFC4();
  v5 = v4;
  if (v3 == sub_24A82CFC4() && v5 == v6)
  {
    v10 = 7;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_24A82DC04();

  if (v8)
  {
    v10 = 7;
    goto LABEL_9;
  }

  v11 = sub_24A82CFC4();
  v13 = v12;
  if (v11 == sub_24A82CFC4() && v13 == v14)
  {
    v10 = 8;
    goto LABEL_8;
  }

  v16 = sub_24A82DC04();

  if (v16)
  {
    v10 = 8;
    goto LABEL_9;
  }

  v17 = sub_24A82CFC4();
  v19 = v18;
  if (v17 == sub_24A82CFC4() && v19 == v20)
  {
    v10 = 9;
    goto LABEL_8;
  }

  v21 = sub_24A82DC04();

  if (v21)
  {
    v10 = 9;
    goto LABEL_9;
  }

  v22 = sub_24A82CFC4();
  v24 = v23;
  if (v22 == sub_24A82CFC4() && v24 == v25)
  {
    v10 = 10;
    goto LABEL_8;
  }

  v26 = sub_24A82DC04();

  if (v26)
  {
    v10 = 10;
    goto LABEL_9;
  }

  v27 = sub_24A82CFC4();
  v29 = v28;
  if (v27 == sub_24A82CFC4() && v29 == v30)
  {
    v10 = 11;
    goto LABEL_8;
  }

  v31 = sub_24A82DC04();

  if (v31)
  {
    v10 = 11;
    goto LABEL_9;
  }

  v32 = sub_24A82CFC4();
  v34 = v33;
  if (v32 == sub_24A82CFC4() && v34 == v35)
  {
    v10 = 12;
    goto LABEL_8;
  }

  v36 = sub_24A82DC04();

  if (v36)
  {
    v10 = 12;
    goto LABEL_9;
  }

  v37 = sub_24A82CFC4();
  v39 = v38;
  if (v37 == sub_24A82CFC4() && v39 == v40)
  {
    v10 = 14;
    goto LABEL_8;
  }

  v41 = sub_24A82DC04();

  if (v41)
  {
    v10 = 14;
    goto LABEL_9;
  }

  v42 = sub_24A82CFC4();
  v44 = v43;
  if (v42 == sub_24A82CFC4() && v44 == v45)
  {
    v10 = 1;
    goto LABEL_8;
  }

  v46 = sub_24A82DC04();

  if (v46)
  {
    v10 = 1;
    goto LABEL_9;
  }

  v47 = sub_24A82CFC4();
  v49 = v48;
  if (v47 == sub_24A82CFC4() && v49 == v50)
  {
    v10 = 15;
    goto LABEL_8;
  }

  v51 = sub_24A82DC04();

  if (v51)
  {
    v10 = 15;
    goto LABEL_9;
  }

  v52 = sub_24A82CFC4();
  v54 = v53;
  if (v52 == sub_24A82CFC4() && v54 == v55)
  {
    v10 = 18;
    goto LABEL_8;
  }

  v56 = sub_24A82DC04();

  if (v56)
  {
    v10 = 18;
    goto LABEL_9;
  }

  v57 = sub_24A82CFC4();
  v59 = v58;
  if (v57 == sub_24A82CFC4() && v59 == v60)
  {
    v10 = 17;
    goto LABEL_8;
  }

  v61 = sub_24A82DC04();

  if (v61)
  {
    v10 = 17;
    goto LABEL_9;
  }

  v62 = sub_24A82CFC4();
  v64 = v63;
  if (v62 == sub_24A82CFC4() && v64 == v65)
  {
    v10 = 19;
    goto LABEL_8;
  }

  v66 = sub_24A82DC04();

  if (v66)
  {
    v10 = 19;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  *a2 = v10;
  return result;
}

void FMIPLocation.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5E7D0, &unk_24A838E38);
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *(v1 + 1);
  v13 = *(v1 + 2);
  v14 = v7;
  v12 = *(v1 + 3);
  v8 = *(v1 + 8);
  sub_24A67DF6C(a1, a1[3]);
  sub_24A688018();
  sub_24A82DD84();
  v9 = [v8 timestamp];
  if (v9)
  {
    v10 = v9;
    v27 = 5;
    sub_24A82DB14();
    if (!v2)
    {
      v26 = 3;
      sub_24A82DB14();
      v25 = 4;
      sub_24A82DB14();
      v24 = v12;
      FMIPLocationType.rawValue.getter();
      v23 = 9;
      sub_24A82DB04();

      v22 = 1;
      sub_24A82DB24();
      [v8 altitude];
      v21 = 0;
      sub_24A82DB24();
      [v8 coordinate];
      v20 = 6;
      sub_24A82DB24();
      [v8 coordinate];
      v19 = 8;
      sub_24A82DB24();
      [v8 horizontalAccuracy];
      v18 = 2;
      sub_24A82DB24();
      [v8 verticalAccuracy];
      v17 = 11;
      sub_24A82DB24();
      [v10 fm_epoch];
      v16 = 10;
      sub_24A82DB54();
    }

    (*(v15 + 8))(v6, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t FMIPLocation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24A82DCE4();
  sub_24A82DCE4();
  sub_24A82DCE4();
  FMIPLocationType.rawValue.getter();
  sub_24A82D094();

  sub_24A82D5F4();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x24C21D610](*&v3);
}

uint64_t FMIPLocation.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v7[72] = *v0;
  v7[73] = v1;
  v7[74] = v2;
  v7[75] = v3;
  v8 = v4;
  v9 = v5;
  sub_24A82DCC4();
  FMIPLocation.hash(into:)(v7);
  return sub_24A82DD24();
}

uint64_t sub_24A78D5F4()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v7[72] = *v0;
  v7[73] = v1;
  v7[74] = v2;
  v7[75] = v3;
  v8 = v4;
  v9 = v5;
  sub_24A82DCC4();
  FMIPLocation.hash(into:)(v7);
  return sub_24A82DD24();
}

uint64_t sub_24A78D66C(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v8[72] = *v1;
  v8[73] = v2;
  v8[74] = v3;
  v8[75] = v4;
  v9 = v5;
  v10 = v6;
  sub_24A82DCC4();
  FMIPLocation.hash(into:)(v8);
  return sub_24A82DD24();
}

uint64_t CLLocation.isEqual(_:)(uint64_t a1)
{
  v3 = sub_24A82CA34();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  sub_24A718050(a1, v36);
  if (!v37)
  {
    sub_24A6F6C40(v36);
    goto LABEL_12;
  }

  sub_24A679170(0, &qword_27EF5D830, 0x277CE41F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v31 = 0;
    return v31 & 1;
  }

  v10 = v35;
  [v35 coordinate];
  v12 = v11;
  [v1 coordinate];
  if (v12 != v13 || ([v10 coordinate], v15 = v14, objc_msgSend(v1, sel_coordinate), v15 != v16) || (objc_msgSend(v10, sel_altitude), v18 = v17, objc_msgSend(v1, sel_altitude), v18 != v19) || (objc_msgSend(v10, sel_course), v21 = v20, objc_msgSend(v1, sel_course), v21 != v22) || (objc_msgSend(v10, sel_horizontalAccuracy), v24 = v23, objc_msgSend(v1, sel_horizontalAccuracy), v24 != v25) || (objc_msgSend(v10, sel_verticalAccuracy), v27 = v26, objc_msgSend(v1, sel_verticalAccuracy), v27 != v28))
  {

    goto LABEL_12;
  }

  v29 = [v10 timestamp];
  sub_24A82C9F4();

  v30 = [v1 timestamp];
  sub_24A82C9F4();

  v31 = sub_24A82C9E4();
  v32 = *(v4 + 8);
  v32(v7, v3);
  v32(v9, v3);
  return v31 & 1;
}

uint64_t sub_24A78D9A8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_24A82D694();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = CLLocation.isEqual(_:)(v8);

  sub_24A6F6C40(v8);
  return v6 & 1;
}

uint64_t sub_24A78DA20(void *a1)
{
  v1 = a1;
  v2 = CLLocation.hash.getter();

  return v2;
}

uint64_t CLLocation.hash.getter()
{
  v1 = sub_24A82CA34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82DD34();
  [v0 coordinate];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x24C21D610](*&v5);
  [v0 coordinate];
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x24C21D610](*&v7);
  [v0 altitude];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x24C21D610](*&v8);
  [v0 course];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x24C21D610](*&v9);
  [v0 horizontalAccuracy];
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x24C21D610](*&v10);
  [v0 verticalAccuracy];
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x24C21D610](*&v11);
  v12 = [v0 timestamp];
  sub_24A82C9F4();

  sub_24A82CA14();
  (*(v2 + 8))(v4, v1);
  return sub_24A82DD14();
}

uint64_t sub_24A78DC2C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_24A78DC78@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_24A82D1A4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_24A78006C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_24A78006C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_24A82D184();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_24A82D0B4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_24A82D0B4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_24A82D1A4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_24A78006C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_24A82D1A4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_24A78006C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_24A78006C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_24A82D0B4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A78E060(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_24A68761C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **sub_24A78E0BC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = a1[2];
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = a2[2];
  sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
  v10 = 0;
  if ((sub_24A82D5E4() & 1) != 0 && v5 == v9 && ((v2 ^ v6) & 1) == 0 && ((v3 ^ v7) & 1) == 0 && ((v4 ^ v8) & 1) == 0)
  {
    v11 = FMIPLocationType.rawValue.getter();
    v13 = v12;
    if (v11 == FMIPLocationType.rawValue.getter() && v13 == v14)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_24A82DC04();
    }
  }

  return v10 & 1;
}

unint64_t sub_24A78E20C()
{
  result = qword_27EF5E7D8;
  if (!qword_27EF5E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E7D8);
  }

  return result;
}

unint64_t sub_24A78E264()
{
  result = qword_27EF5E7E0;
  if (!qword_27EF5E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E7E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPLocationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMIPLocationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24A78E408(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_24A78E44C()
{
  result = qword_27EF5E7E8;
  if (!qword_27EF5E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E7E8);
  }

  return result;
}

unint64_t sub_24A78E4A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

void sub_24A78E504(void *a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);

  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v2 + 24);

    _os_log_impl(&dword_24A675000, v5, v6, "FMIPGarbageCollector: scheduleAccountVerification alreadyPending?: %{BOOL}d", v7, 8u);
    MEMORY[0x24C21E1D0](v7, -1, -1);

    if (*(v2 + 24))
    {
      return;
    }
  }

  else
  {

    if (*(v2 + 24))
    {
      return;
    }
  }

  if (*(v2 + 40))
  {
    v8 = [a1 userInfo];
    if (v8)
    {
      v9 = v8;
      v10 = sub_24A82CEF4();

      v16 = sub_24A82CFC4();
      v17 = v11;
      sub_24A82D7D4();
      if (*(v10 + 16) && (v12 = sub_24A77EF90(v18), (v13 & 1) != 0))
      {
        sub_24A67E168(*(v10 + 56) + 32 * v12, v19);
        sub_24A78B714(v18);

        if (swift_dynamicCast())
        {
          v14 = *(v2 + 40);
          if (!v14)
          {

            return;
          }

          if (v16 == *(v2 + 32) && v14 == v17)
          {

LABEL_23:
            sub_24A78E7F4();
            return;
          }

          v15 = sub_24A82DC04();

          if (v15)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {

        sub_24A78B714(v18);
      }
    }
  }

  else
  {

    sub_24A78E7F4();
  }
}

uint64_t sub_24A78E7F4()
{
  v1 = v0;
  v2 = sub_24A82CDF4();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24A82CE54();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24A82CE74();
  v5 = *(v32 - 8);
  v6 = MEMORY[0x28223BE20](v32);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = sub_24A82CE04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_281518F88);
  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v1;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24A675000, v16, v17, "FMIPGarbageCollector: Dispatching verification on background", v19, 2u);
    v20 = v19;
    v1 = v18;
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  sub_24A67B054();
  (*(v12 + 104))(v14, *MEMORY[0x277D851A8], v11);
  v31 = sub_24A82D5A4();
  (*(v12 + 8))(v14, v11);
  sub_24A82CE64();
  v21 = v10;
  sub_24A82CE94();
  v22 = *(v5 + 8);
  v23 = v32;
  v22(v8, v32);
  aBlock[4] = sub_24A78F164;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC8488;
  v24 = _Block_copy(aBlock);

  v25 = v33;
  sub_24A82CE24();
  v39 = MEMORY[0x277D84F90];
  sub_24A6FA9B0();
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  v26 = v35;
  v27 = v38;
  sub_24A82D6B4();
  v28 = v31;
  MEMORY[0x24C21CE50](v21, v25, v26, v24);
  _Block_release(v24);

  (*(v37 + 8))(v26, v27);
  (*(v34 + 8))(v25, v36);
  v22(v21, v23);
}

void sub_24A78ECE8(uint64_t a1)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPGarbageCollector: Async verifying account", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  sub_24A67A288();
  *(a1 + 24) = 0;
}

void sub_24A78EDD0()
{
  v27[3] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() defaultManager];
  v25 = *(v0 + 64);
  v26 = v1;
  v24 = *(v25 + 16);
  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if (i >= *(v25 + 16))
      {
        goto LABEL_24;
      }

      v3 = v25 + 32 + 16 * i;
      v5 = *v3;
      v4 = *(v3 + 8);

      v6 = sub_24A82CF94();
      v27[0] = 0;
      v7 = [v26 contentsOfDirectoryAtPath:v6 error:v27];

      v8 = v27[0];
      if (!v7)
      {
        v18 = v27[0];
        goto LABEL_15;
      }

      v9 = sub_24A82D244();
      v10 = v8;

      v11 = *(v9 + 16);
      if (!v11)
      {
LABEL_3:

        continue;
      }

      v12 = 0;
      v13 = (v9 + 40);
      while (1)
      {
        if (v12 >= *(v9 + 16))
        {
          __break(1u);
LABEL_24:
          __break(1u);
        }

        v15 = *(v13 - 1);
        v14 = *v13;
        v27[0] = v5;
        v27[1] = v4;

        MEMORY[0x24C21C9E0](v15, v14);

        v16 = sub_24A82CF94();

        v27[0] = 0;
        LODWORD(v14) = [v26 removeItemAtPath:v16 error:v27];

        if (!v14)
        {
          break;
        }

        ++v12;
        v17 = v27[0];
        v13 += 2;
        if (v11 == v12)
        {
          goto LABEL_3;
        }
      }

      v18 = v27[0];

LABEL_15:

      v19 = sub_24A82C7F4();

      swift_willThrow();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v20 = sub_24A82CDC4();
      sub_24A6797D0(v20, qword_281518F88);
      v21 = sub_24A82CD94();
      v22 = sub_24A82D4E4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_24A675000, v21, v22, "FMIPGarbageCollector: Error deleting file", v23, 2u);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A74F510();

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_24A78F114()
{

  sub_24A6BAF88(v0 + 48);

  return swift_deallocClassInstance();
}

FMIPCore::FMIPActionStatus sub_24A78F16C@<W0>(_BYTE *a1@<X8>)
{
  v3 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + 56);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = type metadata accessor for FMIPDevice(0);
    sub_24A78F6B4(v7 + *(v9 + 112) + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)), v6);
    v10 = type metadata accessor for FMIPPlaySoundMetadata(0);
    if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
    {
      result = sub_24A78F724(v6);
LABEL_5:
      LOBYTE(v8) = 0;
      goto LABEL_8;
    }

    v11 = *v6;
    sub_24A78F78C(v6);
    result = FMIPActionStatus.init(rawValue:)(qword_24A839288[v11]).value;
    LOBYTE(v8) = v13;
    if (v13 == 18)
    {
      LOBYTE(v8) = 0;
    }
  }

LABEL_8:
  *a1 = v8;
  return result;
}

unint64_t sub_24A78F314(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27[-1] - v4;
  sub_24A698230(a1, v27);
  v6 = sub_24A6F5EE8(v27);
  v7 = v6;
  if (!v1)
  {
    v8 = *(v6 + 56);
    if (v8 && *(v8 + 16))
    {
      v9 = type metadata accessor for FMIPDevice(0);
      sub_24A78F6B4(v8 + *(v9 + 112) + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)), v5);
      v10 = type metadata accessor for FMIPPlaySoundMetadata(0);
      v11 = (*(*(v10 - 8) + 48))(v5, 1, v10);

      if (v11 == 1)
      {
        v12 = 7104878;
        sub_24A78F724(v5);
        v13 = 0xE300000000000000;
      }

      else
      {
        v12 = FMIPPlaySoundMetadata.debugDescription.getter();
        v13 = v14;
        sub_24A78F78C(v5);
      }
    }

    else
    {
      v12 = 7104878;

      v13 = 0xE300000000000000;
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);

    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27[0] = v26;
      *v18 = 134218498;
      sub_24A78F16C(&v28);
      *(v18 + 4) = qword_24A839288[v28];

      *(v18 + 12) = 2080;
      v19 = sub_24A68761C(v12, v13, v27);

      *(v18 + 14) = v19;
      *(v18 + 22) = 2080;
      v20 = sub_24A6F6244();
      v22 = v21;

      v23 = sub_24A68761C(v20, v22, v27);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPPlaySoundResponse: initialized with coder status %ld metadata: %s - %s", v18, 0x20u);
      v24 = v26;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v24, -1, -1);
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v7;
}

uint64_t sub_24A78F6B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A78F724(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A78F78C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPPlaySoundMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_24A78F7E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A82C604();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  sub_24A82C594();
  sub_24A82C5D4();
  v9 = sub_24A78FD0C(a1, a2, v7);
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    return 1;
  }

  if (v9 != a1 || v11 != a2)
  {
    v14 = sub_24A82DC04();

    return (v14 & 1) == 0;
  }

  return 0;
}

id sub_24A78F9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_24A82CFC4();
  a4(v5);

  v6 = sub_24A82CF94();

  return v6;
}

id FMPhoneNumberUtil.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMPhoneNumberUtil.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FMPhoneNumberUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A78FD0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v25 = a3;
  v6 = sub_24A82C604();
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  v10 = HIBYTE(a2) & 0xF;
  v29 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v10;
  if (v10)
  {
    v11 = 0;
    v23 = a2 & 0xFFFFFFFFFFFFFFLL;
    v21[1] = v3;
    v22 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v12 = (v7 + 16);
    v13 = (v7 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_24A82D844();
        v17 = v16;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v26[0] = v29;
          v26[1] = v23;
          v15 = v26 + v11;
        }

        else
        {
          v14 = v22;
          if ((v29 & 0x1000000000000000) == 0)
          {
            v14 = sub_24A82D8B4();
          }

          v15 = (v14 + v11);
        }

        if ((*v15 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v19 = (__clz(*v15 ^ 0xFF) - 24);
        if (v19 <= 2)
        {
          if (v19 != 1)
          {
            v17 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v17 = 1;
          goto LABEL_15;
        }

        if (v19 == 3)
        {
          v17 = 3;
        }

        else
        {
          v17 = 4;
        }
      }

LABEL_15:
      (*v12)(v9, v25, v6);
      v18 = sub_24A82C5E4();
      (*v13)(v9, v6);
      if (v18)
      {
        sub_24A82D074();
      }

      v11 += v17;
      if (v11 >= v24)
      {
        return v27;
      }
    }
  }

  return 0;
}

uint64_t sub_24A78FF90()
{
  result = CPPhoneNumberCopyHomeCountryCode();
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v1 = result;
  v2 = sub_24A82CFC4();
  v4 = v3;

  v5 = v4 & 0x2000000000000000;
  v6 = HIBYTE(v4) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    result = CPPhoneNumberCopyActiveCountryCode();
    if (result)
    {
      v9 = result;

      v2 = sub_24A82CFC4();
      v11 = v10;

      v5 = v11 & 0x2000000000000000;
      v6 = HIBYTE(v11) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_8:
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (!v12)
  {
    result = CPPhoneNumberCopyNetworkCountryCode();
    if (result)
    {
      v13 = result;

      v2 = sub_24A82CFC4();
      v15 = v14;

      v5 = v15 & 0x2000000000000000;
      v6 = HIBYTE(v15) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_14:
  if (v5)
  {
    v16 = v6;
  }

  else
  {
    v16 = v7;
  }

  if (v16)
  {
    goto LABEL_20;
  }

  result = CPPhoneNumberCopyLastKnownNetworkCountryCode();
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v17 = result;

  v2 = sub_24A82CFC4();
  v19 = v18;

  v5 = v19 & 0x2000000000000000;
  v6 = HIBYTE(v19) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
LABEL_20:
  if (v5)
  {
    v20 = v6;
  }

  else
  {
    v20 = v7;
  }

  if (!v20)
  {

    return 29557;
  }

  return v2;
}

uint64_t sub_24A7900CC(uint64_t a1, uint64_t a2)
{
  sub_24A78FF90();
  v3 = sub_24A82CF94();
  v4 = sub_24A82CF94();

  v5 = CFPhoneNumberCreate();

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  String = CFPhoneNumberCreateString();
  if (!String)
  {

LABEL_5:

    return a1;
  }

  v8 = String;
  a1 = sub_24A82CFC4();

  return a1;
}

uint64_t sub_24A7901BC(uint64_t a1, uint64_t a2)
{
  if (qword_27EF5CC30 != -1)
  {
    swift_once();
  }

  v4 = qword_27EF5F5D0;
  v5 = sub_24A82CF94();
  LOBYTE(v4) = [v4 evaluateWithObject_];

  if (v4)
  {
  }

  else
  {
    a1 = sub_24A7900CC(a1, a2);
    v7 = v6;

    v8 = sub_24A82D154();

    if ((v8 & 1) == 0 && sub_24A82D0A4() >= 2)
    {
      MEMORY[0x24C21C9E0](a1, v7);

      return 43;
    }
  }

  return a1;
}

FMIPCore::FMIPPeopleFindingEvent __swiftcall FMIPPeopleFindingEvent.init(hasToken:findButtonAvailable:availabilityLatency:withinNearbyRange:startedDiscovering:)(Swift::Bool hasToken, Swift::Bool findButtonAvailable, Swift::Double availabilityLatency, Swift::Bool withinNearbyRange, Swift::Bool startedDiscovering)
{
  *v5 = hasToken;
  *(v5 + 1) = findButtonAvailable;
  *(v5 + 8) = availabilityLatency;
  *(v5 + 16) = withinNearbyRange;
  *(v5 + 17) = startedDiscovering;
  result.availabilityLatency = availabilityLatency;
  result.withinNearbyRange = findButtonAvailable;
  result.hasToken = hasToken;
  return result;
}

Swift::Void __swiftcall FMIPManager.enqueue(event:)(FMIPCore::FMIPPeopleFindingEvent event)
{
  v1 = **&event.hasToken;
  v2 = *(*&event.hasToken + 1);
  v3 = *(*&event.hasToken + 8);
  v4 = *(*&event.hasToken + 16);
  v5 = *(*&event.hasToken + 17);
  v6 = sub_24A82CF94();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 17) = v2;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 33) = v5;
  v9[4] = sub_24A790828;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A6AEADC;
  v9[3] = &unk_285DC84D8;
  v8 = _Block_copy(v9);

  AnalyticsSendEventLazy();
  _Block_release(v8);
}

void static FMIPAnalytics.sendPeopleFindingEventAnalytics(event:)(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = a1[16];
  v5 = a1[17];
  v6 = sub_24A82CF94();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 17) = v2;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 33) = v5;
  v9[4] = sub_24A790920;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A6AEADC;
  v9[3] = &unk_285DC8528;
  v8 = _Block_copy(v9);

  AnalyticsSendEventLazy();
  _Block_release(v8);
}

unint64_t sub_24A790628(unsigned int a1, unsigned int a2, double a3)
{
  v3 = a2;
  v5 = a1;
  v6 = (a1 >> 8) & 1;
  v7 = (a2 >> 8) & 1;
  v8 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v9, 0x6E656B6F54736168, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v11, 0xD000000000000013, 0x800000024A847BB0, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v13, 0xD000000000000013, 0x800000024A847BD0, v14);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v15, 0xD000000000000011, 0x800000024A847BF0, v16);
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v17, 0xD000000000000012, 0x800000024A847C10, v18);
  return v8;
}

unint64_t sub_24A79082C()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24A790628(v1 | *(v0 + 16), v2 | *(v0 + 32), *(v0 + 24));
}

__n128 initializeBufferWithCopyOfBuffer for FMIPPeopleFindingEvent(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FMIPPeopleFindingEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPPeopleFindingEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24A790928(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

void sub_24A790970(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_24A82D224();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v1 setEnabledTopics_];
}

uint64_t sub_24A790A30(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A790A9C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A738E54;
}

uint64_t sub_24A790B3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_preferencesStore + 8);
  ObjectType = swift_getObjectType();
  v3 = (v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topicAPSToken);
  v4 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topicAPSToken);
  v5 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topicAPSToken + 8);
  v6 = *(v1 + 16);

  v6(v4, v5, ObjectType, v1);
  v7 = v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    v10 = swift_getObjectType();
    v11 = *v3;
    v12 = v3[1];
    v13 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_publicAPSToken);
    v14 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_publicAPSToken + 8);
    v15 = *(v9 + 8);

    v15(v0, v11, v12, v13, v14, v10, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

id FMAPSConnectionHandler.__deallocating_deinit()
{
  v1 = &v0[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection];
  if (*&v0[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection])
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v4(0, ObjectType, v2);
    swift_unknownObjectRelease();
    if (*v1)
    {
      v5 = *(v1 + 1);
      v6 = swift_getObjectType();
      v7 = *(v5 + 40);
      swift_unknownObjectRetain();
      v7(v6, v5);
      swift_unknownObjectRelease();
    }
  }

  v9.receiver = v0;
  v9.super_class = type metadata accessor for FMAPSConnectionHandler();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_24A790E44(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection))
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection + 8);
    ObjectType = swift_getObjectType();
    sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24A8327A0;
    v5 = *(v1 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic);
    v6 = *(v1 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic + 8);
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    v7 = *(v2 + 32);
    swift_unknownObjectRetain();

    v7(v4, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A790F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A82CE54();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connectionQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_24A82CE24();
  v19 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_24A79121C(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection))
  {
    v1 = *(result + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 32);
    swift_unknownObjectRetain();
    v3(0, ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id FMAPSConnectionHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_24A791558(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = sub_24A82CDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CE54();
  v10 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_281518F88);
    v15 = v2;
    v37 = sub_24A82CD94();
    v16 = sub_24A82D504();

    if (os_log_type_enabled(v37, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_24A68761C(*&v15[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic], *&v15[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic + 8], aBlock);
      _os_log_impl(&dword_24A675000, v37, v16, "FMAPSConnectionHandler: Topic APS Token was nil for %s.", v17, 0xCu);
      sub_24A6876E8(v18);
      MEMORY[0x24C21E1D0](v18, -1, -1);
      MEMORY[0x24C21E1D0](v17, -1, -1);
    }

    else
    {
      v34 = v37;
    }
  }

  else
  {
    v35 = v11;
    v36 = v10;
    v37 = v6;
    v19 = sub_24A82C8E4();
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v20 = sub_24A82CDC4();
    sub_24A6797D0(v20, qword_281518F88);
    v21 = v19;
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_24A675000, v22, v23, "FMAPSConnectionHandler: Topic APS Token received %@.", v24, 0xCu);
      sub_24A67CDA4(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    v27 = [v21 fm_hexString];
    v28 = sub_24A82CFC4();
    v30 = v29;

    v31 = swift_allocObject();
    v31[2] = v3;
    v31[3] = v28;
    v31[4] = v30;
    aBlock[4] = sub_24A791EE4;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC86D8;
    v32 = _Block_copy(aBlock);
    v33 = v3;
    sub_24A82CE24();
    v38 = MEMORY[0x277D84F90];
    sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v13, v8, v32);
    _Block_release(v32);

    (v37[1].isa)(v8, v5);
    (*(v35 + 8))(v13, v36);
  }
}

uint64_t sub_24A791AC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);

  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v11 = 136315394;
    if (!a2)
    {
LABEL_13:

      __break(1u);
      goto LABEL_14;
    }

    v14 = v13;
    result = sub_24A68761C(a1, a2, v20);
    *(v11 + 4) = result;
    *(v11 + 12) = 2112;
    if (!a3)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v16 = sub_24A82CED4();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMAPSConnectionHandler: Received message for topic: %s \n Message: %@", v11, 0x16u);
    sub_24A67CDA4(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  else
  {
  }

  v17 = v4 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = *(v17 + 8);
  ObjectType = swift_getObjectType();
  (*(v18 + 16))(v4, a3, ObjectType, v18);
  return swift_unknownObjectRelease();
}

uint64_t FMIPLostModeAction.email.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email);

  return v1;
}

uint64_t FMIPLostModeAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message);

  return v1;
}

uint64_t FMIPLostModeAction.phoneNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber);

  return v1;
}

uint64_t FMIPLostModeAction.passcode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode);

  return v1;
}

uint64_t FMIPLostModeAction.__allocating_init(device:message:phoneNumber:email:passcode:trackingEnabled:emailUpdatesEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isLostModeEnabled) = 1;
  *(v18 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isSoundEnabled) = 0;
  v19 = (v18 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email);
  *v19 = a6;
  v19[1] = a7;
  v20 = (v18 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message);
  *v20 = a2;
  v20[1] = a3;
  v21 = (v18 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber);
  *v21 = a4;
  v21[1] = a5;
  v22 = (v18 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode);
  *v22 = a8;
  v22[1] = a9;
  *(v18 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isUserTextEnabled) = (a3 | a5) != 0;
  *(v18 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isTrackingEnabled) = a10;
  *(v18 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isEmailUpdatesEnabled) = a11;
  *(v18 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v23 = (v18 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v18 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v18 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v18 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v18 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v27 = 0;
  v27[1] = 0;
  *(v18 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D558(a1, v18 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v18;
}

uint64_t FMIPLostModeAction.init(device:message:phoneNumber:email:passcode:trackingEnabled:emailUpdatesEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  *(v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isLostModeEnabled) = 1;
  *(v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isSoundEnabled) = 0;
  v12 = (v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email);
  *v12 = a6;
  v12[1] = a7;
  v13 = (v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message);
  *v13 = a2;
  v13[1] = a3;
  v14 = (v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber);
  *v14 = a4;
  v14[1] = a5;
  v15 = (v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode);
  *v15 = a8;
  v15[1] = a9;
  *(v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isUserTextEnabled) = (a3 | a5) != 0;
  *(v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isTrackingEnabled) = a10;
  *(v11 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isEmailUpdatesEnabled) = a11;
  *(v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v16 = (v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v20 = 0;
  v20[1] = 0;
  *(v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D558(a1, v11 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v11;
}

uint64_t sub_24A7923CC()
{
}

uint64_t FMIPLostModeAction.deinit()
{
  v0 = FMIPDeviceAction.deinit();

  return v0;
}

uint64_t FMIPLostModeAction.__deallocating_deinit()
{
  FMIPDeviceAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t FMIPLostModeItemAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message);

  return v1;
}

uint64_t FMIPLostModeItemAction.phoneNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber);

  return v1;
}

uint64_t FMIPLostModeItemAction.email.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email);

  return v1;
}

uint64_t FMIPLostModeItemAction.__allocating_init(item:message:phoneNumber:email:trackingEnabled:emailUpdatesEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message);
  *v18 = a2;
  v18[1] = a3;
  v19 = (v17 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber);
  *v19 = a4;
  v19[1] = a5;
  *(v17 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isUserTextEnabled) = (a3 | a5) != 0;
  *(v17 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isTrackingEnabled) = a8;
  *(v17 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isEmailUpdatesEnabled) = a9;
  v20 = (v17 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email);
  *v20 = a6;
  v20[1] = a7;
  sub_24A68D558(a1, v17 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v17;
}

uint64_t FMIPLostModeItemAction.init(item:message:phoneNumber:email:trackingEnabled:emailUpdatesEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v10 = (v9 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_message);
  *v10 = a2;
  v10[1] = a3;
  v11 = (v9 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_phoneNumber);
  *v11 = a4;
  v11[1] = a5;
  *(v9 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isUserTextEnabled) = (a3 | a5) != 0;
  *(v9 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isTrackingEnabled) = a8;
  *(v9 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_isEmailUpdatesEnabled) = a9;
  v12 = (v9 + OBJC_IVAR____TtC8FMIPCore22FMIPLostModeItemAction_email);
  *v12 = a6;
  v12[1] = a7;
  sub_24A68D558(a1, v9 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v9;
}

uint64_t sub_24A792844()
{
}

uint64_t FMIPLostModeItemAction.deinit()
{
  sub_24A6CB3F0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);

  return v0;
}

uint64_t FMIPLostModeItemAction.__deallocating_deinit()
{
  sub_24A6CB3F0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);

  return swift_deallocClassInstance();
}

uint64_t _s8FMIPCore18FMIPLostModeActionC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message + 8);
  v3 = *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_message) || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_24A82DC04();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber + 8);
  v10 = *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_phoneNumber) || v9 != v10)
    {
      v12 = a1;
      v13 = a2;
      v14 = sub_24A82DC04();
      a2 = v13;
      v15 = v14;
      a1 = v12;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v16 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email + 8);
  v17 = *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email + 8);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_email) || v16 != v17)
    {
      v19 = a1;
      v20 = a2;
      v21 = sub_24A82DC04();
      a2 = v20;
      v22 = v21;
      a1 = v19;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v23 = *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode + 8);
  v24 = *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode + 8);
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (!v24)
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_passcode) || v23 != v24)
  {
    v26 = a1;
    v27 = a2;
    v28 = sub_24A82DC04();
    a2 = v27;
    v29 = v28;
    a1 = v26;
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_37:
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isUserTextEnabled) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isUserTextEnabled) || *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isTrackingEnabled) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isTrackingEnabled) || *(a1 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isEmailUpdatesEnabled) != *(a2 + OBJC_IVAR____TtC8FMIPCore18FMIPLostModeAction_isEmailUpdatesEnabled))
  {
    return 0;
  }

  v31 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v32 = a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;

  return static FMIPDevice.== infix(_:_:)(v31, v32);
}

void sub_24A792E68()
{
  if ([v0 isCancelled])
  {
    if (qword_27EF5CB88 != -1)
    {
      swift_once();
    }

    v1 = sub_24A82CDC4();
    sub_24A6797D0(v1, qword_27EF78C00);
    oslog = sub_24A82CD94();
    v2 = sub_24A82D504();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_24A675000, oslog, v2, "FMReverseGeocodingOperation: operation cancelled", v3, 2u);
      MEMORY[0x24C21E1D0](v3, -1, -1);
    }
  }
}

void sub_24A792FBC()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_24A82CAE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMReverseGeocodingOperation(0);
  v27.receiver = v0;
  v27.super_class = v9;
  objc_msgSendSuper2(&v27, sel_start);
  v25 = objc_opt_self();
  v10 = [v25 sharedService];
  v11 = [v10 defaultTraits];

  sub_24A793A40();
  v12 = &v1[OBJC_IVAR____TtC8FMIPCore27FMReverseGeocodingOperation_request];
  v13 = *&v1[OBJC_IVAR____TtC8FMIPCore27FMReverseGeocodingOperation_request + 16];
  sub_24A7F7FFC(v13);
  v15 = v14;

  v16 = type metadata accessor for FMReverseGeocodingRequest(0);
  sub_24A6F434C(&v12[*(v16 + 24)], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24A793A8C(v4);
  }

  else
  {
    v24 = v1;
    (*(v6 + 32))(v8, v4, v5);
    sub_24A82CAB4();
    sub_24A82CAD4();

    [v11 clearDeviceDisplayLanguages];
    if (v11)
    {
      v17 = v11;
      v18 = sub_24A82CF94();

      [v17 addDeviceDisplayLanguage_];

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }

    v1 = v24;
  }

  if (v12[*(v16 + 32)] == 1 && v15)
  {
    [v15 setHorizontalAccuracy_];
  }

  v19 = [v25 sharedService];
  v20 = [v19 ticketForReverseGeocodeLocation:v15 traits:v11];

  if (v20)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    aBlock[4] = sub_24A793AF4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7937A4;
    aBlock[3] = &unk_285DC87C8;
    v22 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v23 = v1;

    [v20 submitWithHandler:v22 timeout:25 networkActivity:0];
    swift_unknownObjectRelease_n();

    _Block_release(v22);
  }

  else
  {
  }
}

void sub_24A7933C8(unint64_t a1, id a2, char *a3)
{
  v6 = &unk_27EF78000;
  v7 = &off_278FE8000;
  if (a2)
  {
    v8 = a2;
    if (qword_27EF5CB88 != -1)
    {
      swift_once();
    }

    v9 = sub_24A82CDC4();
    sub_24A6797D0(v9, qword_27EF78C00);
    v10 = a2;
    v11 = sub_24A82CD94();
    v12 = sub_24A82D4E4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_24A82DC74();
      v17 = sub_24A68761C(v15, v16, &v30);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_24A675000, v11, v12, "FMReverseGeocodingOperation: reverse geocoding completed with error: %s", v13, 0xCu);
      sub_24A6876E8(v14);
      v6 = &unk_27EF78000;
      MEMORY[0x24C21E1D0](v14, -1, -1);
      v18 = v13;
      v7 = &off_278FE8000;
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    v19 = *&a3[v6[464]];
    v20 = a2;
    v19(0, a2);

    [a3 v7[139]];
  }

  if (a1)
  {
    if (a1 >> 62)
    {
      if (!sub_24A82D744())
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C21D180](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
    }

    if (qword_27EF5CB88 != -1)
    {
      swift_once();
    }

    v21 = sub_24A82CDC4();
    sub_24A6797D0(v21, qword_27EF78C00);
    swift_unknownObjectRetain();
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136315138;
      v30 = 0;
      v31 = 0xE000000000000000;
      v32 = v25;
      sub_24A6BBA94(&unk_27EF5E940, qword_24A839598);
      sub_24A82D914();
      v26 = sub_24A68761C(v30, v31, &v32);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_24A675000, v22, v23, "FMReverseGeocodingOperation: reverse geocoding completed with item: %s", v24, 0xCu);
      sub_24A6876E8(v25);
      v27 = v25;
      v7 = &off_278FE8000;
      MEMORY[0x24C21E1D0](v27, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    v28 = *&a3[v6[464]];
    v29 = swift_unknownObjectRetain();
    v28(v29, a2);
    swift_unknownObjectRelease();
    [a3 v7[139]];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24A7937A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24A6BBA94(&unk_27EF5E940, qword_24A839598);
    v4 = sub_24A82D244();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_24A7938BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMReverseGeocodingOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FMReverseGeocodingOperation(uint64_t a1)
{
  result = qword_27EF5E8C0;
  if (!qword_27EF5E8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A793998(uint64_t a1)
{
  result = type metadata accessor for FMReverseGeocodingRequest(319);
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

unint64_t sub_24A793A40()
{
  result = qword_27EF5E938;
  if (!qword_27EF5E938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF5E938);
  }

  return result;
}

uint64_t sub_24A793A8C(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A793AFC(uint64_t a1)
{
  v2 = type metadata accessor for FMReverseGeocodingRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24A793B6C()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_24A82CF94();
  [v0 postNotificationName:v1 object:0];
}

uint64_t sub_24A793C40()
{

  sub_24A6BAF88(v0 + 24);

  return swift_deallocClassInstance();
}

void FMIPItemLostModeMetadata.init(lostModeInfo:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_24A82CA34();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = [a1 phoneNumber];
  if (v14)
  {
    v15 = v14;
    v16 = sub_24A82CFC4();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  *a2 = v16;
  *(a2 + 1) = v18;
  v19 = [a1 message];
  if (v19)
  {
    v20 = v19;
    v21 = sub_24A82CFC4();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  *(a2 + 2) = v21;
  *(a2 + 3) = v23;
  v24 = [a1 timestamp];
  if (v24)
  {
    v25 = v24;
    sub_24A82C9F4();

    v26 = *(v8 + 32);
    v26(v6, v11, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    v26(v13, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_24A82CA24();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_24A793F90(v6);
    }
  }

  v27 = type metadata accessor for FMIPItemLostModeMetadata(0);
  (*(v8 + 32))(&a2[*(v27 + 24)], v13, v7);
  v28 = [a1 email];
  if (v28)
  {
    v29 = v28;
    v30 = sub_24A82CFC4();
    v32 = v31;
  }

  else
  {

    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = &a2[*(v27 + 28)];
  *v33 = v30;
  v33[1] = v32;
}

uint64_t sub_24A793F90(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPItemLostModeMetadata.ownerNumber.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMIPItemLostModeMetadata.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMIPItemLostModeMetadata.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPItemLostModeMetadata(0) + 24);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPItemLostModeMetadata.email.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPItemLostModeMetadata(0) + 28));

  return v1;
}

uint64_t sub_24A794120()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7941EC(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7942A4(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A79436C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A7951A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A79439C(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000726562;
  v3 = 0x6D754E72656E776FLL;
  v4 = 0xE900000000000070;
  v5 = 0x6D617473656D6974;
  if (*v1 != 2)
  {
    v5 = 0x6C69616D65;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6567617373656DLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_24A794424()
{
  v1 = 0x6D754E72656E776FLL;
  v2 = 0x6D617473656D6974;
  if (*v0 != 2)
  {
    v2 = 0x6C69616D65;
  }

  if (*v0)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A7944A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A7951A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7944D0(uint64_t a1)
{
  v2 = sub_24A79490C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A79450C(uint64_t a1)
{
  v2 = sub_24A79490C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPItemLostModeMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_24A82CA34();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24A6BBA94(&qword_27EF5E950, &qword_24A839618);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v30 - v6;
  v8 = type metadata accessor for FMIPItemLostModeMetadata(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A67DF6C(a1, a1[3]);
  sub_24A79490C();
  v38 = v7;
  v11 = v39;
  sub_24A82DD64();
  if (v11)
  {
    v29 = a1;
  }

  else
  {
    v39 = v10;
    v12 = a1;
    v13 = v5;
    v14 = v35;
    v15 = v36;
    v43 = 0;
    v16 = v37;
    v32 = sub_24A82DA44();
    v33 = v17;
    v42 = 1;
    v30 = sub_24A82DA44();
    v31 = v18;
    v41 = 2;
    sub_24A794F10(&qword_27EF5E960, MEMORY[0x277CC95A0]);
    sub_24A82DA84();
    v40 = 3;
    v20 = sub_24A82DA44();
    v21 = *(v14 + 8);
    v22 = v38;
    v38 = v23;
    v21(v22, v16);
    v24 = v39;
    v25 = v33;
    *v39 = v32;
    *(v24 + 1) = v25;
    v26 = v31;
    *(v24 + 2) = v30;
    *(v24 + 3) = v26;
    (*(v15 + 32))(&v24[*(v8 + 24)], v13, v3);
    v27 = &v24[*(v8 + 28)];
    v28 = v38;
    *v27 = v20;
    v27[1] = v28;
    sub_24A794960(v24, v34);
    v29 = v12;
  }

  return sub_24A6876E8(v29);
}

unint64_t sub_24A79490C()
{
  result = qword_27EF5E958;
  if (!qword_27EF5E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E958);
  }

  return result;
}

uint64_t sub_24A794960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemLostModeMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMIPItemLostModeMetadata.init(ownerNumber:message:timestamp:email:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for FMIPItemLostModeMetadata(0);
  v13 = *(v12 + 24);
  v14 = sub_24A82CA34();
  result = (*(*(v14 - 8) + 32))(&a8[v13], a5, v14);
  v16 = &a8[*(v12 + 28)];
  *v16 = a6;
  *(v16 + 1) = a7;
  return result;
}

uint64_t FMIPItemLostModeMetadata.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5E968, &unk_24A839620);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A79490C();
  sub_24A82DD84();
  v8[15] = 0;
  sub_24A82DB04();
  if (!v1)
  {
    v8[14] = 1;
    sub_24A82DB04();
    type metadata accessor for FMIPItemLostModeMetadata(0);
    v8[13] = 2;
    sub_24A82CA34();
    sub_24A794F10(&qword_27EF5E970, MEMORY[0x277CC9580]);
    sub_24A82DB44();
    v8[12] = 3;
    sub_24A82DB04();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t static FMIPItemLostModeMetadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for FMIPItemLostModeMetadata(0);
  if ((sub_24A82C9E4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 28);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t FMIPItemLostModeMetadata.debugDescription.getter()
{
  v1 = v0;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0xD000000000000018, 0x800000024A839610);
  MEMORY[0x24C21C9E0](0x7265626D756D203ALL, 0xEA0000000000203ALL);
  MEMORY[0x24C21C9E0](*v1, v1[1]);
  MEMORY[0x24C21C9E0](0x6567617373656D20, 0xEA0000000000203ALL);
  MEMORY[0x24C21C9E0](v1[2], v1[3]);
  MEMORY[0x24C21C9E0](0x617473656D697420, 0xEC000000203A706DLL);
  v2 = type metadata accessor for FMIPItemLostModeMetadata(0);
  sub_24A82CA34();
  sub_24A794F10(&qword_27EF5E7C0, MEMORY[0x277CC95B8]);
  v3 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](0x203A6C69616D6520, 0xE800000000000000);
  MEMORY[0x24C21C9E0](*(v1 + *(v2 + 28)), *(v1 + *(v2 + 28) + 8));
  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24A794F10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24A82CA34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A794F54(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_24A82DC04() & 1) == 0 || (sub_24A82C9E4() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 28);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    return 1;
  }

  return sub_24A82DC04();
}

unint64_t sub_24A79509C()
{
  result = qword_27EF5E978;
  if (!qword_27EF5E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E978);
  }

  return result;
}

unint64_t sub_24A7950F4()
{
  result = qword_27EF5E980;
  if (!qword_27EF5E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E980);
  }

  return result;
}

unint64_t sub_24A79514C()
{
  result = qword_27EF5E988;
  if (!qword_27EF5E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E988);
  }

  return result;
}

unint64_t sub_24A7951A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_24A7951EC(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5E9B0, &unk_24A839AD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v33 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v6 = *(v33 - 8);
  v7 = MEMORY[0x28223BE20](v33);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v27 = &v26 - v9;
  v31 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24A82D704();
    sub_24A679170(0, &qword_27EF5DDE8, 0x277D49668);
    sub_24A796540();
    sub_24A82D414();
    a1 = v35;
    v10 = v36;
    v12 = v37;
    v11 = v38;
    v13 = v39;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v11 = 0;
  }

  v30 = v12;
  v28 = v6;
  v17 = (v6 + 48);
  v32 = MEMORY[0x277D84F90];
  while (a1 < 0)
  {
    v21 = sub_24A82D784();
    if (!v21 || (v34 = v21, sub_24A679170(0, &qword_27EF5DDE8, 0x277D49668), swift_dynamicCast(), (v20 = v40) == 0))
    {
LABEL_24:
      sub_24A6BAFBC(a1);
      return;
    }

LABEL_17:
    sub_24A716290(v20, v5);
    if ((*v17)(v5, 1, v33) == 1)
    {
      sub_24A67F378(v5, &qword_27EF5E9B0, &unk_24A839AD8);
    }

    else
    {
      v22 = v27;
      sub_24A79C638(v5, v27);
      sub_24A79C638(v22, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_24A780908(0, v32[2] + 1, 1, v32);
      }

      v24 = v32[2];
      v23 = v32[3];
      if (v24 >= v23 >> 1)
      {
        v32 = sub_24A780908((v23 > 1), v24 + 1, 1, v32);
      }

      v25 = v32;
      v32[2] = v24 + 1;
      sub_24A79C638(v29, v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24);
    }
  }

  v18 = v11;
  v19 = v13;
  if (v13)
  {
LABEL_13:
    v13 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= ((v12 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v19 = *(v10 + 8 * v11);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t DiscoveryType.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t sub_24A79563C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D24C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3, v4);
}

uint64_t sub_24A7956BC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D1CC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  sub_24A6A7314(v3, v4);
  result = sub_24A6AFFE8(v7, v8);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.discoveredAccessoriesCallback.getter()
{
  v1 = *v0;
  sub_24A6A7314(*v0, v0[1]);
  return v1;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.discoveredAccessoriesCallback.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24A6AFFE8(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24A7957E4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D034;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3, v4);
}

uint64_t sub_24A795864(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79CFFC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_24A6A7314(v3, v4);
  result = sub_24A6AFFE8(v7, v8);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.lostAccessoriesCallback.getter()
{
  v1 = *(v0 + 16);
  sub_24A6A7314(v1, *(v0 + 24));
  return v1;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.lostAccessoriesCallback.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24A6AFFE8(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_24A79598C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A680678;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3, v4);
}

uint64_t sub_24A795A0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79CFD4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_24A6A7314(v3, v4);
  result = sub_24A6AFFE8(v7, v8);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.detectedPairingAccessoryCallback.getter()
{
  v1 = *(v0 + 32);
  sub_24A6A7314(v1, *(v0 + 40));
  return v1;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.detectedPairingAccessoryCallback.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24A6AFFE8(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_24A795B34@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79CFCC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3, v4);
}

uint64_t sub_24A795BB4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79CFC4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  sub_24A6A7314(v3, v4);
  result = sub_24A6AFFE8(v7, v8);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.errorHandler.getter()
{
  v1 = *(v0 + 48);
  sub_24A6A7314(v1, *(v0 + 56));
  return v1;
}

uint64_t FMIPAccessoryDiscoveryController.Callbacks.errorHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24A6AFFE8(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_24A795CDC()
{
  v1 = *v0;
  sub_24A6A7314(*v0, v0[1]);
  return v1;
}

uint64_t sub_24A795D14(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  result = sub_24A6AFFE8(*v2, v2[1]);
  *v2 = a1;
  v2[1] = v4;
  return result;
}

uint64_t (*sub_24A795D50(void *a1))()
{
  v2 = v1[1];
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v1;
  return sub_24A795D84;
}

void *sub_24A795D84(void *result)
{
  v2 = result[1];
  v1 = result[2];
  if (!*result)
  {
    v2 = 0;
  }

  *v1 = *result;
  v1[1] = v2;
  return result;
}

uint64_t sub_24A795D9C()
{
  v1 = *(v0 + 16);
  sub_24A6A7314(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_24A795DD4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  result = sub_24A6AFFE8(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = v4;
  return result;
}

uint64_t (*sub_24A795E10(void *a1))()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (!v2)
  {
    v3 = 0;
  }

  *a1 = v2;
  a1[1] = v3;
  a1[2] = v1;
  return sub_24A795E44;
}

void *sub_24A795E44(void *result)
{
  v2 = result[1];
  v1 = result[2];
  if (!*result)
  {
    v2 = 0;
  }

  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_24A795E5C()
{
  v1 = *(v0 + 48);
  sub_24A6A7314(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_24A795E90(uint64_t a1, uint64_t a2)
{
  result = sub_24A6AFFE8(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_24A795EE8(__int128 *a1, void *a2)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v3 = a1[3];
  v14 = a1[2];
  v15 = v3;
  v4 = *a2;
  swift_beginAccess();
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[4];
  v16[2] = v4[3];
  v16[3] = v7;
  v16[0] = v5;
  v16[1] = v6;
  v8 = v15;
  v4[3] = v14;
  v4[4] = v8;
  v9 = v13;
  v4[1] = v12;
  v4[2] = v9;
  sub_24A795FDC(&v12, v11);
  return sub_24A796078(v16);
}

uint64_t sub_24A795F7C@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[2];
  v8[0] = v1[1];
  v8[1] = v3;
  v5 = v1[4];
  v9 = v1[3];
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24A795FDC(v8, v7);
}

uint64_t sub_24A796014(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v8[0] = v1[1];
  v8[1] = v3;
  v4 = v1[4];
  v8[2] = v1[3];
  v8[3] = v4;
  v5 = a1[1];
  v1[1] = *a1;
  v1[2] = v5;
  v6 = a1[3];
  v1[3] = a1[2];
  v1[4] = v6;
  return sub_24A796078(v8);
}

uint64_t sub_24A7960F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

double sub_24A796158()
{
  swift_beginAccess();

  return result;
}

uint64_t FMIPAccessoryDiscoveryController.__allocating_init(discoveryType:)(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  FMIPAccessoryDiscoveryController.init(discoveryType:)(a1);
  return v2;
}

uint64_t FMIPAccessoryDiscoveryController.init(discoveryType:)(unsigned __int8 *a1)
{
  v2 = v1;
  v17 = sub_24A82D554();
  v4 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82D534();
  MEMORY[0x28223BE20](v7);
  v8 = sub_24A82CE54();
  MEMORY[0x28223BE20](v8 - 8);
  v18 = *a1;
  sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  sub_24A82CE24();
  v19 = MEMORY[0x277D84F90];
  sub_24A6956F8(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A7964DC();
  sub_24A82D6B4();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v17);
  *(v1 + 80) = sub_24A82D594();
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = MEMORY[0x277D84FA0];
  v9 = objc_allocWithZone(MEMORY[0x277D495F0]);
  sub_24A679170(0, &qword_27EF5DDE8, 0x277D49668);
  sub_24A796540();
  v10 = sub_24A82D394();
  v11 = [v9 initWithAccessories_];

  *(v2 + 88) = v18;
  v12 = v11;
  v13 = sub_24A79BE48(v11);

  v14 = *(v2 + 96);
  *(v2 + 96) = v13;

  return v2;
}

unint64_t sub_24A7964DC()
{
  result = qword_2815146E0;
  if (!qword_2815146E0)
  {
    sub_24A6CCDC0(&unk_27EF5EF50, &unk_24A836510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815146E0);
  }

  return result;
}

unint64_t sub_24A796540()
{
  result = qword_27EF5E990;
  if (!qword_27EF5E990)
  {
    sub_24A679170(255, &qword_27EF5DDE8, 0x277D49668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E990);
  }

  return result;
}

void *FMIPAccessoryDiscoveryController.deinit()
{
  result = *(v0 + 96);
  if (result)
  {
    [result stop];
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    sub_24A6AFFE8(*(v0 + 16), *(v0 + 24));
    sub_24A6AFFE8(v2, v3);
    sub_24A6AFFE8(v4, v5);
    sub_24A6AFFE8(v6, v7);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *FMIPAccessoryDiscoveryController.__deallocating_deinit()
{
  result = *(v0 + 96);
  if (result)
  {
    [result stop];
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    sub_24A6AFFE8(*(v0 + 16), *(v0 + 24));
    sub_24A6AFFE8(v2, v3);
    sub_24A6AFFE8(v4, v5);
    sub_24A6AFFE8(v6, v7);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24A796700(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((*(v3 + 104) & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = swift_allocObject();
    v13 = v12;
    *(v12 + 16) = sub_24A79C124;
    *(v12 + 24) = v4;
    v38 = sub_24A6806A0;
    v39 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_24A6805E4;
    v37 = &unk_285DC88D0;
    v14 = _Block_copy(&aBlock);

    dispatch_sync(v11, v14);
    _Block_release(v14);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      v13 = sub_24A82D504();
      if ((a1 & 1) == 0)
      {
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v24 = sub_24A82CDC4();
        sub_24A6797D0(v24, qword_281518F88);
        v25 = sub_24A82CD94();
        if (os_log_type_enabled(v25, v13))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          aBlock = v27;
          *v26 = 136315138;
          *(v26 + 4) = sub_24A68761C(0xD000000000000027, 0x800000024A848020, &aBlock);
          _os_log_impl(&dword_24A675000, v25, v13, "FMIPAccessoryDiscoveryController: %s", v26, 0xCu);
          sub_24A6876E8(v27);
          MEMORY[0x24C21E1D0](v27, -1, -1);
          MEMORY[0x24C21E1D0](v26, -1, -1);
        }

        v28 = *(v4 + 96);
        if (v28)
        {
          v29 = swift_allocObject();
          swift_weakInit();
          v30 = swift_allocObject();
          v30[2] = v29;
          v30[3] = a2;
          v30[4] = a3;
          v38 = sub_24A79C12C;
          v39 = v30;
          aBlock = MEMORY[0x277D85DD0];
          v35 = 1107296256;
          v36 = sub_24A7386AC;
          v37 = &unk_285DC8948;
          v31 = _Block_copy(&aBlock);
          sub_24A6A7314(a2, a3);
          v32 = v28;

          [v32 startAccessoryDiscoveryWithCompletion_];
          _Block_release(v31);

          return;
        }

        goto LABEL_25;
      }

      if (qword_281515DC8 == -1)
      {
LABEL_12:
        v15 = sub_24A82CDC4();
        sub_24A6797D0(v15, qword_281518F88);
        v16 = sub_24A82CD94();
        if (os_log_type_enabled(v16, v13))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          aBlock = v18;
          *v17 = 136315138;
          *(v17 + 4) = sub_24A68761C(0xD000000000000036, 0x800000024A848050, &aBlock);
          _os_log_impl(&dword_24A675000, v16, v13, "FMIPAccessoryDiscoveryController: %s", v17, 0xCu);
          sub_24A6876E8(v18);
          MEMORY[0x24C21E1D0](v18, -1, -1);
          MEMORY[0x24C21E1D0](v17, -1, -1);
        }

        v19 = *(v4 + 96);
        if (v19)
        {
          v20 = swift_allocObject();
          swift_weakInit();
          v21 = swift_allocObject();
          v21[2] = v20;
          v21[3] = a2;
          v21[4] = a3;
          v38 = sub_24A79C5FC;
          v39 = v21;
          aBlock = MEMORY[0x277D85DD0];
          v35 = 1107296256;
          v36 = sub_24A7386AC;
          v37 = &unk_285DC8998;
          v22 = _Block_copy(&aBlock);
          v23 = v19;
          sub_24A6A7314(a2, a3);

          [v23 startLocalFindableAccessoryDiscoveryWithCompletion_];
          _Block_release(v22);

          return;
        }

        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }
    }

    swift_once();
    goto LABEL_12;
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  oslog = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, oslog, v6, "FMIPAccessoryDiscoveryController: Tried to start new session while the old one is still running, aborting.", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }
}

uint64_t sub_24A796D20(uint64_t *a1)
{
  result = swift_beginAccess();
  if (*(a1[14] + 16))
  {
    swift_beginAccess();
    v3 = a1[4];
    if (v3)
    {
      v4 = a1[5];
      sub_24A6A7314(a1[4], v4);

      v3(v5);
      sub_24A6AFFE8(v3, v4);
    }

    a1[14] = MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_24A796DD4(void *a1, uint64_t a2, void (*a3)(void **))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      v8 = a1;
      v9 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v25 = 0;
        v26 = 0xE000000000000000;
        v27 = v13;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000043, 0x800000024A8484F0);
        swift_getErrorValue();
        v14 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v14);

        v15 = sub_24A68761C(0, 0xE000000000000000, &v27);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      LOBYTE(v27) = *(v6 + 88);
      v16 = a1;
      v17 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&v25, a1, &v27);
      v18 = v25;
      v19 = v26;
      v27 = v25;
      v28 = v26;
      sub_24A79BAD8(&v27);
      sub_24A79CFB0(v18, v19);
      if (a3)
      {
        LOBYTE(v25) = *(v6 + 88);
        FMIPAccessoryError.init(underlyingError:discoveryType:)(&v27, a1, &v25);
        v25 = v27;
        LOBYTE(v26) = v28;
        BYTE1(v26) = 1;
        a3(&v25);

        sub_24A79D060(v25, v26, SBYTE1(v26));
        return;
      }
    }

    else
    {
      v20 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24A68761C(0xD000000000000037, 0x800000024A8484B0, &v25);
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      *(v6 + 104) = 1;
      if (a3)
      {
        v25 = 0;
        LOWORD(v26) = 0;
        a3(&v25);
      }
    }
  }
}

void sub_24A7971DC(void *a1, uint64_t a2, void (*a3)(void **))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      v8 = a1;
      v9 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v25 = 0;
        v26 = 0xE000000000000000;
        v27 = v13;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000034, 0x800000024A848600);
        swift_getErrorValue();
        v14 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v14);

        v15 = sub_24A68761C(0, 0xE000000000000000, &v27);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      LOBYTE(v27) = *(v6 + 88);
      v16 = a1;
      v17 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&v25, a1, &v27);
      v18 = v25;
      v19 = v26;
      v27 = v25;
      v28 = v26;
      sub_24A79BAD8(&v27);
      sub_24A79CFB0(v18, v19);
      if (a3)
      {
        LOBYTE(v25) = *(v6 + 88);
        FMIPAccessoryError.init(underlyingError:discoveryType:)(&v27, a1, &v25);
        v25 = v27;
        LOBYTE(v26) = v28;
        BYTE1(v26) = 1;
        a3(&v25);

        sub_24A79D060(v25, v26, SBYTE1(v26));
        return;
      }
    }

    else
    {
      v20 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24A68761C(0xD000000000000028, 0x800000024A8485D0, &v25);
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      *(v6 + 104) = 1;
      if (a3)
      {
        v25 = 0;
        LOWORD(v26) = 0;
        a3(&v25);
      }
    }
  }
}

void sub_24A7975E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *(v4 + 104);
  v9 = sub_24A82D504();
  if (v8 == 1)
  {
    if (v7)
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        aBlock = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_24A68761C(0xD000000000000035, 0x800000024A848100, &aBlock);
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      v14 = *(v4 + 96);
      if (v14)
      {
        v15 = swift_allocObject();
        swift_weakInit();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = a2;
        v16[4] = a3;
        v36 = sub_24A79C614;
        v37 = v16;
        aBlock = MEMORY[0x277D85DD0];
        v33 = 1107296256;
        v34 = sub_24A7386AC;
        v35 = &unk_285DC8A38;
        v17 = _Block_copy(&aBlock);
        v18 = v14;
        sub_24A6A7314(a2, a3);

        [v18 stopLocalFindableAccessoryDiscoveryWithCompletion_];
        _Block_release(v17);

        return;
      }

      __break(1u);
    }

    else
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v22 = sub_24A82CDC4();
      sub_24A6797D0(v22, qword_281518F88);
      v23 = sub_24A82CD94();
      if (os_log_type_enabled(v23, v9))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_24A68761C(0xD000000000000026, 0x800000024A8480D0, &aBlock);
        _os_log_impl(&dword_24A675000, v23, v9, "FMIPAccessoryDiscoveryController: %s", v24, 0xCu);
        sub_24A6876E8(v25);
        MEMORY[0x24C21E1D0](v25, -1, -1);
        MEMORY[0x24C21E1D0](v24, -1, -1);
      }

      v26 = *(v4 + 96);
      if (v26)
      {
        v27 = swift_allocObject();
        swift_weakInit();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = a2;
        v28[4] = a3;
        v36 = sub_24A79C608;
        v37 = v28;
        aBlock = MEMORY[0x277D85DD0];
        v33 = 1107296256;
        v34 = sub_24A7386AC;
        v35 = &unk_285DC89E8;
        v29 = _Block_copy(&aBlock);
        sub_24A6A7314(a2, a3);
        v30 = v26;

        [v30 stopAccessoryDiscoveryWithCompletion_];
        _Block_release(v29);

        return;
      }
    }

    __break(1u);
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_281518F88);
    log = sub_24A82CD94();
    if (os_log_type_enabled(log, v9))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_24A68761C(0xD00000000000003ELL, 0x800000024A848090, &aBlock);
      _os_log_impl(&dword_24A675000, log, v9, "FMIPAccessoryDiscoveryController: %s", v20, 0xCu);
      sub_24A6876E8(v21);
      MEMORY[0x24C21E1D0](v21, -1, -1);
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24A797B58(void *a1, uint64_t a2, void (*a3)(void **))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      v8 = a1;
      v9 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v25 = 0;
        v26 = 0xE000000000000000;
        v27 = v13;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000042, 0x800000024A848580);
        swift_getErrorValue();
        v14 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v14);

        v15 = sub_24A68761C(0, 0xE000000000000000, &v27);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      LOBYTE(v27) = *(v6 + 88);
      v16 = a1;
      v17 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&v25, a1, &v27);
      v18 = v25;
      v19 = v26;
      v27 = v25;
      v28 = v26;
      sub_24A79BAD8(&v27);
      sub_24A79CFB0(v18, v19);
      if (a3)
      {
        LOBYTE(v25) = *(v6 + 88);
        FMIPAccessoryError.init(underlyingError:discoveryType:)(&v27, a1, &v25);
        v25 = v27;
        LOBYTE(v26) = v28;
        BYTE1(v26) = 1;
        a3(&v25);

        sub_24A79D060(v25, v26, SBYTE1(v26));
        return;
      }
    }

    else
    {
      v20 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24A68761C(0xD000000000000038, 0x800000024A848540, &v25);
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      *(v6 + 104) = 0;
      if (a3)
      {
        v25 = 0;
        LOWORD(v26) = 0;
        a3(&v25);
      }
    }
  }
}

void sub_24A797F5C(void *a1, uint64_t a2, void (*a3)(void **))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      v8 = a1;
      v9 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v25 = 0;
        v26 = 0xE000000000000000;
        v27 = v13;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000033, 0x800000024A848470);
        swift_getErrorValue();
        v14 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v14);

        v15 = sub_24A68761C(0, 0xE000000000000000, &v27);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      LOBYTE(v27) = *(v6 + 88);
      v16 = a1;
      v17 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&v25, a1, &v27);
      v18 = v25;
      v19 = v26;
      v27 = v25;
      v28 = v26;
      sub_24A79BAD8(&v27);
      sub_24A79CFB0(v18, v19);
      if (a3)
      {
        LOBYTE(v25) = *(v6 + 88);
        FMIPAccessoryError.init(underlyingError:discoveryType:)(&v27, a1, &v25);
        v25 = v27;
        LOBYTE(v26) = v28;
        BYTE1(v26) = 1;
        a3(&v25);

        sub_24A79D060(v25, v26, SBYTE1(v26));
        return;
      }
    }

    else
    {
      v20 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24A68761C(0xD000000000000029, 0x800000024A848440, &v25);
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      *(v6 + 104) = 0;
      if (a3)
      {
        v25 = 0;
        LOWORD(v26) = 0;
        a3(&v25);
      }
    }
  }
}

void sub_24A798360(uint64_t a1, uint64_t a2, void (*a3)(void *a1), void *a4)
{
  v5 = v4;
  if (*(v4 + 104) == 1)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);
    v11 = sub_24A82D4E4();
    v12 = sub_24A82CD94();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_24A68761C(0xD000000000000040, 0x800000024A848140, &v23);
      _os_log_impl(&dword_24A675000, v12, v11, "%s", v13, 0xCu);
      sub_24A6876E8(v14);
      MEMORY[0x24C21E1D0](v14, -1, -1);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }
  }

  v15 = *(v5 + 96);
  if (v15)
  {
    v27 = a3;
    v28 = a4;
    v23 = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_24A699BA0;
    v26 = &unk_285DC8A60;
    v16 = _Block_copy(&v23);

    v17 = v15;

    [v17 setSessionInvalidatedCallback_];
    _Block_release(v16);

    v18 = *(v5 + 96);
    if (v18)
    {
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = a1;
      v20[4] = a2;
      v27 = sub_24A79C620;
      v28 = v20;
      v23 = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_24A7386AC;
      v26 = &unk_285DC8AB0;
      v21 = _Block_copy(&v23);
      v22 = v18;

      [v22 startProximityAccessoryDiscoveryWithCompletion_];
      _Block_release(v21);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24A79864C(void *a1, uint64_t a2, void (*a3)(void **))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      v8 = a1;
      v9 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v25 = 0;
        v26 = 0xE000000000000000;
        v27 = v13;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000043, 0x800000024A8484F0);
        swift_getErrorValue();
        v14 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v14);

        v15 = sub_24A68761C(0, 0xE000000000000000, &v27);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      LOBYTE(v27) = *(v6 + 88);
      v16 = a1;
      v17 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&v25, a1, &v27);
      v18 = v25;
      v19 = v26;
      v27 = v25;
      v28 = v26;
      sub_24A79BAD8(&v27);
      sub_24A79CFB0(v18, v19);
      LOBYTE(v25) = *(v6 + 88);
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&v27, a1, &v25);
      v25 = v27;
      LOBYTE(v26) = v28;
      BYTE1(v26) = 1;
      a3(&v25);

      sub_24A79D060(v25, v26, SBYTE1(v26));
    }

    else
    {
      v20 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24A68761C(0xD000000000000037, 0x800000024A8484B0, &v25);
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      *(v6 + 104) = 1;
      v25 = 0;
      LOWORD(v26) = 0;
      a3(&v25);
    }
  }
}

void sub_24A798A38(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 104) == 1)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = a1;
      v7[4] = a2;
      aBlock[4] = sub_24A79C62C;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A7386AC;
      aBlock[3] = &unk_285DC8B00;
      v8 = _Block_copy(aBlock);
      v9 = v3;

      [v9 stopProximityAccessoryDiscoveryWithCompletion_];
      _Block_release(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = sub_24A82D504();
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v11 = sub_24A82CDC4();
    sub_24A6797D0(v11, qword_281518F88);
    log = sub_24A82CD94();
    if (os_log_type_enabled(log, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_24A68761C(0xD00000000000003ELL, 0x800000024A848090, aBlock);
      _os_log_impl(&dword_24A675000, log, v10, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
      sub_24A6876E8(v13);
      MEMORY[0x24C21E1D0](v13, -1, -1);
      MEMORY[0x24C21E1D0](v12, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24A798CA8(void *a1, uint64_t a2, void (*a3)(void **))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      v8 = a1;
      v9 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v10 = sub_24A82CDC4();
      sub_24A6797D0(v10, qword_281518F88);
      v11 = sub_24A82CD94();
      if (os_log_type_enabled(v11, v9))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v25 = 0;
        v26 = 0xE000000000000000;
        v27 = v13;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000033, 0x800000024A848470);
        swift_getErrorValue();
        v14 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v14);

        v15 = sub_24A68761C(0, 0xE000000000000000, &v27);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_24A675000, v11, v9, "FMIPAccessoryDiscoveryController: %s", v12, 0xCu);
        sub_24A6876E8(v13);
        MEMORY[0x24C21E1D0](v13, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      LOBYTE(v27) = *(v6 + 88);
      v16 = a1;
      v17 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&v25, a1, &v27);
      v18 = v25;
      v19 = v26;
      v27 = v25;
      v28 = v26;
      sub_24A79BAD8(&v27);
      sub_24A79CFB0(v18, v19);
      LOBYTE(v25) = *(v6 + 88);
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&v27, a1, &v25);
      v25 = v27;
      LOBYTE(v26) = v28;
      BYTE1(v26) = 1;
      a3(&v25);

      sub_24A79D060(v25, v26, SBYTE1(v26));
    }

    else
    {
      v20 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_281518F88);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24A68761C(0xD000000000000029, 0x800000024A848440, &v25);
        _os_log_impl(&dword_24A675000, v22, v20, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      *(v6 + 104) = 0;
      v25 = 0;
      LOWORD(v26) = 0;
      a3(&v25);
    }
  }
}

void sub_24A799090(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  if (*(v3 + 104) == 1)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v11 = sub_24A82CDC4();
    sub_24A6797D0(v11, qword_281518F88);
    v12 = sub_24A82D4E4();
    v13 = sub_24A82CD94();
    if (os_log_type_enabled(v13, v12))
    {
      v25 = " is in progress.";
      v26 = a2;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_24A68761C(0xD000000000000037, v25 | 0x8000000000000000, aBlock);
      _os_log_impl(&dword_24A675000, v13, v12, "%s", v14, 0xCu);
      sub_24A6876E8(v15);
      MEMORY[0x24C21E1D0](v15, -1, -1);
      v16 = v14;
      a2 = v26;
      MEMORY[0x24C21E1D0](v16, -1, -1);
    }
  }

  v17 = *(v4 + 96);
  if (v17)
  {
    v18 = *a1;
    v19 = swift_allocObject();
    swift_weakInit();
    sub_24A79D0DC(a1, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMIPDiscoveredAccessory);
    v20 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    sub_24A79C638(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v22 = (v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = a2;
    v22[1] = a3;
    aBlock[4] = sub_24A79C69C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC8B50;
    v23 = _Block_copy(aBlock);
    v24 = v17;

    [v24 initiatePairingWith:v18 completion:v23];
    _Block_release(v23);
  }

  else
  {
    __break(1u);
  }
}

void sub_24A7993B8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a1)
    {
      sub_24A79D0DC(a3, v12, type metadata accessor for FMIPDiscoveredAccessory);
      v17 = a1;
      v18 = a1;
      v19 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v20 = sub_24A82CDC4();
      sub_24A6797D0(v20, qword_281518F88);
      v21 = sub_24A82CD94();
      if (os_log_type_enabled(v21, v19))
      {
        v22 = swift_slowAlloc();
        v33 = a5;
        v23 = v22;
        v24 = swift_slowAlloc();
        v36 = v24;
        *v23 = 136315138;
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000020, 0x800000024A848410);
        v34 = a4;
        sub_24A82D914();
        MEMORY[0x24C21C9E0](0x2064656C69616620, 0xEF206F7420657564);
        v35 = a1;
        sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
        sub_24A82D914();
        v25 = sub_24A68761C(v38, v39, &v36);

        *(v23 + 4) = v25;
        a4 = v34;
        _os_log_impl(&dword_24A675000, v21, v19, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      sub_24A79D144(v12, type metadata accessor for FMIPDiscoveredAccessory);
      LOBYTE(v38) = *(v16 + 88);
      v26 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&v36, a1, &v38);
      v38 = v36;
      LOBYTE(v39) = v37;
      BYTE1(v39) = 1;
      a4(&v38);

      sub_24A79D060(v38, v39, SBYTE1(v39));
    }

    else
    {
      sub_24A79D0DC(a3, v14, type metadata accessor for FMIPDiscoveredAccessory);
      v27 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v28 = sub_24A82CDC4();
      sub_24A6797D0(v28, qword_281518F88);
      v29 = sub_24A82CD94();
      if (os_log_type_enabled(v29, v27))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v36 = v31;
        *v30 = 136315138;
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000020, 0x800000024A848410);
        sub_24A82D914();
        MEMORY[0x24C21C9E0](0x6465656363757320, 0xEA00000000006465);
        v32 = sub_24A68761C(v38, v39, &v36);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_24A675000, v29, v27, "FMIPAccessoryDiscoveryController: %s", v30, 0xCu);
        sub_24A6876E8(v31);
        MEMORY[0x24C21E1D0](v31, -1, -1);
        MEMORY[0x24C21E1D0](v30, -1, -1);
      }

      sub_24A79D144(v14, type metadata accessor for FMIPDiscoveredAccessory);
      v38 = 0;
      LOWORD(v39) = 0;
      a4(&v38);
    }
  }
}

void sub_24A799900(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a4;
  v39 = a5;
  v12 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  if (*(v7 + 104) == 1)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_281518F88);
    v15 = sub_24A82D4E4();
    v16 = sub_24A82CD94();
    if (os_log_type_enabled(v16, v15))
    {
      v34 = " is in progress.";
      v36 = a7;
      v17 = swift_slowAlloc();
      v35 = a6;
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_24A68761C(0xD000000000000037, v34 | 0x8000000000000000, aBlock);
      _os_log_impl(&dword_24A675000, v16, v15, "%s", v17, 0xCu);
      sub_24A6876E8(v18);
      v19 = v18;
      a6 = v35;
      MEMORY[0x24C21E1D0](v19, -1, -1);
      v20 = v17;
      a7 = v36;
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }
  }

  v21 = *MEMORY[0x277D49778];
  v22 = objc_allocWithZone(MEMORY[0x277D49600]);
  v23 = sub_24A82CF94();
  v24 = sub_24A82CF94();
  v25 = [v22 initWithName:v23 roleId:v21 roleEmoji:v24];

  v26 = *(v8 + 96);
  if (v26)
  {
    v27 = *a1;
    v28 = swift_allocObject();
    swift_weakInit();
    sub_24A79D0DC(a1, &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMIPDiscoveredAccessory);
    v29 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    sub_24A79C638(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
    v31 = (v30 + ((v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = a6;
    v31[1] = a7;
    aBlock[4] = sub_24A79C6B4;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A79A890;
    aBlock[3] = &unk_285DC8BA0;
    v32 = _Block_copy(aBlock);
    v33 = v26;

    [v33 finalizePairingWith:v27 configuration:v25 completion:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A799CA8(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v74 = sub_24A82CA34();
  v71 = *(v74 - 1);
  v9 = MEMORY[0x28223BE20](v74);
  v73 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v67 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v70 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v67 - v15;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  MEMORY[0x28223BE20](updated);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FMIPItem(0);
  MEMORY[0x28223BE20](v19 - 8);
  v72 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24A6BBA94(&qword_27EF5E9A8, &qword_24A839AD0);
  MEMORY[0x28223BE20](v76);
  v77 = (&v67 - v21);
  v22 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v67 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v67 - v29;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v75 = result;
  if (result)
  {
    if (a2)
    {
      sub_24A79D0DC(a4, v30, type metadata accessor for FMIPDiscoveredAccessory);
      v32 = a2;
      v33 = a2;
      v34 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v35 = sub_24A82CDC4();
      sub_24A6797D0(v35, qword_281518F88);
      v36 = sub_24A82CD94();
      if (os_log_type_enabled(v36, v34))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v85 = v38;
        *v37 = 136315138;
        v81 = 0;
        v82 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000020, 0x800000024A8483C0);
        sub_24A82D914();
        MEMORY[0x24C21C9E0](0x2064656C69616620, 0xEF206F7420657564);
        v80 = a2;
        sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
        sub_24A82D914();
        v39 = sub_24A68761C(v81, v82, &v85);

        *(v37 + 4) = v39;
        _os_log_impl(&dword_24A675000, v36, v34, "FMIPAccessoryDiscoveryController: %s", v37, 0xCu);
        sub_24A6876E8(v38);
        MEMORY[0x24C21E1D0](v38, -1, -1);
        MEMORY[0x24C21E1D0](v37, -1, -1);
      }

      sub_24A79D144(v30, type metadata accessor for FMIPDiscoveredAccessory);
      LOBYTE(v85) = *(v75 + 88);
      v40 = a2;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&v81, a2, &v85);
      v41 = v82;
      v42 = v77;
      *v77 = v81;
      *(v42 + 8) = v41;
      swift_storeEnumTagMultiPayload();
      v79(v42);

      return sub_24A67F378(v42, &qword_27EF5E9A8, &qword_24A839AD0);
    }

    if (!a1)
    {
      sub_24A79D0DC(a4, v28, type metadata accessor for FMIPDiscoveredAccessory);
      v59 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v60 = sub_24A82CDC4();
      sub_24A6797D0(v60, qword_281518F88);
      v61 = sub_24A82CD94();
      if (os_log_type_enabled(v61, v59))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v85 = v63;
        *v62 = 136315138;
        v81 = 0;
        v82 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000020, 0x800000024A8483C0);
        sub_24A82D914();
        MEMORY[0x24C21C9E0](0xD000000000000015, 0x800000024A8483F0);
        v64 = sub_24A68761C(v81, v82, &v85);

        *(v62 + 4) = v64;
        _os_log_impl(&dword_24A675000, v61, v59, "FMIPAccessoryDiscoveryController: %s", v62, 0xCu);
        sub_24A6876E8(v63);
        MEMORY[0x24C21E1D0](v63, -1, -1);
        MEMORY[0x24C21E1D0](v62, -1, -1);
      }

      sub_24A79D144(v28, type metadata accessor for FMIPDiscoveredAccessory);
      v42 = v77;
      *v77 = 0;
      *(v42 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      v79(v42);

      return sub_24A67F378(v42, &qword_27EF5E9A8, &qword_24A839AD0);
    }

    sub_24A79D0DC(a4, v25, type metadata accessor for FMIPDiscoveredAccessory);
    v43 = a1;
    v44 = sub_24A82D504();
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v45 = sub_24A82CDC4();
    sub_24A6797D0(v45, qword_281518F88);
    v46 = sub_24A82CD94();
    if (os_log_type_enabled(v46, v44))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v85 = v48;
      *v47 = 136315138;
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_24A82D854();
      MEMORY[0x24C21C9E0](0xD000000000000020, 0x800000024A8483C0);
      sub_24A82D914();
      MEMORY[0x24C21C9E0](0x6465656363757320, 0xEA00000000006465);
      v49 = sub_24A68761C(v81, v82, &v85);

      *(v47 + 4) = v49;
      _os_log_impl(&dword_24A675000, v46, v44, "FMIPAccessoryDiscoveryController: %s", v47, 0xCu);
      sub_24A6876E8(v48);
      MEMORY[0x24C21E1D0](v48, -1, -1);
      MEMORY[0x24C21E1D0](v47, -1, -1);
    }

    sub_24A79D144(v25, type metadata accessor for FMIPDiscoveredAccessory);
    v51 = v73;
    v50 = v74;
    v52 = v69;
    v83 = sub_24A679170(0, &qword_281512B60, 0x277D49610);
    v84 = &protocol witness table for SPBeacon;
    v81 = v43;
    swift_storeEnumTagMultiPayload();
    v53 = v71;
    (*(v71 + 56))(v52, 1, 1, v50);
    type metadata accessor for FMIPItemUpdateContext(0);
    v54 = swift_allocObject();
    sub_24A79D0DC(v18, v54 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
    v74 = v43;
    v55 = v68;
    sub_24A82CA24();
    v56 = *(v53 + 32);
    v56(v54 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v55, v50);
    v57 = v70;
    sub_24A79D06C(v52, v70);
    v58 = *(v53 + 48);
    if (v58(v57, 1, v50) == 1)
    {
      sub_24A82CA24();
      sub_24A67F378(v52, &qword_27EF5E0E0, &qword_24A836D90);
      sub_24A79D144(v18, type metadata accessor for FMIPItemUpdateType);
      if (v58(v57, 1, v50) != 1)
      {
        sub_24A67F378(v57, &qword_27EF5E0E0, &qword_24A836D90);
      }
    }

    else
    {
      sub_24A67F378(v52, &qword_27EF5E0E0, &qword_24A836D90);
      sub_24A79D144(v18, type metadata accessor for FMIPItemUpdateType);
      v56(v51, v57, v50);
    }

    v56(v54 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v51, v50);
    v65 = v72;
    FMIPItem.init(with:from:)(&v81, v54, v72);
    v66 = v77;
    sub_24A79D0DC(v65, v77, type metadata accessor for FMIPItem);
    swift_storeEnumTagMultiPayload();
    v79(v66);

    sub_24A67F378(v66, &qword_27EF5E9A8, &qword_24A839AD0);
    return sub_24A79D144(v65, type metadata accessor for FMIPItem);
  }

  return result;
}

void sub_24A79A890(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_24A79A91C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = *(v3 + 96);
  if (v10)
  {
    v11 = *a1;
    v12 = swift_allocObject();
    swift_weakInit();
    sub_24A79D0DC(a1, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMIPDiscoveredAccessory);
    v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    sub_24A79C638(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    v15 = (v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v15 = a2;
    v15[1] = a3;
    aBlock[4] = sub_24A79C978;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC8BF0;
    v16 = _Block_copy(aBlock);
    v17 = v10;

    [v17 invalidatePairingWith:v11 completion:v16];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_24A79AB1C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a1)
    {
      sub_24A79D0DC(a3, v12, type metadata accessor for FMIPDiscoveredAccessory);
      v17 = a1;
      v18 = a1;
      v19 = sub_24A82D4E4();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v20 = sub_24A82CDC4();
      sub_24A6797D0(v20, qword_281518F88);
      v21 = sub_24A82CD94();
      if (os_log_type_enabled(v21, v19))
      {
        v22 = swift_slowAlloc();
        v33 = a5;
        v23 = v22;
        v24 = swift_slowAlloc();
        v36 = v24;
        *v23 = 136315138;
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000022, 0x800000024A848390);
        v34 = a4;
        sub_24A82D914();
        MEMORY[0x24C21C9E0](0x2064656C69616620, 0xEF206F7420657564);
        v35 = a1;
        sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
        sub_24A82D914();
        v25 = sub_24A68761C(v38, v39, &v36);

        *(v23 + 4) = v25;
        a4 = v34;
        _os_log_impl(&dword_24A675000, v21, v19, "FMIPAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      sub_24A79D144(v12, type metadata accessor for FMIPDiscoveredAccessory);
      LOBYTE(v38) = *(v16 + 88);
      v26 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&v36, a1, &v38);
      v38 = v36;
      LOBYTE(v39) = v37;
      BYTE1(v39) = 1;
      a4(&v38);

      sub_24A79D060(v38, v39, SBYTE1(v39));
    }

    else
    {
      sub_24A79D0DC(a3, v14, type metadata accessor for FMIPDiscoveredAccessory);
      v27 = sub_24A82D504();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v28 = sub_24A82CDC4();
      sub_24A6797D0(v28, qword_281518F88);
      v29 = sub_24A82CD94();
      if (os_log_type_enabled(v29, v27))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v36 = v31;
        *v30 = 136315138;
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000022, 0x800000024A848390);
        sub_24A82D914();
        MEMORY[0x24C21C9E0](0x6465656363757320, 0xEA00000000006465);
        v32 = sub_24A68761C(v38, v39, &v36);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_24A675000, v29, v27, "FMIPAccessoryDiscoveryController: %s", v30, 0xCu);
        sub_24A6876E8(v31);
        MEMORY[0x24C21E1D0](v31, -1, -1);
        MEMORY[0x24C21E1D0](v30, -1, -1);
      }

      sub_24A79D144(v14, type metadata accessor for FMIPDiscoveredAccessory);
      v38 = 0;
      LOWORD(v39) = 0;
      a4(&v38);
    }
  }
}

uint64_t sub_24A79B064@<X0>(uint64_t x8_0@<X8>)
{
  swift_beginAccess();
  v4 = *(v2 + 112);

  sub_24A79F3BC(sub_24A79CA48, v4, x8_0);
}

uint64_t sub_24A79B0EC(id *a1, uint64_t a2)
{
  v3 = sub_24A82CAA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 identifier];
  sub_24A82CA84();

  v8 = sub_24A82CA74();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

void sub_24A79B1F8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24A82D4E4();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  if (os_log_type_enabled(v5, v3))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24A68761C(0xD000000000000018, 0x800000024A848370, &v16);
    _os_log_impl(&dword_24A675000, v5, v3, "FMIPAccessoryDiscoveryController: %s", v6, 0xCu);
    sub_24A6876E8(v7);
    MEMORY[0x24C21E1D0](v7, -1, -1);
    MEMORY[0x24C21E1D0](v6, -1, -1);
  }

  v8 = *(v2 + 96);
  if (v8)
  {
    v9 = [v8 state];
    v10 = sub_24A79BE48(v9);

    v11 = *(v2 + 96);
    *(v2 + 96) = v10;

    if (*(v2 + 104) == 1)
    {
      v12 = sub_24A82D504();
      v13 = sub_24A82CD94();
      if (os_log_type_enabled(v13, v12))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_24A68761C(0xD000000000000053, 0x800000024A848310, &v16);
        _os_log_impl(&dword_24A675000, v13, v12, "FMIPAccessoryDiscoveryController: %s", v14, 0xCu);
        sub_24A6876E8(v15);
        MEMORY[0x24C21E1D0](v15, -1, -1);
        MEMORY[0x24C21E1D0](v14, -1, -1);
      }

      *(v2 + 104) = 0;

      sub_24A796700(0, 0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A79B488(void *a1, uint64_t a2)
{

  v4 = sub_24A82D504();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  v6 = sub_24A82CD94();
  if (os_log_type_enabled(v6, v4))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315138;
    sub_24A82D854();

    v37 = 0xD000000000000016;
    v38 = 0x800000024A848680;
    sub_24A679170(0, &qword_27EF5DDE8, 0x277D49668);
    sub_24A796540();
    v9 = sub_24A82D3B4();
    MEMORY[0x24C21C9E0](v9);

    v10 = sub_24A68761C(0xD000000000000016, 0x800000024A848680, &v35);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_24A675000, v6, v4, "FMIPAccessoryDiscoveryController: %s", v7, 0xCu);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  sub_24A7951EC(a2);
  v12 = sub_24A71449C(v11);

  swift_beginAccess();
  v13 = a1[14];
  if (*(v13 + 16) <= *(v12 + 16) >> 3)
  {
    v35 = v12;

    sub_24A7EAB80(v13);

    v14 = v35;
  }

  else
  {

    v14 = sub_24A7EAF90(v13, v12);
  }

  v15 = a1[14];
  if (*(v12 + 16) <= *(v15 + 16) >> 3)
  {
    v35 = a1[14];

    sub_24A7EAB80(v12);
    v16 = v35;
  }

  else
  {

    v16 = sub_24A7EAF90(v12, v15);
  }

  a1[14] = v12;

  v17 = sub_24A82D504();
  v18 = sub_24A82CD94();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34[0] = v20;
    *v19 = 136315138;
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_24A82D854();

    v35 = 0xD00000000000001CLL;
    v36 = 0x800000024A848660;
    type metadata accessor for FMIPDiscoveredAccessory(0);
    sub_24A6956F8(&qword_27EF5DD90, type metadata accessor for FMIPDiscoveredAccessory, &protocol conformance descriptor for FMIPDiscoveredAccessory);
    v21 = sub_24A82D3B4();
    MEMORY[0x24C21C9E0](v21);

    v22 = sub_24A68761C(v35, v36, v34);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_24A675000, v18, v17, "FMIPAccessoryDiscoveryController: %s", v19, 0xCu);
    sub_24A6876E8(v20);
    MEMORY[0x24C21E1D0](v20, -1, -1);
    MEMORY[0x24C21E1D0](v19, -1, -1);
  }

  v23 = sub_24A82D504();
  v24 = sub_24A82CD94();
  if (os_log_type_enabled(v24, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34[0] = v26;
    *v25 = 136315138;
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_24A82D854();

    v35 = 0xD000000000000012;
    v36 = 0x800000024A848640;
    type metadata accessor for FMIPDiscoveredAccessory(0);
    sub_24A6956F8(&qword_27EF5DD90, type metadata accessor for FMIPDiscoveredAccessory, &protocol conformance descriptor for FMIPDiscoveredAccessory);
    v27 = sub_24A82D3B4();
    MEMORY[0x24C21C9E0](v27);

    v28 = sub_24A68761C(v35, v36, v34);

    *(v25 + 4) = v28;
    _os_log_impl(&dword_24A675000, v24, v23, "FMIPAccessoryDiscoveryController: %s", v25, 0xCu);
    sub_24A6876E8(v26);
    MEMORY[0x24C21E1D0](v26, -1, -1);
    MEMORY[0x24C21E1D0](v25, -1, -1);
  }

  if (*(v14 + 16))
  {
    swift_beginAccess();
    v29 = a1[2];
    if (v29)
    {
      v30 = a1[3];

      v29(v14);
      sub_24A6AFFE8(v29, v30);
    }
  }

  if (*(v16 + 16))
  {
    swift_beginAccess();
    v31 = a1[4];
    if (v31)
    {
      v32 = a1[5];

      v31(v16);
      sub_24A6AFFE8(v31, v32);
    }
  }
}

uint64_t sub_24A79BAD8(id *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_24A79CF9C(*a1, v4);
  v5 = sub_24A82D504();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v8 = 136315138;
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_24A82D854();
    MEMORY[0x24C21C9E0](0xD000000000000039, 0x800000024A848290);
    if (v4 == 4 && v3 == 7)
    {
      v23 = 7;
      v24 = 4;
      sub_24A7CF220();
      type metadata accessor for FMLocalize();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass_];
      v11 = sub_24A82C6F4();
      v13 = v12;
    }

    else
    {
      v23 = v3;
      v24 = v4;
      sub_24A7CF220();
      type metadata accessor for FMLocalize();
      v14 = swift_getObjCClassFromMetadata();
      v15 = [objc_opt_self() bundleForClass_];
      v11 = sub_24A82C6F4();
      v13 = v16;
    }

    MEMORY[0x24C21C9E0](v11, v13);

    v17 = sub_24A68761C(v25, v26, &v22);

    *(v8 + 4) = v17;
    _os_log_impl(&dword_24A675000, v7, v5, "FMIPAccessoryDiscoveryController: %s", v8, 0xCu);
    sub_24A6876E8(v21);
    MEMORY[0x24C21E1D0](v21, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  sub_24A79CFB0(v3, v4);

  result = swift_beginAccess();
  v19 = *(v2 + 64);
  if (v19)
  {
    v20 = *(v2 + 72);
    v23 = v3;
    v24 = v4;

    v19(&v23);
    return sub_24A6AFFE8(v19, v20);
  }

  return result;
}

id sub_24A79BE48(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D495D8]) initWithPreviousState_];
  v2 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A79D1A4;
  v16 = v2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A79C2D0;
  v14 = &unk_285DC8E70;
  v3 = _Block_copy(&v11);

  [v1 setAccessoryDiscoveredCallback_];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A79D1AC;
  v16 = v4;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A699BA0;
  v14 = &unk_285DC8E98;
  v5 = _Block_copy(&v11);

  [v1 setSessionInvalidatedCallback_];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A79D1B4;
  v16 = v6;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A720114;
  v14 = &unk_285DC8EC0;
  v7 = _Block_copy(&v11);

  [v1 setAccessoryDiscoveryErrorCallback_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A79D1BC;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A699BA0;
  v14 = &unk_285DC8EE8;
  v9 = _Block_copy(&v11);

  [v1 setPairingAccessoryDetectionCallback_];
  _Block_release(v9);
  return v1;
}

uint64_t sub_24A79C138(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 80);
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_24A79D1C4;
    *(v7 + 24) = v6;
    aBlock[4] = sub_24A680674;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DC8F60;
    v8 = _Block_copy(aBlock);

    dispatch_sync(v4, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24A79C2D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_24A679170(0, &qword_27EF5DDE8, 0x277D49668);
  sub_24A796540();
  v3 = sub_24A82D3A4();

  v2(v3);
}

uint64_t sub_24A79C360(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24A79B1F8(result);
  }

  return result;
}

void sub_24A79C3B8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    LOBYTE(v7) = *(Strong + 88);
    v4 = a1;
    FMIPAccessoryError.init(underlyingError:discoveryType:)(&v9, a1, &v7);
    v5 = v9;
    v6 = v10;
    v7 = v9;
    v8 = v10;
    sub_24A79BAD8(&v7);

    sub_24A79CFB0(v5, v6);
  }
}

void *sub_24A79C45C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    v3 = v2[2];
    v4 = v2[3];
    v5 = v2[4];
    v6 = v2[5];
    v8 = v2[6];
    v7 = v2[7];
    v9 = v2[8];
    v10 = v2[9];
    sub_24A6A7314(v3, v4);
    sub_24A6A7314(v5, v6);
    sub_24A6A7314(v8, v7);
    sub_24A6A7314(v9, v10);

    if (v8)
    {

      sub_24A6AFFE8(v3, v4);
      sub_24A6AFFE8(v5, v6);
      sub_24A6AFFE8(v8, v7);
      v11 = sub_24A6AFFE8(v9, v10);
      v8(v11);
      v12 = v8;
      v13 = v7;
    }

    else
    {
      sub_24A6AFFE8(v3, v4);
      sub_24A6AFFE8(v5, v6);
      sub_24A6AFFE8(0, v7);
      v12 = v9;
      v13 = v10;
    }

    return sub_24A6AFFE8(v12, v13);
  }

  return result;
}

uint64_t sub_24A79C638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPDiscoveredAccessory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A79C6B4(void *a1, void *a2)
{
  v5 = *(type metadata accessor for FMIPDiscoveredAccessory(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_24A799CA8(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_24A79C768()
{
  v1 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 24))
  {
  }

  v5 = v0 + v3 + *(v1 + 24);
  v6 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  if (!(*(*(v6 - 1) + 48))(v5, 1, v6))
  {

    v7 = v6[12];
    v8 = sub_24A82C8B4();
    v9 = *(*(v8 - 8) + 8);
    v9(v5 + v7, v8);
    v9(v5 + v6[13], v8);
    v9(v5 + v6[14], v8);
    v9(v5 + v6[15], v8);
    v9(v5 + v6[16], v8);
    v9(v5 + v6[17], v8);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24A79C990(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FMIPDiscoveredAccessory(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a2(a1, v6, v2 + v5, v8, v9);
}

unint64_t sub_24A79CA6C()
{
  result = qword_27EF5E998;
  if (!qword_27EF5E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E998);
  }

  return result;
}

unint64_t sub_24A79CB0C()
{
  result = qword_27EF5E9A0;
  if (!qword_27EF5E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E9A0);
  }

  return result;
}

uint64_t sub_24A79CECC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24A79CF28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_24A79CF9C(id result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return result;
  }

  return result;
}

void sub_24A79CFB0(id a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }
}

uint64_t sub_24A79CFFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_24A79D060(id a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    sub_24A79CFB0(a1, a2);
  }
}

uint64_t sub_24A79D06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A79D0DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A79D144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for FMIPLockRequest(uint64_t a1)
{
  result = qword_27EF5E9B8;
  if (!qword_27EF5E9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A79D2EC()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78E88);
  v4 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v3 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 8);
  v5 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277D837D0];
  *&v31 = v4;
  *(&v31 + 1) = v3;
  v6 = qword_27EF5D920;
  v7 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock(v7 + 6);

  os_unfair_lock_unlock(v7 + 6);

  sub_24A6A50DC(&v31, v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v30, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v9 = *(v1 + v6);

  os_unfair_lock_lock((v9 + 24));
  sub_24A6A3D28((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));

  v10 = MEMORY[0x277D839B0];
  v32 = MEMORY[0x277D839B0];
  LOBYTE(v31) = 0;
  v11 = *(v1 + v6);

  os_unfair_lock_lock(v11 + 6);

  os_unfair_lock_unlock(v11 + 6);

  sub_24A6A50DC(&v31, v30);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v30, 0x646E756F73, 0xE500000000000000, v12);
  v13 = *(v1 + v6);

  os_unfair_lock_lock((v13 + 24));
  sub_24A6FF740((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));

  v14 = *(v2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_isUserTextEnabled);
  v32 = v10;
  LOBYTE(v31) = v14;
  v15 = *(v1 + v6);

  os_unfair_lock_lock(v15 + 6);

  os_unfair_lock_unlock(v15 + 6);

  sub_24A6A50DC(&v31, v30);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v30, 0x7478655472657375, 0xE800000000000000, v16);
  v17 = *(v1 + v6);

  os_unfair_lock_lock((v17 + 24));
  sub_24A6FF740((v17 + 16));
  os_unfair_lock_unlock((v17 + 24));

  v18 = *(v2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message + 8);
  if (v18)
  {
    v19 = *(v2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message);
    v32 = v5;
    *&v31 = v19;
    *(&v31 + 1) = v18;
    v20 = *(v1 + v6);

    os_unfair_lock_lock(v20 + 6);

    os_unfair_lock_unlock(v20 + 6);

    sub_24A6A50DC(&v31, v30);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = sub_24A6A4F8C(v30, 1954047348, 0xE400000000000000, v21);
    v23 = *(v1 + v6);
    MEMORY[0x28223BE20](v22);

    os_unfair_lock_lock((v23 + 24));
    sub_24A6FF740((v23 + 16));
    os_unfair_lock_unlock((v23 + 24));
  }

  result = *(v2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode + 8);
  if (result)
  {
    v25 = *(v2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode);
    v32 = v5;
    *&v31 = v25;
    *(&v31 + 1) = result;
    v26 = *(v1 + v6);

    os_unfair_lock_lock(v26 + 6);

    os_unfair_lock_unlock(v26 + 6);

    sub_24A6A50DC(&v31, v30);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_24A6A4F8C(v30, 0x65646F6373736170, 0xE800000000000000, v27);
    v29 = *(v1 + v6);
    MEMORY[0x28223BE20](v28);

    os_unfair_lock_lock((v29 + 24));
    sub_24A6FF740((v29 + 16));
    os_unfair_lock_unlock((v29 + 24));
  }

  return result;
}

uint64_t sub_24A79D7A8()
{
  sub_24A6F8F90();

  return swift_deallocClassInstance();
}

unint64_t sub_24A79D874@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A79ECC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A79D8A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006C657665;
  v4 = 0x4C79726574746162;
  v5 = 0x6E6F697469736F70;
  v6 = 0xEC00000065707954;
  if (v2 != 6)
  {
    v5 = 0x6D617473656D6974;
    v6 = 0xE900000000000070;
  }

  v7 = 0x6E6F697461636F6CLL;
  v8 = 0xEC00000065707954;
  if (v2 != 4)
  {
    v7 = 0x64757469676E6F6CLL;
    v8 = 0xE900000000000065;
  }

  if (*v1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x800000024A843B30;
  v10 = 0xD000000000000012;
  if (v2 != 2)
  {
    v10 = 0x656475746974616CLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x5379726574746162;
    v3 = 0xED00007375746174;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24A79D9D8()
{
  v1 = *v0;
  v2 = 0x4C79726574746162;
  v3 = 0x6E6F697469736F70;
  if (v1 != 6)
  {
    v3 = 0x6D617473656D6974;
  }

  v4 = 0x6E6F697461636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x64757469676E6F6CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 2)
  {
    v5 = 0x656475746974616CLL;
  }

  if (*v0)
  {
    v2 = 0x5379726574746162;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_24A79DB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A79ECC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A79DB3C(uint64_t a1)
{
  v2 = sub_24A79E18C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A79DB78(uint64_t a1)
{
  v2 = sub_24A79E18C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPHistoricalLocation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v56 = a2;
  v4 = sub_24A82CA34();
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5E9C8, &unk_24A839B20);
  v59 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A79E18C();
  sub_24A82DD64();
  if (!v2)
  {
    v54 = v6;
    v10 = v59;
    LOBYTE(v57[0]) = 6;
    v11 = sub_24A82DA44();
    v53 = v12;
    LOBYTE(v57[0]) = 0;
    sub_24A82DA64();
    v14 = v13;
    LOBYTE(v57[0]) = 1;
    v51 = sub_24A82DA44();
    v52 = v15;
    LOBYTE(v57[0]) = 3;
    sub_24A82DA64();
    v17 = v16;
    LOBYTE(v57[0]) = 5;
    sub_24A82DA64();
    v19 = v18;
    LOBYTE(v57[0]) = 2;
    sub_24A82DA64();
    v21 = v20;
    LOBYTE(v57[0]) = 7;
    v23 = sub_24A82DA94();
    v50 = v9;
    v24 = [objc_opt_self() fm:v23 dateFromEpoch:?];
    sub_24A82C9F4();

    v25 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    v26 = sub_24A82C994();
    v27 = [v25 initWithCoordinate:v26 altitude:v17 horizontalAccuracy:v19 verticalAccuracy:-1.0 course:v21 speed:-1.0 timestamp:{-1.0, -1.0}];

    v28._countAndFlagsBits = v11;
    v28._object = v53;
    FMIPLocationType.init(rawValue:)(v28);
    if (LOBYTE(v57[0]) == 20)
    {
      v29 = 0;
    }

    else
    {
      v29 = LOBYTE(v57[0]);
    }

    v30 = sub_24A82D9C4();

    LODWORD(v52) = v29;
    LOBYTE(v57[0]) = v29;
    if (v30 >= 4)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30;
    }

    v53 = v27;
    v57[1] = v27;
    v57[2] = v14;
    LODWORD(v51) = v31;
    v58 = v31;
    v49 = FMIPHistoricalLocation.debugDescription.getter();
    v33 = v32;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v34 = sub_24A82CDC4();
    sub_24A6797D0(v34, qword_281518F88);

    v35 = sub_24A82CD94();
    v36 = sub_24A82D4C4();

    v37 = v36;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v48 = a1;
      v39 = v38;
      v40 = swift_slowAlloc();
      v57[0] = v40;
      *v39 = 136315138;
      v41 = sub_24A68761C(v49, v33, v57);
      v49 = v4;
      v42 = v35;
      v43 = v41;

      v44 = v39;
      a1 = v48;
      *(v44 + 1) = v43;
      v45 = v44;
      _os_log_impl(&dword_24A675000, v42, v37, "FMIPHistoricalLocation: initialized %s", v44, 0xCu);
      sub_24A6876E8(v40);
      MEMORY[0x24C21E1D0](v40, -1, -1);
      MEMORY[0x24C21E1D0](v45, -1, -1);

      (*(v55 + 8))(v54, v49);
    }

    else
    {

      (*(v55 + 8))(v54, v4);
    }

    (*(v10 + 8))(v50, v7);
    v46 = v56;
    *v56 = v52;
    *(v46 + 1) = v53;
    *(v46 + 2) = v14;
    v46[24] = v51;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A79E18C()
{
  result = qword_27EF5E9D0;
  if (!qword_27EF5E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E9D0);
  }

  return result;
}

uint64_t FMIPHistoricalLocation.debugDescription.getter()
{
  v1 = *(v0 + 8);
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0xD000000000000016, 0x800000024A839B10);
  MEMORY[0x24C21C9E0](0x203A74616C203ALL, 0xE700000000000000);
  [v1 coordinate];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();
  MEMORY[0x24C21C9E0](980316012, 0xE400000000000000);
  [v1 coordinate];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0x6172756363416820, 0xEB000000003A7963);
  [v1 horizontalAccuracy];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](32, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0, 0xE000000000000000);

  sub_24A82D854();
  MEMORY[0x24C21C9E0](0x5379726574746162, 0xEE003A7375746174);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0x7972657474616220, 0xEF203A6C6576654CLL);
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A8486C0);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](62, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0, 0xE000000000000000);

  return 0;
}

void FMIPHistoricalLocation.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5E9D8, &qword_24A839B48);
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v11[3] = v1[24];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A79E18C();
  sub_24A82DD84();
  v9 = [v8 timestamp];
  if (v9)
  {
    v10 = v9;
    v20 = v7;
    FMIPLocationType.rawValue.getter();
    v19 = 6;
    sub_24A82DB04();
    if (!v2)
    {

      [v8 coordinate];
      v18 = 3;
      sub_24A82DB24();
      [v8 coordinate];
      v17 = 5;
      sub_24A82DB24();
      [v8 horizontalAccuracy];
      v16 = 2;
      sub_24A82DB24();
      [v10 fm_epoch];
      v15 = 7;
      sub_24A82DB54();
      v14 = 0;
      sub_24A82DB24();
      v13 = 1;
      sub_24A82DB04();
    }

    (*(v12 + 8))(v6, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s8FMIPCore22FMIPHistoricalLocationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_24A6AEB68();
  if ((sub_24A82D5E4() & 1) == 0)
  {
    return 0;
  }

  v6 = FMIPLocationType.rawValue.getter();
  v8 = v7;
  if (v6 == FMIPLocationType.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_24A82DC04();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (v2 != v4)
  {
    return 0;
  }

  return sub_24A6A3BD4(v3, v5);
}

__n128 sub_24A79E9C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24A79E9DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24A79EA24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPHistoricalLocation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPHistoricalLocation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A79EBBC()
{
  result = qword_27EF5E9E0;
  if (!qword_27EF5E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E9E0);
  }

  return result;
}

unint64_t sub_24A79EC14()
{
  result = qword_27EF5E9E8;
  if (!qword_27EF5E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E9E8);
  }

  return result;
}

unint64_t sub_24A79EC6C()
{
  result = qword_27EF5E9F0;
  if (!qword_27EF5E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E9F0);
  }

  return result;
}

unint64_t sub_24A79ECC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A79ED3C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_24A82D744();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C21D180](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void sub_24A79EE90(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24A82D704();
    sub_24A679170(0, a4, a5);
    sub_24A6AB7EC(a6, a4, a5);
    sub_24A82D414();
    v8 = v29;
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v15 = v33;
  }

  else
  {
    v16 = -1 << *(a3 + 32);
    v12 = a3 + 56;
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

    v15 = v18 & *(a3 + 56);

    v14 = 0;
  }

  v28 = v8;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (v15)
  {
LABEL_12:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (v23)
    {
      while (1)
      {
        v34 = v23;
        v24 = a1(&v34);
        if (v7)
        {
          break;
        }

        if (v24)
        {
          goto LABEL_23;
        }

        v14 = v21;
        v15 = v22;
        v8 = v28;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_24A82D784())
        {
          goto LABEL_20;
        }

        sub_24A679170(0, a4, a5);
        swift_dynamicCast();
        v23 = v34;
        v21 = v14;
        v22 = v15;
        if (!v34)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_24A6BAFBC(v28);
    }

    else
    {
LABEL_21:
      v8 = v28;
LABEL_20:
      sub_24A6BAFBC(v8);
    }
  }

  else
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

      v20 = *(v12 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24A79F0DC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FMIPDevice(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_24A7A9180(v12, v10, type metadata accessor for FMIPDevice);
      v14 = a1(v10);
      if (v3)
      {
        return sub_24A7A91E8(v10, type metadata accessor for FMIPDevice);
      }

      if (v14)
      {
        break;
      }

      sub_24A7A91E8(v10, type metadata accessor for FMIPDevice);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_24A6A23F8(v10, v18, type metadata accessor for FMIPDevice);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

void *sub_24A79F2A8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A82D744())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C21D180](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_24A79F48C(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v26 = a6;
  v27 = a1;
  v28 = a4;
  v29 = a5;
  v25 = a7;
  v24 = a3(0);
  v30 = *(v24 - 8);
  v9 = MEMORY[0x28223BE20](v24);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 56);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      sub_24A7A9180(*(a2 + 48) + *(v30 + 72) * (__clz(__rbit64(v16)) | (v19 << 6)), v13, v28);
      sub_24A6A23F8(v13, v11, v29);
      v20 = v27(v11);
      if (v7)
      {
        sub_24A7A91E8(v11, v26);

        return;
      }

      if (v20)
      {
        break;
      }

      v16 &= v16 - 1;
      sub_24A7A91E8(v11, v26);
      v18 = v19;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v23 = v25;
    sub_24A6A23F8(v11, v25, v29);
    v22 = v23;
    v21 = 0;
LABEL_13:
    (*(v30 + 56))(v22, v21, 1, v24);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        v21 = 1;
        v22 = v25;
        goto LABEL_13;
      }

      v16 = *(a2 + 56 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_24A79F6D4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));

      v13 = a1(&v14);
      if (v3)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_12;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
LABEL_12:

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t FMIPItem.partType.getter@<X0>(char *a1@<X8>)
{
  result = type metadata accessor for FMIPItem(0);
  v4 = v1 + *(result + 64);
  if (*(v4 + 8))
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v6 = (v1 + *(result + 56));
    result = *v6;
    if (*v6 == 1702060355 && v6[1] == 0xE400000000000000)
    {
      v5 = 1;
    }

    else
    {
      result = sub_24A82DC04();
      v5 = result & 1;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t FMIPItem.primaryItemPart.getter()
{
  v1 = type metadata accessor for FMIPItem(0);
  v2 = v1;
  v3 = v0 + *(v1 + 64);
  v4 = *(v3 + 8);
  if (v4)
  {
    if (*(v3 + 32) <= 1u && *(v3 + 32))
    {
      v7 = 1;
      goto LABEL_25;
    }
  }

  else
  {
    v5 = (v0 + *(v1 + 56));
    v6 = *v5 == 1702060355 && v5[1] == 0xE400000000000000;
    if (v6 || (sub_24A82DC04() & 1) != 0)
    {
      v7 = 1;
      goto LABEL_25;
    }
  }

  v8 = sub_24A82DC04();

  if ((v8 & 1) == 0)
  {
    if (v4)
    {
      if (*(v3 + 32) > 1u || *(v3 + 32))
      {
LABEL_24:
        v7 = sub_24A82DC04();
        goto LABEL_25;
      }
    }

    else
    {
      v9 = (v0 + *(v2 + 56));
      v10 = *v9 == 1702060355 && v9[1] == 0xE400000000000000;
      if (v10 || (sub_24A82DC04() & 1) != 0)
      {
        goto LABEL_24;
      }
    }

    v7 = 1;
LABEL_25:

    return v7 & 1;
  }

  v7 = 1;
  return v7 & 1;
}

uint64_t FMIPItem.isOwner.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPItem(0) + 60));
  if (*v1 == 0x6F6C4072656E776FLL && v1[1] == 0xEF74736F686C6163)
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t FMIPItem.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPItem(0);
  v6 = v5[24];
  FMIPProductType.productInformation.getter(v67);
  v7 = v67[3];
  if (v67[3])
  {
    v8 = v67[4];
    sub_24A67DF6C(v67, v67[3]);
    v9 = (*(v8 + 32))(v7, v8);
    v63 = v10;
    v64 = v9;
    sub_24A6876E8(v67);
  }

  else
  {
    sub_24A67F378(v67, &qword_27EF5DF48, &qword_24A839DA0);
    v63 = 0;
    v64 = 0;
  }

  FMIPProductType.productInformation.getter(v67);
  v11 = v67[3];
  if (v67[3])
  {
    v12 = v67[4];
    sub_24A67DF6C(v67, v67[3]);
    v65 = (*(v12 + 24))(v11, v12);
    sub_24A6876E8(v67);
  }

  else
  {
    sub_24A67F378(v67, &qword_27EF5DF48, &qword_24A839DA0);
    v65 = 0;
  }

  FMIPProductType.productInformation.getter(v67);
  v13 = v67[3];
  if (v67[3])
  {
    v14 = v67[4];
    sub_24A67DF6C(v67, v67[3]);
    v62 = (*(v14 + 16))(v13, v14);
    sub_24A6876E8(v67);
  }

  else
  {
    sub_24A67F378(v67, &qword_27EF5DF48, &qword_24A839DA0);
    v62 = 0;
  }

  sub_24A7A9180(v0 + v6, v4, type metadata accessor for FMIPProductType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_24A7A91E8(v4, type metadata accessor for FMIPProductType);
  v67[0] = 0;
  v67[1] = 0xE000000000000000;
  sub_24A82D854();
  v68 = v67[0];
  v69 = v67[1];
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0x6D65744950494D46, 0xE800000000000000);
  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A8463D0);
  MEMORY[0x24C21C9E0](v0[44], v0[45]);
  v61 = "% locationType: ";
  MEMORY[0x24C21C9E0](0xD000000000000018, 0x800000024A8486E0);
  v15 = v0[46];
  v16 = v1[47];

  v17 = sub_24A68D464(10, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x24C21C960](v17, v19, v21, v23);
  v26 = v25;

  MEMORY[0x24C21C9E0](v24, v26);

  MEMORY[0x24C21C9E0](0x6D616E202020200ALL, 0xEB00000000203A65);
  MEMORY[0x24C21C9E0](*(v1 + v5[14]), *(v1 + v5[14] + 8));
  MEMORY[0x24C21C9E0](0x636F6C202020200ALL, 0xEF203A6E6F697461);
  v27 = v1[49];
  if (v27)
  {
    v28 = v1[50];
    v29 = v1[48];
    LOWORD(v67[0]) = v29 & 0x101;
    BYTE2(v67[0]) = BYTE2(v29) & 1;
    BYTE3(v67[0]) = BYTE3(v29);
    v67[1] = v27;
    v67[2] = v28;
    v30 = FMIPLocation.debugDescription.getter();
    v32 = v31;
  }

  else
  {
    v32 = 0xE400000000000000;
    v30 = 1701736270;
  }

  MEMORY[0x24C21C9E0](v30, v32);

  MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A848700);
  v33 = v1[40];
  if (v33)
  {
    v34 = v1[41];
    v35 = v1[39];
    LOWORD(v67[0]) = v35 & 0x101;
    BYTE2(v67[0]) = BYTE2(v35) & 1;
    BYTE3(v67[0]) = BYTE3(v35);
    v67[1] = v33;
    v67[2] = v34;
    v36 = FMIPLocation.debugDescription.getter();
    v38 = v37;
  }

  else
  {
    v38 = 0xE400000000000000;
    v36 = 1701736270;
  }

  v39 = v11 == 0;
  MEMORY[0x24C21C9E0](v36, v38);

  MEMORY[0x24C21C9E0](0xD000000000000016, 0x800000024A848720);
  v40 = v1[43];
  v67[0] = v1[42];
  v67[1] = v40;

  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  v41 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v41);

  MEMORY[0x24C21C9E0](0x6C6F72202020200ALL, 0xEB00000000203A65);
  MEMORY[0x24C21C9E0](*(v1 + v5[17] + 24), *(v1 + v5[17] + 32));
  MEMORY[0x24C21C9E0](0x5A7369202020200ALL, 0xED0000203A737565);
  if (EnumCaseMultiPayload == 1)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v42, v43);

  MEMORY[0x24C21C9E0](0x646F6D202020200ALL, 0xEC000000203A6C65);
  v67[0] = v64;
  v67[1] = v63;
  v44 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v44);

  MEMORY[0x24C21C9E0](0xD000000000000017, 0x800000024A848740);
  v67[0] = v62;
  LOBYTE(v67[1]) = v13 == 0;
  sub_24A6BBA94(&qword_27EF5D7F8, &unk_24A8343C0);
  v45 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v45);

  MEMORY[0x24C21C9E0](0xD000000000000018, v61 | 0x8000000000000000);
  v67[0] = v65;
  LOBYTE(v67[1]) = v39;
  v46 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v46);

  MEMORY[0x24C21C9E0](0x726170202020200ALL, 0xEF203A6F666E4974);
  v47 = v1 + v5[16];
  v48 = *(v47 + 1);
  v49 = *(v47 + 2);
  v50 = *(v47 + 3);
  v51 = v47[32];
  v67[0] = *v47;
  v67[1] = v48;
  v67[2] = v49;
  v67[3] = v50;
  LOBYTE(v67[4]) = v51;
  sub_24A76ED78(v67[0], v48, v49, v50);
  sub_24A6BBA94(&qword_27EF5E9F8, &qword_24A839DA8);
  v52 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v52);

  MEMORY[0x24C21C9E0](0x646461202020200ALL, 0xEF27203A73736572);
  memcpy(v67, v1 + 1, sizeof(v67));
  if (sub_24A6921A8(v67) == 1 || (memcpy(v66, v67, sizeof(v66)), v53 = FMIPAddress.displayAddress.getter(), !v54))
  {

    v55 = 0xE300000000000000;
    v53 = 7104878;
  }

  else
  {
    v55 = v54;
  }

  MEMORY[0x24C21C9E0](v53, v55);

  MEMORY[0x24C21C9E0](0x7265747461622027, 0xEB00000000203A79);
  v66[0] = *(v1 + 296);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A848760);
  if ((*(v1 + v5[19]) & 0x40) != 0)
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if ((*(v1 + v5[19]) & 0x40) != 0)
  {
    v57 = 0xE400000000000000;
  }

  else
  {
    v57 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v56, v57);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A848780);
  MEMORY[0x24C21C9E0](*(v1 + v5[18]), *(v1 + v5[18] + 8));
  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A8487A0);
  MEMORY[0x24C21C9E0](*(v1 + v5[20]), *(v1 + v5[20] + 8));
  MEMORY[0x24C21C9E0](0xD00000000000001CLL, 0x800000024A8487C0);
  sub_24A82D374();
  MEMORY[0x24C21C9E0](15882, 0xE200000000000000);
  return v68;
}

uint64_t FMIPItem.init(item:updateType:address:location:crowdSourcedLocation:connected:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v83) = a6;
  v88 = a2;
  v86 = a7;
  v11 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v71 - v12;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  MEMORY[0x28223BE20](updated - 8);
  v84 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMIPItem(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a4[1];
  v20 = *a5;
  v87 = *(a5 + 1);
  v82 = *(a1 + *(v16 + 76));
  if (v19)
  {
    v21 = *a4;
    v22 = a4[2];
  }

  else
  {
    v21 = a1[48];
    v19 = a1[49];
    v22 = a1[50];
    v23 = v19;
  }

  v24 = *(a1 + v15[25]);
  if (v24 == 1)
  {

    v21 = 0;
    v19 = 0;
    v22 = 0;
  }

  memcpy(v91, a3, 0x120uLL);
  if (sub_24A6921A8(v91) == 1)
  {
    memcpy(v89, a1 + 1, sizeof(v89));
    sub_24A67E964(v89, v90, &unk_27EF5E0D0, &qword_24A8319E0);
    v25 = v89;
  }

  else
  {
    v25 = a3;
  }

  memcpy(v90, v25, sizeof(v90));
  memcpy(v18 + 8, v90, 0x120uLL);
  v18[296] = *(a1 + 296);
  *(v18 + 38) = a1[38];
  v26 = v87;
  if (!v87)
  {
    v20 = a1[39];
    v87 = *(a1 + 20);
    v27 = v87;
    v26 = v87;
  }

  *(v18 + 39) = v20;
  *(v18 + 20) = v26;
  v28 = a1[43];
  *(v18 + 42) = a1[42];
  *(v18 + 43) = v28;
  *&v87 = v28;
  v29 = a1[45];
  *(v18 + 44) = a1[44];
  *(v18 + 45) = v29;
  v81 = v29;
  v30 = a1[47];
  *(v18 + 46) = a1[46];
  *(v18 + 47) = v30;
  v80 = v30;
  v18[v15[21]] = *(a1 + v15[21]);
  v18[v15[22]] = *(a1 + v15[22]);
  v18[v15[25]] = v24;
  if (!v19)
  {
    v21 = a1[48];
    v19 = a1[49];
    v22 = a1[50];
    v31 = v19;
  }

  if ((v83 == 2) | v83 & 1)
  {
    v32 = v82;
  }

  else
  {
    v32 = v82 & 0xFFFFFFFFFFFFFFBFLL;
  }

  *(v18 + 48) = v21;
  *(v18 + 49) = v19;
  *(v18 + 50) = v22;
  sub_24A67E964(a1 + v15[13], &v18[v15[13]], &unk_27EF5E100, &unk_24A839DB0);
  v33 = v15[14];
  v35 = *(a1 + v33);
  v83 = *(a1 + v33 + 8);
  v34 = v83;
  v36 = &v18[v33];
  *v36 = v35;
  *(v36 + 1) = v34;
  v37 = v15[15];
  v39 = *(a1 + v37);
  v76 = *(a1 + v37 + 8);
  v38 = v76;
  v40 = &v18[v37];
  *v40 = v39;
  *(v40 + 1) = v38;
  v41 = v15[16];
  v42 = a1 + v41;
  v43 = *(a1 + v41 + 8);
  v82 = *(a1 + v41);
  v45 = *(a1 + v41 + 24);
  v78 = *(a1 + v41 + 16);
  v44 = v78;
  v79 = v43;
  v77 = v45;
  v46 = &v18[v41];
  *v46 = v82;
  *(v46 + 1) = v43;
  *(v46 + 2) = v44;
  *(v46 + 3) = v45;
  v75 = v42[32];
  v46[32] = v75;
  sub_24A7A9180(a1 + v15[24], &v18[v15[24]], type metadata accessor for FMIPProductType);
  v47 = v15[17];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 24);
  v51 = *(a1 + v47 + 32);
  v73 = *(a1 + v47 + 16);
  v50 = v73;
  v74 = v51;
  v52 = &v18[v47];
  *v52 = *v48;
  *(v52 + 2) = v50;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v53 = v15[18];
  v55 = *(a1 + v53);
  v72 = *(a1 + v53 + 8);
  v54 = v72;
  v56 = &v18[v53];
  *v56 = v55;
  *(v56 + 1) = v54;
  *&v18[v15[19]] = v32;
  v57 = v15[20];
  v59 = *(a1 + v57);
  v71 = *(a1 + v57 + 8);
  v58 = v71;
  v60 = &v18[v57];
  *v60 = v59;
  *(v60 + 1) = v58;
  *&v18[v15[23]] = *(a1 + v15[23]);
  v61 = *a1;
  v62 = v84;
  sub_24A7A9180(v88, v84, type metadata accessor for FMIPItemUpdateType);
  v63 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp;
  v64 = sub_24A82CA34();
  v65 = *(v64 - 8);
  v66 = v61 + v63;
  v67 = v85;
  (*(v65 + 16))(v85, v66, v64);
  (*(v65 + 56))(v67, 0, 1, v64);
  type metadata accessor for FMIPItemUpdateContext(0);
  v68 = swift_allocObject();

  sub_24A76ED78(v82, v79, v78, v77);

  v69 = sub_24A7B3A90(v62, v67, v68, v61);

  sub_24A7A91E8(v88, type metadata accessor for FMIPItemUpdateType);
  *v18 = v69;
  *&v18[v15[26]] = *(a1 + v15[26]);
  sub_24A6A23F8(v18, v86, type metadata accessor for FMIPItem);
  return sub_24A7A91E8(a1, type metadata accessor for FMIPItem);
}