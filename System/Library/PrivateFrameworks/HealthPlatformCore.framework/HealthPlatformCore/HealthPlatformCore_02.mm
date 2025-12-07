void *sub_22872A220(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_22872A394(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 10) | (16 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL _s18HealthPlatformCore20ModelTrainingCommandV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2287C97C0();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C8E0(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  sub_22872C944(0);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v14 = 0x657461645F746573;
  }

  else
  {
    v14 = 7364980;
  }

  if (*a1)
  {
    v15 = 0xE800000000000000;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  if (*a2)
  {
    v16 = 0x657461645F746573;
  }

  else
  {
    v16 = 7364980;
  }

  if (*a2)
  {
    v17 = 0xE800000000000000;
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  if (v14 == v16 && v15 == v17)
  {
  }

  else
  {
    v18 = sub_2287CBD00();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = *(a1 + 16);
  v20 = *(a2 + 16);
  if (v19)
  {
    if (!v20 || (*(a1 + 8) != *(a2 + 8) || v19 != v20) && (sub_2287CBD00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = *(type metadata accessor for ModelTrainingCommand(0) + 24);
  v22 = *(v11 + 48);
  v23 = MEMORY[0x277CC9578];
  sub_22872ADBC(a1 + v21, v13, &qword_280DE3A98, MEMORY[0x277CC9578]);
  sub_22872ADBC(a2 + v21, &v13[v22], &qword_280DE3A98, v23);
  v24 = v30;
  v25 = *(v30 + 48);
  if (v25(v13, 1, v4) == 1)
  {
    if (v25(&v13[v22], 1, v4) == 1)
    {
      sub_22872AF38(v13, &qword_280DE3A98, MEMORY[0x277CC9578]);
      return 1;
    }

    goto LABEL_29;
  }

  sub_22872ADBC(v13, v9, &qword_280DE3A98, MEMORY[0x277CC9578]);
  if (v25(&v13[v22], 1, v4) == 1)
  {
    (*(v24 + 8))(v9, v4);
LABEL_29:
    sub_22872AABC(v13, sub_22872C944);
    return 0;
  }

  (*(v24 + 32))(v6, &v13[v22], v4);
  sub_22872AD74(&qword_27D850CF8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v27 = sub_2287CB200();
  v28 = *(v24 + 8);
  v28(v6, v4);
  v28(v9, v4);
  sub_22872AF38(v13, &qword_280DE3A98, MEMORY[0x277CC9578]);
  return (v27 & 1) != 0;
}

uint64_t sub_22872A948(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22872C4EC();
  result = MEMORY[0x22AABEB60](v2, MEMORY[0x277D121B8], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_228723F40(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22872A9BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AABEB60](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2287240C8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22872AA54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22872AABC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22872AB1C()
{
  result = qword_27D850BB0;
  if (!qword_27D850BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850BB0);
  }

  return result;
}

unint64_t sub_22872AB70()
{
  result = qword_27D850BC0;
  if (!qword_27D850BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850BC0);
  }

  return result;
}

unint64_t sub_22872ABC4()
{
  result = qword_27D850BD0;
  if (!qword_27D850BD0)
  {
    sub_22872C8E0(255, &qword_27D850BC8, type metadata accessor for ModelTrainingCommand, MEMORY[0x277D83940]);
    sub_22872AD74(&qword_27D850BD8, type metadata accessor for ModelTrainingCommand, "A˦Yti");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850BD0);
  }

  return result;
}

unint64_t sub_22872AC9C()
{
  result = qword_27D850BE8;
  if (!qword_27D850BE8)
  {
    sub_22872C8E0(255, &qword_27D850BE0, type metadata accessor for ModelTrainingElement, MEMORY[0x277D83940]);
    sub_22872AD74(&qword_27D850BF0, type metadata accessor for ModelTrainingElement, &protocol conformance descriptor for ModelTrainingElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850BE8);
  }

  return result;
}

uint64_t sub_22872AD74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22872ADBC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22872C8E0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_22872AE3C()
{
  result = qword_27D850C00;
  if (!qword_27D850C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C00);
  }

  return result;
}

unint64_t sub_22872AE90()
{
  result = qword_27D850C08;
  if (!qword_27D850C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C08);
  }

  return result;
}

unint64_t sub_22872AEE4()
{
  result = qword_27D850C18;
  if (!qword_27D850C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C18);
  }

  return result;
}

uint64_t sub_22872AF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22872C8E0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22872AFA8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22872C8E0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22872B028(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22872C9D8(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22872B0A4()
{
  result = qword_27D850C48;
  if (!qword_27D850C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C48);
  }

  return result;
}

void sub_22872B130(uint64_t a1)
{
  sub_22872C9D8(319, &qword_280DE3650, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22872C8E0(319, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22872B260(uint64_t a1)
{
  sub_22872B4B0(319, &qword_27D850C70, &qword_27D850C20, MEMORY[0x277D83B88]);
  if (v1 <= 0x3F)
  {
    sub_2287C9B20();
    if (v2 <= 0x3F)
    {
      sub_22872C9D8(319, &qword_27D850C78, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22872C8E0(319, &qword_280DE3398, MEMORY[0x277D12080], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22872C8E0(319, &qword_280DE33C8, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2287C97C0();
            if (v6 <= 0x3F)
            {
              sub_22872B4B0(319, &qword_27D850C80, &qword_280DE3A00, MEMORY[0x277D837D0]);
              if (v7 <= 0x3F)
              {
                sub_22872C8E0(319, &qword_280DE33E0, MEMORY[0x277D11FA8], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_22872C8E0(319, &qword_280DE3400, MEMORY[0x277D11F48], MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_22872B4B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_22872C9D8(255, a3, a4, MEMORY[0x277D83940]);
    v5 = sub_2287CB820();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ModelTrainingElement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelTrainingElement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelTrainingCommand.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelTrainingCommand.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ModelTrainingEvent.EventKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelTrainingEvent.EventKind(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22872B92C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22872B974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_22872B9D8()
{
  result = qword_27D850C88;
  if (!qword_27D850C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C88);
  }

  return result;
}

unint64_t sub_22872BA30()
{
  result = qword_27D850C90;
  if (!qword_27D850C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C90);
  }

  return result;
}

unint64_t sub_22872BA88()
{
  result = qword_27D850C98;
  if (!qword_27D850C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850C98);
  }

  return result;
}

unint64_t sub_22872BAE0()
{
  result = qword_27D850CA0;
  if (!qword_27D850CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CA0);
  }

  return result;
}

unint64_t sub_22872BB38()
{
  result = qword_27D850CA8;
  if (!qword_27D850CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CA8);
  }

  return result;
}

unint64_t sub_22872BB90()
{
  result = qword_27D850CB0;
  if (!qword_27D850CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CB0);
  }

  return result;
}

unint64_t sub_22872BBE8()
{
  result = qword_27D850CB8;
  if (!qword_27D850CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CB8);
  }

  return result;
}

unint64_t sub_22872BC40()
{
  result = qword_27D850CC0;
  if (!qword_27D850CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CC0);
  }

  return result;
}

unint64_t sub_22872BC98()
{
  result = qword_27D850CC8;
  if (!qword_27D850CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CC8);
  }

  return result;
}

uint64_t sub_22872BCEC(uint64_t a1)
{
  v2 = sub_2287C9B20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22872AD74(&qword_280DE3430, MEMORY[0x277D11E28], MEMORY[0x277D11E30]);
  result = MEMORY[0x22AABEB60](v9, v2, v10);
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
      sub_2287244B0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t *sub_22872BEB8(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2287CB920())
  {
    v12 = sub_228703004(0, a2, a3);
    v13 = sub_22872C220(a4, a2, a3);
    result = MEMORY[0x22AABEB60](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x22AABF120](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_2287CB920();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22872C010(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22872C350();
  result = MEMORY[0x22AABEB60](v2, MEMORY[0x277D11E90], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_228724790(&v8, v6);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_22872C0C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2287CBD00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_2287CBD00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2287CBD00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_22872C1D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2287CBC10();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22872C220(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_228703004(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22872C270()
{
  result = qword_27D850CE0;
  if (!qword_27D850CE0)
  {
    sub_22872C2D8(255);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D850CE0);
  }

  return result;
}

void sub_22872C2D8(uint64_t a1)
{
  if (!qword_280DE0020)
  {
    sub_228703004(255, &qword_280DE39C0, 0x277CCABB0);
    v1 = sub_2287CB190();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0020);
    }
  }
}

unint64_t sub_22872C350()
{
  result = qword_280DE11F0;
  if (!qword_280DE11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE11F0);
  }

  return result;
}

void sub_22872C3A4(uint64_t a1)
{
  if (!qword_280DE18F0)
  {
    sub_2287C9B20();
    sub_22872AD74(&qword_280DE3430, MEMORY[0x277D11E28], MEMORY[0x277D11E30]);
    v1 = sub_2287CBA00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE18F0);
    }
  }
}

unint64_t sub_22872C438()
{
  result = qword_27D850CE8;
  if (!qword_27D850CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850CE8);
  }

  return result;
}

void sub_22872C48C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_22872C7C4(255, a3, a4, a5 & 1);
    v6 = sub_2287CBCD0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_22872C4EC()
{
  result = qword_280DE1190;
  if (!qword_280DE1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1190);
  }

  return result;
}

void sub_22872C540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_22872C5A8(uint64_t a1)
{
  if (!qword_280DE1820)
  {
    sub_22872C6F4(255, &qword_280DE19C0, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v1 = sub_2287CBCD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1820);
    }
  }
}

void sub_22872C62C(uint64_t a1)
{
  if (!qword_280DE18D8)
  {
    type metadata accessor for HKDisplayCategoryIdentifier(255);
    sub_22872AD74(&qword_280DE1950, type metadata accessor for HKDisplayCategoryIdentifier, &unk_2287CCE00);
    v1 = sub_2287CBA00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE18D8);
    }
  }
}

void sub_22872C6F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22872C748(uint64_t a1)
{
  if (!qword_280DE1A38)
  {
    sub_228703004(255, &qword_280DE39B8, 0x277D82BB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE1A38);
    }
  }
}

uint64_t sub_22872C7C4(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22872C854(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_228703004(255, a3, a4);
    sub_22872C220(a5, a3, a4);
    v9 = sub_2287CBA00();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22872C8E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22872C944(uint64_t a1)
{
  if (!qword_27D850CF0)
  {
    sub_22872C8E0(255, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D850CF0);
    }
  }
}

void sub_22872C9D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_22872CA40(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2287CBB60();

    if (v4)
    {
      sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_228756BD4(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_22872CB04@<X0>(uint64_t *a3@<X8>)
{
  sub_2287C9810();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v5, v6);
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  *a3 = sub_2287CB120();
  swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(0, v7, v8, v9);
  result = sub_2287CB120();
  a3[1] = result;
  return result;
}

uint64_t sub_22872CC30()
{
  sub_228739D88();
}

uint64_t sub_22872CC58(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

id sub_22872CCF8()
{
  v0 = sub_228739DBC();

  return v0;
}

void sub_22872CD24(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_22872CDDC()
{
  sub_228739DF0();
}

uint64_t sub_22872CE04(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
}

uint64_t GeneratorPipelineManager.GeneratorPipelineManagerStreamContext.__allocating_init(sourceProfilePublisher:country:interactiveSharableModelPublisher:isLaunchGeneration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_228739ED0(a2, v8 + qword_280DE6258);
  *(v8 + qword_280DE6260) = a3;
  *(v8 + qword_280DE6268) = a4;
  return v8;
}

uint64_t GeneratorPipelineManager.GeneratorPipelineManagerStreamContext.init(sourceProfilePublisher:country:interactiveSharableModelPublisher:isLaunchGeneration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 16) = a1;
  sub_228739ED0(a2, v4 + qword_280DE6258);
  *(v4 + qword_280DE6260) = a3;
  *(v4 + qword_280DE6268) = a4;
  return v4;
}

uint64_t GeneratorPipelineManager.GeneratorPipelineManagerStreamContext.deinit()
{

  sub_22873A0FC(v0 + qword_280DE6258, sub_228739E24);

  return v0;
}

uint64_t GeneratorPipelineManager.GeneratorPipelineManagerStreamContext.__deallocating_deinit()
{
  GeneratorPipelineManager.GeneratorPipelineManagerStreamContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = sub_2287CACC0();
  v16 = type metadata accessor for DispatchQueueOrchestrationScheduler();
  swift_allocObject();
  v17 = DispatchQueueOrchestrationScheduler.init(environment:maxConcurrentPipelines:maxConcurrentGenerators:)(a4 & 1, v15, 3);
  sub_2287010E4(a1, v25);
  sub_2287010E4(a5, v24);
  v23[4] = &protocol witness table for DispatchQueueOrchestrationScheduler;
  v23[3] = v16;
  v22[4] = &protocol witness table for DispatchQueueOrchestrationScheduler;
  v23[0] = v17;
  v22[3] = v16;
  v22[0] = v17;
  v18 = *(v8 + 328);

  v19 = v18(v25, a2, a3, a4 & 1, v24, a6, a7, v23, v22);
  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v19;
}

uint64_t GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(void *a1, void *a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v17 = swift_allocObject();
  GeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(a1, a2, a3, a4 & 1, a5, a6, a7, a8, a9);
  return v17;
}

void *GeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)(void *a1, void *a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v10 = v9;
  v64 = a8;
  v75 = a7;
  v68 = a6;
  v76 = a5;
  LODWORD(v58) = a4;
  v57 = a3;
  v56 = a2;
  v77 = a1;
  v62 = a9;
  v74 = *v9;
  v11 = sub_2287CB6A0();
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x28223BE20](v11);
  v70 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v74 + 80);
  v14 = *(v74 + 88);
  type metadata accessor for GeneratorPipelineManager.GenerationState(255, v13, v14, v15);
  v16 = sub_2287CAD40();
  v17 = sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
  v50 = v17;
  WitnessTable = swift_getWitnessTable();
  v67 = WitnessTable;
  v66 = sub_22873A2A8(&qword_280DE3620, &qword_280DE39D0, 0x277D85C78, MEMORY[0x277D85228]);
  *&v79 = v16;
  *(&v79 + 1) = v17;
  v53 = v16;
  v80 = WitnessTable;
  v81 = v66;
  v69 = sub_2287CAC20();
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v48 - v19;
  v61 = sub_2287C9DF0();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2287C9E70();
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v54 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2287CB6B0();
  v22 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2287CB670();
  MEMORY[0x28223BE20](v25);
  v26 = sub_2287CB0E0();
  MEMORY[0x28223BE20](v26 - 8);
  v52 = v13;
  v51 = v14;
  sub_22872CB04(&v79);
  v78 = v79;
  v9[2] = sub_2287CAD50();
  v9[4] = 0;
  [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  sub_2287CA440();
  swift_allocObject();
  v9[18] = sub_2287CA430();
  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;
  sub_2287CBA20();
  *&v79 = type metadata accessor for GeneratorPipelineManager(0, v13, v14, v27);
  swift_getMetatypeMetadata();
  v28 = sub_2287CB250();
  v30 = v29;

  *&v79 = v28;
  *(&v79 + 1) = v30;
  MEMORY[0x22AABE980](0xD000000000000013, 0x80000002287D0720);
  sub_2287CB0A0();
  *&v79 = MEMORY[0x277D84F90];
  sub_22873DE20(&qword_280DE39D8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22873DC58(0, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22871EFD0();
  sub_2287CB880();
  (*(v22 + 104))(v24, *MEMORY[0x277D85260], v49);
  v9[20] = sub_2287CB6D0();
  sub_2287010E4(v77, (v9 + 8));
  v31 = v56;
  v9[6] = v56;
  v9[3] = v57;
  *(v9 + 40) = v58 & 1;
  sub_2287010E4(v76, (v9 + 13));
  v9[31] = v75;
  v32 = v64;
  sub_2287010E4(v64, (v9 + 21));
  v33 = v62;
  sub_2287010E4(v62, (v9 + 26));
  sub_22873DC58(0, &qword_280DE1810, sub_228739F64, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCFE0;
  v35 = v31;

  *(inited + 32) = [v35 profileIdentifier];
  *(inited + 40) = v35;
  v58 = v35;
  v36 = sub_228739FF4(inited);
  swift_setDeallocating();
  sub_22873A0FC(inited + 32, sub_228739F64);
  *&v79 = v36;
  sub_22873A15C(0);
  swift_allocObject();
  v10[7] = sub_2287CA690();
  v10[19] = v68;
  v37 = v33[3];
  v38 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v37);
  (*(v59 + 104))(v55, *MEMORY[0x277D11F10], v61);

  v39 = v54;
  sub_2287C9E30();
  v40 = (*(v38 + 8))(v39, v37, v38);
  (*(v60 + 8))(v39, v63);
  *&v79 = v10[2];

  v41 = v70;
  sub_2287CB690();
  *&v78 = v40;
  v42 = v65;
  sub_2287CB020();
  (*(v72 + 8))(v41, v73);

  v43 = swift_allocObject();
  v44 = v51;
  v43[2] = v52;
  v43[3] = v44;
  v43[4] = v74;
  v45 = v69;
  swift_getWitnessTable();
  v46 = sub_2287CB050();

  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v76);
  __swift_destroy_boxed_opaque_existential_0(v77);
  (*(v71 + 8))(v42, v45);
  v10[4] = v46;

  __swift_destroy_boxed_opaque_existential_0(v33);
  return v10;
}

uint64_t sub_22872DCD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a3;
  v7 = sub_2287CAA50();
  v87 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v85 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v81 = &v79 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v79 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v79 - v14;
  v16 = *a1;
  v17 = a1[1];
  sub_2287CA9D0();

  v18 = sub_2287CAA40();
  v19 = sub_2287CB610();

  v20 = os_log_type_enabled(v18, v19);
  v83 = a2;
  v84 = a4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v80 = v7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v90 = v23;
    *v22 = 136446466;
    v88 = a2;
    swift_getMetatypeMetadata();
    v24 = sub_2287CB250();
    v26 = sub_2287031D8(v24, v25, &v90);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v88 = v16;
    v89 = v17;
    v28 = type metadata accessor for GeneratorPipelineManager.GenerationState(0, v86, a4, v27);
    v29 = sub_22872E420(v28);
    v31 = sub_2287031D8(v29, v30, &v90);

    *(v22 + 14) = v31;
    _os_log_impl(&dword_2286FF000, v18, v19, "[%{public}s]: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v23, -1, -1);
    v32 = v22;
    v7 = v80;
    MEMORY[0x22AABFD90](v32, -1, -1);
  }

  v33 = *(v87 + 8);
  (v33)(v15, v7);
  v34 = v82;
  sub_2287CA9D0();

  v35 = sub_2287CAA40();
  v36 = sub_2287CB5D0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v90 = v38;
    *v37 = 136446466;
    v88 = v83;
    swift_getMetatypeMetadata();
    v39 = sub_2287CB250();
    v41 = v33;
    v42 = v7;
    v43 = sub_2287031D8(v39, v40, &v90);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2082;
    v88 = v16;
    v89 = v17;
    v45 = type metadata accessor for GeneratorPipelineManager.GenerationState(0, v86, v84, v44);
    v46 = sub_22872E694(v45);
    v48 = sub_2287031D8(v46, v47, &v90);

    *(v37 + 14) = v48;
    v7 = v42;
    v33 = v41;
    _os_log_impl(&dword_2286FF000, v35, v36, "[%{public}s]: %{public}s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v38, -1, -1);
    MEMORY[0x22AABFD90](v37, -1, -1);

    v49 = v82;
  }

  else
  {

    v49 = v34;
  }

  (v33)(v49, v7);
  v50 = v81;
  sub_2287CA9D0();

  v51 = sub_2287CAA40();
  v52 = sub_2287CB610();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v82 = v33;
    v55 = v54;
    v90 = v54;
    *v53 = 136446466;
    v88 = v83;
    swift_getMetatypeMetadata();
    v56 = sub_2287CB250();
    v58 = sub_2287031D8(v56, v57, &v90);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2082;
    v88 = v16;
    v89 = v17;
    v60 = type metadata accessor for GeneratorPipelineManager.GenerationState(0, v86, v84, v59);
    v61 = sub_22872E8AC(v60);
    v63 = sub_2287031D8(v61, v62, &v90);

    *(v53 + 14) = v63;
    _os_log_impl(&dword_2286FF000, v51, v52, "[%{public}s]: %{public}s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v55, -1, -1);
    MEMORY[0x22AABFD90](v53, -1, -1);

    v33 = v82;
    (v82)(v50, v7);
  }

  else
  {

    (v33)(v50, v7);
  }

  v64 = v85;
  sub_2287CA9D0();

  v65 = sub_2287CAA40();
  v66 = sub_2287CB5D0();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v90 = v68;
    *v67 = 136446466;
    v88 = v83;
    swift_getMetatypeMetadata();
    v69 = sub_2287CB250();
    v71 = sub_2287031D8(v69, v70, &v90);

    *(v67 + 4) = v71;
    *(v67 + 12) = 2082;
    v88 = v16;
    v89 = v17;
    v73 = type metadata accessor for GeneratorPipelineManager.GenerationState(0, v86, v84, v72);
    v74 = sub_22872EB64(v73);
    v76 = sub_2287031D8(v74, v75, &v90);

    *(v67 + 14) = v76;
    _os_log_impl(&dword_2286FF000, v65, v66, "[%{public}s]: %{public}s", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v68, -1, -1);
    MEMORY[0x22AABFD90](v67, -1, -1);

    v77 = v85;
  }

  else
  {

    v77 = v64;
  }

  return (v33)(v77, v7);
}

uint64_t sub_22872E420(uint64_t a1)
{
  v23 = *v1;
  v2 = *(a1 + 24);
  v20 = *(a1 + 16);
  v21 = v2;
  v18[2] = v20;
  v18[3] = v2;
  v18[4] = sub_22873E000;
  v18[5] = &v19;
  sub_2287C9810();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v4, v5);
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v6 = sub_2287CB190();

  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277D837D0];
  v10 = sub_228747B00(sub_22873E030, v18, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v23 = v10;
  sub_22873E054(0, &qword_280DE3A00, v8);
  sub_22873D5C4(&qword_280DE39F8, &qword_280DE3A00, v8, MEMORY[0x277D83958]);
  v11 = sub_2287CB1D0();
  v13 = v12;

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_2287CBA20();
  v22 = sub_2287CB170();
  v14 = sub_2287CBCC0();
  v16 = v15;

  v23 = v14;
  v24 = v16;
  MEMORY[0x22AABE980](0xD000000000000018, 0x80000002287D0A30);
  MEMORY[0x22AABE980](v11, v13);

  return v23;
}

unint64_t sub_22872E694(uint64_t a1)
{
  v19 = *v1;
  v2 = *(a1 + 24);
  v17 = *(a1 + 16);
  v18 = v2;
  v15[2] = v17;
  v15[3] = v2;
  v15[4] = sub_22873E0F4;
  v15[5] = &v16;
  sub_2287C9810();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v4, v5);
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v6 = sub_2287CB190();

  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277D837D0];
  v10 = sub_228747B00(sub_22873E43C, v15, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v19 = v10;
  sub_22873E054(0, &qword_280DE3A00, v8);
  sub_22873D5C4(&qword_280DE39F8, &qword_280DE3A00, v8, MEMORY[0x277D83958]);
  v11 = sub_2287CB1D0();
  v13 = v12;

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_2287CBA20();

  v19 = 0xD00000000000001ELL;
  v20 = 0x80000002287D0A50;
  MEMORY[0x22AABE980](v11, v13);

  return v19;
}

uint64_t sub_22872E8AC(uint64_t a1)
{
  v23 = *(v1 + 8);
  v2 = *(a1 + 24);
  v20 = *(a1 + 16);
  v21 = v2;
  v18[2] = v20;
  v18[3] = v2;
  v18[4] = sub_22873E124;
  v18[5] = &v19;
  sub_2287C9810();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v4, v5);
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v6 = sub_2287CB190();

  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277D837D0];
  v10 = sub_228747B00(sub_22873E154, v18, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v23 = v10;
  sub_22873E054(0, &qword_280DE3A00, v8);
  sub_22873D5C4(&qword_280DE39F8, &qword_280DE3A00, v8, MEMORY[0x277D83958]);
  v11 = sub_2287CB1D0();
  v13 = v12;

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_2287CBA20();
  v22 = sub_2287CB170();
  v14 = sub_2287CBCC0();
  v16 = v15;

  v23 = v14;
  v24 = v16;
  MEMORY[0x22AABE980](0xD000000000000019, 0x80000002287D0A70);
  MEMORY[0x22AABE980](v11, v13);

  return v23;
}

unint64_t sub_22872EB64(uint64_t a1)
{
  v19 = *(v1 + 8);
  v2 = *(a1 + 24);
  v17 = *(a1 + 16);
  v18 = v2;
  v15[2] = v17;
  v15[3] = v2;
  v15[4] = sub_22873E178;
  v15[5] = &v16;
  sub_2287C9810();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v4, v5);
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v6 = sub_2287CB190();

  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277D837D0];
  v10 = sub_228747B00(sub_22873E454, v15, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v19 = v10;
  sub_22873E054(0, &qword_280DE3A00, v8);
  sub_22873D5C4(&qword_280DE39F8, &qword_280DE3A00, v8, MEMORY[0x277D83958]);
  v11 = sub_2287CB1D0();
  v13 = v12;

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_2287CBA20();

  v19 = 0xD00000000000001FLL;
  v20 = 0x80000002287D0A90;
  MEMORY[0x22AABE980](v11, v13);

  return v19;
}

id sub_22872EDC0(uint64_t a1)
{
  if (a1)
  {
    v2 = MEMORY[0x28223BE20](a1);
    sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);

    v3 = v2;
    sub_2287CA650();

    return v6;
  }

  else
  {
    swift_beginAccess();
    v5 = *(v1 + 48);

    return v5;
  }
}

void sub_22872EECC(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = sub_22872CA40(a2, *a1);
  if (v7)
  {
    v8 = v7;
LABEL_10:
    *a3 = v8;
    return;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  [v8 setProfileIdentifier_];
  [v8 resume];
  if ((v6 & 0xC000000000000001) == 0)
  {
    v11 = v8;
    goto LABEL_9;
  }

  if (v6 >= 0)
  {
    v6 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v9 = v8;
  v10 = sub_2287CB920();
  if (!__OFADD__(v10, 1))
  {
    *a1 = sub_2287AA438(v6, v10 + 1);
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    sub_22876D51C(v8, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v13;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_22872EFD4(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  v47 = *v1;
  sub_22873A300(255);
  v4 = v3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v6, v7);
  v37[1] = sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
  v8 = sub_2287CACD0();
  v48 = v4;
  v44 = sub_22873DE20(&qword_280DE01F0, sub_22873A300, MEMORY[0x277CBCD90]);
  v9 = sub_2287CAB50();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v43 = v37 - v10;
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v46 = v8;
  v50[0] = v8;
  v50[1] = v9;
  v40 = WitnessTable;
  v50[2] = WitnessTable;
  v50[3] = v12;
  v38 = v12;
  v13 = sub_2287CAB00();
  v41 = *(v13 - 8);
  v42 = v13;
  MEMORY[0x28223BE20](v13);
  v39 = v37 - v14;
  sub_22873DD44(0, &qword_280DE0708, sub_22873A390, sub_22873A408);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = v37 - v18;
  sub_22873E304(0, &qword_280DE1BB0, sub_22873A390, sub_22873A408, MEMORY[0x277CBCC50]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = v37 - v23;
  v25 = *(v49 + 16);
  if (sub_2287CA420())
  {
    v50[0] = v25;
    sub_22873A390(0);
    sub_22873A408();
    sub_2287CAFA0();
    sub_22873A4D0();
    v25 = sub_2287CAF40();
    (*(v22 + 8))(v24, v21);
  }

  else
  {
  }

  v50[0] = sub_22873014C(v25);
  sub_22873A390(0);
  sub_22873A408();
  sub_2287CB040();

  sub_22873A43C();
  v26 = sub_2287CAF40();
  (*(v17 + 8))(v19, v16);
  v27 = v2[24];
  v28 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v27);
  v50[0] = v26;
  v50[0] = (*(v28 + 24))(v50, v48, v44, v27, v28);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v31 = v47;
  v30[3] = v49;
  v30[4] = v31;

  v32 = v43;
  sub_2287CAF70();

  v33 = v39;
  MEMORY[0x22AABE600](v9, v38, v40);
  (*(v45 + 8))(v32, v9);
  v34 = v42;
  swift_getWitnessTable();
  v35 = sub_2287CAF40();

  (*(v41 + 8))(v33, v34);
  return v35;
}

uint64_t sub_22872F6B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v78 = a2;
  v71 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v9, v10);
  sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
  v11 = sub_2287CACD0();
  swift_getWitnessTable();
  v73 = v11;
  v12 = sub_2287CAAA0();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x28223BE20](v12);
  v74 = &v66 - v13;
  v14 = sub_2287CADD0();
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x28223BE20](v14);
  v68 = &v66 - v15;
  v16 = sub_2287CAA50();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v77 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v66 - v20;
  v22 = *a1;
  sub_2287CA9D0();

  v23 = sub_2287CAA40();
  v24 = sub_2287CB610();

  v25 = os_log_type_enabled(v23, v24);
  v67 = a4;
  v79 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v72 = v16;
    v28 = v27;
    v82[0] = v27;
    *v26 = 136446466;
    v81[1] = a4;
    swift_getMetatypeMetadata();
    v29 = sub_2287CB250();
    v66 = a5;
    v31 = sub_2287031D8(v29, v30, v82);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    v32 = MEMORY[0x22AABEA80](v22, MEMORY[0x277D11E90]);
    v34 = sub_2287031D8(v32, v33, v82);

    *(v26 + 14) = v34;
    a5 = v66;
    _os_log_impl(&dword_2286FF000, v23, v24, "%{public}s: Switching to a new pipeline with sourceProfiles: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    v35 = v28;
    v16 = v72;
    MEMORY[0x22AABFD90](v35, -1, -1);
    v36 = v26;
    v17 = v79;
    MEMORY[0x22AABFD90](v36, -1, -1);
  }

  v37 = *(v17 + 8);
  v37(v21, v16);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    v81[0] = v22;
    v80 = MEMORY[0x277D84F98];
    v40 = MEMORY[0x277D11E90];
    sub_22873E054(0, &qword_280DE1A28, MEMORY[0x277D11E90]);
    sub_22873A1D0(0, &qword_280DE1A40, MEMORY[0x277D834F8]);
    sub_22873D5C4(&qword_280DE1A20, &qword_280DE1A28, v40, MEMORY[0x277D83970]);
    sub_2287CB310();
    (*(*v39 + 360))(v22, v82[0]);

    v41 = sub_22873054C(v71, v22);
    v42 = sub_228733498(v41);
    v43 = v77;
    sub_2287CA9D0();

    v44 = sub_2287CAA40();
    v45 = sub_2287CB610();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v71 = v37;
      v47 = v46;
      v48 = swift_slowAlloc();
      v78 = v41;
      v49 = v48;
      v81[0] = v48;
      *v47 = 136446466;
      v82[0] = v67;
      swift_getMetatypeMetadata();
      v50 = sub_2287CB250();
      v51 = a5;
      v53 = sub_2287031D8(v50, v52, v81);
      v72 = v16;
      v54 = v53;

      *(v47 + 4) = v54;
      *(v47 + 12) = 2082;
      v55 = MEMORY[0x22AABEA80](v22, MEMORY[0x277D11E90]);
      v57 = sub_2287031D8(v55, v56, v81);

      *(v47 + 14) = v57;
      a5 = v51;
      _os_log_impl(&dword_2286FF000, v44, v45, "%{public}s: Created new generation stream for sourceProfiles: %{public}s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v49, -1, -1);
      MEMORY[0x22AABFD90](v47, -1, -1);

      v71(v77, v72);
    }

    else
    {

      v37(v43, v16);
    }

    v82[0] = v42;
    v62 = v73;
    WitnessTable = swift_getWitnessTable();
    v64 = v74;
    sub_228730028(v62, WitnessTable);
    v65 = v76;
    swift_getWitnessTable();
    v60 = sub_2287CAF40();

    result = (*(v75 + 8))(v64, v65);
  }

  else
  {
    v58 = v68;
    sub_2287CADC0();
    v59 = v70;
    swift_getWitnessTable();
    v60 = sub_2287CAF40();
    result = (*(v69 + 8))(v58, v59);
  }

  *a5 = v60;
  return result;
}

void sub_22872FF50(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_2287C9C30();
  if (v4)
  {
    v5 = v4;
    if (sub_2287C9C80())
    {

      return;
    }

    v6 = sub_22872EDC0(v3);
    v7 = *a1;
    if ((*a1 & 0xC000000000000001) != 0)
    {
      if (v7 < 0)
      {
        v8 = *a1;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v9 = sub_2287CB920();
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return;
      }

      *a1 = sub_2287AA438(v8, v9 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    sub_22876D51C(v6, v5, isUniquelyReferenced_nonNull_native);

    *a1 = v11;
  }
}

uint64_t sub_228730028(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_2287CAF60();
}

uint64_t sub_22873014C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  sub_22873E304(0, &qword_280DE1B90, sub_22873A390, sub_22873A408, MEMORY[0x277CBCC88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v13[1] = a1;
  v10 = swift_allocObject();
  v10[2] = *(v3 + 80);
  v10[3] = *(v3 + 88);
  v10[4] = v4;
  sub_22873A390(0);
  sub_22873A408();
  sub_2287CAFB0();

  sub_22873E390();
  v11 = sub_2287CAF40();
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_228730334(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*(*a1 + 16) != 1)
  {
    return 1;
  }

  if (v8 != &unk_283BC0078)
  {
    v9 = *(v8 + 32);
    v10 = qword_283BC0098;
    v11 = v9;
    LOBYTE(v9) = sub_2287C9C80();

    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  sub_2287CA9D0();
  v12 = sub_2287CAA40();
  v13 = sub_2287CB600();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    v20[1] = a2;
    *v14 = 136446210;
    swift_getMetatypeMetadata();
    v16 = sub_2287CB250();
    v18 = sub_2287031D8(v16, v17, v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2286FF000, v12, v13, "%{public}s: Received agnostic only source profiles, skipping pipeline for this set of profiles", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AABFD90](v15, -1, -1);
    MEMORY[0x22AABFD90](v14, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_22873054C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = *v3;
  v5 = v47;
  v48 = a1;
  sub_22873D500(0);
  v44 = v6;
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873D608(0);
  v10 = v9;
  v38 = v9;
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 88);
  v36 = *(v5 + 80);
  v37 = v13;
  v14 = v36;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v16, v17);
  sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
  v18 = sub_2287CACD0();
  v41 = v18;
  WitnessTable = swift_getWitnessTable();
  v40 = WitnessTable;
  v43 = MEMORY[0x277CBCCE0];
  v39 = sub_22873DE20(&qword_280DE04D8, sub_22873D608, MEMORY[0x277CBCCE0]);
  v50 = v18;
  v51 = v10;
  v52 = WitnessTable;
  v53 = v39;
  v20 = sub_2287CABC0();
  v42 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  v50 = a2;
  v23 = MEMORY[0x277D11E90];
  sub_22873E054(0, &qword_280DE1A28, MEMORY[0x277D11E90]);
  sub_22873D5C4(&qword_280DE1A20, &qword_280DE1A28, v23, MEMORY[0x277D83970]);
  sub_2287CB2F0();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v14;
  v25[3] = v13;
  v25[4] = v24;
  sub_2287CACC0();
  sub_22873DA58(0, &qword_280DE0298, sub_22873D6F4, MEMORY[0x277CBCD88]);
  sub_22873D78C();
  sub_22873D7C0();
  v26 = v12;
  v27 = v44;
  sub_2287CB060();

  (*(v46 + 8))(v8, v27);
  v28 = swift_allocObject();
  v29 = v47;
  v30 = v48;
  v28[2] = v3;
  v28[3] = v30;
  v28[4] = v29;
  v31 = swift_allocObject();
  v32 = v37;
  v31[2] = v36;
  v31[3] = v32;
  v31[4] = sub_22873D91C;
  v31[5] = v28;

  sub_2287CACC0();
  v33 = v38;
  sub_2287CAFE0();

  (*(v49 + 8))(v26, v33);
  swift_getWitnessTable();
  v34 = sub_2287CAF40();
  (*(v42 + 8))(v22, v20);
  return v34;
}

uint64_t sub_228730A90@<X0>(void **a1@<X0>, uint64_t *a3@<X8>)
{
  v52 = a3;
  sub_22873D9AC(0);
  v43 = v4;
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873DB6C(0);
  v7 = v6;
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v48 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873DD44(0, &qword_280DE06E8, sub_22873DB6C, sub_22873DDEC);
  v51 = v9;
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v46 = &v38 - v10;
  sub_22873DE68(0, v11);
  v13 = v12;
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873DA58(0, &qword_280DE0098, sub_22873D6F4, MEMORY[0x277CBCE88]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v21 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v42 = sub_22872EDC0(v21);

    v41 = v15;
    sub_2287CA4D0();

    v24 = v23[24];
    v25 = v23[25];
    __swift_project_boxed_opaque_existential_1(v23 + 21, v24);
    v26 = *(v25 + 24);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v13;
    v53 = v26(v15, v13, OpaqueTypeConformance2, v24, v25);
    *(swift_allocObject() + 16) = v21;
    sub_22873DA58(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873D6F4(0);
    v39 = v7;
    sub_22873DAE4();
    v28 = v47;
    v38 = v21;
    v29 = v45;
    sub_2287CAF70();

    *(swift_allocObject() + 16) = v21;
    sub_22873DC58(0, &qword_280DE00D8, sub_22873D6F4, MEMORY[0x277CBCE78]);
    sub_22873DE20(&qword_280DE0648, sub_22873D9AC, MEMORY[0x277CBCC08]);
    sub_22873DCBC();
    v30 = v38;
    v31 = v48;
    v32 = v43;
    sub_2287CAF90();

    (*(v50 + 8))(v29, v32);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_22873DDEC();
    v33 = v46;
    v34 = v39;
    sub_2287CB040();
    (*(v28 + 8))(v31, v34);
    sub_22873DF60();
    v35 = v51;
    v36 = sub_2287CAF40();

    (*(v49 + 8))(v33, v35);
    result = (*(v44 + 8))(v41, v40);
  }

  else
  {
    sub_22873D6F4(0);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_2287CADC0();
    sub_22873DEC8();
    v36 = sub_2287CAF40();
    result = (*(v18 + 8))(v20, v17);
  }

  *v52 = v36;
  return result;
}

id sub_228731160@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = sub_2287C9C80();
  v6 = 0;
  if ((v5 & 1) == 0)
  {

    v6 = v4;
  }

  *a3 = a2;
  a3[1] = v6;

  return a2;
}

uint64_t sub_2287311C8(void **a1, void *a2)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  v11 = *a1;
  v12 = sub_2287C9C30();
  if (v12 && (v13 = v12, v14 = [v12 type], v13, v14 == 2))
  {
    sub_2287CA9D0();
    v15 = a2;
    v16 = sub_2287CAA40();
    v17 = sub_2287CB610();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v15;
      v20 = v5;
      v21 = v19;
      v46[0] = v19;
      *v18 = 136446210;
      v22 = sub_2287C9C50();
      v24 = sub_2287031D8(v22, v23, v46);
      v43 = v4;
      v25 = v24;

      *(v18 + 4) = v25;
      _os_log_impl(&dword_2286FF000, v16, v17, "Returning nil transaction builder for summary sharing profile %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AABFD90](v21, -1, -1);
      MEMORY[0x22AABFD90](v18, -1, -1);

      (*(v20 + 8))(v10, v43);
      v15 = v44;
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    sub_2287CA9D0();
    v15 = a2;
    v26 = v11;
    v27 = sub_2287CAA40();
    v28 = sub_2287CB5F0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v42 = v5;
      v30 = v29;
      v31 = swift_slowAlloc();
      v46[0] = v31;
      *v30 = 136446466;
      v32 = sub_2287C9C50();
      v43 = v4;
      v34 = sub_2287031D8(v32, v33, v46);
      v44 = v15;
      v35 = v34;

      *(v30 + 4) = v35;
      *(v30 + 12) = 2082;
      v45 = v11;
      v36 = v11;
      sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
      v37 = sub_2287CB250();
      v39 = sub_2287031D8(v37, v38, v46);

      *(v30 + 14) = v39;
      v15 = v44;
      _os_log_impl(&dword_2286FF000, v27, v28, "Failed to get transaction builder for %{public}s: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v31, -1, -1);
      MEMORY[0x22AABFD90](v30, -1, -1);

      (*(v42 + 8))(v8, v43);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  v46[0] = a2;
  v46[1] = 0;
  sub_22873D6F4(0);
  v40 = v15;
  return sub_2287CADB0();
}

uint64_t sub_2287315B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v28 = a2;
  v29 = a4;
  v27 = a1;
  v6 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v8, v9);
  v10 = sub_2287CB450();
  WitnessTable = swift_getWitnessTable();
  v40 = v10;
  v41 = MEMORY[0x277D84A98];
  v42 = WitnessTable;
  v43 = MEMORY[0x277D84AC0];
  v12 = sub_2287CAC10();
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v26 = sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
  v40 = v10;
  v41 = v26;
  v42 = WitnessTable;
  v43 = MEMORY[0x277D84950];
  v16 = sub_2287CAC10();
  v30 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  swift_beginAccess();
  v39 = a3[3];
  v19 = swift_allocObject();
  swift_weakInit();
  v34 = v19;
  v35 = v27;
  v36 = v29;
  v37 = v28;
  v38 = v31;
  type metadata accessor for GeneratorPipelineProviderWrapper(255, v6, v20, v21);
  sub_2287CB450();

  swift_getWitnessTable();
  v22 = sub_2287CB330();

  sub_228732FC8(v22);
  v39 = v22;
  sub_2287CB2F0();

  v23 = v32;
  sub_2287CABF0();
  (*(v33 + 8))(v15, v23);
  swift_getWitnessTable();
  v24 = sub_2287CAF40();
  (*(v30 + 8))(v18, v16);
  return v24;
}

uint64_t sub_228731950@<X0>(uint64_t a1@<X0>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v37 = a5;
  v38 = a6;
  v12 = *a4;
  v13 = sub_2287C9ED0();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v35[1] = v7;
    v36 = a7;
    v18 = qword_280DE6258;
    v19 = *(a4 + qword_280DE6268);
    v20 = *(v12 + 80);
    v21 = type metadata accessor for GeneratorPipelineProviderWrapper(0, v20, v16, v17);
    sub_228732444(a3, a4 + v18, v19, a1 + *(v21 + 28), v37, *(a4 + qword_280DE6260), v15);
    v22 = *(v12 + 88);
    v41 = (*(v22 + 24))(v15, v20, v22);
    MEMORY[0x28223BE20](v41);
    v35[-6] = v20;
    v35[-5] = v22;
    v35[-4] = a1;
    v35[-3] = v15;
    v35[-2] = v38;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24 = sub_2287CB450();
    v27 = type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v25, v26);
    WitnessTable = swift_getWitnessTable();
    v30 = sub_228747B00(sub_22873D984, &v35[-8], v24, v27, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v29);

    *v36 = v30;
    return (*(v39 + 8))(v15, v40);
  }

  else
  {
    v32 = swift_getAssociatedTypeWitness();
    type metadata accessor for GeneratorPipelineManagerWrapper(0, v32, v33, v34);
    result = sub_2287CB3F0();
    *a7 = result;
  }

  return result;
}

uint64_t sub_228731C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v76 = a4;
  v91 = a3;
  v94 = a1;
  v95 = a2;
  v89 = a7;
  v77 = sub_2287C9E70();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287C9ED0();
  v90 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v87 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - v13;
  v73 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v86 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v69 - v19;
  v74 = a5;
  v23 = type metadata accessor for GeneratorPipelineProviderWrapper(0, a5, v21, v22);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v69 - v25;
  v85 = sub_2287CAA50();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v29 = *(v24 + 16);
  v92 = v23;
  v29(v26, v95, v23);
  v79 = v16;
  v30 = *(v16 + 16);
  v78 = v20;
  v88 = AssociatedTypeWitness;
  v81 = v30;
  v82 = v16 + 16;
  v30(v20, v94, AssociatedTypeWitness);
  v31 = v90;
  v33 = v90 + 16;
  v32 = *(v90 + 16);
  v84 = v14;
  v34 = v91;
  v93 = v10;
  v35 = v32;
  (v32)(v14);
  v80 = v28;
  v36 = sub_2287CAA40();
  v37 = sub_2287CB610();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v69 = v33;
    v39 = v38;
    v71 = swift_slowAlloc();
    v97 = v71;
    *v39 = 136446978;
    *&v96[0] = v76;
    swift_getMetatypeMetadata();
    v40 = sub_2287CB250();
    v70 = v36;
    v42 = sub_2287031D8(v40, v41, &v97);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2082;
    v43 = v92;
    v44 = &v26[*(v92 + 28)];
    v76 = v35;
    __swift_project_boxed_opaque_existential_1(v44, *(v44 + 3));
    v45 = sub_2287C9A70();
    v47 = v46;
    (*(v24 + 8))(v26, v43);
    v48 = sub_2287031D8(v45, v47, &v97);

    *(v39 + 14) = v48;
    *(v39 + 22) = 2082;
    LODWORD(v74) = v37;
    v49 = v88;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v51 = v72;
    v52 = v78;
    (*(AssociatedConformanceWitness + 32))(v49, AssociatedConformanceWitness);
    v53 = sub_2287C9E50();
    (*(v75 + 8))(v51, v77);
    v54 = sub_2287C9C50();
    v56 = v55;

    (*(v79 + 8))(v52, v49);
    v57 = sub_2287031D8(v54, v56, &v97);
    v34 = v91;

    *(v39 + 24) = v57;
    *(v39 + 32) = 2082;
    v58 = v87;
    v59 = v84;
    v60 = v93;
    v76(v87, v84, v93);
    v61 = sub_2287CB250();
    v63 = v62;
    (*(v90 + 8))(v59, v60);
    v64 = sub_2287031D8(v61, v63, &v97);
    v35 = v76;

    *(v39 + 34) = v64;
    v65 = v70;
    _os_log_impl(&dword_2286FF000, v70, v74, "[%{public}s]: delegate returned pipeline <%{public}s> for profile %{public}s and context %{public}s.", v39, 0x2Au);
    v66 = v71;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v66, -1, -1);
    MEMORY[0x22AABFD90](v39, -1, -1);

    (*(v83 + 8))(v80, v85);
  }

  else
  {

    (*(v31 + 8))(v84, v93);
    v49 = v88;
    (*(v79 + 8))(v78, v88);
    (*(v83 + 8))(v80, v85);
    (*(v24 + 8))(v26, v92);
    v58 = v87;
  }

  v67 = v86;
  v81(v86, v94, v49);
  sub_2287010E4(v95 + *(v92 + 28), v96);
  v35(v58, v34, v93);
  return GeneratorPipelineManagerWrapper.init(wrapped:pluginInfo:context:)(v67, v96, v58, v49, v89);
}

