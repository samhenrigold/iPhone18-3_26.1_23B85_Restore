uint64_t sub_217E32F90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217E32FC8(uint64_t a1)
{
  result = type metadata accessor for ScopeReader.CurrentScope(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Dependencies(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_217E3306C(uint64_t a1)
{
  type metadata accessor for Storage();
  if (v1 <= 0x3F)
  {
    sub_217E3318C(319, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_217E33138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217E70794();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_217E3318C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217E70794();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for Dependencies(uint64_t a1)
{
  result = qword_2811B1500;
  if (!qword_2811B1500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217E3324C(uint64_t a1)
{
  type metadata accessor for Storage();
  if (v1 <= 0x3F)
  {
    sub_217E33138(319, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Dependencies.AmbiguousResolutionContext();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217E33378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217E333B4(uint64_t a1)
{
  result = sub_217E70374();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E3343C()
{
  sub_217E33A20(0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_2811B0BD0 = result;
  return result;
}

double static Scope.root(dependencyContainer:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2811B0BC8 != -1)
  {
    swift_once();
  }

  v5 = off_2811B0BD0;
  os_unfair_lock_lock(off_2811B0BD0 + 6);
  v6 = *(v5 + 2);
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v5 + 2) = v6 + 1;
  os_unfair_lock_unlock(v5 + 6);
  sub_217E33AD0(a1, v20);
  type metadata accessor for Storage();
  v5 = swift_allocObject();
  v7 = MEMORY[0x277D84F98];
  *(v5 + 7) = MEMORY[0x277D84F98];
  v8 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84FA0];
  *(v5 + 19) = MEMORY[0x277D84F90];
  *(v5 + 20) = v9;
  *(v5 + 21) = v8;
  *(v5 + 8) = v6;
  *(v5 + 9) = v7;
  *(v5 + 10) = v7;
  *(v5 + 11) = v7;
  *(v5 + 12) = v7;
  *(v5 + 13) = v7;
  *(v5 + 14) = v7;
  *(v5 + 15) = v7;
  *(v5 + 16) = v7;
  *(v5 + 17) = v7;
  *(v5 + 18) = v7;
  sub_217E33C00(v20, v5 + 16);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_217E336BC(v20, v19);
  swift_beginAccess();

  sub_217E33874(v19, v6);
  swift_endAccess();
  swift_beginAccess();
  v10 = sub_217E33C18(v6);
  if (v11)
  {
    v2 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + 14);
    v17 = v13;
    *(v5 + 14) = 0x8000000000000000;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      sub_217E5AA34(v2, v13);
      *(v5 + 14) = v13;
      goto LABEL_7;
    }

LABEL_9:
    sub_217E59A0C();
    v13 = v17;
    goto LABEL_6;
  }

LABEL_7:
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + 15);
  *(v5 + 15) = 0x8000000000000000;
  sub_217E34140(1953460050, 0xE400000000000000, v6, v14);
  *(v5 + 15) = v18;
  swift_endAccess();
  sub_217E33804(v20, &qword_2811B0F90, qword_2811B0F98, &protocol descriptor for DependencyContainer);
  type metadata accessor for StorageHandle();
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = v6;
  *a2 = v5;
  *(a2 + 8) = v15;
  *&result = 1953460050;
  *(a2 + 16) = xmmword_217E71C40;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_217E336BC(uint64_t a1, uint64_t a2)
{
  sub_217E33B34(0, &qword_2811B0F90, qword_2811B0F98, &protocol descriptor for DependencyContainer, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E3374C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_217E337A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_217E56B6C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_217E33804(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_217E33B34(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_217E33874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_217E33C00(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_217E496D8(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_217E33804(a1, &qword_2811B0F90, qword_2811B0F98, &protocol descriptor for DependencyContainer);
    v7 = sub_217E33C18(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_217E59B5C();
        v11 = v13;
      }

      sub_217E33C00((*(v11 + 56) + 40 * v9), v14);
      sub_217E5AEE0(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_217E33804(v14, &qword_2811B0F90, qword_2811B0F98, &protocol descriptor for DependencyContainer);
  }

  return result;
}

uint64_t sub_217E33990(uint64_t result, int a2, int a3)
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

uint64_t sub_217E339D8(uint64_t *a1, int a2)
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

void sub_217E33A20(uint64_t a1)
{
  if (!qword_2811B0950)
  {
    type metadata accessor for os_unfair_lock_s();
    v1 = sub_217E70834();
    if (!v2)
    {
      atomic_store(v1, &qword_2811B0950);
    }
  }
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2811B0968)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2811B0968);
    }
  }
}

uint64_t sub_217E33AD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_217E33B34(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_217E3374C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_217E33B9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217E33C00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_217E33C18(uint64_t a1)
{
  sub_217E709A4();
  MEMORY[0x21CEAE230](a1);
  v2 = sub_217E709D4();

  return sub_217E33C84(a1, v2);
}

unint64_t sub_217E33C84(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_217E33CF0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_217E34278();
    v4 = sub_217E708E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_217E33D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_217E33CF0(0, &qword_2811B08F8, MEMORY[0x277D837D0]);
  v34 = v4;
  result = sub_217E708C4();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      sub_217E709A4();
      MEMORY[0x21CEAE230](v21);
      result = sub_217E709D4();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
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

uint64_t Scope.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 32);
  return sub_217E34040(a2, &v5, a2, a3);
}

{
  v5 = *(v3 + 32);
  return sub_217E6AB80(a1, &v5, a2, a3);
}

{
  v5 = *(v3 + 32);
  return sub_217E6AB98(a1, &v5, a2, a3);
}

uint64_t sub_217E34040(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  swift_beginAccess();
  v8 = v4[6];
  v9 = v4[4];
  v21 = v4[5];
  v22 = v8;
  v10 = v4[6];
  v11 = v4[8];
  v23 = v4[7];
  v24 = v11;
  v20 = v4[4];
  v17 = v10;
  v18 = v23;
  v19 = v4[8];
  v15 = v9;
  v16 = v21;
  v14 = v7;
  sub_217E3438C(&v20, v25);
  v12 = sub_217E343EC(a3, &v14);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v25[0] = v15;
  v25[1] = v16;
  result = sub_217E347DC(v25);
  if ((v12 & 1) == 0)
  {
    *&v15 = v7;
    return sub_217E34830(a3, &v15, a3, a4);
  }

  return result;
}

unint64_t sub_217E34140(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_217E33C18(a3);
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
      sub_217E598A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_217E33D54(v16, a4 & 1);
    v11 = sub_217E33C18(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_217E34320(v11, a3, a1, a2, v21);
  }
}

unint64_t sub_217E34278()
{
  result = qword_2811B0BC0;
  if (!qword_2811B0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B0BC0);
  }

  return result;
}

unint64_t sub_217E342CC()
{
  result = qword_2811B0BB8;
  if (!qword_2811B0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B0BB8);
  }

  return result;
}

unint64_t sub_217E34320(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_217E343EC(uint64_t a1, uint64_t *a2)
{
  sub_217E345F8(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 40);
  if (*(v7 + 16) && (v8 = sub_217E33C18(*a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = sub_217E343E8();
  if (!*(v10 + 16))
  {

    goto LABEL_9;
  }

  v14 = sub_217E3960C(v11, v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_9:

    v21 = type metadata accessor for ScopeGraphElement.ID(0);
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v20 = 0;
    goto LABEL_10;
  }

  v17 = *(v10 + 56);
  v18 = type metadata accessor for ScopeGraphElement.ID(0);
  v19 = *(v18 - 8);
  sub_217E35F40(v17 + *(v19 + 72) * v14, v6, type metadata accessor for ScopeGraphElement.ID);

  v20 = 1;
  (*(v19 + 56))(v6, 0, 1, v18);
LABEL_10:
  sub_217E3477C(v6, sub_217E345F8);
  return v20;
}

void sub_217E3462C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217E34690(uint64_t a1, uint64_t a2)
{
  sub_217E709E4();
  MEMORY[0x21CEAE230](a2);
  v3 = sub_217E709C4();
  sub_217E70A34();
  return v3;
}

uint64_t sub_217E3470C(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E70374();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_217E3477C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217E34830(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  v63 = a1;
  v7 = type metadata accessor for ScopeReader.CurrentScope(0);
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x277D83D88];
  sub_217E35174(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope, MEMORY[0x277D83D88]);
  v65 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v60 - v13;
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, v9);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v72 = &v60 - v16;
  v17 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v71 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_217E70794();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  v64 = type metadata accessor for ScopeGraphElement.ID(0);
  v26 = *(v64 - 1);
  MEMORY[0x28223BE20](v64);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a2;
  sub_217E70364();
  v74 = v29;
  v81[0] = v29;
  v77 = a3;
  v78 = v75;
  v79 = v4;
  v30 = v4;
  sub_217E351D8(v81, v28, sub_217E37CC8, v76, v25);
  v31 = *(v20 + 16);
  v73 = v25;
  v31(v23, v25, v19);
  if ((*(v17 + 48))(v23, 1, a3) == 1)
  {
    v32 = v74;
    v33 = *(v20 + 8);
    v33(v23, v19);
    if (qword_2811B1810 != -1)
    {
      swift_once();
    }

    v34 = sub_217E703B4();
    sub_217E35794(v34, qword_2811B1820);
    v35 = sub_217E70394();
    v36 = sub_217E70774();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v32;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v81[0] = v39;
      *v38 = 136315394;
      v80[0] = v37;
      sub_217E540D8();
      v40 = sub_217E708F4();
      v42 = sub_217E58888(v40, v41, v81);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v43 = sub_217E70A34();
      v45 = sub_217E58888(v43, v44, v81);

      *(v38 + 14) = v45;
      _os_log_impl(&dword_217E31000, v35, v36, "Dependency container did not provide value for Rule. Misconfiguration? Scope=%s, Rule=%s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v39, -1, -1);
      MEMORY[0x21CEAE800](v38, -1, -1);
    }

    v33(v73, v19);
  }

  else
  {
    v62 = v20;
    v63 = v19;
    v46 = v71;
    (*(v17 + 32))(v71, v23, a3);
    v80[0] = v74;
    swift_beginAccess();
    v61 = v17;
    sub_217E377FC(v46, v80, v28, a3, v75);
    swift_endAccess();
    v47 = v72;
    sub_217E35350(v28, v72, type metadata accessor for ScopeGraphElement.ID);
    (*(v26 + 56))(v47, 0, 1, v64);
    v64 = v28;
    v60 = a3;
    if (qword_2811B1640 != -1)
    {
      swift_once();
    }

    v48 = sub_217E35794(v65, qword_2811B1648);
    swift_beginAccess();
    v65 = type metadata accessor for ScopeReader.CurrentScope;
    v49 = MEMORY[0x277D83D88];
    v50 = v69;
    sub_217E3B7E0(v48, v69, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope, MEMORY[0x277D83D88]);
    v51 = v68;
    v52 = v70;
    v53 = v72;
    sub_217E3B7E0(v72, v70 + *(v68 + 24), &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, v49);
    v54 = v74;
    *v52 = v30;
    v52[1] = v54;
    v55 = v66;
    sub_217E35350(v52, v66, type metadata accessor for ScopeReader.CurrentScope);
    (*(v67 + 56))(v55, 0, 1, v51);
    swift_beginAccess();

    sub_217E35A50(v55, v48);
    swift_endAccess();
    v56 = v64;
    v57 = v54;
    v58 = v60;
    sub_217E3B850(v52, v30, v64, v57, v60);
    swift_beginAccess();
    sub_217E37654(v50, v48);
    swift_endAccess();
    sub_217E365C0(v52, type metadata accessor for ScopeReader.CurrentScope);
    sub_217E377A0(v50, qword_2811B16B8, v65, v49);
    sub_217E377A0(v53, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, v49);
    (*(v61 + 8))(v71, v58);
    (*(v62 + 8))(v73, v63);
    v28 = v56;
  }

  return sub_217E365C0(v28, type metadata accessor for ScopeGraphElement.ID);
}

void sub_217E35110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_217E35174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217E351D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v7 = v6;
  v13 = MEMORY[0x277D83D88];
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v19 - v15;
  v20 = *a1;
  sub_217E35350(a2, &v19 - v15, type metadata accessor for ScopeGraphElement.ID);
  v17 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  sub_217E353B8(v7, &v20, v16, a3, a4, x8_0);
  return sub_217E377A0(v16, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, v13);
}

uint64_t sub_217E35350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_217E353B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[2] = a5;
  v25 = a4;
  v24[1] = a6;
  v9 = type metadata accessor for ScopeReader.CurrentScope(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217E3318C(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v24 - v18;
  v20 = *a2;
  if (qword_2811B1640 != -1)
  {
    v23 = v17;
    swift_once();
    v17 = v23;
  }

  v21 = sub_217E35794(v17, qword_2811B1648);
  swift_beginAccess();
  sub_217E358A0(v21, v19, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  sub_217E358A0(a3, v12 + *(v9 + 24), &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  *v12 = a1;
  v12[1] = v20;
  sub_217E3590C(v12, v16);
  (*(v10 + 56))(v16, 0, 1, v9);
  swift_beginAccess();

  sub_217E35A50(v16, v21);
  swift_endAccess();
  v25(v12);
  swift_beginAccess();
  sub_217E37654(v19, v21);
  swift_endAccess();
  sub_217E36560(v12, type metadata accessor for ScopeReader.CurrentScope);
  return sub_217E37744(v19, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
}

uint64_t sub_217E35680()
{
  sub_217E3318C(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  v1 = v0;
  sub_217E35730(v0, qword_2811B1648);
  v2 = sub_217E35794(v1, qword_2811B1648);
  v3 = type metadata accessor for ScopeReader.CurrentScope(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

uint64_t *sub_217E35730(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_217E35794(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_217E357E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217E3318C(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_217E358A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_217E3318C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_217E3590C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeReader.CurrentScope(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E35984(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_217E3318C(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_217E35A50(uint64_t a1, uint64_t a2)
{
  sub_217E3318C(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_217E35AD0(uint64_t *a1)
{
  v2 = *(v1 + 48);
  if (!*(v2 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *a1;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = sub_217E33C18(v3);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v3 = *(*(v2 + 56) + 8 * v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_217E47604(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    if (v8 >= v7 >> 1)
    {
      v4 = sub_217E47604((v7 > 1), v8 + 1, 1, v4);
    }

    *(v4 + 2) = v8 + 1;
    *&v4[8 * v8 + 32] = v3;
  }

  while (*(v2 + 16));
  return v4;
}

uint64_t sub_217E35BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ScopeReader.CurrentScope(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Dependencies(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_217E35CBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_217E35D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_217E35D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_217E35E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = *a4;
  swift_beginAccess();
  a9(a1, a2, a3, &v17, a5, a6, a7, a8);
  return swift_endAccess();
}

uint64_t sub_217E35ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E70374();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_217E35F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_217E35FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217E3601C(uint64_t a1)
{
  result = type metadata accessor for ScopeGraphElement.ID(319);
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

uint64_t *sub_217E360A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_217E36108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_217E361A8(a1, a6);
  v11 = type metadata accessor for VertexUpdate(0, a3, a4, a5);
  v12 = *(*(a3 - 8) + 32);
  v13 = a6 + *(v11 + 44);

  return v12(v13, a2, a3);
}

uint64_t sub_217E361A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_217E3620C(uint64_t a1)
{
  if (!qword_2811B0920)
  {
    sub_217E33B34(255, qword_2811B1168, qword_2811B1708, &protocol descriptor for GraphUpdate, type metadata accessor for TypedDictionary);
    sub_217E34278();
    v1 = sub_217E708E4();
    if (!v2)
    {
      atomic_store(v1, &qword_2811B0920);
    }
  }
}

void sub_217E362C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_217E3374C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_217E3632C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_217E3374C(255, a3, a4);
    sub_217E37580();
    v5 = sub_217E708E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_217E363D0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 24 * result + 16) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_217E36448()
{
  result = qword_2811B1280;
  if (!qword_2811B1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B1280);
  }

  return result;
}

uint64_t sub_217E364B4(void *a1)
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

uint64_t sub_217E36500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217E36560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217E365C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217E36634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScopeReader.CurrentScope(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Dependencies(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_217E36724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, char *, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v24 = a7;
  v25 = a8;
  v22 = a5;
  v23 = a6;
  sub_217E3318C(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for ScopeGraphElement.ID(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScopeReader.CurrentScope(0);
  sub_217E358A0(v8 + *(v19 + 24), v14, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_217E37744(v14, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  }

  sub_217E35D24(v14, v18, type metadata accessor for ScopeGraphElement.ID);
  v26 = *(v8 + 8);
  v25(a2, a3, v18, &v26, a4, v22, v23, v24);
  return sub_217E36560(v18, type metadata accessor for ScopeGraphElement.ID);
}

uint64_t sub_217E36924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v14 = a2;
  v15 = type metadata accessor for ScopeGraphElement.ID(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a4;
  nullsub_1();
  v20 = v19;
  v22 = v21;
  sub_217E35F40(a3, v17, type metadata accessor for ScopeGraphElement.ID);
  v41[0] = v20;
  v41[1] = v22;
  v24 = type metadata accessor for MutatingFunction(255, a5, a6, v23);
  WitnessTable = swift_getWitnessTable();
  v42[3] = type metadata accessor for VertexUpdate(0, v24, WitnessTable, a7);
  v42[4] = swift_getWitnessTable();
  v26 = sub_217E360A4(v42);
  sub_217E36108(v17, v41, v24, WitnessTable, a7, v26);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = *(v8 + 64);
  v28 = v41[0];
  sub_217E33C18(v18);
  v30 = *(v28 + 16);
  v31 = (v29 & 1) == 0;
  v32 = __OFADD__(v30, v31);
  v33 = v30 + v31;
  if (v32)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v29;
  if (*(v28 + 24) < v33)
  {
    sub_217E36BF0(v33, isUniquelyReferenced_nonNull_native);
    v28 = v41[0];
    sub_217E33C18(v18);
    if ((v14 & 1) == (v34 & 1))
    {
      goto LABEL_6;
    }

    sub_217E70944();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_10:
    sub_217E58EA4();
    *(v8 + 64) = v41[0];
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_6:
  *(v8 + 64) = v28;
  if ((v14 & 1) == 0)
  {
LABEL_7:
    sub_217E362BC();
  }

LABEL_8:
  v35 = sub_217E36EF4(a6, a6);
  v37 = v36;
  v39 = v38;
  sub_217E36F24(v42, v41);
  sub_217E36FB4(v41, v35, v37, v39);

  return sub_217E382C4(v42, &qword_2811B1700, qword_2811B1708, &protocol descriptor for GraphUpdate);
}

__n128 sub_217E36BE4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_217E36BF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_217E3620C(0);
  v30 = v4;
  result = sub_217E708C4();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_217E709A4();
      MEMORY[0x21CEAE230](v20);
      result = sub_217E709D4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_217E36E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_217E36EB0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_217E36F24(uint64_t a1, uint64_t a2)
{
  sub_217E362C4(0, &qword_2811B1700, qword_2811B1708, &protocol descriptor for GraphUpdate, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E36FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 24))
  {
    sub_217E33C00(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v4;
    sub_217E370A8(v11, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v10;
  }

  else
  {
    sub_217E33804(a1, &qword_2811B1700, qword_2811B1708, &protocol descriptor for GraphUpdate);
    sub_217E6CA84(a4, v11);

    return sub_217E33804(v11, &qword_2811B1700, qword_2811B1708, &protocol descriptor for GraphUpdate);
  }

  return result;
}

uint64_t sub_217E370A8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_217E3722C(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_217E59E78(&qword_2811B0940, qword_2811B1708, &protocol descriptor for GraphUpdate, sub_217E375D4);
      v13 = v21;
      goto LABEL_8;
    }

    sub_217E363A0(v18, a5 & 1);
    v13 = sub_217E3722C(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 40 * v13);
    sub_217E364B4(v24);

    return sub_217E33C00(a1, v24);
  }

  else
  {
    sub_217E3649C(v13, a2, a3, a4, a1, v23);
  }
}

unint64_t sub_217E3722C(uint64_t a1)
{
  sub_217E709A4();
  MEMORY[0x21CEAE230](a1);
  v2 = sub_217E709D4();

  return sub_217E363D0(a1, v2);
}

uint64_t sub_217E37298(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  sub_217E3632C(0, a3, a4, a5);
  v40 = v8;
  result = sub_217E708C4();
  v11 = result;
  if (*(v9 + 16))
  {
    v39 = v9;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 56);
      v26 = (*(v9 + 48) + 24 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v25 + 40 * v24;
      if (v40)
      {
        a6(v30, v42);
      }

      else
      {
        sub_217E33AD0(v30, v42);
      }

      sub_217E709A4();
      MEMORY[0x21CEAE230](v29);
      result = sub_217E709D4();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 24 * v19);
      *v20 = v27;
      v20[1] = v28;
      v20[2] = v29;
      result = (a6)(v42, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
      v9 = v39;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v7 = v6;
      goto LABEL_34;
    }

    v38 = 1 << *(v9 + 32);
    v7 = v6;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v7 = v11;
  return result;
}

unint64_t sub_217E37580()
{
  result = qword_2811B1288;
  if (!qword_2811B1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B1288);
  }

  return result;
}

uint64_t sub_217E375D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a6[6] + 24 * a1);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  result = a7(a5, a6[7] + 40 * a1);
  v10 = a6[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v12;
  }

  return result;
}

uint64_t sub_217E37654(uint64_t a1, uint64_t a2)
{
  sub_217E3318C(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E376D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_217E393BC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_217E37744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_217E3318C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_217E377A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_217E35174(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_217E377FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = type metadata accessor for RuleVertex(0, a4, a5, a4);
  v11 = sub_217E383E4(a1, v8, v9, v10);
  v12 = sub_217E343E8();
  v16 = v7;
  sub_217E38428(v11, v12, v13, v14, &v16, a3);
}

void *sub_217E378EC(uint64_t a1)
{
  v2 = *v1;
  *(v1 + *(*v1 + 112)) = 1;
  *(v1 + *(*v1 + 120)) = 0;
  *(v1 + *(*v1 + 128)) = 0;
  *(v1 + *(*v1 + 136)) = 0;
  (*(*(*(v2 + 80) - 8) + 16))(v1 + *(*v1 + 104), a1, *(v2 + 80));
  swift_getMetatypeMetadata();
  v1[2] = sub_217E705D4();
  v1[3] = v3;
  return v1;
}

uint64_t sub_217E379F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ScopeReader.CurrentScope(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v9 = sub_217E703B4();
  sub_217E35794(v9, qword_2811B1820);
  sub_217E35350(a1, v8, type metadata accessor for ScopeReader.CurrentScope);
  v10 = sub_217E70394();
  v11 = sub_217E70764();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25[1] = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    *v13 = 136315394;
    v26 = *(v8 + 1);
    v27[0] = v14;
    sub_217E540D8();
    v15 = sub_217E708F4();
    v17 = v16;
    sub_217E365C0(v8, type metadata accessor for ScopeReader.CurrentScope);
    v18 = sub_217E58888(v15, v17, v27);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v26 = a2;
    swift_getMetatypeMetadata();
    v19 = sub_217E705D4();
    v21 = sub_217E58888(v19, v20, v27);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_217E31000, v10, v11, "Scope is initializing Rule. Scope=%s, Rule=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v14, -1, -1);
    MEMORY[0x21CEAE800](v13, -1, -1);
  }

  else
  {

    sub_217E365C0(v8, type metadata accessor for ScopeReader.CurrentScope);
  }

  v26 = *(a1 + 8);
  sub_217E37D48(&v26, v27);
  v22 = v28;
  v23 = v29;
  sub_217E37F28(v27, v28);
  (*(v23 + 8))(a2, a2, v22, v23);
  return sub_217E364B4(v27);
}

uint64_t sub_217E37CD4()
{
  v0 = sub_217E703B4();
  sub_217E35730(v0, qword_2811B1820);
  sub_217E35794(v0, qword_2811B1820);
  return sub_217E703A4();
}

uint64_t sub_217E37D48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = *(v2 + 56);
  if (*(v6 + 16) && (v7 = sub_217E33C18(v5), (v8 & 1) != 0))
  {
    sub_217E33AD0(*(v6 + 56) + 40 * v7, v34);
    sub_217E33C00(v34, a2);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    v10 = *(v3 + 80);
    v11 = *(v3 + 112);
    v30 = *(v3 + 96);
    v31 = v11;
    v12 = *(v3 + 112);
    v32 = *(v3 + 128);
    v13 = *(v3 + 80);
    v29[0] = *(v3 + 64);
    v29[1] = v13;
    v25 = v10;
    v26 = v30;
    v14 = *(v3 + 128);
    v27 = v12;
    v28 = v14;
    v24 = v29[0];
    v23 = v5;
    sub_217E3438C(v29, v22);
    v15 = sub_217E35AD0(&v23);
    v33[2] = v26;
    v33[3] = v27;
    v33[4] = v28;
    v33[0] = v24;
    v33[1] = v25;
    result = sub_217E347DC(v33);
    v16 = *(v15 + 2);
    if (v16)
    {
      v17 = 0;
      while (v17 < *(v15 + 2))
      {
        v18 = *&v15[8 * v17 + 32];
        swift_beginAccess();
        v19 = *(v3 + 56);
        if (*(v19 + 16))
        {
          v20 = sub_217E33C18(v18);
          if (v21)
          {
            sub_217E33AD0(*(v19 + 56) + 40 * v20, &v24);
            sub_217E33C00(&v24, a2);
            swift_endAccess();
          }
        }

        ++v17;
        result = swift_endAccess();
        if (v16 == v17)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:

      return sub_217E33AD0(v3 + 16, a2);
    }
  }

  return result;
}

void *sub_217E37F28(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t _s9TeaBreeze11ScopeReaderV7currentACyFZ_0@<X0>(uint64_t a1@<X8>)
{
  sub_217E3318C(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  v3 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = type metadata accessor for ScopeReader.CurrentScope(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  if (qword_2811B1640 != -1)
  {
    swift_once();
  }

  v13 = sub_217E35794(v3, qword_2811B1648);
  swift_beginAccess();
  sub_217E358A0(v13, v5, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_217E37744(v5, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope);
    result = sub_217E708A4();
    __break(1u);
  }

  else
  {
    sub_217E35D24(v5, v12, type metadata accessor for ScopeReader.CurrentScope);
    sub_217E3590C(v12, a1);
    sub_217E35D24(v12, v10, type metadata accessor for ScopeReader.CurrentScope);
    v14 = (a1 + *(type metadata accessor for ScopeReader(0) + 20));
    v15 = *v10;
    v16 = v10[1];
    v17 = *(v6 + 24);
    v18 = type metadata accessor for Dependencies(0);
    sub_217E358A0(v10 + v17, v14 + *(v18 + 24), &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);

    sub_217E36560(v10, type metadata accessor for ScopeReader.CurrentScope);
    v19 = *(v18 + 28);
    type metadata accessor for Dependencies.AmbiguousResolutionContext();
    result = swift_allocObject();
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0;
    *(v14 + v19) = result;
    *v14 = v15;
    v14[1] = v16;
  }

  return result;
}

uint64_t sub_217E382C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_217E362C4(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_217E38334(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_217E383E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RuleVertex(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_217E378EC(a1);
}

uint64_t sub_217E38428(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v62 = a3;
  v63 = a4;
  v61 = a2;
  v64 = *a1;
  v10 = *(v64 + 80);
  v70 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v69 = &v60 - v11;
  sub_217E38B58(0);
  MEMORY[0x28223BE20](v12 - 8);
  v68 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ScopeGraphElement.ID(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ScopeGraphElement(0);
  MEMORY[0x28223BE20](v60);
  v19 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217E38B24(0);
  v66 = *(v20 - 8);
  v67 = v20;
  MEMORY[0x28223BE20](v20);
  v65 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E345F8(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a5;
  v71 = a6;
  sub_217E35F40(a6, v24, type metadata accessor for ScopeGraphElement.ID);
  (*(v15 + 56))(v24, 0, 1, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v25;
  v73 = v6;
  v27 = *(v6 + 40);
  v76[0] = v27;
  v29 = sub_217E33C18(v25);
  v30 = v27[2];
  v31 = (v28 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(v14) = v28;
  if (v27[3] >= v32)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_217E59708();
    v27 = v76[0];
    goto LABEL_6;
  }

  sub_217E38D14(v32, isUniquelyReferenced_nonNull_native);
  v27 = v76[0];
  v33 = sub_217E33C18(v72);
  if ((v14 & 1) != (v34 & 1))
  {
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v29 = v33;
LABEL_6:
  v35 = v64;
  *(v73 + 40) = v27;
  if ((v14 & 1) == 0)
  {
    sub_217E36EB0(v29, v72, MEMORY[0x277D84F98], v27);
  }

  v36 = v63;

  sub_217E391AC(v24, v61, v62, v36);
  v37 = v71;
  sub_217E35F40(v71, v17, type metadata accessor for ScopeGraphElement.ID);
  v64 = *(v35 + 88);
  v76[3] = type metadata accessor for RuleVertex(0, v10, v64, v38);
  v76[4] = swift_getWitnessTable();
  v76[0] = a1;
  v39 = v60;
  v40 = *(v60 + 20);
  sub_217E35F40(v17, v19 + v40, type metadata accessor for ScopeGraphElement.ID);
  sub_217E33AD0(v76, v19 + *(v39 + 24));
  v74 = 0;
  v75 = 0xE000000000000000;

  sub_217E70814();

  v74 = 4015177;
  v75 = 0xE300000000000000;
  v41 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
  MEMORY[0x21CEADE80](v41);

  MEMORY[0x21CEADE80](0x7B3D61746144202CLL, 0xE900000000000020);
  v42 = *(a1 + 2);
  v43 = *(a1 + 3);

  MEMORY[0x21CEADE80](v42, v43);

  MEMORY[0x21CEADE80](32032, 0xE200000000000000);
  v44 = v74;
  v45 = v75;
  sub_217E3477C(v17, type metadata accessor for ScopeGraphElement.ID);
  *v19 = v44;
  v19[1] = v45;
  sub_217E364B4(v76);
  v46 = v65;
  sub_217E35F40(v19, v65, type metadata accessor for ScopeGraphElement);
  sub_217E35F40(v19 + v40, v17, type metadata accessor for ScopeGraphElement.ID);
  v47 = v46;
  v48 = v68;
  sub_217E39C30(v47, v68, sub_217E38B24);
  (*(v66 + 56))(v48, 0, 1, v67);
  v49 = v73;
  sub_217E39EA0(v48, v17);
  sub_217E3477C(v19, type metadata accessor for ScopeGraphElement);
  v50 = *(*a1 + 104);
  swift_beginAccess();
  v52 = v69;
  v51 = v70;
  v53 = *(v70 + 16);
  v53(v69, &a1[v50], v10);
  v54 = v72;
  v74 = v72;
  v68 = a1;
  v55 = v37;
  v56 = v37;
  v57 = v64;
  sub_217E3B178(v52, &v74, v56, v49, v10, v64);
  v58 = *(v51 + 8);
  v58(v52, v10);
  v53(v52, &v68[v50], v10);
  v74 = v54;
  sub_217E3B688(v52, &v74, v55, v73, v10, v57);
  return (v58)(v52, v10);
}

uint64_t sub_217E38B8C(uint64_t a1)
{
  result = type metadata accessor for ScopeGraphElement.ID(319);
  if (v2 <= 0x3F)
  {
    result = sub_217E38C20();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217E38C20()
{
  result = qword_2811B0B18;
  if (!qword_2811B0B18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811B0B18);
  }

  return result;
}

uint64_t sub_217E38CA4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E38D14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_217E39024(0, &qword_2811B0900, sub_217E39094);
  v30 = v4;
  result = sub_217E708C4();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_217E709A4();
      MEMORY[0x21CEAE230](v20);
      result = sub_217E709D4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_217E38FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_217E34278();
    v4 = sub_217E708E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_217E39024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_217E34278();
    v4 = sub_217E708E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_217E39094(uint64_t a1)
{
  if (!qword_2811B0988[0])
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    sub_217E39100();
    v1 = sub_217E70564();
    if (!v2)
    {
      atomic_store(v1, qword_2811B0988);
    }
  }
}

unint64_t sub_217E39100()
{
  result = qword_2811B1298;
  if (!qword_2811B1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B1298);
  }

  return result;
}

unint64_t sub_217E39158()
{
  result = qword_2811B1290;
  if (!qword_2811B1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B1290);
  }

  return result;
}

uint64_t sub_217E391AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_217E393BC(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ScopeGraphElement.ID(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_217E376D4(a1, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    sub_217E6CCD0(a2, a3, a4, v11);

    return sub_217E376D4(v11, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  }

  else
  {
    sub_217E35CBC(a1, v14, type metadata accessor for ScopeGraphElement.ID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    sub_217E39484(v14, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v19;
  }

  return result;
}

void sub_217E393BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_217E39420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217E39484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v14 = sub_217E3960C(a2, a3, a4);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a5 & 1) != 0)
  {
LABEL_7:
    v20 = *v6;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for ScopeGraphElement.ID(0);
      return sub_217E5BE24(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for ScopeGraphElement.ID);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a5 & 1) == 0)
  {
    sub_217E594AC();
    goto LABEL_7;
  }

  sub_217E39778(v17, a5 & 1);
  v24 = sub_217E3960C(a2, a3, a4);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_15:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v6;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_217E39B54(v14, a2, a3, a4, a1, v20);
}

unint64_t sub_217E3960C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217E709A4();
  MEMORY[0x21CEAE230](a1);
  sub_217E705F4();
  v6 = sub_217E709D4();

  return sub_217E396A0(a1, a2, a3, v6);
}

unint64_t sub_217E396A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == a1)
      {
        v14 = v13[1] == a2 && v13[2] == a3;
        if (v14 || (sub_217E70924() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_217E39778(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ScopeGraphElement.ID(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_217E39AE0(0, &qword_2811B0948, MEMORY[0x277D84460]);
  v41 = v4;
  result = sub_217E708C4();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 24 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v23 + *(v40 + 72) * v22;
      v42 = *(v40 + 72);
      if (v41)
      {
        sub_217E361A8(v28, v43);
      }

      else
      {
        sub_217E4FA2C(v28, v43);
      }

      sub_217E709A4();
      MEMORY[0x21CEAE230](v25);
      sub_217E705F4();
      result = sub_217E709D4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 24 * v17);
      *v18 = v25;
      v18[1] = v26;
      v18[2] = v27;
      result = sub_217E361A8(v43, *(v9 + 56) + v42 * v17);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void sub_217E39AE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ScopeGraphElement.ID(255);
    v7 = sub_217E39100();
    v8 = a3(a1, &type metadata for RuleIdentifier, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_217E39B54(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a6[6] + 24 * a1);
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v10 = a6[7];
  v11 = type metadata accessor for ScopeGraphElement.ID(0);
  result = sub_217E361A8(a5, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

uint64_t sub_217E39BF4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217E39C30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_217E39C98(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_217E39EA0(uint64_t a1, uint64_t a2)
{
  sub_217E393BC(0, &qword_2811B0B20, sub_217E38B24, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  sub_217E38B24(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_217E376D4(a1, &qword_2811B0B20, sub_217E38B24);
    sub_217E6CAC4(a2, v7);
    sub_217E36500(a2, type metadata accessor for ScopeGraphElement.ID);
    return sub_217E376D4(v7, &qword_2811B0B20, sub_217E38B24);
  }

  else
  {
    sub_217E35CBC(a1, v10, sub_217E38B24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_217E3A2B8(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_217E36500(a2, type metadata accessor for ScopeGraphElement.ID);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_217E3A0B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_217E3A20C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ScopeGraphElement.ID(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_217E3A2B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ScopeGraphElement.ID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_217E3A780(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      sub_217E38B24(0);
      return sub_217E5BE24(a1, v20 + *(*(v21 - 8) + 72) * v13, sub_217E38B24);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_217E591A8();
    goto LABEL_7;
  }

  sub_217E3A9DC(v16, a3 & 1);
  v23 = sub_217E3A780(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_217E3AF88(a2, v10, type metadata accessor for ScopeGraphElement.ID);
  return sub_217E3AFF0(v13, v10, a1, v19);
}

uint64_t sub_217E3A464(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_217E35174(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = *a2;
  if (a3)
  {
    v37 = v14;
    v27 = &v37;
    return sub_217E3BAF8(a1, v27, a3);
  }

  swift_beginAccess();
  if (!*(v3[20] + 16) && !*(v3[19] + 16))
  {
    v36 = v14;
    v27 = &v36;
    return sub_217E3BAF8(a1, v27, a3);
  }

  result = swift_beginAccess();
  v16 = v3[9];
  if (*(v16 + 16))
  {
    v29 = v8;
    v30 = a1;
    v17 = v3[10];
    v18 = v3[11];
    v35 = v3[12];
    v19 = v3[15];
    v20 = v3[16];
    v21 = v16;

    v33 = v17;

    v34 = v18;

    v32 = v19;

    v31 = v20;

    v22 = sub_217E3A780(v30);
    if (v23)
    {
      sub_217E3B7E0(*(v21 + 56) + *(v29 + 72) * v22, v11, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
      sub_217E454AC(v11, v13, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
      v24 = &v13[*(type metadata accessor for ScopeGraphElement(0) + 24)];
      v26 = *(v24 + 3);
      v25 = *(v24 + 4);
      sub_217E37F28(v24, v26);
      (*(v25 + 48))(v26, v25);
      sub_217E377A0(v13, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
    }
  }

  return result;
}

unint64_t sub_217E3A780(uint64_t a1)
{
  sub_217E709A4();
  sub_217E70374();
  sub_217E3A834(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();
  v2 = sub_217E709D4();

  return sub_217E3A87C(a1, v2);
}

uint64_t sub_217E3A834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_217E3A87C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0) - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_217E3AF88(*(v2 + 48) + v11 * v9, v7, type metadata accessor for ScopeGraphElement.ID);
      v12 = _s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0();
      sub_217E36500(v7, type metadata accessor for ScopeGraphElement.ID);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_217E3A9DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  sub_217E39420(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v38 - v6;
  v7 = type metadata accessor for ScopeGraphElement.ID(0);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_217E3AE1C(0);
  v42 = v4;
  result = sub_217E708C4();
  v11 = result;
  if (*(v9 + 16))
  {
    v38 = v2;
    v39 = v9;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v19 = v43;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v40 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v42)
      {
        sub_217E361A8(v26, v19);
        v27 = *(v9 + 56);
        v28 = *(v41 + 72);
        sub_217E3B0E4(v27 + v28 * v24, v44);
      }

      else
      {
        sub_217E4FA2C(v26, v19);
        v29 = *(v9 + 56);
        v28 = *(v41 + 72);
        sub_217E5DBAC(v29 + v28 * v24, v44);
      }

      sub_217E709A4();
      sub_217E70374();
      sub_217E3A834(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_217E70594();
      result = sub_217E709D4();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v19 = v43;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v19 = v43;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_217E361A8(v19, *(v11 + 48) + v25 * v20);
      result = sub_217E3B0E4(v44, *(v11 + 56) + v28 * v20);
      ++*(v11 + 16);
      v9 = v39;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_217E3AE1C(uint64_t a1)
{
  if (!qword_2811B0930)
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    sub_217E39420(255, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
    sub_217E3A834(qword_2811B10D8, type metadata accessor for ScopeGraphElement.ID, &protocol conformance descriptor for ScopeGraphElement.ID);
    v1 = sub_217E708E4();
    if (!v2)
    {
      atomic_store(v1, &qword_2811B0930);
    }
  }
}

uint64_t sub_217E3AF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217E3AF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_217E3AFF0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ScopeGraphElement.ID(0);
  sub_217E361A8(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v10 = a4[7];
  sub_217E39420(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
  result = sub_217E3B0E4(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_217E3B0E4(uint64_t a1, uint64_t a2)
{
  sub_217E39420(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E3B178(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[3] = a5;
  v22[4] = a6;
  v11 = sub_217E360A4(v22);
  (*(*(a5 - 8) + 16))(v11, a1, a5);
  v12 = *a2;
  sub_217E33AD0(v22, v18);
  sub_217E3374C(0, &qword_2811B0BD8, &protocol descriptor for Rule);
  sub_217E3374C(0, qword_2811B12B8, &protocol descriptor for CommandHandler);
  if (swift_dynamicCast())
  {
    sub_217E33C00(v16, v19);
    v13 = v20;
    v14 = v21;
    sub_217E37F28(v19, v20);
    sub_217E3B2D0(a3, a4, v12, v13, v14);
    sub_217E364B4(v19);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_217E382C4(v16, &qword_2811B12B0, qword_2811B12B8, &protocol descriptor for CommandHandler);
  }

  return sub_217E364B4(v22);
}

uint64_t sub_217E3B2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ScopeGraphElement.ID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for CommandHandlingRuleUpdate(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v32 - v16;
  sub_217E35F40(a1, v10, type metadata accessor for ScopeGraphElement.ID);
  sub_217E3B680(v10, v17);
  v33[3] = v14;
  v33[4] = swift_getWitnessTable();
  v18 = sub_217E360A4(v33);
  (*(v15 + 16))(v18, v17, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32[0] = *(a2 + 64);
  v20 = v32[0];
  *(a2 + 64) = 0x8000000000000000;
  sub_217E33C18(a3);
  v22 = *(v20 + 16);
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(v10) = v21;
  if (*(v20 + 24) >= v24)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_217E58EA4();
    v20 = v32[0];
    goto LABEL_6;
  }

  sub_217E36BF0(v24, isUniquelyReferenced_nonNull_native);
  v20 = v32[0];
  sub_217E33C18(a3);
  if ((v10 & 1) != (v25 & 1))
  {
    result = sub_217E70944();
    __break(1u);
    return result;
  }

LABEL_6:
  *(a2 + 64) = v20;

  if ((v10 & 1) == 0)
  {
    sub_217E362BC();
  }

  v26 = sub_217E36EF4(AssociatedTypeWitness, AssociatedTypeWitness);
  v28 = v27;
  v30 = v29;
  sub_217E36F24(v33, v32);
  sub_217E36FB4(v32, v26, v28, v30);
  (*(v15 + 8))(v17, v14);
  return sub_217E382C4(v33, &qword_2811B1700, qword_2811B1708, &protocol descriptor for GraphUpdate);
}

uint64_t sub_217E3B614(uint64_t a1)
{
  result = type metadata accessor for ScopeGraphElement.ID(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E3B688(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[3] = a5;
  v22[4] = a6;
  v11 = sub_217E360A4(v22);
  (*(*(a5 - 8) + 16))(v11, a1, a5);
  v12 = *a2;
  sub_217E33AD0(v22, v18);
  sub_217E3374C(0, &qword_2811B0BD8, &protocol descriptor for Rule);
  sub_217E3374C(0, qword_2811B1470, &protocol descriptor for EventHandler);
  if (swift_dynamicCast())
  {
    sub_217E33C00(v16, v19);
    v13 = v20;
    v14 = v21;
    sub_217E37F28(v19, v20);
    sub_217E483DC(a3, a4, v12, v13, v14);
    sub_217E364B4(v19);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_217E382C4(v16, &qword_2811B1468, qword_2811B1470, &protocol descriptor for EventHandler);
  }

  return sub_217E364B4(v22);
}

uint64_t sub_217E3B7E0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_217E35174(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_217E3B850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ScopeReader.CurrentScope(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v12 = sub_217E703B4();
  sub_217E35794(v12, qword_2811B1820);
  sub_217E35350(a1, v11, type metadata accessor for ScopeReader.CurrentScope);
  v13 = sub_217E70394();
  v14 = sub_217E70764();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136315394;
    v27 = *(v11 + 1);
    v28 = v16;
    sub_217E540D8();
    v17 = sub_217E708F4();
    v26 = a4;
    v19 = v18;
    sub_217E365C0(v11, type metadata accessor for ScopeReader.CurrentScope);
    v20 = sub_217E58888(v17, v19, &v28);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v27 = a5;
    swift_getMetatypeMetadata();
    v21 = sub_217E705D4();
    v23 = sub_217E58888(v21, v22, &v28);
    a4 = v26;

    *(v15 + 14) = v23;
    _os_log_impl(&dword_217E31000, v13, v14, "Scope is requesting initial Rule update. Scope=%s, Rule=%s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v16, -1, -1);
    MEMORY[0x21CEAE800](v15, -1, -1);
  }

  else
  {

    sub_217E365C0(v11, type metadata accessor for ScopeReader.CurrentScope);
  }

  v28 = a4;
  return sub_217E3BAF8(a3, &v28, 1);
}

uint64_t sub_217E3BAF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  sub_217E3BDCC(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  v16 = *(v13 + 48);
  *(&v31 - v14) = *a2;
  v31 = a1;
  sub_217E35350(a1, &v31 + v16 - v14, type metadata accessor for ScopeGraphElement.ID);
  v17 = *(v4 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 152) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_217E3C028(0, v17[2] + 1, 1, v17);
    *(v4 + 152) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_217E3C028((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v22 = *(v9 + 72);
  sub_217E35D8C(v15, v17 + v21 + v22 * v20, sub_217E3BDCC);
  *(v4 + 152) = v17;
  swift_beginAccess();
  v23 = *(v4 + 80);
  v24 = *(v4 + 112);
  v39 = *(v4 + 96);
  v40 = v24;
  v25 = *(v4 + 112);
  v41 = *(v4 + 128);
  v26 = *(v4 + 80);
  v38[0] = *(v4 + 64);
  v38[1] = v26;
  v35 = v39;
  v36 = v25;
  v37 = *(v4 + 128);
  v33 = v38[0];
  v34 = v23;
  sub_217E3438C(v38, v42);
  sub_217E3C060(v31, v32);
  v42[2] = v35;
  v42[3] = v36;
  v42[4] = v37;
  v42[0] = v33;
  v42[1] = v34;
  sub_217E347DC(v42);
  v27 = *(v4 + 152);
  if (!v27[2])
  {
    __break(1u);
LABEL_10:
    result = sub_217E6CFE8(v27);
    v27 = result;
    v29 = *(result + 16);
    if (v29)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v29 = v27[2];
  if (v29)
  {
LABEL_8:
    v30 = v29 - 1;
    v27[2] = v30;
    *(v4 + 152) = v27;
    sub_217E35D8C(v27 + v21 + v30 * v22, v12, sub_217E3BDCC);
    sub_217E365C0(&v12[*(v8 + 48)], type metadata accessor for ScopeGraphElement.ID);
    return sub_217E3D8A8();
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_217E3BDCC(uint64_t a1)
{
  if (!qword_2811B0BB0)
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811B0BB0);
    }
  }
}

void *sub_217E3BE34(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_217E39420(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_217E3C060(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ScopeGraphElement.ID(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v78 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v77 = &v65 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - v10;
  v12 = sub_217E70374();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v75 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v65 - v19;
  updated = type metadata accessor for DependencyGraph.UpdateGraphVisitor(0);
  v22 = updated - 8;
  MEMORY[0x28223BE20](updated);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2[1];
  v72 = v2[2];
  v73 = v25;
  v26 = v2[3];
  v70 = v2[4];
  v71 = v26;
  sub_217E35F40(a1, v24, type metadata accessor for ScopeGraphElement.ID);
  *&v24[*(v22 + 28)] = a2;
  sub_217E70364();
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v27 = sub_217E703B4();
  v28 = sub_217E35794(v27, qword_2811B1820);
  v29 = v13;
  v68 = *(v13 + 16);
  v68(v18, v20, v12);
  v74 = a1;
  sub_217E35F40(a1, v11, type metadata accessor for ScopeGraphElement.ID);
  v69 = v28;
  v30 = sub_217E70394();
  v67 = sub_217E70764();
  v31 = os_log_type_enabled(v30, v67);
  v79 = v24;
  v80 = v20;
  v76 = v29;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v82 = v66;
    *v32 = 136315394;
    sub_217E447D0(&qword_27CBF23A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v33 = sub_217E708F4();
    v35 = v34;
    v81 = *(v29 + 8);
    v81(v18, v12);
    v36 = sub_217E58888(v33, v35, &v82);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = v77;
    sub_217E35F40(v11, v77, type metadata accessor for ScopeGraphElement.ID);
    v38 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
    v40 = v39;
    sub_217E3477C(v37, type metadata accessor for ScopeGraphElement.ID);
    sub_217E3477C(v11, type metadata accessor for ScopeGraphElement.ID);
    v41 = sub_217E58888(v38, v40, &v82);
    v20 = v80;

    *(v32 + 14) = v41;
    _os_log_impl(&dword_217E31000, v30, v67, "About to perform a graph update. Update=%s, Node=%s", v32, 0x16u);
    v42 = v66;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v42, -1, -1);
    v43 = v32;
    v24 = v79;
    MEMORY[0x21CEAE800](v43, -1, -1);
  }

  else
  {

    sub_217E3477C(v11, type metadata accessor for ScopeGraphElement.ID);
    v81 = *(v29 + 8);
    v81(v18, v12);
  }

  v44 = v12;
  v45 = v74;
  sub_217E3C900(v24, v74, v73, v72, v71, v70);
  v46 = v75;
  v68(v75, v20, v12);
  v47 = v78;
  sub_217E35F40(v45, v78, type metadata accessor for ScopeGraphElement.ID);
  v48 = sub_217E70394();
  v49 = sub_217E70764();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v82 = v74;
    *v50 = 136315394;
    sub_217E447D0(&qword_27CBF23A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v51 = sub_217E708F4();
    v53 = v52;
    v81(v46, v44);
    v54 = sub_217E58888(v51, v53, &v82);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    v55 = v77;
    sub_217E35F40(v47, v77, type metadata accessor for ScopeGraphElement.ID);
    v56 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
    v58 = v57;
    sub_217E3477C(v55, type metadata accessor for ScopeGraphElement.ID);
    sub_217E3477C(v47, type metadata accessor for ScopeGraphElement.ID);
    v59 = sub_217E58888(v56, v58, &v82);

    *(v50 + 14) = v59;
    _os_log_impl(&dword_217E31000, v48, v49, "Concluded graph update. Update=%s, Node=%s", v50, 0x16u);
    v60 = v74;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v60, -1, -1);
    MEMORY[0x21CEAE800](v50, -1, -1);

    v81(v80, v44);
    v61 = v79;
  }

  else
  {

    sub_217E3477C(v47, type metadata accessor for ScopeGraphElement.ID);
    v62 = v46;
    v63 = v81;
    v81(v62, v44);
    v63(v20, v44);
    v61 = v24;
  }

  return sub_217E3477C(v61, type metadata accessor for DependencyGraph.UpdateGraphVisitor);
}

uint64_t type metadata accessor for DependencyGraph.UpdateGraphVisitor(uint64_t a1)
{
  result = qword_2811B1248;
  if (!qword_2811B1248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217E3C858(uint64_t a1)
{
  result = type metadata accessor for ScopeGraphElement.ID(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E3C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v41 = a5;
  v42 = a1;
  v9 = type metadata accessor for ScopeGraphElement.ID(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E3C8CC(0);
  v13 = v12;
  v39 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E38B24(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v18);
  v23 = &v38 - v22;
  if (*(a3 + 16))
  {
    result = sub_217E3A780(a2);
    if (v24)
    {
      sub_217E35F40(*(a3 + 56) + *(v17 + 72) * result, v20, sub_217E38B24);
      sub_217E39C30(v20, v23, sub_217E38B24);
      v25 = sub_217E706E4();
      MEMORY[0x28223BE20](v25);
      v26 = v42;
      *(&v38 - 2) = v23;
      *(&v38 - 1) = v26;
      result = sub_217E3CD98(sub_217E3D640, (&v38 - 4), "TeaBreeze/DependencyGraph.swift", 31, 2, 453);
      if (result)
      {
        v27 = v41;
        v28 = *(v41 + 16);
        v38 = a6;
        if (v28 && (result = sub_217E3A780(a2), (v29 & 1) != 0))
        {
          v30 = *(*(v27 + 56) + 8 * result);
        }

        else
        {
          v30 = MEMORY[0x277D84FA0];
        }

        v31 = 0;
        v32 = 1 << *(v30 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & *(v30 + 56);
        for (i = (v32 + 63) >> 6; v34; result = sub_217E3477C(v11, type metadata accessor for ScopeGraphElement.ID))
        {
          v36 = v31;
LABEL_17:
          v37 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_217E35F40(*(v30 + 48) + *(v39 + 72) * (v37 | (v36 << 6)), v15, sub_217E3C8CC);
          sub_217E35F40(&v15[*(v13 + 28)], v11, type metadata accessor for ScopeGraphElement.ID);
          sub_217E3477C(v15, sub_217E3C8CC);
          sub_217E3C900(v42, v11, a3, v40, v41, v38);
        }

        while (1)
        {
          v36 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v36 >= i)
          {
            sub_217E3477C(v23, sub_217E38B24);
          }

          v34 = *(v30 + 56 + 8 * v36);
          ++v31;
          if (v34)
          {
            v31 = v36;
            goto LABEL_17;
          }
        }

        __break(1u);
      }

      else
      {
        return sub_217E3477C(v23, sub_217E38B24);
      }
    }
  }

  return result;
}

uint64_t sub_217E3CD28(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E3CD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_217E706D4();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_217E3D65C(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = LOBYTE(v15[0]);
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_217E70814();
  MEMORY[0x21CEADE80](0xD00000000000003FLL, 0x8000000217E73C20);
  v14 = sub_217E70A34();
  MEMORY[0x21CEADE80](v14);

  MEMORY[0x21CEADE80](46, 0xE100000000000000);
  result = sub_217E708A4();
  __break(1u);
  return result;
}

void sub_217E3CF64(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v61 = a3;
  sub_217E38B24(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = type metadata accessor for ScopeGraphElement(0);
  if ((_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (*(a2 + *(type metadata accessor for DependencyGraph.UpdateGraphVisitor(0) + 20)) & 4) != 0)
  {
    v60 = v14;
    v45 = (a1 + *(v14 + 24));
    v46 = v45[3];
    v47 = v45[4];
    sub_217E37F28(v45, v46);
    v31 = (*(v47 + 40))(v46, v47);
    if (qword_2811B1810 != -1)
    {
      swift_once();
    }

    v48 = sub_217E703B4();
    sub_217E35794(v48, qword_2811B1820);
    sub_217E35F40(a1, v8, sub_217E38B24);
    v32 = sub_217E70394();
    v49 = sub_217E70764();
    if (os_log_type_enabled(v32, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v62 = v51;
      *v50 = 136315394;
      sub_217E37F28(&v8[*(v60 + 24)], *&v8[*(v60 + 24) + 24]);
      v52 = sub_217E708F4();
      v54 = v53;
      sub_217E3477C(v8, sub_217E38B24);
      v55 = sub_217E58888(v52, v54, &v62);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2080;
      if (v31)
      {
        v56 = 0xD000000000000015;
      }

      else
      {
        v56 = 0xD000000000000013;
      }

      if (v31)
      {
        v57 = "Skipping dependants";
      }

      else
      {
        v57 = "(visiting dependants)";
      }

      v58 = sub_217E58888(v56, v57 | 0x8000000000000000, &v62);

      *(v50 + 14) = v58;
      _os_log_impl(&dword_217E31000, v32, v49, "Not requesting source update. Source=%s, Result=%s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v51, -1, -1);
      v43 = v50;
      goto LABEL_27;
    }

    v44 = v8;
LABEL_29:
    sub_217E3477C(v44, sub_217E38B24);
    goto LABEL_30;
  }

  v15 = v14;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v16 = sub_217E703B4();
  v17 = sub_217E35794(v16, qword_2811B1820);
  sub_217E35F40(a1, v13, sub_217E38B24);
  v60 = v17;
  v18 = sub_217E70394();
  v19 = sub_217E70764();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v62 = v21;
    *v20 = 136315138;
    v59 = v11;
    v22 = v15;
    sub_217E37F28(&v13[*(v15 + 24)], *&v13[*(v15 + 24) + 24]);
    v23 = sub_217E708F4();
    v25 = v24;
    sub_217E3477C(v13, sub_217E38B24);
    v26 = sub_217E58888(v23, v25, &v62);

    *(v20 + 4) = v26;
    v15 = v22;
    v11 = v59;
    _os_log_impl(&dword_217E31000, v18, v19, "Requesting rule update. Source=%s", v20, 0xCu);
    sub_217E364B4(v21);
    MEMORY[0x21CEAE800](v21, -1, -1);
    MEMORY[0x21CEAE800](v20, -1, -1);
  }

  else
  {

    sub_217E3477C(v13, sub_217E38B24);
  }

  v27 = (a1 + *(v15 + 24));
  v28 = v27[3];
  v29 = v27[4];
  sub_217E37F28(v27, v28);
  v30 = v15;
  v31 = (*(v29 + 72))(v28, v29);
  sub_217E35F40(a1, v11, sub_217E38B24);
  v32 = sub_217E70394();
  v33 = sub_217E70764();
  if (!os_log_type_enabled(v32, v33))
  {

    v44 = v11;
    goto LABEL_29;
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v62 = v35;
  *v34 = 136315394;
  sub_217E37F28(&v11[*(v30 + 24)], *&v11[*(v30 + 24) + 24]);
  v36 = sub_217E708F4();
  v38 = v37;
  sub_217E3477C(v11, sub_217E38B24);
  v39 = sub_217E58888(v36, v38, &v62);

  *(v34 + 4) = v39;
  *(v34 + 12) = 2080;
  if (v31)
  {
    v40 = 0xD000000000000025;
  }

  else
  {
    v40 = 0xD000000000000028;
  }

  if (v31)
  {
    v41 = "ed (skipping dependants)";
  }

  else
  {
    v41 = "TeaBreeze/DependencyGraph.swift";
  }

  v42 = sub_217E58888(v40, v41 | 0x8000000000000000, &v62);

  *(v34 + 14) = v42;
  _os_log_impl(&dword_217E31000, v32, v33, "Source update complete. Source=%s, Result=%s", v34, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CEAE800](v35, -1, -1);
  v43 = v34;
LABEL_27:
  MEMORY[0x21CEAE800](v43, -1, -1);

LABEL_30:
  *v61 = v31 & 1;
}

void *sub_217E3D65C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_217E3D6E8()
{
  v1 = *v0;
  if ((*(v0 + *(*v0 + 136)) & 1) == 0)
  {
    *(v0 + *(*v0 + 120)) = 1;
    sub_217E3D7FC(v0);
    *(v0 + *(*v0 + 120)) = 0;
    v1 = *v0;
    if (*(v0 + *(*v0 + 128)) == 1)
    {
      sub_217E5C3B8();
      v1 = *v0;
    }
  }

  *(v0 + *(v1 + 112)) = 0;
  return 1;
}

uint64_t sub_217E3D7FC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  (*(*(v1 + 88) + 8))(*(v1 + 80));
  return swift_endAccess();
}

void *sub_217E3D8A8()
{
  v1 = v0;
  sub_217E35174(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - v7;
  v9 = type metadata accessor for ScopeGraphElement.ID(0);
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9 - 8);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(*(v0 + 152) + 16))
  {
    swift_beginAccess();
    v14 = *(v0 + 168);
    v15 = *(v14 + 16);
    v53 = v10;
    if (v15)
    {
      v60 = v13;

      v16 = v14 + 40;
      do
      {
        v17 = *(v16 - 8);

        v17(v18);

        v16 += 16;
        --v15;
      }

      while (v15);

      v13 = v60;
    }

    *(v0 + 168) = MEMORY[0x277D84F90];

    swift_beginAccess();
    v19 = *(v0 + 112);
    v64 = *(v0 + 96);
    v65 = v19;
    v66 = *(v0 + 128);
    v20 = *(v0 + 80);
    v62 = *(v0 + 64);
    v63 = v20;
    result = sub_217E3DE4C();
    v21 = 0;
    v22 = result[8];
    v51 = result + 8;
    v23 = 1 << *(result + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v50 = (v23 + 63) >> 6;
    v58 = v3;
    v52 = result;
LABEL_10:
    if (v25)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v26 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v26 >= v50)
      {
      }

      v25 = v51[v26];
      ++v21;
      if (v25)
      {
        v21 = v26;
LABEL_15:
        v27 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v28 = (v21 << 9) | (8 * v27);
        v29 = *(result[7] + v28);
        v30 = *(v29 + 16);
        if (v30)
        {
          v55 = v25;
          v56 = v21;
          v57 = *(result[6] + v28);
          v31 = v53;
          v32 = v29 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
          v54 = v29;

          swift_beginAccess();
          v33 = *(v31 + 72);
          v59 = v33;
          while (1)
          {
            sub_217E35350(v32, v13, type metadata accessor for ScopeGraphElement.ID);
            if (!*(*(v1 + 160) + 16) && !*(*(v1 + 152) + 16))
            {
              *&v62 = v57;
              sub_217E3BAF8(v13, &v62, 0);
              sub_217E365C0(v13, type metadata accessor for ScopeGraphElement.ID);
              goto LABEL_20;
            }

            v34 = *(v1 + 128);
            v65 = *(v1 + 112);
            v66 = v34;
            v35 = *(v1 + 80);
            v64 = *(v1 + 96);
            v62 = *(v1 + 64);
            v63 = v35;
            v36 = *(&v62 + 1);
            if (*(*(&v62 + 1) + 16))
            {
              sub_217E3438C(&v62, v61);
              v37 = sub_217E3A780(v13);
              if (v38)
              {
                v39 = *(v36 + 56) + *(v3 + 72) * v37;
                v60 = type metadata accessor for ScopeGraphElement;
                sub_217E3B7E0(v39, v6, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
                sub_217E365C0(v13, type metadata accessor for ScopeGraphElement.ID);
                sub_217E454AC(v6, v8, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
                v40 = &v8[*(type metadata accessor for ScopeGraphElement(0) + 24)];
                v41 = v8;
                v42 = v6;
                v43 = v1;
                v44 = v13;
                v46 = *(v40 + 3);
                v45 = *(v40 + 4);
                sub_217E37F28(v40, v46);
                v47 = *(v45 + 48);
                v48 = v46;
                v6 = v42;
                v8 = v41;
                v49 = v45;
                v13 = v44;
                v1 = v43;
                v47(v48, v49);
                v3 = v58;
                v33 = v59;
                sub_217E377A0(v41, qword_2811B0B28, v60, type metadata accessor for Vertex);
                goto LABEL_19;
              }
            }

            else
            {
              sub_217E3438C(&v62, v61);
            }

            sub_217E365C0(v13, type metadata accessor for ScopeGraphElement.ID);
LABEL_19:
            sub_217E347DC(&v62);
LABEL_20:
            v32 += v33;
            if (!--v30)
            {

              result = v52;
              v21 = v56;
              v25 = v55;
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_217E3DE4C()
{
  sub_217E38B24(0);
  v85 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v84 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v90 = &v81 - v4;
  v5 = type metadata accessor for ScopeGraphElement.ID(0);
  v98 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v83 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v81 - v9;
  MEMORY[0x28223BE20](v8);
  v96 = &v81 - v11;
  sub_217E3462C(0, &qword_2811B12A0, sub_217E3E6BC, MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v81 - v16;
  v100 = *(v0 + 8);
  v18 = *(v0 + 40);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v92 = v18;

  v86 = 0;
  v24 = 0;
  v87 = MEMORY[0x277D84F98];
  v88 = v23;
  v97 = v10;
  v95 = v17;
  v89 = v19;
LABEL_6:
  if (v22)
  {
    v25 = v24;
LABEL_11:
    v93 = v25;
    v26 = (v25 << 9) | (8 * __clz(__rbit64(v22)));
    v27 = *(v92 + 56);
    v91 = *(*(v92 + 48) + v26);
    v28 = *(v27 + v26);
    v94 = (v22 - 1) & v22;
    v29 = v28 + 64;
    v30 = 1 << *(v28 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v28 + 64);
    v33 = (v30 + 63) >> 6;
    v99 = v28;

    v34 = 0;
    if (!v32)
    {
LABEL_18:
      if (v33 <= v34 + 1)
      {
        v36 = v34 + 1;
      }

      else
      {
        v36 = v33;
      }

      v37 = v36 - 1;
      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v35 >= v33)
        {
          sub_217E3E6BC(0);
          v46 = v67;
          (*(*(v67 - 8) + 56))(v15, 1, 1, v67);
          v32 = 0;
          v34 = v37;
          goto LABEL_27;
        }

        v32 = *(v29 + 8 * v35);
        ++v34;
        if (v32)
        {
          v34 = v35;
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

    while (1)
    {
      while (1)
      {
        v35 = v34;
LABEL_26:
        v38 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v39 = v38 | (v35 << 6);
        v40 = (*(v99 + 48) + 24 * v39);
        v41 = *v40;
        v42 = v40[1];
        v43 = v40[2];
        v44 = v96;
        sub_217E35F40(*(v99 + 56) + *(v98 + 72) * v39, v96, type metadata accessor for ScopeGraphElement.ID);
        sub_217E3E6BC(0);
        v46 = v45;
        v47 = *(v45 + 48);
        *v15 = v41;
        v15[1] = v42;
        v15[2] = v43;
        sub_217E39C30(v44, v15 + v47, type metadata accessor for ScopeGraphElement.ID);
        (*(*(v46 - 8) + 56))(v15, 0, 1, v46);

        v10 = v97;
        v17 = v95;
LABEL_27:
        sub_217E3E728(v15, v17);
        sub_217E3E6BC(0);
        if ((*(*(v46 - 8) + 48))(v17, 1, v46) == 1)
        {

          v24 = v93;
          v22 = v94;
          v23 = v88;
          v19 = v89;
          goto LABEL_6;
        }

        sub_217E39C30(&v17[*(v46 + 48)], v10, type metadata accessor for ScopeGraphElement.ID);
        v48 = v100;
        if (*(v100 + 16))
        {
          v49 = sub_217E3A780(v10);
          if (v50)
          {
            break;
          }
        }

        sub_217E3477C(v10, type metadata accessor for ScopeGraphElement.ID);
        if (!v32)
        {
          goto LABEL_18;
        }
      }

      v51 = v84;
      sub_217E35F40(*(v48 + 56) + *(v85 + 72) * v49, v84, sub_217E38B24);
      v52 = v51;
      v53 = v90;
      sub_217E39C30(v52, v90, sub_217E38B24);
      v54 = (v53 + *(type metadata accessor for ScopeGraphElement(0) + 24));
      v55 = v54[3];
      v56 = v54[4];
      sub_217E37F28(v54, v55);
      if ((*(v56 + 40))(v55, v56))
      {
        break;
      }

      sub_217E3477C(v10, type metadata accessor for ScopeGraphElement.ID);
LABEL_47:
      sub_217E3477C(v90, sub_217E38B24);
      if (!v32)
      {
        goto LABEL_18;
      }
    }

    sub_217E35F40(v10, v83, type metadata accessor for ScopeGraphElement.ID);
    sub_217E3E864(v86, 0);
    v57 = v87;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v57;
    v60 = sub_217E33C18(v91);
    v61 = v57[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_54;
    }

    if (v57[3] < v63)
    {
      LODWORD(v87) = v59;
      sub_217E5D0D8(v63, isUniquelyReferenced_nonNull_native);
      v64 = sub_217E33C18(v91);
      if ((v87 & 1) != (v65 & 1))
      {
        goto LABEL_56;
      }

      v60 = v64;
      v66 = v101;
      if (v87)
      {
        goto LABEL_42;
      }

LABEL_40:
      v66[(v60 >> 6) + 8] |= 1 << v60;
      *(v66[6] + 8 * v60) = v91;
      *(v66[7] + 8 * v60) = MEMORY[0x277D84F90];
      v68 = v66[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_55;
      }

      v66[2] = v70;
      goto LABEL_42;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v66 = v101;
      if ((v59 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v79 = v59;
      sub_217E59728();
      v66 = v101;
      if ((v79 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_42:
    v87 = v66;
    v71 = v66[7];
    v72 = *(v71 + 8 * v60);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    *(v71 + 8 * v60) = v72;
    v86 = v60;
    if ((v73 & 1) == 0)
    {
      v72 = sub_217E5CD20(0, v72[2] + 1, 1, v72);
      *(v71 + 8 * v60) = v72;
    }

    v75 = v72[2];
    v74 = v72[3];
    v82 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      v78 = sub_217E5CD20((v74 > 1), v82, 1, v72);
      *(v71 + 8 * v86) = v78;
    }

    sub_217E3477C(v10, type metadata accessor for ScopeGraphElement.ID);
    v76 = *(v71 + 8 * v86);
    v77 = v83;
    *(v76 + 16) = v82;
    sub_217E39C30(v77, v76 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v75, type metadata accessor for ScopeGraphElement.ID);
    v86 = sub_217E504CC;
    goto LABEL_47;
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      sub_217E3E864(v86, 0);
      return v87;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      goto LABEL_11;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_217E70944();
  __break(1u);
  return result;
}

void sub_217E3E6BC(uint64_t a1)
{
  if (!qword_2811B12A8)
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811B12A8);
    }
  }
}

uint64_t sub_217E3E728(uint64_t a1, uint64_t a2)
{
  sub_217E3462C(0, &qword_2811B12A0, sub_217E3E6BC, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E3E7BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E3E824(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_217E3E864(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217E3E874(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_217E3E8BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t Dependency.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84DE8];
  v5 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ScopeReader(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  _s9TeaBreeze11ScopeReaderV7currentACyFZ_0(&v23 - v13);
  sub_217E3EB34(v14, v12);
  a2[3] = type metadata accessor for NonAmbiguousDependencyReader(0, v5, v15, v16);
  a2[4] = swift_getWitnessTable();
  v17 = sub_217E360A4(a2);
  v18 = *a1;
  sub_217E3EC44(v12, v17);
  *(v17 + *(type metadata accessor for NonAmbiguousDependencyReader(0, *(v18 + *v4 + 8), v19, v20) + 28)) = a1;

  sub_217E3ECA8(v21);

  (*(v6 + 8))(v8, v5);
  return sub_217E458C4(v14);
}

uint64_t sub_217E3EB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeReader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E3EBB0(uint64_t a1)
{
  result = type metadata accessor for ScopeReader(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for Dependencies(255);
    result = sub_217E70A24();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_217E3EC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeReader(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E3ECCC@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v16 = *a3;
  nullsub_1();
  v12 = type metadata accessor for EquatableDependencyKeyOperations(0, a4, a5, a6);
  WitnessTable = swift_getWitnessTable();
  return sub_217E3EE68(a2, &v16, v14, a4, v12, a5, WitnessTable, x8_0);
}

uint64_t Dependencies.subscript.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v10 = *(type metadata accessor for Dependencies(0) + 24);
  v12 = *(v5 + 8);
  return sub_217E3ECCC(v5 + v10, &v12, a2, a3, a4, x8_0);
}

uint64_t sub_217E3EE68@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v87 = a3;
  v9 = v8;
  v88 = a5;
  v90 = a4;
  v86 = a8;
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v80 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v83 = &v79 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v79 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v79 - v22;
  v91 = *a2;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v24 = sub_217E703B4();
  v25 = sub_217E35794(v24, qword_2811B1820);
  v89 = a1;
  sub_217E3B7E0(a1, v23, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v85 = v25;
  v26 = sub_217E70394();
  v27 = sub_217E70764();
  if (os_log_type_enabled(v26, v27))
  {
    v84 = a7;
    v81 = v9;
    v82 = a6;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v97[0] = v29;
    *v28 = 136315650;
    *&v94 = v91;
    sub_217E540D8();
    v30 = sub_217E708F4();
    v32 = sub_217E58888(v30, v31, v97);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = sub_217E70A34();
    v35 = sub_217E58888(v33, v34, v97);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2080;
    sub_217E3B7E0(v23, v21, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v36 = type metadata accessor for ScopeGraphElement.ID(0);
    if ((*(*(v36 - 8) + 48))(v21, 1, v36) == 1)
    {
      v37 = 7104878;
      sub_217E377A0(v21, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v38 = 0xE300000000000000;
    }

    else
    {
      v37 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
      v38 = v40;
      sub_217E365C0(v21, type metadata accessor for ScopeGraphElement.ID);
    }

    a7 = v84;
    sub_217E377A0(v23, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v41 = sub_217E58888(v37, v38, v97);

    *(v28 + 24) = v41;
    _os_log_impl(&dword_217E31000, v26, v27, "Scope requested for dependency. Scope=%s, Key=%s, Access=%s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v29, -1, -1);
    MEMORY[0x21CEAE800](v28, -1, -1);

    a6 = v82;
    v39 = v90;
    v9 = v81;
  }

  else
  {

    sub_217E377A0(v23, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v39 = v90;
  }

  v42 = v88;
  v93[0] = v91;
  v100 = v91;
  v43 = v89;
  v44 = v87;
  sub_217E3F920(v89, v93, &v100, v87, v39, v88, &v94, a7);
  if (v95)
  {
    sub_217E33C00(&v94, v97);
    sub_217E33AD0(v97, &v94);
    v45 = sub_217E70394();
    v46 = sub_217E70764();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v100 = v48;
      *v47 = 136315650;
      v93[0] = v91;
      sub_217E540D8();
      v49 = sub_217E708F4();
      v51 = sub_217E58888(v49, v50, &v100);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      v52 = sub_217E70A34();
      v54 = sub_217E58888(v52, v53, &v100);

      *(v47 + 14) = v54;
      *(v47 + 22) = 2080;
      sub_217E37F28(&v94, v95);
      v93[0] = swift_getDynamicType();
      v93[1] = v96;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_getExtendedExistentialTypeMetadata();
      v55 = sub_217E705D4();
      v57 = v56;
      sub_217E364B4(&v94);
      v58 = sub_217E58888(v55, v57, &v100);

      *(v47 + 24) = v58;
      _os_log_impl(&dword_217E31000, v45, v46, "Found existing dependency instance. Scope=%s, Key=%s, Source=%s", v47, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v48, -1, -1);
      MEMORY[0x21CEAE800](v47, -1, -1);
    }

    else
    {

      sub_217E364B4(&v94);
    }

    v74 = v98;
    v75 = v99;
    sub_217E37F28(v97, v98);
    (*(v75 + 24))(v74, v75);
    return sub_217E364B4(v97);
  }

  else
  {
    v84 = a7;
    v59 = v83;
    sub_217E3B7E0(v43, v83, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v60 = sub_217E70394();
    v61 = sub_217E70764();
    if (os_log_type_enabled(v60, v61))
    {
      v81 = v9;
      v82 = a6;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v97[0] = v63;
      *v62 = 136315650;
      *&v94 = v91;
      sub_217E540D8();
      v64 = sub_217E708F4();
      v66 = sub_217E58888(v64, v65, v97);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      v67 = sub_217E70A34();
      v69 = sub_217E58888(v67, v68, v97);

      *(v62 + 14) = v69;
      *(v62 + 22) = 2080;
      v70 = v80;
      sub_217E3B7E0(v59, v80, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v71 = type metadata accessor for ScopeGraphElement.ID(0);
      if ((*(*(v71 - 8) + 48))(v70, 1, v71) == 1)
      {
        v72 = 7104878;
        sub_217E377A0(v70, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
        v73 = 0xE300000000000000;
      }

      else
      {
        v72 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
        v73 = v77;
        sub_217E365C0(v70, type metadata accessor for ScopeGraphElement.ID);
      }

      v44 = v87;
      sub_217E377A0(v83, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v78 = sub_217E58888(v72, v73, v97);

      *(v62 + 24) = v78;
      _os_log_impl(&dword_217E31000, v60, v61, "Scope could not find dependency in tree; will instantiate dependency. Scope=%s, Key=%s, Access=%s", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v63, -1, -1);
      MEMORY[0x21CEAE800](v62, -1, -1);

      a6 = v82;
      v42 = v88;
    }

    else
    {

      sub_217E377A0(v59, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    }

    v97[0] = v91;
    return sub_217E40CE8(v89, v97, v44, v39, v42, a6, v84, v86);
  }
}

double sub_217E3F920@<D0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v10 = v9;
  v108 = a4;
  v109 = a6;
  v107 = a9;
  v104 = a5;
  *&v124[0] = swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  v15 = type metadata accessor for ScopeGraphElement.ID(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_217E70794();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v105 = (&v92 - v18);
  v112 = v15;
  v111 = *(v15 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v96 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v100 = &v92 - v21;
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v97 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v92 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v99 = &v92 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v92 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v92 - v33;
  v35 = *a2;
  v103 = *a3;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v36 = sub_217E703B4();
  v37 = sub_217E35794(v36, qword_2811B1820);
  v110 = a1;
  sub_217E3B7E0(a1, v34, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v98 = v37;
  v38 = sub_217E70394();
  v39 = sub_217E70764();
  v40 = os_log_type_enabled(v38, v39);
  v102 = v35;
  if (v40)
  {
    v94 = v39;
    v95 = v27;
    v101 = a8;
    v41 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&v124[0] = v93;
    *v41 = 136315906;
    *&v120[0] = v35;
    v92 = sub_217E540D8();
    v42 = sub_217E708F4();
    v44 = sub_217E58888(v42, v43, v124);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2080;
    v45 = sub_217E70A34();
    v47 = sub_217E58888(v45, v46, v124);

    *(v41 + 14) = v47;
    *(v41 + 22) = 2080;
    sub_217E3B7E0(v34, v32, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    if ((*(v111 + 48))(v32, 1, v112) == 1)
    {
      v48 = 7104878;
      sub_217E377A0(v32, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v49 = 0xE300000000000000;
    }

    else
    {
      v48 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
      v49 = v50;
      sub_217E365C0(v32, type metadata accessor for ScopeGraphElement.ID);
    }

    sub_217E377A0(v34, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v51 = sub_217E58888(v48, v49, v124);

    *(v41 + 24) = v51;
    *(v41 + 32) = 2080;
    *&v120[0] = v103;
    v52 = sub_217E708F4();
    v54 = sub_217E58888(v52, v53, v124);

    *(v41 + 34) = v54;
    _os_log_impl(&dword_217E31000, v38, v94, "Attempting to resolve existing instance of dependency. Scope=%s, Key=%s, Access=%s, Origin=%s", v41, 0x2Au);
    v55 = v93;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v55, -1, -1);
    MEMORY[0x21CEAE800](v41, -1, -1);

    a8 = v101;
    v35 = v102;
    v27 = v95;
  }

  else
  {

    sub_217E377A0(v34, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  }

  swift_beginAccess();
  v56 = v10[5];
  v57 = v10[7];
  v121 = v10[6];
  v122 = v57;
  v58 = v10[7];
  v123 = v10[8];
  v59 = v10[5];
  v120[0] = v10[4];
  v120[1] = v59;
  v116 = v121;
  v117 = v58;
  v118 = v10[8];
  v114 = v120[0];
  v115 = v56;
  v113 = v35;
  v60 = v107;
  v61 = *(v107 + 16);
  sub_217E3438C(v120, v124);
  v62 = v105;
  v61(&v114, &v113, v109, v60);
  v124[2] = v116;
  v124[3] = v117;
  v124[4] = v118;
  v124[0] = v114;
  v124[1] = v115;
  sub_217E347DC(v124);
  v63 = TupleTypeMetadata2;
  v64 = (*(*(TupleTypeMetadata2 - 8) + 48))(v62, 1, TupleTypeMetadata2);
  v65 = v110;
  if (v64 == 1)
  {
    sub_217E3B7E0(v110, v27, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v66 = sub_217E70394();
    v67 = sub_217E70764();
    if (os_log_type_enabled(v66, v67))
    {
      v101 = a8;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v114 = v69;
      *v68 = 136315906;
      *&v119[0] = v102;
      sub_217E540D8();
      v70 = sub_217E708F4();
      v72 = v27;
      v73 = sub_217E58888(v70, v71, &v114);

      *(v68 + 4) = v73;
      *(v68 + 12) = 2080;
      v74 = sub_217E70A34();
      v76 = sub_217E58888(v74, v75, &v114);

      *(v68 + 14) = v76;
      *(v68 + 22) = 2080;
      v77 = v72;
      v78 = v72;
      v79 = v97;
      sub_217E3B7E0(v78, v97, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      if ((*(v111 + 48))(v79, 1, v112) == 1)
      {
        v80 = 7104878;
        sub_217E377A0(v79, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
        v81 = 0xE300000000000000;
      }

      else
      {
        v80 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
        v81 = v87;
        sub_217E365C0(v79, type metadata accessor for ScopeGraphElement.ID);
      }

      sub_217E377A0(v77, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v88 = sub_217E58888(v80, v81, &v114);

      *(v68 + 24) = v88;
      *(v68 + 32) = 2080;
      *&v119[0] = v103;
      v89 = sub_217E708F4();
      v91 = sub_217E58888(v89, v90, &v114);

      *(v68 + 34) = v91;
      _os_log_impl(&dword_217E31000, v66, v67, "Did not find instance of dependency in scope, or any parent. Scope=%s, Key=%s, Access=%s, Origin=%s", v68, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v69, -1, -1);
      MEMORY[0x21CEAE800](v68, -1, -1);

      a8 = v101;
    }

    else
    {

      sub_217E377A0(v27, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    }

    *(a8 + 32) = 0;
    result = 0.0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  else
  {
    v82 = *(v63 + 48);
    sub_217E33C00(v62, v119);
    v83 = v100;
    sub_217E35D8C(v62 + v82, v100, type metadata accessor for ScopeGraphElement.ID);
    v84 = v99;
    sub_217E3B7E0(v65, v99, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    if ((*(v111 + 48))(v84, 1, v112) == 1)
    {
      sub_217E365C0(v83, type metadata accessor for ScopeGraphElement.ID);
      sub_217E377A0(v84, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    }

    else
    {
      v85 = v96;
      sub_217E35D8C(v84, v96, type metadata accessor for ScopeGraphElement.ID);
      swift_beginAccess();
      sub_217E43DBC(v83, v85);
      swift_endAccess();
      sub_217E365C0(v85, type metadata accessor for ScopeGraphElement.ID);
      sub_217E365C0(v83, type metadata accessor for ScopeGraphElement.ID);
    }

    sub_217E33C00(v119, a8);
  }

  return result;
}

uint64_t sub_217E404F8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t x8_0@<X8>)
{
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  v12 = a1[4];
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  v7 = *a2;
  return sub_217E4054C(&v7, x8_0);
}

uint64_t sub_217E4054C@<X0>(uint64_t *a2@<X1>, uint64_t x8_0@<X8>)
{
  v7 = *a2;
  v8 = v5[3];
  v18 = v5[2];
  v19 = v8;
  v20 = v5[4];
  v9 = v5[1];
  v16 = *v5;
  v17 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_217E40620();
  v15 = v7;
  sub_217E40624(v11, v12, v13, &v15, AssociatedTypeWitness, x8_0);
}

uint64_t sub_217E40624@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v61 = a5;
  v53 = a3;
  v52 = a2;
  v51 = a1;
  v50 = a6;
  sub_217E38B24(0);
  v59 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v49 - v11;
  v12 = type metadata accessor for ScopeGraphElement.ID(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E345F8(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  v22 = *a4;
  v23 = v6[1];
  v25 = v6[5];
  v24 = v6[6];
  v64 = (v13 + 56);
  v49 = v13;
  v63 = (v13 + 48);
  v60 = v12;
  v58 = v15;
  v55 = v23;
  v54 = v25;
  if (*(v25 + 16))
  {
    goto LABEL_2;
  }

LABEL_9:
  v31 = 1;
  while (1)
  {
    (*v64)(v21, v31, 1, v12);
    sub_217E35F40(v21, v19, sub_217E345F8);
    if ((*v63)(v19, 1, v12) == 1)
    {
      v32 = sub_217E345F8;
      v33 = v19;
      goto LABEL_18;
    }

    sub_217E39C30(v19, v15, type metadata accessor for ScopeGraphElement.ID);
    if (*(v23 + 16))
    {
      v34 = sub_217E3A780(v15);
      if (v35)
      {
        break;
      }
    }

    v32 = type metadata accessor for ScopeGraphElement.ID;
    v33 = v15;
LABEL_18:
    sub_217E3477C(v33, v32);
    if (!*(v24 + 16))
    {
      goto LABEL_22;
    }

LABEL_19:
    v42 = sub_217E33C18(v22);
    if ((v43 & 1) == 0)
    {
LABEL_22:
      sub_217E3477C(v21, sub_217E345F8);
      *&v67[0] = v61;
      swift_getExtendedExistentialTypeMetadata();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v50, 1, 1, TupleTypeMetadata2);
    }

    v22 = *(*(v24 + 56) + 8 * v42);
    sub_217E3477C(v21, sub_217E345F8);
    if (!*(v25 + 16))
    {
      goto LABEL_9;
    }

LABEL_2:
    v26 = sub_217E33C18(v22);
    if ((v27 & 1) == 0)
    {
      goto LABEL_9;
    }

    v28 = *(*(v25 + 56) + 8 * v26);

    if (!v28)
    {
      goto LABEL_9;
    }

    if (*(v28 + 16) && (v29 = sub_217E3960C(v51, v52, v53), (v30 & 1) != 0))
    {
      sub_217E35F40(*(v28 + 56) + *(v49 + 72) * v29, v21, type metadata accessor for ScopeGraphElement.ID);
      v31 = 0;
    }

    else
    {
      v31 = 1;
    }
  }

  v36 = v57;
  sub_217E35F40(*(v23 + 56) + *(v59 + 72) * v34, v57, sub_217E38B24);
  v37 = v56;
  sub_217E39C30(v36, v56, sub_217E38B24);
  v38 = (v37 + *(type metadata accessor for ScopeGraphElement(0) + 24));
  v39 = v38[3];
  v40 = v38[4];
  sub_217E37F28(v38, v39);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = &v49;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v40 + 32))(v39, v40);
  sub_217E3477C(v37, sub_217E38B24);
  v65 = v61;
  swift_getExtendedExistentialTypeMetadata();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = v58;
    sub_217E3477C(v58, type metadata accessor for ScopeGraphElement.ID);
    v12 = v60;
    v23 = v55;
    v25 = v54;
    if (!*(v24 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_217E3477C(v21, sub_217E345F8);
  sub_217E33C00(&v66, v67);
  v46 = swift_getTupleTypeMetadata2();
  v47 = *(v46 + 48);
  v48 = v50;
  sub_217E33C00(v67, v50);
  sub_217E39C30(v58, v48 + v47, type metadata accessor for ScopeGraphElement.ID);
  return (*(*(v46 - 8) + 56))(v48, 0, 1, v46);
}

uint64_t sub_217E40CE8@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v192 = a7;
  v220 = a2;
  v173 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_217E70794();
  v171 = *(v14 - 8);
  v172 = v14;
  MEMORY[0x28223BE20](v14);
  v181 = &v169 - v15;
  v16 = type metadata accessor for ScopeReader.CurrentScope(0);
  v176 = *(v16 - 8);
  v177 = v16;
  MEMORY[0x28223BE20](v16);
  v180 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D83D88];
  sub_217E35174(0, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope, MEMORY[0x277D83D88]);
  v174 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v175 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v178 = &v169 - v22;
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, v18);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v179 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v183 = &v169 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v198 = &v169 - v29;
  MEMORY[0x28223BE20](v28);
  v203 = (&v169 - v30);
  v31 = type metadata accessor for ScopeGraphElement.ID(0);
  v187 = *(v31 - 8);
  v188 = v31;
  v32 = MEMORY[0x28223BE20](v31);
  v170 = &v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v201 = &v169 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v194 = &v169 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v199 = &v169 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v169 - v40;
  v42 = *v220;
  sub_217E70364();
  v220 = v42;
  *&v209 = v42;
  v189 = a5;
  v190 = a4;
  v204[2] = a4;
  v204[3] = a5;
  v184 = a6;
  v185 = a1;
  v204[4] = a6;
  v204[5] = v192;
  v204[6] = a1;
  v204[7] = a3;
  v186 = a3;
  v191 = AssociatedTypeWitness;
  *&v212 = AssociatedTypeWitness;
  swift_getExtendedExistentialTypeMetadata();
  sub_217E70794();
  sub_217E42344();
  swift_getTupleTypeMetadata2();
  sub_217E351D8(&v209, v41, sub_217E42AB0, v204, &v212);
  v217 = v212;
  v218 = v213;
  v219 = v214;
  sub_217E33C00(&v215, v216);
  if (*(&v218 + 1))
  {
    sub_217E33AD0(&v217, &v209);
  }

  else
  {
    v209 = v217;
    v210 = v218;
    v211 = v219;
  }

  v195 = v41;
  v43 = v220;
  v44 = v203;
  if (!*(&v210 + 1))
  {
    if (qword_2811B1810 != -1)
    {
      swift_once();
    }

    v59 = sub_217E703B4();
    sub_217E35794(v59, qword_2811B1820);
    sub_217E33AD0(v216, &v212);
    v60 = sub_217E70394();
    v61 = sub_217E70764();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      DynamicType = v203;
      *v62 = 136315650;
      *&v209 = v43;
      sub_217E540D8();
      v63 = sub_217E708F4();
      v65 = sub_217E58888(v63, v64, &DynamicType);

      *(v62 + 4) = v65;
      v66 = v190;
      *(v62 + 12) = 2080;
      v67 = sub_217E70A34();
      v69 = sub_217E58888(v67, v68, &DynamicType);

      *(v62 + 14) = v69;
      *(v62 + 22) = 2080;
      sub_217E33AD0(&v212, &v209);
      v70 = sub_217E705D4();
      v72 = v71;
      sub_217E364B4(&v212);
      v73 = sub_217E58888(v70, v72, &DynamicType);

      *(v62 + 24) = v73;
      _os_log_impl(&dword_217E31000, v60, v61, "Scope could not load dependency from container. Misconfiguration? Scope=%s, Key=%s, Container=%s", v62, 0x20u);
      v74 = v203;
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v74, -1, -1);
      v75 = v62;
      v41 = v195;
      MEMORY[0x21CEAE800](v75, -1, -1);
    }

    else
    {

      sub_217E364B4(&v212);
      v66 = v190;
    }

    sub_217E6D248();
    swift_allocError();
    *v76 = v66;
    swift_willThrow();
    sub_217E364B4(v216);
    if (!*(&v218 + 1))
    {
      return sub_217E365C0(v41, type metadata accessor for ScopeGraphElement.ID);
    }

    v77 = &v217;
LABEL_45:
    sub_217E364B4(v77);
    return sub_217E365C0(v41, type metadata accessor for ScopeGraphElement.ID);
  }

  sub_217E33C00(&v209, &v212);
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v45 = sub_217E703B4();
  v46 = sub_217E35794(v45, qword_2811B1820);
  sub_217E3B7E0(v185, v44, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  sub_217E33AD0(&v212, &v209);
  v202 = v46;
  v47 = sub_217E70394();
  v48 = sub_217E70764();
  if (os_log_type_enabled(v47, v48))
  {
    LODWORD(v197) = v48;
    v49 = swift_slowAlloc();
    *&v193 = swift_slowAlloc();
    v206 = v193;
    DynamicType = v43;
    *v49 = 136315906;
    sub_217E540D8();
    v50 = sub_217E708F4();
    v52 = sub_217E58888(v50, v51, &v206);

    *(v49 + 4) = v52;
    *(v49 + 12) = 2080;
    v53 = sub_217E70A34();
    v55 = sub_217E58888(v53, v54, &v206);

    *(v49 + 14) = v55;
    *(v49 + 22) = 2080;
    v56 = v198;
    sub_217E3B7E0(v44, v198, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    if ((*(v187 + 48))(v56, 1, v188) == 1)
    {
      sub_217E377A0(v56, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v57 = 0xE300000000000000;
      v58 = 7104878;
    }

    else
    {
      v58 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
      v57 = v78;
      sub_217E365C0(v56, type metadata accessor for ScopeGraphElement.ID);
    }

    sub_217E377A0(v44, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v79 = sub_217E58888(v58, v57, &v206);

    *(v49 + 24) = v79;
    *(v49 + 32) = 2080;
    sub_217E37F28(&v209, *(&v210 + 1));
    DynamicType = swift_getDynamicType();
    v208 = v211;
    v205 = v191;
    swift_getExtendedExistentialTypeMetadata();
    v80 = sub_217E705D4();
    v82 = v81;
    sub_217E364B4(&v209);
    v83 = sub_217E58888(v80, v82, &v206);

    *(v49 + 34) = v83;
    _os_log_impl(&dword_217E31000, v47, v197, "Scope instantiated a dependency. Scope=%s, Key=%s, Access=%s, Dependency=%s", v49, 0x2Au);
    v84 = v193;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v84, -1, -1);
    MEMORY[0x21CEAE800](v49, -1, -1);
  }

  else
  {

    sub_217E364B4(&v209);
    sub_217E377A0(v44, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  }

  v85 = *(&v213 + 1);
  v86 = v214;
  v87 = sub_217E37F28(&v212, *(&v213 + 1));
  DynamicType = v43;
  v88 = v196;
  swift_beginAccess();
  (*(v192 + 32))(v87, &DynamicType, v41, v88 + 64, v85, v86, v189);
  swift_endAccess();
  sub_217E33AD0(&v212, &v209);
  v89 = v199;
  sub_217E35350(v41, v199, type metadata accessor for ScopeGraphElement.ID);
  v90 = sub_217E70394();
  v91 = sub_217E70764();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    v206 = v203;
    DynamicType = v43;
    *v92 = 136315650;
    sub_217E540D8();
    v93 = sub_217E708F4();
    v95 = sub_217E58888(v93, v94, &v206);

    *(v92 + 4) = v95;
    *(v92 + 12) = 2080;
    sub_217E37F28(&v209, *(&v210 + 1));
    DynamicType = swift_getDynamicType();
    v208 = v211;
    v205 = v191;
    swift_getExtendedExistentialTypeMetadata();
    v96 = sub_217E705D4();
    v98 = v97;
    sub_217E364B4(&v209);
    v99 = sub_217E58888(v96, v98, &v206);

    *(v92 + 14) = v99;
    *(v92 + 22) = 2080;
    v100 = v194;
    sub_217E35350(v89, v194, type metadata accessor for ScopeGraphElement.ID);
    v101 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
    v103 = v102;
    sub_217E365C0(v100, type metadata accessor for ScopeGraphElement.ID);
    v41 = v195;
    sub_217E365C0(v89, type metadata accessor for ScopeGraphElement.ID);
    v104 = sub_217E58888(v101, v103, &v206);

    *(v92 + 24) = v104;
    _os_log_impl(&dword_217E31000, v90, v91, "Registered source into scope. Scope=%s, Source=%s, Vertex=%s", v92, 0x20u);
    v105 = v203;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v105, -1, -1);
    MEMORY[0x21CEAE800](v92, -1, -1);
  }

  else
  {

    sub_217E365C0(v89, type metadata accessor for ScopeGraphElement.ID);
    sub_217E364B4(&v209);
  }

  v106 = v200;
  v107 = v196;
  swift_beginAccess();
  v108 = *(v107 + 144);
  if (*(v108 + 16) && (v109 = sub_217E33C18(v220), (v110 & 1) != 0))
  {
    v111 = (*(v108 + 56) + 8 * v109);
  }

  else
  {
    if (qword_2811B0B08 != -1)
    {
      swift_once();
    }

    v111 = &qword_2811B0B10;
  }

  v112 = v190;
  v113 = *v111;
  swift_endAccess();
  v114 = v184;
  v115 = *(v184 + 24);

  v115(&v209, v112, v114);
  v116 = v209;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  DynamicType = v113;
  sub_217E431FC(v116, sub_217E6CFFC, 0, isUniquelyReferenced_nonNull_native, &DynamicType);
  if (v106)
  {

    MEMORY[0x21CEAE5A0](v106);

    __break(1u);
  }

  else
  {
    v169 = 0;

    swift_bridgeObjectRelease_n();
    v118 = DynamicType;

    *&v209 = v118;
    v119 = sub_217E434A8(v191, v191);

    v182 = v119;
    v121 = *(v119 + 16);
    if (v121)
    {
      v122 = (v182 + 40);
      *&v120 = 136315650;
      v193 = v120;
      do
      {
        v123 = *(v122 - 1);
        v124 = *v122;
        v125 = v201;
        sub_217E35350(v41, v201, type metadata accessor for ScopeGraphElement.ID);
        v126 = sub_217E70394();
        LODWORD(v203) = sub_217E70764();
        if (os_log_type_enabled(v126, v203))
        {
          v127 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          *&v209 = v198;
          *v127 = v193;
          DynamicType = v220;
          sub_217E540D8();
          v197 = v126;
          v128 = sub_217E708F4();
          v130 = sub_217E58888(v128, v129, &v209);
          v200 = v123;
          v131 = v125;
          v132 = v130;

          *(v127 + 4) = v132;
          *(v127 + 12) = 2080;
          v133 = v194;
          sub_217E35350(v131, v194, type metadata accessor for ScopeGraphElement.ID);
          v134 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
          v199 = v124;
          v135 = v134;
          v137 = v136;
          sub_217E365C0(v133, type metadata accessor for ScopeGraphElement.ID);
          v138 = v131;
          v123 = v200;
          sub_217E365C0(v138, type metadata accessor for ScopeGraphElement.ID);
          v139 = v135;
          v124 = v199;
          v140 = sub_217E58888(v139, v137, &v209);

          *(v127 + 14) = v140;
          *(v127 + 22) = 2080;
          v141 = sub_217E70A34();
          v143 = sub_217E58888(v141, v142, &v209);

          *(v127 + 24) = v143;
          v144 = v197;
          _os_log_impl(&dword_217E31000, v197, v203, "Autowiring rule following source resolution. Scope=%s, Source Vertex=%s, Rule=%s", v127, 0x20u);
          v145 = v198;
          swift_arrayDestroy();
          MEMORY[0x21CEAE800](v145, -1, -1);
          v146 = v127;
          v41 = v195;
          MEMORY[0x21CEAE800](v146, -1, -1);
        }

        else
        {

          sub_217E365C0(v125, type metadata accessor for ScopeGraphElement.ID);
        }

        *&v209 = v220;
        sub_217E34830(v123, &v209, v123, v124);
        v122 += 2;
        --v121;
      }

      while (v121);
    }

    v147 = v183;
    sub_217E35350(v41, v183, type metadata accessor for ScopeGraphElement.ID);
    (*(v187 + 56))(v147, 0, 1, v188);
    if (qword_2811B1640 != -1)
    {
      swift_once();
    }

    v148 = sub_217E35794(v174, qword_2811B1648);
    swift_beginAccess();
    v203 = type metadata accessor for ScopeReader.CurrentScope;
    v149 = MEMORY[0x277D83D88];
    v150 = v178;
    sub_217E3B7E0(v148, v178, qword_2811B16B8, type metadata accessor for ScopeReader.CurrentScope, MEMORY[0x277D83D88]);
    v151 = v177;
    v152 = *(v177 + 24);
    v202 = type metadata accessor for ScopeGraphElement.ID;
    v153 = v180;
    sub_217E3B7E0(v147, &v180[v152], &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, v149);
    v154 = v196;
    v155 = v220;
    *v153 = v196;
    v153[1] = v155;
    v156 = v175;
    sub_217E35350(v153, v175, type metadata accessor for ScopeReader.CurrentScope);
    (*(v176 + 56))(v156, 0, 1, v151);
    swift_beginAccess();

    sub_217E35A50(v156, v148);
    swift_endAccess();
    v157 = v185;
    v41 = v195;
    v158 = v155;
    v159 = v190;
    sub_217E43510(v153, v185, &v212, v154, v195, v158, v190, v189, v184);
    swift_beginAccess();
    sub_217E37654(v150, v148);
    swift_endAccess();
    sub_217E365C0(v153, type metadata accessor for ScopeReader.CurrentScope);
    sub_217E377A0(v150, qword_2811B16B8, v203, v149);
    v160 = v202;
    sub_217E377A0(v183, &qword_2811B1090, v202, v149);
    v161 = v179;
    sub_217E3B7E0(v157, v179, &qword_2811B1090, v160, v149);
    if ((*(v187 + 48))(v161, 1, v188) == 1)
    {
      sub_217E377A0(v161, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    }

    else
    {
      v162 = v161;
      v163 = v170;
      sub_217E35D8C(v162, v170, type metadata accessor for ScopeGraphElement.ID);
      swift_beginAccess();
      sub_217E43DBC(v41, v163);
      swift_endAccess();
      sub_217E365C0(v163, type metadata accessor for ScopeGraphElement.ID);
    }

    v164 = v154;
    v165 = v181;
    DynamicType = v220;
    (*(v192 + 40))(v164, &DynamicType, v189);
    v166 = *(v191 - 8);
    if ((*(v166 + 48))(v165, 1) == 1)
    {
      (*(v171 + 8))(v165, v172);
      sub_217E6D248();
      swift_allocError();
      *v167 = v159;
      swift_willThrow();
      sub_217E364B4(v216);
      if (*(&v218 + 1))
      {
        sub_217E364B4(&v217);
      }

      v77 = &v212;
      goto LABEL_45;
    }

    sub_217E364B4(v216);
    if (*(&v218 + 1))
    {
      sub_217E364B4(&v217);
    }

    (*(v166 + 32))(v173, v165, v191);
    sub_217E364B4(&v212);
    return sub_217E365C0(v41, type metadata accessor for ScopeGraphElement.ID);
  }

  return result;
}

unint64_t sub_217E42344()
{
  result = qword_2811B0F98[0];
  if (!qword_2811B0F98[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2811B0F98);
  }

  return result;
}

uint64_t sub_217E423A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v61 = a3;
  v62 = a5;
  v55 = a4;
  v60 = a7;
  v59 = type metadata accessor for DependencyEnvironment(0);
  MEMORY[0x28223BE20](v59);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Dependencies(0);
  MEMORY[0x28223BE20](v57);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v56 = type metadata accessor for ScopeReader.CurrentScope(0);
  v20 = MEMORY[0x28223BE20](v56);
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v25 = sub_217E703B4();
  sub_217E35794(v25, qword_2811B1820);
  v58 = a1;
  sub_217E35350(a1, v24, type metadata accessor for ScopeReader.CurrentScope);
  sub_217E3B7E0(a2, v19, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v26 = sub_217E70394();
  v27 = sub_217E70764();
  if (os_log_type_enabled(v26, v27))
  {
    v53 = v27;
    v54 = a6;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52 = v29;
    *v28 = 136315650;
    v63 = *(v24 + 1);
    v64 = v29;
    sub_217E540D8();
    v30 = sub_217E708F4();
    v32 = v31;
    sub_217E365C0(v24, type metadata accessor for ScopeReader.CurrentScope);
    v33 = sub_217E58888(v30, v32, &v64);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = sub_217E70A34();
    v36 = sub_217E58888(v34, v35, &v64);

    *(v28 + 14) = v36;
    *(v28 + 22) = 2080;
    sub_217E3B7E0(v19, v17, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v37 = type metadata accessor for ScopeGraphElement.ID(0);
    if ((*(*(v37 - 8) + 48))(v17, 1, v37) == 1)
    {
      sub_217E377A0(v17, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v38 = 0xE300000000000000;
      v39 = 7104878;
    }

    else
    {
      v39 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
      v38 = v40;
      sub_217E365C0(v17, type metadata accessor for ScopeGraphElement.ID);
    }

    a6 = v54;
    sub_217E377A0(v19, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v41 = sub_217E58888(v39, v38, &v64);

    *(v28 + 24) = v41;
    _os_log_impl(&dword_217E31000, v26, v53, "Requesting dependency from container. Scope=%s, Key=%s, Access=%s", v28, 0x20u);
    v42 = v52;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v42, -1, -1);
    MEMORY[0x21CEAE800](v28, -1, -1);
  }

  else
  {

    sub_217E377A0(v19, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    sub_217E365C0(v24, type metadata accessor for ScopeReader.CurrentScope);
  }

  v43 = v58;
  sub_217E35350(v58, v22, type metadata accessor for ScopeReader.CurrentScope);
  v44 = *v22;
  v45 = v22[1];
  v46 = v57;
  sub_217E3B7E0(v22 + *(v56 + 24), v13 + *(v57 + 24), &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);

  sub_217E365C0(v22, type metadata accessor for ScopeReader.CurrentScope);
  v47 = *(v46 + 28);
  type metadata accessor for Dependencies.AmbiguousResolutionContext();
  v48 = swift_allocObject();
  *(v48 + 16) = 0u;
  *(v48 + 32) = 0u;
  *(v13 + v47) = v48;
  *(v48 + 48) = 0;
  *v13 = v44;
  v13[1] = v45;
  v64 = *(v43 + 8);
  v49 = v60;
  sub_217E37D48(&v64, v60 + 40);
  sub_217E33AD0(v49 + 40, v11);
  sub_217E35350(v13, &v11[*(v59 + 20)], type metadata accessor for Dependencies);
  (*(a6 + 24))(v11, v62, a6);
  sub_217E365C0(v11, type metadata accessor for DependencyEnvironment);
  return sub_217E365C0(v13, type metadata accessor for Dependencies);
}

uint64_t type metadata accessor for DependencyEnvironment(uint64_t a1)
{
  result = qword_2811B0F80;
  if (!qword_2811B0F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_217E42B0C(uint64_t a1)
{
  result = sub_217E42344();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Dependencies(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t DependencyEnvironment.resolveDependency<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[3];
  v5 = v2[4];
  sub_217E37F28(v2, v4);
  return (*(v5 + 8))(a2, a2, v4, v5);
}

uint64_t sub_217E42C3C(uint64_t a1)
{
  sub_217E33138(0, &qword_2811B0DF0, sub_217E42CEC);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217E42CB4()
{
  sub_217E42C3C(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_217E42CEC()
{
  result = qword_2811B0DF8[0];
  if (!qword_2811B0DF8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2811B0DF8);
  }

  return result;
}

uint64_t sub_217E42D88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[1] = a4;
  v25 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = v24 - v17;
  v19 = *a2;
  (*(a7 + 16))(a5, a7);
  v20 = sub_217E40620();
  v26 = v19;
  sub_217E42F08(a1, v18, v20, v21, v22, &v26, a3, v25, a8, a9);

  return (*(v16 + 8))(v18, AssociatedTypeWitness);
}

uint64_t sub_217E42F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *a6;
  type metadata accessor for EquatableSourceVertex(0, a8, a9, a10);
  v17 = sub_217E430CC(a1, a2);
  v19 = v16;
  sub_217E38428(v17, a3, a4, a5, &v19, a7);
}

uint64_t sub_217E42FD8(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_217E43118(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 344);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v2 + v5, a2, AssociatedTypeWitness);

  return sub_217E431E4(a1);
}

uint64_t sub_217E431FC(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v46 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v35 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = *(a1 + 48) + 24 * v14;
    v16 = *(*(a1 + 56) + 8 * v14);
    v43 = *v15;
    v44 = *(v15 + 8);
    v45 = v16;

    a2(v40, &v43);

    v17 = v40[1];
    v38 = v40[0];
    v18 = v41;
    v19 = v42;
    v20 = *v46;
    v22 = sub_217E3722C(v41);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((v39 & 1) == 0)
      {
        sub_217E59E30();
      }
    }

    else
    {
      sub_217E5D5F0(v25, v39 & 1);
      v27 = sub_217E3722C(v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

      v22 = v27;
    }

    v9 &= v9 - 1;
    v29 = *v46;
    if (v26)
    {

      *(v29[7] + 8 * v22) = v19;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v29[6] + 24 * v22);
      *v30 = v38;
      v30[1] = v17;
      v30[2] = v18;
      *(v29[7] + 8 * v22) = v19;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_26;
      }

      v29[2] = v33;
    }

    a4 = 1;
    v11 = v12;
    v6 = v35;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_217E434A0(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_217E70944();
  __break(1u);
  return result;
}

uint64_t sub_217E434A8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_217E36EF4(a2, a2);
  if (*(v3 + 16) && (v5 = sub_217E3722C(v4), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t sub_217E43510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a6;
  v46 = a5;
  sub_217E35174(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v44 - v17;
  v19 = type metadata accessor for ScopeReader.CurrentScope(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v22 = sub_217E703B4();
  sub_217E35794(v22, qword_2811B1820);
  sub_217E35350(a1, v21, type metadata accessor for ScopeReader.CurrentScope);
  sub_217E3B7E0(a2, v18, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
  sub_217E33AD0(a3, v51);
  v23 = sub_217E70394();
  v24 = sub_217E70764();
  if (os_log_type_enabled(v23, v24))
  {
    v44[1] = a9;
    v44[2] = a4;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v50 = v26;
    *v25 = 136315906;
    DynamicType = *(v21 + 1);
    sub_217E540D8();
    v27 = sub_217E708F4();
    v29 = v28;
    sub_217E365C0(v21, type metadata accessor for ScopeReader.CurrentScope);
    v30 = sub_217E58888(v27, v29, &v50);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = sub_217E70A34();
    v33 = sub_217E58888(v31, v32, &v50);

    *(v25 + 14) = v33;
    *(v25 + 22) = 2080;
    sub_217E3B7E0(v18, v16, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v34 = type metadata accessor for ScopeGraphElement.ID(0);
    if ((*(*(v34 - 8) + 48))(v16, 1, v34) == 1)
    {
      sub_217E377A0(v16, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      v36 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
      v35 = v37;
      sub_217E365C0(v16, type metadata accessor for ScopeGraphElement.ID);
    }

    sub_217E377A0(v18, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    v38 = sub_217E58888(v36, v35, &v50);

    *(v25 + 24) = v38;
    *(v25 + 32) = 2080;
    sub_217E37F28(v51, v51[3]);
    DynamicType = swift_getDynamicType();
    v49 = v51[4];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata();
    v39 = sub_217E705D4();
    v41 = v40;
    sub_217E364B4(v51);
    v42 = sub_217E58888(v39, v41, &v50);

    *(v25 + 34) = v42;
    _os_log_impl(&dword_217E31000, v23, v24, "Scope is requesting initial dependency update. Scope=%s, Key=%s, Access=%s, Dependency=%s", v25, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v26, -1, -1);
    MEMORY[0x21CEAE800](v25, -1, -1);
  }

  else
  {

    sub_217E364B4(v51);
    sub_217E377A0(v18, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83D88]);
    sub_217E365C0(v21, type metadata accessor for ScopeReader.CurrentScope);
  }

  v51[0] = v45;
  return sub_217E3BAF8(v46, v51, 1);
}

BOOL sub_217E43ABC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v3[40];
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v19 - v6;
  v21 = v3;
  v20 = v3[41];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  v15 = v3[43];
  swift_beginAccess();
  (*(v9 + 16))(v14, &v2[v15], AssociatedTypeWitness);
  sub_217E3D6E8();
  v16 = *(*v2 + 104);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v2[v16], v4);
  (*(v20 + 24))(v4);
  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  (*(v9 + 24))(&v2[v15], v12, AssociatedTypeWitness);
  swift_endAccess();
  LOBYTE(v2) = sub_217E705C4();
  v17 = *(v9 + 8);
  v17(v12, AssociatedTypeWitness);
  v17(v14, AssociatedTypeWitness);
  return (v2 & 1) == 0;
}

uint64_t sub_217E43DBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = type metadata accessor for ScopeGraphElement.ID(0);
  MEMORY[0x28223BE20](v46);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Edge;
  sub_217E35174(0, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v47 = &v46 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  sub_217E35350(a1, &v46 - v20, type metadata accessor for ScopeGraphElement.ID);
  v22 = &v21[*(v9 + 36)];
  v50 = a2;
  sub_217E35350(a2, v22, type metadata accessor for ScopeGraphElement.ID);
  sub_217E3B7E0(v21, v16, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v2;
  v51 = v24;
  v26 = sub_217E3A780(a1);
  v27 = v24[2];
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v7) = v25;
  if (v24[3] >= v29)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_20;
    }

    *v3 = v24;
    if ((v25 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_217E44260(v29, isUniquelyReferenced_nonNull_native);
    v24 = v51;
    v30 = sub_217E3A780(a1);
    if ((v7 & 1) != (v31 & 1))
    {
      goto LABEL_22;
    }

    v26 = v30;
    *v3 = v24;
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  while (1)
  {
    sub_217E44860(v19, v16);
    v7 = type metadata accessor for Edge;
    sub_217E377A0(v19, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
    v16 = v49;
    sub_217E3B7E0(v21, v49, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v3[1];
    v34 = v51;
    v35 = v50;
    v26 = sub_217E3A780(v50);
    v37 = v34[2];
    v38 = (v36 & 1) == 0;
    v39 = v37 + v38;
    if (!__OFADD__(v37, v38))
    {
      break;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    sub_217E459E0();
    v24 = v51;
    *v3 = v51;
    if ((v7 & 1) == 0)
    {
LABEL_8:
      v32 = v48;
      sub_217E35350(a1, v48, type metadata accessor for ScopeGraphElement.ID);
      sub_217E44C38(v26, v32, MEMORY[0x277D84FA0], v24);
    }
  }

  v40 = v36;
  if (v34[3] >= v39)
  {
    if ((v33 & 1) == 0)
    {
      sub_217E459E0();
      v34 = v51;
    }

    goto LABEL_15;
  }

  sub_217E44260(v39, v33);
  v34 = v51;
  v41 = sub_217E3A780(v35);
  if ((v40 & 1) != (v42 & 1))
  {
LABEL_22:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v26 = v41;
LABEL_15:
  v43 = v47;
  v3[1] = v34;
  if ((v40 & 1) == 0)
  {
    v44 = v48;
    sub_217E35350(v35, v48, type metadata accessor for ScopeGraphElement.ID);
    sub_217E44C38(v26, v44, MEMORY[0x277D84FA0], v34);
  }

  sub_217E44860(v43, v16);
  sub_217E377A0(v43, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  return sub_217E377A0(v21, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
}

uint64_t sub_217E44260(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ScopeGraphElement.ID(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_217E445E8(0);
  v36 = v4;
  result = sub_217E708C4();
  v10 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48) + *(v35 + 72) * v22;
      v38 = *(v35 + 72);
      if (v36)
      {
        sub_217E361A8(v23, v7);
        v37 = *(*(v8 + 56) + 8 * v22);
      }

      else
      {
        sub_217E4FA2C(v23, v7);
        v37 = *(*(v8 + 56) + 8 * v22);
      }

      sub_217E709A4();
      sub_217E70374();
      sub_217E3A834(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_217E70594();
      result = sub_217E709D4();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_217E361A8(v7, *(v10 + 48) + v38 * v18);
      *(*(v10 + 56) + 8 * v18) = v37;
      ++*(v10 + 16);
      v8 = v34;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v31 = 1 << *(v8 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero(v12, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

void sub_217E445E8(uint64_t a1)
{
  if (!qword_2811B0928)
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    sub_217E4473C(255);
    sub_217E3A834(qword_2811B10D8, type metadata accessor for ScopeGraphElement.ID, &protocol conformance descriptor for ScopeGraphElement.ID);
    v1 = sub_217E708E4();
    if (!v2)
    {
      atomic_store(v1, &qword_2811B0928);
    }
  }
}

unint64_t sub_217E44694()
{
  result = qword_2811B0BE8[0];
  if (!qword_2811B0BE8[0])
  {
    sub_217E3C8CC(255);
    sub_217E447D0(qword_2811B10D8, type metadata accessor for ScopeGraphElement.ID, &protocol conformance descriptor for ScopeGraphElement.ID);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B0BE8);
  }

  return result;
}

void sub_217E4473C(uint64_t a1)
{
  if (!qword_2811B0970)
  {
    sub_217E393BC(255, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
    sub_217E44694();
    v1 = sub_217E70714();
    if (!v2)
    {
      atomic_store(v1, &qword_2811B0970);
    }
  }
}

uint64_t sub_217E447D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217E44860(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  sub_217E35174(0, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v22 = &v22 - v10;
  v23 = v2;
  v11 = *v2;
  sub_217E709A4();
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();
  v25 = *(v5 + 28);
  v26 = v5;
  sub_217E70594();
  v12 = sub_217E709D4();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    do
    {
      sub_217E3B7E0(*(v11 + 48) + v16 * v14, v9, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      if (_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0())
      {
        v17 = _s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0();
        sub_217E377A0(v9, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
        if (v17)
        {
          sub_217E377A0(a2, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
          sub_217E3B7E0(*(v11 + 48) + v16 * v14, v24, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
          return 0;
        }
      }

      else
      {
        sub_217E377A0(v9, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  v19 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v22;
  sub_217E3B7E0(a2, v22, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v27 = *v19;
  sub_217E44D20(v21, v14, isUniquelyReferenced_nonNull_native);
  *v19 = v27;
  sub_217E454AC(a2, v24, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  return 1;
}

uint64_t sub_217E44C38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ScopeGraphElement.ID(0);
  result = sub_217E361A8(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_217E44CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217E44D20(uint64_t a1, unint64_t a2, char a3)
{
  sub_217E35174(0, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v26 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v24 = v8;
  v25 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_217E49FE8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_217E53224();
      goto LABEL_15;
    }

    sub_217E45094(v11 + 1);
  }

  v13 = *v3;
  sub_217E709A4();
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();
  sub_217E70594();
  v14 = sub_217E709D4();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 72);
    do
    {
      sub_217E3B7E0(*(v13 + 48) + v17 * a2, v10, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      if (_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0())
      {
        v18 = _s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0();
        sub_217E377A0(v10, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
        if (v18)
        {
          sub_217E70934();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_217E377A0(v10, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_217E454AC(a1, *(v19 + 48) + *(v24 + 72) * a2, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_217E45094(uint64_t a1)
{
  v2 = v1;
  sub_217E35174(0, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v27 - v4;
  v5 = *v1;
  sub_217E45448(0);
  result = sub_217E707E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v1;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
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
      v19 = *(v5 + 48);
      v32 = *(v30 + 72);
      sub_217E3B7E0(v19 + v32 * (v16 | (v8 << 6)), v33, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      sub_217E709A4();
      sub_217E70374();
      sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_217E70594();
      sub_217E70594();
      result = sub_217E709D4();
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_217E454AC(v33, *(v7 + 48) + v15 * v32, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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

void sub_217E45448(uint64_t a1)
{
  if (!qword_2811B0958)
  {
    sub_217E3C8CC(255);
    sub_217E44694();
    v1 = sub_217E707F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2811B0958);
    }
  }
}

uint64_t sub_217E454AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_217E35174(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_217E45564@<X0>(uint64_t *a1@<X1>, uint64_t a4@<X8>)
{
  *&v36[0] = swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for ScopeGraphElement.ID(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_217E70794();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v22 - v9);
  v11 = *a1;
  swift_beginAccess();
  v12 = v4[5];
  v13 = v4[7];
  v33 = v4[6];
  v34 = v13;
  v14 = v4[7];
  v35 = v4[8];
  v15 = v4[5];
  v32[0] = v4[4];
  v32[1] = v15;
  v26 = v33;
  v27 = v14;
  v28 = v4[8];
  v24 = v32[0];
  v25 = v12;
  v23 = v11;
  sub_217E3438C(v32, v36);
  sub_217E4054C(&v23, v10);
  v36[2] = v26;
  v36[3] = v27;
  v36[4] = v28;
  v36[0] = v24;
  v36[1] = v25;
  sub_217E347DC(v36);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v10, 1, TupleTypeMetadata2) == 1)
  {
    v16 = swift_checkMetadataState();
    return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }

  else
  {
    v18 = *(TupleTypeMetadata2 + 48);
    sub_217E33C00(v10, v29);
    sub_217E365C0(v10 + v18, type metadata accessor for ScopeGraphElement.ID);
    v19 = v30;
    v20 = v31;
    sub_217E37F28(v29, v30);
    (*(v20 + 24))(v19, v20);
    v21 = swift_checkMetadataState();
    (*(*(v21 - 8) + 56))(a4, 0, 1, v21);
    return sub_217E364B4(v29);
  }
}

uint64_t sub_217E45830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v5 + 104);
  swift_beginAccess();
  return (*(*(*(a1 + 80) - 8) + 16))(a2, v5 + v6);
}

uint64_t sub_217E458C4(uint64_t a1)
{
  v2 = type metadata accessor for ScopeReader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ScopeReader.value<A>(for:)(uint64_t a1)
{
  type metadata accessor for ScopeReader(0);

  return swift_getAtKeyPath();
}

uint64_t Dependency.wrappedValue.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_217E37F28(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

void *sub_217E459E0()
{
  v1 = v0;
  v2 = type metadata accessor for ScopeGraphElement.ID(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E45C3C(0, &qword_2811B0928, sub_217E4473C);
  v4 = *v0;
  v5 = sub_217E708B4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_217E3AF88(*(v4 + 48) + v21, v27, type metadata accessor for ScopeGraphElement.ID);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        sub_217E35CBC(v20, *(v29 + 48) + v21, type metadata accessor for ScopeGraphElement.ID);
        *(*(v23 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_217E45C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    a3(255);
    sub_217E3A834(qword_2811B10D8, type metadata accessor for ScopeGraphElement.ID, &protocol conformance descriptor for ScopeGraphElement.ID);
    v5 = sub_217E708E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_217E45CE8(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v84 = a4;
  v9 = type metadata accessor for Storage.ExplicitUpdate(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v80 = &v76[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v81 = &v76[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v91 = &v76[-v15];
  v16 = *(a3 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v90 = &v76[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v76[-v20];
  MEMORY[0x28223BE20](v19);
  v22 = &v76[-v21];
  v88 = *a2;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v23 = sub_217E703B4();
  v24 = sub_217E35794(v23, qword_2811B1820);
  v26 = v16 + 16;
  v25 = *(v16 + 16);
  v85 = a1;
  v87 = v25;
  v25(v22, a1, a3);
  v83 = v24;
  v27 = sub_217E70394();
  v28 = sub_217E70764();
  v29 = os_log_type_enabled(v27, v28);
  v89 = v16;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v77 = v28;
    v31 = v30;
    v78 = swift_slowAlloc();
    *&v103[0] = v78;
    *v31 = 136315394;
    *&v98 = v88;
    sub_217E540D8();
    v32 = sub_217E708F4();
    v34 = sub_217E58888(v32, v33, v103);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    v35 = v86;
    v87(v86, v22, a3);
    v36 = v27;
    v37 = v35;
    v38 = sub_217E705D4();
    v40 = v39;
    v82 = *(v89 + 8);
    v82(v22, a3);
    v41 = sub_217E58888(v38, v40, v103);

    *(v31 + 14) = v41;
    _os_log_impl(&dword_217E31000, v36, v77, "Received request to raise event. Scope=%s, Event=%s", v31, 0x16u);
    v42 = v78;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v42, -1, -1);
    MEMORY[0x21CEAE800](v31, -1, -1);
  }

  else
  {

    v82 = *(v16 + 8);
    v82(v22, a3);
    v37 = v86;
  }

  v43 = a3;
  v79 = v26;
  v44 = v37;
  v45 = v37;
  v46 = v85;
  v47 = v87;
  v87(v45, v85, v43);
  v48 = v91;
  v49 = v44;
  v50 = v84;
  sub_217E464E0(v49, v43, v91);
  v51 = v80;
  sub_217E35350(v48, v80, type metadata accessor for Storage.ExplicitUpdate);
  swift_beginAccess();
  v52 = v81;
  sub_217E465F0(v81, v51);
  swift_endAccess();
  sub_217E365C0(v52, type metadata accessor for Storage.ExplicitUpdate);
  swift_beginAccess();
  v53 = v5[6];
  v54 = v5[4];
  v99 = v5[5];
  v100 = v53;
  v55 = v5[6];
  v56 = v5[8];
  v101 = v5[7];
  v102 = v56;
  v98 = v5[4];
  v95 = v55;
  v96 = v101;
  v97 = v5[8];
  v93 = v54;
  v94 = v99;
  v57 = v88;
  v92 = v88;
  sub_217E3438C(&v98, v103);
  v58 = v50;
  v59 = v43;
  sub_217E47008(v46, &v92, v43, v58);
  v103[2] = v95;
  v103[3] = v96;
  v103[4] = v97;
  v103[0] = v93;
  v103[1] = v94;
  sub_217E347DC(v103);
  v47(v90, v46, v43);
  v60 = sub_217E70394();
  v61 = sub_217E70764();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = v59;
    v63 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v92 = v57;
    *&v93 = v85;
    *v63 = 136315394;
    sub_217E540D8();
    v64 = sub_217E708F4();
    v66 = sub_217E58888(v64, v65, &v93);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2080;
    v67 = v47;
    v68 = v90;
    v67(v86, v90, v62);
    v69 = sub_217E705D4();
    v71 = v70;
    v82(v68, v62);
    v72 = sub_217E58888(v69, v71, &v93);

    *(v63 + 14) = v72;
    _os_log_impl(&dword_217E31000, v60, v61, "Concluded broadcast of event. Scope=%s, Event=%s", v63, 0x16u);
    v73 = v85;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v73, -1, -1);
    MEMORY[0x21CEAE800](v63, -1, -1);
  }

  else
  {

    v82(v90, v59);
  }

  v74 = v91;
  sub_217E47AC0(v5, v91);
  return sub_217E365C0(v74, type metadata accessor for Storage.ExplicitUpdate);
}

uint64_t type metadata accessor for Storage.ExplicitUpdate(uint64_t a1)
{
  result = qword_2811B0AC0;
  if (!qword_2811B0AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217E4646C(uint64_t a1)
{
  result = sub_217E70374();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E464E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E70364();
  (*(v6 + 16))(v8, a1, a2);
  v9 = sub_217E705D4();
  v11 = v10;
  (*(v6 + 8))(a1, a2);
  result = type metadata accessor for Storage.ExplicitUpdate(0);
  v13 = (a3 + *(result + 20));
  *v13 = v9;
  v13[1] = v11;
  return result;
}

uint64_t sub_217E465F0(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for Storage.ExplicitUpdate(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v26 = &v25 - v9;
  v27 = v2;
  v10 = *v2;
  sub_217E709A4();
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();
  v29 = v4;
  v11 = (a2 + *(v4 + 20));
  v12 = *v11;
  v13 = v11[1];
  sub_217E705F4();
  v14 = sub_217E709D4();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      sub_217E35350(*(v10 + 48) + v18 * v16, v8, type metadata accessor for Storage.ExplicitUpdate);
      if (_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0())
      {
        v19 = &v8[*(v29 + 20)];
        v20 = *v19 == v12 && *(v19 + 1) == v13;
        if (v20 || (sub_217E70924() & 1) != 0)
        {
          break;
        }
      }

      sub_217E365C0(v8, type metadata accessor for Storage.ExplicitUpdate);
      v16 = (v16 + 1) & v17;
      if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_217E365C0(v8, type metadata accessor for Storage.ExplicitUpdate);
    sub_217E365C0(a2, type metadata accessor for Storage.ExplicitUpdate);
    sub_217E35350(*(v10 + 48) + v18 * v16, v28, type metadata accessor for Storage.ExplicitUpdate);
    return 0;
  }

  else
  {
LABEL_11:
    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v26;
    sub_217E35350(a2, v26, type metadata accessor for Storage.ExplicitUpdate);
    v30 = *v22;
    sub_217E4690C(v24, v16, isUniquelyReferenced_nonNull_native);
    *v22 = v30;
    sub_217E35D8C(a2, v28, type metadata accessor for Storage.ExplicitUpdate);
    return 1;
  }
}

uint64_t sub_217E4690C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Storage.ExplicitUpdate(0);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_217E4B440(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_217E53278();
      goto LABEL_18;
    }

    sub_217E46BF8(v10 + 1);
  }

  v12 = *v3;
  sub_217E709A4();
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();
  v13 = (a1 + *(v7 + 20));
  v14 = *v13;
  v15 = v13[1];
  sub_217E705F4();
  v16 = sub_217E709D4();
  v17 = -1 << *(v12 + 32);
  a2 = v16 & ~v17;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v29 + 72);
    while (1)
    {
      sub_217E35350(*(v12 + 48) + v19 * a2, v9, type metadata accessor for Storage.ExplicitUpdate);
      if (_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0())
      {
        v20 = &v9[*(v7 + 20)];
        v21 = *v20 == v14 && *(v20 + 1) == v15;
        if (v21 || (sub_217E70924() & 1) != 0)
        {
          break;
        }
      }

      sub_217E365C0(v9, type metadata accessor for Storage.ExplicitUpdate);
      a2 = (a2 + 1) & v18;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_217E365C0(v9, type metadata accessor for Storage.ExplicitUpdate);
    sub_217E70934();
    __break(1u);
  }

LABEL_18:
  v22 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_217E35D8C(a1, *(v22 + 48) + *(v29 + 72) * a2, type metadata accessor for Storage.ExplicitUpdate);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

uint64_t sub_217E46BF8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Storage.ExplicitUpdate(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_217E46F2C(0);
  result = sub_217E707E4();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_217E35350(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for Storage.ExplicitUpdate);
      sub_217E709A4();
      sub_217E70374();
      sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_217E70594();
      sub_217E705F4();
      result = sub_217E709D4();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_217E35D8C(v5, *(v8 + 48) + v16 * v21, type metadata accessor for Storage.ExplicitUpdate);
      ++*(v8 + 16);
      v6 = v31;
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

        v2 = v30;
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
    *v2 = v8;
  }

  return result;
}

void sub_217E46F2C(uint64_t a1)
{
  if (!qword_2811B0960)
  {
    type metadata accessor for Storage.ExplicitUpdate(255);
    sub_217E447D0(&qword_2811B0B00, type metadata accessor for Storage.ExplicitUpdate, "\tn<j,%");
    v1 = sub_217E707F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2811B0960);
    }
  }
}

uint64_t sub_217E47008(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v6 = v4[3];
  v52 = v4[2];
  v53 = v6;
  v7 = v4[1];
  v50 = *v4;
  v51 = v7;
  v8 = v4[3];
  v45 = v52;
  v46 = v8;
  v9 = *a2;
  v10 = *(v4 + 9);
  v54 = *(v4 + 8);
  v11 = *(v4 + 8);
  v44 = v5;
  v43 = v50;
  v47 = v11;
  v48 = v10;
  v39[0] = v9;
  v12 = sub_217E35AD0(v39);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_217E47604((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 16) = v14 + 1;
    *(v12 + 8 * v14 + 32) = v9;
    v49 = v12;
    v45 = v52;
    v46 = v53;
    v44 = v51;
    v43 = v50;
    v47 = v54;
    v48 = v10;
    v39[0] = v9;
    v15 = sub_217E47758(v39);
    sub_217E479D4(v15);
    *&v43 = a3;
    swift_getExtendedExistentialTypeMetadata_unique();
    v16 = sub_217E70514();
    v42 = v16;
    v17 = v49;
    v18 = *(v49 + 16);
    v38 = v10;
    if (v18)
    {
      v19 = 32;
      while (1)
      {
        if (!*(v10 + 16))
        {
          goto LABEL_8;
        }

        v20 = sub_217E33C18(*(v17 + v19));
        if ((v21 & 1) == 0)
        {
          goto LABEL_8;
        }

        v22 = *(*(v10 + 56) + 8 * v20);

        sub_217E36EF4(a3, a3);
        if (*(v22 + 16))
        {
          v24 = sub_217E3722C(v23);
          v26 = v25;

          if (v26)
          {
            v27 = *(*(v22 + 56) + 8 * v24);

            *&v43 = v27;
            MEMORY[0x28223BE20](v28);
            sub_217E362C4(0, &qword_2811B0980, qword_2811B1708, &protocol descriptor for GraphUpdate, MEMORY[0x277D83940]);
            sub_217E4A3CC();
            v29 = sub_217E70624();

            v10 = v38;
            *&v43 = v29;
            sub_217E706B4();
            swift_getWitnessTable();
            sub_217E70694();
            goto LABEL_8;
          }
        }

        else
        {
        }

LABEL_8:
        v19 += 8;
        if (!--v18)
        {

          v30 = v42;
          goto LABEL_16;
        }
      }
    }

    v30 = v16;

LABEL_16:
    v9 = a1;
    if (!sub_217E706A4())
    {
    }

    v31 = 0;
    v10 = v30 + 32;
    a3 = 138412290;
    while (1)
    {
      v12 = sub_217E70684();
      sub_217E70654();
      if ((v12 & 1) == 0)
      {
        break;
      }

      sub_217E33AD0(v10, v39);
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_24;
      }

      v33 = v40;
      v34 = v41;
      sub_217E37F28(v39, v40);
      v45 = v52;
      v46 = v53;
      v44 = v51;
      v43 = v50;
      v47 = v54;
      v48 = v38;
      (*(v34 + 16))(&v43, a1, v33, v34);
      sub_217E364B4(v39);
      ++v31;
      v10 += 40;
      if (v32 == sub_217E706A4())
      {
      }
    }

    sub_217E70824();
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v12 = sub_217E47604(0, *(v12 + 16) + 1, 1, v12);
  }
}

char *sub_217E47604(char *result, int64_t a2, char a3, char *a4)
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
    sub_217E4770C(0, &qword_2811B08E8, &type metadata for Scope.ID);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_217E4770C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_217E70904();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_217E47758(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[1];
  v39 = *v1;
  v4 = v1[2];
  v40 = v3;
  v41 = v4;
  v5 = *(v1 + 6);
  v37 = *(v1 + 56);
  v6 = *(v5 + 64);
  v38 = *(v1 + 9);
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      do
      {
        if (!v9)
        {
          while (1)
          {
            v16 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v16 >= v10)
            {
              goto LABEL_27;
            }

            v9 = *(v5 + 64 + 8 * v16);
            ++v12;
            if (v9)
            {
              v12 = v16;
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

LABEL_4:
        v14 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v15 = v14 | (v12 << 6);
      }

      while (v2 != *(*(v5 + 56) + 8 * v15));
      v17 = *(*(v5 + 48) + 8 * v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_217E47604(0, *(v13 + 2) + 1, 1, v13);
      }

      v19 = *(v13 + 2);
      v18 = *(v13 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v27 = sub_217E47604((v18 > 1), v19 + 1, 1, v13);
        v20 = v19 + 1;
        v13 = v27;
      }

      *(v13 + 2) = v20;
      *&v13[8 * v19 + 32] = v17;
      v31 = v39;
      v32 = v40;
      v33 = v41;
      v34 = v5;
      v35 = v37;
      v36 = v38;
      v30 = v17;
      result = sub_217E47758(&v30);
      v21 = *(result + 2);
      v22 = *(v13 + 2);
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        goto LABEL_29;
      }

      if (v23 > *(v13 + 3) >> 1)
      {
        break;
      }

      if (!v21)
      {
        goto LABEL_25;
      }

LABEL_17:
      if (((*(v13 + 3) >> 1) - v22) < v21)
      {
        goto LABEL_30;
      }

      memcpy(&v13[8 * v22 + 32], result + 32, 8 * v21);

      if (v21)
      {
        v24 = *(v13 + 2);
        v25 = __OFADD__(v24, v21);
        v26 = v24 + v21;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v13 + 2) = v26;
      }
    }

    if (v22 <= v23)
    {
      v28 = v22 + v21;
    }

    else
    {
      v28 = *(v13 + 2);
    }

    v29 = result;
    v13 = sub_217E47604(1, v28, 1, v13);
    result = v29;
    v22 = *(v13 + 2);
    if (*(v29 + 16))
    {
      goto LABEL_17;
    }

LABEL_25:
  }

  while (!v21);
  __break(1u);
LABEL_27:

  return v13;
}

char *sub_217E479D4(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_217E47604(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_217E47AC0(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D83D88];
  sub_217E35174(0, &qword_2811B0AB8, type metadata accessor for Storage.ExplicitUpdate, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  swift_beginAccess();
  sub_217E47BE0(a2, v7);
  swift_endAccess();
  result = sub_217E377A0(v7, &qword_2811B0AB8, type metadata accessor for Storage.ExplicitUpdate, v4);
  if (!*(*(a1 + 160) + 16) && !*(*(a1 + 152) + 16))
  {
    return sub_217E3D8A8();
  }

  return result;
}

uint64_t sub_217E47BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for Storage.ExplicitUpdate(0);
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v7 = *v2;
  sub_217E709A4();
  sub_217E70374();
  sub_217E447D0(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();
  v28 = v4;
  v8 = (a1 + *(v4 + 20));
  v9 = *v8;
  v10 = v8[1];
  sub_217E705F4();
  v11 = sub_217E709D4();
  v12 = -1 << *(v7 + 32);
  v13 = v11 & ~v12;
  if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return (*(v27 + 56))(v26, 1, 1, v28);
  }

  v14 = ~v12;
  v15 = *(v27 + 72);
  while (1)
  {
    sub_217E35F40(*(v7 + 48) + v15 * v13, v6, type metadata accessor for Storage.ExplicitUpdate);
    if (_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0())
    {
      v16 = &v6[*(v28 + 20)];
      v17 = *v16 == v9 && *(v16 + 1) == v10;
      if (v17 || (sub_217E70924() & 1) != 0)
      {
        break;
      }
    }

    sub_217E3477C(v6, type metadata accessor for Storage.ExplicitUpdate);
    v13 = (v13 + 1) & v14;
    if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return (*(v27 + 56))(v26, 1, 1, v28);
    }
  }

  sub_217E3477C(v6, type metadata accessor for Storage.ExplicitUpdate);
  v18 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_217E532CC(type metadata accessor for Storage.ExplicitUpdate, sub_217E46F2C, type metadata accessor for Storage.ExplicitUpdate, type metadata accessor for Storage.ExplicitUpdate);
    v20 = v29;
  }

  v21 = *(v20 + 48) + v15 * v13;
  v22 = v26;
  sub_217E39C30(v21, v26, type metadata accessor for Storage.ExplicitUpdate);
  sub_217E47F10(v13);
  *v18 = v29;
  return (*(v27 + 56))(v22, 0, 1, v28);
}

uint64_t sub_217E47F10(int64_t a1)
{
  v27 = type metadata accessor for Storage.ExplicitUpdate(0);
  v3 = *(v27 - 8);
  result = MEMORY[0x28223BE20](v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_217E707C4();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v26 = (v12 + 1) & v11;
      v13 = *(v3 + 72);
      v14 = v11;
      do
      {
        v15 = v8;
        v16 = v13;
        v17 = v13 * v10;
        sub_217E35F40(*(v7 + 48) + v13 * v10, v6, type metadata accessor for Storage.ExplicitUpdate);
        sub_217E709A4();
        sub_217E70374();
        sub_217E447D0(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v18 = v14;
        sub_217E70594();
        sub_217E705F4();
        v19 = sub_217E709D4();
        sub_217E3477C(v6, type metadata accessor for Storage.ExplicitUpdate);
        v20 = v19 & v18;
        v14 = v18;
        if (a1 >= v26)
        {
          if (v20 < v26)
          {
            v13 = v16;
            goto LABEL_5;
          }

          v13 = v16;
          if (a1 < v20)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = v16;
          if (v20 < v26 && a1 < v20)
          {
            goto LABEL_5;
          }
        }

        v21 = v13 * a1;
        if (v13 * a1 < v17 || *(v7 + 48) + v13 * a1 >= (*(v7 + 48) + v17 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v10;
        if (v21 != v17)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v14;
        v8 = v15;
      }

      while (((*(v15 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v7 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v24;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_217E4824C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217E70374();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217E4831C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217E70374();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217E483DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a3;
  v7 = type metadata accessor for ScopeGraphElement.ID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for EventHandlingRuleUpdate(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v14 = *(v13 - 1);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  sub_217E35F40(a1, v9, type metadata accessor for ScopeGraphElement.ID);
  sub_217E3B680(v9, v21);
  v22 = *(v14 + 16);
  v65 = v19;
  v23 = v19;
  v24 = v66;
  v62 = v21;
  v63 = v22;
  v22(v23, v21, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = *(a2 + 72);
  v26 = v68;
  *(a2 + 72) = 0x8000000000000000;
  v28 = sub_217E33C18(v24);
  v29 = *(v26 + 16);
  v30 = (v27 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    __break(1u);
    goto LABEL_25;
  }

  LOBYTE(v32) = v27;
  if (*(v26 + 24) >= v31)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    sub_217E489A4(v31, isUniquelyReferenced_nonNull_native);
    v26 = v68;
    v33 = sub_217E33C18(v24);
    if ((v32 & 1) != (v34 & 1))
    {
      sub_217E70944();
      __break(1u);
      goto LABEL_29;
    }

    v28 = v33;
  }

  while (1)
  {
    isUniquelyReferenced_nonNull_native = v14;
    *(a2 + 72) = v26;

    v35 = *(a2 + 72);
    if ((v32 & 1) == 0)
    {
      sub_217E362BC();
    }

    v14 = *(v35 + 56);
    v36 = *(v14 + 8 * v28);
    sub_217E36EF4(AssociatedTypeWitness, AssociatedTypeWitness);
    if (*(v36 + 16) && (v38 = sub_217E3722C(v37), (v39 & 1) != 0))
    {
      v24 = *(*(v36 + 56) + 8 * v38);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v24;
    if ((v40 & 1) == 0)
    {
LABEL_25:
      v24 = sub_217E48C44(0, v24[2] + 1, 1, v24);
      v68 = v24;
    }

    v41 = v65;
    v43 = v24[2];
    v42 = v24[3];
    if (v43 >= v42 >> 1)
    {
      v24 = sub_217E48C44((v42 > 1), v43 + 1, 1, v24);
      v68 = v24;
    }

    v32 = v64;
    v63(v64, v41, v13);
    WitnessTable = swift_getWitnessTable();
    sub_217E48E10(v43, v32, &v68, v13, WitnessTable);
    v45 = v13;
    v13 = *(isUniquelyReferenced_nonNull_native + 8);
    v65 = (isUniquelyReferenced_nonNull_native + 8);
    v66 = v45;
    v13(v41);
    v64 = sub_217E36EF4(AssociatedTypeWitness, AssociatedTypeWitness);
    AssociatedTypeWitness = v46;
    v48 = v47;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v14 + 8 * v28);
    v50 = v67;
    *(v14 + 8 * v28) = 0x8000000000000000;
    a2 = sub_217E3722C(v48);
    v52 = *(v50 + 16);
    v53 = (v51 & 1) == 0;
    v54 = v52 + v53;
    if (!__OFADD__(v52, v53))
    {
      break;
    }

    __break(1u);
LABEL_27:
    sub_217E59024();
    v26 = v68;
  }

  v55 = v51;
  if (*(v50 + 24) >= v54)
  {
    if ((v49 & 1) == 0)
    {
      sub_217E59190();
    }

    goto LABEL_21;
  }

  sub_217E491E0(v54, v49);
  v56 = sub_217E3722C(v48);
  if ((v55 & 1) != (v57 & 1))
  {
LABEL_29:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  a2 = v56;
LABEL_21:
  v58 = v62;
  *(v14 + 8 * v28) = v67;

  v59 = *(v14 + 8 * v28);
  if ((v55 & 1) == 0)
  {
    sub_217E4921C(a2, v64, AssociatedTypeWitness, v48, MEMORY[0x277D84F90], *(v14 + 8 * v28));
  }

  *(*(v59 + 56) + 8 * a2) = v24;

  return (v13)(v58, v66);
}

void sub_217E48920(uint64_t a1)
{
  if (!qword_2811B1160)
  {
    sub_217E33B34(255, &qword_2811B0980, qword_2811B1708, &protocol descriptor for GraphUpdate, MEMORY[0x277D83940]);
    v5 = type metadata accessor for TypedDictionary(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_2811B1160);
    }
  }
}

uint64_t sub_217E489A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_217E39024(0, &qword_2811B0918, sub_217E48920);
  v30 = v4;
  result = sub_217E708C4();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_217E709A4();
      MEMORY[0x21CEAE230](v20);
      result = sub_217E709D4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_217E48C44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217E48DA0(0, &qword_2811B08F0, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_217E3374C(0, qword_2811B1708, &protocol descriptor for GraphUpdate);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_217E48DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_217E3374C(255, qword_2811B1708, &protocol descriptor for GraphUpdate);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217E48E10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_217E360A4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_217E33C00(&v12, v10 + 40 * a1 + 32);
}

void sub_217E48EA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_217E37580();
    v6 = sub_217E708E4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_217E48F20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  sub_217E48EA8(0, a3, a4, a5, a6);
  v38 = v8;
  result = sub_217E708C4();
  v11 = result;
  if (*(v9 + 16))
  {
    v37 = v9;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = (*(v9 + 48) + 24 * v24);
      v26 = v25[1];
      v39 = *v25;
      v27 = v25[2];
      v28 = *(*(v9 + 56) + 8 * v24);
      if ((v38 & 1) == 0)
      {
      }

      sub_217E709A4();
      MEMORY[0x21CEAE230](v27);
      result = sub_217E709D4();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 24 * v19);
      *v20 = v39;
      v20[1] = v26;
      v20[2] = v27;
      *(*(v11 + 56) + 8 * v19) = v28;
      ++*(v11 + 16);
      v9 = v37;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v7 = v6;
      goto LABEL_33;
    }

    v36 = 1 << *(v9 + 32);
    v7 = v6;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_33:
  *v7 = v11;
  return result;
}