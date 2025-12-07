uint64_t sub_217E5D35C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_217E33CF0(0, &qword_27CBF25F0, &type metadata for RuleSet);
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

uint64_t sub_217E5D5F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_217E5BEF8(0);
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
      v21 = (*(v5 + 48) + 24 * v20);
      v22 = v21[1];
      v35 = *v21;
      v23 = v21[2];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_217E709A4();
      MEMORY[0x21CEAE230](v23);
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
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v35;
      v16[1] = v22;
      v16[2] = v23;
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

uint64_t sub_217E5D8D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_217E5BCD8(0, &qword_27CBF2618, MEMORY[0x277D84460]);
  result = sub_217E708C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
        sub_217E33C00(v21, v31);
      }

      else
      {
        sub_217E33AD0(v21, v31);
      }

      result = sub_217E70994();
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
      result = sub_217E33C00(v31, *(v7 + 56) + 40 * v15);
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

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_217E5DBAC(uint64_t a1, uint64_t a2)
{
  sub_217E39420(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217E5DC40(uint64_t a1)
{
  if (!qword_27CBF2628)
  {
    sub_217E39420(255, &qword_27CBF2630, type metadata accessor for ScopeGraphElement.ID, MEMORY[0x277D83940]);
    sub_217E34278();
    v1 = sub_217E708E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBF2628);
    }
  }
}

unint64_t sub_217E5DCDC()
{
  result = qword_27CBF2670;
  if (!qword_27CBF2670)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CBF2670);
  }

  return result;
}

uint64_t sub_217E5DD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E37580();

  return MEMORY[0x2821FB7B8](a1, &type metadata for TypeIdentifier, a2, v4);
}

uint64_t sub_217E5DDC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E37580();

  return MEMORY[0x2821FB7D0](a1, &type metadata for TypeIdentifier, a2, v4);
}

uint64_t sub_217E5DE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_217E37580();

  return MEMORY[0x2821FB7F8](a1, &type metadata for TypeIdentifier, a2, v4);
}

uint64_t sub_217E5DE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_217E37580();

  return sub_217E70584();
}

uint64_t sub_217E5DEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_217E37580();

  return sub_217E70574();
}

uint64_t sub_217E5DF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217E709A4();
  sub_217E37580();
  sub_217E70574();
  return sub_217E709D4();
}

uint64_t sub_217E5E00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_217E709A4();
  sub_217E5DEEC(v7, *v3, *(a2 + 16), v5);
  return sub_217E709D4();
}

uint64_t sub_217E5E064(uint64_t a1)
{
  sub_217E70814();

  v1 = sub_217E70A34();
  MEMORY[0x21CEADE80](v1);

  MEMORY[0x21CEADE80](0x786574726556202CLL, 0xE90000000000003DLL);
  v2 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
  MEMORY[0x21CEADE80](v2);

  return 0x3D746E657645;
}

uint64_t sub_217E5E154(uint64_t a1)
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

uint64_t sub_217E5E1E8(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t sub_217E5E27C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_217E5E34C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v10 - v7;
  (*(v6 + 16))(v10 - v7, v2 + *(v4 + 96), v5);
  (*(*(v4 + 88) + 24))(a2, v5);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_217E5E4B4(uint64_t a1, uint64_t a2)
{
  sub_217E70814();

  swift_getAssociatedTypeWitness();
  v2 = sub_217E70A34();
  MEMORY[0x21CEADE80](v2);

  MEMORY[0x21CEADE80](0x656C646E6148202CLL, 0xEA00000000003D72);
  v3 = sub_217E70A34();
  MEMORY[0x21CEADE80](v3);

  return 0x3D746E657645;
}

uint64_t static DependencyKey.ruleSet.getter@<X0>(void *a1@<X8>)
{
  if (qword_2811B0B08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_2811B0B10;
}

uint64_t static DependencyKey.source(in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v13 - v7;
  (*(a2 + 16))(a1, a2);
  a3[3] = type metadata accessor for StaticTruth(0, AssociatedTypeWitness, v9, v10);
  a3[4] = swift_getWitnessTable();
  v11 = sub_217E360A4(a3);
  return StaticTruth.init(state:)(v8, AssociatedTypeWitness, v11);
}

__n128 sub_217E5E774(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_217E5E788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217E5E7D0(uint64_t result, int a2, int a3)
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

uint64_t sub_217E5E820(uint64_t a1)
{
  v2 = sub_217E70A04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E35110(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  v13 = *v1;
  v11 = *(v1 + 1);
  v14 = v11;
  v12 = MEMORY[0x277D84F90];
  v9 = sub_217E709F4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x277D84C38], v2);
  sub_217E35110(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();

  return sub_217E70A14();
}

uint64_t sub_217E5EA58()
{
  v1 = *(v0 + 16);
  sub_217E709A4();
  MEMORY[0x21CEAE230](v1);
  return sub_217E709D4();
}

uint64_t sub_217E5EACC(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_217E709A4();
  MEMORY[0x21CEAE230](v2);
  return sub_217E709D4();
}

void *EnvironmentValues.scope.getter()
{
  sub_217E4F1E4();

  return sub_217E70484();
}

void (*EnvironmentValues.scope.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  *(v3 + 88) = sub_217E4F1E4();
  sub_217E70484();
  return sub_217E5EC34;
}

void sub_217E5EC34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v2[5] = **a1;
  v4 = v2[2];
  v2[6] = v3;
  v2[7] = v4;
  *(v2 + 4) = *(v2 + 3);
  if (a2)
  {

    sub_217E70494();
  }

  else
  {
    sub_217E70494();
  }

  free(v2);
}

uint64_t sub_217E5ED14()
{
  v1[3] = &type metadata for KeyedDependencyContainer;
  v1[4] = &protocol witness table for KeyedDependencyContainer;
  v1[0] = MEMORY[0x277D84F98];
  v1[1] = MEMORY[0x277D84F98];
  static Scope.root(dependencyContainer:)(v1, &qword_27CBF2700);
  return sub_217E364B4(v1);
}

uint64_t sub_217E5ED68@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CBF22B0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_27CBF2708;
  v2 = qword_27CBF2710;
  *a1 = qword_27CBF2700;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = xmmword_27CBF2718;
}

uint64_t sub_217E5EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_217E5EE64();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_217E5EE64()
{
  result = qword_27CBF2728[0];
  if (!qword_27CBF2728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF2728);
  }

  return result;
}

uint64_t sub_217E5EEB8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a4, a1, AssociatedTypeWitness);
}

uint64_t sub_217E5EFB0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E5F09C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E5F170(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_217E5F368(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
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

  else if (v10)
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
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t sub_217E5F608@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[3];
  v11 = a1[2];
  v12 = v5;
  v13 = a1[4];
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  v8 = *a2;
  return sub_217E52684(v4, &v8, *(a3 + 16), *(a3 + 24), a4);
}

uint64_t sub_217E5F6A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a2;
  v13 = sub_217E65828(*(a5 + 16), v7, *(a5 + 16), *(a5 + 24));
  v17 = v12;
  sub_217E51A40(a1, v13, v14, v15, &v17, a3, a6, a7);
}

uint64_t sub_217E5F79C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v13 = sub_217E40620();
  v17 = v12;
  sub_217E51A40(a1, v13, v14, v15, &v17, a3, a6, a8);
}

uint64_t View.truth<A>(_:_:definesNewScope:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v21 = a4;
  v8 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v20 - v10;
  v14 = type metadata accessor for TruthViewModifier(0, v8, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  (*(v9 + 16))(v11, a2, v8);
  sub_217E5FA58(a1, v11, a3, v18, v17);

  MEMORY[0x21CEADD60](v17, v21, v14, v22);
  return (*(v15 + 8))(v17, v14);
}

double sub_217E5FA58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v5 = a3;
  v8 = *a1;
  *a5 = a1;
  v9 = *(v8 + *MEMORY[0x277D84308] + 8);
  v10 = type metadata accessor for TruthViewModifier(0, v9, a3, a4);
  (*(*(v9 - 8) + 32))(&a5[v10[7]], a2, v9);
  a5[v10[8]] = v5;
  v11 = &a5[v10[9]];
  *v11 = swift_getKeyPath();
  result = 0.0;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 0;
  return result;
}

uint64_t View.truth<A>(_:_:disambiguation:definesNewScope:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a6;
  v29 = a8;
  v30 = a5;
  v28 = a4;
  v26 = a2;
  v27 = a3;
  v10 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v25 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v25 - v14;
  v16 = *(v10 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  v20 = type metadata accessor for AmbiguousTruthViewModifier(0, v10, a7, v19);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v25 - v22;
  (*(v16 + 16))(v18, v26, v10);
  (*(v12 + 16))(v15, v27, AssociatedTypeWitness);
  sub_217E5FDEC(a1, v18, v15, v28, v25, v23);

  MEMORY[0x21CEADD60](v23, v30, v20, v31);
  return (*(v21 + 8))(v23, v20);
}

double sub_217E5FDEC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v6 = a4;
  v10 = *a1;
  *a6 = a1;
  v11 = *(v10 + *MEMORY[0x277D84308] + 8);
  v12 = type metadata accessor for AmbiguousTruthViewModifier(0, v11, a5, a4);
  (*(*(v11 - 8) + 32))(&a6[v12[9]], a2, v11);
  v13 = v12[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a6[v13], a3, AssociatedTypeWitness);
  a6[v12[11]] = v6;
  v15 = &a6[v12[12]];
  *v15 = swift_getKeyPath();
  result = 0.0;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 0;
  return result;
}

uint64_t sub_217E5FF44(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E63FD4(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
  v4 = sub_217E70454();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  swift_getKeyPath();
  sub_217E60194(v2, *(a2 + 16), v19);
  v16 = v19[0];
  v17 = v19[1];
  v18 = v20;
  WitnessTable = swift_getWitnessTable();
  sub_217E704D4();

  v12 = sub_217E64028();
  v15[0] = WitnessTable;
  v15[1] = v12;
  swift_getWitnessTable();
  sub_217E4F368();
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_217E4F368();
  return (v13)(v10, v4);
}

uint64_t sub_217E60194@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_217E70474();
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TruthViewModifier(0, a2, v9, v10);
  v12 = v11;
  if (*(a1 + *(v11 + 32)) == 1)
  {
    v48 = a2;
    v49 = a3;
    *&v47 = v11;
    v13 = a1 + *(v11 + 36);
    v14 = *v13;
    v15 = *(v13 + 1);
    v17 = *(v13 + 2);
    v16 = *(v13 + 3);
    v18 = *(v13 + 4);
    if (v13[40] == 1)
    {
      v58 = *v13;
      v59 = v15;
      v19 = v15;
      *&v60 = v17;
      *(&v60 + 1) = v16;
      v20 = v16;
      v61 = v18;
    }

    else
    {

      sub_217E70784();
      v28 = sub_217E704C4();
      sub_217E70384();

      sub_217E70464();
      swift_getAtKeyPath();
      sub_217E4F180(v14, v15, v17, v16, v18, 0);
      (*(v50 + 8))(v8, v6);
      v14 = v58;
      v19 = v59;
      v20 = *(&v60 + 1);
      v17 = v60;
      v18 = v61;
    }

    v62 = 0;
    v63 = 0xE000000000000000;
    v29 = v47;
    v30 = sub_217E70A34();
    MEMORY[0x21CEADE80](v30);

    MEMORY[0x21CEADE80](8250, 0xE200000000000000);
    v53 = *a1;
    v31 = v53;
    type metadata accessor for Dependencies(255);
    sub_217E70894();
    sub_217E70914();
    v53 = v14;
    v54 = v19;
    v55 = v17;
    v56 = v20;
    v57 = v18;
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    Scope.subscope(dependencyContainer:tag:)(v51, v62, v63, &v62);

    sub_217E6409C(v51);

    v32 = v62;
    v33 = v63;
    v34 = v64;
    v35 = v65;
    result = sub_217E57624(v31, a1 + *(v29 + 28));
    v37 = v49;
    *v49 = v32;
    v37[1] = v33;
    *(v37 + 1) = v34;
    v37[4] = v35;
  }

  else
  {
    v48 = v6;
    v21 = a1 + *(v11 + 36);
    v22 = *v21;
    v23 = *(v21 + 1);
    v24 = *(v21 + 1);
    v25 = *(v21 + 4);
    v26 = *(v21 + 3);
    v27 = v21[40] == 1;
    v47 = v24;
    if (v27)
    {
      v62 = v22;
      v63 = v23;
      v64 = v24;
      v65 = v25;

      v40 = v47;
    }

    else
    {

      sub_217E70784();
      v38 = sub_217E704C4();
      v49 = a3;
      v39 = v38;
      sub_217E70384();

      a3 = v49;
      sub_217E70464();
      swift_getAtKeyPath();
      sub_217E4F180(v22, v23, v47, v26, v25, 0);
      (*(v50 + 8))(v8, v48);
      v22 = v62;
      v23 = v63;
      v40 = v64;
      v25 = v65;
    }

    v58 = v22;
    v59 = v23;
    v60 = v40;
    v61 = v25;
    sub_217E57624(*a1, a1 + *(v12 + 28));

    v42 = *v21;
    v41 = *(v21 + 1);
    v44 = *(v21 + 2);
    v43 = *(v21 + 3);
    v45 = *(v21 + 4);
    if (v21[40] == 1)
    {
      *a3 = v42;
      a3[1] = v41;
      a3[2] = v44;
      a3[3] = v43;
      a3[4] = v45;
    }

    else
    {

      sub_217E70784();
      v46 = sub_217E704C4();
      sub_217E70384();

      sub_217E70464();
      swift_getAtKeyPath();
      sub_217E4F180(v42, v41, v44, v43, v45, 0);
      return (*(v50 + 8))(v8, v48);
    }
  }

  return result;
}