uint64_t sub_228732444@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v65 = a6;
  v62 = a5;
  v61 = a4;
  v74 = a3;
  v72 = a2;
  v70 = a1;
  v73 = a7;
  sub_228739E24(0);
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2287CA340();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2287C9590();
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x28223BE20](v13);
  v75 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873CD8C(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22872EDC0(a1);
  *&v79 = sub_2287CB5B0();
  v20 = MEMORY[0x277CBCD88];
  sub_22873D054(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940], MEMORY[0x277CBCD88]);
  v21 = MEMORY[0x277D83D88];
  sub_22873AC2C(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
  sub_22873CE6C();
  sub_2287CAF70();
  sub_22873DE20(&qword_280DE05D0, sub_22873CD8C, MEMORY[0x277CBCC08]);
  v22 = sub_2287CAF40();

  (*(v17 + 8))(v19, v16);
  *&v79 = v22;
  sub_22873D054(0, &qword_280DE0148, &qword_280DDFEB0, v21, v20);
  sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v20, MEMORY[0x277CBCD90]);
  v23 = sub_2287CAF40();

  *&v79 = v23;
  v24 = sub_2287CAEF0();

  *&v79 = v24;
  v25 = MEMORY[0x277CBCB28];
  sub_22873E304(0, &qword_280DE0798, sub_22873CEFC, sub_22873D0F8, MEMORY[0x277CBCB28]);
  sub_22873D12C();
  v26 = sub_2287CAF40();

  v27 = v61;
  sub_2287010E4(v61, &v79);
  v28 = swift_allocObject();
  v29 = v62;
  v28[2] = v62;
  sub_228706AD4(&v79, (v28 + 3));
  v30 = v60;
  v28[8] = v60;
  v28[9] = v26;
  v31 = v30;
  v66 = v26;
  sub_22873741C(v30, v27, v26, v29, v65);
  v33 = v32;
  sub_2287010E4(v27, &v79);
  swift_beginAccess();
  v34 = *(v8 + 48);
  v65 = type metadata accessor for HealthStoreSharableModelContext();
  v35 = swift_allocObject();

  v36 = v34;
  v37 = v28;
  v64 = v28;

  v38 = v33;
  v63 = v33;

  v39 = v31;
  v35[2] = sub_2287CB590();
  sub_2287010E4(&v79, (v35 + 4));
  v35[3] = v39;
  v40 = [objc_allocWithZone(MEMORY[0x277CCDA78]) initWithHealthStore_];

  __swift_destroy_boxed_opaque_existential_0(&v79);
  v35[9] = v40;
  v35[10] = sub_22873D1C8;
  v35[11] = v37;
  v35[12] = sub_22873AA9C;
  v35[13] = v38;
  v41 = type metadata accessor for HealthExperienceStoreFeedItemContext(0);
  v62 = sub_22873DE20(qword_280DE3170, type metadata accessor for HealthExperienceStoreFeedItemContext, &protocol conformance descriptor for HealthExperienceStoreFeedItemContext);
  v42 = v40;
  v43 = sub_2287C9D70();

  *&v79 = v43;
  sub_22873DA58(0, &qword_280DE0288, MEMORY[0x277D11FC0], MEMORY[0x277CBCD88]);
  sub_22873D1D8();
  v44 = sub_2287CAEF0();

  *&v79 = v44;
  sub_22873E304(0, &qword_280DE07A8, sub_22873D260, sub_22873D3C8, v25);
  sub_22873D3FC();
  v60 = sub_2287CAF40();

  __swift_project_boxed_opaque_existential_1((v8 + 64), *(v8 + 88));
  v45 = sub_2287C99F0();
  sub_2287010E4(v27, &v79);
  LOBYTE(v40) = *(v8 + 40);
  v46 = *(v8 + 144);
  swift_beginAccess();
  v61 = *(v8 + 152);
  sub_2287010E4(v8 + 208, v78);
  v47 = v39;

  v48 = v75;
  sub_2287C9520();
  v59 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v49 = swift_allocObject();
  *(v49 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms) = &unk_283BC0100;
  *(v49 + 56) = v40;
  (*(v76 + 16))(v49 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange, v48, v77);
  __swift_project_boxed_opaque_existential_1(&v79, v80);
  v50 = v45;
  sub_2287C9A70();
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_2287CB550();

  v51 = v67;
  sub_2287CA320();
  (*(v68 + 32))(v49 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_feedItemStorage, v51, v69);
  *(v49 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext) = v50;
  sub_2287010E4(&v79, v49 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
  *(v49 + 16) = v47;
  *(v49 + 24) = v46;
  sub_2287010E4(v78, v49 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider);
  v52 = objc_allocWithZone(MEMORY[0x277CCDAC0]);
  v53 = v47;
  v54 = v50;

  *(v49 + 48) = [v52 initWithHealthStore_];
  *(v49 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_displayNamePublisher) = v60;
  __swift_project_boxed_opaque_existential_1(&v79, v80);

  sub_2287C9A70();
  sub_2287C9A30();
  swift_allocObject();
  v55 = sub_2287C9A20();

  (*(v76 + 8))(v75, v77);
  __swift_destroy_boxed_opaque_existential_0(v78);
  v56 = MEMORY[0x277D11D38];
  *(v49 + 32) = v55;
  *(v49 + 40) = v56;
  __swift_destroy_boxed_opaque_existential_0(&v79);
  sub_22873E20C(v72, v71, sub_228739E24);
  v80 = v41;
  v81 = v62;
  *&v79 = v49;
  v78[3] = v65;
  v78[4] = sub_22873DE20(qword_280DE3298, type metadata accessor for HealthStoreSharableModelContext, &unk_2287CE770);
  v78[0] = v35;
  v57 = v70;

  sub_2287C9EA0();
  sub_2287C9EC0();
}

