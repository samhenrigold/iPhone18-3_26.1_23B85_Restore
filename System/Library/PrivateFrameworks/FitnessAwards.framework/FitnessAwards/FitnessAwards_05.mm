uint64_t sub_24B44CDF0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  State = type metadata accessor for AwardProgressLoadState(0);
  v41 = *(State - 8);
  v9 = MEMORY[0x28223BE20](State - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80C8, &qword_24B45C408);
  result = sub_24B45903C();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    sub_24B44E158(v22 + v43 * v21, v40, type metadata accessor for AwardProgressLoadState);
    sub_24B44E1C0(v26, v17, type metadata accessor for AwardProgressLoadState);
    sub_24B45922C();

    sub_24B458E6C();
    result = sub_24B45926C();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v25;
    v35[1] = v24;
    result = sub_24B44E1C0(v17, *(v13 + 56) + v30 * v43, type metadata accessor for AwardProgressLoadState);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
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

void *sub_24B44D13C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t objectdestroy_7Tm()
{
  v1 = (type metadata accessor for AwardToastPresentationFeature(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24B45836C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24B44D3BC(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardToastPresentationFeature(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3F1E60;

  return sub_24B447528(a1, v1 + v5);
}

BOOL sub_24B44D494(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 0xFC)
  {
    if (v4 == 251)
    {
      if (v7 == 251)
      {
        sub_24B44E024(*a1, v2, 251);
        v8 = v6;
        v9 = v5;
        v10 = -5;
        goto LABEL_17;
      }
    }

    else
    {
      if (v4 != 252)
      {
LABEL_18:
        if (v7 <= 0xFA)
        {
          v15[0] = *a1;
          v15[1] = v2;
          v16 = v4;
          v13[0] = v6;
          v13[1] = v5;
          v14 = v7;
          sub_24B44E010(v6, v5, v7);
          sub_24B44E010(v3, v2, v4);
          sub_24B44E010(v6, v5, v7);
          sub_24B44E010(v3, v2, v4);
          v11 = _s13FitnessAwards14AwardToastKindO2eeoiySbAC_ACtFZ_0(v15, v13);
          sub_24B44E024(v3, v2, v4);
          sub_24B44E024(v6, v5, v7);
          sub_24B44E024(v6, v5, v7);
          sub_24B44E024(v3, v2, v4);
          return v11;
        }

        goto LABEL_19;
      }

      if (v7 == 252)
      {
        sub_24B44E024(*a1, v2, 252);
        v8 = v6;
        v9 = v5;
        v10 = -4;
        goto LABEL_17;
      }
    }

LABEL_19:
    sub_24B44E010(*a2, a2[1], v7);
    sub_24B44E010(v3, v2, v4);
    sub_24B44E024(v3, v2, v4);
    sub_24B44E024(v6, v5, v7);
    return 0;
  }

  if (v4 == 253)
  {
    if (v7 == 253)
    {
      sub_24B44E024(*a1, v2, 253);
      v8 = v6;
      v9 = v5;
      v10 = -3;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v4 == 254)
  {
    if (v7 == 254)
    {
      sub_24B44E024(*a1, v2, 254);
      v8 = v6;
      v9 = v5;
      v10 = -2;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v4 != 255)
  {
    goto LABEL_18;
  }

  if (v7 != 255)
  {
    goto LABEL_19;
  }

  sub_24B44E024(*a1, v2, 255);
  v8 = v6;
  v9 = v5;
  v10 = -1;
LABEL_17:
  sub_24B44E024(v8, v9, v10);
  return 1;
}

uint64_t sub_24B44D6D4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(a3 + 48) + 40 * result;
    v5 = *(v4 + 32);
    v6 = *(v4 + 16);
    *a4 = *v4;
    *(a4 + 16) = v6;
    *(a4 + 32) = v5;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24B44D738(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v25 = a2;
  v29 = a4;
  v26 = a1;
  State = type metadata accessor for AwardProgressLoadState(0);
  v28 = *(State - 8);
  result = MEMORY[0x28223BE20](State - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = (v30[6] + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    sub_24B44E158(v30[7] + *(v28 + 72) * v20, v8, type metadata accessor for AwardProgressLoadState);

    LOBYTE(v22) = v29(v22, v23, v8);
    sub_24B44E040(v8, type metadata accessor for AwardProgressLoadState);

    if (v22)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_24B44CDF0(v26, v25, v27, v30);
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_24B44CDF0(v26, v25, v27, v30);
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_24B44D954(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_24B44D738(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_24B44CA0C(v10, v6, v4, a2);
  result = MEMORY[0x24C2408A0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t _s13FitnessAwards29AwardToastPresentationFeatureV7dispose10localState06sharedI0y8DataFlow05EmptyI0V_AA0cdeI0VztF_0(uint64_t a1)
{
  State = type metadata accessor for AwardToastLoadState(0);
  MEMORY[0x28223BE20](State);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24B45836C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for AwardToastPresentationState(0);
  v11 = *(v10 + 24);
  sub_24B44E158(a1 + v11, v5, type metadata accessor for AwardToastLoadState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24B44E040(v5, type metadata accessor for AwardToastLoadState);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    type metadata accessor for AwardToastPresentationFeature(0);
    v12 = sub_24B45834C();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      sub_24B44E040(a1 + v11, type metadata accessor for AwardToastLoadState);
      swift_storeEnumTagMultiPayload();
    }
  }

  v13 = MEMORY[0x28223BE20](*(a1 + *(v10 + 28)));
  *&v16[-16] = v1;
  v14 = sub_24B44D954(v13, sub_24B44E038);
  sub_24B443AB0(v14, a1);
}

unint64_t sub_24B44DD2C()
{
  result = qword_2810E2AA0;
  if (!qword_2810E2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AA0);
  }

  return result;
}

unint64_t sub_24B44DD84()
{
  result = qword_2810E2AA8;
  if (!qword_2810E2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AA8);
  }

  return result;
}

unint64_t sub_24B44DDDC()
{
  result = qword_2810E2C60;
  if (!qword_2810E2C60)
  {
    type metadata accessor for AwardToastPresentationState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2C60);
  }

  return result;
}

uint64_t sub_24B44DE5C(uint64_t a1)
{
  result = sub_24B45836C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessAwards29AwardToastPresentationFeatureV14TaskIdentifier33_DAF1611D220B12D45B3AA41174D036A4LLO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B44DEEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 > 3)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 6)
  {
    return v4 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B44DF34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -5 - a2;
    }
  }

  return result;
}

uint64_t sub_24B44DF80(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

unint64_t sub_24B44DFBC()
{
  result = qword_2810E2A90;
  if (!qword_2810E2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2A90);
  }

  return result;
}

uint64_t sub_24B44E010(uint64_t result, uint64_t a2, char a3)
{
  if (a3 <= 0xFAu)
  {
    return sub_24B4070AC(result, a2, a3);
  }

  return result;
}

uint64_t sub_24B44E024(uint64_t result, uint64_t a2, char a3)
{
  if (a3 <= 0xFAu)
  {
    return sub_24B3D810C(result, a2, a3);
  }

  return result;
}

uint64_t sub_24B44E040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B44E158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B44E1C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B44E22C()
{
  v1 = *v0;
  v2 = 0x6570704177656976;
  if (v1 == 4)
  {
    v2 = 0xD000000000000018;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000010;
  }

  v3 = 0xD000000000000016;
  v4 = 0xD000000000000012;
  if (v1 != 1)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B44E300@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B44EFC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B44E328(uint64_t a1)
{
  v2 = sub_24B44ED14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E364(uint64_t a1)
{
  v2 = sub_24B44ED14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B44E3A0(uint64_t a1)
{
  v2 = sub_24B44EF0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E3DC(uint64_t a1)
{
  v2 = sub_24B44EF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B44E418(uint64_t a1)
{
  v2 = sub_24B44EE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E454(uint64_t a1)
{
  v2 = sub_24B44EE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B44E490(uint64_t a1)
{
  v2 = sub_24B44EEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E4CC(uint64_t a1)
{
  v2 = sub_24B44EEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B44E508(uint64_t a1)
{
  v2 = sub_24B44EE10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E544(uint64_t a1)
{
  v2 = sub_24B44EE10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B44E580(uint64_t a1)
{
  v2 = sub_24B44EDBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E5BC(uint64_t a1)
{
  v2 = sub_24B44EDBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B44E5F8(uint64_t a1)
{
  v2 = sub_24B44ED68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E634(uint64_t a1)
{
  v2 = sub_24B44ED68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardDetailAction.encode(to:)(void *a1, int a2)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9488, &qword_24B464EA0);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9490, &qword_24B464EA8);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9498, &qword_24B464EB0);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v37 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE94A0, &qword_24B464EB8);
  v47 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE94A8, &qword_24B464EC0);
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE94B0, &qword_24B464EC8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE94B8, &qword_24B464ED0);
  v18 = *(v17 - 8);
  v48 = v17;
  v49 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B44ED14();
  v21 = v50;
  sub_24B45928C();
  if (v21 > 3u)
  {
    switch(v21)
    {
      case 4u:
        v55 = 3;
        sub_24B44EE10();
        v22 = v37;
        v23 = v48;
        sub_24B45910C();
        v25 = v39;
        v24 = v40;
        goto LABEL_11;
      case 5u:
        v56 = 4;
        sub_24B44EDBC();
        v22 = v41;
        v23 = v48;
        sub_24B45910C();
        v25 = v42;
        v24 = v43;
        goto LABEL_11;
      case 6u:
        v57 = 5;
        sub_24B44ED68();
        v22 = v44;
        v23 = v48;
        sub_24B45910C();
        v25 = v45;
        v24 = v46;
LABEL_11:
        (*(v25 + 8))(v22, v24);
        return (*(v49 + 8))(v20, v23);
    }

    goto LABEL_14;
  }

  v26 = v14;
  v27 = v47;
  if (v21 != 2)
  {
    if (v21 == 3)
    {
      v54 = 2;
      sub_24B44EE64();
      v28 = v48;
      sub_24B45910C();
      (*(v27 + 8))(v11, v9);
      return (*(v49 + 8))(v20, v28);
    }

LABEL_14:
    v53 = 1;
    sub_24B44EEB8();
    v31 = v35;
    v32 = v48;
    sub_24B45910C();
    v52 = v21 & 1;
    sub_24B4007C4();
    v33 = v38;
    sub_24B45918C();
    (*(v36 + 8))(v31, v33);
    return (*(v49 + 8))(v20, v32);
  }

  v51 = 0;
  sub_24B44EF0C();
  v30 = v48;
  sub_24B45910C();
  (*(v26 + 8))(v16, v13);
  return (*(v49 + 8))(v20, v30);
}

unint64_t sub_24B44ED14()
{
  result = qword_27EFE94C0;
  if (!qword_27EFE94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94C0);
  }

  return result;
}

unint64_t sub_24B44ED68()
{
  result = qword_27EFE94C8;
  if (!qword_27EFE94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94C8);
  }

  return result;
}

unint64_t sub_24B44EDBC()
{
  result = qword_27EFE94D0;
  if (!qword_27EFE94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94D0);
  }

  return result;
}

unint64_t sub_24B44EE10()
{
  result = qword_27EFE94D8;
  if (!qword_27EFE94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94D8);
  }

  return result;
}

unint64_t sub_24B44EE64()
{
  result = qword_27EFE94E0;
  if (!qword_27EFE94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94E0);
  }

  return result;
}

unint64_t sub_24B44EEB8()
{
  result = qword_27EFE94E8;
  if (!qword_27EFE94E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94E8);
  }

  return result;
}

unint64_t sub_24B44EF0C()
{
  result = qword_27EFE94F0;
  if (!qword_27EFE94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94F0);
  }

  return result;
}

uint64_t sub_24B44EF78@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B44F1C8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24B44EFC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000024B4671D0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B4671F0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B467210 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B467230 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024B467250 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B44F1C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9578, &qword_24B465568);
  v3 = *(v2 - 8);
  v50 = v2;
  v51 = v3;
  MEMORY[0x28223BE20](v2);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9580, &qword_24B465570);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9588, &qword_24B465578);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9590, &qword_24B465580);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9598, &qword_24B465588);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE95A0, &qword_24B465590);
  v41 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE95A8, &qword_24B465598);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24B44ED14();
  v22 = v56;
  sub_24B45927C();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v40 = v13;
    v24 = v53;
    v25 = v54;
    v14 = v55;
    v56 = 0;
    v26 = sub_24B4590FC();
    v27 = (2 * *(v26 + 16)) | 1;
    v58 = v26;
    v59 = v26 + 32;
    v60 = 0;
    v61 = v27;
    v28 = sub_24B3E3818();
    if (v28 == 6 || v60 != v61 >> 1)
    {
      v14 = sub_24B458FFC();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
      *v33 = &type metadata for AwardDetailAction;
      v34 = v20;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v14 - 8) + 104))(v33, *MEMORY[0x277D84160], v14);
      swift_willThrow();
    }

    else
    {
      if (v28 <= 2u)
      {
        if (v28)
        {
          v29 = v56;
          if (v28 == 1)
          {
            v62 = 1;
            sub_24B44EEB8();
            v30 = v40;
            sub_24B45905C();
            if (!v29)
            {
              sub_24B4008C0();
              v31 = v43;
              sub_24B4590EC();
              (*(v42 + 8))(v30, v31);
              (*(v18 + 8))(v20, v17);
              swift_unknownObjectRelease();
              v14 = v62;
              goto LABEL_12;
            }
          }

          else
          {
            v62 = 2;
            sub_24B44EE64();
            v14 = v52;
            sub_24B45905C();
            if (!v29)
            {
              (*(v44 + 8))(v14, v45);
              (*(v18 + 8))(v20, v17);
              swift_unknownObjectRelease();
              v14 = 3;
              goto LABEL_12;
            }
          }
        }

        else
        {
          v62 = 0;
          sub_24B44EF0C();
          v37 = v56;
          sub_24B45905C();
          if (!v37)
          {
            (*(v41 + 8))(v23, v39);
            (*(v18 + 8))(v20, v17);
            swift_unknownObjectRelease();
            v14 = 2;
            goto LABEL_12;
          }
        }

        (*(v18 + 8))(v20, v17);
LABEL_11:
        swift_unknownObjectRelease();
        goto LABEL_12;
      }

      v34 = v20;
      if (v28 == 3)
      {
        v62 = 3;
        sub_24B44EE10();
        v14 = v24;
        v38 = v56;
        sub_24B45905C();
        if (!v38)
        {
          (*(v46 + 8))(v24, v47);
          (*(v18 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v14 = 4;
          goto LABEL_12;
        }
      }

      else
      {
        v36 = v56;
        if (v28 == 4)
        {
          v62 = 4;
          sub_24B44EDBC();
          v14 = v25;
          sub_24B45905C();
          if (!v36)
          {
            (*(v48 + 8))(v25, v49);
            (*(v18 + 8))(v20, v17);
            swift_unknownObjectRelease();
            v14 = 5;
            goto LABEL_12;
          }
        }

        else
        {
          v62 = 5;
          sub_24B44ED68();
          sub_24B45905C();
          if (!v36)
          {
            (*(v51 + 8))(v14, v50);
            (*(v18 + 8))(v20, v17);
            swift_unknownObjectRelease();
            v14 = 6;
            goto LABEL_12;
          }
        }
      }
    }

    (*(v18 + 8))(v34, v17);
    goto LABEL_11;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v14;
}

uint64_t getEnumTagSinglePayload for AwardDetailAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 6)
  {
    return v8 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AwardDetailAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
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

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24B44FBFC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24B44FC10(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_24B44FCA4()
{
  result = qword_27EFE94F8;
  if (!qword_27EFE94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94F8);
  }

  return result;
}

unint64_t sub_24B44FCFC()
{
  result = qword_27EFE9500;
  if (!qword_27EFE9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9500);
  }

  return result;
}

