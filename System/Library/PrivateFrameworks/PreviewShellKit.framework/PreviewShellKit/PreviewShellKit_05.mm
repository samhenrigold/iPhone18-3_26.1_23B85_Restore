uint64_t sub_25F14818C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Agent.Update(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void *sub_25F148278(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_25F148378(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

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
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL sub_25F1484FC(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_25F17983C() & 1;
    }
  }

  return result;
}

uint64_t _s15PreviewShellKit13BatchIdentityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_25F17983C() & 1) == 0)
  {
    goto LABEL_20;
  }

  type metadata accessor for BatchIdentity(0);
  if ((sub_25F17765C() & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_25F17773C();
  sub_25F148850(&qword_27FD48DA0, MEMORY[0x277D409D0], MEMORY[0x277D409E0]);
  sub_25F1791FC();
  sub_25F1791FC();
  if (v13 == v11 && v14 == v12)
  {
  }

  else
  {
    v3 = sub_25F17983C();

    if ((v3 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  sub_25F17722C();
  sub_25F148850(&qword_27FD48DA8, MEMORY[0x277D406E8], MEMORY[0x277D40700]);
  sub_25F1791FC();
  sub_25F1791FC();
  if (v13 == v11 && v14 == v12)
  {
  }

  else
  {
    v7 = sub_25F17983C();

    if ((v7 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  sub_25F14A700(v4, v5, v6);
  sub_25F1791FC();
  sub_25F1791FC();
  if (v13 != v11 || v14 != v12)
  {
    v8 = sub_25F17983C();

    if (v8)
    {
      goto LABEL_19;
    }

LABEL_20:
    v9 = 0;
    return v9 & 1;
  }

LABEL_19:
  v9 = sub_25F1771AC();
  return v9 & 1;
}

uint64_t sub_25F148850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25F148898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48C90;
  if (!qword_27FD48C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48C90);
  }

  return result;
}

uint64_t sub_25F1488EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F1489A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F148A50()
{
  v1 = sub_25F17741C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F148B1C(uint64_t a1)
{
  v4 = *(sub_25F17741C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F1417FC(a1, v6, v7, v1 + v5);
}

uint64_t sub_25F148C0C()
{
  v1 = sub_25F17741C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 10, v3 | 7);
}

uint64_t sub_25F148CE4(uint64_t a1, uint64_t *a2)
{
  v6 = *(sub_25F17741C() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 9);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F0C10CC;

  return sub_25F1425B4(a1, a2, v8, v2 + v7, v10, v11, v12);
}

uint64_t sub_25F148E20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F148E58(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F0BF3E4;

  return sub_25F143E28(a1, a2, v6);
}

uint64_t sub_25F148F20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F148F68(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D60, &qword_25F1827E0);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_25F148FC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F149004(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0C10CC;

  return sub_25F144ED8(a1, v4, v5, v6);
}

uint64_t sub_25F1490BC()
{
  v1 = sub_25F17788C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F149144(uint64_t a1)
{
  v3 = *(sub_25F17788C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25F145CE8(a1, v4);
}

uint64_t *sub_25F1491B4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher);
  v4 = *(v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return sub_25F1066A4(a1, v4, v5);
}

uint64_t sub_25F149268(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_25F17767C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_25F17773C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = sub_25F17722C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = sub_25F1771BC();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_25F149430(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_25F17767C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_25F17773C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_25F17722C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = sub_25F1771BC();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_25F1495E4(uint64_t a1)
{
  result = sub_25F17767C();
  if (v2 <= 0x3F)
  {
    result = sub_25F17773C();
    if (v3 <= 0x3F)
    {
      result = sub_25F17722C();
      if (v4 <= 0x3F)
      {
        result = sub_25F1771BC();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F1496B8(uint64_t a1)
{
  result = sub_25F177E8C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BatchIdentity(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_25F149808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F177E8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D08, &unk_25F183080);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25F149934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F177E8C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D08, &unk_25F183080);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_25F149A68(uint64_t a1)
{
  sub_25F177E8C();
  if (v1 <= 0x3F)
  {
    sub_25F149B64(319, &qword_27FD48D20, MEMORY[0x277D40AD8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25F149B64(319, &qword_27FD48D28, MEMORY[0x277D40450], MEMORY[0x277D40558]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F149B64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25F149BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F177E8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_25F17767C();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 32);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_25F149CFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F177E8C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25F17767C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 32) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_25F149E08(uint64_t a1)
{
  result = sub_25F177E8C();
  if (v2 <= 0x3F)
  {
    result = sub_25F17767C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F149EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F149F44()
{
  v1 = sub_25F17776C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Agent.Update(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_25F177E8C();
  (*(*(v10 - 8) + 8))(v0 + v8, v10);
  v11 = *(v6 + 20);
  v12 = sub_25F1778EC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v0 + v8 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

void sub_25F14A138(uint64_t a1)
{
  v3 = *(sub_25F17776C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Agent.Update(0) - 8);
  v7 = *(v1 + 16);
  v8 = (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));

  sub_25F146BB0(a1, v7, v1 + v4, v8);
}

unint64_t sub_25F14A240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Agent.Update(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25F14A388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F14A40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48D68;
  if (!qword_27FD48D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48D68);
  }

  return result;
}

void sub_25F14A460(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_25F14A470(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_25F14A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48D70;
  if (!qword_27FD48D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48D70);
  }

  return result;
}

uint64_t objectdestroy_61Tm()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_25F14A5C8()
{
  v1 = *(sub_25F17767C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_25F13C69C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_25F14A6C4(void *a1)
{

  *a1 = v1;
}

unint64_t sub_25F14A700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48DB0;
  if (!qword_27FD48DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DB0);
  }

  return result;
}

uint64_t sub_25F14A764(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_25F14A7C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_25F14A828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48DB8;
  if (!qword_27FD48DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DB8);
  }

  return result;
}

unint64_t sub_25F14A880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48DC0;
  if (!qword_27FD48DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DC0);
  }

  return result;
}

unint64_t sub_25F14A8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48DC8;
  if (!qword_27FD48DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DC8);
  }

  return result;
}

unint64_t sub_25F14A934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48DD0;
  if (!qword_27FD48DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DD0);
  }

  return result;
}

unint64_t sub_25F14A988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48DD8;
  if (!qword_27FD48DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DD8);
  }

  return result;
}

unint64_t sub_25F14A9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48DE0;
  if (!qword_27FD48DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DE0);
  }

  return result;
}

uint64_t ContentProvider.handleHostMessageStream(_:instance:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v30 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_25F17888C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v15 = *(v6 + 16);
  v15(v10, v4, a3);
  v16 = sub_25F17887C();
  v17 = sub_25F17953C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v11;
    v19 = v18;
    v27 = swift_slowAlloc();
    v28 = v12;
    v31 = v27;
    *v19 = 136446210;
    v15(v30, v10, a3);
    v20 = sub_25F1790BC();
    v22 = v21;
    (*(v6 + 8))(v10, a3);
    v23 = sub_25F0BECF0(v20, v22, &v31);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_25F0B3000, v16, v17, "Content provider received a host message stream but does not handle them: %{public}s", v19, 0xCu);
    v24 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x25F8D6230](v24, -1, -1);
    MEMORY[0x25F8D6230](v19, -1, -1);

    (*(v28 + 8))(v14, v29);
  }

  else
  {

    (*(v6 + 8))(v10, a3);
    (*(v12 + 8))(v14, v11);
  }

  return 0;
}

uint64_t static ContentProvider.supportedVariantGroups(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_25F17888C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v8 = sub_25F17887C();
  v9 = sub_25F17953C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v3;
    v17 = v11;
    *v10 = 136446210;
    swift_getMetatypeMetadata();
    v12 = sub_25F1790BC();
    v14 = sub_25F0BECF0(v12, v13, &v17);

    *(v10 + 4) = v14;
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x25F8D6230](v11, -1, -1);
    MEMORY[0x25F8D6230](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return MEMORY[0x277D84F90];
}

uint64_t static ContentProvider<>.decode(updatePayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25F177F8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  (*(v6 + 16))(v8, a1, v5);
  return sub_25F17850C();
}

Swift::Void __swiftcall PreviewShellServiceProtocol.activateServers()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 8);
  v52 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v50 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v48 = &v37 - v8;
  v10 = type metadata accessor for ServerFarm.HostMessages(0);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = v3;
  v49 = v3;
  v16 = *(v3 + 16);
  v42 = v2;
  v17 = v4;
  v16(v53, v4, v15);
  v51 = v14;
  ServerFarm.activate()(v14);
  v54[4] = v53[4];
  v54[5] = v53[5];
  v54[6] = v53[6];
  v54[7] = v53[7];
  v54[0] = v53[0];
  v54[1] = v53[1];
  v54[2] = v53[2];
  v54[3] = v53[3];
  sub_25F0E263C(v54);
  v45 = sub_25F17932C();
  v18 = *(v45 - 8);
  v44 = *(v18 + 56);
  v46 = v18 + 56;
  v44(v9, 1, 1, v45);
  v43 = type metadata accessor for ServerFarm.HostMessages;
  v19 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1551B0(v14, v19, type metadata accessor for ServerFarm.HostMessages);
  v20 = v5;
  v41 = *(v5 + 16);
  v41(v50, v2, v17);
  v40 = sub_25F17930C();
  v21 = sub_25F1792FC();
  v22 = *(v47 + 80);
  v23 = *(v5 + 80);
  v24 = (v22 + 48) & ~v22;
  v39 = v24;
  v25 = (v11 + v23 + v24) & ~v23;
  v47 = v22 | v23;
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 2) = v21;
  *(v26 + 3) = v27;
  v28 = v49;
  *(v26 + 4) = v17;
  *(v26 + 5) = v28;
  v38 = type metadata accessor for ServerFarm.HostMessages;
  sub_25F156CE4(v19, &v26[v24], type metadata accessor for ServerFarm.HostMessages);
  v29 = *(v20 + 32);
  v30 = v50;
  v31 = v17;
  v29(&v26[v25], v50, v17);
  v32 = v48;
  sub_25F0CD9E8(0, 0, v48, &unk_25F182BC0, v26);

  v44(v32, 1, 1, v45);
  sub_25F1551B0(v51, v19, v43);
  v33 = v31;
  v41(v30, v42, v31);
  v34 = sub_25F1792FC();
  v35 = swift_allocObject();
  *(v35 + 2) = v34;
  *(v35 + 3) = MEMORY[0x277D85700];
  *(v35 + 4) = v33;
  *(v35 + 5) = v49;
  sub_25F156CE4(v19, &v35[v39], v38);
  v29(&v35[v25], v30, v33);
  sub_25F0CD9E8(0, 0, v48, &unk_25F182BD0, v35);

  sub_25F176FCC();
  v36 = sub_25F176FBC();
  sub_25F176FAC();

  sub_25F1574D0(v51, type metadata accessor for ServerFarm.HostMessages);
}

uint64_t sub_25F14B66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_25F17772C();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = sub_25F177BCC();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v10 = sub_25F17755C();
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();
  v11 = sub_25F17764C();
  v7[15] = v11;
  v7[16] = *(v11 - 8);
  v7[17] = swift_task_alloc();
  v12 = sub_25F1775FC();
  v7[18] = v12;
  v7[19] = *(v12 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = sub_25F176E9C();
  v7[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47380, &unk_25F1830C0);
  v7[23] = v13;
  v7[24] = *(v13 - 8);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47520, &qword_25F17BFF8);
  v7[26] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47528, &qword_25F1830D0);
  v7[27] = v14;
  v7[28] = *(v14 - 8);
  v7[29] = swift_task_alloc();
  v7[30] = sub_25F17930C();
  v7[31] = sub_25F1792FC();
  v16 = sub_25F1792CC();
  v7[32] = v16;
  v7[33] = v15;

  return MEMORY[0x2822009F8](sub_25F14BA10, v16, v15);
}

uint64_t sub_25F14BA10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  sub_25F17935C();
  v1 = sub_25F1792FC();
  v0[34] = v1;
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_25F14BAEC;
  v3 = v0[26];
  v4 = v0[27];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v3, v1, v5, v4);
}

uint64_t sub_25F14BAEC()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_25F14BC30, v3, v2);
}

uint64_t sub_25F14BC30()
{
  v1 = v0[26];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);

    v2 = v0[1];

    return v2();
  }

  sub_25F0B7D50(v1, v0[25], &qword_27FD47380, &unk_25F1830C0);
  sub_25F17705C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[22];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v23 = v0[16];
      v22 = v0[17];
      v34 = v0[15];
      v24 = v0[7];
      v25 = v0[8];
      v26 = v0[6];
      (*(v24 + 32))(v25, v5, v26);
      sub_25F17704C();
      sub_25F1572D0(v25, v22);
      (*(v23 + 8))(v22, v34);
      (*(v24 + 8))(v25, v26);
      goto LABEL_16;
    }

    (*(v0[10] + 32))(v0[11], v5, v0[9]);
    sub_25F17704C();
    v12 = swift_task_alloc();
    v0[37] = v12;
    *v12 = v0;
    v12[1] = sub_25F14C354;
    v13 = v0[17];
    v14 = v0[11];
    v15 = v0[4];
    v16 = v0[5];

    return sub_25F14E52C(v14, v13, v15, v16);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v7 = v0[19];
      v6 = v0[20];
      v9 = v0[17];
      v8 = v0[18];
      v10 = v0[16];
      v11 = v0[4];
      v32 = v0[5];
      v33 = v0[15];
      (*(v7 + 32))(v6, v5, v8);
      sub_25F17704C();
      sub_25F14C720(v6, v9, v11, v32);
      (*(v10 + 8))(v9, v33);
      (*(v7 + 8))(v6, v8);
LABEL_16:
      sub_25F0B7E94(v0[25], &qword_27FD47380, &unk_25F1830C0);
      v27 = sub_25F1792FC();
      v0[34] = v27;
      v28 = swift_task_alloc();
      v0[35] = v28;
      *v28 = v0;
      v28[1] = sub_25F14BAEC;
      v29 = v0[26];
      v30 = v0[27];
      v31 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v29, v27, v31, v30);
    }

    (*(v0[13] + 32))(v0[14], v5, v0[12]);
    sub_25F17704C();
    v17 = swift_task_alloc();
    v0[36] = v17;
    *v17 = v0;
    v17[1] = sub_25F14C0E8;
    v18 = v0[17];
    v19 = v0[14];
    v20 = v0[4];
    v21 = v0[5];

    return sub_25F14D848(v19, v18, v20, v21);
  }
}

uint64_t sub_25F14C0E8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 264);
  v6 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_25F14C26C, v6, v5);
}

uint64_t sub_25F14C26C()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  sub_25F0B7E94(v0[25], &qword_27FD47380, &unk_25F1830C0);
  v1 = sub_25F1792FC();
  v0[34] = v1;
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_25F14BAEC;
  v3 = v0[26];
  v4 = v0[27];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v3, v1, v5, v4);
}

uint64_t sub_25F14C354()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 264);
  v6 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_25F14C4D8, v6, v5);
}

uint64_t sub_25F14C4D8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_25F0B7E94(v0[25], &qword_27FD47380, &unk_25F1830C0);
  v1 = sub_25F1792FC();
  v0[34] = v1;
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_25F14BAEC;
  v3 = v0[26];
  v4 = v0[27];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v3, v1, v5, v4);
}

uint64_t sub_25F14C5C4(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for ServerFarm.HostMessages(0) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F0C10CC;

  return sub_25F14B66C(a1, v10, v11, v1 + v8, v1 + v9, v6, v5);
}

uint64_t sub_25F14C720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v98 = a4;
  v97 = a3;
  v111 = a2;
  v5 = sub_25F17764C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v112 = v7;
  v113 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F177C4C();
  v103 = *(v8 - 8);
  v104 = v8;
  MEMORY[0x28223BE20](v8);
  v102 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_25F177C7C();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_25F17724C();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_25F1778CC();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_25F17788C();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_25F17756C();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v80 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_25F177F8C();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_25F177B3C();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F1771BC();
  MEMORY[0x28223BE20](v17 - 8);
  v74 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_25F17741C();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v114 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_25F1775DC();
  MEMORY[0x28223BE20](v101);
  v115 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25F1775FC();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v107 = v24;
  v108 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v70 - v25;
  v100 = sub_25F17888C();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25F1787BC();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1787CC();
  sub_25F1780CC();
  (*(v30 + 8))(v32, v29);
  sub_25F17884C();
  v33 = *(v22 + 16);
  v110 = a1;
  v105 = v33;
  v106 = v22 + 16;
  v33(v26, a1, v21);
  v34 = sub_25F17887C();
  v35 = sub_25F17955C();
  v36 = os_log_type_enabled(v34, v35);
  v109 = v22;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v71 = v6;
    v38 = v37;
    v39 = swift_slowAlloc();
    v72 = v5;
    v40 = v39;
    *&v116 = v39;
    *v38 = 136446210;
    sub_25F155438(&qword_27FD48E90, MEMORY[0x277D40890], MEMORY[0x277D40898]);
    v41 = sub_25F17980C();
    v43 = v42;
    (*(v22 + 8))(v26, v21);
    v44 = sub_25F0BECF0(v41, v43, &v116);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_25F0B3000, v34, v35, "PreviewShellService received %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v45 = v40;
    v5 = v72;
    MEMORY[0x25F8D6230](v45, -1, -1);
    v46 = v38;
    v6 = v71;
    MEMORY[0x25F8D6230](v46, -1, -1);
  }

  else
  {

    (*(v22 + 8))(v26, v21);
  }

  (*(v99 + 8))(v28, v100);
  v47 = v21;
  v48 = v115;
  v49 = v110;
  sub_25F1775EC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v52 = v103;
  v51 = v104;
  v53 = v102;
  v54 = v109;
  v55 = v114;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E88, &qword_25F183078) + 48);
      v59 = v75;
      v60 = v76;
      (*(v75 + 32))(v55, v48, v76);
      v61 = v48 + v58;
      v62 = v74;
      sub_25F156CE4(v61, v74, MEMORY[0x277D406A0]);
      sub_25F14FE54(v55, v62, v97, v98);
      sub_25F1574D0(v62, MEMORY[0x277D406A0]);
      (*(v59 + 8))(v114, v60);
      goto LABEL_19;
    case 2:
      v52 = v77;
      v53 = v73;
      v51 = v78;
      (*(v77 + 32))(v73, v48, v78);
      sub_25F150CBC(v53, v97, v98);
      goto LABEL_8;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
      v56 = v79;
      _s15PreviewShellKit21CanvasContentProviderPAAyt12HostedOutputRtzrlE6encode06hostedH020PreviewsFoundationOS12PropertyListVyt_tFZ_0();
      sub_25F1786DC();
      (*(v81 + 8))(v56, v82);
      goto LABEL_19;
    case 4:
      v52 = v83;
      v53 = v80;
      v51 = v84;
      (*(v83 + 32))(v80, v48, v84);
      sub_25F156B84();
      goto LABEL_8;
    case 5:
      v52 = v86;
      v53 = v85;
      v51 = v87;
      (*(v86 + 32))(v85, v48, v87);
      sub_25F1515CC(v53, v97, v98);
      goto LABEL_8;
    case 6:
      v52 = v89;
      v53 = v88;
      v51 = v90;
      (*(v89 + 32))(v88, v48, v90);
      sub_25F151F9C(v53, v97, v98);
      goto LABEL_8;
    case 7:
      v57 = *(v48 + 16);
      v116 = *v48;
      v117 = v57;
      v118 = *(v48 + 32);
      sub_25F151308(&v116, v97, v98);
      goto LABEL_19;
    case 8:
      v63 = *(v48 + 16);
      v116 = *v48;
      v117 = v63;
      v118 = *(v48 + 32);
      sub_25F151180(&v116, v97, v98);
      goto LABEL_19;
    case 9:
      v52 = v92;
      v53 = v91;
      v51 = v93;
      (*(v92 + 32))(v91, v48, v93);
      sub_25F1522AC(v53, v97, v98);
      goto LABEL_8;
    case 10:
      v52 = v95;
      v53 = v94;
      v51 = v96;
      (*(v95 + 32))(v94, v48, v96);
      sub_25F152678(v53, v97, v98);
      goto LABEL_8;
    case 11:
      (*(v103 + 32))(v102, v48, v104);
      sub_25F152CC8(v53, v97, v98);