uint64_t sub_228732FC8(uint64_t a1)
{
  v2 = *v1;
  v18 = a1;
  v16 = *(v2 + 80);
  v3 = v16;
  v17 = *(v2 + 88);
  v4 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v6, v7);
  v8 = sub_2287CB450();
  sub_2287C9810();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_228747B00(sub_22873CD44, &v15, v8, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  sub_2287CB450();
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  swift_getWitnessTable();
  v12 = sub_2287CB160();
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = v12;
  sub_228738988(sub_22873CD64, v13);
}

uint64_t sub_2287331D4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_2287C9810();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v8, v9);
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v6 - 8) + 16))(a4, a1 + *(v10 + 36), v6);
  return (*(*(v10 - 8) + 16))(a4 + v11, a1, v10);
}

double sub_2287332DC@<D0>(void *a1@<X0>, _OWORD *a5@<X8>)
{
  v10 = *a1;
  sub_2287C9810();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v7, v8);
  sub_22873DE20(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2287CB190();

  sub_2287CB180();
  result = *&v10;
  *a5 = v10;
  return result;
}

uint64_t sub_228733404@<X0>(uint64_t a1@<X1>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v7, v8);
  return (*(*(v9 - 8) + 16))(a4, a1, v9);
}

uint64_t sub_228733498(uint64_t a1)
{
  v2 = v1;
  v29 = *v2;
  v28 = *(v29 + 88);
  v27 = *(v29 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for GeneratorPipelineManagerWrapper(255, v5, v6, v7);
  sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
  v8 = sub_2287CACD0();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v9, v10);
  v11 = sub_2287CACD0();
  WitnessTable = swift_getWitnessTable();
  v30 = v8;
  v31 = v11;
  v32 = WitnessTable;
  v33 = swift_getWitnessTable();
  v12 = sub_2287CABC0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v30 = a1;
  v16 = v2[24];
  v17 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v16);
  (*(v17 + 8))(v16, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v20 = v28;
  v19[2] = v27;
  v19[3] = v20;
  v21 = v29;
  v19[4] = v18;
  v19[5] = v21;
  sub_2287CAFE0();

  swift_getWitnessTable();
  v22 = sub_2287CAF40();
  (*(v13 + 8))(v15, v12);
  return v22;
}

uint64_t sub_228733828@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v80 = a3;
  v91 = a6;
  v9 = sub_2287C9E70();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x28223BE20](v9);
  v84 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v81 = &v74 - v12;
  v15 = type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v13, v14);
  v88 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v94 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v93 = &v74 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v92 = &v74 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v74 - v22;
  v24 = sub_2287CAA50();
  v89 = *(v24 - 8);
  v90 = v24;
  MEMORY[0x28223BE20](v24);
  v95 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a5;
  v83 = a4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedTypeWitness();
  v29 = type metadata accessor for GeneratorPipelineManagerWrapper(255, v26, v27, v28);
  v30 = sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
  v31 = sub_2287CADD0();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v74 - v33;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v78 = Strong;
    v77 = v30;
    v79 = v29;
    sub_2287CA9D0();
    v36 = v88;
    v37 = *(v88 + 16);
    v37(v23, a1, v15);
    v37(v92, a1, v15);
    v37(v93, a1, v15);
    v37(v94, a1, v15);
    v38 = sub_2287CAA40();
    v39 = sub_2287CB610();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v76 = a1;
      v41 = v40;
      v75 = swift_slowAlloc();
      v97 = v75;
      *v41 = 136447234;
      v96 = v80;
      swift_getMetatypeMetadata();
      v42 = sub_2287CB250();
      LODWORD(v80) = v39;
      v44 = sub_2287031D8(v42, v43, &v97);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2082;
      __swift_project_boxed_opaque_existential_1(&v23[*(v15 + 28)], *&v23[*(v15 + 28) + 24]);
      v45 = sub_2287C9A70();
      v47 = v46;
      v48 = *(v36 + 8);
      v48(v23, v15);
      v49 = sub_2287031D8(v45, v47, &v97);

      *(v41 + 14) = v49;
      *(v41 + 22) = 2082;
      v50 = v92;
      (*(v82 + 16))(v81, v92, AssociatedTypeWitness);
      v51 = sub_2287CB250();
      v53 = v52;
      v48(v50, v15);
      v54 = sub_2287031D8(v51, v53, &v97);

      *(v41 + 24) = v54;
      *(v41 + 32) = 2082;
      MEMORY[0x28223BE20](v55);
      v56 = v85;
      *(&v74 - 2) = v83;
      *(&v74 - 1) = v56;
      KeyPath = swift_getKeyPath();
      v58 = v84;
      v59 = v93;
      GeneratorPipelineManagerWrapper.subscript.getter(KeyPath);

      v60 = sub_2287C9E50();
      (*(v86 + 8))(v58, v87);
      v61 = sub_2287C9C50();
      v63 = v62;

      v48(v59, v15);
      v64 = sub_2287031D8(v61, v63, &v97);

      *(v41 + 34) = v64;
      *(v41 + 42) = 2082;
      v65 = v94;
      sub_2287C9E80();
      sub_22870D3A8(0, &qword_280DE3418, MEMORY[0x277D11EC0]);
      v66 = sub_2287CB250();
      v68 = v67;
      v48(v65, v15);
      v69 = sub_2287031D8(v66, v68, &v97);

      *(v41 + 44) = v69;
      _os_log_impl(&dword_2286FF000, v38, v80, "[%{public}s][%{public}s]: dispatching GeneratorPipeline <%{public}s> for profile %{public}s and context %{public}s to queue for execution", v41, 0x34u);
      v70 = v75;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v70, -1, -1);
      a1 = v76;
      MEMORY[0x22AABFD90](v41, -1, -1);

      (*(v89 + 8))(v95, v90);
    }

    else
    {

      v73 = *(v36 + 8);
      v73(v94, v15);
      v73(v93, v15);
      v73(v92, v15);
      (*(v89 + 8))(v95, v90);
      v73(v23, v15);
    }

    v96 = sub_228734270(a1);
    sub_2287CACD0();
    swift_getWitnessTable();
    v71 = sub_2287CAF40();
  }

  else
  {
    sub_2287CADC0();
    swift_getWitnessTable();
    v71 = sub_2287CAF40();
    result = (*(v32 + 8))(v34, v31);
  }

  *v91 = v71;
  return result;
}

uint64_t sub_2287341C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 32);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t sub_228734270(uint64_t a1)
{
  v94 = a1;
  v2 = *v1;
  v3 = sub_2287C9E70();
  v90 = *(v3 - 8);
  v91 = v3;
  MEMORY[0x28223BE20](v3);
  v88 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v1;
  v95 = *(v2 + 88);
  v93 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v89 = type metadata accessor for GeneratorPipelineManagerWrapper(255, v7, v8, v9);
  v10 = sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
  v11 = sub_2287CACD0();
  v85 = v11;
  v69 = type metadata accessor for GeneratorPipelineManagerWrapper(255, v6, v12, v13);
  v71 = v10;
  v14 = sub_2287CACD0();
  v82 = v14;
  WitnessTable = swift_getWitnessTable();
  v84 = WitnessTable;
  v81 = swift_getWitnessTable();
  v103 = v11;
  v104 = v14;
  v105 = WitnessTable;
  v106 = v81;
  v16 = sub_2287CABC0();
  v17 = *(v16 - 8);
  v86 = v16;
  v87 = v17;
  MEMORY[0x28223BE20](v16);
  v83 = &v66 - v18;
  v21 = type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v19, v20);
  v78 = *(v21 - 8);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v21);
  v76 = &v66 - v22;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v23 = sub_2287CACD0();
  swift_getWitnessTable();
  v24 = sub_2287CAAA0();
  v75 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v66 - v25;
  v68 = swift_getWitnessTable();
  v27 = sub_2287CAB50();
  v70 = v27;
  v77 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v67 = &v66 - v28;
  v72 = swift_getWitnessTable();
  v103 = v27;
  v104 = v10;
  v105 = v72;
  v106 = MEMORY[0x277D84950];
  v73 = sub_2287CABE0();
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v66 = &v66 - v29;
  v30 = v92;
  v32 = v92[24];
  v31 = v92[25];
  __swift_project_boxed_opaque_existential_1(v92 + 21, v32);
  v80 = (*(v31 + 16))(v32, v31);
  v33 = v93;
  v34 = v95;
  v100 = v93;
  v101 = v95;
  KeyPath = swift_getKeyPath();
  v36 = v94;
  GeneratorPipelineManagerWrapper.subscript.getter(KeyPath);

  v102 = v103;
  v98 = v33;
  v99 = v34;
  v37 = swift_getKeyPath();
  v38 = swift_getWitnessTable();
  sub_228734D98(v36, v30, v37, v23, v38, v26);

  v39 = v78;
  v40 = v76;
  (*(v78 + 16))(v76, v36, v21);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  v43 = v93;
  v44 = v95;
  *(v42 + 16) = v93;
  *(v42 + 24) = v44;
  (*(v39 + 32))(v42 + v41, v40, v21);
  v45 = v67;
  sub_2287CAF70();

  (*(v75 + 8))(v26, v24);
  v46 = swift_allocObject();
  *(v46 + 16) = v43;
  *(v46 + 24) = v44;
  v47 = v43;
  v48 = v44;
  v49 = v66;
  v50 = v70;
  sub_2287CB010();

  (*(v77 + 8))(v45, v50);
  v51 = v73;
  swift_getWitnessTable();
  v52 = sub_2287CAF40();
  v79 = v52;
  (*(v74 + 8))(v49, v51);
  v53 = v92[24];
  v54 = v92[25];
  __swift_project_boxed_opaque_existential_1(v92 + 21, v53);
  v103 = v52;
  v96 = v47;
  v97 = v48;
  v55 = v47;
  v56 = swift_getKeyPath();
  v57 = v88;
  GeneratorPipelineManagerWrapper.subscript.getter(v56);

  v58 = (*(v54 + 40))(&v103, v57, v82, v81, v53, v54);
  (*(v90 + 8))(v57, v91);
  v103 = v58;
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  v61 = v95;
  v60[2] = v55;
  v60[3] = v61;
  v60[4] = v59;
  v62 = v83;
  sub_2287CAFE0();

  v63 = v86;
  swift_getWitnessTable();
  v64 = sub_2287CAF40();

  (*(v87 + 8))(v62, v63);
  return v64;
}

uint64_t sub_228734CEC@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 24);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t sub_228734D98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v43 = a5;
  v44 = a4;
  v42 = a3;
  v7 = *a2;
  v39 = a1;
  v40 = v7;
  v8 = *(*(*a3 + *MEMORY[0x277D84308] + 8) + 24);
  v9 = *(v8 - 8);
  v37 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v32 - v10;
  v12 = swift_allocObject();
  swift_weakInit();
  v38 = *(v9 + 16);
  v33 = v11;
  v38(v11, a1, v8);
  v13 = v9;
  v14 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v15 = swift_allocObject();
  v16 = v40;
  v15[2] = v44;
  v17 = v8;
  v18 = *(v8 + 16);
  v15[3] = v18;
  v19 = v18;
  v36 = *(v16 + 80);
  v15[4] = v36;
  v15[5] = v43;
  v40 = *(v16 + 88);
  v15[6] = v40;
  v15[7] = v12;
  v15[8] = v42;
  v20 = *(v13 + 32);
  v34 = v13 + 32;
  v35 = v20;
  v21 = v17;
  v32 = v17;
  (v20)(v15 + v14, v11);
  v22 = swift_allocObject();
  swift_weakInit();
  v38(v11, v39, v21);
  v23 = swift_allocObject();
  v25 = v43;
  v24 = v44;
  *(v23 + 2) = v44;
  *(v23 + 3) = v19;
  v26 = v19;
  v27 = v35;
  v28 = v36;
  *(v23 + 4) = v36;
  *(v23 + 5) = v25;
  v29 = v40;
  *(v23 + 6) = v40;
  *(v23 + 7) = v22;
  *(v23 + 8) = v42;
  v27(&v23[v14], v33, v32);
  v30 = swift_allocObject();
  v30[2] = v24;
  v30[3] = v26;
  v30[4] = v28;
  v30[5] = v25;
  v30[6] = v29;
  v30[7] = sub_22873CA3C;
  v30[8] = v23;
  swift_retain_n();

  sub_2287CAF60();
}

uint64_t sub_228735108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v8 = sub_2287C9ED0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  (*(v16 + 16))(&v21 - v14, a1, v13);
  v19 = type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v17, v18);
  sub_2287010E4(a2 + *(v19 + 28), v22);
  (*(v9 + 16))(v11, a2 + *(v19 + 32), v8);
  return GeneratorPipelineManagerWrapper.init(wrapped:pluginInfo:context:)(v15, v22, v11, v13, x8_0);
}