unint64_t sub_24B44FD54()
{
  result = qword_27EFE9508;
  if (!qword_27EFE9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9508);
  }

  return result;
}

unint64_t sub_24B44FDAC()
{
  result = qword_27EFE9510;
  if (!qword_27EFE9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9510);
  }

  return result;
}

unint64_t sub_24B44FE04()
{
  result = qword_27EFE9518;
  if (!qword_27EFE9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9518);
  }

  return result;
}

unint64_t sub_24B44FE5C()
{
  result = qword_27EFE9520;
  if (!qword_27EFE9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9520);
  }

  return result;
}

unint64_t sub_24B44FEB4()
{
  result = qword_27EFE9528;
  if (!qword_27EFE9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9528);
  }

  return result;
}

unint64_t sub_24B44FF0C()
{
  result = qword_27EFE9530;
  if (!qword_27EFE9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9530);
  }

  return result;
}

unint64_t sub_24B44FF64()
{
  result = qword_27EFE9538;
  if (!qword_27EFE9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9538);
  }

  return result;
}

unint64_t sub_24B44FFBC()
{
  result = qword_27EFE9540;
  if (!qword_27EFE9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9540);
  }

  return result;
}

unint64_t sub_24B450014()
{
  result = qword_27EFE9548;
  if (!qword_27EFE9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9548);
  }

  return result;
}

