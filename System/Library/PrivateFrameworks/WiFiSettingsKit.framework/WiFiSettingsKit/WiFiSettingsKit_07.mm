uint64_t sub_274150F08()
{
  v1 = sub_2741C6AFC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_280945DD8);
  v7 = *(v2 + 16);
  v7(v5, v6, v1);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x1000000000000011, 0x80000002741E1E70);
  v8 = *(v2 + 8);
  v8(v5, v1);
  sub_274151100();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v7(v5, v6, v1);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x1000000000000014, 0x80000002741E1E90);
  v8(v5, v1);
  swift_unknownObjectRetain();
  sub_27418EA94(0x10u);
  return swift_unknownObjectRelease();
}

uint64_t sub_274151100()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v12 - v4;
  v6 = sub_2741C80DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2741C80AC();

  v7 = sub_2741C809C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  sub_2740CE980(0, 0, v5, &unk_2741D4578, v8);

  swift_getKeyPath();
  v13 = v1;
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  v13 = v1;
  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  v1[11] = MEMORY[0x277D84FA0];

  v12 = v1;
  swift_getKeyPath();
  sub_2741C6A1C();

  swift_getKeyPath();
  v12 = v1;
  sub_2741C6A0C();

  v12 = v1;
  swift_getKeyPath();
  sub_2741C6A2C();

  v10 = MEMORY[0x277D84F90];
  v1[7] = MEMORY[0x277D84F90];

  v12 = v1;
  swift_getKeyPath();
  sub_2741C6A1C();

  swift_getKeyPath();
  v12 = v1;
  sub_2741C6A0C();

  v12 = v1;
  swift_getKeyPath();
  sub_2741C6A2C();

  v1[8] = v10;

  v12 = v1;
  swift_getKeyPath();
  sub_2741C6A1C();

  swift_getKeyPath();
  v12 = v1;
  sub_2741C6A0C();

  v12 = v1;
  swift_getKeyPath();
  sub_2741C6A2C();

  v1[9] = v10;

  v12 = v1;
  swift_getKeyPath();
  sub_2741C6A1C();
}

uint64_t sub_2741514FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a4;
  sub_2741C80AC();
  *(v4 + 80) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274151594, v6, v5);
}

uint64_t sub_274151594()
{
  v1 = v0[9];

  swift_getKeyPath();
  v0[2] = v1;
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  v0[2] = v1;
  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  v2 = MEMORY[0x277D84F90];
  *(v1 + 112) = MEMORY[0x277D84F90];

  v0[5] = v1;
  swift_getKeyPath();
  sub_2741C6A1C();

  swift_getKeyPath();
  v0[5] = v1;
  sub_2741C6A0C();

  v0[5] = v1;
  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  *(v1 + 120) = v2;

  v0[8] = v1;
  swift_getKeyPath();
  sub_2741C6A1C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2741517B8()
{
  v1 = v0;
  v2 = sub_2741C6AFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280945DD8);
  v8 = *(v3 + 16);
  v8(v6, v7, v2);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x1000000000000032, 0x80000002741E1E10);
  v9 = *(v3 + 8);
  v9(v6, v2);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v8(v6, v7, v2);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x1000000000000013, 0x80000002741E1E50);
  v9(v6, v2);
  swift_unknownObjectRetain();
  sub_27418EA94(8u);
  return swift_unknownObjectRelease();
}

uint64_t sub_2741519A0(void *a1)
{
  v2 = v1;
  sub_2741C856C();

  v4 = *a1;
  v5 = a1[1];
  MEMORY[0x2743E5FB0](*a1, v5);
  MEMORY[0x2743E5FB0](0x6373206D6F726620, 0xEF7473696C206E61);
  sub_2740CB460(0x676E69766F6D6572, 0xE900000000000020);

  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
  v6 = *(v1 + 112);

  v7 = sub_274149F10(a1, v6);

  if (v7)
  {
    sub_2741C856C();

    MEMORY[0x2743E5FB0](v4, v5);
    MEMORY[0x2743E5FB0](0xD00000000000001DLL, 0x80000002741E1DF0);
    sub_2740CB460(0x676E69766F6D6572, 0xE900000000000020);

    swift_getKeyPath();
    sub_2741C6A0C();

    swift_getKeyPath();
    sub_2741C6A2C();

    swift_beginAccess();
    sub_2741B2EF0(a1);
    swift_endAccess();
    swift_getKeyPath();
  }

  else
  {
    swift_getKeyPath();
    sub_2741C6A0C();

    swift_beginAccess();
    v8 = *(v2 + 120);

    v9 = sub_274149F10(a1, v8);

    if (!v9)
    {
      return result;
    }

    sub_2741C856C();

    MEMORY[0x2743E5FB0](v4, v5);
    MEMORY[0x2743E5FB0](0xD00000000000001DLL, 0x80000002741E1DD0);
    sub_2740CB460(0x676E69766F6D6572, 0xE900000000000020);

    swift_getKeyPath();
    sub_2741C6A0C();

    swift_getKeyPath();
    sub_2741C6A2C();

    swift_beginAccess();
    sub_2741B2EF0(a1);
    swift_endAccess();
    swift_getKeyPath();
  }

  sub_2741C6A1C();
}