uint64_t sub_22873531C@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X8>)
{
  v76 = a1;
  v77 = a5;
  v71 = sub_2287C9E70();
  v75 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2287C9B60();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v59 - v10;
  v12 = sub_2287CA970();
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, v15, v16, v17);
  sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
  v18 = sub_2287CADD0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = _HKLogPersistedSignposts();

    v66 = v14;
    sub_2287CA940();
    v27 = type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v25, v26);
    v28 = v76;
    v29 = (v76 + *(v27 + 28));
    v30 = v29[3];
    v31 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v32 = sub_228747F20(v30, v31);
    v64 = v33;
    v65 = v32;
    v63 = v34;
    v78 = 0x6F746172656E6547;
    v79 = 0xEB00000000203A72;
    v59 = *(v68 + 16);
    v59(v11, v28, AssociatedTypeWitness);
    v35 = sub_2287CB250();
    MEMORY[0x22AABE980](v35);

    v68 = v78;
    v62 = v79;
    v60 = sub_2287CB610();
    v36 = *MEMORY[0x277D11E60];
    v37 = v69;
    v38 = *(v69 + 104);
    v61 = v23;
    v39 = v70;
    v38(v8, v36, v70);
    v40 = sub_2287C9B50();
    (*(v37 + 8))(v8, v39);
    sub_22870558C(0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_2287CDC90;
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    v42 = sub_2287C9A70();
    v44 = v43;
    v45 = MEMORY[0x277D837D0];
    *(v41 + 56) = MEMORY[0x277D837D0];
    v46 = sub_2287043F8();
    *(v41 + 64) = v46;
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    v59(v11, v28, AssociatedTypeWitness);
    v47 = sub_2287CB250();
    *(v41 + 96) = v45;
    *(v41 + 104) = v46;
    *(v41 + 72) = v47;
    *(v41 + 80) = v48;
    v49 = v74;
    (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness);
    v50 = sub_2287C9E50();
    (*(v75 + 8))(v49, v71);
    v51 = sub_2287C9C50();
    v53 = v52;

    *(v41 + 136) = v45;
    *(v41 + 144) = v46;
    *(v41 + 112) = v51;
    *(v41 + 120) = v53;
    sub_2287CA920(v60, &dword_2286FF000, v40, "[GeneratorPipelineManager] %{public}@, %{public}@, %{public}@", 61, 2, v41);

    v55 = MEMORY[0x22AABF5F0](v54);
    v56 = v66;
    sub_228735A40(v28, v61, v65, v64, v63, v66, v68, v62, v77);
    objc_autoreleasePoolPop(v55);

    return (*(v72 + 8))(v56, v73);
  }

  else
  {
    sub_2287CADC0();
    swift_getWitnessTable();
    v58 = sub_2287CAF40();
    result = (*(v19 + 8))(v21, v18);
    *v77 = v58;
  }

  return result;
}

uint64_t sub_228735A40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v101 = a8;
  v105 = a7;
  v100 = a6;
  v104 = a5;
  v103 = a4;
  v102 = a3;
  v110 = a1;
  v109 = a9;
  v10 = *a2;
  v11 = sub_2287C9E70();
  v107 = *(v11 - 8);
  v108 = v11;
  MEMORY[0x28223BE20](v11);
  v106 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873DC58(0, qword_280DE07D8, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v99 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v97 = &v74 - v16;
  v112 = a2;
  v17 = *(v10 + 80);
  v18 = *(v10 + 88);
  swift_getAssociatedTypeWitness();
  v19 = v18;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v21, v22);
  v95 = *(v23 - 8);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v23);
  v94 = &v74 - v24;
  swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v26 = sub_2287CACD0();
  v98 = MEMORY[0x277CBCD90];
  swift_getWitnessTable();
  v84 = sub_2287CAAA0();
  v91 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v28 = &v74 - v27;
  v111 = type metadata accessor for GeneratorPipelineManagerWrapper(255, v25, v29, v30);
  WitnessTable = swift_getWitnessTable();
  v31 = sub_2287CAB50();
  v82 = v31;
  v90 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v79 = &v74 - v32;
  v33 = sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
  v83 = v33;
  v81 = swift_getWitnessTable();
  v119[0] = v31;
  v119[1] = v33;
  v119[2] = v81;
  v119[3] = MEMORY[0x277D84950];
  v80 = sub_2287CABE0();
  v89 = *(v80 - 8);
  v34 = MEMORY[0x28223BE20](v80);
  v88 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v77 = &v74 - v36;
  v87 = swift_getWitnessTable();
  v92 = sub_2287CAAD0();
  v93 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v86 = &v74 - v37;
  v117 = v17;
  v118 = v19;
  KeyPath = swift_getKeyPath();
  v39 = v23;
  v40 = v110;
  GeneratorPipelineManagerWrapper.subscript.getter(KeyPath);

  v119[6] = v119[0];
  v115 = v17;
  v116 = v19;
  v41 = v17;
  v42 = v19;
  v43 = swift_getKeyPath();
  v44 = swift_getWitnessTable();
  sub_228734D98(v40, v112, v43, v26, v44, v28);

  v45 = v95;
  v46 = *(v95 + 16);
  v47 = v94;
  v78 = v39;
  v46(v94, v40, v39);
  v48 = v45;
  v49 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v50 = swift_allocObject();
  v76 = v41;
  *(v50 + 16) = v41;
  *(v50 + 24) = v42;
  v75 = v42;
  (*(v48 + 32))(v50 + v49, v47, v39);
  v51 = v79;
  v52 = v84;
  sub_2287CAF70();

  (*(v91 + 8))(v28, v52);
  v53 = swift_allocObject();
  *(v53 + 16) = v41;
  *(v53 + 24) = v42;
  v54 = v77;
  v55 = v82;
  sub_2287CB010();

  (*(v90 + 8))(v51, v55);
  v56 = _HKLogPersistedSignposts();
  v57 = sub_2287CA970();
  v58 = *(v57 - 8);
  v59 = v97;
  (*(v58 + 16))(v97, v100, v57);
  (*(v58 + 56))(v59, 0, 1, v57);
  v60 = v89;
  v61 = v80;
  (*(v89 + 16))(v88, v54, v80);
  sub_22873C718(v59, v99);

  v62 = v86;
  sub_2287CAAE0();
  sub_22873C7AC(v59);
  (*(v60 + 8))(v54, v61);
  v63 = v92;
  swift_getWitnessTable();
  v64 = sub_2287CAF40();
  (*(v93 + 8))(v62, v63);
  v65 = v112[24];
  v66 = v112[25];
  __swift_project_boxed_opaque_existential_1(v112 + 21, v65);
  v119[0] = v64;
  v113 = v76;
  v114 = v75;
  v67 = swift_getKeyPath();
  v68 = v106;
  GeneratorPipelineManagerWrapper.subscript.getter(v67);

  v69 = *(v66 + 48);
  v70 = sub_2287CACD0();
  v71 = swift_getWitnessTable();
  v72 = v69(v119, v68, v70, v71, v65, v66);
  (*(v107 + 8))(v68, v108);

  *v109 = v72;
  return result;
}

uint64_t sub_2287365D4@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 32);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t sub_2287366C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v8 = sub_2287C9ED0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  (*(v16 + 16))(&v21 - v14, a1, v13);
  v19 = type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v17, v18);
  sub_2287010E4(a2 + *(v19 + 28), v22);
  (*(v9 + 16))(v11, a2 + *(v19 + 32), v8);
  return GeneratorPipelineManagerWrapper.init(wrapped:pluginInfo:context:)(v15, v22, v11, v13, x8_0);
}

uint64_t sub_228736924@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v14 - v8;
  (*(v7 + 16))(&v14 - v8, a1, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v10 = sub_2287CBCE0();
  if (v10)
  {
    v11 = v10;
    result = (*(v7 + 8))(v9, AssociatedTypeWitness);
  }

  else
  {
    v11 = swift_allocError();
    result = (*(v7 + 32))(v13, v9, AssociatedTypeWitness);
  }

  *a4 = v11;
  return result;
}

uint64_t sub_228736B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 40);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t sub_228736C2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v52 = a4;
  v54 = a1;
  sub_22873DC58(0, &qword_280DE00C8, MEMORY[0x277D121A8], MEMORY[0x277CBCE78]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  sub_22873DA58(0, &qword_280DDFE38, MEMORY[0x277D121A8], MEMORY[0x277CBCF38]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  sub_22873C170(0);
  v53 = v17;
  v51 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873C240(0, &qword_280DE0420, sub_22873C170, sub_22873C31C, MEMORY[0x277CBCCD8]);
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  sub_22873C350(0);
  v56 = *(v23 - 8);
  v57 = v23;
  MEMORY[0x28223BE20](v23);
  v55 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v58 = a2;
    sub_2287CA570();
    swift_retain_n();
    sub_2287CADB0();
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_2287CAD80();
    (*(v9 + 8))(v11, v8);
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    sub_2287C9A70();
    sub_2287CA540();
    sub_2287CA550();
    sub_22873C4AC();
    v25 = sub_2287CAE70();

    (*(v14 + 8))(v16, v13);
    v58 = v25;
    sub_22873AC94(0);
    v27 = v26;
    v28 = sub_22873DE20(&qword_280DE1A98, sub_22873AC94, MEMORY[0x277CBCD90]);
    v29 = v55;
    sub_2287CAE10();

    v58 = v27;
    v59 = v28;
    swift_getOpaqueTypeConformance2();
    v30 = v57;
    v31 = sub_2287CAF40();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v32 = sub_2287C9A70();
    v34 = v33;
    v35 = sub_2287CA540();
    v36 = sub_2287CA550();
    v58 = v48;
    v37 = MEMORY[0x277CBCD88];
    sub_22873D054(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
    v38 = MEMORY[0x277CBCD90];
    sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v37, MEMORY[0x277CBCD90]);
    sub_2287CAFA0();
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = v32;
    v40[4] = v34;
    v40[5] = v35;
    v40[6] = v36;
    sub_2287CACC0();
    sub_22873AC2C(0, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    sub_22873AC94(0);
    v42 = v41;
    sub_22873C31C();
    v43 = sub_22873DE20(&qword_280DE1A98, sub_22873AC94, v38);
    v44 = v53;
    sub_2287CAFE0();

    (*(v51 + 8))(v19, v44);
    sub_22873C404();
    v45 = v50;
    v46 = sub_2287CAF40();
    (*(v49 + 8))(v22, v45);
    v58 = v46;
    v29 = v55;
    sub_2287CAE10();

    v58 = v42;
    v59 = v43;
    swift_getOpaqueTypeConformance2();
    v30 = v57;
    v31 = sub_2287CAF40();
  }

  (*(v56 + 8))(v29, v30);
  return v31;
}

uint64_t (*sub_22873741C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v6 = v5;
  v12 = *v6;
  v13 = swift_allocObject();
  swift_weakInit();
  sub_2287010E4(a2, v17);
  v14 = swift_allocObject();
  v14[2] = *(v12 + 80);
  v14[3] = *(v12 + 88);
  v14[4] = v13;
  v14[5] = a1;
  sub_228706AD4(v17, (v14 + 6));
  v14[11] = a3;
  v14[12] = a4;
  v14[13] = a5;
  v15 = a1;

  return sub_22873AA9C;
}

uint64_t sub_22873753C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = a7;
  v59 = a8;
  v57 = a6;
  v62 = a1;
  v63 = a5;
  v61 = a4;
  sub_22873AAD4(0, &qword_280DE0078, MEMORY[0x277CBCE88]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  sub_22873AB44(0);
  v16 = v15;
  v54 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873C240(0, &qword_280DE06A8, sub_22873AB44, sub_22873ADA4, MEMORY[0x277CBCBA8]);
  v20 = v19;
  v53 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - v21;
  sub_22873ADD8(0);
  v24 = v23;
  v56 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v55 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v51 = v24;
  v60 = Strong;
  v27 = sub_2287CB590();
  v28 = sub_2287C9C30();

  if (!v28)
  {

LABEL_8:
    sub_22870CB48(0);
    sub_2287CADC0();
    sub_22873BF04(&qword_280DE0080, &qword_280DE0078, MEMORY[0x277CBCE88], MEMORY[0x277CBCE90]);
    v32 = sub_2287CAF40();
LABEL_9:
    (*(v12 + 8))(v14, v11);
    return v32;
  }

  v52 = v28;
  v29 = [v28 type];
  if (v29 != 1)
  {
    if (v29 == 2)
    {
      __swift_project_boxed_opaque_existential_1(v61, v61[3]);
      v34 = sub_2287C9A70();
      v61 = v35;
      v36 = sub_2287CA540();
      v37 = sub_2287CA550();
      v64 = v63;
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = v34;
      v39[4] = v61;
      v39[5] = v36;
      v39[6] = v37;
      v40 = MEMORY[0x277CBCD88];
      sub_22873D054(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
      sub_22873AC94(0);
      v41 = MEMORY[0x277CBCD90];
      sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v40, MEMORY[0x277CBCD90]);
      sub_2287CAF70();

      v42 = sub_22873ADA4();
      v43 = sub_22873DE20(&qword_280DE1A98, sub_22873AC94, v41);
      MEMORY[0x22AABE600](v16, v42, v43);
      (*(v54 + 8))(v18, v16);
      sub_22873AF2C();
      v44 = sub_2287CAF40();
      (*(v53 + 8))(v22, v20);
      v64 = v44;
      v45 = sub_2287CAE40();

      v64 = v45;
      sub_22873DA58(0, &qword_280DE01C0, sub_22870CB48, MEMORY[0x277CBCD88]);
      v47 = v46;
      v48 = sub_22873AE8C();
      v49 = v55;
      sub_2287CAE10();

      v64 = v47;
      v65 = v48;
      swift_getOpaqueTypeConformance2();
      v50 = v51;
      v32 = sub_2287CAF40();

      (*(v56 + 8))(v49, v50);
      return v32;
    }

    if (v29 != 3)
    {
      sub_22870CB48(0);
      sub_2287CADC0();
      sub_22873BF04(&qword_280DE0080, &qword_280DE0078, MEMORY[0x277CBCE88], MEMORY[0x277CBCE90]);
      v32 = sub_2287CAF40();

      goto LABEL_9;
    }
  }

  v30 = sub_2287CA540();
  v31 = sub_2287CA550();
  v32 = sub_22873B0EC(a3, v61, v30, v31, v63, v57, v58);

  return v32;
}

uint64_t sub_228737CC8(void *a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
  v5 = sub_2287C9A70();
  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v5 == sub_2287C9A70() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2287CBD00();
  }

  sub_22873DC58(0, &qword_280DE2608, sub_22870CB48, type metadata accessor for GeneratorPipelineManagerWrapper);
  v11 = sub_2287C9EB0();
  v12 = sub_2287C9C30();

  v13 = [a3 profileIdentifier];
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      v15 = sub_2287CB7F0();
    }

    else
    {
      v15 = 0;
    }

    v14 = v12;
  }

  else
  {
    if (!v13)
    {
      v15 = 1;
      return v10 & v15 & 1;
    }

    v15 = 0;
  }

  return v10 & v15 & 1;
}

uint64_t GeneratorPipelineManager.GenerationState.outstandingPipelines.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t GeneratorPipelineManager.GenerationState.outstandingGenerators.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_228737F1C@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v7, v8);
  __swift_project_boxed_opaque_existential_1((a1 + *(v9 + 28)), *(a1 + *(v9 + 28) + 24));
  sub_2287C9A70();
  sub_22873E0A0();
  v10 = sub_2287CB840();

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 16 + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
  }

  else
  {
    v13 = 0xE400000000000000;
    v14 = 1701736302;
  }

  MEMORY[0x22AABE980](v14, v13);

  *a4 = 0x3D6E6967756C70;
  a4[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_228738064@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t *a5@<X8>)
{
  sub_2287C9810();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v9, v10);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a1, a1 + *(TupleTypeMetadata2 + 48));
  *a5 = result;
  a5[1] = v13;
  return result;
}

uint64_t sub_228738128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = a2;
  v24 = a3;
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v25 = &v22 - v6;
  v7 = sub_2287C9E70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v11, v12);
  __swift_project_boxed_opaque_existential_1((a1 + *(v13 + 28)), *(a1 + *(v13 + 28) + 24));
  v30 = sub_2287C9A70();
  v31 = v14;
  MEMORY[0x22AABE980](2128928, 0xE300000000000000);
  v28 = v23;
  v29 = v24;
  KeyPath = swift_getKeyPath();
  GeneratorPipelineManagerWrapper.subscript.getter(KeyPath);

  v16 = sub_2287C9E50();
  (*(v8 + 8))(v10, v7);
  v17 = sub_2287C9C50();
  MEMORY[0x22AABE980](v17);

  MEMORY[0x22AABE980](2128928, 0xE300000000000000);
  (*(v26 + 16))(v25, a1, AssociatedTypeWitness);
  v18 = sub_2287CB250();
  MEMORY[0x22AABE980](v18);

  v20 = v31;
  v21 = v27;
  *v27 = v30;
  v21[1] = v20;
  return result;
}

uint64_t sub_2287383A8@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v7, v8);
  __swift_project_boxed_opaque_existential_1((a1 + *(v9 + 28)), *(a1 + *(v9 + 28) + 24));
  sub_2287C9A70();
  sub_22873E0A0();
  v10 = sub_2287CB840();

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 16 + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
  }

  else
  {
    v13 = 0xE400000000000000;
    v14 = 1701736302;
  }

  MEMORY[0x22AABE980](v14, v13);

  *a4 = 0x3D6E6967756C70;
  a4[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_228738540@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t *a5@<X8>)
{
  sub_2287C9810();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GeneratorPipelineManagerWrapper(255, AssociatedTypeWitness, v9, v10);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a1, a1 + *(TupleTypeMetadata2 + 48));
  *a5 = result;
  a5[1] = v13;
  return result;
}

uint64_t sub_22873864C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v9 = MEMORY[0x22AABF5F0](a1);
  a5(&v11, a2, a3, a4);
  objc_autoreleasePoolPop(v9);
  return v11;
}

uint64_t sub_2287386C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a3;
  v27 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v25 = &v22 - v7;
  v23 = sub_2287C9E70();
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v11, v12);
  __swift_project_boxed_opaque_existential_1((a1 + *(v13 + 28)), *(a1 + *(v13 + 28) + 24));
  v30 = sub_2287C9A70();
  v31 = v14;
  MEMORY[0x22AABE980](2128928, 0xE300000000000000);
  v28 = a2;
  v29 = v24;
  KeyPath = swift_getKeyPath();
  GeneratorPipelineManagerWrapper.subscript.getter(KeyPath);

  v16 = sub_2287C9E50();
  (*(v8 + 8))(v10, v23);
  v17 = sub_2287C9C50();
  MEMORY[0x22AABE980](v17);

  MEMORY[0x22AABE980](2128928, 0xE300000000000000);
  (*(v26 + 16))(v25, a1, AssociatedTypeWitness);
  v18 = sub_2287CB250();
  MEMORY[0x22AABE980](v18);

  v20 = v31;
  v21 = v27;
  *v27 = v30;
  v21[1] = v20;
  return result;
}

uint64_t sub_228738988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_2287CB080();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2287CB0E0();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = v3[20];
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = *(v6 + 80);
  v15[3] = *(v6 + 88);
  v15[4] = v14;
  v15[5] = a1;
  v15[6] = a2;
  aBlock[4] = sub_22873A9EC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);

  sub_2287CB0A0();
  v20 = MEMORY[0x277D84F90];
  sub_22873DE20(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22873DC58(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22873AA14();
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v13, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_228738CC4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = MEMORY[0x22AABF5F0]();
    sub_228738D54(a2);
    objc_autoreleasePoolPop(v5);
  }

  return result;
}

uint64_t sub_228738D54(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  sub_2287CAD30();
  v3[0] = v3[1];
  a1(&v4, v3);

  sub_2287CAD20();
}

uint64_t GeneratorPipelineManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));

  return v0;
}

uint64_t GeneratorPipelineManager.__deallocating_deinit()
{
  GeneratorPipelineManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_228738EAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a3;
  v11 = *(*(*a3 + *MEMORY[0x277D84308] + 8) + 24);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v21 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v12 + 16))(v14, a4, v11);
    v16 = *(v12 + 80);
    v21 = a6;
    v17 = (v16 + 64) & ~v16;
    v18 = swift_allocObject();
    *(v18 + 2) = a5;
    *(v18 + 3) = *(v11 + 16);
    v19 = *(v10 + *MEMORY[0x277D84308]);
    v20 = v21;
    *(v18 + 4) = *(v19 + 16);
    *(v18 + 5) = v20;
    *(v18 + 6) = *(v19 + 24);
    *(v18 + 7) = a3;
    (*(v12 + 32))(&v18[v17], v14, v11);

    sub_228738988(sub_22873CC70, v18);
  }

  return result;
}

uint64_t sub_2287390A0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(*(*a2 + *MEMORY[0x277D84308] + 8) + 24);
  v8 = sub_2287CB820();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = *a1;
  v12 = a1[1];
  *a4 = v13;
  a4[1] = v12;
  (*(v14 + 16))(&v19[-v15], a3 + *(v7 + 36));
  v16 = *(v7 - 8);
  (*(v16 + 16))(v11, a3, v7);
  (*(v16 + 56))(v11, 0, 1, v7);

  v17 = swift_modifyAtWritableKeyPath();
  sub_2287CB1A0();
  return v17(v19, 0);
}

uint64_t sub_2287392BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = *(*(*a2 + *MEMORY[0x277D84308] + 8) + 24);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v20 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v11 + 16))(v13, a3, v10);
    v15 = *(v11 + 80);
    v20 = a5;
    v16 = (v15 + 64) & ~v15;
    v17 = swift_allocObject();
    *(v17 + 2) = a4;
    *(v17 + 3) = *(v10 + 16);
    v18 = *(v9 + *MEMORY[0x277D84308]);
    v19 = v20;
    *(v17 + 4) = *(v18 + 16);
    *(v17 + 5) = v19;
    *(v17 + 6) = *(v18 + 24);
    *(v17 + 7) = a2;
    (*(v11 + 32))(&v17[v16], v13, v10);

    sub_228738988(sub_22873CAE8, v17);
  }

  return result;
}

uint64_t sub_2287394B0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(*(*a2 + *MEMORY[0x277D84308] + 8) + 24);
  v8 = sub_2287CB820();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = *a1;
  v12 = a1[1];
  *a4 = v13;
  a4[1] = v12;
  (*(v14 + 16))(&v18[-v15], a3 + *(v7 + 36));
  (*(*(v7 - 8) + 56))(v11, 1, 1, v7);

  v16 = swift_modifyAtWritableKeyPath();
  sub_2287CB1A0();
  return v16(v18, 0);
}