unint64_t sub_24B45006C()
{
  result = qword_27EFE9550;
  if (!qword_27EFE9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9550);
  }

  return result;
}

unint64_t sub_24B4500C4()
{
  result = qword_27EFE9558;
  if (!qword_27EFE9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9558);
  }

  return result;
}

unint64_t sub_24B45011C()
{
  result = qword_27EFE9560;
  if (!qword_27EFE9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9560);
  }

  return result;
}

unint64_t sub_24B450174()
{
  result = qword_27EFE9568;
  if (!qword_27EFE9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9568);
  }

  return result;
}

unint64_t sub_24B4501CC()
{
  result = qword_27EFE9570;
  if (!qword_27EFE9570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9570);
  }

  return result;
}

__n128 AwardToastState.init(toastDetail:layout:isTabSelected:scrollPositionIdentifier:shouldDeepLink:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = a2->n128_u64[0];
  v11 = a2->n128_u8[8];
  *a7 = *a1;
  *(a7 + 16) = v7;
  *(a7 + 24) = *(a1 + 24);
  *(a7 + 40) = v8;
  *(a7 + 48) = v9;
  *(a7 + 56) = v10;
  *(a7 + 64) = v11;
  result = a2[1];
  *(a7 + 72) = result;
  *(a7 + 88) = a3;
  *(a7 + 96) = a4;
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  return result;
}

uint64_t AwardToastState.toastDetail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

__n128 AwardToastState.layout.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 64);
  a1->n128_u64[0] = *(v1 + 56);
  a1->n128_u8[8] = v2;
  result = *(v1 + 72);
  a1[1] = result;
  return result;
}

uint64_t AwardToastState.scrollPositionIdentifier.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t AwardToastState.scrollPositionIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t sub_24B4503E0()
{
  v1 = *v0;
  v2 = 0x7465447473616F74;
  v3 = 0x6C65536261547369;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0x6544646C756F6873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74756F79616CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B45049C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4512BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4504C4(uint64_t a1)
{
  v2 = sub_24B450844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B450500(uint64_t a1)
{
  v2 = sub_24B450844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastState.encode(to:)(void *a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE95B0, &qword_24B4655A0);
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = v17 - v3;
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v23 = v1[3];
  v24 = v5;
  v8 = v1[4];
  v9 = v1[5];
  v35 = *(v1 + 48);
  v22 = v1[7];
  LODWORD(v5) = *(v1 + 64);
  v10 = v1[9];
  v11 = v1[10];
  v20 = *(v1 + 88);
  v21 = v5;
  v12 = v1[12];
  v18 = v1[13];
  v19 = v12;
  v17[1] = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B450844();

  sub_24B45928C();
  v13 = v25;
  v28 = v6;
  v29 = v24;
  v30 = v7;
  v31 = v23;
  v32 = v8;
  v33 = v9;
  v34 = v35;
  v36 = 0;
  sub_24B3E0FC0();
  v14 = v26;
  sub_24B45918C();
  if (v14)
  {

    return (*(v27 + 8))(v4, v13);
  }

  else
  {
    v16 = v27;

    v28 = v22;
    LOBYTE(v29) = v21;
    v30 = v10;
    v31 = v11;
    v36 = 1;
    sub_24B450898();
    sub_24B45918C();
    LOBYTE(v28) = 2;
    sub_24B45915C();
    LOBYTE(v28) = 3;
    sub_24B45911C();
    LOBYTE(v28) = 4;
    sub_24B45915C();
    return (*(v16 + 8))(v4, v13);
  }
}

unint64_t sub_24B450844()
{
  result = qword_27EFE95B8;
  if (!qword_27EFE95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE95B8);
  }

  return result;
}

unint64_t sub_24B450898()
{
  result = qword_27EFE95C0;
  if (!qword_27EFE95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE95C0);
  }

  return result;
}

uint64_t AwardToastState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE95C8, &qword_24B4655A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B450844();
  sub_24B45927C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v42) = 0;
  sub_24B3E24DC();
  sub_24B4590EC();
  v40 = v50;
  v37 = v51;
  v9 = v53;
  v39 = v52;
  v41 = v54;
  v38 = v55;
  v10 = v56;
  LOBYTE(v42) = 1;
  sub_24B450DBC();
  sub_24B4590EC();
  v35 = v10;
  v36 = v9;
  v11 = v50;
  v12 = v52;
  v13 = v53;
  v65 = v51;
  LOBYTE(v50) = 2;
  v34 = sub_24B4590BC();
  LOBYTE(v50) = 3;
  v14 = sub_24B45907C();
  v16 = v15;
  v33 = v14;
  v66 = 4;
  v17 = sub_24B4590BC();
  v34 &= 1u;
  (*(v6 + 8))(v8, v5);
  v18 = v40;
  *&v42 = v40;
  *(&v42 + 1) = v37;
  v19 = v39;
  *&v43 = v39;
  *(&v43 + 1) = v36;
  *&v44 = v41;
  v20 = v11;
  v32 = v11;
  v21 = v38;
  *(&v44 + 1) = v38;
  LOBYTE(v45) = v35;
  *(&v45 + 1) = v20;
  v31 = v65;
  LOBYTE(v46) = v65;
  *(&v46 + 1) = v12;
  *&v47 = v13;
  BYTE8(v47) = v34;
  v22 = v33;
  *&v48 = v33;
  *(&v48 + 1) = v16;
  v17 &= 1u;
  v49 = v17;
  v23 = v42;
  v24 = v43;
  v25 = v45;
  *(a2 + 32) = v44;
  *(a2 + 48) = v25;
  *a2 = v23;
  *(a2 + 16) = v24;
  v26 = v46;
  v27 = v47;
  v28 = v48;
  *(a2 + 112) = v17;
  *(a2 + 80) = v27;
  *(a2 + 96) = v28;
  *(a2 + 64) = v26;
  sub_24B450E10(&v42, &v50);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v50 = v18;
  v51 = v37;
  v52 = v19;
  v53 = v36;
  v54 = v41;
  v55 = v21;
  v56 = v35;
  v57 = v32;
  v58 = v31;
  v59 = v12;
  v60 = v13;
  v61 = v34;
  v62 = v22;
  v63 = v16;
  v64 = v17;
  return sub_24B450E48(&v50);
}

unint64_t sub_24B450DBC()
{
  result = qword_27EFE95D0;
  if (!qword_27EFE95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE95D0);
  }

  return result;
}

uint64_t _s13FitnessAwards15AwardToastStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(a1 + 48);
  v9 = *(a1 + 7);
  v10 = *(a1 + 64);
  v12 = *(a1 + 9);
  v11 = *(a1 + 10);
  v33 = *(a1 + 88);
  v28 = a1[12];
  v32 = a1[13];
  v30 = *(a1 + 112);
  v14 = *a2;
  v13 = a2[1];
  v16 = a2[2];
  v15 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v19 = *(a2 + 48);
  v20 = *(a2 + 7);
  v21 = *(a2 + 64);
  v23 = *(a2 + 9);
  v22 = *(a2 + 10);
  v24 = *(a2 + 88);
  v27 = a2[12];
  v31 = a2[13];
  v29 = *(a2 + 112);
  v36[0] = v3;
  v36[1] = v2;
  v36[2] = v5;
  v36[3] = v4;
  v36[4] = v7;
  v36[5] = v6;
  v37 = v8;
  v34[0] = v14;
  v34[1] = v13;
  v34[2] = v16;
  v34[3] = v15;
  v34[4] = v17;
  v34[5] = v18;
  v35 = v19;

  LOBYTE(v18) = _s13FitnessAwards16AwardToastDetailV2eeoiySbAC_ACtFZ_0(v36, v34);

  result = 0;
  if ((v18 & 1) == 0)
  {
    return result;
  }

  if (v10)
  {
    if (!v21)
    {
      return result;
    }
  }

  else
  {
    if (v9 == v20)
    {
      v26 = v21;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return result;
    }
  }

  if (v12 == v23 && v11 == v22 && ((v33 ^ v24) & 1) == 0)
  {
    if (v32)
    {
      if (v31 && (v28 == v27 && v32 == v31 || (sub_24B4591AC() & 1) != 0))
      {
        return v30 ^ v29 ^ 1u;
      }
    }

    else if (!v31)
    {
      return v30 ^ v29 ^ 1u;
    }

    return 0;
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24B4510EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_24B451134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B4511B8()
{
  result = qword_27EFE95D8;
  if (!qword_27EFE95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE95D8);
  }

  return result;
}