uint64_t sub_274151DB4(void *a1)
{
  v2 = v1;
  sub_2741C856C();

  v5 = *a1;
  v4 = a1[1];
  MEMORY[0x2743E5FB0](*a1, v4);
  MEMORY[0x2743E5FB0](0x6E616373206F7420, 0xED00007473696C20);
  sub_2740CB460(0x6E696E7275746572, 0xEA00000000002067);

  if (*(a1 + 41) != 1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
  v6 = *(v1 + 112);

  v7 = sub_274149F10(a1, v6);

  if (v7)
  {
    swift_getKeyPath();
    sub_2741C6A0C();

    v8 = sub_274197F84(a1);

    if ((v8 & 1) == 0)
    {
      sub_2741C856C();
      MEMORY[0x2743E5FB0](0xD000000000000022, 0x80000002741E1D80);
      MEMORY[0x2743E5FB0](v5, v4);
      MEMORY[0x2743E5FB0](0xD000000000000019, 0x80000002741E1DB0);
      sub_2740CB460(0, 0xE000000000000000);

      swift_getKeyPath();
      sub_2741C6A0C();

      swift_getKeyPath();
      sub_2741C6A2C();

      swift_beginAccess();
      sub_2741B2EF0(a1);
      swift_endAccess();
      swift_getKeyPath();
      sub_2741C6A1C();

      swift_getKeyPath();
      sub_2741C6A0C();

      swift_getKeyPath();
      sub_2741C6A2C();

      swift_beginAccess();
      sub_2741B2FC0(a1);
      swift_endAccess();
      swift_getKeyPath();
      sub_2741C6A1C();
    }
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  v9 = *(v2 + 112);

  v10 = sub_274149F10(a1, v9);

  if (!v10)
  {
    swift_getKeyPath();
    sub_2741C6A0C();

    v13 = *(v2 + 112);

    v14 = sub_274149F10(a1, v13);

    if (!v14)
    {
      swift_getKeyPath();
      sub_2741C6A0C();

      swift_getKeyPath();
      sub_2741C6A2C();

      swift_beginAccess();
      sub_2741B2FC0(a1);
      swift_endAccess();
      swift_getKeyPath();
      sub_2741C6A1C();

      sub_2741C856C();

      v17 = 0x6E696E7275746572;
      v18 = 0xEA00000000002067;
      MEMORY[0x2743E5FB0](v5, v4);
      v15 = " to known network list";
      goto LABEL_9;
    }

LABEL_8:
    swift_getKeyPath();
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C6A0C();

    swift_getKeyPath();
    sub_2741C6A2C();

    swift_beginAccess();
    sub_2741B2FC0(a1);
    swift_endAccess();
    swift_getKeyPath();
    sub_2741C6A1C();

    sub_2741C856C();

    v17 = 0x6E696E7275746572;
    v18 = 0xEA00000000002067;
    MEMORY[0x2743E5FB0](v5, v4);
    v15 = " to other network list";
LABEL_9:
    v12 = (v15 - 32) | 0x8000000000000000;
    v11 = 0xD000000000000016;
    goto LABEL_10;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0x656E206E776F6E4BLL, 0xEE00206B726F7774);
  MEMORY[0x2743E5FB0](v5, v4);
  v11 = 0xD000000000000033;
  v12 = 0x80000002741E1D40;
LABEL_10:
  MEMORY[0x2743E5FB0](v11, v12);
  sub_2740CB460(v17, v18);
}

uint64_t sub_27415251C(uint64_t *a1, void *a2)
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

    v9 = sub_2741C849C();

    if (v9)
    {

      sub_2740AD50C();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2741C848C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_274121968(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_274153EDC(v20 + 1, &qword_280938988, qword_2741D3560);
    }

    v18 = v8;
    sub_2741543B4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2740AD50C();
  v11 = sub_2741C835C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_274156554(v18, v13, isUniquelyReferenced_nonNull_native, &qword_280938988, qword_2741D3560, sub_2740AD50C);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2741C836C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_274152768(uint64_t *a1, void *a2)
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

    v9 = sub_2741C849C();

    if (v9)
    {

      type metadata accessor for WiFiNetwork(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2741C848C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2741219A4(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_274153EDC(v20 + 1, &qword_280939F38, &qword_2741D33D0);
    }

    v18 = v8;
    sub_2741543B4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for WiFiNetwork(0);
  v11 = sub_2741C835C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_274156554(v18, v13, isUniquelyReferenced_nonNull_native, &qword_280939F38, &qword_2741D33D0, type metadata accessor for WiFiNetwork);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2741C836C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2741529B4(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  sub_2741C87DC();
  v5 = *a2;
  v6 = a2[1];
  sub_2741C7F0C();
  v7 = sub_2741C880C();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_2740ACAC8(*(v4 + 48) + 104 * v9, v21);
      if (v21[0] == v5 && v21[1] == v6)
      {
        break;
      }

      v12 = sub_2741C86DC();
      sub_2740ACB2C(v21);
      if (v12)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_2740ACB2C(v21);
LABEL_11:
    sub_2740ACB2C(a2);
    sub_2740ACAC8(*(v4 + 48) + 104 * v9, a1);
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2740ACAC8(a2, v21);
    v20 = *v18;
    sub_2741566D8(v21, v9, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    v14 = *(a2 + 5);
    *(a1 + 64) = *(a2 + 4);
    *(a1 + 80) = v14;
    *(a1 + 96) = *(a2 + 96);
    v15 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v15;
    v16 = *(a2 + 3);
    result = 1;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v16;
  }

  return result;
}

void sub_274152B48(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_2741C848C())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2741C844C();
    type metadata accessor for WiFiNetwork(0);
    sub_2741586EC(&qword_280939F58, type metadata accessor for WiFiNetwork, MEMORY[0x277D85378]);
    sub_2741C821C();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_2740D43C8(a1);
      return;
    }

    while (1)
    {
      v16 = sub_274153B8C(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_2741C84BC())
      {
        type metadata accessor for WiFiNetwork(0);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_274152D78(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_27409D420(v11, &qword_280938340, &qword_2741D1660))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_2740ACAC8(*(v2 + 48) + 104 * (v10 | (v9 << 6)), v12);
      sub_274153D24(v12, v11);
      sub_2740ACB2C(v12);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_274152EA0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v84 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2741C844C();
    type metadata accessor for WiFiNetwork(0);
    sub_2741586EC(&qword_280939F58, type metadata accessor for WiFiNetwork, MEMORY[0x277D85378]);
    sub_2741C821C();
    v5 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
    v10 = v83;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v74 = v5;
  v75 = v7;
  v76 = v8;
  v77 = v9;
  v65 = v8;
  v14 = (v8 + 64) >> 6;
  v71 = (v4 + 56);
  v78 = v10;
  v68 = v5;
  v69 = v14;
  v67 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_2741C84BC();
      if (!v22)
      {
        goto LABEL_65;
      }

      v72 = v22;
      type metadata accessor for WiFiNetwork(0);
      swift_dynamicCast();
      v20 = v73;
      v18 = v9;
      v2 = v10;
      if (!v73)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        if (v14 <= v9 + 1)
        {
          v17 = v9 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_67;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v74 = v5;
      v75 = v7;
      v76 = v65;
      v77 = v18;
      v78 = v2;
      if (!v20)
      {
LABEL_65:
        v54 = v5;
        goto LABEL_63;
      }
    }

    v23 = v20;
    v24 = sub_2741C835C();
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v71[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v67;
    v5 = v68;
    v14 = v69;
  }

  v3 = ~v25;
  v26 = type metadata accessor for WiFiNetwork(0);
  v27 = *(*(v4 + 48) + 8 * v7);
  v70 = v26;
  while (1)
  {
    v28 = sub_2741C836C();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v71[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v4 + 48) + 8 * v7);
  }

  v31 = *(v4 + 32);
  v62 = ((1 << v31) + 63) >> 6;
  v6 = 8 * v62;
  v3 = v69;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v63 = &v61;
    MEMORY[0x28223BE20](v29, v30);
    v33 = &v61 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v71, v32);
    v34 = *&v33[8 * v5] & ~v16;
    v35 = *(v4 + 16);
    v64 = v33;
    *&v33[8 * v5] = v34;
    v5 = v35 - 1;
    v37 = v67;
    v36 = v68;
LABEL_33:
    v66 = v5;
    while (v36 < 0)
    {
      v38 = sub_2741C84BC();
      if (!v38)
      {
        goto LABEL_61;
      }

      v72 = v38;
      swift_dynamicCast();
      v39 = v73;
      if (!v73)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = sub_2741C835C();
      v45 = v4;
      v46 = -1 << *(v4 + 32);
      v7 = v44 & ~v46;
      v47 = v7 >> 6;
      v48 = 1 << v7;
      if (((1 << v7) & v71[v7 >> 6]) != 0)
      {
        v49 = ~v46;
        while (1)
        {
          v50 = *(*(v45 + 48) + 8 * v7);
          v51 = sub_2741C836C();

          if (v51)
          {
            break;
          }

          v7 = (v7 + 1) & v49;
          v47 = v7 >> 6;
          v48 = 1 << v7;
          if (((1 << v7) & v71[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v69;

        v52 = v64[v47];
        v64[v47] = v52 & ~v48;
        v53 = (v52 & v48) == 0;
        v4 = v45;
        v37 = v67;
        v36 = v68;
        v5 = v66;
        if (!v53)
        {
          v5 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            v4 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v45;
        v37 = v67;
        v36 = v68;
        v3 = v69;
        v5 = v66;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v36 + 48) + ((v16 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v16;
LABEL_49:
      v74 = v36;
      v75 = v37;
      v76 = v65;
      v77 = v41;
      v18 = v41;
      v78 = v2;
      if (!v39)
      {
LABEL_61:
        v4 = sub_274154958(v64, v62, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v40 = v18 + 1;
    }

    else
    {
      v40 = v3;
    }

    v41 = v40 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v56 = v6;

    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v71, v57);
  sub_274154438(v58, v62, v4, v7, &v74);
  v60 = v59;

  MEMORY[0x2743E7790](v58, -1, -1);
  v4 = v60;
LABEL_62:
  v54 = v74;
LABEL_63:
  sub_2740D43C8(v54);
  return v4;
}

uint64_t sub_274153528(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v76 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a1;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v50 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v52 = (63 - v8) >> 6;
  v56 = (a2 + 56);
  v11 = 0;
  v12 = 0;
  v54 = a1 + 56;
  v55 = a2;

  v14 = v10;
  if (!v10)
  {
LABEL_6:
    v15 = v11;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_56;
      }

      if (v12 >= v52)
      {
        break;
      }

      v14 = *(v6 + 8 * v12);
      ++v15;
      if (v14)
      {
        goto LABEL_10;
      }
    }

    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
LABEL_23:
    sub_27409D420(&v57, &qword_280938340, &qword_2741D1660);
    v22 = v4;
    goto LABEL_53;
  }

  while (1)
  {
LABEL_10:
    sub_2740ACAC8(*(v4 + 48) + 104 * (__clz(__rbit64(v14)) | (v12 << 6)), &v57);
    if (!*(&v57 + 1))
    {
      goto LABEL_23;
    }

    v67 = v60;
    v68 = v61;
    v69 = v62;
    v64 = v57;
    v10 = (v14 - 1) & v14;
    v70 = v63;
    v65 = v58;
    v66 = v59;
    sub_2741C87DC();
    v16 = *(&v64 + 1);
    v2 = v64;
    sub_2741C7F0C();
    v17 = sub_2741C880C();
    v18 = -1 << *(v3 + 32);
    v11 = v17 & ~v18;
    v7 = v11 >> 6;
    v6 = 1 << v11;
    if (((1 << v11) & v56[v11 >> 6]) != 0)
    {
      break;
    }

LABEL_19:
    sub_2740ACB2C(&v64);
    v11 = v12;
    v4 = v53;
    v6 = v54;
    v7 = -1;
    v14 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v19 = ~v18;
  while (1)
  {
    sub_2740ACAC8(*(v3 + 48) + 104 * v11, &v57);
    if (v57 == v2 && *(&v57 + 1) == v16)
    {
      v73 = v50;
      v74 = v12;
      v75 = v10;
      v2 = v53;
      v71 = v53;
      v72 = v54;
      sub_2740ACB2C(&v57);
      goto LABEL_26;
    }

    v21 = sub_2741C86DC();
    sub_2740ACB2C(&v57);
    if (v21)
    {
      break;
    }

    v11 = (v11 + 1) & v19;
    v7 = v11 >> 6;
    v3 = v55;
    v6 = 1 << v11;
    if (((1 << v11) & v56[v11 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v73 = v50;
  v74 = v12;
  v75 = v10;
  v2 = v53;
  v71 = v53;
  v72 = v54;
  v3 = v55;
LABEL_26:
  v23 = sub_2740ACB2C(&v64);
  v25 = *(v3 + 32);
  v47 = ((1 << v25) + 63) >> 6;
  v13 = 8 * v47;
  if ((v25 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v48 = &v46;
    MEMORY[0x28223BE20](v23, v24);
    v27 = &v46 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v27, v56, v26);
    v28 = *&v27[8 * v7] & ~v6;
    v49 = v27;
    *&v27[8 * v7] = v28;
    v11 = *(v3 + 16) - 1;
    v29 = v54;
    v30 = v52;
    while (v10)
    {
LABEL_34:
      v33 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      sub_2740ACAC8(*(v2 + 48) + 104 * (v33 | (v12 << 6)), &v57);
      if (!*(&v57 + 1))
      {
LABEL_51:
        sub_27409D420(&v57, &qword_280938340, &qword_2741D1660);
        v3 = sub_274154B4C(v49, v47, v11, v3);
        goto LABEL_52;
      }

      v51 = v11;
      v67 = v60;
      v68 = v61;
      v69 = v62;
      v64 = v57;
      v70 = v63;
      v65 = v58;
      v66 = v59;
      sub_2741C87DC();
      v34 = v64;
      sub_2741C7F0C();
      v35 = sub_2741C880C();
      v36 = -1 << *(v3 + 32);
      v37 = v35 & ~v36;
      v6 = v37 >> 6;
      v7 = 1 << v37;
      if (((1 << v37) & v56[v37 >> 6]) == 0)
      {
LABEL_43:
        sub_2740ACB2C(&v64);
        goto LABEL_49;
      }

      v38 = ~v36;
      while (1)
      {
        sub_2740ACAC8(*(v55 + 48) + 104 * v37, &v57);
        if (v57 == v34 && *(&v57 + 1) == *(&v34 + 1))
        {
          break;
        }

        v40 = sub_2741C86DC();
        sub_2740ACB2C(&v57);
        if (v40)
        {
          goto LABEL_45;
        }

        v37 = (v37 + 1) & v38;
        v6 = v37 >> 6;
        v7 = 1 << v37;
        if (((1 << v37) & v56[v37 >> 6]) == 0)
        {
          goto LABEL_43;
        }
      }

      sub_2740ACB2C(&v57);
LABEL_45:
      sub_2740ACB2C(&v64);
      v41 = v49[v6];
      v49[v6] = v41 & ~v7;
      if ((v41 & v7) != 0)
      {
        v30 = v52;
        v11 = v51 - 1;
        v29 = v54;
        v3 = v55;
        v2 = v53;
        if (__OFSUB__(v51, 1))
        {
          __break(1u);
          goto LABEL_60;
        }

        if (v51 == 1)
        {

          v3 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }
      }

      else
      {
LABEL_49:
        v29 = v54;
        v3 = v55;
        v30 = v52;
        v2 = v53;
        v11 = v51;
      }
    }

    v31 = v12;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v30)
      {
        v63 = 0;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        goto LABEL_51;
      }

      v10 = *(v29 + 8 * v32);
      ++v31;
      if (v10)
      {
        v12 = v32;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v43 = v13;

    v38 = v43;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

LABEL_60:
  v44 = swift_slowAlloc();
  memcpy(v44, v56, v38);
  v45 = sub_2741546B4(v44, v47, v3, v11, &v71);

  MEMORY[0x2743E7790](v44, -1, -1);
  v2 = v71;
  v50 = v73;
  v3 = v45;
LABEL_52:
  v22 = v2;
LABEL_53:
  sub_2740D43C8(v22);
  return v3;
}

uint64_t sub_274153B8C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_2741C84CC();

    if (v6)
    {
      v7 = sub_274154D9C(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for WiFiNetwork(0);
  v10 = sub_2741C835C();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_2741C836C();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_274154F08(&qword_280939F38, &qword_2741D33D0);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_27415565C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_274153D24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_2741C87DC();
  v6 = *a1;
  v7 = a1[1];
  sub_2741C7F0C();
  result = sub_2741C880C();
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_2740ACAC8(*(v5 + 48) + 104 * v10, v21);
      if (v21[0] == v6 && v21[1] == v7)
      {
        break;
      }

      v13 = sub_2741C86DC();
      result = sub_2740ACB2C(v21);
      if (v13)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_2740ACB2C(v21);
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v20;
    v21[0] = *v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_274155048();
      v15 = v21[0];
    }

    v16 = *(v15 + 48) + 104 * v10;
    v17 = *(v16 + 80);
    *(a2 + 64) = *(v16 + 64);
    *(a2 + 80) = v17;
    *(a2 + 96) = *(v16 + 96);
    v18 = *(v16 + 16);
    *a2 = *v16;
    *(a2 + 16) = v18;
    v19 = *(v16 + 48);
    *(a2 + 32) = *(v16 + 32);
    *(a2 + 48) = v19;
    result = sub_2741557FC(v10);
    *v20 = v21[0];
  }

  else
  {
LABEL_9:
    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_274153EDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2741C852C();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_2741C835C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_2741540FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6B0, &qword_2741D4700);
  result = sub_2741C852C();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 104 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v31 = *(v18 + 48);
      v32 = *(v18 + 64);
      v33 = *(v18 + 80);
      v34 = *(v18 + 96);
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      sub_2741C87DC();
      sub_2741C7F0C();
      result = sub_2741C880C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 104 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 48) = v31;
      *(v14 + 64) = v32;
      *(v14 + 80) = v33;
      *(v14 + 96) = v34;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2741543B4(uint64_t a1, uint64_t a2)
{
  sub_2741C835C();
  result = sub_2741C842C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_274154438(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_2741C84BC())
          {
            goto LABEL_30;
          }

          type metadata accessor for WiFiNetwork(0);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_274154958(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_2741C835C();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for WiFiNetwork(0);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_2741C836C();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_2741C836C();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_2741546B4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v31 = result;
  v32 = v7 - 1;
  v42 = a3 + 56;
  while (1)
  {
    do
    {
      while (1)
      {
        v8 = *a5;
        v9 = a5[1];
        v11 = a5[2];
        v10 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (v11 + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(v9 + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_9;
            }
          }

          v39 = 0;
          if (v14 <= v10 + 1)
          {
            v29 = v10 + 1;
          }

          else
          {
            v29 = (v11 + 64) >> 6;
          }

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          *a5 = v8;
          a5[1] = v9;
          a5[2] = v11;
          a5[3] = v29 - 1;
          a5[4] = 0;
LABEL_28:
          sub_27409D420(&v33, &qword_280938340, &qword_2741D1660);

          return sub_274154B4C(v31, a2, v32, a3);
        }

        v13 = a5[3];
LABEL_9:
        v16 = (v12 - 1) & v12;
        sub_2740ACAC8(*(v8 + 48) + 104 * (__clz(__rbit64(v12)) | (v13 << 6)), &v33);
        v17 = *(&v33 + 1);
        *a5 = v8;
        a5[1] = v9;
        a5[2] = v11;
        a5[3] = v13;
        a5[4] = v16;
        if (!v17)
        {
          goto LABEL_28;
        }

        v40[4] = v37;
        v40[5] = v38;
        v41 = v39;
        v40[0] = v33;
        v40[1] = v34;
        v40[2] = v35;
        v40[3] = v36;
        sub_2741C87DC();
        v18 = v40[0];
        sub_2741C7F0C();
        v19 = sub_2741C880C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v42 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_2:
        result = sub_2740ACB2C(v40);
      }

      v24 = ~v20;
      while (1)
      {
        sub_2740ACAC8(*(a3 + 48) + 104 * v21, &v33);
        if (v33 == v18 && *(&v33 + 1) == *(&v18 + 1))
        {
          break;
        }

        v26 = sub_2741C86DC();
        sub_2740ACB2C(&v33);
        if (v26)
        {
          goto LABEL_20;
        }

        v21 = (v21 + 1) & v24;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v42 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_2;
        }
      }

      sub_2740ACB2C(&v33);
LABEL_20:
      result = sub_2740ACB2C(v40);
      v27 = v31[v22];
      v31[v22] = v27 & ~v23;
    }

    while ((v27 & v23) == 0);
    v28 = v32 - 1;
    if (__OFSUB__(v32, 1))
    {
      break;
    }

    --v32;
    if (!v28)
    {
      return MEMORY[0x277D84FA0];
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_274154958(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939F38, &qword_2741D33D0);
  result = sub_2741C854C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2741C835C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_274154B4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6B0, &qword_2741D4700);
  result = sub_2741C854C();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_2740ACAC8(*(a4 + 48) + 104 * (v13 | (v11 << 6)), v31);
    sub_2741C87DC();
    sub_2741C7F0C();
    result = sub_2741C880C();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
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
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 104 * v19;
    v26 = v31[1];
    v25 = v31[2];
    *v24 = v31[0];
    *(v24 + 16) = v26;
    *(v24 + 32) = v25;
    v27 = v31[3];
    v28 = v31[4];
    v29 = v31[5];
    *(v24 + 96) = v32;
    *(v24 + 64) = v28;
    *(v24 + 80) = v29;
    *(v24 + 48) = v27;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_274154D9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_2741C848C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_2741219A4(v5, v4);
  v15 = v6;

  v7 = sub_2741C835C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for WiFiNetwork(0);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_2741C836C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_27415565C(v9);
  result = sub_2741C836C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_274154F08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2741C851C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_274155048()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6B0, &qword_2741D4700);
  v2 = *v0;
  v3 = sub_2741C851C();
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
    for (i = (v9 + 63) >> 6; v11; *(v17 + 32) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 104 * (v13 | (v8 << 6));
      result = sub_2740ACAC8(*(v2 + 48) + v16, v23);
      v17 = *(v4 + 48) + v16;
      v18 = v23[3];
      v19 = v23[4];
      v20 = v23[5];
      *(v17 + 96) = v24;
      *(v17 + 64) = v19;
      *(v17 + 80) = v20;
      *(v17 + 48) = v18;
      v21 = v23[2];
      v22 = v23[1];
      *v17 = v23[0];
      *(v17 + 16) = v22;
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

uint64_t sub_2741551F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2741C852C();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_2741C835C();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_274155404(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6B0, &qword_2741D4700);
  result = sub_2741C852C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v18 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_2740ACAC8(*(v2 + 48) + 104 * (v18 | (v5 << 6)), v28);
      sub_2741C87DC();
      sub_2741C7F0C();
      result = sub_2741C880C();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v10 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v10 + 8 * v23);
          if (v27 != -1)
          {
            v11 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v22) & ~*(v10 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 104 * v11;
      v13 = v28[2];
      v14 = v28[0];
      *(v12 + 16) = v28[1];
      *(v12 + 32) = v13;
      v15 = v28[3];
      v16 = v28[4];
      v17 = v28[5];
      *(v12 + 96) = v29;
      *(v12 + 64) = v16;
      *(v12 + 80) = v17;
      *(v12 + 48) = v15;
      *v12 = v14;
      ++*(v4 + 16);
    }

    v19 = v5;
    while (1)
    {
      v5 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        goto LABEL_26;
      }

      v20 = *(v2 + 56 + 8 * v5);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v8 = (v20 - 1) & v20;
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
    *v1 = v4;
  }

  return result;
}

unint64_t sub_27415565C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2741C841C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_2741C835C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
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
          goto LABEL_16;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2741557FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2741C841C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 104 * v6;
        sub_2740ACAC8(*(v3 + 48) + 104 * v6, &v20);
        sub_2741C87DC();
        sub_2741C7F0C();
        v11 = sub_2741C880C();
        sub_2740ACB2C(&v20);
        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v12)
        {
LABEL_11:
          v13 = *(v3 + 48);
          v14 = (v13 + 104 * v2);
          v15 = (v13 + v10);
          if (104 * v2 < v10 || (v14 < v15 + 104 ? (v16 = v2 == v6) : (v16 = 0), !v16))
          {
            memmove(v14, v15, 0x68uLL);
            v2 = v6;
          }
        }

LABEL_5:
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

void *sub_2741559D4(uint64_t a1, uint64_t a2)
{

  return sub_274155A44(a1, a2, sub_274155D54, sub_274155D54);
}

void *sub_274155A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v13);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v14 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v14 = sub_274155C20(v16, v10, a2, a1, a4);

    MEMORY[0x2743E7790](v16, -1, -1);
  }

  return v14;
}

void *sub_274155C20(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

unint64_t *sub_274155CB8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_274157898(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_274155D54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v47 = 0;
    v24 = 0;
    v43 = v5 + 56;
    v25 = 1 << *(v5 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v5 + 56);
    v28 = (v25 + 63) >> 6;
    v29 = v4 + 56;
    while (v27)
    {
      v30 = __clz(__rbit64(v27));
      v49 = (v27 - 1) & v27;
LABEL_34:
      v46 = v30 | (v24 << 6);
      v33 = *(*(v5 + 48) + 8 * v46);
      v34 = sub_2741C835C();
      v35 = -1 << *(v4 + 32);
      v36 = v34 & ~v35;
      if ((*(v29 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        type metadata accessor for WiFiNetwork(0);
        while (1)
        {
          v38 = *(*(v4 + 48) + 8 * v36);
          v39 = sub_2741C836C();

          if (v39)
          {
            break;
          }

          v36 = (v36 + 1) & v37;
          v4 = a4;
          if (((*(v29 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        v27 = v49;
        v23 = __OFADD__(v47++, 1);
        v5 = a3;
        v4 = a4;
        if (v23)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:

        v27 = v49;
        v5 = a3;
      }
    }

    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v24 >= v28)
      {
        goto LABEL_42;
      }

      v32 = *(v43 + 8 * v24);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v49 = (v32 - 1) & v32;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v6 = 0;
  v40 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v47 = 0;
  v48 = a3 + 56;
  v42 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v45 = (v9 - 1) & v9;
LABEL_14:
    v14 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
    v15 = sub_2741C835C();
    v16 = -1 << *(v5 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v48 + 8 * (v17 >> 6))) != 0)
    {
      type metadata accessor for WiFiNetwork(0);
      v4 = *(*(v5 + 48) + 8 * v17);
      v20 = sub_2741C836C();

      if ((v20 & 1) == 0)
      {
        v21 = ~v16;
        do
        {
          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v5 = a3;
          v19 = 1 << v17;
          if (((1 << v17) & *(v48 + 8 * (v17 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          v22 = *(*(a3 + 48) + 8 * v17);
          v4 = sub_2741C836C();
        }

        while ((v4 & 1) == 0);
      }

      v5 = a3;

      v10 = v42;
      a1[v18] |= v19;
      v9 = v45;
      v23 = __OFADD__(v47++, 1);
      if (v23)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v10 = v42;
      v9 = v45;
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
LABEL_42:

      sub_274154958(a1, a2, v47, v5);
      return;
    }

    v13 = *(v40 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v45 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

LABEL_44:
  __break(1u);
}

unint64_t *sub_274156108(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v46 = result;
  v6 = *(a3 + 16);
  v7 = *(a4 + 16);
  v58 = a3;
  if (v7 >= v6)
  {
    v49 = 0;
    v26 = 0;
    v27 = a3 + 56;
    v28 = 1 << *(a3 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(a3 + 56);
    v31 = (v28 + 63) >> 6;
    v32 = a4 + 56;
    while (v30)
    {
      v33 = __clz(__rbit64(v30));
      v51 = (v30 - 1) & v30;
LABEL_39:
      v48 = v33 | (v26 << 6);
      sub_2740ACAC8(*(v5 + 48) + 104 * v48, v56);
      sub_2741C87DC();
      v36 = v56[0];
      sub_2741C7F0C();
      v37 = sub_2741C880C();
      v38 = -1 << *(v4 + 32);
      v39 = v37 & ~v38;
      if ((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
      {
        v40 = ~v38;
        while (1)
        {
          sub_2740ACAC8(*(a4 + 48) + 104 * v39, v54);
          if (*&v54[0] == v36 && *(&v54[0] + 1) == *(&v36 + 1))
          {
            break;
          }

          v42 = sub_2741C86DC();
          sub_2740ACB2C(v54);
          if (v42)
          {
            goto LABEL_49;
          }

          v39 = (v39 + 1) & v40;
          if (((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        sub_2740ACB2C(v54);
LABEL_49:
        result = sub_2740ACB2C(v56);
        *(v46 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
        v30 = v51;
        v43 = __OFADD__(v49++, 1);
        v5 = v58;
        v4 = a4;
        if (v43)
        {
          __break(1u);
LABEL_52:

          return sub_274154B4C(v46, a2, v49, v5);
        }
      }

      else
      {
LABEL_31:
        result = sub_2740ACB2C(v56);
        v5 = v58;
        v30 = v51;
        v4 = a4;
      }
    }

    v34 = v26;
    while (1)
    {
      v26 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v26 >= v31)
      {
        goto LABEL_52;
      }

      v35 = *(v27 + 8 * v26);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v51 = (v35 - 1) & v35;
        goto LABEL_39;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = a4 + 56;
    v10 = 1 << *(a4 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a4 + 56);
    v13 = (v10 + 63) >> 6;
    v49 = 0;
    v50 = a3 + 56;
    v45 = v13;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      sub_2740ACAC8(*(v4 + 48) + 104 * (v14 | (v8 << 6)), v56);
      v54[4] = v56[4];
      v54[5] = v56[5];
      v55 = v57;
      v54[0] = v56[0];
      v54[1] = v56[1];
      v54[2] = v56[2];
      v54[3] = v56[3];
      sub_2741C87DC();
      v17 = v54[0];
      sub_2741C7F0C();
      v18 = sub_2741C880C();
      v5 = v58;
      v19 = -1 << *(v58 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v50 + 8 * (v20 >> 6))) != 0)
      {
        v23 = ~v19;
        while (1)
        {
          sub_2740ACAC8(*(v5 + 48) + 104 * v20, v53);
          if (v53[0] == v17 && v53[1] == *(&v17 + 1))
          {
            break;
          }

          v25 = sub_2741C86DC();
          sub_2740ACB2C(v53);
          if (v25)
          {
            goto LABEL_25;
          }

          v20 = (v20 + 1) & v23;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          v5 = v58;
          if (((1 << v20) & *(v50 + 8 * (v20 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

        sub_2740ACB2C(v53);
LABEL_25:
        result = sub_2740ACB2C(v54);
        v46[v21] |= v22;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_55;
        }

        ++v49;
        v5 = v58;
      }

      else
      {
LABEL_6:
        result = sub_2740ACB2C(v54);
      }

      v4 = a4;
      v13 = v45;
      v12 = v47;
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
        goto LABEL_52;
      }

      v16 = *(v9 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

void sub_274156554(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_274153EDC(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_274154F08(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_2741551F8(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_2741C835C();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_2741C836C();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2741C870C();
  __break(1u);
}

uint64_t sub_2741566D8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2741540FC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_274155048();
      goto LABEL_16;
    }

    sub_274155404(v7 + 1);
  }

  v9 = *v3;
  sub_2741C87DC();
  v10 = *v6;
  v11 = *(v6 + 8);
  sub_2741C7F0C();
  result = sub_2741C880C();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      sub_2740ACAC8(*(v9 + 48) + 104 * a2, v24);
      if (v24[0] == v10 && v24[1] == v11)
      {
        goto LABEL_19;
      }

      v15 = sub_2741C86DC();
      result = sub_2740ACB2C(v24);
      if (v15)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = *(v16 + 48) + 104 * a2;
  v18 = *(v6 + 16);
  *v17 = *v6;
  *(v17 + 16) = v18;
  *(v17 + 96) = *(v6 + 96);
  v19 = *(v6 + 80);
  *(v17 + 64) = *(v6 + 64);
  *(v17 + 80) = v19;
  v20 = *(v6 + 48);
  *(v17 + 32) = *(v6 + 32);
  *(v17 + 48) = v20;
  v21 = *(v16 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v16 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_19:
  sub_2740ACB2C(v24);
LABEL_20:
  result = sub_2741C870C();
  __break(1u);
  return result;
}

uint64_t sub_2741568A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnownNetwork(0) - 8;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v9);
  v12 = (&v21 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    do
    {
      sub_27409CF58(v15, v12);
      sub_27409CF58(v16, v8);
      if (*v12 == *v8 && v12[1] == v8[1])
      {
        sub_27409D050(v8);
        sub_27409D050(v12);
      }

      else
      {
        v19 = sub_2741C86DC();
        sub_27409D050(v8);
        sub_27409D050(v12);
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      v16 += v17;
      v15 += v17;
      --v13;
    }

    while (v13);
  }

  return 1;
}

uint64_t sub_274156A28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_2740ACAC8(v3, v9);
      sub_2740ACAC8(v4, v8);
      if (v9[0] == v8[0] && v9[1] == v8[1])
      {
        sub_2740ACB2C(v8);
        sub_2740ACB2C(v9);
      }

      else
      {
        v6 = sub_2741C86DC();
        sub_2740ACB2C(v8);
        sub_2740ACB2C(v9);
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      v4 += 104;
      v3 += 104;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void *sub_274156B04(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_2741C844C();
  type metadata accessor for WiFiNetwork(0);
  sub_2741586EC(&qword_280939F58, type metadata accessor for WiFiNetwork, MEMORY[0x277D85378]);
  result = sub_2741C821C();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_2741C84BC())
      {
        goto LABEL_30;
      }

      type metadata accessor for WiFiNetwork(0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_274156D30(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      sub_2740ACAC8(*(a4 + 48) + 104 * (v17 | (v12 << 6)), v25);
      v18 = v25[2];
      v19 = v25[1];
      *v11 = v25[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      v20 = v25[5];
      v21 = v25[4];
      v22 = v25[3];
      *(v11 + 96) = v26;
      *(v11 + 64) = v21;
      *(v11 + 80) = v20;
      *(v11 + 48) = v22;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 104;
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
        goto LABEL_26;
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
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_274156EB4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_27409D4E4(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_27409D118(v20, v21);
      sub_27409D118(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_274157020(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v20 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v21 = (v7 - 1) & v7;
LABEL_13:
      sub_2740ACAC8(*(result + 48) + 104 * (v10 | (v3 << 6)), v25);
      v23[4] = v25[4];
      v23[5] = v25[5];
      v24 = v26;
      v23[0] = v25[0];
      v23[1] = v25[1];
      v23[2] = v25[2];
      v23[3] = v25[3];
      sub_2741C87DC();
      v13 = v23[0];
      sub_2741C7F0C();
      v14 = sub_2741C880C();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        sub_2740ACAC8(*(a2 + 48) + 104 * v16, v22);
        if (v22[0] == v13 && v22[1] == *(&v13 + 1))
        {
          break;
        }

        v19 = sub_2741C86DC();
        sub_2740ACB2C(v22);
        if (v19)
        {
          goto LABEL_23;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_2740ACB2C(v22);
LABEL_23:
      sub_2740ACB2C(v23);
      result = v20;
      v7 = v21;
      if (!v21)
      {
        goto LABEL_8;
      }
    }

LABEL_26:
    sub_2740ACB2C(v23);
    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v21 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27415723C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = a3 >> 8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v29 - v13;
  v15 = sub_2741C6AFC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = &type metadata for NetworkScanResult;
  v32 = &off_2883295C0;
  v20 = swift_allocObject();
  v30[0] = v20;
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v7 & 1;
  *(v20 + 33) = v10;
  *(v20 + 40) = a4;
  *&v29[0] = 0;
  *(&v29[0] + 1) = 0xE000000000000000;

  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000016, 0x80000002741E1ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6A8, &qword_2741D4638);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](539828265, 0xE400000000000000);
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_27409DC84();

  v21 = sub_2741C81FC();
  v23 = v22;

  MEMORY[0x2743E5FB0](v21, v23);

  v24 = v29[0];
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_280945DD8);
  (*(v16 + 16))(v19, v25, v15);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v24, *(&v24 + 1));

  (*(v16 + 8))(v19, v15);
  v26 = sub_2741C80DC();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  sub_27409D4E4(v30, v29);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a5;
  sub_27409D118(v29, (v27 + 5));

  sub_2740CE980(0, 0, v14, &unk_2741D4648, v27);

  return __swift_destroy_boxed_opaque_existential_1Tm(v30);
}

uint64_t sub_274157614(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_2741514FC(a1, v4, v5, v6);
}

uint64_t sub_274157738()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_274157770()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2741577B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27414F938(a1, v4, v5, v6, (v1 + 5));
}

unint64_t *sub_274157898(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = result;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    sub_2740ACAC8(*(a3 + 48) + 104 * v14, v24);
    swift_getKeyPath();
    v25 = a4;
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C6A0C();

    sub_274197AE8();
    v16 = v15;
    v18 = v17;

    LOBYTE(v16) = sub_27409DF24(v16, v18);

    result = sub_2740ACB2C(v24);
    if (v16)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_274154B4C(v21, a2, v22, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_274157A94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v36 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = v8;
    v29 = v3;
    v27[1] = v27;
    MEMORY[0x28223BE20](v10, v11);
    v30 = v27 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v9);
    v12 = 0;
    v33 = v5;
    v3 = v5 + 56;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 56);
    v31 = 0;
    v32 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksListModel___observationRegistrar;
    v8 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v19 = v16 | (v12 << 6);
      sub_2740ACAC8(*(v33 + 48) + 104 * v19, v35);
      swift_getKeyPath();
      v34 = a2;
      sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
      sub_2741C6A0C();

      sub_274197AE8();
      v21 = v20;
      v5 = v22;

      v9 = v35;
      LOBYTE(v21) = sub_27409DF24(v21, v5);

      sub_2740ACB2C(v35);
      if (v21)
      {
        *&v30[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_274154B4C(v30, v28, v31, v33);

          return v24;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_16;
      }

      v18 = *(v3 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();

  v24 = sub_274155CB8(v26, v8, v5, a2);

  MEMORY[0x2743E7790](v26, -1, -1);

  return v24;
}

uint64_t sub_274157DC4()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 49);
  *(v1 + 136) = *(v0 + 24);
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;
  *(v1 + 160) = v4;
  *(v1 + 161) = v5;
}

uint64_t sub_274157E4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_27414E154(a1, v4, v5, v6);
}

uint64_t sub_274157F44()
{
  *(*(v0 + 16) + 168) = *(v0 + 24);
}

uint64_t sub_274157F80()
{
  *(*(v0 + 16) + 128) = *(v0 + 24);
}

double sub_274157FF4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 104) = result;
  return result;
}

uint64_t sub_274158004()
{
  *(*(v0 + 16) + 96) = *(v0 + 24);
}

uint64_t sub_2741580AC()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_2741580E8()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t sub_274158124()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_274158160()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_2741581FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27414DAB8(a1, v4, v5, v6);
}

uint64_t sub_274158374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27414CEE0(a1, v4, v5, v6);
}

uint64_t sub_274158494()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2741584E0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_274158528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27414C990(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroyTm_14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_274158638()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2740A7434;

  return sub_27414DD48();
}

uint64_t sub_2741586EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274158770()
{
  result = sub_2741C7E3C();
  qword_280946F08 = result;
  return result;
}

void sub_27415885C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_2741588C4()
{
  type metadata accessor for WiFiInterface();
  swift_allocObject();
  result = sub_274158C94();
  qword_280946F10 = result;
  return result;
}

uint64_t sub_274158900(uint64_t a1)
{
  v3 = 7104878;
  v4 = sub_2741C6AFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_2741C856C();

  v30 = 0xD00000000000001DLL;
  v31 = 0x80000002741E2230;
  sub_2740A6D94(a1, v27, &qword_2809395D8, &qword_2741CFF78);
  v9 = v28;
  if (v28)
  {
    v10 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v11 = (*(v10 + 32))(v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    sub_27409D420(v27, &qword_2809395D8, &qword_2741CFF78);
    v13 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x2743E5FB0](v11, v13);

  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_beginAccess();
  v14 = v1[9];
  if (v14)
  {
    v15 = v1[10];
    v16 = __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
    v17 = *(v14 - 8);
    MEMORY[0x28223BE20](v16, v16);
    v19 = &v27[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v3 = (*(v15 + 32))(v14, v15);
    v21 = v20;
    (*(v17 + 8))(v19, v14);
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v3, v21);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  v22 = v30;
  v23 = v31;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v4, qword_280945DD8);
  (*(v5 + 16))(v8, v24, v4);
  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v22, v23);

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_274158C94()
{
  v1 = v0;
  v45 = *MEMORY[0x277D85DE8];
  v2 = sub_2741C6AFC();
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v37 - v8;
  *(v1 + 24) = &unk_288325D90;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  v10 = MEMORY[0x277D84F90];
  *(v1 + 80) = 0;
  *(v1 + 88) = v10;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1;
  v11 = [objc_allocWithZone(MEMORY[0x277D02B18]) initWithServiceType_];
  *(v1 + 16) = v11;
  [v11 activate];
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = type metadata accessor for KnownNetwork(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = sub_2741C80DC();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v1;
  v19[5] = v12;
  v19[6] = v13;
  swift_retain_n();

  sub_2740CE980(0, 0, v9, &unk_2741D4940, v19);

  v18(v9, 1, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v1;

  sub_2740CE980(0, 0, v9, &unk_2741D4950, v20);

  v21 = *(v1 + 16);
  v43 = sub_27416098C;
  v44 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_27415885C;
  v42 = &block_descriptor_10;
  v22 = _Block_copy(&aBlock);
  v23 = v44;
  v24 = v21;

  [v24 setEventHandler_];
  _Block_release(v22);

  v25 = *(v1 + 24);
  v26 = v25[2];

  if (v26)
  {
    v27 = 0;
    while (1)
    {
      if (v27 >= v25[2])
      {
        __break(1u);
        goto LABEL_11;
      }

      v28 = v25[v27 + 4];
      v29 = *(v1 + 16);
      aBlock = 0;
      v30 = [v29 startMonitoringEventType:v28 error:&aBlock];
      v23 = aBlock;
      if (!v30)
      {
        break;
      }

      ++v27;
      v31 = aBlock;
      if (v26 == v27)
      {
        goto LABEL_6;
      }
    }

    v32 = aBlock;

    v26 = sub_2741C681C();

    swift_willThrow();
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_2741C856C();

    aBlock = 0xD000000000000021;
    v40 = 0x80000002741E22F0;
    swift_getErrorValue();
    v33 = sub_2741C877C();
    MEMORY[0x2743E5FB0](v33);

    v25 = aBlock;
    v23 = v40;
    if (qword_280937360 == -1)
    {
      goto LABEL_8;
    }

LABEL_11:
    swift_once();
LABEL_8:
    v34 = __swift_project_value_buffer(v2, qword_280945DD8);
    v35 = v38;
    (*(v38 + 16))(v5, v34, v2);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v25, v23);

    (*(v35 + 8))(v5, v2);
  }

  else
  {
LABEL_6:
  }

  return v1;
}

uint64_t sub_274159258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[110] = a5;
  v6[109] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v6[111] = swift_task_alloc();
  v6[112] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_274159308, 0, 0);
}

uint64_t sub_274159308()
{
  v1 = *(v0 + 872);
  v2 = [*(v1 + 16) currentScanResult];
  if (v2)
  {
    v3 = *(v0 + 880);
    v4 = v2;
    sub_27409D85C(v4, v0 + 328);
    swift_beginAccess();
    sub_274161418(v0 + 328, v3 + 16, &qword_280938340, &qword_2741D1660);
    swift_beginAccess();
    sub_2740A6D94(v3 + 16, v0 + 432, &qword_280938340, &qword_2741D1660);
    if (*(v0 + 440))
    {
      v5 = sub_2740F2248();
      v6 = swift_allocObject();
      v7 = *(v0 + 512);
      *(v6 + 80) = *(v0 + 496);
      *(v6 + 96) = v7;
      *(v6 + 112) = *(v0 + 528);
      v8 = *(v0 + 448);
      *(v6 + 16) = *(v0 + 432);
      *(v6 + 32) = v8;
      v9 = *(v0 + 480);
      *(v6 + 48) = *(v0 + 464);
      *(v6 + 64) = v9;
      v10 = &type metadata for ScannedNetwork;
    }

    else
    {
      sub_27409D420(v0 + 432, &qword_280938340, &qword_2741D1660);
      v6 = 0;
      v10 = 0;
      v5 = 0;
      *(v0 + 584) = 0u;
    }

    v11 = *(v0 + 872);
    *(v0 + 576) = v6;
    *(v0 + 600) = v10;
    *(v0 + 608) = v5;
    swift_beginAccess();
    sub_2740A6D94(v11 + 48, v0 + 616, &qword_2809395D8, &qword_2741CFF78);
    swift_beginAccess();
    sub_2740F22E4(v0 + 576, v11 + 48);
    swift_endAccess();
    sub_274158900(v0 + 616);
    sub_27409D420(v0 + 616, &qword_2809395D8, &qword_2741CFF78);
    sub_27409D420(v0 + 576, &qword_2809395D8, &qword_2741CFF78);
    v12 = [v4 matchingKnownNetworkProfile];
    if (v12)
    {
      v13 = *(v0 + 896);
      v14 = *(v0 + 888);
      sub_274117670(v12, v14);

      v15 = type metadata accessor for KnownNetwork(0);
      (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
      swift_beginAccess();
      sub_274161418(v14, v13, &qword_280938570, &qword_2741D1630);
    }

    else
    {
    }
  }

  v16 = *(v0 + 880);
  swift_beginAccess();
  sub_2740A6D94(v16 + 16, v0 + 16, &qword_280938340, &qword_2741D1660);
  v17 = *(v0 + 24);
  sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
  if (v17 && (v18 = *(v0 + 872), swift_beginAccess(), sub_2740A6D94(v18 + 48, v0 + 536, &qword_2809395D8, &qword_2741CFF78), v19 = *(v0 + 560), sub_27409D420(v0 + 536, &qword_2809395D8, &qword_2741CFF78), v19) && (v20 = *(v1 + 16), v21 = sub_2741BC2FC(), v20, (v21 & 1) != 0))
  {
    *(v0 + 904) = sub_2741C80AC();
    *(v0 + 912) = sub_2741C809C();
    v22 = sub_2741C805C();
    v24 = v23;
    v25 = sub_274159710;
  }

  else
  {
    *(v0 + 944) = sub_2741C80AC();
    *(v0 + 952) = sub_2741C809C();
    v22 = sub_2741C805C();
    v24 = v26;
    v25 = sub_274159A50;
  }

  return MEMORY[0x2822009F8](v25, v22, v24);
}

uint64_t sub_274159710()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_2741597A8, 0, 0);
}

uint64_t sub_2741597A8(uint64_t a1)
{
  *(v1 + 920) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274159834, v3, v2);
}

uint64_t sub_274159834()
{

  *(v0 + 928) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2741598B0, 0, 0);
}

uint64_t sub_2741598B0(uint64_t a1)
{
  *(v1 + 936) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415993C, v3, v2);
}

uint64_t sub_27415993C()
{

  sub_2741BB034(1);

  return MEMORY[0x2822009F8](sub_2741599B8, 0, 0);
}

uint64_t sub_2741599B8()
{
  *(v0 + 944) = sub_2741C80AC();
  *(v0 + 952) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274159A50, v2, v1);
}

uint64_t sub_274159A50()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_274159AE8, 0, 0);
}

uint64_t sub_274159AE8(uint64_t a1)
{
  *(v1 + 960) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274159B74, v3, v2);
}

uint64_t sub_274159B74()
{

  *(v0 + 968) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_274159BF0, 0, 0);
}

uint64_t sub_274159BF0()
{
  v1 = *(v0 + 880);
  swift_beginAccess();
  sub_2740A6D94(v1 + 16, v0 + 120, &qword_280938340, &qword_2741D1660);
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  *(v0 + 976) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274159CC4, v3, v2);
}

uint64_t sub_274159CC4()
{

  sub_2741B9380(v0 + 120, v0 + 224);

  sub_27409D420(v0 + 224, &qword_280938340, &qword_2741D1660);
  sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);

  return MEMORY[0x2822009F8](sub_274159D74, 0, 0);
}

uint64_t sub_274159D74(uint64_t a1)
{
  *(v1 + 984) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274159E00, v3, v2);
}

uint64_t sub_274159E00()
{

  return MEMORY[0x2822009F8](sub_274159E68, 0, 0);
}

uint64_t sub_274159E68(uint64_t a1)
{
  *(v1 + 992) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274159EF4, v3, v2);
}

uint64_t sub_274159EF4()
{

  *(v0 + 1000) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_274159F70, 0, 0);
}

uint64_t sub_274159F70()
{
  v1 = v0[112];
  v2 = v0[111];
  swift_beginAccess();
  sub_2740A6D94(v1, v2, &qword_280938570, &qword_2741D1630);
  v0[126] = sub_2741C809C();
  v4 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415A03C, v4, v3);
}

uint64_t sub_27415A03C()
{
  v1 = *(v0 + 888);

  sub_2741B8B0C(v1);

  sub_27409D420(v1, &qword_280938570, &qword_2741D1630);

  v2 = *(v0 + 8);

  return v2();
}

void sub_27415A0D4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v43 - v6;
  v8 = sub_2741C6AFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 type];
  if (v13 > 18)
  {
    if (v13 > 27)
    {
      if (v13 == 28)
      {
        v31 = [a1 description];
        v32 = sub_2741C7E7C();
        v34 = v33;

        sub_2740CB218(v32, v34, 0xD00000000000001DLL, 0x80000002741E2340);

        v35 = sub_2741C80DC();
        (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = a2;

        v17 = &unk_2741D4988;
        goto LABEL_24;
      }

      if (v13 == 30)
      {
        v23 = sub_2741C80DC();
        (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = a2;

        v17 = &unk_2741D4968;
        goto LABEL_24;
      }
    }

    else
    {
      if ((v13 - 19) < 2)
      {
        v14 = sub_2741C80DC();
        (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = a1;
        v16 = a1;
        v17 = &unk_2741D4960;
LABEL_24:
        sub_2740CE980(0, 0, v7, v17, v15);

        return;
      }

      if (v13 == 27)
      {
        v24 = sub_2741C80DC();
        (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = a2;

        v17 = &unk_2741D4978;
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

  if (v13 <= 5)
  {
    if (v13 == 1)
    {
      v25 = [a1 description];
      v26 = sub_2741C7E7C();
      v28 = v27;

      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v8, qword_280945DD8);
      (*(v9 + 16))(v12, v29, v8);
      sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v26, v28);

      (*(v9 + 8))(v12, v8);
      v30 = sub_2741C80DC();
      (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = a2;

      v17 = &unk_2741D49A8;
      goto LABEL_24;
    }

    if (v13 == 2)
    {
      v18 = [a1 description];
      v19 = sub_2741C7E7C();
      v21 = v20;

      sub_2740CB218(v19, v21, 0xD000000000000014, 0x80000002741E2360);

      v22 = sub_2741C80DC();
      (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = a2;

      v17 = &unk_2741D4998;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v13 != 6)
  {
    if (v13 == 7)
    {
      sub_27415A844(a1);
      return;
    }

LABEL_25:
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_2741C856C();

    v43 = 0xD000000000000010;
    v44 = 0x80000002741E2320;
    v36 = [a1 description];
    v37 = sub_2741C7E7C();
    v39 = v38;

    MEMORY[0x2743E5FB0](v37, v39);

    v41 = v43;
    v40 = v44;
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v8, qword_280945DD8);
    (*(v9 + 16))(v12, v42, v8);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v41, v40);

    (*(v9 + 8))(v12, v8);
    return;
  }

  sub_274160BCC(a1);
}

uint64_t sub_27415A844(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v30[-v5];
  v7 = sub_2741C6AFC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [a1 info];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  v14 = sub_2741C7D6C();

  v15 = sub_2741C7E7C();
  if (!*(v14 + 16))
  {

    goto LABEL_11;
  }

  v17 = v1;
  v18 = sub_2741251AC(v15, v16);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_27409D308(*(v14 + 56) + 32 * v18, v30);

  sub_2740BA268(0, &qword_28093A6C0, 0x277D02B28);
  if (swift_dynamicCast())
  {
    v21 = v32;
    swift_beginAccess();
    sub_2740A6D94(v17 + 48, v30, &qword_2809395D8, &qword_2741CFF78);
    v22 = v31;
    sub_27409D420(v30, &qword_2809395D8, &qword_2741CFF78);
    if (!v22)
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v7, qword_280945DD8);
      (*(v8 + 16))(v11, v23, v7);
      sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000039, 0x80000002741E2560);
      (*(v8 + 8))(v11, v7);
      v24 = sub_2741C80DC();
      (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v17;

      sub_2740CE980(0, 0, v6, &unk_2741D7DF0, v25);
    }

    v26 = sub_2741C80DC();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v21;
    sub_2740CE980(0, 0, v6, &unk_2741D49C8, v27);
  }

LABEL_12:
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v7, qword_280945DD8);
  (*(v8 + 16))(v11, v29, v7);
  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000025, 0x80000002741E2530);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_27415AD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 288) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  *(v4 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415ADB8, 0, 0);
}

uint64_t sub_27415ADB8()
{
  *(v0 + 113) = [*(*(v0 + 288) + 16) powerOn];
  *(v0 + 304) = sub_2741C80AC();
  *(v0 + 312) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415AE68, v2, v1);
}

uint64_t sub_27415AE68()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415AF00, 0, 0);
}

uint64_t sub_27415AF00(uint64_t a1)
{
  *(v1 + 320) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415AF8C, v3, v2);
}

uint64_t sub_27415AF8C()
{

  *(v0 + 328) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415B008, 0, 0);
}

uint64_t sub_27415B008(uint64_t a1)
{
  *(v1 + 336) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B094, v3, v2);
}

uint64_t sub_27415B094()
{
  v1 = *(v0 + 113);

  sub_2741BB460(v1);

  return MEMORY[0x2822009F8](sub_27415B110, 0, 0);
}

uint64_t sub_27415B110(uint64_t a1)
{
  *(v1 + 344) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B19C, v3, v2);
}

uint64_t sub_27415B19C()
{

  return MEMORY[0x2822009F8](sub_27415B204, 0, 0);
}

uint64_t sub_27415B204(uint64_t a1)
{
  *(v1 + 352) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B290, v3, v2);
}

uint64_t sub_27415B290()
{

  *(v0 + 360) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415B30C, 0, 0);
}