LABEL_8:
      (*(v52 + 8))(v53, v51);
      goto LABEL_19;
    case 12:
      sub_25F1565EC();
LABEL_19:

      break;
    default:
      sub_25F14FC10(v97, v98);

      sub_25F1574D0(v115, MEMORY[0x277D40888]);
      break;
  }

  v64 = v108;
  v105(v108, v49, v47);
  v65 = v113;
  (*(v6 + 16))(v113, v111, v5);
  v66 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v67 = (v107 + *(v6 + 80) + v66) & ~*(v6 + 80);
  v68 = swift_allocObject();
  (*(v54 + 32))(v68 + v66, v64, v47);
  (*(v6 + 32))(v68 + v67, v65, v5);
  sub_25F1785DC();
}

uint64_t sub_25F14D848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v5[23] = sub_25F176FDC();
  v5[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550);
  v5[28] = swift_task_alloc();
  v7 = sub_25F17769C();
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  v8 = sub_25F1787BC();
  v5[32] = v8;
  v5[33] = *(v8 - 8);
  v5[34] = swift_task_alloc();
  sub_25F17930C();
  v5[35] = sub_25F1792FC();
  v10 = sub_25F1792CC();
  v5[36] = v10;
  v5[37] = v9;

  return MEMORY[0x2822009F8](sub_25F14DA70, v10, v9);
}

uint64_t sub_25F14DA70()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 168);
  v6 = *(v0 + 160);
  sub_25F1787CC();
  sub_25F1780CC();
  v7 = (*(v2 + 8))(v1, v3);
  MEMORY[0x25F8D34C0](v7);
  (*(v5 + 112))(v4, v6, v5);
  v8 = *(v0 + 224);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  sub_25F17861C();
  v9 = type metadata accessor for Process(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    v10 = *(v0 + 224);

    sub_25F0B7E94(v10, &qword_27FD48188, &qword_25F182550);
    type metadata accessor for AgentLocatingError(0);
    sub_25F155438(&qword_27FD48E00, type metadata accessor for AgentLocatingError, &protocol conformance descriptor for AgentLocatingError);
    v11 = swift_allocError();
    MEMORY[0x25F8D34C0]();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_25F17761C();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 168);
    v16 = *(v0 + 160);
    v17 = v14 + *(v9 + 24);
    v18 = *(v17 + 32);
    v19 = *(v17 + 16);
    *(v0 + 368) = *v17;
    *(v0 + 384) = v19;
    *(v0 + 400) = v18;
    v20 = sub_25F177CDC();

    sub_25F1574D0(v14, type metadata accessor for Process);
    (*(v15 + 16))(v16, v15);
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);
    *(v0 + 304) = v22;
    *(v0 + 312) = v21;

    sub_25F0E263C(v0 + 16);
    v23 = swift_task_alloc();
    *(v0 + 320) = v23;
    *v23 = v0;
    v23[1] = sub_25F14DE70;

    return sub_25F0EFE30(v20, v22, v21);
  }
}

uint64_t sub_25F14DE70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v4 = sub_25F14E1DC;
  }

  else
  {
    v4 = sub_25F14DF84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F14DF84()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F155438(&qword_27FD47538, MEMORY[0x277D40DF8], MEMORY[0x277D40DF0]);
  sub_25F176EFC();
  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  *v3 = v0;
  v3[1] = sub_25F14E09C;
  v4 = *(v0 + 216);

  return MEMORY[0x2821A1908](v4, v1, v1, v2);
}

uint64_t sub_25F14E09C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_25F14E3C8;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = *(v2 + 288);
    v5 = *(v2 + 296);
    v3 = sub_25F14E250;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25F14E1DC()
{
  v0[45] = v0[42];

  v1 = v0[36];
  v2 = v0[37];

  return MEMORY[0x2822009F8](sub_25F14E444, v1, v2);
}

uint64_t sub_25F14E250()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];

  sub_25F17754C();
  swift_storeEnumTagMultiPayload();
  sub_25F15747C(&qword_27FD48EE0, &qword_27FD47530, &unk_25F17F570);
  sub_25F155438(&qword_27FD48EE8, MEMORY[0x277D40DD8], MEMORY[0x277D40DD0]);
  sub_25F177A5C();
  sub_25F1574D0(v4, MEMORY[0x277D40DD8]);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F14E3C8()
{

  v0[45] = v0[44];

  v1 = v0[36];
  v2 = v0[37];

  return MEMORY[0x2822009F8](sub_25F14E444, v1, v2);
}

uint64_t sub_25F14E444()
{

  v1 = *(v0 + 360);
  sub_25F17761C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F14E52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v5[23] = sub_25F176FDC();
  v5[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550);
  v5[28] = swift_task_alloc();
  v7 = sub_25F17769C();
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  v8 = sub_25F1787BC();
  v5[32] = v8;
  v5[33] = *(v8 - 8);
  v5[34] = swift_task_alloc();
  sub_25F17930C();
  v5[35] = sub_25F1792FC();
  v10 = sub_25F1792CC();
  v5[36] = v10;
  v5[37] = v9;

  return MEMORY[0x2822009F8](sub_25F14E754, v10, v9);
}

uint64_t sub_25F14E754()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 168);
  v6 = *(v0 + 160);
  sub_25F1787CC();
  sub_25F1780CC();
  v7 = (*(v2 + 8))(v1, v3);
  MEMORY[0x25F8D3B30](v7);
  (*(v5 + 112))(v4, v6, v5);
  v8 = *(v0 + 224);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  sub_25F17861C();
  v9 = type metadata accessor for Process(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    v10 = *(v0 + 224);

    sub_25F0B7E94(v10, &qword_27FD48188, &qword_25F182550);
    type metadata accessor for AgentLocatingError(0);
    sub_25F155438(&qword_27FD48E00, type metadata accessor for AgentLocatingError, &protocol conformance descriptor for AgentLocatingError);
    v11 = swift_allocError();
    MEMORY[0x25F8D3B30]();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_25F17761C();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 168);
    v16 = *(v0 + 160);
    v17 = v14 + *(v9 + 24);
    v18 = *(v17 + 32);
    v19 = *(v17 + 16);
    *(v0 + 368) = *v17;
    *(v0 + 384) = v19;
    *(v0 + 400) = v18;
    v20 = sub_25F177CDC();

    sub_25F1574D0(v14, type metadata accessor for Process);
    (*(v15 + 16))(v16, v15);
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);
    *(v0 + 304) = v22;
    *(v0 + 312) = v21;

    sub_25F0E263C(v0 + 16);
    v23 = swift_task_alloc();
    *(v0 + 320) = v23;
    *v23 = v0;
    v23[1] = sub_25F14EB54;

    return sub_25F0EFE30(v20, v22, v21);
  }
}

uint64_t sub_25F14EB54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v4 = sub_25F14EEC0;
  }

  else
  {
    v4 = sub_25F14EC68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F14EC68()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F155438(&qword_27FD47538, MEMORY[0x277D40DF8], MEMORY[0x277D40DF0]);
  sub_25F176EFC();
  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  *v3 = v0;
  v3[1] = sub_25F14ED80;
  v4 = *(v0 + 216);

  return MEMORY[0x2821A1908](v4, v1, v1, v2);
}

uint64_t sub_25F14ED80()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_25F14F0AC;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = *(v2 + 288);
    v5 = *(v2 + 296);
    v3 = sub_25F14EF34;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25F14EEC0()
{
  v0[45] = v0[42];

  v1 = v0[36];
  v2 = v0[37];

  return MEMORY[0x2822009F8](sub_25F14F128, v1, v2);
}

uint64_t sub_25F14EF34()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];

  sub_25F17754C();
  swift_storeEnumTagMultiPayload();
  sub_25F15747C(&qword_27FD48EE0, &qword_27FD47530, &unk_25F17F570);
  sub_25F155438(&qword_27FD48EE8, MEMORY[0x277D40DD8], MEMORY[0x277D40DD0]);
  sub_25F177A5C();
  sub_25F1574D0(v4, MEMORY[0x277D40DD8]);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F14F0AC()
{

  v0[45] = v0[44];

  v1 = v0[36];
  v2 = v0[37];

  return MEMORY[0x2822009F8](sub_25F14F128, v1, v2);
}

uint64_t sub_25F14F128()
{

  v1 = *(v0 + 360);
  sub_25F17761C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F14F210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_25F17764C();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = sub_25F1775FC();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47390, &qword_25F17BD68);
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474D8, "Bk");
  v7[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474E0, &qword_25F17BFA0);
  v7[16] = v11;
  v7[17] = *(v11 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = sub_25F17930C();
  v7[20] = sub_25F1792FC();
  v13 = sub_25F1792CC();
  v7[21] = v13;
  v7[22] = v12;

  return MEMORY[0x2822009F8](sub_25F14F470, v13, v12);
}

uint64_t sub_25F14F470()
{
  type metadata accessor for ServerFarm.HostMessages(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  sub_25F17935C();
  v1 = sub_25F1792FC();
  v0[23] = v1;
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_25F14F564;
  v3 = v0[15];
  v4 = v0[16];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v3, v1, v5, v4);
}

uint64_t sub_25F14F564()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_25F14F6A8, v3, v2);
}

uint64_t sub_25F14F6A8()
{
  v1 = v0[15];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[14];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    v8 = v0[7];
    v16 = v0[6];
    v17 = v0[9];
    v9 = v0[4];
    v15 = v0[5];
    sub_25F0B7D50(v1, v4, &qword_27FD47390, &qword_25F17BD68);
    sub_25F17705C();
    sub_25F17704C();
    sub_25F14C720(v5, v7, v9, v15);
    (*(v8 + 8))(v7, v16);
    (*(v6 + 8))(v5, v17);
    sub_25F0B7E94(v4, &qword_27FD47390, &qword_25F17BD68);
    v10 = sub_25F1792FC();
    v0[23] = v10;
    v11 = swift_task_alloc();
    v0[24] = v11;
    *v11 = v0;
    v11[1] = sub_25F14F564;
    v12 = v0[15];
    v13 = v0[16];
    v14 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v12, v10, v14, v13);
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);
  v2 = (type metadata accessor for ServerFarm.HostMessages(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(*v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  swift_unknownObjectRelease();
  v10 = v0 + v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = v2[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  (*(*(v13 - 8) + 8))(v10 + v12, v13);
  (*(v5 + 8))(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_25F14FAB4(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for ServerFarm.HostMessages(0) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F0BF3E4;

  return sub_25F14F210(a1, v10, v11, v1 + v8, v1 + v9, v6, v5);
}

uint64_t sub_25F14FC10(uint64_t a1, uint64_t a2)
{
  v14 = sub_25F177F8C();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17758C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
  (*(a2 + 80))(a1, a2);
  sub_25F155438(&qword_27FD48EA0, MEMORY[0x277D40830], MEMORY[0x277D40828]);
  sub_25F1784FC();
  (*(v8 + 8))(v10, v7);
  v11 = sub_25F1786DC();
  (*(v4 + 8))(v6, v14);
  return v11;
}

void sub_25F14FE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v130 = a4;
  v129 = a3;
  v6 = sub_25F177FFC();
  v132 = *(v6 - 8);
  v133 = v6;
  MEMORY[0x28223BE20](v6);
  v131 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_25F176E0C();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v117 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_25F176E6C();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F177A3C();
  v135 = *(v10 - 8);
  v136 = v10;
  MEMORY[0x28223BE20](v10);
  v134 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_25F17769C();
  v127 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_25F1771BC();
  v14 = MEMORY[0x28223BE20](v113);
  v126 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v112 = &v107 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v107 - v18;
  v20 = sub_25F17741C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v140 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v107 - v24;
  v124 = sub_25F17888C();
  v123 = *(v124 - 8);
  v26 = MEMORY[0x28223BE20](v124);
  v114 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v107 - v28;
  sub_25F17884C();
  v30 = *(v21 + 16);
  v125 = a1;
  v122 = v30;
  v30(v25, a1, v20);
  v138 = a2;
  v121 = v19;
  sub_25F1551B0(a2, v19, MEMORY[0x277D406A0]);
  v31 = sub_25F17887C();
  v32 = sub_25F17955C();
  v33 = os_log_type_enabled(v31, v32);
  v137 = v20;
  v128 = v21;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v141 = v110;
    *v34 = 136315394;
    v109 = v32;
    sub_25F1773CC();
    sub_25F155438(&qword_27FD48DE8, MEMORY[0x277D408B8], MEMORY[0x277D408C0]);
    v35 = v111;
    v36 = sub_25F17980C();
    v108 = v31;
    v38 = v37;
    (*(v127 + 8))(v13, v35);
    v127 = *(v21 + 8);
    (v127)(v25, v137);
    v39 = sub_25F0BECF0(v36, v38, &v141);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2082;
    v40 = v121;
    sub_25F1551B0(v121, v112, MEMORY[0x277D406A0]);
    v41 = sub_25F1790BC();
    v43 = v42;
    sub_25F1574D0(v40, MEMORY[0x277D406A0]);
    v44 = sub_25F0BECF0(v41, v43, &v141);

    *(v34 + 14) = v44;
    v45 = v108;
    _os_log_impl(&dword_25F0B3000, v108, v109, "Preparing to launch %s, device: %{public}s", v34, 0x16u);
    v46 = v110;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v46, -1, -1);
    v47 = v34;
    v20 = v137;
    MEMORY[0x25F8D6230](v47, -1, -1);
  }

  else
  {

    sub_25F1574D0(v121, MEMORY[0x277D406A0]);
    v127 = *(v21 + 8);
    (v127)(v25, v20);
  }

  v48 = *(v123 + 8);
  v49 = v124;
  v48(v29, v124);
  v122(v140, v125, v20);
  if (sub_25F1785AC())
  {
    v50 = v114;
    sub_25F17884C();
    v51 = sub_25F17887C();
    v52 = sub_25F17955C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_25F0B3000, v51, v52, "Propagating XTP env value to Agent", v53, 2u);
      MEMORY[0x25F8D6230](v53, -1, -1);
    }

    v48(v50, v49);
    v54 = sub_25F1784EC();
    v56 = v55;
    v57 = sub_25F17738C();
    v59 = v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v143 = *v59;
    *v59 = 0x8000000000000000;
    sub_25F16F150(1702195828, 0xE400000000000000, v54, v56, isUniquelyReferenced_nonNull_native);

    *v59 = v143;
    v57(&v141, 0);
  }

  v61 = sub_25F17739C();
  if (*(v61 + 16) && (v62 = sub_25F0C8D24(0xD000000000000015, 0x800000025F187490), (v63 & 1) != 0))
  {
    v64 = (*(v61 + 56) + 16 * v62);
    v66 = *v64;
    v65 = v64[1];

    v141 = v66;
    v142 = v65;

    MEMORY[0x25F8D50D0](58, 0xE100000000000000);

    v67 = v141;
    v68 = v142;
  }

  else
  {

    v67 = 0;
    v68 = 0xE000000000000000;
  }

  v141 = v67;
  v142 = v68;

  MEMORY[0x25F8D50D0](0xD00000000000004FLL, 0x800000025F183FC0);

  v69 = v141;
  v70 = v142;
  v71 = sub_25F17738C();
  v73 = v72;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v73;
  *v73 = 0x8000000000000000;
  sub_25F16F150(v69, v70, 0xD000000000000015, 0x800000025F187490, v74);
  *v73 = v143;
  v75 = v140;
  v71(&v141, 0);
  if (sub_25F1773DC())
  {
    v76 = sub_25F17738C();
    v78 = v77;
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v143 = *v78;
    *v78 = 0x8000000000000000;
    sub_25F16F150(49, 0xE100000000000000, 0xD000000000000013, 0x800000025F1874B0, v79);
    *v78 = v143;
    v76(&v141, 0);
  }

  v80 = v126;
  sub_25F1551B0(v138, v126, MEMORY[0x277D406A0]);
  v81 = v135;
  v82 = v136;
  if ((*(v135 + 48))(v80, 1, v136) == 1)
  {
    sub_25F1574D0(v80, MEMORY[0x277D406A0]);
    v83 = v137;
    v84 = v75;
LABEL_18:
    v104 = v129;
    v105 = v130;
    (*(v130 + 96))(v84, v129, v130);
    (*(v105 + 32))(v84, v138, v104, v105);
    v106 = v131;
    sub_25F177FCC();
    sub_25F177F8C();
    sub_25F1785BC();

    (*(v132 + 8))(v106, v133);
    (v127)(v84, v83);
    return;
  }

  (*(v81 + 32))(v134, v80, v82);
  v85 = sub_25F177A2C();
  v86 = sub_25F17738C();
  v88 = v87;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v88;
  *v88 = 0x8000000000000000;
  v90 = v139;
  sub_25F1568BC(v85, sub_25F1565A4, 0, v89, &v143);
  v139 = v90;
  if (!v90)
  {

    *v88 = v143;

    v86(&v141, 0);
    v91 = v116;
    v92 = v115;
    v93 = v118;
    (*(v116 + 104))(v115, *MEMORY[0x277D40D18], v118);
    v94 = v119;
    v95 = v117;
    v96 = v120;
    (*(v119 + 104))(v117, *MEMORY[0x277D40F58], v120);
    v97 = sub_25F176E5C();
    v99 = v98;
    (*(v94 + 8))(v95, v96);
    (*(v91 + 8))(v92, v93);
    v100 = sub_25F17738C();
    v84 = v75;
    v102 = v101;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v143 = *v102;
    *v102 = 0x8000000000000000;
    sub_25F16F150(v97, v99, 0xD000000000000025, 0x800000025F1874F0, v103);
    *v102 = v143;
    v100(&v141, 0);
    (*(v135 + 8))(v134, v136);
    v83 = v137;
    goto LABEL_18;
  }

  *v88 = v143;

  __break(1u);
}

uint64_t sub_25F150CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v42 = a2;
  v4 = sub_25F177FFC();
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F17769C();
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F177B3C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F17888C();
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v17 = *(v11 + 16);
  v41 = a1;
  v17(v13, a1, v10);
  v18 = sub_25F17887C();
  v19 = sub_25F17951C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = v20;
    v35 = swift_slowAlloc();
    v46 = v35;
    *v20 = 136315138;
    v34 = v19;
    sub_25F177B2C();
    sub_25F155438(&qword_27FD48DE8, MEMORY[0x277D408B8], MEMORY[0x277D408C0]);
    v21 = v37;
    v22 = sub_25F17980C();
    v36 = v4;
    v24 = v23;
    (*(v38 + 8))(v9, v21);
    (*(v11 + 8))(v13, v10);
    v25 = sub_25F0BECF0(v22, v24, &v46);
    v4 = v36;

    v26 = v33;
    *(v33 + 1) = v25;
    v27 = v26;
    _os_log_impl(&dword_25F0B3000, v18, v34, "Preparing to relaunch %s", v26, 0xCu);
    v28 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x25F8D6230](v28, -1, -1);
    MEMORY[0x25F8D6230](v27, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  (*(v39 + 8))(v16, v40);
  (*(v43 + 40))(v41, v42);
  v29 = v44;
  sub_25F177FCC();
  sub_25F177F8C();
  v30 = sub_25F1785BC();

  (*(v45 + 8))(v29, v4);
  return v30;
}

uint64_t sub_25F151180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_25F177FFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 64))(a1, a2, a3);
  if (!v3)
  {
    sub_25F177FCC();
    sub_25F177F8C();
    v4 = sub_25F1785BC();

    (*(v9 + 8))(v11, v8);
  }

  return v4;
}

char *sub_25F151308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v23 = a2;
  v26 = a1;
  v3 = sub_25F177FFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17888C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v11 = sub_25F17887C();
  v12 = sub_25F17951C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v6;
    v14 = v4;
    v15 = v3;
    v16 = v13;
    *v13 = 67240192;
    *(v13 + 1) = sub_25F177CDC();
    _os_log_impl(&dword_25F0B3000, v11, v12, "Preparing to stop %{public}d", v16, 8u);
    v17 = v16;
    v3 = v15;
    v4 = v14;
    v6 = v22;
    MEMORY[0x25F8D6230](v17, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v18 = sub_25F177CDC();
  v19 = v24;
  (*(v25 + 56))(v18, v23);
  if (!v19)
  {
    sub_25F177FCC();
    sub_25F177F8C();
    v10 = sub_25F1785BC();

    (*(v4 + 8))(v6, v3);
  }

  return v10;
}