unint64_t sub_24B451210()
{
  result = qword_27EFE95E0;
  if (!qword_27EFE95E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE95E0);
  }

  return result;
}

unint64_t sub_24B451268()
{
  result = qword_27EFE95E8;
  if (!qword_27EFE95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE95E8);
  }

  return result;
}

uint64_t sub_24B4512BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465447473616F74 && a2 == 0xEB000000006C6961;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65536261547369 && a2 == 0xED00006465746365 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024B467270 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6544646C756F6873 && a2 == 0xEE006B6E694C7065)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24B451498(uint64_t a1)
{
  v2 = sub_24B45209C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4514D4(uint64_t a1)
{
  v2 = sub_24B45209C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B451510()
{
  v1 = *v0;
  v2 = 0x74756F6C6C6163;
  v3 = 0x32656C746974;
  v4 = 0x33656C746974;
  if (v1 != 4)
  {
    v4 = 0x6C64616568627573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746F6E746F6F66;
  if (v1 != 1)
  {
    v5 = 0x656E696C64616568;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4515CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B452F48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4515F4(uint64_t a1)
{
  v2 = sub_24B451EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B451630(uint64_t a1)
{
  v2 = sub_24B451EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B45166C(uint64_t a1)
{
  v2 = sub_24B452048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4516A8(uint64_t a1)
{
  v2 = sub_24B452048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4516E4(uint64_t a1)
{
  v2 = sub_24B451FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B451720(uint64_t a1)
{
  v2 = sub_24B451FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B45175C(uint64_t a1)
{
  v2 = sub_24B451EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B451798(uint64_t a1)
{
  v2 = sub_24B451EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4517D4(uint64_t a1)
{
  v2 = sub_24B451FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B451810(uint64_t a1)
{
  v2 = sub_24B451FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B45184C(uint64_t a1)
{
  v2 = sub_24B451F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B451888(uint64_t a1)
{
  v2 = sub_24B451F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FontStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE95F0, &qword_24B4657B0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE95F8, &qword_24B4657B8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9600, &qword_24B4657C0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9608, &qword_24B4657C8);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9610, &qword_24B4657D0);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9618, &qword_24B4657D8);
  v26 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9620, &qword_24B4657E0);
  v16 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B451EA4();
  sub_24B45928C();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_24B451FA0();
      v21 = v33;
      v22 = v42;
      sub_24B45910C();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_24B451F4C();
      v21 = v36;
      v22 = v42;
      sub_24B45910C();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_24B451EF8();
      v21 = v39;
      v22 = v42;
      sub_24B45910C();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_24B452048();
      v21 = v27;
      v22 = v42;
      sub_24B45910C();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_24B451FF4();
      v21 = v30;
      v22 = v42;
      sub_24B45910C();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_24B45209C();
  v22 = v42;
  sub_24B45910C();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_24B451EA4()
{
  result = qword_27EFE9628;
  if (!qword_27EFE9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9628);
  }

  return result;
}

unint64_t sub_24B451EF8()
{
  result = qword_27EFE9630;
  if (!qword_27EFE9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9630);
  }

  return result;
}

unint64_t sub_24B451F4C()
{
  result = qword_27EFE9638;
  if (!qword_27EFE9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9638);
  }

  return result;
}

unint64_t sub_24B451FA0()
{
  result = qword_27EFE9640;
  if (!qword_27EFE9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9640);
  }

  return result;
}

unint64_t sub_24B451FF4()
{
  result = qword_27EFE9648;
  if (!qword_27EFE9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9648);
  }

  return result;
}

unint64_t sub_24B452048()
{
  result = qword_27EFE9650;
  if (!qword_27EFE9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9650);
  }

  return result;
}

unint64_t sub_24B45209C()
{
  result = qword_27EFE9658;
  if (!qword_27EFE9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9658);
  }

  return result;
}

uint64_t FontStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9660, &qword_24B4657E8);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9668, &qword_24B4657F0);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x28223BE20](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9670, &qword_24B4657F8);
  v46 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9678, &qword_24B465800);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9680, &qword_24B465808);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9688, &qword_24B465810);
  v40 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9690, &unk_24B465818);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24B451EA4();
  v22 = v56;
  sub_24B45927C();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_24B4590FC();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_24B3E3818();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_24B458FFC();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
      *v36 = &type metadata for FontStyle;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_24B451FA0();
          sub_24B45905C();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_24B451F4C();
          sub_24B45905C();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_24B451EF8();
          sub_24B45905C();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_24B452048();
            v31 = v56;
            sub_24B45905C();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_24B451FF4();
            v31 = v51;
            sub_24B45905C();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_24B45209C();
          sub_24B45905C();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t FontStyle.hashValue.getter()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

unint64_t sub_24B45294C()
{
  result = qword_27EFE9698;
  if (!qword_27EFE9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9698);
  }

  return result;
}

unint64_t sub_24B452A24()
{
  result = qword_27EFE96A0;
  if (!qword_27EFE96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96A0);
  }

  return result;
}

unint64_t sub_24B452A7C()
{
  result = qword_27EFE96A8;
  if (!qword_27EFE96A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96A8);
  }

  return result;
}

unint64_t sub_24B452AD4()
{
  result = qword_27EFE96B0;
  if (!qword_27EFE96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96B0);
  }

  return result;
}

unint64_t sub_24B452B2C()
{
  result = qword_27EFE96B8;
  if (!qword_27EFE96B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96B8);
  }

  return result;
}

unint64_t sub_24B452B84()
{
  result = qword_27EFE96C0;
  if (!qword_27EFE96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96C0);
  }

  return result;
}

unint64_t sub_24B452BDC()
{
  result = qword_27EFE96C8;
  if (!qword_27EFE96C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96C8);
  }

  return result;
}

unint64_t sub_24B452C34()
{
  result = qword_27EFE96D0;
  if (!qword_27EFE96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96D0);
  }

  return result;
}

unint64_t sub_24B452C8C()
{
  result = qword_27EFE96D8;
  if (!qword_27EFE96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96D8);
  }

  return result;
}

unint64_t sub_24B452CE4()
{
  result = qword_27EFE96E0;
  if (!qword_27EFE96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96E0);
  }

  return result;
}

unint64_t sub_24B452D3C()
{
  result = qword_27EFE96E8;
  if (!qword_27EFE96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96E8);
  }

  return result;
}

unint64_t sub_24B452D94()
{
  result = qword_27EFE96F0;
  if (!qword_27EFE96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96F0);
  }

  return result;
}

unint64_t sub_24B452DEC()
{
  result = qword_27EFE96F8;
  if (!qword_27EFE96F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96F8);
  }

  return result;
}

unint64_t sub_24B452E44()
{
  result = qword_27EFE9700;
  if (!qword_27EFE9700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9700);
  }

  return result;
}

unint64_t sub_24B452E9C()
{
  result = qword_27EFE9708;
  if (!qword_27EFE9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9708);
  }

  return result;
}

unint64_t sub_24B452EF4()
{
  result = qword_27EFE9710;
  if (!qword_27EFE9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9710);
  }

  return result;
}

uint64_t sub_24B452F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F6C6C6163 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x32656C746974 && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x33656C746974 && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C64616568627573 && a2 == 0xEB00000000656E69)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B453158()
{
  if (*v0)
  {
    return 0x6570704177656976;
  }

  else
  {
    return 0x707061546D657469;
  }
}

uint64_t sub_24B4531A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x707061546D657469 && a2 == 0xEA00000000006465;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B453288(uint64_t a1)
{
  v2 = sub_24B45371C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4532C4(uint64_t a1)
{
  v2 = sub_24B45371C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B453300(uint64_t a1)
{
  v2 = sub_24B4537C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B45333C(uint64_t a1)
{
  v2 = sub_24B4537C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B453378(uint64_t a1)
{
  v2 = sub_24B453770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4533B4(uint64_t a1)
{
  v2 = sub_24B453770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardLockupAction.hashValue.getter(char a1)
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](a1 & 1);
  return sub_24B45926C();
}

uint64_t AwardLockupAction.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9718, &qword_24B465EA0);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9720, &qword_24B465EA8);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9728, &qword_24B465EB0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B45371C();
  sub_24B45928C();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24B453770();
    sub_24B45910C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24B4537C4();
    sub_24B45910C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24B45371C()
{
  result = qword_2810E3298[0];
  if (!qword_2810E3298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E3298);
  }

  return result;
}

unint64_t sub_24B453770()
{
  result = qword_2810E3270;
  if (!qword_2810E3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3270);
  }

  return result;
}