uint64_t sub_27415B30C()
{
  v1 = *(v0 + 288);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  swift_beginAccess();
  sub_2740A6D94(v1 + 48, v0 + 224, &qword_2809395D8, &qword_2741CFF78);
  if (*(v0 + 248))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 216) = 0;
      *(v0 + 200) = 0u;
      *(v0 + 184) = 0u;
      *(v0 + 168) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
    }
  }

  else
  {
    sub_27409D420(v0 + 224, &qword_2809395D8, &qword_2741CFF78);
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0;
  }

  *(v0 + 368) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B478, v3, v2);
}

uint64_t sub_27415B478()
{

  sub_2741B9380(v0 + 16, v0 + 120);

  sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
  sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);

  return MEMORY[0x2822009F8](sub_27415B524, 0, 0);
}

uint64_t sub_27415B524(uint64_t a1)
{
  *(v1 + 376) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B5B0, v3, v2);
}

uint64_t sub_27415B5B0()
{

  return MEMORY[0x2822009F8](sub_27415B618, 0, 0);
}

uint64_t sub_27415B618(uint64_t a1)
{
  *(v1 + 384) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B6A4, v3, v2);
}

uint64_t sub_27415B6A4()
{

  *(v0 + 392) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415B720, 0, 0);
}

uint64_t sub_27415B720()
{
  v1 = *(v0 + 296);
  v2 = type metadata accessor for KnownNetwork(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v0 + 400) = sub_2741C809C();
  v4 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B7EC, v4, v3);
}