uint64_t sub_25F1515CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v106 = a3;
  v107 = a2;
  v90 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v88 = v4;
  v89 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F177FFC();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v94 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D08, &unk_25F183080);
  MEMORY[0x28223BE20](v7 - 8);
  v86 = &v75 - v8;
  v87 = sub_25F17776C();
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v83 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
  MEMORY[0x28223BE20](v99);
  v98 = &v75 - v10;
  v11 = sub_25F1776AC();
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x28223BE20](v11);
  v95 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F17788C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v93 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v75 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v75 - v21;
  v82 = v23;
  MEMORY[0x28223BE20](v20);
  v25 = &v75 - v24;
  v26 = sub_25F17888C();
  v101 = *(v26 - 8);
  v102 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v29 = *(v14 + 16);
  v29(v25, a1, v13);
  v29(v22, a1, v13);
  v105 = a1;
  v81 = v14 + 16;
  v80 = v29;
  v29(v19, a1, v13);
  v100 = v28;
  v30 = sub_25F17887C();
  v31 = sub_25F17951C();
  v32 = os_log_type_enabled(v30, v31);
  v84 = v14;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v108 = v79;
    *v33 = 67240706;
    v34 = sub_25F17787C();
    v76 = v19;
    v35 = *(v14 + 8);
    v35(v25, v13);
    *(v33 + 4) = v34;
    *(v33 + 8) = 2082;
    v78 = v31;
    v36 = v95;
    sub_25F17785C();
    sub_25F155438(&qword_27FD47118, MEMORY[0x277D408E0], MEMORY[0x277D40900]);
    v77 = v30;
    v37 = v97;
    v38 = sub_25F17980C();
    v40 = v39;
    (*(v96 + 8))(v36, v37);
    v35(v22, v13);
    v41 = sub_25F0BECF0(v38, v40, &v108);

    *(v33 + 10) = v41;
    *(v33 + 18) = 2082;
    v42 = v98;
    v43 = v76;
    sub_25F17782C();
    v44 = sub_25F1795FC();
    v46 = v45;
    sub_25F0B7E94(v42, &qword_27FD480F8, &qword_25F17F060);
    v35(v43, v13);
    v47 = sub_25F0BECF0(v44, v46, &v108);

    *(v33 + 20) = v47;
    v48 = v77;
    _os_log_impl(&dword_25F0B3000, v77, v78, "Handling update: pid=%{public}d, category=%{public}s, seed = %{public}s", v33, 0x1Cu);
    v49 = v79;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v49, -1, -1);
    v50 = v33;
    v51 = v106;
    MEMORY[0x25F8D6230](v50, -1, -1);

    (*(v101 + 8))(v100, v102);
    v52 = v13;
  }

  else
  {
    v53 = *(v14 + 8);
    v53(v25, v13);

    v53(v19, v13);
    v53(v22, v13);
    (*(v101 + 8))(v100, v102);
    v52 = v13;
    v51 = v106;
  }

  v54 = v105;
  v55 = sub_25F17787C();
  v56 = v103;
  v57 = v104;
  v58 = (*(v51 + 120))(v55, v107, v51);
  if (!v56)
  {
    v59 = v58;
    v60 = (*(v51 + 48))(v54, v107, v51);
    v103 = 0;
    v13 = v60;
    v62 = v83;
    sub_25F17786C();
    v63 = v86;
    sub_25F17783C();
    v102 = v59;
    sub_25F146224(v13, v62, v63);
    sub_25F0B7E94(v63, &qword_27FD48D08, &unk_25F183080);
    (*(v85 + 8))(v62, v87);
    sub_25F177FDC();
    v64 = v52;
    v75 = v52;
    v65 = v89;
    v66 = v90;
    v67 = v107;
    (*(v90 + 16))(v89, v57, v107);
    v80(v93, v54, v64);
    v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v69 = (v88 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = v84;
    v71 = (*(v84 + 80) + v69 + 8) & ~*(v84 + 80);
    v72 = swift_allocObject();
    v73 = v106;
    *(v72 + 16) = v67;
    *(v72 + 24) = v73;
    (*(v66 + 32))(v72 + v68, v65, v67);
    *(v72 + v69) = v102;
    (*(v70 + 32))(v72 + v71, v93, v75);

    v74 = v94;
    sub_25F1785FC();

    (*(v91 + 8))(v74, v92);
  }

  return v13;
}

uint64_t sub_25F151F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a3;
  v24 = a1;
  v25 = a2;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F1778CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
  v14 = sub_25F17932C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, v24, v7);
  v15 = v4;
  v16 = v25;
  (*(v5 + 16))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v25);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  (*(v8 + 32))(v19 + v17, v10, v7);
  (*(v5 + 32))(v19 + v18, v23, v16);
  return sub_25F17870C();
}

uint64_t sub_25F1522AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v35 = a2;
  v5 = sub_25F177F8C();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17724C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F17888C();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v14 = *(v8 + 16);
  v34 = a1;
  v14(v10, a1, v7);
  v15 = sub_25F17887C();
  v16 = sub_25F17951C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v5;
    v18 = v17;
    v29 = swift_slowAlloc();
    v39 = v29;
    *v18 = 136446210;
    v19 = sub_25F17723C();
    v31 = v3;
    v21 = v20;
    (*(v8 + 8))(v10, v7);
    v22 = sub_25F0BECF0(v19, v21, &v39);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_25F0B3000, v15, v16, "Purging %{public}s", v18, 0xCu);
    v23 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x25F8D6230](v23, -1, -1);
    v24 = v18;
    v5 = v30;
    MEMORY[0x25F8D6230](v24, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  (*(v32 + 8))(v13, v33);
  (*(v36 + 72))(v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
  v25 = v37;
  _s15PreviewShellKit21CanvasContentProviderPAAyt12HostedOutputRtzrlE6encode06hostedH020PreviewsFoundationOS12PropertyListVyt_tFZ_0();
  v26 = sub_25F1786DC();
  (*(v38 + 8))(v25, v5);
  return v26;
}

uint64_t sub_25F152678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v5 = sub_25F177F8C();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F177A1C();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ContentKey(0);
  MEMORY[0x28223BE20](v48);
  v54 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F1776AC();
  v11 = *(v10 - 8);
  v44 = v10;
  v45 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F177C7C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25F17888C();
  v46 = *(v18 - 8);
  v47 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v21 = *(v15 + 16);
  v49 = a1;
  v21(v17, a1, v14);
  v22 = sub_25F17887C();
  v23 = sub_25F17951C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v40 = v24;
    v42 = swift_slowAlloc();
    v58 = v42;
    *v24 = 136446210;
    v41 = v23;
    sub_25F177C5C();
    sub_25F155438(&qword_27FD47118, MEMORY[0x277D408E0], MEMORY[0x277D40900]);
    v25 = v44;
    v26 = sub_25F17980C();
    v43 = a3;
    v28 = v27;
    (*(v45 + 8))(v13, v25);
    (*(v15 + 8))(v17, v14);
    v29 = sub_25F0BECF0(v26, v28, &v58);
    a3 = v43;

    v30 = v40;
    *(v40 + 1) = v29;
    v31 = v30;
    _os_log_impl(&dword_25F0B3000, v22, v41, "Providing variants for content category %{public}s", v30, 0xCu);
    v32 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x25F8D6230](v32, -1, -1);
    MEMORY[0x25F8D6230](v31, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  (*(v46 + 8))(v20, v47);
  v33 = v54;
  sub_25F177C5C();
  sub_25F177C6C();
  (*(a3 + 8))(&v58, v50, a3);
  ContentProviderRegistry.variantGroups(for:)(v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
  v34 = v51;
  sub_25F177A0C();
  sub_25F155438(&qword_27FD48EC0, MEMORY[0x277D40B68], MEMORY[0x277D40B60]);
  v35 = v55;
  v36 = v53;
  sub_25F1784FC();
  (*(v52 + 8))(v34, v36);
  v37 = sub_25F1786DC();
  (*(v56 + 8))(v35, v57);
  sub_25F1574D0(v33, type metadata accessor for ContentKey);
  return v37;
}

uint64_t sub_25F152CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v48 = a2;
  v4 = sub_25F177F8C();
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v55 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F1779FC();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v49 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v41 - v11;
  v12 = sub_25F1776AC();
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x28223BE20](v12);
  v57 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F177C4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25F17888C();
  v47 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  (*(v15 + 16))(v17, a1, v14);
  v21 = sub_25F17887C();
  v22 = sub_25F17951C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v46 = v4;
    v24 = v23;
    v41 = v23;
    v43 = swift_slowAlloc();
    v60 = v43;
    *v24 = 136446210;
    v44 = v18;
    v25 = v57;
    v42 = v22;
    sub_25F177C2C();
    sub_25F155438(&qword_27FD47118, MEMORY[0x277D408E0], MEMORY[0x277D40900]);
    v26 = v59;
    v27 = sub_25F17980C();
    v45 = a1;
    v29 = v28;
    (*(v58 + 8))(v25, v26);
    (*(v15 + 8))(v17, v14);
    v30 = sub_25F0BECF0(v27, v29, &v60);

    v31 = v41;
    *(v41 + 4) = v30;
    _os_log_impl(&dword_25F0B3000, v21, v42, "Providing content override for %{public}s)", v31, 0xCu);
    v32 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x25F8D6230](v32, -1, -1);
    v4 = v46;
    MEMORY[0x25F8D6230](v31, -1, -1);

    (*(v47 + 8))(v20, v44);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
    (*(v47 + 8))(v20, v18);
  }

  (*(v50 + 8))(&v60, v48);
  v33 = v57;
  sub_25F177C2C();
  v34 = sub_25F177C3C();
  MEMORY[0x28223BE20](v34);
  v35 = v52;
  sub_25F0C7E84(sub_25F0C9EF8, v34, v52);

  (*(v58 + 8))(v33, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
  sub_25F0B7E2C(v35, v49, &qword_27FD47110, &qword_25F17B780);
  v36 = v51;
  sub_25F1779EC();
  sub_25F155438(&qword_27FD48ED8, MEMORY[0x277D40B58], MEMORY[0x277D40B50]);
  v38 = v54;
  v37 = v55;
  sub_25F1784FC();
  (*(v53 + 8))(v36, v38);
  v39 = sub_25F1786DC();
  (*(v56 + 8))(v37, v4);
  sub_25F0B7E94(v35, &qword_27FD47110, &qword_25F17B780);
  return v39;
}

uint64_t sub_25F1533D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48EC8, &qword_25F1830B0);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v75 - v6;
  v7 = sub_25F1775FC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v77 = (&v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v75 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v75 - v14;
  v16 = sub_25F17888C();
  v79 = *(v16 - 8);
  v80 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v78 = (&v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v75 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = &v75 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48ED0, &qword_25F1830B8);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v75 - v26);
  v28 = *(v25 + 16);
  v82 = a1;
  v29 = a1;
  v31 = v30;
  v28(&v75 - v26, v29, v30);
  v32 = (*(v25 + 88))(v27, v31);
  if (v32 == *MEMORY[0x277D40498])
  {
    sub_25F17884C();
    (*(v8 + 16))(v15, a2, v7);
    v33 = sub_25F17887C();
    v34 = sub_25F17955C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v77 = v35;
      v78 = swift_slowAlloc();
      v84 = v78;
      *v35 = 136446210;
      sub_25F155438(&qword_27FD48E90, MEMORY[0x277D40890], MEMORY[0x277D40898]);
      v36 = sub_25F17980C();
      v37 = v7;
      v38 = v31;
      v40 = v39;
      (*(v8 + 8))(v15, v37);
      v41 = sub_25F0BECF0(v36, v40, &v84);
      v31 = v38;

      v42 = v77;
      *(v77 + 4) = v41;
      v43 = v42;
      _os_log_impl(&dword_25F0B3000, v33, v34, "PreviewShellService sending reply for %{public}s: Success", v42, 0xCu);
      v44 = v78;
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x25F8D6230](v44, -1, -1);
      MEMORY[0x25F8D6230](v43, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v15, v7);
    }

    (*(v79 + 8))(v23, v80);
LABEL_9:
    (*(v25 + 8))(v27, v31);
    goto LABEL_14;
  }

  v45 = v8;
  if (v32 != *MEMORY[0x277D40488])
  {
    if (v32 == *MEMORY[0x277D40490])
    {
      v63 = v78;
      sub_25F17884C();
      v64 = v77;
      (*(v8 + 16))(v77, a2, v7);
      v65 = sub_25F17887C();
      v66 = sub_25F17955C();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v84 = v75;
        *v67 = 136446210;
        sub_25F155438(&qword_27FD48E90, MEMORY[0x277D40890], MEMORY[0x277D40898]);
        v68 = sub_25F17980C();
        v76 = v31;
        v70 = v69;
        (*(v8 + 8))(v64, v7);
        v71 = sub_25F0BECF0(v68, v70, &v84);
        v31 = v76;

        *(v67 + 4) = v71;
        _os_log_impl(&dword_25F0B3000, v65, v66, "PreviewShellService sending reply for %{public}s: Cancelled", v67, 0xCu);
        v72 = v75;
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x25F8D6230](v72, -1, -1);
        MEMORY[0x25F8D6230](v67, -1, -1);

        (*(v79 + 8))(v78, v80);
      }

      else
      {

        (*(v8 + 8))(v64, v7);
        (*(v79 + 8))(v63, v80);
      }
    }

    goto LABEL_9;
  }

  (*(v25 + 96))(v27, v31);
  v46 = *v27;
  sub_25F17884C();
  v47 = v45;
  v48 = a2;
  v49 = v7;
  (*(v45 + 16))(v13, v48, v7);
  v50 = v46;
  v51 = sub_25F17887C();
  v52 = sub_25F17955C();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v78 = v21;
    v54 = v53;
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v84 = v77;
    *v54 = 136446466;
    sub_25F155438(&qword_27FD48E90, MEMORY[0x277D40890], MEMORY[0x277D40898]);
    v55 = sub_25F17980C();
    v57 = v56;
    (*(v47 + 8))(v13, v49);
    v58 = sub_25F0BECF0(v55, v57, &v84);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2114;
    v59 = v46;
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v54 + 14) = v60;
    v61 = v76;
    *v76 = v60;
    _os_log_impl(&dword_25F0B3000, v51, v52, "PreviewShellService sending reply for %{public}s: Failure - %{public}@", v54, 0x16u);
    sub_25F0B7E94(v61, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v61, -1, -1);
    v62 = v77;
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    MEMORY[0x25F8D6230](v62, -1, -1);
    MEMORY[0x25F8D6230](v54, -1, -1);

    (*(v79 + 8))(v78, v80);
  }

  else
  {

    (*(v47 + 8))(v13, v49);
    (*(v79 + 8))(v21, v80);
  }

LABEL_14:
  v73 = v83;
  sub_25F17810C();
  sub_25F177F8C();
  sub_25F17762C();
  return sub_25F0B7E94(v73, &qword_27FD48EC8, &qword_25F1830B0);
}

uint64_t sub_25F153D08(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = sub_25F177EAC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48EF0, &qword_25F1830E8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48EF8, &qword_25F1830F0);
  MEMORY[0x28223BE20](v15);
  v17 = (v19 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48F00, &qword_25F1830F8);
  sub_25F17810C();
  sub_25F0B7E2C(v14, v12, &qword_27FD48EF0, &qword_25F1830E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25F0B7E94(v14, &qword_27FD48EF0, &qword_25F1830E8);
    *v17 = *v12;
  }

  else
  {
    (*(v3 + 32))(v8, v12, v2);
    (*(v3 + 16))(v6, v8, v2);
    sub_25F17777C();
    (*(v3 + 8))(v8, v2);
    sub_25F0B7E94(v14, &qword_27FD48EF0, &qword_25F1830E8);
  }

  swift_storeEnumTagMultiPayload();
  sub_25F17778C();
  sub_25F155438(&qword_27FD48F08, MEMORY[0x277D40A30], MEMORY[0x277D40A28]);
  sub_25F17762C();
  return sub_25F0B7E94(v17, &qword_27FD48EF8, &qword_25F1830F0);
}

uint64_t sub_25F1540AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  sub_25F177DDC();
  v5[9] = swift_task_alloc();
  v6 = sub_25F17776C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for PreviewNonUIAgentProxy(0);
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for PreviewAgentConnector(0);
  v5[16] = swift_task_alloc();
  v7 = sub_25F17757C();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = sub_25F1778CC();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v9 = sub_25F17888C();
  v5[24] = v9;
  v5[25] = *(v9 - 8);
  v5[26] = swift_task_alloc();
  sub_25F17930C();
  v5[27] = sub_25F1792FC();
  v11 = sub_25F1792CC();
  v5[28] = v11;
  v5[29] = v10;

  return MEMORY[0x2822009F8](sub_25F154354, v11, v10);
}

uint64_t sub_25F154354(uint64_t a1)
{
  v40 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[5];
  sub_25F17884C();
  v7 = *(v5 + 16);
  v7(v2, v6, v4);
  v7(v3, v6, v4);
  v8 = sub_25F17887C();
  v9 = sub_25F17951C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[25];
  v12 = v1[26];
  v13 = v1[23];
  v14 = v1[24];
  v16 = v1[21];
  v15 = v1[22];
  v17 = v1[20];
  if (v10)
  {
    v35 = v9;
    v38 = v1[25];
    v19 = v1[18];
    v18 = v1[19];
    v33 = v1[17];
    v37 = v1[24];
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v20 = 67240450;
    v36 = v12;
    v21 = sub_25F1778BC();
    v22 = *(v16 + 8);
    v22(v13, v17);
    *(v20 + 4) = v21;
    *(v20 + 8) = 2082;
    sub_25F17789C();
    sub_25F155438(&qword_27FD48BC8, MEMORY[0x277D40810], MEMORY[0x277D40820]);
    v23 = sub_25F17980C();
    v25 = v24;
    (*(v19 + 8))(v18, v33);
    v22(v15, v17);
    v26 = sub_25F0BECF0(v23, v25, &v39);

    *(v20 + 10) = v26;
    _os_log_impl(&dword_25F0B3000, v8, v35, "Handling cancel update: pid=%{public}d, seed = %{public}s", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x25F8D6230](v34, -1, -1);
    MEMORY[0x25F8D6230](v20, -1, -1);

    (*(v38 + 8))(v36, v37);
  }

  else
  {
    v27 = *(v16 + 8);
    v27(v1[23], v1[20]);

    v27(v15, v17);
    (*(v11 + 8))(v12, v14);
  }

  v28 = v1[16];
  v30 = v1[7];
  v29 = v1[8];
  v31 = sub_25F1778BC();
  PreviewShellServiceProtocol.previewAgentConnector(for:)(v31, v30, v29, v28);

  return MEMORY[0x2822009F8](sub_25F154704, 0, 0);
}

uint64_t sub_25F154704()
{
  v1 = v0[16];
  v2 = v1 + *(v0[15] + 24);
  v3 = *(v2 + 7);
  v0[2] = *(v2 + 6);
  v0[3] = v3;
  v4 = *v1;

  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_25F1547D8;
  v6 = v0[14];

  return SharedAgentServer<>.requestPreviewNonUIAgent(for:)(v6, v4);
}