uint64_t sub_22873969C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2287CAA50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v7 = sub_2287CAA40();
  v8 = sub_2287CB610();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = a2;
    v16 = v10;
    *v9 = 136446210;
    swift_getMetatypeMetadata();
    v11 = sub_2287CB250();
    v13 = sub_2287031D8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2286FF000, v7, v8, "[%{public}s]: subscription to begin generation received", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AABFD90](v10, -1, -1);
    MEMORY[0x22AABFD90](v9, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22873984C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_2287CAC90();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = sub_2287CAA50();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v15 = *(v6 + 16);
  v15(v10, a1, v5);
  v16 = sub_2287CAA40();
  v33 = sub_2287CB610();
  if (os_log_type_enabled(v16, v33))
  {
    v17 = swift_slowAlloc();
    v32 = v12;
    v18 = v17;
    v31 = swift_slowAlloc();
    v35 = a2;
    v36 = v31;
    *v18 = 136446466;
    swift_getMetatypeMetadata();
    v19 = sub_2287CB250();
    v21 = sub_2287031D8(v19, v20, &v36);
    v30 = v11;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v15(v34, v10, v5);
    v23 = sub_2287CB250();
    v25 = v24;
    (*(v6 + 8))(v10, v5);
    v26 = sub_2287031D8(v23, v25, &v36);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_2286FF000, v16, v33, "[%{public}s]: Sending completion event <%{public}s> for generation sent", v18, 0x16u);
    v27 = v31;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v27, -1, -1);
    MEMORY[0x22AABFD90](v18, -1, -1);

    return (*(v32 + 8))(v14, v30);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_228739BD8(uint64_t a1)
{
  v2 = sub_2287CAA50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v6 = sub_2287CAA40();
  v7 = sub_2287CB610();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = a1;
    v15 = v9;
    *v8 = 136446210;
    swift_getMetatypeMetadata();
    v10 = sub_2287CB250();
    v12 = sub_2287031D8(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2286FF000, v6, v7, "[%{public}s]: cancellation received for generation", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AABFD90](v9, -1, -1);
    MEMORY[0x22AABFD90](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_228739E24(uint64_t a1)
{
  if (!qword_280DDFE08)
  {
    sub_2287CA370();
    sub_2287CA2B0();
    sub_22873DE20(&qword_280DE11A8, MEMORY[0x277D12068], MEMORY[0x277D12070]);
    v1 = sub_2287CBE10();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDFE08);
    }
  }
}

uint64_t sub_228739ED0(uint64_t a1, uint64_t a2)
{
  sub_228739E24(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_228739F64(uint64_t a1)
{
  if (!qword_280DE1968)
  {
    sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    sub_228703004(255, &qword_280DE1990, 0x277CCD4D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE1968);
    }
  }
}

unint64_t sub_228739FF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22873A1D0(0, &qword_280DE18A8, MEMORY[0x277D84460]);
    v3 = sub_2287CBBF0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_228756BD4(v6);
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

uint64_t sub_22873A0FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22873A15C(uint64_t a1)
{
  if (!qword_280DE3360)
  {
    sub_22873A1D0(255, &qword_280DE1A40, MEMORY[0x277D834F8]);
    v1 = sub_2287CA680();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE3360);
    }
  }
}

void sub_22873A1D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    v7 = sub_228703004(255, &qword_280DE1990, 0x277CCD4D8);
    v8 = sub_22873A2A8(&qword_280DE1970, &qword_280DE3870, 0x277CCD7C8, MEMORY[0x277D85378]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22873A2A8(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_228703004(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22873A300(uint64_t a1)
{
  if (!qword_280DE01E8)
  {
    sub_22873E054(255, &qword_280DE1A28, MEMORY[0x277D11E90]);
    sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
    v1 = sub_2287CACD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE01E8);
    }
  }
}

void sub_22873A390(uint64_t a1)
{
  if (!qword_280DE1AE0)
  {
    sub_22873E054(255, &qword_280DE1A28, MEMORY[0x277D11E90]);
    v1 = sub_2287CACD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1AE0);
    }
  }
}

unint64_t sub_22873A43C()
{
  result = qword_280DE0710;
  if (!qword_280DE0710)
  {
    sub_22873DD44(255, &qword_280DE0708, sub_22873A390, sub_22873A408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0710);
  }

  return result;
}

unint64_t sub_22873A4D0()
{
  result = qword_280DE1BB8;
  if (!qword_280DE1BB8)
  {
    sub_22873E304(255, &qword_280DE1BB0, sub_22873A390, sub_22873A408, MEMORY[0x277CBCC50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1BB8);
  }

  return result;
}

uint64_t sub_22873A56C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_22873A8B8(uint64_t a1)
{
  sub_228739E24(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_22873A9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22873AA14()
{
  result = qword_280DE3A08;
  if (!qword_280DE3A08)
  {
    sub_22873DC58(255, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3A08);
  }

  return result;
}

void sub_22873AAD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_22870CB48(255);
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_22873AB44(uint64_t a1)
{
  if (!qword_280DE05B8)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_22873D054(255, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
    sub_22873AC94(255);
    sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v1, MEMORY[0x277CBCD90]);
    v2 = sub_2287CAB50();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE05B8);
    }
  }
}

void sub_22873AC2C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_228703004(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22873AC94(uint64_t a1)
{
  if (!qword_280DE1A90)
  {
    sub_22873AC2C(255, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
    v1 = sub_2287CACD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1A90);
    }
  }
}

uint64_t sub_22873AD40(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22873D054(255, a2, &qword_280DDFEB0, MEMORY[0x277D83D88], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22873ADD8(uint64_t a1)
{
  if (!qword_280DE0038)
  {
    sub_22873DA58(255, &qword_280DE01C0, sub_22870CB48, MEMORY[0x277CBCD88]);
    sub_22873AE8C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DE0038);
    }
  }
}

unint64_t sub_22873AE8C()
{
  result = qword_280DE01C8;
  if (!qword_280DE01C8)
  {
    sub_22873DA58(255, &qword_280DE01C0, sub_22870CB48, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE01C8);
  }

  return result;
}

unint64_t sub_22873AF2C()
{
  result = qword_280DE06B0;
  if (!qword_280DE06B0)
  {
    sub_22873C240(255, &qword_280DE06A8, sub_22873AB44, sub_22873ADA4, MEMORY[0x277CBCBA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE06B0);
  }

  return result;
}

unint64_t sub_22873AFC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22873E1A8();
    v3 = sub_2287CBBF0();
    v4 = a1 + 32;

    while (1)
    {
      sub_22873E20C(v4, v13, sub_22873E274);
      result = sub_228756AB4(v13);
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
      result = sub_22873E2D8(&v15, (v3[7] + 32 * result));
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

uint64_t sub_22873B0EC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v93 = a7;
  v76 = a5;
  v95 = a3;
  v96 = a4;
  v94 = a2;
  v92 = a1;
  sub_22873BE44(0);
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873E304(0, &qword_280DE0500, sub_22873BF48, sub_22873BFE0, MEMORY[0x277CBCC88]);
  v83 = *(v10 - 8);
  v84 = v10;
  MEMORY[0x28223BE20](v10);
  v81 = v75 - v11;
  sub_22873C014(0);
  v85 = *(v12 - 8);
  v86 = v12;
  MEMORY[0x28223BE20](v12);
  v82 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873C170(0);
  v80 = v14;
  v79 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873C240(0, &qword_280DE0420, sub_22873C170, sub_22873C31C, MEMORY[0x277CBCCD8]);
  v78 = v17;
  v77 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v75 - v18;
  sub_22873DC58(0, &qword_280DE00C8, MEMORY[0x277D121A8], MEMORY[0x277CBCE78]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = v75 - v23;
  sub_22873DA58(0, &qword_280DDFE38, MEMORY[0x277D121A8], MEMORY[0x277CBCF38]);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = v75 - v28;
  sub_22873C350(0);
  v90 = *(v30 - 8);
  v91 = v30;
  MEMORY[0x28223BE20](v30);
  v32 = v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a6)
  {
    __swift_project_boxed_opaque_existential_1(v94, v94[3]);
    v58 = sub_2287C9A70();
    v60 = v59;
    *&v97[0] = v76;
    v61 = MEMORY[0x277CBCD88];
    sub_22873D054(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
    v62 = MEMORY[0x277CBCD90];
    v76 = MEMORY[0x277CBCD90];
    sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v61, MEMORY[0x277CBCD90]);
    sub_2287CAFA0();
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v64 = swift_allocObject();
    v64[2] = v63;
    v64[3] = v58;
    v65 = v95;
    v64[4] = v60;
    v64[5] = v65;
    v64[6] = v96;

    sub_2287CACC0();
    sub_22873AC2C(0, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    sub_22873AC94(0);
    v67 = v66;
    sub_22873C31C();
    v68 = sub_22873DE20(&qword_280DE1A98, sub_22873AC94, v62);
    v69 = v80;
    sub_2287CAFE0();

    (*(v79 + 8))(v16, v69);
    sub_22873C404();
    v70 = v78;
    v71 = sub_2287CAF40();
    (*(v77 + 8))(v19, v70);
    *&v97[0] = v71;
    sub_2287CAE10();

    *&v97[0] = v67;
    *(&v97[0] + 1) = v68;
    swift_getOpaqueTypeConformance2();
    v72 = v91;
    v73 = sub_2287CAE40();
    (*(v90 + 8))(v32, v72);
    *&v97[0] = v73;
    v74 = MEMORY[0x277CBCD88];
    sub_22873AAD4(0, &qword_280DE1AA0, MEMORY[0x277CBCD88]);
    sub_22873BF04(&qword_280DE1AA8, &qword_280DE1AA0, v74, v76);
    v42 = sub_2287CAF40();

    v33 = v94;
    v43 = v93;
    if (!v93)
    {
      return v42;
    }

    goto LABEL_3;
  }

  v75[1] = a6;
  *&v97[0] = a6;
  sub_2287CA570();
  swift_retain_n();
  sub_2287CADB0();
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_2287CAD80();
  (*(v22 + 8))(v24, v21);
  v33 = v94;
  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  sub_2287C9A70();
  sub_22873C4AC();
  v34 = sub_2287CAE70();

  (*(v27 + 8))(v29, v26);
  *&v97[0] = v34;
  sub_22873AC94(0);
  v36 = v35;
  v37 = MEMORY[0x277CBCD90];
  v38 = sub_22873DE20(&qword_280DE1A98, sub_22873AC94, MEMORY[0x277CBCD90]);
  sub_2287CAE10();

  *&v97[0] = v36;
  *(&v97[0] + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v91;
  v40 = sub_2287CAE40();
  (*(v90 + 8))(v32, v39);
  *&v97[0] = v40;
  v41 = MEMORY[0x277CBCD88];
  sub_22873AAD4(0, &qword_280DE1AA0, MEMORY[0x277CBCD88]);
  sub_22873BF04(&qword_280DE1AA8, &qword_280DE1AA0, v41, v37);
  v42 = sub_2287CAF40();

  v43 = v93;
  if (v93)
  {
LABEL_3:
    v98 = v43;
    sub_2287010E4(v33, v97);
    v44 = swift_allocObject();
    sub_228706AD4(v97, v44 + 16);
    v45 = v92;
    *(v44 + 56) = v92;
    sub_22873BF48(0);
    sub_22873BFE0();

    v46 = v45;
    v47 = v81;
    sub_2287CAFB0();

    sub_22870CB48(0);
    sub_22873C0D4();
    v48 = v82;
    v49 = v84;
    sub_2287CAF70();
    (*(v83 + 8))(v47, v49);
    sub_22873DE20(&qword_280DE05A0, sub_22873C014, MEMORY[0x277CBCC08]);
    v50 = v86;
    v51 = sub_2287CAE30();
    (*(v85 + 8))(v48, v50);
    *&v97[0] = v51;
    v52 = MEMORY[0x277CBCD88];
    sub_22873AAD4(0, &qword_280DE1AA0, MEMORY[0x277CBCD88]);
    sub_22873BF04(&qword_280DE1AA8, &qword_280DE1AA0, v52, MEMORY[0x277CBCD90]);
    v53 = sub_2287CAF40();

    *&v97[0] = v53;
    v98 = v42;
    v54 = v87;
    sub_2287CAF00();
    sub_22873DE20(&qword_280DE0678, sub_22873BE44, MEMORY[0x277D10DD0]);
    v55 = v89;
    v56 = sub_2287CAF40();

    (*(v88 + 8))(v54, v55);
    return v56;
  }

  return v42;
}

void sub_22873BE44(uint64_t a1)
{
  if (!qword_280DE0670)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_22873AAD4(255, &qword_280DE1AA0, MEMORY[0x277CBCD88]);
    sub_22873BF04(&qword_280DE1AA8, &qword_280DE1AA0, v1, MEMORY[0x277CBCD90]);
    v2 = sub_2287CAB30();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE0670);
    }
  }
}

uint64_t sub_22873BF04(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22873AAD4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22873BF48(uint64_t a1)
{
  if (!qword_280DE1AF0)
  {
    sub_22873DC58(255, &qword_280DE2608, sub_22870CB48, type metadata accessor for GeneratorPipelineManagerWrapper);
    v1 = sub_2287CACD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1AF0);
    }
  }
}

void sub_22873C014(uint64_t a1)
{
  if (!qword_280DE0598)
  {
    sub_22873E304(255, &qword_280DE0500, sub_22873BF48, sub_22873BFE0, MEMORY[0x277CBCC88]);
    sub_22870CB48(255);
    sub_22873C0D4();
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0598);
    }
  }
}

unint64_t sub_22873C0D4()
{
  result = qword_280DE0508;
  if (!qword_280DE0508)
  {
    sub_22873E304(255, &qword_280DE0500, sub_22873BF48, sub_22873BFE0, MEMORY[0x277CBCC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0508);
  }

  return result;
}

void sub_22873C170(uint64_t a1)
{
  if (!qword_280DE0510)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_22873D054(255, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
    sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v1, MEMORY[0x277CBCD90]);
    v2 = sub_2287CAB70();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE0510);
    }
  }
}

void sub_22873C240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_22873AC94(255);
    v13[0] = v10;
    v13[1] = a3(255);
    v13[2] = sub_22873DE20(&qword_280DE1A98, sub_22873AC94, MEMORY[0x277CBCD90]);
    v13[3] = a4();
    v11 = a5(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_22873C350(uint64_t a1)
{
  if (!qword_280DE0030)
  {
    sub_22873AC94(255);
    sub_22873DE20(&qword_280DE1A98, sub_22873AC94, MEMORY[0x277CBCD90]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DE0030);
    }
  }
}

unint64_t sub_22873C404()
{
  result = qword_280DE0428;
  if (!qword_280DE0428)
  {
    sub_22873C240(255, &qword_280DE0420, sub_22873C170, sub_22873C31C, MEMORY[0x277CBCCD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0428);
  }

  return result;
}

unint64_t sub_22873C4AC()
{
  result = qword_280DDFE40;
  if (!qword_280DDFE40)
  {
    sub_22873DA58(255, &qword_280DDFE38, MEMORY[0x277D121A8], MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDFE40);
  }

  return result;
}

uint64_t sub_22873C534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v6, v7) - 8);
  v9 = v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_228735108(a1, v9, a2);
}

uint64_t sub_22873C5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for GeneratorPipelineManagerWrapper(0, AssociatedTypeWitness, v6, v7) - 8);
  v9 = v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_2287366C8(a1, v9, a2);
}

uint64_t sub_22873C718(uint64_t a1, uint64_t a2)
{
  sub_22873DC58(0, qword_280DE07D8, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22873C7AC(uint64_t a1)
{
  sub_22873DC58(0, qword_280DE07D8, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22873C838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[5];
  v8 = *(type metadata accessor for GeneratorPipelineManagerWrapper(0, v4[3], a3, a4) - 8);
  v9 = v4[7];
  v10 = v4[8];
  v11 = v4 + ((*(v8 + 80) + 72) & ~*(v8 + 80));

  return sub_228738EAC(a1, v9, v10, v11, v6, v7);
}

uint64_t objectdestroy_75Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = (type metadata accessor for GeneratorPipelineManagerWrapper(0, v5, a3, a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 72) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8, v5);
  __swift_destroy_boxed_opaque_existential_0((v4 + v8 + v6[9]));
  v10 = v6[10];
  v11 = sub_2287C9ED0();
  (*(*(v11 - 8) + 8))(v4 + v8 + v10, v11);
  v12 = v6[11];
  v13 = sub_2287C9810();
  (*(*(v13 - 8) + 8))(v4 + v8 + v12, v13);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_22873CA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[5];
  v7 = *(type metadata accessor for GeneratorPipelineManagerWrapper(0, v4[3], a3, a4) - 8);
  v8 = v4[7];
  v9 = v4[8];
  v10 = v4 + ((*(v7 + 80) + 72) & ~*(v7 + 80));

  return sub_2287392BC(v8, v9, v10, v5, v6);
}

uint64_t objectdestroy_85Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = (type metadata accessor for GeneratorPipelineManagerWrapper(0, v5, a3, a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 64) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8, v5);
  __swift_destroy_boxed_opaque_existential_0((v4 + v8 + v6[9]));
  v10 = v6[10];
  v11 = sub_2287C9ED0();
  (*(*(v11 - 8) + 8))(v4 + v8 + v10, v11);
  v12 = v6[11];
  v13 = sub_2287C9810();
  (*(*(v13 - 8) + 8))(v4 + v8 + v12, v13);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_22873CC88(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[5];
  v8 = *(type metadata accessor for GeneratorPipelineManagerWrapper(0, v4[3], a3, a4) - 8);
  v9 = v4[7];
  v10 = v4 + ((*(v8 + 80) + 64) & ~*(v8 + 80));

  return a2(a1, v9, v10, v6, v7);
}

void sub_22873CD8C(uint64_t a1)
{
  if (!qword_280DE05C8)
  {
    sub_22873D054(255, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940], MEMORY[0x277CBCD88]);
    sub_22873AC2C(255, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
    sub_22873CE6C();
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE05C8);
    }
  }
}

unint64_t sub_22873CE6C()
{
  result = qword_280DE0180;
  if (!qword_280DE0180)
  {
    sub_22873D054(255, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0180);
  }

  return result;
}

void sub_22873CEFC(uint64_t a1)
{
  if (!qword_280DE02D0)
  {
    v1 = MEMORY[0x277D83D88];
    v2 = MEMORY[0x277CBCD88];
    sub_22873D054(255, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
    v3 = MEMORY[0x277D10CC0];
    sub_22873D054(255, &qword_280DE1158, &qword_280DDFEB0, v1, MEMORY[0x277D10CC0]);
    sub_22873AD40(&unk_280DE0150, &qword_280DE0148, v2, MEMORY[0x277CBCD90]);
    sub_22873AD40(&qword_280DE1160, &qword_280DE1158, v3, MEMORY[0x277D10CC8]);
    v4 = sub_2287CAC50();
    if (!v5)
    {
      atomic_store(v4, &qword_280DE02D0);
    }
  }
}

void sub_22873D054(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_22873AC2C(255, a3, &qword_280DE1958, 0x277CCD940, a4);
    v9 = v8;
    v10 = sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
    v11 = a5(a1, v9, v10, MEMORY[0x277D84950]);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_22873D12C()
{
  result = qword_280DE07A0;
  if (!qword_280DE07A0)
  {
    sub_22873E304(255, &qword_280DE0798, sub_22873CEFC, sub_22873D0F8, MEMORY[0x277CBCB28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE07A0);
  }

  return result;
}

unint64_t sub_22873D1D8()
{
  result = qword_280DE0290;
  if (!qword_280DE0290)
  {
    sub_22873DA58(255, &qword_280DE0288, MEMORY[0x277D11FC0], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0290);
  }

  return result;
}

void sub_22873D260(uint64_t a1)
{
  if (!qword_280DE02E0)
  {
    v1 = MEMORY[0x277D11FC0];
    sub_22873DA58(255, &qword_280DE0288, MEMORY[0x277D11FC0], MEMORY[0x277CBCD88]);
    sub_22873DA58(255, &qword_280DE1168, v1, MEMORY[0x277D10CC0]);
    sub_22873D1D8();
    sub_22873D340();
    v2 = sub_2287CAC50();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE02E0);
    }
  }
}

unint64_t sub_22873D340()
{
  result = qword_280DE1170;
  if (!qword_280DE1170)
  {
    sub_22873DA58(255, &qword_280DE1168, MEMORY[0x277D11FC0], MEMORY[0x277D10CC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1170);
  }

  return result;
}

unint64_t sub_22873D3FC()
{
  result = qword_280DE07B0;
  if (!qword_280DE07B0)
  {
    sub_22873E304(255, &qword_280DE07A8, sub_22873D260, sub_22873D3C8, MEMORY[0x277CBCB28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE07B0);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_22873D500(uint64_t a1)
{
  if (!qword_280DE1B80)
  {
    v1 = MEMORY[0x277D11E90];
    sub_22873E054(255, &qword_280DE1A28, MEMORY[0x277D11E90]);
    sub_22873D5C4(&qword_280DE1A20, &qword_280DE1A28, v1, MEMORY[0x277D83970]);
    v2 = sub_2287CAC10();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE1B80);
    }
  }
}

uint64_t sub_22873D5C4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22873E054(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22873D608(uint64_t a1)
{
  if (!qword_280DE04D0)
  {
    sub_22873DA58(255, &qword_280DE0298, sub_22873D6F4, MEMORY[0x277CBCD88]);
    sub_22873DD44(255, &qword_280DE06D8, sub_22873D500, sub_22873D78C);
    sub_22873D7C0();
    sub_22873D848();
    v1 = sub_2287CABC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE04D0);
    }
  }
}

void sub_22873D6F4(uint64_t a1)
{
  if (!qword_280DE11E0)
  {
    sub_22873DC58(255, &qword_280DE1198, MEMORY[0x277D121A8], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE11E0);
    }
  }
}

unint64_t sub_22873D7C0()
{
  result = qword_280DE02A0;
  if (!qword_280DE02A0)
  {
    sub_22873DA58(255, &qword_280DE0298, sub_22873D6F4, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE02A0);
  }

  return result;
}

unint64_t sub_22873D848()
{
  result = qword_280DE06E0;
  if (!qword_280DE06E0)
  {
    sub_22873DD44(255, &qword_280DE06D8, sub_22873D500, sub_22873D78C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE06E0);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22873D928@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22873D9AC(uint64_t a1)
{
  if (!qword_280DE0640)
  {
    sub_22873DA58(255, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873D6F4(255);
    sub_22873DAE4();
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0640);
    }
  }
}

void sub_22873DA58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_22873DAE4()
{
  result = qword_280DE0270;
  if (!qword_280DE0270)
  {
    sub_22873DA58(255, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0270);
  }

  return result;
}

void sub_22873DB6C(uint64_t a1)
{
  if (!qword_280DE0558)
  {
    sub_22873D9AC(255);
    sub_22873DC58(255, &qword_280DE00D8, sub_22873D6F4, MEMORY[0x277CBCE78]);
    sub_22873DE20(&qword_280DE0648, sub_22873D9AC, MEMORY[0x277CBCC08]);
    sub_22873DCBC();
    v1 = sub_2287CAB60();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0558);
    }
  }
}