uint64_t sub_27415B7EC()
{
  v1 = *(v0 + 296);

  sub_2741B8B0C(v1);

  sub_27409D420(v1, &qword_280938570, &qword_2741D1630);

  return MEMORY[0x2822009F8](sub_27415B880, 0, 0);
}

uint64_t sub_27415B880(uint64_t a1)
{
  v2 = *(v1 + 113);
  *(v1 + 408) = sub_2741C809C();
  v4 = sub_2741C805C();
  if (v2)
  {
    v5 = sub_27415BBA0;
  }

  else
  {
    v5 = sub_27415B928;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_27415B928()
{

  return MEMORY[0x2822009F8](sub_27415B990, 0, 0);
}

uint64_t sub_27415B990(uint64_t a1)
{
  *(v1 + 416) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415BA1C, v3, v2);
}

uint64_t sub_27415BA1C()
{

  *(v0 + 424) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415BA98, 0, 0);
}

uint64_t sub_27415BA98(uint64_t a1)
{
  *(v1 + 432) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415BB24, v3, v2);
}

uint64_t sub_27415BB24()
{

  sub_2741B8FB8(16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27415BBA0()
{

  return MEMORY[0x2822009F8](sub_27415BC08, 0, 0);
}

uint64_t sub_27415BC08(uint64_t a1)
{
  *(v1 + 440) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415BC94, v3, v2);
}

uint64_t sub_27415BC94()
{

  *(v0 + 448) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415BD10, 0, 0);
}

uint64_t sub_27415BD10(uint64_t a1)
{
  *(v1 + 456) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415BD9C, v3, v2);
}

uint64_t sub_27415BD9C()
{

  sub_2741B8FB8(2);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27415BE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[77] = a4;
  v5 = sub_2741C6AFC();
  v4[78] = v5;
  v4[79] = *(v5 - 8);
  v4[80] = swift_task_alloc();
  v6 = type metadata accessor for KnownNetwork(0);
  v4[81] = v6;
  v4[82] = *(v6 - 8);
  v4[83] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v4[84] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415BF6C, 0, 0);
}

uint64_t sub_27415BF6C()
{
  *(v0 + 680) = sub_2741C80AC();
  *(v0 + 688) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415C004, v2, v1);
}

uint64_t sub_27415C004()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415C09C, 0, 0);
}

uint64_t sub_27415C09C(uint64_t a1)
{
  *(v1 + 696) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415C128, v3, v2);
}

uint64_t sub_27415C128()
{

  *(v0 + 704) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415C1A4, 0, 0);
}

uint64_t sub_27415C1A4(uint64_t a1)
{
  *(v1 + 712) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415C230, v3, v2);
}

uint64_t sub_27415C230()
{

  sub_2741BAB64(v0 + 408);

  return MEMORY[0x2822009F8](sub_27415C2B0, 0, 0);
}

uint64_t sub_27415C2B0()
{
  if (!*(v0 + 432))
  {
    sub_27409D420(v0 + 408, &qword_280939AF8, &qword_2741D11A0);
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A238, &qword_2741D4780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 400) = 0;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    goto LABEL_8;
  }

  if (!*(v0 + 392))
  {
LABEL_8:
    sub_27409D420(v0 + 368, &qword_28093A228, &unk_2741D4770);
    goto LABEL_9;
  }

  sub_27409D118((v0 + 368), v0 + 328);
  __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
  v1 = sub_2741613D0(&qword_28093A3E0, type metadata accessor for AssociationState, &unk_2741D0B34);
  v2 = *(v1 + 16);
  v3 = type metadata accessor for AssociationState(0);
  if ((v2(v3, v1) | 2) == 3)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));
LABEL_9:
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 640);
    v5 = *(v0 + 632);
    v6 = *(v0 + 624);
    v7 = __swift_project_value_buffer(v6, qword_280945DD8);
    (*(v5 + 16))(v4, v7, v6);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000035, 0x80000002741E2380);
    (*(v5 + 8))(v4, v6);

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 616);
  swift_beginAccess();
  sub_2740A6D94(v10 + 48, v0 + 448, &qword_2809395D8, &qword_2741CFF78);
  if (*(v0 + 472))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 112) = 0;
      *(v0 + 80) = 0u;
      *(v0 + 96) = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }
  }

  else
  {
    sub_27409D420(v0 + 448, &qword_2809395D8, &qword_2741CFF78);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0;
  }

  v11 = *(v0 + 672);
  v12 = *(v0 + 648);
  v13 = *(v0 + 616);
  v14 = *(*(v0 + 656) + 56);
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0;
  v14(v11, 1, 1, v12);
  v15 = [*(v13 + 16) currentScanResult];
  if (v15)
  {
    v16 = v15;
    sub_27409D85C(v16, v0 + 224);
    *(v0 + 512) = &type metadata for ScannedNetwork;
    *(v0 + 520) = sub_2740F2248();
    v17 = swift_allocObject();
    *(v0 + 488) = v17;
    sub_2740ACAC8(v0 + 224, v17 + 16);
    sub_2740A6D94(v10 + 48, v0 + 528, &qword_2809395D8, &qword_2741CFF78);
    swift_beginAccess();
    sub_2740F22E4(v0 + 488, v10 + 48);
    swift_endAccess();
    sub_274158900(v0 + 528);
    sub_27409D420(v0 + 528, &qword_2809395D8, &qword_2741CFF78);
    sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v0 + 488, &qword_2809395D8, &qword_2741CFF78);
    sub_2740ACAC8(v0 + 224, v0 + 120);
    v18 = [v16 matchingKnownNetworkProfile];
    if (v18)
    {
      v19 = *(v0 + 672);
      v20 = *(v0 + 664);
      v21 = *(v0 + 648);
      sub_274117670(v18, v20);

      sub_2740ACB2C(v0 + 224);
      sub_27409D420(v19, &qword_280938570, &qword_2741D1630);
      sub_27409D240(v20, v19);
      v14(v19, 0, 1, v21);
    }

    else
    {
      sub_2740ACB2C(v0 + 224);
    }
  }

  *(v0 + 720) = sub_2741C809C();
  v23 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415C82C, v23, v22);
}

uint64_t sub_27415C82C()
{

  return MEMORY[0x2822009F8](sub_27415C894, 0, 0);
}

uint64_t sub_27415C894(uint64_t a1)
{
  *(v1 + 728) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415C920, v3, v2);
}

uint64_t sub_27415C920()
{

  *(v0 + 736) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415C99C, 0, 0);
}