uint64_t sub_25F1547D8()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_25F154BBC;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *(v2 + 224);
    v5 = *(v2 + 232);
    v3 = sub_25F154928;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25F154928()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[11];
  v5 = v0[12];
  v11 = v0[14];
  v6 = v0[10];
  v10 = v0[9];
  v12 = v0[16];

  sub_25F1778AC();
  sub_25F17789C();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48EB0, &unk_25F1830A0) + 48);
  (*(v4 + 16))(v10, v5, v6);
  (*(v1 + 16))(v10 + v7, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  sub_25F15747C(&qword_27FD485F0, &qword_27FD485E8, &qword_25F180220);
  sub_25F155438(&qword_27FD48EB8, MEMORY[0x277D40EB8], MEMORY[0x277D40EB0]);
  sub_25F177A4C();
  sub_25F1574D0(v10, MEMORY[0x277D40EB8]);
  (*(v1 + 8))(v2, v3);
  (*(v4 + 8))(v5, v6);
  _s15PreviewShellKit21CanvasContentProviderPAAyt12HostedOutputRtzrlE6encode06hostedH020PreviewsFoundationOS12PropertyListVyt_tFZ_0();
  sub_25F1574D0(v11, type metadata accessor for PreviewNonUIAgentProxy);
  sub_25F1574D0(v12, type metadata accessor for PreviewAgentConnector);

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F154BD4()
{
  v1 = *(v0 + 128);

  sub_25F1574D0(v1, type metadata accessor for PreviewAgentConnector);

  v2 = *(v0 + 8);

  return v2();
}

double PreviewShellServiceProtocol.previewAgentConnector(for:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = (*(a3 + 120))();
  if (!v4)
  {
    v20 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
    v11 = v9 + *(type metadata accessor for BatchIdentity(0) + 20);
    v12 = type metadata accessor for PreviewAgentConnector(0);
    v13 = v12[5];
    v14 = sub_25F17767C();
    (*(*(v14 - 8) + 16))(&a4[v13], v11 + v20, v14);

    (*(a3 + 16))(v22, a2, a3);
    (*(a3 + 24))(&v21, a2, a3);
    *a4 = a1;
    v15 = &a4[v12[6]];
    v16 = v22[3];
    *(v15 + 2) = v22[2];
    *(v15 + 3) = v16;
    v17 = v22[1];
    *v15 = v22[0];
    *(v15 + 1) = v17;
    v18 = v22[7];
    *(v15 + 6) = v22[6];
    *(v15 + 7) = v18;
    v19 = v22[5];
    *(v15 + 4) = v22[4];
    *(v15 + 5) = v19;
    result = *&v21;
    *&a4[v12[7]] = v21;
  }

  return result;
}

unint64_t AgentLocatingError.additionalInfo.getter()
{
  v1 = v0;
  v2 = sub_25F17769C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AgentLocatingError(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F1551B0(v1, v8, type metadata accessor for AgentLocatingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v5, v8, v2);
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_25F1796DC();

      v20 = 0xD000000000000023;
      v21 = 0x800000025F187230;
      sub_25F155438(&qword_27FD48DE8, MEMORY[0x277D408B8], MEMORY[0x277D408C0]);
      v14 = sub_25F17980C();
      MEMORY[0x25F8D50D0](v14);

      MEMORY[0x25F8D50D0](39, 0xE100000000000000);
      v15 = v20;
      (*(v3 + 8))(v5, v2);
      return v15;
    }

    v17 = *v8;
    v18 = v8[1];
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_25F1796DC();
    MEMORY[0x25F8D50D0](0xD000000000000031, 0x800000025F1871F0);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    v17 = *v8;
    v18 = v8[1];
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_25F1796DC();

    v20 = 0xD000000000000021;
    v21 = 0x800000025F187260;
LABEL_8:
    MEMORY[0x25F8D50D0](v17, v18);

    v12 = 39;
    v13 = 0xE100000000000000;
    goto LABEL_9;
  }

  v10 = *v8;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_25F1796DC();

  v20 = 0xD000000000000014;
  v21 = 0x800000025F187290;
  v19[3] = v10;
  v11 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v11);

  v12 = 0xD000000000000015;
  v13 = 0x800000025F1872B0;
LABEL_9:
  MEMORY[0x25F8D50D0](v12, v13);
  return v20;
}

uint64_t sub_25F1551B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F15524C(uint64_t a1)
{
  v2 = sub_25F155438(&qword_27FD48E78, type metadata accessor for AgentLocatingError, &protocol conformance descriptor for AgentLocatingError);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F1552B8(uint64_t a1)
{
  v2 = sub_25F155438(&qword_27FD48E78, type metadata accessor for AgentLocatingError, &protocol conformance descriptor for AgentLocatingError);

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t UnknownContentCategory.additionalInfo.getter()
{
  sub_25F1796DC();

  sub_25F1776AC();
  sub_25F155438(&qword_27FD47118, MEMORY[0x277D408E0], MEMORY[0x277D40900]);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  MEMORY[0x25F8D50D0](39, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t sub_25F155438(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25F1554B0()
{
  sub_25F1796DC();

  sub_25F1776AC();
  sub_25F155438(&qword_27FD47118, MEMORY[0x277D408E0], MEMORY[0x277D40900]);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  MEMORY[0x25F8D50D0](39, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t sub_25F155590(uint64_t a1)
{
  v2 = sub_25F155438(&qword_27FD48E70, type metadata accessor for UnknownContentCategory, &protocol conformance descriptor for UnknownContentCategory);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F1555FC(uint64_t a1)
{
  v2 = sub_25F155438(&qword_27FD48E70, type metadata accessor for UnknownContentCategory, &protocol conformance descriptor for UnknownContentCategory);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F155680@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

unint64_t UnknownProcessType.highValueTitle.getter()
{
  v1 = v0;
  v2 = sub_25F17722C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D406E0])
  {
    return 0xD000000000000032;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t UnknownProcessType.additionalInfo.getter()
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000033, 0x800000025F187370);
  sub_25F17722C();
  sub_25F17976C();
  MEMORY[0x25F8D50D0](46, 0xE100000000000000);
  return 0;
}

unint64_t sub_25F155B70()
{
  v1 = v0;
  v2 = sub_25F17722C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D406E0])
  {
    return 0xD000000000000032;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_25F155CBC()
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000033, 0x800000025F187370);
  sub_25F17722C();
  sub_25F17976C();
  MEMORY[0x25F8D50D0](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_25F155DA4(uint64_t a1)
{
  v2 = sub_25F155438(&qword_27FD48E68, type metadata accessor for UnknownProcessType, &protocol conformance descriptor for UnknownProcessType);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F155E10(uint64_t a1)
{
  v2 = sub_25F155438(&qword_27FD48E68, type metadata accessor for UnknownProcessType, &protocol conformance descriptor for UnknownProcessType);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t dispatch thunk of PreviewShellServiceProtocol.performKill(payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7, a2);
}

uint64_t dispatch thunk of PreviewShellServiceProtocol.agent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 112))(a1, a2);
}

{
  return (*(a3 + 120))(a1, a2);
}

uint64_t sub_25F156028(uint64_t a1)
{
  result = sub_25F17769C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_25F156268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F1562D8()
{
  v1 = sub_25F1775FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_25F17764C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25F156420(uint64_t a1)
{
  v3 = *(sub_25F1775FC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_25F17764C() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_25F1533D4(a1, v1 + v4, v7);
}

uint64_t sub_25F15652C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F1576FC(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F156568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F1576FC(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F1565A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_25F1565EC()
{
  v0 = sub_25F177F8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F17888C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v8 = sub_25F17887C();
  v9 = sub_25F17951C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = v3;
    v11 = v10;
    *v10 = 0;
    _os_log_impl(&dword_25F0B3000, v8, v9, "Received 'ping' message", v10, 2u);
    v3 = v22;
    MEMORY[0x25F8D6230](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = [objc_opt_self() processInfo];
  v13 = [v12 processIdentifier];

  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
  v20[1] = v14;
  memset(&v20[2], 0, 24);
  v21 = 1;
  sub_25F156D4C(v15, v16, v17);
  sub_25F1784FC();
  v18 = sub_25F1786DC();
  (*(v1 + 8))(v3, v0);
  return v18;
}

uint64_t sub_25F1568BC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v47 = a5;
  v48 = v7;
  v46 = v11;
  while (v10)
  {
    v57 = a4;
    v18 = v12;
LABEL_14:
    v20 = (v18 << 10) | (16 * __clz(__rbit64(v10)));
    v21 = (*(a1 + 48) + v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(a1 + 56) + v20);
    v25 = *v24;
    v26 = v24[1];
    v56[0] = v22;
    v56[1] = v23;
    v56[2] = v25;
    v56[3] = v26;

    a2(&v52, v56);

    v28 = v52;
    v27 = v53;
    v29 = v55;
    v51 = v54;
    v30 = *a5;
    v32 = sub_25F0C8D24(v52, v53);
    v33 = *(v30 + 16);
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_25;
    }

    v36 = v31;
    if (*(v30 + 24) >= v35)
    {
      if ((v57 & 1) == 0)
      {
        sub_25F170BBC();
      }
    }

    else
    {
      sub_25F16CAE0(v35, v57 & 1);
      v37 = sub_25F0C8D24(v28, v27);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v32 = v37;
    }

    v10 &= v10 - 1;
    v39 = *a5;
    if (v36)
    {
      v13 = 16 * v32;
      v14 = (v39[7] + 16 * v32);
      v16 = *v14;
      v15 = v14[1];

      v17 = (v39[7] + v13);
      *v17 = v16;
      v17[1] = v15;
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v39[7] + 16 * v32);
      *v41 = v51;
      v41[1] = v29;
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_26;
      }

      v39[2] = v44;
    }

    a4 = 1;
    v12 = v18;
    a5 = v47;
    v7 = v48;
    v11 = v46;
  }

  v19 = v12;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
      sub_25F0C03C0(a1);
    }

    v10 = *(v7 + 8 * v18);
    ++v19;
    if (v10)
    {
      v57 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_25F17985C();
  __break(1u);
  return result;
}

uint64_t sub_25F156B84()
{
  v0 = sub_25F17888C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v4 = sub_25F17887C();
  v5 = sub_25F17953C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25F0B3000, v4, v5, "Received unsupported 'ForwardPayload' style message from host.", v6, 2u);
    MEMORY[0x25F8D6230](v6, -1, -1);
  }

  v7 = (*(v1 + 8))(v3, v0);
  sub_25F156DA0(v7, v8, v9);
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_25F156CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F156D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48E98;
  if (!qword_27FD48E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48E98);
  }

  return result;
}

unint64_t sub_25F156DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48EA8;
  if (!qword_27FD48EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48EA8);
  }

  return result;
}

uint64_t sub_25F156DF4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_25F17788C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25F156F48()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 64) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_25F17788C() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v1 + v4);
  v8 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v9 = v8 + *(type metadata accessor for BatchIdentity(0) + 20);
  (*(v3 + 88))(v7 + v9, v2, v3);
  return (*(v3 + 104))(v1 + v6, v7 + v9, v2, v3);
}

uint64_t sub_25F157084()
{
  v1 = *(v0 + 16);
  v2 = sub_25F1778CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F157188(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(sub_25F1778CC() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25F0BF3E4;

  return sub_25F1540AC(a1, v1 + v8, v1 + v9, v5, v6);
}

uint64_t sub_25F1572D0(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v2 = sub_25F17764C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_25F176FCC();
  v5 = sub_25F176FBC();
  v6 = sub_25F17770C();
  v8 = v7;
  v10 = v9;
  sub_25F17771C();
  sub_25F176F9C();
  sub_25F157530(v6, v8, v10 & 1);

  (*(v3 + 16))(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_25F1785DC();
}

uint64_t sub_25F15747C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F1574D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_25F157530(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_25F157540()
{
  v1 = sub_25F17764C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F1575C8(uint64_t a1)
{
  v3 = *(sub_25F17764C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25F153D08(a1, v4);
}

unint64_t sub_25F157650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48F10;
  if (!qword_27FD48F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48F10);
  }

  return result;
}

unint64_t sub_25F1576A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48F18;
  if (!qword_27FD48F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48F18);
  }

  return result;
}

unint64_t sub_25F1576FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48F20;
  if (!qword_27FD48F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48F20);
  }

  return result;
}

uint64_t PreviewSnapshot.makeRenderPayload()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F17775C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  v10 = *v1;
  v28 = *(v1 + 8);
  v11 = CGImageGetDataProvider(v10);
  if (v11 && (v14 = v11, v15 = CGDataProviderCopyData(v11), v14, v15))
  {
    if (CGImageGetAlphaInfo(v10) == kCGImageAlphaNoneSkipFirst)
    {
      AlphaInfo = kCGImageAlphaPremultipliedFirst;
    }

    else
    {
      AlphaInfo = CGImageGetAlphaInfo(v10);
    }

    v27 = a1;
    ByteOrderInfo = CGImageGetByteOrderInfo(v10);
    v17 = v15;
    v18 = MEMORY[0x25F8D2D50]();
    v24[6] = v19;
    v24[7] = v18;

    v24[5] = CGImageGetWidth(v10);
    v24[4] = CGImageGetHeight(v10);
    v24[3] = CGImageGetBytesPerRow(v10);
    v24[2] = CGImageGetBitsPerComponent(v10);
    v24[1] = CGImageGetBitsPerPixel(v10);
    v20 = CGImageGetColorSpace(v10);
    if (v20 && (v21 = v17, v22 = v20, v23 = CGColorSpaceCopyName(v20), v22, v17 = v21, v23))
    {
      sub_25F17908C();
    }

    else
    {
      sub_25F17908C();
    }

    sub_25F17774C();
    (*(v4 + 16))(v7, v9, v3);

    sub_25F17751C();

    return (*(v4 + 8))(v9, v3);
  }

  else
  {
    sub_25F157A18(v11, v12, v13);
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_25F157A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48F28;
  if (!qword_27FD48F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48F28);
  }

  return result;
}

uint64_t PreviewSnapshot.init(image:selectableRegions:cornerRadius:scaleFactor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return result;
}

uint64_t sub_25F157AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F157C88(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F157AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F157C88(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F157B2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25F157B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F157BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48F30;
  if (!qword_27FD48F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48F30);
  }

  return result;
}

unint64_t sub_25F157C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48F38;
  if (!qword_27FD48F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48F38);
  }

  return result;
}

unint64_t sub_25F157C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD48F40[0];
  if (!qword_27FD48F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD48F40);
  }

  return result;
}

void static CanvasControlConfiguration<A>.empty.getter(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = nullsub_1;
  a1[2] = 0;
  a1[3] = sub_25F157D78;
  a1[4] = 0;
  a1[5] = sub_25F157D84;
  a1[6] = 0;
}

double CanvasControlConfiguration.init(build:)@<D0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v6);
  v3 = v8;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_25F157D84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49258, &unk_25F1836B0);
  sub_25F16376C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_25F157DE0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v39 = a2;
  v41 = a5;
  v6 = type metadata accessor for CanvasControl(0, a2, a3, a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v38 = v34 - v11;
  v13 = v12;
  MEMORY[0x28223BE20](v10);
  v15 = v34 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49248, &qword_25F1836A0);
  v16 = sub_25F177B1C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v37 = v19;
  *(v19 + 16) = xmmword_25F17C9B0;
  v20 = *(v17 + 16);
  v42 = a1;
  v20(v19 + v18, a1, v16);
  v35 = *(v7 + 16);
  v35(v15, a1, v6);
  v21 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v34[1] = v13;
  v22 = swift_allocObject();
  v36 = v22;
  v23 = v39;
  *(v22 + 16) = v39;
  v24 = *(v7 + 32);
  v24(v22 + v21, v15, v6);
  v25 = v38;
  v26 = v6;
  v35(v38, v42, v6);
  v27 = swift_allocObject();
  v28 = v23;
  *(v27 + 16) = v23;
  v24(v27 + v21, v25, v6);
  v29 = v40;
  v24(v40, v42, v26);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  result = (v24)(v30 + v21, v29, v26);
  v32 = v41;
  v33 = v36;
  *v41 = v37;
  v32[1] = sub_25F1633BC;
  v32[2] = v33;
  v32[3] = sub_25F163444;
  v32[4] = v27;
  v32[5] = sub_25F1636CC;
  v32[6] = v30;
  return result;
}

uint64_t sub_25F15811C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16) == 1)
  {
    v5 = *(a2 + *(type metadata accessor for CanvasControl(0, a3, a3, a4) + 28));
    v6 = *(sub_25F1774FC() - 8);
    return v5(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
  }

  else
  {
    type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds(0, a3, a3, a4);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_25F15821C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49250, &qword_25F1836A8);
  sub_25F1774FC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25F17C9B0;
  v9 = type metadata accessor for CanvasControl(0, a3, v7, v8);
  (*(a2 + *(v9 + 32)))(a1);
  return v6;
}

uint64_t sub_25F15830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a2;
  v10 = sub_25F1774FC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25F1777DC())
  {
    type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds(0, a6, v14, v15);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v17 = sub_25F1777EC();
    v22[1] = v6;
    v18 = v17;
    sub_25F1777FC();
    v21 = type metadata accessor for CanvasControl(0, a6, v19, v20);
    sub_25F113CAC(v18 & 1, v13, a3, a4, v23, v21);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_25F1584A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v68 = a3;
  v69 = a4;
  v62 = a5;
  v8 = type metadata accessor for CanvasControl(0, a4, a3, a4);
  v70 = *(v8 - 8);
  v71 = v8;
  v72 = *(v70 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v56 = &v52 - v9;
  v59 = type metadata accessor for CanvasControl(0, a3, v11, v12);
  v13 = *(v59 - 8);
  v65 = *(v13 + 64);
  MEMORY[0x28223BE20](v59);
  v15 = &v52 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49248, &qword_25F1836A0);
  v16 = sub_25F177B1C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v61 = v20;
  *(v20 + 16) = xmmword_25F17BB70;
  v21 = v20 + v19;
  v22 = *(v17 + 16);
  v67 = a1;
  v22(v21, a1, v16);
  v66 = a2;
  v22(v21 + v18, a2, v16);
  v58 = *(v13 + 16);
  v23 = v15;
  v63 = v15;
  v24 = v15;
  v25 = v59;
  v58(v24, a1, v59);
  v26 = v70;
  v57 = *(v70 + 16);
  v57(v10, a2, v71);
  v27 = *(v13 + 80);
  v28 = (v27 + 32) & ~v27;
  v29 = *(v26 + 80);
  v52 = (v65 + v29 + v28) & ~v29;
  v64 = v28;
  v65 = v27 | v29;
  v30 = swift_allocObject();
  v31 = v68;
  v32 = v69;
  *(v30 + 16) = v68;
  *(v30 + 24) = v32;
  v54 = *(v13 + 32);
  v55 = v13 + 32;
  v33 = v30 + v28;
  v34 = v30;
  v60 = v30;
  v35 = v25;
  v54(v33, v23, v25);
  v53 = *(v26 + 32);
  v70 = v26 + 32;
  v36 = v52;
  v37 = v34 + v52;
  v38 = v56;
  v39 = v71;
  v53(v37, v56, v71);
  v40 = v63;
  v58(v63, v67, v35);
  v57(v38, v66, v39);
  v41 = swift_allocObject();
  *(v41 + 16) = v31;
  *(v41 + 24) = v32;
  v42 = v54;
  v54(v41 + v64, v40, v35);
  v43 = v38;
  v44 = v38;
  v45 = v71;
  v46 = v53;
  v53(v41 + v36, v43, v71);
  v42(v40, v67, v35);
  v46(v44, v66, v45);
  v47 = v46;
  v48 = swift_allocObject();
  v49 = v69;
  *(v48 + 16) = v68;
  *(v48 + 24) = v49;
  v42((v48 + v64), v63, v35);
  result = v47(v48 + v36, v44, v45);
  v51 = v62;
  *v62 = v61;
  v51[1] = sub_25F162CE4;
  v51[2] = v60;
  v51[3] = sub_25F162DE0;
  v51[4] = v41;
  v51[5] = sub_25F1632A4;
  v51[6] = v48;
  return result;
}

uint64_t sub_25F158958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) == 2)
  {
    v9 = *(a2 + *(type metadata accessor for CanvasControl(0, a4, a3, a4) + 28));
    v10 = *(sub_25F1774FC() - 8);
    v11 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    result = v9(v11);
    if (!v5)
    {
      v15 = *(a3 + *(type metadata accessor for CanvasControl(0, a5, v13, v14) + 28));
      swift_getTupleTypeMetadata2();
      return v15(v11 + *(v10 + 72));
    }
  }

  else
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds(0, TupleTypeMetadata2, v17, v18);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25F158B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49250, &qword_25F1836A8);
  sub_25F1774FC();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25F17BB70;
  v13 = type metadata accessor for CanvasControl(0, a4, v11, v12);
  (*(a2 + *(v13 + 32)))(a1);
  v16 = *(a3 + *(type metadata accessor for CanvasControl(0, a5, v14, v15) + 32));
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16(a1 + *(TupleTypeMetadata2 + 48));
  return v10;
}