unint64_t sub_24B4537C4()
{
  result = qword_27EFE9730;
  if (!qword_27EFE9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9730);
  }

  return result;
}

uint64_t sub_24B453834@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B453880(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_24B453880(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9748, &qword_24B466220);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9750, &qword_24B466228);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9758, &unk_24B466230);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B45371C();
  v11 = v26;
  sub_24B45927C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24B4590FC();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24B3E3810();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24B458FFC();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
    *v19 = &type metadata for AwardLockupAction;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24B453770();
    sub_24B45905C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24B4537C4();
    sub_24B45905C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_24B453D40()
{
  result = qword_27EFE9738;
  if (!qword_27EFE9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9738);
  }

  return result;
}

unint64_t sub_24B453DD8()
{
  result = qword_27EFE9740;
  if (!qword_27EFE9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9740);
  }

  return result;
}

unint64_t sub_24B453E30()
{
  result = qword_2810E3278;
  if (!qword_2810E3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3278);
  }

  return result;
}

unint64_t sub_24B453E88()
{
  result = qword_2810E3280;
  if (!qword_2810E3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3280);
  }

  return result;
}

unint64_t sub_24B453EE0()
{
  result = qword_2810E3260;
  if (!qword_2810E3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3260);
  }

  return result;
}

unint64_t sub_24B453F38()
{
  result = qword_2810E3268;
  if (!qword_2810E3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3268);
  }

  return result;
}

unint64_t sub_24B453F90()
{
  result = qword_2810E3288;
  if (!qword_2810E3288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3288);
  }

  return result;
}

unint64_t sub_24B453FE8()
{
  result = qword_2810E3290;
  if (!qword_2810E3290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3290);
  }

  return result;
}