uint64_t sub_27415C99C(uint64_t a1)
{
  *(v1 + 744) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415CA28, v3, v2);
}

uint64_t sub_27415CA28()
{

  sub_2741B9380(v0 + 120, v0 + 16);

  return MEMORY[0x2822009F8](sub_27415CAA8, 0, 0);
}

uint64_t sub_27415CAA8(uint64_t a1)
{
  *(v1 + 752) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415CB34, v3, v2);
}

uint64_t sub_27415CB34()
{

  return MEMORY[0x2822009F8](sub_27415CB9C, 0, 0);
}

uint64_t sub_27415CB9C(uint64_t a1)
{
  *(v1 + 760) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415CC28, v3, v2);
}

uint64_t sub_27415CC28()
{

  *(v0 + 768) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415CCA4, 0, 0);
}

uint64_t sub_27415CCA4(uint64_t a1)
{
  *(v1 + 776) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415CD30, v3, v2);
}

uint64_t sub_27415CD30()
{
  v1 = *(v0 + 672);

  sub_2741B8B0C(v1);

  return MEMORY[0x2822009F8](sub_27415CDB0, 0, 0);
}

uint64_t sub_27415CDB0()
{
  sub_27409D420(v0[84], &qword_280938570, &qword_2741D1630);
  sub_27409D420((v0 + 15), &qword_280938340, &qword_2741D1660);
  sub_27409D420((v0 + 2), &qword_280938340, &qword_2741D1660);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v1 = v0[1];

  return v1();
}

uint64_t sub_27415CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2741C6AFC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415CF38, 0, 0);
}

uint64_t sub_27415CF38()
{
  v1 = [*(v0[2] + 16) wifiUIStateFlags];
  v0[6] = v1;
  if ((v1 & 2) != 0)
  {
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];
    v13 = __swift_project_value_buffer(v12, qword_280945DD8);
    (*(v11 + 16))(v10, v13, v12);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD00000000000001CLL, 0x80000002741E2440);
    (*(v11 + 8))(v10, v12);
    v0[7] = sub_2741C80AC();
    v0[8] = sub_2741C809C();
    v15 = sub_2741C805C();

    return MEMORY[0x2822009F8](sub_27415D200, v15, v14);
  }

  else
  {
    v2 = v1;
    sub_2741C856C();

    v3 = CWFWiFiUIStateFlags.description.getter(v2);
    MEMORY[0x2743E5FB0](v3);

    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[3];
    v7 = __swift_project_value_buffer(v6, qword_280945DD8);
    (*(v5 + 16))(v4, v7, v6);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000017, 0x80000002741E2420);

    (*(v5 + 8))(v4, v6);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_27415D200()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415D298, 0, 0);
}

uint64_t sub_27415D298(uint64_t a1)
{
  *(v1 + 72) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415D324, v3, v2);
}

uint64_t sub_27415D324()
{

  *(v0 + 80) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415D3A0, 0, 0);
}

uint64_t sub_27415D3A0(uint64_t a1)
{
  *(v1 + 88) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415D42C, v3, v2);
}

uint64_t sub_27415D42C()
{

  sub_2741BB460(1);

  return MEMORY[0x2822009F8](sub_27415D4A4, 0, 0);
}

uint64_t sub_27415D4A4()
{
  v1 = v0[6];
  sub_2741C856C();

  v2 = CWFWiFiUIStateFlags.description.getter(v1);
  MEMORY[0x2743E5FB0](v2);

  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = __swift_project_value_buffer(v5, qword_280945DD8);
  (*(v4 + 16))(v3, v6, v5);
  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000017, 0x80000002741E2420);

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_27415D624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[81] = a4;
  v5 = sub_2741C6AFC();
  v4[82] = v5;
  v4[83] = *(v5 - 8);
  v4[84] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415D6E4, 0, 0);
}

uint64_t sub_27415D6E4()
{
  v26 = v0;
  *(v0 + 16) = 0u;
  v1 = *(v0 + 648);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  v2 = [*(v1 + 16) currentScanResult];
  if (v2)
  {
    v3 = (v0 + 448);
    v4 = v0 + 488;
    v5 = v2;
    sub_27409D85C(v5, v24);
    sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
    v6 = v24[5];
    *(v0 + 80) = v24[4];
    *(v0 + 96) = v6;
    *(v0 + 112) = v25;
    v7 = v24[1];
    *(v0 + 16) = v24[0];
    *(v0 + 32) = v7;
    v8 = v24[3];
    *(v0 + 48) = v24[2];
    *(v0 + 64) = v8;
    sub_2740A6D94(v0 + 16, v0 + 224, &qword_280938340, &qword_2741D1660);
    if (*(v0 + 232))
    {
      v9 = sub_2740F2248();
      v10 = swift_allocObject();
      v11 = *(v0 + 304);
      *(v10 + 80) = *(v0 + 288);
      *(v10 + 96) = v11;
      *(v10 + 112) = *(v0 + 320);
      v12 = *(v0 + 240);
      *(v10 + 16) = *(v0 + 224);
      *(v10 + 32) = v12;
      v13 = *(v0 + 272);
      *(v10 + 48) = *(v0 + 256);
      *(v10 + 64) = v13;
      v14 = &type metadata for ScannedNetwork;
    }

    else
    {
      sub_27409D420(v0 + 224, &qword_280938340, &qword_2741D1660);
      v10 = 0;
      v14 = 0;
      v9 = 0;
      *(v0 + 456) = 0;
      *(v0 + 464) = 0;
    }

    v20 = *(v0 + 648);
    *(v0 + 448) = v10;
    *(v0 + 472) = v14;
    *(v0 + 480) = v9;
    swift_beginAccess();
    sub_2740A6D94(v20 + 48, v0 + 488, &qword_2809395D8, &qword_2741CFF78);
    swift_beginAccess();
    sub_2740F22E4(v0 + 448, v20 + 48);
    swift_endAccess();
    sub_274158900(v0 + 488);
  }

  else
  {
    v3 = (v0 + 328);
    v4 = v0 + 368;
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 672);
    v16 = *(v0 + 664);
    v17 = *(v0 + 656);
    v18 = *(v0 + 648);
    v19 = __swift_project_value_buffer(v17, qword_280945DD8);
    (*(v16 + 16))(v15, v19, v17);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000012, 0x80000002741E2210);
    (*(v16 + 8))(v15, v17);
    *(v0 + 360) = 0;
    *v3 = 0u;
    *(v0 + 344) = 0u;
    swift_beginAccess();
    sub_2740A6D94(v18 + 48, v0 + 368, &qword_2809395D8, &qword_2741CFF78);
    swift_beginAccess();
    sub_2740F22E4(v0 + 328, v18 + 48);
    swift_endAccess();
    sub_274158900(v0 + 368);
  }

  sub_27409D420(v4, &qword_2809395D8, &qword_2741CFF78);
  sub_27409D420(v3, &qword_2809395D8, &qword_2741CFF78);
  *(v0 + 680) = sub_2741C80AC();
  *(v0 + 688) = sub_2741C809C();
  v22 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415DAA4, v22, v21);
}

uint64_t sub_27415DAA4()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415DB3C, 0, 0);
}

uint64_t sub_27415DB3C(uint64_t a1)
{
  *(v1 + 696) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415DBC8, v3, v2);
}

uint64_t sub_27415DBC8()
{

  *(v0 + 704) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415DC44, 0, 0);
}

uint64_t sub_27415DC44(uint64_t a1)
{
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0;
  *(v1 + 712) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415DCF0, v3, v2);
}

uint64_t sub_27415DCF0()
{

  sub_2741B9380(v0 + 16, v0 + 120);

  sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);

  return MEMORY[0x2822009F8](sub_27415DD88, 0, 0);
}

uint64_t sub_27415DD88(uint64_t a1)
{
  *(v1 + 720) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415DE14, v3, v2);
}

uint64_t sub_27415DE14()
{

  return MEMORY[0x2822009F8](sub_27415DE7C, 0, 0);
}

uint64_t sub_27415DE7C(uint64_t a1)
{
  *(v1 + 728) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415DF08, v3, v2);
}

uint64_t sub_27415DF08()
{

  *(v0 + 736) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415DF84, 0, 0);
}

uint64_t sub_27415DF84()
{
  v1 = *(v0 + 648);
  swift_beginAccess();
  sub_2740A6D94(v1 + 48, v0 + 408, &qword_2809395D8, &qword_2741CFF78);
  v2 = *(v0 + 432);
  sub_27409D420(v0 + 408, &qword_2809395D8, &qword_2741CFF78);
  if (v2)
  {
    v3 = *(*(v0 + 648) + 16);
    v4 = sub_2741BC2FC();
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 113) = v4 & 1;
  *(v0 + 744) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415E09C, v6, v5);
}

uint64_t sub_27415E09C()
{
  v1 = *(v0 + 113);

  sub_2741BB034(v1);

  return MEMORY[0x2822009F8](sub_27415E120, 0, 0);
}

uint64_t sub_27415E120()
{
  sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27415E19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = sub_2741C6AFC();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415E25C, 0, 0);
}

uint64_t sub_27415E25C()
{
  v1 = [*(*(v0 + 208) + 16) userSettings];
  *(v0 + 240) = v1;
  if (!v1)
  {
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 224);
    v10 = *(v0 + 232);
    v12 = *(v0 + 216);
    v13 = __swift_project_value_buffer(v12, qword_280945DD8);
    (*(v11 + 16))(v10, v13, v12);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000023, 0x80000002741E2460);
    (*(v11 + 8))(v10, v12);
    goto LABEL_14;
  }

  v2 = v1;
  v3 = sub_2740CD860([v1 askToJoinMode]);
  *(v0 + 305) = v3;
  if (v3 == 4)
  {
    v4 = "om CoreWiFi are nil";
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);
    v8 = __swift_project_value_buffer(v7, qword_280945DD8);
    (*(v6 + 16))(v5, v8, v7);
    v9 = 0xD00000000000002CLL;
LABEL_13:
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v9, v4 | 0x8000000000000000);

    (*(v6 + 8))(v5, v7);
LABEL_14:

    v16 = *(v0 + 8);

    return v16();
  }

  v14 = sub_2740CD860([v2 autoHotspotMode]);
  *(v0 + 306) = v14;
  if (v14 == 4)
  {
    v4 = "ing not mapped from CoreWiFi";
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);
    v15 = __swift_project_value_buffer(v7, qword_280945DD8);
    (*(v6 + 16))(v5, v15, v7);
    v9 = 0xD00000000000002DLL;
    goto LABEL_13;
  }

  v18 = [v2 OSSpecificAttributes];
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = v18;
  v20 = sub_2741C7D6C();

  *(v0 + 176) = 0xD000000000000018;
  *(v0 + 184) = 0x80000002741E2510;
  sub_2741C850C();
  if (!*(v20 + 16) || (v21 = sub_274125164(v0 + 56), (v22 & 1) == 0))
  {

    sub_27409D2A4(v0 + 56);
LABEL_24:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_25;
  }

  sub_27409D308(*(v20 + 56) + 32 * v21, v0 + 96);
  sub_27409D2A4(v0 + 56);

  if (!*(v0 + 120))
  {
LABEL_25:
    sub_27409D420(v0 + 96, &qword_280937E28, &unk_2741CB3D0);
    v24 = 0;
    v25 = 0;
    goto LABEL_26;
  }

  v23 = swift_dynamicCast();
  v24 = *(v0 + 192);
  v25 = *(v0 + 200);
  if (!v23)
  {
    v24 = 0;
    v25 = 0;
  }

LABEL_26:
  *(v0 + 248) = v24;
  *(v0 + 256) = v25;
  v26 = [v2 OSSpecificAttributes];
  if (!v26)
  {
LABEL_33:
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    goto LABEL_34;
  }

  v27 = v26;
  v28 = sub_2741C7D6C();

  *(v0 + 160) = 0xD00000000000001ALL;
  *(v0 + 168) = 0x80000002741E24F0;
  sub_2741C850C();
  if (!*(v28 + 16) || (v29 = sub_274125164(v0 + 16), (v30 & 1) == 0))
  {

    sub_27409D2A4(v0 + 16);
    goto LABEL_33;
  }

  sub_27409D308(*(v28 + 56) + 32 * v29, v0 + 128);
  sub_27409D2A4(v0 + 16);

  if (*(v0 + 152))
  {
    v31 = swift_dynamicCast();
    v32 = *(v0 + 304);
    if (!v31)
    {
      v32 = 2;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_27409D420(v0 + 128, &qword_280937E28, &unk_2741CB3D0);
  v32 = 2;
LABEL_35:
  *(v0 + 307) = v32;
  *(v0 + 308) = [objc_opt_self() getPowerModificationState];
  *(v0 + 264) = sub_2741C80AC();
  *(v0 + 272) = sub_2741C809C();
  v34 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415E810, v34, v33);
}

uint64_t sub_27415E810()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415E8A8, 0, 0);
}

uint64_t sub_27415E8A8(uint64_t a1)
{
  *(v1 + 280) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415E934, v3, v2);
}

uint64_t sub_27415E934()
{

  *(v0 + 288) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415E9B0, 0, 0);
}

uint64_t sub_27415E9B0(uint64_t a1)
{
  *(v1 + 296) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415EA3C, v3, v2);
}

uint64_t sub_27415EA3C()
{
  v1 = *(v0 + 308);
  v2 = *(v0 + 307);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 305);

  if (v1)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_2741BB848(v5, v4, v3, v6 | v2);

  return MEMORY[0x2822009F8](sub_27415EAF8, 0, 0);
}

uint64_t sub_27415EAF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27415EB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = *(type metadata accessor for KnownNetwork(0) - 8);
  v4[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415EC1C, 0, 0);
}

uint64_t sub_27415EC1C()
{
  v1 = [*(v0[2] + 16) knownNetworkProfilesWithProperties_];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    sub_2740BA268(0, &qword_280937E20, 0x277D02B38);
    v4 = sub_2741C7FEC();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  *(v0[2] + 88) = v4;

  if (v4 >> 62)
  {
    v5 = sub_2741C848C();
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_16:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_6:
  v20 = v2;
  v6 = sub_27419897C(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  v9 = 0;
  v10 = v0[3];
  v11 = v20;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x2743E6600](v9, v4);
    }

    else
    {
      v12 = *(v4 + 8 * v9 + 32);
    }

    sub_274117670(v12, v0[4]);
    v14 = *(v20 + 16);
    v13 = *(v20 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_27419897C((v13 > 1), v14 + 1, 1);
    }

    v15 = v0[4];
    ++v9;
    *(v20 + 16) = v14 + 1;
    sub_27409D240(v15, v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14);
  }

  while (v5 != v9);

LABEL_17:
  v0[5] = v11;
  v0[6] = sub_2741C80AC();
  v0[7] = sub_2741C809C();
  v16 = sub_2741C805C();
  v18 = v17;
  v6 = sub_27415EE60;
  v7 = v16;
  v8 = v18;

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_27415EE60()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415EEF8, 0, 0);
}

uint64_t sub_27415EEF8(uint64_t a1)
{
  *(v1 + 64) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415EF84, v3, v2);
}

uint64_t sub_27415EF84()
{

  *(v0 + 72) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415F000, 0, 0);
}

uint64_t sub_27415F000(uint64_t a1)
{
  *(v1 + 80) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F08C, v3, v2);
}

uint64_t sub_27415F08C()
{
  v1 = *(v0 + 40);

  sub_2741BBB14(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27415F134()
{
  *(v0 + 16) = sub_2741C80AC();
  *(v0 + 24) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F1CC, v2, v1);
}

uint64_t sub_27415F1CC()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415F264, 0, 0);
}

uint64_t sub_27415F264(uint64_t a1)
{
  *(v1 + 32) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F2F0, v3, v2);
}

uint64_t sub_27415F2F0()
{

  *(v0 + 40) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415F36C, 0, 0);
}

uint64_t sub_27415F36C(uint64_t a1)
{
  *(v1 + 48) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F3F8, v3, v2);
}

uint64_t sub_27415F3F8()
{

  sub_2741BB034(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27415F488()
{
  *(v0 + 24) = sub_2741C80AC();
  *(v0 + 32) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F520, v2, v1);
}

uint64_t sub_27415F520()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415F5B8, 0, 0);
}

uint64_t sub_27415F5B8(uint64_t a1)
{
  *(v1 + 40) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F644, v3, v2);
}

uint64_t sub_27415F644()
{

  *(v0 + 48) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415F6C0, 0, 0);
}

uint64_t sub_27415F6C0()
{
  *(v0 + 56) = [*(v0 + 16) RSSI];
  *(v0 + 64) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F75C, v2, v1);
}

uint64_t sub_27415F75C()
{
  v1 = *(v0 + 56);

  sub_2741BABF0(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27415F7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = sub_2741C6AFC();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415F898, 0, 0);
}

uint64_t sub_27415F898()
{
  *(v0 + 208) = sub_2741C80AC();
  *(v0 + 216) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415F930, v2, v1);
}

