uint64_t SSFIsInternalBuild(uint64_t a1, uint64_t a2)
{
  if (SSFIsInternalBuild_onceToken[0] != -1)
  {
    SSFIsInternalBuild_cold_1();
  }

  return SSFIsInternalBuild_internal;
}

uint64_t __SSFIsInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  SSFIsInternalBuild_internal = result;
  return result;
}

uint64_t CountedSet.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v7 = sub_26A06202C();
  v8 = sub_26A054FDC(v7, a1, v6, a2);

  *a3 = v8;
  return result;
}

uint64_t CountedSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v25 = v9;
  *v3 = 0x8000000000000000;
  v10 = *(a2 + 24);
  v11 = sub_26A054DF8(a1, v6, v10);
  if (__OFADD__(*(v9 + 16), (v12 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  sub_26A0622EC();
  v15 = sub_26A0622CC();
  v16 = v25;
  if ((v15 & 1) == 0)
  {
LABEL_5:

    *v3 = v16;
    if ((v14 & 1) == 0)
    {
      v25 = 0;
      (*(v24 + 16))(v8, a1, v6);
      result = sub_26A0622DC();
    }

    v20 = *(v16 + 56);
    v21 = *(v20 + 8 * v13);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      *(v20 + 8 * v13) = v23;
      return result;
    }

    goto LABEL_10;
  }

  v17 = sub_26A054DF8(a1, v6, v10);
  if ((v14 & 1) == (v18 & 1))
  {
    v13 = v17;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_26A06237C();
  __break(1u);
  return result;
}

void *CountedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26A061EAC();
  if ((v10 & 1) == 0)
  {
    v8 = v9;
    result = (*(v4 + 16))(v6, a1, v3);
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      v9 = v8 - 1;
      v10 = 0;
      sub_26A061E9C();
      sub_26A061EBC();
      result = sub_26A061EAC();
      if ((v10 & 1) == 0 && !v9)
      {
        return sub_26A061E6C();
      }
    }
  }

  return result;
}