uint64_t sub_25F158C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33[1] = a6;
  v33[2] = a5;
  v34 = a2;
  v12 = sub_25F1774FC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v33 - v17;
  v19 = sub_25F1777DC();
  if (v19 == 1)
  {
    v26 = sub_25F1777EC();
    sub_25F1777FC();
    v29 = type metadata accessor for CanvasControl(0, a8, v27, v28);
    sub_25F113CAC(v26 & 1, v16, a3, a4, v34, v29);
  }

  else
  {
    if (v19)
    {
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds(0, TupleTypeMetadata2, v31, v32);
      swift_getWitnessTable();
      swift_allocError();
      return swift_willThrow();
    }

    v20 = sub_25F1777EC();
    sub_25F1777FC();
    v23 = type metadata accessor for CanvasControl(0, a7, v21, v22);
    v24 = v35;
    sub_25F113CAC(v20 & 1, v18, a3, a4, v34, v23);
    if (v24)
    {
      return (*(v13 + 8))(v18, v12);
    }

    v16 = v18;
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_25F158E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v100 = a6;
  v95 = a5;
  v102 = a4;
  v98 = a3;
  v87 = a7;
  v103 = type metadata accessor for CanvasControl(0, a6, a3, a4);
  v99 = *(v103 - 8);
  v104 = *(v99 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = &v74 - v11;
  v97 = type metadata accessor for CanvasControl(0, a5, v12, v13);
  v106 = *(v97 - 8);
  v93 = v106[8];
  MEMORY[0x28223BE20](v97);
  v105 = &v74 - v14;
  v89 = type metadata accessor for CanvasControl(0, a4, v15, v16);
  v17 = *(v89 - 8);
  v91 = *(v17 + 64);
  MEMORY[0x28223BE20](v89);
  v19 = &v74 - v18;
  v96 = &v74 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49248, &qword_25F1836A0);
  v20 = sub_25F177B1C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  v86 = v24;
  *(v24 + 16) = xmmword_25F17BB80;
  v25 = v24 + v23;
  v26 = *(v21 + 16);
  v94 = a1;
  v26(v25, a1, v20);
  v90 = a2;
  v26(v25 + v22, a2, v20);
  v27 = v25 + 2 * v22;
  v28 = v98;
  v26(v27, v98, v20);
  v29 = v17;
  v30 = *(v17 + 16);
  v83 = v17 + 16;
  v84 = v30;
  v31 = v89;
  v30(v19, a1, v89);
  v32 = v106;
  v33 = v106[2];
  v80 = v106 + 2;
  v82 = v33;
  v34 = a2;
  v35 = v97;
  v33(v105, v34, v97);
  v36 = v99;
  v37 = *(v99 + 16);
  v79 = v99 + 16;
  v81 = v37;
  v37(v101, v28, v103);
  v38 = *(v17 + 80);
  v39 = *(v32 + 80);
  v40 = (v38 + 40) & ~v38;
  v92 = v40;
  v41 = *(v36 + 80);
  v42 = v36;
  v91 = (v91 + v39 + v40) & ~v39;
  v43 = v91;
  v44 = (v93 + v41 + v91) & ~v41;
  v93 = v38 | v39 | v41;
  v45 = swift_allocObject();
  v46 = v95;
  v45[2] = v102;
  v45[3] = v46;
  v45[4] = v100;
  v78 = *(v29 + 32);
  v88 = v29 + 32;
  v47 = v45;
  v85 = v45;
  v48 = v96;
  v78(v45 + v40, v96, v31);
  v49 = v106[4];
  v106 += 4;
  v77 = v49;
  v50 = v47 + v43;
  v51 = v105;
  v49(v50, v105, v35);
  v52 = *(v42 + 32);
  v99 = v42 + 32;
  v76 = v52;
  v53 = v47 + v44;
  v54 = v101;
  v55 = v103;
  v52(v53, v101, v103);
  v84(v48, v94, v31);
  v56 = v51;
  v57 = v97;
  v82(v56, v90, v97);
  v81(v54, v98, v55);
  v58 = v44;
  v75 = v44;
  v59 = swift_allocObject();
  *(v59 + 2) = v102;
  *(v59 + 3) = v46;
  *(v59 + 4) = v100;
  v60 = v78;
  v78(&v59[v92], v48, v31);
  v61 = v105;
  v62 = v57;
  v63 = v77;
  v77(&v59[v91], v105, v62);
  v64 = v76;
  v76(&v59[v58], v54, v55);
  v65 = v89;
  v60(v96, v94, v89);
  v66 = v97;
  v63(v61, v90, v97);
  v67 = v103;
  v64(v54, v98, v103);
  v68 = v75;
  v69 = swift_allocObject();
  v71 = v95;
  v70 = v96;
  *(v69 + 2) = v102;
  *(v69 + 3) = v71;
  *(v69 + 4) = v100;
  v60(&v69[v92], v70, v65);
  v63(&v69[v91], v105, v66);
  result = (v64)(&v69[v68], v101, v67);
  v73 = v87;
  *v87 = v86;
  v73[1] = sub_25F162304;
  v73[2] = v85;
  v73[3] = sub_25F162470;
  v73[4] = v59;
  v73[5] = sub_25F162B70;
  v73[6] = v69;
  return result;
}

uint64_t sub_25F159594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 16) == 3)
  {
    v11 = *(a2 + *(type metadata accessor for CanvasControl(0, a5, a3, a4) + 28));
    v12 = *(sub_25F1774FC() - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    result = v11(v13);
    if (!v7)
    {
      swift_getTupleTypeMetadata3();
      v17 = type metadata accessor for CanvasControl(0, a6, v15, v16);
      v18 = *(v12 + 72);
      (*(a3 + *(v17 + 28)))(v13 + v18);
      v21 = type metadata accessor for CanvasControl(0, a7, v19, v20);
      return (*(a4 + *(v21 + 28)))(v13 + 2 * v18);
    }
  }

  else
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds(0, TupleTypeMetadata3, v23, v24);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25F1597F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49250, &qword_25F1836A8);
  sub_25F1774FC();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25F17BB80;
  v16 = type metadata accessor for CanvasControl(0, a5, v14, v15);
  (*(a2 + *(v16 + 32)))(a1);
  v19 = *(a3 + *(type metadata accessor for CanvasControl(0, a6, v17, v18) + 32));
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v19(a1 + *(TupleTypeMetadata3 + 48));
  v23 = type metadata accessor for CanvasControl(0, a7, v21, v22);
  (*(a4 + *(v23 + 32)))(a1 + *(TupleTypeMetadata3 + 64));
  return v13;
}

uint64_t sub_25F159994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v40[1] = a6;
  v40[2] = a5;
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v11 = sub_25F1774FC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v40 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v40 - v19;
  v21 = sub_25F1777DC();
  if (v21 == 2)
  {
    v33 = sub_25F1777EC();
    sub_25F1777FC();
    v36 = type metadata accessor for CanvasControl(0, a10, v34, v35);
    sub_25F113CAC(v33 & 1, v15, v41, v42, v43, v36);
  }

  else if (v21 == 1)
  {
    v28 = sub_25F1777EC();
    sub_25F1777FC();
    v31 = type metadata accessor for CanvasControl(0, a9, v29, v30);
    v32 = v44;
    sub_25F113CAC(v28 & 1, v18, v41, v42, v43, v31);
    if (v32)
    {
      return (*(v12 + 8))(v18, v11);
    }

    v15 = v18;
  }

  else
  {
    if (v21)
    {
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds(0, TupleTypeMetadata3, v38, v39);
      swift_getWitnessTable();
      swift_allocError();
      return swift_willThrow();
    }

    v22 = sub_25F1777EC();
    sub_25F1777FC();
    v25 = type metadata accessor for CanvasControl(0, a8, v23, v24);
    v26 = v44;
    sub_25F113CAC(v22 & 1, v20, v41, v42, v43, v25);
    if (v26)
    {
      return (*(v12 + 8))(v20, v11);
    }

    v15 = v20;
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_25F159C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v123 = a5;
  v124 = a8;
  v117 = a7;
  v120 = a6;
  v103 = a9;
  v130 = type metadata accessor for CanvasControl(0, a8, a3, a4);
  v132 = *(v130 - 8);
  v122 = v132[8];
  MEMORY[0x28223BE20](v130);
  v129 = v93 - v16;
  v128 = type metadata accessor for CanvasControl(0, a7, v17, v18);
  v126 = *(v128 - 8);
  v112 = *(v126 + 64);
  MEMORY[0x28223BE20](v128);
  v119 = v93 - v19;
  v121 = type metadata accessor for CanvasControl(0, a6, v20, v21);
  v131 = *(v121 - 8);
  v109 = v131[8];
  MEMORY[0x28223BE20](v121);
  v127 = v93 - v22;
  v118 = type metadata accessor for CanvasControl(0, a5, v23, v24);
  v125 = *(v118 - 8);
  v110 = *(v125 + 64);
  MEMORY[0x28223BE20](v118);
  v108 = v93 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49248, &qword_25F1836A0);
  v26 = sub_25F177B1C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  v102 = v30;
  *(v30 + 16) = xmmword_25F183430;
  v31 = v30 + v29;
  v32 = *(v27 + 16);
  v116 = a1;
  v32(v31, a1, v26);
  v115 = a2;
  v32(v31 + v28, a2, v26);
  v114 = a3;
  v32(v31 + 2 * v28, a3, v26);
  v113 = a4;
  v32(v31 + 3 * v28, a4, v26);
  v33 = v125;
  v34 = *(v125 + 16);
  v99 = v125 + 16;
  v100 = v34;
  v35 = v108;
  v36 = a1;
  v37 = v118;
  v34(v108, v36, v118);
  v38 = v131;
  v39 = v131[2];
  v97 = v131 + 2;
  v98 = v39;
  v39(v127, a2, v121);
  v40 = v126;
  v41 = *(v126 + 16);
  v95 = v126 + 16;
  v96 = v41;
  v42 = v119;
  v41(v119, a3, v128);
  v43 = v132;
  v44 = v132[2];
  v93[1] = v132 + 2;
  v94 = v44;
  v44(v129, a4, v130);
  v45 = *(v33 + 80);
  v46 = v33;
  v47 = (v45 + 48) & ~v45;
  v48 = *(v38 + 80);
  v111 = v47;
  v50 = *(v40 + 80);
  v51 = v40;
  v110 = (v110 + v48 + v47) & ~v48;
  v49 = v110;
  v52 = (v109 + v50 + v110) & ~v50;
  v53 = *(v43 + 80);
  v105 = v52;
  v104 = (v112 + v53 + v52) & ~v53;
  v112 = v45 | v48 | v50 | v53;
  v54 = swift_allocObject();
  v55 = v120;
  *(v54 + 2) = v123;
  *(v54 + 3) = v55;
  v56 = v117;
  v57 = v124;
  *(v54 + 4) = v117;
  *(v54 + 5) = v57;
  v58 = *(v46 + 32);
  v125 = v46 + 32;
  v107 = v58;
  v59 = &v54[v47];
  v60 = v54;
  v61 = v35;
  v58(v59, v35, v37);
  v62 = v131[4];
  v131 += 4;
  v106 = v62;
  v63 = v127;
  v64 = v121;
  v62(&v60[v49], v127, v121);
  v109 = *(v51 + 32);
  v126 = v51 + 32;
  v101 = v60;
  v65 = &v60[v52];
  v66 = v42;
  v67 = v128;
  v109(v65, v42, v128);
  v93[0] = v132[4];
  v132 += 4;
  v68 = v104;
  v70 = v129;
  v69 = v130;
  (v93[0])(&v60[v104], v129, v130);
  v71 = v118;
  v100(v61, v116, v118);
  v98(v63, v115, v64);
  v96(v66, v114, v67);
  v94(v70, v113, v69);
  v72 = swift_allocObject();
  v73 = v120;
  *(v72 + 2) = v123;
  *(v72 + 3) = v73;
  v74 = v124;
  *(v72 + 4) = v56;
  *(v72 + 5) = v74;
  v75 = v107;
  v107(&v72[v111], v61, v71);
  v76 = v64;
  v77 = v106;
  v106(&v72[v110], v63, v76);
  v78 = v119;
  v79 = v128;
  v109(&v72[v105], v119, v128);
  v80 = &v72[v68];
  v81 = v93[0];
  (v93[0])(v80, v129, v130);
  v75(v61, v116, v71);
  v82 = v121;
  v77(v127, v115, v121);
  v83 = v109;
  v109(v78, v114, v79);
  v84 = v129;
  v85 = v130;
  v81(v129, v113, v130);
  v86 = v104;
  v87 = swift_allocObject();
  v88 = v120;
  *(v87 + 2) = v123;
  *(v87 + 3) = v88;
  v89 = v118;
  v90 = v124;
  *(v87 + 4) = v117;
  *(v87 + 5) = v90;
  v107(&v87[v111], v108, v89);
  v106(&v87[v110], v127, v82);
  v83(&v87[v105], v119, v128);
  result = (v81)(&v87[v86], v84, v85);
  v92 = v103;
  *v103 = v102;
  v92[1] = sub_25F161648;
  v92[2] = v101;
  v92[3] = sub_25F161810;
  v92[4] = v72;
  v92[5] = sub_25F162120;
  v92[6] = v87;
  return result;
}

uint64_t sub_25F15A574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 16) == 4)
  {
    v12 = *(a2 + *(type metadata accessor for CanvasControl(0, a6, a3, a4) + 28));
    v13 = *(sub_25F1774FC() - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    result = v12(v14);
    if (!v9)
    {
      swift_getTupleTypeMetadata();
      v18 = type metadata accessor for CanvasControl(0, a7, v16, v17);
      v19 = *(v13 + 72);
      (*(a3 + *(v18 + 28)))(v14 + v19);
      v22 = type metadata accessor for CanvasControl(0, a8, v20, v21);
      (*(a4 + *(v22 + 28)))(v14 + 2 * v19);
      v28 = type metadata accessor for CanvasControl(0, a9, v26, v27);
      return (*(a5 + *(v28 + 28)))(v14 + 3 * v19);
    }
  }

  else
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds(0, TupleTypeMetadata, v24, v25);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25F15A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49250, &qword_25F1836A8);
  sub_25F1774FC();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25F183430;
  v18 = type metadata accessor for CanvasControl(0, a6, v16, v17);
  (*(a2 + *(v18 + 32)))(a1);
  v21 = *(a3 + *(type metadata accessor for CanvasControl(0, a7, v19, v20) + 32));
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v21(a1 + TupleTypeMetadata[12]);
  v25 = type metadata accessor for CanvasControl(0, a8, v23, v24);
  (*(a4 + *(v25 + 32)))(a1 + TupleTypeMetadata[16]);
  v28 = type metadata accessor for CanvasControl(0, a9, v26, v27);
  (*(a5 + *(v28 + 32)))(a1 + TupleTypeMetadata[20]);
  return v15;
}

uint64_t sub_25F15AA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v48[3] = a6;
  v48[4] = a8;
  v48[1] = a5;
  v48[2] = a7;
  v51 = a3;
  v52 = a4;
  v53 = a2;
  v49 = a12;
  v50 = sub_25F1774FC();
  v12 = *(v50 - 8);
  v13 = MEMORY[0x28223BE20](v50);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v48 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v48 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v48 - v22;
  v24 = sub_25F1777DC();
  if (v24 <= 1)
  {
    if (!v24)
    {
      v38 = sub_25F1777EC();
      sub_25F1777FC();
      v41 = type metadata accessor for CanvasControl(0, a9, v39, v40);
      v42 = v58;
      sub_25F113CAC(v38 & 1, v23, v51, v52, v53, v41);
      if (v42)
      {
        return (*(v12 + 8))(v23, v50);
      }

      v15 = v23;
      return (*(v12 + 8))(v15, v50);
    }

    if (v24 == 1)
    {
      v25 = sub_25F1777EC();
      sub_25F1777FC();
      v28 = type metadata accessor for CanvasControl(0, a10, v26, v27);
      v29 = v58;
      sub_25F113CAC(v25 & 1, v21, v51, v52, v53, v28);
      if (v29)
      {
        return (*(v12 + 8))(v21, v50);
      }

      v15 = v21;
      return (*(v12 + 8))(v15, v50);
    }

LABEL_9:
    v54 = a9;
    v55 = a10;
    v56 = a11;
    v57 = v49;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds(0, TupleTypeMetadata, v36, v37);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  if (v24 == 2)
  {
    v43 = sub_25F1777EC();
    sub_25F1777FC();
    v46 = type metadata accessor for CanvasControl(0, a11, v44, v45);
    v47 = v58;
    sub_25F113CAC(v43 & 1, v18, v51, v52, v53, v46);
    if (v47)
    {
      return (*(v12 + 8))(v18, v50);
    }

    v15 = v18;
  }

  else
  {
    if (v24 != 3)
    {
      goto LABEL_9;
    }

    v31 = sub_25F1777EC();
    sub_25F1777FC();
    v34 = type metadata accessor for CanvasControl(0, v49, v32, v33);
    sub_25F113CAC(v31 & 1, v15, v51, v52, v53, v34);
  }

  return (*(v12 + 8))(v15, v50);
}

uint64_t CanvasControlConfigurationBuilder.One.control.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for CanvasControl(0, *(a1 + 16), a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t CanvasControlConfigurationBuilder.One.optional.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = *(a1 + 16);
  v9 = type metadata accessor for CanvasControl(255, v8, a3, a4);
  v10 = sub_25F17960C();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  v13 = *(v9 - 8);
  (*(v13 + 16))(&v15 - v11, v5, v9);
  (*(v13 + 56))(v12, 0, 1, v9);
  return sub_25F15AF28(v12, v8, *(a1 + 24), x8_0);
}

uint64_t sub_25F15AF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25F17960C();
  sub_25F112F78(a1, v8, a2, a3, a4);
  type metadata accessor for CanvasControl(255, a2, v9, v10);
  v11 = sub_25F17960C();
  v12 = *(*(v11 - 8) + 8);

  return v12(a1, v11);
}

uint64_t CanvasControlConfigurationBuilder.One.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for CanvasControl(0, v6, a2, a3);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  (*(v10 + 16))(&v14 - v8, v4);
  return sub_25F157DE0(v9, v6, v11, v12, a4);
}

uint64_t CanvasControlConfigurationBuilder.One.Optional.control.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_25F17960C();
  v7 = type metadata accessor for CanvasControl(0, v4, v5, v6);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2, v7);
}

uint64_t _s15PreviewShellKit33CanvasControlConfigurationBuilderV3OneV4noneAE8OptionalVy_x_GvgZ_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for CanvasControl(255, a1, a3, a4);
  v9 = sub_25F17960C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  (*(*(v8 - 8) + 56))(&v13 - v10, 1, 1, v8);
  return sub_25F15AF28(v11, a1, a2, a5);
}