uint64_t sub_27415F930()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415F9C8, 0, 0);
}

uint64_t sub_27415F9C8(uint64_t a1)
{
  *(v1 + 224) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415FA54, v3, v2);
}

uint64_t sub_27415FA54()
{

  *(v0 + 232) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415FAD0, 0, 0);
}

uint64_t sub_27415FAD0(uint64_t a1)
{
  *(v1 + 240) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415FB5C, v3, v2);
}

uint64_t sub_27415FB5C()
{

  sub_2741BAB64(v0 + 96);

  return MEMORY[0x2822009F8](sub_27415FBD8, 0, 0);
}

uint64_t sub_27415FBD8()
{
  if (*(v0 + 120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6D0, &unk_2741D8570);
    if (swift_dynamicCast())
    {
      if (*(v0 + 80))
      {
        sub_27409D118((v0 + 56), v0 + 16);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v1 = sub_2741613D0(&qword_28093A6D8, type metadata accessor for CurrentNetworkState, &unk_2741D7354);
        v2 = *(v1 + 184);
        v3 = type metadata accessor for CurrentNetworkState(0);
        if (v2(v3, v1))
        {
LABEL_27:
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
          goto LABEL_22;
        }

        v4 = [*(v0 + 176) info];
        if (v4)
        {
          v5 = v4;
          v6 = sub_2741C7D6C();

          if (!*(v6 + 16) || (v7 = sub_2741251AC(0x6573736572646441, 0xE900000000000073), (v8 & 1) == 0))
          {
LABEL_25:

            goto LABEL_26;
          }

          sub_27409D308(*(v6 + 56) + 32 * v7, v0 + 136);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
          if (swift_dynamicCast())
          {
            v9 = *(v0 + 168);
            if (v9[2])
            {
              v10 = *(v0 + 176);
              v12 = v9[4];
              v11 = v9[5];

              if ([v10 type] == 19 && (v13 = objc_opt_self(), v14 = sub_2741C7E3C(), LOBYTE(v13) = objc_msgSend(v13, sel_ISValidIPv4Address_, v14), v14, (v13 & 1) != 0) || objc_msgSend(*(v0 + 176), sel_type) == 20 && (v15 = objc_opt_self(), v16 = sub_2741C7E3C(), LODWORD(v15) = objc_msgSend(v15, sel_IsValidIPv6Address_, v16), v16, v15))
              {
                sub_2741C856C();

                MEMORY[0x2743E5FB0](v12, v11);

                if (qword_280937360 != -1)
                {
                  swift_once();
                }

                v17 = *(v0 + 200);
                v18 = *(v0 + 184);
                v19 = *(v0 + 192);
                v20 = __swift_project_value_buffer(v18, qword_280945DD8);
                (*(v19 + 16))(v17, v20, v18);
                sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000012, 0x80000002741E2670);

                (*(v19 + 8))(v17, v18);
                *(v0 + 248) = sub_2741C809C();
                v22 = sub_2741C805C();

                return MEMORY[0x2822009F8](sub_2741600E0, v22, v21);
              }

              goto LABEL_27;
            }

            goto LABEL_25;
          }
        }

LABEL_26:
        sub_2740CB660(0xD000000000000031, 0x80000002741E25A0, 0xD000000000000065, 0x80000002741E25E0, 0xD000000000000016, 0x80000002741E2650);
        goto LABEL_27;
      }
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }
  }

  else
  {
    sub_27409D420(v0 + 96, &qword_280939AF8, &qword_2741D11A0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  sub_27409D420(v0 + 56, &qword_28093A6C8, &unk_2741D6570);
LABEL_22:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2741600E0()
{

  return MEMORY[0x2822009F8](sub_274160148, 0, 0);
}

uint64_t sub_274160148(uint64_t a1)
{
  *(v1 + 256) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741601D4, v3, v2);
}

uint64_t sub_2741601D4()
{

  *(v0 + 264) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_274160250, 0, 0);
}

uint64_t sub_274160250(uint64_t a1)
{
  *(v1 + 272) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741602DC, v3, v2);
}

uint64_t sub_2741602DC()
{

  sub_2741BB034(1);

  return MEMORY[0x2822009F8](sub_274160354, 0, 0);
}

uint64_t sub_274160354()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2741603BC()
{

  sub_27409D420(v0 + 48, &qword_2809395D8, &qword_2741CFF78);
}

uint64_t sub_27416041C()
{
  v1 = *(v0 + 16);

  sub_27409D420(v0 + 48, &qword_2809395D8, &qword_2741CFF78);

  return swift_deallocClassInstance();
}

uint64_t sub_2741604CC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

void sub_274160514(char a1, char a2)
{
  v4 = 0xD000000000000013;
  v5 = sub_2741C6AFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2741C856C();

  v16 = 0xD000000000000019;
  v17 = 0x80000002741E2250;
  if (a1)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (a1)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v10, v11);

  MEMORY[0x2743E5FB0](0x6F73616572202D20, 0xEB00000000203A6ELL);
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (a2 == 1)
    {
      v12 = "settings did become inactive";
    }

    else
    {
      v12 = "setting global auto join ";
    }
  }

  else
  {
    v12 = "association finished";
  }

  MEMORY[0x2743E5FB0](v4, v12 | 0x8000000000000000);

  v13 = v16;
  v14 = v17;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280945DD8);
  (*(v6 + 16))(v9, v15, v5);
  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v13, v14);

  (*(v6 + 8))(v9, v5);
  WiFiManagerSetAutoJoinEnabled(a1 & 1);
}

uint64_t sub_274160770()
{
  if (*(v0 + 24))
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  }

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2741607BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27416080C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2740A7434;

  return sub_274159258(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2741608D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415EB60(a1, v4, v5, v6);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2741609B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415F7D8(a1, v4, v5, v6);
}

uint64_t sub_274160A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_27415E19C(a1, v4, v5, v6);
}

uint64_t sub_274160B18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415CE78(a1, v4, v5, v6);
}

void sub_274160BCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - v4;
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 info];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_2741C7D6C();

  v14 = sub_2741C7E7C();
  if (!*(v13 + 16))
  {

    goto LABEL_10;
  }

  v16 = sub_2741251AC(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_27409D308(*(v13 + 56) + 32 * v16, v26);

  sub_2740BA268(0, &qword_28093A6B8, 0x277D02B20);
  if (swift_dynamicCast())
  {
    v19 = v25;
    if ([v25 isLinkDown])
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v6, qword_280945DD8);
      (*(v7 + 16))(v10, v20, v6);
      sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD00000000000001CLL, 0x80000002741E2400);
      (*(v7 + 8))(v10, v6);
      v21 = sub_2741C80DC();
      (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      sub_2740CE980(0, 0, v5, &unk_2741D49B8, v22);
    }

    else
    {
    }

    return;
  }

LABEL_11:
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v6, qword_280945DD8);
  (*(v7 + 16))(v10, v23, v6);
  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000033, 0x80000002741E23C0);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_274160FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415BE18(a1, v4, v5, v6);
}

uint64_t sub_274161090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415AD1C(a1, v4, v5, v6);
}

uint64_t sub_274161144()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27416117C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2740A7434;

  return sub_27415F118();
}

uint64_t sub_274161228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415D624(a1, v4, v5, v6);
}

uint64_t objectdestroy_14Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27416131C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27415F468(a1, v4, v5, v6);
}

uint64_t sub_2741613D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274161418(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for HotspotError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HotspotError(uint64_t result, int a2, int a3)
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

uint64_t sub_2741614EC(uint64_t a1)
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

uint64_t sub_274161508(uint64_t result, int a2)
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

unint64_t sub_274161538(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_2741C856C();

    v2 = sub_2741C86CC();
    MEMORY[0x2743E5FB0](v2);

    MEMORY[0x2743E5FB0](0x74706D6574746120, 0xE900000000000073);
  }

  return 0xD00000000000001FLL;
}

unint64_t sub_274161610()
{
  if (*(v0 + 8))
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000018;
  }
}

unint64_t sub_274161658(uint64_t a1)
{
  result = sub_27411D4AC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27416168C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_2741616E8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_274161778(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A708, &qword_2741D4BE8);
  sub_2740A6D24(&qword_28093A710, &qword_28093A708, &qword_2741D4BE8, MEMORY[0x277CE14C0]);
  return sub_2741C761C();
}

void sub_27416181C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A718, &qword_2741D4BF0);
  v67 = *(v3 - 8);
  v68 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v64 = &v60 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A720, &qword_2741D4BF8);
  v9 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v10);
  v61 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A728, &qword_2741D4C00);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v63 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v60 - v17;
  v19 = *(a1 + 8);
  v71 = a1;
  type metadata accessor for NetworksViewModel(0);
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v20 = v76;
  v70 = v18;
  if (v76)
  {
    v62 = v19;
    v21 = *(sub_2741C6D0C() + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_displayOption);

    if (v21 == 3 || (v24 = *(sub_2741C6D0C() + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_displayOption), v22 = , v24 == 1))
    {
      MEMORY[0x28223BE20](v22, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A770, &qword_2741D4CA8);
      sub_274167AB0();
      v25 = v61;
      sub_2741C7B9C();

      v26 = v69;
      v18 = v70;
      (*(v9 + 32))(v70, v25, v69);
      v27 = 0;
    }

    else
    {

      v27 = 1;
      v26 = v69;
    }
  }

  else
  {
    v27 = 1;
    v26 = v69;
  }

  (*(v9 + 56))(v18, v27, 1, v26);
  if (qword_280937AF0 != -1)
  {
    swift_once();
  }

  v29 = qword_280946DC8;
  v28 = unk_280946DD0;

  sub_2741C6D1C();
  swift_getKeyPath();
  sub_2741C6E2C();

  v30 = v76;
  v31 = v77;
  v32 = v78;
  v76 = v29;
  v77 = v28;
  v78 = v30;
  v79 = v31;
  v80 = v32;
  v33 = v71;
  if (!sub_274164100())
  {
    v34 = 0;
    goto LABEL_16;
  }

  v34 = *(v33 + 40);
  if (!v34)
  {
LABEL_16:
    v46 = 0xE000000000000000;
    goto LABEL_17;
  }

  v35 = *(v33 + 32);
  v36 = qword_280937B10;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = sub_2741C7E3C();
  v38 = MGGetStringAnswer();

  if (v38)
  {
    v39 = MEMORY[0x277D837D0];
    v40 = sub_2741C7EAC();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2741CC090;
    *(v43 + 56) = v39;
    v44 = sub_27410D7BC();
    *(v43 + 32) = v35;
    *(v43 + 40) = v34;
    *(v43 + 96) = v39;
    *(v43 + 104) = v44;
    *(v43 + 64) = v44;
    *(v43 + 72) = v40;
    *(v43 + 80) = v42;
    v34 = sub_2741C7E4C();
    v46 = v45;

LABEL_17:
    v72 = v34;
    v73 = v46;
    sub_2740A6A74();
    v72 = sub_2741C76AC();
    v73 = v47;
    v74 = v48 & 1;
    v75 = v49;
    MEMORY[0x28223BE20](v72, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A730, &qword_2741D4C78);
    sub_274167814();
    sub_274167868();
    v50 = v64;
    sub_2741C7B8C();
    v51 = v70;
    v52 = v63;
    sub_2741679D0(v70, v63);
    v54 = v67;
    v53 = v68;
    v55 = *(v67 + 16);
    v56 = v65;
    v55(v65, v50, v68);
    v57 = v66;
    sub_2741679D0(v52, v66);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A768, &unk_2741D4C98);
    v55((v57 + *(v58 + 48)), v56, v53);
    v59 = *(v54 + 8);
    v59(v50, v53);
    sub_274167A40(v51);
    v59(v56, v53);
    sub_274167A40(v52);
    return;
  }

  __break(1u);
}

uint64_t sub_274161FB8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_2741C70EC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7A0, qword_2741D4CC0);
  sub_2741620A4(a1, a2, a3 + *(v6 + 44));
  v7 = sub_2741C7C6C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A770, &qword_2741D4CA8);
  v9 = a3 + *(result + 36);
  *v9 = v7;
  *(v9 + 8) = v10;
  return result;
}

uint64_t sub_2741620A4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v111 = a3;
  v4 = sub_2741C717C();
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v95 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7A8, &qword_2741D4D20);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v119 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v120 = &v94 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7B0, &qword_2741D4D28);
  v109 = *(v13 - 8);
  v110 = v13;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v118 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v121 = &v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7B8, &qword_2741D4D30);
  v20 = *(v19 - 8);
  v107 = v19;
  v108 = v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v114 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v115 = &v94 - v25;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7C0, &qword_2741D4D38);
  MEMORY[0x28223BE20](v105, v26);
  v104 = &v94 - v27;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7C8, &qword_2741D4D40);
  MEMORY[0x28223BE20](v102, v28);
  v103 = &v94 - v29;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7D0, &unk_2741D4D48);
  MEMORY[0x28223BE20](v106, v30);
  v99 = &v94 - v31;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938388, &qword_2741CBEB0);
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v32);
  v101 = &v94 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7D8, &qword_2741D4D58);
  v36 = MEMORY[0x28223BE20](v34 - 8, v35);
  v117 = &v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v94 - v39;
  v112 = a1;
  type metadata accessor for NetworksViewModel(0);
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v116 = v40;
  if (v126 == 1)
  {
    v41 = v101;
    sub_2741C6D3C();
    v42 = v98;
    v43 = v100;
    (*(v98 + 16))(v103, v41, v100);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7E0, &unk_2741D4E20);
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0, MEMORY[0x277CDD7F8]);
    sub_274167C04();
    v44 = v99;
    sub_2741C72CC();
    sub_2740A6D94(v44, v104, &qword_28093A7D0, &unk_2741D4D48);
    swift_storeEnumTagMultiPayload();
    sub_274167CBC();
    sub_274167D74();
    v45 = v107;
    sub_2741C72CC();
    sub_27409D420(v44, &qword_28093A7D0, &unk_2741D4D48);
    (*(v42 + 8))(v101, v43);
  }

  else
  {
    v46 = v103;
    v47 = v104;
    sub_2741C6D0C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2741C6BEC();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2741C6BEC();

    if (v126)
    {

      v48 = v115;
      sub_2741630DC(v115);
      sub_2740A6D94(v48, v47, &qword_28093A7B8, &qword_2741D4D30);
      swift_storeEnumTagMultiPayload();
      sub_274167CBC();
      sub_274167D74();
      v40 = v116;
      v45 = v107;
      sub_2741C72CC();
      v49 = v48;
      v50 = &qword_28093A7B8;
      v51 = &qword_2741D4D30;
    }

    else
    {
      v52 = sub_2741C79CC();
      v53 = sub_2741C797C();
      KeyPath = swift_getKeyPath();
      *v46 = v52;
      v46[1] = KeyPath;
      v46[2] = v53;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7E0, &unk_2741D4E20);
      sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0, MEMORY[0x277CDD7F8]);
      sub_274167C04();
      v55 = v99;
      sub_2741C72CC();
      sub_2740A6D94(v55, v47, &qword_28093A7D0, &unk_2741D4D48);
      swift_storeEnumTagMultiPayload();
      sub_274167CBC();
      sub_274167D74();
      v56 = v116;
      v45 = v107;
      sub_2741C72CC();

      v40 = v56;

      v49 = v55;
      v50 = &qword_28093A7D0;
      v51 = &unk_2741D4D48;
    }

    sub_27409D420(v49, v50, v51);
  }

  v57 = sub_2741C71BC();
  v58 = 1;
  v140 = 1;
  v59 = v112;
  v60 = v113;
  sub_2741633A0(v113, v112, &v126);
  v143 = v128;
  v144 = v129;
  v145 = v130;
  v141 = v126;
  v142 = v127;
  v146[2] = v128;
  v146[3] = v129;
  v147 = v130;
  v146[0] = v126;
  v146[1] = v127;
  sub_2740A6D94(&v141, &v124, &qword_28093A800, &qword_2741D4E30);
  v61 = v59;
  sub_27409D420(v146, &qword_28093A800, &qword_2741D4E30);
  *(&v139[1] + 7) = v142;
  *(&v139[2] + 7) = v143;
  *(&v139[3] + 7) = v144;
  *(&v139[4] + 7) = v145;
  *(v139 + 7) = v141;
  LOBYTE(v59) = v140;
  sub_2741C7C1C();
  sub_2741C6F1C();
  v124 = v57;
  LOBYTE(v125[0]) = v59;
  *(&v125[1] + 1) = v139[1];
  *(&v125[2] + 1) = v139[2];
  *(&v125[3] + 1) = v139[3];
  v125[4] = *(&v139[3] + 15);
  *(v125 + 1) = v139[0];
  v62 = swift_allocObject();
  v63 = *(v61 + 1);
  *(v62 + 16) = *v61;
  *(v62 + 32) = v63;
  v64 = *(v61 + 3);
  *(v62 + 48) = *(v61 + 2);
  *(v62 + 64) = v64;
  *(v62 + 80) = v60;
  sub_27416698C(v61, &v126);
  v65 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A808, &qword_2741D4E38);
  sub_274167E40();
  sub_2741C773C();

  v136 = v125[9];
  v137 = v125[10];
  v138 = v125[11];
  v132 = v125[5];
  v133 = v125[6];
  v134 = v125[7];
  v135 = v125[8];
  v128 = v125[1];
  v129 = v125[2];
  v130 = v125[3];
  v131 = v125[4];
  v126 = v124;
  v127 = v125[0];
  sub_27409D420(&v126, &qword_28093A808, &qword_2741D4E38);
  v66 = *&v65[OBJC_IVAR___WiFiNetwork_Swift_securityType];
  if ((v66 & 0x200) == 0)
  {
    v58 = 1;
    if (v66)
    {
      if ((v66 & 0x100) == 0)
      {
        v67 = v45;
        v68 = sub_2741C79CC();
        v69 = sub_2741C799C();
        v70 = swift_getKeyPath();
        *&v124 = v68;
        *(&v124 + 1) = v70;
        *&v125[0] = v69;
        if (qword_280937B00 != -1)
        {
          swift_once();
        }

        v122 = qword_280946DE8;
        v123 = unk_280946DF0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7E0, &unk_2741D4E20);
        sub_274167C04();
        sub_2740A6A74();
        v71 = v114;
        sub_2741C77BC();

        v72 = v95;
        sub_2741C716C();
        v73 = v115;
        sub_2741C6E5C();
        (*(v96 + 8))(v72, v97);
        v74 = v71;
        v45 = v67;
        sub_27409D420(v74, &qword_28093A7B8, &qword_2741D4D30);
        sub_2740A6C18(v73, v120, &qword_28093A7B8, &qword_2741D4D30);
        v58 = 0;
        v40 = v116;
      }
    }
  }

  v75 = v120;
  (*(v108 + 56))(v120, v58, 1, v45);
  v76 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
  swift_beginAccess();
  v77 = *&v65[v76];
  v78 = v77 + 77.5;
  v79 = fabsf(sqrtf((v78 * v78) + 450.0));
  v80 = v115;
  sub_274163E20(v115, ((v78 / (v79 + v79)) + 0.5));
  v81 = v117;
  sub_2740A6D94(v40, v117, &qword_28093A7D8, &qword_2741D4D58);
  v83 = v109;
  v82 = v110;
  v84 = *(v109 + 16);
  v85 = v118;
  v84(v118, v121, v110);
  sub_2740A6D94(v75, v119, &qword_28093A7A8, &qword_2741D4D20);
  v86 = v114;
  sub_2740A6D94(v80, v114, &qword_28093A7B8, &qword_2741D4D30);
  v87 = v81;
  v88 = v111;
  sub_2740A6D94(v87, v111, &qword_28093A7D8, &qword_2741D4D58);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A828, &qword_2741D4E48);
  v84((v88 + v89[12]), v85, v82);
  v90 = v88 + v89[16];
  *v90 = 0;
  *(v90 + 8) = 1;
  v91 = v119;
  sub_2740A6D94(v119, v88 + v89[20], &qword_28093A7A8, &qword_2741D4D20);
  sub_2740A6D94(v86, v88 + v89[24], &qword_28093A7B8, &qword_2741D4D30);
  sub_27409D420(v80, &qword_28093A7B8, &qword_2741D4D30);
  sub_27409D420(v120, &qword_28093A7A8, &qword_2741D4D20);
  v92 = *(v83 + 8);
  v92(v121, v82);
  sub_27409D420(v116, &qword_28093A7D8, &qword_2741D4D58);
  sub_27409D420(v86, &qword_28093A7B8, &qword_2741D4D30);
  sub_27409D420(v91, &qword_28093A7A8, &qword_2741D4D20);
  v92(v118, v82);
  return sub_27409D420(v117, &qword_28093A7D8, &qword_2741D4D58);
}

