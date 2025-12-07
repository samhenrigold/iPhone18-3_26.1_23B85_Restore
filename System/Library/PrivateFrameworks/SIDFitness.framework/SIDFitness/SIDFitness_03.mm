uint64_t sub_2629D3658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFA0, &unk_262A2E6F0);
  v6 = sub_262A2A768();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v21 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v24 = v21 | (v8 << 6);
    v25 = *(*(v5 + 48) + v24);
    v26 = (*(v5 + 56) + 32 * v24);
    v33 = v26[1];
    v34 = *v26;
    if ((v4 & 1) == 0)
    {
    }

    sub_262A2A998();
    sub_262A2A448();

    v15 = sub_262A2A9D8();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v28 && (v27 & 1) != 0)
        {
          goto LABEL_36;
        }

        v29 = v18 == v28;
        if (v18 == v28)
        {
          v18 = 0;
        }

        v27 |= v29;
        v30 = *(v14 + 8 * v18);
      }

      while (v30 == -1);
      v19 = __clz(__rbit64(~v30)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v25;
    v20 = (*(v7 + 56) + 32 * v19);
    *v20 = v34;
    v20[1] = v33;
    ++*(v7 + 16);
  }

  v22 = v8;
  while (1)
  {
    v8 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x2629D39F4);
    }

    if (v8 >= v13)
    {
      break;
    }

    v23 = v9[v8];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v12 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  if (v4)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_2629D3A2C()
{
  result = qword_27FF3C6C8;
  if (!qword_27FF3C6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C6C0, &unk_262A2E480);
    sub_2629D3AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C6C8);
  }

  return result;
}

unint64_t sub_2629D3AB0()
{
  result = qword_27FF3C6D0;
  if (!qword_27FF3C6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C6D8, &unk_262A2E7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C6D0);
  }

  return result;
}

unint64_t sub_2629D3B2C()
{
  result = qword_27FF3C6E8;
  if (!qword_27FF3C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C6E8);
  }

  return result;
}

unint64_t sub_2629D3B80()
{
  result = qword_27FF3C6F8;
  if (!qword_27FF3C6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C6F0, &qword_262A2E4A0);
    sub_2629D3C3C();
    sub_2629D3C90(&qword_27FF3C708, sub_2629D3D08, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C6F8);
  }

  return result;
}

unint64_t sub_2629D3C3C()
{
  result = qword_27FF3C700;
  if (!qword_27FF3C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C700);
  }

  return result;
}

uint64_t sub_2629D3C90(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C710, &qword_262A2E4A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2629D3D08()
{
  result = qword_27FF3C718;
  if (!qword_27FF3C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C718);
  }

  return result;
}

unint64_t sub_2629D3D5C()
{
  result = qword_27FF3C728;
  if (!qword_27FF3C728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C6F0, &qword_262A2E4A0);
    sub_2629D3E18();
    sub_2629D3C90(&qword_27FF3C738, sub_2629D3E6C, MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C728);
  }

  return result;
}

unint64_t sub_2629D3E18()
{
  result = qword_27FF3C730;
  if (!qword_27FF3C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C730);
  }

  return result;
}

unint64_t sub_2629D3E6C()
{
  result = qword_27FF3C740;
  if (!qword_27FF3C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C740);
  }

  return result;
}

unint64_t sub_2629D3EC4()
{
  result = qword_27FF3C748;
  if (!qword_27FF3C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C748);
  }

  return result;
}

uint64_t sub_2629D3F24(uint64_t *a1, int a2)
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

uint64_t sub_2629D3F6C(uint64_t result, int a2, int a3)
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

unint64_t sub_2629D3FCC()
{
  result = qword_27FF3C750;
  if (!qword_27FF3C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C750);
  }

  return result;
}

unint64_t sub_2629D4024()
{
  result = qword_27FF3C758;
  if (!qword_27FF3C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C758);
  }

  return result;
}

unint64_t sub_2629D407C()
{
  result = qword_27FF3C760;
  if (!qword_27FF3C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C760);
  }

  return result;
}

double sub_2629D40D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_2629D40E8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2629D40F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDCatalogWorkoutReference(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629D4158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDCatalogWorkoutReference(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629D41C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_262A2A988();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629D4314(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_262A2A998();
    sub_262A2A448();

    v16 = sub_262A2A9D8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v27 = v12;
    v19 = ~v17;
    while (!*(*(a2 + 48) + v18))
    {
      v20 = 0xE500000000000000;
      v21 = 0x6E61656C63;
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v15 == 1)
      {
        v22 = 0x746963696C707865;
      }

      else
      {
        v22 = 0x6669636570736E75;
      }

      if (v15 == 1)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v23 = 0xEB00000000646569;
      }

      if (v21 == v22)
      {
        goto LABEL_28;
      }

LABEL_29:
      v24 = sub_262A2A878();

      if (v24)
      {
        goto LABEL_35;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18) == 1)
    {
      v20 = 0xE800000000000000;
      v21 = 0x746963696C707865;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v21 = 0x6669636570736E75;
    v20 = 0xEB00000000646569;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_27:
    v23 = 0xE500000000000000;
    if (v21 != 0x6E61656C63)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (v20 != v23)
    {
      goto LABEL_29;
    }

LABEL_35:
    v9 = v25;
    v3 = v26;
    v8 = v27;
  }

  while (v27);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629D45F4(uint64_t result, uint64_t a2)
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
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_262A2A998();

    sub_262A2A448();
    v16 = sub_262A2A9D8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_262A2A878() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

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
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629D47AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v36 = v9;
  v37 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_262A2A998();
    sub_262A2A448();

    v16 = sub_262A2A9D8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v38 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 3)
      {
        break;
      }

      if (*(*(a2 + 48) + v18) <= 5u)
      {
        if (v20 == 4)
        {
          v22 = 0xD000000000000010;
        }

        else
        {
          v22 = 0x6564697270;
        }

        if (v20 == 4)
        {
          v21 = 0x8000000262A31890;
        }

        else
        {
          v21 = 0xE500000000000000;
        }

        if (v15 > 3)
        {
          goto LABEL_36;
        }
      }

      else if (v20 == 6)
      {
        v22 = 0x576D6172676F7270;
        v21 = 0xEE0074756F6B726FLL;
        if (v15 > 3)
        {
          goto LABEL_36;
        }
      }

      else if (v20 == 7)
      {
        v21 = 0xE700000000000000;
        v22 = 0x7261655977656ELL;
        if (v15 > 3)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v22 = 0x6967736B6E616874;
        v21 = 0xEC000000676E6976;
        if (v15 > 3)
        {
          goto LABEL_36;
        }
      }

LABEL_61:
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v35 = 0x796164696C6F68;
        }

        else
        {
          v35 = 0x77654E72616E756CLL;
        }

        if (v15 == 2)
        {
          v32 = 0xE700000000000000;
        }

        else
        {
          v32 = 0xEC00000072616559;
        }

        if (v22 == v35)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v33 = 0x7053747369747261;
        v32 = 0xEF746867696C746FLL;
        if (v15)
        {
          v33 = 0x6565776F6C6C6168;
          v32 = 0xE90000000000006ELL;
        }

        if (v22 == v33)
        {
          goto LABEL_65;
        }
      }