uint64_t CanvasControlConfigurationBuilder.One.Optional.configuration.getter@<X0>(uint64_t *a2@<X8>)
{
  v4 = sub_25F17960C();
  v7 = type metadata accessor for CanvasControl(0, v4, v5, v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  (*(v10 + 16))(&v14 - v8, v2);
  return sub_25F157DE0(v9, v4, v11, v12, a2);
}

uint64_t sub_25F15B308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for CanvasControl(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t sub_25F15B398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for CanvasControlConfigurationBuilder.Two(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t CanvasControlConfigurationBuilder.Two.optional.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = a1[5];
  v4 = *(v3 + 8);
  v17 = a1[3];
  v18 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v16 - v6;
  v8 = *(a1[4] + 8);
  v9 = a1[2];
  v10 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  (*(v8 + 24))(v9, v8);
  (*(v4 + 24))(v17, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  return sub_25F15B398(v12, v7, v10, AssociatedTypeWitness, AssociatedConformanceWitness, v14, v19);
}

uint64_t static CanvasControlConfigurationBuilder.Two.none.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a4;
  v20 = a5;
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v19 - v10;
  v12 = *(a3 + 8);
  v13 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  (*(v12 + 32))(a1, v12);
  (*(v8 + 32))(a2, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  return sub_25F15B398(v15, v11, v13, AssociatedTypeWitness, AssociatedConformanceWitness, v17, v20);
}

uint64_t CanvasControlConfigurationBuilder.Two.configuration.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  v3 = a1[5];
  v4 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for CanvasControl(0, AssociatedTypeWitness, v6, v7);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = a1[4];
  v12 = a1[2];
  v13 = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for CanvasControl(0, v13, v14, v15);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v20 - v17;
  (*(v11 + 24))(v12, v11);
  (*(v3 + 24))(v4, v3);
  return sub_25F1584A0(v18, v10, v13, AssociatedTypeWitness, v21);
}

uint64_t sub_25F15B978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = a10;
  v18 = type metadata accessor for CanvasControlConfigurationBuilder.Three(0, v20);
  (*(*(a5 - 8) + 32))(a9 + *(v18 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a9 + *(v18 + 72), a3, a6);
}

uint64_t CanvasControlConfigurationBuilder.Three.optional.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = a1[7];
  v3 = a1[4];
  v23 = *(v27 + 8);
  v24 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v19 - v4;
  v25 = a1[6];
  v5 = *(v25 + 8);
  v20 = a1[3];
  v22 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v22);
  v19 = &v19 - v6;
  v7 = *(a1[5] + 8);
  v8 = a1[2];
  v9 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  (*(v7 + 24))(v8, v7);
  (*(v5 + 24))(v20, v5);
  v12 = v21;
  (*(v23 + 24))(v24);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = v22;
  v15 = swift_getAssociatedConformanceWitness();
  v16 = AssociatedTypeWitness;
  v17 = swift_getAssociatedConformanceWitness();
  return sub_25F15B978(v11, v19, v12, v9, v14, v16, AssociatedConformanceWitness, v15, v28, v17);
}

uint64_t static CanvasControlConfigurationBuilder.Three.none.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a6;
  v34 = a7;
  v31 = a5;
  v28[1] = a4;
  v12 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = v28 - v13;
  v14 = *(a5 + 8);
  v30 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v30);
  v16 = v28 - v15;
  v17 = *(a4 + 8);
  v18 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v18);
  v20 = v28 - v19;
  (*(v17 + 32))(a1, v17);
  (*(v14 + 32))(a2, v14);
  v21 = v29;
  (*(v12 + 32))(a3, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = v30;
  v24 = swift_getAssociatedConformanceWitness();
  v25 = AssociatedTypeWitness;
  v26 = swift_getAssociatedConformanceWitness();
  return sub_25F15B978(v20, v16, v21, v18, v23, v25, AssociatedConformanceWitness, v24, v34, v26);
}

uint64_t CanvasControlConfigurationBuilder.Three.configuration.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v27 = a1[7];
  v25 = a1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for CanvasControl(0, AssociatedTypeWitness, v3, v4);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = a1[6];
  v23 = a1[3];
  v24 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for CanvasControl(0, v24, v9, v10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = a1[5];
  v15 = a1[2];
  v16 = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for CanvasControl(0, v16, v17, v18);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v23 - v20;
  (*(v14 + 24))(v15, v14);
  (*(v8 + 24))(v23, v8);
  (*(v27 + 24))(v25);
  return sub_25F158E94(v21, v13, v7, v16, v24, AssociatedTypeWitness, v28);
}

uint64_t sub_25F15C1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v22[0] = a5;
  v22[1] = a6;
  v22[2] = a7;
  v22[3] = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v20 = type metadata accessor for CanvasControlConfigurationBuilder.Four(0, v22);
  (*(*(a6 - 8) + 32))(a9 + v20[21], a2, a6);
  (*(*(a7 - 8) + 32))(a9 + v20[22], a3, a7);
  return (*(*(a8 - 8) + 32))(a9 + v20[23], a4, a8);
}

uint64_t CanvasControlConfigurationBuilder.Four.optional.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v36 = a1[9];
  v3 = a1[5];
  AssociatedConformanceWitness = *(v36 + 8);
  v32 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v23 - v4;
  v34 = a1[8];
  v5 = *(v34 + 8);
  v27 = a1[4];
  v33 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v33);
  v38 = &v23 - v6;
  v29 = a1[7];
  v7 = *(v29 + 8);
  v24 = a1[3];
  v28 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v28);
  v26 = &v23 - v8;
  v9 = *(a1[6] + 8);
  v10 = a1[2];
  v25 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v25);
  v12 = &v23 - v11;
  (*(v9 + 24))(v10, v9);
  (*(v7 + 24))(v24, v7);
  (*(v5 + 24))(v27, v5);
  v13 = v30;
  (*(AssociatedConformanceWitness + 24))(v32);
  v14 = v25;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = v28;
  v16 = swift_getAssociatedConformanceWitness();
  v17 = v33;
  v18 = swift_getAssociatedConformanceWitness();
  v19 = AssociatedTypeWitness;
  v20 = swift_getAssociatedConformanceWitness();
  *(&v22 + 1) = v16;
  *&v22 = AssociatedConformanceWitness;
  return sub_25F15C1F4(v12, v26, v38, v13, v14, v15, v17, v19, v37, v22, v18, v20);
}

uint64_t static CanvasControlConfigurationBuilder.Four.none.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v46 = a8;
  v47 = a9;
  v44 = a7;
  v39 = a6;
  v33 = a2;
  v34 = a5;
  v37 = a3;
  v41 = *(a8 + 8);
  v42 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v40 = &v32 - v13;
  v14 = *(a7 + 8);
  v43 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v43);
  v35 = &v32 - v15;
  v16 = *(a6 + 8);
  v38 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v38);
  v36 = &v32 - v17;
  v18 = *(a5 + 8);
  v19 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  (*(v18 + 32))(a1, v18);
  (*(v16 + 32))(v33, v16);
  (*(v14 + 32))(v37, v14);
  v22 = v40;
  (*(v41 + 32))(v42);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = v38;
  v25 = swift_getAssociatedConformanceWitness();
  v26 = v43;
  v27 = swift_getAssociatedConformanceWitness();
  v28 = AssociatedTypeWitness;
  v29 = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedConformanceWitness;
  *(&v31 + 1) = v25;
  return sub_25F15C1F4(v21, v36, v35, v22, v19, v24, v26, v28, v47, v31, v27, v29);
}

uint64_t CanvasControlConfigurationBuilder.Four.configuration.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v37 = a1[9];
  v35 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for CanvasControl(0, AssociatedTypeWitness, v3, v4);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v29 - v6;
  v7 = a1[8];
  v31 = a1[4];
  v32 = v7;
  v33 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for CanvasControl(0, v33, v8, v9);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = a1[7];
  v29 = a1[3];
  v30 = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for CanvasControl(0, v30, v14, v15);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - v17;
  v19 = a1[6];
  v20 = a1[2];
  v21 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for CanvasControl(0, v21, v22, v23);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v29 - v25;
  (*(v19 + 24))(v20, v19);
  (*(v13 + 24))(v29, v13);
  (*(v32 + 24))(v31);
  v27 = v34;
  (*(v37 + 24))(v35);
  return sub_25F159C44(v26, v18, v12, v27, v21, v30, v33, AssociatedTypeWitness, v38);
}

uint64_t static CanvasControlConfigurationBuilder.buildExpression<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for CanvasControl(0, AssociatedTypeWitness, v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  (*(a2 + 16))(a1, a2);
  return (*(v10 + 32))(a3, v12, v9);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a4 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  (*(v13 + 16))(v16, a2, a4);
  return sub_25F15B398(v18, v16, a3, a4, a5, a6, a7);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a7;
  v30 = a8;
  v27 = a3;
  v28 = a9;
  v14 = *(a6 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  (*(v19 + 16))(v22, a2, a5);
  (*(v14 + 16))(v17, v27, a6);
  return sub_25F15B978(v24, v22, v17, a4, a5, a6, v29, v30, v28, a10);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a7;
  v31 = a9;
  v32 = a6;
  v14 = *(a5 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  (*(v19 + 16))(v22, a2, a4);
  v33[0] = a4;
  v33[1] = a5;
  v26 = v30;
  v33[2] = v30;
  v33[3] = a8;
  v27 = type metadata accessor for CanvasControlConfigurationBuilder.Two(0, v33);
  (*(v14 + 16))(v17, a2 + *(v27 + 52), a5);
  return sub_25F15B978(v24, v22, v17, a3, a4, a5, v32, v26, v31, a8);
}

{
  v33 = a9;
  v34 = a8;
  v30 = a7;
  v31 = a5;
  v32 = a2;
  v13 = *(a5 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, a1);
  v35[0] = a3;
  v35[1] = a4;
  v25 = v30;
  v35[2] = a6;
  v35[3] = v30;
  v26 = type metadata accessor for CanvasControlConfigurationBuilder.Two(0, v35);
  (*(v18 + 16))(v21, a1 + *(v26 + 52), a4);
  v27 = v31;
  (*(v13 + 16))(v16, v32, v31);
  return sub_25F15B978(v23, v21, v16, a3, a4, v27, a6, v25, v33, v34);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v38 = a8;
  v39 = a4;
  v37 = a3;
  v34 = a2;
  v41 = a9;
  v40 = a10;
  v15 = *(a8 - 8);
  v35 = a12;
  v36 = a11;
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v21);
  v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v34 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  (*(v25 + 16))(v28, v34, a6);
  (*(v20 + 16))(v23, v37, a7);
  v32 = v38;
  (*(v15 + 16))(v18, v39, v38);
  return sub_25F15C1F4(v30, v28, v23, v18, a5, a6, a7, v32, v41, v40, v36, v35);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C, D>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v47 = a8;
  v48 = a7;
  v45 = a11;
  v15 = *(a6 - 8);
  v43 = a3;
  v44 = v15;
  v46 = a9;
  v42 = a10;
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v21);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v29;
  MEMORY[0x28223BE20](v26);
  v31 = &v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31);
  v33 = a2;
  v34 = a4;
  (*(v25 + 16))(v28, v33, a4);
  v35 = v43;
  (*(v20 + 16))(v23, v43, a5);
  v49[0] = a5;
  v49[1] = a6;
  v36 = v42;
  v37 = v45;
  v49[2] = v42;
  v49[3] = v45;
  v38 = type metadata accessor for CanvasControlConfigurationBuilder.Two(0, v49);
  (*(v44 + 16))(v18, v35 + *(v38 + 52), a6);
  *(&v40 + 1) = v46;
  *&v40 = v48;
  return sub_25F15C1F4(v31, v28, v23, v18, v41, v34, a5, a6, v47, v40, v36, v37);
}

{
  v44 = a8;
  v45 = a7;
  v41 = a6;
  v42 = a3;
  v43 = a11;
  v40 = *(a6 - 8);
  v38 = a10;
  v14 = MEMORY[0x28223BE20](a1);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v26;
  MEMORY[0x28223BE20](v23);
  v28 = &v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  (*(v22 + 16))(v25, a2, a4);
  v46[0] = a4;
  v46[1] = a5;
  v30 = v38;
  v46[2] = a9;
  v46[3] = v38;
  v31 = type metadata accessor for CanvasControlConfigurationBuilder.Two(0, v46);
  (*(v17 + 16))(v20, a2 + *(v31 + 52), a5);
  v32 = v39;
  v33 = v41;
  (*(v40 + 16))(v39, v42, v41);
  *(&v35 + 1) = a9;
  *&v35 = v45;
  return sub_25F15C1F4(v28, v25, v20, v32, v37, a4, a5, v33, v44, v35, v30, v43);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C, D>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v46 = a8;
  v47 = a6;
  v45 = *(a5 - 8);
  v43 = a10;
  v15 = MEMORY[0x28223BE20](a1);
  v44 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v42 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v19);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v26;
  MEMORY[0x28223BE20](v23);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  v30 = *(v22 + 16);
  v40 = a3;
  v30(v25, a2, a3);
  v48[0] = a3;
  v48[1] = a4;
  v48[2] = a5;
  v48[3] = a7;
  v31 = a5;
  v32 = v43;
  v48[4] = a9;
  v48[5] = v43;
  v33 = type metadata accessor for CanvasControlConfigurationBuilder.Three(0, v48);
  v34 = *(v18 + 16);
  v35 = v42;
  v34(v42, a2 + *(v33 + 68), a4);
  v36 = *(v33 + 72);
  v37 = v44;
  (*(v45 + 16))(v44, a2 + v36, v31);
  *(&v39 + 1) = a7;
  *&v39 = v47;
  return sub_25F15C1F4(v28, v25, v35, v37, v41, v40, a4, v31, v46, v39, a9, v32);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C, D>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a7;
  v45 = a3;
  v39 = a6;
  v43 = a2;
  v47 = a9;
  v46 = a12;
  v41 = *(a7 - 8);
  v42 = a11;
  v16 = MEMORY[0x28223BE20](a1);
  v40 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v20);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, a1, v31);
  v48[0] = a4;
  v48[1] = a5;
  v48[2] = a8;
  v48[3] = a10;
  v32 = type metadata accessor for CanvasControlConfigurationBuilder.Two(0, v48);
  (*(v24 + 16))(v27, a1 + *(v32 + 52), a5);
  v33 = v39;
  (*(v19 + 16))(v22, v43, v39);
  v34 = v40;
  v35 = v44;
  (*(v41 + 16))(v40, v45, v44);
  *(&v37 + 1) = a10;
  *&v37 = a8;
  return sub_25F15C1F4(v29, v27, v22, v34, a4, a5, v33, v35, v47, v37, v42, v46);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C, D>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v45 = a8;
  v46 = a6;
  v48 = a2;
  v52 = a9;
  v51 = *(a6 - 8);
  v49 = a11;
  v47 = a10;
  v16 = MEMORY[0x28223BE20](a1);
  v50 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v20);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, a1);
  v53 = a3;
  v54 = a4;
  v43 = a4;
  v32 = v45;
  v55 = a7;
  v56 = v45;
  v33 = type metadata accessor for CanvasControlConfigurationBuilder.Two(0, &v53);
  (*(v24 + 16))(v27, a1 + *(v33 + 52), a4);
  v34 = v48;
  v35 = a5;
  (*(v19 + 16))(v22, v48, a5);
  v36 = v46;
  v37 = v47;
  v53 = a5;
  v54 = v46;
  v38 = v49;
  v55 = v47;
  v56 = v49;
  v39 = v34 + *(type metadata accessor for CanvasControlConfigurationBuilder.Two(0, &v53) + 52);
  v40 = v50;
  (*(v51 + 16))(v50, v39, v36);
  *&v42 = a7;
  *(&v42 + 1) = v32;
  return sub_25F15C1F4(v30, v27, v22, v40, v44, v43, v35, v36, v52, v42, v37, v38);
}

{
  v40 = a7;
  v47 = a6;
  v48 = a2;
  v49 = a9;
  v45 = *(a6 - 8);
  v46 = a11;
  v43 = a10;
  v17 = MEMORY[0x28223BE20](a1);
  v44 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v17);
  v42 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v21);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, a1);
  v50[0] = a3;
  v50[1] = a4;
  v50[2] = a5;
  v50[3] = a7;
  v32 = a8;
  v50[4] = a8;
  v33 = v43;
  v50[5] = v43;
  v34 = type metadata accessor for CanvasControlConfigurationBuilder.Three(0, v50);
  (*(v24 + 16))(v27, a1 + *(v34 + 68), a4);
  v35 = v42;
  (*(v20 + 16))(v42, a1 + *(v34 + 72), a5);
  v36 = v44;
  v37 = v47;
  (*(v45 + 16))(v44, v48, v47);
  *(&v39 + 1) = v32;
  *&v39 = v40;
  return sub_25F15C1F4(v30, v27, v35, v36, v41, a4, a5, v37, v49, v39, v33, v46);
}

uint64_t static CanvasControlConfigurationBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v25 = a4;
  v8 = type metadata accessor for CanvasControlConfigurationBuilder.One(255, a2, a3, a5);
  v9 = sub_25F17960C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v14 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional(255, a2, a3, v13);
  v15 = sub_25F17960C();
  v24 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  (*(v10 + 16))(v12, a1, v9);
  v18 = *(v8 - 8);
  if ((*(v18 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    v21 = *(v14 - 8);
    (*(v21 + 56))(v17, 1, 1, v14);
    static CanvasControlConfigurationBuilder.One.none.getter();
    result = (*(v21 + 48))(v17, 1, v14);
    if (result != 1)
    {
      return (*(v24 + 8))(v17, v15);
    }
  }

  else
  {
    CanvasControlConfigurationBuilder.One.optional.getter(v8, v19, v20, v17);
    (*(v18 + 8))(v12, v8);
    v23 = *(v14 - 8);
    (*(v23 + 56))(v17, 0, 1, v14);
    return (*(v23 + 32))(v25, v17, v14);
  }

  return result;
}

uint64_t static CanvasControlConfigurationBuilder.buildOptional<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a1;
  v38 = a6;
  v10 = type metadata accessor for CanvasControlConfigurationBuilder.One(255, a2, a4, a4);
  v12 = type metadata accessor for CanvasControlConfigurationBuilder.One(255, a3, a5, v11);
  WitnessTable = swift_getWitnessTable();
  v39 = v10;
  v40 = v12;
  v35 = swift_getWitnessTable();
  v36 = WitnessTable;
  v41 = WitnessTable;
  v42 = v35;
  v14 = type metadata accessor for CanvasControlConfigurationBuilder.Two(255, &v39);
  v15 = sub_25F17960C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v20 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional(255, a2, a4, v19);
  v22 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional(255, a3, a5, v21);
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v39 = v20;
  v40 = v22;
  v41 = v23;
  v42 = v24;
  v25 = type metadata accessor for CanvasControlConfigurationBuilder.Two(255, &v39);
  v26 = sub_25F17960C();
  v34 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v33 - v27;
  (*(v16 + 16))(v18, v37, v15);
  v29 = *(v14 - 1);
  if ((*(v29 + 48))(v18, 1, v14) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v30 = *(v25 - 8);
    (*(v30 + 56))(v28, 1, 1, v25);
    static CanvasControlConfigurationBuilder.Two.none.getter(v10, v12, v36, v35, v38);
    result = (*(v30 + 48))(v28, 1, v25);
    if (result != 1)
    {
      return (*(v34 + 8))(v28, v26);
    }
  }

  else
  {
    CanvasControlConfigurationBuilder.Two.optional.getter(v14, v28);
    (*(v29 + 8))(v18, v14);
    v32 = *(v25 - 8);
    (*(v32 + 56))(v28, 0, 1, v25);
    return (*(v32 + 32))(v38, v28, v25);
  }

  return result;
}

uint64_t static CanvasControlConfigurationBuilder.buildOptional<A, B, C>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a4;
  v51 = a7;
  v52 = a1;
  v53 = a8;
  v14 = type metadata accessor for CanvasControlConfigurationBuilder.One(255, a2, a5, a4);
  v16 = type metadata accessor for CanvasControlConfigurationBuilder.One(255, a3, a6, v15);
  v18 = type metadata accessor for CanvasControlConfigurationBuilder.One(255, a4, a7, v17);
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v48 = v16;
  v49 = v14;
  v54 = v14;
  v55 = v16;
  v46 = WitnessTable;
  v47 = v18;
  v56 = v18;
  v57 = WitnessTable;
  v44 = swift_getWitnessTable();
  v45 = v20;
  v58 = v20;
  v59 = v44;
  v21 = type metadata accessor for CanvasControlConfigurationBuilder.Three(255, &v54);
  v22 = sub_25F17960C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v44 - v24;
  v27 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional(255, a2, a5, v26);
  v29 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional(255, a3, a6, v28);
  v31 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional(255, v50, v51, v30);
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v54 = v27;
  v55 = v29;
  v56 = v31;
  v57 = v32;
  v58 = v33;
  v59 = v34;
  v35 = type metadata accessor for CanvasControlConfigurationBuilder.Three(255, &v54);
  v36 = sub_25F17960C();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v44 - v38;
  (*(v23 + 16))(v25, v52, v22);
  v40 = *(v21 - 1);
  if ((*(v40 + 48))(v25, 1, v21) == 1)
  {
    (*(v23 + 8))(v25, v22);
    v41 = *(v35 - 8);
    (*(v41 + 56))(v39, 1, 1, v35);
    static CanvasControlConfigurationBuilder.Three.none.getter(v49, v48, v47, v46, v45, v44, v53);
    result = (*(v41 + 48))(v39, 1, v35);
    if (result != 1)
    {
      return (*(v37 + 8))(v39, v36);
    }
  }

  else
  {
    CanvasControlConfigurationBuilder.Three.optional.getter(v21, v39);
    (*(v40 + 8))(v25, v21);
    v43 = *(v35 - 8);
    (*(v43 + 56))(v39, 0, 1, v35);
    return (*(v43 + 32))(v53, v39, v35);
  }

  return result;
}