void sub_22873DC58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22873DCBC()
{
  result = qword_280DE00E0;
  if (!qword_280DE00E0)
  {
    sub_22873DC58(255, &qword_280DE00D8, sub_22873D6F4, MEMORY[0x277CBCE78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE00E0);
  }

  return result;
}

void sub_22873DD44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
    a4();
    v6 = sub_2287CAAF0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22873DE20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22873DE68(uint64_t a1, uint64_t a2)
{
  if (!qword_280DE11A0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DE11A0);
    }
  }
}

unint64_t sub_22873DEC8()
{
  result = qword_27D850D00;
  if (!qword_27D850D00)
  {
    sub_22873DA58(255, &qword_280DE0098, sub_22873D6F4, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850D00);
  }

  return result;
}

unint64_t sub_22873DF60()
{
  result = qword_280DE06F0;
  if (!qword_280DE06F0)
  {
    sub_22873DD44(255, &qword_280DE06E8, sub_22873DB6C, sub_22873DDEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE06F0);
  }

  return result;
}

void sub_22873E054(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2287CB450();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22873E0A0()
{
  result = qword_280DE3A20;
  if (!qword_280DE3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3A20);
  }

  return result;
}

void sub_22873E1A8()
{
  if (!qword_280DE39B0)
  {
    v0 = sub_2287CBC00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE39B0);
    }
  }
}

uint64_t sub_22873E20C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22873E274()
{
  if (!qword_280DE18F8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE18F8);
    }
  }
}

_OWORD *sub_22873E2D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_22873E304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_22873E390()
{
  result = qword_280DE1B98;
  if (!qword_280DE1B98)
  {
    sub_22873E304(255, &qword_280DE1B90, sub_22873A390, sub_22873A408, MEMORY[0x277CBCC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1B98);
  }

  return result;
}

uint64_t Keyword.localizedIdentifier.getter()
{
  v1 = [v0 identifier];
  v2 = sub_2287CB220();
  v4 = v3;

  v5 = sub_2287C9FD0();
  LOBYTE(v2) = sub_22873E55C(v5, v6, v2, v4);

  if (v2)
  {
    return 0;
  }

  v7 = [v0 identifier];
  v8 = HKDisplayCategoryIdentifierFromString();

  if (v8 != -1)
  {
    return 0;
  }

  v10 = [v0 identifier];
  v11 = sub_2287CB220();

  return v11;
}

uint64_t sub_22873E55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_2287CB2C0();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_2287CB2C0();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_2287CBD00();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_2287CB2C0();
      v7 = v9;
    }

    while (v9);
  }

  sub_2287CB2C0();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t Set<>.correspondingKeywords.getter(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_2287CB4D0();
  sub_22871B354();
  swift_getWitnessTable();
  sub_22873E7CC();
  v2 = sub_2287CB330();
  v3 = sub_22872A9BC(v2);

  return v3;
}

uint64_t sub_22873E798@<X0>(uint64_t *a2@<X8>)
{
  result = _s14HealthPlatform7KeywordC0aB4CoreE11identifiers3forSaySSGSo12HKObjectTypeC_tFZ_0();
  *a2 = result;
  return result;
}

unint64_t sub_22873E7CC()
{
  result = qword_280DE19D8;
  if (!qword_280DE19D8)
  {
    sub_22871B354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE19D8);
  }

  return result;
}

uint64_t Keyword.uniqueIdentifier.getter()
{
  swift_getObjectType();
  v1 = sub_2287C9810();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = sub_2287CBE60();
  v12[1] = v5;
  MEMORY[0x22AABE980](95, 0xE100000000000000);
  v6 = [v0 identifier];
  v7 = sub_2287CB220();
  v9 = v8;

  MEMORY[0x22AABE980](v7, v9);

  MEMORY[0x22AABE980](95, 0xE100000000000000);
  sub_2287C9800();
  sub_22873EA30(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v10 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v10);

  (*(v2 + 8))(v4, v1);
  return v12[0];
}

uint64_t sub_22873EA30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22873EAB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t ModelTrainingScenarioExecutor.__allocating_init(coordinator:store:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_228706AD4(a1, v4 + 16);
  sub_228706AD4(a2, v4 + 56);
  return v4;
}

uint64_t ModelTrainingScenarioExecutor.init(coordinator:store:)(__int128 *a1, __int128 *a2)
{
  sub_228706AD4(a1, v2 + 16);
  sub_228706AD4(a2, v2 + 56);
  return v2;
}

uint64_t sub_22873EBB0(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return RelevanceEngineCoordinator.saveModelToDisk(completion:)(a1, a2, v5, v6);
}

void sub_22873EC0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v52 = a3;
  sub_228705C84(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v45 - v9;
  v10 = sub_2287C97C0();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for ModelTrainingCommand(0);
  v12 = *(v46 - 8);
  v13 = MEMORY[0x28223BE20](v46);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v47 = &v45 - v19;
  v20 = *a1;
  v50 = a1[1];
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        return;
      }

      sub_22873FA14(v23 + *(v12 + 72) * v22, v15, type metadata accessor for ModelTrainingCommand);
      if (*v15 == 1)
      {
        break;
      }

      v24 = sub_2287CBD00();

      if (v24)
      {
        goto LABEL_9;
      }

      ++v22;
      sub_22873FAD4(v15, type metadata accessor for ModelTrainingCommand);
      if (v21 == v22)
      {
        goto LABEL_11;
      }
    }

LABEL_9:
    sub_22873FB34(v15, v18, type metadata accessor for ModelTrainingCommand);
    v25 = v47;
    sub_22873FB34(v18, v47, type metadata accessor for ModelTrainingCommand);
    v26 = v48;
    sub_22873FA14(v25 + *(v46 + 24), v48, sub_228705C84);
    v28 = v53;
    v27 = v54;
    if ((*(v53 + 48))(v26, 1, v54) == 1)
    {
      sub_22873FAD4(v25, type metadata accessor for ModelTrainingCommand);
      sub_22873FAD4(v26, sub_228705C84);
      goto LABEL_11;
    }

    v33 = v45;
    (*(v28 + 32))(v45, v26, v27);
    v34 = v4[5];
    v35 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v34);
    v36 = (*(v35 + 32))(v34, v35);
    v37 = v49;
    (*(v28 + 16))(v49, v33, v27);
    (*(v28 + 56))(v37, 0, 1, v27);
    sub_22879A3E0(v37);

    (*(v28 + 8))(v33, v27);
    sub_22873FAD4(v25, type metadata accessor for ModelTrainingCommand);
  }

  else
  {
LABEL_11:
    v29 = v4[5];
    v30 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v29);
    v31 = (*(v30 + 32))(v29, v30);
    v32 = v49;
    (*(v53 + 56))(v49, 1, 1, v54);
    sub_22879A3E0(v32);
  }

  v39 = v51;
  v38 = v52;
  v40 = v50;
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v41 = sub_2287C99F0();
  v42 = swift_allocObject();
  v42[2] = v20;
  v42[3] = v40;
  v42[4] = v41;
  v42[5] = v4;
  v42[6] = v39;
  v42[7] = v38;
  aBlock[4] = sub_22873F8EC;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_1;
  v43 = _Block_copy(aBlock);

  v44 = v41;

  [v44 performBlock_];
  _Block_release(v43);
}

uint64_t sub_22873F1E4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v60 = a6;
  v58 = a4;
  v69 = a3;
  v72 = a2;
  v67 = type metadata accessor for ModelTrainingElement(0);
  v70 = *(v67 - 8);
  v7 = MEMORY[0x28223BE20](v67);
  v66 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v65 = &v58 - v9;
  sub_22871511C(0);
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x28223BE20](v10);
  v71 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ModelTrainingCommand(0) - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_22873FA14(v17, v15, type metadata accessor for ModelTrainingCommand);
      if ((*v15 & 1) == 0)
      {
        break;
      }

      v20 = sub_2287CBD00();

      if (v20)
      {
        goto LABEL_9;
      }

      sub_22873FAD4(v15, type metadata accessor for ModelTrainingCommand);
LABEL_4:
      v17 += v18;
      if (!--v16)
      {
        goto LABEL_16;
      }
    }

LABEL_9:
    v21 = *(v15 + 1);
    v22 = *(v15 + 2);

    sub_22873FAD4(v15, type metadata accessor for ModelTrainingCommand);
    if (v22)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_228722DF0(0, *(v19 + 2) + 1, 1, v19);
      }

      v24 = *(v19 + 2);
      v23 = *(v19 + 3);
      if (v24 >= v23 >> 1)
      {
        v19 = sub_228722DF0((v23 > 1), v24 + 1, 1, v19);
      }

      *(v19 + 2) = v24 + 1;
      v25 = &v19[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v22;
    }

    goto LABEL_4;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_16:
  v26 = sub_22872A9BC(v19);

  v27 = v72;
  v28 = *(v72 + 16);
  if (v28)
  {
    v68 = v26;
    v74 = MEMORY[0x277D84F90];
    sub_22871333C(0, v28, 0);
    v29 = sub_2287CA800();
    v30 = v74;
    v31 = v71;
    v32 = v27 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v61 = *(v70 + 9);
    v62 = v29;
    do
    {
      v71 = v28;
      v72 = v30;
      v70 = type metadata accessor for ModelTrainingElement;
      v33 = v65;
      sub_22873FA14(v32, v65, type metadata accessor for ModelTrainingElement);
      v34 = v66;
      sub_22873FA14(v33, v66, type metadata accessor for ModelTrainingElement);
      FeedItem.init(context:modelTrainingElement:)(v69, v34);
      v36 = v35;
      v37 = [v35 featureTags];
      sub_2287C9F20();
      sub_22873FA7C();
      v38 = sub_2287CB470();

      v40 = sub_228711490(v38, v39);

      sub_228710F40();
      v73 = v40;
      sub_22870E18C(v41);
      v42 = [v36 uniqueIdentifier];
      v43 = [objc_allocWithZone(MEMORY[0x277D443E0]) init];
      v44 = objc_allocWithZone(MEMORY[0x277D443F8]);
      sub_228703004(0, &qword_280DE1960, 0x277D44488);
      v45 = sub_2287CB390();

      v46 = [v44 initWithIdentifier:v42 content:v43 action:0 relevanceProviders:v45];

      LOBYTE(v42) = sub_22878462C(*(v33 + *(v67 + 56)), *(v33 + *(v67 + 56) + 8), v68);
      v47 = [v36 objectID];
      v48 = [v47 URIRepresentation];

      v49 = v31 + *(v64 + 48);
      sub_2287C96F0();

      v50 = type metadata accessor for ModelTrainingEvent(0);
      sub_2287C97B0();

      v51 = v33;
      v30 = v72;
      sub_22873FAD4(v51, v70);
      v49[*(v50 + 20)] = 0;
      v49[*(v50 + 24)] = v42 & 1;
      *v31 = v46;
      v74 = v30;
      v53 = *(v30 + 16);
      v52 = *(v30 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_22871333C((v52 > 1), v53 + 1, 1);
        v30 = v74;
      }

      *(v30 + 16) = v53 + 1;
      sub_22873FB34(v31, v30 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v53, sub_22871511C);
      v32 += v61;
      v28 = (v71 - 1);
    }

    while (v71 != 1);
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  [v69 rollback];
  v54 = v58[5];
  v55 = v58[6];
  __swift_project_boxed_opaque_existential_1(v58 + 2, v54);
  v56 = swift_allocObject();
  *(v56 + 16) = v59;
  *(v56 + 24) = v60;

  RelevanceEngineCoordinator.train(with:completion:)(v30, sub_22873FB9C, v56, v54, v55);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ModelTrainingScenarioExecutor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v0;
}

uint64_t ModelTrainingScenarioExecutor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_22873FA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22873FA7C()
{
  result = qword_280DE11D8;
  if (!qword_280DE11D8)
  {
    sub_2287C9F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE11D8);
  }

  return result;
}

uint64_t sub_22873FAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22873FB34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22873FBC4()
{
  v0 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  sub_2287CA000();
  if (v1)
  {
    v2 = objc_opt_self();
    if (qword_280DE3818 != -1)
    {
      swift_once();
    }

    v3 = qword_280DE63D8;
    v4 = sub_2287CB210();

    v5 = [objc_opt_self() featureValueWithString_];

    v6 = [v2 customRelevanceProviderForFeature:v3 withValue:v5];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x22AABEA50]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2287CB3E0();
      }

      sub_2287CB420();

      return v9;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v0;
}

void sub_22873FD34()
{
  v0 = sub_2287CB210();
  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE63D8 = v1;
}

void sub_22873FDA8()
{
  if (qword_280DE3818 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE63D8;
  sub_2287C9B40();
  v1 = v0;
  v2 = *(sub_2287C9B30() + 16);

  sub_228795C5C(v2);
  v4 = v3;

  qword_280DE63D0 = v4;
}

void sub_22873FE38()
{
  sub_22873FEB8();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE6250 = v1;
}

unint64_t sub_22873FEB8()
{
  result = qword_280DE0F90;
  if (!qword_280DE0F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0F90);
  }

  return result;
}

uint64_t HealthExperienceStoreFeedItemContext.__allocating_init(storageContext:pluginInfo:healthStore:environment:pinnedContentManagerProvider:notificationManager:queueProvider:dateRange:displayNamePublisher:primaryHealthStore:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a7;
  v48 = a3;
  v51 = a6;
  v53 = a10;
  v49 = a9;
  v45 = sub_2287CA090();
  MEMORY[0x28223BE20](v45);
  v41[1] = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287459AC(0, &qword_280DE00D0, MEMORY[0x277D11FC0], MEMORY[0x277CBCE78]);
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v41 - v17;
  sub_228740F3C(0);
  v46 = v19;
  v44 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v41[0] = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms) = &unk_283BC0130;
  *(v21 + 56) = a4 & 1;
  v22 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  v23 = sub_2287C9590();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v52 = a8;
  v50 = v23;
  v25(v21 + v22, a8);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v26 = a1;
  sub_2287C9A70();
  sub_228740FBC();
  sub_2287CB550();

  v27 = v47;
  sub_2287CA320();
  *(v21 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext) = v26;
  sub_2287010E4(a2, v21 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
  v28 = v48;
  *(v21 + 16) = v48;
  *(v21 + 24) = a5;
  sub_2287010E4(v27, v21 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider);
  v29 = objc_allocWithZone(MEMORY[0x277CCDAC0]);
  v30 = v26;
  v31 = v49;
  v32 = v30;

  v48 = v28;
  *(v21 + 48) = [v29 initWithHealthStore_];
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    sub_2287CA080();
    sub_2287CADB0();
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    v45 = v32;
    v34 = v41[0];
    v35 = v43;
    sub_2287CAD80();
    (*(v42 + 8))(v18, v35);
    sub_228741194(&qword_27D850D10, sub_228740F3C, MEMORY[0x277CBCF40]);
    v36 = v46;
    v33 = sub_2287CAF40();
    v37 = v34;
    v32 = v45;
    (*(v44 + 8))(v37, v36);
  }

  *(v21 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_displayNamePublisher) = v33;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);

  sub_2287C9A70();
  sub_2287C9A30();
  swift_allocObject();
  v38 = sub_2287C9A20();

  (*(v24 + 8))(v52, v50);
  __swift_destroy_boxed_opaque_existential_0(v27);
  v39 = MEMORY[0x277D11D38];
  *(v21 + 32) = v38;
  *(v21 + 40) = v39;
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v21;
}

void sub_228740458(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_2287404B0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2287404F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t sub_22874058C(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = *a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_228740634(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
  v5 = v2;
}

id sub_22874068C()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_228740704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  swift_beginAccess();
  v5 = sub_2287C9590();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_228740790(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2287C9590();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_2287408A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  swift_beginAccess();
  v4 = sub_2287C9590();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

char *HealthExperienceStoreFeedItemContext.init(storageContext:pluginInfo:healthStore:environment:pinnedContentManagerProvider:notificationManager:queueProvider:dateRange:displayNamePublisher:primaryHealthStore:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v60 = a6;
  v55 = a1;
  v62 = a7;
  v63 = a10;
  v56 = a9;
  v57 = a3;
  v53 = sub_2287CA090();
  MEMORY[0x28223BE20](v53);
  v49 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287459AC(0, &qword_280DE00D0, MEMORY[0x277D11FC0], MEMORY[0x277CBCE78]);
  v50 = *(v17 - 8);
  v51 = v17;
  MEMORY[0x28223BE20](v17);
  v47 = &v46 - v18;
  sub_228740F3C(0);
  v54 = v19;
  v52 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v48 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2287CA340();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms] = &unk_283BC0160;
  v10[56] = a4 & 1;
  v25 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  v26 = sub_2287C9590();
  v58 = *(v26 - 8);
  v59 = v26;
  v27 = *(v58 + 16);
  v61 = a8;
  v27(&v11[v25], a8);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v28 = v55;
  sub_2287C9A70();
  sub_228740FBC();
  sub_2287CB550();

  sub_2287CA320();
  v29 = v21;
  v30 = a5;
  v31 = v56;
  (*(v22 + 32))(&v11[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_feedItemStorage], v24, v29);
  *&v11[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext] = v28;
  sub_2287010E4(a2, &v11[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo]);
  v32 = v57;
  *(v11 + 2) = v57;
  *(v11 + 3) = v30;
  sub_2287010E4(v62, &v11[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider]);
  v33 = objc_allocWithZone(MEMORY[0x277CCDAC0]);
  v34 = v28;

  v35 = v32;
  *(v11 + 6) = [v33 initWithHealthStore_];
  if (v31)
  {
    v36 = v31;
  }

  else
  {
    sub_2287CA080();
    v37 = v34;
    v38 = v47;
    sub_2287CADB0();
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    v39 = v48;
    v40 = v51;
    sub_2287CAD80();
    v41 = v38;
    v34 = v37;
    (*(v50 + 8))(v41, v40);
    sub_228741194(&qword_27D850D10, sub_228740F3C, MEMORY[0x277CBCF40]);
    v42 = v54;
    v36 = sub_2287CAF40();
    (*(v52 + 8))(v39, v42);
  }

  *&v11[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_displayNamePublisher] = v36;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);

  sub_2287C9A70();
  sub_2287C9A30();
  swift_allocObject();
  v43 = sub_2287C9A20();

  (*(v58 + 8))(v61, v59);
  __swift_destroy_boxed_opaque_existential_0(v62);
  v44 = MEMORY[0x277D11D38];
  *(v11 + 4) = v43;
  *(v11 + 5) = v44;
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v11;
}

void sub_228740F3C(uint64_t a1)
{
  if (!qword_280DDFE48)
  {
    sub_2287CA090();
    sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
    v1 = sub_2287CBE00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDFE48);
    }
  }
}

unint64_t sub_228740FBC()
{
  result = qword_280DE3898;
  if (!qword_280DE3898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE3898);
  }

  return result;
}

uint64_t sub_228741008(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider + 24);
  v4 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_22874106C@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for DispatchQueueGeneratorScheduler;
  a1[4] = sub_228741120();
  v3 = swift_allocObject();
  *a1 = v3;
  v3[5] = type metadata accessor for HealthExperienceStoreFeedItemContext(0);
  v3[6] = sub_228741194(qword_280DE3170, type metadata accessor for HealthExperienceStoreFeedItemContext, &protocol conformance descriptor for HealthExperienceStoreFeedItemContext);
  v3[2] = v1;
}

unint64_t sub_228741120()
{
  result = qword_280DE0F60;
  if (!qword_280DE0F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0F60);
  }

  return result;
}