uint64_t sub_2741630DC@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v19 = sub_2741C717C();
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7B8, &qword_2741D4D30);
  MEMORY[0x28223BE20](v18[0], v5);
  v7 = v18 - v6;
  if (qword_280937B08 != -1)
  {
    swift_once();
  }

  v8 = sub_2741C79BC();
  v9 = sub_2741C796C();
  KeyPath = swift_getKeyPath();
  v22 = v8;
  v23 = KeyPath;
  v24 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D83B88];
  *(v11 + 16) = xmmword_2741CB550;
  v13 = MEMORY[0x277D83C10];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = 0;
  v14 = sub_2741C7E4C();
  v16 = v15;

  v20 = v14;
  v21 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7E0, &unk_2741D4E20);
  sub_274167C04();
  sub_2740A6A74();
  sub_2741C77BC();

  sub_2741C716C();
  sub_2741C6E5C();
  (*(v1 + 8))(v4, v19);
  return sub_27409D420(v7, &qword_28093A7B8, &qword_2741D4D30);
}

uint64_t sub_2741633A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v67 = a2;
  v69 = a3;
  v4 = sub_2741C70DC();
  v65 = *(v4 - 8);
  v66 = v4;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v64 = &v58 - v9;
  v10 = *(a1 + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
  *&v70 = *(a1 + OBJC_IVAR___WiFiNetwork_Swift_name);
  *(&v70 + 1) = v10;
  v11 = sub_2740A6A74();

  v62 = v11;
  v12 = sub_2741C76AC();
  v14 = v13;
  v16 = v15;
  sub_2741C75EC();
  v17 = sub_2741C767C();
  v19 = v18;
  v21 = v20;

  sub_2740A6AC8(v12, v14, v16 & 1);

  LODWORD(v70) = sub_2741C736C();
  v22 = sub_2741C764C();
  v24 = v23;
  v68 = v25;
  v27 = v26;
  sub_2740A6AC8(v17, v19, v21 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v28 = v67;

  if ((v70 & 1) != 0 || (v70 = *(v28 + 48), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0), sub_2741C7A3C(), v71 == 1))
  {
    v70 = *(v28 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A3C();
    v60 = v22;
    v61 = v27;
    v59 = v24;
    if (v71 == 1)
    {
      v29 = (a1 + OBJC_IVAR___WiFiNetwork_Swift_macAddress);
      swift_beginAccess();
    }

    else
    {
      if (qword_280937AF8 != -1)
      {
        swift_once();
      }

      v29 = &qword_280946DD8;
    }

    v30 = *v29;

    v71 = v30;
    v72 = v31;
    v32 = sub_2741C76AC();
    v34 = v33;
    v36 = v35;
    sub_2741C758C();
    v37 = sub_2741C767C();
    v39 = v38;
    v41 = v40;

    sub_2740A6AC8(v32, v34, v36 & 1);

    sub_2741C798C();
    v42 = sub_2741C763C();
    v44 = v43;
    v46 = v45;
    v48 = v47;

    sub_2740A6AC8(v37, v39, v41 & 1);

    v49 = v64;
    sub_2741C70CC();
    v51 = v65;
    v50 = v66;
    (*(v65 + 16))(v63, v49, v66);
    sub_274168064(&qword_28093A838, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v52 = sub_2741C6D9C();
    (*(v51 + 8))(v49, v50);
    v53 = v46 & 1;
    sub_27409861C(v42, v44, v46 & 1);

    v22 = v60;
    v27 = v61;
    v24 = v59;
  }

  else
  {
    v42 = 0;
    v44 = 0;
    v53 = 0;
    v48 = 0;
    v52 = 0;
  }

  v54 = v68 & 1;
  LOBYTE(v71) = v68 & 1;
  sub_27409861C(v22, v24, v68 & 1);

  sub_274167FC4(v42, v44, v53, v48, v52);
  sub_274168014(v42, v44, v53, v48, v52);
  v55 = v71;
  v56 = v69;
  *v69 = v22;
  v56[1] = v24;
  *(v56 + 16) = v55;
  v56[3] = v27;
  v56[4] = v42;
  v56[5] = v44;
  v56[6] = v53;
  v56[7] = v48;
  v56[8] = v52;
  sub_274168014(v42, v44, v53, v48, v52);
  sub_2740A6AC8(v22, v24, v54);
}

uint64_t sub_2741638E0(_OWORD *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19[-v6];
  v8 = sub_2741C80DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2741C80AC();
  sub_27416698C(a1, v20);
  v9 = sub_2741C809C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v12 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  v13 = a1[3];
  *(v10 + 64) = a1[2];
  *(v10 + 80) = v13;
  sub_2740CE980(0, 0, v7, &unk_2741D4E58, v10);

  v14 = (a2 + OBJC_IVAR___WiFiNetwork_Swift_macAddress);
  result = swift_beginAccess();
  v17 = v14[1];
  v18 = *v14 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v17) & 0xF;
  }

  if (v18)
  {
    MEMORY[0x28223BE20](result, v16);
    *&v19[-16] = a1;
    sub_2741C7C5C();
    sub_2741C6DCC();
  }

  return result;
}

uint64_t sub_274163AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_2741C80AC();
  *(v4 + 64) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274163B58, v6, v5);
}

uint64_t sub_274163B58()
{

  sub_2740CB960(0xD000000000000023, 0x80000002741E27E0);
  type metadata accessor for NetworksViewModel(0);
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  sub_2741C6D0C();
  v1 = sub_27411FEBC();

  v2 = type metadata accessor for RemoteWiFiPickerEvent();
  v3 = swift_allocObject();
  *(v3 + 16) = 2;
  *(v3 + 24) = v1;
  if (qword_280937380 != -1)
  {
    v8 = v3;
    swift_once();
    v3 = v8;
  }

  v0[5] = v2;
  v0[6] = &off_288326FB8;
  v0[2] = v3;
  v4 = sub_2741C7E3C();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_2740AD218();
  sub_274167644();
  v5 = sub_2741C7D4C();

  AnalyticsSendEvent();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_274163D4C(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2[1] = *(a1 + 48);
  v4 = *(&v3 + 1);
  sub_2740A6D94(&v4, v2, &qword_28093A830, &unk_2741D4E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  v2[0] = v3;
  sub_2741C7A4C();
  return sub_27409D420(&v3, &qword_280937F20, &qword_2741CCFB0);
}

uint64_t sub_274163E20@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v22[1] = a1;
  v23 = sub_2741C717C();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7B8, &qword_2741D4D30);
  MEMORY[0x28223BE20](v22[0], v7);
  v9 = v22 - v8;
  if (qword_280937B08 != -1)
  {
    swift_once();
  }

  v10 = 2;
  if (a2 > 0.5)
  {
    v10 = 3;
  }

  if (a2 < 0.5)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_2741C79BC();
  v13 = sub_2741C799C();
  KeyPath = swift_getKeyPath();
  v26 = v12;
  v27 = KeyPath;
  v28 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D83B88];
  *(v15 + 16) = xmmword_2741CB550;
  v17 = MEMORY[0x277D83C10];
  *(v15 + 56) = v16;
  *(v15 + 64) = v17;
  *(v15 + 32) = v11;
  v18 = sub_2741C7E4C();
  v20 = v19;

  v24 = v18;
  v25 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7E0, &unk_2741D4E20);
  sub_274167C04();
  sub_2740A6A74();
  sub_2741C77BC();

  sub_2741C716C();
  sub_2741C6E5C();
  (*(v3 + 8))(v6, v23);
  return sub_27409D420(v9, &qword_28093A7B8, &qword_2741D4D30);
}

BOOL sub_274164100()
{
  type metadata accessor for NetworksViewModel(0);
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v0 = v19;
  v20 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2741C848C())
  {
    v2 = 0;
    v16 = v0 & 0xFFFFFFFFFFFFFF8;
    v17 = v0 & 0xC000000000000001;
    v15 = v0;
    while (1)
    {
      if (v17)
      {
        v3 = MEMORY[0x2743E6600](v2, v0);
      }

      else
      {
        if (v2 >= *(v16 + 16))
        {
          goto LABEL_22;
        }

        v3 = *(v0 + 8 * v2 + 32);
      }

      v4 = v3;
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v6 = *&v3[OBJC_IVAR___WiFiNetwork_Swift_name];
      v7 = *&v3[OBJC_IVAR___WiFiNetwork_Swift_name + 8];

      sub_2741C6D0C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      if (!v18)
      {

LABEL_18:
        sub_2741C859C();
        sub_2741C85BC();
        sub_2741C85CC();
        sub_2741C85AC();
        goto LABEL_5;
      }

      v9 = *&v18[OBJC_IVAR___WiFiNetwork_Swift_name];
      v8 = *&v18[OBJC_IVAR___WiFiNetwork_Swift_name + 8];

      if (v6 == v9 && v7 == v8)
      {
      }

      else
      {
        v11 = sub_2741C86DC();

        if ((v11 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      ++v2;
      v0 = v15;
      if (v5 == i)
      {
        v12 = v20;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_25:

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    v13 = sub_2741C848C();
  }

  else
  {
    v13 = *(v12 + 16);
  }

  return v13 > 0;
}

uint64_t sub_27416447C(_OWORD *a1)
{
  sub_2741C856C();

  v26[1] = 0x80000002741E2810;
  type metadata accessor for NetworksViewModel(0);
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v2 = type metadata accessor for WiFiNetwork(0);
  v3 = MEMORY[0x2743E6080](v27, v2);
  v5 = v4;

  MEMORY[0x2743E5FB0](v3, v5);

  sub_2740CB960(0xD000000000000015, 0x80000002741E2810);

  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v6 = 0xD000000000000015;
  v26[0] = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = sub_2741C848C();
    if (!v17)
    {
      break;
    }

    v22 = a1;
    v7 = 0;
    v24 = v6 & 0xFFFFFFFFFFFFFF8;
    v25 = v6 & 0xC000000000000001;
    v23 = v6;
    while (1)
    {
      if (v25)
      {
        v8 = MEMORY[0x2743E6600](v7, v6);
      }

      else
      {
        if (v7 >= *(v24 + 16))
        {
          goto LABEL_21;
        }

        v8 = *(v6 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = *&v8[OBJC_IVAR___WiFiNetwork_Swift_name];
      v11 = *&v8[OBJC_IVAR___WiFiNetwork_Swift_name + 8];

      sub_2741C6D0C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      a1 = swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      if (!v27)
      {

LABEL_17:
        sub_2741C859C();
        sub_2741C85BC();
        sub_2741C85CC();
        sub_2741C85AC();
        goto LABEL_4;
      }

      a1 = *&v27[OBJC_IVAR___WiFiNetwork_Swift_name];
      v13 = *&v27[OBJC_IVAR___WiFiNetwork_Swift_name + 8];

      if (v12 == a1 && v11 == v13)
      {
      }

      else
      {
        v15 = sub_2741C86DC();

        if ((v15 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_4:
      ++v7;
      v6 = v23;
      if (v10 == v17)
      {
        v16 = v26[0];
        a1 = v22;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  v16 = MEMORY[0x277D84F90];
LABEL_24:

  v27 = v16;
  swift_getKeyPath();
  v18 = swift_allocObject();
  v19 = a1[1];
  v18[1] = *a1;
  v18[2] = v19;
  v20 = a1[3];
  v18[3] = a1[2];
  v18[4] = v20;
  sub_27416698C(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399D8, &unk_2741D32B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A750, &qword_2741D4C80);
  sub_2740A6D24(&qword_28093A840, &qword_2809399D8, &unk_2741D32B0, MEMORY[0x277D83980]);
  sub_2741678EC();
  return sub_2741C7B5C();
}

uint64_t sub_2741649CC@<X0>(void **a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_2741C856C();

  v15[0] = 0xD000000000000010;
  v15[1] = 0x80000002741E2830;
  v6 = [v5 description];
  v7 = sub_2741C7E7C();
  v9 = v8;

  MEMORY[0x2743E5FB0](v7, v9);

  sub_2740CB960(0xD000000000000010, 0x80000002741E2830);

  v10 = swift_allocObject();
  v11 = a2[1];
  *(v10 + 16) = *a2;
  *(v10 + 32) = v11;
  v12 = a2[3];
  *(v10 + 48) = a2[2];
  *(v10 + 64) = v12;
  *(v10 + 80) = v5;
  sub_27416698C(a2, v15);
  v13 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A848, &qword_2741D4EE8);
  sub_2740A6D24(&qword_28093A850, &qword_28093A848, &qword_2741D4EE8, MEMORY[0x277CE1138]);
  sub_2741C7A7C();
  LODWORD(v6) = sub_2741C736C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A750, &qword_2741D4C80);
  *(a3 + *(result + 36)) = v6;
  return result;
}

uint64_t sub_274164B88(_OWORD *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21[-v6];
  v8 = sub_2741C80DC();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  sub_2741C80AC();
  sub_27416698C(a1, v21);
  v10 = sub_2741C809C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v13;
  v14 = a1[3];
  *(v11 + 64) = a1[2];
  *(v11 + 80) = v14;
  sub_2740CE980(0, 0, v7, &unk_2741D4F08, v11);

  v9(v7, 1, 1, v8);
  sub_27416698C(a1, v21);
  v15 = a2;
  v16 = sub_2741C809C();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v12;
  v18 = a1[1];
  *(v17 + 32) = *a1;
  *(v17 + 48) = v18;
  v19 = a1[3];
  *(v17 + 64) = a1[2];
  *(v17 + 80) = v19;
  *(v17 + 96) = v15;
  sub_2740CE980(0, 0, v7, &unk_2741D4F18, v17);
}

uint64_t sub_274164D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_2741C80AC();
  *(v4 + 64) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274164E08, v6, v5);
}

uint64_t sub_274164E08()
{

  sub_2740CB960(0xD00000000000001DLL, 0x80000002741E2850);
  type metadata accessor for NetworksViewModel(0);
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  sub_2741C6D0C();
  v1 = sub_27411FEBC();

  v2 = type metadata accessor for RemoteWiFiPickerEvent();
  v3 = swift_allocObject();
  *(v3 + 16) = 3;
  *(v3 + 24) = v1;
  if (qword_280937380 != -1)
  {
    v8 = v3;
    swift_once();
    v3 = v8;
  }

  v0[5] = v2;
  v0[6] = &off_288326FB8;
  v0[2] = v3;
  v4 = sub_2741C7E3C();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_2740AD218();
  sub_274167644();
  v5 = sub_2741C7D4C();

  AnalyticsSendEvent();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_274164FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2741C80AC();
  v5[4] = sub_2741C809C();
  v7 = sub_2741C805C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_274165094, v7, v6);
}

uint64_t sub_274165094()
{
  type metadata accessor for NetworksViewModel(0);
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  v0[7] = sub_2741C6D0C();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_27416519C;
  v2 = v0[3];

  return sub_27411EE50(v2);
}

uint64_t sub_27416519C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2741310F0, v3, v2);
}

void sub_2741652E0(char *a1@<X0>, uint64_t a3@<X8>)
{
  *a3 = sub_2741C70EC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A858, &qword_2741D4EF0);
  sub_274165348(a1, (a3 + *(v5 + 44)));
}

void sub_274165348(char *a1@<X0>, void *a3@<X8>)
{
  v49 = a3;
  v4 = sub_2741C717C();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7B8, &qword_2741D4D30);
  v50 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7A8, &qword_2741D4D20);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v51 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v43 - v19;
  type metadata accessor for NetworksViewModel(0);
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  sub_2741C6D0C();
  v21 = sub_2741C6E1C();
  v23 = v21;
  v24 = v22;
  v25 = *&a1[OBJC_IVAR___WiFiNetwork_Swift_securityType];
  v52 = v20;
  if ((v25 & 0x200) == 0 && (v25 ? (v26 = (v25 & 0x100) == 0) : (v26 = 0), v26))
  {
    v44 = v22;
    v45 = v21;
    v43 = a1;
    v28 = a1;
    v29 = sub_2741C79CC();
    v30 = sub_2741C799C();
    KeyPath = swift_getKeyPath();
    v56 = v29;
    v57 = KeyPath;
    v58 = v30;
    if (qword_280937B00 != -1)
    {
      swift_once();
    }

    v54 = qword_280946DE8;
    v55 = unk_280946DF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A7E0, &unk_2741D4E20);
    sub_274167C04();
    sub_2740A6A74();
    v32 = v53;
    sub_2741C77BC();

    v33 = v46;
    sub_2741C716C();
    sub_2741C6E5C();
    (*(v47 + 8))(v33, v48);
    sub_27409D420(v32, &qword_28093A7B8, &qword_2741D4D30);
    v20 = v52;
    sub_2740A6C18(v13, v52, &qword_28093A7B8, &qword_2741D4D30);
    (*(v50 + 56))(v20, 0, 1, v7);
    a1 = v43;
    v24 = v44;
    v23 = v45;
  }

  else
  {
    (*(v50 + 56))(v20, 1, 1, v7);
    v27 = a1;
  }

  v34 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
  swift_beginAccess();
  v35 = *&a1[v34];
  v36 = v35 + 77.5;
  v37 = fabsf(sqrtf((v36 * v36) + 450.0));
  sub_274163E20(v13, ((v36 / (v37 + v37)) + 0.5));
  v38 = v51;
  sub_2740A6D94(v20, v51, &qword_28093A7A8, &qword_2741D4D20);
  v39 = v53;
  sub_2740A6D94(v13, v53, &qword_28093A7B8, &qword_2741D4D30);
  v40 = v49;
  *v49 = 0x4046800000000000;
  v40[1] = a1;
  v40[2] = v23;
  v40[3] = v24;
  v40[4] = 0;
  *(v40 + 40) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A860, &qword_2741D4EF8);
  sub_2740A6D94(v38, v40 + *(v41 + 64), &qword_28093A7A8, &qword_2741D4D20);
  sub_2740A6D94(v39, v40 + *(v41 + 80), &qword_28093A7B8, &qword_2741D4D30);
  v42 = a1;

  sub_27409D420(v13, &qword_28093A7B8, &qword_2741D4D30);
  sub_27409D420(v52, &qword_28093A7A8, &qword_2741D4D20);
  sub_27409D420(v39, &qword_28093A7B8, &qword_2741D4D30);
  sub_27409D420(v38, &qword_28093A7A8, &qword_2741D4D20);
}