uint64_t sub_217E606E8(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E63FD4(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
  v4 = sub_217E70454();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  swift_getKeyPath();
  sub_217E60938(v2, *(a2 + 16), *(a2 + 24), v19);
  v16 = v19[0];
  v17 = v19[1];
  v18 = v20;
  WitnessTable = swift_getWitnessTable();
  sub_217E704D4();

  v12 = sub_217E64028();
  v15[0] = WitnessTable;
  v15[1] = v12;
  swift_getWitnessTable();
  sub_217E4F368();
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_217E4F368();
  return (v13)(v10, v4);
}

uint64_t sub_217E60938@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_217E70474();
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AmbiguousTruthViewModifier(0, a2, a3, v11);
  v13 = v12;
  if (*(a1 + *(v12 + 44)) == 1)
  {
    v47 = a3;
    v50 = a4;
    v14 = a1 + *(v12 + 48);
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(v14 + 2);
    v18 = *(v14 + 3);
    v19 = *(v14 + 4);
    v20 = v14[40] == 1;
    v49 = v17;
    *&v48 = v19;
    if (v20)
    {
      v59 = v15;
      v60 = v16;
      *&v61 = v17;
      *(&v61 + 1) = v18;
      v62 = v19;
    }

    else
    {

      sub_217E70784();
      v27 = sub_217E704C4();
      sub_217E70384();

      sub_217E70464();
      swift_getAtKeyPath();
      sub_217E4F180(v15, v16, v49, v18, v48, 0);
      (*(v51 + 8))(v10, v8);
      v15 = v59;
      v16 = v60;
      v18 = *(&v61 + 1);
      v49 = v61;
      *&v48 = v62;
    }

    v63 = 0;
    v64 = 0xE000000000000000;
    v28 = sub_217E70A34();
    MEMORY[0x21CEADE80](v28);

    MEMORY[0x21CEADE80](8250, 0xE200000000000000);
    v54 = *a1;
    v29 = v54;
    type metadata accessor for Dependencies(255);
    sub_217E70894();
    sub_217E70914();
    MEMORY[0x21CEADE80](61, 0xE100000000000000);
    v30 = *(v13 + 36);
    sub_217E70914();
    v54 = v15;
    v55 = v16;
    v56 = v49;
    v57 = v18;
    v58 = v48;
    v53 = 0;
    memset(v52, 0, sizeof(v52));
    Scope.subscope(dependencyContainer:tag:)(v52, v63, v64, &v63);

    sub_217E6409C(v52);

    v31 = v63;
    v32 = v64;
    v33 = v65;
    v34 = v66;
    result = sub_217E57810(v29, a1 + v30, a1 + *(v13 + 40), v47);
    v36 = v50;
    *v50 = v31;
    v36[1] = v32;
    *(v36 + 1) = v33;
    v36[4] = v34;
  }

  else
  {
    v49 = v8;
    v21 = a1 + *(v12 + 48);
    v22 = *v21;
    v23 = *(v21 + 1);
    v24 = *(v21 + 1);
    v25 = *(v21 + 4);
    v26 = *(v21 + 3);
    v20 = v21[40] == 1;
    v48 = v24;
    if (v20)
    {
      v63 = v22;
      v64 = v23;
      v65 = v24;
      v66 = v25;

      v39 = v48;
    }

    else
    {

      sub_217E70784();
      v37 = sub_217E704C4();
      v50 = a4;
      v38 = v37;
      sub_217E70384();

      a4 = v50;
      sub_217E70464();
      swift_getAtKeyPath();
      sub_217E4F180(v22, v23, v48, v26, v25, 0);
      (*(v51 + 8))(v10, v49);
      v22 = v63;
      v23 = v64;
      v39 = v65;
      v25 = v66;
    }

    v59 = v22;
    v60 = v23;
    v61 = v39;
    v62 = v25;
    sub_217E57624(*a1, a1 + *(v13 + 36));

    v41 = *v21;
    v40 = *(v21 + 1);
    v43 = *(v21 + 2);
    v42 = *(v21 + 3);
    v44 = *(v21 + 4);
    if (v21[40] == 1)
    {
      *a4 = v41;
      a4[1] = v40;
      a4[2] = v43;
      a4[3] = v42;
      a4[4] = v44;
    }

    else
    {

      sub_217E70784();
      v45 = sub_217E704C4();
      sub_217E70384();

      sub_217E70464();
      swift_getAtKeyPath();
      sub_217E4F180(v41, v40, v43, v42, v44, 0);
      return (*(v51 + 8))(v10, v49);
    }
  }

  return result;
}

uint64_t View.onChange<A>(of:updateDependency:initial:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v12 = *a1;
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = *(v12 + *MEMORY[0x277D84DE8] + 8);
  v13[4] = a5;
  v13[5] = a6;
  View.onChange<A, B>(of:updateDependency:initial:transform:)(a1, a2, v9, sub_217E65478, v13, a4, a5, a6, a6);
}

uint64_t View.onChange<A, B>(of:updateDependency:initial:transform:)(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *a1;
  v16 = *a2;
  memset(&v23[8], 0, 33);
  *v23 = swift_getKeyPath();
  *&v24 = a2;
  *(&v24 + 1) = a1;
  LOBYTE(v25) = a3;
  *(&v25 + 1) = a4;
  v26 = a5;
  v17 = *(v15 + *MEMORY[0x277D84DE8] + 8);
  v18 = *(v16 + *MEMORY[0x277D84308] + 8);

  *&v27 = v17;
  *(&v27 + 1) = v18;
  *&v28 = a9;
  *(&v28 + 1) = a8;
  updated = type metadata accessor for UpdateTruthFromEnvironmentViewModifier(0, &v27);
  MEMORY[0x21CEADD60](v23, a6, updated, a7);
  v30 = v24;
  v31 = v25;
  v32 = v26;
  v27 = *v23;
  v28 = *&v23[16];
  v29 = *&v23[32];
  return (*(*(updated - 8) + 8))(&v27, updated);
}

uint64_t View.onChange<A>(of:updateDependency:disambiguation:initial:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a1;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = *(v17 + *MEMORY[0x277D84DE8] + 8);
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  View.onChange<A, B>(of:updateDependency:disambiguation:initial:transform:)(a1, a2, a3, a4, sub_217E61550, v18, a5, a6, a9, a7, a8, a7);
}

uint64_t View.onChange<A, B>(of:updateDependency:disambiguation:initial:transform:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32 = a8;
  v30 = a9;
  v31 = a7;
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v25 = a10;
  v26 = a3;
  v14 = *a1;
  v15 = *(*a2 + *MEMORY[0x277D84308] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v25 - v18;
  v33[0] = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v33[1] = v15;
  v33[2] = a12;
  v33[3] = a10;
  v33[4] = a11;
  updated = type metadata accessor for UpdateAmbiguousTruthFromEnvironmentViewModifier(0, v33);
  v21 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v23 = &v25 - v22;
  (*(v17 + 16))(v19, v26, AssociatedTypeWitness);
  sub_217E615A0(a2, a1, v19, v27, v28, v29, a12, v25, v23, a11);

  MEMORY[0x21CEADD60](v23, v31, updated, v32);
  return (*(v21 + 8))(v23, updated);
}

uint64_t sub_217E615A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *a1;
  v18 = *a2;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0u;
  *(a9 + 24) = 0u;
  *(a9 + 40) = 0;
  *(a9 + 48) = a1;
  *(a9 + 56) = a2;
  v19 = *(v17 + *MEMORY[0x277D84308] + 8);
  v27[0] = *(v18 + *MEMORY[0x277D84DE8] + 8);
  v27[1] = v19;
  v27[2] = a7;
  v27[3] = a8;
  v27[4] = a10;
  updated = type metadata accessor for UpdateAmbiguousTruthFromEnvironmentViewModifier(0, v27);
  v21 = updated[17];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v21, a3, AssociatedTypeWitness);
  *(a9 + updated[18]) = a4;
  v24 = (a9 + updated[19]);
  *v24 = a5;
  v24[1] = a6;
  return result;
}

