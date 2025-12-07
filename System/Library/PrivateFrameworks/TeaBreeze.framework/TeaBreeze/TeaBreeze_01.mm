unint64_t sub_217E49224(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t Scope.definesScope<A>(of:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  sub_217E6AC34(a1);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v6;
  a2[4] = v8;
}

__n128 sub_217E49300(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void Scope.subscope(dependencyContainer:tag:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *v4;
  v9 = v4[4];
  sub_217E336BC(a1, v31);
  v10 = qword_2811B0BC8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = off_2811B0BD0;
  os_unfair_lock_lock(off_2811B0BD0 + 6);
  v12 = *(v11 + 2);
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    v28 = a4;
    *(v11 + 2) = v12 + 1;
    os_unfair_lock_unlock(v11 + 6);

    sub_217E336BC(v31, v30);
    swift_beginAccess();
    sub_217E33874(v30, v12);
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v8 + 112);
    *(v8 + 112) = 0x8000000000000000;
    v26 = v9;
    sub_217E49B84(v9, v12, isUniquelyReferenced_nonNull_native);
    *(v8 + 112) = v29;

    v27 = a2;
    sub_217E49F14(a2, a3, v12);
    swift_endAccess();
    sub_217E33804(v31, &qword_2811B0F90, qword_2811B0F98, &protocol descriptor for DependencyContainer);
    type metadata accessor for StorageHandle();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v12;
    v14 = qword_2811B1810;

    if (v14 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v15 = sub_217E703B4();
  sub_217E35794(v15, qword_2811B1820);
  swift_retain_n();

  v16 = sub_217E70394();
  v17 = sub_217E70764();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136315394;
    v30[0] = v12;
    sub_217E540D8();
    v20 = sub_217E708F4();
    v22 = sub_217E58888(v20, v21, v31);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v30[0] = v26;
    v23 = sub_217E708F4();
    v25 = sub_217E58888(v23, v24, v31);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_217E31000, v16, v17, "Prepared new subscope. ID=%s, Parent=%s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v19, -1, -1);
    MEMORY[0x21CEAE800](v18, -1, -1);
  }

  *v28 = v8;
  v28[1] = v9;
  v28[2] = v27;
  v28[3] = a3;
  v28[4] = v12;
}

uint64_t sub_217E496D8(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_217E33C18(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_217E59B5C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_217E49884(v14, a3 & 1);
    v9 = sub_217E33C18(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    sub_217E364B4(v20);

    return sub_217E33C00(a1, v20);
  }

  else
  {

    return sub_217E49B18(v9, a2, a1, v19);
  }
}

void sub_217E49808(uint64_t a1)
{
  if (!qword_2811B0910)
  {
    sub_217E3374C(255, qword_2811B0F98, &protocol descriptor for DependencyContainer);
    sub_217E34278();
    v1 = sub_217E708E4();
    if (!v2)
    {
      atomic_store(v1, &qword_2811B0910);
    }
  }
}

uint64_t sub_217E49884(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_217E49808(0);
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
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_217E33C00(v21, v30);
      }

      else
      {
        sub_217E33AD0(v21, v30);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_217E33C00(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_217E49B18(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_217E33C00(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_217E49B84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_217E33C18(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_217E59A0C();
      result = v17;
      goto LABEL_8;
    }

    sub_217E49C90(v14, a3 & 1);
    result = sub_217E33C18(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_217E36EB0(result, a2, a1, v19);
  }

  return result;
}

uint64_t sub_217E49C90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_217E33CF0(0, &qword_2811B0908, &type metadata for Scope.ID);
  result = sub_217E708C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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

LABEL_33:
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
        goto LABEL_33;
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
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_217E49F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_217E34140(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_217E33C18(a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_217E598A0();
        v13 = v15;
      }

      result = sub_217E5A8A0(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t sub_217E49FE8(uint64_t a1)
{
  v2 = v1;
  sub_217E35174(0, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v5 = *v1;
  sub_217E45448(0);
  result = sub_217E707E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v1;
    v30 = v5;
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
      v19 = *(v5 + 48);
      v33 = *(v31 + 72);
      sub_217E454AC(v19 + v33 * (v16 | (v8 << 6)), v34, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_217E454AC(v34, *(v7 + 48) + v15 * v33, &qword_2811B0BE0, type metadata accessor for ScopeGraphElement.ID, type metadata accessor for Edge);
      ++*(v7 + 16);
      v5 = v30;
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
      bzero(v9, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v2 = v29;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_217E4A3CC()
{
  result = qword_2811B0978;
  if (!qword_2811B0978)
  {
    sub_217E362C4(255, &qword_2811B0980, qword_2811B1708, &protocol descriptor for GraphUpdate, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B0978);
  }

  return result;
}

double sub_217E4A46C@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_217E33AD0(a1, v5);
  sub_217E3374C(0, qword_2811B1708, &protocol descriptor for GraphUpdate);
  swift_getExtendedExistentialTypeMetadata_unique();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_217E4A514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ScopeGraphElement(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E38B58(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = *(v2 + 8);
  if (*(v14 + 16) && (v15 = sub_217E3A780(a1), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    sub_217E38B24(0);
    v20 = v19;
    v21 = *(v19 - 8);
    sub_217E35F40(v18 + *(v21 + 72) * v17, v13, sub_217E38B24);
    (*(v21 + 56))(v13, 0, 1, v20);
  }

  else
  {
    sub_217E38B24(0);
    v20 = v22;
    (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  }

  sub_217E39C30(v13, v11, sub_217E38B58);
  sub_217E38B24(0);
  if ((*(*(v20 - 8) + 48))(v11, 1, v20) == 1)
  {
    result = sub_217E3477C(v11, sub_217E38B58);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    sub_217E35F40(v11, v7, type metadata accessor for ScopeGraphElement);
    sub_217E3477C(v11, sub_217E38B24);
    sub_217E33AD0(&v7[*(v5 + 24)], a2);
    return sub_217E3477C(v7, type metadata accessor for ScopeGraphElement);
  }

  return result;
}

uint64_t sub_217E4A7F8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[2];
  v6 = a1[4];
  v13[3] = a1[3];
  v13[4] = v6;
  v7 = *a1;
  v13[1] = a1[1];
  v13[2] = v5;
  v13[0] = v7;
  sub_217E4A514(v3, &v14);
  if (!v15)
  {
    return sub_217E54A0C(&v14);
  }

  sub_217E33C00(&v14, v13);
  sub_217E33AD0(v13, v12);
  sub_217E38C20();
  swift_getExtendedExistentialTypeMetadata();
  if (!swift_dynamicCast())
  {
    return sub_217E364B4(v13);
  }

  sub_217E33C00(&v11, &v14);
  v8 = v15;
  v9 = v16;
  sub_217E37F28(&v14, v15);
  (*(v9 + 24))(a2, v8, v9);
  sub_217E364B4(v13);
  return sub_217E364B4(&v14);
}

uint64_t sub_217E4A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - v8;
  v11 = *(v10 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v9, a1 + v11, v6);
  (*(a3 + 24))(a2, v6, a3);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_217E4AACC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if ((*(v2 + *(*v2 + 136)) & 1) == 0)
  {
    *(v2 + *(*v2 + 120)) = 1;
    a1 = sub_217E4A978(v2, a1, a2);
    *(v2 + *(*v2 + 120)) = 0;
    v3 = *v2;
    if (*(v2 + *(*v2 + 128)) == 1)
    {
      a1 = sub_217E5C3B8();
      v3 = *v2;
    }
  }

  result = (*(v3 + 232))(a1, a2);
  *(v2 + *(*v2 + 112)) = result & 1;
  return result;
}

uint64_t sub_217E4AC34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v91 = a4;
  v5 = v4;
  v9 = type metadata accessor for Storage.ExplicitUpdate(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v89 = &v79[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v90 = &v79[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v79[-v15];
  v16 = *(a3 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v87 = &v79[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v94 = &v79[-v20];
  MEMORY[0x28223BE20](v19);
  v22 = &v79[-v21];
  v95 = *a2;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v23 = sub_217E703B4();
  v24 = sub_217E35794(v23, qword_2811B1820);
  v25 = *(v16 + 16);
  v93 = a1;
  v26 = a1;
  v27 = v25;
  v97 = v16 + 16;
  (v25)(v22, v26, a3);
  v85 = v24;
  v28 = sub_217E70394();
  v29 = sub_217E70764();
  v30 = os_log_type_enabled(v28, v29);
  v88 = v16;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v84 = v31;
    v82 = swift_slowAlloc();
    *&v110[0] = v82;
    *v31 = 136315394;
    *&v105 = v95;
    sub_217E540D8();
    v81 = v28;
    v32 = sub_217E708F4();
    v34 = sub_217E58888(v32, v33, v110);
    v35 = v94;
    v83 = v5;
    v80 = v29;
    v36 = v16;
    v37 = v34;

    v38 = v84;
    *(v84 + 1) = v37;
    *(v38 + 6) = 2080;
    (v27)(v35, v22, a3);
    v39 = sub_217E705D4();
    v41 = v40;
    v5 = v83;
    v86 = *(v36 + 8);
    v86(v22, a3);
    v42 = sub_217E58888(v39, v41, v110);

    v43 = v84;
    *(v84 + 14) = v42;
    v44 = v81;
    _os_log_impl(&dword_217E31000, v81, v80, "Received request to invoke command. Scope=%s, Command=%s", v43, 0x16u);
    v45 = v82;
    swift_arrayDestroy();
    MEMORY[0x21CEAE800](v45, -1, -1);
    MEMORY[0x21CEAE800](v43, -1, -1);
  }

  else
  {

    v86 = *(v16 + 8);
    v86(v22, a3);
  }

  v47 = v93;
  v46 = v94;
  (v27)(v94, v93, a3);
  v48 = v96;
  v49 = v91;
  sub_217E464E0(v46, a3, v96);
  v50 = v89;
  sub_217E35350(v48, v89, type metadata accessor for Storage.ExplicitUpdate);
  swift_beginAccess();
  v51 = v90;
  sub_217E465F0(v90, v50);
  swift_endAccess();
  sub_217E365C0(v51, type metadata accessor for Storage.ExplicitUpdate);
  swift_beginAccess();
  v52 = v5[5];
  v53 = v5[7];
  v111 = v5[6];
  v112 = v53;
  v54 = v5[7];
  v113 = v5[8];
  v55 = v5[5];
  v110[0] = v5[4];
  v110[1] = v55;
  v107 = v111;
  v108 = v54;
  v109 = v5[8];
  v105 = v110[0];
  v106 = v52;
  v114 = v95;
  sub_217E3438C(v110, &v100);
  v56 = v92;
  sub_217E4B7A4(v47, &v114, a3, v49);
  if (v56)
  {
    v102 = v107;
    v103 = v108;
    v104 = v109;
    v100 = v105;
    v101 = v106;
    sub_217E347DC(&v100);
    v57 = v27;
    v58 = v87;
    (v57)(v87, v47, a3);
    MEMORY[0x21CEAE5B0](v56);
    v59 = sub_217E70394();
    v60 = sub_217E70774();
    MEMORY[0x21CEAE5A0](v56);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v90 = v57;
      v92 = v59;
      v62 = v94;
      v63 = v61;
      v91 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v93 = v64;
      *v63 = 136315650;
      v98 = v95;
      v99 = v64;
      sub_217E540D8();
      v65 = sub_217E708F4();
      v67 = sub_217E58888(v65, v66, &v99);
      LODWORD(v95) = v60;
      v68 = v67;

      *(v63 + 4) = v68;
      *(v63 + 12) = 2080;
      (v90)(v62, v58, a3);
      v69 = sub_217E705D4();
      v71 = v70;
      v86(v58, a3);
      v72 = sub_217E58888(v69, v71, &v99);

      *(v63 + 14) = v72;
      *(v63 + 22) = 2112;
      MEMORY[0x21CEAE5B0](v56);
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 24) = v73;
      v75 = v91;
      v74 = v92;
      *v91 = v73;
      _os_log_impl(&dword_217E31000, v74, v95, "Error raised while processing command. Scope=%s, Command=%s, Error=%@", v63, 0x20u);
      sub_217E377A0(v75, &qword_27CBF23B0, sub_217E5403C, MEMORY[0x277D83D88]);
      MEMORY[0x21CEAE800](v75, -1, -1);
      v76 = v93;
      swift_arrayDestroy();
      MEMORY[0x21CEAE800](v76, -1, -1);
      MEMORY[0x21CEAE800](v63, -1, -1);
    }

    else
    {

      v86(v58, a3);
    }

    swift_willThrow();
  }

  else
  {
    v102 = v107;
    v103 = v108;
    v104 = v109;
    v100 = v105;
    v101 = v106;
    sub_217E347DC(&v100);
  }

  v77 = v96;
  sub_217E47AC0(v5, v96);
  return sub_217E365C0(v77, type metadata accessor for Storage.ExplicitUpdate);
}

uint64_t sub_217E4B440(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Storage.ExplicitUpdate(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_217E46F2C(0);
  result = sub_217E707E4();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
      v21 = *(v33 + 72);
      sub_217E35D8C(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for Storage.ExplicitUpdate);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_217E35D8C(v5, *(v8 + 48) + v16 * v21, type metadata accessor for Storage.ExplicitUpdate);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

unint64_t sub_217E4B7A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(v4 + 16);
  v38 = *v4;
  v39 = v9;
  v40 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 64);
  v25 = *(v4 + 56);
  v26 = *(v4 + 72);
  v12 = *(v11 + 16);
  v41 = v8;
  if (v12 && (v13 = sub_217E33C18(v8), (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x277D84F98];
  }

  sub_217E36EF4(a3, a3);
  if (!*(v15 + 16))
  {

LABEL_13:
    result = v41;
    goto LABEL_14;
  }

  v24 = a4;
  v17 = sub_217E3722C(v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {

    goto LABEL_12;
  }

  sub_217E33AD0(*(v15 + 56) + 40 * v17, v34);

  sub_217E3374C(0, qword_2811B1708, &protocol descriptor for GraphUpdate);
  swift_getExtendedExistentialTypeMetadata_unique();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    a4 = v24;
    goto LABEL_13;
  }

  a4 = v24;
  result = v41;
  if (*(&v28 + 1))
  {
    sub_217E33C00(&v27, v35);
    v21 = v36;
    v22 = v37;
    sub_217E37F28(v35, v36);
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v30 = v10;
    v31 = v25;
    v32 = v11;
    v33 = v26;
    (*(v22 + 16))(&v27, a1, v21, v22);
    return sub_217E364B4(v35);
  }

LABEL_14:
  if (*(v10 + 16))
  {
    result = sub_217E33C18(result);
    if (v23)
    {
      v35[0] = *(*(v10 + 56) + 8 * result);
      return sub_217E4B7A4(a1, v35, a3, a4);
    }
  }

  return result;
}

uint64_t ScopeReader.signalChanged<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_217E3318C(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for ScopeGraphElement.ID(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v11 = sub_217E703B4();
  sub_217E35794(v11, qword_2811B1820);
  v12 = sub_217E70394();
  v13 = sub_217E70764();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = v3;
    v15 = v14;
    v32 = swift_slowAlloc();
    *&v43[0] = v32;
    *v15 = 136315138;
    v16 = sub_217E70A34();
    v18 = v8;
    v19 = v7;
    v20 = v10;
    v21 = sub_217E58888(v16, v17, v43);

    *(v15 + 4) = v21;
    v10 = v20;
    v7 = v19;
    v8 = v18;
    _os_log_impl(&dword_217E31000, v12, v13, "Notified of change from rule, requesting update of dependants. Rule=%s", v15, 0xCu);
    v22 = v32;
    sub_217E364B4(v32);
    MEMORY[0x21CEAE800](v22, -1, -1);
    v23 = v15;
    v3 = v33;
    MEMORY[0x21CEAE800](v23, -1, -1);
  }

  v24 = type metadata accessor for ScopeReader.CurrentScope(0);
  sub_217E358A0(v3 + *(v24 + 24), v6, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_217E37744(v6, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
  }

  sub_217E35D24(v6, v10, type metadata accessor for ScopeGraphElement.ID);
  v27 = *v3;
  v26 = v3[1];
  swift_beginAccess();
  v28 = v27[5];
  v29 = v27[7];
  v40 = v27[6];
  v41 = v29;
  v30 = v27[7];
  v42 = v27[8];
  v31 = v27[5];
  v39[0] = v27[4];
  v39[1] = v31;
  v36 = v40;
  v37 = v30;
  v38 = v27[8];
  v34 = v39[0];
  v35 = v28;
  sub_217E3438C(v39, v43);
  sub_217E4BDD0(v10);
  v43[2] = v36;
  v43[3] = v37;
  v43[4] = v38;
  v43[0] = v34;
  v43[1] = v35;
  sub_217E347DC(v43);
  *&v34 = v26;
  sub_217E3A464(v10, &v34, 4);
  return sub_217E36560(v10, type metadata accessor for ScopeGraphElement.ID);
}

uint64_t sub_217E4BDD0(uint64_t a1)
{
  v3 = type metadata accessor for ScopeGraphElement.ID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E3C8CC(0);
  v7 = v6;
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E38B24(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v69 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v59 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  result = MEMORY[0x28223BE20](v16);
  v21 = &v59 - v20;
  v22 = *(v1 + 8);
  if (*(v22 + 16))
  {
    v23 = *(v1 + 24);
    result = sub_217E3A780(a1);
    if (v24)
    {
      v64 = v23;
      v25 = *(v22 + 56);
      v66 = *(v11 + 72);
      sub_217E35F40(v25 + v66 * result, v18, sub_217E38B24);
      sub_217E39C30(v18, v21, sub_217E38B24);
      v65 = type metadata accessor for ScopeGraphElement(0);
      v26 = &v21[*(v65 + 24)];
      v27 = v21;
      v28 = *(v26 + 3);
      v29 = *(v26 + 4);
      sub_217E37F28(v26, v28);
      (*(v29 + 64))(v28, v29);
      v30 = *(v26 + 3);
      v31 = *(v26 + 4);
      v63 = v26;
      sub_217E37F28(v26, v30);
      result = (*(v31 + 40))(v30, v31);
      if (result)
      {
        v60 = v27;
        v32 = v64;
        v33 = *(v64 + 16);
        v67 = v7;
        if (v33)
        {
          result = sub_217E3A780(a1);
          v34 = v70;
          if (v35)
          {
            v36 = *(*(v32 + 56) + 8 * result);
          }

          else
          {
            v36 = MEMORY[0x277D84FA0];
          }
        }

        else
        {
          v36 = MEMORY[0x277D84FA0];
          v34 = v70;
        }

        v37 = 0;
        v38 = v36 + 56;
        v39 = 1 << *(v36 + 32);
        v40 = -1;
        if (v39 < 64)
        {
          v40 = ~(-1 << v39);
        }

        v41 = v40 & *(v36 + 56);
        v42 = (v39 + 63) >> 6;
        v61 = v9;
        for (i = v5; v41; result = sub_217E3477C(v56, sub_217E38B24))
        {
LABEL_18:
          while (1)
          {
            v44 = __clz(__rbit64(v41));
            v41 &= v41 - 1;
            sub_217E35F40(*(v36 + 48) + *(v34 + 72) * (v44 | (v37 << 6)), v9, sub_217E3C8CC);
            sub_217E35F40(&v9[*(v67 + 28)], v5, type metadata accessor for ScopeGraphElement.ID);
            sub_217E3477C(v9, sub_217E3C8CC);
            if (*(v22 + 16))
            {
              v45 = sub_217E3A780(v5);
              if (v46)
              {
                break;
              }
            }

            result = sub_217E3477C(v5, type metadata accessor for ScopeGraphElement.ID);
            if (!v41)
            {
              goto LABEL_14;
            }
          }

          v47 = v69;
          sub_217E35F40(*(v22 + 56) + v45 * v66, v69, sub_217E38B24);
          sub_217E3477C(v5, type metadata accessor for ScopeGraphElement.ID);
          v48 = v68;
          sub_217E39C30(v47, v68, sub_217E38B24);
          v49 = (v48 + *(v65 + 24));
          v50 = v36;
          v51 = v49[3];
          v52 = v49[4];
          sub_217E37F28(v49, v51);
          v53 = *(v52 + 48);
          v54 = v51;
          v36 = v50;
          v9 = v61;
          v55 = v52;
          v34 = v70;
          v53(v54, v55);
          v56 = v48;
          v5 = i;
        }

LABEL_14:
        while (1)
        {
          v43 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v43 >= v42)
          {

            v57 = *(v63 + 3);
            v58 = *(v63 + 4);
            sub_217E37F28(v63, v57);
            (*(v58 + 56))(v57, v58);
            v27 = v60;
            return sub_217E3477C(v27, sub_217E38B24);
          }

          v41 = *(v38 + 8 * v43);
          ++v37;
          if (v41)
          {
            v37 = v43;
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
        return sub_217E3477C(v27, sub_217E38B24);
      }
    }
  }

  return result;
}

uint64_t sub_217E4C33C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 320);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v21 - v6;
  v22 = *(v2 + 328);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  if (*(v1 + *(v2 + 120)))
  {
    v15 = 0;
  }

  else
  {
    v16 = *(v3 + 344);
    swift_beginAccess();
    (*(v9 + 16))(v14, v1 + v16, AssociatedTypeWitness);
    v17 = *v1;
    v21[1] = v3;
    v18 = *(v17 + 104);
    swift_beginAccess();
    (*(v5 + 16))(v7, v1 + v18, v4);
    (*(v22 + 24))(v4);
    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    (*(v9 + 24))(v1 + v16, v12, AssociatedTypeWitness);
    swift_endAccess();
    LOBYTE(v18) = sub_217E705C4();
    v19 = *(v9 + 8);
    v19(v12, AssociatedTypeWitness);
    v19(v14, AssociatedTypeWitness);
    v15 = v18 ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_217E4C688()
{
  result = (*(*v0 + 232))();
  *(v0 + *(*v0 + 112)) = result & 1;
  return result;
}

uint64_t sub_217E4C6E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InstallRuleViewModifier(255, a1[1], a1[3], a4);
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4C77C(void *a1)
{
  sub_217E70454();
  sub_217E4EBA0();
  return swift_getWitnessTable();
}

uint64_t sub_217E4C814(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InstallRuleViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E70454();
  swift_getWitnessTable();
  sub_217E4EBA0();
  return swift_getWitnessTable();
}

uint64_t sub_217E4C8DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ScopeGraphElement.ID(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217E4C980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_217E4C9EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_217E4CA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Dependencies(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_217E4CB08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Dependencies(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217E4CBAC()
{

  return swift_deallocObject();
}

uint64_t sub_217E4CBE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_217E4CC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_217E4CCCC()
{
  swift_unknownObjectRelease();
  sub_217E4F180(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_217E55C68(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_217E4CD2C()
{
  sub_217E4F180(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_217E55C68(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_217E4CD84()
{

  return swift_deallocObject();
}

uint64_t sub_217E4CDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_217E4CE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_217E4CF4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TruthViewModifier(255, a1[1], a3, a4);
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4CFE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AmbiguousTruthViewModifier(255, a1[1], a1[3], a4);
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D074(uint64_t *a1)
{
  v1 = a1[3];
  v3[0] = a1[1];
  v3[1] = v3[0];
  v3[2] = v1;
  v3[3] = v1;
  type metadata accessor for UpdateTruthFromEnvironmentViewModifier(255, v3);
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D114(uint64_t *a1)
{
  v3[0] = a1[1];
  v3[1] = v3[0];
  v1 = *(a1 + 3);
  v3[2] = a1[3];
  v4 = v1;
  type metadata accessor for UpdateAmbiguousTruthFromEnvironmentViewModifier(255, v3);
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D1BC(uint64_t *a1)
{
  v1 = vextq_s8(*(a1 + 2), *(a1 + 2), 8uLL);
  v3[0] = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
  v3[1] = v1;
  type metadata accessor for UpdateTruthFromEnvironmentViewModifier(255, v3);
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D268(uint64_t *a1)
{
  v1 = a1[6];
  v3 = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
  v4 = v1;
  v5 = *(a1 + 2);
  type metadata accessor for UpdateAmbiguousTruthFromEnvironmentViewModifier(255, &v3);
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217E70474();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_217E4D390(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E70474();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_217E4D3FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E70474();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_217E4D46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217E33B9C(0, qword_27CBF2AD0, _s11ValueReaderVMa, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_217E4D558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217E33B9C(0, qword_27CBF2AD0, _s11ValueReaderVMa, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }
}

uint64_t sub_217E4D640(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TruthViewModifier(255, *a1, a3, a4);
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E63FD4(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
  sub_217E70454();
  swift_getWitnessTable();
  sub_217E64028();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D724(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AmbiguousTruthViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E63FD4(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
  sub_217E70454();
  swift_getWitnessTable();
  sub_217E64028();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D808(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = *a1;
  v1 = v6;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for UpdateTruthFromEnvironmentViewModifier(255, &v6);
  swift_getWitnessTable();
  sub_217E704A4();
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier(255, &v6);
  sub_217E70454();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4D918(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v7 = *a1;
  v1 = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  type metadata accessor for UpdateAmbiguousTruthFromEnvironmentViewModifier(255, &v7);
  swift_getWitnessTable();
  sub_217E704A4();
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier(255, &v7);
  sub_217E70454();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4DA34()
{
  v1 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v1;
  v2 = *(type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier(0, v6) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  sub_217E33B9C(0, &qword_27CBF2AB8, _s11ValueReaderVMa, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_217E70474();
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_217E4DBC4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = v1;
  v12 = v2;
  updated = type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier(0, &v9);
  v4 = (*(*(updated - 8) + 80) + 56) & ~*(*(updated - 8) + 80);
  sub_217E33B9C(0, &qword_27CBF2AB8, _s11ValueReaderVMa, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_217E70474();
    (*(*(v5 - 8) + 8))(v0 + v4, v5);
  }

  else
  {
  }

  v6 = *(updated + 68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v4 + v6, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_217E4DDC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v9 = *a1;
  v2 = v9;
  v10 = v1;
  v11 = *(a1 + 16);
  v8 = v11;
  type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier(255, &v9);
  swift_getWitnessTable();
  sub_217E704A4();
  type metadata accessor for TruthViewModifier(255, v1, v3, v4);
  v5 = sub_217E70454();
  swift_getWitnessTable();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v9 = v5;
  v10 = v2;
  *&v11 = WitnessTable;
  *(&v11 + 1) = v8;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217E4DEF4(__int128 *a1)
{
  v1 = *(a1 + 4);
  v6 = a1[1];
  v7 = *a1;
  v5 = v7;
  v8 = v6;
  v9 = v1;
  type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier(255, &v7);
  swift_getWitnessTable();
  v2 = sub_217E704A4();
  WitnessTable = swift_getWitnessTable();
  *&v7 = v2;
  *(&v7 + 1) = v5;
  *&v8 = WitnessTable;
  *(&v8 + 1) = v6;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217E4DFBC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_217E33138(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_217E4E088(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_217E33138(0, &qword_2811B1090, type metadata accessor for ScopeGraphElement.ID);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_217E4E148()
{

  return swift_deallocObject();
}

uint64_t sub_217E4E188(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ScopedTruthViewModifier(255, a1[1], a3, a4);
  sub_217E70454();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217E4E21C(void *a1)
{
  sub_217E70454();
  sub_217E68704();
  return swift_getWitnessTable();
}

uint64_t sub_217E4E280(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ScopedTruthViewModifier(255, *a1, a3, a4);
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E691D0(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
  sub_217E70454();
  swift_getWitnessTable();
  sub_217E64028();
  return swift_getWitnessTable();
}

uint64_t sub_217E4E36C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217E4E3B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

__n128 sub_217E4E414(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_217E4E420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScopeReader(0);
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

uint64_t sub_217E4E4DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ScopeReader(0);
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

uint64_t sub_217E4E594()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_217E4E5D4(uint64_t a1, int a2)
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

uint64_t sub_217E4E5F4(uint64_t result, int a2, int a3)
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

void View.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for InstallRuleViewModifier(0, a3, a5, a4);

  JUMPOUT(0x21CEADD60);
}

uint64_t View.editScope(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  *&v7 = a1;
  *(&v7 + 1) = a2;
  *&v8[0] = swift_getKeyPath();
  memset(v8 + 8, 0, 33);

  MEMORY[0x21CEADD60](&v7, a3, &type metadata for EditScopeViewModifier, a4);
  v10[0] = v7;
  v10[1] = v8[0];
  v11[0] = v8[1];
  *(v11 + 9) = *(&v8[1] + 9);
  return sub_217E4EB70(v10);
}

uint64_t sub_217E4E748@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  type metadata accessor for InstallRuleViewModifier(255, a1, a2, a3);
  swift_getWitnessTable();
  v7 = sub_217E704A4();
  v8 = sub_217E70454();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  WitnessTable = swift_getWitnessTable();
  View.editScope(_:)(sub_217E4F028, v15, v7, WitnessTable);

  v17 = sub_217E4EBA0();
  v21[0] = WitnessTable;
  v21[1] = v17;
  swift_getWitnessTable();
  v18 = *(v9 + 16);
  v18(v14, v12, v8);
  v19 = *(v9 + 8);
  v19(v12, v8);
  v18(a4, v14, v8);
  return (v19)(v14, v8);
}

__n128 sub_217E4E9B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v15 = *v2;
  v16 = v5;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  KeyPath = swift_getKeyPath();
  sub_217E4ECE0(v13);
  v12 = v13[1];
  v7 = v14;
  sub_217E4F06C(0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  sub_217E4F0C8(0);
  v10 = a2 + *(v9 + 36);
  *v10 = KeyPath;
  result = v12;
  *(v10 + 8) = v13[0];
  *(v10 + 24) = v12;
  *(v10 + 40) = v7;
  return result;
}

double sub_217E4EA8C@<D0>(uint64_t a1@<X8>)
{
  sub_217E4F1E4();
  sub_217E70484();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_217E4EAE4(uint64_t a1)
{
  sub_217E4F1E4();

  return sub_217E70494();
}

unint64_t sub_217E4EBA0()
{
  result = qword_27CBF22B8[0];
  if (!qword_27CBF22B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF22B8);
  }

  return result;
}

__n128 sub_217E4EC00(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_217E4EC1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_217E4EC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217E4ECE0@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v28 = sub_217E70474();
  v2 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 40);
  v30 = v8;
  if (v10 == 1)
  {
    v34 = v7;
    v35 = v6;
    v36 = v8;
    v37 = v9;

    v12 = v9;
    v13 = v6;
    v14 = v7;
    v15 = v30;
  }

  else
  {

    sub_217E70784();
    v16 = sub_217E704C4();
    v27 = v4;
    v17 = v6;
    v18 = v10;
    v19 = v11;
    v20 = v2;
    v21 = v16;
    sub_217E70384();

    v2 = v20;
    v11 = v19;
    v10 = v18;
    v6 = v17;
    v4 = v27;
    v22 = v28;
    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E4F180(v7, v6, v30, v11, v9, 0);
    (*(v2 + 8))(v4, v22);
    v14 = v34;
    v13 = v35;
    v15 = v36;
    v12 = v37;
  }

  v31[0] = v14;
  v31[1] = v13;
  v32 = v15;
  v33 = v12;
  v5(v31);

  if (v10)
  {
    v23 = v29;
    *v29 = v7;
    v23[1] = v6;
    v23[2] = v30;
    v23[3] = v11;
    v23[4] = v9;
  }

  else
  {

    sub_217E70784();
    v25 = sub_217E704C4();
    sub_217E70384();

    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E4F180(v7, v6, v30, v11, v9, 0);
    return (*(v2 + 8))(v4, v28);
  }
}

void sub_217E4F06C(uint64_t a1)
{
  if (!qword_27CBF2340)
  {
    sub_217E4EBA0();
    v1 = sub_217E704A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBF2340);
    }
  }
}

void sub_217E4F0C8(uint64_t a1)
{
  if (!qword_27CBF2348)
  {
    sub_217E4F06C(255);
    sub_217E4F130();
    v1 = sub_217E70454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBF2348);
    }
  }
}

void sub_217E4F130()
{
  if (!qword_27CBF2350)
  {
    v0 = sub_217E704B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF2350);
    }
  }
}

uint64_t sub_217E4F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if (a6)
  {
  }

  return result;
}

unint64_t sub_217E4F1E4()
{
  result = qword_27CBF2358;
  if (!qword_27CBF2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2358);
  }

  return result;
}

unint64_t sub_217E4F238()
{
  result = qword_27CBF2360;
  if (!qword_27CBF2360)
  {
    sub_217E4F0C8(255);
    sub_217E4F318(&qword_27CBF2368, sub_217E4F06C, MEMORY[0x277CE04B0]);
    sub_217E4F318(&qword_27CBF2370, sub_217E4F130, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2360);
  }

  return result;
}

uint64_t sub_217E4F318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217E4F370(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v7(v6, v1, v3);
  v11[0] = sub_217E705D4();
  v11[1] = v8;
  MEMORY[0x21CEADE80](540945696, 0xE400000000000000);
  v7(v6, v1 + *(a1 + 28), v3);
  v9 = sub_217E705D4();
  MEMORY[0x21CEADE80](v9);

  return v11[0];
}

uint64_t sub_217E4F4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_217E705C4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Edge(0, a3, v5, v6);
  return sub_217E705C4() & 1;
}

uint64_t sub_217E4F568(uint64_t a1, uint64_t a2)
{
  sub_217E709A4();
  sub_217E70594();
  sub_217E70594();
  return sub_217E709D4();
}

uint64_t sub_217E4F5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_217E709A4();
  sub_217E4F50C(v6, a2, v4);
  return sub_217E709D4();
}

uint64_t sub_217E4F650(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
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
        return (*(v4 + 48))();
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

char *sub_217E4F7A0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
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

uint64_t ScopeGraphElement.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ScopeGraphElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ScopeGraphElement(0) + 20);

  return sub_217E4FA2C(v3, a1);
}

uint64_t sub_217E4FA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ScopeGraphElement.ID.customMirror.getter()
{
  v1 = v0;
  v2 = sub_217E70A04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E35110(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for ScopeGraphElement.ID(0);
  MEMORY[0x28223BE20](v9);
  sub_217E4FA2C(v1, v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13[1] = MEMORY[0x277D84F90];
  v11 = sub_217E709F4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  (*(v3 + 104))(v5, *MEMORY[0x277D84C38], v2);
  sub_217E35110(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();
  return sub_217E70A14();
}

void sub_217E4FCF8(uint64_t a1)
{
  if (!qword_27CBF2388)
  {
    sub_217E4FD68();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CBF2388);
    }
  }
}

void sub_217E4FD68()
{
  if (!qword_27CBF2390)
  {
    v0 = sub_217E70794();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF2390);
    }
  }
}

unint64_t sub_217E4FDB8()
{
  result = qword_27CBF2398;
  if (!qword_27CBF2398)
  {
    sub_217E35110(255, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2398);
  }

  return result;
}

uint64_t sub_217E4FE40(uint64_t a1)
{
  v2 = sub_217E70A04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E35110(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v13 - v8;
  MEMORY[0x28223BE20](v7);
  sub_217E4FA2C(v1, v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13[1] = MEMORY[0x277D84F90];
  v11 = sub_217E709F4();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  (*(v3 + 104))(v5, *MEMORY[0x277D84C38], v2);
  sub_217E35110(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();
  return sub_217E70A14();
}

uint64_t ScopeGraphElement.ID.hash(into:)(uint64_t a1)
{
  sub_217E70374();
  sub_217E3AF40(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_217E70594();
}

uint64_t ScopeGraphElement.ID.hashValue.getter()
{
  sub_217E709A4();
  sub_217E70374();
  sub_217E3AF40(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();
  return sub_217E709D4();
}

uint64_t sub_217E501A8()
{
  sub_217E709A4();
  sub_217E70374();
  sub_217E3AF40(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();
  return sub_217E709D4();
}

uint64_t sub_217E50230(uint64_t a1)
{
  sub_217E70374();
  sub_217E3AF40(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_217E70594();
}

uint64_t sub_217E502B4(uint64_t a1)
{
  sub_217E709A4();
  sub_217E70374();
  sub_217E3AF40(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();
  return sub_217E709D4();
}

__n128 sub_217E50404(uint64_t a1, uint64_t a2)
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

uint64_t sub_217E50420(uint64_t a1, int a2)
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

uint64_t sub_217E50468(uint64_t result, int a2, int a3)
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

unint64_t sub_217E504DC(uint64_t *a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = *a1;
  v5 = *(v1 + 56);
  v27 = v5;
  v28 = *(v1 + 48);
  v29 = 0;
  while (1)
  {
    sub_217E54088();
    sub_217E447D0(&qword_27CBF23C8, sub_217E54088, MEMORY[0x277D83958]);
    v13 = sub_217E705B4();
    v15 = v14;

    if (*(v5 + 16))
    {
      v16 = sub_217E33C18(v4);
      if (v17)
      {
        v18 = (*(v5 + 56) + 16 * v16);
        v30 = *v18;
        v31 = v18[1];

        MEMORY[0x21CEADE80](8250, 0xE200000000000000);
        MEMORY[0x21CEADE80](v30, v31);
      }
    }

    sub_217E540D8();
    v19 = sub_217E708F4();
    MEMORY[0x21CEADE80](v19);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_217E5CD54(0, *(v3 + 2) + 1, 1, v3);
    }

    v21 = *(v3 + 2);
    v20 = *(v3 + 3);
    if (v21 >= v20 >> 1)
    {
      v3 = sub_217E5CD54((v20 > 1), v21 + 1, 1, v3);
    }

    *(v3 + 2) = v21 + 1;
    v22 = &v3[16 * v21];
    *(v22 + 4) = v13;
    *(v22 + 5) = v15;
    if (!*(v28 + 16) || (result = sub_217E33C18(v4), (v24 & 1) == 0))
    {
      v26 = sub_217E705B4();

      return v26;
    }

    if (__OFADD__(v2, 1))
    {
      break;
    }

    v4 = *(*(v28 + 56) + 8 * result);
    ++v2;
    v25 = v29 - 1;
    v5 = v27;
    --v29;
    if (v2)
    {
      v6 = sub_217E70674();
      *(v6 + 16) = v2;
      v7 = (v6 + 32);
      if (v2 <= 3)
      {
        v8 = 0;
        goto LABEL_7;
      }

      v9 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      v7 += 2 * (v2 & 0xFFFFFFFFFFFFFFFCLL);
      v10 = (v6 + 64);
      do
      {
        *(v10 - 2) = xmmword_217E71540;
        *(v10 - 1) = xmmword_217E71540;
        *v10 = xmmword_217E71540;
        v10[1] = xmmword_217E71540;
        v10 += 4;
        v9 -= 4;
      }

      while (v9);
      if (v2 != v8)
      {
LABEL_7:
        v11 = v8 + v25;
        do
        {
          *v7 = 32;
          v7[1] = 0xE100000000000000;
          v7 += 2;
        }

        while (!__CFADD__(v11++, 1));
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217E507B8(uint64_t *a1)
{
  v2 = v1;
  sub_217E38B58(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v70 - v8;
  sub_217E38B24(0);
  v80 = v9;
  v77 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v70 - v13;
  v15 = type metadata accessor for ScopeGraphElement.ID(0);
  v76 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v79 = &v70 - v19;
  v20 = *a1;
  v21 = v2[5];
  if (*(v21 + 16) && (v22 = sub_217E33C18(v20), (v23 & 1) != 0))
  {
    v24 = *(*(v21 + 56) + 8 * v22);

    sub_217E56F70(0, v20);
    if (v24)
    {
      v25 = v24;
      v78 = v18;
      v70 = v14;
      v71 = v12;
      v72 = v7;
      v26 = 0;
      v27 = v25 + 64;
      v28 = 1 << *(v25 + 32);
      v29 = -1;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      v30 = v29 & *(v25 + 64);
      v31 = (v28 + 63) >> 6;
      v32 = v76;
      v74 = (v77 + 56);
      for (i = v25; v30; v32 = v76)
      {
LABEL_14:
        while (1)
        {
          v35 = __clz(__rbit64(v30));
          v30 &= v30 - 1;
          v36 = *(v32 + 72);
          v37 = v79;
          sub_217E35F40(*(v25 + 56) + v36 * (v35 | (v26 << 6)), v79, type metadata accessor for ScopeGraphElement.ID);
          v38 = v78;
          sub_217E39C30(v37, v78, type metadata accessor for ScopeGraphElement.ID);
          v39 = v2[1];
          if (*(v39 + 16))
          {
            v40 = sub_217E3A780(v38);
            if (v41)
            {
              break;
            }
          }

          sub_217E3477C(v38, type metadata accessor for ScopeGraphElement.ID);
          v33 = v81;
          (*v74)(v81, 1, 1, v80);
          sub_217E3477C(v33, sub_217E38B58);
          v25 = i;
          if (!v30)
          {
            goto LABEL_10;
          }
        }

        v42 = *(v39 + 56);
        v73 = *(v77 + 72);
        v43 = v71;
        sub_217E35F40(v42 + v73 * v40, v71, sub_217E38B24);
        sub_217E39C30(v43, v81, sub_217E38B24);
        v44 = sub_217E3A780(v38);
        if (v45)
        {
          v46 = v44;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v2[1];
          v82 = v48;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_217E591A8();
            v48 = v82;
          }

          sub_217E3477C(*(v48 + 48) + v46 * v36, type metadata accessor for ScopeGraphElement.ID);
          v49 = v72;
          sub_217E39C30(*(v48 + 56) + v46 * v73, v72, sub_217E38B24);
          sub_217E5A364(v46, v48);
          v50 = 0;
          v2[1] = v48;
        }

        else
        {
          v50 = 1;
          v49 = v72;
        }

        v73 = *v74;
        v51 = v80;
        v73(v49, v50, 1, v80);
        sub_217E3477C(v49, sub_217E38B58);
        sub_217E5276C(v78);
        v52 = v81;
        v73(v81, 0, 1, v51);
        v53 = v70;
        sub_217E39C30(v52, v70, sub_217E38B24);
        v54 = (v53 + *(type metadata accessor for ScopeGraphElement(0) + 24));
        v55 = v54[3];
        v56 = v54[4];
        sub_217E37F28(v54, v55);
        (*(v56 + 80))(v55, v56);
        sub_217E3477C(v78, type metadata accessor for ScopeGraphElement.ID);
        sub_217E3477C(v53, sub_217E38B24);
        v25 = i;
      }

LABEL_10:
      while (1)
      {
        v34 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v34 >= v31)
        {

          goto LABEL_24;
        }

        v30 = *(v27 + 8 * v34);
        ++v26;
        if (v30)
        {
          v26 = v34;
          goto LABEL_14;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      sub_217E59A0C();
      v57 = v82;
      goto LABEL_26;
    }
  }

  else
  {
    sub_217E56F70(0, v20);
  }

LABEL_24:
  v57 = v2[6];
  v58 = sub_217E33C18(v20);
  if ((v59 & 1) == 0)
  {
    goto LABEL_27;
  }

  v31 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v2[6];
  v82 = v57;
  if (!v60)
  {
    goto LABEL_40;
  }

LABEL_26:
  sub_217E5AA34(v31, v57);
  v2[6] = v57;
LABEL_27:
  sub_217E5704C(0, v20);
  sub_217E57078(0, v20);
  v61 = sub_217E52CF8(v57, v20);
  v20 = v61;
  v31 = 0;
  v62 = v61 + 8;
  v63 = 1 << *(v61 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & v61[8];
  v66 = (v63 + 63) >> 6;
  if (v65)
  {
    while (1)
    {
      v67 = v31;
LABEL_35:
      v68 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
      v82 = *(*(v20 + 48) + ((v67 << 9) | (8 * v68)));
      sub_217E507B8(&v82);
      if (!v65)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
LABEL_31:
    v67 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v67 >= v66)
    {
    }

    v65 = v62[v67];
    ++v31;
    if (v65)
    {
      v31 = v67;
      goto LABEL_35;
    }
  }
}

uint64_t sub_217E50E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  v15 = type metadata accessor for ExplicitCommandHandlerUpdate(0, v13, v14, v14);
  (*(v8 + 16))(v10, a1, a3);
  v16 = sub_217E5E1E8(v10);
  v33[3] = v15;
  v33[4] = swift_getWitnessTable();
  v33[0] = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32[0] = *(v5 + 64);
  v18 = v32[0];
  sub_217E33C18(v12);
  v20 = *(v18 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(v10) = v19;
  if (*(v18 + 24) < v23)
  {
    sub_217E36BF0(v23, isUniquelyReferenced_nonNull_native);
    v18 = v32[0];
    sub_217E33C18(v12);
    if ((v10 & 1) == (v24 & 1))
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
    *(v5 + 64) = v32[0];
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_6:
  *(v5 + 64) = v18;
  if ((v10 & 1) == 0)
  {
LABEL_7:
    sub_217E362BC();
  }

LABEL_8:
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = sub_217E36EF4(AssociatedTypeWitness, AssociatedTypeWitness);
  v28 = v27;
  v30 = v29;
  sub_217E36F24(v33, v32);
  sub_217E36FB4(v32, v26, v28, v30);
  return sub_217E382C4(v33, &qword_2811B1700, qword_2811B1708, &protocol descriptor for GraphUpdate);
}

uint64_t sub_217E510E4(uint64_t a1, uint64_t a2, void *a3, uint64_t AssociatedTypeWitness)
{
  v5 = v4;
  v7 = a3;
  v9 = *(a3 - 1);
  MEMORY[0x28223BE20](a1);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  v16 = type metadata accessor for ExplicitEventHandlerUpdate(0, v14, v15, v15);
  (*(v9 + 16))(v11, a1, v7);
  v17 = sub_217E5E1E8(v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v5 + 72);
  v19 = v50;
  v21 = sub_217E33C18(v13);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v25) = v20;
  if (v19[3] >= v24)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_28;
    }

    *(v5 + 72) = v19;
    if ((v20 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_217E489A4(v24, isUniquelyReferenced_nonNull_native);
    v19 = v50;
    v26 = sub_217E33C18(v13);
    if ((v25 & 1) != (v27 & 1))
    {
      sub_217E70944();
      __break(1u);
      goto LABEL_31;
    }

    v21 = v26;
    *(v5 + 72) = v19;
    if ((v25 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  while (1)
  {
    isUniquelyReferenced_nonNull_native = v19[7];
    v28 = *(isUniquelyReferenced_nonNull_native + 8 * v21);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_217E36EF4(AssociatedTypeWitness, AssociatedTypeWitness);
    if (*(v28 + 16) && (v30 = sub_217E3722C(v29), (v31 & 1) != 0))
    {
      v7 = *(*(v28 + 56) + 8 * v30);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v7;
    if ((v32 & 1) == 0)
    {
LABEL_26:
      v7 = sub_217E48C44(0, v7[2] + 1, 1, v7);
      v50 = v7;
    }

    v34 = v7[2];
    v33 = v7[3];
    if (v34 >= v33 >> 1)
    {
      v7 = sub_217E48C44((v33 > 1), v34 + 1, 1, v7);
      v50 = v7;
    }

    v49 = v17;
    WitnessTable = swift_getWitnessTable();
    sub_217E48E10(v34, &v49, &v50, v16, WitnessTable);
    v36 = sub_217E36EF4(AssociatedTypeWitness, AssociatedTypeWitness);
    v16 = v37;
    v17 = v38;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(isUniquelyReferenced_nonNull_native + 8 * v21);
    v39 = v49;
    *(isUniquelyReferenced_nonNull_native + 8 * v21) = 0x8000000000000000;
    v5 = sub_217E3722C(v17);
    v41 = *(v39 + 16);
    v42 = (v40 & 1) == 0;
    v43 = v41 + v42;
    if (!__OFADD__(v41, v42))
    {
      break;
    }

    __break(1u);
LABEL_28:
    sub_217E59024();
    v19 = v50;
    *(v5 + 72) = v50;
    if ((v25 & 1) == 0)
    {
LABEL_8:
      sub_217E362BC();
    }
  }

  v44 = v40;
  if (*(v39 + 24) >= v43)
  {
    if ((v25 & 1) == 0)
    {
      sub_217E59190();
    }

    goto LABEL_22;
  }

  sub_217E491E0(v43, v25);
  v45 = sub_217E3722C(v17);
  if ((v44 & 1) != (v46 & 1))
  {
LABEL_31:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v5 = v45;
LABEL_22:
  *(isUniquelyReferenced_nonNull_native + 8 * v21) = v49;

  v47 = *(isUniquelyReferenced_nonNull_native + 8 * v21);
  if ((v44 & 1) == 0)
  {
    sub_217E4921C(v5, v36, v16, v17, MEMORY[0x277D84F90], v47);
  }

  *(*(v47 + 56) + 8 * v5) = v7;
}

uint64_t sub_217E514D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7)
{
  v79 = a4;
  v76 = a7;
  v77 = a1;
  v80 = a3;
  v10 = type metadata accessor for ScopeGraphElement.ID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NonmutatingFunction(255, a5, a6, v13);
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for VertexUpdate(0, v14, WitnessTable, a7);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v72 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v72 - v22;
  v24 = *v79;
  v77 = a6;
  nullsub_1();
  v26 = v25;
  v28 = v27;
  sub_217E35F40(v80, v12, type metadata accessor for ScopeGraphElement.ID);
  v82[0] = v26;
  v82[1] = v28;
  sub_217E36108(v12, v82, v14, WitnessTable, v76, v23);
  v79 = v15;
  v80 = v16;
  v29 = *(v16 + 16);
  WitnessTable = v23;
  v76 = v21;
  v30 = v23;
  v31 = v78;
  v29(v21, v30, v15);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = *(v31 + 72);
  v33 = v82[0];
  v35 = sub_217E33C18(v24);
  v36 = v33[2];
  v37 = (v34 & 1) == 0;
  v38 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    __break(1u);
    goto LABEL_25;
  }

  LOBYTE(v39) = v34;
  if (v33[3] >= v38)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    sub_217E489A4(v38, isUniquelyReferenced_nonNull_native);
    v33 = v82[0];
    v40 = sub_217E33C18(v24);
    if ((v39 & 1) != (v41 & 1))
    {
      sub_217E70944();
      __break(1u);
      goto LABEL_29;
    }

    v35 = v40;
  }

  while (1)
  {
    isUniquelyReferenced_nonNull_native = v77;
    v77 = v28;
    *(v31 + 72) = v33;
    if ((v39 & 1) == 0)
    {
      sub_217E362BC();
    }

    v28 = v33[7];
    v42 = *(v28 + 8 * v35);
    sub_217E36EF4(isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native);
    v44 = *(v42 + 16);
    v73 = v29;
    if (v44 && (v45 = sub_217E3722C(v43), (v46 & 1) != 0))
    {
      v29 = *(*(v42 + 56) + 8 * v45);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v47 = swift_isUniquelyReferenced_nonNull_native();
    v82[0] = v29;
    if ((v47 & 1) == 0)
    {
LABEL_25:
      v29 = sub_217E48C44(0, *(v29 + 2) + 1, 1, v29);
      v82[0] = v29;
    }

    v48 = v80;
    v50 = *(v29 + 2);
    v49 = *(v29 + 3);
    if (v50 >= v49 >> 1)
    {
      v29 = sub_217E48C44((v49 > 1), v50 + 1, 1, v29);
      v82[0] = v29;
    }

    v51 = v74;
    v52 = v76;
    v53 = v79;
    v73(v74, v76, v79);
    v54 = swift_getWitnessTable();
    sub_217E48E10(v50, v51, v82, v53, v54);
    v55 = v53;
    v56 = *(v48 + 8);
    v80 = v48 + 8;
    v56(v52, v55);
    v78 = sub_217E36EF4(isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native);
    v58 = v57;
    v60 = v59;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v81 = *(v28 + 8 * v35);
    v61 = v81;
    *(v28 + 8 * v35) = 0x8000000000000000;
    v39 = sub_217E3722C(v60);
    v63 = *(v61 + 16);
    v64 = (v62 & 1) == 0;
    v65 = v63 + v64;
    if (!__OFADD__(v63, v64))
    {
      break;
    }

    __break(1u);
LABEL_27:
    sub_217E59024();
    v33 = v82[0];
  }

  v66 = v62;
  if (*(v61 + 24) >= v65)
  {
    if ((v31 & 1) == 0)
    {
      sub_217E59190();
    }

    goto LABEL_21;
  }

  sub_217E491E0(v65, v31);
  v67 = sub_217E3722C(v60);
  if ((v66 & 1) != (v68 & 1))
  {
LABEL_29:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v39 = v67;
LABEL_21:
  v69 = WitnessTable;
  *(v28 + 8 * v35) = v81;

  v70 = *(v28 + 8 * v35);
  if ((v66 & 1) == 0)
  {
    sub_217E4921C(v39, v78, v58, v60, MEMORY[0x277D84F90], *(v28 + 8 * v35));
  }

  *(*(v70 + 56) + 8 * v39) = v29;

  return (v56)(v69, v79);
}

uint64_t sub_217E51A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a5;
  v14 = type metadata accessor for SourceVertex(0, a7, a8, a4);
  v17 = sub_217E6D558(a1, v14, v15, v16);
  v19 = v13;
  sub_217E38428(v17, a2, a3, a4, &v19, a6);
}

uint64_t sub_217E51AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v32 = a2;
  v33 = a3;
  v10 = type metadata accessor for ScopeGraphElement.ID(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E345F8(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = *a4;
  v21 = *(v6 + 40);
  if (*(v21 + 16) && (v22 = sub_217E33C18(v20), (v23 & 1) != 0))
  {
    v24 = *(*(v21 + 56) + 8 * v22);

    if (!*(v24 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v24 = MEMORY[0x277D84F98];
    if (!*(MEMORY[0x277D84F98] + 16))
    {
      goto LABEL_8;
    }
  }

  v25 = sub_217E3960C(a1, v32, v33);
  if (v26)
  {
    sub_217E35F40(*(v24 + 56) + *(v11 + 72) * v25, v19, type metadata accessor for ScopeGraphElement.ID);
    (*(v11 + 56))(v19, 0, 1, v10);
    goto LABEL_9;
  }

LABEL_8:
  (*(v11 + 56))(v19, 1, 1, v10);
LABEL_9:
  sub_217E39C30(v19, v17, sub_217E345F8);
  if ((*(v11 + 48))(v17, 1, v10) == 1)
  {
    sub_217E70364();
    sub_217E3477C(v17, sub_217E345F8);
  }

  else
  {
    sub_217E39C30(v17, a5, type metadata accessor for ScopeGraphElement.ID);
  }

  sub_217E35F40(a5, v13, type metadata accessor for ScopeGraphElement.ID);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v24;
  sub_217E39484(v13, a1, v32, v33, isUniquelyReferenced_nonNull_native);
  v28 = v34;

  v29 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v6 + 40);
  sub_217E5B858(v28, v20, v29);

  *(v6 + 40) = v34;
  return result;
}

uint64_t sub_217E51DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a5;
  v15 = type metadata accessor for SourceVertex(0, a6, a7, a4);
  v18 = sub_217E6D558(a1, v15, v16, v17);
  v20 = v14;
  sub_217E51EA8(v18, a2, a3, a4, &v20, a7, a8);
}

uint64_t sub_217E51EA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v71 = a4;
  v72 = a6;
  v69 = a5;
  v65 = a2;
  v66 = a3;
  v10 = *a1;
  sub_217E38B58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ScopeGraphElement.ID(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ScopeGraphElement(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v10 + 80);
  v70 = *(v20 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v61 - v21;
  sub_217E38B24(0);
  v63 = v23;
  v73 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v62 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v61 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v61 - v29;
  v69 = *v69;
  v78[0] = v69;
  sub_217E51AF0(v65, v66, v71, v78, a7);
  v71 = v7;
  v31 = v7 + 8;
  v32 = *(v7 + 8);
  v66 = v31;
  v67 = v20;
  v33 = *(v32 + 16);
  v68 = v22;
  v74 = a7;
  if (!v33)
  {
    goto LABEL_6;
  }

  v34 = sub_217E3A780(a7);
  if ((v35 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_217E35F40(*(v32 + 56) + *(v73 + 72) * v34, v28, sub_217E38B24);
  sub_217E39C30(v28, v30, sub_217E38B24);
  sub_217E33AD0(&v30[*(v16 + 24)], v78);
  sub_217E3374C(0, &qword_2811B0B18, &protocol descriptor for RuleBox);
  v36 = *(v72 + 8);
  type metadata accessor for RuleVertex(0, v20, v36, v37);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_217E3477C(v30, sub_217E38B24);
LABEL_6:
    sub_217E35F40(a7, v15, type metadata accessor for ScopeGraphElement.ID);
    v42 = *(v72 + 8);
    v78[3] = type metadata accessor for RuleVertex(0, v20, v42, v43);
    v78[4] = swift_getWitnessTable();
    v78[0] = a1;
    v44 = *(v16 + 20);
    sub_217E35F40(v15, v19 + v44, type metadata accessor for ScopeGraphElement.ID);
    sub_217E33AD0(v78, v19 + *(v16 + 24));
    v75 = 0;
    v76 = 0xE000000000000000;

    sub_217E70814();

    v75 = 4015177;
    v76 = 0xE300000000000000;
    v45 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
    MEMORY[0x21CEADE80](v45);

    MEMORY[0x21CEADE80](0x7B3D61746144202CLL, 0xE900000000000020);
    v47 = a1[2];
    v46 = a1[3];
    v41 = a1;

    MEMORY[0x21CEADE80](v47, v46);

    MEMORY[0x21CEADE80](32032, 0xE200000000000000);
    v48 = v75;
    v49 = v76;
    sub_217E3477C(v15, type metadata accessor for ScopeGraphElement.ID);
    *v19 = v48;
    v19[1] = v49;
    sub_217E364B4(v78);
    v50 = v62;
    sub_217E35F40(v19, v62, type metadata accessor for ScopeGraphElement);
    sub_217E35F40(v19 + v44, v15, type metadata accessor for ScopeGraphElement.ID);
    v51 = v64;
    sub_217E39C30(v50, v64, sub_217E38B24);
    (*(v73 + 56))(v51, 0, 1, v63);
    sub_217E39EA0(v51, v15);
    sub_217E3477C(v19, type metadata accessor for ScopeGraphElement);
    v39 = v70;
    goto LABEL_7;
  }

  v38 = *(*a1 + 104);
  swift_beginAccess();
  v39 = v70;
  (*(v70 + 16))(v22, a1 + v38, v20);
  sub_217E5C154(v22);

  v40 = v20;
  v41 = a1;
  (*(v39 + 8))(v22, v40);
  sub_217E3477C(v30, sub_217E38B24);
  v42 = v36;
LABEL_7:
  v52 = v41;
  v53 = *(*v41 + 104);
  swift_beginAccess();
  v73 = *(v39 + 16);
  v54 = v41 + v53;
  v55 = v67;
  v56 = v68;
  (v73)(v68, v54, v67);
  v57 = v69;
  v77 = v69;
  v58 = v71;
  sub_217E3B178(v56, &v77, v74, v71, v55, v42);
  v59 = *(v39 + 8);
  v59(v56, v55);
  (v73)(v56, v52 + v53, v55);
  v77 = v57;
  sub_217E3B688(v56, &v77, v74, v58, v55, v42);
  return (v59)(v56, v55);
}

uint64_t sub_217E525B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *a6;
  type metadata accessor for EquatableSourceVertex(0, a7, a8, a10);
  v18 = sub_217E430CC(a1, a5);
  v20 = v17;
  sub_217E51EA8(v18, a2, a3, a4, &v20, a8, a9);
}

uint64_t sub_217E52684@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v11 = v5[3];
  v21 = v5[2];
  v22 = v11;
  v23 = v5[4];
  v12 = v5[1];
  v19 = *v5;
  v20 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_217E65828(a3, a1, a3, a4);
  v18 = v10;
  sub_217E40624(v14, v15, v16, &v18, AssociatedTypeWitness, a5);
}

uint64_t sub_217E5276C(uint64_t a1)
{
  sub_217E52E64(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E3C8CC(0);
  v7 = v6;
  v41 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ScopeGraphElement.ID(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  sub_217E35F40(a1, &v36 - v17, type metadata accessor for ScopeGraphElement.ID);
  result = sub_217E5717C(0, v18);
  v40 = v1;
  v20 = *(v1 + 8);
  if (*(v20 + 16))
  {
    result = sub_217E3A780(a1);
    if (v21)
    {
      v38 = v7;
      v22 = *(*(v20 + 56) + 8 * result);
      sub_217E35F40(a1, v18, type metadata accessor for ScopeGraphElement.ID);

      result = sub_217E5717C(0, v18);
      v23 = 0;
      v25 = v22 + 56;
      v24 = *(v22 + 56);
      v39 = v22;
      v26 = 1 << *(v22 + 32);
      v27 = -1;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      v28 = v27 & v24;
      v29 = (v26 + 63) >> 6;
      v37 = (v41 + 56);
      while (v28)
      {
        v32 = v23;
LABEL_13:
        v33 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        sub_217E35F40(*(v39 + 48) + *(v41 + 72) * (v33 | (v32 << 6)), v12, sub_217E3C8CC);
        sub_217E39C30(v12, v10, sub_217E3C8CC);
        sub_217E35F40(v10, v16, type metadata accessor for ScopeGraphElement.ID);
        v34 = sub_217E52BAC(v42, v16);
        if (*v35)
        {
          sub_217E534D4(v5);
          sub_217E3477C(v5, sub_217E52E64);
          (v34)(v42, 0);
          sub_217E3477C(v16, type metadata accessor for ScopeGraphElement.ID);
          v30 = sub_217E3C8CC;
          v31 = v10;
        }

        else
        {
          (v34)(v42, 0);
          sub_217E3477C(v16, type metadata accessor for ScopeGraphElement.ID);
          sub_217E3477C(v10, sub_217E3C8CC);
          (*v37)(v5, 1, 1, v38);
          v30 = sub_217E52E64;
          v31 = v5;
        }

        result = sub_217E3477C(v31, v30);
        v23 = v32;
      }

      while (1)
      {
        v32 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v32 >= v29)
        {
        }

        v28 = *(v25 + 8 * v32);
        ++v23;
        if (v28)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t (*sub_217E52BAC(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for ScopeGraphElement.ID(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_217E35F40(a2, v8, type metadata accessor for ScopeGraphElement.ID);
  v6[5] = sub_217E53B34(v6, v9);
  return sub_217E52C88;
}

void sub_217E52C88(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_217E3477C(v2, type metadata accessor for ScopeGraphElement.ID);
  free(v2);

  free(v1);
}

unint64_t *sub_217E52CF8(uint64_t a1, uint64_t a2)
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
    result = sub_217E52E98(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_217E52F88(v10, v6, v4, a2);
  result = MEMORY[0x21CEAE800](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_217E52E98(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) == a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_217E53010(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_217E53010(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_217E52F88(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_217E52E98(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_217E53010(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_217E53FA8(0);
  result = sub_217E708D4();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_217E709A4();
    MEMORY[0x21CEAE230](v17);
    result = sub_217E709D4();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
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

void *sub_217E532CC(uint64_t (*a1)(void), void (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v29 = a4;
  v7 = v4;
  v8 = a1(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  a2(0);
  v12 = *v4;
  v13 = sub_217E707D4();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v7;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = *(v12 + 56);
    v21 = -1;
    if (v19 < 64)
    {
      v21 = ~(-1 << v19);
    }

    v22 = v21 & v20;
    v23 = (v19 + 63) >> 6;
    if ((v21 & v20) != 0)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_17:
        v27 = *(v9 + 72) * (v24 | (v18 << 6));
        sub_217E35F40(*(v12 + 48) + v27, v11, a3);
        result = sub_217E39C30(v11, *(v14 + 48) + v27, v29);
      }

      while (v22);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v28;
        goto LABEL_21;
      }

      v26 = *(v12 + 56 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v14;
  }

  return result;
}

uint64_t sub_217E534D4@<X0>(uint64_t a2@<X8>)
{
  v22 = a2;
  sub_217E3C8CC(0);
  v4 = v3;
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v7 = *v2;
  sub_217E709A4();
  sub_217E70374();
  sub_217E447D0(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();
  v24 = v4;
  sub_217E70594();
  v8 = sub_217E709D4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return (*(v23 + 56))(v22, 1, 1, v24);
  }

  v11 = ~v9;
  v12 = *(v23 + 72);
  while (1)
  {
    sub_217E35F40(*(v7 + 48) + v12 * v10, v6, sub_217E3C8CC);
    if (_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0())
    {
      break;
    }

    sub_217E3477C(v6, sub_217E3C8CC);
LABEL_4:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return (*(v23 + 56))(v22, 1, 1, v24);
    }
  }

  v13 = _s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0();
  sub_217E3477C(v6, sub_217E3C8CC);
  if ((v13 & 1) == 0)
  {
    goto LABEL_4;
  }

  v14 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v14;
  v25 = *v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_217E532CC(sub_217E3C8CC, sub_217E45448, sub_217E3C8CC, sub_217E3C8CC);
    v16 = v25;
  }

  v17 = *(v16 + 48) + v12 * v10;
  v18 = v22;
  sub_217E39C30(v17, v22, sub_217E3C8CC);
  sub_217E537F0(v10);
  *v14 = v25;
  return (*(v23 + 56))(v18, 0, 1, v24);
}

uint64_t sub_217E537F0(unint64_t a1)
{
  sub_217E3C8CC(0);
  v30 = v3;
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = a1;
    v13 = sub_217E707C4();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v14 = (v13 + 1) & v11;
      v15 = *(v4 + 72);
      v27 = v15;
      v28 = v8;
      v16 = v29;
      do
      {
        v17 = v15 * v10;
        sub_217E35F40(*(v7 + 48) + v15 * v10, v16, sub_217E3C8CC);
        v18 = v7;
        sub_217E709A4();
        sub_217E70374();
        sub_217E447D0(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v19 = v14;
        sub_217E70594();
        sub_217E70594();
        v20 = sub_217E709D4();
        sub_217E3477C(v16, sub_217E3C8CC);
        v21 = v20 & v11;
        v14 = v19;
        if (v12 >= v19)
        {
          if (v21 < v19)
          {
            v7 = v18;
            v15 = v27;
            goto LABEL_5;
          }

          v7 = v18;
          v15 = v27;
          if (v12 < v21)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v7 = v18;
          v15 = v27;
          if (v21 < v14 && v12 < v21)
          {
            goto LABEL_5;
          }
        }

        v22 = v15 * v12;
        if (v15 * v12 < v17 || *(v7 + 48) + v15 * v12 >= (*(v7 + 48) + v17 + v15))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        v12 = v10;
        if (v22 != v17)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          v12 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v11;
        v8 = v28;
      }

      while (((*(v28 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v12) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v23 = *(v7 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v25;
    ++*(v7 + 36);
  }

  return result;
}

void (*sub_217E53B34(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for ScopeGraphElement.ID(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[8] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_217E35F40(a2, v9, type metadata accessor for ScopeGraphElement.ID);
  v6[9] = sub_217E53F74(v6);
  v6[10] = sub_217E53CC0(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_217E53C30;
}

void sub_217E53C30(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_217E3477C(v3, type metadata accessor for ScopeGraphElement.ID);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_217E53CC0(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = *(type metadata accessor for ScopeGraphElement.ID(0) - 8);
  *(v10 + 24) = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v10 + 32) = v12;
  v13 = *v4;
  v14 = sub_217E3A780(a2);
  *(v10 + 48) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_217E459E0();
      v14 = v22;
      goto LABEL_14;
    }

    sub_217E44260(v19, a3 & 1);
    v14 = sub_217E3A780(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 40) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v10 = v24;
  return sub_217E53E6C;
}

void sub_217E53E6C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[5];
    if ((*a1)[6])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[4];
      sub_217E35F40(v1[1], v7, type metadata accessor for ScopeGraphElement.ID);
      sub_217E44C38(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[6])
  {
    v5 = v1[5];
    v6 = *v1[2];
    sub_217E3477C(*(v6 + 48) + *(v1[3] + 72) * v5, type metadata accessor for ScopeGraphElement.ID);
    sub_217E5ABC8(v5, v6);
  }

  v8 = v1[4];

  free(v8);

  free(v1);
}

uint64_t (*sub_217E53F74(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_217E53F9C;
}

void sub_217E53FA8(uint64_t a1)
{
  if (!qword_2811B0908)
  {
    sub_217E34278();
    v1 = sub_217E708E4();
    if (!v2)
    {
      atomic_store(v1, &qword_2811B0908);
    }
  }
}

unint64_t sub_217E5403C()
{
  result = qword_27CBF23B8;
  if (!qword_27CBF23B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CBF23B8);
  }

  return result;
}

void sub_217E54088()
{
  if (!qword_27CBF23C0)
  {
    v0 = sub_217E706B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBF23C0);
    }
  }
}

unint64_t sub_217E540D8()
{
  result = qword_27CBF23D0;
  if (!qword_27CBF23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF23D0);
  }

  return result;
}

uint64_t sub_217E5419C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_217E705D4();
}

uint64_t sub_217E54284(uint64_t a1, uint64_t a2)
{
  sub_217E709A4();
  sub_217E70594();
  return sub_217E709D4();
}

uint64_t sub_217E542FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_217E709A4();
  sub_217E5427C(v6, a2, v4);
  return sub_217E709D4();
}

uint64_t DependencyEnvironment.dependencies.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DependencyEnvironment(0) + 20);

  return sub_217E54394(v3, a1);
}

uint64_t sub_217E54394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Dependencies(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DependencyEnvironment.resolveDependency<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v14 - v7;
  v9 = *(type metadata accessor for DependencyEnvironment(0) + 20);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(&v3[v9], AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = *(v3 + 3);
  v12 = *(v3 + 4);
  sub_217E37F28(v3, v11);
  (*(v12 + 16))(a2, v8, a2, AssociatedTypeWitness, AssociatedConformanceWitness, v11, v12);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t DependencyEnvironment.resolveDependency<A, B>(_:disambiguation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = v6[3];
  v12 = v6[4];
  sub_217E37F28(v6, v11);
  return (*(v12 + 16))(a3, a2, a3, a4, a5, v11, v12);
}

uint64_t sub_217E54648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  sub_217E706E4();
  swift_getFunctionTypeMetadataGlobalActor();
  return sub_217E705D4();
}

uint64_t sub_217E5477C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_217E547C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217E54800(uint64_t a1)
{
  sub_217E70814();

  v1 = sub_217E70A34();
  MEMORY[0x21CEADE80](v1);

  MEMORY[0x21CEADE80](0x786574726556202CLL, 0xE90000000000003DLL);
  v2 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
  MEMORY[0x21CEADE80](v2);

  return 0x3D646E616D6D6F43;
}

uint64_t sub_217E548CC(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_217E4A514(v3, v8);
  if (!v9)
  {
    return sub_217E54A0C(v8);
  }

  sub_217E38C20();
  swift_getExtendedExistentialTypeMetadata();
  result = swift_dynamicCast();
  if (result)
  {
    if (v11)
    {
      sub_217E33C00(&v10, v12);
      v6 = v13;
      v7 = v14;
      sub_217E54AC0(v12, v13);
      (*(v7 + 24))(a2, v6, v7);
      return sub_217E364B4(v12);
    }
  }

  return result;
}

uint64_t sub_217E54A0C(uint64_t a1)
{
  sub_217E54A68(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217E54A68(uint64_t a1)
{
  if (!qword_27CBF23D8)
  {
    sub_217E38C20();
    v1 = sub_217E70794();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBF23D8);
    }
  }
}

uint64_t sub_217E54AC0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_217E54B38(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t isEscapingClosureAtFileLocation, uint64_t a5, uint64_t a6)
{
  sub_217E706D4();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    sub_217E56AB0(v14);
    if (v6)
    {
      v10 = swift_isEscapingClosureAtFileLocation();

      if ((v10 & 1) == 0)
      {
        return v10;
      }

      __break(1u);
    }

    else
    {
      v10 = v14[0];
      v11 = swift_isEscapingClosureAtFileLocation();

      if ((v11 & 1) == 0)
      {
        return v10;
      }
    }

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_217E70814();
  MEMORY[0x21CEADE80](0xD00000000000003FLL, 0x8000000217E73C20);
  v13 = sub_217E70A34();
  MEMORY[0x21CEADE80](v13);

  MEMORY[0x21CEADE80](46, 0xE100000000000000);
  result = sub_217E708A4();
  __break(1u);
  return result;
}

uint64_t sub_217E54CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_217E706D4();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_217E56AF4();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_217E70814();
    MEMORY[0x21CEADE80](0xD00000000000003FLL, 0x8000000217E73C20);
    v12 = sub_217E70A34();
    MEMORY[0x21CEADE80](v12);

    MEMORY[0x21CEADE80](46, 0xE100000000000000);
    result = sub_217E708A4();
    __break(1u);
  }

  return result;
}

uint64_t *sub_217E54E80()
{
  sub_217E56874(v0[2], v0[3], v0[4], v0[5]);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_217E54EB0()
{
  v0 = sub_217E54E80();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

double sub_217E54EE0()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  return result;
}

uint64_t sub_217E54F10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217E703C4();
  *a1 = result;
  return result;
}

uint64_t sub_217E54F60@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_217E70474();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = *(v1 + 8);
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v12 = *(v1 + 32);
  if (*(v1 + 40) == 1)
  {
    *a1 = v9;
    a1[1] = v8;
    a1[2] = v11;
    a1[3] = v10;
    a1[4] = v12;
  }

  else
  {
    v16 = v5;

    sub_217E70784();
    v14 = sub_217E704C4();
    sub_217E70384();

    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E4F180(v9, v8, v11, v10, v12, 0);
    return (*(v4 + 8))(v7, v16);
  }
}

uint64_t sub_217E5511C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Truth.Storage(0, a3, a4, a4);
  swift_getWitnessTable();
  return sub_217E703D4();
}

uint64_t sub_217E55190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v7 = *(v4 + 64);
  v8 = type metadata accessor for Truth.Storage(0, *(a1 + 16), *(a1 + 24), a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282130840](v5, v6, v7, v8, WitnessTable);
}

uint64_t Truth.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  v7 = swift_allocObject();
  v8 = *(v6 + *MEMORY[0x277D84DE8] + 8);
  *(v7 + 16) = v8;
  *(v7 + 24) = a2;
  result = sub_217E5511C(sub_217E552E0, v7, v8, a2);
  *(a3 + 48) = result;
  *(a3 + 56) = v10;
  *(a3 + 64) = v11 & 1;
  *(a3 + 72) = a1;
  return result;
}

double sub_217E552E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Truth.Storage(0, *(v4 + 16), *(v4 + 24), a4);
  v5 = swift_allocObject();
  result = 0.0;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  return result;
}

uint64_t Truth.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(sub_217E55190(a1, a2, a3, a4) + 56);
  swift_unknownObjectRetain();

  if (v4)
  {
    return v4;
  }

  result = sub_217E708A4();
  __break(1u);
  return result;
}

uint64_t Truth.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = Truth.wrappedValue.getter(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t Truth.Wrapper.subscript.getter(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *v2;
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v8 = *(a2 + 24);
  v7[4] = v8;
  v7[5] = v6;
  v7[6] = a1;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = v6;
  v9[6] = a1;
  v10 = *(v5 + *MEMORY[0x277D84568] + 8);
  swift_unknownObjectRetain_n();
  swift_retain_n();

  return MEMORY[0x2821339D8](sub_217E55604, v7, sub_217E5576C, v9, v10);
}

uint64_t sub_217E5551C@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v8 = a1;
  swift_unknownObjectRetain();
  v5 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x277D84568] + 8) - 8) + 16))(a3);
  v5(v7, 0);
  return swift_unknownObjectRelease();
}

uint64_t sub_217E55614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(v9 - v6);
  v9[1] = a4;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_217E55724()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

Swift::Void __swiftcall Truth.update()()
{
  v2 = v0;
  sub_217E56B6C(0, qword_27CBF23E0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4];
  v6 = v1[2];
  v7 = v1[4];
  v24 = v1[3];
  v25 = v7;
  v8 = *v1;
  v22 = v1[1];
  v23 = v6;
  v21 = v8;
  if ([objc_opt_self() isMainThread])
  {
    sub_217E706E4();
    v9 = v1[3];
    v20[2] = v1[2];
    v20[3] = v9;
    v20[4] = v1[4];
    v10 = v1[1];
    v20[0] = *v1;
    v20[1] = v10;
    v11 = sub_217E559B8(v20, *(v2 + 16), *(v2 + 24));
    v13 = v12;
    *&v19[-16] = MEMORY[0x28223BE20](v11);
    *&v19[-8] = v13;
    sub_217E54CF8(sub_217E5614C, &v19[-32], "TeaBreeze/Truth.swift", 21, 2u, 132);
  }

  else
  {
    v14 = sub_217E70704();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v16 = v23;
    v17 = v21;
    *(v15 + 64) = v22;
    *(v15 + 80) = v16;
    v18 = v25;
    *(v15 + 96) = v24;
    *(v15 + 112) = v18;
    *(v15 + 32) = *(v2 + 16);
    *(v15 + 48) = v17;
    (*(*(v2 - 8) + 16))(v20, &v21, v2);
    sub_217E55E28(0, 0, v5, &unk_217E718E0, v15);
  }
}

uint64_t (*sub_217E559B8(_OWORD *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  v15[2] = a1[2];
  v15[3] = v6;
  v15[4] = a1[4];
  v7 = a1[1];
  v15[0] = *a1;
  v15[1] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = a1[3];
  *(v8 + 64) = a1[2];
  *(v8 + 80) = v9;
  *(v8 + 96) = a1[4];
  v10 = a1[1];
  *(v8 + 32) = *a1;
  *(v8 + 48) = v10;
  v12 = type metadata accessor for Truth(0, a2, a3, v11);
  (*(*(v12 - 8) + 16))(&v14, v15, v12);
  return sub_217E56B1C;
}

uint64_t sub_217E55A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_217E56174(a1, a2, a3, a4);
  if (result)
  {
    return sub_217E562C8(a1);
  }

  return result;
}

uint64_t sub_217E55B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_217E55B38, 0, 0);
}

uint64_t sub_217E55B38()
{
  sub_217E706E4();
  *(v0 + 40) = sub_217E706D4();
  v2 = sub_217E706C4();

  return MEMORY[0x2822009F8](sub_217E55BCC, v2, v1);
}

uint64_t sub_217E55BCC()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for Truth(0, v2, v1, v3);
  sub_217E55A98(v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = v0[1];

  return v12();
}

uint64_t sub_217E55C70(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_217E55D34;

  return sub_217E55B14(a1, v6, v7, (v1 + 6), v4, v5);
}

uint64_t sub_217E55D34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_217E55E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_217E56B6C(0, qword_27CBF23E0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_217E56C6C(a3, v25 - v10);
  v12 = sub_217E70704();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_217E337A8(v11, qword_27CBF23E0, MEMORY[0x277D85720]);
  }

  else
  {
    sub_217E706F4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_217E706C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_217E705E4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_217E337A8(a3, qword_27CBF23E0, MEMORY[0x277D85720]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_217E337A8(a3, qword_27CBF23E0, MEMORY[0x277D85720]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_217E56174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  v24 = v4[2];
  v25 = v5;
  v26 = v4[4];
  v6 = v4[1];
  v22 = *v4;
  v23 = v6;
  v7 = sub_217E55190(a1, a2, a3, a4);
  v9 = v7[2];
  v8 = v7[3];
  v11 = v7[4];
  v10 = v7[5];
  v12 = v7[6];
  sub_217E56C1C(v9, v8, v11, v10);

  if (v9)
  {
    v13 = v4[3];
    v24 = v4[2];
    v25 = v13;
    v26 = v4[4];
    v14 = v4[1];
    v22 = *v4;
    v23 = v14;
    sub_217E54F60(v21);
    v15 = v21[4];

    swift_beginAccess();
    v16 = *(v9 + 112);
    v17 = v12;
    while (*(v16 + 16))
    {
      v18 = sub_217E33C18(v17);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v17 = *(*(v16 + 56) + 8 * v18);
      if (v17 == v15)
      {
        sub_217E56874(v9, v8, v11, v10);
        return 0;
      }
    }

    sub_217E56874(v9, v8, v11, v10);
  }

  return 1;
}

uint64_t sub_217E562C8(uint64_t a1)
{
  v44 = type metadata accessor for Dependencies(0);
  MEMORY[0x28223BE20](v44);
  v42 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = v1[1];
  v5 = v1[3];
  v66 = v1[2];
  v67 = v5;
  v6 = v1[1];
  v64 = *v1;
  v65 = v6;
  v7 = v1[3];
  v55 = v66;
  v56 = v7;
  v8 = *(v1 + 9);
  v68 = *(v1 + 8);
  v9 = *(v1 + 8);
  v53 = v64;
  v54 = v4;
  v57 = v9;
  v58 = v8;
  v10 = v8;
  sub_217E54F60(v52);
  v11 = v52[0];
  v12 = v52[1];
  v13 = v52[2];
  v14 = v52[3];
  v15 = v52[4];
  v59 = 0;
  v60 = 0xE000000000000000;
  v16 = sub_217E70A34();
  MEMORY[0x21CEADE80](v16);

  MEMORY[0x21CEADE80](8250, 0xE200000000000000);
  v47 = v10;
  v40 = v10;
  v41 = a1;
  sub_217E70A24();
  sub_217E70914();
  v47 = v11;
  v48 = v12;
  v49 = v13;
  v50 = v14;
  v51 = v15;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  Scope.subscope(dependencyContainer:tag:)(v45, v59, v60, &v59);

  sub_217E337A8(v45, &qword_2811B0F90, sub_217E42344);

  v17 = v59;
  v18 = v60;
  v39 = v61;
  v43 = v62;
  v19 = v63;
  v55 = v66;
  v56 = v67;
  v53 = v64;
  v54 = v65;
  v57 = v68;
  v58 = v10;
  v23 = sub_217E55190(a1, v20, v21, v22);
  v25 = v23[2];
  v24 = v23[3];
  v26 = v23[4];
  v27 = v23[5];
  v23[2] = v17;
  v23[3] = v18;
  v23[4] = v39;
  v23[5] = v43;
  v23[6] = v19;

  sub_217E56874(v25, v24, v26, v27);

  v28 = v44;
  v29 = *(v44 + 24);
  v30 = type metadata accessor for ScopeGraphElement.ID(0);
  v31 = v42;
  (*(*(v30 - 8) + 56))(v42 + v29, 1, 1, v30);
  v32 = *(v28 + 28);
  type metadata accessor for Dependencies.AmbiguousResolutionContext();
  v33 = swift_allocObject();
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0u;
  *(v33 + 48) = 0;
  *(v31 + v32) = v33;
  *v31 = v17;
  v31[1] = v19;
  v55 = v66;
  v56 = v67;
  v53 = v64;
  v54 = v65;
  v57 = v68;
  v58 = v40;

  v37 = sub_217E55190(v41, v34, v35, v36);
  swift_getAtKeyPath();

  sub_217E56BC0(v31);
  *(v37 + 56) = v59;

  return swift_unknownObjectRelease();
}

uint64_t sub_217E56624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217E5666C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E566B4(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_217E56784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Scope.Error(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Scope.Error(uint64_t result, int a2, int a3)
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

uint64_t sub_217E56874(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217E568C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_217E569B8;

  return v6(a1);
}

uint64_t sub_217E569B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_217E56AB0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

void sub_217E56B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_217E56BC0(uint64_t a1)
{
  v2 = type metadata accessor for Dependencies(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217E56C1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217E56C6C(uint64_t a1, uint64_t a2)
{
  sub_217E56B6C(0, qword_27CBF23E0, MEMORY[0x277D85720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E56CEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_217E56E5C;

  return sub_217E568C0(a1, v4);
}

uint64_t sub_217E56DA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_217E55D34;

  return sub_217E568C0(a1, v4);
}

uint64_t ClosureValueConverter.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_217E56EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217E56F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_217E5B858(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_217E33C18(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_217E59748(&qword_2811B0900, sub_217E39094);
        v11 = v13;
      }

      result = sub_217E5AA34(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_217E570A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    result = a3(a1, a2, isUniquelyReferenced_nonNull_native);
    *v4 = v16;
  }

  else
  {
    result = sub_217E33C18(a2);
    if (v12)
    {
      v13 = result;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v17 = *v5;
      if (!v14)
      {
        a4();
        v15 = v17;
      }

      result = sub_217E5AA34(v13, v15);
      *v5 = v15;
    }
  }

  return result;
}

uint64_t sub_217E5717C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_217E5B6B4(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_217E36500(a2, type metadata accessor for ScopeGraphElement.ID);
    *v2 = v15;
  }

  else
  {
    v8 = sub_217E3A780(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_217E459E0();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for ScopeGraphElement.ID(0);
      sub_217E36500(v13 + *(*(v14 - 8) + 72) * v10, type metadata accessor for ScopeGraphElement.ID);

      sub_217E5ABC8(v10, v12);
      result = sub_217E36500(a2, type metadata accessor for ScopeGraphElement.ID);
      *v3 = v12;
    }

    else
    {
      return sub_217E36500(a2, type metadata accessor for ScopeGraphElement.ID);
    }
  }

  return result;
}

uint64_t sub_217E572CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 24))
  {
    sub_217E33C00(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v4;
    sub_217E5B99C(v11, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v10;
  }

  else
  {
    sub_217E33804(a1, &qword_27CBF2610, &qword_27CBF2608, &protocol descriptor for RegisteredDependency);
    sub_217E6CECC(a4, v11);

    return sub_217E33804(v11, &qword_27CBF2610, &qword_27CBF2608, &protocol descriptor for RegisteredDependency);
  }

  return result;
}

uint64_t sub_217E573C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_217E33C00(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_217E5BB20(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_217E33804(a1, &qword_27CBF2610, &qword_27CBF2608, &protocol descriptor for RegisteredDependency);
    v7 = sub_217E58E60(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_217E5A040();
        v11 = v13;
      }

      sub_217E33C00((*(v11 + 56) + 40 * v9), v14);
      sub_217E5B234(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_217E33804(v14, &qword_27CBF2610, &qword_27CBF2608, &protocol descriptor for RegisteredDependency);
  }

  return result;
}

uint64_t Scope.subscope(tag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 4);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  v11 = v4;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  Scope.subscope(dependencyContainer:tag:)(v7, a1, a2, a3);
  return sub_217E33804(v7, &qword_2811B0F90, qword_2811B0F98, &protocol descriptor for DependencyContainer);
}

uint64_t Scope.dependenciesContainer.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[4];
  v5 = type metadata accessor for Dependencies(0);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = *(v5 + 28);
  type metadata accessor for Dependencies.AmbiguousResolutionContext();
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  *&a1[v8] = v9;
  *a1 = v3;
  *(a1 + 1) = v4;
}

uint64_t sub_217E57624(void *a1, uint64_t a2)
{
  v4 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v20 - v7;
  v10 = *v9 - 8;
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - v11;
  v13 = *v2;
  v14 = v2[4];
  v15 = *(v10 + 32);
  v16 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
  v17 = *(v10 + 36);
  type metadata accessor for Dependencies.AmbiguousResolutionContext();
  v18 = swift_allocObject();
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0;
  *&v12[v17] = v18;
  *v12 = v13;
  *(v12 + 1) = v14;
  (*(v5 + 16))(v8, a2, v4);

  swift_setAtWritableKeyPath();
  return sub_217E36500(v12, type metadata accessor for Dependencies);
}

uint64_t sub_217E57810(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*a1 + *MEMORY[0x277D84308]) - 8;
  MEMORY[0x28223BE20](a1);
  v11 = &v19 - v10;
  v12 = *v4;
  v13 = v4[4];
  v14 = *(v9 + 32);
  v15 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v15 - 8) + 56))(&v11[v14], 1, 1, v15);
  v16 = *(v9 + 36);
  type metadata accessor for Dependencies.AmbiguousResolutionContext();
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *&v11[v16] = v17;
  *v11 = v12;
  *(v11 + 1) = v13;

  sub_217E659E8(a1, a2, a3, a4);
  return sub_217E36500(v11, type metadata accessor for Dependencies);
}

uint64_t sub_217E57980(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*a1 + *MEMORY[0x277D84308]) - 8;
  MEMORY[0x28223BE20](a1);
  v13 = &v21 - v12;
  v14 = *v5;
  v15 = v5[4];
  v16 = *(v11 + 32);
  v17 = type metadata accessor for ScopeGraphElement.ID(0);
  (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
  v18 = *(v11 + 36);
  type metadata accessor for Dependencies.AmbiguousResolutionContext();
  v19 = swift_allocObject();
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0;
  *&v13[v18] = v19;
  *v13 = v14;
  *(v13 + 1) = v15;

  sub_217E65BC0(a1, a2, a3, a4, a5);
  return sub_217E36500(v13, type metadata accessor for Dependencies);
}

uint64_t Scope.register<A, B>(source:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 32);
  v10[2] = a4;
  v10[4] = a6;
  v10[5] = a7;
  v10[6] = a1;
  v10[7] = a2;
  v11 = v8;
  return sub_217E6A4E8(sub_217E5C120, v10, a5, &v11, a4, a5, a6, a7);
}

uint64_t Scope.register<A, B>(source:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 32);
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = a1;
  v17 = a2;
  v18 = v9;
  return sub_217E6A590(sub_217E5C124, v11, a5, &v18, a4, a5, a6, a7, a8);
}

uint64_t Scope.register<A, B>(source:for:disambiguation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 32);
  v12 = a5;
  v13 = a7;
  v14 = a8;
  v15 = a1;
  v16 = a2;
  v17 = v9;
  return sub_217E6A730(sub_217E5B3B0, v11, a6, a4, &v17, a5, a6, a7, a8);
}

uint64_t Scope.register<A, B>(source:for:disambiguation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 32);
  v13 = a5;
  v14 = a7;
  v15 = a8;
  v16 = a9;
  v17 = a1;
  v18 = a2;
  v19 = v10;
  return sub_217E6A7E0(sub_217E5B3D8, v12, a6, a4, &v19, a5, a6, a7, a8, a9);
}

uint64_t Scope.install(_:)(uint64_t *a1)
{
  v2 = *a1;
  v4 = *(v1 + 32);
  v5 = v2;
  return sub_217E6A984(&v5, &v4);
}

unint64_t Scope.Error.description.getter()
{
  sub_217E70814();

  v0 = sub_217E70A34();
  MEMORY[0x21CEADE80](v0);

  return 0xD000000000000021;
}

unint64_t sub_217E57E84()
{
  sub_217E70814();

  v0 = sub_217E70A34();
  MEMORY[0x21CEADE80](v0);

  return 0xD000000000000021;
}

uint64_t Scope.customMirror.getter()
{
  v1 = sub_217E70A04();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E393BC(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = v0[1];
  v9 = v0[2];
  v14 = *v0;
  v15 = v8;
  v16 = v9;
  v12 = *(v0 + 3);
  v17 = v12;
  v13 = MEMORY[0x277D84F90];
  v10 = sub_217E709F4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  (*(v2 + 104))(v4, *MEMORY[0x277D84C38], v1);
  sub_217E393BC(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();

  return sub_217E70A14();
}

uint64_t sub_217E58148(uint64_t a1)
{
  v2 = sub_217E70A04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E393BC(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = v1[1];
  v10 = v1[2];
  v15 = *v1;
  v16 = v9;
  v17 = v10;
  v13 = *(v1 + 3);
  v18 = v13;
  v14 = MEMORY[0x277D84F90];
  v11 = sub_217E709F4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  (*(v3 + 104))(v5, *MEMORY[0x277D84C38], v2);
  sub_217E393BC(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();

  return sub_217E70A14();
}

uint64_t Scope.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  sub_217E706E4();
  v3[2] = v4;
  return sub_217E54B38(sub_217E5B400, v3, "TeaBreeze/Scope.swift", 21, 2, 403);
}

uint64_t sub_217E58414@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[4];
  swift_beginAccess();
  v5 = v3[6];
  v6 = v3[8];
  v22 = v3[7];
  v23 = v6;
  v7 = v3[6];
  v8 = v3[4];
  v20 = v3[5];
  v21 = v7;
  v19 = v3[4];
  v16 = v5;
  v17 = v22;
  v18 = v3[8];
  v14 = v8;
  v15 = v20;
  v13 = v4;
  sub_217E3438C(&v19, v24);
  v9 = sub_217E504DC(&v13);
  v11 = v10;
  v24[2] = v16;
  v24[3] = v17;
  v24[4] = v18;
  v24[0] = v14;
  v24[1] = v15;
  result = sub_217E347DC(v24);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_217E584EC()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  sub_217E706E4();
  v3[2] = v4;
  return sub_217E54B38(sub_217E5C0FC, v3, "TeaBreeze/Scope.swift", 21, 2, 403);
}

uint64_t Scope.description.getter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_217E5B41C();
  result = sub_217E707A4();
  if (v2)
  {
    v8 = v3;
    v6 = result;
    v7 = v5;

    MEMORY[0x21CEADE80](2108704, 0xE300000000000000);
    MEMORY[0x21CEADE80](v6, v7);

    return v8;
  }

  return result;
}

uint64_t sub_217E5864C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_217E5B41C();
  result = sub_217E707A4();
  if (v2)
  {
    v8 = v3;
    v6 = result;
    v7 = v5;

    MEMORY[0x21CEADE80](2108704, 0xE300000000000000);
    MEMORY[0x21CEADE80](v6, v7);

    return v8;
  }

  return result;
}

uint64_t Scope.ID.hashValue.getter()
{
  v1 = *v0;
  sub_217E709A4();
  MEMORY[0x21CEAE230](v1);
  return sub_217E709D4();
}

uint64_t sub_217E587D0()
{
  v1 = *v0;
  sub_217E709A4();
  MEMORY[0x21CEAE230](v1);
  return sub_217E709D4();
}

uint64_t sub_217E58844(uint64_t a1)
{
  v2 = *v1;
  sub_217E709A4();
  MEMORY[0x21CEAE230](v2);
  return sub_217E709D4();
}

unint64_t sub_217E58888(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_217E58954(v11, 0, 0, 1, a1, a2);
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
    sub_217E5BFEC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_217E364B4(v11);
  return v7;
}

unint64_t sub_217E58954(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_217E58A60(a5, a6);
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
    result = sub_217E70844();
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

void *sub_217E58A60(uint64_t a1, unint64_t a2)
{
  v3 = sub_217E58AAC(a1, a2);
  sub_217E58BDC(&unk_2829CB040);
  return v3;
}

void *sub_217E58AAC(uint64_t a1, unint64_t a2)
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

  v6 = sub_217E58CC8(v5, 0);
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

  result = sub_217E70844();
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
        v10 = sub_217E70614();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_217E58CC8(v10, 0);
        result = sub_217E70804();
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

uint64_t sub_217E58BDC(uint64_t result)
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

  result = sub_217E58D54(result, v11, 1, v3);
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

void *sub_217E58CC8(uint64_t a1, uint64_t a2)
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

  sub_217E5C048(0, &qword_27CBF2650, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_217E58D54(char *result, int64_t a2, char a3, char *a4)
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
    sub_217E5C048(0, &qword_27CBF2650, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

unint64_t sub_217E58E60(uint64_t a1)
{
  v2 = sub_217E70994();

  return sub_217E33C84(a1, v2);
}

void *sub_217E58EA4()
{
  v1 = v0;
  sub_217E3620C(0);
  v2 = *v0;
  v3 = sub_217E708B4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_217E59024()
{
  v1 = v0;
  sub_217E38FB4(0, &qword_2811B0918, sub_217E48920);
  v2 = *v0;
  v3 = sub_217E708B4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_217E591A8()
{
  v1 = v0;
  sub_217E38B24(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ScopeGraphElement.ID(0);
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E45C3C(0, &qword_2811B0930, sub_217E38B24);
  v6 = *v0;
  v7 = sub_217E708B4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_217E3AF88(*(v6 + 48) + v23, v29, type metadata accessor for ScopeGraphElement.ID);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_217E3AF88(*(v6 + 56) + v25, v31, sub_217E38B24);
        v26 = v33;
        sub_217E35CBC(v22, *(v33 + 48) + v23, type metadata accessor for ScopeGraphElement.ID);
        result = sub_217E35CBC(v24, *(v26 + 56) + v25, sub_217E38B24);
        v16 = v34;
      }

      while (v34);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
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

void *sub_217E594AC()
{
  v1 = v0;
  v2 = type metadata accessor for ScopeGraphElement.ID(0);
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E5BE8C(0);
  v4 = *v0;
  v5 = sub_217E708B4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v4 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v4;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 24 * v20;
        v22 = *(v4 + 56);
        v23 = (*(v4 + 48) + 24 * v20);
        v25 = *v23;
        v24 = v23[1];
        v26 = v23[2];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_217E3AF88(v22 + v28, v33, type metadata accessor for ScopeGraphElement.ID);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v24;
        v4 = v32;
        v30[2] = v26;
        sub_217E35CBC(v27, *(v29 + 56) + v28, type metadata accessor for ScopeGraphElement.ID);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v31;
        v6 = v35;
        goto LABEL_21;
      }

      v19 = *(v8 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_217E59748(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  sub_217E38FB4(0, a1, a2);
  v4 = *v2;
  v5 = sub_217E708B4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
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
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_217E598A0()
{
  v1 = v0;
  sub_217E5C098(0, &qword_2811B08F8, MEMORY[0x277D837D0]);
  v2 = *v0;
  v3 = sub_217E708B4();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_217E59A0C()
{
  v1 = v0;
  sub_217E5C098(0, &qword_2811B0908, &type metadata for Scope.ID);
  v2 = *v0;
  v3 = sub_217E708B4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_217E59B5C()
{
  v1 = v0;
  sub_217E49808(0);
  v2 = *v0;
  v3 = sub_217E708B4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_217E33AD0(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_217E33C00(v19, *(v4 + 56) + 40 * v17);
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

void *sub_217E59CD0()
{
  v1 = v0;
  sub_217E5C098(0, &qword_27CBF25F0, &type metadata for RuleSet);
  v2 = *v0;
  v3 = sub_217E708B4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_217E59E78(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = v4;
  sub_217E3632C(0, a1, a2, a3);
  v7 = *v4;
  v8 = sub_217E708B4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v28 = v6;
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = 24 * v22;
        v24 = *(v7 + 48) + 24 * v22;
        v25 = *v24;
        v29 = *(v24 + 8);
        v26 = 40 * v22;
        sub_217E33AD0(*(v7 + 56) + 40 * v22, v30);
        v27 = *(v9 + 48) + v23;
        *v27 = v25;
        *(v27 + 8) = v29;
        a4(v30, *(v9 + 56) + v26);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v21 = *(v7 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v9;
  }

  return result;
}

void *sub_217E5A040()
{
  v1 = v0;
  sub_217E5BCD8(0, &qword_27CBF2618, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_217E708B4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_217E33AD0(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_217E33C00(v19, *(v4 + 56) + 40 * v17);
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

void *sub_217E5A1E8(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_217E708B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(v3 + 48) + 24 * v18;
        v20 = *(*(v3 + 56) + 8 * v18);
        v21 = *(v5 + 48) + 24 * v18;
        v22 = *(v19 + 8);
        *v21 = *v19;
        *(v21 + 8) = v22;
        *(*(v5 + 56) + 8 * v18) = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_217E5A364(int64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for ScopeGraphElement.ID(0);
  v4 = *(v27 - 8);
  result = MEMORY[0x28223BE20](v27);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_217E707C4();
    v28 = v11;
    v29 = (v12 + 1) & v11;
    v13 = *(v4 + 72);
    do
    {
      v14 = v13 * v10;
      sub_217E3AF88(*(a2 + 48) + v13 * v10, v7, type metadata accessor for ScopeGraphElement.ID);
      sub_217E709A4();
      sub_217E70374();
      sub_217E3A834(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_217E70594();
      v15 = sub_217E709D4();
      result = sub_217E36500(v7, type metadata accessor for ScopeGraphElement.ID);
      v16 = v15 & v11;
      if (a1 >= v29)
      {
        if (v16 >= v29 && a1 >= v16)
        {
LABEL_11:
          if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 * a1 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17 = *(a2 + 56);
          sub_217E38B24(0);
          v19 = *(*(v18 - 8) + 72);
          v20 = v19 * a1;
          result = v17 + v19 * a1;
          v21 = v19 * v10;
          v22 = v17 + v19 * v10 + v19;
          if (v20 < v21 || result >= v22)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v11 = v28;
          }

          else
          {
            a1 = v10;
            v11 = v28;
            if (v20 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v10;
            }
          }
        }
      }

      else if (v16 >= v29 || a1 >= v16)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_217E5A690(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217E707C4() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 24 * v6);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v9);

      sub_217E705F4();
      v10 = sub_217E709D4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = v12 + 24 * v3;
      v14 = (v12 + 24 * v6);
      if (v3 != v6 || v13 >= v14 + 24)
      {
        v15 = *v14;
        *(v13 + 16) = *(v14 + 2);
        *v13 = v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for ScopeGraphElement.ID(0) - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_217E5A8A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217E707C4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v9);
      result = sub_217E709D4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_217E5AA34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217E707C4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v9);
      result = sub_217E709D4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_217E5ABC8(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for ScopeGraphElement.ID(0);
  v4 = *(v26 - 8);
  result = MEMORY[0x28223BE20](v26);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_217E707C4() + 1) & ~v8;
    v12 = *(v4 + 72);
    v27 = a2 + 64;
    v13 = v28;
    do
    {
      v14 = v12;
      v15 = v12 * v9;
      sub_217E3AF88(*(a2 + 48) + v12 * v9, v13, type metadata accessor for ScopeGraphElement.ID);
      sub_217E709A4();
      sub_217E70374();
      sub_217E3A834(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_217E70594();
      v16 = sub_217E709D4();
      result = sub_217E36500(v13, type metadata accessor for ScopeGraphElement.ID);
      v17 = v16 & v10;
      if (a1 >= v11)
      {
        if (v17 < v11)
        {
          v7 = v27;
          v12 = v14;
          goto LABEL_4;
        }

        v12 = v14;
        if (a1 >= v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v14;
        if (v17 >= v11 || a1 >= v17)
        {
LABEL_11:
          v18 = *(a2 + 48);
          result = v18 + v12 * a1;
          if (v12 * a1 < v15 || result >= v18 + v15 + v12)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v27;
          }

          else
          {
            v19 = v12 * a1 == v15;
            v7 = v27;
            if (!v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 8 * a1);
          v22 = (v20 + 8 * v9);
          if (a1 != v9 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v27;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_217E5AEE0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217E707C4() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v11);
      result = sub_217E709D4();
      v12 = result & v7;
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
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
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

uint64_t sub_217E5B080(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217E707C4() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 24 * v6 + 16);
      sub_217E709A4();
      MEMORY[0x21CEAE230](v11);
      result = sub_217E709D4();
      v12 = result & v7;
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
        v14 = v13 + 24 * v3;
        v15 = (v13 + 24 * v6);
        if (v3 != v6 || v14 >= v15 + 24)
        {
          v16 = *v15;
          *(v14 + 16) = *(v15 + 2);
          *v14 = v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v3;
        v19 = (v17 + 40 * v6);
        if (v3 != v6 || v18 >= v19 + 40)
        {
          v9 = *v19;
          v10 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v9;
          *(v18 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_217E5B234(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217E707C4() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_217E70994();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_217E5B41C()
{
  result = qword_27CBF25E8;
  if (!qword_27CBF25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF25E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Scope.ID(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Scope.ID(uint64_t result, int a2, int a3)
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

uint64_t sub_217E5B55C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_217E33C18(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = sub_217E33C18(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {

    return a6(v14, a2, a1, v24);
  }
}

uint64_t sub_217E5B6B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ScopeGraphElement.ID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_217E3A780(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_217E459E0();
      goto LABEL_7;
    }

    sub_217E44260(v16, a3 & 1);
    v21 = sub_217E3A780(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_217E3AF88(a2, v10, type metadata accessor for ScopeGraphElement.ID);
      return sub_217E44C38(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

unint64_t sub_217E5B858(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_217E33C18(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_217E59748(&qword_2811B0900, sub_217E39094);
      v9 = v17;
      goto LABEL_8;
    }

    sub_217E38D14(v14, a3 & 1);
    v9 = sub_217E33C18(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_217E36EB0(v9, a2, a1, v19);
  }
}

uint64_t sub_217E5B99C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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
      sub_217E59E78(&qword_27CBF2620, &qword_27CBF2608, &protocol descriptor for RegisteredDependency, sub_217E375D4);
      v13 = v21;
      goto LABEL_8;
    }

    sub_217E5D8A0(v18, a5 & 1);
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

uint64_t sub_217E5BB20(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_217E58E60(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_217E5A040();
      v9 = v17;
      goto LABEL_8;
    }

    sub_217E5D8D0(v14, a3 & 1);
    v9 = sub_217E58E60(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_217E70944();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    sub_217E364B4(v20);

    return sub_217E33C00(a1, v20);
  }

  else
  {

    return sub_217E49B18(v9, a2, a1, v19);
  }
}

void sub_217E5BC50(uint64_t a1)
{
  if (!qword_27CBF25F8)
  {
    sub_217E5BCD8(255, &qword_27CBF2600, MEMORY[0x277D834F8]);
    sub_217E37580();
    v1 = sub_217E708E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBF25F8);
    }
  }
}

void sub_217E5BCD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_217E3374C(255, &qword_27CBF2608, &protocol descriptor for RegisteredDependency);
    v7 = a3(a1, MEMORY[0x277D83B88], v6, MEMORY[0x277D83B98]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_217E5BD58(uint64_t a1)
{
  if (!qword_2811B0938)
  {
    sub_217E33B34(255, &qword_2811B0980, qword_2811B1708, &protocol descriptor for GraphUpdate, MEMORY[0x277D83940]);
    sub_217E37580();
    v1 = sub_217E708E4();
    if (!v2)
    {
      atomic_store(v1, &qword_2811B0938);
    }
  }
}

uint64_t sub_217E5BE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_217E5BE8C(uint64_t a1)
{
  if (!qword_2811B0948)
  {
    type metadata accessor for ScopeGraphElement.ID(255);
    sub_217E39100();
    v1 = sub_217E708E4();
    if (!v2)
    {
      atomic_store(v1, &qword_2811B0948);
    }
  }
}

void sub_217E5BEF8(uint64_t a1)
{
  if (!qword_27CBF2638)
  {
    sub_217E393BC(255, &qword_27CBF2640, sub_217E5BF94, MEMORY[0x277D83940]);
    sub_217E37580();
    v1 = sub_217E708E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBF2638);
    }
  }
}

unint64_t sub_217E5BF94()
{
  result = qword_27CBF2648;
  if (!qword_27CBF2648)
  {
    sub_217E3374C(255, &qword_2811B0BD8, &protocol descriptor for Rule);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27CBF2648);
  }

  return result;
}

uint64_t sub_217E5BFEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_217E5C048(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_217E5C098(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_217E5C154(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_217E5C238(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(v4 + *(*v4 + 136)) & 1) == 0)
  {
    *(v4 + *(*v4 + 120)) = 1;
    result = sub_217E5C300(result, v4, a2, a3, a4);
    *(v4 + *(*v4 + 120)) = 0;
    if (*(v4 + *(*v4 + 128)) == 1)
    {
      return sub_217E5C3B8();
    }
  }

  return result;
}

uint64_t sub_217E5C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*a2 + 104);
  swift_beginAccess();
  (*(a5 + 24))(a2 + v9, a3, a4, a5);
  return swift_endAccess();
}

uint64_t sub_217E5C3B8()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  if (*(v0 + *(*v0 + 120)) == 1)
  {
    *(v0 + v2) = 1;
  }

  else
  {
    *(v0 + v2) = 0;
    *(v0 + *(*v0 + 136)) = 1;
    swift_beginAccess();
    (*(*(v1 + 88) + 16))(*(v1 + 80));
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_217E5C4B8(uint64_t result)
{
  if (*(result + *(*result + 128)) == 1)
  {
    return sub_217E5C3B8();
  }

  return result;
}

char *sub_217E5C500()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t sub_217E5C580()
{
  sub_217E5C500();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_217E5C68C()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_217E5C6C0(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + *(*v2 + 136)))
  {
LABEL_2:
    *(v2 + *(v4 + 112)) = 1;
    return result;
  }

  *(v2 + *(*v2 + 120)) = 1;
  result = sub_217E5C7F8(v2, result, a2);
  if (!v3)
  {
    *(v2 + *(*v2 + 120)) = 0;
    v4 = *v2;
    if (*(v2 + *(*v2 + 128)) == 1)
    {
      result = sub_217E5C3B8();
      v4 = *v2;
    }

    goto LABEL_2;
  }

  *(v2 + *(*v2 + 120)) = 0;
  if (*(v2 + *(*v2 + 128)) == 1)
  {
    return sub_217E5C3B8();
  }

  return result;
}

uint64_t sub_217E5C7F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  (*(a3 + 24))(a2, *(v5 + 80), a3);
  return swift_endAccess();
}

uint64_t static RuleSet.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_2811B0B08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_2811B0B10;
}

uint64_t RuleSet.install<A, B>(_:followingResolutionOf:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = *v4;
  v10 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  sub_217E36EF4(v10, v10);
  v12 = MEMORY[0x277D84F90];
  if (*(v9 + 16))
  {
    v13 = sub_217E3722C(v11);
    if (v14)
    {
      v15 = *(*(v9 + 56) + 8 * v13);
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_217E5CFB0(0, *(v15 + 2) + 1, 1, v15);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_217E5CFB0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[16 * v17];
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  v19 = sub_217E36EF4(v10, v10);
  v21 = v20;
  v23 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v6;
  v38 = *v6;
  *v6 = 0x8000000000000000;
  v27 = sub_217E3722C(v23);
  v28 = v25[2];
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
LABEL_22:
    sub_217E59E30();
    v25 = v38;
    goto LABEL_15;
  }

  v5 = v26;
  if (v25[3] >= v30)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  sub_217E5D5F0(v30, isUniquelyReferenced_nonNull_native);
  v25 = v38;
  v31 = sub_217E3722C(v23);
  if ((v5 & 1) != (v32 & 1))
  {
    goto LABEL_24;
  }

  v27 = v31;
LABEL_15:

  *v6 = v25;
  if ((v5 & 1) == 0)
  {
    v25[(v27 >> 6) + 8] |= 1 << v27;
    v33 = (v25[6] + 24 * v27);
    *v33 = v19;
    v33[1] = v21;
    v33[2] = v23;
    *(v25[7] + 8 * v27) = v12;
    v34 = v25[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (!v35)
    {
      v25[2] = v36;

      goto LABEL_18;
    }

    __break(1u);
LABEL_24:
    result = sub_217E70944();
    __break(1u);
    return result;
  }

LABEL_18:
  *(v25[7] + 8 * v27) = v15;
}

uint64_t RuleSet.description.getter()
{
  v1 = *v0;
  sub_217E39420(0, &qword_27CBF2640, sub_217E5BF94, MEMORY[0x277D83940]);
  v3 = v2;
  v4 = sub_217E37580();

  return MEMORY[0x2821FB7B8](v1, &type metadata for TypeIdentifier, v3, v4);
}

uint64_t sub_217E5CC9C()
{
  v1 = *v0;
  sub_217E39420(0, &qword_27CBF2640, sub_217E5BF94, MEMORY[0x277D83940]);
  v3 = v2;
  v4 = sub_217E37580();

  return MEMORY[0x2821FB7B8](v1, &type metadata for TypeIdentifier, v3, v4);
}

char *sub_217E5CD54(char *result, int64_t a2, char a3, char *a4)
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
    sub_217E4770C(0, qword_27CBF2678, MEMORY[0x277D837D0]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217E5CE64(void *result, int64_t a2, char a3, void *a4)
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
    sub_217E39420(0, &qword_27CBF2668, sub_217E5DCDC, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_217E5DCDC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217E5CFB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_217E39420(0, &qword_27CBF2660, sub_217E5BF94, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_217E5D0D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_217E5DC40(0);
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