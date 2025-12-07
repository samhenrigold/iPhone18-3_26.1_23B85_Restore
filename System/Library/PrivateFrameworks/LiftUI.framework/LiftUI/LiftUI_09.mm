uint64_t sub_255DF4E90@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_255DF5138@<X0>(uint64_t *a1@<X8>)
{
  v2 = StateDict.makeIterator()();

  *a1 = v2;
  return result;
}

uint64_t sub_255DF5188(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for StateDict(0, a1[10], a1[11], a1[12]);
  v5 = sub_255DF5EF4(v2, v4, a2);

  return v5;
}

void sub_255DF51D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for StateDict(0, a4[10], a4[11], a4[12]);

  JUMPOUT(0x259C4E980);
}

uint64_t LocalStateStore.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - v3;
  v5 = qword_27F7E8608;
  v6 = MEMORY[0x277D84F90];
  *(v0 + v5) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v0 + qword_27F7E8610) = 0;
  v7 = *(*v0 + 104);
  v10[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v2 + 32))(v0 + v7, v4, v1);
  v8 = *(*v0 + 112);
  *(v0 + v8) = sub_255DC513C(v6);
  *(v0 + *(*v0 + 128)) = 0;
  *(v0 + *(*v0 + 120)) = 0;
  *(v0 + *(*v0 + 128)) = 0;
  return v0;
}

uint64_t LocalStateStore.init(parent:initialSet:referenceKeyMap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_27F7E8608;
  *(v3 + v6) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v3 + qword_27F7E8610) = a1;
  v7 = swift_retain_n();
  v8 = sub_255DC38A8(v7);
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;

  for (i = 0; v11; result = sub_255D395E4(v22, &qword_27F7E8618, &qword_255E56670))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(a2 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    sub_255D3951C(*(a2 + 56) + 32 * v17, v23);
    v22[0] = v19;
    v22[1] = v20;

    sub_255DD5EE0(v19, v20, v23);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      *(v8 + qword_27F7E8608) = a3;

      return v8;
    }

    v11 = *(a2 + 64 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t LocalStateStore.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_255DF6210(a1, v7);
  sub_255DF2B68(v7, a2, a3);
  return sub_255D395E4(a1, &qword_27F7E7C08, &qword_255E4EF88);
}

void (*LocalStateStore.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  *a1 = v7;
  *(v7 + 104) = a3;
  *(v7 + 112) = v3;
  *(v7 + 96) = a2;
  _s6LiftUI15LocalStateStoreCyypSgSScig_0(a2, a3, v7);
  return sub_255DF5754;
}

void sub_255DF5754(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 96);
  if (a2)
  {
    sub_255DF6210(*a1, v2 + 32);
    sub_255DF6210(v2 + 32, v2 + 64);

    sub_255DF2B68(v2 + 64, v4, v3);
    sub_255D395E4(v2 + 32, &qword_27F7E7C08, &qword_255E4EF88);
  }

  else
  {
    sub_255DF6210(*a1, v2 + 32);

    sub_255DF2B68(v2 + 32, v4, v3);
  }

  sub_255D395E4(v2, &qword_27F7E7C08, &qword_255E4EF88);

  free(v2);
}

uint64_t sub_255DF5884(void *a1, void *a2)
{

  v4 = *(v2 + *a2);
  *(v2 + *a2) = 0;

  if (v4)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v5 = *(v4 + *a2);
      swift_retain_n();

      v4 = v5;
    }

    while (v5);
  }
}

uint64_t sub_255DF5940(uint64_t *a1, uint64_t *a2, void *a3, void *a4)
{
  v5 = sub_255DF38D8(a1, a2);

  v6 = *(v5 + *a4);
  *(v5 + *a4) = 0;

  if (v6)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v7 = *(v6 + *a4);
      swift_retain_n();

      v6 = v7;
    }

    while (v7);
  }

  return v5;
}