uint64_t AwardRemoteParticipantStatusMonitorEnvironment.init(makeRemoteBrowsingIdentityUpdatedStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

FitnessAwards::AwardDetailLayout __swiftcall AwardDetailLayout.init(ignoresTopSafeArea:isScrollable:)(Swift::Bool ignoresTopSafeArea, Swift::Bool isScrollable)
{
  *v2 = ignoresTopSafeArea;
  v2[1] = isScrollable;
  result.ignoresTopSafeArea = ignoresTopSafeArea;
  return result;
}

uint64_t sub_24B454098()
{
  if (*v0)
  {
    return 0x6C6C6F7263537369;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24B4540E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024B467290 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C6C6F7263537369 && a2 == 0xEC000000656C6261)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24B4591AC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24B4541CC(uint64_t a1)
{
  v2 = sub_24B4543D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B454208(uint64_t a1)
{
  v2 = sub_24B4543D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardDetailLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9760, &qword_24B466290);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4543D0();
  sub_24B45928C();
  v12 = 0;
  sub_24B45915C();
  if (!v2)
  {
    v11 = 1;
    sub_24B45915C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B4543D0()
{
  result = qword_27EFE9768;
  if (!qword_27EFE9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9768);
  }

  return result;
}

uint64_t AwardDetailLayout.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9770, &qword_24B466298);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4543D0();
  sub_24B45927C();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_24B4590BC();
    v13 = 1;
    v11 = sub_24B4590BC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    a2[1] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AwardDetailLayout.hashValue.getter()
{
  sub_24B45922C();
  sub_24B45924C();
  sub_24B45924C();
  return sub_24B45926C();
}

uint64_t sub_24B4546A0()
{
  sub_24B45922C();
  sub_24B45924C();
  sub_24B45924C();
  return sub_24B45926C();
}

uint64_t sub_24B454740(uint64_t a1)
{
  sub_24B45922C();
  sub_24B45924C();
  sub_24B45924C();
  return sub_24B45926C();
}

unint64_t sub_24B4547A0()
{
  result = qword_27EFE9778;
  if (!qword_27EFE9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9778);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwardDetailLayout(unsigned __int16 *a1, unsigned int a2)
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

_WORD *storeEnumTagSinglePayload for AwardDetailLayout(_WORD *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B454994()
{
  result = qword_27EFE9780;
  if (!qword_27EFE9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9780);
  }

  return result;
}

unint64_t sub_24B4549EC()
{
  result = qword_27EFE9788;
  if (!qword_27EFE9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9788);
  }

  return result;
}

unint64_t sub_24B454A44()
{
  result = qword_27EFE9790;
  if (!qword_27EFE9790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9790);
  }

  return result;
}

uint64_t sub_24B454A98(uint64_t a1, uint64_t a2)
{
  v84 = sub_24B45830C();
  v4 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_24B45836C();
  v6 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8A48, &qword_24B460C60);
  MEMORY[0x28223BE20](v89);
  v9 = &v74 - v8;
  State = type metadata accessor for AwardImageLoadState(0);
  v93 = *(State - 8);
  v11 = MEMORY[0x28223BE20](State);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v82 = &v74 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v94 = &v74 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  MEMORY[0x28223BE20](v18);
  v88 = &v74 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8958, &qword_24B4606F8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = (&v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v23);
  v28 = (&v74 - v27);
  v90 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(v90 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v92 = v20;
  v87 = State;
  v29 = 0;
  v30 = *(v90 + 64);
  v78 = v13;
  v79 = v90 + 64;
  v31 = 1 << *(v90 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v34 = v31 + 63;
  v35 = v6;
  v36 = v34 >> 6;
  v75 = (v4 + 32);
  v77 = (v4 + 8);
  v74 = (v35 + 32);
  v76 = (v35 + 8);
  v85 = a2;
  v86 = (&v74 - v27);
  while (v33)
  {
    v91 = (v33 - 1) & v33;
    v37 = __clz(__rbit64(v33)) | (v29 << 6);
LABEL_18:
    v42 = (*(v90 + 48) + 16 * v37);
    v43 = *v42;
    v44 = v42[1];
    v45 = v88;
    sub_24B45680C(*(v90 + 56) + *(v93 + 72) * v37, v88, type metadata accessor for AwardImageLoadState);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8960, &qword_24B460700);
    v47 = *(v46 + 48);
    *v25 = v43;
    v25[1] = v44;
    sub_24B456874(v45, v25 + v47, type metadata accessor for AwardImageLoadState);
    (*(*(v46 - 8) + 56))(v25, 0, 1, v46);
LABEL_19:
    sub_24B41C0B0(v25, v28, &qword_27EFE8958, &qword_24B4606F8);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8960, &qword_24B460700);
    v49 = 1;
    if ((*(*(v48 - 8) + 48))(v28, 1, v48) == 1)
    {
      return v49;
    }

    v50 = v25;
    v51 = *v28;
    v52 = v28[1];
    v53 = v92;
    sub_24B456874(v28 + *(v48 + 48), v92, type metadata accessor for AwardImageLoadState);
    v54 = sub_24B4121B8(v51, v52);
    if ((v55 & 1) == 0)
    {
      sub_24B4568DC(v53, type metadata accessor for AwardImageLoadState);
      return 0;
    }

    v56 = v94;
    sub_24B45680C(*(a2 + 56) + *(v93 + 72) * v54, v94, type metadata accessor for AwardImageLoadState);
    v57 = *(v89 + 48);
    sub_24B45680C(v56, v9, type metadata accessor for AwardImageLoadState);
    sub_24B45680C(v53, &v9[v57], type metadata accessor for AwardImageLoadState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v59 = v78;
        sub_24B45680C(v9, v78, type metadata accessor for AwardImageLoadState);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_24B4568DC(v94, type metadata accessor for AwardImageLoadState);
          sub_24B4568DC(v92, type metadata accessor for AwardImageLoadState);
          (*v77)(v59, v84);
          goto LABEL_35;
        }

        v60 = &v9[v57];
        v61 = v81;
        v62 = v84;
        (*v75)(v81, v60, v84);
        v63 = sub_24B4582EC();
        v64 = *v77;
        (*v77)(v61, v62);
        sub_24B4568DC(v94, type metadata accessor for AwardImageLoadState);
        sub_24B4568DC(v92, type metadata accessor for AwardImageLoadState);
        v65 = v62;
        v25 = v50;
        v64(v59, v65);
        a2 = v85;
        if ((v63 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v25 = v50;
        sub_24B4568DC(v94, type metadata accessor for AwardImageLoadState);
        sub_24B4568DC(v92, type metadata accessor for AwardImageLoadState);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v66 = v82;
      sub_24B45680C(v9, v82, type metadata accessor for AwardImageLoadState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_24B4568DC(v94, type metadata accessor for AwardImageLoadState);
        sub_24B4568DC(v92, type metadata accessor for AwardImageLoadState);
        (*v76)(v66, v83);
LABEL_35:
        sub_24B3DF4F0(v9, &qword_27EFE8A48, &qword_24B460C60);
        return 0;
      }

      v25 = v50;
      v67 = &v9[v57];
      v68 = v80;
      v69 = v83;
      (*v74)(v80, v67, v83);
      v70 = sub_24B45834C();
      v71 = v66;
      v72 = *v76;
      (*v76)(v68, v69);
      sub_24B4568DC(v94, type metadata accessor for AwardImageLoadState);
      sub_24B4568DC(v92, type metadata accessor for AwardImageLoadState);
      v72(v71, v69);
      a2 = v85;
      if ((v70 & 1) == 0)
      {
LABEL_32:
        sub_24B4568DC(v9, type metadata accessor for AwardImageLoadState);
        return 0;
      }
    }

    result = sub_24B4568DC(v9, type metadata accessor for AwardImageLoadState);
    v28 = v86;
    v33 = v91;
  }

  if (v36 <= v29 + 1)
  {
    v38 = v29 + 1;
  }

  else
  {
    v38 = v36;
  }

  v39 = v38 - 1;
  while (1)
  {
    v40 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v40 >= v36)
    {
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8960, &qword_24B460700);
      (*(*(v73 - 8) + 56))(v25, 1, 1, v73);
      v91 = 0;
      v29 = v39;
      goto LABEL_19;
    }

    v41 = *(v79 + 8 * v40);
    ++v29;
    if (v41)
    {
      v91 = (v41 - 1) & v41;
      v37 = __clz(__rbit64(v41)) | (v40 << 6);
      v29 = v40;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B45540C(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v10 = __clz(__rbit64(v8));
          v11 = (v8 - 1) & v8;
          goto LABEL_13;
        }

        v12 = v4;
        do
        {
          v4 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_156;
          }

          if (v4 >= v9)
          {
            return 1;
          }

          v13 = *(v5 + 8 * v4);
          ++v12;
        }

        while (!v13);
        v10 = __clz(__rbit64(v13));
        v11 = (v13 - 1) & v13;
LABEL_13:
        v14 = 16 * (v10 | (v4 << 6));
        v15 = (*(v3 + 48) + v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*(v3 + 56) + v14);
        v20 = *v18;
        v19 = v18[1];

        sub_24B41C178(v20, v19);
        result = v17 == 0;
        if (!v17)
        {
          return result;
        }

        v90 = v11;
        v22 = sub_24B412140(v16, v17);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          goto LABEL_152;
        }

        v25 = (*(v2 + 56) + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = v27 >> 62;
        v29 = v19 >> 62;
        if (v27 >> 62 == 3)
        {
          if (v26)
          {
            v30 = 0;
          }

          else
          {
            v30 = v27 == 0xC000000000000000;
          }

          v31 = 0;
          v32 = v30 && v19 >> 62 == 3;
          if (v32 && !v20 && v19 == 0xC000000000000000)
          {
            v33 = 0;
            v34 = 0xC000000000000000;
            goto LABEL_55;
          }

LABEL_36:
          if (v29 <= 1)
          {
LABEL_37:
            if (!v29)
            {
              v38 = BYTE6(v19);
              goto LABEL_43;
            }

            LODWORD(v38) = HIDWORD(v20) - v20;
            if (!__OFSUB__(HIDWORD(v20), v20))
            {
              v38 = v38;
              goto LABEL_43;
            }

LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
          }
        }

        else if (v28 > 1)
        {
          if (v28 == 2)
          {
            v40 = *(v26 + 16);
            v39 = *(v26 + 24);
            v37 = __OFSUB__(v39, v40);
            v31 = v39 - v40;
            if (!v37)
            {
              goto LABEL_36;
            }

            goto LABEL_158;
          }

          v31 = 0;
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        else if (v28)
        {
          LODWORD(v31) = HIDWORD(v26) - v26;
          if (__OFSUB__(HIDWORD(v26), v26))
          {
            goto LABEL_159;
          }

          v31 = v31;
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v31 = BYTE6(v27);
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        if (v29 != 2)
        {
          if (v31)
          {
            goto LABEL_152;
          }

          goto LABEL_54;
        }

        v36 = *(v20 + 16);
        v35 = *(v20 + 24);
        v37 = __OFSUB__(v35, v36);
        v38 = v35 - v36;
        if (v37)
        {
          goto LABEL_157;
        }

LABEL_43:
        if (v31 != v38)
        {
LABEL_152:
          sub_24B41C1CC(v20, v19);
          return 0;
        }

        if (v31 >= 1)
        {
          break;
        }

LABEL_54:
        v33 = v20;
        v34 = v19;
LABEL_55:
        sub_24B41C1CC(v33, v34);
        v8 = v90;
      }

      if (v28 > 1)
      {
        break;
      }

      if (!v28)
      {
        __s1[0] = v26;
        LOWORD(__s1[1]) = v27;
        BYTE2(__s1[1]) = BYTE2(v27);
        BYTE3(__s1[1]) = BYTE3(v27);
        BYTE4(__s1[1]) = BYTE4(v27);
        BYTE5(__s1[1]) = BYTE5(v27);
        if (v29)
        {
          v88 = v26;
          if (v29 == 1)
          {
            v80 = ((v20 >> 32) - v20);
            if (v20 >> 32 < v20)
            {
              goto LABEL_164;
            }

            sub_24B41C178(v26, v27);
            v41 = sub_24B4582BC();
            if (!v41)
            {
              goto LABEL_183;
            }

            v42 = v41;
            v43 = sub_24B4582DC();
            if (__OFSUB__(v20, v43))
            {
              goto LABEL_168;
            }

            v44 = (v20 - v43 + v42);
            result = sub_24B4582CC();
            v8 = v90;
            if (!v44)
            {
              goto LABEL_190;
            }

            goto LABEL_75;
          }

          v67 = *(v20 + 16);
          v84 = *(v20 + 24);
          sub_24B41C178(v26, v27);
          v64 = sub_24B4582BC();
          v87 = v2;
          if (v64)
          {
            v68 = sub_24B4582DC();
            if (__OFSUB__(v67, v68))
            {
              goto LABEL_174;
            }

            v64 += v67 - v68;
          }

          v66 = v84 - v67;
          if (__OFSUB__(v84, v67))
          {
            goto LABEL_166;
          }

          result = sub_24B4582CC();
          v8 = v90;
          if (!v64)
          {
            goto LABEL_184;
          }

          goto LABEL_117;
        }

        goto LABEL_79;
      }

      v86 = v2;
      v49 = v26;
      if (v26 > v26 >> 32)
      {
        goto LABEL_160;
      }

      v88 = v26;
      sub_24B41C178(v26, v27);
      v50 = sub_24B4582BC();
      if (v50)
      {
        v51 = v50;
        v52 = sub_24B4582DC();
        if (__OFSUB__(v49, v52))
        {
          goto LABEL_162;
        }

        v82 = (v49 - v52 + v51);
      }

      else
      {
        v82 = 0;
      }

      sub_24B4582CC();
      v3 = a1;
      if (v29 == 2)
      {
        v76 = *(v20 + 16);
        v75 = *(v20 + 24);
        v44 = sub_24B4582BC();
        if (v44)
        {
          v77 = sub_24B4582DC();
          if (__OFSUB__(v76, v77))
          {
            goto LABEL_176;
          }

          v44 += v76 - v77;
        }

        v37 = __OFSUB__(v75, v76);
        v78 = v75 - v76;
        if (v37)
        {
          goto LABEL_172;
        }

        v79 = sub_24B4582CC();
        if (v79 >= v78)
        {
          v60 = v78;
        }

        else
        {
          v60 = v79;
        }

        v8 = v90;
        result = v82;
        if (!v82)
        {
          goto LABEL_194;
        }

        v2 = v86;
        if (!v44)
        {
          goto LABEL_193;
        }
      }

      else
      {
        if (v29 != 1)
        {
          result = v82;
          v2 = v86;
          __s1[0] = v20;
          LOWORD(__s1[1]) = v19;
          BYTE2(__s1[1]) = BYTE2(v19);
          BYTE3(__s1[1]) = BYTE3(v19);
          BYTE4(__s1[1]) = BYTE4(v19);
          BYTE5(__s1[1]) = BYTE5(v19);
          v8 = v90;
          if (!v82)
          {
            goto LABEL_191;
          }

          goto LABEL_148;
        }

        if (v20 >> 32 < v20)
        {
          goto LABEL_171;
        }

        v44 = sub_24B4582BC();
        if (v44)
        {
          v61 = sub_24B4582DC();
          if (__OFSUB__(v20, v61))
          {
            goto LABEL_178;
          }

          v44 += v20 - v61;
        }

        v2 = v86;
        v62 = sub_24B4582CC();
        if (v62 >= (v20 >> 32) - v20)
        {
          v60 = (v20 >> 32) - v20;
        }

        else
        {
          v60 = v62;
        }

        result = v82;
        if (!v82)
        {
          goto LABEL_182;
        }

        v8 = v90;
        if (!v44)
        {
          goto LABEL_181;
        }
      }

LABEL_142:
      if (result != v44)
      {
        v56 = v60;
        goto LABEL_145;
      }

      sub_24B41C1CC(v88, v27);
      sub_24B41C1CC(v20, v19);
      v3 = a1;
    }

    if (v28 == 2)
    {
      v85 = v2;
      v88 = v26;
      v45 = *(v26 + 16);
      sub_24B41C178(v26, v27);
      v46 = sub_24B4582BC();
      if (v46)
      {
        v47 = v46;
        v48 = sub_24B4582DC();
        if (__OFSUB__(v45, v48))
        {
          goto LABEL_161;
        }

        v81 = (v45 - v48 + v47);
      }

      else
      {
        v81 = 0;
      }

      sub_24B4582CC();
      v3 = a1;
      if (v29 == 2)
      {
        v71 = *(v20 + 16);
        v70 = *(v20 + 24);
        v44 = sub_24B4582BC();
        if (v44)
        {
          v72 = sub_24B4582DC();
          if (__OFSUB__(v71, v72))
          {
            goto LABEL_175;
          }

          v44 += v71 - v72;
        }

        v37 = __OFSUB__(v70, v71);
        v73 = v70 - v71;
        if (v37)
        {
          goto LABEL_170;
        }

        v74 = sub_24B4582CC();
        if (v74 >= v73)
        {
          v60 = v73;
        }

        else
        {
          v60 = v74;
        }

        v8 = v90;
        result = v81;
        if (!v81)
        {
          goto LABEL_187;
        }

        v2 = v85;
        if (!v44)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v29 != 1)
        {
          result = v81;
          v2 = v85;
          __s1[0] = v20;
          LOWORD(__s1[1]) = v19;
          BYTE2(__s1[1]) = BYTE2(v19);
          BYTE3(__s1[1]) = BYTE3(v19);
          BYTE4(__s1[1]) = BYTE4(v19);
          BYTE5(__s1[1]) = BYTE5(v19);
          v8 = v90;
          if (!v81)
          {
            goto LABEL_185;
          }

LABEL_148:
          v57 = memcmp(result, __s1, BYTE6(v19));
          sub_24B41C1CC(v88, v27);
          sub_24B41C1CC(v20, v19);
          goto LABEL_149;
        }

        if (v20 >> 32 < v20)
        {
          goto LABEL_167;
        }

        v44 = sub_24B4582BC();
        if (v44)
        {
          v58 = sub_24B4582DC();
          if (__OFSUB__(v20, v58))
          {
            goto LABEL_177;
          }

          v44 += v20 - v58;
        }

        v2 = v85;
        v59 = sub_24B4582CC();
        if (v59 >= (v20 >> 32) - v20)
        {
          v60 = (v20 >> 32) - v20;
        }

        else
        {
          v60 = v59;
        }

        result = v81;
        if (!v81)
        {
          goto LABEL_189;
        }

        v8 = v90;
        if (!v44)
        {
          goto LABEL_188;
        }
      }

      goto LABEL_142;
    }

    memset(__s1, 0, 14);
    if (v29 == 2)
    {
      v63 = *(v20 + 16);
      v83 = *(v20 + 24);
      v88 = v26;
      sub_24B41C178(v26, v27);
      v64 = sub_24B4582BC();
      v87 = v2;
      if (v64)
      {
        v65 = sub_24B4582DC();
        if (__OFSUB__(v63, v65))
        {
          goto LABEL_173;
        }

        v64 += v63 - v65;
      }

      v66 = v83 - v63;
      if (__OFSUB__(v83, v63))
      {
        goto LABEL_165;
      }

      result = sub_24B4582CC();
      v8 = v90;
      if (!v64)
      {
        goto LABEL_192;
      }

LABEL_117:
      if (result >= v66)
      {
        v69 = v66;
      }

      else
      {
        v69 = result;
      }

      v57 = memcmp(__s1, v64, v69);
      sub_24B41C1CC(v88, v27);
      sub_24B41C1CC(v20, v19);
      v2 = v87;
      goto LABEL_146;
    }

    if (v29 == 1)
    {
      break;
    }