uint64_t CountedSet.count(of:)(uint64_t a1, uint64_t a2)
{
  sub_26A061EAC();
  if (v4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t default argument 1 of CurrentValueStream.init(_:bufferingPolicy:)@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85778];
  v4 = sub_26A0620CC();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_26A054930(uint64_t a1, id *a2)
{
  result = sub_26A061F0C();
  *a2 = 0;
  return result;
}

uint64_t sub_26A0549A8(uint64_t a1, id *a2)
{
  v3 = sub_26A061F1C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26A054A28@<X0>(uint64_t *a1@<X8>)
{
  sub_26A061F2C();
  v2 = sub_26A061EFC();

  *a1 = v2;
  return result;
}

uint64_t sub_26A054A70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A061F2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A054A9C(uint64_t a1)
{
  v2 = sub_26A0555A8(&qword_280368120, type metadata accessor for URLResourceKey, &unk_26A062BC8);
  v3 = sub_26A0555A8(qword_280368128, type metadata accessor for URLResourceKey, &unk_26A062B68);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26A054B58@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26A061EFC();

  *a2 = v3;
  return result;
}

uint64_t sub_26A054BA0(uint64_t a1)
{
  v2 = sub_26A0555A8(&qword_280368110, type metadata accessor for FileAttributeKey, &unk_26A062D6C);
  v3 = sub_26A0555A8(&qword_280368118, type metadata accessor for FileAttributeKey, &unk_26A062CC0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26A054C60()
{
  v0 = sub_26A061F2C();
  v1 = MEMORY[0x26D658CC0](v0);

  return v1;
}

uint64_t sub_26A054CA0(uint64_t a1)
{
  sub_26A061F2C();
  sub_26A061F5C();
}

uint64_t sub_26A054CF8(uint64_t a1)
{
  sub_26A061F2C();
  sub_26A06238C();
  sub_26A061F5C();
  v1 = sub_26A0623AC();

  return v1;
}

uint64_t sub_26A054D70(void *a1, uint64_t *a2)
{
  v2 = sub_26A061F2C();
  v4 = v3;
  if (v2 == sub_26A061F2C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26A06235C();
  }

  return v7 & 1;
}

unint64_t sub_26A054DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A061ECC();

  return sub_26A054E54(a1, v6, a2, a3);
}

unint64_t sub_26A054E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v19 = sub_26A061EEC();
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

unint64_t sub_26A054FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_26A06204C())
  {
    sub_26A06230C();
    v13 = sub_26A0622FC();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_26A06204C();
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
        if (sub_26A06203C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_26A06228C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_26A054DF8(v12, a2, v27);
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

uint64_t sub_26A0552C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26A05531C(uint64_t *a1, int a2)
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

uint64_t sub_26A055364(uint64_t result, int a2, int a3)
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

uint64_t sub_26A0553B8(void *a1)
{
  sub_26A061E7C();

  return swift_getWitnessTable();
}

uint64_t sub_26A055418(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A055438(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_26A0554CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26A0555A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CurrentValueStream.__allocating_init(_:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = sub_26A056440(a1, a2);
  v7 = *(v3 + 80);
  v8 = sub_26A0620CC();
  (*(*(v8 - 8) + 8))(a2, v8);
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t CurrentValueStream.init(_:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_26A056440(a1, a2);
  v7 = *(v5 + 80);
  v8 = sub_26A0620CC();
  (*(*(v8 - 8) + 8))(a2, v8);
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void CurrentValueStream.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  v6 = sub_26A061DCC();
  (*(*(v5 - 8) + 16))(a1, v4 + *(v6 + 28), v5);

  os_unfair_lock_unlock(v4);
}

uint64_t CurrentValueStream.value.setter(uint64_t a1)
{
  v3 = *v1;
  sub_26A056690(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t sub_26A0559F8(char *a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v27 = &v22 - v7;
  v26 = sub_26A0620BC();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v22 - v8;
  v10 = sub_26A0620EC();
  v11 = *(v10 - 8);
  v22 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  (*(v6 + 8))(a1, v5);
  v14 = *(v6 + 16);
  v29 = v5;
  v30 = a2;
  v28 = v6 + 16;
  v25 = v14;
  v14(a1, a2, v5);
  v15 = v2 + *(*v2 + 104);
  os_unfair_lock_lock(v15);
  v16 = *(v15 + 8);
  sub_26A06208C();

  os_unfair_lock_unlock(v15);
  if (sub_26A06204C())
  {
    v17 = 0;
    v24 = (v11 + 16);
    v18 = (v23 + 8);
    while (1)
    {
      v19 = sub_26A06203C();
      sub_26A06201C();
      if (v19)
      {
        (*(v11 + 16))(v13, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17, v10);
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_26A06228C();
        if (v22 != 8)
        {
          __break(1u);
          return result;
        }

        v31 = result;
        (*v24)(v13, &v31, v10);
        swift_unknownObjectRelease();
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_10:
          __break(1u);
        }
      }

      v25(v27, v30, v29);
      sub_26A0620DC();
      (*v18)(v9, v26);
      (*(v11 + 8))(v13, v10);
      ++v17;
      if (v20 == sub_26A06204C())
      {
      }
    }
  }
}

void (*CurrentValueStream.value.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  CurrentValueStream.value.getter(v9);
  return sub_26A055EF0;
}

void sub_26A055EF0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_26A056690(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_26A056690(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CurrentValueStream.stream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_26A0620EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-v6];
  v8 = sub_26A0620FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-v10];
  sub_26A0620AC();
  v12 = (v1 + *(*v1 + 104));
  os_unfair_lock_lock(v12);
  sub_26A0561C4(&v12[2], v7, v3);
  sub_26A06208C();
  os_unfair_lock_unlock(v12);
  (*(v9 + 32))(a1, v11, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26A0561C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26A0620EC();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v8 - v5, a2, v4);
  sub_26A06208C();
  return sub_26A06205C();
}

uint64_t CurrentValueStream.deinit()
{
  sub_26A061DCC();
  sub_26A061DDC();
  sub_26A0621DC();
  v1 = *(*v0 + 96);
  v2 = sub_26A0620CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_26A0620EC();
  sub_26A06208C();
  sub_26A061DDC();
  sub_26A0621DC();
  return v0;
}

uint64_t CurrentValueStream.__deallocating_deinit()
{
  CurrentValueStream.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A056440(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v20 - v7;
  v9 = sub_26A061DCC();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v20 - v12);
  (*(v6 + 16))(v8, a1, v5);
  *v13 = 0;
  v14 = *(v10 + 36);
  v15 = sub_26A061DDC();
  bzero(v13 + v14, *(*(v15 - 8) + 64));
  sub_26A05DD08(v8, v13 + v14, v5);
  memcpy((v2 + *(*v2 + 88)), v13, v11);
  v16 = *(*v2 + 96);
  v17 = sub_26A0620CC();
  (*(*(v17 - 8) + 16))(v2 + v16, a2, v17);
  sub_26A0620EC();
  v21 = sub_26A06202C();
  LODWORD(v22) = 0;
  *(&v22 + 1) = 0;
  v18 = sub_26A06208C();
  sub_26A05DD08(&v21, &v22 + 8, v18);
  *(v2 + *(*v2 + 104)) = v22;
  return v2;
}

void sub_26A056690(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v3);
  v4 = sub_26A061DCC();
  sub_26A0559F8(v3 + *(v4 + 28), a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_26A056780(uint64_t a1)
{
  result = sub_26A061DCC();
  if (v2 <= 0x3F)
  {
    result = sub_26A0620CC();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26A0568A4(void *a1)
{
  if (MEMORY[0x277D85020])
  {
    return sub_26A061DCC();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_26A0568E4(void *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  sub_26A0620EC();
  sub_26A06208C();
  return sub_26A061DCC();
}

char *static DarwinNotificationCenter.addObserver(notificationName:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  type metadata accessor for DarwinNotificationCenter.Subscription(0);
  v9 = swift_allocObject();
  sub_26A061D7C();
  v10 = &v9[OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_name];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_handler];
  *v11 = a3;
  *(v11 + 1) = a4;

  v12 = sub_26A061EFC();
  CFNotificationCenterAddObserver(v8, v9, sub_26A056A70, v12, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v9;
}

uint64_t type metadata accessor for DarwinNotificationCenter.Subscription(uint64_t a1)
{
  result = qword_2803681C0;
  if (!qword_2803681C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A056A70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_handler);

    v2(v3);
  }
}

void static DarwinNotificationCenter.notify(_:)(uint64_t a1, uint64_t a2)
{
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = sub_26A061EFC();
  CFNotificationCenterPostNotification(v2, v3, 0, 0, 1u);
}

uint64_t DarwinNotificationCenter.Subscription.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_id;
  v4 = sub_26A061D8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *DarwinNotificationCenter.Subscription.deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();

  v2 = sub_26A061EFC();

  CFNotificationCenterRemoveObserver(v1, v0, v2, 0);

  v3 = OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_id;
  v4 = sub_26A061D8C();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  return v0;
}

uint64_t DarwinNotificationCenter.Subscription.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();

  v2 = sub_26A061EFC();

  CFNotificationCenterRemoveObserver(v1, v0, v2, 0);

  v3 = OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_id;
  v4 = sub_26A061D8C();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t DarwinNotificationCenter.Subscription.hash(into:)(uint64_t a1)
{
  sub_26A061D8C();
  sub_26A05711C(&qword_2803681B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_26A061EDC();
}

uint64_t DarwinNotificationCenter.Subscription.hashValue.getter()
{
  sub_26A06238C();
  sub_26A061D8C();
  sub_26A05711C(&qword_2803681B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_26A061EDC();
  return sub_26A0623AC();
}

uint64_t sub_26A056F10()
{
  sub_26A06238C();
  sub_26A061D8C();
  sub_26A05711C(&qword_2803681B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_26A061EDC();
  return sub_26A0623AC();
}

uint64_t sub_26A056FB0(uint64_t a1)
{
  sub_26A061D8C();
  sub_26A05711C(&qword_2803681B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_26A061EDC();
}

uint64_t sub_26A057038(uint64_t a1)
{
  sub_26A06238C();
  sub_26A061D8C();
  sub_26A05711C(&qword_2803681B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_26A061EDC();
  return sub_26A0623AC();
}

uint64_t sub_26A05711C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A0571AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCV20SmartStackFoundation24DarwinNotificationCenter12Subscription_id;
  v5 = sub_26A061D8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t getEnumTagSinglePayload for DarwinNotificationCenter(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DarwinNotificationCenter(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_26A05732C(uint64_t a1)
{
  result = sub_26A061D8C();
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

uint64_t DiagnosticFileFormat.hashValue.getter()
{
  v1 = *v0;
  sub_26A06238C();
  MEMORY[0x26D6590A0](v1);
  return sub_26A0623AC();
}

uint64_t sub_26A057490()
{
  v1 = *v0;
  sub_26A06238C();
  MEMORY[0x26D6590A0](v1);
  return sub_26A0623AC();
}

uint64_t sub_26A057504(uint64_t a1)
{
  v2 = *v1;
  sub_26A06238C();
  MEMORY[0x26D6590A0](v2);
  return sub_26A0623AC();
}

uint64_t sub_26A057548()
{
  type metadata accessor for DiagnosticsCache(0);
  swift_allocObject();
  result = sub_26A0575E4();
  qword_2803681D0 = result;
  return result;
}

uint64_t static DiagnosticsCache.shared.getter()
{
  if (qword_280368030 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26A0575E4()
{
  v1 = sub_26A061E1C();
  v2 = *(v1 - 8);
  v23 = v1;
  v24 = v2;
  MEMORY[0x28223BE20](v1);
  v20 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26A06219C();
  MEMORY[0x28223BE20](v4);
  v19[1] = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A061E3C();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26A0621AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cacheDirectory;
  v14 = sub_26A061CFC();
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  *(v0 + OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cachedFiles) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_formatter) = 0;
  sub_26A061DFC();
  sub_26A05C6E8();
  (*(v10 + 104))(v12, *MEMORY[0x277D85268], v9);
  sub_26A061E2C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26A05C734(&qword_280368298, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803682A0, &qword_26A063098);
  sub_26A05C77C(&qword_2803682A8, &qword_2803682A0, &qword_26A063098);
  sub_26A06222C();
  *(v0 + 16) = sub_26A0621CC();
  aBlock[4] = sub_26A05C7D0;
  v27 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A057DB0;
  aBlock[3] = &block_descriptor_32;
  v15 = _Block_copy(aBlock);
  swift_retain_n();
  sub_26A061E2C();
  v25 = MEMORY[0x277D84F90];
  sub_26A05C734(&qword_2803681D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681E0, &qword_26A062F50);
  sub_26A05C77C(&qword_2803681E8, &qword_2803681E0, &qword_26A062F50);
  v16 = v20;
  v17 = v23;
  sub_26A06222C();
  MEMORY[0x26D658EC0](0, v8, v16, v15);
  _Block_release(v15);

  (*(v24 + 8))(v16, v17);
  (*(v21 + 8))(v8, v22);

  return v0;
}

uint64_t sub_26A057B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681F8, &qword_26A062F58);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v9[-v4];
  sub_26A057DF4(&v9[-v4]);
  v6 = sub_26A061CFC();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cacheDirectory;
  swift_beginAccess();
  sub_26A05C7D8(v5, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_26A057DB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_26A057DF4(char *a1@<X8>)
{
  v109[4] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368238, &qword_26A063068);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v82 - v3;
  v106 = sub_26A061D5C();
  v95 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v99 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A061CFC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v94 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v82 - v10;
  v12 = sub_26A061DBC();
  v97 = *(v12 - 8);
  v98 = v12;
  MEMORY[0x28223BE20](v12);
  v108 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26A061CAC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A061CBC();
  v109[0] = 0xD000000000000018;
  v109[1] = 0x800000026A063840;
  (*(v15 + 104))(v17, *MEMORY[0x277CC91C0], v14);
  sub_26A05ABD8();
  sub_26A061CEC();
  (*(v15 + 8))(v17, v14);
  v18 = [objc_opt_self() defaultManager];
  v19 = sub_26A061CCC();
  v109[0] = 0;
  LODWORD(v14) = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v109];

  if (!v14)
  {
    v77 = v109[0];
    sub_26A061C9C();

    swift_willThrow();
    (*(v7 + 8))(a1, v6);
    return;
  }

  v107 = v6;
  v20 = v109[0];
  sub_26A061DAC();
  v21 = sub_26A061CCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368248, &qword_26A063070);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26A062F40;
  v23 = *MEMORY[0x277CBE7C0];
  *(v22 + 32) = *MEMORY[0x277CBE7C0];
  type metadata accessor for URLResourceKey(0);
  v92 = a1;
  v24 = v23;
  v25 = sub_26A061FEC();

  v109[0] = 0;
  v26 = [v18 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:v25 options:0 error:v109];

  v27 = v109[0];
  if (!v26)
  {
    v78 = v109[0];
    sub_26A061C9C();

    swift_willThrow();
    (*(v97 + 8))(v108, v98);
    (*(v7 + 8))(v92, v107);
    return;
  }

  v105 = v18;
  v28 = v107;
  v29 = sub_26A061FFC();
  v30 = v27;

  v102 = *(v29 + 16);
  if (v102)
  {
    v32 = 0;
    v104 = v7 + 16;
    v89 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_log;
    v93 = (v95 + 6);
    v100 = *MEMORY[0x277CCA108];
    v101 = (v95 + 7);
    v91 = (v95 + 4);
    v103 = (v7 + 8);
    ++v95;
    *&v31 = 136446466;
    v88 = v31;
    v90 = v4;
    while (1)
    {
      if (v32 >= *(v29 + 16))
      {
        __break(1u);
      }

      v34 = *(v7 + 16);
      v34(v11, v29 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v32, v28);
      sub_26A061CDC();
      v35 = sub_26A061EFC();

      v109[0] = 0;
      v36 = [v105 attributesOfItemAtPath:v35 error:v109];

      v37 = v109[0];
      if (!v36)
      {
        v79 = v109[0];

        sub_26A061C9C();

        swift_willThrow();
        v80 = *v103;
        v81 = v107;
        (*v103)(v11, v107);
        (*(v97 + 8))(v108, v98);
        v80(v92, v81);
        return;
      }

      type metadata accessor for FileAttributeKey(0);
      sub_26A05C734(&qword_280368110, type metadata accessor for FileAttributeKey, &unk_26A062D6C);
      v38 = sub_26A061E5C();
      v39 = v37;

      if (!*(v38 + 16))
      {
        break;
      }

      v40 = sub_26A05B1F4(v100);
      if ((v41 & 1) == 0)
      {
        break;
      }

      sub_26A05B288(*(v38 + 56) + 32 * v40, v109);

      v42 = v106;
      v43 = swift_dynamicCast();
      (*v101)(v4, v43 ^ 1u, 1, v42);
      v44 = (*v93)(v4, 1, v42);
      v28 = v107;
      if (v44 == 1)
      {
        (*v103)(v11, v107);
        goto LABEL_6;
      }

      v45 = v4;
      v46 = v99;
      (*v91)(v99, v45, v42);
      if (sub_26A061D9C())
      {
        (*v95)(v46, v42);
      }

      else
      {
        v47 = sub_26A061CCC();
        v109[0] = 0;
        v48 = [v105 removeItemAtURL:v47 error:v109];

        if (!v48)
        {
          v51 = v109[0];
          v52 = v28;
          v53 = sub_26A061C9C();

          swift_willThrow();
          v96 = 0;
          v54 = v94;
          v34(v94, v11, v52);
          v55 = v53;
          v56 = sub_26A061DEC();
          v57 = sub_26A06217C();

          v58 = os_log_type_enabled(v56, v57);
          v4 = v90;
          if (v58)
          {
            v59 = swift_slowAlloc();
            v82 = v59;
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v109[0] = v86;
            *v59 = v88;
            sub_26A05C734(&qword_280368250, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v84 = v56;
            v60 = v94;
            v83 = v57;
            v61 = v107;
            v62 = sub_26A06233C();
            v63 = v60;
            v64 = v62;
            v66 = v65;
            v87 = *v103;
            v87(v63, v61);
            v67 = sub_26A060480(v64, v66, v109);

            v68 = v82;
            *(v82 + 1) = v67;
            *(v68 + 6) = 2114;
            v69 = v68;
            v70 = v53;
            v71 = _swift_stdlib_bridgeErrorToNSError();
            *(v69 + 14) = v71;
            v72 = v85;
            *v85 = v71;
            v73 = v84;
            _os_log_impl(&dword_26A053000, v84, v83, "Failed to clear %{public}s: %{public}@", v69, 0x16u);
            sub_26A05B2E4(v72, &qword_280368258, &qword_26A063078);
            MEMORY[0x26D6595F0](v72, -1, -1);
            v74 = v86;
            __swift_destroy_boxed_opaque_existential_0(v86);
            MEMORY[0x26D6595F0](v74, -1, -1);
            MEMORY[0x26D6595F0](v69, -1, -1);

            (*v95)(v99, v106);
            v28 = v107;
            v87(v11, v107);
          }

          else
          {

            v75 = v54;
            v76 = *v103;
            v28 = v107;
            (*v103)(v75, v107);
            (*v95)(v99, v106);
            v76(v11, v28);
          }

          goto LABEL_7;
        }

        v49 = *v95;
        v50 = v109[0];
        v49(v99, v106);
      }

      (*v103)(v11, v28);
      v4 = v90;
LABEL_7:
      ++v32;
      v33 = v108;
      if (v102 == v32)
      {
        goto LABEL_25;
      }
    }

    v28 = v107;
    (*v103)(v11, v107);
    (*v101)(v4, 1, 1, v106);
LABEL_6:
    sub_26A05B2E4(v4, &qword_280368238, &qword_26A063068);
    goto LABEL_7;
  }

  v33 = v108;
LABEL_25:
  (*(v97 + 8))(v33, v98);
}

uint64_t sub_26A058AA8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v10 = sub_26A061E1C();
  v23 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26A061E3C();
  v13 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a4;
  type metadata accessor for SendableStateDump();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v21 = *(v5 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = v17;
  *(v18 + 48) = v16;
  aBlock[4] = sub_26A059C74;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A057DB0;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  sub_26A061E2C();
  v24 = MEMORY[0x277D84F90];
  sub_26A05C734(&qword_2803681D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681E0, &qword_26A062F50);
  sub_26A05C77C(&qword_2803681E8, &qword_2803681E0, &qword_26A062F50);
  sub_26A06222C();
  MEMORY[0x26D658EC0](0, v15, v12, v19);
  _Block_release(v19);

  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

void sub_26A058DE4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v119 = a5;
  v120 = a4;
  *&v122 = a2;
  v130 = *MEMORY[0x277D85DE8];
  v118 = sub_26A061CAC();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A061D5C();
  v121 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681F8, &qword_26A062F58);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v106 - v12;
  v14 = sub_26A061CFC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v114 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v113 = &v106 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v123 = &v106 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v124 = &v106 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v106 - v24;
  v26 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cacheDirectory;
  swift_beginAccess();
  sub_26A05C578(a1 + v26, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26A05B2E4(v13, &qword_2803681F8, &qword_26A062F58);
    v27 = sub_26A061DEC();
    v28 = sub_26A06217C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26A053000, v27, v28, "Cache directory unavailable.", v29, 2u);
      MEMORY[0x26D6595F0](v29, -1, -1);
    }

    return;
  }

  (*(v15 + 32))(v25, v13, v14);
  sub_26A061D4C();
  v30 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_formatter;
  v31 = *(a1 + OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_formatter);
  v125 = v15;
  v115 = v25;
  v112 = a1;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v33 = sub_26A061EFC();
    [v32 setDateFormat_];

    v34 = *(a1 + v30);
    *(a1 + v30) = v32;

    v31 = 0;
  }

  v35 = v31;
  v109 = v10;
  v36 = sub_26A061D3C();
  v37 = [v32 stringFromDate_];
  v108 = v32;

  v38 = sub_26A061F2C();
  v40 = v39;

  *&v127 = 46;
  *(&v127 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](v41);
  *(&v106 - 2) = &v127;

  v42 = v122;
  v44 = sub_26A05AC2C(0x7FFFFFFFFFFFFFFFLL, 1, sub_26A05C5E8, (&v106 - 4), v122, a3, v43);
  v45 = v44;
  v46 = v44[2];
  v47 = v124;
  v110 = v8;
  v107 = 0;
  v111 = v14;
  if (v46 == 1)
  {

    *&v127 = v42;
    *(&v127 + 1) = a3;

    MEMORY[0x26D658CA0](45, 0xE100000000000000);

    MEMORY[0x26D658CA0](v38, v40);

    MEMORY[0x26D658CA0](0x6E6F736A2ELL, 0xE500000000000000);

    v49 = *(&v127 + 1);
    v48 = v127;
    goto LABEL_14;
  }

  *&v122 = v38;
  if (!v46)
  {
    __break(1u);
    goto LABEL_30;
  }

  v50 = v44[4];
  v51 = v44[5];
  v53 = v44[6];
  v52 = v44[7];
  *&v126 = 0;
  *(&v126 + 1) = 0xE000000000000000;

  v54 = sub_26A061F6C();
  v55 = sub_26A0621FC();
  v56 = __OFADD__(v54, v55);
  v57 = v54 + v55;
  if (v56)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  MEMORY[0x26D658C50](v57);
  *&v127 = v50;
  *(&v127 + 1) = v51;
  v128 = v53;
  v129 = v52;
  sub_26A05C640();
  sub_26A061F8C();
  *&v127 = 45;
  *(&v127 + 1) = 0xE100000000000000;
  sub_26A061F8C();

  v127 = v126;

  MEMORY[0x26D658CA0](v122, v40);

  MEMORY[0x26D658CA0](46, 0xE100000000000000);

  if (v46 > v45[2])
  {
    goto LABEL_31;
  }

  v58 = v127;
  v59 = &v45[4 * v46];
  v122 = *v59;
  v60 = v59[2];
  v61 = v59[3];

  v126 = v58;
  v127 = v122;
  v128 = v60;
  v129 = v61;
  sub_26A061F8C();

  v49 = *(&v126 + 1);
  v48 = v126;
  v47 = v124;
LABEL_14:
  v62 = v123;

  v63 = *(v125 + 2);
  v64 = v111;
  v63(v47, v115, v111);
  v106 = v48;
  *&v127 = v48;
  *(&v127 + 1) = v49;
  v65 = v117;
  v66 = v116;
  v67 = v118;
  (*(v117 + 104))(v116, *MEMORY[0x277CC91D8], v118);
  sub_26A05ABD8();
  sub_26A061CEC();
  (*(v65 + 8))(v66, v67);

  *&v122 = v63;
  v63(v62, v47, v64);
  if (v119)
  {
    v68 = sub_26A05AA88();
    v70 = v64;
    v71 = v125;
    if (v69 >> 60 != 15)
    {
      v72 = v68;
      v73 = v69;
LABEL_19:
      v79 = v62;
      v80 = v107;
      sub_26A061D2C();
      if (v80)
      {
        sub_26A05C694(v72, v73);
        v81 = *(v71 + 1);
        v81(v79, v70);
        v81(v47, v70);

        v82 = v80;
        v83 = sub_26A061DEC();
        v84 = sub_26A06217C();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v125 = v81;
          v88 = v87;
          *&v127 = v87;
          *v85 = 136446466;
          v89 = sub_26A060480(v106, v49, &v127);

          *(v85 + 4) = v89;
          *(v85 + 12) = 2114;
          v90 = v80;
          v91 = _swift_stdlib_bridgeErrorToNSError();
          *(v85 + 14) = v91;
          *v86 = v91;
          _os_log_impl(&dword_26A053000, v83, v84, "Unable to cache %{public}s: %{public}@", v85, 0x16u);
          sub_26A05B2E4(v86, &qword_280368258, &qword_26A063078);
          MEMORY[0x26D6595F0](v86, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v88);
          MEMORY[0x26D6595F0](v88, -1, -1);
          MEMORY[0x26D6595F0](v85, -1, -1);

          (*(v121 + 8))(v109, v110);
          v125(v115, v70);
        }

        else
        {

          (*(v121 + 8))(v109, v110);
          v81(v115, v70);
        }

        return;
      }

      sub_26A05C694(v72, v73);
      v62 = v79;
    }
  }

  else
  {
    v74 = objc_opt_self();
    v75 = sub_26A061E4C();
    *&v127 = 0;
    v76 = [v74 dataWithJSONObject:v75 options:3 error:&v127];

    v77 = v127;
    if (v76)
    {
      v72 = sub_26A061D1C();
      v73 = v78;

      v70 = v64;
      v71 = v125;
      goto LABEL_19;
    }

    v92 = v77;
    v93 = sub_26A061C9C();

    swift_willThrow();
    v62 = v123;

    v70 = v64;
    v71 = v125;
  }

  v94 = (v71 + 8);
  v95 = *(v71 + 1);
  v125 = v94;
  v95(v62, v70);

  v96 = sub_26A061DEC();
  v97 = sub_26A06215C();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *&v127 = v99;
    *v98 = 136446210;
    swift_beginAccess();
    sub_26A05C734(&qword_280368250, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v100 = sub_26A06233C();
    v102 = sub_26A060480(v100, v101, &v127);

    *(v98 + 4) = v102;
    v47 = v124;
    _os_log_impl(&dword_26A053000, v96, v97, "Wrote state dump to %{public}s.", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    MEMORY[0x26D6595F0](v99, -1, -1);
    MEMORY[0x26D6595F0](v98, -1, -1);
  }

  v103 = v109;
  swift_beginAccess();
  v104 = v114;
  (v122)(v114, v47, v70);
  swift_beginAccess();
  v105 = v113;
  sub_26A05B494(v113, v104);
  v95(v105, v70);
  swift_endAccess();

  (*(v121 + 8))(v103, v110);
  v95(v115, v70);
  v95(v47, v70);
}

uint64_t sub_26A059C2C()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26A059D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26A061E1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26A061E3C();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 16);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_26A05A500;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A057DB0;
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);

  sub_26A061E2C();
  v18 = MEMORY[0x277D84F90];
  sub_26A05C734(&qword_2803681D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681E0, &qword_26A062F50);
  sub_26A05C77C(&qword_2803681E8, &qword_2803681E0, &qword_26A062F50);
  sub_26A06222C();
  MEMORY[0x26D658EC0](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

void sub_26A059FFC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  v50 = sub_26A061CFC();
  v4 = *(v50 - 8);
  v5 = MEMORY[0x28223BE20](v50);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v38 - v8;
  v9 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cachedFiles;
  swift_beginAccess();
  v10 = *(a1 + v9);
  *(a1 + v9) = MEMORY[0x277D84FA0];
  v11 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_log;

  v49 = a1;
  v46 = v11;
  v12 = sub_26A061DEC();
  v13 = sub_26A06216C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(v10 + 16);

    _os_log_impl(&dword_26A053000, v12, v13, "Flushing %ld cached files.", v14, 0xCu);
    MEMORY[0x26D6595F0](v14, -1, -1);
  }

  else
  {
  }

  v15 = v10 + 56;
  v16 = 1 << *(v10 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v10 + 56);
  v19 = (v16 + 63) >> 6;
  v44 = v4 + 32;
  v45 = v4 + 16;
  v43 = (v4 + 8);

  v20 = 0;
  *&v21 = 136315138;
  v40 = v21;
  v22 = v50;
  v41 = v4;
  v48 = v10;
  while (v18)
  {
    v23 = v20;
LABEL_14:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = v47;
    (*(v4 + 16))(v47, *(v10 + 48) + *(v4 + 72) * (v24 | (v23 << 6)), v22);
    (*(v4 + 32))(v7, v25, v22);
    v26 = sub_26A061DEC();
    v27 = sub_26A06216C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51 = v42;
      *v28 = v40;
      sub_26A05C734(&qword_280368250, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v29 = sub_26A06233C();
      v31 = v30;
      (*v43)(v7, v50);
      v32 = sub_26A060480(v29, v31, &v51);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_26A053000, v26, v27, "%s", v28, 0xCu);
      v33 = v42;
      __swift_destroy_boxed_opaque_existential_0(v42);
      v4 = v41;
      MEMORY[0x26D6595F0](v33, -1, -1);
      v34 = v28;
      v22 = v50;
      MEMORY[0x26D6595F0](v34, -1, -1);
    }

    else
    {

      (*v43)(v7, v22);
    }

    v20 = v23;
    v10 = v48;
  }

  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      v35 = *(v10 + 16);
      if (!v35)
      {
        goto LABEL_19;
      }

      v36 = sub_26A05B0F8(*(v10 + 16), 0);
      v37 = sub_26A05C2C8(&v51, &v36[(*(v4 + 80) + 32) & ~*(v4 + 80)], v35, v10);
      sub_26A05C56C(v51);
      if (v37 != v35)
      {
        __break(1u);
LABEL_19:

        v36 = MEMORY[0x277D84F90];
      }

      v39(v36);

      return;
    }

    v18 = *(v15 + 8 * v23);
    ++v20;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_26A05A4C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t DiagnosticsCache.deinit()
{
  sub_26A05B2E4(v0 + OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cacheDirectory, &qword_2803681F8, &qword_26A062F58);

  v1 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_log;
  v2 = sub_26A061E0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DiagnosticsCache.__deallocating_deinit()
{
  sub_26A05B2E4(v0 + OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_cacheDirectory, &qword_2803681F8, &qword_26A062F58);

  v1 = OBJC_IVAR____TtC20SmartStackFoundation16DiagnosticsCache_log;
  v2 = sub_26A061E0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_26A05A69C()
{
  result = qword_280368218;
  if (!qword_280368218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368218);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiagnosticFileFormat(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DiagnosticFileFormat(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for DiagnosticsCache(uint64_t a1)
{
  result = qword_280368220;
  if (!qword_280368220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A05A8B8(uint64_t a1)
{
  sub_26A05AA30(319);
  if (v1 <= 0x3F)
  {
    sub_26A061E0C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26A05AA30(uint64_t a1)
{
  if (!qword_280368230)
  {
    sub_26A061CFC();
    v1 = sub_26A0621EC();
    if (!v2)
    {
      atomic_store(v1, &qword_280368230);
    }
  }
}

uint64_t sub_26A05AA88()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_26A061E4C();
  v8[0] = 0;
  v2 = [v0 dataWithPropertyList:v1 format:100 options:0 error:v8];

  v3 = v8[0];
  if (v2)
  {
    v4 = sub_26A061D1C();
  }

  else
  {
    v5 = v3;
    v6 = sub_26A061C9C();

    swift_willThrow();
    return 0;
  }

  return v4;
}

uint64_t sub_26A05ABA0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_26A05ABD8()
{
  result = qword_280368240;
  if (!qword_280368240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368240);
  }

  return result;
}

unint64_t sub_26A05AC2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_26A061FDC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_26A05AFEC(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_26A05AFEC((a7 > 1), v10, 1, v14);
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
        v19 = sub_26A061FCC();
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

        v14 = sub_26A061F7C();
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
        v18 = sub_26A061F7C();
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
          v7 = sub_26A061FDC();
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

        v14 = sub_26A05AFEC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_26A061FDC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_26A05AFEC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_26A05AFEC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_26A061F7C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_26A05AFEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368288, &qword_26A063090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26A05B0F8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368260, &qword_26A063080);
  v4 = *(sub_26A061CFC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26A05B1F4(uint64_t a1)
{
  sub_26A061F2C();
  sub_26A06238C();
  sub_26A061F5C();
  v2 = sub_26A0623AC();

  return sub_26A05B390(a1, v2);
}

uint64_t sub_26A05B288(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26A05B2E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_26A05B390(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26A061F2C();
      v8 = v7;
      if (v6 == sub_26A061F2C() && v8 == v9)
      {
        break;
      }

      v11 = sub_26A06235C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_26A05B494(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26A061CFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_26A05C734(&qword_280368270, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v33 = a2;
  v11 = sub_26A061ECC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_26A05C734(&qword_280368278, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v21 = sub_26A061EEC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_26A05BAD0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_26A05B774(uint64_t a1)
{
  v2 = v1;
  v36 = sub_26A061CFC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368280, &qword_26A063088);
  result = sub_26A06224C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_26A05C734(&qword_280368270, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_26A061ECC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_26A05BAD0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_26A061CFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26A05B774(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_26A05BD74();
      goto LABEL_12;
    }

    sub_26A05BFAC(v10 + 1);
  }

  v12 = *v3;
  sub_26A05C734(&qword_280368270, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v13 = sub_26A061ECC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_26A05C734(&qword_280368278, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v21 = sub_26A061EEC();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26A06236C();
  __break(1u);
  return result;
}

void *sub_26A05BD74()
{
  v1 = v0;
  v2 = sub_26A061CFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368280, &qword_26A063088);
  v6 = *v0;
  v7 = sub_26A06223C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_26A05BFAC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_26A061CFC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368280, &qword_26A063088);
  v7 = sub_26A06224C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_26A05C734(&qword_280368270, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_26A061ECC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_26A05C2C8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_26A061CFC();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26A05C578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681F8, &qword_26A062F58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A05C5E8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26A06235C() & 1;
  }
}

unint64_t sub_26A05C640()
{
  result = qword_280368268;
  if (!qword_280368268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368268);
  }

  return result;
}

uint64_t sub_26A05C694(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_26A05C6E8()
{
  result = qword_280368290;
  if (!qword_280368290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280368290);
  }

  return result;
}

uint64_t sub_26A05C734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A05C77C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26A05C7D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803681F8, &qword_26A062F58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Dictionary.append<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 + 24) + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v6);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A061EAC();
  if (v19)
  {
    v20 = v19;
    (*(v11 + 16))(v13, v18, v10);
    sub_26A06205C();
    (*(v5 + 16))(v8, a2, v4);
    v19 = v20;
  }

  else
  {
    (*(v5 + 16))(v8, a2, v4);
    sub_26A05D490(v10, v10);
    swift_allocObject();
    v14 = sub_26A06200C();
    (*(v11 + 16))(v15, v18, v10);
    sub_26A06208C();
    v20 = v14;
  }

  return sub_26A061EBC();
}

uint64_t Dictionary.append<A, B>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a1;
  v20 = a5;
  v18 = *(a4 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v5;
  sub_26A061EAC();
  v16 = v23;
  if (v23)
  {
    (*(v13 + 16))(v15, a2, v12);
    v22 = v16;
    swift_getWitnessTable();
    sub_26A06214C();

    v22 = v23;
  }

  else
  {
    (*(v13 + 16))(v15, a2, v12);
    (*(v18 + 16))(v10, v19, a4);
    v23 = sub_26A06209C();
  }

  return sub_26A061EBC();
}

uint64_t Dictionary.insert<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v12 = *(v11 + 24);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v28 = v3;
  v26 = v20;
  sub_26A061EAC();
  if (v29)
  {
    v30 = v29;
    (*(v14 + 16))(v17, v27, v13);
    sub_26A06211C();
    (*(v14 + 8))(v19, v13);
    (*(v5 + 16))(v10, v26, v4);
    v29 = v30;
  }

  else
  {
    (*(v5 + 16))(v25, v26, v4);
    sub_26A05D490(v13, v13);
    swift_allocObject();
    v21 = sub_26A06200C();
    (*(v14 + 16))(v22, v27, v13);
    sub_26A06208C();
    if (sub_26A06204C())
    {
      v23 = sub_26A05D504(v21, v13, *(v12 + 24));
    }

    else
    {
      v23 = MEMORY[0x277D84FA0];
    }

    v30 = v23;
  }

  return sub_26A061EBC();
}

uint64_t Dictionary.insert<A, B>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a1;
  v20 = a5;
  v21 = a4;
  v7 = *(a4 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v5;
  sub_26A061EAC();
  if (v23)
  {
    (*(v13 + 16))(v15, a2, v12);
    (*(v7 + 16))(v10, v19, v21);
    v16 = sub_26A06210C();
  }

  else
  {
    (*(v13 + 16))(v15, a2, v12);
    (*(v7 + 16))(v10, v19, v21);
    v16 = sub_26A06213C();
  }

  v23 = v16;
  return sub_26A061EBC();
}

uint64_t Dictionary.remove<A>(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v15 = *(v14 + 24);
  sub_26A061EAC();
  if (v22)
  {
    v23 = v22;
    sub_26A06212C();
    (*(v8 + 16))(v13, a2, v7);
    v22 = v23;
    return sub_26A061EBC();
  }

  else
  {
    (*(v8 + 16))(v11, a2, v7);
    v17 = *(v15 + 16);
    sub_26A05D490(v17, v17);
    v18 = *(v17 - 8);
    swift_allocObject();
    v19 = sub_26A06200C();
    (*(v18 + 16))(v20, a1, v17);
    sub_26A06208C();
    if (sub_26A06204C())
    {
      v21 = sub_26A05D504(v19, v17, *(v15 + 24));
    }

    else
    {
      v21 = MEMORY[0x277D84FA0];
    }

    v23 = v21;
    sub_26A061EBC();
    return (*(v18 + 56))(a4, 1, 1, v17);
  }
}

uint64_t sub_26A05D490(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803682B0, &unk_26A0630A0);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

uint64_t sub_26A05D504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_26A06204C())
  {
    sub_26A06226C();
    v15 = sub_26A06225C();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_26A06204C();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_26A06203C();
    sub_26A06201C();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_26A06228C();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_26A061ECC();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_26A061EEC();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void MutexLocked.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(v2);
  v5 = *(a1 + 16);
  v6 = sub_26A061DCC();
  (*(*(v5 - 8) + 16))(a2, v2 + *(v6 + 28), v5);

  j__os_unfair_lock_unlock(v2);
}

uint64_t MutexLocked.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_26A05DD3C(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*MutexLocked.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  MutexLocked.wrappedValue.getter(a2, v11);
  return sub_26A05DAE0;
}

void sub_26A05DAE0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_26A05DD3C(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_26A05DD3C((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MutexLocked.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, a2);
  *a3 = 0;
  v9 = *(sub_26A061DCC() + 28);
  v10 = sub_26A061DDC();
  bzero(&a3[v9], *(*(v10 - 8) + 64));
  (*(v6 + 32))(&a3[v9], v8, a2);
  return (*(v6 + 8))(a1, a2);
}

void sub_26A05DD3C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(v2);
  v5 = *(a2 + 16);
  v6 = *(sub_26A061DCC() + 28);
  v7 = *(v5 - 8);
  (*(v7 + 8))(v2 + v6, v5);
  (*(v7 + 16))(v2 + v6, a1, v5);

  j__os_unfair_lock_unlock(v2);
}

uint64_t sub_26A05DE28(uint64_t a1)
{
  result = sub_26A061DCC();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_26A05DEBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803682B8, qword_26A0630B0);
  sub_26A056430(v4);
  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (a1 + *(v5 + 80) + 4) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t sub_26A05DF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((*(v4 + 80) + 4 + a1) & ~*(v4 + 80), (*(v4 + 80) + 4 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t sub_26A05DFA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_26A05E108(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
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
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t sub_26A05E344(void *a1)
{
  if (MEMORY[0x277D85020])
  {
    return sub_26A061DCC();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void OSAllocatedUnfairLocked.wrappedValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = **v1;
  v5 = *(v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_26A05E49C(v3 + v5, a1);
  os_unfair_lock_unlock((v3 + v6));
}

uint64_t OSAllocatedUnfairLocked.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_26A05E76C();
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*OSAllocatedUnfairLocked.wrappedValue.modify(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  OSAllocatedUnfairLocked.wrappedValue.getter(v11);
  return sub_26A05E614;
}

void sub_26A05E614(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 4);
  v4 = *(*a1 + 5);
  v5 = *(*a1 + 2);
  v6 = *(*a1 + 3);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 4), v4, v5);
    sub_26A05E76C();
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_26A05E76C();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OSAllocatedUnfairLocked.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_26A05E808(a1, a2);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

void sub_26A05E76C()
{
  v1 = *v0;
  v2 = **v0;
  v3 = *(v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v4));
  sub_26A05EABC(v1 + v3);
  os_unfair_lock_unlock((v1 + v4));
}

uint64_t sub_26A05E808(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_26A0622AC();
  return sub_26A06229C();
}

uint64_t sub_26A05E928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_26A05EA24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t sub_26A05EABC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

SmartStackFoundation::SmartStackDefaults::ItemInfoPreference_optional __swiftcall SmartStackDefaults.ItemInfoPreference.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26A06232C();

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

  *v2 = v5;
  return result;
}

uint64_t SmartStackDefaults.ItemInfoPreference.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696B6E6172;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_26A05EC04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E696B6E6172;
  }

  else
  {
    v3 = 1684632949;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E696B6E6172;
  }

  else
  {
    v5 = 1684632949;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26A06235C();
  }

  return v8 & 1;
}

uint64_t sub_26A05ECA4()
{
  sub_26A06238C();
  sub_26A061F5C();

  return sub_26A0623AC();
}

uint64_t sub_26A05ED20(uint64_t a1)
{
  sub_26A061F5C();
}

uint64_t sub_26A05ED88(uint64_t a1)
{
  sub_26A06238C();
  sub_26A061F5C();

  return sub_26A0623AC();
}

uint64_t sub_26A05EE00@<X0>(char *a2@<X8>)
{
  v3 = sub_26A06232C();

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

void sub_26A05EE60(uint64_t *a1@<X8>)
{
  v2 = 1684632949;
  if (*v1)
  {
    v2 = 0x676E696B6E6172;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26A05EE98()
{
  result = sub_26A05EEC4();
  qword_2803683C0 = result;
  byte_2803683C8 = v1 & 1;
  return result;
}

uint64_t sub_26A05EEC4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26A061EFC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_9:
    sub_26A05F3B4(&v14);
    return 0;
  }

  v3 = sub_26A061EFC();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_26A06220C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_9;
  }

  sub_26A05F3B4(&v14);
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_26A061EFC();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = sub_26A061EFC();
    [v7 doubleForKey_];
    v10 = v9;

    return v10;
  }

  return 0;
}

uint64_t static SmartStackDefaults.onboardingDismissTimeoutOverride.getter()
{
  if (qword_280368038 != -1)
  {
    swift_once();
  }

  return qword_2803683C0;
}

uint64_t static SmartStackDefaults.rankingOverlayEnabled.getter()
{
  sub_26A05F1D4(0x6F666E496D657449, 0xEF79616C7265764FLL);
  v1 = v0;
  if (v0)
  {
    v2 = sub_26A06232C();

    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    if (!v2)
    {
      v3 = 0;
    }

    if (v3 == 2)
    {
      v1 = 0;
    }

    else
    {
      if (v3)
      {
        v1 = 1;
      }

      else
      {
        v1 = sub_26A06235C();
      }
    }
  }

  return v1 & 1;
}

uint64_t sub_26A05F1D4(uint64_t a1, uint64_t a2)
{
  if (SSFIsInternalBuild(a1, a2))
  {
    v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v3 = sub_26A061EFC();
    v4 = [v2 initWithSuiteName_];

    if (v4)
    {
      v5 = sub_26A061EFC();
      v6 = [v4 objectForKey_];

      if (v6)
      {
        sub_26A06220C();
        swift_unknownObjectRelease();
        sub_26A05F3B4(v11);
        v7 = sub_26A061EFC();
        v8 = [v4 stringForKey_];

        if (v8)
        {
          v9 = sub_26A061F2C();

          return v9;
        }
      }

      else
      {

        memset(v11, 0, sizeof(v11));
        sub_26A05F3B4(v11);
      }
    }
  }

  return 0;
}

unint64_t sub_26A05F340()
{
  result = qword_2803683D0;
  if (!qword_2803683D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803683D0);
  }

  return result;
}

uint64_t sub_26A05F3B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803683D8, &qword_26A063240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A05F41C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_26A05F538(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_26A05F568@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_26A05F594@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_26A05F680@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t StateDump.DecoderInfo.library.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StateDump.DecoderInfo.type.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double StateDump.StateData.dataType.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_26A05F730(v2, v3, v4, v5, v6);
}

double sub_26A05F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

__n128 StateDump.StateData.dataType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_26A05F7C4(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

void sub_26A05F7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }
}

uint64_t StateDump.StateData.data.getter()
{
  v1 = *(v0 + 40);
  sub_26A05F864(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_26A05F864(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t StateDump.StateData.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26A05C694(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

__n128 StateDump.StateData.init(dataType:data:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 32);
  result = *a1;
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 32) = v4;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

void static StateDump.StateData.dictionary(_:)(uint64_t a2@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = sub_26A061E4C();
  v11[0] = 0;
  v5 = [v3 dataWithPropertyList:v4 format:200 options:0 error:v11];

  v6 = v11[0];
  if (v5)
  {
    v7 = sub_26A061D1C();
    v9 = v8;

    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 2;
    *(a2 + 40) = v7;
    *(a2 + 48) = v9;
  }

  else
  {
    v10 = v6;
    sub_26A061C9C();

    swift_willThrow();
  }
}

uint64_t StateDump.Handle.deinit()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = qword_280368040;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_26A061E0C();
  __swift_project_value_buffer(v5, qword_2803683E0);

  v6 = sub_26A061DEC();
  v7 = sub_26A06218C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    v10 = sub_26A060480(v3, v2, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_26A053000, v6, v7, "Removing handler for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D6595F0](v9, -1, -1);
    MEMORY[0x26D6595F0](v8, -1, -1);
  }

  else
  {
  }

  os_state_remove_handler();

  return v1;
}

uint64_t StateDump.Handle.__deallocating_deinit()
{
  StateDump.Handle.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *static StateDump.addHandler(identifier:queue:triggers:handler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a4;
  if (qword_280368040 != -1)
  {
    swift_once();
  }

  v11 = sub_26A061E0C();
  __swift_project_value_buffer(v11, qword_2803683E0);

  v12 = sub_26A061DEC();
  v13 = sub_26A06218C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_26A060480(a1, a2, v21);
    _os_log_impl(&dword_26A053000, v12, v13, "Registering new state dump handler with identifier %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26D6595F0](v15, -1, -1);
    MEMORY[0x26D6595F0](v14, -1, -1);
  }

  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v10;
  v16[5] = a5;
  v16[6] = a6;
  v21[4] = sub_26A060A68;
  v21[5] = v16;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_26A060250;
  v21[3] = &block_descriptor_0;
  v17 = _Block_copy(v21);

  v18 = os_state_add_handler();
  _Block_release(v17);
  type metadata accessor for StateDump.Handle();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v18;

  return v19;
}

char *sub_26A05FE54(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr))
{
  if (qword_280368040 != -1)
  {
    swift_once();
  }

  v9 = sub_26A061E0C();
  __swift_project_value_buffer(v9, qword_2803683E0);

  v10 = sub_26A061DEC();
  v11 = sub_26A06218C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_26A060480(a2, a3, &v30);
    _os_log_impl(&dword_26A053000, v10, v11, "State dump handler invoked for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D6595F0](v13, -1, -1);
    MEMORY[0x26D6595F0](v12, -1, -1);
  }

  v14 = *(a1 + 16) - 1;
  if (v14 <= 2 && (qword_26A063650[v14] & a4) != 0)
  {
    a5(&v30);
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    v22 = v35;
    v23 = v36;
    v24 = v34;
    sub_26A05F730(v30, v31, v32, v33, v34);
    sub_26A05F864(v22, v23);
    v25 = sub_26A060F6C(&v30, a2, a3);
    sub_26A05F7C4(v18, v19, v20, v21, v24);
    sub_26A05C694(v22, v23);
    v26 = v35;
    v27 = v36;
    sub_26A05F7C4(v30, v31, v32, v33, v34);
    sub_26A05C694(v26, v27);
    return v25;
  }

  else
  {
    v15 = sub_26A061DEC();
    v16 = sub_26A06218C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26A053000, v15, v16, "Invalid trigger", v17, 2u);
      MEMORY[0x26D6595F0](v17, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_26A060250(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_26A0602A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;
  if ((a7 >> 62) > 1)
  {
    if (v7 != 2)
    {
      return 0;
    }

    v10 = *(a6 + 16);
    v9 = *(a6 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v8 < 1)
    {
      return 0;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a6) - a6;
    if (__OFSUB__(HIDWORD(a6), a6))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = v8;
    if (v8 < 1)
    {
      return 0;
    }
  }

  else
  {
    v8 = BYTE6(a7);
    if (!BYTE6(a7))
    {
      return 0;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (a3 != a4)
    {
      v7 = a4 - a3;
      if (__OFSUB__(a4, a3))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return result;
      }

      if (v7 >= a2)
      {
        v7 = a2;
      }

      v12 = a3 + v7;
      if (__OFADD__(a3, v7))
      {
        goto LABEL_40;
      }

      if (v12 >= a3)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_22;
    }

    return 0;
  }

  if (!v7)
  {
LABEL_22:
    a3 = v7;
    goto LABEL_24;
  }

  if (v7 == 2)
  {
    a3 = *(a6 + 16);
  }

  else
  {
    a3 = a6;
  }

LABEL_24:
  if (v8 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v8;
  }

  v12 = a3 + v13;
  if (__OFADD__(a3, v13))
  {
    goto LABEL_37;
  }

  if (v12 < a3)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_29:
  if (a3 == v12)
  {
    return 0;
  }

  if (!result)
  {
    goto LABEL_41;
  }

  v14 = a3;
  sub_26A061D0C();
  result = v12 - v14;
  if (__OFSUB__(v12, v14))
  {
    __break(1u);
    goto LABEL_35;
  }

  return result;
}

uint64_t sub_26A0603CC()
{
  v0 = sub_26A061E0C();
  __swift_allocate_value_buffer(v0, qword_2803683E0);
  __swift_project_value_buffer(v0, qword_2803683E0);
  return sub_26A061DFC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_26A060480(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26A06054C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26A05B288(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26A06054C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26A060658(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26A0622BC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26A060658(uint64_t a1, unint64_t a2)
{
  v3 = sub_26A0606A4(a1, a2);
  sub_26A0607D4(&unk_287AFA590);
  return v3;
}

void *sub_26A0606A4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26A0608C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26A0622BC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26A061FAC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26A0608C0(v10, 0);
        result = sub_26A06227C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26A0607D4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26A060934(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26A0608C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368418, &unk_26A063640);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26A060934(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368418, &unk_26A063640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_26A060A28()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26A060AB8()
{
  result = qword_2803683F8;
  if (!qword_2803683F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803683F8);
  }

  return result;
}

unint64_t sub_26A060B10()
{
  result = qword_280368400;
  if (!qword_280368400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368400);
  }

  return result;
}

unint64_t sub_26A060B68()
{
  result = qword_280368408;
  if (!qword_280368408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368408);
  }

  return result;
}

unint64_t sub_26A060BC0()
{
  result = qword_280368410;
  if (!qword_280368410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368410);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20SmartStackFoundation9StateDumpV8DataTypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26A060C54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26A060C9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A060CE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for StateDump.Trigger(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StateDump.Trigger(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A060D74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26A060DBC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26A060E44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26A060E8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A060F04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280368258, &qword_26A063078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_26A060F6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *a1;
  v58 = *(a1 + 8);
  v5 = *(a1 + 16);
  v57 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(v8);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = *(v7 + 16);
  v11 = *(v7 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v7), v7))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v10 = HIDWORD(v7) - v7;
  }

LABEL_11:
  v13 = SSFStateDataSizeNeeded(v10);
  if (v13 > 0x8000)
  {
    if (qword_280368040 != -1)
    {
      swift_once();
    }

    v14 = sub_26A061E0C();
    __swift_project_value_buffer(v14, qword_2803683E0);

    v15 = sub_26A061DEC();
    v16 = sub_26A06217C();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_25;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v60 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_26A060480(a2, a3, &v60);
    *(v17 + 12) = 2048;
    *(v17 + 14) = v13;
    *(v17 + 22) = 1024;
    *(v17 + 24) = 0x8000;
    v19 = "StateDump %s payload size of %ld bytes exceeds maximum of %d bytes!";
    v20 = v16;
    v21 = v15;
    v22 = v17;
    v23 = 28;
    goto LABEL_24;
  }

  v56 = v4;
  v24 = calloc(1uLL, v13);
  if (!v24)
  {
    if (qword_280368040 == -1)
    {
LABEL_22:
      v29 = sub_26A061E0C();
      __swift_project_value_buffer(v29, qword_2803683E0);

      v15 = sub_26A061DEC();
      v30 = sub_26A06217C();

      if (!os_log_type_enabled(v15, v30))
      {
LABEL_25:

        return 0;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v60 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_26A060480(a2, a3, &v60);
      v19 = "Failed to allocated os_state_data buffer for %s";
      v20 = v30;
      v21 = v15;
      v22 = v17;
      v23 = 12;
LABEL_24:
      _os_log_impl(&dword_26A053000, v21, v20, v19, v22, v23);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26D6595F0](v18, -1, -1);
      MEMORY[0x26D6595F0](v17, -1, -1);
      goto LABEL_25;
    }

LABEL_69:
    swift_once();
    goto LABEL_22;
  }

  v25 = v13 - 200;
  if (__OFSUB__(v13, 200))
  {
    __break(1u);
    goto LABEL_66;
  }

  v26 = v24;
  v55 = v5;
  if (!v6)
  {
    v53 = v13 - 200;
    v54 = a3;
    v27 = v57;
    v28 = 2;
    goto LABEL_28;
  }

  if (v6 == 1)
  {
    v53 = v13 - 200;
    v54 = a3;
    v27 = v57;
    v28 = 3;
LABEL_28:
    *v24 = v28;
    v32 = sub_26A061F3C();
    sub_26A05F730(v56, v58, v55, v27, v6);
    strlcpy(v26 + 8, (v32 + 32), 0x40uLL);

    v33 = sub_26A061F3C();
    strlcpy(v26 + 72, (v33 + 32), 0x40uLL);

    v25 = v53;
    a3 = v54;
    goto LABEL_30;
  }

  *v24 = 1;
LABEL_30:
  v34 = sub_26A061F3C();
  strlcpy(v26 + 136, (v34 + 32), 0x40uLL);

  if (v9 <= 1)
  {
    if (!v9)
    {
      *(v26 + 1) = BYTE6(v8);
      if (sub_26A0602A0((v26 + 200), v25, 0, 0, 1, v7, v8) == BYTE6(v8))
      {
        return v26;
      }

      goto LABEL_50;
    }

    goto LABEL_38;
  }

  if (v9 != 2)
  {
    *(v26 + 1) = 0;
    if (!sub_26A0602A0((v26 + 200), v25, 0, 0, 1, v7, v8))
    {
      return v26;
    }

    goto LABEL_50;
  }

  v36 = *(v7 + 16);
  v35 = *(v7 + 24);
  v37 = __OFSUB__(v35, v36);
  v38 = v35 - v36;
  if (v37)
  {
    __break(1u);
LABEL_38:
    LODWORD(v38) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v38 = v38;
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (HIDWORD(v38))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *(v26 + 1) = v38;
  result = sub_26A0602A0((v26 + 200), v25, 0, 0, 1, v7, v8);
  if (v9 == 2)
  {
    v40 = *(v7 + 16);
    v39 = *(v7 + 24);
    if (!__OFSUB__(v39, v40))
    {
      if (result == (v39 - v40))
      {
        return v26;
      }

      goto LABEL_50;
    }

    goto LABEL_71;
  }

  if (__OFSUB__(HIDWORD(v7), v7))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (result == (HIDWORD(v7) - v7))
  {
    return v26;
  }

LABEL_50:
  v52 = v6;
  if (qword_280368040 != -1)
  {
    swift_once();
  }

  v41 = sub_26A061E0C();
  __swift_project_value_buffer(v41, qword_2803683E0);
  v42 = a3;

  sub_26A05F730(v56, v58, v55, v57, v52);
  sub_26A05F864(v7, v8);
  v43 = sub_26A061DEC();
  v44 = sub_26A06217C();

  if (!os_log_type_enabled(v43, v44))
  {
    sub_26A05F7C4(v56, v58, v55, v57, v52);
    sub_26A05C694(v7, v8);

    return v26;
  }

  v45 = v43;
  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v60 = v47;
  *v46 = 136315394;
  result = sub_26A060480(a2, v42, &v60);
  *(v46 + 4) = result;
  *(v46 + 12) = 2048;
  if (v9 > 1)
  {
    v48 = v52;
    if (v9 != 2)
    {
      v49 = 0;
      goto LABEL_64;
    }

    v51 = *(v7 + 16);
    v50 = *(v7 + 24);
    v37 = __OFSUB__(v50, v51);
    v49 = v50 - v51;
    if (!v37)
    {
      goto LABEL_64;
    }

    __break(1u);
  }

  else
  {
    v48 = v52;
    if (!v9)
    {
      v49 = BYTE6(v8);
LABEL_64:
      *(v46 + 14) = v49;
      sub_26A05F7C4(v56, v58, v55, v57, v48);
      sub_26A05C694(v7, v8);
      _os_log_impl(&dword_26A053000, v45, v44, "State dump for %s wrote inconsistent number of bytes, %ld bytes", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x26D6595F0](v47, -1, -1);
      MEMORY[0x26D6595F0](v46, -1, -1);

      return v26;
    }
  }

  LODWORD(v49) = HIDWORD(v7) - v7;
  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    v49 = v49;
    goto LABEL_64;
  }

LABEL_73:
  __break(1u);
  return result;
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

char *UserDefaultsObserver.__allocating_init(defaults:preference:changeHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  *&v12[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults] = a1;
  v13 = &v12[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_preference];
  *v13 = a2;
  *(v13 + 1) = a3;
  v14 = &v12[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_changeHandler];
  *v14 = a4;
  *(v14 + 1) = a5;
  v22.receiver = v12;
  v22.super_class = v6;
  v15 = a1;

  v16 = objc_msgSendSuper2(&v22, sel_init);
  v17 = *&v16[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults];
  v18 = v16;
  v19 = v17;
  v20 = sub_26A061EFC();

  [v19 addObserver:v18 forKeyPath:v20 options:1 context:{0, v22.receiver, v22.super_class}];

  return v18;
}

char *UserDefaultsObserver.init(defaults:preference:changeHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults] = a1;
  v13 = &v6[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_preference];
  *v13 = a2;
  *(v13 + 1) = a3;
  v14 = &v6[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_changeHandler];
  *v14 = a4;
  *(v14 + 1) = a5;
  v22.receiver = v6;
  v22.super_class = ObjectType;
  v15 = a1;

  v16 = objc_msgSendSuper2(&v22, sel_init);
  v17 = *&v16[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults];
  v18 = v16;
  v19 = v17;
  v20 = sub_26A061EFC();

  [v19 addObserver:v18 forKeyPath:v20 options:1 context:{0, v22.receiver, v22.super_class}];

  return v18;
}

id UserDefaultsObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults];
  v3 = v0;

  v4 = sub_26A061EFC();

  [v2 removeObserver:v3 forKeyPath:v4];

  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id UserDefaultsObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}