void sub_217E61738(void *a1)
{
  sub_217E63FD4(319, qword_27CBF2930, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Dependencies(255);
    sub_217E70894();
    if (v2 <= 0x3F)
    {
      sub_217E70474();
      sub_217E70A24();
      if (v3 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        if (v4 <= 0x3F)
        {
          sub_217E5DCDC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217E61864(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((((v9 + 64) & ~v9) + v10) & 0xFFFFFFFFFFFFFFF8) + 24;
  v12 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 - v8 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v11)) == 0)
  {
LABEL_28:
    v19 = a1 & 0xFFFFFFFFFFFFFFF8;
    if ((v7 & 0x80000000) != 0)
    {
      v21 = *(v6 + 48);

      return v21((((v19 + 63) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
    }

    else
    {
      v20 = *(v19 + 48);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void sub_217E61A08(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((v9 + 64) & ~v9) + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v9 + 64) & ~v9) + *(v7 + 64)) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v8 & 0x80000000) != 0)
      {
        v20 = *(v7 + 56);

        v20((((v18 + 63) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = (a2 - 1);
        }

        *(v18 + 48) = v19;
      }

      return;
    }
  }

  if (((((v9 + 64) & ~v9) + *(v7 + 64)) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 64) & ~v9) + *(v7 + 64)) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t sub_217E61C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_217E61C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_217E61C64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E61CAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217E61D08(uint64_t a1)
{
  type metadata accessor for Dependencies(255);
  AssociatedTypeWitness = sub_217E70894();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        sub_217E63FD4(319, qword_27CBF2930, MEMORY[0x277CDF468]);
        AssociatedTypeWitness = v5;
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_217E61E20(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_31;
  }

  v15 = ((((v11 + v12 + ((v10 + 8) & ~v10)) & ~v12) + *(*(AssociatedTypeWitness - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 49;
  if (v15 <= 3)
  {
    v16 = ((a2 - v14 + 255) >> 8) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *&a1[v15];
      if (!v19)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v14 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v15];
    if (a1[v15])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if ((v13 & 0x80000000) != 0)
  {
    v24 = &a1[v10 + 8] & ~v10;
    if (v7 == v14)
    {
      v25 = *(v6 + 48);

      return v25(v24, v7, v5);
    }

    else
    {
      v26 = *(v9 + 48);
      v27 = (v24 + v11 + v12) & ~v12;

      return v26(v27);
    }
  }

  else
  {
    v23 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }
}

void sub_217E620AC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + *(*(AssociatedTypeWitness - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 49;
  if (v16 >= a3)
  {
    v20 = 0;
    if (v16 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v16 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v16 >= a2)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        if ((v15 & 0x80000000) != 0)
        {
          v24 = (a1 + v12 + 8) & ~v12;
          if (v9 == v16)
          {
            v25 = *(v28 + 56);

            v25(v24, a2, v9, v7);
          }

          else
          {
            v26 = *(v11 + 56);
            v27 = (v24 + v13 + v14) & ~v14;

            v26(v27, a2);
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v23 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v23 = (a2 - 1);
          }

          *a1 = v23;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }
  }

  v21 = ~v16 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v22 = (v21 >> 8) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_30:
      if (v20 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void sub_217E62390(uint64_t a1)
{
  type metadata accessor for Dependencies(255);
  sub_217E70894();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_217E63FD4(319, qword_27CBF2930, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217E62468(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 49;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))(&a1[v6 + 8] & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_217E625C4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 49;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);
        v19 = &a1[v9 + 8] & ~v9;

        v18(v19);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v17 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v17 = a2 - 1;
        }

        *a1 = v17;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_217E627C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = sub_217E70474();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v60 = *(a1 + 16);
  v52 = v7;
  v53 = v6;
  v61.n128_u64[0] = v6;
  v61.n128_u64[1] = v7;
  updated = type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier(0, &v60);
  v9 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v51 = (&v38 - v10);
  swift_getWitnessTable();
  v48 = sub_217E704A4();
  v11 = sub_217E70454();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v38 - v15;
  v17 = *v2;
  v16 = *(v2 + 8);
  v18 = *(v2 + 16);
  v19 = *(v2 + 32);
  v20 = *(v2 + 40);
  v21 = *(v2 + 48);
  v55 = *(v2 + 56);
  v46 = *(v2 + 64);
  v22 = *(v2 + 72);
  v23 = *(v2 + 80);
  v45 = v22;
  v47 = v21;
  v54 = v18;
  if (v20 == 1)
  {
    *&v60 = v17;
    *(&v60 + 1) = v16;
    v61 = v18;
    v62 = v19;

    sub_217E64140(v17, v16, v54.n128_i64[0], v54.n128_i64[1], v19, 1);
    v29 = v54;
  }

  else
  {

    v40 = v54.n128_u64[0];
    v41 = a2;
    v39 = v54.n128_i64[1];
    sub_217E64140(v17, v16, v54.n128_i64[0], v54.n128_i64[1], v19, 0);
    sub_217E70784();
    v24 = sub_217E704C4();
    v54.n128_u64[0] = v23;
    v25 = v12;
    v26 = v24;
    sub_217E70384();

    v12 = v25;
    v27 = v42;
    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E4F180(v17, v16, v40, v39, v19, 0);
    v28 = v27;
    v23 = v54.n128_u64[0];
    (*(v43 + 8))(v28, v44);
    v16 = *(&v60 + 1);
    v17 = v60;
    v29 = v61;
    v19 = v62;
  }

  v58[0].n128_u64[0] = v17;
  v58[0].n128_u64[1] = v16;
  v58[1] = v29;
  v59 = v19;
  v30 = v51;
  sub_217E62CE8(v47, v55, v46, v58, v45, v23, v53, v52, v51);

  v31 = v48;
  WitnessTable = swift_getWitnessTable();
  v33 = v49;
  MEMORY[0x21CEADD60](v30, v31, updated, WitnessTable);
  (*(v9 + 8))(v30, updated);
  v34 = swift_getWitnessTable();
  v56 = WitnessTable;
  v57 = v34;
  swift_getWitnessTable();
  v35 = v50;
  sub_217E4F368();
  v36 = *(v12 + 8);
  v36(v33, v11);
  sub_217E4F368();
  return (v36)(v35, v11);
}

__n128 sub_217E62CE8@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v16 = *a1;
  v25 = a4[1];
  v17 = a4[2].n128_u64[0];
  v18 = *a2;
  *a9 = swift_getKeyPath();
  sub_217E33B9C(0, &qword_27CBF2AB8, _s11ValueReaderVMa, MEMORY[0x277CDF458]);
  v24 = *a4;
  swift_storeEnumTagMultiPayload();
  v19 = *(v16 + *MEMORY[0x277D84308] + 8);
  v28[0] = *(v18 + *MEMORY[0x277D84DE8] + 8);
  v28[1] = v19;
  v28[2] = a7;
  v28[3] = a8;
  updated = type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier(0, v28);
  *(a9 + updated[13]) = a1;
  *(a9 + updated[14]) = a2;
  *(a9 + updated[15]) = a3;
  v21 = (a9 + updated[16]);
  result = v25;
  *v21 = v24;
  v21[1] = v25;
  v21[2].n128_u64[0] = v17;
  v23 = (a9 + updated[17]);
  *v23 = a5;
  v23[1] = a6;
  return result;
}

uint64_t sub_217E62E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v72 = a3;
  v69 = *(a2 - 8);
  v70 = *(v69 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v68 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = (v7 + 40);
  v8 = *(v7 + 16);
  v73 = v8;
  v75 = *(v8 - 8);
  MEMORY[0x28223BE20](v5);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s11ValueReaderVMa(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 24);
  v59 = v15;
  v65 = *(v15 - 8);
  MEMORY[0x28223BE20](v12);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v17 = sub_217E704A4();
  type metadata accessor for TruthViewModifier(255, v15, v18, v19);
  v54 = v17;
  v20 = sub_217E70454();
  v66 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v74 = &v51 - v21;
  WitnessTable = swift_getWitnessTable();
  v53 = WitnessTable;
  v23 = swift_getWitnessTable();
  v80 = WitnessTable;
  v81 = v23;
  v60 = v20;
  v61 = swift_getWitnessTable();
  v56 = *(a2 + 32);
  v76 = v20;
  v77 = v8;
  v78 = v61;
  v79 = v56;
  v62 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = *(OpaqueTypeMetadata2 - 8);
  v63 = OpaqueTypeMetadata2;
  v64 = v25;
  v26 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v55 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v58 = &v51 - v28;
  v29 = *(v3 + *(a2 + 52));
  v30 = *(v3 + *(a2 + 68));
  sub_217E64FC4(v14);
  swift_getAtKeyPath();
  sub_217E651A0(v14);
  v31 = v57;
  v30(v10);
  v32 = *(v75 + 8);
  v75 += 8;
  v52 = v32;
  v32(v10, v73);
  View.truth<A>(_:_:definesNewScope:)(v29, v31, 0, v54, v53);
  v33 = v31;
  v34 = v59;
  (*(v65 + 8))(v33, v59);
  sub_217E64FC4(v14);
  swift_getAtKeyPath();
  sub_217E651A0(v14);
  v36 = v68;
  v35 = v69;
  (*(v69 + 16))(v68, v3, a2);
  v37 = (*(v35 + 80) + 48) & ~*(v35 + 80);
  v38 = swift_allocObject();
  v39 = v56;
  *&v40 = v56;
  *(&v40 + 1) = *v71;
  v41 = v73;
  *&v42 = v73;
  *(&v42 + 1) = v34;
  *(v38 + 16) = v42;
  *(v38 + 32) = v40;
  (*(v35 + 32))(v38 + v37, v36, a2);
  v43 = v55;
  v44 = v60;
  v45 = v61;
  v46 = v74;
  sub_217E704F4();

  v52(v10, v41);
  (*(v66 + 8))(v46, v44);
  v76 = v44;
  v77 = v41;
  v78 = v45;
  v79 = v39;
  swift_getOpaqueTypeConformance2();
  v47 = v58;
  v48 = v63;
  sub_217E4F368();
  v49 = *(v64 + 8);
  v49(v43, v48);
  sub_217E4F368();
  return (v49)(v47, v48);
}

uint64_t sub_217E63544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v11;
  v23 = v12;
  v24 = v13;
  *&v25 = v14;
  updated = type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier(0, &v22);
  (*(a3 + updated[17]))(a2);
  v16 = (a3 + updated[16]);
  v17 = v16[1];
  v18 = v16[2];
  v22 = *v16;
  v23 = v17;
  v24 = v18;
  v25 = *(v16 + 3);
  v19 = *(a3 + updated[13]);

  sub_217E57624(v19, v10);

  return (*(v8 + 8))(v10, a5);
}

uint64_t sub_217E636B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_217E70474();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_217E63724(uint64_t a1, uint64_t a2)
{
  v42 = sub_217E70474();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a2 + 48);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v38 - v9;
  *&v11 = *(a2 + 16);
  *(&v11 + 1) = v6;
  v46 = *(a2 + 32);
  v60 = v11;
  v61 = v46;
  v53 = v5;
  v62 = v5;
  updated = type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier(0, &v60);
  v51 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v49 = &v38 - v13;
  swift_getWitnessTable();
  v45 = sub_217E704A4();
  v14 = sub_217E70454();
  v52 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v47 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v38 - v17;
  v18 = *(v2 + 48);
  v55 = *(v2 + 56);
  v19 = *(v8 + 16);
  v20 = v2 + *(a2 + 68);
  v50 = v10;
  v19(v10, v20, AssociatedTypeWitness);
  v43 = *(v2 + *(a2 + 72));
  v22 = *v2;
  v21 = *(v2 + 8);
  v23 = *(v2 + 16);
  v24 = *(v2 + 32);
  v25 = *(v2 + 40) == 1;
  v44 = v18;
  v54 = v23;
  if (v25)
  {
    *&v60 = v22;
    *(&v60 + 1) = v21;
    v61 = v23;
    v62 = v24;

    sub_217E64140(v22, v21, v54.n128_i64[0], v54.n128_i64[1], v24, 1);
    v29 = v54;
  }

  else
  {

    v38 = v54.n128_i64[1];
    v39 = v54.n128_u64[0];
    sub_217E64140(v22, v21, v54.n128_i64[0], v54.n128_i64[1], v24, 0);
    sub_217E70784();
    v26 = sub_217E704C4();
    v54.n128_u64[0] = updated;
    v27 = v26;
    sub_217E70384();

    updated = v54.n128_u64[0];
    v28 = v40;
    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E4F180(v22, v21, v39, v38, v24, 0);
    (*(v41 + 8))(v28, v42);
    v21 = *(&v60 + 1);
    v22 = v60;
    v29 = v61;
    v24 = v62;
  }

  v58[0].n128_u64[0] = v22;
  v58[0].n128_u64[1] = v21;
  v58[1] = v29;
  v59 = v24;
  v30 = v49;
  sub_217E63D30(v44, v55, v50, v43, v58, *(v2 + *(a2 + 76)), *(v2 + *(a2 + 76) + 8), v46, v49, *(&v46 + 1), v53);

  v31 = v45;
  WitnessTable = swift_getWitnessTable();
  v33 = v47;
  MEMORY[0x21CEADD60](v30, v31, updated, WitnessTable);
  (*(v51 + 8))(v30, updated);
  v34 = swift_getWitnessTable();
  v56 = WitnessTable;
  v57 = v34;
  swift_getWitnessTable();
  v35 = v48;
  sub_217E4F368();
  v36 = *(v52 + 8);
  v36(v33, v14);
  sub_217E4F368();
  return (v36)(v35, v14);
}

__n128 sub_217E63D30@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, __n128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a1;
  v17 = *a2;
  v27 = a5[1];
  v18 = a5[2].n128_u64[0];
  *a9 = swift_getKeyPath();
  sub_217E33B9C(0, &qword_27CBF2AB8, _s11ValueReaderVMa, MEMORY[0x277CDF458]);
  v26 = *a5;
  swift_storeEnumTagMultiPayload();
  v19 = *(v16 + *MEMORY[0x277D84308] + 8);
  v32[0] = *(v17 + *MEMORY[0x277D84DE8] + 8);
  v32[1] = v19;
  v32[2] = a8;
  v32[3] = a10;
  v32[4] = a11;
  updated = type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier(0, v32);
  *&a9[updated[15]] = a1;
  *&a9[updated[16]] = a2;
  v21 = updated[17];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a9[v21], a3, AssociatedTypeWitness);
  a9[updated[18]] = a4;
  v23 = &a9[updated[19]];
  result = v27;
  *v23 = v26;
  *(v23 + 1) = v27;
  *(v23 + 4) = v18;
  v25 = &a9[updated[20]];
  *v25 = a6;
  *(v25 + 1) = a7;
  return result;
}

void sub_217E63FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Scope);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_217E64028()
{
  result = qword_27CBF2370;
  if (!qword_27CBF2370)
  {
    sub_217E63FD4(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2370);
  }

  return result;
}

uint64_t sub_217E6409C(uint64_t a1)
{
  sub_217E33B9C(0, &qword_2811B0F90, sub_217E42344, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217E64140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

uint64_t _s11ValueReaderVMa(uint64_t a1)
{
  result = qword_27CBF2AC0;
  if (!qword_27CBF2AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217E64218(uint64_t a1)
{
  result = sub_217E70474();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_217E6428C(uint64_t a1)
{
  sub_217E33B9C(319, qword_27CBF2AD0, _s11ValueReaderVMa, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Dependencies(255);
    sub_217E70894();
    if (v2 <= 0x3F)
    {
      sub_217E70474();
      sub_217E70A24();
      if (v3 <= 0x3F)
      {
        sub_217E5DCDC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_217E643D8(void *a1)
{
  sub_217E33B9C(319, qword_27CBF2AD0, _s11ValueReaderVMa, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Dependencies(255);
    sub_217E70894();
    if (v2 <= 0x3F)
    {
      sub_217E70474();
      sub_217E70A24();
      if (v3 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        if (v4 <= 0x3F)
        {
          sub_217E5DCDC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217E64528(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(sub_217E70474() - 8) + 64);
  if (v5 <= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_31;
  }

  v13 = ((((((v11 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v10 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_31:
    v21 = ((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((v9 & 0x80000000) != 0)
    {
      v23 = *(v8 + 48);

      return v23((((v21 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11);
    }

    else
    {
      v22 = *v21;
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v10 + (v14 | v20) + 1;
}

void sub_217E64724(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(sub_217E70474() - 8) + 64);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((((v11 + (((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(v9 + 64)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((((v11 + (((v8 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 8) & ~v11) + *(v9 + 64)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_20:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v20 = ((a1 + v8 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v22 = *(v9 + 56);

        v22((((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = (a2 - 1);
        }

        *v20 = v21;
      }

      return;
    }
  }

  if (((((((v11 + (((v8 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 8) & ~v11) + *(v9 + 64)) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (v13)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

uint64_t sub_217E649C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a3;
  v5 = *(a2 - 8);
  v39 = *(v5 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v38 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s11ValueReaderVMa(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v14 = sub_217E704A4();
  v34 = v14;
  WitnessTable = swift_getWitnessTable();
  v16 = *(a2 + 32);
  v43 = v14;
  v44 = v9;
  v45 = WitnessTable;
  v46 = v16;
  v35 = WitnessTable;
  v36 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v37 = *(OpaqueTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v32 - v21;
  sub_217E64FC4(v13);
  swift_getAtKeyPath();
  sub_217E651A0(v13);
  v32[3] = *(v3 + *(a2 + 72));
  v23 = v38;
  (*(v5 + 16))(v38, v3, a2);
  v24 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v25 = swift_allocObject();
  v26 = *(a2 + 24);
  *(v25 + 16) = v9;
  *(v25 + 24) = v26;
  *(v25 + 32) = v16;
  *(v25 + 40) = *(a2 + 40);
  (*(v5 + 32))(v25 + v24, v23, a2);
  v27 = swift_checkMetadataState();
  v28 = v33;
  v29 = v35;
  sub_217E704F4();

  (*(v40 + 8))(v28, v9);
  v43 = v27;
  v44 = v9;
  v45 = v29;
  v46 = v16;
  swift_getOpaqueTypeConformance2();
  sub_217E4F368();
  v30 = *(v37 + 8);
  v30(v20, OpaqueTypeMetadata2);
  sub_217E4F368();
  return (v30)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_217E64DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v16;
  v30 = v17;
  v31 = v18;
  *&v32 = v19;
  *(&v32 + 1) = v20;
  updated = type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier(0, &v29);
  (*(a3 + updated[20]))(a2);
  v22 = (a3 + updated[19]);
  v23 = v22[1];
  v24 = v22[2];
  v29 = *v22;
  v30 = v23;
  v31 = v24;
  v32 = *(v22 + 3);
  v25 = *(a3 + updated[15]);
  v26 = updated[17];

  sub_217E57980(v25, v15, a3 + v26, a7, a8);

  return (*(v13 + 8))(v15, a5);
}

uint64_t sub_217E64FC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_217E70474();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E33B9C(0, &qword_27CBF2AB8, _s11ValueReaderVMa, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_217E652B8(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_217E6534C(v10, a1);
  }

  sub_217E70784();
  v12 = sub_217E704C4();
  sub_217E70384();

  sub_217E70464();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_217E651A0(uint64_t a1)
{
  v2 = _s11ValueReaderVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217E651FC(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for UpdateScopeWithEnvironmentTruthViewModifier(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_217E63544(a1, a2, v10, v5, v6);
}

uint64_t sub_217E652B8(uint64_t a1, uint64_t a2)
{
  sub_217E33B9C(0, &qword_27CBF2AB8, _s11ValueReaderVMa, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E6534C(uint64_t a1, uint64_t a2)
{
  v4 = _s11ValueReaderVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E653B0(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v10 = *(type metadata accessor for UpdateScopeWithAmbiguousEnvironmentTruthViewModifier(0, v13) - 8);
  v11 = v2 + ((*(v10 + 80) + 56) & ~*(v10 + 80));

  return sub_217E64DE4(a1, a2, v11, v5, v6, v7, v8, v9);
}

uint64_t sub_217E6547C(uint64_t a1)
{
  v2 = sub_217E70A04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E35110(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v12 - v7;
  v9 = *(v1 + 2);
  v13 = *v1;
  v14 = v9;
  v12[1] = MEMORY[0x277D84F90];
  v10 = sub_217E709F4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v3 + 104))(v5, *MEMORY[0x277D84C38], v2);
  sub_217E35110(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();

  return sub_217E70A14();
}

uint64_t sub_217E65698()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_217E656C8()
{
  v1 = *v0;
  sub_217E709A4();
  MEMORY[0x21CEAE230](v1);
  sub_217E705F4();
  return sub_217E709D4();
}

uint64_t sub_217E6572C(uint64_t a1)
{
  MEMORY[0x21CEAE230](*v1);

  return sub_217E705F4();
}

uint64_t sub_217E65780(uint64_t a1)
{
  v2 = *v1;
  sub_217E709A4();
  MEMORY[0x21CEAE230](v2);
  sub_217E705F4();
  return sub_217E709D4();
}

uint64_t sub_217E657E0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_217E70924();
  }
}

uint64_t sub_217E65828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  sub_217E709E4();
  MEMORY[0x21CEAE230](a3);
  swift_getAssociatedConformanceWitness();
  sub_217E70594();
  v10 = sub_217E709C4();
  (*(v7 + 16))(v9, a2, AssociatedTypeWitness);
  sub_217E705D4();
  return v10;
}

uint64_t sub_217E659E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v6 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - v8;
  v11 = *(v4 + *(*v10 + 28));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17[3] = AssociatedTypeWitness;
  v17[4] = swift_getAssociatedConformanceWitness();
  v13 = sub_217E360A4(v17);
  (*(*(AssociatedTypeWitness - 8) + 16))(v13, a3, AssociatedTypeWitness);
  swift_beginAccess();
  sub_217E681BC(v17, v11 + 16);
  swift_endAccess();
  (*(v7 + 16))(v9, v16, v6);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217E65BC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v7 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v16 - v9;
  v12 = *(v5 + *(*v11 + 28));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18[3] = AssociatedTypeWitness;
  v18[4] = swift_getAssociatedConformanceWitness();
  v14 = sub_217E360A4(v18);
  (*(*(AssociatedTypeWitness - 8) + 16))(v14, a3, AssociatedTypeWitness);
  swift_beginAccess();
  sub_217E681BC(v18, v12 + 16);
  swift_endAccess();
  (*(v8 + 16))(v10, v17, v7);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_217E65D98@<X0>(uint64_t a1@<X1>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_217E70794();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-v10];
  swift_beginAccess();
  sub_217E6823C(v4 + 16, v17);
  sub_217E33138(0, &qword_2811B0DF0, sub_217E42CEC);
  v12 = swift_dynamicCast();
  v13 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v12)
  {
    v14 = *(AssociatedTypeWitness - 8);
    v13(v11, 0, 1, AssociatedTypeWitness);
    return (*(v14 + 32))(a4, v11, AssociatedTypeWitness);
  }

  else
  {
    v13(v11, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v11, v8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return (*(AssociatedConformanceWitness + 24))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_217E66014(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + *(*(*a1 + *MEMORY[0x277D84DE8]) + 28));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v9[4] = swift_getAssociatedConformanceWitness();
  v7 = sub_217E360A4(v9);
  (*(*(AssociatedTypeWitness - 8) + 16))(v7, a2, AssociatedTypeWitness);
  swift_beginAccess();
  sub_217E681BC(v9, v5 + 16);
  swift_endAccess();
  return swift_getAtKeyPath();
}

uint64_t Dependencies.subscript.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v8 = *(type metadata accessor for Dependencies(0) + 24);
  v10 = *(v4 + 8);
  return sub_217E6AF4C(v4 + v8, &v10, a2, a3, x8_0);
}

uint64_t Dependencies.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = a3;
  v15[3] = a4;
  v8 = *(v4 + 8);
  v15[4] = a1;
  v16 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for StaticTruth(0, AssociatedTypeWitness, v10, v11);
  WitnessTable = swift_getWitnessTable();
  sub_217E6A4E8(sub_217E66420, v15, a3, &v16, v12, a3, WitnessTable, a4);
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18[-v11];
  v19 = a3;
  v20 = a4;
  v21 = a1;
  type metadata accessor for Dependencies(0);
  sub_217E65D98(v4, v12);
  v22 = *(v4 + 8);
  v15 = type metadata accessor for StaticTruth(0, AssociatedTypeWitness, v13, v14);
  WitnessTable = swift_getWitnessTable();
  sub_217E6A730(sub_217E66CDC, v18, a3, v12, &v22, v15, a3, WitnessTable, a4);
  (*(v10 + 8))(v12, v9);
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

uint64_t sub_217E66334@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, AssociatedTypeWitness);
  return StaticTruth.init(state:)(v8, AssociatedTypeWitness, x8_0);
}

void (*Dependencies.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v10[6] = v14;
  v10[7] = *v4;
  v16 = *(type metadata accessor for Dependencies(0) + 24);
  v18 = v4[1];
  sub_217E6AF4C(v4 + v16, &v18, a3, a4, v15);
  return sub_217E665D0;
}

{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x70uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v5;
  *v10 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[3] = AssociatedTypeWitness;
  v27 = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[6] = v16;
  v18 = swift_checkMetadataState();
  v11[7] = v18;
  v19 = *(v18 - 8);
  v11[8] = v19;
  v20 = *(v19 + 64);
  if (v9)
  {
    v11[9] = swift_coroFrameAlloc();
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v11[9] = malloc(*(v19 + 64));
    v21 = malloc(v20);
  }

  v22 = v21;
  v11[10] = v21;
  v11[11] = *v5;
  v23 = type metadata accessor for Dependencies(0);
  v11[12] = *(v5 + *(v23 + 28));
  sub_217E65D98(v5, v17);
  v24 = *(v23 + 24);
  v28 = v5[1];
  sub_217E6B000(v17, v5 + v24, &v28, a3, a4, v22);
  v25 = *(v14 + 8);
  v25(v17, v27);
  v11[13] = v25;
  return sub_217E66FC8;
}

void sub_217E665D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v5 = (*a1)[4];
  v4 = (*a1)[5];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    v10 = (*(v5 + 16))((*a1)[5], v3, v6);
    v24 = &v24;
    MEMORY[0x28223BE20](v10);
    v21 = v9;
    v22 = v8;
    v23 = v4;
    v25 = *(v7 + 8);
    v13 = type metadata accessor for StaticTruth(0, v6, v11, v12);
    WitnessTable = swift_getWitnessTable();
    sub_217E6A4E8(sub_217E682C4, v20, v9, &v25, v13, v9, WitnessTable, v8);
    v15 = *(v5 + 8);
    v15(v4, v6);
    v15(v3, v6);
  }

  else
  {
    v24 = &v24;
    MEMORY[0x28223BE20](a1);
    v21 = v9;
    v22 = v8;
    v23 = v3;
    v25 = *(v7 + 8);
    v18 = type metadata accessor for StaticTruth(0, v6, v16, v17);
    v19 = swift_getWitnessTable();
    sub_217E6A4E8(sub_217E682C4, v20, v9, &v25, v18, v9, v19, v8);
    (*(v5 + 8))(v3, v6);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t Dependencies.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v14 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v13 - v8;
  v10 = type metadata accessor for Dependencies(0);
  sub_217E65D98(v3, v9);
  v11 = *(v10 + 24);
  v15 = *(v3 + 8);
  sub_217E6B000(v9, v3 + v11, &v15, a1, a2, v14);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_217E66BF0@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, AssociatedTypeWitness);
  return StaticTruth.init(state:)(v8, AssociatedTypeWitness, x8_0);
}

void sub_217E66FC8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[13];
  v4 = (*a1)[10];
  v35 = (*a1)[11];
  v36 = v3;
  v37 = v4;
  v5 = v2[8];
  v6 = v2[9];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[5];
  v11 = v2[2];
  v10 = v2[3];
  v33 = v2[4];
  v34 = v10;
  v13 = *v2;
  v12 = v2[1];
  if (a2)
  {
    v14 = (*(v5 + 16))(v6, v37, v8);
    v31 = &v31;
    MEMORY[0x28223BE20](v14);
    v32 = v7;
    v28 = v13;
    v29 = v12;
    v30 = v6;
    sub_217E65D98(v11, v9);
    v38 = *(v11 + 8);
    v17 = type metadata accessor for StaticTruth(0, v8, v15, v16);
    WitnessTable = swift_getWitnessTable();
    v25 = v12;
    v19 = v6;
    v7 = v32;
    sub_217E6A730(sub_217E682C8, v27, v13, v9, &v38, v17, v13, WitnessTable, v25);
    v36(v9, v34);
    v20 = *(v5 + 8);
    v20(v6, v8);
    v20(v37, v8);
  }

  else
  {
    v31 = &v31;
    MEMORY[0x28223BE20](a1);
    v32 = v6;
    v28 = v13;
    v29 = v12;
    v30 = v37;
    sub_217E65D98(v11, v9);
    v38 = *(v11 + 8);
    v23 = type metadata accessor for StaticTruth(0, v8, v21, v22);
    v24 = swift_getWitnessTable();
    v26 = v12;
    v19 = v32;
    sub_217E6A730(sub_217E682C8, v27, v13, v9, &v38, v23, v13, v24, v26);
    v36(v9, v34);
    (*(v5 + 8))(v37, v8);
  }

  free(v37);
  free(v19);
  free(v7);
  free(v9);
  free(v2);
}

uint64_t Dependencies.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a1;
  v21 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for StaticTruth(0, AssociatedTypeWitness, v11, v12);
  WitnessTable = swift_getWitnessTable();
  sub_217E6A590(sub_217E673BC, v16, a3, &v21, v13, a3, WitnessTable, a4, a5);
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

{
  v6 = v5;
  v22 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a1;
  type metadata accessor for Dependencies(0);
  sub_217E65D98(v6, v15);
  v28 = *(v6 + 8);
  v18 = type metadata accessor for StaticTruth(0, AssociatedTypeWitness, v16, v17);
  WitnessTable = swift_getWitnessTable();
  sub_217E6A7E0(sub_217E67BC4, v23, a3, v15, &v28, v18, a3, WitnessTable, a4, a5);
  (*(v13 + 8))(v15, v12);
  return (*(*(AssociatedTypeWitness - 8) + 8))(v22, AssociatedTypeWitness);
}

void (*Dependencies.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v10 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x48uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[2] = a5;
  v11[3] = v5;
  *v11 = a3;
  v11[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12[4] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v12[5] = v14;
  v15 = *(v14 + 64);
  if (v10)
  {
    v12[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v12[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v12[7] = v16;
  v12[8] = *v5;
  v18 = *(type metadata accessor for Dependencies(0) + 24);
  v20 = v5[1];
  sub_217E3ECCC(v5 + v18, &v20, a3, a4, a5, v17);
  return sub_217E67574;
}

{
  v6 = v5;
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x78uLL);
  }

  v13 = v12;
  v30 = a5;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v6;
  *v12 = a3;
  v12[1] = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[4] = AssociatedTypeWitness;
  v29 = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = v15;
  v13[5] = v15;
  v17 = *(v15 + 64);
  if (v11)
  {
    v13[6] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v13[6] = malloc(*(v15 + 64));
    v18 = malloc(v17);
  }

  v19 = v18;
  v13[7] = v18;
  v20 = swift_checkMetadataState();
  v13[8] = v20;
  v21 = *(v20 - 8);
  v13[9] = v21;
  v22 = *(v21 + 64);
  if (v11)
  {
    v13[10] = swift_coroFrameAlloc();
    v23 = swift_coroFrameAlloc();
  }

  else
  {
    v13[10] = malloc(*(v21 + 64));
    v23 = malloc(v22);
  }

  v24 = v23;
  v13[11] = v23;
  v13[12] = *v6;
  v25 = type metadata accessor for Dependencies(0);
  v13[13] = *(v6 + *(v25 + 28));
  sub_217E65D98(v6, v19);
  v26 = *(v25 + 24);
  v31 = v6[1];
  sub_217E6B244(v19, v6 + v26, &v31, a3, a4, v30, v24);
  v27 = *(v16 + 8);
  v27(v19, v29);
  v13[14] = v27;
  return sub_217E67EB8;
}

void sub_217E67574(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v31 = (*a1)[8];
  v5 = v2[5];
  v4 = v2[6];
  v7 = v2[3];
  v6 = v2[4];
  v9 = v2[1];
  v8 = v2[2];
  v10 = *v2;
  if (a2)
  {
    v11 = (*(v5 + 16))(v2[6], v3, v2[4]);
    v30 = &v29;
    MEMORY[0x28223BE20](v11);
    v25 = v10;
    v26 = v9;
    v27 = v8;
    v28 = v4;
    v32 = *(v7 + 8);
    v14 = type metadata accessor for StaticTruth(0, v6, v12, v13);
    WitnessTable = swift_getWitnessTable();
    v22 = v8;
    v16 = v4;
    sub_217E6A590(sub_217E682BC, v24, v10, &v32, v14, v10, WitnessTable, v9, v22);
    v17 = *(v5 + 8);
    v17(v4, v6);
    v17(v3, v6);
  }

  else
  {
    v30 = &v29;
    MEMORY[0x28223BE20](a1);
    v25 = v10;
    v26 = v9;
    v27 = v8;
    v28 = v3;
    v32 = *(v7 + 8);
    v20 = type metadata accessor for StaticTruth(0, v6, v18, v19);
    v21 = swift_getWitnessTable();
    v23 = v8;
    v16 = v4;
    sub_217E6A590(sub_217E682BC, v24, v10, &v32, v20, v10, v21, v9, v23);
    (*(v5 + 8))(v3, v6);
  }

  free(v3);
  free(v16);
  free(v2);
}

uint64_t Dependencies.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v14 = a4;
  v15 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14 - v9;
  v11 = type metadata accessor for Dependencies(0);
  sub_217E65D98(v4, v10);
  v12 = *(v11 + 24);
  v16 = *(v4 + 8);
  sub_217E6B244(v10, v4 + v12, &v16, a1, a2, v15, v14);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

void sub_217E67EB8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[14];
  v4 = (*a1)[11];
  v36 = (*a1)[12];
  v37 = v3;
  v5 = v2[9];
  v6 = v2[10];
  v7 = v2[8];
  v38 = v2[7];
  v8 = v2[6];
  v10 = v2[3];
  v9 = v2[4];
  v34 = v2[5];
  v35 = v9;
  v11 = v2[1];
  v12 = v2[2];
  v13 = *v2;
  v39 = v6;
  v40 = v4;
  if (a2)
  {
    v14 = (*(v5 + 16))(v6, v40, v7);
    v33 = &v32;
    MEMORY[0x28223BE20](v14);
    v28 = v13;
    v29 = v11;
    v30 = v12;
    v31 = v39;
    sub_217E65D98(v10, v8);
    v41 = *(v10 + 8);
    v17 = type metadata accessor for StaticTruth(0, v7, v15, v16);
    WitnessTable = swift_getWitnessTable();
    v25 = v11;
    v19 = v39;
    sub_217E6A7E0(sub_217E682C0, v27, v13, v8, &v41, v17, v13, WitnessTable, v25, v12);
    v37(v8, v35);
    v20 = *(v5 + 8);
    v20(v19, v7);
    v20(v40, v7);
  }

  else
  {
    v33 = &v32;
    MEMORY[0x28223BE20](a1);
    v28 = v13;
    v29 = v11;
    v30 = v12;
    v31 = v40;
    sub_217E65D98(v10, v8);
    v41 = *(v10 + 8);
    v23 = type metadata accessor for StaticTruth(0, v7, v21, v22);
    v24 = swift_getWitnessTable();
    v26 = v11;
    v19 = v39;
    sub_217E6A7E0(sub_217E682C0, v27, v13, v8, &v41, v23, v13, v24, v26, v12);
    v37(v8, v35);
    (*(v5 + 8))(v40, v7);
  }

  free(v40);
  free(v19);
  free(v38);
  free(v8);
  free(v2);
}

uint64_t sub_217E681BC(uint64_t a1, uint64_t a2)
{
  sub_217E33138(0, &qword_2811B0DF0, sub_217E42CEC);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E6823C(uint64_t a1, uint64_t a2)
{
  sub_217E33138(0, &qword_2811B0DF0, sub_217E42CEC);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E682CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_217E68390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static AmbiguousDependencyKey.source(in:disambiguation:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v13 - v7;
  (*(v5 + 16))(a1, v5);
  a3[3] = type metadata accessor for StaticTruth(0, AssociatedTypeWitness, v9, v10);
  a3[4] = swift_getWitnessTable();
  v11 = sub_217E360A4(a3);
  return StaticTruth.init(state:)(v8, AssociatedTypeWitness, v11);
}

uint64_t View.definesScope<A>(of:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v13 = a1;
  KeyPath = swift_getKeyPath();
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v8 = type metadata accessor for ScopedTruthViewModifier(0, *(v5 + *MEMORY[0x277D84DE8] + 8), v6, v7);

  MEMORY[0x21CEADD60](&v13, a2, v8, a3);
  v9 = KeyPath;
  v10 = v15;
  v11 = v16;
  LOBYTE(v8) = v17;

  return sub_217E4F180(v9, v10, *(&v10 + 1), v11, *(&v11 + 1), v8);
}

uint64_t View.tagScope(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  *v9 = swift_getKeyPath();
  memset(&v9[8], 0, 33);
  *&v10 = a1;
  *(&v10 + 1) = a2;

  MEMORY[0x21CEADD60](v9, a3, &type metadata for TaggedScopeViewModifier, a4);
  v12[0] = *v9;
  v12[1] = *&v9[16];
  v12[2] = *&v9[32];
  v12[3] = v10;
  return sub_217E686D4(v12);
}

unint64_t sub_217E68704()
{
  result = qword_27CBF2C58[0];
  if (!qword_27CBF2C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF2C58);
  }

  return result;
}

__n128 sub_217E68758(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217E6876C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E687B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217E68814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_217E68850(uint64_t a1, uint64_t a2)
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

uint64_t sub_217E6886C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_217E688B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217E68920(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_217E704A4();
  sub_217E691D0(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
  v4 = sub_217E70454();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = *(v2 + 16);
  v22[0] = *v2;
  v22[1] = v11;
  v22[2] = *(v2 + 32);
  v23 = *(v2 + 48);
  swift_getKeyPath();
  sub_217E68B88(v22, *(a2 + 16), v20);
  v17 = v20[0];
  v18 = v20[1];
  v19 = v21;
  WitnessTable = swift_getWitnessTable();
  sub_217E704D4();

  v13 = sub_217E64028();
  v16[0] = WitnessTable;
  v16[1] = v13;
  swift_getWitnessTable();
  sub_217E4F368();
  v14 = *(v5 + 8);
  v14(v8, v4);
  sub_217E4F368();
  return (v14)(v10, v4);
}

uint64_t sub_217E68B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217E70474();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 8);
  *&v40[9] = *(a1 + 33);
  v11 = *(a1 + 24);
  v39 = v10;
  *v40 = v11;
  v12 = v10;
  if (v40[24] == 1)
  {
    v13 = *&v40[8];
    v14 = *&v40[16];
    v15 = *(&v39 + 1);
    v16 = *v40;
    v36 = __PAIR128__(*(&v39 + 1), v10);
    v37 = *v40;
    v38 = *&v40[8];
    sub_217E69150(&v39, &v33);
  }

  else
  {
    sub_217E69150(&v39, &v33);
    sub_217E70784();
    v19 = sub_217E704C4();
    sub_217E70384();

    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E69224(&v39);
    (*(v7 + 8))(v9, v6);
    v15 = *(&v36 + 1);
    v12 = v36;
    v16 = v37;
    v14 = *(&v38 + 1);
    v13 = v38;
  }

  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  type metadata accessor for ScopedTruthViewModifier(0, a2, v17, v18);
  v20 = sub_217E70A34();
  MEMORY[0x21CEADE80](v20);

  MEMORY[0x21CEADE80](8250, 0xE200000000000000);
  v21 = *a1;
  v28 = v21;
  type metadata accessor for Dependencies(255);
  sub_217E70A24();
  sub_217E70914();
  v28 = v12;
  v29 = v15;
  v30 = v16;
  v31 = v13;
  v32 = v14;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  Scope.subscope(dependencyContainer:tag:)(v26, v33, *(&v33 + 1), &v33);

  sub_217E6409C(v26);

  v22 = v33;
  v23 = v34;
  v24 = v35;
  v36 = v33;
  v37 = v34;
  v38 = v35;
  Scope.definesScope<A>(of:)(v21, &v33);

  *a3 = v22;
  *(a3 + 16) = v23;
  *(a3 + 24) = v24;
  return result;
}

uint64_t sub_217E68E5C@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_217E70474();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25[9] = *(a1 + 25);
  v8 = a1[1];
  v24 = *a1;
  *v25 = v8;
  v9 = v24;
  if (v25[24] == 1)
  {
    v10 = *&v25[8];
    v11 = *&v25[16];
    v12 = *(&v24 + 1);
    v13 = *v25;
    v21 = v24;
    v22 = *v25;
    v23 = *&v25[8];
    sub_217E69150(&v24, v20);
  }

  else
  {
    sub_217E69150(&v24, v20);
    sub_217E70784();
    v14 = sub_217E704C4();
    sub_217E70384();

    sub_217E70464();
    swift_getAtKeyPath();
    sub_217E69224(&v24);
    (*(v5 + 8))(v7, v4);
    v12 = *(&v21 + 1);
    v9 = v21;
    v13 = v22;
    v11 = *(&v23 + 1);
    v10 = v23;
  }

  v15 = *(a1 + 6);
  v16 = *(a1 + 7);
  v20[0] = v9;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v10;
  v20[4] = v11;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  Scope.subscope(dependencyContainer:tag:)(v18, v15, v16, a2);
  sub_217E6409C(v18);
}

__n128 sub_217E69040@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16[0] = *v2;
  v16[1] = v5;
  v6 = v2[3];
  v16[2] = v2[2];
  v16[3] = v6;
  KeyPath = swift_getKeyPath();
  sub_217E68E5C(v16, v14);
  v13 = v14[1];
  v8 = v15;
  sub_217E6929C(0);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  sub_217E692F8(0);
  v11 = a2 + *(v10 + 36);
  *v11 = KeyPath;
  result = v13;
  *(v11 + 8) = v14[0];
  *(v11 + 24) = v13;
  *(v11 + 40) = v8;
  return result;
}

uint64_t sub_217E69150(uint64_t a1, uint64_t a2)
{
  sub_217E691D0(0, qword_27CBF2930, MEMORY[0x277CDF468]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217E691D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Scope);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_217E69224(uint64_t a1)
{
  sub_217E691D0(0, qword_27CBF2930, MEMORY[0x277CDF468]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217E6929C(uint64_t a1)
{
  if (!qword_27CBF2CE0)
  {
    sub_217E68704();
    v1 = sub_217E704A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBF2CE0);
    }
  }
}

void sub_217E692F8(uint64_t a1)
{
  if (!qword_27CBF2CE8)
  {
    sub_217E6929C(255);
    sub_217E691D0(255, &qword_27CBF2350, MEMORY[0x277CE0860]);
    v1 = sub_217E70454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBF2CE8);
    }
  }
}

unint64_t sub_217E6937C()
{
  result = qword_27CBF2CF0;
  if (!qword_27CBF2CF0)
  {
    sub_217E692F8(255);
    sub_217E693FC();
    sub_217E64028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2CF0);
  }

  return result;
}

unint64_t sub_217E693FC()
{
  result = qword_27CBF2CF8;
  if (!qword_27CBF2CF8)
  {
    sub_217E6929C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2CF8);
  }

  return result;
}

uint64_t sub_217E69478(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  (*(*(v4 + 88) + 24))(a2, *(v4 + 80));
  return swift_endAccess();
}

uint64_t sub_217E6955C(uint64_t a1, uint64_t a2)
{
  sub_217E70814();

  swift_getAssociatedTypeWitness();
  v2 = sub_217E70A34();
  MEMORY[0x21CEADE80](v2);

  MEMORY[0x21CEADE80](0x656C646E6148202CLL, 0xEA00000000003D72);
  v3 = sub_217E70A34();
  MEMORY[0x21CEADE80](v3);

  return 0x3D646E616D6D6F43;
}

uint64_t ScopeReader.recordAccess<A>(to:)(void *a1)
{
  v2 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - v4;
  type metadata accessor for ScopeReader(0);
  sub_217E3ECA8(a1);
  return (*(v3 + 8))(v5, v2);
}

void KeyedDependencyContainer.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84F98];
  a1[1] = v1;
}

uint64_t KeyedDependencyContainer.registerDependency<A>(_:onResolve:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[3] = type metadata accessor for ControlledDependency(0, a5, a3, a4);
  v18[4] = swift_getWitnessTable();
  v10 = swift_allocObject();
  v18[0] = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;

  sub_217E4E36C(a3, a4);
  v11 = sub_217E36EF4(a5, a5);
  v13 = v12;
  v15 = v14;
  sub_217E6A390(v18, v17, sub_217E69940);
  sub_217E572CC(v17, v11, v13, v15);
  return sub_217E699FC(v18);
}

void sub_217E69940(uint64_t a1)
{
  if (!qword_27CBF2610)
  {
    sub_217E69998();
    v1 = sub_217E70794();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBF2610);
    }
  }
}

unint64_t sub_217E69998()
{
  result = qword_27CBF2608;
  if (!qword_27CBF2608)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CBF2608);
  }

  return result;
}

uint64_t sub_217E699FC(uint64_t a1)
{
  sub_217E69940(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KeyedDependencyContainer.registerDependency<A, B>(_:disambiguation:onResolve:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v15 = sub_217E705A4();
  v41[3] = type metadata accessor for ControlledDependency(0, a6, v16, v17);
  v41[4] = swift_getWitnessTable();
  v18 = swift_allocObject();
  v41[0] = v18;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a4;
  v18[5] = a5;
  v19 = *(v8 + 8);

  sub_217E4E36C(a4, a5);
  sub_217E36EF4(a6, a6);
  if (*(v19 + 16) && (v21 = sub_217E3722C(v20), (v22 & 1) != 0))
  {
    v23 = *(*(v19 + 56) + 8 * v21);
  }

  else
  {
    v23 = sub_217E6A100(MEMORY[0x277D84F90]);
  }

  sub_217E573C0(v41, v15);
  v24 = v23;
  v25 = sub_217E36EF4(a6, a6);
  v27 = v26;
  v29 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v9 + 8);
  v33 = sub_217E3722C(v29);
  v34 = v31[2];
  v35 = (v32 & 1) == 0;
  v36 = v34 + v35;
  if (__OFADD__(v34, v35))
  {
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(a2) = v32;
  if (v31[3] >= v36)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v9 + 8) = v31;
      if (v32)
      {
        goto LABEL_13;
      }

LABEL_12:
      v39 = sub_217E6A100(MEMORY[0x277D84F90]);
      sub_217E4921C(v33, v25, v27, v29, v39, v31);

      goto LABEL_13;
    }

LABEL_17:
    sub_217E5A1D0();
    *(v9 + 8) = v31;
    if (a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_217E5DB60(v36, isUniquelyReferenced_nonNull_native);
  v37 = sub_217E3722C(v29);
  if ((a2 & 1) != (v38 & 1))
  {
    result = sub_217E70944();
    __break(1u);
    return result;
  }

  v33 = v37;
  *(v9 + 8) = v31;
  if ((a2 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  *(v31[7] + 8 * v33) = v24;
}

uint64_t sub_217E69CBC()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t KeyedDependencyContainer.resolveDependency<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_217E36EF4(a1, a1);
  if (*(v5 + 16))
  {
    v7 = sub_217E3722C(v6);
    v9 = v8;

    if (v9)
    {
      sub_217E33AD0(*(v5 + 56) + 40 * v7, v13);
      sub_217E69998();
      swift_getExtendedExistentialTypeMetadata_unique();
      if (swift_dynamicCast())
      {
        if (v15)
        {
          sub_217E33C00(&v14, v16);
          v10 = v17;
          v11 = v18;
          sub_217E37F28(v16, v17);
          (*(v11 + 16))(v10, v11);
          (*(*(a1 - 8) + 56))(a2, 0, 1, a1);
          return sub_217E364B4(v16);
        }
      }
    }
  }

  else
  {
  }

  return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
}

uint64_t KeyedDependencyContainer.resolveDependency<A, B>(_:disambiguation:)@<X0>(uint64_t a1@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 8);
  sub_217E36EF4(a1, a1);
  if (!*(v7 + 16))
  {
    goto LABEL_8;
  }

  v9 = sub_217E3722C(v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return (*(*(a1 - 8) + 56))(a4, 1, 1, a1);
  }

  v12 = *(*(v7 + 56) + 8 * v9);

  v13 = sub_217E705A4();
  if (!*(v12 + 16) || (v14 = sub_217E58E60(v13), (v15 & 1) == 0))
  {
LABEL_8:

    return (*(*(a1 - 8) + 56))(a4, 1, 1, a1);
  }

  sub_217E33AD0(*(v12 + 56) + 40 * v14, v19);

  sub_217E69998();
  swift_getExtendedExistentialTypeMetadata_unique();
  if ((swift_dynamicCast() & 1) != 0 && v21)
  {
    sub_217E33C00(&v20, v22);
    v16 = v23;
    v17 = v24;
    sub_217E37F28(v22, v23);
    (*(v17 + 16))(v16, v17);
    (*(*(a1 - 8) + 56))(a4, 0, 1, a1);
    return sub_217E364B4(v22);
  }

  return (*(*(a1 - 8) + 56))(a4, 1, 1, a1);
}

uint64_t sub_217E6A09C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  result = a1();
  if (a2)
  {
    return a2(a3);
  }

  return result;
}

unint64_t sub_217E6A100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_217E6A328(0);
    v3 = sub_217E708D4();
    for (i = a1 + 32; ; i += 48)
    {
      sub_217E6A390(i, &v11, sub_217E6A3F8);
      v5 = v11;
      result = sub_217E58E60(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_217E33C00(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

uint64_t sub_217E6A240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217E6A27C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_217E6A294(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_217E6A2A0(uint64_t *a1, int a2)
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

uint64_t sub_217E6A2E8(uint64_t result, int a2, int a3)
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

void sub_217E6A328(uint64_t a1)
{
  if (!qword_27CBF2618)
  {
    sub_217E69998();
    v1 = sub_217E708E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBF2618);
    }
  }
}

uint64_t sub_217E6A390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_217E6A3F8(uint64_t a1)
{
  if (!qword_27CBF2E00[0])
  {
    sub_217E69998();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_27CBF2E00);
    }
  }
}

uint64_t sub_217E6A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a4;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = a1;
  v15[7] = a2;
  v11 = sub_217E40620();
  v16 = v10;
  sub_217E6BFE8(sub_217E5C120, v15, v11, v12, v13, &v16, a5, a7);
}

uint64_t sub_217E6A590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v25[-v17];
  v19 = *a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v31 = a1;
  v32 = a2;
  (*(a8 + 16))(a6, a8);
  v20 = sub_217E40620();
  v33 = v19;
  sub_217E6C250(sub_217E5C124, v25, v18, v20, v21, v22, &v33, a5, a7, a9);

  return (*(v16 + 8))(v18, AssociatedTypeWitness);
}

uint64_t sub_217E6A730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *a5;
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a1;
  v16[7] = a2;
  v12 = sub_217E65828(a7, a4, a7, a9);
  v17 = v11;
  sub_217E6BFE8(sub_217E5B3B0, v16, v12, v13, v14, &v17, a6, a8);
}

uint64_t sub_217E6A7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v24 - v17;
  v19 = *a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v33 = a1;
  v34 = a2;
  (*(*(a9 + 8) + 16))(a7);
  v20 = sub_217E65828(a7, v25, a7, a9);
  v35 = v19;
  sub_217E6C250(sub_217E5B3D8, v27, v18, v20, v21, v22, &v35, a6, a8, a10);

  return (*(v16 + 8))(v18, AssociatedTypeWitness);
}

uint64_t sub_217E6A984(uint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *a2;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 144);
  v19 = v8;
  *(v4 + 144) = 0x8000000000000000;
  v10 = sub_217E33C18(v6);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v9;
  if (v8[3] >= v13)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 144) = v8;
      if (v9)
      {
LABEL_11:
        v16 = v8[7];

        v17 = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(v16 + 8 * v10);
        *(v16 + 8 * v10) = 0x8000000000000000;
        sub_217E431FC(v5, sub_217E6CFFC, 0, v17, &v19);

        *(v16 + 8 * v10) = v19;

        return swift_endAccess();
      }

LABEL_8:
      if (qword_2811B0B08 != -1)
      {
        swift_once();
      }

      sub_217E36EB0(v10, v6, qword_2811B0B10, v8);

      goto LABEL_11;
    }

LABEL_13:
    sub_217E59CD0();
    v8 = v19;
    *(v4 + 144) = v19;
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  sub_217E5D35C(v13, isUniquelyReferenced_nonNull_native);
  v8 = v19;
  v14 = sub_217E33C18(v6);
  if ((v3 & 1) == (v15 & 1))
  {
    v10 = v14;
    *(v4 + 144) = v19;
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  result = sub_217E70944();
  __break(1u);
  return result;
}

uint64_t sub_217E6ABB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v10 = *a2;
  swift_beginAccess();
  a5(a1, &v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_217E6AC34(void *a1)
{
  v3 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v26[-v6];
  v9 = *v8;
  MEMORY[0x28223BE20](v5);
  v11 = &v26[-v10];
  v13 = *v12;
  swift_beginAccess();
  if (*(v1[20] + 16) || *(v1[19] + 16))
  {
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v13;
    v15[4] = a1;
    swift_beginAccess();
    v16 = v1[21];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[21] = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_217E5CE64(0, v16[2] + 1, 1, v16);
      v1[21] = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_217E5CE64((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = sub_217E6D2F0;
    v20[5] = v15;
    v1[21] = v16;
    swift_endAccess();
  }

  else
  {
    v22 = *(v9 + 24);
    v23 = type metadata accessor for ScopeGraphElement.ID(0);
    (*(*(v23 - 8) + 56))(&v11[v22], 1, 1, v23);
    v24 = *(v9 + 28);
    type metadata accessor for Dependencies.AmbiguousResolutionContext();
    v25 = swift_allocObject();
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0;
    *&v11[v24] = v25;
    *v11 = v1;
    *(v11 + 1) = v13;

    sub_217E3ECA8(a1);
    (*(v4 + 8))(v7, v3);
    return sub_217E365C0(v11, type metadata accessor for Dependencies);
  }
}

uint64_t sub_217E6AF4C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v14 = *a2;
  nullsub_1();
  v10 = type metadata accessor for NonComparableDependencyKeyOperations(0, a3, a4, v9);
  WitnessTable = swift_getWitnessTable();
  return sub_217E3EE68(a1, &v14, v12, a3, v10, a4, WitnessTable, a5);
}

uint64_t sub_217E6B000@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v20 = a3;
  v21 = a1;
  v22 = a6;
  v23 = a2;
  v8 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v20 - v11;
  v14 = type metadata accessor for NonComparableAmbiguousDependencyKeyOperations(0, a4, a5, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  v24 = *v20;
  (*(v10 + 16))(v12, v21, AssociatedTypeWitness);
  sub_217E5EEB8(v12, v17);
  WitnessTable = swift_getWitnessTable();
  sub_217E3EE68(v23, &v24, v17, a4, v14, v8, WitnessTable, v22);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_217E6B244@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v21 = a3;
  v22 = a1;
  v24 = a7;
  v25 = a2;
  v23 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v20 - v12;
  v14 = type metadata accessor for EquatableAmbiguousDependencyKeyOperations(0, a4, a5, a6);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  v26 = *v21;
  (*(v11 + 16))(v13, v22, AssociatedTypeWitness);
  sub_217E5EEB8(v13, v17);
  WitnessTable = swift_getWitnessTable();
  sub_217E3EE68(v25, &v26, v17, a4, v14, v23, WitnessTable, v24);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_217E6B494@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v26 = a5;
  *&v40[0] = swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for ScopeGraphElement.ID(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_217E70794();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v26 - v12);
  v14 = *a2;
  swift_beginAccess();
  v15 = v5[5];
  v16 = v5[7];
  v37 = v5[6];
  v38 = v16;
  v17 = v5[7];
  v39 = v5[8];
  v18 = v5[5];
  v36[0] = v5[4];
  v36[1] = v18;
  v30 = v37;
  v31 = v17;
  v32 = v5[8];
  v28 = v36[0];
  v29 = v15;
  v27 = v14;
  sub_217E3438C(v36, v40);
  sub_217E52684(a1, &v27, a3, a4, v13);
  v40[2] = v30;
  v40[3] = v31;
  v40[4] = v32;
  v40[0] = v28;
  v40[1] = v29;
  sub_217E347DC(v40);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
  {
    v19 = swift_checkMetadataState();
    return (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
  }

  else
  {
    v21 = *(TupleTypeMetadata2 + 48);
    sub_217E33C00(v13, v33);
    sub_217E365C0(v13 + v21, type metadata accessor for ScopeGraphElement.ID);
    v22 = v34;
    v23 = v35;
    sub_217E37F28(v33, v34);
    v24 = v26;
    (*(v23 + 24))(v22, v23);
    v25 = swift_checkMetadataState();
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    return sub_217E364B4(v33);
  }
}

void *sub_217E6B7A4()
{
  v1 = v0;
  v2 = *v0;
  sub_217E35174(0, qword_27CBF23E0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  if ([objc_opt_self() isMainThread])
  {
    sub_217E706E4();
    sub_217E54CF8(sub_217E6CA50, v0, "TeaBreeze/Storage.swift", 23, 2u, 29);
  }

  else
  {
    v6 = sub_217E70704();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[2];
    v8 = v0[3];
    sub_217E706E4();

    v9 = sub_217E706D4();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v7;
    v10[5] = v8;
    v10[6] = v2;
    sub_217E55E28(0, 0, v5, &unk_217E73248, v10);
  }

  return v1;
}

uint64_t sub_217E6B994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_217E706E4();
  v5[4] = sub_217E706D4();
  v7 = sub_217E706C4();

  return MEMORY[0x2822009F8](sub_217E6BA2C, v7, v6);
}

uint64_t sub_217E6BA2C()
{
  v6 = v0;
  v1 = v0[3];
  v2 = v0[2];

  v5 = v1;
  sub_217E6D04C(v2, &v5);
  v3 = v0[1];

  return v3();
}

uint64_t sub_217E6BAA8()
{
  sub_217E6B7A4();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_217E6BADC(uint64_t a1)
{
  v2 = sub_217E70A04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217E35174(0, &qword_27CBF2378, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v13 - v8;
  MEMORY[0x28223BE20](v7);
  sub_217E35350(v1, v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Storage.ExplicitUpdate);
  v13[1] = MEMORY[0x277D84F90];
  v11 = sub_217E709F4();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  (*(v3 + 104))(v5, *MEMORY[0x277D84C38], v2);
  sub_217E35174(0, &qword_27CBF2380, sub_217E4FCF8, MEMORY[0x277D83940]);
  sub_217E4FDB8();
  return sub_217E70A14();
}

uint64_t sub_217E6BD40(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t sub_217E6BD78(uint64_t a1)
{
  sub_217E709A4();
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();
  sub_217E705F4();
  return sub_217E709D4();
}

uint64_t sub_217E6BE20(uint64_t a1, uint64_t a2)
{
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();

  return sub_217E705F4();
}

uint64_t sub_217E6BEBC(uint64_t a1, uint64_t a2)
{
  sub_217E709A4();
  sub_217E70374();
  sub_217E44CD8(&qword_2811B1818, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_217E70594();
  sub_217E705F4();
  return sub_217E709D4();
}

uint64_t sub_217E6BF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s9TeaBreeze17ScopeGraphElementV2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_217E70924();
}

uint64_t sub_217E6BFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v31 = a2;
  v32 = a8;
  v29 = a3;
  v30 = a1;
  v33 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScopeGraphElement.ID(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v40 = *a6;
  v21 = v40;
  swift_beginAccess();
  v22 = a3;
  v23 = a4;
  v24 = a4;
  v25 = a5;
  sub_217E51AF0(v22, v23, a5, &v40, v20);
  swift_endAccess();
  v26 = v32;
  v35 = a7;
  v36 = v32;
  v37 = v30;
  v38 = v31;
  v39[0] = v21;
  sub_217E351D8(v39, v20, sub_217E6D324, v34, v14);
  v40 = v21;
  swift_beginAccess();
  sub_217E51DE8(v14, v29, v24, v25, &v40, a7, v26, v18);
  swift_endAccess();
  sub_217E365C0(v18, type metadata accessor for ScopeGraphElement.ID);
  v39[0] = v21;
  sub_217E3A464(v20, v39, 0);
  (*(v33 + 8))(v14, a7);
  return sub_217E365C0(v20, type metadata accessor for ScopeGraphElement.ID);
}

uint64_t sub_217E6C250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a3;
  v32 = a6;
  v26 = a4;
  v28 = a1;
  v29 = a2;
  v30 = *(a8 - 8);
  v27 = a10;
  MEMORY[0x28223BE20](a1);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ScopeGraphElement.ID(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  v40[0] = *a7;
  v22 = v40[0];
  swift_beginAccess();
  sub_217E51AF0(a4, a5, v32, v40, v21);
  swift_endAccess();
  v34 = a8;
  v35 = a9;
  v23 = v27;
  v36 = v27;
  v37 = v28;
  v38 = v29;
  v39[0] = v22;
  sub_217E351D8(v39, v21, sub_217E6D2FC, v33, v15);
  v40[0] = v22;
  swift_beginAccess();
  sub_217E525B8(v15, v26, a5, v32, v31, v40, a8, a9, v19, v23);
  swift_endAccess();
  sub_217E365C0(v19, type metadata accessor for ScopeGraphElement.ID);
  v39[0] = v22;
  sub_217E3A464(v21, v39, 0);
  (*(v30 + 8))(v15, a8);
  return sub_217E365C0(v21, type metadata accessor for ScopeGraphElement.ID);
}

uint64_t sub_217E6C4C0()
{
  sub_217E364B4((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

BOOL sub_217E6C5F0(void *a1, uint64_t *a2)
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

void *sub_217E6C620@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_217E6C64C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_217E6C724@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_217E6C740@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_217E6D4BC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_217E6C780(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*a3 + *MEMORY[0x277D84DE8] + 8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v20 - v8;
  v11 = *v10;
  MEMORY[0x28223BE20](v7);
  v13 = (&v20 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = *(v11 + 24);
    v17 = type metadata accessor for ScopeGraphElement.ID(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v11 + 28);
    type metadata accessor for Dependencies.AmbiguousResolutionContext();
    v19 = swift_allocObject();
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0;
    *(v13 + v18) = v19;
    *v13 = v15;
    v13[1] = a2;
    sub_217E3ECA8(a3);
    (*(v6 + 8))(v9, v5);
    return sub_217E365C0(v13, type metadata accessor for Dependencies);
  }

  return result;
}

uint64_t sub_217E6C988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_217E55D34;

  return sub_217E6B994(a1, v4, v5, v6, v7);
}

uint64_t sub_217E6CA50()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_217E6D04C(v1, &v3);
}

uint64_t sub_217E6CAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_217E3A780(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v22 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_217E591A8();
      v9 = v22;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ScopeGraphElement.ID(0);
    sub_217E365C0(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for ScopeGraphElement.ID);
    v12 = *(v9 + 56);
    sub_217E35174(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
    v14 = v13;
    v21 = *(v13 - 8);
    sub_217E454AC(v12 + *(v21 + 72) * v7, a2, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
    sub_217E5A364(v7, v9);
    *v3 = v9;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    sub_217E35174(0, qword_2811B0B28, type metadata accessor for ScopeGraphElement, type metadata accessor for Vertex);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_217E6CCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = sub_217E3960C(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v21 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_217E594AC();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for ScopeGraphElement.ID(0);
    v20 = *(v13 - 8);
    sub_217E35D8C(v12 + *(v20 + 72) * v9, a4, type metadata accessor for ScopeGraphElement.ID);
    sub_217E5A690(v9, v11);
    *v5 = v11;
    v14 = *(v20 + 56);
    v15 = a4;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ScopeGraphElement.ID(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a4;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_217E6CE40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  result = sub_217E33C18(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v10 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_217E59CD0();
      v9 = v10;
    }

    *a2 = *(*(v9 + 56) + 8 * v7);
    result = sub_217E5AA34(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

double sub_217E6CF0C@<D0>(uint64_t a1@<X2>, void (*a2)(unint64_t, uint64_t)@<X3>, void (*a3)(unint64_t, uint64_t)@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = sub_217E3722C(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v17 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v17;
    }

    a2(*(v15 + 56) + 40 * v13, a5);
    a3(v13, v15);
    *v9 = v15;
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t sub_217E6CFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

uint64_t sub_217E6D04C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (qword_2811B1810 != -1)
  {
    swift_once();
  }

  v3 = sub_217E703B4();
  sub_217E35794(v3, qword_2811B1820);
  v4 = sub_217E70394();
  v5 = sub_217E70764();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v13[0] = v7;
    *v6 = 136315138;
    v12[0] = v2;
    sub_217E540D8();
    v8 = sub_217E708F4();
    v10 = sub_217E58888(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_217E31000, v4, v5, "Scope deallocated; cleaning references. ID=%s", v6, 0xCu);
    sub_217E364B4(v7);
    MEMORY[0x21CEAE800](v7, -1, -1);
    MEMORY[0x21CEAE800](v6, -1, -1);
  }

  v12[0] = v2;
  swift_beginAccess();
  sub_217E507B8(v12);
  swift_endAccess();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  swift_beginAccess();
  sub_217E33874(v13, v2);
  swift_endAccess();
  swift_beginAccess();
  sub_217E6CE40(v2, v12);

  return swift_endAccess();
}

unint64_t sub_217E6D248()
{
  result = qword_27CBF2E88;
  if (!qword_27CBF2E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2E88);
  }

  return result;
}

uint64_t sub_217E6D29C(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return swift_deallocObject();
}

unint64_t sub_217E6D360()
{
  result = qword_27CBF2E90;
  if (!qword_27CBF2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2E90);
  }

  return result;
}

unint64_t sub_217E6D3B8()
{
  result = qword_27CBF2E98;
  if (!qword_27CBF2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2E98);
  }

  return result;
}

unint64_t sub_217E6D410()
{
  result = qword_27CBF2EA0;
  if (!qword_27CBF2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF2EA0);
  }

  return result;
}

unint64_t sub_217E6D468()
{
  result = qword_27CBF2EA8[0];
  if (!qword_27CBF2EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF2EA8);
  }

  return result;
}

uint64_t sub_217E6D4BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_217E6D504()
{
  v0 = sub_217E5C500();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_217E6D558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SourceVertex(0, *(v4 + 304), *(v4 + 312), a4);
  swift_allocObject();
  return sub_217E378EC(a1);
}

uint64_t sub_217E6D59C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_217E70814();

  v10 = 0x3D786574726556;
  v11 = 0xE700000000000000;
  v7 = _s9TeaBreeze17ScopeGraphElementV2IDV11descriptionSSvg_0();
  MEMORY[0x21CEADE80](v7);

  MEMORY[0x21CEADE80](0x657461647055202CLL, 0xE90000000000003DLL);
  (*(v4 + 16))(v6, v1 + *(a1 + 44), v3);
  v8 = sub_217E705D4();
  MEMORY[0x21CEADE80](v8);

  return v10;
}

uint64_t sub_217E6D700(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[3];
  v22 = a1[2];
  v23 = v7;
  v24 = a1[4];
  v8 = a1[1];
  v20 = *a1;
  v21 = v8;
  sub_217E4A514(v3, v25);
  sub_217E6D8C8(v25, v15);
  if (v16)
  {
    sub_217E38C20();
    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata_unique();
    if (swift_dynamicCast())
    {
      if (*(&v18 + 1))
      {
        sub_217E33C00(&v17, &v20);
        v11 = *(&v21 + 1);
        v12 = v22;
        sub_217E37F28(&v20, *(&v21 + 1));
        (*(v12 + 88))(v4 + *(a3 + 44), a2, v10, v9, v11, v12);
        sub_217E54A0C(v25);
        v13 = &v20;
        return sub_217E364B4(v13);
      }
    }

    else
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
    }
  }

  else
  {
    sub_217E54A0C(v15);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  result = sub_217E54A0C(v25);
  if (!*(&v18 + 1))
  {
    return result;
  }

  v13 = &v17;
  return sub_217E364B4(v13);
}

uint64_t sub_217E6D8C8(uint64_t a1, uint64_t a2)
{
  sub_217E54A68(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E6D92C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_217E70374();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_217E6DB6C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_217E70374() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
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

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_57:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v16)
  {
    goto LABEL_30;
  }

  a1[v15] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    if (v9 >= a2)
    {
      v26 = *(v8 + 56);

      v26(a1, a2);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(a1, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *a1 = v24;
            a1[2] = BYTE2(v24);
          }

          else
          {
            *a1 = v24;
          }
        }

        else if (v25 == 1)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v24;
        }
      }
    }
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v12 + v13] & ~v13, a2, v11);
  }
}

uint64_t sub_217E6DF08(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_217E70734();
  if (!v19)
  {
    return sub_217E70664();
  }

  v41 = v19;
  v45 = sub_217E70874();
  v32 = sub_217E70884();
  sub_217E70854();
  result = sub_217E70724();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_217E70754();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_217E70864();
      result = sub_217E70744();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217E6E328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Vertex(0, a9, v11, v12);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  if (sub_217E70584() & 1) != 0 && (type metadata accessor for Graph(0, a9, a11, v13), swift_getWitnessTable(), (sub_217E70584()))
  {
    v14 = sub_217E6EA2C(a3, a4, a7, a8, a9, a10, a11);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_217E6E4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Vertex(0, a6, v13, v14);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_217E70574();
  type metadata accessor for Graph(0, a6, a8, v15);
  swift_getWitnessTable();
  sub_217E70574();
  return sub_217E6EB80(a1, a4, a5, a6, a7, a8);
}

uint64_t sub_217E6E60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_217E709A4();
  sub_217E6E4A0(v15, a1, a2, a3, a4, a5, a6, a7);
  return sub_217E709D4();
}

uint64_t sub_217E6E71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_217E709A4();
  sub_217E6E4A0(v7, *v3, v3[1], v3[2], v3[3], *(a2 + 16), v5, *(a2 + 24));
  return sub_217E709D4();
}

uint64_t sub_217E6E778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Edge(255, AssociatedTypeWitness, v7, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_217E70714();
  v17 = a3;
  v18 = a4;
  sub_217E70554();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = sub_217E70634();

  v19 = v9;
  v16[6] = a3;
  v16[7] = a4;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = swift_getKeyPath();
  v10 = sub_217E706B4();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_217E6DF08(sub_217E6F1D0, v16, v10, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  v19 = v13;
  sub_217E54088();
  sub_217E6F158();
  v14 = sub_217E705B4();

  return v14;
}

uint64_t sub_217E6E9D4@<X0>(uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Edge(0, AssociatedTypeWitness, v5, v6);
  result = sub_217E4F370(v7);
  *a3 = result;
  a3[1] = v9;
  return result;
}

uint64_t sub_217E6EA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Edge(255, AssociatedTypeWitness, v8, v9);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_217E70714();
  swift_getWitnessTable();
  if (sub_217E70584())
  {
    v10 = sub_217E70584();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_217E6EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Edge(255, AssociatedTypeWitness, v7, v8);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_217E70714();
  swift_getWitnessTable();
  sub_217E70574();
  return sub_217E70574();
}

uint64_t sub_217E6ECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_217E709A4();
  sub_217E6EB80(v11, a1, a2, a3, a4, a5);
  return sub_217E709D4();
}

uint64_t sub_217E6ED88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_217E709A4();
  sub_217E6EB80(v7, *v3, v3[1], *(a2 + 16), v5, *(a2 + 24));
  return sub_217E709D4();
}

uint64_t sub_217E6EDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Vertex(0, a5, v11, v12);
  swift_getAssociatedConformanceWitness();
  v23 = a1;
  v22[2] = a5;
  v22[3] = a6;
  v13 = sub_217E70554();

  WitnessTable = swift_getWitnessTable();
  v16 = sub_217E6DF08(sub_217E6F138, v22, v13, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v15);

  v23 = v16;
  sub_217E54088();
  sub_217E6F158();
  v17 = sub_217E705B4();
  v19 = v18;

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_217E70814();

  v23 = 0x7365636974726556;
  v24 = 0xEB000000000A5B3DLL;
  MEMORY[0x21CEADE80](v17, v19);

  MEMORY[0x21CEADE80](0x656764450A2C5D0ALL, 0xED0000090A5B3D73);
  v20 = sub_217E6E778(a3, a4, a5, a6);
  MEMORY[0x21CEADE80](v20);

  MEMORY[0x21CEADE80](23818, 0xE200000000000000);
  return v23;
}

uint64_t sub_217E6F00C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = type metadata accessor for Vertex(0, a1, a2, a3);
  v6 = sub_217E5419C(v5);
  MEMORY[0x21CEADE80](v6);

  *a4 = 9;
  a4[1] = 0xE100000000000000;
  return result;
}

unint64_t sub_217E6F158()
{
  result = qword_27CBF23C8;
  if (!qword_27CBF23C8)
  {
    sub_217E54088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF23C8);
  }

  return result;
}

uint64_t sub_217E6F1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217E6F250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Dependency.init<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a3;
  v7 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v28 = &v26 - v8;
  v26 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v26 - v11;
  v13 = type metadata accessor for ScopeReader(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  _s9TeaBreeze11ScopeReaderV7currentACyFZ_0(&v26 - v17);
  sub_217E3EB34(v18, v16);
  (*(v10 + 16))(v12, a2, AssociatedTypeWitness);
  v19 = v7;
  v20 = v27;
  a4[3] = type metadata accessor for AmbiguousDependencyReader(0, v19, v27, v21);
  a4[4] = swift_getWitnessTable();
  v22 = sub_217E360A4(a4);
  sub_217E6F568(v16, a1, v12, v20, v22);

  v24 = v28;
  sub_217E3ECA8(v23);

  (*(v10 + 8))(a2, AssociatedTypeWitness);
  (*(v29 + 8))(v24, v26);
  return sub_217E458C4(v18);
}

uint64_t sub_217E6F568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  sub_217E3EC44(a1, a5);
  v11 = type metadata accessor for AmbiguousDependencyReader(0, *(v9 + *MEMORY[0x277D84DE8] + 8), a4, v10);
  *(a5 + *(v11 + 36)) = a2;
  v12 = *(v11 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 32);

  return v14(a5 + v12, a3, AssociatedTypeWitness);
}

uint64_t sub_217E6F67C(uint64_t a1)
{
  v3 = *(a1 + 40);
  v4 = *(v1 + *(a1 + 36));
  type metadata accessor for ScopeReader(0);
  return sub_217E66014(v4, v1 + v3, *(a1 + 24));
}

uint64_t Dependency.description.getter(uint64_t a1)
{
  sub_217E706E4();
  v4[2] = *(a1 + 16);
  v5 = v1;
  return sub_217E54B38(sub_217E6F824, v4, "TeaBreeze/Dependency.swift", 26, 2, 122);
}

uint64_t sub_217E6F75C@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  v5 = v4[3];
  v6 = v4[4];
  sub_217E37F28(v4, v5);
  (*(v6 + 16))(v5, v6);
  result = sub_217E705D4();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_217E6F844(uint64_t a1)
{
  result = type metadata accessor for ScopeReader(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for Dependencies(255);
    result = sub_217E70A24();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_217E6F90C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_217E70374();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v6 + 80);
  v15 = *(v11 + 80);
  if (v7)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = *(v6 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = ((v16 + ((v14 + 16) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v16 + ((v14 + 16) & ~v14) + (v14 | 7)) & ~(v14 | 7)) + 8;
  v18 = v15 + 8;
  if (a2 <= v13)
  {
    goto LABEL_36;
  }

  v19 = ((v18 + v17) & ~v15) + *(*(AssociatedTypeWitness - 8) + 64);
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_16;
  }

  v22 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v22))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_23;
    }

LABEL_36:
    if (v9 < v12)
    {
      v26 = *(v11 + 48);

      return v26((v18 + ((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
    }

    if ((v8 & 0x80000000) == 0)
    {
      v28 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v28) = -1;
      }

      return (v28 + 1);
    }

    if (v7)
    {
      v29 = (*(v6 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14, v7, v5);
      v30 = v29 != 0;
      result = (v29 - 1);
      if (result != 0 && v30)
      {
        return result;
      }
    }

    return 0;
  }

  if (v22 > 0xFF)
  {
    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

  if (v22 < 2)
  {
    goto LABEL_36;
  }

LABEL_16:
  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_36;
  }

LABEL_23:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

void sub_217E6FC04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = sub_217E70374();
  v8 = *(v7 - 8);
  v41 = v7;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = 0;
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  if (v15 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = *(v8 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = *(v8 + 64);
  if (v9)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = v18 + v20;
  v22 = (v18 + v20 + (v17 | 7)) & ~(v17 | 7);
  v23 = v21 + 7;
  v24 = v22 + (v23 & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = *(v13 + 80);
  v26 = ((v25 + 8 + v24) & ~v25) + *(v13 + 64);
  if (a3 <= v16)
  {
    goto LABEL_27;
  }

  if (v26 > 3)
  {
    v12 = 1;
    if (v16 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v29 = ~v16 + a2;
    if (v26 >= 4)
    {
      bzero(a1, v26);
      *a1 = v29;
      v30 = 1;
      if (v12 > 1)
      {
        goto LABEL_30;
      }

LABEL_58:
      if (v12)
      {
        a1[v26] = v30;
      }

      return;
    }

    v30 = (v29 >> (8 * v26)) + 1;
    if (v26)
    {
      v32 = v29 & ~(-1 << (8 * v26));
      bzero(a1, v26);
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          *a1 = v32;
          if (v12 <= 1)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *a1 = v29;
          if (v12 <= 1)
          {
            goto LABEL_58;
          }
        }

LABEL_30:
        if (v12 == 2)
        {
          *&a1[v26] = v30;
        }

        else
        {
          *&a1[v26] = v30;
        }

        return;
      }

      *a1 = v32;
      a1[2] = BYTE2(v32);
    }

    if (v12 <= 1)
    {
      goto LABEL_58;
    }

    goto LABEL_30;
  }

  v27 = ((a3 - v16 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
  if (!HIWORD(v27))
  {
    if (v27 < 0x100)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    if (v27 >= 2)
    {
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }

LABEL_27:
    if (v16 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v12 = 4;
  if (v16 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v26] = 0;
LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!v12)
  {
    goto LABEL_34;
  }

  a1[v26] = 0;
  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v11 < v15)
  {
    v31 = *(v14 + 56);

    v31((v25 + 8 + (&a1[v24 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v25, a2);
    return;
  }

  if (v11 < a2)
  {
    v33 = (v23 & 0xFFFFFFF8) + v22;
    if (v33 != -8)
    {
      bzero(a1, (v33 + 8));
      *a1 = ~v11 + a2;
    }

    return;
  }

  if ((v10 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v34 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v34 = (a2 - 1);
    }

    *a1 = v34;
    return;
  }

  v35 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 8) & ~v17);
  if (v10 < a2)
  {
    if (v20 <= 3)
    {
      v36 = ~(-1 << (8 * v20));
    }

    else
    {
      v36 = -1;
    }

    if (!v20)
    {
      return;
    }

    v37 = v36 & (~v10 + a2);
    if (v20 <= 3)
    {
      v38 = v20;
    }

    else
    {
      v38 = 4;
    }

    bzero(v35, v20);
    if (v38 <= 2)
    {
      if (v38 == 1)
      {
LABEL_73:
        *v35 = v37;
        return;
      }

LABEL_88:
      *v35 = v37;
      return;
    }

    goto LABEL_89;
  }

  if (a2 >= v9)
  {
    if (v19 <= 3)
    {
      v40 = ~(-1 << (8 * v19));
    }

    else
    {
      v40 = -1;
    }

    if (!v19)
    {
      return;
    }

    v37 = v40 & (a2 - v9);
    if (v19 <= 3)
    {
      v38 = v19;
    }

    else
    {
      v38 = 4;
    }

    bzero(v35, v19);
    if (v38 <= 2)
    {
      if (v38 == 1)
      {
        goto LABEL_73;
      }

      goto LABEL_88;
    }

LABEL_89:
    if (v38 == 3)
    {
      *v35 = v37;
      v35[2] = BYTE2(v37);
    }

    else
    {
      *v35 = v37;
    }

    return;
  }

  v39 = *(v8 + 56);

  v39((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 8) & ~v17, (a2 + 1), v9, v41);
}

uint64_t sub_217E70124()
{
  MEMORY[0x21CEAE8D0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_217E70174()
{
  v1 = *(*v0 + 344);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(v0 + v1, AssociatedTypeWitness);
}

char *sub_217E70224()
{
  v0 = sub_217E6D500();
  v1 = *(*v0 + 344);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v1], AssociatedTypeWitness);
  return v0;
}

uint64_t sub_217E702DC()
{
  v0 = sub_217E70224();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}