uint64_t sub_228741194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2287411DC(uint64_t (*a1)(char *, uint64_t))
{
  v2 = v1;
  v4 = *v2;
  v116 = sub_2287C95E0();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_2287CA1F0();
  v120 = *(v122 - 8);
  v6 = MEMORY[0x28223BE20](v122);
  v113 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v121 = &v113 - v8;
  v125 = type metadata accessor for ExecuteChangesResult(0);
  MEMORY[0x28223BE20](v125);
  v10 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CAA50();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v124 = (&v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v119 = &v113 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v117 = &v113 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v113 - v19;
  sub_2287CA9D0();
  v128 = a1;
  swift_bridgeObjectRetain_n();

  v21 = sub_2287CAA40();
  v22 = sub_2287CB610();

  v23 = os_log_type_enabled(v21, v22);
  v126 = v11;
  v129 = v2;
  v127 = v4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v123 = v10;
    v25 = v24;
    v26 = swift_slowAlloc();
    v135 = v26;
    *v25 = 136446722;
    *&aBlock = v4;
    swift_getMetatypeMetadata();
    v27 = sub_2287CB250();
    v29 = sub_2287031D8(v27, v28, &v135);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    v30 = &v2[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo];
    v31 = v12;
    __swift_project_boxed_opaque_existential_1(v30, *(v30 + 3));
    v32 = sub_2287C9A70();
    v34 = sub_2287031D8(v32, v33, &v135);

    *(v25 + 14) = v34;
    *(v25 + 22) = 2050;
    v35 = v128;
    v36 = *(v128 + 2);

    *(v25 + 24) = v36;
    v12 = v31;

    _os_log_impl(&dword_2286FF000, v21, v22, "[%{public}s][%{public}s] Plugin is requesting to commit %{public}ld change(s).", v25, 0x20u);
    swift_arrayDestroy();
    v37 = v26;
    v11 = v126;
    MEMORY[0x22AABFD90](v37, -1, -1);
    v38 = v25;
    v10 = v123;
    MEMORY[0x22AABFD90](v38, -1, -1);

    v39 = v31;
  }

  else
  {

    v35 = v128;
    swift_bridgeObjectRelease_n();
    v39 = v12;
  }

  v40 = *(v39 + 8);
  v40(v20, v11);
  if (*(v35 + 2))
  {
    v118 = v12;
    v135 = 0;
    v41 = MEMORY[0x277D84F90];
    sub_2287CA160();
    *&v10[SHIDWORD(v125[2].isa)] = v41;
    v42 = v129;
    v43 = *&v129[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext];
    v44 = swift_allocObject();
    v44[2] = v10;
    v44[3] = v42;
    v44[4] = v35;
    v44[5] = &v135;
    v44[6] = v127;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_228742BD8;
    *(v45 + 24) = v44;
    v133 = sub_22873FB9C;
    v134 = v45;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v132 = sub_228742C10;
    *(&v132 + 1) = &block_descriptor_2;
    v46 = _Block_copy(&aBlock);

    [v43 performBlockAndWait_];
    _Block_release(v46);
    LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

    if (v46)
    {
      __break(1u);
    }

    else
    {
      v48 = v135;
      if (v135)
      {
        swift_willThrow();
        v49 = v48;
        sub_228745A10(v10, type metadata accessor for ExecuteChangesResult);
      }

      else
      {
        v128 = v40;

        sub_22874585C(v64);

        v65 = v117;
        sub_2287CA9D0();

        v66 = sub_2287CAA40();
        v67 = sub_2287CB5D0();

        v68 = os_log_type_enabled(v66, v67);
        v123 = v10;
        if (v68)
        {
          v69 = v65;
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v130 = v71;
          *v70 = 136446466;
          *&aBlock = v127;
          swift_getMetatypeMetadata();
          v72 = sub_2287CB250();
          v74 = sub_2287031D8(v72, v73, &v130);

          *(v70 + 4) = v74;
          *(v70 + 12) = 2082;
          __swift_project_boxed_opaque_existential_1(&v42[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo], *&v42[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24]);
          v75 = sub_2287C9A70();
          v77 = sub_2287031D8(v75, v76, &v130);

          *(v70 + 14) = v77;
          _os_log_impl(&dword_2286FF000, v66, v67, "[%{public}s][%{public}s] Executed afterCommit block for updated feed items.", v70, 0x16u);
          swift_arrayDestroy();
          v78 = v71;
          v10 = v123;
          MEMORY[0x22AABFD90](v78, -1, -1);
          MEMORY[0x22AABFD90](v70, -1, -1);

          v79 = v69;
        }

        else
        {

          v79 = v65;
        }

        v128(v79, v126);
        v80 = v122;
        v81 = v121;
        v82 = v119;
        v83 = v120;
        v84 = *(v120 + 16);
        v84(v121, v10, v122);
        if (sub_2287CA1D0())
        {
          (*(v83 + 8))(v81, v80);
          v85 = v10;
        }

        else
        {
          sub_2287CA9E0();
          v86 = v113;
          v124 = v84;
          v84(v113, v81, v80);
          v87 = v129;

          v88 = v82;
          v89 = sub_2287CAA40();
          v90 = sub_2287CB5E0();

          v125 = v89;
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v130 = v92;
            *v91 = 136446722;
            *&aBlock = v127;
            swift_getMetatypeMetadata();
            v93 = sub_2287CB250();
            v95 = sub_2287031D8(v93, v94, &v130);

            *(v91 + 4) = v95;
            *(v91 + 12) = 2082;
            __swift_project_boxed_opaque_existential_1(&v87[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo], *&v87[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24]);
            v96 = sub_2287C9A70();
            v98 = sub_2287031D8(v96, v97, &v130);

            *(v91 + 14) = v98;
            *(v91 + 22) = 2080;
            sub_228741194(&qword_280DE11B0, MEMORY[0x277D12000], MEMORY[0x277D12008]);
            v99 = sub_2287CBCC0();
            v101 = v100;
            v129 = *(v120 + 8);
            (v129)(v86, v122);
            v102 = sub_2287031D8(v99, v101, &v130);

            *(v91 + 24) = v102;
            v103 = v125;
            _os_log_impl(&dword_2286FF000, v125, v90, "[%{public}s][%{public}s] Posting feedItemSubmissionOccurred notification for change domain: %s, privacy: .public)", v91, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AABFD90](v92, -1, -1);
            v104 = v91;
            v80 = v122;
            MEMORY[0x22AABFD90](v104, -1, -1);

            v105 = v119;
          }

          else
          {

            v129 = *(v120 + 8);
            (v129)(v86, v80);
            v105 = v88;
          }

          v128(v105, v126);
          sub_2287CB6F0();
          aBlock = 0u;
          v132 = 0u;
          v106 = v114;
          sub_2287C95B0();
          sub_2287459AC(0, &qword_280DE1800, sub_22873E274, MEMORY[0x277D84560]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2287CCFE0;
          *&aBlock = sub_2287CA1B0();
          *(&aBlock + 1) = v108;
          sub_2287CB9B0();
          *(inited + 96) = v80;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
          v110 = v121;
          v124(boxed_opaque_existential_0, v121, v80);
          sub_22873AFC8(inited);
          swift_setDeallocating();
          sub_228745A10(inited + 32, sub_22873E274);
          sub_2287C95D0();
          v111 = [objc_opt_self() defaultCenter];
          v112 = sub_2287C95A0();
          [v111 postNotification_];

          (*(v115 + 8))(v106, v116);
          (v129)(v110, v80);
          v85 = v123;
        }

        sub_228745A10(v85, type metadata accessor for ExecuteChangesResult);
      }
    }
  }

  else
  {
    v50 = v40;
    v51 = v124;
    sub_2287CA9D0();
    v52 = v129;

    v53 = sub_2287CAA40();
    v54 = sub_2287CB5F0();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v135 = v56;
      *v55 = 136446466;
      *&aBlock = v127;
      swift_getMetatypeMetadata();
      v57 = sub_2287CB250();
      v118 = v12;
      v59 = sub_2287031D8(v57, v58, &v135);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      __swift_project_boxed_opaque_existential_1(&v52[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo], *&v52[OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24]);
      v60 = sub_2287C9A70();
      v62 = sub_2287031D8(v60, v61, &v135);

      *(v55 + 14) = v62;
      _os_log_impl(&dword_2286FF000, v53, v54, "[%{public}s][%{public}s] Empty commit was submitted; no work will be done", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v56, -1, -1);
      MEMORY[0x22AABFD90](v55, -1, -1);

      v63 = v124;
    }

    else
    {

      v63 = v51;
    }

    return v50(v63, v11);
  }

  return result;
}

void sub_22874211C(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void *a5)
{
  v81 = a5;
  v82 = a4;
  v86[1] = *MEMORY[0x277D85DE8];
  v8 = sub_2287CAA50();
  v9 = *(v8 - 8);
  v83 = v8;
  v84 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v77[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v77[-v17];
  v19 = type metadata accessor for ExecuteChangesResult(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v77[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228742C50(a3, v21);
  sub_228746128(v21, a1);
  v22 = *(a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext);
  if ([v22 hasChanges])
  {
    sub_2287CA9D0();
    swift_bridgeObjectRetain_n();

    v23 = sub_2287CAA40();
    v24 = sub_2287CB610();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v79 = v23;
      v26 = v25;
      v80 = swift_slowAlloc();
      v86[0] = v80;
      *v26 = 136446722;
      v85 = v81;
      swift_getMetatypeMetadata();
      v27 = sub_2287CB250();
      v78 = v24;
      v29 = sub_2287031D8(v27, v28, v86);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo), *(a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24));
      v30 = sub_2287C9A70();
      v32 = sub_2287031D8(v30, v31, v86);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2050;
      v33 = *(a3 + 16);

      *(v26 + 24) = v33;

      v34 = v79;
      _os_log_impl(&dword_2286FF000, v79, v78, "[%{public}s][%{public}s] Finished committing %{public}ld change(s). Attempting to save.", v26, 0x20u);
      v35 = v80;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v35, -1, -1);
      MEMORY[0x22AABFD90](v26, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v36 = v83;
    v37 = *(v84 + 8);
    v37(v18, v83);
    v85 = 0;
    if ([v22 save_])
    {
      v38 = v85;
      sub_2287CA9D0();
      swift_bridgeObjectRetain_n();

      v39 = sub_2287CAA40();
      v40 = sub_2287CB5E0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v86[0] = v42;
        *v41 = 136446722;
        v85 = v81;
        swift_getMetatypeMetadata();
        v43 = sub_2287CB250();
        v45 = sub_2287031D8(v43, v44, v86);
        v81 = v37;
        v46 = v45;

        *(v41 + 4) = v46;
        *(v41 + 12) = 2082;
        __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo), *(a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24));
        v47 = sub_2287C9A70();
        v49 = sub_2287031D8(v47, v48, v86);

        *(v41 + 14) = v49;
        *(v41 + 22) = 2050;
        v50 = *(a3 + 16);

        *(v41 + 24) = v50;

        _os_log_impl(&dword_2286FF000, v39, v40, "[%{public}s][%{public}s] Successfully saved %{public}ld changes.", v41, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v42, -1, -1);
        MEMORY[0x22AABFD90](v41, -1, -1);

        (v81)(v16, v36);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v37(v16, v36);
      }
    }

    else
    {
      v51 = v85;
      v52 = sub_2287C9640();

      swift_willThrow();
      sub_2287CA9D0();
      swift_bridgeObjectRetain_n();

      v53 = v52;
      v54 = sub_2287CAA40();
      v55 = sub_2287CB5F0();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v86[0] = v80;
        *v56 = 136447234;
        v85 = v81;
        swift_getMetatypeMetadata();
        v57 = sub_2287CB250();
        v59 = sub_2287031D8(v57, v58, v86);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2082;
        v60 = (a2 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
        v81 = v37;
        __swift_project_boxed_opaque_existential_1(v60, v60[3]);
        v61 = sub_2287C9A70();
        v63 = sub_2287031D8(v61, v62, v86);

        *(v56 + 14) = v63;
        *(v56 + 22) = 2050;
        v64 = *(a3 + 16);

        *(v56 + 24) = v64;

        *(v56 + 32) = 2080;
        __swift_project_boxed_opaque_existential_1(v60, v60[3]);
        v65 = sub_2287C9A70();
        v67 = sub_2287031D8(v65, v66, v86);

        *(v56 + 34) = v67;
        *(v56 + 42) = 2082;
        v85 = v52;
        v68 = v52;
        sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
        v69 = sub_2287CB270();
        v71 = sub_2287031D8(v69, v70, v86);

        *(v56 + 44) = v71;
        _os_log_impl(&dword_2286FF000, v54, v55, "[%{public}s][%{public}s] Error saving %{public}ld changes from plugin %s: %{public}s", v56, 0x34u);
        v72 = v80;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v72, -1, -1);
        MEMORY[0x22AABFD90](v56, -1, -1);

        (v81)(v12, v83);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v37(v12, v36);
      }

      v73 = sub_2287CA400();
      sub_228741194(&qword_27D850D18, MEMORY[0x277D12138], MEMORY[0x277D12140]);
      v74 = swift_allocError();
      (*(*(v73 - 8) + 104))(v75, *MEMORY[0x277D12130], v73);

      v76 = *v82;
      *v82 = v74;
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_228742C50(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v230 = *v3;
  v259 = sub_2287C9C00();
  v252 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v225 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_2287CA1F0();
  v7 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v227 = &v206 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExecuteChangesResult(0);
  MEMORY[0x28223BE20](v9);
  v222 = &v206 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_2287CAA50();
  v11 = *(v233 - 8);
  v12 = MEMORY[0x28223BE20](v233);
  v220 = &v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v226 = &v206 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v234 = &v206 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v219 = &v206 - v19;
  MEMORY[0x28223BE20](v18);
  v255 = &v206 - v20;
  v245 = sub_2287C9B20();
  v21 = *(v245 - 8);
  v22 = MEMORY[0x28223BE20](v245);
  v244 = &v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v243 = &v206 - v24;
  v266 = sub_2287C9D50();
  v25 = *(v266 - 8);
  v26 = MEMORY[0x28223BE20](v266);
  v253 = &v206 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v258 = &v206 - v29;
  MEMORY[0x28223BE20](v28);
  v264 = &v206 - v30;
  v31 = MEMORY[0x277D84F90];
  sub_2287CA160();
  v221 = v9;
  v254 = *(v9 + 20);
  *(a2 + v254) = v31;
  v235 = *(a1 + 16);
  if (!v235)
  {
    return;
  }

  v32 = 0;
  v256 = v3;
  v33 = (v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
  v229 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext;
  v251 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_feedItemStorage;
  v236 = a1 + 32;
  v231 = (v11 + 8);
  v209 = "data with uniqueIdentifiers: ";
  v224 = (v7 + 8);
  v218 = "loggingSensitiveTerms";
  v217 = " with uniqueIdentifiers: ";
  v216 = 0x80000002287CFCA0;
  v215 = "%K == %@ && %K IN %@";
  v241 = v252 + 16;
  v242 = (v252 + 8);
  v214 = "%@ == pluginPackage";
  v213 = 0x80000002287D0D30;
  v265 = v25 + 16;
  v263 = (v25 + 8);
  v212 = "%@ == pluginPackage && ";
  v239 = (v21 + 8);
  v250 = v25;
  v237 = (v25 + 32);
  *(&v34 + 1) = 4;
  v223 = xmmword_2287CCFF0;
  *&v34 = 136446722;
  v208 = v34;
  *(&v34 + 1) = 8;
  v211 = xmmword_2287CE0A0;
  *&v34 = 136446978;
  v206 = v34;
  *&v34 = 136446466;
  v210 = v34;
  v207 = xmmword_2287CCFE0;
  v35 = v260;
  v232 = a2;
  v36 = v255;
  v37 = v264;
  v262 = (v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
  while (1)
  {
    v47 = v236 + 40 * v32;
    v49 = *v47;
    v48 = *(v47 + 8);
    v50 = *(v47 + 16);
    v51 = *(v47 + 24);
    v52 = *(v47 + 32);
    v53 = v52 >> 5;
    v261 = v49;
    v246 = v32;
    if (v52 >> 5 > 2)
    {
      break;
    }

    v238 = v52;
    v249 = v51;
    v248 = v50;
    v247 = v48;
    if (!v53)
    {
      v91 = *(v49 + 16);
      v92 = v250;
      if (v91)
      {
        v260 = v35;
        v267 = MEMORY[0x277D84F90];

        sub_2287042D4(0, v91, 0);
        v93 = v267;
        v94 = v49 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
        v257 = *(v92 + 72);
        v95 = *(v92 + 16);
        do
        {
          v96 = v258;
          v97 = v266;
          v95(v258, v94, v266);
          v98 = sub_2287C9D30();
          v100 = v99;
          (*v263)(v96, v97);
          v267 = v93;
          v102 = *(v93 + 16);
          v101 = *(v93 + 24);
          if (v102 >= v101 >> 1)
          {
            sub_2287042D4((v101 > 1), v102 + 1, 1);
            v93 = v267;
          }

          *(v93 + 16) = v102 + 1;
          v103 = v93 + 16 * v102;
          *(v103 + 32) = v98;
          *(v103 + 40) = v100;
          v94 += v257;
          --v91;
        }

        while (v91);
        v35 = v260;
        v49 = v261;
        v140 = v232;
        v36 = v255;
        v37 = v264;
      }

      else
      {

        v93 = MEMORY[0x277D84F90];
        v140 = v232;
      }

      sub_228744E6C(v93, 0xD00000000000002ALL, v212 | 0x8000000000000000);

      v240 = *(v49 + 16);
      if (v240)
      {
        v165 = 0;
        v166 = v250;
        while (v165 < *(v49 + 16))
        {
          v167 = ((*(v166 + 80) + 32) & ~*(v166 + 80));
          v168 = *(v166 + 72);
          v169 = *(v166 + 16);
          v169(v37, &v167[v49 + v168 * v165], v266);
          sub_2287CA330();
          if (v35)
          {
            sub_228745FAC(v49, v247, v248, v249, v238);
            (*v263)(v37, v266);
            goto LABEL_66;
          }

          v257 = v167;
          v260 = 0;
          v170 = v244;
          sub_2287C9D10();
          v171 = v140;
          v172 = sub_2287CA170();
          v173 = v243;
          sub_2287244B0(v243, v170);
          (*v239)(v173, v245);
          v172(&v267, 0);
          v174 = sub_2287C9D20();
          v175 = sub_2287CA190();
          sub_228724790(&v269, v174);

          v175(&v267, 0);
          v37 = v264;
          v176 = sub_2287C9D00();
          if (v176)
          {
            sub_228714BC0(v176, v177);
            v169(v253, v37, v266);
            v178 = *(v171 + v254);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v178 = sub_228723168(0, *(v178 + 2) + 1, 1, v178);
            }

            v35 = v260;
            v180 = *(v178 + 2);
            v179 = *(v178 + 3);
            if (v180 >= v179 >> 1)
            {
              v178 = sub_228723168((v179 > 1), v180 + 1, 1, v178);
            }

            v181 = v266;
            (*v263)(v37, v266);
            *(v178 + 2) = v180 + 1;
            (*v237)(&v178[v257 + v180 * v168], v253, v181);
            v140 = v171;
            *(v171 + v254) = v178;
          }

          else
          {
            (*v263)(v37, v266);
            v140 = v171;
            v35 = v260;
          }

          ++v165;
          v36 = v255;
          v166 = v250;
          v49 = v261;
          if (v240 == v165)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
        goto LABEL_70;
      }

LABEL_53:
      v120 = v49;
      v121 = v247;
      v122 = v248;
      v123 = v249;
      v124 = v238;
      goto LABEL_54;
    }

    if (v53 == 1)
    {
      sub_228745E98(v49, v247, v248, v249, v52);

      sub_228744E6C(v38, 0xD00000000000001ALL, v214 | 0x8000000000000000);
      v260 = sub_228740FBC();
      v267 = 0;
      v268 = 0xE000000000000000;
      sub_2287CBA20();

      v267 = 0xD000000000000017;
      v268 = v213;
      sub_2287CA800();
      v39 = sub_2287CA7C0();
      MEMORY[0x22AABE980](v39);

      MEMORY[0x22AABE980](0x4025204E4920, 0xE600000000000000);
      sub_22870558C(0);
      v40 = swift_allocObject();
      *(v40 + 16) = v223;
      __swift_project_boxed_opaque_existential_1(v262, v262[3]);
      v41 = sub_2287C9A70();
      v43 = v42;
      *(v40 + 56) = MEMORY[0x277D837D0];
      *(v40 + 64) = sub_2287043F8();
      *(v40 + 32) = v41;
      *(v40 + 40) = v43;
      v37 = v264;
      sub_22871B354();
      *(v40 + 96) = v44;
      *(v40 + 104) = sub_228741194(&qword_280DE38A0, sub_22871B354, MEMORY[0x277CC9C50]);
      *(v40 + 72) = v49;
      v36 = v255;
      v45 = sub_2287CB550();

      v46 = v227;
      sub_2287CA310();
      sub_2287CA1C0();

      sub_228745FAC(v49, v247, v248, v249, v238);
      (*v224)(v46, v228);
    }

    else
    {

      sub_2287CA9D0();
      v54 = v247;
      v55 = v248;
      v56 = v249;
      sub_228745E98(v49, v247, v248, v249, v52);

      v57 = v52;
      v58 = sub_2287CAA40();
      v59 = sub_2287CB610();

      sub_228745FAC(v49, v54, v55, v56, v57);
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v269 = v61;
        *v60 = v208;
        v267 = v230;
        swift_getMetatypeMetadata();
        v62 = sub_2287CB250();
        v64 = sub_2287031D8(v62, v63, &v269);

        *(v60 + 4) = v64;
        *(v60 + 12) = 2082;
        __swift_project_boxed_opaque_existential_1(v262, v262[3]);
        v37 = v264;
        v65 = sub_2287C9A70();
        v67 = sub_2287031D8(v65, v66, &v269);

        *(v60 + 14) = v67;
        *(v60 + 22) = 2080;
        v68 = v261;
        v69 = MEMORY[0x22AABEA80](v261, v259);
        v71 = sub_2287031D8(v69, v70, &v269);

        *(v60 + 24) = v71;
        _os_log_impl(&dword_2286FF000, v58, v59, "[%{public}s][%{public}s] updateOrCreate plugin data %s", v60, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v61, -1, -1);
        MEMORY[0x22AABFD90](v60, -1, -1);

        (*v231)(v234, v233);
        v72 = v225;
      }

      else
      {

        (*v231)(v234, v233);
        v72 = v225;
        v68 = v261;
      }

      v260 = *(v68 + 2);
      if (v260)
      {
        v257 = sub_2287C9A60();
        v152 = 0;
        v153 = v252;
        v240 = v68 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
        while (v152 < *(v68 + 2))
        {
          (*(v153 + 16))(v72, &v240[*(v153 + 72) * v152], v259);
          sub_2287C9BE0();
          __swift_project_boxed_opaque_existential_1(v262, v262[3]);
          sub_2287C9A70();
          v154 = sub_2287C9A50();

          v155 = sub_2287C9BF0();
          if (v156 >> 60 == 15)
          {
            v157 = 0;
          }

          else
          {
            v158 = v155;
            v159 = v156;
            v157 = sub_2287C9710();
            sub_2287460C0(v158, v159);
          }

          [v154 setData_];

          v160 = sub_2287C9BD0();
          sub_2287C9C60();
          if (v35)
          {

            sub_228745FAC(v261, v247, v248, v249, v238);
            (*v242)(v72, v259);
            goto LABEL_65;
          }

          ++v152;

          sub_2287CA6D0();
          sub_228741194(&qword_280DE17A0, MEMORY[0x277D121E8], MEMORY[0x277D85378]);
          v161 = sub_2287CB460();

          [v154 setProfiles_];

          sub_2287CA6B0();
          __swift_project_boxed_opaque_existential_1(v262, v262[3]);
          sub_2287C9A70();
          v162 = sub_2287CA6A0();

          [v154 setPlugin_];

          (*v242)(v72, v259);
          v68 = v261;
          v153 = v252;
          v37 = v264;
          if (v260 == v152)
          {
            goto LABEL_37;
          }
        }

LABEL_70:
        __break(1u);
        return;
      }

LABEL_37:
      sub_228745FAC(v68, v247, v248, v249, v238);
      v36 = v255;
    }

LABEL_4:
    v32 = v246 + 1;
    v33 = v262;
    if (v246 + 1 == v235)
    {
      return;
    }
  }

  if (v53 == 3)
  {
    v104 = v52;
    v238 = v52;
    v105 = v33;
    v247 = v48;
    v248 = v50;
    v249 = v51;
    sub_228745E98(v49, v48, v50, v51, v104);

    sub_228744E6C(v106, 0xD000000000000039, v218 | 0x8000000000000000);
    v257 = sub_228740FBC();
    sub_22870558C(0);
    v107 = swift_allocObject();
    *(v107 + 16) = v211;
    v260 = v35;
    v108 = MEMORY[0x277D837D0];
    *(v107 + 56) = MEMORY[0x277D837D0];
    v109 = sub_2287043F8();
    *(v107 + 64) = v109;
    strcpy((v107 + 32), "plugin.package");
    *(v107 + 47) = -18;
    v110 = v49;
    __swift_project_boxed_opaque_existential_1(v105, v105[3]);
    v37 = v264;
    v111 = sub_2287C9A70();
    *(v107 + 96) = v108;
    *(v107 + 104) = v109;
    *(v107 + 72) = v111;
    *(v107 + 80) = v112;
    *(v107 + 136) = v108;
    *(v107 + 144) = v109;
    v35 = v260;
    v113 = v216;
    *(v107 + 112) = 0xD000000000000010;
    *(v107 + 120) = v113;
    sub_22871B354();
    *(v107 + 176) = v114;
    *(v107 + 184) = sub_228741194(&qword_280DE38A0, sub_22871B354, MEMORY[0x277CC9C50]);
    *(v107 + 152) = v49;

    v115 = sub_2287CB550();
    sub_2287C9A60();
    sub_2287CB790();
    sub_228744E6C(v49, 0xD00000000000003DLL, v215 | 0x8000000000000000);
    v116 = v247;
    v117 = v248;
    v118 = v249;
    v119 = v238;
    sub_228745FAC(v110, v247, v248, v249, v238);

    v120 = v110;
    v121 = v116;
    v122 = v117;
    v123 = v118;
    v124 = v119;
LABEL_54:
    sub_228745FAC(v120, v121, v122, v123, v124);
    goto LABEL_4;
  }

  if (v53 != 4)
  {
    v260 = v35;
    v125 = v50 | v48 | v49 | v51;
    v126 = v226;
    if (v125 || v52 != 160)
    {
      sub_2287CA9D0();

      v141 = sub_2287CAA40();
      v142 = sub_2287CB610();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v269 = v144;
        *v143 = v210;
        v267 = v230;
        swift_getMetatypeMetadata();
        v145 = sub_2287CB250();
        v147 = sub_2287031D8(v145, v146, &v269);

        *(v143 + 4) = v147;
        *(v143 + 12) = 2082;
        v148 = v262;
        __swift_project_boxed_opaque_existential_1(v262, v262[3]);
        v149 = sub_2287C9A70();
        v151 = sub_2287031D8(v149, v150, &v269);

        *(v143 + 14) = v151;
        _os_log_impl(&dword_2286FF000, v141, v142, "[%{public}s][%{public}s] Attempting to delete all plugin data.", v143, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v144, -1, -1);
        MEMORY[0x22AABFD90](v143, -1, -1);

        v261 = *v231;
        v261(v126, v233);
      }

      else
      {

        v261 = *v231;
        v261(v126, v233);
        v148 = v262;
      }

      sub_228740FBC();
      sub_22870558C(0);
      v182 = swift_allocObject();
      *(v182 + 16) = v223;
      v183 = MEMORY[0x277D837D0];
      *(v182 + 56) = MEMORY[0x277D837D0];
      v184 = sub_2287043F8();
      *(v182 + 64) = v184;
      strcpy((v182 + 32), "plugin.package");
      *(v182 + 47) = -18;
      __swift_project_boxed_opaque_existential_1(v148, v148[3]);
      v185 = sub_2287C9A70();
      *(v182 + 96) = v183;
      *(v182 + 104) = v184;
      *(v182 + 72) = v185;
      *(v182 + 80) = v186;
      v187 = sub_2287CB550();
      sub_2287C9A60();
      sub_2287CB790();
      v188 = v220;
      sub_2287CA9D0();

      v189 = sub_2287CAA40();
      v190 = sub_2287CB610();

      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        v269 = v192;
        *v191 = v210;
        v267 = v230;
        swift_getMetatypeMetadata();
        v193 = sub_2287CB250();
        v195 = sub_2287031D8(v193, v194, &v269);
        v257 = v187;
        v196 = v195;

        *(v191 + 4) = v196;
        *(v191 + 12) = 2082;
        __swift_project_boxed_opaque_existential_1(v148, v148[3]);
        v197 = sub_2287C9A70();
        v199 = sub_2287031D8(v197, v198, &v269);

        *(v191 + 14) = v199;
        _os_log_impl(&dword_2286FF000, v189, v190, "[%{public}s][%{public}s] Successfully deleted all plugin data.", v191, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v192, -1, -1);
        MEMORY[0x22AABFD90](v191, -1, -1);
      }

      else
      {
      }

      v261(v188, v233);
      v35 = v260;
      v36 = v255;
      v37 = v264;
    }

    else
    {
      v127 = v219;
      sub_2287CA9D0();

      v128 = sub_2287CAA40();
      v129 = sub_2287CB610();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v269 = v131;
        *v130 = v210;
        v267 = v230;
        swift_getMetatypeMetadata();
        v132 = sub_2287CB250();
        v134 = sub_2287031D8(v132, v133, &v269);

        *(v130 + 4) = v134;
        *(v130 + 12) = 2082;
        v135 = v262;
        __swift_project_boxed_opaque_existential_1(v262, v262[3]);
        v136 = sub_2287C9A70();
        v138 = sub_2287031D8(v136, v137, &v269);

        *(v130 + 14) = v138;
        _os_log_impl(&dword_2286FF000, v128, v129, "[%{public}s][%{public}s] deleteAllFeedItems from plugin", v130, 0x16u);
        swift_arrayDestroy();
        v139 = v131;
        v36 = v255;
        MEMORY[0x22AABFD90](v139, -1, -1);
        MEMORY[0x22AABFD90](v130, -1, -1);

        (*v231)(v127, v233);
      }

      else
      {

        (*v231)(v127, v233);
        v135 = v262;
      }

      sub_228740FBC();
      sub_22870558C(0);
      v200 = swift_allocObject();
      *(v200 + 16) = v207;
      __swift_project_boxed_opaque_existential_1(v135, v135[3]);
      v201 = sub_2287C9A70();
      v203 = v202;
      *(v200 + 56) = MEMORY[0x277D837D0];
      *(v200 + 64) = sub_2287043F8();
      *(v200 + 32) = v201;
      *(v200 + 40) = v203;
      v204 = sub_2287CB550();
      v205 = v227;
      sub_2287CA310();
      sub_2287CA1C0();

      (*v224)(v205, v228);
      v35 = v260;
      v37 = v264;
    }

    goto LABEL_4;
  }

  v73 = v50;

  sub_228745F34(v48, v73, v51, v52 & 0x1F);
  v238 = v52;
  v247 = v48;
  v248 = v73;
  v249 = v51;
  sub_228798E90(v48, v73, v51, v52 & 0x1F);
  v74 = sub_2287CB3C0();

  if (!v35)
  {
    sub_2287CA9D0();
    swift_bridgeObjectRetain_n();

    v75 = v36;
    v76 = sub_2287CAA40();
    v77 = sub_2287CB610();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v260 = swift_slowAlloc();
      v269 = v260;
      *v78 = v206;
      v267 = v230;
      swift_getMetatypeMetadata();
      v79 = sub_2287CB250();
      v81 = sub_2287031D8(v79, v80, &v269);
      LODWORD(v257) = v77;
      v82 = v81;

      *(v78 + 4) = v82;
      *(v78 + 12) = 2082;
      __swift_project_boxed_opaque_existential_1(v262, v262[3]);
      v37 = v264;
      v83 = sub_2287C9A70();
      v85 = sub_2287031D8(v83, v84, &v269);

      *(v78 + 14) = v85;
      *(v78 + 22) = 2048;
      v86 = *(v49 + 16);

      *(v78 + 24) = v86;

      *(v78 + 32) = 2080;
      v87 = MEMORY[0x22AABEA80](v74, MEMORY[0x277D120A0]);
      v89 = sub_2287031D8(v87, v88, &v269);

      *(v78 + 34) = v89;
      _os_log_impl(&dword_2286FF000, v76, v257, "[%{public}s][%{public}s] computed changes for %ld desired: %s", v78, 0x2Au);
      v90 = v260;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v90, -1, -1);
      MEMORY[0x22AABFD90](v78, -1, -1);

      v36 = v255;
      (*v231)(v255, v233);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*v231)(v75, v233);
      v36 = v75;
    }

    v163 = v222;
    sub_228742C50(v74, v222);

    sub_2287CA1C0();

    sub_22870E2E4(v164);
    sub_228745FAC(v261, v247, v248, v249, v238);
    sub_228745A10(v163, type metadata accessor for ExecuteChangesResult);
    goto LABEL_4;
  }

  sub_228745FAC(v49, v247, v248, v249, v238);