uint64_t static CanvasControlConfigurationBuilder.buildOptional<A, B, C, D>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v63 = a8;
  v64 = a5;
  v60 = a7;
  v61 = a4;
  v59 = a3;
  v65 = a1;
  v66 = a9;
  v62 = a10;
  v17 = type metadata accessor for CanvasControlConfigurationBuilder.One(255, a2, a6, a4);
  v55 = type metadata accessor for CanvasControlConfigurationBuilder.One(255, a3, a7, v18);
  v56 = v17;
  v67 = v17;
  v68 = v55;
  v54 = type metadata accessor for CanvasControlConfigurationBuilder.One(255, a4, a8, v19);
  v69 = v54;
  v70 = type metadata accessor for CanvasControlConfigurationBuilder.One(255, a5, a10, v20);
  v53 = v70;
  WitnessTable = swift_getWitnessTable();
  v71 = WitnessTable;
  v72 = swift_getWitnessTable();
  v51 = v72;
  v50 = swift_getWitnessTable();
  v73 = v50;
  v74 = swift_getWitnessTable();
  v49 = v74;
  v58 = type metadata accessor for CanvasControlConfigurationBuilder.Four(255, &v67);
  v21 = sub_25F17960C();
  v57 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v25 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional(255, a2, a6, v24);
  v27 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional(255, v59, v60, v26);
  v29 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional(255, v61, v63, v28);
  v31 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional(255, v64, v62, v30);
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v67 = v25;
  v68 = v27;
  v69 = v29;
  v70 = v31;
  v36 = v21;
  v71 = v32;
  v72 = v33;
  v38 = v57;
  v37 = v58;
  v73 = v34;
  v74 = v35;
  v39 = type metadata accessor for CanvasControlConfigurationBuilder.Four(255, &v67);
  v40 = sub_25F17960C();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v48 - v42;
  (*(v38 + 16))(v23, v65, v36);
  v44 = *(v37 - 1);
  if ((*(v44 + 48))(v23, 1, v37) == 1)
  {
    (*(v38 + 8))(v23, v36);
    v45 = *(v39 - 8);
    (*(v45 + 56))(v43, 1, 1, v39);
    static CanvasControlConfigurationBuilder.Four.none.getter(v56, v55, v54, v53, WitnessTable, v51, v50, v49, v66);
    result = (*(v45 + 48))(v43, 1, v39);
    if (result != 1)
    {
      return (*(v41 + 8))(v43, v40);
    }
  }

  else
  {
    CanvasControlConfigurationBuilder.Four.optional.getter(v37, v43);
    (*(v44 + 8))(v23, v37);
    v47 = *(v39 - 8);
    (*(v47 + 56))(v43, 0, 1, v39);
    return (*(v47 + 32))(v66, v43, v39);
  }

  return result;
}

uint64_t sub_25F15FCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F15FCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F15FD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F15FD58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25F15FDA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F15FE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CanvasControl(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F15FEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CanvasControl(0, *(a3 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_25F15FF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CanvasControl(0, *(a4 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_25F15FFE0(uint64_t a1)
{
  v1 = sub_25F17960C();
  result = type metadata accessor for CanvasControl(319, v1, v2, v3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F160070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F17960C();
  v8 = type metadata accessor for CanvasControl(0, v5, v6, v7);
  v9 = *(*(v8 - 8) + 48);

  return v9(a1, a2, v8);
}

uint64_t sub_25F160100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25F17960C();
  v9 = type metadata accessor for CanvasControl(0, v6, v7, v8);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, a2, a2, v9);
}

uint64_t sub_25F160188(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F160214(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_25F1603F0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_25F1606B4(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25F16075C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_25F160A14(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_25F160D88(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F160E4C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 84);
  v9 = *(a3[4] - 8);
  if (v8 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v9 + 84);
  if (v11 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = a3[5];
  v14 = *(v13 - 8);
  v15 = *(v7 + 80);
  v16 = *(*(a3[3] - 8) + 64);
  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v14 + 80);
  if (*(v14 + 84) <= v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = *(v14 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(*(a3[2] - 8) + 64) + v15;
  v22 = a2 - v20;
  if (a2 <= v20)
  {
    goto LABEL_34;
  }

  v23 = ((v18 + v19 + ((v16 + v17 + (v21 & ~v15)) & ~v17)) & ~v19) + *(*(v13 - 8) + 64);
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v26 = ((v22 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v26))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v26 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v26 < 2)
    {
LABEL_33:
      if (v20)
      {
LABEL_34:
        if (v6 == v20)
        {
          v30 = *(v5 + 48);

          return v30();
        }

        else
        {
          v32 = (a1 + v21) & ~v15;
          if (v8 == v20)
          {
            v33 = *(v7 + 48);
            v34 = *(v7 + 84);
            v35 = a3[3];
          }

          else
          {
            v32 = (v32 + v16 + v17) & ~v17;
            if (v11 == v20)
            {
              v33 = *(*(a3[4] - 8) + 48);
              v34 = v11;
              v35 = a3[4];
            }

            else
            {
              v36 = ~v19;
              v37 = v32 + v18 + v19;
              v33 = *(v14 + 48);
              v32 = v37 & v36;
              v34 = *(v14 + 84);
              v35 = a3[5];
            }
          }

          return v33(v32, v34, v35);
        }
      }

      return 0;
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_33;
  }

LABEL_20:
  v27 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v27 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v28 = ((v18 + v19 + ((v16 + v17 + (v21 & ~v15)) & ~v17)) & ~v19) + *(*(v13 - 8) + 64);
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v20 + (v29 | v27) + 1;
}

char *sub_25F1611F4(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[4];
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a4[5] - 8);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(a4[3] - 8) + 64);
  v18 = *(v11 + 80);
  v19 = *(*(v7 - 8) + 64);
  v20 = *(v14 + 80);
  if (*(v14 + 84) <= v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = *(v14 + 84);
  }

  v22 = v15 + v16;
  v23 = ((v19 + v20 + ((v17 + v18 + ((v15 + v16) & ~v16)) & ~v18)) & ~v20) + *(v14 + 64);
  v24 = a3 >= v21;
  v25 = a3 - v21;
  if (v25 != 0 && v24)
  {
    if (v23 <= 3)
    {
      v30 = ((v25 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v30))
      {
        v26 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v26 = v31;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v21 < a2)
  {
    v27 = ~v21 + a2;
    if (v23 < 4)
    {
      v29 = (v27 >> (8 * v23)) + 1;
      if (v23)
      {
        v32 = v27 & ~(-1 << (8 * v23));
        v33 = result;
        bzero(result, v23);
        result = v33;
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *v33 = v32;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *&result[v23] = v29;
              }

              else
              {
                *&result[v23] = v29;
              }

              return result;
            }
          }

          else
          {
            *v33 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v33 = v32;
        v33[2] = BYTE2(v32);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v28 = result;
      bzero(result, v23);
      result = v28;
      *v28 = v27;
      v29 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      result[v23] = v29;
    }

    return result;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&result[v23] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *&result[v23] = 0;
LABEL_36:
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!v26)
  {
    goto LABEL_36;
  }

  result[v23] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_37:
  if (v6 == v21)
  {
    v34 = *(v5 + 56);

    return v34();
  }

  else
  {
    v35 = &result[v22] & ~v16;
    if (v9 == v21)
    {
      v36 = *(v8 + 56);
    }

    else
    {
      v35 = (v35 + v17 + v18) & ~v18;
      if (v12 == v21)
      {
        v36 = *(v11 + 56);
      }

      else
      {
        v37 = v35 + v19 + v20;
        v36 = *(v14 + 56);
        v35 = v37 & ~v20;
      }
    }

    return v36(v35);
  }
}

uint64_t sub_25F161648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for CanvasControl(0, v5, a3, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v14 = *(type metadata accessor for CanvasControl(0, v6, v12, v13) - 8);
  v15 = (v10 + v11 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v14 + 64);
  v19 = *(type metadata accessor for CanvasControl(0, v7, v17, v18) - 8);
  v20 = (v15 + v16 + *(v19 + 80)) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v24 = *(type metadata accessor for CanvasControl(0, v8, v22, v23) - 8);
  return sub_25F15A574(a1, v4 + v10, v4 + v15, v4 + v20, v4 + ((v20 + v21 + *(v24 + 80)) & ~*(v24 + 80)), v5, v6, v7, v8);
}

uint64_t sub_25F161810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];
  v10 = *(type metadata accessor for CanvasControl(0, v6, a3, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v15 = *(type metadata accessor for CanvasControl(0, v7, v13, v14) - 8);
  v16 = (v11 + v12 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v20 = *(type metadata accessor for CanvasControl(0, v8, v18, v19) - 8);
  v21 = (v16 + v17 + *(v20 + 80)) & ~*(v20 + 80);
  v22 = *(v20 + 64);
  v25 = *(type metadata accessor for CanvasControl(0, v9, v23, v24) - 8);
  return sub_25F15A888(a1, v4 + v11, v4 + v16, v4 + v21, v4 + ((v21 + v22 + *(v25 + 80)) & ~*(v25 + 80)), v6, v7, v8, v9);
}

uint64_t objectdestroyTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(v4 + 2);
  v59 = *(v4 + 3);
  v7 = *(v4 + 4);
  v8 = *(v4 + 5);
  v9 = (type metadata accessor for CanvasControl(0, v6, a3, a4) - 8);
  v68 = *(*v9 + 80);
  v10 = (v68 + 48) & ~v68;
  v11 = *(*v9 + 64);
  v14 = type metadata accessor for CanvasControl(0, v59, v12, v13);
  v67 = *(*(v14 - 8) + 80);
  v15 = (v10 + v11 + v67) & ~v67;
  v16 = *(*(v14 - 8) + 64);
  v62 = v7;
  v60 = type metadata accessor for CanvasControl(0, v7, v17, v18);
  v66 = *(*(v60 - 8) + 80);
  v58 = (v15 + v16 + v66) & ~v66;
  v19 = *(*(v60 - 8) + 64);
  v65 = v8;
  v61 = type metadata accessor for CanvasControl(0, v8, v20, v21);
  v64 = *(*(v61 - 8) + 80);
  v22 = v19 + v64;
  v63 = *(*(v61 - 8) + 64);
  v23 = &v4[v10];
  v24 = sub_25F177B1C();
  v25 = *(*(v24 - 8) + 8);
  v25(v23, v24);

  v26 = &v23[v9[12]];
  v29 = type metadata accessor for ThumbnailHostFactory(0, v6, v27, v28);
  v30 = (*(*(v29 - 8) + 48))(v26, 1, v29);
  v31 = v58;
  if (!v30)
  {
    v32 = sub_25F1777BC();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v26, 1, v32))
    {
      (*(v33 + 8))(v26, v32);
    }

    v31 = v58;
    v22 = v19 + v64;
  }

  v34 = v31 + v22;
  v35 = v31;
  v25(&v5[v15], v24);

  v36 = &v5[v15 + *(v14 + 40)];
  v39 = type metadata accessor for ThumbnailHostFactory(0, v59, v37, v38);
  v40 = v35;
  v41 = v25;
  if (!(*(*(v39 - 8) + 48))(v36, 1, v39))
  {
    v42 = sub_25F1777BC();
    v43 = *(v42 - 8);
    if (!(*(v43 + 48))(v36, 1, v42))
    {
      (*(v43 + 8))(v36, v42);
    }
  }

  v44 = v34 & ~v64;
  v41(&v5[v40], v24);

  v45 = &v5[v40 + *(v60 + 40)];
  v48 = type metadata accessor for ThumbnailHostFactory(0, v62, v46, v47);
  if (!(*(*(v48 - 8) + 48))(v45, 1, v48))
  {
    v49 = sub_25F1777BC();
    v50 = *(v49 - 8);
    if (!(*(v50 + 48))(v45, 1, v49))
    {
      (*(v50 + 8))(v45, v49);
    }
  }

  v41(&v5[v44], v24);

  v51 = &v5[v44 + *(v61 + 40)];
  v54 = type metadata accessor for ThumbnailHostFactory(0, v65, v52, v53);
  if (!(*(*(v54 - 8) + 48))(v51, 1, v54))
  {
    v55 = sub_25F1777BC();
    v56 = *(v55 - 8);
    if (!(*(v56 + 48))(v51, 1, v55))
    {
      (*(v56 + 8))(v51, v55);
    }
  }

  return MEMORY[0x2821FE8E8](v5, v44 + v63, v68 | v67 | v66 | v64 | 7);
}

uint64_t sub_25F162120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v8 = v4[4];
  v7 = v4[5];
  v9 = *(type metadata accessor for CanvasControl(0, v5, a3, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v14 = *(type metadata accessor for CanvasControl(0, v6, v12, v13) - 8);
  v15 = (v10 + v11 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v14 + 64);
  v19 = *(type metadata accessor for CanvasControl(0, v8, v17, v18) - 8);
  v20 = (v15 + v16 + *(v19 + 80)) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v24 = *(type metadata accessor for CanvasControl(0, v7, v22, v23) - 8);
  return sub_25F15AA68(a1, a2, a3, a4, v4 + v10, v4 + v15, v4 + v20, v4 + ((v20 + v21 + *(v24 + 80)) & ~*(v24 + 80)), v5, v6, v8, v7);
}

uint64_t sub_25F162304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = *(type metadata accessor for CanvasControl(0, v6, a3, a4) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v14 = *(type metadata accessor for CanvasControl(0, v7, v12, v13) - 8);
  v15 = (v10 + v11 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v14 + 64);
  v19 = *(type metadata accessor for CanvasControl(0, v8, v17, v18) - 8);
  return sub_25F159594(a1, v4 + v10, v4 + v15, v4 + ((v15 + v16 + *(v19 + 80)) & ~*(v19 + 80)), v6, v7, v8);
}

uint64_t sub_25F162470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = *(type metadata accessor for CanvasControl(0, v6, a3, a4) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v14 = *(type metadata accessor for CanvasControl(0, v7, v12, v13) - 8);
  v15 = (v10 + v11 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v14 + 64);
  v19 = *(type metadata accessor for CanvasControl(0, v8, v17, v18) - 8);
  v20 = v4 + ((v15 + v16 + *(v19 + 80)) & ~*(v19 + 80));

  return sub_25F1597F4(a1, v4 + v10, v4 + v15, v20, v6, v7, v8);
}

uint64_t objectdestroy_48Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(v5 + 32);
  v9 = (type metadata accessor for CanvasControl(0, v7, a3, a4) - 8);
  v52 = *(*v9 + 80);
  v10 = (v52 + 40) & ~v52;
  v11 = *(*v9 + 64);
  v14 = type metadata accessor for CanvasControl(0, v6, v12, v13);
  v51 = *(*(v14 - 8) + 80);
  v15 = (v10 + v11 + v51) & ~v51;
  v16 = *(*(v14 - 8) + 64);
  v49 = v8;
  v19 = type metadata accessor for CanvasControl(0, v8, v17, v18);
  v47 = *(*(v19 - 8) + 80);
  v48 = v19;
  v20 = v15 + v16 + v47;
  v50 = *(*(v19 - 8) + 64);
  v21 = v5 + v10;
  v22 = sub_25F177B1C();
  v23 = *(*(v22 - 8) + 8);
  v23(v21, v22);

  v24 = v21 + v9[12];
  v27 = type metadata accessor for ThumbnailHostFactory(0, v7, v25, v26);
  if (!(*(*(v27 - 8) + 48))(v24, 1, v27))
  {
    v46 = v5;
    v28 = sub_25F1777BC();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v24, 1, v28))
    {
      (*(v29 + 8))(v24, v28);
    }

    v5 = v46;
  }

  v30 = v47;
  v31 = v20 & ~v47;
  v23(v5 + v15, v22);

  v32 = v5 + v15 + *(v14 + 40);
  v35 = type metadata accessor for ThumbnailHostFactory(0, v6, v33, v34);
  if (!(*(*(v35 - 8) + 48))(v32, 1, v35))
  {
    v36 = sub_25F1777BC();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v32, 1, v36))
    {
      (*(v37 + 8))(v32, v36);
    }

    v30 = v47;
  }

  v23(v5 + v31, v22);

  v38 = v5 + v31 + *(v48 + 40);
  v41 = type metadata accessor for ThumbnailHostFactory(0, v49, v39, v40);
  if (!(*(*(v41 - 8) + 48))(v38, 1, v41))
  {
    v42 = v31;
    v43 = sub_25F1777BC();
    v44 = *(v43 - 8);
    if (!(*(v44 + 48))(v38, 1, v43))
    {
      (*(v44 + 8))(v38, v43);
    }

    v31 = v42;
  }

  return MEMORY[0x2821FE8E8](v5, v31 + v50, v52 | v51 | v30 | 7);
}

uint64_t sub_25F162B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = *(type metadata accessor for CanvasControl(0, v7, a3, a4) - 8);
  v11 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v15 = *(type metadata accessor for CanvasControl(0, v8, v13, v14) - 8);
  v16 = (v11 + v12 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v20 = *(type metadata accessor for CanvasControl(0, v9, v18, v19) - 8);
  return sub_25F159994(a1, a2, a3, a4, v4 + v11, v4 + v16, v4 + ((v16 + v17 + *(v20 + 80)) & ~*(v20 + 80)), v7, v8, v9);
}

uint64_t sub_25F162CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for CanvasControl(0, v6, a3, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v13 = *(type metadata accessor for CanvasControl(0, v7, v11, v12) - 8);
  return sub_25F158958(a1, v4 + v9, v4 + ((v9 + v10 + *(v13 + 80)) & ~*(v13 + 80)), v6, v7);
}

uint64_t sub_25F162DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for CanvasControl(0, v6, a3, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v13 = *(type metadata accessor for CanvasControl(0, v7, v11, v12) - 8);
  v14 = v4 + ((v9 + v10 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_25F158B20(a1, v4 + v9, v14, v6, v7);
}

uint64_t objectdestroy_57Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = (type metadata accessor for CanvasControl(0, v6, a3, a4) - 8);
  v8 = *(*v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(*v7 + 64);
  v33 = v5;
  v13 = type metadata accessor for CanvasControl(0, v5, v11, v12);
  v35 = *(*(v13 - 8) + 80);
  v14 = (v9 + v10 + v35) & ~v35;
  v34 = *(*(v13 - 8) + 64);
  v15 = sub_25F177B1C();
  v16 = *(*(v15 - 8) + 8);
  v16(v4 + v9, v15);

  v17 = v4 + v9 + v7[12];
  v18 = v8;
  v21 = type metadata accessor for ThumbnailHostFactory(0, v6, v19, v20);
  if (!(*(*(v21 - 8) + 48))(v17, 1, v21))
  {
    v22 = v16;
    v32 = v18;
    v23 = sub_25F1777BC();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v17, 1, v23))
    {
      (*(v24 + 8))(v17, v23);
    }

    v18 = v32;
    v16 = v22;
  }

  v16(v4 + v14, v15);

  v25 = v4 + v14 + *(v13 + 40);
  v28 = type metadata accessor for ThumbnailHostFactory(0, v33, v26, v27);
  if (!(*(*(v28 - 8) + 48))(v25, 1, v28))
  {
    v29 = sub_25F1777BC();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v25, 1, v29))
    {
      (*(v30 + 8))(v25, v29);
    }
  }

  return MEMORY[0x2821FE8E8](v4, v14 + v34, v18 | v35 | 7);
}

uint64_t sub_25F1632A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for CanvasControl(0, v9, a3, a4) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v16 = *(type metadata accessor for CanvasControl(0, v10, v14, v15) - 8);
  return sub_25F158C68(a1, a2, a3, a4, v4 + v12, v4 + ((v12 + v13 + *(v16 + 80)) & ~*(v16 + 80)), v9, v10);
}