uint64_t sub_274165914(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18[-v4];
  v6 = sub_2741C80DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  sub_2741C80AC();
  sub_27416698C(a1, v18);
  v8 = sub_2741C809C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v11;
  v12 = a1[3];
  *(v9 + 64) = a1[2];
  *(v9 + 80) = v12;
  sub_2740CE980(0, 0, v5, &unk_2741D4BD0, v9);

  v7(v5, 1, 1, v6);
  sub_27416698C(a1, v18);
  v13 = sub_2741C809C();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  v15 = a1[1];
  *(v14 + 32) = *a1;
  *(v14 + 48) = v15;
  v16 = a1[3];
  *(v14 + 64) = a1[2];
  *(v14 + 80) = v16;
  sub_2740CE980(0, 0, v5, &unk_2741D4BE0, v14);
}

uint64_t sub_274165AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_2741C80AC();
  *(v4 + 64) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274165B7C, v6, v5);
}

uint64_t sub_274165B7C()
{

  sub_2740CB960(0xD00000000000001ELL, 0x80000002741E2750);
  type metadata accessor for NetworksViewModel(0);
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  sub_2741C6D0C();
  v1 = sub_27411FEBC();

  v2 = type metadata accessor for RemoteWiFiPickerEvent();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = v1;
  if (qword_280937380 != -1)
  {
    v8 = v3;
    swift_once();
    v3 = v8;
  }

  v0[5] = v2;
  v0[6] = &off_288326FB8;
  v0[2] = v3;
  v4 = sub_2741C7E3C();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_2740AD218();
  sub_274167644();
  v5 = sub_2741C7D4C();

  AnalyticsSendEvent();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_274165D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_2741C80AC();
  v4[4] = sub_2741C809C();
  v6 = sub_2741C805C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_274165E04, v6, v5);
}

uint64_t sub_274165E04()
{
  v1 = *(v0 + 24);
  *(v0 + 56) = *(v1 + 8);
  *(v0 + 64) = *(v1 + 16);
  *(v0 + 104) = *(v1 + 24);
  *(v0 + 72) = type metadata accessor for NetworksViewModel(0);
  *(v0 + 80) = sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  *(v0 + 88) = sub_2741C6D0C();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_274165F1C;

  return sub_27411E620();
}

uint64_t sub_274165F1C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_274166060, v3, v2);
}

uint64_t sub_274166060()
{

  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong wifiPickerViewDidAppear];
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_274166184(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18[-v4];
  v6 = sub_2741C80DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  sub_2741C80AC();
  sub_27416698C(a1, v18);
  v8 = sub_2741C809C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v11;
  v12 = a1[3];
  *(v9 + 64) = a1[2];
  *(v9 + 80) = v12;
  sub_2740CE980(0, 0, v5, &unk_2741D4B68, v9);

  v7(v5, 1, 1, v6);
  sub_27416698C(a1, v18);
  v13 = sub_2741C809C();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  v15 = a1[1];
  *(v14 + 32) = *a1;
  *(v14 + 48) = v15;
  v16 = a1[3];
  *(v14 + 64) = a1[2];
  *(v14 + 80) = v16;
  sub_2740CEC80(0, 0, v5, &unk_2741D4B78, v14);
}

uint64_t sub_274166354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_2741C80AC();
  *(v4 + 64) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741663EC, v6, v5);
}

uint64_t sub_2741663EC()
{

  sub_2740CB960(0xD00000000000001FLL, 0x80000002741E2710);
  type metadata accessor for NetworksViewModel(0);
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  sub_2741C6D0C();
  v1 = sub_27411FEBC();

  v2 = type metadata accessor for RemoteWiFiPickerEvent();
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  *(v3 + 24) = v1;
  if (qword_280937380 != -1)
  {
    v8 = v3;
    swift_once();
    v3 = v8;
  }

  v0[5] = v2;
  v0[6] = &off_288326FB8;
  v0[2] = v3;
  v4 = sub_2741C7E3C();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_2740AD218();
  sub_274167644();
  v5 = sub_2741C7D4C();

  AnalyticsSendEvent();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2741665E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_2741C80AC();
  v4[5] = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274166678, v6, v5);
}

uint64_t sub_274166678()
{

  type metadata accessor for NetworksViewModel(0);
  sub_274168064(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  sub_2741C6D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong wifiPickerViewDidDisappear];
    swift_unknownObjectRelease();
  }

  **(v0 + 24) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2741667E0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v15 = *v1;
  v16 = v3;
  v4 = v1[3];
  v17 = v1[2];
  v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6E0, &qword_2741D4B40);
  sub_2740A6D24(&qword_28093A6E8, &qword_28093A6E0, &qword_2741D4B40, MEMORY[0x277CDE580]);
  sub_2741C6E0C();
  v5 = swift_allocObject();
  v6 = v16;
  *(v5 + 1) = v15;
  *(v5 + 2) = v6;
  v7 = v18;
  *(v5 + 3) = v17;
  *(v5 + 4) = v7;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6F0, &qword_2741D4B48) + 36));
  *v8 = sub_27416697C;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  v9 = swift_allocObject();
  v10 = v16;
  v9[1] = v15;
  v9[2] = v10;
  v11 = v18;
  v9[3] = v17;
  v9[4] = v11;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6F8, &unk_2741D4B50) + 36));
  *v12 = 0;
  v12[1] = 0;
  v12[2] = sub_274166984;
  v12[3] = v9;
  sub_27416698C(&v15, v14);
  return sub_27416698C(&v15, v14);
}

uint64_t sub_2741669C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2740A7434;

  return sub_274166354(a1, v4, v5, v1 + 32);
}

uint64_t sub_274166A74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2740A7434;

  return sub_2741665E0(a1, v4, v5, v1 + 32);
}

uint64_t sub_274166B24@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = sub_2741C79CC();
  v26 = sub_2741C797C();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  if (v38[0])
  {
    if (*(a3 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_interactionStyle) == 1)
    {
      if (*(v38[0] + OBJC_IVAR___WiFiNetwork_Swift_name) == *(a1 + OBJC_IVAR___WiFiNetwork_Swift_name) && *(v38[0] + OBJC_IVAR___WiFiNetwork_Swift_name + 8) == *(a1 + OBJC_IVAR___WiFiNetwork_Swift_name + 8))
      {

        v10 = 1.0;
        goto LABEL_11;
      }

      v9 = sub_2741C86DC();

      v10 = 1.0;
      if (v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v10 = 0.0;
LABEL_11:
  v11 = sub_2741C71BC();
  v52 = 1;
  sub_274166EC8(a1, v53);
  *&v51[7] = v53[0];
  *&v51[23] = v53[1];
  *&v51[39] = v53[2];
  *&v51[55] = v53[3];
  sub_2741C7C1C();
  sub_2741C6F1C();
  v36 = v11;
  v37[0] = 1;
  *&v37[17] = *&v51[16];
  *&v37[33] = *&v51[32];
  *&v37[49] = *&v51[48];
  *&v37[64] = *&v51[63];
  *&v37[1] = *v51;
  v12 = v31;
  *&v37[120] = v32;
  v13 = v32;
  *&v37[136] = v33;
  v14 = v33;
  *&v37[152] = v34;
  v15 = v34;
  *&v37[168] = v35;
  *&v37[72] = v29;
  v16 = v29;
  v17 = v30;
  *&v37[88] = v30;
  *&v37[104] = v31;
  *(a4 + 24) = v10;
  v18 = *&v37[96];
  *(a4 + 128) = *&v37[80];
  *(a4 + 144) = v18;
  v19 = *&v37[64];
  *(a4 + 96) = *&v37[48];
  *(a4 + 112) = v19;
  v20 = *&v37[32];
  *(a4 + 64) = *&v37[16];
  *(a4 + 80) = v20;
  v21 = *v37;
  *(a4 + 32) = v36;
  *(a4 + 48) = v21;
  v22 = *&v37[160];
  *(a4 + 192) = *&v37[144];
  *(a4 + 208) = v22;
  v23 = *&v37[128];
  *(a4 + 160) = *&v37[112];
  *(a4 + 176) = v23;
  v41 = *&v51[16];
  v42 = *&v51[32];
  *v43 = *&v51[48];
  v40 = *v51;
  v47 = v13;
  v48 = v14;
  v49 = v15;
  v50 = v35;
  v44 = v16;
  *a4 = v27;
  *(a4 + 8) = KeyPath;
  *(a4 + 16) = v26;
  *(a4 + 224) = *&v37[176];
  v38[0] = v11;
  v38[1] = 0;
  v39 = 1;
  *&v43[15] = *&v51[63];
  v45 = v17;
  v46 = v12;

  sub_2740A6D94(&v36, v28, &qword_28093A8B0, &qword_2741D50D8);
  sub_27409D420(v38, &qword_28093A8B0, &qword_2741D50D8);
}

uint64_t sub_274166EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *(a1 + OBJC_IVAR___WiFiNetwork_Swift_name);
  sub_2740A6A74();

  v3 = sub_2741C76AC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  if (v33 == 1)
  {
    v30 = v7;
    v31 = v5;
    v32 = v9;
    if (qword_280937AF8 != -1)
    {
      swift_once();
    }

    v10 = sub_2741C76AC();
    v12 = v11;
    v14 = v13;
    sub_2741C758C();
    v15 = sub_2741C767C();
    v17 = v16;
    v19 = v18;

    sub_2740A6AC8(v10, v12, v14 & 1);

    sub_2741C798C();
    v20 = sub_2741C763C();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    sub_2740A6AC8(v15, v17, v19 & 1);

    v27 = v24 & 1;
    sub_27409861C(v20, v22, v24 & 1);

    v9 = v32;
    v5 = v31;
    v7 = v30;
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v27 = 0;
    v26 = 0;
  }

  v28 = v7 & 1;
  sub_27409861C(v3, v5, v28);

  sub_2740ACA00(v20, v22, v27, v26);
  sub_2740ACA44(v20, v22, v27, v26);
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v28;
  *(a2 + 24) = v9;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = v27;
  *(a2 + 56) = v26;
  sub_2740ACA44(v20, v22, v27, v26);
  sub_2740A6AC8(v3, v5, v28);
}

__n128 sub_274167190@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A888, &qword_2741D5060);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v12 - v5;
  *v6 = sub_2741C70EC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A890, &qword_2741D5068);
  sub_2741672F0(v1, &v6[*(v7 + 44)]);
  sub_2741C7C1C();
  sub_2741C6F1C();
  sub_2740A6C18(v6, a1, &qword_28093A888, &qword_2741D5060);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A898, &qword_2741D5070) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_2741672F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938388, &qword_2741CBEB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8A0, &unk_2741D5078);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v29 - v15;
  v17 = *(a1 + 8);
  *&v32 = *a1;
  *(&v32 + 1) = v17;
  sub_2740A6A74();

  v18 = sub_2741C76AC();
  v20 = v19;
  v30 = v21;
  v23 = v22;
  v32 = *(a1 + 16);
  v33 = *(a1 + 32);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938348, &qword_2741CBE60);
  MEMORY[0x2743E5B70](&v31, v24);
  if (v31 == 1)
  {
    sub_2741C6D3C();
    (*(v5 + 32))(v16, v8, v4);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v5 + 56))(v16, v25, 1, v4);
  sub_2740A6D94(v16, v13, &qword_28093A8A0, &unk_2741D5078);
  *a2 = v18;
  *(a2 + 8) = v20;
  v26 = v30 & 1;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v23;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8A8, &qword_2741D5088);
  sub_2740A6D94(v13, a2 + *(v27 + 48), &qword_28093A8A0, &unk_2741D5078);
  sub_27409861C(v18, v20, v26);

  sub_27409D420(v16, &qword_28093A8A0, &unk_2741D5078);
  sub_27409D420(v13, &qword_28093A8A0, &unk_2741D5078);
  sub_2740A6AC8(v18, v20, v26);
}

uint64_t sub_2741675EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2741C6F8C();
  *a1 = result;
  return result;
}

unint64_t sub_274167644()
{
  result = qword_28093A700;
  if (!qword_28093A700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28093A700);
  }

  return result;
}