LABEL_65:
  v140 = v232;
LABEL_66:
  sub_228745A10(v140, type metadata accessor for ExecuteChangesResult);
}

uint64_t sub_228744BC0(uint64_t a1)
{
  result = HKShowSensitiveLogItems();
  if (result)
  {

    return a1;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v34 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v3, 0);
    v4 = v34;
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v9 = *(v34 + 16);
      v8 = *(v34 + 24);
      v10 = v9 + 1;

      if (v9 >= v8 >> 1)
      {
        result = sub_2287042D4((v8 > 1), v9 + 1, 1);
      }

      *(v34 + 16) = v10;
      v11 = v34 + 16 * v9;
      *(v11 + 32) = v6;
      *(v11 + 40) = v7;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
  }

  if (!v10)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_25:

    return v31;
  }

  v12 = 0;
  v29 = v4 + 32;
  v30 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms;
  v31 = MEMORY[0x277D84F90];
  v27 = v10;
  v28 = v4;
  while (v12 < *(v4 + 16))
  {
    v16 = (v29 + 16 * v12);
    v18 = *v16;
    v17 = v16[1];
    v33 = v12 + 1;
    v19 = *(v32 + v30);
    v20 = *(v19 + 16);

    v21 = v19 + 40;
    v22 = -v20;
    v23 = -1;
    while (v22 + v23 != -1)
    {
      if (++v23 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v24 = v21 + 16;
      sub_2287CB260();
      sub_2287CB260();
      sub_22873E0A0();
      v25 = sub_2287CB860();

      v21 = v24;
      if (v25)
      {

        goto LABEL_15;
      }
    }

    v26 = v31;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2287042D4(0, *(v31 + 16) + 1, 1);
      v26 = v31;
    }

    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_2287042D4((v13 > 1), v14 + 1, 1);
      v26 = v31;
    }

    *(v26 + 16) = v14 + 1;
    v31 = v26;
    v15 = v26 + 16 * v14;
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;
LABEL_15:
    v4 = v28;
    v12 = v33;
    if (v33 == v27)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_228744E6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v32 = a2;
  v6 = *v3;
  v7 = sub_2287CAA50();
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228744BC0(a1);
  v34 = v6;
  swift_getMetatypeMetadata();
  v31 = sub_2287CB250();
  v11 = v10;
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo), *(v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24));
  v12 = sub_2287C9A70();
  v14 = v13;
  sub_2287CA9D0();

  v15 = sub_2287CAA40();
  v16 = sub_2287CB610();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v7;
    v18 = v17;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v18 = 136446978;
    v19 = a3;
    v20 = v12;
    v21 = sub_2287031D8(v31, v11, &v34);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    v22 = sub_2287031D8(v20, v14, &v34);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_2287031D8(v32, v19, &v34);
    *(v18 + 32) = 2080;
    v23 = sub_2287CB3D0();
    v25 = v24;

    v26 = sub_2287031D8(v23, v25, &v34);

    *(v18 + 34) = v26;
    _os_log_impl(&dword_2286FF000, v15, v16, "[%{public}s][%{public}s] %s%s", v18, 0x2Au);
    v27 = v29;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v27, -1, -1);
    MEMORY[0x22AABFD90](v18, -1, -1);

    return (*(v33 + 8))(v9, v30);
  }

  else
  {

    return (*(v33 + 8))(v9, v7);
  }
}

uint64_t HealthExperienceStoreFeedItemContext.deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  v2 = sub_2287C9590();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_feedItemStorage;
  v4 = sub_2287CA340();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider));

  return v0;
}

uint64_t HealthExperienceStoreFeedItemContext.__deallocating_deinit()
{
  HealthExperienceStoreFeedItemContext.deinit();

  return swift_deallocClassInstance();
}

id sub_228745318()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_228745368()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t sub_228745434@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  swift_beginAccess();
  v5 = sub_2287C9590();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

id sub_2287454C0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_228745524(uint64_t a1)
{
  v3 = (*v1 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 8))(a1, v4, v5);
}

uint64_t sub_22874558C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *v2;
  a2[3] = &type metadata for DispatchQueueGeneratorScheduler;
  a2[4] = sub_228741120();
  v6 = swift_allocObject();
  *a2 = v6;
  v6[5] = type metadata accessor for HealthExperienceStoreFeedItemContext(0);
  v6[6] = a1;
  v6[2] = v5;
}

uint64_t HealthExperienceStoreFeedItemContext.description.getter()
{
  sub_2287CBA20();

  sub_228745A70();
  v1 = sub_2287CB250();
  MEMORY[0x22AABE980](v1);

  MEMORY[0x22AABE980](0x6F7269766E65202CLL, 0xEF203A746E656D6ELL);
  swift_beginAccess();
  v2 = sub_2287CA410();
  MEMORY[0x22AABE980](v2);

  MEMORY[0x22AABE980](0xD000000000000012, 0x80000002287D0B50);
  v3 = [*(v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext) description];
  v4 = sub_2287CB220();
  v6 = v5;

  MEMORY[0x22AABE980](v4, v6);

  MEMORY[0x22AABE980](41, 0xE100000000000000);
  return 60;
}

uint64_t sub_22874585C(uint64_t a1)
{
  v2 = sub_2287C9D50();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    v10(v6, v11, v2);
    while (1)
    {
      v13 = sub_2287C9D00();
      if (v13)
      {
        v15 = v13;
        v16 = v14;
        v13(v6);
        sub_228714BC0(v15, v16);
      }

      result = (*(v8 - 8))(v6, v2);
      v11 += v12;
      if (!--v7)
      {
        break;
      }

      v9(v6, v11, v2);
    }
  }

  return result;
}

void sub_2287459AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228745A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_228745A70()
{
  result = qword_280DE2F98[0];
  if (!qword_280DE2F98[0])
  {
    type metadata accessor for HealthExperienceStoreFeedItemContext(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_280DE2F98);
  }

  return result;
}

uint64_t sub_228745AC0(uint64_t a1)
{
  result = sub_2287C9590();
  if (v2 <= 0x3F)
  {
    result = sub_2287CA340();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_228745DE4(uint64_t a1)
{
  sub_2287CA1F0();
  if (v1 <= 0x3F)
  {
    sub_2287459AC(319, &qword_280DE0000, MEMORY[0x277D11EB0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_228745E98(uint64_t result, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v6 = a5 >> 5;
  if (v6 <= 1)
  {
    if (a5 >> 5 && v6 != 1)
    {
      return;
    }
  }

  else if (v6 != 2 && v6 != 3)
  {
    if (v6 == 4)
    {

      sub_228745F34(a2, a3, a4, a5 & 0x1F);
    }

    return;
  }
}

id sub_228745F34(id result, void *a2, id a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    result = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:

  return sub_228745F9C(result);
}

id sub_228745F9C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_228745FAC(uint64_t result, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v6 = a5 >> 5;
  if (v6 <= 1)
  {
    if (a5 >> 5 && v6 != 1)
    {
      return;
    }
  }

  else if (v6 != 2 && v6 != 3)
  {
    if (v6 == 4)
    {

      sub_228746048(a2, a3, a4, a5 & 0x1F);
    }

    return;
  }
}

void sub_228746048(void *result, void *a2, void *a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    result = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:

  sub_2287460B0(result);
}

void sub_2287460B0(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2287460C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2287460D4(a1, a2);
  }

  return a1;
}

uint64_t sub_2287460D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_228746128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecuteChangesResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22874618C()
{
  sub_2287CA210();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE63A8 = v1;
}

uint64_t sub_22874620C()
{
  v36 = sub_2287C9AE0();
  v1 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2287C9B20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA290();
  v7 = sub_2287C9AF0();
  (*(v4 + 8))(v6, v3);
  v8 = *(v7 + 16);
  if (v8)
  {
    v32[1] = v0;
    v37 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v8, 0);
    v9 = v37;
    v11 = *(v1 + 16);
    v10 = v1 + 16;
    v12 = *(v10 + 64);
    v32[0] = v7;
    v13 = v7 + ((v12 + 32) & ~v12);
    v33 = *(v10 + 56);
    v34 = v11;
    v14 = (v10 - 8);
    do
    {
      v16 = v35;
      v15 = v36;
      v17 = v10;
      v34(v35, v13, v36);
      v18 = sub_2287C9AD0();
      v20 = v19;
      (*v14)(v16, v15);
      v37 = v9;
      v22 = *(v9 + 2);
      v21 = *(v9 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_2287042D4((v21 > 1), v22 + 1, 1);
        v9 = v37;
      }

      *(v9 + 2) = v22 + 1;
      v23 = &v9[16 * v22];
      *(v23 + 4) = v18;
      *(v23 + 5) = v20;
      v13 += v33;
      --v8;
      v10 = v17;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v37 = v9;

  sub_228747080(&v37);

  sub_228704344(0, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_228714B18();
  sub_2287CB1D0();

  v24 = objc_opt_self();
  if (qword_280DE33C0 != -1)
  {
    swift_once();
  }

  v25 = qword_280DE6360;
  v26 = sub_2287CB210();
  v27 = [objc_opt_self() featureValueWithString_];

  v28 = [v24 customRelevanceProviderForFeature:v25 withValue:v27];
  if (v28)
  {

    sub_228704344(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2287CCC50;
    sub_228746690();
    *(v29 + 32) = v30;
    return v29;
  }

  else
  {
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

void sub_228746690()
{
  v0 = sub_2287C9B20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  if (qword_280DE37D8 != -1)
  {
    swift_once();
  }

  v5 = qword_280DE63A0;
  sub_2287CA2A0();
  sub_2287CA110();
  sub_2287470EC(&qword_280DE3950, MEMORY[0x277D11E28], MEMORY[0x277D11E40]);
  sub_2287CB350();
  (*(v1 + 8))(v3, v0);
  v6 = sub_2287CB210();

  v7 = [objc_opt_self() featureValueWithString_];

  v8 = [v4 customRelevanceProviderForFeature:v5 withValue:v7];
  if (!v8)
  {
    __break(1u);
  }
}

void sub_228746874()
{
  v0 = objc_opt_self();
  if (qword_280DE11D0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE62A8;
  sub_2287CA040();
  sub_2287CA110();
  v2 = sub_2287CB210();

  v3 = [objc_opt_self() featureValueWithString_];

  v4 = [v0 customRelevanceProviderForFeature:v1 withValue:v3];
  if (!v4)
  {
    __break(1u);
  }
}

void sub_228746978()
{
  v0 = sub_2287C9F50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  if (qword_280DE37E8 != -1)
  {
    swift_once();
  }

  v5 = qword_280DE63B0;
  sub_2287CA140();
  sub_2287CA110();
  sub_2287470EC(&qword_280DE3410, MEMORY[0x277D11F48], MEMORY[0x277D11F50]);
  sub_2287CB350();
  (*(v1 + 8))(v3, v0);
  v6 = sub_2287CB210();

  v7 = [objc_opt_self() featureValueWithString_];

  v8 = [v4 customRelevanceProviderForFeature:v5 withValue:v7];
  if (!v8)
  {
    __break(1u);
  }
}

void sub_228746B5C()
{
  v0 = sub_2287CA050();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  if (qword_280DE37E0 != -1)
  {
    swift_once();
  }

  v5 = qword_280DE63A8;
  sub_2287CA210();
  sub_2287CA110();
  sub_2287470EC(&qword_280DE33F0, MEMORY[0x277D11FA8], MEMORY[0x277D11FB0]);
  sub_2287CB350();
  (*(v1 + 8))(v3, v0);
  v6 = [objc_opt_self() featureValueWithInt64_];
  v7 = [v4 customRelevanceProviderForFeature:v5 withValue:v6];

  if (!v7)
  {
    __break(1u);
  }
}

void sub_228746D28()
{
  v0 = sub_2287CA2E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  if (qword_280DE3788 != -1)
  {
    swift_once();
  }

  v5 = qword_280DE6368;
  sub_2287CA500();
  sub_2287CA110();
  sub_2287470EC(&qword_280DE33A8, MEMORY[0x277D12080], MEMORY[0x277D12090]);
  sub_2287CB350();
  (*(v1 + 8))(v3, v0);
  v6 = sub_2287CB210();

  v7 = [objc_opt_self() featureValueWithString_];

  v8 = [v4 customRelevanceProviderForFeature:v5 withValue:v7];
  if (!v8)
  {
    __break(1u);
  }
}

void sub_228746F0C()
{
  sub_2287CA2A0();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE63A0 = v1;
}

void sub_228746F8C()
{
  v0 = sub_2287CB210();
  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE6360 = v1;
}

void sub_228747000()
{
  if (qword_280DE37D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE63A0;
  v1 = *(sub_2287C9B00() + 16);

  sub_228795C5C(v1);
  v3 = v2;

  qword_280DE6398 = v3;
}

uint64_t sub_228747080(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22878A364(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_228747134(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2287470EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228747134(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2287CBCB0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2287CB400();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2287472FC(v7, v8, a1, v4);
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
    return sub_22874722C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22874722C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2287CBD00(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2287472FC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22878A1B0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2287478D8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2287CBD00();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2287CBD00();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_228722F14(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_228722F14((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2287478D8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22878A1B0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22878A124(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2287CBD00(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}