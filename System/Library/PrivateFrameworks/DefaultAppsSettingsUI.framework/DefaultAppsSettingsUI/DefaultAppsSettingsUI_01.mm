uint64_t sub_21C5586A8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21C558734(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21C558770()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

unint64_t sub_21C5587D0()
{
  result = qword_27CDDD7B0;
  if (!qword_27CDDD7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD7A0, &qword_21C55E698);
    sub_21C54EDD8(&qword_27CDDD7B8, &qword_27CDDD7C0, &qword_21C55E6A0, MEMORY[0x277CDD7E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD7B0);
  }

  return result;
}

unint64_t sub_21C5588A0()
{
  result = qword_27CDDD810;
  if (!qword_27CDDD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD818, &qword_21C55E6F0);
    sub_21C558984(&qword_27CDDD820, &qword_27CDDD828, &qword_21C55E6F8, sub_21C558A34);
    sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8, MEMORY[0x277D7EA70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD810);
  }

  return result;
}

uint64_t sub_21C558984(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8, MEMORY[0x277D7EA70]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C558A34()
{
  result = qword_27CDDD830;
  if (!qword_27CDDD830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD838, &qword_21C55E700);
    sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8, MEMORY[0x277D7EA70]);
    sub_21C558AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD830);
  }

  return result;
}

unint64_t sub_21C558AEC()
{
  result = qword_27CDDD840;
  if (!qword_27CDDD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD840);
  }

  return result;
}

uint64_t sub_21C558B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C558B88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7F0, &qword_21C55E6E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C558BF8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x21CF0B5C0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v14 = *(v3 + 8 * v12);

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v15 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v15 = MEMORY[0x21CF0B5C0](v12 - 4, a2);
LABEL_26:
        LOBYTE(v4) = _s21DefaultAppsSettingsUI9AppRecordC2eeoiySbAC_ACtFZ_0(v14, v15);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v16 = (v3 + 32);
    v17 = (a2 + 32);
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_40;
      }

      if (!v19)
      {
        break;
      }

      v21 = *v16++;
      a2 = v21;
      v22 = *v17++;
      v3 = v22;

      v4 = _s21DefaultAppsSettingsUI9AppRecordC2eeoiySbAC_ACtFZ_0(a2, v22);

      v24 = v20-- != 0;
      if (v4)
      {
        --v19;
        --v18;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_21C55CDC4();
  }

  result = sub_21C55CDC4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_21C558E38()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
}

uint64_t sub_21C558E74(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21C55CDC4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_21C558ED8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21C558FCC;

  return v5(v2 + 32);
}

uint64_t sub_21C558FCC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_21C5590E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C5441D0;

  return sub_21C553C08(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21C5591A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21C559210(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C55979C;

  return sub_21C556D30(a1, v4);
}

uint64_t sub_21C5592D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_18Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C55937C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C55979C;

  return sub_21C55457C(a1, v4, v5, v6);
}

uint64_t sub_21C559430(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C55979C;

  return sub_21C558ED8(a1, v4);
}

uint64_t sub_21C5594E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C5441D0;

  return sub_21C558ED8(a1, v4);
}

uint64_t sub_21C5595A0()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);

  return sub_21C54FEF4();
}

uint64_t keypath_set_15Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_21C559634()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;
}

uint64_t sub_21C5596AC()
{
  *(*(v0 + 16) + 136) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

_OWORD *sub_21C5596E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21C5596F8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_21C5597F0()
{
  v0 = sub_21C55C714();
  __swift_allocate_value_buffer(v0, qword_27CDDE7A8);
  __swift_project_value_buffer(v0, qword_27CDDE7A8);
  return sub_21C55C704();
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

uint64_t sub_21C5598C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_21C55A9E0(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_21C55B920(a3);
    *v3 = v15;
  }

  else
  {
    v10 = sub_21C559DA4(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!v13)
      {
        sub_21C55B030();
        v14 = v16;
      }

      sub_21C55B920(*(v14 + 48) + 40 * v12);

      sub_21C55A680(v12, v14);
      result = sub_21C55B920(a3);
      *v4 = v14;
    }

    else
    {

      return sub_21C55B920(a3);
    }
  }

  return result;
}

uint64_t sub_21C5599E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_21C543DDC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_21C55AB70(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_21C544404(a1, &unk_27CDDDA40, &qword_21C55DD60);
    sub_21C543F0C(a2, a3, v9);

    return sub_21C544404(v9, &unk_27CDDDA40, &qword_21C55DD60);
  }

  return result;
}

uint64_t sub_21C559AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDDA18, &qword_21C55E910);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_27CDDD970 = result;
  return result;
}

void *sub_21C559AF0()
{
  result = sub_21C55B6C8(MEMORY[0x277D84F90]);
  off_27CDDD978 = result;
  return result;
}