uint64_t sub_25F1633BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(type metadata accessor for CanvasControl(0, v6, a3, a4) - 8);
  return sub_25F15811C(a1, v4 + ((*(v7 + 80) + 24) & ~*(v7 + 80)), v6, v8);
}

uint64_t sub_25F163444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(type metadata accessor for CanvasControl(0, v6, a3, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_25F15821C(a1, v8, v6);
}

uint64_t objectdestroy_66Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for CanvasControl(0, v5, a3, a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 24) & ~v7;
  v9 = *(*v6 + 64);
  v10 = sub_25F177B1C();
  (*(*(v10 - 8) + 8))(v4 + v8, v10);

  v11 = v4 + v8 + v6[12];
  v14 = type metadata accessor for ThumbnailHostFactory(0, v5, v12, v13);
  if (!(*(*(v14 - 8) + 48))(v11, 1, v14))
  {
    v15 = sub_25F1777BC();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v11, 1, v15))
    {
      (*(v16 + 8))(v11, v15);
    }
  }

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_25F1636CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(type metadata accessor for CanvasControl(0, v9, a3, a4) - 8);
  return sub_25F15830C(a1, a2, a3, a4, v4 + ((*(v10 + 80) + 24) & ~*(v10 + 80)), v9);
}

unint64_t sub_25F16376C()
{
  result = qword_27FD49260[0];
  if (!qword_27FD49260[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD49258, &unk_25F1836B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD49260);
  }

  return result;
}

uint64_t sub_25F163800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_25F1683C4(v3, &v15 - v9);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(a1 + 16);
  (*(v6 + 32))(v12 + v11, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v13 = sub_25F17960C();
  return sub_25F163E74(v10, &unk_25F183950, v12, v13, a2);
}

uint64_t sub_25F1639A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v6 = *(a2 + a3 - 8);
  v7 = (a1 + *(type metadata accessor for ThumbnailHostFactory(0, v6, a3, a5) + 28));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v9;
  v10[4] = v8;
  *a4 = &unk_25F183928;
  a4[1] = v10;
}

uint64_t sub_25F163A34(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F0BF3E4;

  return v9(a1, v5, v6);
}

uint64_t sub_25F163B40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v11 = (a2 + *(type metadata accessor for ThumbnailHostFactory(0, v5, v9, v10) + 28));

  *v11 = &unk_25F183918;
  v11[1] = v8;
  return result;
}

uint64_t sub_25F163BD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v8 = a4 + *a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_25F163CE4;

  return (v8)(a1, v4 + 2);
}

uint64_t sub_25F163CE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ThumbnailHostFactory.makeHost.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t ThumbnailHostFactory.makeHost.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_25F163E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25F1777BC();
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  sub_25F1692E8(a1, a5);
  result = type metadata accessor for ThumbnailHostFactory(0, a4, v11, v12);
  v14 = (a5 + *(result + 28));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t sub_25F163F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  sub_25F17930C();
  v5[12] = sub_25F1792FC();
  v7 = sub_25F1792CC();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x2822009F8](sub_25F163FB8, v7, v6);
}

uint64_t sub_25F163FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[10];
  v6 = (v5 + *(type metadata accessor for ThumbnailHostFactory(0, v4[11], a3, a4) + 28));
  v11 = (*v6 + **v6);
  v7 = swift_task_alloc();
  v4[15] = v7;
  *v7 = v4;
  v7[1] = sub_25F1640C0;
  v8 = v4[8];
  v9 = v4[9];

  return v11(v4 + 2, v8, v9);
}

uint64_t sub_25F1640C0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_25F16429C;
  }

  else
  {
    v5 = sub_25F1641FC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F1641FC()
{
  v1 = v0[7];

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_25F164300(v2, v3, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_25F16429C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F164300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v13 = a1;
  v14 = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a3[3] = type metadata accessor for OptionalStateWrapper(0, AssociatedTypeWitness, v8, v9);
  a3[4] = swift_getWitnessTable();
  v10 = swift_allocObject();
  *a3 = v10;
  return sub_25F0C0C84(&v12, v10 + 16);
}

uint64_t static ThumbnailHostFactory.localHostFactory(expectedGeometry:makeViewController:displayThumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a4;
  v15[4] = a5;

  static ThumbnailHostFactory.localHostFactory<A>(expectedGeometry:context:makeViewController:displayThumbnail:)(a1, sub_25F164528, v14, &unk_25F183738, v15, a6, MEMORY[0x277D84F78] + 8, a7);
}

uint64_t sub_25F1644F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F164558(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_25F17930C();
  v4[3] = sub_25F1792FC();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_25F164684;

  return v10(a1, a3);
}

uint64_t sub_25F164684(double a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_25F1792CC();
    v7 = v6;
    v8 = sub_25F134370;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_25F1792CC();
    v7 = v9;
    v8 = sub_25F164804;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_25F164804()
{

  v1 = *(v0 + 8);
  v2.n128_u64[0] = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_25F16486C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F1648A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 24);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F169AA0;

  return sub_25F164558(a1, a2, a3, v8);
}

uint64_t static ThumbnailHostFactory.localHostFactory<A>(expectedGeometry:context:makeViewController:displayThumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v26 = a2;
  v27 = a4;
  v28 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = swift_allocObject();
  sub_25F167EA8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v19 = sub_25F17925C();
  v20 = sub_25F1680D8(v19, v18, TupleTypeMetadata2, MEMORY[0x277D837E0]);

  *(v16 + 16) = v20;
  sub_25F1683C4(a1, v15);
  v21 = swift_allocObject();
  v21[2] = a6;
  v21[3] = a7;
  v23 = v26;
  v22 = v27;
  v21[4] = v16;
  v21[5] = v23;
  v21[6] = a3;
  v21[7] = v22;
  v21[8] = a5;

  return sub_25F163E74(v15, &unk_25F183750, v21, a6, v28);
}

uint64_t sub_25F164B1C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F164B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v14;
  v8[16] = v15;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  sub_25F167EA8();
  v8[17] = swift_getTupleTypeMetadata2();
  v8[18] = swift_task_alloc();
  v9 = *(v15 - 8);
  v8[19] = v9;
  v8[20] = *(v9 + 64);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  sub_25F17930C();
  v8[23] = sub_25F1792FC();
  v11 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F164CB0, v11, v10);
}

uint64_t sub_25F164CB0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v24 = *(v0 + 88);
  v25 = *(v0 + 120);

  ObjectType = swift_getObjectType();
  *(v0 + 40) = (*(*(v1 + 8) + 16))(ObjectType);
  *(v0 + 48) = v4;
  v5 = swift_task_alloc();
  *(v5 + 16) = v25;
  *(v5 + 32) = v24;
  *(v5 + 48) = v2;
  *(v5 + 56) = v1;
  swift_beginAccess();
  sub_25F178FFC();
  swift_getWitnessTable();
  sub_25F177ECC();
  v6 = *(v0 + 176);
  v7 = *(v0 + 152);
  v20 = *(v0 + 168);
  v8 = *(v0 + 136);
  v9 = *(v0 + 144);
  v10 = *(v0 + 128);
  v23 = *(v0 + 112);
  v21 = *(v0 + 120);
  v22 = *(v0 + 104);
  v11 = *(v0 + 56);
  swift_endAccess();

  *&v24 = *(v9 + *(v8 + 48));
  v19 = *(v7 + 32);
  v19(v6, v9, v10);
  (*(v7 + 16))(v20, v6, v10);
  v12 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v21;
  *(v13 + 3) = v10;
  *(v13 + 4) = v22;
  *(v13 + 5) = v23;
  v19(&v13[v12], v20, v10);
  v11[3] = type metadata accessor for ThumbnailHostFactory.LocalThumbnailHost(0, v21, v14, v15);
  v11[4] = swift_getWitnessTable();
  *v11 = v24;
  v11[1] = &unk_25F183940;
  v11[2] = v13;
  v16 = *(v7 + 8);

  v16(v6, v10);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_25F164FC4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_25F17930C();
  v5[3] = sub_25F1792FC();
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_25F1650FC;

  return v12(a1, a5, a2);
}

uint64_t sub_25F1650FC(double a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_25F1792CC();
    v7 = v6;
    v8 = sub_25F169AA8;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_25F1792CC();
    v7 = v9;
    v8 = sub_25F169AA4;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_25F16527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[2] = a2;
  v5[3] = a3;
  sub_25F17712C();
  v5[4] = swift_task_alloc();
  v8 = sub_25F177DCC();
  v5[5] = v8;
  v5[6] = *(v8 - 8);
  v5[7] = swift_task_alloc();
  v9 = sub_25F17713C();
  v5[8] = v9;
  v5[9] = *(v9 - 8);
  v5[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[11] = v10;
  v5[12] = sub_25F17930C();
  v5[13] = sub_25F1792FC();
  v13 = (a5 + *a5);
  v11 = swift_task_alloc();
  v5[14] = v11;
  *v11 = v5;
  v11[1] = sub_25F16549C;

  return v13(v10, a1);
}

uint64_t sub_25F16549C(double a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_25F1792CC();
    v7 = v6;
    v8 = sub_25F165788;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_25F1792CC();
    v7 = v9;
    v8 = sub_25F16561C;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_25F16561C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v13 = v0[5];
  v7 = v0[3];

  v8 = v7[3];
  v12 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 16))(v1, v2, v3);
  sub_25F177D6C();
  sub_25F177DBC();
  (*(v12 + 16))(v6, v8);
  (*(v5 + 8))(v6, v13);
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];
  v10.n128_u64[0] = v0[16];

  return v9(v10);
}

uint64_t sub_25F165788()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F165820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_25F169AAC;

  return sub_25F16527C(a1, a2, a3, v8, v9);
}

uint64_t static ThumbnailHostFactory.remoteHostFactory(expectedGeometry:previewAgentConnector:makeUpdate:validateReply:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a5;
  v27 = a8;
  v14 = type metadata accessor for PreviewAgentConnector(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v26 - v18;
  sub_25F1683C4(a1, &v26 - v18);
  sub_25F102560(a2, &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  sub_25F10274C(&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20);
  v23 = (v22 + v21);
  *v23 = a3;
  v23[1] = a4;
  v24 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v26;
  v24[1] = a6;

  return sub_25F163E74(v19, &unk_25F183760, v22, a7, v27);
}

uint64_t sub_25F165C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[9] = a1;
  sub_25F17930C();
  v8[18] = sub_25F1792FC();
  v10 = sub_25F1792CC();
  v8[19] = v10;
  v8[20] = v9;

  return MEMORY[0x2822009F8](sub_25F165CCC, v10, v9);
}

uint64_t sub_25F165CCC()
{
  v1 = *(v0 + 88);
  ObjectType = swift_getObjectType();
  (*(v1 + 24))(ObjectType, v1);

  return MEMORY[0x2822009F8](sub_25F165D54, 0, 0);
}

uint64_t sub_25F165D54()
{
  v1 = *(v0 + 96);
  *(v0 + 208) = *v1;
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v5 = (*MEMORY[0x277D40510] + MEMORY[0x277D40510]);
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_25F165E54;

  return v5(v0 + 56, v0 + 208, &unk_25F183930, v2);
}

uint64_t sub_25F165E54()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_25F1660DC;
  }

  else
  {

    v2 = sub_25F165F70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F165F70()
{
  sub_25F169250(v0 + 16);
  *(v0 + 192) = *(v0 + 56);
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_25F165FDC, v1, v2);
}

uint64_t sub_25F165FDC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 72);
  v10 = vextq_s8(*(v0 + 192), *(v0 + 192), 8uLL);
  v11 = *(v0 + 112);

  v4[3] = type metadata accessor for ThumbnailHostFactory.RemoteThumbnailHost(0, v1, v5, v6);
  v4[4] = swift_getWitnessTable();
  v7 = swift_allocObject();
  *v4 = v7;
  *(v7 + 16) = v10;
  *(v7 + 32) = v3;
  *(v7 + 40) = v11;
  *(v7 + 56) = v2;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25F1660DC()
{
  sub_25F169250(v0 + 16);

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_25F16614C, v1, v2);
}

uint64_t sub_25F16614C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ThumbnailSceneCache.sceneAgent(for:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  return MEMORY[0x2822009F8](sub_25F1661E0, 0, 0);
}

uint64_t sub_25F1661E0()
{
  v1 = *(v0 + 72);
  *(v0 + 104) = *v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v5 = (*MEMORY[0x277D40510] + MEMORY[0x277D40510]);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_25F1662E0;

  return v5(v0 + 56, v0 + 104, &unk_25F183778, v2);
}

uint64_t sub_25F1662E0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_25F166418;
  }

  else
  {

    v2 = sub_25F1663FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F166418()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F16647C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_25F177F8C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_25F177D3C();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_25F17930C();
  v4[12] = sub_25F1792FC();
  v8 = sub_25F1792CC();
  v4[13] = v8;
  v4[14] = v7;

  return MEMORY[0x2822009F8](sub_25F1665D0, v8, v7);
}

uint64_t sub_25F1665D0()
{
  (*(v0[5] + 16))(v0[2]);
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_25F0BAD3C(v1, v0[3], v0[4]);
  v0[15] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[16] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v5 = v0;
  v5[1] = sub_25F166754;
  v7 = v0[8];
  v8 = v0[6];
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v7, v4, v8, v6, v9);
}

uint64_t sub_25F166754()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = v2[13];
    v4 = v2[14];
    v5 = sub_25F166970;
  }

  else
  {
    v6 = v2[5];
    v2[18] = *(v6 + 32);
    v2[19] = *(v6 + 40);
    v3 = v2[13];
    v4 = v2[14];
    v5 = sub_25F16687C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25F16687C()
{
  v1 = v0[18];
  v2 = v0[17];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[2];

  v7 = v1(v3, v6);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];
  if (!v2)
  {
    v8.n128_f64[0] = v7;
  }

  return v9(v8);
}

uint64_t sub_25F166970()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F1669F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB8, &qword_25F183B60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6[-v1];
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v6[15] = 0;
  v3 = sub_25F178F7C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_25F1770CC();
  sub_25F169A30(v2);
  return v4;
}

uint64_t sub_25F166B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v8;
  *(v4 + 48) = v3[2];
  v9 = swift_task_alloc();
  *(v4 + 64) = v9;
  *v9 = v4;
  v9[1] = sub_25F166C00;

  return sub_25F16647C(a1, a2, a3);
}

uint64_t sub_25F166C00(double a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4.n128_f64[0] = a1;
  }

  return v5(v4);
}

uint64_t sub_25F166D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F168FF4(a1, a2, a3);

  return MEMORY[0x2821A09D0](a1, a2, a3, v6);
}

uint64_t ThumbnailSceneCache.init(in:makeHostingViewController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD492F0, qword_25F183780);
  result = sub_25F17857C();
  a5[3] = a4;
  a5[4] = result;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t sub_25F166DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_25F177E8C();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F166EBC, 0, 0);
}

uint64_t sub_25F166EBC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = *v3;
  v0[14] = *v3;
  v6 = v3[1];
  v7 = [objc_opt_self() previewSceneSpecification];
  v0[15] = v7;
  sub_25F1796DC();
  ObjectType = swift_getObjectType();
  v9 = (*(v6 + 16))(ObjectType, v6);
  v11 = v10;

  MEMORY[0x25F8D50D0](0x776569766572502DLL, 0xEE002D656E656353);
  sub_25F177E7C();
  sub_25F1691F8();
  v12 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v12);

  (*(v2 + 8))(v1, v4);
  v0[16] = v11;
  v0[17] = sub_25F17930C();
  swift_unknownObjectRetain();
  v0[18] = sub_25F1792FC();
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v9;
  v0[5] = v11;
  v0[6] = v7;
  v0[7] = 0;
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_25F1670B4;

  return PreviewAgentConnector.injectScene(configuration:settingsPolicy:)((v0 + 2), v0 + 7);
}

uint64_t sub_25F1670B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  v5 = sub_25F1792CC();
  if (v1)
  {
    v6 = sub_25F1673C8;
  }

  else
  {
    v6 = sub_25F1671F8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_25F1671F8()
{
  v1 = *(v0 + 120);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_25F167284, 0, 0);
}

uint64_t sub_25F167284(uint64_t a1)
{
  v2 = v1[10];
  v1[22] = *(v2 + 16);
  v1[23] = *(v2 + 24);
  v1[24] = sub_25F1792FC();
  v4 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F167324, v4, v3);
}

uint64_t sub_25F167324()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];

  v0[25] = v2(v3);
  v0[26] = v1;
  if (v1)
  {
    v4 = sub_25F16752C;
  }

  else
  {
    v4 = sub_25F1674B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F1673C8()
{
  v1 = *(v0 + 120);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_25F167454, 0, 0);
}

uint64_t sub_25F167454()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F1674B8()
{
  v1 = v0[25];
  v2 = v0[8];
  *v2 = v0[20];
  v2[1] = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F16752C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F167598()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t sub_25F1675E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *(a4 + 16);
  v5[6] = v6;
  v7 = sub_25F17960C();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  sub_25F17930C();
  v5[12] = sub_25F1792FC();
  v9 = sub_25F1792CC();
  v5[13] = v9;
  v5[14] = v8;

  return MEMORY[0x2822009F8](sub_25F167738, v9, v8);
}

uint64_t sub_25F167738()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  (*(v0[8] + 16))(v1, v0[2], v0[7]);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[8];
    v4 = v0[9];
    v7 = v0[6];
    v6 = v0[7];

    (*(v5 + 8))(v4, v6);
    type metadata accessor for OptionalStateWrapper.NilState(0, v7, v8, v9);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[5];
    (*(v0[10] + 32))(v0[11], v0[9], v0[6]);
    v13 = v12[3];
    v14 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v19 = (*(v14 + 24) + **(v14 + 24));
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_25F167994;
    v16 = v0[11];
    v17 = v0[3];
    v18 = v0[4];

    return v19(v16, v17, v18, v13, v14);
  }
}

uint64_t sub_25F167994(double a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = *(v4 + 104);
    v6 = *(v4 + 112);
    v7 = sub_25F167B58;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = *(v4 + 104);
    v6 = *(v4 + 112);
    v7 = sub_25F167AB8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_25F167AB8()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5.n128_u64[0] = v0[17];

  return v4(v5);
}

uint64_t sub_25F167B58()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F167BF8()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 16))(v2);
}

uint64_t sub_25F167C44()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 24))(v2);
}

uint64_t sub_25F167C90()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 32))(v2);
}

uint64_t sub_25F167CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F167D98;

  return sub_25F1675E4(a1, a2, a3, a4);
}

uint64_t sub_25F167D98(double a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4.n128_f64[0] = a1;
  }

  return v5(v4);
}

unint64_t sub_25F167EA8()
{
  result = qword_27FD492E8;
  if (!qword_27FD492E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD492E8);
  }

  return result;
}

unint64_t sub_25F167EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F17901C();

  return sub_25F167F50(a1, v6, a2, a3);
}

unint64_t sub_25F167F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_25F17904C();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_25F1680D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_25F17929C())
  {
    sub_25F1797CC();
    v13 = sub_25F1797BC();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_25F17929C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_25F17927C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25F1796FC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_25F167EF4(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_25F1683C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F168434()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25F16847C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  v10 = v3[7];
  v11 = v3[8];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_25F0C10CC;

  return sub_25F164B54(a1, a2, a3, v7, v8, v9, v10, v11);
}

uint64_t sub_25F168570()
{
  v1 = type metadata accessor for PreviewAgentConnector(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (((*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v1 + 20);
  v7 = sub_25F17767C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25F16871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v8 = *(type metadata accessor for PreviewAgentConnector(0) - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v3 + v10);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v3 + v11);
  v16 = *(v3 + v11 + 8);
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = sub_25F0C10CC;

  return sub_25F165C1C(a1, a2, a3, v3 + v9, v13, v14, v15, v16);
}

uint64_t sub_25F168880(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F0C10CC;

  return sub_25F166DF8(a1, v5, v4);
}

void sub_25F16894C(uint64_t a1)
{
  sub_25F168B9C(319);
  if (v1 <= 0x3F)
  {
    sub_25F105150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25F1689E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F168AC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}