LABEL_66:
      v34 = sub_262A2A878();

      if (v34)
      {
        goto LABEL_82;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    v23 = 0x77654E72616E756CLL;
    if (v20 == 2)
    {
      v23 = 0x796164696C6F68;
    }

    v24 = 0xEC00000072616559;
    if (v20 == 2)
    {
      v24 = 0xE700000000000000;
    }

    v25 = 0x7053747369747261;
    if (*(*(a2 + 48) + v18))
    {
      v25 = 0x6565776F6C6C6168;
    }

    v26 = 0xEF746867696C746FLL;
    if (*(*(a2 + 48) + v18))
    {
      v26 = 0xE90000000000006ELL;
    }

    if (*(*(a2 + 48) + v18) <= 1u)
    {
      v22 = v25;
    }

    else
    {
      v22 = v23;
    }

    if (*(*(a2 + 48) + v18) <= 1u)
    {
      v21 = v26;
    }

    else
    {
      v21 = v24;
    }

    if (v15 <= 3)
    {
      goto LABEL_61;
    }

LABEL_36:
    v27 = 0x6967736B6E616874;
    if (v15 == 7)
    {
      v27 = 0x7261655977656ELL;
    }

    v28 = 0xEC000000676E6976;
    if (v15 == 7)
    {
      v28 = 0xE700000000000000;
    }

    if (v15 == 6)
    {
      v27 = 0x576D6172676F7270;
      v28 = 0xEE0074756F6B726FLL;
    }

    v29 = 0xD000000000000010;
    if (v15 != 4)
    {
      v29 = 0x6564697270;
    }

    v30 = 0x8000000262A31890;
    if (v15 != 4)
    {
      v30 = 0xE500000000000000;
    }

    if (v15 <= 5)
    {
      v31 = v29;
    }

    else
    {
      v31 = v27;
    }

    if (v15 <= 5)
    {
      v32 = v30;
    }

    else
    {
      v32 = v28;
    }

    if (v22 != v31)
    {
      goto LABEL_66;
    }

LABEL_65:
    if (v21 != v32)
    {
      goto LABEL_66;
    }

LABEL_82:
    v9 = v36;
    v3 = v37;
    v8 = v38;
  }

  while (v38);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629D4D50(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(result + 56);
  v197 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v203 = a2 + 56;
  v198 = v8;
  v199 = result;
  if ((v6 & v4) == 0)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 16 * (v9 | (v3 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    sub_262A2A998();
    v204 = v15;
    v200 = v10;
    if (v15 > 4)
    {
      if (v15 > 7)
      {
        if (v15 == 8)
        {
          v16 = 8;
        }

        else
        {
          if (v15 == 9)
          {
            MEMORY[0x26672F240](9);

            sub_2629B55DC(v214, v14);
            goto LABEL_35;
          }

          v16 = 10;
        }
      }

      else if (v15 == 5)
      {
        v16 = 5;
      }

      else if (v15 == 6)
      {
        v16 = 6;
      }

      else
      {
        v16 = 7;
      }

      goto LABEL_34;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = 2;
      }

      else if (v15 == 3)
      {
        v16 = 3;
      }

      else
      {
        v16 = 4;
      }

LABEL_34:
      MEMORY[0x26672F240](v16);

      sub_2629B5854(v214, v14);
      goto LABEL_35;
    }

    if (v15)
    {
      MEMORY[0x26672F240](1);

      sub_2629B59B0(v214, v14);
    }

    else
    {
      MEMORY[0x26672F240](0);

      sub_2629B5B40(v214, v14);
    }

LABEL_35:
    v17 = sub_262A2A9D8();
    v18 = -1 << *(v2 + 32);
    v19 = v17 & ~v18;
    v20 = v203;
    v21 = v15;
    if (((*(v203 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_271:

      return 0;
    }

    v22 = ~v18;
    v23 = v14 + 56;
    v201 = ~v18;
    while (1)
    {
      v24 = *(v2 + 48) + 16 * v19;
      result = *v24;
      v25 = *(v24 + 8);
      if (v25 <= 4)
      {
        if (v25 > 1)
        {
          if (v25 == 2)
          {
            if (v21 == 2)
            {
              if (result == v14)
              {
                goto LABEL_268;
              }

              if (*(result + 16) == *(v14 + 16))
              {
                v53 = result + 56;
                v54 = 1 << *(result + 32);
                if (v54 < 64)
                {
                  v55 = ~(-1 << v54);
                }

                else
                {
                  v55 = -1;
                }

                v56 = v55 & *(result + 56);
                v183 = (v54 + 63) >> 6;
                v208 = result;

                v57 = 0;
                while (1)
                {
                  result = v208;
                  if (!v56)
                  {
                    break;
                  }

                  v85 = __clz(__rbit64(v56));
                  v189 = (v56 - 1) & v56;
LABEL_139:
                  v88 = (*(v208 + 48) + 16 * (v85 | (v57 << 6)));
                  v90 = *v88;
                  v89 = v88[1];
                  sub_262A2A998();

                  sub_262A2A448();
                  v91 = sub_262A2A9D8();
                  v92 = -1 << *(v14 + 32);
                  v93 = v91 & ~v92;
                  if (((*(v23 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
                  {
LABEL_37:

                    v2 = a2;
                    v20 = v203;
                    v21 = v204;
                    v22 = v201;
                    goto LABEL_38;
                  }

                  v94 = ~v92;
                  while (1)
                  {
                    v95 = (*(v14 + 48) + 16 * v93);
                    v96 = *v95 == v90 && v95[1] == v89;
                    if (v96 || (sub_262A2A878() & 1) != 0)
                    {
                      break;
                    }

                    v93 = (v93 + 1) & v94;
                    if (((*(v23 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
                    {
                      goto LABEL_37;
                    }
                  }

                  v2 = a2;
                  v56 = v189;
                }

                v86 = v57;
                while (1)
                {
                  v57 = v86 + 1;
                  if (__OFADD__(v86, 1))
                  {
                    goto LABEL_274;
                  }

                  if (v57 >= v183)
                  {
LABEL_267:

                    goto LABEL_268;
                  }

                  v87 = *(v53 + 8 * v57);
                  ++v86;
                  if (v87)
                  {
                    v85 = __clz(__rbit64(v87));
                    v189 = (v87 - 1) & v87;
                    goto LABEL_139;
                  }
                }
              }
            }
          }

          else if (v25 == 3)
          {
            if (v21 == 3)
            {
              if (result == v14)
              {
                goto LABEL_268;
              }

              if (*(result + 16) == *(v14 + 16))
              {
                v31 = result + 56;
                v32 = 1 << *(result + 32);
                if (v32 < 64)
                {
                  v33 = ~(-1 << v32);
                }

                else
                {
                  v33 = -1;
                }

                v34 = v33 & *(result + 56);
                v182 = (v32 + 63) >> 6;
                v206 = result;

                v35 = 0;
                while (v34)
                {
                  v192 = (v34 - 1) & v34;
                  v121 = __clz(__rbit64(v34)) | (v35 << 6);
                  result = v206;
LABEL_190:
                  v124 = (*(result + 48) + 16 * v121);
                  v126 = *v124;
                  v125 = v124[1];
                  sub_262A2A998();

                  sub_262A2A448();
                  v127 = sub_262A2A9D8();
                  v128 = -1 << *(v14 + 32);
                  v129 = v127 & ~v128;
                  if (((*(v23 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0)
                  {
                    goto LABEL_37;
                  }

                  v130 = ~v128;
                  while (1)
                  {
                    v131 = (*(v14 + 48) + 16 * v129);
                    v132 = *v131 == v126 && v131[1] == v125;
                    if (v132 || (sub_262A2A878() & 1) != 0)
                    {
                      break;
                    }

                    v129 = (v129 + 1) & v130;
                    if (((*(v23 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0)
                    {
                      goto LABEL_37;
                    }
                  }

                  v2 = a2;
                  v34 = v192;
                }

                v122 = v35;
                result = v206;
                while (1)
                {
                  v35 = v122 + 1;
                  if (__OFADD__(v122, 1))
                  {
                    goto LABEL_279;
                  }

                  if (v35 >= v182)
                  {
                    goto LABEL_267;
                  }

                  v123 = *(v31 + 8 * v35);
                  ++v122;
                  if (v123)
                  {
                    v192 = (v123 - 1) & v123;
                    v121 = __clz(__rbit64(v123)) | (v35 << 6);
                    goto LABEL_190;
                  }
                }
              }
            }
          }

          else if (v21 == 4)
          {
            if (result == v14)
            {
              goto LABEL_268;
            }

            if (*(result + 16) == *(v14 + 16))
            {
              v68 = result + 56;
              v69 = 1 << *(result + 32);
              if (v69 < 64)
              {
                v70 = ~(-1 << v69);
              }

              else
              {
                v70 = -1;
              }

              v71 = v70 & *(result + 56);
              v186 = (v69 + 63) >> 6;
              v211 = result;

              v72 = 0;
              while (v71)
              {
                v193 = (v71 - 1) & v71;
                v133 = __clz(__rbit64(v71)) | (v72 << 6);
                result = v211;
LABEL_207:
                v136 = (*(result + 48) + 16 * v133);
                v138 = *v136;
                v137 = v136[1];
                sub_262A2A998();

                sub_262A2A448();
                v139 = sub_262A2A9D8();
                v140 = -1 << *(v14 + 32);
                v141 = v139 & ~v140;
                if (((*(v23 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) == 0)
                {
                  goto LABEL_37;
                }

                v142 = ~v140;
                while (1)
                {
                  v143 = (*(v14 + 48) + 16 * v141);
                  v144 = *v143 == v138 && v143[1] == v137;
                  if (v144 || (sub_262A2A878() & 1) != 0)
                  {
                    break;
                  }

                  v141 = (v141 + 1) & v142;
                  if (((*(v23 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) == 0)
                  {
                    goto LABEL_37;
                  }
                }

                v2 = a2;
                v71 = v193;
              }

              v134 = v72;
              result = v211;
              while (1)
              {
                v72 = v134 + 1;
                if (__OFADD__(v134, 1))
                {
                  goto LABEL_278;
                }

                if (v72 >= v186)
                {
                  goto LABEL_267;
                }

                v135 = *(v68 + 8 * v72);
                ++v134;
                if (v135)
                {
                  v193 = (v135 - 1) & v135;
                  v133 = __clz(__rbit64(v135)) | (v72 << 6);
                  goto LABEL_207;
                }
              }
            }
          }

          goto LABEL_38;
        }

        if (!v25)
        {
          if (!v21)
          {
            if (result == v14)
            {
              goto LABEL_268;
            }

            if (*(result + 16) == *(v14 + 16))
            {
              v38 = 0;
              v39 = result + 56;
              v40 = 1 << *(result + 32);
              if (v40 < 64)
              {
                v41 = ~(-1 << v40);
              }

              else
              {
                v41 = -1;
              }

              v42 = v41 & *(result + 56);
              v43 = (v40 + 63) >> 6;
              if (!v42)
              {
LABEL_73:
                v45 = v38;
                while (1)
                {
                  v38 = v45 + 1;
                  if (__OFADD__(v45, 1))
                  {
                    goto LABEL_282;
                  }

                  if (v38 >= v43)
                  {
                    goto LABEL_268;
                  }

                  v46 = *(v39 + 8 * v38);
                  ++v45;
                  if (v46)
                  {
                    v44 = __clz(__rbit64(v46));
                    v207 = (v46 - 1) & v46;
                    goto LABEL_78;
                  }
                }
              }

              while (1)
              {
                v44 = __clz(__rbit64(v42));
                v207 = (v42 - 1) & v42;
LABEL_78:
                v47 = *(*(result + 48) + 8 * (v44 | (v38 << 6)));
                v48 = result;
                v49 = sub_262A2A988();
                v50 = -1 << *(v14 + 32);
                v51 = v49 & ~v50;
                v20 = v203;
                v21 = v204;
                v22 = v201;
                if (((*(v23 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
                {
                  break;
                }

                result = v48;
                v52 = ~v50;
                while (*(*(v14 + 48) + 8 * v51) != v47)
                {
                  v51 = (v51 + 1) & v52;
                  if (((*(v23 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
                  {
                    goto LABEL_38;
                  }
                }

                v42 = v207;
                if (!v207)
                {
                  goto LABEL_73;
                }
              }
            }
          }

          goto LABEL_38;
        }

        if (v21 != 1)
        {
          goto LABEL_38;
        }

        v37 = sub_2629D4314(v73, v14);
        goto LABEL_115;
      }

      if (v25 > 7)
      {
        break;
      }

      if (v25 == 5)
      {
        if (v21 == 5)
        {
          if (result == v14)
          {
            goto LABEL_268;
          }

          if (*(result + 16) == *(v14 + 16))
          {
            v58 = result + 56;
            v59 = 1 << *(result + 32);
            if (v59 < 64)
            {
              v60 = ~(-1 << v59);
            }

            else
            {
              v60 = -1;
            }

            v61 = v60 & *(result + 56);
            v184 = (v59 + 63) >> 6;
            v209 = result;

            v62 = 0;
            while (v61)
            {
              v190 = (v61 - 1) & v61;
              v97 = __clz(__rbit64(v61)) | (v62 << 6);
              result = v209;
LABEL_156:
              v100 = (*(result + 48) + 16 * v97);
              v102 = *v100;
              v101 = v100[1];
              sub_262A2A998();

              sub_262A2A448();
              v103 = sub_262A2A9D8();
              v104 = -1 << *(v14 + 32);
              v105 = v103 & ~v104;
              if (((*(v23 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
              {
                goto LABEL_37;
              }

              v106 = ~v104;
              while (1)
              {
                v107 = (*(v14 + 48) + 16 * v105);
                v108 = *v107 == v102 && v107[1] == v101;
                if (v108 || (sub_262A2A878() & 1) != 0)
                {
                  break;
                }

                v105 = (v105 + 1) & v106;
                if (((*(v23 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
                {
                  goto LABEL_37;
                }
              }

              v2 = a2;
              v61 = v190;
            }

            v98 = v62;
            result = v209;
            while (1)
            {
              v62 = v98 + 1;
              if (__OFADD__(v98, 1))
              {
                goto LABEL_275;
              }

              if (v62 >= v184)
              {
                goto LABEL_267;
              }

              v99 = *(v58 + 8 * v62);
              ++v98;
              if (v99)
              {
                v190 = (v99 - 1) & v99;
                v97 = __clz(__rbit64(v99)) | (v62 << 6);
                goto LABEL_156;
              }
            }
          }
        }
      }

      else if (v25 == 6)
      {
        if (v21 == 6)
        {
          if (result == v14)
          {
            goto LABEL_268;
          }

          if (*(result + 16) == *(v14 + 16))
          {
            v26 = result + 56;
            v27 = 1 << *(result + 32);
            if (v27 < 64)
            {
              v28 = ~(-1 << v27);
            }

            else
            {
              v28 = -1;
            }

            v29 = v28 & *(result + 56);
            v181 = (v27 + 63) >> 6;
            v205 = result;

            v30 = 0;
            while (v29)
            {
              v194 = (v29 - 1) & v29;
              v145 = __clz(__rbit64(v29)) | (v30 << 6);
              result = v205;
LABEL_224:
              v148 = (*(result + 48) + 16 * v145);
              v150 = *v148;
              v149 = v148[1];
              sub_262A2A998();

              sub_262A2A448();
              v151 = sub_262A2A9D8();
              v152 = -1 << *(v14 + 32);
              v153 = v151 & ~v152;
              if (((*(v23 + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v153) & 1) == 0)
              {
                goto LABEL_37;
              }

              v154 = ~v152;
              while (1)
              {
                v155 = (*(v14 + 48) + 16 * v153);
                v156 = *v155 == v150 && v155[1] == v149;
                if (v156 || (sub_262A2A878() & 1) != 0)
                {
                  break;
                }

                v153 = (v153 + 1) & v154;
                if (((*(v23 + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v153) & 1) == 0)
                {
                  goto LABEL_37;
                }
              }

              v2 = a2;
              v29 = v194;
            }

            v146 = v30;
            result = v205;
            while (1)
            {
              v30 = v146 + 1;
              if (__OFADD__(v146, 1))
              {
                goto LABEL_280;
              }

              if (v30 >= v181)
              {
                goto LABEL_267;
              }

              v147 = *(v26 + 8 * v30);
              ++v146;
              if (v147)
              {
                v194 = (v147 - 1) & v147;
                v145 = __clz(__rbit64(v147)) | (v30 << 6);
                goto LABEL_224;
              }
            }
          }
        }
      }

      else if (v21 == 7)
      {
        if (result == v14)
        {
          goto LABEL_268;
        }

        if (*(result + 16) == *(v14 + 16))
        {
          v75 = result + 56;
          v76 = 1 << *(result + 32);
          if (v76 < 64)
          {
            v77 = ~(-1 << v76);
          }

          else
          {
            v77 = -1;
          }

          v78 = v77 & *(result + 56);
          v187 = (v76 + 63) >> 6;
          v212 = result;

          v79 = 0;
          while (v78)
          {
            v195 = (v78 - 1) & v78;
            v157 = __clz(__rbit64(v78)) | (v79 << 6);
            result = v212;
LABEL_241:
            v160 = (*(result + 48) + 16 * v157);
            v162 = *v160;
            v161 = v160[1];
            sub_262A2A998();

            sub_262A2A448();
            v163 = sub_262A2A9D8();
            v164 = -1 << *(v14 + 32);
            v165 = v163 & ~v164;
            if (((*(v23 + ((v165 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v165) & 1) == 0)
            {
              goto LABEL_37;
            }

            v166 = ~v164;
            while (1)
            {
              v167 = (*(v14 + 48) + 16 * v165);
              v168 = *v167 == v162 && v167[1] == v161;
              if (v168 || (sub_262A2A878() & 1) != 0)
              {
                break;
              }

              v165 = (v165 + 1) & v166;
              if (((*(v23 + ((v165 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v165) & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            v2 = a2;
            v78 = v195;
          }

          v158 = v79;
          result = v212;
          while (1)
          {
            v79 = v158 + 1;
            if (__OFADD__(v158, 1))
            {
              goto LABEL_276;
            }

            if (v79 >= v187)
            {
              goto LABEL_267;
            }

            v159 = *(v75 + 8 * v79);
            ++v158;
            if (v159)
            {
              v195 = (v159 - 1) & v159;
              v157 = __clz(__rbit64(v159)) | (v79 << 6);
              goto LABEL_241;
            }
          }
        }
      }

LABEL_38:
      v19 = (v19 + 1) & v22;
      if (((*(v20 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_271;
      }
    }

    if (v25 == 8)
    {
      if (v21 == 8)
      {
        if (result == v14)
        {
          goto LABEL_268;
        }

        if (*(result + 16) == *(v14 + 16))
        {
          v63 = result + 56;
          v64 = 1 << *(result + 32);
          if (v64 < 64)
          {
            v65 = ~(-1 << v64);
          }

          else
          {
            v65 = -1;
          }

          v66 = v65 & *(result + 56);
          v185 = (v64 + 63) >> 6;
          v210 = result;

          v67 = 0;
          while (v66)
          {
            v191 = (v66 - 1) & v66;
            v109 = __clz(__rbit64(v66)) | (v67 << 6);
            result = v210;
LABEL_173:
            v112 = (*(result + 48) + 16 * v109);
            v114 = *v112;
            v113 = v112[1];
            sub_262A2A998();

            sub_262A2A448();
            v115 = sub_262A2A9D8();
            v116 = -1 << *(v14 + 32);
            v117 = v115 & ~v116;
            if (((*(v23 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) == 0)
            {
              goto LABEL_37;
            }

            v118 = ~v116;
            while (1)
            {
              v119 = (*(v14 + 48) + 16 * v117);
              v120 = *v119 == v114 && v119[1] == v113;
              if (v120 || (sub_262A2A878() & 1) != 0)
              {
                break;
              }

              v117 = (v117 + 1) & v118;
              if (((*(v23 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            v2 = a2;
            v66 = v191;
          }

          v110 = v67;
          result = v210;
          while (1)
          {
            v67 = v110 + 1;
            if (__OFADD__(v110, 1))
            {
              goto LABEL_277;
            }

            if (v67 >= v185)
            {
              goto LABEL_267;
            }

            v111 = *(v63 + 8 * v67);
            ++v110;
            if (v111)
            {
              v191 = (v111 - 1) & v111;
              v109 = __clz(__rbit64(v111)) | (v67 << 6);
              goto LABEL_173;
            }
          }
        }
      }

      goto LABEL_38;
    }

    if (v25 == 9)
    {
      if (v21 != 9)
      {
        goto LABEL_38;
      }

      v37 = sub_2629D47AC(v36, v14);
LABEL_115:
      v74 = v37;

      v22 = v201;
      v21 = v204;
      v20 = v203;
      if (v74)
      {
        goto LABEL_268;
      }

      goto LABEL_38;
    }

    if (v21 != 10)
    {
      goto LABEL_38;
    }

    if (result != v14)
    {
      if (*(result + 16) == *(v14 + 16))
      {
        v80 = result + 56;
        v81 = 1 << *(result + 32);
        if (v81 < 64)
        {
          v82 = ~(-1 << v81);
        }

        else
        {
          v82 = -1;
        }

        v83 = v82 & *(result + 56);
        v188 = (v81 + 63) >> 6;
        v213 = result;

        v84 = 0;
        while (v83)
        {
          v196 = (v83 - 1) & v83;
          v169 = __clz(__rbit64(v83)) | (v84 << 6);
          result = v213;
LABEL_258:
          v172 = (*(result + 48) + 16 * v169);
          v174 = *v172;
          v173 = v172[1];
          sub_262A2A998();

          sub_262A2A448();
          v175 = sub_262A2A9D8();
          v176 = -1 << *(v14 + 32);
          v177 = v175 & ~v176;
          if (((*(v23 + ((v177 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v177) & 1) == 0)
          {
            goto LABEL_37;
          }

          v178 = ~v176;
          while (1)
          {
            v179 = (*(v14 + 48) + 16 * v177);
            v180 = *v179 == v174 && v179[1] == v173;
            if (v180 || (sub_262A2A878() & 1) != 0)
            {
              break;
            }

            v177 = (v177 + 1) & v178;
            if (((*(v23 + ((v177 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v177) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v2 = a2;
          v83 = v196;
        }

        v170 = v84;
        result = v213;
        while (1)
        {
          v84 = v170 + 1;
          if (__OFADD__(v170, 1))
          {
            goto LABEL_281;
          }

          if (v84 >= v188)
          {
            goto LABEL_267;
          }

          v171 = *(v80 + 8 * v84);
          ++v170;
          if (v171)
          {
            v196 = (v171 - 1) & v171;
            v169 = __clz(__rbit64(v171)) | (v84 << 6);
            goto LABEL_258;
          }
        }
      }

      goto LABEL_38;
    }

LABEL_268:

    v8 = v198;
    result = v199;
    v7 = v200;
    if (v200)
    {
      continue;
    }

    break;
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

    v12 = *(v197 + 8 * v3);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_274:
  __break(1u);
LABEL_275:
  __break(1u);
LABEL_276:
  __break(1u);
LABEL_277:
  __break(1u);
LABEL_278:
  __break(1u);
LABEL_279:
  __break(1u);
LABEL_280:
  __break(1u);
LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
  return result;
}

uint64_t sub_2629D5E3C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v25 = v7;
  v26 = result;
  v28 = a2;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v6));
    v27 = (v6 - 1) & v6;
LABEL_13:
    v12 = *(result + 48) + 24 * (v9 | (v2 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = a2;
    sub_262A2A998();
    MEMORY[0x26672F240](v15);

    sub_262A2A448();
    v17 = sub_262A2A9D8();
    v18 = -1 << *(v16 + 32);
    v19 = v17 & ~v18;
    if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_33:
      sub_2629B6A68(v13, v14, v15);
      return 0;
    }

    v20 = ~v18;
    v21 = *(v28 + 48);
    while (1)
    {
      v22 = v21 + 24 * v19;
      v23 = *(v22 + 16);
      if (v23 <= 1)
      {
        if (*(v22 + 16))
        {
          if (v15 == 1)
          {
            goto LABEL_25;
          }
        }

        else if (!v15)
        {
          goto LABEL_25;
        }

        goto LABEL_16;
      }

      if (v23 != 2)
      {
        break;
      }

      if (v15 == 2)
      {
        goto LABEL_25;
      }

LABEL_16:
      v19 = (v19 + 1) & v20;
      if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (v15 != 3)
    {
      goto LABEL_16;
    }

LABEL_25:
    v24 = *v22 == v13 && *(v22 + 8) == v14;
    if (!v24 && (sub_262A2A878() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_2629B6A68(v13, v14, v23);
    v7 = v25;
    result = v26;
    v6 = v27;
    a2 = v28;
  }

  while (v27);
LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v27 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629D607C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v53 = a2 + 56;
  v43 = result + 56;
  v44 = result;
  v47 = a2;
  v42 = v7;
  if (v6)
  {
LABEL_7:
    v8 = __clz(__rbit64(v6));
    v45 = (v6 - 1) & v6;
LABEL_13:
    v11 = (*(result + 48) + 48 * (v8 | (v2 << 6)));
    v13 = *v11;
    v12 = v11[1];
    v15 = v11[2];
    v14 = v11[3];
    v16 = v11[4];
    v17 = v11[5];
    v55 = *v11;
    v56 = v12;
    v57 = v15;
    v58 = v14;
    v59 = v16;
    v60 = v17;
    v18 = a2;
    sub_262A2A998();

    v49 = v14;

    v48 = v16;

    v50 = v17;

    SIDModalityPreference.hash(into:)(v54);
    v19 = sub_262A2A9D8();
    v20 = -1 << *(v18 + 32);
    v21 = v19 & ~v20;
    if ((*(v53 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v51 = ~v20;
      v52 = *(v47 + 48);
      v46 = (v16 + 40);
      do
      {
        v22 = (v52 + 48 * v21);
        result = *v22;
        v23 = v22[2];
        v24 = v22[3];
        v26 = v22[4];
        v25 = v22[5];
        v27 = *v22 == v13 && v22[1] == v12;
        if (v27 || (result = sub_262A2A878(), (result & 1) != 0))
        {
          v28 = *(v23 + 16);
          if (v28 == *(v15 + 16))
          {
            if (v28)
            {
              v29 = v23 == v15;
            }

            else
            {
              v29 = 1;
            }

            if (!v29)
            {
              v30 = (v23 + 32);
              v31 = (v15 + 32);
              while (v28)
              {
                if (*v30 != *v31)
                {
                  goto LABEL_15;
                }

                ++v30;
                ++v31;
                if (!--v28)
                {
                  goto LABEL_30;
                }
              }

              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              goto LABEL_64;
            }

LABEL_30:
            v32 = *(v24 + 16);
            if (v32 == *(v49 + 16))
            {
              if (!v32 || v24 == v49)
              {
LABEL_41:
                v36 = *(v26 + 16);
                if (v36 == *(v48 + 16))
                {
                  if (!v36 || v26 == v48)
                  {
LABEL_52:
                    v40 = *(v25 + 16);
                    if (v40 == *(v50 + 16))
                    {
                      if (!v40 || v25 == v50)
                      {
LABEL_58:

                        v3 = v43;
                        result = v44;
                        a2 = v47;
                        v7 = v42;
                        v6 = v45;
                        if (v45)
                        {
                          goto LABEL_7;
                        }

                        goto LABEL_8;
                      }

                      v41 = 32;
                      while (*(v25 + v41) == *(v50 + v41))
                      {
                        ++v41;
                        if (!--v40)
                        {
                          goto LABEL_58;
                        }
                      }
                    }
                  }

                  else
                  {
                    v37 = (v26 + 40);
                    v38 = v46;
                    while (1)
                    {
                      v39 = *(v37 - 1) == *(v38 - 1) && *v37 == *v38;
                      if (!v39 && (sub_262A2A878() & 1) == 0)
                      {
                        break;
                      }

                      v37 += 2;
                      v38 += 2;
                      if (!--v36)
                      {
                        goto LABEL_52;
                      }
                    }
                  }
                }
              }

              else
              {
                v33 = (v24 + 40);
                v34 = (v49 + 40);
                while (1)
                {
                  v35 = *(v33 - 1) == *(v34 - 1) && *v33 == *v34;
                  if (!v35 && (sub_262A2A878() & 1) == 0)
                  {
                    break;
                  }

                  v33 += 2;
                  v34 += 2;
                  if (!--v32)
                  {
                    goto LABEL_41;
                  }
                }
              }
            }
          }
        }

LABEL_15:
        v21 = (v21 + 1) & v51;
      }

      while (((*(v53 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
    }

    return 0;
  }

LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v45 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_2629D6494(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_262A2A998();
    MEMORY[0x26672F240](v13);
    result = sub_262A2A9D8();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t SIDWorkoutPlanScheduledItem.dictionary()()
{
  v1 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6B8, &unk_262A2E7A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262A2E460;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  sub_262A2A6A8();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000262A32440;
  v3 = sub_2629C89E4(v1);
  sub_2629CAF7C(v3, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6C0, &unk_262A2E480);
  sub_2629D3A2C();
  sub_262A2A6A8();
  *(inited + 144) = 0xD000000000000012;
  *(inited + 152) = 0x8000000262A323C0;

  sub_262A2A6A8();
  v5 = sub_2629AC344(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C080, &qword_262A2E490);
  swift_arrayDestroy();
  return v5;
}

uint64_t SIDWorkoutPlanScheduledItem.modalityIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SIDWorkoutPlanScheduledItem.init(duration:filterProperties:modalityIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t sub_2629D67FC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_2629D685C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2629D7414(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2629D6890(uint64_t a1)
{
  v2 = sub_2629D7120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629D68CC(uint64_t a1)
{
  v2 = sub_2629D7120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static SIDWorkoutPlanScheduledItem.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if ((sub_2629D5E3C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v2 == v4)
  {
    return 1;
  }

  return sub_262A2A878();
}

uint64_t SIDWorkoutPlanScheduledItem.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  MEMORY[0x26672F240](*v1);
  sub_2629B5EB8(a1, v3);

  return sub_262A2A448();
}

uint64_t SIDWorkoutPlanScheduledItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  sub_2629B5EB8(v4, v2);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629D6A80()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  sub_2629B5EB8(v4, v2);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629D6AF8(__int128 *a1)
{
  v3 = v1[1];
  MEMORY[0x26672F240](*v1);
  sub_2629B5EB8(a1, v3);

  return sub_262A2A448();
}

uint64_t sub_2629D6B60(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_262A2A998();
  MEMORY[0x26672F240](v2);
  sub_2629B5EB8(v5, v3);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629D6BD4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if ((sub_2629D5E3C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v2 == v4)
  {
    return 1;
  }

  return sub_262A2A878();
}

uint64_t SIDWorkoutPlanScheduledItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C798, &qword_262A2E7C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[1] = v1[2];
  v12 = v8;
  v11[0] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629D7120();
  sub_262A2AA28();
  v16 = 0;
  sub_262A2A838();
  if (!v2)
  {
    v13 = v12;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C7A8, &qword_262A2E7C8);
    sub_2629D7174(&qword_27FF3C7B0, sub_2629D71EC, MEMORY[0x277D83B50]);
    sub_262A2A848();
    v14 = 2;
    sub_262A2A828();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SIDWorkoutPlanScheduledItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C7C0, &qword_262A2E7D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629D7120();
  sub_262A2AA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = 0;
  v14[0] = sub_262A2A7D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C7A8, &qword_262A2E7C8);
  v16 = 1;
  sub_2629D7174(&qword_27FF3C7C8, sub_2629D7240, MEMORY[0x277D83B70]);
  sub_262A2A7E8();
  v9 = v14[1];
  v15 = 2;
  v10 = sub_262A2A7C8();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v14[0];
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_2629D7120()
{
  result = qword_27FF3C7A0;
  if (!qword_27FF3C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7A0);
  }

  return result;
}

uint64_t sub_2629D7174(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C7A8, &qword_262A2E7C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2629D71EC()
{
  result = qword_27FF3C7B8;
  if (!qword_27FF3C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7B8);
  }

  return result;
}

unint64_t sub_2629D7240()
{
  result = qword_27FF3C7D0;
  if (!qword_27FF3C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7D0);
  }

  return result;
}

unint64_t sub_2629D7298()
{
  result = qword_27FF3C7D8;
  if (!qword_27FF3C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7D8);
  }

  return result;
}

unint64_t sub_2629D7310()
{
  result = qword_27FF3C7E0;
  if (!qword_27FF3C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7E0);
  }

  return result;
}

unint64_t sub_2629D7368()
{
  result = qword_27FF3C7E8;
  if (!qword_27FF3C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7E8);
  }

  return result;
}

unint64_t sub_2629D73C0()
{
  result = qword_27FF3C7F0;
  if (!qword_27FF3C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C7F0);
  }

  return result;
}

uint64_t sub_2629D7414(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_262A2A878() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000262A32440 == a2 || (sub_262A2A878() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000262A323C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_262A2A878();

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

unint64_t SIDWorkoutPlanScheduleFilterProperty.dictionary()(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C7F8, &unk_262A2EA10);
  v6 = a3;
  v7 = MEMORY[0x277D837D0];
  if (v6 <= 1)
  {
    if (v6)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_262A2EA00;

      sub_262A2A6A8();
      *(inited + 96) = v7;
      v9 = 0x6E656D7069757165;
      v10 = 0xE900000000000074;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_262A2EA00;

      sub_262A2A6A8();
      *(inited + 96) = v7;
      v9 = 0x75636F4679646F62;
      v10 = 0xE900000000000073;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_262A2EA00;

    sub_262A2A6A8();
    *(inited + 96) = v7;
    v9 = 0x656D656874;
    v10 = 0xE500000000000000;
LABEL_8:
    *(inited + 72) = v9;
    *(inited + 80) = v10;
    goto LABEL_9;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262A2EA00;

  sub_262A2A6A8();
  *(inited + 96) = v7;
  *(inited + 72) = 0x76654C6C6C696B73;
  *(inited + 80) = 0xEA00000000006C65;
LABEL_9:
  sub_262A2A6A8();
  *(inited + 168) = v7;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  v11 = sub_2629AC47C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C070, &qword_262A2B518);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_2629D7834(uint64_t a1)
{
  v2 = sub_2629D8504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629D7870(uint64_t a1)
{
  v2 = sub_2629D8504();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629D78AC()
{
  v1 = 0x75636F4679646F62;
  v2 = 0x76654C6C6C696B73;
  if (*v0 != 2)
  {
    v2 = 0x656D656874;
  }

  if (*v0)
  {
    v1 = 0x6E656D7069757165;
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

uint64_t sub_2629D7928@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2629D8558(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2629D7950(uint64_t a1)
{
  v2 = sub_2629D83B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629D798C(uint64_t a1)
{
  v2 = sub_2629D83B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629D79C8(uint64_t a1)
{
  v2 = sub_2629D84B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629D7A04(uint64_t a1)
{
  v2 = sub_2629D84B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629D7A40(uint64_t a1)
{
  v2 = sub_2629D845C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629D7A7C(uint64_t a1)
{
  v2 = sub_2629D845C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629D7AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262A2A878();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2629D7B48(uint64_t a1)
{
  v2 = sub_2629D8408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629D7B84(uint64_t a1)
{
  v2 = sub_2629D8408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SIDWorkoutPlanScheduleFilterProperty.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  MEMORY[0x26672F240](a4);

  return sub_262A2A448();
}

uint64_t SIDWorkoutPlanScheduleFilterProperty.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_262A2A998();
  MEMORY[0x26672F240](a3);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629D7C7C()
{
  v1 = *(v0 + 16);
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629D7CE0(uint64_t a1)
{
  MEMORY[0x26672F240](*(v1 + 16));

  return sub_262A2A448();
}

uint64_t sub_2629D7D34(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_262A2A998();
  MEMORY[0x26672F240](v2);
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t SIDWorkoutPlanScheduleFilterProperty.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v38 = a3;
  v39 = a4;
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C800, &qword_262A2EA20);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C808, &qword_262A2EA28);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C810, &qword_262A2EA30);
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C818, &qword_262A2EA38);
  v28 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C820, &qword_262A2EA40);
  v16 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v18 = &v28 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629D83B4();
  sub_262A2AA28();
  v19 = (v16 + 8);
  if (v39 > 1u)
  {
    if (v39 == 2)
    {
      v42 = 2;
      sub_2629D845C();
      v21 = v36;
      sub_262A2A808();
      v22 = v32;
      sub_262A2A828();
      (*(v31 + 8))(v9, v22);
      return (*v19)(v18, v21);
    }

    v43 = 3;
    sub_2629D8408();
    v26 = v33;
    v20 = v36;
    sub_262A2A808();
    v27 = v35;
    sub_262A2A828();
    (*(v34 + 8))(v26, v27);
  }

  else
  {
    if (v39)
    {
      v41 = 1;
      sub_2629D84B0();
      v24 = v36;
      sub_262A2A808();
      v25 = v30;
      sub_262A2A828();
      (*(v29 + 8))(v12, v25);
      return (*v19)(v18, v24);
    }

    v40 = 0;
    sub_2629D8504();
    v20 = v36;
    sub_262A2A808();
    sub_262A2A828();
    (*(v28 + 8))(v15, v13);
  }

  return (*v19)(v18, v20);
}

uint64_t SIDWorkoutPlanScheduleFilterProperty.init(from:)(void *a1)
{
  result = sub_2629D86CC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_2629D82E8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2629D86CC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t _s10SIDFitness36SIDWorkoutPlanScheduleFilterPropertyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 != 2)
      {
        return 0;
      }
    }

    else if (a6 != 3)
    {
      return 0;
    }
  }

  else if (a3)
  {
    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_262A2A878();
  }
}

unint64_t sub_2629D83B4()
{
  result = qword_27FF3C828;
  if (!qword_27FF3C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C828);
  }

  return result;
}

unint64_t sub_2629D8408()
{
  result = qword_27FF3C830;
  if (!qword_27FF3C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C830);
  }

  return result;
}

unint64_t sub_2629D845C()
{
  result = qword_27FF3C838;
  if (!qword_27FF3C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C838);
  }

  return result;
}

unint64_t sub_2629D84B0()
{
  result = qword_27FF3C840;
  if (!qword_27FF3C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C840);
  }

  return result;
}

unint64_t sub_2629D8504()
{
  result = qword_27FF3C848;
  if (!qword_27FF3C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C848);
  }

  return result;
}

uint64_t sub_2629D8558(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75636F4679646F62 && a2 == 0xE900000000000073;
  if (v4 || (sub_262A2A878() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_262A2A878() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEA00000000006C65 || (sub_262A2A878() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_262A2A878();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2629D86CC(void *a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C8D0, &qword_262A2F170);
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v38 - v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C8D8, &qword_262A2F178);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v47 = &v38 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C8E0, &qword_262A2F180);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C8E8, &qword_262A2F188);
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C8F0, &unk_262A2F190);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2629D83B4();
  v14 = v50;
  sub_262A2AA08();
  if (!v14)
  {
    v39 = v6;
    v40 = 0;
    v6 = v47;
    v15 = v48;
    v16 = v49;
    v50 = v10;
    v17 = v12;
    v18 = sub_262A2A7F8();
    v19 = *(v18 + 16);
    if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 4) : (v21 = 1), v21))
    {
      v22 = sub_262A2A718();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C218, qword_262A2BBD8);
      *v24 = &type metadata for SIDWorkoutPlanScheduleFilterProperty;
      sub_262A2A7A8();
      sub_262A2A708();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v50 + 8))(v17, v9);
      goto LABEL_24;
    }

    if (*(v18 + 32) <= 1u)
    {
      if (*(v18 + 32))
      {
        v53 = 1;
        sub_2629D84B0();
        v25 = v17;
        v32 = v40;
        sub_262A2A798();
        if (!v32)
        {
          v27 = v41;
          v6 = sub_262A2A7C8();
          v28 = v44;
          goto LABEL_22;
        }
      }

      else
      {
        v52 = 0;
        sub_2629D8504();
        v5 = v8;
        v25 = v17;
        v26 = v40;
        sub_262A2A798();
        if (!v26)
        {
          v27 = v39;
          v6 = sub_262A2A7C8();
          v28 = v42;
LABEL_22:
          (*(v28 + 8))(v5, v27);
          (*(v50 + 8))(v25, v9);
          swift_unknownObjectRelease();
          goto LABEL_25;
        }
      }

      (*(v50 + 8))(v25, v9);
LABEL_24:
      swift_unknownObjectRelease();
      goto LABEL_25;
    }

    v29 = v50;
    if (v20 == 2)
    {
      v54 = 2;
      sub_2629D845C();
      v30 = v6;
      v31 = v40;
      sub_262A2A798();
      if (v31)
      {
        (*(v29 + 8))(v17, v9);
        goto LABEL_24;
      }

      v34 = v29;
      v44 = v17;
      v35 = v43;
      v42 = sub_262A2A7C8();
      v37 = v45;
LABEL_26:
      (*(v37 + 8))(v30, v35);
      (*(v34 + 8))(v44, v9);
      swift_unknownObjectRelease();
      v6 = v42;
      goto LABEL_25;
    }

    v55 = 3;
    sub_2629D8408();
    v30 = v15;
    v33 = v40;
    sub_262A2A798();
    if (!v33)
    {
      v34 = v29;
      v44 = v17;
      v35 = v16;
      v42 = sub_262A2A7C8();
      v37 = v46;
      goto LABEL_26;
    }

    (*(v29 + 8))(v17, v9);
    swift_unknownObjectRelease();
  }

LABEL_25:
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  return v6;
}

unint64_t sub_2629D8E10()
{
  result = qword_27FF3C850;
  if (!qword_27FF3C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C850);
  }

  return result;
}

unint64_t sub_2629D8EDC()
{
  result = qword_27FF3C858;
  if (!qword_27FF3C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C858);
  }

  return result;
}

unint64_t sub_2629D8F34()
{
  result = qword_27FF3C860;
  if (!qword_27FF3C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C860);
  }

  return result;
}

unint64_t sub_2629D8F8C()
{
  result = qword_27FF3C868;
  if (!qword_27FF3C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C868);
  }

  return result;
}

unint64_t sub_2629D8FE4()
{
  result = qword_27FF3C870;
  if (!qword_27FF3C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C870);
  }

  return result;
}

unint64_t sub_2629D903C()
{
  result = qword_27FF3C878;
  if (!qword_27FF3C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C878);
  }

  return result;
}

unint64_t sub_2629D9094()
{
  result = qword_27FF3C880;
  if (!qword_27FF3C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C880);
  }

  return result;
}

unint64_t sub_2629D90EC()
{
  result = qword_27FF3C888;
  if (!qword_27FF3C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C888);
  }

  return result;
}

unint64_t sub_2629D9144()
{
  result = qword_27FF3C890;
  if (!qword_27FF3C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C890);
  }

  return result;
}

unint64_t sub_2629D919C()
{
  result = qword_27FF3C898;
  if (!qword_27FF3C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C898);
  }

  return result;
}

unint64_t sub_2629D91F4()
{
  result = qword_27FF3C8A0;
  if (!qword_27FF3C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8A0);
  }

  return result;
}

unint64_t sub_2629D924C()
{
  result = qword_27FF3C8A8;
  if (!qword_27FF3C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8A8);
  }

  return result;
}

unint64_t sub_2629D92A4()
{
  result = qword_27FF3C8B0;
  if (!qword_27FF3C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8B0);
  }

  return result;
}

unint64_t sub_2629D92FC()
{
  result = qword_27FF3C8B8;
  if (!qword_27FF3C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8B8);
  }

  return result;
}

unint64_t sub_2629D9354()
{
  result = qword_27FF3C8C0;
  if (!qword_27FF3C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8C0);
  }

  return result;
}

unint64_t sub_2629D93AC()
{
  result = qword_27FF3C8C8;
  if (!qword_27FF3C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8C8);
  }

  return result;
}

SIDFitness::SIDWorkoutPlanState_optional __swiftcall SIDWorkoutPlanState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t *sub_2629D9434@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2629D9450()
{
  result = qword_27FF3C8F8;
  if (!qword_27FF3C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C8F8);
  }

  return result;
}

uint64_t SIDWorkoutPlanType.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SIDWorkoutPlanType(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629D9B00(v2, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return MEMORY[0x26672F240](0);
  }

  sub_2629D9B64(v10, v7);
  MEMORY[0x26672F240](1);
  sub_262A2A448();
  v12 = v7[3];
  v13 = v7[4];
  v14 = v7[5];
  v15 = v7[6];
  v16 = v7[7];
  MEMORY[0x26672F240](v7[2]);
  MEMORY[0x26672F240](v12);
  sub_2629BFB8C(a1, v13);
  MEMORY[0x26672F240](v14);
  MEMORY[0x26672F240](v15);
  sub_2629B602C(a1, v16);
  sub_262A2A448();

  sub_2629BFEE0(a1, v7[9]);
  sub_262A2A018();
  sub_2629D9C10(&qword_27FF3C3D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_262A2A388();
  sub_262A2A388();
  return sub_2629D9E2C(v7, type metadata accessor for SIDPersonalizedWorkoutPlan);
}

uint64_t SIDWorkoutPlanType.hashValue.getter()
{
  sub_262A2A998();
  SIDWorkoutPlanType.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629D97A4()
{
  sub_262A2A998();
  SIDWorkoutPlanType.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629D97E8(uint64_t a1)
{
  sub_262A2A998();
  SIDWorkoutPlanType.hash(into:)(v2);
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness18SIDWorkoutPlanTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SIDWorkoutPlanType(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C918, ":x");
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = *(v12 + 56);
  sub_2629D9B00(a1, &v19 - v13);
  sub_2629D9B00(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_2629D9B00(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_2629D9B64(&v14[v15], v7);
      v17 = _s10SIDFitness26SIDPersonalizedWorkoutPlanV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_2629D9E2C(v7, type metadata accessor for SIDPersonalizedWorkoutPlan);
      sub_2629D9E2C(v10, type metadata accessor for SIDPersonalizedWorkoutPlan);
      sub_2629D9E2C(v14, type metadata accessor for SIDWorkoutPlanType);
      return v17 & 1;
    }

    sub_2629D9E2C(v10, type metadata accessor for SIDPersonalizedWorkoutPlan);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_2629D9DC4(v14);
    v17 = 0;
    return v17 & 1;
  }

  sub_2629D9E2C(v14, type metadata accessor for SIDWorkoutPlanType);
  v17 = 1;
  return v17 & 1;
}

uint64_t type metadata accessor for SIDWorkoutPlanType(uint64_t a1)
{
  result = qword_27FF3C908;
  if (!qword_27FF3C908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629D9B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDWorkoutPlanType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629D9B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629D9C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2629D9C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2629D9CEC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2629D9D6C(uint64_t a1)
{
  v1 = type metadata accessor for SIDPersonalizedWorkoutPlan(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2629D9DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C918, ":x");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2629D9E2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SIDWorkoutPlanVariation.rawValue.getter()
{
  v1 = 0x6D6F74737563;
  if (*v0 != 1)
  {
    v1 = 0x68637465727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65747369736E6F63;
  }
}

SIDFitness::SIDWorkoutPlanVariation_optional __swiftcall SIDWorkoutPlanVariation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_262A2A788();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2629D9F44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D6F74737563;
  if (v2 != 1)
  {
    v4 = 0x68637465727473;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65747369736E6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA0000000000746ELL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D6F74737563;
  if (*a2 != 1)
  {
    v8 = 0x68637465727473;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65747369736E6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA0000000000746ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_262A2A878();
  }

  return v11 & 1;
}

void sub_2629DA04C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000746ELL;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74737563;
  if (v2 != 1)
  {
    v5 = 0x68637465727473;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65747369736E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2629DA160()
{
  result = qword_27FF3C920;
  if (!qword_27FF3C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C920);
  }

  return result;
}

uint64_t sub_2629DA1B4()
{
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629DA258(uint64_t a1)
{
  sub_262A2A448();
}

uint64_t sub_2629DA2E8(uint64_t a1)
{
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

unint64_t sub_2629DA398()
{
  result = qword_27FF3C928;
  if (!qword_27FF3C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C928);
  }

  return result;
}

unint64_t sub_2629DA3F0()
{
  result = qword_27FF3C930;
  if (!qword_27FF3C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C930);
  }

  return result;
}

unint64_t sub_2629DA444@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2629DA480(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2629DA480(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_2629DA490()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_262A2A998();
  sub_2629BF768(v6, v1);
  sub_2629BF640(v6, v2);
  sub_2629BF530(v6, v4);
  sub_2629BF4C4(v6, v3);
  return sub_262A2A9D8();
}

uint64_t sub_2629DA508(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_2629BF768(a1, v3);
  sub_2629BF640(a1, v4);
  sub_2629BF530(a1, v6);

  return sub_2629BF4C4(a1, v5);
}

uint64_t sub_2629DA56C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_262A2A998();
  sub_2629BF768(v7, v2);
  sub_2629BF640(v7, v3);
  sub_2629BF530(v7, v5);
  sub_2629BF4C4(v7, v4);
  return sub_262A2A9D8();
}

uint64_t sub_2629DA5E0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_2629E7090(*a1, *a2) & 1) == 0 || (sub_2629E71B4(v2, v5) & 1) == 0 || (sub_2629E7408(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_2629E766C(v3, v6);
}

unint64_t sub_2629DA680()
{
  result = qword_27FF3C938;
  if (!qword_27FF3C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C938);
  }

  return result;
}

uint64_t sub_2629DA6D4(uint64_t *a1, int a2)
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

uint64_t sub_2629DA71C(uint64_t result, int a2, int a3)
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

uint64_t sub_2629DA76C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_2629BF458(v4, v1);
  sub_2629BF0E8(v4, v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629DA7C0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2629BF458(a1, v3);

  return sub_2629BF0E8(a1, v4);
}

uint64_t sub_2629DA800(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_262A2A998();
  sub_2629BF458(v5, v2);
  sub_2629BF0E8(v5, v3);
  return sub_262A2A9D8();
}

uint64_t sub_2629DA850(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2629E6838(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2629E6908(v2, v3);
}

unint64_t sub_2629DA8B0()
{
  result = qword_27FF3C940;
  if (!qword_27FF3C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C940);
  }

  return result;
}

uint64_t sub_2629DA928(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0B0, &unk_262A30350);
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
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for SIDUserMetadata(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2629DAAC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0B0, &unk_262A30350);
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
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for SIDUserMetadata(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for FitnessPlanUser(uint64_t a1)
{
  result = qword_27FF3C950;
  if (!qword_27FF3C950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2629DACA0(uint64_t a1)
{
  sub_2629DAE3C(319, &qword_27FF3C960, type metadata accessor for SIDActiveWorkoutPlan, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2629BA7EC(319, &qword_27FF3C968, &type metadata for SIDAwardProgressReference);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SIDUserMetadata(319);
      if (v3 <= 0x3F)
      {
        sub_2629DAE3C(319, &qword_27FF3C970, type metadata accessor for SIDUserOnboardingData, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2629BA7EC(319, &qword_27FF3C378, &type metadata for SIDTreatment);
          if (v5 <= 0x3F)
          {
            sub_2629DAE3C(319, &qword_27FF3C978, type metadata accessor for PreprocessedUserHistoryWithMetadata, MEMORY[0x277D83940]);
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

void sub_2629DAE3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2629DAEA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 16);
  MEMORY[0x26672F240](v7);
  if (v7)
  {
    v8 = 0;
    do
    {
      v34 = v8;
      v9 = (a2 + 32 + 80 * v8);
      v37 = v9[1];
      v42 = v9[2];
      v38 = v9[3];
      v41 = v9[4];
      v40 = v9[5];
      v39 = v9[7];
      v35 = v9[8];
      v36 = v9[6];
      v33 = v9[9];

      sub_262A2A448();

      v10 = *(v37 + 16);
      MEMORY[0x26672F240](v10);
      if (v10)
      {
        v11 = (v37 + 32);
        do
        {
          v12 = *v11++;
          MEMORY[0x26672F240](qword_262A2F728[v12]);
          --v10;
        }

        while (v10);
      }

      v13 = *(v42 + 16);
      MEMORY[0x26672F240](v13);
      if (v13)
      {
        v14 = v42 + 32;
        do
        {
          ++v14;
          sub_262A2A448();

          --v13;
        }

        while (v13);
      }

      sub_2629BF0E8(a1, v38);
      v15 = *(v41 + 16);
      MEMORY[0x26672F240](v15);
      if (v15)
      {
        v16 = v41 + 32;
        do
        {
          ++v16;
          sub_262A2A448();

          --v15;
        }

        while (v15);
      }

      v17 = *(v40 + 16);
      MEMORY[0x26672F240](v17);
      if (v17)
      {
        v18 = v40 + 32;
        do
        {
          ++v18;
          sub_262A2A448();

          --v17;
        }

        while (v17);
      }

      v19 = *(v36 + 16);
      MEMORY[0x26672F240](v19);
      if (v19)
      {
        v20 = v36 + 32;
        do
        {
          ++v20;
          sub_262A2A448();

          --v19;
        }

        while (v19);
      }

      v21 = *(v39 + 16);
      MEMORY[0x26672F240](v21);
      if (v21)
      {
        v22 = v39 + 32;
        do
        {
          ++v22;
          sub_262A2A448();

          --v21;
        }

        while (v21);
      }

      v23 = *(v35 + 16);
      MEMORY[0x26672F240](v23);
      if (v23)
      {
        v24 = (v35 + 32);
        do
        {
          v25 = *v24++;
          MEMORY[0x26672F240](v25);
          --v23;
        }

        while (v23);
      }

      v8 = v34 + 1;
      MEMORY[0x26672F240](v33);
    }

    while (v34 + 1 != v7);
  }

  MEMORY[0x26672F240](qword_262A2F750[a3]);
  MEMORY[0x26672F240](a4);
  v26 = *(a5 + 16);
  result = MEMORY[0x26672F240](v26);
  if (v26)
  {
    v28 = (a5 + 32);
    do
    {
      v29 = *v28++;
      result = MEMORY[0x26672F240](v29);
      --v26;
    }

    while (v26);
  }

  return result;
}

uint64_t sub_2629DB47C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 8);
  sub_262A2A998();
  sub_2629DAEA0(v6, v1, v4, v2, v3);
  return sub_262A2A9D8();
}

uint64_t sub_2629DB4F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 8);
  sub_262A2A998();
  sub_2629DAEA0(v7, v2, v5, v3, v4);
  return sub_262A2A9D8();
}

uint64_t sub_2629DB550(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  if ((sub_2629E8170(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (qword_262A2F750[v2] != qword_262A2F750[v5] || v4 != v7)
  {
    return 0;
  }

  return sub_2629E7920(v3, v6);
}

unint64_t sub_2629DB5F4()
{
  result = qword_27FF3C980;
  if (!qword_27FF3C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C980);
  }

  return result;
}

uint64_t sub_2629DB658(uint64_t a1)
{
  v2 = v1;
  SIDWorkoutModality.rawValue.getter(*v2);
  sub_262A2A448();

  v4 = *(v2 + 8);
  v5 = *(v4 + 16);
  MEMORY[0x26672F240](v5);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x26672F240](qword_262A2F858[v7]);
      --v5;
    }

    while (v5);
  }

  sub_2629BF458(a1, *(v2 + 16));
  sub_2629BF0E8(a1, *(v2 + 24));
  sub_2629BF530(a1, *(v2 + 32));
  sub_2629BF768(a1, *(v2 + 40));
  sub_2629BF640(a1, *(v2 + 48));
  sub_2629BF4C4(a1, *(v2 + 56));
  v8 = *(v2 + 64);
  v9 = *(v8 + 16);
  MEMORY[0x26672F240](v9);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      v11 = *v10++;
      MEMORY[0x26672F240](v11);
      --v9;
    }

    while (v9);
  }

  return MEMORY[0x26672F240](*(v2 + 72));
}

uint64_t sub_2629DB760()
{
  sub_262A2A998();
  sub_2629DB658(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629DB7A4(uint64_t a1)
{
  sub_262A2A998();
  sub_2629DB658(v2);
  return sub_262A2A9D8();
}

BOOL sub_2629DB7E0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_2629DB894(v8, v9);
}

unint64_t sub_2629DB840()
{
  result = qword_27FF3C988;
  if (!qword_27FF3C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C988);
  }

  return result;
}

BOOL sub_2629DB894(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = SIDWorkoutModality.rawValue.getter(*a1);
  v7 = v6;
  if (v5 == SIDWorkoutModality.rawValue.getter(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_262A2A878();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_2629E8034(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_2629E6838(*(a1 + 16), *(a2 + 16)) & 1) != 0 && (sub_2629E6908(*(a1 + 24), *(a2 + 24)) & 1) != 0 && (sub_2629E7408(*(a1 + 32), *(a2 + 32)) & 1) != 0 && (sub_2629E7090(*(a1 + 40), *(a2 + 40)) & 1) != 0 && (sub_2629E71B4(*(a1 + 48), *(a2 + 48)) & 1) != 0 && (sub_2629E766C(*(a1 + 56), *(a2 + 56)) & 1) != 0 && (sub_2629E7920(*(a1 + 64), *(a2 + 64)))
  {
    return *(a1 + 72) == *(a2 + 72);
  }

  return 0;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2629DB9EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2629DBA34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2629DBA98(__int128 *a1)
{
  sub_262A2A448();
  v3 = *(v1 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26672F260](*&v3);
  v4 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  sub_262A29FD8();
  sub_2629DCDAC(&qword_27FF3C4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_262A2A388();
  MEMORY[0x26672F240](*(v1 + v4[7]));
  sub_262A2A448();
  sub_2629BF768(a1, *(v1 + v4[9]));
  sub_262A2A448();

  sub_2629BF640(a1, *(v1 + v4[11]));
  MEMORY[0x26672F260](*(v1 + v4[12]));
  v5 = *(v1 + v4[13]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x26672F260](*&v5);
  v6 = *(v1 + v4[14]);
  sub_262A2A9B8();
  if (v6 != 7)
  {
    MEMORY[0x26672F240](qword_262A2F928[v6]);
  }

  sub_262A2A448();

  SIDWorkoutModality.rawValue.getter(*(v1 + v4[16]));
  sub_262A2A448();

  sub_2629BF458(a1, *(v1 + v4[17]));
  v7 = *(v1 + v4[18]);
  sub_262A2A9B8();
  if (v7 != 9)
  {
    sub_2629BE150(a1, v7);
  }

  sub_2629BF4C4(a1, *(v1 + v4[19]));
  sub_2629BF530(a1, *(v1 + v4[20]));
  sub_2629BF0E8(a1, *(v1 + v4[21]));
  if (*(v1 + v4[22]) == 31)
  {
    sub_262A2A9B8();
  }

  else
  {
    sub_262A2A9B8();
    SIDWorkoutTrainerIdentifier.rawValue.getter();
    sub_262A2A448();
  }

  v8 = *(v1 + v4[23]);

  sub_2629B55DC(a1, v8);
}

uint64_t sub_2629DBE30()
{
  sub_262A2A998();
  sub_2629DBA98(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629DBE74(uint64_t a1)
{
  sub_262A2A998();
  sub_2629DBA98(v2);
  return sub_262A2A9D8();
}

uint64_t type metadata accessor for PreprocessedUserHistoryWithMetadata(uint64_t a1)
{
  result = qword_27FF3C9C0;
  if (!qword_27FF3C9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_2629DBF48(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  sub_262A29FD8();
  sub_2629DCDAC(&qword_27FF3C9B8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  return (sub_262A2A3A8() & 1) == 0;
}

uint64_t sub_2629DBFF0(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v29 = a3;
  v30 = a2;
  v28 = a1;
  v3 = sub_262A2A108();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_262A2A128();
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A8, &qword_262A30A50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_262A29FD8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v27 = &v26 - v18;
  sub_262A2A0E8();
  result = (*(v4 + 104))(v6, *MEMORY[0x277CC9968], v3);
  if (__OFSUB__(0, v30))
  {
    __break(1u);
  }

  else
  {
    sub_262A29FC8();
    sub_262A2A0C8();
    v30 = *(v14 + 8);
    v30(v17, v13);
    (*(v4 + 8))(v6, v3);
    (*(v7 + 8))(v9, v26);
    v20 = *(v14 + 48);
    if (v20(v12, 1, v13) == 1)
    {
      v21 = v27;
      sub_262A29FC8();
      if (v20(v12, 1, v13) != 1)
      {
        sub_2629DCD24(v12);
      }
    }

    else
    {
      v21 = v27;
      (*(v14 + 32))(v27, v12, v13);
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_262A2A6F8();

    v31 = 0xD00000000000001FLL;
    v32 = 0x8000000262A32530;
    sub_2629DCDAC(&qword_27FF3C9B0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v22 = sub_262A2A868();
    MEMORY[0x26672ECF0](v22);

    sub_2629EA8C8(v31, v32);

    MEMORY[0x28223BE20](v23);
    *(&v26 - 2) = v21;
    v24 = v29;

    v25 = sub_262A03C5C(sub_2629DCD8C, (&v26 - 4), v24);
    v30(v21, v13);
    return v25;
  }

  return result;
}

uint64_t sub_2629DC46C(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_262A2A878() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] != *(a2 + 16))
  {
    return 0;
  }

  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  if ((sub_262A29FB8() & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v6 = v5[8];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_262A2A878() & 1) == 0 || (sub_2629E7090(*(a1 + v5[9]), *(a2 + v5[9])) & 1) == 0)
  {
    return 0;
  }

  v11 = 0x6E61656C63;
  v12 = v5[10];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13)
  {
    if (v13 == 1)
    {
      v15 = 0xE800000000000000;
      v16 = 0x746963696C707865;
    }

    else
    {
      v16 = 0x6669636570736E75;
      v15 = 0xEB00000000646569;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
    v16 = 0x6E61656C63;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      v17 = 0xE800000000000000;
      v11 = 0x746963696C707865;
    }

    else
    {
      v11 = 0x6669636570736E75;
      v17 = 0xEB00000000646569;
    }
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  if (v16 == v11 && v15 == v17)
  {
  }

  else
  {
    v18 = sub_262A2A878();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_2629E71B4(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0 || *(a1 + v5[12]) != *(a2 + v5[12]) || *(a1 + v5[13]) != *(a2 + v5[13]))
  {
    return 0;
  }

  v19 = v5[14];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 7)
  {
    if (v21 != 7)
    {
      return 0;
    }
  }

  else if (v21 == 7 || qword_262A2F928[v20] != qword_262A2F928[v21])
  {
    return 0;
  }

  if ((sub_2629C9088(*(a1 + v5[15]), *(a2 + v5[15])) & 1) == 0)
  {
    return 0;
  }

  v22 = v5[16];
  v23 = *(a2 + v22);
  v24 = SIDWorkoutModality.rawValue.getter(*(a1 + v22));
  v26 = v25;
  if (v24 == SIDWorkoutModality.rawValue.getter(v23) && v26 == v27)
  {
  }

  else
  {
    v28 = sub_262A2A878();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_2629E6838(*(a1 + v5[17]), *(a2 + v5[17])) & 1) == 0)
  {
    return 0;
  }

  v29 = v5[18];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 9)
  {
    if (v31 != 9)
    {
      return 0;
    }
  }

  else if (v31 == 9 || (sub_2629C8C34(v30, v31) & 1) == 0)
  {
    return 0;
  }

  if ((sub_2629E766C(*(a1 + v5[19]), *(a2 + v5[19])) & 1) == 0 || (sub_2629E7408(*(a1 + v5[20]), *(a2 + v5[20])) & 1) == 0 || (sub_2629E6908(*(a1 + v5[21]), *(a2 + v5[21])) & 1) == 0)
  {
    return 0;
  }

  v32 = v5[22];
  v33 = *(a1 + v32);
  v34 = *(a2 + v32);
  if (v33 == 31)
  {
    if (v34 == 31)
    {
      goto LABEL_60;
    }

    return 0;
  }

  if (v34 == 31)
  {
    return 0;
  }

  v36 = SIDWorkoutTrainerIdentifier.rawValue.getter();
  v38 = v37;
  if (v36 == SIDWorkoutTrainerIdentifier.rawValue.getter() && v38 == v39)
  {
  }

  else
  {
    v40 = sub_262A2A878();

    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_60:
  v41 = v5[23];
  v42 = *(a1 + v41);
  v43 = *(a2 + v41);

  return sub_2629D47AC(v42, v43);
}

void sub_2629DC8A8(uint64_t a1, uint64_t a2, double a3)
{
  v28 = a1;
  v29 = a2;
  v4 = sub_262A2A168();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C998, &qword_262A2F8E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_262A2A058();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_262A2A128();
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_262A29F38();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277CC9830], v8);
  sub_262A2A068();
  (*(v9 + 8))(v11, v8);
  sub_262A2A088();
  sub_262A2A038();
  v19 = sub_262A2A048();
  (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  sub_262A2A0D8();
  sub_262A2A148();
  sub_262A2A0F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A0, &unk_262A2F8F0);
  v20 = sub_262A2A108();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_262A2B290;
  (*(v21 + 104))(v23 + v22, *MEMORY[0x277CC9968], v20);
  sub_262A15860(v23);
  swift_setDeallocating();
  (*(v21 + 8))(v23 + v22, v20);
  swift_deallocClassInstance();
  type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  sub_262A2A098();

  (*(v12 + 8))(v14, v27);
  v24 = sub_262A29EF8();
  LOBYTE(v14) = v25;
  (*(v16 + 8))(v18, v15);
  if ((v14 & 1) == 0)
  {
    exp(v24 / -30.0 * a3);
  }
}

uint64_t sub_2629DCD24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A8, &qword_262A30A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2629DCDAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2629DCE08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_262A29FD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2629DCEC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_262A29FD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2629DCF6C(uint64_t a1)
{
  sub_262A29FD8();
  if (v1 <= 0x3F)
  {
    sub_2629DD270(319, &qword_27FF3C9D0, &type metadata for SIDWorkoutBodyFocus, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2629DD270(319, &qword_27FF3C9D8, &type metadata for SIDWorkoutEquipmentIdentifier, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2629DD270(319, &qword_27FF3C9E0, &type metadata for MediaDuration, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2629DD270(319, &qword_27FF3C9E8, &type metadata for SIDWorkoutMusicGenreIdentifier, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_2629DD270(319, &qword_27FF3C9F0, &type metadata for SIDWorkoutMusicGenreIdentifier, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_2629DD270(319, &qword_27FF3C9F8, &type metadata for SIDWorkoutSkillLevelIdentifier, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_2629DD270(319, &qword_27FF3CA00, &type metadata for SIDWorkoutThemeIdentifier, MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
                {
                  sub_2629DD270(319, &qword_27FF3CA08, &type metadata for SIDWorkoutTrainerIdentifier, MEMORY[0x277D83940]);
                  if (v9 <= 0x3F)
                  {
                    sub_2629DD270(319, &qword_27FF3CA10, &type metadata for SIDWorkoutTrainerIdentifier, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_2629B69B8(319);
                      if (v11 <= 0x3F)
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
  }
}

void sub_2629DD270(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2629DD2C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BED8, &qword_262A2B380);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_262A2F960;
  *&v89 = 0x644974726F686F63;
  *(&v89 + 1) = 0xEB0000000022203ALL;
  MEMORY[0x26672ECF0](*v0, v0[1]);
  MEMORY[0x26672ECF0](34, 0xE100000000000000);
  *(v2 + 32) = 0x644974726F686F63;
  *(v2 + 40) = 0xEB0000000022203ALL;
  sub_262A2A6F8();

  *&v89 = 0xD000000000000015;
  *(&v89 + 1) = 0x8000000262A32550;
  v3 = MEMORY[0x26672EDD0](v0[4], MEMORY[0x277D837D0]);
  MEMORY[0x26672ECF0](v3);

  *(v2 + 48) = 0xD000000000000015;
  *(v2 + 56) = 0x8000000262A32550;
  sub_262A2A6F8();

  *&v89 = 0xD000000000000015;
  *(&v89 + 1) = 0x8000000262A32570;
  v4 = MEMORY[0x26672EDD0](v0[5], &type metadata for SIDModalityPreference);
  MEMORY[0x26672ECF0](v4);

  *(v2 + 64) = 0xD000000000000015;
  *(v2 + 72) = 0x8000000262A32570;
  PlanScaffoldEvent = type metadata accessor for CreatePlanScaffoldEvent(0);
  sub_262A2A018();
  sub_2629B1880();
  v6 = sub_262A2A868();
  MEMORY[0x26672ECF0](v6);

  *(v2 + 80) = 0x203A64496E616C70;
  *(v2 + 88) = 0xE800000000000000;
  v84 = v2;
  *&v89 = 0x657079546E616C70;
  *(&v89 + 1) = 0xEA0000000000203ALL;
  if (*(v0 + PlanScaffoldEvent[9]))
  {
    if (*(v0 + PlanScaffoldEvent[9]) == 1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x6D6F74737543;
    }

    else
    {
      v7 = 0xEB000000006C616FLL;
      v8 = 0x4768637465727453;
    }
  }

  else
  {
    v7 = 0xEA0000000000746ELL;
    v8 = 0x65747369736E6F43;
  }

  MEMORY[0x26672ECF0](v8, v7);

  v9 = *(&v89 + 1);
  v10 = v84;
  *(v84 + 12) = v89;
  *(v10 + 13) = v9;
  v11 = sub_262A2A868();
  MEMORY[0x26672ECF0](v11);

  *(v10 + 14) = 0x203A64496F636572;
  *(v10 + 15) = 0xE800000000000000;
  *&v89 = 0x646C6F6666616373;
  *(&v89 + 1) = 0xEA0000000000203ALL;
  *&v86 = *(v0 + PlanScaffoldEvent[11]);
  v12 = SIDWorkoutPlanSchedule.description.getter();
  v13 = &v89;
  MEMORY[0x26672ECF0](v12);

  v14 = *(&v89 + 1);
  *(v10 + 16) = v89;
  *(v10 + 17) = v14;
  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  sub_262A2A6F8();

  v15 = 0xD000000000000012;
  *&v89 = 0xD000000000000014;
  *(&v89 + 1) = 0x8000000262A32590;
  v16 = MEMORY[0x277D837D0];
  v17 = MEMORY[0x26672EDD0](*(v1 + PlanScaffoldEvent[13]), MEMORY[0x277D837D0]);
  MEMORY[0x26672ECF0](v17);

  v18 = *(&v89 + 1);
  *(v10 + 18) = v89;
  *(v10 + 19) = v18;
  *&v89 = 0x617461645F326261;
  *(&v89 + 1) = 0xEA0000000000203ALL;
  v19 = MEMORY[0x26672EDD0](*(v1 + PlanScaffoldEvent[14]), &type metadata for SIDTreatment);
  MEMORY[0x26672ECF0](v19);

  v20 = *(&v89 + 1);
  *(v10 + 20) = v89;
  *(v10 + 21) = v20;
  *&v89 = 0x737961446B656577;
  *(&v89 + 1) = 0xEA0000000000203ALL;
  v21 = MEMORY[0x26672EDD0](*(v1 + PlanScaffoldEvent[15]), v16);
  MEMORY[0x26672ECF0](v21);

  v22 = *(&v89 + 1);
  *(v10 + 22) = v89;
  *(v10 + 23) = v22;
  v23 = *(v1 + PlanScaffoldEvent[12]);
  if (!*(v23 + 16))
  {
    goto LABEL_10;
  }

  v13 = *(v1 + PlanScaffoldEvent[12]);
  v24 = sub_2629CB0BC(0xD000000000000011, 0x8000000262A312C0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_2629ADE10(*(v23 + 56) + 32 * v24, &v86);
  sub_2629AD99C(&v86, &v89);
  *&v86 = 0;
  *(&v86 + 1) = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000013, 0x8000000262A32690);
  sub_262A2A738();
  v27 = *(&v86 + 1);
  v26 = v86;
  v29 = *(v84 + 2);
  v28 = *(v84 + 3);
  v13 = v29 + 1;
  if (v29 < v28 >> 1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v84 = sub_2629A8EB0((v28 > 1), v13, 1, v84);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(&v89);
    v30 = v84;
    *(v84 + 2) = v13;
    v31 = &v30[16 * v29];
    *(v31 + 4) = v26;
    *(v31 + 5) = v27;
LABEL_10:
    if (*(v23 + 16))
    {
      v13 = v23;
      v32 = sub_2629CB0BC(v15 - 2, 0x8000000262A312E0);
      if (v33)
      {
        sub_2629ADE10(*(v23 + 56) + 32 * v32, &v86);
        sub_2629AD99C(&v86, &v89);
        *&v86 = 0;
        *(&v86 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        MEMORY[0x26672ECF0](0xD000000000000012, 0x8000000262A32670);
        sub_262A2A738();
        v34 = v86;
        v36 = *(v84 + 2);
        v35 = *(v84 + 3);
        v13 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          v84 = sub_2629A8EB0((v35 > 1), v36 + 1, 1, v84);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v89);
        v37 = v84;
        *(v84 + 2) = v13;
        *&v37[16 * v36 + 32] = v34;
      }
    }

    if (*(v23 + 16))
    {
      v13 = v23;
      v38 = sub_2629CB0BC(0xD000000000000012, 0x8000000262A31300);
      if (v39)
      {
        sub_2629ADE10(*(v23 + 56) + 32 * v38, &v86);
        sub_2629AD99C(&v86, &v89);
        *&v86 = 0;
        *(&v86 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        MEMORY[0x26672ECF0](v15 + 2, 0x8000000262A32650);
        sub_262A2A738();
        v40 = v86;
        v42 = *(v84 + 2);
        v41 = *(v84 + 3);
        v13 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          v84 = sub_2629A8EB0((v41 > 1), v42 + 1, 1, v84);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v89);
        v43 = v84;
        *(v84 + 2) = v13;
        *&v43[16 * v42 + 32] = v40;
      }
    }

    if (*(v23 + 16))
    {
      v13 = v23;
      v44 = sub_2629CB0BC(v15 + 1, 0x8000000262A31320);
      if (v45)
      {
        sub_2629ADE10(*(v23 + 56) + 32 * v44, &v86);
        sub_2629AD99C(&v86, &v89);
        *&v86 = 0;
        *(&v86 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        MEMORY[0x26672ECF0](v15 + 3, 0x8000000262A32630);
        sub_262A2A738();
        v46 = v86;
        v48 = *(v84 + 2);
        v47 = *(v84 + 3);
        v13 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v84 = sub_2629A8EB0((v47 > 1), v48 + 1, 1, v84);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v89);
        v49 = v84;
        *(v84 + 2) = v13;
        *&v49[16 * v48 + 32] = v46;
      }
    }

    if (*(v23 + 16))
    {
      v13 = v23;
      v50 = sub_2629CB0BC(0x687469726F676C61, 0xEE0065726F63536DLL);
      if (v51)
      {
        sub_2629ADE10(*(v23 + 56) + 32 * v50, &v86);
        sub_2629AD99C(&v86, &v89);
        *&v86 = 0;
        *(&v86 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        MEMORY[0x26672ECF0](v15 - 2, 0x8000000262A32610);
        sub_262A2A738();
        v52 = v86;
        v54 = *(v84 + 2);
        v53 = *(v84 + 3);
        v13 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          v84 = sub_2629A8EB0((v53 > 1), v54 + 1, 1, v84);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v89);
        v55 = v84;
        *(v84 + 2) = v13;
        *&v55[16 * v54 + 32] = v52;
      }
    }

    if (*(v23 + 16))
    {
      v13 = v23;
      v56 = sub_2629CB0BC(0x6E6F43726F727265, 0xEF736E6F69746964);
      if (v57)
      {
        sub_2629ADE10(*(v23 + 56) + 32 * v56, &v86);
        sub_2629AD99C(&v86, &v89);
        *&v86 = 0;
        *(&v86 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        MEMORY[0x26672ECF0](v15 - 1, 0x8000000262A325F0);
        sub_262A2A738();
        v58 = v86;
        v60 = *(v84 + 2);
        v59 = *(v84 + 3);
        v13 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          v84 = sub_2629A8EB0((v59 > 1), v60 + 1, 1, v84);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v89);
        v61 = v84;
        *(v84 + 2) = v13;
        *&v61[16 * v60 + 32] = v58;
      }
    }

    v29 = v23 + 64;
    v62 = 1 << *(v23 + 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v26 = v63 & *(v23 + 64);
    v15 = (v62 + 63) >> 6;
    v83 = v23;

    v23 = 0;
    v27 = 0;
    if (v26)
    {
      break;
    }

LABEL_41:
    if (v15 <= (v23 + 1))
    {
      v64 = v23 + 1;
    }

    else
    {
      v64 = v15;
    }

    v65 = v64 - 1;
    while (1)
    {
      v28 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v28 >= v15)
      {
        v26 = 0;
        v87 = 0u;
        v88 = 0u;
        v23 = v65;
        v86 = 0u;
        goto LABEL_50;
      }

      v26 = *(v29 + 8 * v28);
      ++v23;
      if (v26)
      {
        v23 = v28;
        goto LABEL_49;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v28 = v23;
LABEL_49:
    v66 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v67 = v66 | (v28 << 6);
    v68 = (*(v83 + 48) + 16 * v67);
    v70 = *v68;
    v69 = v68[1];
    sub_2629ADE10(*(v83 + 56) + 32 * v67, v85);
    *&v86 = v70;
    *(&v86 + 1) = v69;
    sub_2629AD99C(v85, &v87);

LABEL_50:
    v89 = v86;
    v90[0] = v87;
    v90[1] = v88;
    v71 = *(&v86 + 1);
    if (!*(&v86 + 1))
    {
      break;
    }

    v72 = v89;
    v73 = sub_2629AD99C(v90, &v86);
    *&v85[0] = v72;
    *(&v85[0] + 1) = v71;
    MEMORY[0x28223BE20](v73);
    v82[2] = v85;
    v13 = sub_2629DDF74(sub_2629DE020, v82, &unk_287533420);
    swift_arrayDestroy();
    if (v13)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v86);

      if (!v26)
      {
        goto LABEL_41;
      }
    }

    else
    {
      *&v85[0] = 0;
      *(&v85[0] + 1) = 0xE000000000000000;
      MEMORY[0x26672ECF0](v72, v71);

      MEMORY[0x26672ECF0](8250, 0xE200000000000000);
      sub_262A2A738();
      v74 = v85[0];
      v76 = *(v84 + 2);
      v75 = *(v84 + 3);
      v13 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        v84 = sub_2629A8EB0((v75 > 1), v76 + 1, 1, v84);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v86);
      v77 = v84;
      *(v84 + 2) = v13;
      *&v77[16 * v76 + 32] = v74;
      if (!v26)
      {
        goto LABEL_41;
      }
    }
  }

  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  sub_262A2A6F8();

  *&v89 = 0xD00000000000001DLL;
  *(&v89 + 1) = 0x8000000262A325B0;
  *&v86 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
  sub_2629ADBD8();
  v78 = sub_262A2A398();
  v80 = v79;

  MEMORY[0x26672ECF0](v78, v80);

  MEMORY[0x26672ECF0](10506, 0xE200000000000000);
  return v89;
}

uint64_t sub_2629DDF74(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

uint64_t sub_2629DE020(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_262A2A878() & 1;
  }
}

uint64_t sub_2629DE078()
{
  v1 = v0;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000021, 0x8000000262A326B0);
  v2 = type metadata accessor for PlanDataSetEvent(0);
  v3 = MEMORY[0x26672EDD0](*(v0 + v2[15]), &type metadata for SIDTreatment);
  MEMORY[0x26672ECF0](v3);

  MEMORY[0x26672ECF0](0xD000000000000018, 0x8000000262A326E0);
  MEMORY[0x26672ECF0](*v1, v1[1]);
  MEMORY[0x26672ECF0](0xD000000000000012, 0x8000000262A32700);
  MEMORY[0x26672ECF0](v1[2], v1[3]);
  MEMORY[0x26672ECF0](0xD00000000000001ELL, 0x8000000262A32720);
  MEMORY[0x26672ECF0](v1[4], v1[5]);
  MEMORY[0x26672ECF0](0xD00000000000001ELL, 0x8000000262A32740);
  MEMORY[0x26672ECF0](v1[6], v1[7]);
  MEMORY[0x26672ECF0](0xD00000000000001ALL, 0x8000000262A32760);
  MEMORY[0x26672ECF0](v1[8], v1[9]);
  MEMORY[0x26672ECF0](0xD000000000000015, 0x8000000262A32780);
  MEMORY[0x26672ECF0](v1[10], v1[11]);
  MEMORY[0x26672ECF0](0xD000000000000013, 0x8000000262A327A0);
  MEMORY[0x26672ECF0](v1[12], v1[13]);
  MEMORY[0x26672ECF0](0x69202020200A2C22, 0xEC00000022203A64);
  sub_262A2A018();
  sub_2629B1880();
  v4 = sub_262A2A868();
  MEMORY[0x26672ECF0](v4);

  MEMORY[0x26672ECF0](0xD000000000000010, 0x8000000262A327C0);
  MEMORY[0x26672ECF0](v1[14], v1[15]);
  MEMORY[0x26672ECF0](0xD000000000000017, 0x8000000262A327E0);
  v5 = MEMORY[0x26672EDD0](v0[16], &type metadata for ModelMetadata);
  MEMORY[0x26672ECF0](v5);

  MEMORY[0x26672ECF0](0xD000000000000010, 0x8000000262A32800);
  v6 = sub_262A2A868();
  MEMORY[0x26672ECF0](v6);

  MEMORY[0x26672ECF0](0xD000000000000017, 0x8000000262A32820);
  MEMORY[0x26672ECF0](*(v1 + v2[16]), *(v1 + v2[16] + 8));
  MEMORY[0x26672ECF0](0xD000000000000021, 0x8000000262A32840);
  v7 = MEMORY[0x26672EDD0](*(v0 + v2[17]), MEMORY[0x277D837D0]);
  MEMORY[0x26672ECF0](v7);

  MEMORY[0x26672ECF0](2689570, 0xE300000000000000);
  return 0;
}

uint64_t sub_2629DE3F0()
{
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000041, 0x8000000262A32870);
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD00000000000001CLL, 0x8000000262A328C0);
  MEMORY[0x26672ECF0](*(v0 + 8), *(v0 + 16));
  MEMORY[0x26672ECF0](0xD000000000000029, 0x8000000262A328E0);
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD00000000000001CLL, 0x8000000262A32910);
  v1 = sub_262A2A868();
  MEMORY[0x26672ECF0](v1);

  MEMORY[0x26672ECF0](0xD000000000000023, 0x8000000262A32930);
  v2 = sub_262A2A868();
  MEMORY[0x26672ECF0](v2);

  MEMORY[0x26672ECF0](0xD000000000000016, 0x8000000262A32960);
  if (*(v0 + 48))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x26672ECF0](v3, v4);

  MEMORY[0x26672ECF0](0xD000000000000014, 0x8000000262A32980);
  v5 = sub_262A2A868();
  MEMORY[0x26672ECF0](v5);

  MEMORY[0x26672ECF0](0xD00000000000001CLL, 0x8000000262A329A0);
  v6 = sub_262A2A868();
  MEMORY[0x26672ECF0](v6);

  MEMORY[0x26672ECF0](0xD000000000000022, 0x8000000262A329C0);
  v7 = sub_262A2A868();
  MEMORY[0x26672ECF0](v7);

  MEMORY[0x26672ECF0](0xD000000000000041, 0x8000000262A329F0);
  v8 = sub_262A2A868();
  MEMORY[0x26672ECF0](v8);

  MEMORY[0x26672ECF0](0xD00000000000002ELL, 0x8000000262A32A40);
  v9 = sub_262A2A868();
  MEMORY[0x26672ECF0](v9);

  MEMORY[0x26672ECF0](0xD00000000000002ELL, 0x8000000262A32A70);
  v10 = sub_262A2A868();
  MEMORY[0x26672ECF0](v10);

  MEMORY[0x26672ECF0](0xD000000000000030, 0x8000000262A32AA0);
  v11 = sub_262A2A868();
  MEMORY[0x26672ECF0](v11);

  MEMORY[0x26672ECF0](0xD00000000000002FLL, 0x8000000262A32AE0);
  v12 = sub_262A2A868();
  MEMORY[0x26672ECF0](v12);

  MEMORY[0x26672ECF0](0xD00000000000002ALL, 0x8000000262A32B10);
  v13 = sub_262A2A868();
  MEMORY[0x26672ECF0](v13);

  MEMORY[0x26672ECF0](0xD00000000000002CLL, 0x8000000262A32B40);
  v14 = sub_262A2A868();
  MEMORY[0x26672ECF0](v14);

  MEMORY[0x26672ECF0](0xD000000000000030, 0x8000000262A32B70);
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD00000000000001CLL, 0x8000000262A32BB0);
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD00000000000002ALL, 0x8000000262A32BD0);
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD00000000000002ELL, 0x8000000262A32C00);
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD00000000000001ALL, 0x8000000262A32C30);
  v15 = sub_262A2A868();
  MEMORY[0x26672ECF0](v15);

  MEMORY[0x26672ECF0](0xD00000000000002ALL, 0x8000000262A32C50);
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD000000000000025, 0x8000000262A32C80);
  sub_262A2A598();
  MEMORY[0x26672ECF0](0xD000000000000027, 0x8000000262A32CB0);
  sub_262A2A598();
  MEMORY[0x26672ECF0](10506, 0xE200000000000000);
  return 0;
}

uint64_t sub_2629DEA78()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v2 setDateStyle_];
  [v2 setTimeStyle_];
  v3 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v4 = sub_262A29F88();
  v5 = [v2 stringFromDate_];

  v6 = sub_262A2A3F8();
  v8 = v7;

  BYTE8(v10) = 0;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000003CLL, 0x8000000262A32CE0);
  MEMORY[0x26672ECF0](*v1, v1[1]);
  MEMORY[0x26672ECF0](0xD000000000000010, 0x8000000262A32D20);
  MEMORY[0x26672ECF0](v6, v8);

  MEMORY[0x26672ECF0](0xD000000000000014, 0x8000000262A32D40);
  sub_262A2A738();
  MEMORY[0x26672ECF0](0xD000000000000019, 0x8000000262A32D60);
  *&v10 = *(v1 + *(v3 + 64));
  sub_262A2A738();
  MEMORY[0x26672ECF0](10506, 0xE200000000000000);

  return *(&v10 + 1);
}

uint64_t SIDModalityPreference.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000017, 0x8000000262A32D80);
  MEMORY[0x26672ECF0](v1, v2);
  MEMORY[0x26672ECF0](0x697461727564202CLL, 0xED0000203A736E6FLL);
  v7 = MEMORY[0x26672EDD0](v4, MEMORY[0x277D83B88]);
  MEMORY[0x26672ECF0](v7);

  MEMORY[0x26672ECF0](0x61646B656577202CLL, 0xEC000000203A7379);
  v8 = MEMORY[0x26672EDD0](v6, &type metadata for SIDWeekday);
  MEMORY[0x26672ECF0](v8);

  MEMORY[0x26672ECF0](0x47636973756D202CLL, 0xEF203A7365726E65);
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x26672EDD0](v3, MEMORY[0x277D837D0]);
  MEMORY[0x26672ECF0](v10);

  MEMORY[0x26672ECF0](0x656E69617274202CLL, 0xEC000000203A7372);
  v11 = MEMORY[0x26672EDD0](v5, v9);
  MEMORY[0x26672ECF0](v11);

  MEMORY[0x26672ECF0](10528, 0xE200000000000000);
  return 0;
}

uint64_t SIDPersonalizedPlanResponse.description.getter()
{
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000002ELL, 0x8000000262A32DA0);
  v1 = *v0;
  v2 = type metadata accessor for SIDWorkoutPlanType(0);
  v3 = MEMORY[0x26672EDD0](v1, v2);
  MEMORY[0x26672ECF0](v3);

  MEMORY[0x26672ECF0](0x63697274656D202CLL, 0xEB00000000203A73);
  type metadata accessor for SIDPersonalizedPlanResponse(0);
  type metadata accessor for SIDMetrics(0);
  sub_262A2A738();
  MEMORY[0x26672ECF0](10506, 0xE200000000000000);
  return 0;
}

uint64_t SIDPersonalizedWorkoutPlan.description.getter()
{
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000028, 0x8000000262A32DD0);
  MEMORY[0x26672ECF0](*v0, *(v0 + 8));
  MEMORY[0x26672ECF0](0xD000000000000012, 0x8000000262A32E00);
  v1 = 0xE600000000000000;
  v2 = 0x6D6F74737543;
  if (*(v0 + 64) != 1)
  {
    v2 = 0x4768637465727453;
    v1 = 0xEB000000006C616FLL;
  }

  if (*(v0 + 64))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x65747369736E6F43;
  }

  if (*(v0 + 64))
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xEA0000000000746ELL;
  }

  MEMORY[0x26672ECF0](v3, v4);

  MEMORY[0x26672ECF0](0xD000000000000010, 0x8000000262A32E20);
  v5 = SIDWorkoutPlanScaffold.description.getter();
  MEMORY[0x26672ECF0](v5);

  MEMORY[0x26672ECF0](0xD000000000000010, 0x8000000262A32E40);
  v6 = SIDWorkoutPlanSchedule.description.getter();
  MEMORY[0x26672ECF0](v6);

  MEMORY[0x26672ECF0](10506, 0xE200000000000000);
  return 0;
}

uint64_t SIDWorkoutModality.name.getter(char a1)
{
  result = 1701998435;
  switch(a1)
  {
    case 1:
      result = 0x676E696C637963;
      break;
    case 2:
      result = 0x65636E6164;
      break;
    case 3:
      result = 1953065320;
      break;
    case 4:
      result = 0x69786F626B63696BLL;
      break;
    case 5:
      result = 0x697461746964656DLL;
      break;
    case 6:
      result = 0x436C7566646E696DLL;
      break;
    case 7:
      result = 0x736574616C6970;
      break;
    case 8:
      result = 0x676E69776F72;
      break;
    case 9:
      result = 0x75526F54656D6974;
      break;
    case 10:
      result = 0x6874676E65727473;
      break;
    case 11:
      result = 0x6C696D6461657274;
      break;
    case 12:
      result = 0x61576F54656D6974;
      break;
    case 13:
      result = 1634168697;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SIDWorkoutPlanScaffold.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2629CD800(0, v2, 0);
    v3 = v19;
    v4 = v1 + 40;
    do
    {
      v5 = SIDModalityPreference.description.getter();
      v20 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v18 = v5;
        v10 = v6;
        sub_2629CD800((v7 > 1), v8 + 1, 1);
        v6 = v10;
        v5 = v18;
        v3 = v20;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
  sub_2629ADBD8();
  v11 = sub_262A2A398();
  v13 = v12;

  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000018, 0x8000000262A32E60);
  sub_2629C1BAC();
  v14 = sub_262A2A5A8();
  MEMORY[0x26672ECF0](v14);

  MEMORY[0x26672ECF0](0xD000000000000017, 0x8000000262A32E80);
  v15 = sub_262A2A868();
  MEMORY[0x26672ECF0](v15);

  MEMORY[0x26672ECF0](0xD000000000000011, 0x8000000262A32EA0);
  sub_262A2A738();
  MEMORY[0x26672ECF0](3026478, 0xE300000000000000);
  sub_262A2A738();
  MEMORY[0x26672ECF0](0, 0xE000000000000000);

  MEMORY[0x26672ECF0](0x576C61746F74202CLL, 0xEE00203A736B6565);
  v16 = sub_262A2A868();
  MEMORY[0x26672ECF0](v16);

  MEMORY[0x26672ECF0](0x202020200A20, 0xE600000000000000);
  MEMORY[0x26672ECF0](v11, v13);

  MEMORY[0x26672ECF0](10506, 0xE200000000000000);
  return 0;
}

uint64_t SIDWorkoutPlanType.plan.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SIDWorkoutPlanType(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629D9B00(v1, v5);
  v6 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2629DF750(v5);
    v8 = 1;
  }

  else
  {
    sub_2629D9B64(v5, a1);
    v8 = 0;
  }

  return (*(v7 + 56))(a1, v8, 1, v6);
}

uint64_t sub_2629DF750(uint64_t a1)
{
  v2 = type metadata accessor for SIDWorkoutPlanType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SIDWorkoutPlanScheduledItem.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000026, 0x8000000262A32EC0);
  MEMORY[0x26672ECF0](v1, v2);
  MEMORY[0x26672ECF0](0x697461727564202CLL, 0xEC000000203A6E6FLL);
  v3 = sub_262A2A868();
  MEMORY[0x26672ECF0](v3);

  MEMORY[0x26672ECF0](0xD000000000000014, 0x8000000262A32EF0);
  sub_2629DF8EC();
  v4 = sub_262A2A5A8();
  MEMORY[0x26672ECF0](v4);

  MEMORY[0x26672ECF0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_2629DF8EC()
{
  result = qword_27FF3CA18;
  if (!qword_27FF3CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA18);
  }

  return result;
}

uint64_t SIDWorkoutPlanScheduleFilterProperty.description.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v3 = 0x76654C6C6C696B73;
    }

    else
    {
      v3 = 0x28656D656874;
    }
  }

  else if (a3)
  {
    v3 = 0x6E656D7069757165;
  }

  else
  {
    v3 = 0x75636F4679646F62;
  }

  v5 = v3;
  MEMORY[0x26672ECF0](a1, a2);
  MEMORY[0x26672ECF0](41, 0xE100000000000000);
  return v5;
}

uint64_t SIDWorkoutPlanSchedule.itemsByWeekday.getter()
{
  v1 = sub_2629C86E0(*v0);
  if (*(v1 + 16))
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6B0, &unk_262A2E470);
    v3 = sub_262A2A778();
    v1 = v2;
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v5 = v3;
  sub_2629CD9E0(v1, 1, &v5);
  return v5;
}

unint64_t SIDWorkoutPlanSchedule.description.getter()
{
  v1 = *v0;
  sub_262A2A6F8();

  v10 = 0xD000000000000017;
  v11 = 0x8000000262A32F10;
  v2 = sub_2629C86E0(v1);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6B0, &unk_262A2E470);
    v4 = sub_262A2A778();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v9 = v4;
  sub_2629CD9E0(v2, 1, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C710, &qword_262A2E4A8);
  sub_2629C1BAC();
  v5 = sub_262A2A348();
  v7 = v6;

  MEMORY[0x26672ECF0](v5, v7);

  MEMORY[0x26672ECF0](41, 0xE100000000000000);
  return v10;
}

uint64_t SIDWorkoutPlanVariation.description.getter()
{
  v1 = 0x6D6F74737543;
  if (*v0 != 1)
  {
    v1 = 0x4768637465727453;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65747369736E6F43;
  }
}

uint64_t sub_2629DFC94()
{
  v1 = 0x6D6F74737543;
  if (*v0 != 1)
  {
    v1 = 0x4768637465727453;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65747369736E6F43;
  }
}

uint64_t SIDCatalogWorkoutReferenceFilter.init(exclusions:inclusions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static SIDCatalogWorkoutReferenceFilter.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2629D4D50(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2629D4D50(v2, v3);
}

void SIDCatalogWorkoutReferenceFilter.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2629B5C50(a1, v3);

  sub_2629B5C50(a1, v4);
}

uint64_t SIDCatalogWorkoutReferenceFilter.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_2629B5C50(v4, v1);
  sub_2629B5C50(v4, v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629DFE00()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_2629B5C50(v4, v1);
  sub_2629B5C50(v4, v2);
  return sub_262A2A9D8();
}

void sub_2629DFE54(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2629B5C50(a1, v3);

  sub_2629B5C50(a1, v4);
}

uint64_t sub_2629DFE94(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_262A2A998();
  sub_2629B5C50(v5, v2);
  sub_2629B5C50(v5, v3);
  return sub_262A2A9D8();
}

uint64_t sub_2629DFEE4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2629D4D50(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2629D4D50(v2, v3);
}

unint64_t sub_2629DFF44()
{
  result = qword_27FF3CA20;
  if (!qword_27FF3CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA20);
  }

  return result;
}

void SIDCatalogWorkoutReferenceFilterProperty.hash(into:)(__int128 *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        v5 = 2;
      }

      else if (a3 == 3)
      {
        v5 = 3;
      }

      else
      {
        v5 = 4;
      }

LABEL_28:
      MEMORY[0x26672F240](v5);

      sub_2629B5854(a1, a2);
      return;
    }

    if (a3)
    {
      MEMORY[0x26672F240](1);

      sub_2629B59B0(a1, a2);
    }

    else
    {
      MEMORY[0x26672F240](0);

      sub_2629B5B40(a1, a2);
    }
  }

  else
  {
    if (a3 <= 7u)
    {
      if (a3 == 5)
      {
        v5 = 5;
      }

      else if (a3 == 6)
      {
        v5 = 6;
      }

      else
      {
        v5 = 7;
      }

      goto LABEL_28;
    }

    if (a3 == 8)
    {
      v5 = 8;
      goto LABEL_28;
    }

    if (a3 != 9)
    {
      v5 = 10;
      goto LABEL_28;
    }

    MEMORY[0x26672F240](9);

    sub_2629B55DC(a1, a2);
  }
}

uint64_t SIDCatalogWorkoutReferenceFilterProperty.hashValue.getter(uint64_t a1, unsigned __int8 a2)
{
  sub_262A2A998();
  SIDCatalogWorkoutReferenceFilterProperty.hash(into:)(v5, a1, a2);
  return sub_262A2A9D8();
}

uint64_t sub_2629E014C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_262A2A998();
  SIDCatalogWorkoutReferenceFilterProperty.hash(into:)(v4, v1, v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629E01A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_262A2A998();
  SIDCatalogWorkoutReferenceFilterProperty.hash(into:)(v5, v2, v3);
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness40SIDCatalogWorkoutReferenceFilterPropertyO2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        if (a4 == 1)
        {
          return sub_2629D4314(a1, a3);
        }
      }

      else if (!a4)
      {
        return sub_2629D41C0(a1, a3);
      }
    }

    else
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          if (a4 != 3)
          {
            return 0;
          }
        }

        else if (a4 != 4)
        {
          return 0;
        }

        v5 = a3;
        return sub_2629D45F4(a1, v5);
      }

      if (a4 == 2)
      {
        v5 = a3;
        return sub_2629D45F4(a1, v5);
      }
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      if (a4 != 8)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (a2 == 9)
    {
      if (a4 == 9)
      {
        return sub_2629D47AC(a1, a3);
      }

      return 0;
    }

    if (a4 == 10)
    {
      v5 = a3;
      return sub_2629D45F4(a1, v5);
    }
  }

  else if (a2 == 5)
  {
    if (a4 == 5)
    {
LABEL_23:
      v5 = a3;
      return sub_2629D45F4(a1, v5);
    }
  }

  else
  {
    if (a2 == 6)
    {
      if (a4 != 6)
      {
        return 0;
      }

      goto LABEL_23;
    }

    if (a4 == 7)
    {
LABEL_31:
      v5 = a3;
      return sub_2629D45F4(a1, v5);
    }
  }

  return 0;
}

unint64_t sub_2629E0334()
{
  result = qword_27FF3CA28;
  if (!qword_27FF3CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA28);
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

uint64_t sub_2629E03A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 9))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2629E03F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 8) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
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

uint64_t SIDCatalogWorkoutReferenceSortCriteria.init(property:order:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = result & 1;
  a3[1] = a2 & 1;
  return result;
}

uint64_t static SIDCatalogWorkoutReferenceSortCriteria.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_262A2A178();
  }

  else
  {
    return 0;
  }
}

uint64_t SIDCatalogWorkoutReferenceSortCriteria.hash(into:)(uint64_t a1)
{
  MEMORY[0x26672F240](*v1);

  return sub_262A2A188();
}

uint64_t SIDCatalogWorkoutReferenceSortCriteria.hashValue.getter()
{
  v1 = *v0;
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  sub_262A2A188();
  return sub_262A2A9D8();
}

uint64_t sub_2629E0544()
{
  v1 = *v0;
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  sub_262A2A188();
  return sub_262A2A9D8();
}

uint64_t sub_2629E05A4(uint64_t a1)
{
  MEMORY[0x26672F240](*v1);

  return sub_262A2A188();
}

uint64_t sub_2629E05F4(uint64_t a1)
{
  v2 = *v1;
  sub_262A2A998();
  MEMORY[0x26672F240](v2);
  sub_262A2A188();
  return sub_262A2A9D8();
}

uint64_t sub_2629E0650(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_262A2A178();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2629E0678()
{
  result = qword_27FF3CA30;
  if (!qword_27FF3CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SIDCatalogWorkoutReferenceSortCriteria(unsigned __int16 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for SIDCatalogWorkoutReferenceSortCriteria(_WORD *result, unsigned int a2, unsigned int a3)
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

uint64_t SIDCatalogWorkoutReferenceSortProperty.hashValue.getter(char a1)
{
  sub_262A2A998();
  MEMORY[0x26672F240](a1 & 1);
  return sub_262A2A9D8();
}

unint64_t sub_2629E08B0()
{
  result = qword_27FF3CA38;
  if (!qword_27FF3CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA38);
  }

  return result;
}

double SIDCatalogWorkoutReferenceQueryRequest.filter.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

__n128 SIDCatalogWorkoutReferenceQueryRequest.init(filter:limit:offset:sortCriteria:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u64[0] = a2;
  a5[1].n128_u64[1] = a3;
  a5[2].n128_u64[0] = a4;
  return result;
}

uint64_t SIDCatalogWorkoutReferenceQueryRequest.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_2629B5C50(a1, *v1);
  sub_2629B5C50(a1, v3);
  MEMORY[0x26672F240](v4);
  MEMORY[0x26672F240](v5);
  result = MEMORY[0x26672F240](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v6 + 33;
    do
    {
      v10 = *(v9 - 1);
      v9 += 2;
      MEMORY[0x26672F240](v10);
      result = sub_262A2A188();
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t SIDCatalogWorkoutReferenceQueryRequest.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_262A2A998();
  SIDCatalogWorkoutReferenceQueryRequest.hash(into:)(v4);
  return sub_262A2A9D8();
}

uint64_t sub_2629E0A6C()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_262A2A998();
  SIDCatalogWorkoutReferenceQueryRequest.hash(into:)(v4);
  return sub_262A2A9D8();
}

uint64_t sub_2629E0AC4(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_262A2A998();
  SIDCatalogWorkoutReferenceQueryRequest.hash(into:)(v5);
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness38SIDCatalogWorkoutReferenceQueryRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];

  if ((sub_2629D4D50(v2, v7) & 1) == 0)
  {

    return 0;
  }

  v14 = v6;
  v12 = sub_2629D4D50(v3, v8);

  if ((v12 & 1) == 0 || v5 != v9 || v4 != v10)
  {
    return 0;
  }

  return sub_2629E7004(v14, v11);
}

unint64_t sub_2629E0C4C()
{
  result = qword_27FF3CA40;
  if (!qword_27FF3CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA40);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2629E0CB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2629E0CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SIDPersonalizedPlanRequest.init(correlationKey:dataProvider:source:storefrontIdentifier:trigger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = sub_262A2A018();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for SIDPersonalizedPlanRequest(0);
  result = sub_2629E0E68(a2, a7 + v15[5]);
  *(a7 + v15[6]) = a3 & 1;
  v17 = (a7 + v15[7]);
  *v17 = a4;
  v17[1] = a5;
  *(a7 + v15[8]) = a6;
  return result;
}

uint64_t type metadata accessor for SIDPersonalizedPlanRequest(uint64_t a1)
{
  result = qword_27FF3CA48;
  if (!qword_27FF3CA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629E0E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDPersonalizedPlanDataProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629E0EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262A2A018();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SIDPersonalizedPlanDataProvider(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2629E1004(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_262A2A018();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SIDPersonalizedPlanDataProvider(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2629E1110(uint64_t a1)
{
  result = sub_262A2A018();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SIDPersonalizedPlanDataProvider(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

SIDFitness::SIDRequestSource_optional __swiftcall SIDRequestSource.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_262A2A788();

  if (v1 == 1)
  {
    v2.value = SIDFitness_SIDRequestSource_fitnessPlusTab;
  }

  else
  {
    v2.value = SIDFitness_SIDRequestSource_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SIDRequestSource.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x507373656E746966;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_2629E124C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x507373656E746966;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = 0x8000000262A31C70;
  }

  else
  {
    v4 = 0xEE0062615473756CLL;
  }

  if (*a2)
  {
    v5 = 0x507373656E746966;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*a2)
  {
    v6 = 0xEE0062615473756CLL;
  }

  else
  {
    v6 = 0x8000000262A31C70;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_262A2A878();
  }

  return v8 & 1;
}

uint64_t sub_2629E1304@<X0>(char *a2@<X8>)
{
  v3 = sub_262A2A788();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2629E1364(unint64_t *a1@<X8>)
{
  v2 = 0x8000000262A31C70;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x507373656E746966;
    v2 = 0xEE0062615473756CLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_2629E13B8()
{
  result = qword_27FF3CA58;
  if (!qword_27FF3CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA58);
  }

  return result;
}

uint64_t sub_2629E140C()
{
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629E14A0(uint64_t a1)
{
  sub_262A2A448();
}

uint64_t sub_2629E1520(uint64_t a1)
{
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

unint64_t SIDRequestTrigger.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E65704F707061;
  v2 = 0x6F54736472617761;
  v3 = 0x44676F6C61746163;
  if (a1 != 3)
  {
    v3 = 0x616470556E616C70;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_2629E1680(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = 0x6F54736472617761;
      v5 = 0xEB00000000747361;
      if (*a2 > 1u)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2 == 3)
      {
        v4 = 0x44676F6C61746163;
      }

      else
      {
        v4 = 0x616470556E616C70;
      }

      if (v2 == 3)
      {
        v5 = 0xEE00646574656C65;
      }

      else
      {
        v5 = 0xEB00000000646574;
      }

      if (*a2 > 1u)
      {
        goto LABEL_10;
      }
    }

LABEL_21:
    if (*a2)
    {
      v7 = 0x6E65704F707061;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (*a2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x8000000262A31CA0;
    }

    if (v4 != v7)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (*a1)
  {
    v4 = 0x6E65704F707061;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x8000000262A31CA0;
  }

  if (*a2 <= 1u)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (v3 == 2)
  {
    v8 = 0x6F54736472617761;
    v9 = 7631713;
  }

  else
  {
    if (v3 == 3)
    {
      v6 = 0xEE00646574656C65;
      if (v4 != 0x44676F6C61746163)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v8 = 0x616470556E616C70;
    v9 = 6579572;
  }

  v6 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v4 != v8)
  {
LABEL_36:
    v10 = sub_262A2A878();
    goto LABEL_37;
  }

LABEL_34:
  if (v5 != v6)
  {
    goto LABEL_36;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

unint64_t sub_2629E185C@<X0>(Swift::String *a1@<X0>, SIDFitness::SIDRequestTrigger_optional *a2@<X8>)
{
  result = _s10SIDFitness17SIDRequestTriggerO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_2629E188C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E65704F707061;
  v5 = 0xEB00000000747361;
  v6 = 0x6F54736472617761;
  v7 = 0xEE00646574656C65;
  v8 = 0x44676F6C61746163;
  if (v2 != 3)
  {
    v8 = 0x616470556E616C70;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000262A31CA0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2629E194C()
{
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629E1A50(uint64_t a1)
{
  sub_262A2A448();
}

uint64_t sub_2629E1B40(uint64_t a1)
{
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

unint64_t _s10SIDFitness17SIDRequestTriggerO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_262A2A788();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2629E1C90()
{
  result = qword_27FF3CA60;
  if (!qword_27FF3CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CA60);
  }

  return result;
}

uint64_t SIDPersonalizedPlanResponse.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SIDPersonalizedPlanResponse(0) + 20);

  return sub_2629E1D8C(v3, a1);
}

uint64_t type metadata accessor for SIDPersonalizedPlanResponse(uint64_t a1)
{
  result = qword_27FF3CA68;
  if (!qword_27FF3CA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629E1D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SIDPersonalizedPlanResponse.init(workoutPlans:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for SIDPersonalizedPlanResponse(0) + 20);

  return sub_2629E1E3C(a2, v4);
}

uint64_t sub_2629E1E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629E1EB4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SIDMetrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2629E1F74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SIDMetrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2629E2018(uint64_t a1)
{
  sub_2629E209C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SIDMetrics(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2629E209C(uint64_t a1)
{
  if (!qword_27FF3CA78)
  {
    type metadata accessor for SIDWorkoutPlanType(255);
    v1 = sub_262A2A558();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF3CA78);
    }
  }
}

uint64_t SIDArchivedSession.init(workoutIdentifier:percentCompleted:startDate:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  v9 = type metadata accessor for SIDArchivedSession(0);
  v10 = *(v9 + 24);
  v11 = sub_262A29FD8();
  (*(*(v11 - 8) + 32))(a5 + v10, a3, v11);
  v12 = *(v9 + 28);
  v13 = sub_262A2A168();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a4, v13);
}

uint64_t type metadata accessor for SIDArchivedSession(uint64_t a1)
{
  result = qword_27FF3CA90;
  if (!qword_27FF3CA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SIDArchivedSession.== infix(_:_:)(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v4 || (sub_262A2A878()) && a1[2] == *(a2 + 16))
  {
    type metadata accessor for SIDArchivedSession(0);
    if (sub_262A29FB8())
    {

      JUMPOUT(0x26672E9F0);
    }
  }

  return 0;
}

uint64_t SIDArchivedSession.hash(into:)(uint64_t a1)
{
  sub_262A2A448();
  v2 = *(v1 + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26672F260](*&v2);
  type metadata accessor for SIDArchivedSession(0);
  sub_262A29FD8();
  sub_2629E2778(&qword_27FF3C4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_262A2A388();
  sub_262A2A168();
  sub_2629E2778(&qword_27FF3CA80, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  return sub_262A2A388();
}

uint64_t SIDArchivedSession.hashValue.getter()
{
  sub_262A2A998();
  sub_262A2A448();
  v1 = *(v0 + 16);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26672F260](*&v1);
  type metadata accessor for SIDArchivedSession(0);
  sub_262A29FD8();
  sub_2629E2778(&qword_27FF3C4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_262A2A388();
  sub_262A2A168();
  sub_2629E2778(&qword_27FF3CA80, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_262A2A388();
  return sub_262A2A9D8();
}

uint64_t sub_2629E2508(uint64_t a1)
{
  sub_262A2A448();
  v2 = *(v1 + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26672F260](*&v2);
  sub_262A29FD8();
  sub_2629E2778(&qword_27FF3C4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_262A2A388();
  sub_262A2A168();
  sub_2629E2778(&qword_27FF3CA80, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  return sub_262A2A388();
}

uint64_t sub_2629E2614(uint64_t a1)
{
  sub_262A2A998();
  sub_262A2A448();
  v2 = *(v1 + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26672F260](*&v2);
  sub_262A29FD8();
  sub_2629E2778(&qword_27FF3C4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_262A2A388();
  sub_262A2A168();
  sub_2629E2778(&qword_27FF3CA80, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_262A2A388();
  return sub_262A2A9D8();
}

uint64_t sub_2629E2778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2629E27C0(double *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v5 || (sub_262A2A878()) && a1[2] == *(a2 + 16) && (sub_262A29FB8())
  {

    JUMPOUT(0x26672E9F0);
  }

  return 0;
}

uint64_t sub_2629E287C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_262A29FD8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_262A2A168();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2629E29B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_262A29FD8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_262A2A168();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2629E2AD8(uint64_t a1)
{
  result = sub_262A29FD8();
  if (v2 <= 0x3F)
  {
    result = sub_262A2A168();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void __swiftcall SIDAwardProgressReference.init(goalValue:metadata:progressValue:required:templateUniqueName:)(SIDFitness::SIDAwardProgressReference *__return_ptr retstr, Swift::Int goalValue, Swift::OpaquePointer metadata, Swift::Int progressValue, Swift::Bool required, Swift::String templateUniqueName)
{
  retstr->goalValue = goalValue;
  retstr->metadata = metadata;
  retstr->progressValue = progressValue;
  retstr->required = required;
  retstr->templateUniqueName = templateUniqueName;
}

uint64_t SIDPersonalizedPlanDataProvider.init(activePlanData:awardData:contextData:fitnessPlusWorkoutHistory:modalityDurations:onboardingData:queryCatalogWorkoutReferences:scheduleBuilder:userMetadata:scaffoldValidator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *a3;
  v18 = a3[1];
  sub_2629E2E14(a1, a9, &unk_27FF3C0B0, &unk_262A30350);
  v20 = type metadata accessor for SIDPersonalizedPlanDataProvider(0);
  *(a9 + v20[5]) = a2;
  v21 = (a9 + v20[6]);
  *v21 = v19;
  v21[1] = v18;
  *(a9 + v20[7]) = a4;
  sub_2629E2DB0(a12, a9 + v20[8]);
  *(a9 + v20[9]) = a5;
  sub_2629E2E14(a6, a9 + v20[10], &qword_27FF3C948, &unk_262A30B40);
  v22 = (a9 + v20[11]);
  *v22 = a7;
  v22[1] = a8;
  v23 = (a9 + v20[14]);
  *v23 = a10;
  v23[1] = a11;
  v24 = swift_allocObject();
  *(v24 + 16) = a10;
  *(v24 + 24) = a11;
  v25 = (a9 + v20[13]);
  *v25 = &unk_262A30368;
  v25[1] = v24;
  sub_2629E32BC(a12, a9 + v20[15]);
  v26 = swift_allocObject();
  *(v26 + 16) = a13;
  *(v26 + 24) = a14;
  v27 = (a9 + v20[12]);
  *v27 = &unk_262A30378;
  v27[1] = v26;
  v28 = (a9 + v20[17]);
  *v28 = a13;
  v28[1] = a14;
  v29 = (a9 + v20[16]);
  *v29 = &unk_262A30380;
  v29[1] = 0;
}

uint64_t type metadata accessor for SIDPersonalizedPlanDataProvider(uint64_t a1)
{
  result = qword_27FF3CAA0;
  if (!qword_27FF3CAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629E2DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDUserMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629E2E14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2629E2E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  type metadata accessor for SIDWorkoutPlanScheduleResponse(0);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = type metadata accessor for SIDWorkoutPlanScheduleRequest(0);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = *a2;
  *(v4 + 80) = *(a2 + 16);
  *(v4 + 88) = *(a2 + 24);
  *(v4 + 104) = *(a2 + 40);

  return MEMORY[0x2822009F8](sub_2629E2F64, 0, 0);
}

uint64_t sub_2629E2F64(uint64_t a1)
{
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[10];
  v5 = v1[11];
  v7 = v1[8];
  v6 = v1[9];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v1[3];
  sub_262A2A008();
  v11 = (v8 + *(v9 + 20));
  *v11 = v7;
  v11[1] = v6;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v3;
  v11[5] = v2;
  *(v8 + *(v9 + 24)) = 0;

  v16 = (v10 + *v10);
  v12 = swift_task_alloc();
  v1[14] = v12;
  *v12 = v1;
  v12[1] = sub_2629E30BC;
  v13 = v1[7];
  v14 = v1[5];

  return v16(v14, v13);
}

uint64_t sub_2629E30BC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2629E4958;
  }

  else
  {
    v2 = sub_2629E4960;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2629E31D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2629E3208(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2629E4964;

  return sub_2629E2E7C(a1, a2, v7, v6);
}

uint64_t sub_2629E32BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDUserMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629E3320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = type metadata accessor for SIDWorkoutPlanScheduleRequest(0);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = *a1;
  *(v3 + 64) = *(a1 + 16);
  *(v3 + 72) = *(a1 + 24);
  *(v3 + 88) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_2629E33D8, 0, 0);
}

uint64_t sub_2629E33D8(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[8];
  v5 = v1[9];
  v7 = v1[6];
  v6 = v1[7];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[2];
  sub_262A2A008();
  v11 = (v8 + *(v9 + 20));
  *v11 = v7;
  v11[1] = v6;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v3;
  v11[5] = v2;
  *(v8 + *(v9 + 24)) = 0;

  v15 = (v10 + *v10);
  v12 = swift_task_alloc();
  v1[12] = v12;
  *v12 = v1;
  v12[1] = sub_2629E3530;
  v13 = v1[5];

  return v15(v13);
}

uint64_t sub_2629E3530()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2629E495C;
  }

  else
  {
    v2 = sub_2629E4954;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2629E3644(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2629E4964;

  return sub_2629E3320(a1, v5, v4);
}

uint64_t SIDPersonalizedPlanDataProvider.init(activePlanData:awardData:contextData:fitnessPlusWorkoutHistory:modalityDurations:onboardingData:queryCatalogWorkoutReferences:scheduleBuilder:userMetadata:scaffoldValidator:scaffoldReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *a3;
  v20 = a3[1];
  sub_2629E2E14(a1, a9, &unk_27FF3C0B0, &unk_262A30350);
  v21 = type metadata accessor for SIDPersonalizedPlanDataProvider(0);
  *(a9 + v21[5]) = a2;
  v22 = (a9 + v21[6]);
  *v22 = v19;
  v22[1] = v20;
  *(a9 + v21[7]) = a4;
  sub_2629E2DB0(a12, a9 + v21[8]);
  *(a9 + v21[9]) = a5;
  sub_2629E2E14(a6, a9 + v21[10], &qword_27FF3C948, &unk_262A30B40);
  v23 = (a9 + v21[11]);
  *v23 = a7;
  v23[1] = a8;
  v24 = (a9 + v21[14]);
  *v24 = a10;
  v24[1] = a11;
  v25 = swift_allocObject();
  *(v25 + 16) = a10;
  *(v25 + 24) = a11;
  v26 = (a9 + v21[13]);
  *v26 = &unk_262A30390;
  v26[1] = v25;
  sub_2629E32BC(a12, a9 + v21[15]);
  v27 = swift_allocObject();
  *(v27 + 16) = a13;
  *(v27 + 24) = a14;
  v28 = (a9 + v21[12]);
  *v28 = &unk_262A303A0;
  v28[1] = v27;
  v29 = (a9 + v21[17]);
  *v29 = a13;
  v29[1] = a14;
  v30 = (a9 + v21[16]);
  *v30 = a15;
  v30[1] = a16;
}

uint64_t sub_2629E38C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  type metadata accessor for SIDWorkoutPlanScheduleResponse(0);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = type metadata accessor for SIDWorkoutPlanScheduleRequest(0);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = *a2;
  *(v4 + 80) = *(a2 + 16);
  *(v4 + 88) = *(a2 + 24);
  *(v4 + 104) = *(a2 + 40);

  return MEMORY[0x2822009F8](sub_2629E39AC, 0, 0);
}

uint64_t sub_2629E39AC(uint64_t a1)
{
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[10];
  v5 = v1[11];
  v7 = v1[8];
  v6 = v1[9];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v1[3];
  sub_262A2A008();
  v11 = (v8 + *(v9 + 20));
  *v11 = v7;
  v11[1] = v6;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v3;
  v11[5] = v2;
  *(v8 + *(v9 + 24)) = 0;

  v16 = (v10 + *v10);
  v12 = swift_task_alloc();
  v1[14] = v12;
  *v12 = v1;
  v12[1] = sub_2629E3B04;
  v13 = v1[7];
  v14 = v1[5];

  return v16(v14, v13);
}

uint64_t sub_2629E3B04()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2629E3CE0;
  }

  else
  {
    v2 = sub_2629E3C18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2629E3C18()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_2629E48E8(v0[7], type metadata accessor for SIDWorkoutPlanScheduleRequest);
  v3 = *v1;

  sub_2629E48E8(v1, type metadata accessor for SIDWorkoutPlanScheduleResponse);
  *v2 = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_2629E3CE0()
{
  sub_2629E48E8(*(v0 + 56), type metadata accessor for SIDWorkoutPlanScheduleRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2629E3D70(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2629A88B4;

  return sub_2629E38C4(a1, a2, v7, v6);
}

uint64_t sub_2629E3E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = type metadata accessor for SIDWorkoutPlanScheduleRequest(0);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = *a1;
  *(v3 + 64) = *(a1 + 16);
  *(v3 + 72) = *(a1 + 24);
  *(v3 + 88) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_2629E3EDC, 0, 0);
}

uint64_t sub_2629E3EDC(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[8];
  v5 = v1[9];
  v7 = v1[6];
  v6 = v1[7];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[2];
  sub_262A2A008();
  v11 = (v8 + *(v9 + 20));
  *v11 = v7;
  v11[1] = v6;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v3;
  v11[5] = v2;
  *(v8 + *(v9 + 24)) = 0;

  v15 = (v10 + *v10);
  v12 = swift_task_alloc();
  v1[12] = v12;
  *v12 = v1;
  v12[1] = sub_2629E4034;
  v13 = v1[5];

  return v15(v13);
}

uint64_t sub_2629E4034()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2629E41CC;
  }

  else
  {
    v2 = sub_2629E4148;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2629E4148()
{
  sub_2629E48E8(*(v0 + 40), type metadata accessor for SIDWorkoutPlanScheduleRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2629E41CC()
{
  sub_2629E48E8(*(v0 + 40), type metadata accessor for SIDWorkoutPlanScheduleRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2629E4250(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2629E4964;

  return sub_2629E3E24(a1, v5, v4);
}

uint64_t sub_2629E430C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0B0, &unk_262A30350);
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
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for SIDUserMetadata(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2629E44AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0B0, &unk_262A30350);
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
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for SIDUserMetadata(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_2629E4638(uint64_t a1)
{
  sub_2629E4834(319, &qword_27FF3C960, type metadata accessor for SIDActiveWorkoutPlan, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2629E47E4();
    if (v2 <= 0x3F)
    {
      sub_2629E4834(319, &qword_27FF3CAB0, type metadata accessor for SIDArchivedSession, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SIDUserMetadata(319);
        if (v4 <= 0x3F)
        {
          sub_2629C2458(319);
          if (v5 <= 0x3F)
          {
            sub_2629E4834(319, &qword_27FF3C970, type metadata accessor for SIDUserOnboardingData, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_2629E4898();
              if (v7 <= 0x3F)
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

void sub_2629E47E4()
{
  if (!qword_27FF3C968)
  {
    v0 = sub_262A2A558();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C968);
    }
  }
}

void sub_2629E4834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2629E4898()
{
  result = qword_27FF3CAB8;
  if (!qword_27FF3CAB8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FF3CAB8);
  }

  return result;
}

uint64_t sub_2629E48E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SIDUserMetadata.init(allowedContentRatings:didOptInPrivacyPreference:isWheelchairUser:locale:timezone:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 9) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  v9 = *(type metadata accessor for SIDUserMetadata(0) + 32);
  v10 = sub_262A2A168();
  v11 = *(*(v10 - 8) + 32);

  return v11(a7 + v9, a6, v10);
}

uint64_t type metadata accessor for SIDUserMetadata(uint64_t a1)
{
  result = qword_27FF3CAC8;
  if (!qword_27FF3CAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SIDUserMetadata.hash(into:)(__int128 *a1)
{
  sub_2629B59B0(a1, *v1);
  sub_262A2A9B8();
  sub_262A2A9B8();
  sub_262A2A448();
  type metadata accessor for SIDUserMetadata(0);
  sub_262A2A168();
  sub_2629E4E48(&qword_27FF3CA80, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  return sub_262A2A388();
}

uint64_t SIDUserMetadata.hashValue.getter()
{
  sub_262A2A998();
  sub_2629B59B0(v2, *v0);
  sub_262A2A9B8();
  sub_262A2A9B8();
  sub_262A2A448();
  type metadata accessor for SIDUserMetadata(0);
  sub_262A2A168();
  sub_2629E4E48(&qword_27FF3CA80, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_262A2A388();
  return sub_262A2A9D8();
}

uint64_t sub_2629E4BD4(__int128 *a1)
{
  sub_2629B59B0(a1, *v1);
  sub_262A2A9B8();
  sub_262A2A9B8();
  sub_262A2A448();
  sub_262A2A168();
  sub_2629E4E48(&qword_27FF3CA80, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  return sub_262A2A388();
}

uint64_t sub_2629E4C84(uint64_t a1)
{
  sub_262A2A998();
  sub_2629B59B0(v3, *v1);
  sub_262A2A9B8();
  sub_262A2A9B8();
  sub_262A2A448();
  sub_262A2A168();
  sub_2629E4E48(&qword_27FF3CA80, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_262A2A388();
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness15SIDUserMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_2629D4314(*a1, *a2) & 1) != 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 9) == *(a2 + 9) && (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (sub_262A2A878()))
  {
    type metadata accessor for SIDUserMetadata(0);

    JUMPOUT(0x26672E9F0);
  }

  return 0;
}

uint64_t sub_2629E4E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2629E4EA4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_262A2A168();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_2629E4F64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_262A2A168();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2629E5008(uint64_t a1)
{
  sub_2629E50A0(319);
  if (v1 <= 0x3F)
  {
    sub_262A2A168();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2629E50A0(uint64_t a1)
{
  if (!qword_27FF3CAD8)
  {
    sub_2629E50FC();
    v1 = sub_262A2A5C8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF3CAD8);
    }
  }
}

unint64_t sub_2629E50FC()
{
  result = qword_27FF3CAE0;
  if (!qword_27FF3CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CAE0);
  }

  return result;
}

uint64_t SIDUserOnboardingData.init(completedDate:selectedModalityIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_262A29FD8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SIDUserOnboardingData(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for SIDUserOnboardingData(uint64_t a1)
{
  result = qword_27FF3CAF0;
  if (!qword_27FF3CAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SIDUserOnboardingData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_262A29FB8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SIDUserOnboardingData(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_2629D45F4(v5, v6);
}

void SIDUserOnboardingData.hash(into:)(__int128 *a1)
{
  sub_262A29FD8();
  sub_2629E5640(&qword_27FF3C4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_262A2A388();
  v3 = *(v1 + *(type metadata accessor for SIDUserOnboardingData(0) + 20));

  sub_2629B5854(a1, v3);
}

uint64_t SIDUserOnboardingData.hashValue.getter()
{
  sub_262A2A998();
  sub_262A29FD8();
  sub_2629E5640(&qword_27FF3C4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_262A2A388();
  v1 = type metadata accessor for SIDUserOnboardingData(0);
  sub_2629B5854(v3, *(v0 + *(v1 + 20)));
  return sub_262A2A9D8();
}

uint64_t sub_2629E53B4(uint64_t a1)
{
  sub_262A2A998();
  sub_262A29FD8();
  sub_2629E5640(&qword_27FF3C4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_262A2A388();
  sub_2629B5854(v4, *(v1 + *(a1 + 20)));
  return sub_262A2A9D8();
}

void sub_2629E5458(__int128 *a1, uint64_t a2)
{
  sub_262A29FD8();
  sub_2629E5640(&qword_27FF3C4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_262A2A388();
  v5 = *(v2 + *(a2 + 20));

  sub_2629B5854(a1, v5);
}

uint64_t sub_2629E54F0(uint64_t a1, uint64_t a2)
{
  sub_262A2A998();
  sub_262A29FD8();
  sub_2629E5640(&qword_27FF3C4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_262A2A388();
  sub_2629B5854(v5, *(v2 + *(a2 + 20)));
  return sub_262A2A9D8();
}

uint64_t sub_2629E5590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_262A29FB8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_2629D45F4(v7, v8);
}

uint64_t sub_2629E5640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2629E569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262A29FD8();
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

uint64_t sub_2629E576C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_262A29FD8();
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

void sub_2629E5824(uint64_t a1)
{
  sub_262A29FD8();
  if (v1 <= 0x3F)
  {
    sub_2629E58A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2629E58A8()
{
  if (!qword_27FF3CB00)
  {
    v0 = sub_262A2A5C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3CB00);
    }
  }
}

__n128 SIDWorkoutPlanScheduleRequest.init(planIdentifier:scaffold:variation:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v13 = a2[1];
  v14 = *a2;
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = *a3;
  v9 = sub_262A2A018();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  v10 = type metadata accessor for SIDWorkoutPlanScheduleRequest(0);
  v11 = a4 + *(v10 + 20);
  result = v13;
  *v11 = v14;
  *(v11 + 16) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  *(a4 + *(v10 + 24)) = v8;
  return result;
}

uint64_t type metadata accessor for SIDWorkoutPlanScheduleRequest(uint64_t a1)
{
  result = qword_27FF3CB08;
  if (!qword_27FF3CB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SIDWorkoutPlanScheduleRequest.planIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_262A2A018();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double SIDWorkoutPlanScheduleRequest.scaffold.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SIDWorkoutPlanScheduleRequest(0) + 20);
  v4 = *(v3 + 16);
  v5 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v5;

  return result;
}

uint64_t SIDWorkoutPlanScheduleRequest.variation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SIDWorkoutPlanScheduleRequest(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_2629E5B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262A2A018();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2629E5BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_262A2A018();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2629E5CA0(uint64_t a1)
{
  result = sub_262A2A018();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t SIDWorkoutPlanScheduleResponse.init(schedule:metrics:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold(0);
  MEMORY[0x28223BE20](PlanScaffold);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v52 = a3;
  *a3 = v12;

  v13 = sub_2629AC344(MEMORY[0x277D84F90]);
  v14 = v13;
  if (*(a2 + 16))
  {
    v15 = v13;
    v16 = sub_2629CB0BC(0xD000000000000010, 0x8000000262A312E0);
    v17 = 0;
    v18 = 0;
    if (v19)
    {
      sub_2629ADE10(*(a2 + 56) + 32 * v16, v55);
      if (swift_dynamicCast())
      {
        v18 = v54;
      }
    }

    if (*(a2 + 16) && (v20 = sub_2629CB0BC(0xD000000000000010, 0x8000000262A312E0), (v21 & 1) != 0))
    {
      sub_2629ADE10(*(a2 + 56) + 32 * v20, v55);
      v14 = v15;
      if (swift_dynamicCast())
      {
        v17 = v54;
      }
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  sub_262A2A008();
  v22 = sub_262A2A018();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v50 = v23 + 56;
  v51 = v24;
  v24(v8, 0, 1, v22);
  if (*(a2 + 16) && (v25 = sub_2629CB0BC(0xD000000000000013, 0x8000000262A31320), (v26 & 1) != 0) && (sub_2629ADE10(*(a2 + 56) + 32 * v25, v55), swift_dynamicCast()))
  {
    v48 = v54;
  }

  else
  {
    v48 = 0;
  }

  v54 = v12;
  v27 = SIDWorkoutPlanSchedule.metricScaffold.getter();

  sub_2629E6220(v27);
  v47 = v28;

  v29 = *(a2 + 16);
  v49 = v8;
  if (!v29)
  {
    v46 = 0;
    goto LABEL_27;
  }

  v30 = sub_2629CB0BC(0x687469726F676C61, 0xEE0065726F63536DLL);
  if ((v31 & 1) != 0 && (sub_2629ADE10(*(a2 + 56) + 32 * v30, v55), swift_dynamicCast()))
  {
    v46 = v53;
    if (!*(a2 + 16))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v46 = 0;
    if (!*(a2 + 16))
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  v32 = sub_2629CB0BC(0xD000000000000012, 0x8000000262A31360);
  if ((v33 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_2629ADE10(*(a2 + 56) + 32 * v32, v55);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v34 = 0;
    goto LABEL_29;
  }

  v34 = v53;
LABEL_29:
  v35 = PlanScaffold[12];
  v36 = v51;
  v51(&v11[v35], 1, 1, v22);
  v37 = PlanScaffold[14];
  v38 = &v11[PlanScaffold[13]];
  v36(&v11[v37], 1, 1, v22);
  *v11 = v14;
  *(v11 + 1) = v18;
  *(v11 + 2) = v17;
  v39 = MEMORY[0x277D84FA0];
  *(v11 + 3) = MEMORY[0x277D84FA0];
  v40 = &v11[v35];
  v41 = v49;
  sub_2629BEB44(v49, v40);
  v42 = v47;
  *(v11 + 4) = v48;
  *&v11[PlanScaffold[15]] = v42;
  *(v11 + 5) = v46;
  v11[48] = 0;
  *&v11[PlanScaffold[16]] = v34;
  v11[49] = 0;
  *(v11 + 7) = v39;
  sub_2629E64D0(&v11[v37]);
  v36(&v11[v37], 1, 1, v22);
  sub_2629E64D0(v41);
  *&v11[PlanScaffold[17]] = MEMORY[0x277D84F90];
  *v38 = 0;
  v38[8] = 1;
  v43 = type metadata accessor for SIDWorkoutPlanScheduleResponse(0);
  return sub_2629E6584(v11, v52 + *(v43 + 20));
}

void sub_2629E6220(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C078, &unk_262A2B520);
    v2 = sub_262A2A778();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + 16 * (v11 | (v10 << 6)));
        v14 = *v12;
        v13 = v12[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6C0, &unk_262A2E480);
        swift_dynamicCast();
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v24 = v25;
        v25 = v26;
        *&v26 = v27;
        v15 = sub_2629CB0BC(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          sub_2629E67DC(&v24, v2[7] + 40 * v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          v18 = v2[7] + 40 * v15;
          v19 = v24;
          v20 = v25;
          *(v18 + 32) = v26;
          *v18 = v19;
          *(v18 + 16) = v20;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}