id sub_21C559B18(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtCC21DefaultAppsSettingsUI16LSChangeObserverP33_7689C6B5CF2FFB3629BA237567A0B8718Observer_notify];
  *v3 = a1;
  *(v3 + 1) = a2;
  v4 = objc_allocWithZone(MEMORY[0x277CC1ED0]);

  v5 = [v4 init];
  v6 = [objc_opt_self() mainQueue];
  [v5 setQueue_];

  *&v2[OBJC_IVAR____TtCC21DefaultAppsSettingsUI16LSChangeObserverP33_7689C6B5CF2FFB3629BA237567A0B8718Observer_lsObserver] = v5;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for LSChangeObserver.Observer();
  v7 = v5;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [v7 setDelegate_];

  return v8;
}

id sub_21C559CC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LSChangeObserver.Observer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21C559DA4(uint64_t a1)
{
  v2 = sub_21C55CD44();

  return sub_21C55AEB0(a1, v2);
}

unint64_t sub_21C559DE8(uint64_t a1, uint64_t a2)
{
  sub_21C55CE64();
  sub_21C55CBC4();
  v4 = sub_21C55CE84();

  return sub_21C55AF78(a1, a2, v4);
}

uint64_t sub_21C559E60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDDA08, &qword_21C55E900);
  result = sub_21C55CDE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v35 = *(*(v5 + 56) + 16 * v22);
      }

      else
      {
        sub_21C55B974(v23, &v36);
        v35 = *(*(v5 + 56) + 16 * v22);
      }

      result = sub_21C55CD44();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 16 * v15) = v35;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21C55A114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDDA20, &qword_21C55E918);
  v33 = v4;
  result = sub_21C55CDE4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_21C543DDC(v24, v34);
      }

      else
      {
        sub_21C543EA8(v24, v34);
      }

      sub_21C55CE64();
      sub_21C55CBC4();
      result = sub_21C55CE84();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_21C543DDC(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21C55A3D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDDA28, &qword_21C55E920);
  v34 = v4;
  result = sub_21C55CDE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21C55CE64();
      sub_21C55CBC4();
      result = sub_21C55CE84();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21C55A680(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21C55CD34() + 1) & ~v5;
    do
    {
      sub_21C55B974(*(a2 + 48) + 40 * v6, v24);
      v9 = sub_21C55CD44();
      result = sub_21C55B920(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21C55A824(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21C55CD34() + 1) & ~v5;
    do
    {
      sub_21C55CE64();

      sub_21C55CBC4();
      v11 = sub_21C55CE84();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21C55A9E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_21C559DA4(a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_21C559E60(v15, a4 & 1);
      v21 = sub_21C559DA4(a3);
      if ((v16 & 1) != (v22 & 1))
      {
LABEL_17:
        result = sub_21C55CE54();
        __break(1u);
        return result;
      }

      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_21C55B030();
  }

  v18 = *v5;
  if ((v16 & 1) == 0)
  {
LABEL_13:
    result = sub_21C55B974(a3, v30);
    v18[(v12 >> 6) + 8] |= 1 << v12;
    v23 = v18[6] + 40 * v12;
    v24 = v31;
    v25 = v30[1];
    *v23 = v30[0];
    *(v23 + 16) = v25;
    *(v23 + 32) = v24;
    v26 = (v18[7] + 16 * v12);
    *v26 = a1;
    v26[1] = a2;
    v27 = v18[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      v18[2] = v29;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  v19 = (v18[7] + 16 * v12);
  *v19 = a1;
  v19[1] = a2;
}

uint64_t sub_21C55AB70(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21C559DE8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21C55B1CC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21C55A114(v16, a4 & 1);
    v11 = sub_21C559DE8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21C55CE54();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_21C543DDC(a1, v22);
  }

  else
  {
    sub_21C55AE40(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_21C55ACC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21C559DE8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21C55A3D8(v16, a4 & 1);
      v11 = sub_21C559DE8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_21C55CE54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21C55B374();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_21C55AE40(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21C543DDC(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_21C55AEB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21C55B974(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CF0B590](v9, a1);
      sub_21C55B920(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21C55AF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21C55CE44())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_21C55B030()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDDA08, &qword_21C55E900);
  v2 = *v0;
  v3 = sub_21C55CDD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        sub_21C55B974(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 16 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_21C55B1CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDDA20, &qword_21C55E918);
  v2 = *v0;
  v3 = sub_21C55CDD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_21C543EA8(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21C543DDC(v25, *(v4 + 56) + v22);
      }

      while (v12);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_21C55B374()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDDA28, &qword_21C55E920);
  v2 = *v0;
  v3 = sub_21C55CDD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void sub_21C55B4E4()
{
  if (qword_27CDDD3C8 != -1)
  {
LABEL_16:
    swift_once();
  }

  v0 = qword_27CDDD970;
  os_unfair_lock_lock((qword_27CDDD970 + 16));
  if (qword_27CDDD3D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = off_27CDDD978;
  v2 = 1 << *(off_27CDDD978 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(off_27CDDD978 + 8);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_12:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = v8 | (v7 << 6);
      sub_21C55B974(v1[6] + 40 * v9, v12);
      v13 = *(v1[7] + 16 * v9);
      v11 = v13;
      v10 = swift_retain_n();
      v11(v10);

      sub_21C544404(v12, &qword_27CDDDA38, &unk_21C55E930);
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = v1[v7 + 8];
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_12;
    }
  }

  os_unfair_lock_unlock(v0 + 4);
}

unint64_t sub_21C55B6C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDDA08, &qword_21C55E900);
    v3 = sub_21C55CDF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_21C5591A8(v4, v13, &qword_27CDDDA10, &qword_21C55E908);
      result = sub_21C559DA4(v13);
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
      *(v3[7] + 16 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

void sub_21C55B7F4(uint64_t a1)
{
  if (qword_27CDDD3C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CDDD970;
  os_unfair_lock_lock((qword_27CDDD970 + 16));
  if (qword_27CDDD3D0 != -1)
  {
    swift_once();
  }

  sub_21C55CD64();
  swift_beginAccess();
  sub_21C5598C0(0, 0, v3);
  swift_endAccess();
  if (!*(off_27CDDD978 + 2) && qword_27CDDD980)
  {
    [*(qword_27CDDD980 + OBJC_IVAR____TtCC21DefaultAppsSettingsUI16LSChangeObserverP33_7689C6B5CF2FFB3629BA237567A0B8718Observer_lsObserver) stopObserving];
  }

  os_unfair_lock_unlock(v2 + 4);
}

void sub_21C55B9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CDDD3C8 != -1)
  {
    swift_once();
  }

  v5 = qword_27CDDD970;
  os_unfair_lock_lock((qword_27CDDD970 + 16));
  if (!qword_27CDDD980)
  {
    v6 = objc_allocWithZone(type metadata accessor for LSChangeObserver.Observer());
    v7 = sub_21C559B18(sub_21C55B4E4, 0);
    v8 = qword_27CDDD980;
    qword_27CDDD980 = v7;
  }

  if (qword_27CDDD3D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!*(off_27CDDD978 + 2) && qword_27CDDD980)
  {
    [*(qword_27CDDD980 + OBJC_IVAR____TtCC21DefaultAppsSettingsUI16LSChangeObserverP33_7689C6B5CF2FFB3629BA237567A0B8718Observer_lsObserver) startObserving];
  }

  sub_21C55CD64();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = off_27CDDD978;
  off_27CDDD978 = 0x8000000000000000;
  sub_21C55A9E0(sub_21C55BE04, v9, v12, isUniquelyReferenced_nonNull_native);
  sub_21C55B920(v12);
  off_27CDDD978 = v11;
  swift_endAccess();
  os_unfair_lock_unlock(v5 + 4);
}

unint64_t sub_21C55BBCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDDA20, &qword_21C55E918);
    v3 = sub_21C55CDF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_21C5591A8(v4, &v13, &qword_27CDDDA30, &qword_21C55E928);
      v5 = v13;
      v6 = v14;
      result = sub_21C559DE8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21C543DDC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_21C55BD00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDDA28, &qword_21C55E920);
    v3 = sub_21C55CDF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21C559DE8(v5, v6);
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

uint64_t getEnumTagSinglePayload for RelayCallingOption(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RelayCallingOption(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21C55BF98(char a1)
{
  v1 = sub_21C55C5D4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_21C55CA84();
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C55CA24();
  if (qword_27CDDD3A0 != -1)
  {
    swift_once();
  }

  v3 = qword_27CDDE790;
  sub_21C55C5C4();
  return sub_21C55CAD4();
}

uint64_t sub_21C55C128(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = "RelayCallingNotApplicable";
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v3 == 1)
  {
    v6 = "RelayCallingNotApplicable";
  }

  else
  {
    v6 = "RelayCallingNone";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = &unk_21C55E9E0;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000016;
    v4 = "RelayCallingNone";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = &unk_21C55E9E0;
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21C55CE44();
  }

  return v11 & 1;
}

uint64_t sub_21C55C208()
{
  sub_21C55CE64();
  sub_21C55CBC4();

  return sub_21C55CE84();
}

uint64_t sub_21C55C2A8(uint64_t a1)
{
  sub_21C55CBC4();
}

uint64_t sub_21C55C334(uint64_t a1)
{
  sub_21C55CE64();
  sub_21C55CBC4();

  return sub_21C55CE84();
}

unint64_t sub_21C55C3D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21C55C4B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21C55C400(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "RelayCallingNotApplicable";
  if (*v1 != 1)
  {
    v2 = 0xD000000000000016;
    v3 = "RelayCallingNone";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000019;
    v4 = &unk_21C55E9E0;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_21C55C464()
{
  result = qword_27CDDDA50;
  if (!qword_27CDDDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDDA50);
  }

  return result;
}

unint64_t sub_21C55C4B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21C55CE14();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}