uint64_t sub_255DF59F4(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_255DF5A58(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_255DF6210(a1, v6);
  sub_255DF2B68(v6, v3, v4);
  return sub_255D395E4(a1, &qword_27F7E7C08, &qword_255E4EF88);
}

void (*sub_255DF5ABC(uint64_t **a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = LocalStateStore.subscript.modify(v4, *a2, a2[1]);
  return sub_255D39BAC;
}

uint64_t sub_255DF5B34(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_255E38708();
  return (*(v4 + 8))(a1, a2);
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_255DF5C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255E3A478();

  return sub_255DF5CF0(a1, v6, a2, a3);
}

unint64_t sub_255DF5CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v19 = sub_255E3A4B8();
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

uint64_t sub_255DF5E78(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_255DF5EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_255E3A6C8())
  {
    sub_255E3AB38();
    v13 = sub_255E3AB28();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_255E3A6C8();
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
        if (sub_255E3A6B8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_255E3A9B8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_255DF5C94(v12, a2, v27);
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

uint64_t sub_255DF6210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C08, &qword_255E4EF88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DF6300(uint64_t a1)
{
  sub_255E3A6F8();
  result = sub_255E38748();
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

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t objectdestroy_52Tm(void (*a1)(void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if ((~*(v1 + 48) & 0xF000000000000007) != 0)
  {
  }

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t objectdestroyTm_4(void (*a1)(void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));

  return MEMORY[0x2821FE8E8](v1, 41, 7);
}

uint64_t sub_255DF6878@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255E394A8();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_255E39E98();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v10 = a1[4];
  v14[1] = __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = sub_255DF6B34();
  sub_255DF6870();
  sub_255DF6874();
  v17 = v11;
  v18 = v4;
  v19 = v10;
  v20 = v12;
  a2[3] = swift_getOpaqueTypeMetadata2();
  v17 = v11;
  v18 = v4;
  v19 = v10;
  v20 = v12;
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_255E398E8();
  (*(v16 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v15);
}

unint64_t sub_255DF6AB8(uint64_t a1)
{
  result = sub_255DF6AE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DF6AE0()
{
  result = qword_27F7E86C8;
  if (!qword_27F7E86C8)
  {
    result = swift_getWitnessTable(byte_255E56804, &type metadata for GlassEffectModifier, v0, v1);
    atomic_store(result, &qword_27F7E86C8);
  }

  return result;
}

unint64_t sub_255DF6B34()
{
  result = qword_27F7E86D0;
  if (!qword_27F7E86D0)
  {
    v3 = sub_255E394A8();
    result = swift_getWitnessTable(MEMORY[0x277CE0628], v3, v0, v1);
    atomic_store(result, &qword_27F7E86D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI16SwiftUIAnimationVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_255DF6BC4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_255DF6C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_255DF6C98(unint64_t a1, uint64_t a2)
{
  v27 = a2;
  v5 = sub_255E3A3B8();
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255E3A3D8();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v42[9] = *(v2 + 57);
  v11 = v2[3];
  v41 = v2[2];
  *v42 = v11;
  v12 = v2[1];
  v39 = *v2;
  v40 = v12;
  if (v42[24] == 254)
  {
    v13 = 0;
    v25 = v5;
    v26 = v3;
  }

  else
  {
    v14 = v2[2];
    v33 = v2[1];
    v34 = v14;
    v35[0] = v2[3];
    *&v35[1] = *(v2 + 8);
    BYTE8(v35[1]) = v42[24];
    v36[0] = v33;
    v36[1] = v14;
    v36[2] = v35[0];
    v37 = *&v35[1];
    v38 = v42[24];
    sub_255D8DD84(v36, &v30);
    v15 = sub_255D8D5DC(a1);
    if (v3)
    {
      v30 = v33;
      v31 = v34;
      v32[0] = v35[0];
      *(v32 + 9) = *(v35 + 9);
      return sub_255D8DDBC(&v30);
    }

    v13 = v15;
    v25 = v5;
    v26 = 0;
    v30 = v33;
    v31 = v34;
    v32[0] = v35[0];
    *(v32 + 9) = *(v35 + 9);
    sub_255D8DDBC(&v30);
  }

  sub_255DA5ED4();
  v24 = sub_255E3A878();
  v17 = swift_allocObject();
  v18 = v39;
  *(v17 + 40) = v40;
  v19 = *v42;
  *(v17 + 56) = v41;
  *(v17 + 72) = v19;
  *(v17 + 81) = *&v42[9];
  *(v17 + 16) = v13;
  *(v17 + 24) = v18;
  v20 = v27;
  *(v17 + 104) = a1;
  *(v17 + 112) = v20;
  *&v35[0] = sub_255DFAF64;
  *(&v35[0] + 1) = v17;
  *&v33 = MEMORY[0x277D85DD0];
  *(&v33 + 1) = 1107296256;
  *&v34 = sub_255D5D0C8;
  *(&v34 + 1) = &block_descriptor_2;
  v21 = _Block_copy(&v33);

  sub_255D5C9C8(&v39, v36);

  sub_255E3A3C8();
  *&v36[0] = MEMORY[0x277D84F90];
  sub_255DFAF8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6AE8, &qword_255E3E938);
  sub_255D38950(&qword_27F7E6AF0, &qword_27F7E6AE8, &qword_255E3E938, MEMORY[0x277D83970]);
  v22 = v25;
  sub_255E3A928();
  v23 = v24;
  MEMORY[0x259C4EBE0](0, v10, v7, v21);
  _Block_release(v21);

  (*(v43 + 8))(v7, v22);
  return (*(v28 + 8))(v10, v29);
}

uint64_t sub_255DF7084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (a1)
  {
  }

  else
  {
    sub_255E3A298();
  }

  sub_255E38978();
}

void sub_255DF711C(unint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *v2;
  v6 = v2[1];
  v385 = a2;
  if (v5)
  {
    v384 = a1;
    v7 = v5 + 64;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 64);
    v374 = qword_27F7E85F8;
    v372 = v6;
    v373 = qword_27F7E8600;
    v11 = (v8 + 63) >> 6;
    v377 = v5;

    v12 = 0;
    v378 = v7;
    v376 = v11;
    while (1)
    {
      if (!v10)
      {
        v19 = v377;
        while (1)
        {
          v20 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v20 >= v11)
          {

            a1 = v384;
            v6 = v372;
            goto LABEL_285;
          }

          v10 = *(v7 + 8 * v20);
          ++v12;
          if (v10)
          {
            v12 = v20;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_298;
      }

      v19 = v377;
LABEL_15:
      v21 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v22 = v21 | (v12 << 6);
      v23 = *(v19 + 56);
      v24 = *(v19 + 48) + 16 * v22;
      v25 = *(v24 + 8);
      v381 = *v24;
      v26 = v23 + 32 * v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      v17 = *(v26 + 16);
      LODWORD(v26) = *(v26 + 24);
      v386 = v27;
      v380 = v26;
      v383 = v28;
      if ((v26 & 1) == 0)
      {
        sub_255D5C258(v27, v28, v17, 0);
        sub_255D5C258(v27, v28, v17, 0);

        v69 = v27;
        v70 = v25;
        v7 = v378;
        v56 = v380;
        goto LABEL_34;
      }

      v379 = v25;
      v382 = v17;
      if ((~v17 & 0xF000000000000007) == 0)
      {
        v29 = v384;
        v30 = *(v384 + v374);
        if (!v30)
        {
          v34 = v386;
          sub_255D5C258(v386, v28, v382, 1);

          goto LABEL_64;
        }

        v31 = v373;
        swift_beginAccess();
        v32 = *(v29 + v31);
        v33 = *(v32 + 16);
        v34 = v386;
        sub_255D5C258(v386, v28, v382, 1);

        v371 = v30;

        if (!v33 || (v35 = sub_255D3CA20(v34, v28), (v36 & 1) == 0))
        {
          swift_endAccess();

          goto LABEL_64;
        }

        v37 = *(v32 + 56) + 32 * v35;
        v39 = *v37;
        v38 = *(v37 + 8);
        v40 = *(v37 + 16);
        v41 = *(v37 + 24);
        swift_endAccess();
        if ((v41 & 1) == 0)
        {
          sub_255D5C258(v39, v38, v40, 0);

          v393[0] = v39;
          v17 = v382;
          v7 = v378;
          v56 = v380;
          v154 = v39;
          goto LABEL_86;
        }

        v369 = v40;
        v370 = v39;
        v42 = (~v40 & 0xF000000000000007) == 0;
        v7 = v378;
        v368 = v38;
        if (!v42)
        {
          v162 = v371;
          if (!*(v371 + qword_27F7E85F8))
          {
            v227 = v369;
            v166 = v370;
            sub_255D5C258(v370, v38, v369, 1);
            sub_255D5D0CC(v227);
            goto LABEL_137;
          }

          v367 = *(v371 + qword_27F7E85F8);
          v163 = qword_27F7E8600;
          swift_beginAccess();
          v164 = *(v162 + v163);
          v165 = *(v164 + 16);
          v166 = v370;
          v167 = v38;
          v168 = v369;
          sub_255D5C258(v370, v167, v369, 1);
          v169 = v168;
          v38 = v368;
          sub_255D5D0CC(v169);

          if (!v165 || (v170 = sub_255D3CA20(v166, v38), (v171 & 1) == 0))
          {
            swift_endAccess();

            goto LABEL_137;
          }

          v172 = *(v164 + 56) + 32 * v170;
          v173 = *v172;
          v366 = *(v172 + 8);
          v174 = *(v172 + 16);
          v175 = *(v172 + 24);
          swift_endAccess();
          if ((v175 & 1) == 0)
          {
            sub_255D5C258(v173, v366, v174, 0);

            v176 = v371;
            goto LABEL_173;
          }

          v365 = v174;
          v42 = (~v174 & 0xF000000000000007) == 0;
          v176 = v371;
          if (!v42)
          {
            if (*(v367 + qword_27F7E85F8))
            {
              v289 = qword_27F7E8600;
              v363 = *(v367 + qword_27F7E85F8);
              swift_beginAccess();
              v290 = *(v367 + v289);
              v362 = *(v290 + 16);
              v364 = v173;
              v291 = v173;
              v292 = v365;
              sub_255D5C258(v291, v366, v365, 1);
              sub_255D5D0CC(v292);
              v293 = v363;

              if (v362)
              {
                v294 = sub_255D3CA20(v364, v366);
                if (v295)
                {
                  v296 = v293;
                  v297 = *(v290 + 56) + 32 * v294;
                  v298 = *v297;
                  v299 = *(v297 + 8);
                  v300 = *(v297 + 16);
                  v301 = *(v297 + 24);
                  swift_endAccess();
                  sub_255D5C258(v298, v299, v300, v301);
                  LODWORD(v362) = v301;
                  sub_255DDEBF8(v296, v298, v299, v300, v301, &v394);
                  if (v4)
                  {

                    sub_255D4DE84(v298, v299, v300, v362);
                    v4 = 0;
                    v11 = v376;
                    v176 = v371;
                    v38 = v368;
                    goto LABEL_222;
                  }

                  sub_255D4DE84(v298, v299, v300, v362);
                  v341 = v394;
                  v11 = v376;
                  v176 = v371;
                  v38 = v368;
                  v173 = v364;
LABEL_260:
                  if ((~v341 & 0xF000000000000007) == 0)
                  {
                    sub_255D5C33C();
                    v375 = swift_allocError();
                    v329 = v366;
                    *v342 = v173;
                    *(v342 + 8) = v329;
                    *(v342 + 16) = &type metadata for DecodableState;
                    *(v342 + 32) = 0;
                    swift_willThrow();

                    v331 = v365;
                    sub_255D2F870(v365);

                    v4 = 0;
                    goto LABEL_264;
                  }

                  sub_255DE08EC(v341, v367, v365, &v389);
                  if (!v4)
                  {
                    sub_255D5C324(v341);
                    v347 = v365;
                    sub_255D2F870(v365);

                    sub_255D4DE84(v173, v366, v347, 1);
                    goto LABEL_172;
                  }

                  sub_255D5C324(v341);
                  v331 = v365;
                  sub_255D2F870(v365);

                  v4 = 0;
                  v329 = v366;
LABEL_264:

                  sub_255D4DE84(v173, v329, v331, 1);
                  v166 = v370;
LABEL_137:
                  v394 = v166;
                  v395 = v38;
                  v176 = v371;
                  v228 = *(*v371 + 112);
                  swift_beginAccess();
                  v229 = *(v176 + v228);
                  if (*(v229 + 16))
                  {

                    v230 = sub_255D3CA20(v370, v38);
                    if (v231)
                    {
                      v232 = *(*(v229 + 56) + 8 * v230);

                      MEMORY[0x28223BE20](v233);
                      *(&v362 - 4) = MEMORY[0x277D837D0];
                      *(&v362 - 3) = &type metadata for DecodableState;
                      *(&v362 - 2) = MEMORY[0x277D837E0];
                      KeyPath = swift_getKeyPath();
                      MEMORY[0x28223BE20](KeyPath);
                      *(&v362 - 4) = MEMORY[0x277D837D0];
                      *(&v362 - 3) = &type metadata for DecodableState;
                      *(&v362 - 2) = MEMORY[0x277D837E0];
                      swift_getKeyPath();
                      sub_255E38728();

                      if ((v232 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_309;
                      }

                      v11 = v376;
                      if (v232 >= *(v389 + 16))
                      {
                        goto LABEL_313;
                      }

                      v389 = *(v389 + 8 * v232 + 32);

                      v7 = v378;
LABEL_172:
                      v173 = v389;
LABEL_173:
                      if ((~v173 & 0xF000000000000007) == 0)
                      {
                        sub_255D5C33C();
                        v258 = swift_allocError();
                        v252 = v370;
                        *v259 = v370;
                        *(v259 + 8) = v38;
                        *(v259 + 16) = &type metadata for DecodableState;
                        *(v259 + 32) = 0;
                        swift_willThrow();

                        v254 = v369;
                        sub_255D2F870(v369);

                        v4 = 0;
                        goto LABEL_177;
                      }

                      v260 = v369;
                      sub_255DE08EC(v173, v176, v369, &v390);
                      if (!v4)
                      {
                        sub_255D5C324(v173);
                        sub_255D2F870(v260);

                        sub_255D4DE84(v370, v38, v260, 1);
                        v154 = v390;
                        v393[0] = v390;
                        v17 = v382;
                        v56 = v380;
                        goto LABEL_86;
                      }

                      sub_255D5C324(v173);
                      sub_255D2F870(v260);

                      v4 = 0;
                      v252 = v370;
                      v254 = v260;
LABEL_177:

                      sub_255D4DE84(v252, v38, v254, 1);
                      v28 = v383;
                      v34 = v386;
LABEL_64:
                      v394 = v34;
                      v395 = v28;
                      v131 = v384;
                      v132 = *(*v384 + 112);
                      swift_beginAccess();
                      v133 = *(v131 + v132);
                      v7 = v378;
                      if (*(v133 + 16))
                      {

                        v134 = sub_255D3CA20(v386, v383);
                        if (v135)
                        {
                          v136 = v380;
                          v137 = *(*(v133 + 56) + 8 * v134);

                          MEMORY[0x28223BE20](v138);
                          v139 = MEMORY[0x277D837D0];
                          *(&v362 - 4) = MEMORY[0x277D837D0];
                          *(&v362 - 3) = &type metadata for DecodableState;
                          *(&v362 - 2) = MEMORY[0x277D837E0];
                          v140 = swift_getKeyPath();
                          MEMORY[0x28223BE20](v140);
                          *(&v362 - 4) = v139;
                          *(&v362 - 3) = &type metadata for DecodableState;
                          *(&v362 - 2) = MEMORY[0x277D837E0];
                          swift_getKeyPath();
                          sub_255E38728();

                          if ((v137 & 0x8000000000000000) != 0)
                          {
                            __break(1u);
LABEL_303:
                            __break(1u);
LABEL_304:
                            __break(1u);
LABEL_305:
                            __break(1u);
LABEL_306:
                            __break(1u);
LABEL_307:
                            __break(1u);
LABEL_308:
                            __break(1u);
LABEL_309:
                            __break(1u);
LABEL_310:
                            __break(1u);
LABEL_311:
                            __break(1u);
LABEL_312:
                            __break(1u);
LABEL_313:
                            __break(1u);
                            return;
                          }

                          v11 = v376;
                          if (v137 >= *(v390 + 16))
                          {
                            goto LABEL_304;
                          }

                          v56 = v136;
                          v393[0] = *(v390 + 8 * v137 + 32);

                          v7 = v378;
                          v17 = v382;
LABEL_85:
                          v154 = v393[0];
LABEL_86:
                          if ((~v154 & 0xF000000000000007) == 0)
                          {
                            sub_255D5C324(v154);
                            sub_255D5C33C();
                            v13 = swift_allocError();
                            v14 = v383;
                            *v15 = v386;
                            *(v15 + 8) = v14;
                            *(v15 + 16) = &type metadata for DecodableState;
                            *(v15 + 32) = 0;
                            swift_willThrow();

                            v16 = v13;
                            v17 = v382;

                            v4 = 0;
                            v18 = v379;
                            goto LABEL_6;
                          }

                          v155 = v154;
                          sub_255D5C30C(v154);
                          sub_255D5C324(v155);
                          v69 = v155;
                          v70 = v379;
                          goto LABEL_34;
                        }
                      }

                      v152 = *(v384 + *(*v384 + 120));
                      if (v152)
                      {
                        (*(*v152 + 248))(v393, &v394);
                      }

                      else
                      {
                        v393[0] = 0xF000000000000007;
                      }

                      v17 = v382;
                      v56 = v380;
                      goto LABEL_85;
                    }
                  }

                  v249 = *(v176 + *(*v176 + 120));
                  if (v249)
                  {
                    (*(*v249 + 248))(&v389, &v394);
                  }

                  else
                  {
                    v389 = 0xF000000000000007;
                  }

                  goto LABEL_172;
                }
              }

              swift_endAccess();

LABEL_222:
              v173 = v364;
            }

            else
            {
              sub_255D5C258(v173, v366, v365, 1);
              sub_255D5D0CC(v365);
            }

            sub_255DE3530(v173, v366, &v394);
            v341 = v394;
            goto LABEL_260;
          }

          if (*(v367 + qword_27F7E85F8))
          {
            v177 = qword_27F7E8600;
            v363 = *(v367 + qword_27F7E85F8);
            swift_beginAccess();
            v178 = *(v367 + v177);
            v364 = *(v178 + 16);
            sub_255D5C258(v173, v366, v365, 1);

            if (v364)
            {
              v179 = sub_255D3CA20(v173, v366);
              if (v180)
              {
                v364 = v173;
                v181 = *(v178 + 56) + 32 * v179;
                v182 = *v181;
                v183 = *(v181 + 8);
                v184 = *(v181 + 16);
                v185 = *(v181 + 24);
                swift_endAccess();
                sub_255D5C258(v182, v183, v184, v185);
                LODWORD(v362) = v185;
                sub_255DDEBF8(v363, v182, v183, v184, v185, &v394);
                if (v4)
                {

                  sub_255D4DE84(v182, v183, v184, v362);
                  v4 = 0;
                  v11 = v376;
                  v176 = v371;
                  v38 = v368;
                  v173 = v364;
                  goto LABEL_235;
                }

                sub_255D4DE84(v182, v183, v184, v362);
                v327 = v394;
                v11 = v376;
                v176 = v371;
                v38 = v368;
                v173 = v364;
LABEL_236:
                if ((~v327 & 0xF000000000000007) == 0)
                {
                  sub_255D5C324(v327);
                  sub_255D5C33C();
                  v328 = swift_allocError();
                  v329 = v366;
                  *v330 = v173;
                  *(v330 + 8) = v329;
                  *(v330 + 16) = &type metadata for DecodableState;
                  *(v330 + 32) = 0;
                  swift_willThrow();

                  v4 = 0;
                  v331 = v365;
                  goto LABEL_264;
                }

                sub_255D5C30C(v327);
                sub_255D5C324(v327);

                sub_255D4DE84(v173, v366, v365, 1);
                v173 = v327;
                goto LABEL_173;
              }
            }

            swift_endAccess();
          }

          else
          {

            sub_255D5D0CC(v365);
          }

LABEL_235:
          sub_255DE3530(v173, v366, &v388);
          v327 = v388;
          goto LABEL_236;
        }

        v43 = v371;
        v44 = *(v371 + qword_27F7E85F8);
        if (!v44)
        {
          v48 = v368;

          sub_255D5D0CC(v369);
          goto LABEL_124;
        }

        v45 = qword_27F7E8600;
        swift_beginAccess();
        v46 = *(v43 + v45);
        v366 = *(v46 + 16);
        v47 = v370;
        v48 = v368;
        sub_255D5C258(v370, v368, v369, 1);
        v367 = v44;

        if (!v366 || (v49 = sub_255D3CA20(v47, v48), (v50 & 1) == 0))
        {
          swift_endAccess();

          v43 = v371;
          goto LABEL_124;
        }

        v51 = *(v46 + 56) + 32 * v49;
        v52 = *v51;
        v53 = *(v51 + 8);
        v54 = *(v51 + 16);
        v55 = *(v51 + 24);
        swift_endAccess();
        if ((v55 & 1) == 0)
        {
          sub_255D5C258(v52, v53, v54, 0);

          v389 = v52;
          v56 = v380;
          goto LABEL_163;
        }

        v366 = v53;
        v56 = v380;
        v364 = v54;
        if ((~v54 & 0xF000000000000007) == 0)
        {
          v57 = *(v367 + qword_27F7E85F8);
          if (v57)
          {
            v365 = v52;
            v58 = v367;
            v59 = qword_27F7E8600;
            v363 = v57;
            swift_beginAccess();
            v60 = *(v58 + v59);
            v61 = *(v60 + 16);
            sub_255D5C258(v365, v366, v54, 1);

            if (v61)
            {
              v62 = sub_255D3CA20(v365, v366);
              if (v63)
              {
                v64 = *(v60 + 56) + 32 * v62;
                v65 = *v64;
                v66 = *(v64 + 8);
                v67 = *(v64 + 16);
                v68 = *(v64 + 24);
                swift_endAccess();
                sub_255D5C258(v65, v66, v67, v68);
                LODWORD(v362) = v68;
                sub_255DDEBF8(v363, v65, v66, v67, v68, &v394);
                if (v4)
                {

                  sub_255D4DE84(v65, v66, v67, v362);
                  v4 = 0;
                  v11 = v376;
                  v56 = v380;
                  goto LABEL_214;
                }

                sub_255D4DE84(v65, v66, v67, v362);
                v317 = v394;
                v11 = v376;
                v56 = v380;
                v43 = v371;
                v52 = v365;
LABEL_226:
                if ((~v317 & 0xF000000000000007) == 0)
                {
                  sub_255D5C324(v317);
                  sub_255D5C33C();
                  v318 = swift_allocError();
                  v319 = v366;
                  *v320 = v52;
                  *(v320 + 8) = v319;
                  *(v320 + 16) = &type metadata for DecodableState;
                  *(v320 + 32) = 0;
                  swift_willThrow();

                  v4 = 0;
                  v321 = v364;
                  goto LABEL_250;
                }

                sub_255D5C30C(v317);
                sub_255D5C324(v317);

                sub_255D4DE84(v52, v366, v364, 1);
                v389 = v317;
                v52 = v317;
LABEL_163:
                if ((~v52 & 0xF000000000000007) == 0)
                {
                  sub_255D5C324(v52);
                  sub_255D5C33C();
                  v251 = swift_allocError();
                  v252 = v370;
                  v38 = v368;
                  *v253 = v370;
                  *(v253 + 8) = v38;
                  *(v253 + 16) = &type metadata for DecodableState;
                  *(v253 + 32) = 0;
                  swift_willThrow();

                  v4 = 0;
                  v254 = v369;
                  goto LABEL_177;
                }

                sub_255D5C30C(v52);
                sub_255D5C324(v52);

                sub_255D4DE84(v370, v368, v369, 1);
                v393[0] = v52;
                v154 = v52;
                v17 = v382;
                goto LABEL_86;
              }
            }

            swift_endAccess();

LABEL_214:
            v43 = v371;
            v315 = v366;
            v52 = v365;
          }

          else
          {

            sub_255D5D0CC(v54);
            v315 = v366;
            v43 = v371;
          }

          sub_255DE3530(v52, v315, &v387);
          v317 = v387;
          goto LABEL_226;
        }

        v263 = *(v367 + qword_27F7E85F8);
        if (v263)
        {
          v365 = v52;
          v264 = v367;
          v265 = qword_27F7E8600;
          v363 = v263;
          swift_beginAccess();
          v266 = *(v264 + v265);
          v267 = *(v266 + 16);
          sub_255D5C258(v365, v366, v54, 1);
          sub_255D5D0CC(v54);

          if (v267)
          {
            v268 = sub_255D3CA20(v365, v366);
            if (v269)
            {
              v270 = *(v266 + 56) + 32 * v268;
              v271 = *v270;
              v272 = *(v270 + 8);
              v273 = *(v270 + 16);
              v274 = *(v270 + 24);
              swift_endAccess();
              sub_255D5C258(v271, v272, v273, v274);
              LODWORD(v362) = v274;
              sub_255DDEBF8(v363, v271, v272, v273, v274, &v394);
              if (v4)
              {

                sub_255D4DE84(v271, v272, v273, v362);
                v4 = 0;
                v11 = v376;
                v56 = v380;
                goto LABEL_219;
              }

              sub_255D4DE84(v271, v272, v273, v362);
              v336 = v394;
              v11 = v376;
              v56 = v380;
              v43 = v371;
              v52 = v365;
LABEL_246:
              if ((~v336 & 0xF000000000000007) != 0)
              {
                v375 = v336;
                v321 = v364;
                sub_255DE08EC(v336, v367, v364, &v388);
                if (!v4)
                {
                  sub_255D5C324(v375);
                  sub_255D2F870(v321);

                  sub_255D4DE84(v52, v366, v321, 1);
                  v52 = v388;
                  v389 = v388;
                  goto LABEL_163;
                }

                sub_255D5C324(v375);
                sub_255D2F870(v321);

                v4 = 0;
                v319 = v366;
              }

              else
              {
                sub_255D5C33C();
                v375 = swift_allocError();
                v319 = v366;
                *v337 = v52;
                *(v337 + 8) = v319;
                *(v337 + 16) = &type metadata for DecodableState;
                *(v337 + 32) = 0;
                swift_willThrow();

                v321 = v364;
                sub_255D2F870(v364);

                v4 = 0;
              }

LABEL_250:

              sub_255D4DE84(v52, v319, v321, 1);
              v48 = v368;
LABEL_124:
              v394 = v370;
              v395 = v48;
              v210 = *(*v43 + 112);
              swift_beginAccess();
              v211 = *(v43 + v210);
              if (*(v211 + 16))
              {

                v212 = sub_255D3CA20(v370, v368);
                if (v213)
                {
                  v214 = *(*(v211 + 56) + 8 * v212);

                  MEMORY[0x28223BE20](v215);
                  v216 = MEMORY[0x277D837D0];
                  *(&v362 - 4) = MEMORY[0x277D837D0];
                  *(&v362 - 3) = &type metadata for DecodableState;
                  *(&v362 - 2) = MEMORY[0x277D837E0];
                  v217 = swift_getKeyPath();
                  MEMORY[0x28223BE20](v217);
                  *(&v362 - 4) = v216;
                  *(&v362 - 3) = &type metadata for DecodableState;
                  *(&v362 - 2) = MEMORY[0x277D837E0];
                  swift_getKeyPath();
                  sub_255E38728();

                  if ((v214 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_306;
                  }

                  v11 = v376;
                  v56 = v380;
                  if (v214 >= *(v388 + 16))
                  {
                    goto LABEL_310;
                  }

                  v389 = *(v388 + 8 * v214 + 32);

                  v7 = v378;
                  goto LABEL_162;
                }
              }

              v247 = *(v43 + *(*v43 + 120));
              if (v247)
              {
                (*(*v247 + 248))(&v389, &v394);
              }

              else
              {
                v389 = 0xF000000000000007;
              }

              v56 = v380;
LABEL_162:
              v52 = v389;
              goto LABEL_163;
            }
          }

          swift_endAccess();

LABEL_219:
          v43 = v371;
          v316 = v366;
          v52 = v365;
        }

        else
        {
          sub_255D5C258(v52, v366, v54, 1);
          sub_255D5D0CC(v54);
          v316 = v366;
          v43 = v371;
        }

        sub_255DE3530(v52, v316, &v394);
        v336 = v394;
        goto LABEL_246;
      }

      v89 = v384;
      v90 = *(v384 + v374);
      if (!v90)
      {
        v94 = v386;
        v141 = v382;
        sub_255D5C258(v386, v28, v382, 1);

        sub_255D5D0CC(v141);
        goto LABEL_70;
      }

      v91 = v373;
      swift_beginAccess();
      v92 = *(v89 + v91);
      v93 = *(v92 + 16);
      v94 = v386;
      v371 = v90;
      v95 = v382;
      sub_255D5C258(v386, v28, v382, 1);

      v96 = v95;
      v97 = v371;
      sub_255D5D0CC(v96);

      if (!v93 || (v98 = sub_255D3CA20(v94, v28), (v99 & 1) == 0))
      {
        swift_endAccess();

        goto LABEL_70;
      }

      v375 = v4;
      v100 = *(v92 + 56) + 32 * v98;
      v101 = *v100;
      v102 = *(v100 + 8);
      v103 = *(v100 + 16);
      v104 = *(v100 + 24);
      swift_endAccess();
      if ((v104 & 1) == 0)
      {
        sub_255D5C258(v101, v102, v103, 0);

        v145 = v380;
        v7 = v378;
        v156 = v101;
        v4 = v375;
        v11 = v376;
        goto LABEL_90;
      }

      v368 = v101;
      v369 = v102;
      v370 = v103;
      v42 = (~v103 & 0xF000000000000007) == 0;
      v7 = v378;
      if (v42)
      {
        v105 = *(v97 + qword_27F7E85F8);
        v106 = v368;
        v4 = v375;
        if (v105)
        {
          v107 = qword_27F7E8600;
          swift_beginAccess();
          v108 = *(v97 + v107);
          v109 = *(v108 + 16);
          v110 = v369;
          sub_255D5C258(v106, v369, v370, 1);

          if (v109)
          {
            v111 = sub_255D3CA20(v106, v110);
            if (v112)
            {
              v367 = v105;
              v113 = *(v108 + 56) + 32 * v111;
              v114 = *v113;
              v115 = *(v113 + 8);
              v116 = *(v113 + 16);
              v117 = *(v113 + 24);
              swift_endAccess();
              if ((v117 & 1) == 0)
              {
                sub_255D5C258(v114, v115, v116, 0);

                v390 = v114;
                v110 = v369;
                v118 = v106;
                goto LABEL_168;
              }

              v365 = v116;
              v366 = v115;
              v118 = v106;
              if ((~v116 & 0xF000000000000007) == 0)
              {
                v119 = v367;
                v120 = *(v367 + qword_27F7E85F8);
                if (v120)
                {
                  v364 = qword_27F7E8600;
                  swift_beginAccess();
                  v362 = *(v119 + v364);
                  v363 = *(v362 + 16);
                  v121 = v366;
                  sub_255D5C258(v114, v366, v116, 1);
                  v364 = v120;

                  if (v363)
                  {
                    v122 = sub_255D3CA20(v114, v121);
                    if (v123)
                    {
                      v124 = *(v362 + 56) + 32 * v122;
                      v126 = *v124;
                      v125 = *(v124 + 8);
                      v127 = *(v124 + 16);
                      v128 = *(v124 + 24);
                      swift_endAccess();
                      sub_255D5C258(v126, v125, v127, v128);
                      v362 = v126;
                      LODWORD(v363) = v128;
                      sub_255DDEBF8(v364, v126, v125, v127, v128, &v394);
                      if (v4)
                      {

                        sub_255D4DE84(v362, v125, v127, v363);
                        v4 = 0;
                        v7 = v378;
                        v118 = v368;
                        v121 = v366;
                        goto LABEL_230;
                      }

                      sub_255D4DE84(v362, v125, v127, v363);
                      v322 = v394;
                      v7 = v378;
                      v118 = v368;
LABEL_231:
                      v110 = v369;
                      if ((~v322 & 0xF000000000000007) == 0)
                      {
                        sub_255D5C324(v322);
                        sub_255D5C33C();
                        v323 = swift_allocError();
                        v324 = v366;
                        *v325 = v114;
                        *(v325 + 8) = v324;
                        *(v325 + 16) = &type metadata for DecodableState;
                        *(v325 + 32) = 0;
                        swift_willThrow();

                        v4 = 0;
                        v326 = v365;
                        goto LABEL_257;
                      }

                      sub_255D5C30C(v322);
                      sub_255D5C324(v322);

                      sub_255D4DE84(v114, v366, v365, 1);
                      v390 = v322;
                      v114 = v322;
LABEL_168:
                      if ((~v114 & 0xF000000000000007) != 0)
                      {
                        sub_255D5C30C(v114);
                        sub_255D5C324(v114);

                        sub_255D4DE84(v118, v110, v370, 1);
                        v156 = v114;
LABEL_188:
                        v11 = v376;
                        v145 = v380;
                        goto LABEL_90;
                      }

                      v255 = v110;
                      sub_255D5C324(v114);
                      sub_255D5C33C();
                      v256 = swift_allocError();
                      *v257 = v118;
                      *(v257 + 8) = v110;
                      *(v257 + 16) = &type metadata for DecodableState;
                      *(v257 + 32) = 0;
                      swift_willThrow();

                      v4 = 0;
                      v246 = v370;
                      goto LABEL_185;
                    }
                  }

                  swift_endAccess();
                }

                else
                {
                  v121 = v366;

                  sub_255D5D0CC(v116);
                }

LABEL_230:
                sub_255DE3530(v114, v121, &v388);
                v322 = v388;
                goto LABEL_231;
              }

              v275 = v367;
              v276 = *(v367 + qword_27F7E85F8);
              if (v276)
              {
                v277 = qword_27F7E8600;
                swift_beginAccess();
                v362 = *(v275 + v277);
                v363 = *(v362 + 16);
                v279 = v365;
                v278 = v366;
                sub_255D5C258(v114, v366, v365, 1);
                v280 = v279;
                v281 = v278;
                sub_255D5D0CC(v280);
                v364 = v276;

                if (v363)
                {
                  v282 = sub_255D3CA20(v114, v278);
                  if (v283)
                  {
                    v284 = *(v362 + 56) + 32 * v282;
                    v285 = *v284;
                    v286 = *(v284 + 8);
                    v287 = *(v284 + 16);
                    v288 = *(v284 + 24);
                    swift_endAccess();
                    sub_255D5C258(v285, v286, v287, v288);
                    sub_255DDEBF8(v364, v285, v286, v287, v288, &v394);
                    if (v4)
                    {

                      sub_255D4DE84(v285, v286, v287, v288);
                      v4 = 0;
                      v7 = v378;
                      v118 = v368;
                      v281 = v366;
                      goto LABEL_252;
                    }

                    sub_255D4DE84(v285, v286, v287, v288);
                    v339 = v394;
                    v7 = v378;
                    v118 = v368;
LABEL_253:
                    v110 = v369;
                    if ((~v339 & 0xF000000000000007) != 0)
                    {
                      v326 = v365;
                      sub_255DE08EC(v339, v367, v365, &v389);
                      if (!v4)
                      {
                        sub_255D5C324(v339);
                        sub_255D2F870(v326);

                        sub_255D4DE84(v114, v366, v326, 1);
                        v114 = v389;
                        v390 = v389;
                        goto LABEL_168;
                      }

                      sub_255D5C324(v339);
                      sub_255D2F870(v326);

                      v4 = 0;
                      v324 = v366;
                    }

                    else
                    {
                      sub_255D5C33C();
                      v375 = swift_allocError();
                      v324 = v366;
                      *v340 = v114;
                      *(v340 + 8) = v324;
                      *(v340 + 16) = &type metadata for DecodableState;
                      *(v340 + 32) = 0;
                      swift_willThrow();

                      v326 = v365;
                      sub_255D2F870(v365);

                      v4 = 0;
                    }

LABEL_257:

                    sub_255D4DE84(v114, v324, v326, 1);
LABEL_131:
                    v394 = v118;
                    v395 = v110;
                    v218 = v371;
                    v219 = *(*v371 + 112);
                    swift_beginAccess();
                    v220 = *(v218 + v219);
                    if (*(v220 + 16))
                    {

                      v221 = sub_255D3CA20(v118, v110);
                      if (v222)
                      {
                        v223 = *(*(v220 + 56) + 8 * v221);

                        MEMORY[0x28223BE20](v224);
                        v225 = MEMORY[0x277D837D0];
                        *(&v362 - 4) = MEMORY[0x277D837D0];
                        *(&v362 - 3) = &type metadata for DecodableState;
                        *(&v362 - 2) = MEMORY[0x277D837E0];
                        v226 = swift_getKeyPath();
                        v375 = &v362;
                        MEMORY[0x28223BE20](v226);
                        *(&v362 - 4) = v225;
                        *(&v362 - 3) = &type metadata for DecodableState;
                        *(&v362 - 2) = MEMORY[0x277D837E0];
                        swift_getKeyPath();
                        sub_255E38728();

                        if ((v223 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_308;
                        }

                        if (v223 >= *(v389 + 16))
                        {
                          goto LABEL_312;
                        }

                        v390 = *(v389 + 8 * v223 + 32);

                        v7 = v378;
                        goto LABEL_167;
                      }
                    }

                    v248 = *(v371 + *(*v371 + 120));
                    if (v248)
                    {
                      (*(*v248 + 248))(&v390, &v394);
                    }

                    else
                    {
                      v390 = 0xF000000000000007;
                    }

LABEL_167:
                    v114 = v390;
                    goto LABEL_168;
                  }
                }

                swift_endAccess();
              }

              else
              {
                v338 = v365;
                v281 = v366;
                sub_255D5C258(v114, v366, v365, 1);
                sub_255D5D0CC(v338);
              }

LABEL_252:
              sub_255DE3530(v114, v281, &v394);
              v339 = v394;
              goto LABEL_253;
            }
          }

          swift_endAccess();
        }

        else
        {
          v110 = v369;

          sub_255D5D0CC(v370);
        }

        v118 = v106;
        goto LABEL_131;
      }

      v186 = *(v97 + qword_27F7E85F8);
      v187 = v368;
      v4 = v375;
      if (!v186)
      {
        v192 = v369;
        v235 = v370;
        sub_255D5C258(v368, v369, v370, 1);
        sub_255D5D0CC(v235);
        goto LABEL_143;
      }

      v188 = qword_27F7E8600;
      swift_beginAccess();
      v189 = *(v97 + v188);
      v190 = *(v189 + 16);
      v192 = v369;
      v191 = v370;
      sub_255D5C258(v187, v369, v370, 1);
      sub_255D5D0CC(v191);

      v193 = v186;
      if (!v190 || (v194 = sub_255D3CA20(v187, v192), (v195 & 1) == 0))
      {
        swift_endAccess();

        v4 = v375;
        goto LABEL_143;
      }

      v196 = *(v189 + 56) + 32 * v194;
      v198 = *v196;
      v197 = *(v196 + 8);
      v367 = *(v196 + 16);
      v199 = *(v196 + 24);
      swift_endAccess();
      if ((v199 & 1) == 0)
      {
        sub_255D5C258(v198, v197, v367, 0);

        v246 = v370;
        v4 = v375;
        goto LABEL_181;
      }

      v4 = v375;
      if ((~v367 & 0xF000000000000007) == 0)
      {
        v200 = *(v186 + qword_27F7E85F8);
        if (v200)
        {
          v201 = qword_27F7E8600;
          swift_beginAccess();
          v202 = *(v193 + v201);
          v366 = *(v202 + 16);
          sub_255D5C258(v198, v197, v367, 1);

          if (v366)
          {
            v203 = sub_255D3CA20(v198, v197);
            if (v204)
            {
              v365 = v197;
              v366 = v200;
              v205 = *(v202 + 56) + 32 * v203;
              v206 = *v205;
              v207 = *(v205 + 8);
              v208 = *(v205 + 16);
              v209 = *(v205 + 24);
              swift_endAccess();
              sub_255D5C258(v206, v207, v208, v209);
              LODWORD(v364) = v209;
              sub_255DDEBF8(v366, v206, v207, v208, v209, &v394);
              if (v4)
              {

                sub_255D4DE84(v206, v207, v208, v364);
                v4 = 0;
                v7 = v378;
                v197 = v365;
                goto LABEL_240;
              }

              sub_255D4DE84(v206, v207, v208, v364);
              v332 = v394;
              v7 = v378;
              v197 = v365;
LABEL_241:
              if ((~v332 & 0xF000000000000007) == 0)
              {
                sub_255D5C324(v332);
                sub_255D5C33C();
                v333 = swift_allocError();
                *v334 = v198;
                *(v334 + 8) = v197;
                *(v334 + 16) = &type metadata for DecodableState;
                *(v334 + 32) = 0;
                swift_willThrow();

                v335 = v333;
                goto LABEL_271;
              }

              sub_255D5C30C(v332);
              sub_255D5C324(v332);

              sub_255D4DE84(v198, v197, v367, 1);
              v198 = v332;
              v246 = v370;
              goto LABEL_181;
            }
          }

          swift_endAccess();
        }

        else
        {

          sub_255D5D0CC(v367);
        }

LABEL_240:
        sub_255DE3530(v198, v197, &v389);
        v332 = v389;
        goto LABEL_241;
      }

      v302 = *(v186 + qword_27F7E85F8);
      if (v302)
      {
        v303 = qword_27F7E8600;
        v366 = v302;
        swift_beginAccess();
        v304 = *(v193 + v303);
        v305 = v197;
        v365 = *(v304 + 16);
        v306 = v197;
        v307 = v367;
        sub_255D5C258(v198, v306, v367, 1);
        sub_255D5D0CC(v307);

        if (v365 && (v308 = sub_255D3CA20(v198, v305), (v309 & 1) != 0))
        {
          v365 = v305;
          v310 = *(v304 + 56) + 32 * v308;
          v312 = *v310;
          v311 = *(v310 + 8);
          v313 = *(v310 + 16);
          v314 = *(v310 + 24);
          swift_endAccess();
          sub_255D5C258(v312, v311, v313, v314);
          v363 = v312;
          LODWORD(v364) = v314;
          sub_255DDEBF8(v366, v312, v311, v313, v314, &v394);
          if (!v4)
          {

            sub_255D4DE84(v363, v311, v313, v364);
            v344 = v394;
            v7 = v378;
            v197 = v365;
            goto LABEL_267;
          }

          sub_255D4DE84(v363, v311, v313, v364);
          v4 = 0;
          v7 = v378;
          v197 = v365;
        }

        else
        {
          swift_endAccess();

          v197 = v305;
        }
      }

      else
      {
        v343 = v367;
        sub_255D5C258(v198, v197, v367, 1);
        sub_255D5D0CC(v343);
      }

      sub_255DE3530(v198, v197, &v394);
      v344 = v394;
LABEL_267:
      if ((~v344 & 0xF000000000000007) == 0)
      {
        sub_255D5C33C();
        v345 = swift_allocError();
        *v346 = v198;
        *(v346 + 8) = v197;
        *(v346 + 16) = &type metadata for DecodableState;
        *(v346 + 32) = 0;
        swift_willThrow();

        sub_255D2F870(v367);
        v335 = v345;
        goto LABEL_271;
      }

      sub_255DE08EC(v344, v193, v367, &v390);
      if (v4)
      {
        sub_255D5C324(v344);
        sub_255D2F870(v367);
        v335 = v4;
LABEL_271:

        v4 = 0;

        sub_255D4DE84(v198, v197, v367, 1);
        v187 = v368;
        v192 = v369;
LABEL_143:
        v394 = v187;
        v395 = v192;
        v236 = v371;
        v237 = *(*v371 + 112);
        swift_beginAccess();
        v238 = *(v236 + v237);
        if (*(v238 + 16))
        {

          v239 = sub_255D3CA20(v187, v369);
          if (v240)
          {
            v241 = *(*(v238 + 56) + 8 * v239);

            MEMORY[0x28223BE20](v242);
            v243 = MEMORY[0x277D837D0];
            *(&v362 - 4) = MEMORY[0x277D837D0];
            *(&v362 - 3) = &type metadata for DecodableState;
            v244 = MEMORY[0x277D837E0];
            *(&v362 - 2) = MEMORY[0x277D837E0];
            v245 = swift_getKeyPath();
            v375 = &v362;
            MEMORY[0x28223BE20](v245);
            *(&v362 - 4) = v243;
            *(&v362 - 3) = &type metadata for DecodableState;
            *(&v362 - 2) = v244;
            swift_getKeyPath();
            sub_255E38728();

            v246 = v370;
            if ((v241 & 0x8000000000000000) != 0)
            {
              goto LABEL_307;
            }

            if (v241 >= *(v390 + 16))
            {
              goto LABEL_311;
            }

            v390 = *(v390 + 8 * v241 + 32);

            v7 = v378;
            goto LABEL_180;
          }
        }

        v250 = *(v371 + *(*v371 + 120));
        if (v250)
        {
          (*(*v250 + 248))(&v390, &v394);
        }

        else
        {
          v390 = 0xF000000000000007;
        }

        v246 = v370;
LABEL_180:
        v198 = v390;
        goto LABEL_181;
      }

      sub_255D5C324(v344);
      v348 = v367;
      sub_255D2F870(v367);

      sub_255D4DE84(v198, v197, v348, 1);
      v198 = v390;
      v246 = v370;
LABEL_181:
      if ((~v198 & 0xF000000000000007) != 0)
      {
        sub_255DE08EC(v198, v371, v246, v393);
        if (!v4)
        {
          sub_255D5C324(v198);
          sub_255D2F870(v246);

          sub_255D4DE84(v368, v369, v246, 1);
          v156 = v393[0];
          goto LABEL_188;
        }

        sub_255D5C324(v198);
        sub_255D2F870(v246);

        v4 = 0;
        v118 = v368;
        v255 = v369;
      }

      else
      {
        sub_255D5C33C();
        v261 = swift_allocError();
        v118 = v368;
        v255 = v369;
        *v262 = v368;
        *(v262 + 8) = v255;
        *(v262 + 16) = &type metadata for DecodableState;
        *(v262 + 32) = 0;
        swift_willThrow();

        sub_255D2F870(v246);

        v4 = 0;
      }

LABEL_185:

      sub_255D4DE84(v118, v255, v246, 1);
      v28 = v383;
      v94 = v386;
LABEL_70:
      v394 = v94;
      v395 = v28;
      v142 = v384;
      v143 = *(*v384 + 112);
      swift_beginAccess();
      v144 = *(v142 + v143);
      v11 = v376;
      v145 = v380;
      v7 = v378;
      if (*(v144 + 16))
      {

        v146 = sub_255D3CA20(v386, v383);
        if (v147)
        {
          v148 = *(*(v144 + 56) + 8 * v146);

          MEMORY[0x28223BE20](v149);
          v150 = MEMORY[0x277D837D0];
          *(&v362 - 4) = MEMORY[0x277D837D0];
          *(&v362 - 3) = &type metadata for DecodableState;
          *(&v362 - 2) = MEMORY[0x277D837E0];
          v151 = swift_getKeyPath();
          MEMORY[0x28223BE20](v151);
          *(&v362 - 4) = v150;
          *(&v362 - 3) = &type metadata for DecodableState;
          *(&v362 - 2) = MEMORY[0x277D837E0];
          swift_getKeyPath();
          sub_255E38728();

          if ((v148 & 0x8000000000000000) != 0)
          {
            goto LABEL_303;
          }

          v11 = v376;
          v145 = v380;
          if (v148 >= *(v393[0] + 16))
          {
            goto LABEL_305;
          }

          v393[0] = *(v393[0] + 8 * v148 + 32);

          v7 = v378;
          goto LABEL_89;
        }
      }

      v153 = *(v384 + *(*v384 + 120));
      if (v153)
      {
        (*(*v153 + 248))(v393, &v394);
      }

      else
      {
        v393[0] = 0xF000000000000007;
      }

LABEL_89:
      v156 = v393[0];
LABEL_90:
      if ((~v156 & 0xF000000000000007) == 0)
      {
        sub_255D5C33C();
        v157 = swift_allocError();
        v158 = v383;
        *v159 = v386;
        *(v159 + 8) = v158;
        *(v159 + 16) = &type metadata for DecodableState;
        *(v159 + 32) = 0;
        swift_willThrow();

        v160 = v382;
        sub_255D2F870(v382);
        v161 = v157;
        v17 = v160;
        goto LABEL_94;
      }

      v17 = v382;
      sub_255DE08EC(v156, v384, v382, &v391);
      if (v4)
      {
        sub_255D5C324(v156);
        sub_255D2F870(v17);
        v161 = v4;
LABEL_94:

        v4 = 0;
        v18 = v379;
        v56 = v145;
LABEL_6:
        v391 = v381;
        v392 = v18;
        goto LABEL_7;
      }

      sub_255D5C324(v156);
      sub_255D2F870(v17);
      v69 = v391;
      v70 = v379;
      v56 = v145;
LABEL_34:
      v391 = v381;
      v392 = v70;
      if ((~v69 & 0xF000000000000007) != 0)
      {
        v375 = v4;
        v71 = v56;
        v72 = v69;
        v382 = v17;
        v73 = v384;
        v74 = *(*v384 + 112);
        swift_beginAccess();
        v75 = *(v73 + v74);
        v76 = *(v75 + 16);

        if (!v76)
        {
          goto LABEL_61;
        }

        v77 = sub_255D3CA20(v381, v70);
        if (v78)
        {
          v79 = *(*(v75 + 56) + 8 * v77);
          v379 = v70;

          MEMORY[0x28223BE20](v80);
          v81 = MEMORY[0x277D837D0];
          *(&v362 - 4) = MEMORY[0x277D837D0];
          *(&v362 - 3) = &type metadata for DecodableState;
          v82 = MEMORY[0x277D837E0];
          *(&v362 - 2) = MEMORY[0x277D837E0];
          v83 = swift_getKeyPath();
          MEMORY[0x28223BE20](v83);
          *(&v362 - 4) = v81;
          *(&v362 - 3) = &type metadata for DecodableState;
          *(&v362 - 2) = v82;
          swift_getKeyPath();
          v381 = sub_255E38718();
          v85 = v84;
          v86 = *v84;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v85 = v86;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v86 = sub_255DF5ECC(v86);
            *v85 = v86;
          }

          v88 = v380;
          v4 = v375;
          if ((v79 & 0x8000000000000000) != 0)
          {
            goto LABEL_299;
          }

          if (v79 >= *(v86 + 2))
          {
            goto LABEL_300;
          }

          *&v86[8 * v79 + 32] = v72;

          v381(&v394, 0);

          sub_255D5C324(v72);

          sub_255D4DE84(v386, v383, v382, v88);
          v7 = v378;
          v11 = v376;
        }

        else
        {

LABEL_61:
          v129 = *(v384 + *(*v384 + 120));
          if (v129)
          {
            v394 = v72;
            v130 = *(*v129 + 256);
            sub_255D5C30C(v72);

            v130(&v394, &v391);
            v7 = v378;

            sub_255D5C324(v72);
          }

          else
          {
            sub_255DD5C54(v381, v70, v72);
            sub_255D5C324(v72);
            swift_bridgeObjectRelease_n();
          }

          sub_255D4DE84(v386, v383, v382, v71);
          v4 = v375;
          v11 = v376;
        }
      }

      else
      {
LABEL_7:

        sub_255D4DE84(v386, v383, v17, v56);
      }
    }
  }

LABEL_285:
  if (v6)
  {
    v349 = *(v6 + 16);
    if (v349)
    {
      v350 = 0;
      v351 = v6 + 32;
      while (v350 < *(v6 + 16))
      {
        sub_255D3CE1C(v351, &v394);
        v352 = v396;
        v353 = v397;
        __swift_project_boxed_opaque_existential_1(&v394, v396);
        (*(v353 + 40))(a1, v385, v352, v353);
        if (v4)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v394);
          if (qword_27F7E5E80 != -1)
          {
            goto LABEL_301;
          }

          goto LABEL_293;
        }

        ++v350;
        __swift_destroy_boxed_opaque_existential_1Tm(&v394);
        v351 += 40;
        if (v349 == v350)
        {
          return;
        }
      }

LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      swift_once();
LABEL_293:
      v354 = sub_255E386A8();
      __swift_project_value_buffer(v354, qword_27F8152D8);
      v355 = v4;
      v356 = sub_255E38688();
      v357 = sub_255E3A848();

      if (os_log_type_enabled(v356, v357))
      {
        v358 = swift_slowAlloc();
        v359 = swift_slowAlloc();
        *v358 = 138412290;
        v360 = v4;
        v361 = _swift_stdlib_bridgeErrorToNSError();
        *(v358 + 4) = v361;
        *v359 = v361;
        _os_log_impl(&dword_255D2E000, v356, v357, "AnimationAction encountered error while animating actions: %@", v358, 0xCu);
        sub_255D395E4(v359, &qword_27F7E6B60, &qword_255E3EF00);
        MEMORY[0x259C4F9E0](v359, -1, -1);
        MEMORY[0x259C4F9E0](v358, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_255DFA0A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6974616D696E61;
  v4 = 0xE90000000000006ELL;
  if (v2 != 1)
  {
    v3 = 0x736E6F69746361;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 2036625250;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6F6974616D696E61;
  v8 = 0xE90000000000006ELL;
  if (*a2 != 1)
  {
    v7 = 0x736E6F69746361;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 2036625250;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255DFA1A4()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DFA244(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DFA2D0(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255DFA36C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DFB208(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255DFA39C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE90000000000006ELL;
  v5 = 0x6F6974616D696E61;
  if (v2 != 1)
  {
    v5 = 0x736E6F69746361;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2036625250;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255DFA3F8()
{
  v1 = 0x6F6974616D696E61;
  if (*v0 != 1)
  {
    v1 = 0x736E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2036625250;
  }
}

unint64_t sub_255DFA450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255DFB208(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255DFA478(uint64_t a1)
{
  v2 = sub_255DFB018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFA4B4(uint64_t a1)
{
  v2 = sub_255DFB018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFA4F0@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v70 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v77 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E86E8, &qword_255E56C58);
  v75 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - v9;
  v11 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_255DFB018();
  sub_255E3AE28();
  if (v2)
  {
LABEL_2:
    v12 = v79;
    goto LABEL_28;
  }

  v71 = v7;
  v78 = v5;
  LOBYTE(v85) = 0;
  v13 = v10;
  v14 = v8;
  if ((sub_255E3ABE8() & 1) == 0)
  {
    v15 = 0;
    v16 = v79;
LABEL_25:
    v90 = 1;
    sub_255DFB06C();
    sub_255E3ABA8();
    if (!v3)
    {
      v94 = v91;
      v95 = v92;
      v96[0] = v93[0];
      *(v96 + 9) = *(v93 + 9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
      LOBYTE(v85) = 2;
      sub_255D7B658();
      sub_255E3ABA8();
      v76 = v15;
      v54 = v89;
      v55 = v75;
      if (v89)
      {
        v56 = *(v89 + 16);
        if (v56)
        {
          v66 = v13;
          v67 = v14;
          v97 = 0;
          v80 = MEMORY[0x277D84F90];
          sub_255DE5EF0(0, v56, 0);
          v57 = v80;
          v58 = v54 + 32;
          do
          {
            sub_255D7B730(v58, &v81);
            sub_255D34630(&v81, &v85);
            v80 = v57;
            v60 = *(v57 + 16);
            v59 = *(v57 + 24);
            if (v60 >= v59 >> 1)
            {
              sub_255DE5EF0((v59 > 1), v60 + 1, 1);
              v57 = v80;
            }

            *(v57 + 16) = v60 + 1;
            sub_255D34630(&v85, v57 + 40 * v60 + 32);
            v58 += 40;
            --v56;
          }

          while (v56);
          (*(v75 + 8))(v66, v67);
        }

        else
        {

          (*(v55 + 8))(v13, v14);
          v57 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        (*(v75 + 8))(v13, v14);
        v57 = 0;
      }

      v61 = v70;
      v62 = v76;
      *&v81 = v76;
      *(&v81 + 1) = v57;
      v83 = v95;
      v84[0] = v96[0];
      *(v84 + 9) = *(v96 + 9);
      v82 = v94;
      v63 = v94;
      v64 = v84[0];
      v65 = v81;
      v70[2] = v95;
      v61[3] = v64;
      *(v61 + 57) = *(v84 + 9);
      *v61 = v65;
      v61[1] = v63;
      sub_255D5C9C8(&v81, &v85);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      *&v85 = v62;
      *(&v85 + 1) = v57;
      v86 = v94;
      v87 = v95;
      v88[0] = v96[0];
      *(v88 + 9) = *(v96 + 9);
      return sub_255DFB0C0(&v85);
    }

    (*(v75 + 8))(v13, v14);
    v12 = v16;
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  LOBYTE(v85) = 0;
  sub_255D3CAFC();
  sub_255E3AB58();
  v66 = v10;
  v67 = v8;
  v17 = v78;
  v18 = sub_255E3ABD8();
  v19 = v18;
  v69 = *(v18 + 16);
  if (!v69)
  {
    v15 = MEMORY[0x277D84F98];
    v28 = v77;
LABEL_24:
    (*(v28 + 8))(v71, v17);

    v16 = v79;
    v13 = v66;
    v14 = v67;
    goto LABEL_25;
  }

  v20 = 0;
  v15 = MEMORY[0x277D84F98];
  v21 = (v18 + 56);
  v68 = v18;
  while (v20 < *(v19 + 16))
  {
    v74 = v20;
    v76 = v15;
    v29 = *(v21 - 3);
    v30 = *(v21 - 2);
    v31 = *v21;
    v32 = *(v21 - 1);
    v97 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    *&v81 = v29;
    *(&v81 + 1) = v30;
    *&v82 = v32;
    v33 = v78;
    BYTE8(v82) = v31;
    sub_255D38950(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600, protocol conformance descriptor for Referenceable<A>);
    swift_bridgeObjectRetain_n();
    v34 = v71;
    v35 = v97;
    sub_255E3ABC8();
    if (v35)
    {

      (*(v77 + 8))(v34, v33);
      (*(v75 + 8))(v66, v67);

      goto LABEL_2;
    }

    v97 = 0;

    v72 = v85;
    v73 = v86;
    v36 = BYTE8(v86);
    v37 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v81 = v37;
    v40 = sub_255D3CA20(v29, v30);
    v41 = v37[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_41;
    }

    v44 = v39;
    if (v37[3] >= v43)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v39)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_255D824D4();
        if (v44)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_255D80994(v43, isUniquelyReferenced_nonNull_native);
      v45 = sub_255D3CA20(v29, v30);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_43;
      }

      v40 = v45;
      if (v44)
      {
LABEL_8:

        v15 = v81;
        v22 = *(v81 + 56) + 32 * v40;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(&v72 + 1);
        *v22 = v72;
        *(v22 + 8) = v27;
        *(v22 + 16) = v73;
        *(v22 + 24) = v36;
        sub_255D4DE84(v23, v24, v25, v26);
        goto LABEL_9;
      }
    }

    v15 = v81;
    *(v81 + 8 * (v40 >> 6) + 64) |= 1 << v40;
    v47 = (v15[6] + 16 * v40);
    *v47 = v29;
    v47[1] = v30;
    v48 = v15[7] + 32 * v40;
    v49 = *(&v72 + 1);
    *v48 = v72;
    *(v48 + 8) = v49;
    *(v48 + 16) = v73;
    *(v48 + 24) = v36;
    v50 = v15[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_42;
    }

    v15[2] = v52;
LABEL_9:
    v20 = v74 + 1;
    v21 += 32;
    v19 = v68;
    v3 = v97;
    v28 = v77;
    v17 = v78;
    if (v69 == v74 + 1)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_255E3AD28();
  __break(1u);
  return result;
}

uint64_t sub_255DFAD24(unint64_t a1, uint64_t a2)
{
  sub_255DF6C98(a1, a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_255DFAD9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(v4 + 8);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_255D48A94(v11);

  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v12, a2, a3, v9, v10, a4);
}

unint64_t sub_255DFAE6C(uint64_t a1)
{
  result = sub_255DFAE94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DFAE94()
{
  result = qword_27F7E86D8;
  if (!qword_27F7E86D8)
  {
    result = swift_getWitnessTable(aY6, &type metadata for AnimationAction, v0, v1);
    atomic_store(result, &qword_27F7E86D8);
  }

  return result;
}

unint64_t sub_255DFAEE8(uint64_t a1)
{
  result = sub_255DFAF10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DFAF10()
{
  result = qword_27F7E86E0;
  if (!qword_27F7E86E0)
  {
    result = swift_getWitnessTable(byte_255E56BB8, &type metadata for AnimationAction, v0, v1);
    atomic_store(result, &qword_27F7E86E0);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_255DFAF8C()
{
  result = qword_27F7E6AE0;
  if (!qword_27F7E6AE0)
  {
    v3 = sub_255E3A3B8();
    result = swift_getWitnessTable(MEMORY[0x277D851A0], v3, v0, v1);
    atomic_store(result, &qword_27F7E6AE0);
  }

  return result;
}

unint64_t sub_255DFB018()
{
  result = qword_27F7E86F0;
  if (!qword_27F7E86F0)
  {
    result = swift_getWitnessTable(byte_255E56D5C, &type metadata for AnimationAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E86F0);
  }

  return result;
}

unint64_t sub_255DFB06C()
{
  result = qword_27F7E8700;
  if (!qword_27F7E8700)
  {
    result = swift_getWitnessTable(byte_255E49C74, &type metadata for SwiftUIAnimation, v0, v1);
    atomic_store(result, &qword_27F7E8700);
  }

  return result;
}

unint64_t sub_255DFB104()
{
  result = qword_27F7E8708;
  if (!qword_27F7E8708)
  {
    result = swift_getWitnessTable(byte_255E56D34, &type metadata for AnimationAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8708);
  }

  return result;
}

unint64_t sub_255DFB15C()
{
  result = qword_27F7E8710;
  if (!qword_27F7E8710)
  {
    result = swift_getWitnessTable(a5cE, &type metadata for AnimationAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8710);
  }

  return result;
}

unint64_t sub_255DFB1B4()
{
  result = qword_27F7E8718;
  if (!qword_27F7E8718)
  {
    result = swift_getWitnessTable(aE_7, &type metadata for AnimationAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8718);
  }

  return result;
}

unint64_t sub_255DFB208(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255DFB29C(char *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v223 = a1;
  v212 = sub_255E3A8A8();
  v211 = *(v212 - 8);
  v11 = MEMORY[0x28223BE20](v212);
  v215 = &v206 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v206 - v14;
  v216 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v210 = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v209 = &v206 - v18;
  v224 = a5;
  v20 = type metadata accessor for Referenceable(0, a5, a6, v19);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v220 = &v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v214 = &v206 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v230 = &v206 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v222 = &v206 - v29;
  MEMORY[0x28223BE20](v28);
  v232 = &v206 - v30;
  v31 = sub_255E3A8A8();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v225 = &v206 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v219 = (&v206 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v226 = &v206 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v206 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v213 = (&v206 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v217 = &v206 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v229 = (&v206 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v234 = &v206 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v221 = (&v206 - v51);
  v52 = MEMORY[0x28223BE20](v50);
  v227 = &v206 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v233 = (&v206 - v55);
  v56 = MEMORY[0x28223BE20](v54);
  v231 = (&v206 - v57);
  v58 = MEMORY[0x28223BE20](v56);
  v237 = &v206 - v59;
  MEMORY[0x28223BE20](v58);
  v60 = *(v21 + 56);
  v249 = &v206 - v61;
  v242 = v60;
  v243 = v21 + 56;
  v60();
  v62 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v62 = HIBYTE(a4) & 0xF;
  }

  v257 = a2;
  v63 = a2 >> 14;
  v251 = a3;
  v252 = (4 * v62);
  v248 = v31;
  v250 = a4;
  v228 = v32;
  if (v63 == 4 * v62)
  {
    v246 = v62 << 16;
    LODWORD(v241) = (a4 >> 60) & ((a3 & 0x800000000000000) == 0);
    v64 = v257;
    goto LABEL_5;
  }

  v207 = v15;
  v208 = v41;
  LOBYTE(v15) = 0;
  v244 = v32 + 16;
  v240 = (v21 + 48);
  v236 = (v21 + 32);
  v218 = v21;
  v235 = (v21 + 8);
  v241 = (v32 + 8);
  v238 = v20;
  v239 = (v32 + 32);
  v64 = v257;
  v246 = v62;
  do
  {
    if (v15)
    {
      v64 = v257;
    }

    v87 = sub_255E3A5F8();
    v88 = v86;
    if (v87 == 46 && v86 == 0xE100000000000000 || (sub_255E3AC68() & 1) != 0)
    {
      v89 = v64 >> 14;
      if (v64 >> 14 == v63)
      {
        v31 = v248;
        if (v87 != 91)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v247 = v87;
        v90 = v237;
        v91 = v20;
        v92 = v248;
        (*v244)(v237, v249, v248);
        if ((*v240)(v90, 1, v91) == 1)
        {
          v93 = *v241;
          result = (*v241)(v90, v92);
          if (v63 < v89)
          {
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

          v94 = sub_255E3A618();
          v95 = MEMORY[0x259C4E8B0](v94);
          v97 = v96;

          v98 = v249;
          v93(v249, v92);
          v99 = v233;
          *v233 = v95;
          v99[1] = v97;
          v99[2] = 0xF000000000000007;
          v100 = v238;
          swift_storeEnumTagMultiPayload();
          v31 = v92;
          v20 = v100;
        }

        else
        {
          v106 = v232;
          (*v236)(v232, v90, v91);
          result = swift_allocObject();
          if (v63 < v89)
          {
            goto LABEL_95;
          }

          v107 = result;
          v20 = v91;
          v108 = sub_255E3A618();
          v109 = MEMORY[0x259C4E8B0](v108);
          v111 = v110;

          *(v107 + 16) = v109;
          *(v107 + 24) = v111;
          *(v107 + 32) = 0;
          *(v107 + 40) = 0;
          *(v107 + 48) = 0xF000000000000007;
          v253 = v107;
          v99 = v231;
          v112 = v245;
          Referenceable.addingSubReference(subReference:)(&v253, v91, v231);
          if (v112)
          {
            goto LABEL_75;
          }

          v245 = 0;
          sub_255D2F870(v253);
          (*v235)(v106, v91);
          v31 = v248;
          v98 = v249;
          (*v241)(v249, v248);
        }

        (v242)(v99, 0, 1, v20);
        (*v239)(v98, v99, v31);
        v87 = v247;
        if (v247 != 91)
        {
LABEL_37:
          sub_255E3AC68();
          v64 = 0;
          LODWORD(v15) = 1;
          if (v87 == 93 && v88 == 0xE100000000000000)
          {
LABEL_54:

            v64 = 0;
LABEL_55:
            v114 = v250;
            v115 = v251;
            goto LABEL_56;
          }

          goto LABEL_34;
        }
      }

      if (v88 == 0xE100000000000000)
      {
        v64 = 0;
        LODWORD(v15) = 1;
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    v101 = v234;
    if ((v87 != 91 || v88 != 0xE100000000000000) && (sub_255E3AC68() & 1) == 0)
    {
      LODWORD(v15) = 0;
      if (v87 != 93 || v88 != 0xE100000000000000)
      {
        goto LABEL_34;
      }

LABEL_78:
      v172 = v217;
      v252 = *v244;
      v252(v217, v249, v31);
      v247 = *v240;
      v173 = v247(v172, 1, v20);
      v174 = v257 >> 14;
      v175 = v64 >> 14;
      if (v173 == 1)
      {
        v176 = *v241;
        result = (*v241)(v172, v31);
        if (v224 == MEMORY[0x277D83B88])
        {
          if (v174 < v175)
          {
            goto LABEL_103;
          }

          v177 = sub_255E3A618();
          v178 = MEMORY[0x259C4E8B0](v177);
          v180 = v179;

          v253 = sub_255DE5180(v178, v180);
          LOBYTE(v254) = v181 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8428, &unk_255E55820);
          v182 = v207;
          if (swift_dynamicCast())
          {
            v183 = v248;
            v184 = v249;
            v176(v249, v248);
            v185 = v216;
            v186 = MEMORY[0x277D83B88];
            (*(v216 + 56))(v182, 0, 1, MEMORY[0x277D83B88]);
            v187 = *(v185 + 32);
            v188 = v209;
            v187(v209, v182, v186);
            v187(v184, v188, v186);
            v189 = v238;
            swift_storeEnumTagMultiPayload();
            (v242)(v184, 0, 1, v189);
LABEL_90:
            v204 = v208;
            v252(v208, v184, v183);
            if (v247(v204, 1, v189) == 1)
            {
              v176(v204, v183);
              sub_255D5C33C();
              swift_allocError();
              *v205 = 2;
              *(v205 + 8) = 0;
              *(v205 + 16) = 0;
              *(v205 + 24) = 0;
              *(v205 + 32) = 5;
              swift_willThrow();
              v176(v184, v183);
            }

            else
            {
              v176(v184, v183);
              (*v236)(v223, v204, v189);
            }

            return v257;
          }

          (*(v216 + 56))(v182, 1, 1, MEMORY[0x277D83B88]);
          result = (*(v211 + 8))(v182, v212);
        }

        if (v174 < v175)
        {
          goto LABEL_102;
        }

        v199 = sub_255E3A618();
        v200 = MEMORY[0x259C4E8B0](v199);
        v202 = v201;

        v183 = v248;
        v184 = v249;
        v176(v249, v248);
        v203 = v233;
        *v233 = v200;
        v203[1] = v202;
        v203[2] = 0xF000000000000007;
        v189 = v238;
        swift_storeEnumTagMultiPayload();
        (v242)(v203, 0, 1, v189);
        (*v239)(v184, v203, v183);
        goto LABEL_90;
      }

      v190 = v214;
      (*v236)(v214, v172, v20);
      result = swift_allocObject();
      if (v174 < v175)
      {
        goto LABEL_101;
      }

      v191 = result;
      v192 = sub_255E3A618();
      v193 = MEMORY[0x259C4E8B0](v192);
      v195 = v194;

      *(v191 + 16) = v193;
      *(v191 + 24) = v195;
      *(v191 + 32) = 0;
      *(v191 + 40) = 0;
      *(v191 + 48) = 0xF000000000000007;
      v253 = v191;
      v196 = v213;
      v197 = v245;
      Referenceable.addingSubReference(subReference:)(&v253, v20, v213);
      v183 = v248;
      v198 = v241;
      if (v197)
      {
        sub_255D2F870(v253);
        (*v235)(v190, v20);
        (*v198)(v249, v183);
        return v257;
      }

      sub_255D2F870(v253);
      (*v235)(v190, v20);
      v189 = v20;
      v176 = *v198;
      v184 = v249;
      (*v198)(v249, v183);
      (v242)(v196, 0, 1, v189);
      (*v239)(v184, v196, v183);
      goto LABEL_90;
    }

    v247 = v87;
    v102 = v64 >> 14;
    if (v64 >> 14 == v63)
    {
      v103 = v245;
      v104 = v248;
      v105 = v241;
    }

    else
    {
      v116 = v227;
      v104 = v248;
      (*v244)(v227, v249, v248);
      v117 = v238;
      if ((*v240)(v116, 1, v238) == 1)
      {
        v105 = v241;
        v118 = *v241;
        result = (*v241)(v116, v104);
        if (v63 < v102)
        {
          goto LABEL_97;
        }

        v119 = sub_255E3A618();
        v120 = MEMORY[0x259C4E8B0](v119);
        v122 = v121;

        v123 = v249;
        v118(v249, v104);
        v124 = v233;
        *v233 = v120;
        v124[1] = v122;
        v124[2] = 0xF000000000000007;
        v125 = v238;
        swift_storeEnumTagMultiPayload();
        v103 = v245;
      }

      else
      {
        v106 = v222;
        (*v236)(v222, v116, v117);
        result = swift_allocObject();
        if (v63 < v102)
        {
          goto LABEL_96;
        }

        v126 = result;
        v20 = v117;
        v127 = sub_255E3A618();
        v128 = MEMORY[0x259C4E8B0](v127);
        v130 = v129;

        *(v126 + 16) = v128;
        *(v126 + 24) = v130;
        *(v126 + 32) = 0;
        *(v126 + 40) = 0;
        *(v126 + 48) = 0xF000000000000007;
        v253 = v126;
        v124 = v221;
        v131 = v245;
        Referenceable.addingSubReference(subReference:)(&v253, v117, v221);
        v103 = v131;
        if (v131)
        {
LABEL_75:

          sub_255D2F870(v253);
          (*v235)(v106, v20);
          (*v241)(v249, v248);
          return v257;
        }

        sub_255D2F870(v253);
        (*v235)(v106, v117);
        v105 = v241;
        v123 = v249;
        v125 = v20;
        v104 = v248;
        (*v241)(v249, v248);
      }

      (v242)(v124, 0, 1, v125);
      (*v239)(v123, v124, v104);
      v101 = v234;
    }

    v132 = v250;
    v133 = v251;
    v134 = sub_255E3A588();
    sub_255DE37E8(&v253, v134, v133, v132);
    v257 = v135;
    if (v103)
    {
      (*v105)(v249, v104);

      return v257;
    }

    v136 = v253;
    v15 = v254;
    v137 = v255;
    v138 = v256;
    (*v244)(v101, v249, v104);
    v139 = v238;
    if ((*v240)(v101, 1, v238) == 1)
    {

      v168 = *v241;
      v169 = v101;
      v170 = v248;
      (*v241)(v169, v248);
      sub_255D5C33C();
      swift_allocError();
      *v171 = 2;
      *(v171 + 8) = 0;
      *(v171 + 16) = 0;
      *(v171 + 24) = 0;
      *(v171 + 32) = 5;
      swift_willThrow();
      sub_255D34870(v136, v15, v137, v138);
      v168(v249, v170);
      return v257;
    }

    v140 = v101;
    v141 = v230;
    (*v236)(v230, v140, v139);
    v142 = swift_allocObject();
    *(v142 + 16) = v136;
    *(v142 + 24) = v15;
    *(v142 + 32) = v137;
    *(v142 + 40) = v138;
    *(v142 + 48) = 0xF000000000000007;
    v253 = v142 | 0x8000000000000000;
    sub_255D348B4(v136, v15, v137, v138);
    v143 = v229;
    Referenceable.addingSubReference(subReference:)(&v253, v139, v229);
    v245 = 0;
    sub_255D34870(v136, v15, v137, v138);
    sub_255D2F870(v253);
    (*v235)(v141, v139);
    v145 = v248;
    v144 = v249;
    (*v241)(v249, v248);
    LODWORD(v15) = 1;
    v146 = v139;
    v147 = v139;
    v31 = v145;
    (v242)(v143, 0, 1, v147);
    (*v239)(v144, v143, v145);
    v64 = 0;
    if (v247 == 93)
    {
      v20 = v146;
      if (v88 == 0xE100000000000000)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v20 = v146;
    }

LABEL_34:
    v113 = sub_255E3AC68();

    if (v15)
    {
      goto LABEL_55;
    }

    v114 = v250;
    v115 = v251;
    if (v113)
    {
      goto LABEL_78;
    }

LABEL_56:
    v63 = v257 >> 14;
    if ((v257 >> 14) != v252)
    {
      v257 = sub_255E3A588();
      v63 = v257 >> 14;
    }
  }

  while (v63 != v252);
  v246 <<= 16;
  LODWORD(v241) = (v114 >> 60) & ((v115 & 0x800000000000000) == 0);
  if (v15)
  {
    v157 = *v244;
    v244 = v244 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v77 = v249;
    v84 = v218;
    v85 = v228;
    v158 = v225;
    v157(v225, v249, v31);
    goto LABEL_70;
  }

  v21 = v218;
  v32 = v228;
LABEL_5:
  v65 = *(v32 + 16);
  v244 = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v66 = v226;
  v247 = v65;
  v65(v226, v249, v31);
  v67 = v64 >> 14;
  if ((*(v21 + 48))(v66, 1, v20) != 1)
  {
    v148 = v21;
    v149 = v220;
    (*(v21 + 32))(v220, v66, v20);
    result = swift_allocObject();
    if (v252 >= v67)
    {
      v150 = result;
      v151 = sub_255E3A618();
      v152 = MEMORY[0x259C4E8B0](v151);
      v154 = v153;

      *(v150 + 16) = v152;
      *(v150 + 24) = v154;
      *(v150 + 32) = 0;
      *(v150 + 40) = 0;
      *(v150 + 48) = 0xF000000000000007;
      v253 = v150;
      v155 = v219;
      v156 = v245;
      Referenceable.addingSubReference(subReference:)(&v253, v20, v219);
      if (!v156)
      {
        sub_255D2F870(v253);
        v84 = v148;
        (*(v148 + 8))(v149, v20);
        v85 = v228;
        v77 = v249;
        (*(v228 + 8))(v249, v31);
        (v242)(v155, 0, 1, v20);
        (*(v85 + 32))(v77, v155, v31);
        goto LABEL_69;
      }

      sub_255D2F870(v253);
      (*(v148 + 8))(v149, v20);
      (*(v228 + 8))(v249, v31);
      return v257;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v218 = v21;
  v68 = *(v32 + 8);
  result = v68(v66, v31);
  if (v224 != MEMORY[0x277D83B88])
  {
    goto LABEL_67;
  }

  if (v252 >= v67)
  {
    v70 = sub_255E3A618();
    v71 = MEMORY[0x259C4E8B0](v70);
    v73 = v72;

    v253 = sub_255DE5180(v71, v73);
    LOBYTE(v254) = v74 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8428, &unk_255E55820);
    v75 = v215;
    if (swift_dynamicCast())
    {
      v76 = v248;
      v77 = v249;
      v68(v249, v248);
      v78 = v76;
      v79 = v216;
      v80 = MEMORY[0x277D83B88];
      (*(v216 + 56))(v75, 0, 1, MEMORY[0x277D83B88]);
      v81 = *(v79 + 32);
      v82 = v210;
      v83 = v75;
      v31 = v78;
      v81(v210, v83, v80);
      v81(v77, v82, v80);
      swift_storeEnumTagMultiPayload();
      (v242)(v77, 0, 1, v20);
      v84 = v218;
      v85 = v228;
LABEL_69:
      v158 = v225;
      v247(v225, v77, v31);
LABEL_70:
      v164 = (*(v84 + 48))(v158, 1, v20);
      v165 = *(v85 + 8);
      if (v164 == 1)
      {
        v165(v158, v31);
        sub_255D5C33C();
        swift_allocError();
        *v166 = 5;
        *(v166 + 8) = 0;
        *(v166 + 16) = 0;
        *(v166 + 24) = 0;
        *(v166 + 32) = 5;
        swift_willThrow();
        v165(v77, v31);
      }

      else
      {
        v165(v77, v31);
        (*(v84 + 32))(v223, v158, v20);
        v167 = 7;
        if (v241)
        {
          v167 = 11;
        }

        return v246 | v167;
      }

      return v257;
    }

    (*(v216 + 56))(v75, 1, 1, MEMORY[0x277D83B88]);
    result = (*(v211 + 8))(v75, v212);
LABEL_67:
    if (v252 >= v67)
    {
      v159 = sub_255E3A618();
      v160 = MEMORY[0x259C4E8B0](v159);
      v162 = v161;

      v31 = v248;
      v77 = v249;
      v68(v249, v248);
      v163 = v233;
      *v233 = v160;
      v163[1] = v162;
      v163[2] = 0xF000000000000007;
      swift_storeEnumTagMultiPayload();
      (v242)(v163, 0, 1, v20);
      v85 = v228;
      (*(v228 + 32))(v77, v163, v31);
      v84 = v218;
      goto LABEL_69;
    }

LABEL_99:
    __break(1u);
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_5(void (*a1)(void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if ((~*(v1 + 48) & 0xF000000000000007) != 0)
  {
  }

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_255DFCE50()
{
  v0 = sub_255E386A8();
  __swift_allocate_value_buffer(v0, qword_27F8152D8);
  __swift_project_value_buffer(v0, qword_27F8152D8);
  return sub_255E38698();
}

uint64_t sub_255DFCEC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = *(a1 + 32);
  if ((v3 & 0x7E) != 0)
  {
    v4 = 126 - (v3 & 0x7E | (v3 >> 7));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255DFCF18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

uint64_t sub_255DFCF80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6874676E656CLL;
  }

  else
  {
    v3 = 0x7365676465;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6874676E656CLL;
  }

  else
  {
    v5 = 0x7365676465;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255DFD020()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DFD09C(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DFD104(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DFD17C@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

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

void sub_255DFD1DC(uint64_t *a1@<X8>)
{
  v2 = 0x7365676465;
  if (*v1)
  {
    v2 = 0x6874676E656CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255DFD214()
{
  if (*v0)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x7365676465;
  }
}

uint64_t sub_255DFD248@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255DFD2AC(uint64_t a1)
{
  v2 = sub_255DFD7CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFD2E8(uint64_t a1)
{
  v2 = sub_255DFD7CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFD324@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8728, &qword_255E57008);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DFD7CC();
  sub_255E3AE28();
  if (!v2)
  {
    v18 = 0;
    sub_255DFD820();
    sub_255E3ABA8();
    if (v15 <= 3u)
    {
      if (v15 > 1u)
      {
        if (v15 == 2)
        {
          v9 = sub_255E39608();
        }

        else
        {
          v9 = sub_255E39628();
        }
      }

      else if (v15)
      {
        v9 = sub_255E39618();
      }

      else
      {
        v9 = sub_255E395F8();
      }

      goto LABEL_16;
    }

    if (v15 > 5u)
    {
      if (v15 == 6)
      {
        v9 = sub_255E39638();
        goto LABEL_16;
      }
    }

    else if (v15 != 4)
    {
      v9 = sub_255E395D8();
LABEL_16:
      v10 = v9;
      v18 = 1;
      sub_255D64774();
      sub_255E3ABA8();
      (*(v6 + 8))(v8, v5);
      v11 = v16;
      v12 = v17;
      v13 = v15;
      *a2 = v10;
      *(a2 + 8) = v13;
      *(a2 + 24) = v11;
      *(a2 + 32) = v12;
      return __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v9 = sub_255E395E8();
    goto LABEL_16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DFD578@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 32);
  if (v5 > 0xFD || (v7 = *(v3 + 16), v8 = *(v3 + 24), v17 = *(v3 + 8), v18 = v7, v19 = v8, v20 = v5, v9 = a1, sub_255D612A0(v17, v7, v8, v5), sub_255D8F6FC(a2), LOBYTE(a2) = v10, sub_255D4CB98(v17, v18, v19, v20), a1 = v9, (a2 & 1) != 0))
  {
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_255E38AE8();
    a3[3] = v12;
    v21[0] = v11;
    v21[1] = MEMORY[0x277CDF918];
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v12, v21);
    __swift_allocate_boxed_opaque_existential_1(a3);
  }

  else
  {
    v13 = v9[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = sub_255E38AE8();
    a3[3] = v14;
    v16[0] = v13;
    v16[1] = MEMORY[0x277CDF918];
    a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v14, v16);
    __swift_allocate_boxed_opaque_existential_1(a3);
  }

  return sub_255E39C58();
}

unint64_t sub_255DFD750(uint64_t a1)
{
  result = sub_255DFD778();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DFD778()
{
  result = qword_27F7E8720;
  if (!qword_27F7E8720)
  {
    result = swift_getWitnessTable(aI2, &type metadata for PaddingModifier, v0, v1);
    atomic_store(result, &qword_27F7E8720);
  }

  return result;
}

unint64_t sub_255DFD7CC()
{
  result = qword_27F7E8730;
  if (!qword_27F7E8730)
  {
    result = swift_getWitnessTable(byte_255E5710C, &type metadata for PaddingModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8730);
  }

  return result;
}

unint64_t sub_255DFD820()
{
  result = qword_27F7E8738;
  if (!qword_27F7E8738)
  {
    result = swift_getWitnessTable(byte_255E45B78, &type metadata for EdgeSetString, v0, v1);
    atomic_store(result, &qword_27F7E8738);
  }

  return result;
}

unint64_t sub_255DFD888()
{
  result = qword_27F7E8740;
  if (!qword_27F7E8740)
  {
    result = swift_getWitnessTable(byte_255E570E4, &type metadata for PaddingModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8740);
  }

  return result;
}

unint64_t sub_255DFD8E0()
{
  result = qword_27F7E8748;
  if (!qword_27F7E8748)
  {
    result = swift_getWitnessTable(byte_255E5701C, &type metadata for PaddingModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8748);
  }

  return result;
}

unint64_t sub_255DFD938()
{
  result = qword_27F7E8750;
  if (!qword_27F7E8750)
  {
    result = swift_getWitnessTable(byte_255E57044, &type metadata for PaddingModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8750);
  }

  return result;
}

uint64_t type metadata accessor for AccessibilityFocusedModifier(uint64_t a1)
{
  result = qword_27F7E8758;
  if (!qword_27F7E8758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255DFDA20(uint64_t a1)
{
  sub_255DFDAEC(319, &qword_27F7E8768, MEMORY[0x277D839D0], type metadata accessor for Referenceable);
  if (v1 <= 0x3F)
  {
    sub_255DFDAEC(319, &qword_27F7E8770, MEMORY[0x277D839C0], MEMORY[0x277CDE1E8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255DFDAEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x277D839B0], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_255DFDB70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_255DFDBB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255DFDCD0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255DFDD28(uint64_t a1)
{
  v2 = sub_255E025B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFDD64(uint64_t a1)
{
  v2 = sub_255E025B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFDEAC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255DFDF04(uint64_t a1)
{
  v2 = sub_255E02564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFDF40(uint64_t a1)
{
  v2 = sub_255E02564();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFDFC0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v17 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_255E3AE28();
  if (!v6)
  {
    v12 = v17;
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v21 + 8))(v11, v9);
    v13 = v19;
    v14 = v20;
    *v12 = v18;
    *(v12 + 16) = v13;
    *(v12 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DFE148@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v15 = *v3;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  sub_255D3E5A8(v15, v8, v9, v10);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v15, v16, v17, v18);
  }

  sub_255D38060(v15, v16, v17, v18);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(&v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_255E3A038();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  a3[4] = sub_255DC83E0();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39B18();
}

uint64_t sub_255DFE328@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    MEMORY[0x28223BE20](v8);
    (*(v10 + 16))(v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11[1] = sub_255E3A038();
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
    a3[4] = sub_255DC83E0();
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_255E39A78();
  }

  return result;
}

uint64_t sub_255DFE4F0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *, void, void, void, unint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v10 = *(v4 + 8);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v22 = *v4;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  sub_255D3E5A8(v22, v10, v11, v12);
  v13 = StringResolvable.resolved(with:)(a2);
  if (v5)
  {
    return sub_255D38060(v22, v23, v24, v25);
  }

  v16 = v13;
  v17 = v14;
  sub_255D38060(v22, v23, v24, v25);
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v18);
  (*(v20 + 16))(&v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_255E3A038();
  v22 = v16;
  v23 = v17;
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  a4[4] = sub_255DC83E0();
  __swift_allocate_boxed_opaque_existential_1(a4);
  v21 = sub_255D6EEE8();
  a3(&v22, MEMORY[0x277CE11C8], MEMORY[0x277D837D0], MEMORY[0x277CE11C0], v21);
}

uint64_t sub_255DFE6D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessibilityFocusedModifier(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 28);
  sub_255E39488();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_255D395E4(&v8[v9], &qword_27F7E8110, &unk_255E538E0);
  }

  else
  {
    v14 = a2;
    v18[6] = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ACB8();
    v10 = v16;
    v11 = v17;
    *v8 = v15;
    *(v8 + 2) = v10;
    v8[24] = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    sub_255DC87A8(v8, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_255E02390(v8);
  }
}

uint64_t sub_255DFE8A0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = type metadata accessor for AccessibilityFocusedModifier(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  result = sub_255DBFA2C(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    v42 = a3;
    v40 = v9;
    v14 = a1[3];
    v15 = a1[4];
    v37 = result;
    v38 = v12;
    v60 = 0;
    LODWORD(v39) = v13;
    v35 = __swift_project_boxed_opaque_existential_1(a1, v14);
    v36 = *(v8 + 20);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);
    sub_255E39478();
    v57[0] = v14;
    v57[1] = v15;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v52 = v14;
    v53 = v15;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v57);
    sub_255E39AB8();

    v16 = OpaqueTypeMetadata2;
    v17 = OpaqueTypeConformance2;
    v35 = __swift_project_boxed_opaque_existential_1(v57, OpaqueTypeMetadata2);
    v41 = v3;
    sub_255E39458();
    LOBYTE(v45) = v52;
    sub_255DC87A8(v3, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v40 = *(v40 + 80);
    v18 = (v40 + 33) & ~v40;
    v36 = v18;
    v19 = swift_allocObject();
    v20 = v37;
    v21 = v38;
    *(v19 + 16) = v37;
    *(v19 + 24) = v21;
    LODWORD(v34) = v39 & 1;
    *(v19 + 32) = v39 & 1;
    sub_255DC880C(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v52 = v16;
    v53 = MEMORY[0x277D839B0];
    v22 = MEMORY[0x277D839C8];
    v54 = v17;
    v55 = MEMORY[0x277D839C8];
    v39 = MEMORY[0x277CE0E40];
    v55 = swift_getOpaqueTypeMetadata2();
    v48 = v16;
    v49 = MEMORY[0x277D839B0];
    v50 = v17;
    v51 = v22;
    v56 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(&v52);

    sub_255E39CA8();

    v23 = v55;
    v33 = v56;
    v35 = __swift_project_boxed_opaque_existential_1(&v52, v55);
    v45 = v20;
    v46 = v21;
    LOBYTE(v16) = v34;
    v47 = v34;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8118, &qword_255E57E20);
    MEMORY[0x259C4E3A0](&v44, v24);
    v43 = v44;
    sub_255DC87A8(v41, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = v36;
    v26 = swift_allocObject();
    *(v26 + 16) = v20;
    *(v26 + 24) = v21;
    *(v26 + 32) = v16;
    sub_255DC880C(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    v48 = v23;
    v27 = MEMORY[0x277D839B0];
    v28 = v33;
    v49 = MEMORY[0x277D839B0];
    v50 = v33;
    v29 = MEMORY[0x277D839C8];
    v51 = MEMORY[0x277D839C8];
    v30 = swift_getOpaqueTypeMetadata2();
    v31 = v42;
    v42[3] = v30;
    v48 = v23;
    v49 = v27;
    v50 = v28;
    v51 = v29;
    v31[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v31);

    sub_255E39CA8();

    __swift_destroy_boxed_opaque_existential_1Tm(&v52);
    return __swift_destroy_boxed_opaque_existential_1Tm(v57);
  }

  return result;
}

void *sub_255DFEDC4(uint64_t a1, uint64_t a2, char a3)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8118, &qword_255E57E20);
  MEMORY[0x259C4E3A0](&v10);
  v6 = v10;
  type metadata accessor for AccessibilityFocusedModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);
  result = sub_255E39458();
  if (v6 != v9)
  {
    sub_255E39458();
    v8 = v11;
    v11 = a1;
    v12 = a2;
    v13 = a3 & 1;
    v10 = v8;
    return sub_255E3A058();
  }

  return result;
}

void *sub_255DFEEB8(uint64_t a1, uint64_t a2, char a3)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8118, &qword_255E57E20);
  MEMORY[0x259C4E3A0](&v10);
  v7 = v10;
  type metadata accessor for AccessibilityFocusedModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);
  result = sub_255E39458();
  if (v7 != v9)
  {
    v11 = a1;
    v12 = a2;
    v13 = a3 & 1;
    MEMORY[0x259C4E3A0](&v10, v6);
    return sub_255E39468();
  }

  return result;
}

uint64_t sub_255DFEFDC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v19 = *v3;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  sub_255D3E5A8(v19, v8, v9, v10);
  v11 = StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v19, v20, v21, v22);
  }

  v14 = v11;
  v15 = v12;
  sub_255D38060(v19, v20, v21, v22);
  if (sub_255E02250(v14, v15) == 5)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v16);
  (*(v18 + 16))(&v19 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_255E3A038();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  a3[4] = sub_255DC83E0();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39AC8();
}

uint64_t sub_255DFF204@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255DFF25C(uint64_t a1)
{
  v2 = sub_255E02440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFF298(uint64_t a1)
{
  v2 = sub_255E02440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFF2D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8820, &qword_255E57E58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E02440();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DFF454@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = sub_255E39568();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *(v3 + 24);
  if (v15 > 0xFD)
  {
    goto LABEL_4;
  }

  v16 = *(v3 + 8);
  v17 = *(v3 + 16);
  *&v23 = *v3;
  *(&v23 + 1) = v16;
  v24 = v17;
  v25 = v15;
  sub_255D3E5A8(v23, v16, v17, v15);
  StringResolvable.resolved(with:)(a2);
  if (!v4)
  {
    sub_255D38060(v23, *(&v23 + 1), v24, v25);
    v21 = sub_255E3AB48();

    if (v21 == 2)
    {
      v22 = *(a1 + 3);
      __swift_project_boxed_opaque_existential_1(a1, v22);
      sub_255E39558();
    }

    else if (v21 == 1)
    {
      v22 = *(a1 + 3);
      __swift_project_boxed_opaque_existential_1(a1, v22);
      sub_255E39548();
    }

    else
    {
      if (v21)
      {
        goto LABEL_4;
      }

      v22 = *(a1 + 3);
      __swift_project_boxed_opaque_existential_1(a1, v22);
      sub_255E39538();
    }

    v23 = v22;
    a3[3] = swift_getOpaqueTypeMetadata2();
    v23 = v22;
    a3[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_255E39AA8();
    return (*(v9 + 8))(v14, v8);
  }

  sub_255D38060(v23, *(&v23 + 1), v24, v25);
LABEL_4:
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_255DC3D28();
  *&v23 = v18;
  *(&v23 + 1) = v19;
  a3[3] = swift_getOpaqueTypeMetadata2();
  *&v23 = v18;
  *(&v23 + 1) = v19;
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39AA8();
  v14 = v12;
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_255DFF7A8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255DFF800(uint64_t a1)
{
  v2 = sub_255E023EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFF83C(uint64_t a1)
{
  v2 = sub_255E023EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFF878(uint64_t a1)
{
  v5 = a1;
  KeyPath = swift_getKeyPath();

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v3 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  return sub_255E3A0E8(&v5, KeyPath, sub_255D5D978, 0, v2, MEMORY[0x277CE11C8], v3, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
}

uint64_t sub_255DFF964@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D6FC70();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E39AD8();
}

uint64_t sub_255DFFA70@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_255E01D50(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_255DFFA9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x694B6E6F69746361;
  }

  else
  {
    v3 = 0x6E6F69746361;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA0000000000646ELL;
  }

  if (*a2)
  {
    v5 = 0x694B6E6F69746361;
  }

  else
  {
    v5 = 0x6E6F69746361;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000646ELL;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255DFFB44()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DFFBC8(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DFFC38(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DFFCB8@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

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

void sub_255DFFD18(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F69746361;
  if (*v1)
  {
    v2 = 0x694B6E6F69746361;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000646ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255DFFD58()
{
  if (*v0)
  {
    return 0x694B6E6F69746361;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_255DFFD94@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255DFFDF8(uint64_t a1)
{
  v2 = sub_255E02494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFFE34(uint64_t a1)
{
  v2 = sub_255E02494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFFE70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8830, &unk_255E57E60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E02494();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
  LOBYTE(v26) = 0;
  sub_255E024E8(&qword_27F7E7430, &qword_27F7E7428, &qword_255E480C0, sub_255D7B6DC);
  sub_255E3ABC8();
  v24 = v8;
  v10 = v30;
  v11 = *(v30 + 16);
  if (v11)
  {
    v21 = v6;
    v22 = v5;
    v23 = a2;
    v29 = MEMORY[0x277D84F90];
    sub_255DE5EF0(0, v11, 0);
    v12 = v29;
    v20 = v10;
    v13 = v10 + 32;
    do
    {
      sub_255D7B730(v13, v25);
      sub_255D34630(v25, &v26);
      v29 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_255DE5EF0((v14 > 1), v15 + 1, 1);
        v12 = v29;
      }

      *(v12 + 16) = v15 + 1;
      sub_255D34630(&v26, v12 + 40 * v15 + 32);
      v13 += 40;
      --v11;
    }

    while (v11);

    v5 = v22;
    a2 = v23;
    v6 = v21;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  LOBYTE(v25[0]) = 1;
  sub_255D3EA0C();
  v16 = v24;
  sub_255E3ABA8();
  (*(v6 + 8))(v16, v5);
  v17 = v26;
  v18 = v27;
  v19 = v28;
  *a2 = v12;
  *(a2 + 8) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;

  sub_255D94C04(v17, *(&v17 + 1), v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_255D64814(v17, *(&v17 + 1), v18, v19);
}

uint64_t sub_255E001D8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E87D8, &qword_255E57DD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = sub_255E39448();
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v49 = *(v4 + 32);
  v19 = v4[1];
  v47 = *v4;
  v48 = v19;
  if (v49 <= 0xFDu)
  {
    v43 = *(&v47 + 1);
    v44 = v48;
    LOBYTE(v45) = v49;
    sub_255D3E5A8(*(&v47 + 1), v48, *(&v48 + 1), v49);
    StringResolvable.resolved(with:)(a2);
    if (!v5)
    {
      v39 = 0;
      sub_255D38060(v43, v44, *(&v44 + 1), v45);
      v28 = sub_255E3AB48();

      if (v28)
      {
        if (v28 == 1)
        {
          sub_255E39418();
        }

        else
        {
          if (v28 != 2)
          {
            (*(v40 + 56))(v12, 1, 1, v41);
            sub_255D395E4(v12, &qword_27F7E87D8, &qword_255E57DD8);
            goto LABEL_5;
          }

          sub_255E39438();
        }
      }

      else
      {
        sub_255E39428();
      }

      v29 = v41;
      v30 = v40;
      (*(v40 + 56))(v12, 0, 1, v41);
      (*(v30 + 32))(v18, v12, v29);
      v31 = a1[3];
      v32 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v31);
      v33 = sub_255D48A94(v47);
      View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v33, a2, a3, v31, v32, &v43);

      v34 = v45;
      v35 = v46;
      __swift_project_boxed_opaque_existential_1(&v43, v45);
      v50 = View.anyView.getter(v34, v35);
      v36 = swift_allocObject();
      v37 = v48;
      *(v36 + 16) = v47;
      *(v36 + 32) = v37;
      *(v36 + 48) = v49;
      *(v36 + 56) = a2;
      *(v36 + 64) = a3;
      a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
      a4[4] = sub_255DC83E0();
      __swift_allocate_boxed_opaque_existential_1(a4);
      sub_255E02128(&v47, v42);

      sub_255E39A68();

      (*(v40 + 8))(v18, v41);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    }

    sub_255D38060(v43, v44, *(&v44 + 1), v45);
    v39 = 0;
  }

  else
  {
    v39 = v5;
  }

LABEL_5:
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_255D48A94(v47);
  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v22, a2, a3, v20, v21, &v43);

  v23 = v45;
  v24 = v46;
  __swift_project_boxed_opaque_existential_1(&v43, v45);
  v50 = View.anyView.getter(v23, v24);
  v25 = swift_allocObject();
  v26 = v48;
  *(v25 + 16) = v47;
  *(v25 + 32) = v26;
  *(v25 + 48) = v49;
  *(v25 + 56) = a2;
  *(v25 + 64) = a3;
  sub_255E02128(&v47, v42);

  sub_255E39428();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  a4[4] = sub_255DC83E0();
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_255E39A68();

  (*(v40 + 8))(v16, v41);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v43);
}

uint64_t sub_255E0070C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = *a1;
  v13 = sub_255E3A778();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = a2;
  v14[6] = a3;

  sub_255D52540(0, 0, v11, a5, v14);
}

uint64_t sub_255E00878(uint64_t a1)
{
  v2 = sub_255E0233C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E008B4(uint64_t a1)
{
  v2 = sub_255E0233C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_255E0094C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255E01F2C(a1, &qword_27F7E8800, &unk_255E57E38, sub_255E0233C, &type metadata for AccessibilityAddTraitsModifier.CodingKeys);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_255E009A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737469617274 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255E00A28(uint64_t a1)
{
  v2 = sub_255E022E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E00A64(uint64_t a1)
{
  v2 = sub_255E022E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E00ACC@<X0>(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X3>, void (*a4)(void, void, void)@<X4>, uint64_t *a5@<X8>)
{
  v90 = a5;
  v91 = a4;
  v6 = v5;
  v95 = a2;
  v88 = a1;
  v8 = sub_255E39068();
  v9 = *(v8 - 8);
  v96 = v8;
  v97 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v85 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v86 = v83 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v84 = v83 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v93 = v83 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v92 = v83 - v19;
  result = MEMORY[0x28223BE20](v18);
  v89 = v83 - v21;
  v22 = *(a3 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = (a3 + 56);
    v94 = MEMORY[0x277D84F90];
    v87 = (a3 + 56);
    do
    {
      v25 = &v24[32 * v23];
      v26 = v23;
      v27 = v6;
      while (1)
      {
        if (v26 >= v22)
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          return result;
        }

        if (__OFADD__(v26, 1))
        {
          goto LABEL_59;
        }

        v102 = v26 + 1;
        v28 = *(v25 - 3);
        v29 = *(v25 - 2);
        v30 = *(v25 - 1);
        v31 = *v25;
        v98 = v28;
        v99 = v29;
        v100 = v30;
        v101 = v31;
        sub_255D3E5A8(v28, v29, v30, v31);
        v32 = v27;
        v33 = StringResolvable.resolved(with:)(v95);
        if (!v27)
        {
          break;
        }

        v27 = 0;

        result = sub_255D38060(v28, v29, v30, v31);
        ++v26;
        v25 += 32;
        if (v102 == v22)
        {
          v6 = 0;
          goto LABEL_17;
        }
      }

      v35 = v34;
      v36 = v33;
      sub_255D38060(v28, v29, v30, v31);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_255DE5944(0, *(v94 + 2) + 1, 1, v94);
        v94 = result;
      }

      v23 = v102;
      v38 = *(v94 + 2);
      v37 = *(v94 + 3);
      if (v38 >= v37 >> 1)
      {
        result = sub_255DE5944((v37 > 1), v38 + 1, 1, v94);
        v40 = v35;
        v94 = result;
        v39 = v36;
      }

      else
      {
        v39 = v36;
        v40 = v35;
      }

      v6 = 0;
      v24 = v87;
      v41 = v94;
      *(v94 + 2) = v38 + 1;
      v42 = &v41[16 * v38];
      *(v42 + 4) = v39;
      *(v42 + 5) = v40;
    }

    while (v23 != v22);
  }

  else
  {
    v94 = MEMORY[0x277D84F90];
  }

LABEL_17:
  v87 = v6;
  v43 = 0;
  v44 = v94;
  v45 = *(v94 + 2);
  v46 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
LABEL_18:
  v48 = &v44[16 * v43 + 40];
  while (v45 != v43)
  {
    if (v43 >= *(v44 + 2))
    {
      __break(1u);
      goto LABEL_58;
    }

    ++v43;
    v49 = v48 + 2;
    v50 = *(v48 - 1);
    v51 = *v48;

    result = sub_255E0229C(v50, v51);
    v48 = v49;
    if (result != 16)
    {
      v52 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_255DE5850(0, *(v47 + 16) + 1, 1, v47);
        v47 = result;
      }

      v54 = *(v47 + 16);
      v53 = *(v47 + 24);
      if (v54 >= v53 >> 1)
      {
        result = sub_255DE5850((v53 > 1), v54 + 1, 1, v47);
        v47 = result;
      }

      *(v47 + 16) = v54 + 1;
      *(v47 + v54 + 32) = v52;
      goto LABEL_18;
    }
  }

  v55 = *(v47 + 16);
  if (v55)
  {
    v98 = v46;
    sub_255DE6050(0, v55, 0);
    v56 = v98;
    v57 = 32;
    v58 = v96;
    v59 = v86;
    do
    {
      switch(*(v47 + v57))
      {
        case 1:
          sub_255E39008();
          break;
        case 2:
          sub_255E38FF8();
          break;
        case 3:
          sub_255E38F48();
          break;
        case 4:
          sub_255E38FD8();
          break;
        case 5:
          sub_255E38F98();
          break;
        case 6:
          sub_255E39038();
          break;
        case 7:
          sub_255E38F78();
          break;
        case 8:
          sub_255E39018();
          break;
        case 9:
          sub_255E38F88();
          break;
        case 0xA:
          sub_255E38F68();
          break;
        case 0xB:
          sub_255E38FA8();
          break;
        case 0xC:
          sub_255E39048();
          break;
        case 0xD:
          sub_255E38F58();
          break;
        case 0xE:
          sub_255E38FC8();
          break;
        case 0xF:
          sub_255E38FB8();
          break;
        default:
          sub_255E39028();
          break;
      }

      v98 = v56;
      v61 = *(v56 + 16);
      v60 = *(v56 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_255DE6050((v60 > 1), v61 + 1, 1);
        v59 = v86;
        v58 = v96;
        v56 = v98;
      }

      *(v56 + 16) = v61 + 1;
      (*(v97 + 32))(v56 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v61, v59, v58);
      ++v57;
      --v55;
    }

    while (v55);
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
    v58 = v96;
  }

  v62 = v92;
  sub_255E39058();
  v63 = v97;
  v64 = (v97 + 16);
  v65 = *(v97 + 16);
  v65(v93, v62, v58);
  v66 = v56;
  v67 = *(v56 + 16);
  if (v67)
  {
    v68 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v69 = v63;
    v86 = v66;
    v70 = &v66[v68];
    v102 = *(v69 + 72);
    v71 = (v69 + 8);
    v94 = v64;
    v95 = v65;
    v72 = (v69 + 32);
    v83[1] = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v73 = v93;
    v75 = v84;
    v74 = v85;
    do
    {
      v95(v75, v70, v58);
      sub_255E38FE8();
      v58 = v96;
      v76 = *v71;
      (*v71)(v75, v96);
      v76(v73, v58);
      (*v72)(v73, v74, v58);
      v70 += v102;
      --v67;
    }

    while (v67);

    v63 = v97;
  }

  else
  {

    v76 = *(v63 + 8);
  }

  v76(v92, v58);
  v77 = v89;
  (*(v63 + 32))(v89, v93, v58);
  v78 = __swift_project_boxed_opaque_existential_1(v88, v88[3]);
  MEMORY[0x28223BE20](v78);
  (*(v80 + 16))(v83 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = sub_255E3A038();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  v82 = v90;
  v90[3] = v81;
  v82[4] = sub_255DC83E0();
  __swift_allocate_boxed_opaque_existential_1(v82);
  v91(v77, MEMORY[0x277CE11C8], MEMORY[0x277CE11C0]);

  return (v76)(v77, v58);
}

void *sub_255E0131C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255E01F2C(a1, &qword_27F7E87E0, &qword_255E57E28, sub_255E022E8, &type metadata for AccessibilityRemoveTraitsModifier.CodingKeys);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_255E01374(uint64_t a1)
{
  result = sub_255E0139C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E0139C()
{
  result = qword_27F7E8778;
  if (!qword_27F7E8778)
  {
    result = swift_getWitnessTable(byte_255E57C54, &type metadata for AccessibilityRemoveTraitsModifier, v0, v1);
    atomic_store(result, &qword_27F7E8778);
  }

  return result;
}

unint64_t sub_255E013F0(uint64_t a1)
{
  result = sub_255E01418();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E01418()
{
  result = qword_27F7E8780;
  if (!qword_27F7E8780)
  {
    result = swift_getWitnessTable(byte_255E57C2C, &type metadata for AccessibilityAddTraitsModifier, v0, v1);
    atomic_store(result, &qword_27F7E8780);
  }

  return result;
}

uint64_t sub_255E0146C(uint64_t a1)
{
  result = sub_255E01920(&qword_27F7E8788, type metadata accessor for AccessibilityFocusedModifier, byte_255E57C04);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E014C4(uint64_t a1)
{
  result = sub_255E014EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E014EC()
{
  result = qword_27F7E8790;
  if (!qword_27F7E8790)
  {
    result = swift_getWitnessTable(asc_255E57BDC, &type metadata for AccessibilityHeadingModifier, v0, v1);
    atomic_store(result, &qword_27F7E8790);
  }

  return result;
}

unint64_t sub_255E01540(uint64_t a1)
{
  result = sub_255E01568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E01568()
{
  result = qword_27F7E8798;
  if (!qword_27F7E8798)
  {
    result = swift_getWitnessTable(aUT, &type metadata for AccessibilityChildrenModifier, v0, v1);
    atomic_store(result, &qword_27F7E8798);
  }

  return result;
}

unint64_t sub_255E015BC(uint64_t a1)
{
  result = sub_255E015E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E015E4()
{
  result = qword_27F7E87A0;
  if (!qword_27F7E87A0)
  {
    result = swift_getWitnessTable(asc_255E57B8C, &type metadata for AccessibilityElementModifier, v0, v1);
    atomic_store(result, &qword_27F7E87A0);
  }

  return result;
}

unint64_t sub_255E01638(uint64_t a1)
{
  result = sub_255E01660();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E01660()
{
  result = qword_27F7E87A8;
  if (!qword_27F7E87A8)
  {
    result = swift_getWitnessTable(byte_255E57B64, &type metadata for AccessibilityActionModifier, v0, v1);
    atomic_store(result, &qword_27F7E87A8);
  }

  return result;
}

unint64_t sub_255E016B4(uint64_t a1)
{
  result = sub_255E016DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E016DC()
{
  result = qword_27F7E87B0;
  if (!qword_27F7E87B0)
  {
    result = swift_getWitnessTable(byte_255E57B3C, &type metadata for AccessibilityHintModifier, v0, v1);
    atomic_store(result, &qword_27F7E87B0);
  }

  return result;
}

unint64_t sub_255E01730(uint64_t a1)
{
  result = sub_255E01758();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E01758()
{
  result = qword_27F7E87B8;
  if (!qword_27F7E87B8)
  {
    result = swift_getWitnessTable(byte_255E57B14, &type metadata for AccessibilityValueModifier, v0, v1);
    atomic_store(result, &qword_27F7E87B8);
  }

  return result;
}

unint64_t sub_255E017AC(uint64_t a1)
{
  result = sub_255E017D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E017D4()
{
  result = qword_27F7E87C0;
  if (!qword_27F7E87C0)
  {
    result = swift_getWitnessTable(byte_255E57AEC, &type metadata for AccessibilityHiddenModifier, v0, v1);
    atomic_store(result, &qword_27F7E87C0);
  }

  return result;
}

unint64_t sub_255E01828(uint64_t a1)
{
  result = sub_255E01850();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E01850()
{
  result = qword_27F7E87C8;
  if (!qword_27F7E87C8)
  {
    result = swift_getWitnessTable(aE_8, &type metadata for AccessibilityIdentifierModifier, v0, v1);
    atomic_store(result, &qword_27F7E87C8);
  }

  return result;
}

unint64_t sub_255E018A4(uint64_t a1)
{
  result = sub_255E018CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E018CC()
{
  result = qword_27F7E87D0;
  if (!qword_27F7E87D0)
  {
    result = swift_getWitnessTable(aM0, &type metadata for AccessibilityLabelModifier, v0, v1);
    atomic_store(result, &qword_27F7E87D0);
  }

  return result;
}

uint64_t sub_255E01920(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255E01968(char a1)
{
  result = 0x6E6F747475427369;
  switch(a1)
  {
    case 1:
      result = 0x6567616D497369;
      break;
    case 2:
      result = 0x6B6E694C7369;
      break;
    case 3:
      result = 0x7463656C65537369;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6150736573756163;
      break;
    case 6:
      result = 0x7265646165487369;
      break;
    case 7:
      result = 0x616F6279654B7369;
      break;
    case 8:
      result = 0x6C61646F4D7369;
      break;
    case 9:
      result = 0x6863726165537369;
      break;
    case 10:
      result = 0x6369746174537369;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x656C67676F547369;
      break;
    case 13:
      result = 0x756F537379616C70;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_255E01B54(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_255E01968(*a1);
  v5 = v4;
  if (v3 == sub_255E01968(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255E01BDC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E01968(v1);
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E01C40(uint64_t a1)
{
  sub_255E01968(*v1);
  sub_255E3A578();
}

uint64_t sub_255E01C94(uint64_t a1)
{
  v2 = *v1;
  sub_255E3AD98();
  sub_255E01968(v2);
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255E01CF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E0229C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_255E01D24@<X0>(unint64_t *a1@<X8>)
{
  result = sub_255E01968(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_255E01D50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8810, &qword_255E57E48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E023EC();
  sub_255E3AE28();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    sub_255E024E8(&qword_27F7E6C18, &qword_27F7E6C10, &qword_255E57E50, sub_255D447E8);
    sub_255E3ABC8();
    v7 = sub_255D48968(v9[1]);

    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

void *sub_255E01F2C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v12 = v11;
  sub_255E3AE28();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E87F0, &qword_255E57E30);
    sub_255E024E8(&qword_27F7E87F8, &qword_27F7E87F0, &qword_255E57E30, sub_255D3EA0C);
    sub_255E3ABC8();
    (*(v15 + 8))(v10, v8);
    v12 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v12;
}

uint64_t objectdestroyTm_6()
{

  v1 = *(v0 + 48);
  if (v1 <= 0xFD)
  {
    sub_255D38060(*(v0 + 24), *(v0 + 32), *(v0 + 40), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_255E021FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255E02250(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255E0229C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255E022E8()
{
  result = qword_27F7E87E8;
  if (!qword_27F7E87E8)
  {
    result = swift_getWitnessTable(byte_255E5874C, &type metadata for AccessibilityRemoveTraitsModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E87E8);
  }

  return result;
}

unint64_t sub_255E0233C()
{
  result = qword_27F7E8808;
  if (!qword_27F7E8808)
  {
    result = swift_getWitnessTable(asc_255E586FC, &type metadata for AccessibilityAddTraitsModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8808);
  }

  return result;
}

uint64_t sub_255E02390(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityFocusedModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255E023EC()
{
  result = qword_27F7E8818;
  if (!qword_27F7E8818)
  {
    result = swift_getWitnessTable(asc_255E586AC, &type metadata for AccessibilityChildrenModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8818);
  }

  return result;
}

unint64_t sub_255E02440()
{
  result = qword_27F7E8828;
  if (!qword_27F7E8828)
  {
    result = swift_getWitnessTable(byte_255E5865C, &type metadata for AccessibilityElementModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8828);
  }

  return result;
}

unint64_t sub_255E02494()
{
  result = qword_27F7E8838;
  if (!qword_27F7E8838)
  {
    result = swift_getWitnessTable(byte_255E5860C, &type metadata for AccessibilityActionModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8838);
  }

  return result;
}

uint64_t sub_255E024E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255E02564()
{
  result = qword_27F7E8848;
  if (!qword_27F7E8848)
  {
    result = swift_getWitnessTable(aM0X, &type metadata for AccessibilityIdentifierModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8848);
  }

  return result;
}

unint64_t sub_255E025B8()
{
  result = qword_27F7E8858;
  if (!qword_27F7E8858)
  {
    result = swift_getWitnessTable(byte_255E5856C, &type metadata for AccessibilityLabelModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityTraitString(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityTraitString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255E027D0()
{
  result = qword_27F7E8860;
  if (!qword_27F7E8860)
  {
    result = swift_getWitnessTable(byte_255E57F24, &type metadata for AccessibilityTraitString, v0, v1);
    atomic_store(result, &qword_27F7E8860);
  }

  return result;
}

unint64_t sub_255E02828()
{
  result = qword_27F7E8868;
  if (!qword_27F7E8868)
  {
    result = swift_getWitnessTable(byte_255E57FDC, &type metadata for AccessibilityRemoveTraitsModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8868);
  }

  return result;
}

unint64_t sub_255E02880()
{
  result = qword_27F7E8870;
  if (!qword_27F7E8870)
  {
    result = swift_getWitnessTable(a5_6, &type metadata for AccessibilityAddTraitsModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8870);
  }

  return result;
}

unint64_t sub_255E028D8()
{
  result = qword_27F7E8878;
  if (!qword_27F7E8878)
  {
    result = swift_getWitnessTable(aE_9, &type metadata for AccessibilityChildrenModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8878);
  }

  return result;
}

unint64_t sub_255E02930()
{
  result = qword_27F7E8880;
  if (!qword_27F7E8880)
  {
    result = swift_getWitnessTable(aU_9, &type metadata for AccessibilityElementModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8880);
  }

  return result;
}

unint64_t sub_255E02988()
{
  result = qword_27F7E8888;
  if (!qword_27F7E8888)
  {
    result = swift_getWitnessTable(aE_10, &type metadata for AccessibilityActionModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8888);
  }

  return result;
}

unint64_t sub_255E029E0()
{
  result = qword_27F7E8890;
  if (!qword_27F7E8890)
  {
    result = swift_getWitnessTable(aU_10, &type metadata for AccessibilityIdentifierModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8890);
  }

  return result;
}

unint64_t sub_255E02A38()
{
  result = qword_27F7E8898;
  if (!qword_27F7E8898)
  {
    result = swift_getWitnessTable(byte_255E58544, &type metadata for AccessibilityLabelModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8898);
  }

  return result;
}

unint64_t sub_255E02A90()
{
  result = qword_27F7E88A0;
  if (!qword_27F7E88A0)
  {
    result = swift_getWitnessTable(aT_0, &type metadata for AccessibilityLabelModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E88A0);
  }

  return result;
}

unint64_t sub_255E02AE8()
{
  result = qword_27F7E88A8;
  if (!qword_27F7E88A8)
  {
    result = swift_getWitnessTable(a5L, &type metadata for AccessibilityLabelModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E88A8);
  }

  return result;
}

unint64_t sub_255E02B40()
{
  result = qword_27F7E88B0;
  if (!qword_27F7E88B0)
  {
    result = swift_getWitnessTable(byte_255E5838C, &type metadata for AccessibilityIdentifierModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E88B0);
  }

  return result;
}

unint64_t sub_255E02B98()
{
  result = qword_27F7E88B8;
  if (!qword_27F7E88B8)
  {
    result = swift_getWitnessTable(asc_255E583B4, &type metadata for AccessibilityIdentifierModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E88B8);
  }

  return result;
}

unint64_t sub_255E02BF0()
{
  result = qword_27F7E88C0;
  if (!qword_27F7E88C0)
  {
    result = swift_getWitnessTable(byte_255E5829C, &type metadata for AccessibilityActionModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E88C0);
  }

  return result;
}

unint64_t sub_255E02C48()
{
  result = qword_27F7E88C8;
  if (!qword_27F7E88C8)
  {
    result = swift_getWitnessTable(byte_255E582C4, &type metadata for AccessibilityActionModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E88C8);
  }

  return result;
}

unint64_t sub_255E02CA0()
{
  result = qword_27F7E88D0;
  if (!qword_27F7E88D0)
  {
    result = swift_getWitnessTable(byte_255E581AC, &type metadata for AccessibilityElementModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E88D0);
  }

  return result;
}

unint64_t sub_255E02CF8()
{
  result = qword_27F7E88D8;
  if (!qword_27F7E88D8)
  {
    result = swift_getWitnessTable(byte_255E581D4, &type metadata for AccessibilityElementModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E88D8);
  }

  return result;
}

unint64_t sub_255E02D50()
{
  result = qword_27F7E88E0;
  if (!qword_27F7E88E0)
  {
    result = swift_getWitnessTable(byte_255E580BC, &type metadata for AccessibilityChildrenModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E88E0);
  }

  return result;
}

unint64_t sub_255E02DA8()
{
  result = qword_27F7E88E8;
  if (!qword_27F7E88E8)
  {
    result = swift_getWitnessTable(byte_255E580E4, &type metadata for AccessibilityChildrenModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E88E8);
  }

  return result;
}

unint64_t sub_255E02E00()
{
  result = qword_27F7E88F0;
  if (!qword_27F7E88F0)
  {
    result = swift_getWitnessTable(byte_255E58004, &type metadata for AccessibilityAddTraitsModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E88F0);
  }

  return result;
}

unint64_t sub_255E02E58()
{
  result = qword_27F7E88F8;
  if (!qword_27F7E88F8)
  {
    result = swift_getWitnessTable(byte_255E5802C, &type metadata for AccessibilityAddTraitsModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E88F8);
  }

  return result;
}

unint64_t sub_255E02EB0()
{
  result = qword_27F7E8900;
  if (!qword_27F7E8900)
  {
    result = swift_getWitnessTable(aU0, &type metadata for AccessibilityRemoveTraitsModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8900);
  }

  return result;
}

unint64_t sub_255E02F08()
{
  result = qword_27F7E8908;
  if (!qword_27F7E8908)
  {
    result = swift_getWitnessTable(aET, &type metadata for AccessibilityRemoveTraitsModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8908);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_255E02FC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 96);
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

uint64_t sub_255E0301C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2;
    }
  }

  return result;
}

uint64_t sub_255E030A4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v60 = a3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v50 = *v3;
  v51 = v10;
  v52 = v11;
  LOBYTE(v53) = v12;
  sub_255D3E5A8(v50, v10, v11, v12);
  v13 = StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v50, v51, v52, v53);
  }

  v16 = v13;
  v17 = v14;
  sub_255D38060(v50, v51, v52, v53);
  v58 = v16;
  v59 = v17;
  v18 = sub_255DBFA2C(a2, *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88));
  v48 = v19;
  v49 = v18;
  v46 = v8;
  v47 = v20;
  v21 = *(v5 + 56);
  if (v21 <= 0xFD)
  {
    v22 = *(v5 + 40);
    v23 = *(v5 + 48);
    v50 = *(v5 + 32);
    v51 = v22;
    v52 = v23;
    LOBYTE(v53) = v21;
    sub_255D3E5A8(v50, v22, v23, v21);
    StringResolvable.resolved(with:)(a2);
    v45 = v9;
    sub_255D38060(v50, v51, v52, v53);
  }

  else
  {
    v45 = v9;
  }

  v24 = sub_255E3AB48();

  v44 = &v37;
  v26 = 0x10200u >> (8 * v24);
  if (v24 >= 3)
  {
    v26 = 0;
  }

  v43 = v26;
  v27 = MEMORY[0x28223BE20](v25);
  v42 = v36;
  v36[2] = v5;
  MEMORY[0x28223BE20](v27);
  v41 = v35;
  v35[2] = v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6700, &unk_255E53840);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
  v30 = sub_255D6EEE8();
  v31 = sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840, MEMORY[0x277CE1290]);
  v38 = v31;
  v37 = sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190, MEMORY[0x277CE1550]);
  v50 = v7;
  v51 = MEMORY[0x277D837D0];
  v52 = v28;
  v53 = v29;
  v39 = v29;
  v40 = v28;
  v32 = v46;
  v54 = v46;
  v55 = v30;
  v56 = v31;
  v57 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = v60;
  v60[3] = OpaqueTypeMetadata2;
  v50 = v7;
  v51 = MEMORY[0x277D837D0];
  v52 = v28;
  v53 = v29;
  v54 = v32;
  v55 = v30;
  v56 = v38;
  v57 = v37;
  v34[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v34);
  sub_255E39A48();
}

uint64_t sub_255E034BC(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (*(a1 + 96))
  {
    v1 = *(a1 + 96);
  }

  v6 = v1;
  KeyPath = swift_getKeyPath();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v4 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  return sub_255E3A0E8(&v6, KeyPath, sub_255D5D978, 0, v3, MEMORY[0x277CE11C8], v4, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
}

uint64_t sub_255E035B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255D4FB3C(a1 + 104, v7);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 24))(v3, v4);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    result = sub_255D395E4(v7, &qword_27F7E6558, &qword_255E3DD80);
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255E03668()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E0375C(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E0383C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255E0392C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E04368(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255E0395C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xEF7974696C696269;
  v6 = 0x736956656C746974;
  v7 = 0x736E6F69746361;
  if (v2 != 3)
  {
    v7 = 0x6567617373656DLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x6E65736572507369;
    v3 = 0xEB00000000646574;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_255E03A0C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x736956656C746974;
  v4 = 0x736E6F69746361;
  if (v1 != 3)
  {
    v4 = 0x6567617373656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E65736572507369;
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

unint64_t sub_255E03AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255E04368(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255E03AE0(uint64_t a1)
{
  v2 = sub_255E04194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E03B1C(uint64_t a1)
{
  v2 = sub_255E04194();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E03B58(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8918, &qword_255E58D78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E04194();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v26 = v5;
    v8 = v27;
    v54 = 0;
    sub_255D3EA0C();
    sub_255E3ABC8();
    v24 = *(&v28 + 1);
    v25 = v28;
    v38 = v28;
    v23 = v29;
    v39 = v29;
    v53 = BYTE8(v29);
    v40 = BYTE8(v29);
    v54 = 2;
    sub_255E3ABA8();
    v22 = v28;
    v41 = v28;
    v20 = v29;
    v42 = v29;
    v21 = BYTE8(v29);
    v43 = BYTE8(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    v54 = 1;
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABC8();
    v18 = v28;
    v44 = v28;
    v19 = v29;
    v45 = v29;
    v46 = BYTE8(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v54 = 3;
    sub_255D5F038();
    sub_255E3ABA8();
    v17[0] = v7;
    if (v28)
    {
      v9 = sub_255D48968(v28);
    }

    else
    {
      v9 = 0;
    }

    v17[1] = v9;
    v47 = v9;
    v54 = 4;
    sub_255D447E8();
    sub_255E3ABA8();
    if (*(&v28 + 1))
    {
      v10 = sub_255D44794();
      v11 = swift_allocObject();
      v12 = v35;
      *(v11 + 112) = v34;
      *(v11 + 128) = v12;
      *(v11 + 144) = v36;
      *(v11 + 160) = v37;
      v13 = v31;
      *(v11 + 48) = v30;
      *(v11 + 64) = v13;
      v14 = v33;
      *(v11 + 80) = v32;
      *(v11 + 96) = v14;
      v15 = v29;
      *(v11 + 16) = v28;
      *(v11 + 32) = v15;
      (*(v26 + 8))(v17[0], v4);
      v16 = &type metadata for ViewContent;
    }

    else
    {
      (*(v26 + 8))(v17[0], v4);
      sub_255D395E4(&v28, &qword_27F7E6C20, &qword_255E58D80);
      v16 = 0;
      v10 = 0;
      v11 = 0;
    }

    v48 = v11;
    v49 = 0;
    v50 = 0;
    v51 = v16;
    v52 = v10;
    sub_255E041E8(&v38, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255E04220(&v38);
  }
}

unint64_t sub_255E040BC(uint64_t a1)
{
  result = sub_255E040E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E040E4()
{
  result = qword_27F7E8910;
  if (!qword_27F7E8910)
  {
    result = swift_getWitnessTable(asc_255E58CFC, &type metadata for ConfirmationDialogModifier, v0, v1);
    atomic_store(result, &qword_27F7E8910);
  }

  return result;
}

unint64_t sub_255E04138(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255E04194()
{
  result = qword_27F7E8920;
  if (!qword_27F7E8920)
  {
    result = swift_getWitnessTable(byte_255E58E84, &type metadata for ConfirmationDialogModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8920);
  }

  return result;
}

unint64_t sub_255E04264()
{
  result = qword_27F7E8928;
  if (!qword_27F7E8928)
  {
    result = swift_getWitnessTable(aM_12, &type metadata for ConfirmationDialogModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8928);
  }

  return result;
}

unint64_t sub_255E042BC()
{
  result = qword_27F7E8930;
  if (!qword_27F7E8930)
  {
    result = swift_getWitnessTable(asc_255E58D94, &type metadata for ConfirmationDialogModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8930);
  }

  return result;
}

unint64_t sub_255E04314()
{
  result = qword_27F7E8938;
  if (!qword_27F7E8938)
  {
    result = swift_getWitnessTable(byte_255E58DBC, &type metadata for ConfirmationDialogModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8938);
  }

  return result;
}

unint64_t sub_255E04368(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255E043D4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_255DDEBF8(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), &v16);
  if (v4)
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v7 = sub_255E386A8();
    __swift_project_value_buffer(v7, qword_27F8152D8);
    v8 = sub_255E38688();
    v9 = sub_255E3A868();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_255D2E000, v8, v9, "TagModifier Unable to resolve tag value", v10, 2u);
      MEMORY[0x259C4F9E0](v10, -1, -1);
    }

    return sub_255D3CE1C(a1, a3);
  }

  else
  {
    v12 = v16;
    v14 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v20 = v12;
    v15 = sub_255D6F180();
    v16 = v14;
    v17 = &type metadata for DecodableState;
    v18 = v13;
    v19 = v15;
    a3[3] = swift_getOpaqueTypeMetadata2();
    v16 = v14;
    v17 = &type metadata for DecodableState;
    v18 = v13;
    v19 = v15;
    a3[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_255D37560(&v20, 1, v14, &type metadata for DecodableState, v13);
  }
}

uint64_t sub_255E045C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    sub_255E04D8C();
    sub_255E3ACB8();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E04704@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = sub_255E38D88();
        v7 = MEMORY[0x277CDDDA0];
        a2[3] = v6;
        a2[4] = v7;
        __swift_allocate_boxed_opaque_existential_1(a2);
        return sub_255E38D78();
      }

      else
      {
        v12 = sub_255E39528();
        v13 = MEMORY[0x277CDE370];
        a2[3] = v12;
        a2[4] = v13;
        __swift_allocate_boxed_opaque_existential_1(a2);
        return sub_255E39518();
      }
    }

    else
    {
      v10 = sub_255E38E68();
      v11 = MEMORY[0x277CDDE48];
      a2[3] = v10;
      a2[4] = v11;
      __swift_allocate_boxed_opaque_existential_1(a2);
      return sub_255E38E58();
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v8 = sub_255E38AD8();
      v9 = MEMORY[0x277CDDA00];
      a2[3] = v8;
      a2[4] = v9;
      __swift_allocate_boxed_opaque_existential_1(a2);
      return sub_255E38AC8();
    }

    else
    {
      v16 = sub_255E38C18();
      v17 = MEMORY[0x277CDDB70];
      a2[3] = v16;
      a2[4] = v17;
      __swift_allocate_boxed_opaque_existential_1(a2);
      return sub_255E38C08();
    }
  }

  else if (a1 == 3)
  {
    v3 = sub_255E38F28();
    v4 = MEMORY[0x277CDDE88];
    a2[3] = v3;
    a2[4] = v4;
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_255E38F18();
  }

  else
  {
    v14 = sub_255E39288();
    v15 = MEMORY[0x277CDE058];
    a2[3] = v14;
    a2[4] = v15;
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_255E39278();
  }
}

uint64_t sub_255E04868@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 24);
  if (v7 <= 0xFD)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    v23 = *v3;
    v24 = v11;
    v25 = v12;
    LOBYTE(v26.f64[0]) = v7;
    sub_255D3E5A8(v23, v11, v12, v7);
    v13 = StringResolvable.resolved(with:)(a2);
    if (v4)
    {

      sub_255D38060(v23, v24, v25, LOBYTE(v26.f64[0]));
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v8 = v13;
      v9 = v14;
      sub_255D38060(v23, v24, v25, LOBYTE(v26.f64[0]));
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (v9)
  {
    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  if (v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v17 = sub_255E04CD8(v15, v16);
  if (v17 == 7)
  {
    memset(v21, 0, sizeof(v21));
    v22 = 0;
    *&v26.f64[0] = sub_255E38E68();
    *&v26.f64[1] = MEMORY[0x277CDDE48];
    __swift_allocate_boxed_opaque_existential_1(&v23);
    sub_255E38E58();
  }

  else
  {
    sub_255E04704(v17, v21);
    sub_255D34630(v21, &v23);
  }

  v20.val[0] = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, *&v20.val[0].f64[0]);
  v20.val[1] = v26;
  __swift_project_boxed_opaque_existential_1(&v23, *&v26.f64[0]);
  v18 = v21;
  v27 = v20;
  vst2q_f64(v18, v27);
  a3[3] = swift_getOpaqueTypeMetadata2();
  v28 = v20;
  vst2q_f64(v21, v28);
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E398F8();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v23);
}

uint64_t sub_255E04A9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_255D3EA0C();
  sub_255E3ACB8();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255E04BE0(uint64_t a1)
{
  result = sub_255E04C08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E04C08()
{
  result = qword_27F7E8940;
  if (!qword_27F7E8940)
  {
    result = swift_getWitnessTable(byte_255E59304, &type metadata for PickerStyleModifier, v0, v1);
    atomic_store(result, &qword_27F7E8940);
  }

  return result;
}

unint64_t sub_255E04C5C(uint64_t a1)
{
  result = sub_255E04C84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E04C84()
{
  result = qword_27F7E8948;
  if (!qword_27F7E8948)
  {
    result = swift_getWitnessTable(asc_255E592DC, &type metadata for TagModifier, v0, v1);
    atomic_store(result, &qword_27F7E8948);
  }

  return result;
}

unint64_t sub_255E04CD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255E04D24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8120, &qword_255E538F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255E04D8C()
{
  result = qword_27F7E6BA0;
  if (!qword_27F7E6BA0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6B80, &unk_255E56600);
    result = swift_getWitnessTable(protocol conformance descriptor for Referenceable<A>, v3, v0, v1);
    atomic_store(result, &qword_27F7E6BA0);
  }

  return result;
}

uint64_t sub_255E04E10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8960, &qword_255E59638);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E0574C();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D64774();
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E04FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255E05030(uint64_t a1)
{
  v2 = sub_255E0574C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E0506C(uint64_t a1)
{
  v2 = sub_255E0574C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E050A8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v15 = *v3;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  sub_255D612A0(v15, v7, v8, v9);
  sub_255D8F6FC(a2);
  LOBYTE(a2) = v10;
  sub_255D4CB98(v15, v16, v17, v18);
  if (a2)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8000, &qword_255E59630);
  v13 = sub_255E38AE8();
  a3[3] = v13;
  v14[0] = v12;
  v14[1] = sub_255D38950(&qword_27F7E8008, &qword_27F7E8000, &qword_255E59630, MEMORY[0x277CE04A0]);
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v13, v14);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E399A8();
}

uint64_t sub_255E05228(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  if (v2 != 1)
  {
    v4 = 0x676E696C69617274;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E05324()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E053C4(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255E05450(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255E054EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E05AA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255E0551C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (v2 != 1)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696461656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_255E05628@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_255E057A0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_255E05654(uint64_t a1)
{
  result = sub_255E0567C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E0567C()
{
  result = qword_27F7E8950;
  if (!qword_27F7E8950)
  {
    result = swift_getWitnessTable(aA_14, &type metadata for LayoutPriorityModifier, v0, v1);
    atomic_store(result, &qword_27F7E8950);
  }

  return result;
}

unint64_t sub_255E056D0(uint64_t a1)
{
  result = sub_255E056F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E056F8()
{
  result = qword_27F7E8958;
  if (!qword_27F7E8958)
  {
    result = swift_getWitnessTable(aI_6, &type metadata for MultiLineTextAlignmentModifier, v0, v1);
    atomic_store(result, &qword_27F7E8958);
  }

  return result;
}

unint64_t sub_255E0574C()
{
  result = qword_27F7E8968;
  if (!qword_27F7E8968)
  {
    result = swift_getWitnessTable(asc_255E59808, &type metadata for LayoutPriorityModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8968);
  }

  return result;
}

unint64_t sub_255E057A0(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_255E0587C();
    sub_255E3ACB8();
    v3 = v6;
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

unint64_t sub_255E0587C()
{
  result = qword_27F7E8970;
  if (!qword_27F7E8970)
  {
    result = swift_getWitnessTable(asc_255E597E0, &type metadata for TextAlignmentName, v0, v1);
    atomic_store(result, &qword_27F7E8970);
  }

  return result;
}

unint64_t sub_255E058F4()
{
  result = qword_27F7E8978;
  if (!qword_27F7E8978)
  {
    result = swift_getWitnessTable(byte_255E596F0, &type metadata for LayoutPriorityModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8978);
  }

  return result;
}

unint64_t sub_255E0594C()
{
  result = qword_27F7E8980;
  if (!qword_27F7E8980)
  {
    result = swift_getWitnessTable(byte_255E597B8, &type metadata for TextAlignmentName, v0, v1);
    atomic_store(result, &qword_27F7E8980);
  }

  return result;
}

unint64_t sub_255E059A4()
{
  result = qword_27F7E8988;
  if (!qword_27F7E8988)
  {
    result = swift_getWitnessTable(aA_15, &type metadata for LayoutPriorityModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8988);
  }

  return result;
}

unint64_t sub_255E059FC()
{
  result = qword_27F7E8990;
  if (!qword_27F7E8990)
  {
    result = swift_getWitnessTable(aQ_7, &type metadata for LayoutPriorityModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8990);
  }

  return result;
}

unint64_t sub_255E05A50()
{
  result = qword_27F7E8998;
  if (!qword_27F7E8998)
  {
    result = swift_getWitnessTable(aAXt, &type metadata for TextAlignmentName, v0, v1);
    atomic_store(result, &qword_27F7E8998);
  }

  return result;
}

unint64_t sub_255E05AA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id ContentRegistry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_255E05B28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8310, &qword_255E54EB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_255E3AAE8();
  __swift_allocate_value_buffer(v3, qword_27F8152F0);
  v4 = __swift_project_value_buffer(v3, qword_27F8152F0);
  sub_255E3AAD8();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_255E05C60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8CF8, &qword_255E599A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255E59860;
  *(v0 + 32) = 1954047316;
  *(v0 + 40) = 0xE400000000000000;
  v1 = sub_255D67AFC();
  *(v0 + 48) = &type metadata for TextView;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0x6B6361745356;
  *(v0 + 72) = 0xE600000000000000;
  v2 = sub_255D98914();
  *(v0 + 80) = &type metadata for VStackView;
  *(v0 + 88) = v2;
  *(v0 + 96) = 0x6B6361745348;
  *(v0 + 104) = 0xE600000000000000;
  v3 = sub_255D995F4();
  *(v0 + 112) = &type metadata for HStackView;
  *(v0 + 120) = v3;
  *(v0 + 128) = 0x6B636174535ALL;
  *(v0 + 136) = 0xE600000000000000;
  v4 = sub_255D999E8();
  *(v0 + 144) = &type metadata for ZStackView;
  *(v0 + 152) = v4;
  *(v0 + 160) = 0x61745356797A614CLL;
  *(v0 + 168) = 0xEA00000000006B63;
  v5 = sub_255D9A57C();
  *(v0 + 176) = &type metadata for LazyVStackView;
  *(v0 + 184) = v5;
  *(v0 + 192) = 0x61745348797A614CLL;
  *(v0 + 200) = 0xEA00000000006B63;
  v6 = sub_255D9B45C();
  *(v0 + 208) = &type metadata for LazyHStackView;
  *(v0 + 216) = v6;
  *(v0 + 224) = 1953720652;
  *(v0 + 232) = 0xE400000000000000;
  v7 = sub_255D5D924();
  *(v0 + 240) = &type metadata for ListView;
  *(v0 + 248) = v7;
  *(v0 + 256) = 0x6E6F6974636553;
  *(v0 + 264) = 0xE700000000000000;
  v8 = sub_255D5E6D8();
  *(v0 + 272) = &type metadata for SectionView;
  *(v0 + 280) = v8;
  *(v0 + 288) = 0x72656469766944;
  *(v0 + 296) = 0xE700000000000000;
  v9 = sub_255D5EAAC();
  *(v0 + 304) = &type metadata for DividerView;
  *(v0 + 312) = v9;
  *(v0 + 320) = 0x6567616D49;
  *(v0 + 328) = 0xE500000000000000;
  v10 = sub_255E0A940();
  *(v0 + 336) = &type metadata for SymbolView;
  *(v0 + 344) = v10;
  *(v0 + 352) = 0x616D49636E797341;
  *(v0 + 360) = 0xEA00000000006567;
  v11 = sub_255E0A994();
  *(v0 + 368) = &type metadata for AsyncImageView;
  *(v0 + 376) = v11;
  strcpy((v0 + 384), "ProgressView");
  *(v0 + 397) = 0;
  *(v0 + 398) = -5120;
  v12 = sub_255D69764();
  *(v0 + 400) = &type metadata for ProgressView;
  *(v0 + 408) = v12;
  *(v0 + 416) = 0x726563617053;
  *(v0 + 424) = 0xE600000000000000;
  v13 = sub_255D69800();
  *(v0 + 432) = &type metadata for SpacerView;
  *(v0 + 440) = v13;
  *(v0 + 448) = 0x6E6F74747542;
  *(v0 + 456) = 0xE600000000000000;
  v14 = sub_255DA7BF8();
  *(v0 + 464) = &type metadata for ButtonView;
  *(v0 + 472) = v14;
  *(v0 + 480) = 1802398028;
  *(v0 + 488) = 0xE400000000000000;
  v15 = type metadata accessor for LinkView(0);
  v16 = sub_255E0AAA0(&qword_27F7E6E50, 255, type metadata accessor for LinkView, aE_30);
  *(v0 + 496) = v15;
  *(v0 + 504) = v16;
  *(v0 + 512) = 0x726F6C6F43;
  *(v0 + 520) = 0xE500000000000000;
  v17 = sub_255D6A0FC();
  *(v0 + 528) = &type metadata for ColorView;
  *(v0 + 536) = v17;
  strcpy((v0 + 544), "RemoteContent");
  *(v0 + 558) = -4864;
  v18 = sub_255D94DD4();
  *(v0 + 560) = &type metadata for DecodableRemoteContentView;
  *(v0 + 568) = v18;
  *(v0 + 576) = 0x697461676976614ELL;
  *(v0 + 584) = 0xEF6B636174536E6FLL;
  v19 = sub_255D9C89C();
  *(v0 + 592) = &type metadata for NavigationStackView;
  *(v0 + 600) = v19;
  strcpy((v0 + 608), "NavigationView");
  *(v0 + 623) = -18;
  v20 = sub_255D9D13C();
  *(v0 + 624) = &type metadata for NavigatingView;
  *(v0 + 632) = v20;
  strcpy((v0 + 640), "NavigationLink");
  *(v0 + 655) = -18;
  v21 = sub_255D9E83C();
  *(v0 + 656) = &type metadata for NavigationLinkView;
  *(v0 + 664) = v21;
  *(v0 + 672) = 0x656C67676F54;
  *(v0 + 680) = 0xE600000000000000;
  v22 = sub_255D6BAF0();
  *(v0 + 688) = &type metadata for ToggleView;
  *(v0 + 696) = v22;
  *(v0 + 704) = 0x6C6562614CLL;
  *(v0 + 712) = 0xE500000000000000;
  v23 = sub_255D6C5A0();
  *(v0 + 720) = &type metadata for LabelView;
  *(v0 + 728) = v23;
  *(v0 + 736) = 0x69566C6C6F726353;
  *(v0 + 744) = 0xEA00000000007765;
  v24 = sub_255D6C63C();
  *(v0 + 752) = &type metadata for ScrollingView;
  *(v0 + 760) = v24;
  *(v0 + 768) = 0x70756F7247;
  *(v0 + 776) = 0xE500000000000000;
  v25 = sub_255D6C9CC();
  *(v0 + 784) = &type metadata for GroupView;
  *(v0 + 792) = v25;
  *(v0 + 800) = 26185;
  *(v0 + 808) = 0xE200000000000000;
  v26 = sub_255D72218();
  *(v0 + 816) = &type metadata for IfView;
  *(v0 + 824) = v26;
  *(v0 + 832) = 0x68636145726F46;
  *(v0 + 840) = 0xE700000000000000;
  v27 = sub_255D6E134();
  *(v0 + 848) = &type metadata for ForEachView;
  *(v0 + 856) = v27;
  *(v0 + 864) = 1836216134;
  *(v0 + 872) = 0xE400000000000000;
  v28 = sub_255D6E5FC();
  *(v0 + 880) = &type metadata for FormView;
  *(v0 + 888) = v28;
  *(v0 + 896) = 0x686353726F6C6F43;
  *(v0 + 904) = 0xEB00000000656D65;
  v29 = type metadata accessor for ColorSchemeReader(0);
  v30 = sub_255E0AAA0(&qword_27F7E8D10, 255, type metadata accessor for ColorSchemeReader, asc_255E62D48);
  *(v0 + 912) = v29;
  *(v0 + 920) = v30;
  strcpy((v0 + 928), "GeometryReader");
  *(v0 + 943) = -18;
  v31 = sub_255E0A9E8();
  *(v0 + 944) = &type metadata for GeometryReaderView;
  *(v0 + 952) = v31;
  *(v0 + 960) = 0xD000000000000010;
  *(v0 + 968) = 0x8000000255E667E0;
  v32 = sub_255E0AA3C();
  *(v0 + 976) = &type metadata for ScrollViewReaderView;
  *(v0 + 984) = v32;
  *(v0 + 992) = 0x694474756F79614CLL;
  *(v0 + 1000) = 0xEF6E6F6974636572;
  v33 = type metadata accessor for LayoutDirectionReader(0);
  v34 = sub_255E0AAA0(&qword_27F7E8D28, 255, type metadata accessor for LayoutDirectionReader, aU_21);
  *(v0 + 1008) = v33;
  *(v0 + 1016) = v34;
  *(v0 + 1024) = 0x6569567974706D45;
  *(v0 + 1032) = 0xE900000000000077;
  v35 = sub_255D6E898();
  *(v0 + 1040) = &type metadata for EmptyViewView;
  *(v0 + 1048) = v35;
  *(v0 + 1056) = 0x72656B636950;
  *(v0 + 1064) = 0xE600000000000000;
  v36 = sub_255DA2C44();
  *(v0 + 1072) = &type metadata for PickerView;
  *(v0 + 1080) = v36;
  *(v0 + 1088) = 0x7474754274696445;
  *(v0 + 1096) = 0xEA00000000006E6FLL;
  v37 = sub_255DA7FB4();
  *(v0 + 1104) = &type metadata for EditButtonView;
  *(v0 + 1112) = v37;
  *(v0 + 1120) = 0xD000000000000017;
  *(v0 + 1128) = 0x8000000255E66800;
  v38 = sub_255D91F60();
  *(v0 + 1136) = &type metadata for MaterialEffectContainerView;
  *(v0 + 1144) = v38;
  v39 = sub_255DC524C(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8D30, &qword_255E599A8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27F7E89A0 = v39;
  return result;
}

uint64_t sub_255E06384()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8D38, &qword_255E599B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E59870;
  *(inited + 32) = 0x656C63726943;
  *(inited + 40) = 0xE600000000000000;
  v1 = sub_255D3DAC4();
  *(inited + 48) = &type metadata for CircleView;
  *(inited + 56) = v1;
  *(inited + 64) = 0x657370696C6C45;
  *(inited + 72) = 0xE700000000000000;
  v2 = sub_255D3DC80();
  *(inited + 80) = &type metadata for EllipseView;
  *(inited + 88) = v2;
  *(inited + 96) = 0x656C7573706143;
  *(inited + 104) = 0xE700000000000000;
  v3 = sub_255D3DE3C();
  *(inited + 112) = &type metadata for CapsuleView;
  *(inited + 120) = v3;
  *(inited + 128) = 0x6C676E6174636552;
  *(inited + 136) = 0xE900000000000065;
  v4 = sub_255D3DFF8();
  *(inited + 144) = &type metadata for RectangleView;
  *(inited + 152) = v4;
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000255E66840;
  v5 = sub_255D3E208();
  *(inited + 176) = &type metadata for RoundedRectangleView;
  *(inited + 184) = v5;
  v6 = sub_255DC5238(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8D40, &qword_255E599B8);
  result = swift_arrayDestroy();
  off_27F7E89A8 = v6;
  return result;
}

uint64_t sub_255E064EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8D50, &qword_255E59A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E59870;
  *(inited + 32) = 0x726F6C6F43;
  *(inited + 40) = 0xE500000000000000;
  v1 = sub_255E0AC98();
  *(inited + 48) = &type metadata for ColorShapeStyle;
  *(inited + 56) = v1;
  *(inited + 64) = 0x6C6169726574614DLL;
  *(inited + 72) = 0xE800000000000000;
  v2 = sub_255E0ACEC();
  *(inited + 80) = &type metadata for MaterialShapeStyle;
  *(inited + 88) = v2;
  strcpy((inited + 96), "LinearGradient");
  *(inited + 111) = -18;
  v3 = sub_255E0AD40();
  *(inited + 112) = &type metadata for LinearGradientShapeStyle;
  *(inited + 120) = v3;
  *(inited + 128) = 0x4772616C75676E41;
  *(inited + 136) = 0xEF746E6569646172;
  v4 = sub_255E0AD94();
  *(inited + 144) = &type metadata for AngularGradientShapeStyle;
  *(inited + 152) = v4;
  strcpy((inited + 160), "RadialGradient");
  *(inited + 175) = -18;
  v5 = sub_255E0ADE8();
  *(inited + 176) = &type metadata for RadialGradientShapeStyle;
  *(inited + 184) = v5;
  v6 = sub_255DC529C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8D80, &qword_255E59A18);
  result = swift_arrayDestroy();
  off_27F7E89B0 = v6;
  return result;
}

void *sub_255E06664()
{
  result = sub_255DC52B0(MEMORY[0x277D84F90]);
  off_27F7E89B8 = result;
  return result;
}

uint64_t sub_255E0668C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A50, &qword_255E59980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255E59880;
  *(v0 + 32) = 0x676E6964646170;
  *(v0 + 40) = 0xE700000000000000;
  v1 = sub_255E09050();
  *(v0 + 48) = &type metadata for PaddingModifier;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0x726564726F62;
  *(v0 + 72) = 0xE600000000000000;
  v2 = sub_255E090A4();
  *(v0 + 80) = &type metadata for BorderModifier;
  *(v0 + 88) = v2;
  strcpy((v0 + 96), "roundedBorder");
  *(v0 + 110) = -4864;
  v3 = sub_255E090F8();
  *(v0 + 112) = &type metadata for RoundedBorderModifier;
  *(v0 + 120) = v3;
  *(v0 + 128) = 0x756F72676B636162;
  *(v0 + 136) = 0xEF726F6C6F43646ELL;
  v4 = sub_255E0914C();
  *(v0 + 144) = &type metadata for BackgroundColorModifier;
  *(v0 + 152) = v4;
  *(v0 + 160) = 0x756F726765726F66;
  *(v0 + 168) = 0xEF726F6C6F43646ELL;
  v5 = sub_255E091A0();
  *(v0 + 176) = &type metadata for ForegroundColorModifier;
  *(v0 + 184) = v5;
  *(v0 + 192) = 0x756F726765726F66;
  *(v0 + 200) = 0xEF656C797453646ELL;
  v6 = sub_255E091F4();
  *(v0 + 208) = &type metadata for ForegroundStyleModifier;
  *(v0 + 216) = v6;
  *(v0 + 224) = 0x6F43746E65636361;
  *(v0 + 232) = 0xEB00000000726F6CLL;
  v7 = sub_255E09248();
  *(v0 + 240) = &type metadata for AccentColorModifier;
  *(v0 + 248) = v7;
  *(v0 + 256) = 1953393012;
  *(v0 + 264) = 0xE400000000000000;
  v8 = sub_255E0929C();
  *(v0 + 272) = &type metadata for TintColorModifier;
  *(v0 + 280) = v8;
  *(v0 + 288) = 0x656D617266;
  *(v0 + 296) = 0xE500000000000000;
  v9 = sub_255E092F0();
  *(v0 + 304) = &type metadata for FrameModifier;
  *(v0 + 312) = v9;
  *(v0 + 320) = 0x696D694C656E696CLL;
  *(v0 + 328) = 0xE900000000000074;
  v10 = sub_255E09344();
  *(v0 + 336) = &type metadata for LineLimitModifier;
  *(v0 + 344) = v10;
  *(v0 + 352) = 0xD000000000000016;
  *(v0 + 360) = 0x8000000255E66460;
  v11 = sub_255E09398();
  *(v0 + 368) = &type metadata for MultiLineTextAlignmentModifier;
  *(v0 + 376) = v11;
  strcpy((v0 + 384), "cornerRadius");
  *(v0 + 397) = 0;
  *(v0 + 398) = -5120;
  v12 = sub_255E093EC();
  *(v0 + 400) = &type metadata for CornerRadiusModifier;
  *(v0 + 408) = v12;
  *(v0 + 416) = 0x536C6F72746E6F63;
  *(v0 + 424) = 0xEB00000000657A69;
  v13 = type metadata accessor for ControlSizeModifier(0);
  v14 = sub_255E0AAA0(&qword_27F7E8AB8, 255, type metadata accessor for ControlSizeModifier, byte_255E3DAEC);
  *(v0 + 432) = v13;
  *(v0 + 440) = v14;
  *(v0 + 448) = 0x74536E6F74747562;
  *(v0 + 456) = 0xEB00000000656C79;
  v15 = sub_255E09440();
  *(v0 + 464) = &type metadata for ButtonStyleModifier;
  *(v0 + 472) = v15;
  strcpy((v0 + 480), "layoutPriority");
  *(v0 + 495) = -18;
  v16 = sub_255E09494();
  *(v0 + 496) = &type metadata for LayoutPriorityModifier;
  *(v0 + 504) = v16;
  *(v0 + 512) = 1953394534;
  *(v0 + 520) = 0xE400000000000000;
  v17 = sub_255E094E8();
  *(v0 + 528) = &type metadata for FontModifier;
  *(v0 + 536) = v17;
  *(v0 + 544) = 0x7472656C61;
  *(v0 + 552) = 0xE500000000000000;
  v18 = sub_255E0953C();
  *(v0 + 560) = &type metadata for AlertModifier;
  *(v0 + 568) = v18;
  *(v0 + 576) = 0xD000000000000012;
  *(v0 + 584) = 0x8000000255E66480;
  v19 = sub_255E09590();
  *(v0 + 592) = &type metadata for ConfirmationDialogModifier;
  *(v0 + 600) = v19;
  *(v0 + 608) = 26217;
  *(v0 + 616) = 0xE200000000000000;
  v20 = sub_255E095E4();
  *(v0 + 624) = &type metadata for IfModifier;
  *(v0 + 632) = v20;
  *(v0 + 640) = 0x776F64616873;
  *(v0 + 648) = 0xE600000000000000;
  v21 = sub_255E09638();
  *(v0 + 656) = &type metadata for ShadowModifier;
  *(v0 + 664) = v21;
  *(v0 + 672) = 0x697461676976616ELL;
  *(v0 + 680) = 0xEF656C7469546E6FLL;
  v22 = sub_255E0968C();
  *(v0 + 688) = &type metadata for NavigationTitleModifier;
  *(v0 + 696) = v22;
  *(v0 + 704) = 0xD00000000000001DLL;
  *(v0 + 712) = 0x8000000255E664A0;
  v23 = sub_255E096E0();
  *(v0 + 720) = &type metadata for NavigationBarTitleDisplayModeModifier;
  *(v0 + 728) = v23;
  *(v0 + 736) = 0x656B6F727473;
  *(v0 + 744) = 0xE600000000000000;
  v24 = sub_255DA6700();
  *(v0 + 752) = &type metadata for StrokeModifier;
  *(v0 + 760) = v24;
  *(v0 + 768) = 0x7A69536465786966;
  *(v0 + 776) = 0xE900000000000065;
  v25 = sub_255E09734();
  *(v0 + 784) = &type metadata for FixedSizeModifier;
  *(v0 + 792) = v25;
  *(v0 + 800) = 0x7061685370696C63;
  *(v0 + 808) = 0xE900000000000065;
  v26 = sub_255E09788();
  *(v0 + 816) = &type metadata for ClipShapeModifier;
  *(v0 + 824) = v26;
  *(v0 + 832) = 0x7465656873;
  *(v0 + 840) = 0xE500000000000000;
  v27 = sub_255E097DC();
  *(v0 + 848) = &type metadata for SheetModifier;
  *(v0 + 856) = v27;
  *(v0 + 864) = 0x7261657070416E6FLL;
  *(v0 + 872) = 0xE800000000000000;
  v28 = sub_255E09830();
  *(v0 + 880) = &type metadata for OnAppearModifier;
  *(v0 + 888) = v28;
  strcpy((v0 + 896), "onTapGesture");
  *(v0 + 909) = 0;
  *(v0 + 910) = -5120;
  v29 = sub_255DC80E4();
  *(v0 + 912) = &type metadata for OnTapModifier;
  *(v0 + 920) = v29;
  *(v0 + 928) = 0x756F72676B636162;
  *(v0 + 936) = 0xEA0000000000646ELL;
  v30 = sub_255E09884();
  *(v0 + 944) = &type metadata for BackgroundModifier;
  *(v0 + 952) = v30;
  *(v0 + 960) = 0x79616C7265766FLL;
  *(v0 + 968) = 0xE700000000000000;
  v31 = sub_255E098D8();
  *(v0 + 976) = &type metadata for OverlayModifier;
  *(v0 + 984) = v31;
  *(v0 + 992) = 0x6F6974616D696E61;
  *(v0 + 1000) = 0xE90000000000006ELL;
  v32 = sub_255E0992C();
  *(v0 + 1008) = &type metadata for AnimationModifier;
  *(v0 + 1016) = v32;
  *(v0 + 1024) = 1684828002;
  *(v0 + 1032) = 0xE400000000000000;
  v33 = sub_255DC8140();
  *(v0 + 1040) = &type metadata for BoldModifier;
  *(v0 + 1048) = v33;
  *(v0 + 1056) = 0x63696C617469;
  *(v0 + 1064) = 0xE600000000000000;
  v34 = sub_255DC8194();
  *(v0 + 1072) = &type metadata for ItalicModifier;
  *(v0 + 1080) = v34;
  *(v0 + 1088) = 0x636170736F6E6F6DLL;
  *(v0 + 1096) = 0xEA00000000006465;
  v35 = sub_255DC81E8();
  *(v0 + 1104) = &type metadata for MonospacedModifier;
  *(v0 + 1112) = v35;
  *(v0 + 1120) = 0x636170736F6E6F6DLL;
  *(v0 + 1128) = 0xEF74696769446465;
  v36 = sub_255DC823C();
  *(v0 + 1136) = &type metadata for MonospacedDigitModifier;
  *(v0 + 1144) = v36;
  *(v0 + 1152) = 0x676E696E72656BLL;
  *(v0 + 1160) = 0xE700000000000000;
  v37 = sub_255DC8290();
  *(v0 + 1168) = &type metadata for KerningModifier;
  *(v0 + 1176) = v37;
  *(v0 + 1184) = 0x676E696B63617274;
  *(v0 + 1192) = 0xE800000000000000;
  v38 = sub_255DC82E4();
  *(v0 + 1200) = &type metadata for TrackingModifier;
  *(v0 + 1208) = v38;
  strcpy((v0 + 1216), "baselineOffset");
  *(v0 + 1231) = -18;
  v39 = sub_255DC8338();
  *(v0 + 1232) = &type metadata for BaselineOffsetModifier;
  *(v0 + 1240) = v39;
  *(v0 + 1248) = 0x6C7974536D726F66;
  *(v0 + 1256) = 0xE900000000000065;
  v40 = sub_255DC838C();
  *(v0 + 1264) = &type metadata for FormStyleModifier;
  *(v0 + 1272) = v40;
  *(v0 + 1280) = 0x666645656C616373;
  *(v0 + 1288) = 0xEB00000000746365;
  v41 = sub_255E09980();
  *(v0 + 1296) = &type metadata for ScaleEffectModifier;
  *(v0 + 1304) = v41;
  *(v0 + 1312) = 0x6152746365707361;
  *(v0 + 1320) = 0xEB000000006F6974;
  v42 = sub_255E099D4();
  *(v0 + 1328) = &type metadata for AspectRatioModifier;
  *(v0 + 1336) = v42;
  *(v0 + 1344) = 0xD000000000000012;
  *(v0 + 1352) = 0x8000000255E664C0;
  v43 = sub_255E09A28();
  *(v0 + 1360) = &type metadata for AccessibilityLabelModifier;
  *(v0 + 1368) = v43;
  *(v0 + 1376) = 0xD000000000000017;
  *(v0 + 1384) = 0x8000000255E664E0;
  v44 = sub_255E09A7C();
  *(v0 + 1392) = &type metadata for AccessibilityIdentifierModifier;
  *(v0 + 1400) = v44;
  *(v0 + 1408) = 0xD000000000000013;
  *(v0 + 1416) = 0x8000000255E66500;
  v45 = sub_255DC849C();
  *(v0 + 1424) = &type metadata for AccessibilityHiddenModifier;
  *(v0 + 1432) = v45;
  *(v0 + 1440) = 0xD000000000000013;
  *(v0 + 1448) = 0x8000000255E66520;
  v46 = sub_255E09AD0();
  *(v0 + 1456) = &type metadata for SymbolRenderingModeModifier;
  *(v0 + 1464) = v46;
  *(v0 + 1472) = 0x6163536567616D69;
  *(v0 + 1480) = 0xEA0000000000656CLL;
  v47 = sub_255E09B24();
  *(v0 + 1488) = &type metadata for ImageScaleModifier;
  *(v0 + 1496) = v47;
  *(v0 + 1504) = 0x7261626C6F6F74;
  *(v0 + 1512) = 0xE700000000000000;
  v48 = sub_255DC84F0();
  *(v0 + 1520) = &type metadata for ToolbarModifier;
  *(v0 + 1528) = v48;
  strcpy((v0 + 1536), "contentShape");
  *(v0 + 1549) = 0;
  *(v0 + 1550) = -5120;
  v49 = sub_255E09B78();
  *(v0 + 1552) = &type metadata for ContentShapeModifier;
  *(v0 + 1560) = v49;
  *(v0 + 1568) = 0x7453656C67676F74;
  *(v0 + 1576) = 0xEB00000000656C79;
  v50 = sub_255E09BCC();
  *(v0 + 1584) = &type metadata for ToggleStyleModifier;
  *(v0 + 1592) = v50;
  *(v0 + 1600) = 0x64656C6261736964;
  *(v0 + 1608) = 0xE800000000000000;
  v51 = sub_255E09C20();
  *(v0 + 1616) = &type metadata for DisabledModifier;
  *(v0 + 1624) = v51;
  *(v0 + 1632) = 0xD00000000000001DLL;
  *(v0 + 1640) = 0x8000000255E66540;
  v52 = sub_255DC858C();
  *(v0 + 1648) = &type metadata for NavigationBarBackButtonHiddenModifier;
  *(v0 + 1656) = v52;
  *(v0 + 1664) = 0x74657366666FLL;
  *(v0 + 1672) = 0xE600000000000000;
  v53 = sub_255E09C74();
  *(v0 + 1680) = &type metadata for OffsetModifier;
  *(v0 + 1688) = v53;
  strcpy((v0 + 1696), "listRowInsets");
  *(v0 + 1710) = -4864;
  v54 = sub_255E09CC8();
  *(v0 + 1712) = &type metadata for ListRowInsetsModifier;
  *(v0 + 1720) = v54;
  *(v0 + 1728) = 0xD000000000000010;
  *(v0 + 1736) = 0x8000000255E66560;
  v55 = sub_255E09D1C();
  *(v0 + 1744) = &type metadata for ListRowSeparatorModifier;
  *(v0 + 1752) = v55;
  *(v0 + 1760) = 0x6C7974537473696CLL;
  *(v0 + 1768) = 0xE900000000000065;
  v56 = sub_255E09D70();
  *(v0 + 1776) = &type metadata for ListStyleModifier;
  *(v0 + 1784) = v56;
  *(v0 + 1792) = 0xD000000000000011;
  *(v0 + 1800) = 0x8000000255E66580;
  v57 = sub_255E09DC4();
  *(v0 + 1808) = &type metadata for ListRowBackgroundModifier;
  *(v0 + 1816) = v57;
  *(v0 + 1824) = 0x7070617369446E6FLL;
  *(v0 + 1832) = 0xEB00000000726165;
  v58 = sub_255E09E18();
  *(v0 + 1840) = &type metadata for OnDisappearModifier;
  *(v0 + 1848) = v58;
  *(v0 + 1856) = 0xD00000000000001ALL;
  *(v0 + 1864) = 0x8000000255E665A0;
  v59 = sub_255DC8690();
  *(v0 + 1872) = &type metadata for InteractiveDismissDisabledModifier;
  *(v0 + 1880) = v59;
  *(v0 + 1888) = 0x64657070696C63;
  *(v0 + 1896) = 0xE700000000000000;
  v60 = sub_255E09E6C();
  *(v0 + 1904) = &type metadata for ClippedModifier;
  *(v0 + 1912) = v60;
  *(v0 + 1920) = 0xD000000000000011;
  *(v0 + 1928) = 0x8000000255E665C0;
  v61 = sub_255E09EC0();
  *(v0 + 1936) = &type metadata for ButtonBorderShapeModifier;
  *(v0 + 1944) = v61;
  *(v0 + 1952) = 25705;
  *(v0 + 1960) = 0xE200000000000000;
  v62 = sub_255E09F14();
  *(v0 + 1968) = &type metadata for IdentifierModifier;
  *(v0 + 1976) = v62;
  *(v0 + 1984) = 0x65676E6168436E6FLL;
  *(v0 + 1992) = 0xE800000000000000;
  v63 = sub_255E09F68();
  *(v0 + 2000) = &type metadata for OnChangeModifier;
  *(v0 + 2008) = v63;
  *(v0 + 2016) = 0xD000000000000015;
  *(v0 + 2024) = 0x8000000255E665E0;
  v64 = sub_255E09FBC();
  *(v0 + 2032) = &type metadata for NavigationDestinationModifier;
  *(v0 + 2040) = v64;
  strcpy((v0 + 2048), "alignmentGuide");
  *(v0 + 2063) = -18;
  v65 = sub_255E0A010();
  *(v0 + 2064) = &type metadata for AlignmentGuideModifier;
  *(v0 + 2072) = v65;
  *(v0 + 2080) = 1802723693;
  *(v0 + 2088) = 0xE400000000000000;
  v66 = sub_255E0A064();
  *(v0 + 2096) = &type metadata for MaskModifier;
  *(v0 + 2104) = v66;
  *(v0 + 2112) = 0xD000000000000012;
  *(v0 + 2120) = 0x8000000255E66600;
  v67 = sub_255E0A0B8();
  *(v0 + 2128) = &type metadata for ListSectionSpacingModifier;
  *(v0 + 2136) = v67;
  *(v0 + 2144) = 0xD000000000000012;
  *(v0 + 2152) = 0x8000000255E66620;
  v68 = sub_255E0A10C();
  *(v0 + 2160) = &type metadata for AccessibilityValueModifier;
  *(v0 + 2168) = v68;
  *(v0 + 2176) = 0xD000000000000011;
  *(v0 + 2184) = 0x8000000255E66640;
  v69 = sub_255E0A160();
  *(v0 + 2192) = &type metadata for AccessibilityHintModifier;
  *(v0 + 2200) = v69;
  *(v0 + 2208) = 0xD000000000000013;
  *(v0 + 2216) = 0x8000000255E66660;
  v70 = sub_255E0A1B4();
  *(v0 + 2224) = &type metadata for AccessibilityActionModifier;
  *(v0 + 2232) = v70;
  *(v0 + 2240) = 0xD000000000000014;
  *(v0 + 2248) = 0x8000000255E66680;
  v71 = sub_255E0A208();
  *(v0 + 2256) = &type metadata for AccessibilityElementModifier;
  *(v0 + 2264) = v71;
  *(v0 + 2272) = 0xD000000000000015;
  *(v0 + 2280) = 0x8000000255E666A0;
  v72 = sub_255DC8754();
  *(v0 + 2288) = &type metadata for AccessibilityChildrenModifier;
  *(v0 + 2296) = v72;
  *(v0 + 2304) = 0xD000000000000014;
  *(v0 + 2312) = 0x8000000255E666C0;
  v73 = sub_255E0A25C();
  *(v0 + 2320) = &type metadata for AccessibilityHeadingModifier;
  *(v0 + 2328) = v73;
  *(v0 + 2336) = 0xD000000000000014;
  *(v0 + 2344) = 0x8000000255E666E0;
  v74 = type metadata accessor for AccessibilityFocusedModifier(0);
  v75 = sub_255E0AAA0(&qword_27F7E8C20, 255, type metadata accessor for AccessibilityFocusedModifier, byte_255E57CB4);
  *(v0 + 2352) = v74;
  *(v0 + 2360) = v75;
  *(v0 + 2368) = 0xD000000000000016;
  *(v0 + 2376) = 0x8000000255E66700;
  v76 = sub_255E0A2B0();
  *(v0 + 2384) = &type metadata for AccessibilityAddTraitsModifier;
  *(v0 + 2392) = v76;
  *(v0 + 2400) = 0xD000000000000019;
  *(v0 + 2408) = 0x8000000255E66720;
  v77 = sub_255E0A304();
  *(v0 + 2416) = &type metadata for AccessibilityRemoveTraitsModifier;
  *(v0 + 2424) = v77;
  *(v0 + 2432) = 6775156;
  *(v0 + 2440) = 0xE300000000000000;
  v78 = sub_255E0A358();
  *(v0 + 2448) = &type metadata for TagModifier;
  *(v0 + 2456) = v78;
  *(v0 + 2464) = 0x745372656B636970;
  *(v0 + 2472) = 0xEB00000000656C79;
  v79 = sub_255E0A3AC();
  *(v0 + 2480) = &type metadata for PickerStyleModifier;
  *(v0 + 2488) = v79;
  *(v0 + 2496) = 0x65766F4D6E6FLL;
  *(v0 + 2504) = 0xE600000000000000;
  v80 = sub_255E0A400();
  *(v0 + 2512) = &type metadata for OnMoveModifier;
  *(v0 + 2520) = v80;
  *(v0 + 2528) = 0x6574656C65446E6FLL;
  *(v0 + 2536) = 0xE800000000000000;
  v81 = sub_255E0A454();
  *(v0 + 2544) = &type metadata for OnDeleteModifier;
  *(v0 + 2552) = v81;
  *(v0 + 2560) = 0xD000000000000017;
  *(v0 + 2568) = 0x8000000255E66740;
  v82 = sub_255E0A4A8();
  *(v0 + 2576) = &type metadata for ScrollContentBackgroundModifier;
  *(v0 + 2584) = v82;
  *(v0 + 2592) = 0xD000000000000010;
  *(v0 + 2600) = 0x8000000255E66760;
  v83 = sub_255E0A4FC();
  *(v0 + 2608) = &type metadata for AllowsHitTestingModifier;
  *(v0 + 2616) = v83;
  *(v0 + 2624) = 0x636F50636967616DLL;
  *(v0 + 2632) = 0xEB0000000074656BLL;
  v84 = sub_255E0A550();
  *(v0 + 2640) = &type metadata for MagicPocketModifier;
  *(v0 + 2648) = v84;
  *(v0 + 2656) = 0xD000000000000010;
  *(v0 + 2664) = 0x8000000255E66780;
  v85 = sub_255E0A5A4();
  *(v0 + 2672) = &type metadata for MagicPocketStyleModifier;
  *(v0 + 2680) = v85;
  *(v0 + 2688) = 0x6666457373616C67;
  *(v0 + 2696) = 0xEB00000000746365;
  v86 = sub_255DC8AFC();
  *(v0 + 2704) = &type metadata for GlassEffectModifier;
  *(v0 + 2712) = v86;
  v87 = sub_255DC5260(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8C78, &qword_255E59988);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27F7E89C0 = v87;
  return result;
}

uint64_t sub_255E076E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8C80, &qword_255E59990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E59890;
  *(inited + 32) = 0x7373696D736964;
  *(inited + 40) = 0xE700000000000000;
  v1 = type metadata accessor for DismissAction(0);
  v2 = sub_255E0AAA0(&qword_27F7E8C88, 255, type metadata accessor for DismissAction, aT_1);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 7628147;
  *(inited + 72) = 0xE300000000000000;
  v3 = sub_255E0A5F8();
  *(inited + 80) = &type metadata for SetAction;
  *(inited + 88) = v3;
  *(inited + 96) = 0x7571655270747468;
  *(inited + 104) = 0xEB00000000747365;
  v4 = sub_255E0A64C();
  *(inited + 112) = &type metadata for HTTPRequestAction;
  *(inited + 120) = v4;
  *(inited + 128) = 0x4C52556E65706FLL;
  *(inited + 136) = 0xE700000000000000;
  v5 = type metadata accessor for OpenURLAction(0);
  v6 = sub_255E0AAA0(&qword_27F7E8CA0, 255, type metadata accessor for OpenURLAction, byte_255E3E890);
  *(inited + 144) = v5;
  *(inited + 152) = v6;
  *(inited + 160) = 0x64616F6C6572;
  *(inited + 168) = 0xE600000000000000;
  v7 = sub_255E0A6A0();
  *(inited + 176) = &type metadata for ReloadAction;
  *(inited + 184) = v7;
  *(inited + 192) = 26217;
  *(inited + 200) = 0xE200000000000000;
  v8 = sub_255E0A6F4();
  *(inited + 208) = &type metadata for IfAction;
  *(inited + 216) = v8;
  strcpy((inited + 224), "withAnimation");
  *(inited + 238) = -4864;
  v9 = sub_255E0A748();
  *(inited + 240) = &type metadata for AnimationAction;
  *(inited + 248) = v9;
  *(inited + 256) = 0x6F546C6C6F726373;
  *(inited + 264) = 0xE800000000000000;
  v10 = type metadata accessor for ScrollAction();
  v11 = sub_255E0AAA0(&qword_27F7E8CC0, 255, type metadata accessor for ScrollAction, byte_255E4EF60);
  *(inited + 272) = v10;
  *(inited + 280) = v11;
  *(inited + 288) = 0x766F4D7961727261;
  *(inited + 296) = 0xE900000000000065;
  v12 = sub_255E0A79C();
  *(inited + 304) = &type metadata for MoveAction;
  *(inited + 312) = v12;
  *(inited + 320) = 0x6C65447961727261;
  *(inited + 328) = 0xEB00000000657465;
  v13 = sub_255E0A7F0();
  *(inited + 336) = &type metadata for DeleteAction;
  *(inited + 344) = v13;
  *(inited + 352) = 0x656C654474636964;
  *(inited + 360) = 0xEA00000000006574;
  v14 = sub_255E0A844();
  *(inited + 368) = &type metadata for DictDeleteAction;
  *(inited + 376) = v14;
  *(inited + 384) = 0x7070417961727261;
  *(inited + 392) = 0xEB00000000646E65;
  v15 = sub_255E0A898();
  *(inited + 400) = &type metadata for AppendAction;
  *(inited + 408) = v15;
  *(inited + 416) = 0x6D65527961727261;
  *(inited + 424) = 0xEF7473614C65766FLL;
  v16 = sub_255E0A8EC();
  *(inited + 432) = &type metadata for RemoveLastAction;
  *(inited + 440) = v16;
  v17 = sub_255DC5274(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8CF0, &qword_255E59998);
  result = swift_arrayDestroy();
  off_27F7E89C8 = v17;
  return result;
}

uint64_t sub_255E07A54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A38, &qword_255E59970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E3BBC0;
  *(inited + 32) = 0x6C62617A69736572;
  *(inited + 40) = 0xE900000000000065;
  v1 = type metadata accessor for ResizableImageModifier(0);
  v2 = sub_255E0AAA0(&qword_27F7E8A40, 255, type metadata accessor for ResizableImageModifier, asc_255E4E1F0);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_255DC5288(inited);
  swift_setDeallocating();
  result = sub_255E08FE8(inited + 32);
  off_27F7E89D0 = v3;
  return result;
}

id ContentRegistry.init()()
{
  v1 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_contentRegistry;
  v2 = MEMORY[0x277D84F90];
  *&v0[v1] = sub_255DC524C(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_shapeRegistry;
  *&v0[v3] = sub_255DC5238(v2);
  v4 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_modifierRegistry;
  *&v0[v4] = sub_255DC5260(v2);
  v5 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_imageModifierRegistry;
  *&v0[v5] = sub_255DC5288(v2);
  v6 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_actionRegistry;
  *&v0[v6] = sub_255DC5274(v2);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ContentRegistry();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_255E07D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *a5;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v6 + v12);
  *(v6 + v12) = 0x8000000000000000;
  a6(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  *(v6 + v12) = v15;
  return swift_endAccess();
}

uint64_t sub_255E07DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_contentRegistry;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_255D3CA20(a1, a2);
    if (v9)
    {
      v17 = *(*(v7 + 56) + 16 * v8);

      *&v10 = v17;
      return v10;
    }
  }

  if (qword_27F7E5E90 != -1)
  {
    swift_once();
  }

  v11 = off_27F7E89A0;
  if (*(off_27F7E89A0 + 2))
  {
    v12 = sub_255D3CA20(a1, a2);
    if (v13)
    {
      return *(v11[7] + 16 * v12);
    }
  }

  type metadata accessor for ContentRegistryError(0);
  sub_255E0AAA0(&qword_27F7E61A0, 255, type metadata accessor for ContentRegistryError, aQ_9);
  swift_allocError();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968);
  *v16 = a1;
  v16[1] = a2;

  sub_255E3A9A8();

  MEMORY[0x259C4E8F0](a1, a2);
  sub_255E3A9C8();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_255E0800C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_shapeRegistry;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_255D3CA20(a1, a2);
    if (v9)
    {
      v17 = *(*(v7 + 56) + 16 * v8);

      *&v10 = v17;
      return v10;
    }
  }

  if (qword_27F7E5E98 != -1)
  {
    swift_once();
  }

  v11 = off_27F7E89A8;
  if (*(off_27F7E89A8 + 2))
  {
    v12 = sub_255D3CA20(a1, a2);
    if (v13)
    {
      return *(v11[7] + 16 * v12);
    }
  }

  type metadata accessor for ContentRegistryError(0);
  sub_255E0AAA0(&qword_27F7E61A0, 255, type metadata accessor for ContentRegistryError, aQ_9);
  swift_allocError();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968);
  *v16 = a1;
  v16[1] = a2;

  sub_255E3A9A8();

  MEMORY[0x259C4E8F0](a1, a2);
  sub_255E3A9C8();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_255E08224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_modifierRegistry;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_255D3CA20(a1, a2);
    if (v9)
    {
      v17 = *(*(v7 + 56) + 16 * v8);

      *&v10 = v17;
      return v10;
    }
  }

  if (qword_27F7E5EB0 != -1)
  {
    swift_once();
  }

  v11 = off_27F7E89C0;
  if (*(off_27F7E89C0 + 2))
  {
    v12 = sub_255D3CA20(a1, a2);
    if (v13)
    {
      return *(v11[7] + 16 * v12);
    }
  }

  type metadata accessor for ContentRegistryError(0);
  sub_255E0AAA0(&qword_27F7E61A0, 255, type metadata accessor for ContentRegistryError, aQ_9);
  swift_allocError();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968);
  *v16 = a1;
  v16[1] = a2;

  sub_255E3A9A8();

  MEMORY[0x259C4E8F0](a1, a2);
  sub_255E3A9C8();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_255E0843C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_imageModifierRegistry;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_255D3CA20(a1, a2);
    if (v9)
    {
      v17 = *(*(v7 + 56) + 16 * v8);

      *&v10 = v17;
      return v10;
    }
  }

  if (qword_27F7E5EC0 != -1)
  {
    swift_once();
  }

  v11 = off_27F7E89D0;
  if (*(off_27F7E89D0 + 2))
  {
    v12 = sub_255D3CA20(a1, a2);
    if (v13)
    {
      return *(v11[7] + 16 * v12);
    }
  }

  type metadata accessor for ContentRegistryError(0);
  sub_255E0AAA0(&qword_27F7E61A0, 255, type metadata accessor for ContentRegistryError, aQ_9);
  swift_allocError();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968);
  *v16 = a1;
  v16[1] = a2;

  sub_255E3A9A8();

  MEMORY[0x259C4E8F0](a1, a2);
  sub_255E3A9C8();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_255E08654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_actionRegistry;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_255D3CA20(a1, a2);
    if (v9)
    {
      v17 = *(*(v7 + 56) + 16 * v8);

      *&v10 = v17;
      return v10;
    }
  }

  if (qword_27F7E5EB8 != -1)
  {
    swift_once();
  }

  v11 = off_27F7E89C8;
  if (*(off_27F7E89C8 + 2))
  {
    v12 = sub_255D3CA20(a1, a2);
    if (v13)
    {
      return *(v11[7] + 16 * v12);
    }
  }

  type metadata accessor for ContentRegistryError(0);
  sub_255E0AAA0(&qword_27F7E61A0, 255, type metadata accessor for ContentRegistryError, aQ_9);
  swift_allocError();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968);
  *v16 = a1;
  v16[1] = a2;

  sub_255E3A9A8();

  MEMORY[0x259C4E8F0](a1, a2);
  sub_255E3A9C8();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

id ContentRegistry.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ContentRegistry();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_255E0891C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContentRegistryError(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255E3A9F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255E08F84(v2, v6);
  if (swift_getEnumCaseMultiPayload() > 6)
  {
    v13 = 1;
  }

  else
  {

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968);
    v12 = *(v8 + 32);
    v12(v10, &v6[*(v11 + 48)], v7);
    v12(a1, v10, v7);
    v13 = 0;
  }

  return (*(v8 + 56))(a1, v13, 1, v7);
}

uint64_t sub_255E08AC4()
{
  sub_255D3971C();
  sub_255E38D58();
  return v1;
}

uint64_t _s7SwiftUI4ViewP04LiftB0E15contentRegistryyQrAD07ContentF0CF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_255E398D8();
}

id sub_255E08B74(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for ContentRegistry()) init];
  qword_27F7E89D8 = result;
  return result;
}

id sub_255E08BA4@<X0>(void *a1@<X8>)
{
  if (qword_27F7E5EC8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27F7E89D8;
  *a1 = qword_27F7E89D8;

  return v2;
}

uint64_t sub_255E08C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_255E0AAA0(&qword_27F7E8D48, a2, type metadata accessor for ContentRegistry, MEMORY[0x277D85380]);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_255E08E00()
{
  result = qword_27F7E8A10;
  if (!qword_27F7E8A10)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8A08, &unk_255E598F0);
    result = swift_getWitnessTable(MEMORY[0x277CE0868], v3, v0, v1);
    atomic_store(result, &qword_27F7E8A10);
  }

  return result;
}

uint64_t type metadata accessor for ContentRegistryError(uint64_t a1)
{
  result = qword_27F7E8A18;
  if (!qword_27F7E8A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255E08EB0(uint64_t a1)
{
  sub_255E08F1C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_255E08F1C(uint64_t a1)
{
  if (!qword_27F7E8A28)
  {
    sub_255E3A9F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F7E8A28);
    }
  }
}

uint64_t sub_255E08F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentRegistryError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255E08FE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A48, &qword_255E59978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255E09050()
{
  result = qword_27F7E8A58;
  if (!qword_27F7E8A58)
  {
    result = swift_getWitnessTable(byte_255E56FE8, &type metadata for PaddingModifier, v0, v1);
    atomic_store(result, &qword_27F7E8A58);
  }

  return result;
}

unint64_t sub_255E090A4()
{
  result = qword_27F7E8A60;
  if (!qword_27F7E8A60)
  {
    result = swift_getWitnessTable(byte_255E5E878, &type metadata for BorderModifier, v0, v1);
    atomic_store(result, &qword_27F7E8A60);
  }

  return result;
}

unint64_t sub_255E090F8()
{
  result = qword_27F7E8A68;
  if (!qword_27F7E8A68)
  {
    result = swift_getWitnessTable(byte_255E5E85C, &type metadata for RoundedBorderModifier, v0, v1);
    atomic_store(result, &qword_27F7E8A68);
  }

  return result;
}

unint64_t sub_255E0914C()
{
  result = qword_27F7E8A70;
  if (!qword_27F7E8A70)
  {
    result = swift_getWitnessTable(a1_4, &type metadata for BackgroundColorModifier, v0, v1);
    atomic_store(result, &qword_27F7E8A70);
  }

  return result;
}

unint64_t sub_255E091A0()
{
  result = qword_27F7E8A78;
  if (!qword_27F7E8A78)
  {
    result = swift_getWitnessTable(aM_13, &type metadata for ForegroundColorModifier, v0, v1);
    atomic_store(result, &qword_27F7E8A78);
  }

  return result;
}

unint64_t sub_255E091F4()
{
  result = qword_27F7E8A80;
  if (!qword_27F7E8A80)
  {
    result = swift_getWitnessTable(aI_7, &type metadata for ForegroundStyleModifier, v0, v1);
    atomic_store(result, &qword_27F7E8A80);
  }

  return result;
}

unint64_t sub_255E09248()
{
  result = qword_27F7E8A88;
  if (!qword_27F7E8A88)
  {
    result = swift_getWitnessTable(byte_255E5E7EC, &type metadata for AccentColorModifier, v0, v1);
    atomic_store(result, &qword_27F7E8A88);
  }

  return result;
}

unint64_t sub_255E0929C()
{
  result = qword_27F7E8A90;
  if (!qword_27F7E8A90)
  {
    result = swift_getWitnessTable(byte_255E5E7D0, &type metadata for TintColorModifier, v0, v1);
    atomic_store(result, &qword_27F7E8A90);
  }

  return result;
}

unint64_t sub_255E092F0()
{
  result = qword_27F7E8A98;
  if (!qword_27F7E8A98)
  {
    result = swift_getWitnessTable(aU_11, &type metadata for FrameModifier, v0, v1);
    atomic_store(result, &qword_27F7E8A98);
  }

  return result;
}

unint64_t sub_255E09344()
{
  result = qword_27F7E8AA0;
  if (!qword_27F7E8AA0)
  {
    result = swift_getWitnessTable(byte_255E48D8C, &type metadata for LineLimitModifier, v0, v1);
    atomic_store(result, &qword_27F7E8AA0);
  }

  return result;
}

unint64_t sub_255E09398()
{
  result = qword_27F7E8AA8;
  if (!qword_27F7E8AA8)
  {
    result = swift_getWitnessTable(aEd_0, &type metadata for MultiLineTextAlignmentModifier, v0, v1);
    atomic_store(result, &qword_27F7E8AA8);
  }

  return result;
}

unint64_t sub_255E093EC()
{
  result = qword_27F7E8AB0;
  if (!qword_27F7E8AB0)
  {
    result = swift_getWitnessTable(a1_5, &type metadata for CornerRadiusModifier, v0, v1);
    atomic_store(result, &qword_27F7E8AB0);
  }

  return result;
}

unint64_t sub_255E09440()
{
  result = qword_27F7E8AC0;
  if (!qword_27F7E8AC0)
  {
    result = swift_getWitnessTable(byte_255E3CDDC, &type metadata for ButtonStyleModifier, v0, v1);
    atomic_store(result, &qword_27F7E8AC0);
  }

  return result;
}

unint64_t sub_255E09494()
{
  result = qword_27F7E8AC8;
  if (!qword_27F7E8AC8)
  {
    result = swift_getWitnessTable(byte_255E595F0, &type metadata for LayoutPriorityModifier, v0, v1);
    atomic_store(result, &qword_27F7E8AC8);
  }

  return result;
}

unint64_t sub_255E094E8()
{
  result = qword_27F7E8AD0;
  if (!qword_27F7E8AD0)
  {
    result = swift_getWitnessTable(byte_255E468DC, &type metadata for FontModifier, v0, v1);
    atomic_store(result, &qword_27F7E8AD0);
  }

  return result;
}

unint64_t sub_255E0953C()
{
  result = qword_27F7E8AD8;
  if (!qword_27F7E8AD8)
  {
    result = swift_getWitnessTable(byte_255E621E0, &type metadata for AlertModifier, v0, v1);
    atomic_store(result, &qword_27F7E8AD8);
  }

  return result;
}

unint64_t sub_255E09590()
{
  result = qword_27F7E8AE0;
  if (!qword_27F7E8AE0)
  {
    result = swift_getWitnessTable(aMm, &type metadata for ConfirmationDialogModifier, v0, v1);
    atomic_store(result, &qword_27F7E8AE0);
  }

  return result;
}

unint64_t sub_255E095E4()
{
  result = qword_27F7E8AE8;
  if (!qword_27F7E8AE8)
  {
    result = swift_getWitnessTable(asc_255E549F4, &type metadata for IfModifier, v0, v1);
    atomic_store(result, &qword_27F7E8AE8);
  }

  return result;
}

unint64_t sub_255E09638()
{
  result = qword_27F7E8AF0;
  if (!qword_27F7E8AF0)
  {
    result = swift_getWitnessTable(aY_11, &type metadata for ShadowModifier, v0, v1);
    atomic_store(result, &qword_27F7E8AF0);
  }

  return result;
}

unint64_t sub_255E0968C()
{
  result = qword_27F7E8AF8;
  if (!qword_27F7E8AF8)
  {
    result = swift_getWitnessTable(byte_255E546B0, &type metadata for NavigationTitleModifier, v0, v1);
    atomic_store(result, &qword_27F7E8AF8);
  }

  return result;
}

unint64_t sub_255E096E0()
{
  result = qword_27F7E8B00;
  if (!qword_27F7E8B00)
  {
    result = swift_getWitnessTable(byte_255E3D354, &type metadata for NavigationBarTitleDisplayModeModifier, v0, v1);
    atomic_store(result, &qword_27F7E8B00);
  }

  return result;
}

unint64_t sub_255E09734()
{
  result = qword_27F7E8B08;
  if (!qword_27F7E8B08)
  {
    result = swift_getWitnessTable(aU_12, &type metadata for FixedSizeModifier, v0, v1);
    atomic_store(result, &qword_27F7E8B08);
  }

  return result;
}

unint64_t sub_255E09788()
{
  result = qword_27F7E8B10;
  if (!qword_27F7E8B10)
  {
    result = swift_getWitnessTable(byte_255E60380, &type metadata for ClipShapeModifier, v0, v1);
    atomic_store(result, &qword_27F7E8B10);
  }

  return result;
}

unint64_t sub_255E097DC()
{
  result = qword_27F7E8B18;
  if (!qword_27F7E8B18)
  {
    result = swift_getWitnessTable(aY_12, &type metadata for SheetModifier, v0, v1);
    atomic_store(result, &qword_27F7E8B18);
  }

  return result;
}

unint64_t sub_255E09830()
{
  result = qword_27F7E8B20;
  if (!qword_27F7E8B20)
  {
    result = swift_getWitnessTable(byte_255E5A558, &type metadata for OnAppearModifier, v0, v1);
    atomic_store(result, &qword_27F7E8B20);
  }

  return result;
}

unint64_t sub_255E09884()
{
  result = qword_27F7E8B28;
  if (!qword_27F7E8B28)
  {
    result = swift_getWitnessTable(asc_255E5289C, &type metadata for BackgroundModifier, v0, v1);
    atomic_store(result, &qword_27F7E8B28);
  }

  return result;
}

unint64_t sub_255E098D8()
{
  result = qword_27F7E8B30;
  if (!qword_27F7E8B30)
  {
    result = swift_getWitnessTable(byte_255E623E0, &type metadata for OverlayModifier, v0, v1);
    atomic_store(result, &qword_27F7E8B30);
  }

  return result;
}

unint64_t sub_255E0992C()
{
  result = qword_27F7E8B38;
  if (!qword_27F7E8B38)
  {
    result = swift_getWitnessTable(byte_255E5D6CC, &type metadata for AnimationModifier, v0, v1);
    atomic_store(result, &qword_27F7E8B38);
  }

  return result;
}