LABEL_79:
    __s2 = v20;
    v92 = v19;
    v93 = BYTE2(v19);
    v94 = BYTE3(v19);
    v95 = BYTE4(v19);
    v96 = BYTE5(v19);
    v57 = memcmp(__s1, &__s2, BYTE6(v19));
    sub_24B41C1CC(v20, v19);
    v8 = v90;
LABEL_149:
    result = 0;
    if (v57)
    {
      return result;
    }
  }

  v80 = ((v20 >> 32) - v20);
  if (v20 >> 32 < v20)
  {
    goto LABEL_163;
  }

  v88 = v26;
  sub_24B41C178(v26, v27);
  v53 = sub_24B4582BC();
  if (v53)
  {
    v54 = v53;
    v55 = sub_24B4582DC();
    if (__OFSUB__(v20, v55))
    {
      goto LABEL_169;
    }

    v44 = (v20 - v55 + v54);
    result = sub_24B4582CC();
    v8 = v90;
    if (!v44)
    {
      goto LABEL_180;
    }

LABEL_75:
    if (result >= v80)
    {
      v56 = v80;
    }

    else
    {
      v56 = result;
    }

    result = __s1;
LABEL_145:
    v57 = memcmp(result, v44, v56);
    sub_24B41C1CC(v88, v27);
    sub_24B41C1CC(v20, v19);
LABEL_146:
    v3 = a1;
    goto LABEL_149;
  }

  sub_24B4582CC();
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  result = sub_24B4582CC();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
  return result;
}

uint64_t AwardImageState.templateUniqueName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AwardImageState.imageLoadState.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t AwardImageState.init(templateUniqueName:size:imageLoadState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_24B455E70()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x616F4C6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24B455ED4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4566E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B455EFC(uint64_t a1)
{
  v2 = sub_24B456198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B455F38(uint64_t a1)
{
  v2 = sub_24B456198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardImageState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9798, &qword_24B4664A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v8 = v1[3];
  v12[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B456198();
  sub_24B45928C();
  LOBYTE(v13) = 0;
  v9 = v12[1];
  sub_24B45914C();
  if (!v9)
  {
    v10 = v12[0];
    v13 = v7;
    v14 = v8;
    v15 = 1;
    type metadata accessor for CGSize();
    sub_24B456494(&qword_2810E2768, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
    sub_24B45918C();
    v13 = v10;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8090, &qword_24B45C2C0);
    sub_24B427158();
    sub_24B45918C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B456198()
{
  result = qword_27EFE97A0;
  if (!qword_27EFE97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE97A0);
  }

  return result;
}

uint64_t AwardImageState.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE97A8, &qword_24B4664B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B456198();
  sub_24B45927C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v17[0]) = 0;
  v9 = sub_24B4590AC();
  v11 = v10;
  v12 = v9;
  type metadata accessor for CGSize();
  v18 = 1;
  sub_24B456494(&qword_27EFE7A60, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
  sub_24B4590EC();
  v13 = v17[0];
  v14 = v17[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8090, &qword_24B45C2C0);
  v18 = 2;
  sub_24B427440();
  sub_24B4590EC();
  (*(v6 + 8))(v8, v5);
  v16 = v17[0];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B456494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s13FitnessAwards15AwardImageStateV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *(a1 + 4);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v8 && (sub_24B4591AC() & 1) == 0)
  {
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    return 0;
  }

  return sub_24B454A98(v4, v7);
}

unint64_t sub_24B4565DC()
{
  result = qword_27EFE97B0;
  if (!qword_27EFE97B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE97B0);
  }

  return result;
}

unint64_t sub_24B456634()
{
  result = qword_27EFE97B8;
  if (!qword_27EFE97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE97B8);
  }

  return result;
}

unint64_t sub_24B45668C()
{
  result = qword_27EFE97C0;
  if (!qword_27EFE97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE97C0);
  }

  return result;
}

uint64_t sub_24B4566E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616F4C6567616D69 && a2 == 0xEE00657461745364)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B45680C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B456874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4568DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 AwardLockupFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for AwardLockupFeature(0);
  sub_24B45835C();
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

uint64_t type metadata accessor for AwardLockupFeature(uint64_t a1)
{
  result = qword_2810E3180;
  if (!qword_2810E3180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardLockupFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v51 = a3;
  v6 = type metadata accessor for AwardLockupFeature(0);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F00, &unk_24B4666A0);
  v12 = *(v50 - 8);
  v13 = MEMORY[0x28223BE20](v50);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v18 = *a2;
  v19 = a2[1];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
  v21 = v20[12];
  v22 = v20[16];
  v46 = v20[20];
  v47 = v21;
  v23 = v20[24];
  if (a4)
  {
    v24 = &v15[v23];
    v52 = v18;
    v53 = v19;
    v54 = 1;
    sub_24B456F68();
    swift_bridgeObjectRetain_n();
    sub_24B458F9C();
    v25 = *MEMORY[0x277D04400];
    v26 = sub_24B458D4C();
    (*(*(v26 - 8) + 104))(&v15[v22], v25, v26);
    v27 = *MEMORY[0x277D043E0];
    v28 = sub_24B458D3C();
    (*(*(v28 - 8) + 104))(&v15[v46], v27, v28);
    sub_24B457670(v49, v9);
    v29 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v18;
    *(v30 + 24) = v19;
    sub_24B4576D4(v9, v30 + v29);
    *v24 = &unk_24B4666B8;
    *(v24 + 1) = v30;
    sub_24B458EFC();
    (*(v12 + 104))(v15, *MEMORY[0x277D043B0], v50);
    v31 = v51;
    v32 = *v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_24B3F152C(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v33 = v32[3];
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v32 = sub_24B3F152C((v33 > 1), v34 + 1, 1, v32);
    }

    v17 = v15;
  }

  else
  {
    v36 = &v17[v23];
    v52 = v18;
    v53 = v19;
    v54 = 0;
    sub_24B456F68();
    swift_bridgeObjectRetain_n();
    sub_24B458F9C();
    v37 = *MEMORY[0x277D043F0];
    v38 = sub_24B458D4C();
    (*(*(v38 - 8) + 104))(&v17[v22], v37, v38);
    sub_24B457670(v49, v11);
    v39 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v18;
    *(v40 + 24) = v19;
    sub_24B4576D4(v11, v40 + v39);
    *v36 = &unk_24B4666C8;
    *(v36 + 1) = v40;
    sub_24B458EFC();
    v41 = *MEMORY[0x277D043E8];
    v42 = sub_24B458D3C();
    (*(*(v42 - 8) + 104))(&v17[v46], v41, v42);
    (*(v12 + 104))(v17, *MEMORY[0x277D043B0], v50);
    v31 = v51;
    v32 = *v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_24B3F152C(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v43 = v32[3];
    v35 = v34 + 1;
    if (v34 >= v43 >> 1)
    {
      v32 = sub_24B3F152C((v43 > 1), v34 + 1, 1, v32);
    }
  }

  v32[2] = v35;
  result = (*(v12 + 32))(v32 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v34, v17);
  *v31 = v32;
  return result;
}

unint64_t sub_24B456F68()
{
  result = qword_2810E3198[0];
  if (!qword_2810E3198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E3198);
  }

  return result;
}

uint64_t sub_24B456FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_24B458EEC();
  v4[5] = sub_24B458EDC();
  v6 = sub_24B458EBC();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24B457058, v6, v5);
}

uint64_t sub_24B457058()
{
  v14 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);

  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24B3F17BC(v5, v4, &v13);
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardLockupFeature] %s lockup tapped, navigating", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  v12 = (**(v0 + 32) + ***(v0 + 32));
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_24B457278;
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);

  return v12(v10, v9);
}

uint64_t sub_24B457278()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_24B457C38;
  }

  else
  {
    v5 = sub_24B40CDC0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B4573B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_24B458EEC();
  v4[5] = sub_24B458EDC();
  v6 = sub_24B458EBC();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24B457450, v6, v5);
}

uint64_t sub_24B457450()
{
  v14 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);

  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24B3F17BC(v5, v4, &v13);
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardHeaderFeature] Resolving award description state on viewAppeared for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  v12 = (*(v0[4] + 16) + **(v0[4] + 16));
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_24B40BE9C;
  v10 = v0[2];
  v9 = v0[3];

  return v12(v10, v9);
}

uint64_t sub_24B457670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardLockupFeature(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4576D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardLockupFeature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B457738(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardLockupFeature(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B3F1E60;

  return sub_24B4573B4(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for AwardLockupFeature(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_24B45836C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24B457928(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardLockupFeature(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B3F2574;

  return sub_24B456FBC(a1, v6, v7, v1 + v5);
}

unint64_t sub_24B457A18()
{
  result = qword_2810E3250;
  if (!qword_2810E3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3250);
  }

  return result;
}

unint64_t sub_24B457A70()
{
  result = qword_2810E3258;
  if (!qword_2810E3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3258);
  }

  return result;
}

unint64_t sub_24B457AC8()
{
  result = qword_2810E33D0[0];
  if (!qword_2810E33D0[0])
  {
    type metadata accessor for AwardLockupState(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E33D0);
  }

  return result;
}

uint64_t sub_24B457B48(uint64_t a1)
{
  result = sub_24B45836C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B457BE4()
{
  result = qword_2810E3190;
  if (!qword_2810E3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3190);
  }

  return result;
}

uint64_t sub_24B457C4C(uint64_t *a1, int a2)
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

uint64_t sub_24B457C94(uint64_t result, int a2, int a3)
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

uint64_t sub_24B457D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_24B458CCC();
  a4[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE97C8, &qword_24B4668E8);
  return sub_24B457D80(a2, a3, a1, a4 + *(v11 + 44));
}

uint64_t sub_24B457D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34[1] = a3;
  v34[0] = a1;
  v39 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE97D0, &qword_24B4668F0);
  v6 = MEMORY[0x28223BE20](v35);
  v38 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v34 - v9;
  MEMORY[0x28223BE20](v8);
  v37 = v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE97D8, &qword_24B4668F8);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v36 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v34 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v34 - v19;
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24B4586DC();
  v23 = *(*(v22 - 8) + 104);
  v23(v20, v21, v22);
  *&v20[*(v13 + 60)] = a2;
  *&v20[*(v13 + 64)] = 256;
  v23(v18, v21, v22);
  *&v18[*(v13 + 60)] = v34[0];
  *&v18[*(v13 + 64)] = 256;

  sub_24B45856C();
  sub_24B458CBC();
  sub_24B45861C();
  sub_24B41C0B0(v18, v10, &qword_27EFE97D8, &qword_24B4668F8);
  v24 = &v10[*(v35 + 36)];
  v25 = v45;
  *(v24 + 4) = v44;
  *(v24 + 5) = v25;
  *(v24 + 6) = v46;
  v26 = v41;
  *v24 = v40;
  *(v24 + 1) = v26;
  v27 = v43;
  *(v24 + 2) = v42;
  *(v24 + 3) = v27;
  v28 = v37;
  sub_24B41C0B0(v10, v37, &qword_27EFE97D0, &qword_24B4668F0);
  v29 = v36;
  sub_24B3DF488(v20, v36, &qword_27EFE97D8, &qword_24B4668F8);
  v30 = v38;
  sub_24B3DF488(v28, v38, &qword_27EFE97D0, &qword_24B4668F0);
  v31 = v39;
  sub_24B3DF488(v29, v39, &qword_27EFE97D8, &qword_24B4668F8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE97E0, &qword_24B466900);
  sub_24B3DF488(v30, v31 + *(v32 + 48), &qword_27EFE97D0, &qword_24B4668F0);
  sub_24B3DF4F0(v28, &qword_27EFE97D0, &qword_24B4668F0);
  sub_24B3DF4F0(v20, &qword_27EFE97D8, &qword_24B4668F8);
  sub_24B3DF4F0(v30, &qword_27EFE97D0, &qword_24B4668F0);
  return sub_24B3DF4F0(v29, &qword_27EFE97D8, &qword_24B4668F8);
}

uint64_t sub_24B4581B0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = COERCE_DOUBLE(sub_24B45877C());
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v5;
  *(v9 + 40) = v8;
  *a1 = sub_24B45824C;
  a1[1] = v9;
}

unint64_t sub_24B458258()
{
  result = qword_27EFE97E8;
  if (!qword_27EFE97E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFE97F0, &qword_24B466908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE97E8);
  }

  return result;
}