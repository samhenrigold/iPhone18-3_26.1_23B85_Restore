uint64_t sub_23B5C1F34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E676E6972696170 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E726F646E6576 && a2 == 0xEA0000000000656DLL || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_23B5D8C88();

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

unint64_t *sub_23B5C2060(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __int128 *))
{
  v36 = a4;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v6 = a3 + 64;
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
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = *(a3 + 56) + 72 * v14;
    v32[0] = *v16;
    v18 = *(v16 + 32);
    v17 = *(v16 + 48);
    v19 = *(v16 + 16);
    v33 = *(v16 + 64);
    v32[2] = v18;
    v32[3] = v17;
    v32[1] = v19;
    v20 = *(v16 + 48);
    v29 = *(v16 + 32);
    v30 = v20;
    v31 = *(v16 + 64);
    v21 = *(v16 + 16);
    v27 = *v16;
    v28 = v21;
    sub_23B5AF43C(v32, v26);
    LOBYTE(v15) = v36(v15, &v27);
    v34[2] = v29;
    v34[3] = v30;
    v35 = v31;
    v34[0] = v27;
    v34[1] = v28;
    result = sub_23B5AFD30(v34);
    if (v15)
    {
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_23B5C1298(v24, a2, v25, a3);
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
      return sub_23B5C1298(v24, a2, v25, a3);
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

unint64_t *sub_23B5C221C(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *))
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
    result = sub_23B5C2060(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_23B5C1208(v10, v6, v4, a2);
  result = MEMORY[0x23EEA0310](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_23B5C239C(uint64_t a1)
{
  v4 = *(sub_23B5D8468() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23B5C37E4;

  return sub_23B5BFC48(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = sub_23B5D8468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_23B5C2550()
{
  result = qword_27E15CE10;
  if (!qword_27E15CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE10);
  }

  return result;
}

unint64_t sub_23B5C25A4()
{
  result = qword_27E15CE18;
  if (!qword_27E15CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE18);
  }

  return result;
}

void sub_23B5C25F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

unint64_t sub_23B5C2648()
{
  result = qword_27E15CE28;
  if (!qword_27E15CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE28);
  }

  return result;
}

unint64_t sub_23B5C26A0()
{
  result = qword_27E15CE30;
  if (!qword_27E15CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE30);
  }

  return result;
}

unint64_t sub_23B5C2704()
{
  result = qword_27E15CE38;
  if (!qword_27E15CE38)
  {
    type metadata accessor for WAPairedDevice.DevicesSequence.AsyncIterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE38);
  }

  return result;
}

unint64_t sub_23B5C276C()
{
  result = qword_27E15CE40;
  if (!qword_27E15CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE40);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23B5C27E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23B5C2840(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23B5C28C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23B5C2910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23B5C2994(uint64_t a1)
{
  sub_23B5C2A00(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B5C2A00(uint64_t a1)
{
  if (!qword_27E15CE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15C428, &qword_23B5DDF80);
    v1 = sub_23B5D8938();
    if (!v2)
    {
      atomic_store(v1, &qword_27E15CE58);
    }
  }
}

void sub_23B5C2A6C(uint64_t a1)
{
  sub_23B5C2D94(319);
  if (v1 <= 0x3F)
  {
    sub_23B5C2A00(319);
    if (v2 <= 0x3F)
    {
      sub_23B5D8468();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of WAPairedDevice.DevicesSequence.AsyncIterator.next()()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23B5C2C98;

  return v4();
}

uint64_t sub_23B5C2C98(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_23B5C2D94(uint64_t a1)
{
  if (!qword_27E15CE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15CE78, &qword_23B5DD490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E15CF00, &qword_23B5DD498);
    v1 = sub_23B5D88B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27E15CE70);
    }
  }
}

uint64_t sub_23B5C2E2C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23B5C2EBC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B5C2F80()
{
  result = qword_27E15CE80;
  if (!qword_27E15CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE80);
  }

  return result;
}

unint64_t sub_23B5C2FD8()
{
  result = qword_27E15CE88;
  if (!qword_27E15CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE88);
  }

  return result;
}

unint64_t sub_23B5C3030()
{
  result = qword_27E15CE90;
  if (!qword_27E15CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE90);
  }

  return result;
}

unint64_t sub_23B5C3088()
{
  result = qword_27E15CE98;
  if (!qword_27E15CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CE98);
  }

  return result;
}

unint64_t sub_23B5C30E0()
{
  result = qword_27E15CEA0;
  if (!qword_27E15CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CEA0);
  }

  return result;
}

unint64_t sub_23B5C3138()
{
  result = qword_27E15CEA8;
  if (!qword_27E15CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CEA8);
  }

  return result;
}

uint64_t sub_23B5C318C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49676E6972696170 && a2 == 0xEB000000006F666ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_23B5D8C88();

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

uint64_t sub_23B5C32A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B5C3308(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B5C3368(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B5C37E4;

  return sub_23B5C1768(a1, v4);
}

uint64_t sub_23B5C3420(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B5C34D8;

  return sub_23B5C1768(a1, v4);
}

uint64_t sub_23B5C34D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B5C35CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B5C37E4;

  return sub_23B5C1018(a1, v4);
}

uint64_t sub_23B5C3684(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23B5D8468() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23B5C34D8;

  return sub_23B5BF010(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_23B5C37F0()
{
  type metadata accessor for WiFiAwarePairedDevicePrivate();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[14] = [objc_allocWithZone(MEMORY[0x277D7BAA0]) init];
  v0[15] = 0;
  result = sub_23B5C8D84(MEMORY[0x277D84F90]);
  v0[16] = result;
  qword_27E15D4A8 = v0;
  return result;
}

uint64_t sub_23B5C3858(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF30, &qword_23B5DD840);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_23B5D8468();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(v2[16] + 16))
  {
    v12 = type metadata accessor for PairedDevicesDelegate();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC9WiFiAwareP33_4E33C3FECA76895B2C3A387BEA68C22E21PairedDevicesDelegate_privateSelf] = v2;
    swift_unownedRetain();
    v20.receiver = v13;
    v20.super_class = v12;
    v14 = objc_msgSendSuper2(&v20, sel_init);
    v2[15] = v14;
    v15 = v14;
    swift_unknownObjectRelease();
    v16 = v2[14];
    [v16 setDelegate_];

    [v16 activate];
  }

  (*(v9 + 16))(v11, a2, v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a1, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  swift_beginAccess();
  sub_23B5C3AD0(v7, v11);
  return swift_endAccess();
}

uint64_t sub_23B5C3AD0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF30, &qword_23B5DD840);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_23B5C9270(a1);
    sub_23B5C7BC0(a2, v7);
    v12 = sub_23B5D8468();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_23B5C9270(v7);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_23B5C80B4(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_23B5D8468();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_23B5C3CE4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF30, &qword_23B5DD840);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  swift_beginAccess();
  sub_23B5C7BC0(a1, v6);
  sub_23B5C9270(v6);
  result = swift_endAccess();
  if (!*(*(v1 + 128) + 16))
  {
    v8 = *(v1 + 112);
    [*(v2 + 112) deactivate];
    [v8 setDelegate_];
    *(v2 + 120) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23B5C3DD8()
{
  v1[46] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF0, &qword_23B5DD808);
  v1[47] = v2;
  v1[48] = *(v2 - 8);
  v1[49] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF20, &unk_23B5DD830);
  v1[50] = v3;
  v1[51] = *(v3 - 8);
  v1[52] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v1[53] = v4;
  v1[54] = *(v4 - 8);
  v1[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B5C3F74, v0, 0);
}

uint64_t sub_23B5C3F74()
{
  v1 = *(v0 + 368);
  swift_beginAccess();
  v2 = *(v1 + 128);
  *(v0 + 448) = v2;
  v3 = *(v2 + 32);
  *(v0 + 480) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v7 = *(v0 + 448);
LABEL_10:
      *(v0 + 456) = v6;
      *(v0 + 464) = v8;
      (*(*(v0 + 432) + 16))(*(v0 + 440), *(v7 + 56) + *(*(v0 + 432) + 72) * (__clz(__rbit64(v6)) | (v8 << 6)), *(v0 + 424));
      v10 = [objc_opt_self() mainBundle];
      v11 = [v10 bundleIdentifier];

      if (v11)
      {
        break;
      }

      v13 = *(v0 + 432);
      v12 = *(v0 + 440);
      v15 = *(v0 + 416);
      v14 = *(v0 + 424);
      v16 = *(v0 + 400);
      v17 = *(v0 + 408);
      *(v0 + 328) = MEMORY[0x277D84F98];
      sub_23B5D8888();
      (*(v13 + 8))(v12, v14);
      v7 = (*(v17 + 8))(v15, v16);
      v8 = *(v0 + 464);
      v6 = (*(v0 + 456) - 1) & *(v0 + 456);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v21 = *(v0 + 384);
    v20 = *(v0 + 392);
    v23 = *(v0 + 368);
    v22 = *(v0 + 376);

    v24 = *(v23 + 112);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 336;
    *(v0 + 24) = sub_23B5C432C;
    swift_continuation_init();
    *(v0 + 208) = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 184));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF8, &unk_23B5DD810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF00, &qword_23B5DD498);
    sub_23B5D8828();
    (*(v21 + 32))(boxed_opaque_existential_0, v20, v22);
    *(v0 + 152) = MEMORY[0x277D85DD0];
    *(v0 + 160) = 1107296256;
    *(v0 + 168) = sub_23B5C57CC;
    *(v0 + 176) = &block_descriptor_30;
    [v24 queryPairedDevicesInfo_];
    (*(v21 + 8))(boxed_opaque_existential_0, v22);
    v7 = v0 + 16;

    return MEMORY[0x282200938](v7);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return MEMORY[0x282200938](v7);
      }

      v7 = *(v0 + 448);
      if (v9 >= (((1 << *(v0 + 480)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v7 + 8 * v9 + 64);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_23B5C432C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 472) = v2;
  v3 = *(v1 + 368);
  if (v2)
  {
    v4 = sub_23B5C4B30;
  }

  else
  {
    v4 = sub_23B5C444C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23B5C444C()
{
  v1 = v0[42];
  if (v1 >> 62)
  {
LABEL_32:
    v36 = v1;
    v2 = sub_23B5D8AF8();
    v1 = v36;
    v69 = v0;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v58 = v1 & 0xFFFFFFFFFFFFFF8;
      v59 = v1 & 0xC000000000000001;
      v4 = MEMORY[0x277D84F98];
      v56 = v2;
      v57 = v1;
      while (1)
      {
        if (v59)
        {
          v1 = MEMORY[0x23EE9FA30](v3, v1);
        }

        else
        {
          if (v3 >= *(v58 + 16))
          {
            goto LABEL_29;
          }

          v1 = *(v1 + 8 * v3 + 32);
        }

        v9 = v1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v60 = v3 + 1;
        v10 = [v1 deviceID];
        v64 = [v9 deviceID];
        v11 = [v9 name];
        if (v11)
        {
          v12 = v11;
          v13 = sub_23B5D86B8();
          v65 = v14;
          v67 = v13;
        }

        else
        {
          v65 = 0;
          v67 = 0;
        }

        v15 = [v9 pairingName];
        v62 = sub_23B5D86B8();
        v63 = v16;

        v17 = [v9 vendorName];
        v18 = sub_23B5D86B8();
        v61 = v19;

        v20 = [v9 modelName];
        v21 = sub_23B5D86B8();
        v23 = v22;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v0[45] = v4;
        v25 = v10;
        v27 = sub_23B5C7A98(v10);
        v28 = v4[2];
        v29 = (v26 & 1) == 0;
        v1 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_30;
        }

        v0 = v26;
        if (v4[3] >= v1)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v26)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v1 = sub_23B5C8A64();
            if (v0)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_23B5C6E90(v1, isUniquelyReferenced_nonNull_native);
          v1 = sub_23B5C7A98(v25);
          if ((v0 & 1) != (v30 & 1))
          {

            return sub_23B5D8CA8();
          }

          v27 = v1;
          if (v0)
          {
LABEL_4:
            v0 = v69;
            v4 = v69[45];
            v5 = v4[7] + 72 * v27;
            *(v69 + 5) = *v5;
            v7 = *(v5 + 32);
            v6 = *(v5 + 48);
            v8 = *(v5 + 16);
            v69[18] = *(v5 + 64);
            *(v69 + 7) = v7;
            *(v69 + 8) = v6;
            *(v69 + 6) = v8;
            *v5 = v64;
            *(v5 + 8) = v67;
            *(v5 + 16) = v65;
            *(v5 + 24) = v62;
            *(v5 + 32) = v63;
            *(v5 + 40) = v18;
            *(v5 + 48) = v61;
            *(v5 + 56) = v21;
            *(v5 + 64) = v23;
            sub_23B5AFD30((v69 + 10));

            goto LABEL_5;
          }
        }

        v4 = v69[45];
        v4[(v27 >> 6) + 8] |= 1 << v27;
        *(v4[6] + 8 * v27) = v25;
        v31 = (v4[7] + 72 * v27);
        *v31 = v64;
        v31[1] = v67;
        v31[2] = v65;
        v31[3] = v62;
        v31[4] = v63;
        v31[5] = v18;
        v31[6] = v61;
        v31[7] = v21;
        v31[8] = v23;
        v32 = v4[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_31;
        }

        v4[2] = v34;

        v0 = v69;
LABEL_5:
        ++v3;
        v1 = v57;
        if (v60 == v56)
        {
          goto LABEL_34;
        }
      }
    }
  }

  v4 = MEMORY[0x277D84F98];
LABEL_34:
  v68 = v0 + 42;

  v37 = MEMORY[0x277D84F98];
  while (1)
  {
    v38 = v0[54];
    v39 = v0[55];
    v40 = v0[53];
    v41 = v69[52];
    v42 = v69[51];
    v43 = v69[50];
    v69[41] = v4;
    sub_23B5D8888();
    (*(v38 + 8))(v39, v40);
    v0 = v69;
    v44 = (*(v42 + 8))(v41, v43);
    v45 = v69[58];
    v46 = (v0[57] - 1) & v0[57];
    if (!v46)
    {
      break;
    }

    v44 = v69[56];
LABEL_41:
    v69[57] = v46;
    v69[58] = v45;
    (*(v69[54] + 16))(v69[55], *(v44 + 56) + *(v69[54] + 72) * (__clz(__rbit64(v46)) | (v45 << 6)), v69[53]);
    v48 = [objc_opt_self() mainBundle];
    v49 = [v48 bundleIdentifier];

    v4 = v37;
    if (v49)
    {
      v51 = v69[48];
      v50 = v69[49];
      v53 = v69[46];
      v52 = v69[47];

      v66 = *(v53 + 112);
      v69[2] = v69;
      v69[7] = v68;
      v69[3] = sub_23B5C432C;
      swift_continuation_init();
      v69[26] = v52;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v69 + 23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF8, &unk_23B5DD810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF00, &qword_23B5DD498);
      sub_23B5D8828();
      (*(v51 + 32))(boxed_opaque_existential_0, v50, v52);
      v69[19] = MEMORY[0x277D85DD0];
      v69[20] = 1107296256;
      v69[21] = sub_23B5C57CC;
      v69[22] = &block_descriptor_30;
      [v66 queryPairedDevicesInfo_];
      (*(v51 + 8))(boxed_opaque_existential_0, v52);
      v44 = (v69 + 2);

      return MEMORY[0x282200938](v44);
    }
  }

  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      return MEMORY[0x282200938](v44);
    }

    v44 = v69[56];
    if (v47 >= (((1 << *(v69 + 480)) + 63) >> 6))
    {
      break;
    }

    v46 = *(v44 + 8 * v47 + 64);
    ++v45;
    if (v46)
    {
      v45 = v47;
      goto LABEL_41;
    }
  }

  v55 = v69[1];

  return v55();
}

uint64_t sub_23B5C4B30(uint64_t a1)
{
  swift_willThrow();
  if (qword_27E15C2E8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v2 = sub_23B5D84B8();
  __swift_project_value_buffer(v2, qword_27E15D420);
  *(v1 + 280) = 0;
  *(v1 + 288) = 0xE000000000000000;
  sub_23B5D8A08();
  v3 = *(v1 + 288);
  *(v1 + 264) = *(v1 + 280);
  *(v1 + 272) = v3;
  MEMORY[0x23EE9F750](0xD00000000000001ELL, 0x800000023B5DF400);
  swift_getErrorValue();
  sub_23B5D8C68();
  v5 = *(v1 + 264);
  v4 = *(v1 + 272);

  v6 = sub_23B5D8498();
  v7 = sub_23B5D88F8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *(v1 + 352) = v9;
    *v8 = 136315138;
    *(v1 + 312) = 0;
    *(v1 + 320) = 0xE000000000000000;
    sub_23B5D8A08();

    *(v1 + 296) = 0x7261774169466957;
    *(v1 + 304) = 0xEB00000000203A65;
    MEMORY[0x23EE9F750](v5, v4);
    MEMORY[0x23EE9F750](32, 0xE100000000000000);
    if (qword_27E15C310 != -1)
    {
      swift_once();
    }

    v10 = *(v1 + 472);
    MEMORY[0x23EE9F750](qword_27E15D498, unk_27E15D4A0);
    v11 = sub_23B5AC96C(*(v1 + 296), *(v1 + 304), (v1 + 352));

    *(v8 + 4) = v11;
    _os_log_impl(&dword_23B5AA000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEA0310](v9, -1, -1);
    MEMORY[0x23EEA0310](v8, -1, -1);

    v12 = v10;
  }

  else
  {
    v13 = *(v1 + 472);

    v12 = v13;
  }

  v14 = MEMORY[0x277D84F98];
  while (1)
  {
    v16 = *(v1 + 432);
    v15 = *(v1 + 440);
    v18 = *(v1 + 416);
    v17 = *(v1 + 424);
    v19 = *(v1 + 400);
    v20 = *(v1 + 408);
    *(v1 + 328) = v14;
    sub_23B5D8888();
    (*(v16 + 8))(v15, v17);
    (*(v20 + 8))(v18, v19);
    v21 = *(v1 + 464);
    v22 = (*(v1 + 456) - 1) & *(v1 + 456);
    if (!v22)
    {
      break;
    }

    v23 = *(v1 + 448);
LABEL_14:
    *(v1 + 456) = v22;
    *(v1 + 464) = v21;
    (*(*(v1 + 432) + 16))(*(v1 + 440), *(v23 + 56) + *(*(v1 + 432) + 72) * (__clz(__rbit64(v22)) | (v21 << 6)), *(v1 + 424));
    v25 = [objc_opt_self() mainBundle];
    v26 = [v25 bundleIdentifier];

    if (v26)
    {
      v28 = *(v1 + 384);
      v27 = *(v1 + 392);
      v30 = *(v1 + 368);
      v29 = *(v1 + 376);

      v34 = *(v30 + 112);
      *(v1 + 16) = v1;
      *(v1 + 56) = v1 + 336;
      *(v1 + 24) = sub_23B5C432C;
      swift_continuation_init();
      *(v1 + 208) = v29;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 184));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF8, &unk_23B5DD810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF00, &qword_23B5DD498);
      sub_23B5D8828();
      (*(v28 + 32))(boxed_opaque_existential_0, v27, v29);
      *(v1 + 152) = MEMORY[0x277D85DD0];
      *(v1 + 160) = 1107296256;
      *(v1 + 168) = sub_23B5C57CC;
      *(v1 + 176) = &block_descriptor_30;
      [v34 queryPairedDevicesInfo_];
      (*(v28 + 8))(boxed_opaque_existential_0, v29);

      return MEMORY[0x282200938](v1 + 16);
    }
  }

  while (1)
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    v23 = *(v1 + 448);
    if (v24 >= (((1 << *(v1 + 480)) + 63) >> 6))
    {
      break;
    }

    v22 = *(v23 + 8 * v24 + 64);
    ++v21;
    if (v22)
    {
      v21 = v24;
      goto LABEL_14;
    }
  }

  v32 = *(v1 + 8);

  return v32();
}

uint64_t sub_23B5C50E4()
{
  [*(v0 + 112) deactivate];
  [*(v0 + 112) setDelegate_];
  *(v0 + 120) = 0;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23B5C514C()
{
  sub_23B5C50E4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23B5C519C()
{
  v1[24] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF0, &qword_23B5DD808);
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B5C5268, v0, 0);
}

uint64_t sub_23B5C5268()
{
  v0[21] = sub_23B5C8FB0(MEMORY[0x277D84F90]);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v4 = v0[26];
    v3 = v0[27];
    v6 = v0[24];
    v5 = v0[25];

    v11 = *(v6 + 112);
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_23B5C54DC;
    swift_continuation_init();
    v0[17] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF8, &unk_23B5DD810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CF00, &qword_23B5DD498);
    sub_23B5D8828();
    (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23B5C57CC;
    v0[13] = &block_descriptor;
    [v11 queryPairedDevicesInfo_];
    (*(v4 + 8))(boxed_opaque_existential_0, v5);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v8 = v0[21];

    v9 = v0[1];

    return v9(v8);
  }
}

uint64_t sub_23B5C54DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 192);
  if (v2)
  {
    v4 = sub_23B5C5688;
  }

  else
  {
    v4 = sub_23B5C55FC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23B5C55FC()
{
  sub_23B5C5884(v0[22], v0 + 21);

  v1 = v0[21];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_23B5C5688(uint64_t a1)
{
  swift_willThrow();
  if (qword_27E15C2E8 != -1)
  {
    swift_once();
  }

  v2 = v1[28];
  v3 = sub_23B5D84B8();
  __swift_project_value_buffer(v3, qword_27E15D420);
  sub_23B5D8A08();
  MEMORY[0x23EE9F750](0xD00000000000001ELL, 0x800000023B5DF400);
  swift_getErrorValue();
  sub_23B5D8C68();
  sub_23B5AC778(0, 0xE000000000000000);

  v4 = v1[21];

  v5 = v1[1];

  return v5(v4);
}

void sub_23B5C57CC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF0, &qword_23B5DD808);
    sub_23B5D8838();
  }

  else
  {
    sub_23B5C9224();
    sub_23B5D8808();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEF0, &qword_23B5DD808);
    sub_23B5D8848();
  }
}

unint64_t sub_23B5C5884(unint64_t result, uint64_t *a2)
{
  if (result >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v22)
  {
    v3 = 0;
    v25 = result & 0xFFFFFFFFFFFFFF8;
    v26 = result & 0xC000000000000001;
    v23 = i;
    v24 = result;
    while (1)
    {
      if (v26)
      {
        result = MEMORY[0x23EE9FA30](v3, result);
      }

      else
      {
        if (v3 >= *(v25 + 16))
        {
          goto LABEL_14;
        }

        result = *(result + 8 * v3 + 32);
      }

      v17 = result;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v32 = v3 + 1;
      v31 = [result deviceID];
      v30 = [v17 deviceID];
      v18 = [v17 name];
      if (v18)
      {
        v19 = v18;
        v20 = sub_23B5D86B8();
        v28 = v21;
        v29 = v20;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      v4 = [v17 pairingName];
      v5 = sub_23B5D86B8();
      v7 = v6;

      v8 = [v17 vendorName];
      v9 = sub_23B5D86B8();
      v11 = v10;

      v12 = [v17 modelName];
      v13 = sub_23B5D86B8();
      v15 = v14;

      v33[0] = v30;
      v33[1] = v29;
      v33[2] = v28;
      v33[3] = v5;
      v33[4] = v7;
      v33[5] = v9;
      v33[6] = v11;
      v33[7] = v13;
      v33[8] = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *a2;
      *a2 = 0x8000000000000000;
      sub_23B5C82C4(v33, v31, isUniquelyReferenced_nonNull_native);
      *a2 = v34;

      ++v3;
      result = v24;
      if (v32 == v23)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v22 = result;
    i = sub_23B5D8AF8();
  }

  return result;
}

uint64_t sub_23B5C5AC0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  if (qword_27E15C2E8 != -1)
  {
    swift_once();
  }

  v5 = sub_23B5D84B8();
  __swift_project_value_buffer(v5, qword_27E15D420);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_23B5D8A08();

  v14 = 0xD000000000000015;
  v15 = 0x800000023B5DF360;
  v6 = [a1 description];
  v7 = sub_23B5D86B8();
  v9 = v8;

  MEMORY[0x23EE9F750](v7, v9);

  sub_23B5AC760(v14, v15);

  v10 = sub_23B5D8868();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unownedRetainStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  sub_23B5BF6D4(0, 0, v4, &unk_23B5DD800, v12);
}

uint64_t sub_23B5C5CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_23B5C5D0C, 0, 0);
}

uint64_t sub_23B5C5D0C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_23B5C5E00;

    return sub_23B5C3DD8();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_23B5C5E00()
{

  return MEMORY[0x2822009F8](sub_23B5C5F18, 0, 0);
}

uint64_t sub_23B5C5FA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  if (qword_27E15C2E8 != -1)
  {
    swift_once();
  }

  v5 = sub_23B5D84B8();
  __swift_project_value_buffer(v5, qword_27E15D420);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_23B5D8A08();

  v14 = 0xD000000000000017;
  v15 = 0x800000023B5DF340;
  v6 = [a1 description];
  v7 = sub_23B5D86B8();
  v9 = v8;

  MEMORY[0x23EE9F750](v7, v9);

  sub_23B5AC760(v14, v15);

  v10 = sub_23B5D8868();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unownedRetainStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  sub_23B5BF6D4(0, 0, v4, &unk_23B5DD7F0, v12);
}

uint64_t sub_23B5C61D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_23B5C61F4, 0, 0);
}

uint64_t sub_23B5C61F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_23B5C62E8;

    return sub_23B5C3DD8();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_23B5C62E8()
{

  return MEMORY[0x2822009F8](sub_23B5C95B0, 0, 0);
}

uint64_t sub_23B5C6468(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CDF8, &qword_23B5DD7D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  if (qword_27E15C2E8 != -1)
  {
    swift_once();
  }

  v5 = sub_23B5D84B8();
  __swift_project_value_buffer(v5, qword_27E15D420);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_23B5D8A08();

  v14 = 0xD000000000000017;
  v15 = 0x800000023B5DF320;
  v6 = [a1 description];
  v7 = sub_23B5D86B8();
  v9 = v8;

  MEMORY[0x23EE9F750](v7, v9);

  sub_23B5AC760(v14, v15);

  v10 = sub_23B5D8868();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unownedRetainStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  sub_23B5BF6D4(0, 0, v4, &unk_23B5DD7E0, v12);
}

id sub_23B5C672C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PairedDevicesDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B5C6798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B5C37E4;

  return sub_23B5C61D4(a1, v4, v5, v6);
}

uint64_t sub_23B5C684C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B5C37E4;

  return sub_23B5C61D4(a1, v4, v5, v6);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B5C6940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B5C34D8;

  return sub_23B5C5CEC(a1, v4, v5, v6);
}

uint64_t sub_23B5C69F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = sub_23B5D8468();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF40, &qword_23B5DD848);
  v47 = v4;
  result = sub_23B5D8B18();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_23B5C92D8(&qword_27E15CF38, MEMORY[0x277CC9600]);
      result = sub_23B5D8658();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_23B5C6E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEC0, &qword_23B5DD820);
  result = sub_23B5D8B18();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    while (1)
    {
      if (v12)
      {
        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v18 = v17 | (v8 << 6);
        if (v4)
        {
LABEL_10:
          v19 = *(*(v5 + 48) + 8 * v18);
          v20 = *(v5 + 56) + 72 * v18;
          v36 = *v20;
          v37 = *(v20 + 16);
          v38 = *(v20 + 48);
          v39 = *(v20 + 32);
          v21 = *(v20 + 64);
          goto LABEL_17;
        }
      }

      else
      {
        v22 = v8;
        do
        {
          v8 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_35;
          }

          if (v8 >= v13)
          {
            if (v4)
            {
              v34 = 1 << *(v5 + 32);
              if (v34 >= 64)
              {
                bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
              }

              else
              {
                *v9 = -1 << v34;
              }

              *(v5 + 16) = 0;
            }

            v3 = v35;
            goto LABEL_33;
          }

          v23 = v9[v8];
          ++v22;
        }

        while (!v23);
        v12 = (v23 - 1) & v23;
        v18 = __clz(__rbit64(v23)) | (v8 << 6);
        if (v4)
        {
          goto LABEL_10;
        }
      }

      v19 = *(*(v5 + 48) + 8 * v18);
      v24 = *(v5 + 56) + 72 * v18;
      v21 = *(v24 + 64);
      v25 = *(v24 + 48);
      v26 = *(v24 + 16);
      v42 = *(v24 + 32);
      v43 = v25;
      v41[1] = v26;
      v41[0] = *v24;
      v44 = v21;
      v38 = v25;
      v39 = v42;
      v36 = v41[0];
      v37 = v26;
      sub_23B5AF43C(v41, v40);
LABEL_17:
      result = sub_23B5D8D08();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      v16 = *(v7 + 56) + 72 * v15;
      *v16 = v36;
      *(v16 + 16) = v37;
      *(v16 + 32) = v39;
      *(v16 + 48) = v38;
      *(v16 + 64) = v21;
      ++*(v7 + 16);
    }
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23B5C7174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = v6;
  result = sub_23B5D8B18();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v7;
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
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v24 = 16 * (v21 | (v10 << 6));
      v25 = (*(v7 + 48) + v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = (*(v7 + 56) + v24);
      v29 = v28[1];
      v40 = *v28;
      if ((v39 & 1) == 0)
      {
      }

      sub_23B5D8D18();
      sub_23B5D8708();
      result = sub_23B5D8D58();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = 16 * v17;
      v19 = (*(v9 + 48) + v18);
      *v19 = v26;
      v19[1] = v27;
      v20 = (*(v9 + 56) + v18);
      *v20 = v40;
      v20[1] = v29;
      ++*(v9 + 16);
      v7 = v38;
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v4;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_23B5C742C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF50, &qword_23B5DD850);
  result = sub_23B5D8B18();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v5;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 32 * v20;
      v36 = *(v22 + 24);
      v23 = *(v22 + 8);
      v35 = *(v22 + 16);
      v24 = *v22;
      sub_23B5D8D18();
      MEMORY[0x23EE9FD40](v21);
      result = sub_23B5D8D58();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v24;
      v5 = v34;
      *(v16 + 8) = v23;
      *(v16 + 16) = v35;
      *(v16 + 24) = v36;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

unint64_t sub_23B5C76D4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_23B5D8468();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_23B5C92D8(&qword_27E15CF48, MEMORY[0x277CC9610]);
      v15 = sub_23B5D8698();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_23B5C7880(uint64_t a1, uint64_t a2)
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

unint64_t sub_23B5C78EC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23B5D8C88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23B5C79A4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23B5C7A14(uint64_t a1)
{
  sub_23B5D8468();
  sub_23B5C92D8(&qword_27E15CF38, MEMORY[0x277CC9600]);
  v2 = sub_23B5D8658();

  return sub_23B5C76D4(a1, v2);
}

unint64_t sub_23B5C7A98(uint64_t a1)
{
  v2 = sub_23B5D8D08();

  return sub_23B5C7880(a1, v2);
}

unint64_t sub_23B5C7ADC(uint64_t a1, uint64_t a2)
{
  sub_23B5D8D18();
  sub_23B5D8708();
  v4 = sub_23B5D8D58();

  return sub_23B5C78EC(a1, a2, v4);
}

unint64_t sub_23B5C7B54(unsigned __int8 a1)
{
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](a1);
  v2 = sub_23B5D8D58();

  return sub_23B5C79A4(a1, v2);
}

uint64_t sub_23B5C7BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23B5C7A14(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23B5C8708();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_23B5D8468();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_23B5C7D78(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_23B5C7D78(int64_t a1, uint64_t a2)
{
  v4 = sub_23B5D8468();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_23B5D8978();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_23B5C92D8(&qword_27E15CF38, MEMORY[0x277CC9600]);
      v22 = sub_23B5D8658();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23B5C80B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23B5D8468();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23B5C7A14(a2);
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
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23B5C8708();
      goto LABEL_7;
    }

    sub_23B5C69F4(v17, a3 & 1);
    v28 = sub_23B5C7A14(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_23B5C8608(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_23B5D8CA8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_23B5C82C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23B5C7A98(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23B5C6E90(v14, a3 & 1);
      result = sub_23B5C7A98(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_23B5D8CA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23B5C8A64();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v21 = v19[7] + 72 * result;
    *v21 = *a1;
    v22 = *(a1 + 16);
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    *(v21 + 64) = *(a1 + 64);
    *(v21 + 32) = v23;
    *(v21 + 48) = v24;
    *(v21 + 16) = v22;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 72 * result;

  return sub_23B5C91C8(a1, v20);
}

uint64_t sub_23B5C845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  v16 = *v7;
  v17 = sub_23B5C7ADC(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      sub_23B5C7174(v22, a5 & 1, a6, a7);
      v17 = sub_23B5C7ADC(a3, a4);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_23B5D8CA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_23B5C8C1C(a6, a7);
      v17 = v25;
    }
  }

  v27 = *v10;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    *v28 = a1;
    v28[1] = a2;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a3;
  v30[1] = a4;
  v31 = (v27[7] + 16 * v17);
  *v31 = a1;
  v31[1] = a2;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

uint64_t sub_23B5C8608(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23B5D8468();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
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

char *sub_23B5C8708()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = sub_23B5D8468();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF40, &qword_23B5DD848);
  v4 = *v0;
  v5 = sub_23B5D8B08();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

void *sub_23B5C8A64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEC0, &qword_23B5DD820);
  v2 = *v0;
  v3 = sub_23B5D8B08();
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
        v18 = 8 * v17;
        v19 = *(*(v2 + 48) + 8 * v17);
        v17 *= 72;
        v20 = *(v2 + 56) + v17;
        v22 = *(v20 + 16);
        v21 = *(v20 + 32);
        v23 = *(v20 + 48);
        v33 = *(v20 + 64);
        v32 = v23;
        v29 = *v20;
        v30 = v22;
        v31 = v21;
        *(*(v4 + 48) + v18) = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v29;
        v25 = v30;
        v26 = v31;
        v27 = v32;
        *(v24 + 64) = v33;
        *(v24 + 32) = v26;
        *(v24 + 48) = v27;
        *(v24 + 16) = v25;
        result = sub_23B5AF43C(&v29, v28);
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

void *sub_23B5C8C1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23B5D8B08();
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
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = (*(v4 + 56) + v19);
        v24 = *v23;
        v25 = v23[1];
        v26 = (*(v6 + 48) + v19);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v6 + 56) + v19);
        *v27 = v24;
        v27[1] = v25;
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

unint64_t sub_23B5C8D84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF68, &qword_23B5DD868);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF40, &qword_23B5DD848);
    v7 = sub_23B5D8B28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23B5C32A0(v9, v5, &qword_27E15CF68, &qword_23B5DD868);
      result = sub_23B5C7A14(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23B5D8468();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E15CED8, &qword_23B5DD710);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_23B5C8FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CEC0, &qword_23B5DD820);
  v3 = sub_23B5D8B28();
  v4 = *(a1 + 48);
  *v21 = *(a1 + 32);
  *&v21[16] = v4;
  v5 = *(a1 + 80);
  *&v21[32] = *(a1 + 64);
  *&v21[48] = v5;
  *&v21[64] = *(a1 + 96);
  v6 = *v21;
  result = sub_23B5C7A98(*v21);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_23B5C32A0(v21, v20, &qword_27E15CF18, &qword_23B5DD828);
    return v3;
  }

  v9 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v6;
    v10 = v3[7] + 72 * result;
    *v10 = *&v21[8];
    v11 = *&v21[24];
    v12 = *&v21[40];
    v13 = *&v21[56];
    *(v10 + 64) = *&v21[72];
    *(v10 + 32) = v12;
    *(v10 + 48) = v13;
    *(v10 + 16) = v11;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_23B5C32A0(v21, v20, &qword_27E15CF18, &qword_23B5DD828);
    v17 = v9[1];
    *v21 = *v9;
    *&v21[16] = v17;
    v18 = v9[3];
    *&v21[32] = v9[2];
    *&v21[48] = v18;
    *&v21[64] = v9[4];
    v6 = *v21;
    result = sub_23B5C7A98(*v21);
    v9 += 5;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_23B5C9224()
{
  result = qword_27E15CF10;
  if (!qword_27E15CF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E15CF10);
  }

  return result;
}

uint64_t sub_23B5C9270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF30, &qword_23B5DD840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B5C92D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23B5D8468();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B5C9344(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23B5D8B28();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_23B5C7ADC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v10;
      v14[1] = v9;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_23B5C9450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF50, &qword_23B5DD850);
    v3 = sub_23B5D8B28();
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 32);
      v6 = *(i - 24);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_23B5C7B54(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v12 = v3[7] + 32 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t WAPublishableService.id.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t WAPublishableService.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B5D8A08();

  MEMORY[0x23EE9F750](v1, v2);
  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_23B5C96B0(uint64_t a1)
{
  v2 = sub_23B5CA1A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5C96EC(uint64_t a1)
{
  v2 = sub_23B5CA1A4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B5C97E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B5D8A08();

  MEMORY[0x23EE9F750](v1, v2);
  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_23B5C98EC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

unint64_t WASubscribableService.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B5D8A08();

  MEMORY[0x23EE9F750](v1, v2);
  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

uint64_t _s9WiFiAware20WAPublishableServiceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23B5D8C88();
  }
}

uint64_t sub_23B5C9A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23B5D8C88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23B5C9A90(uint64_t a1)
{
  v2 = sub_23B5CA1F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5C9ACC(uint64_t a1)
{
  v2 = sub_23B5CA1F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5C9B4C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  v12 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13();
  sub_23B5D8D78();
  sub_23B5D8C18();
  return (*(v8 + 8))(v10, v7);
}

uint64_t _s9WiFiAware20WAPublishableServiceV9hashValueSivg_0()
{
  sub_23B5D8D18();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

uint64_t sub_23B5C9D24@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_23B5D8D68();
  if (!v6)
  {
    v12 = v19;
    v13 = v20;
    v14 = sub_23B5D8B88();
    v16 = v15;
    (*(v12 + 8))(v11, v9);
    *v13 = v14;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23B5C9EC8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_23B5C9F2C(uint64_t a1)
{
  sub_23B5D8D18();
  sub_23B5D8708();
  return sub_23B5D8D58();
}

unint64_t sub_23B5C9F74()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B5D8A08();

  MEMORY[0x23EE9F750](v1, v2);
  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

uint64_t sub_23B5CA05C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_23B5D8D78();
  sub_23B5D8C18();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_23B5CA1A4()
{
  result = qword_27E15CF78;
  if (!qword_27E15CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CF78);
  }

  return result;
}

unint64_t sub_23B5CA1F8()
{
  result = qword_27E15CF90;
  if (!qword_27E15CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CF90);
  }

  return result;
}

unint64_t sub_23B5CA24C(void *a1)
{
  a1[1] = sub_23B5CA294();
  a1[2] = sub_23B5B0EF0();
  a1[3] = sub_23B5B0AB4();
  a1[4] = sub_23B5CA2E8();
  result = sub_23B5CA33C();
  a1[5] = result;
  return result;
}

unint64_t sub_23B5CA294()
{
  result = qword_27E15CFA0;
  if (!qword_27E15CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFA0);
  }

  return result;
}

unint64_t sub_23B5CA2E8()
{
  result = qword_27E15CFA8;
  if (!qword_27E15CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFA8);
  }

  return result;
}

unint64_t sub_23B5CA33C()
{
  result = qword_27E15CFB0;
  if (!qword_27E15CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFB0);
  }

  return result;
}

unint64_t sub_23B5CA3A0()
{
  result = qword_27E15CFB8;
  if (!qword_27E15CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFB8);
  }

  return result;
}

unint64_t sub_23B5CA3F4(void *a1)
{
  a1[1] = sub_23B5CA43C();
  a1[2] = sub_23B5AF244();
  a1[3] = sub_23B5AEDB4();
  a1[4] = sub_23B5CA490();
  result = sub_23B5CA4E4();
  a1[5] = result;
  return result;
}

unint64_t sub_23B5CA43C()
{
  result = qword_27E15CFC0;
  if (!qword_27E15CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFC0);
  }

  return result;
}

unint64_t sub_23B5CA490()
{
  result = qword_27E15CFC8;
  if (!qword_27E15CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFC8);
  }

  return result;
}

unint64_t sub_23B5CA4E4()
{
  result = qword_27E15CFD0;
  if (!qword_27E15CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFD0);
  }

  return result;
}

unint64_t sub_23B5CA53C()
{
  result = qword_27E15CFD8;
  if (!qword_27E15CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFD8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B5CA5D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23B5CA61C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23B5CA68C()
{
  result = qword_27E15CFE0;
  if (!qword_27E15CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFE0);
  }

  return result;
}

unint64_t sub_23B5CA6E4()
{
  result = qword_27E15CFE8;
  if (!qword_27E15CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFE8);
  }

  return result;
}

unint64_t sub_23B5CA73C()
{
  result = qword_27E15CFF0;
  if (!qword_27E15CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFF0);
  }

  return result;
}

unint64_t sub_23B5CA794()
{
  result = qword_27E15CFF8;
  if (!qword_27E15CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15CFF8);
  }

  return result;
}

unint64_t sub_23B5CA7EC()
{
  result = qword_27E15D000;
  if (!qword_27E15D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D000);
  }

  return result;
}

unint64_t sub_23B5CA844()
{
  result = qword_27E15D008;
  if (!qword_27E15D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D008);
  }

  return result;
}

uint64_t sub_23B5CA8D8()
{
  v0 = sub_23B5CCBB4();
  if (!v0 || (v1 = v0, , v2 = sub_23B5CA958(v1, &qword_27E15CF60, &qword_23B5DD860, &type metadata for WAPublishableService), result = , !v2))
  {
    v2 = sub_23B5C931C(MEMORY[0x277D84F90]);
  }

  qword_27E15D4B0 = v2;
  return result;
}

unint64_t sub_23B5CA958(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23B5D8B28();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v6 = v4 + 64;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v24 = v4;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v16);
    ++v12;
    if (v9)
    {
      while (1)
      {
        v17 = 40 * (__clz(__rbit64(v9)) | (v16 << 6));
        sub_23B5C954C(*(v4 + 48) + v17, v30);
        sub_23B5CCF10(*(v4 + 56) + v17, v31 + 8);
        v29[0] = v31[0];
        v29[1] = v31[1];
        v29[2] = v31[2];
        v28[0] = v30[0];
        v28[1] = v30[1];
        sub_23B5C954C(v28, v27);
        if (!swift_dynamicCast())
        {
          sub_23B5C3308(v28, &qword_27E15D010, &qword_23B5DDDF0);

          goto LABEL_23;
        }

        sub_23B5CCF10(v29 + 8, v27);
        sub_23B5C3308(v28, &qword_27E15D010, &qword_23B5DDDF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D018, &qword_23B5DDDF8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v9 &= v9 - 1;
        result = sub_23B5C7ADC(v25, v26);
        if (v18)
        {
          v13 = 16 * result;
          v14 = (v5[6] + 16 * result);
          *v14 = v25;
          v14[1] = v26;

          v15 = (v5[7] + v13);
          v4 = v24;
          *v15 = v25;
          v15[1] = v26;

          v12 = v16;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v5[2] >= v5[3])
          {
            goto LABEL_26;
          }

          *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v5[6] + 16 * result);
          *v19 = v25;
          v19[1] = v26;
          v20 = (v5[7] + 16 * result);
          *v20 = v25;
          v20[1] = v26;
          v21 = v5[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_27;
          }

          v5[2] = v23;
          v12 = v16;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v16 = v12;
      }

LABEL_23:
      sub_23B5CD0E0(0, 0, 0, 0);
      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23B5CAC68()
{
  if (!sub_23B5CCBB4() || (v1 = v0, , v2 = sub_23B5CA958(v1, &qword_27E15CF58, &qword_23B5DD858, &type metadata for WASubscribableService), result = , !v2))
  {
    v2 = sub_23B5C9330(MEMORY[0x277D84F90]);
  }

  qword_27E15D4B8 = v2;
  return result;
}

uint64_t sub_23B5CACE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D028, &qword_23B5DDE08);
    v4 = sub_23B5D8B28();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v4 + 64;

  v11 = 0;
  while (v7)
  {
LABEL_15:
    v16 = (v11 << 10) | (16 * __clz(__rbit64(v7)));
    v17 = (*(a1 + 48) + v16);
    v18 = v17[1];
    v19 = (*(a1 + 56) + v16);
    v21 = *v19;
    v20 = v19[1];
    *&v42[0] = *v17;
    *(&v42[0] + 1) = v18;

    v22 = swift_dynamicCast();
    v36 = a2;
    v37 = a3(v22);
    *&v35 = v21;
    *(&v35 + 1) = v20;
    v38 = v32;
    v39 = v33;
    v40 = v34;
    sub_23B5CCFC8(&v35, v41);
    v32 = v38;
    v33 = v39;
    v34 = v40;
    sub_23B5CCFC8(v41, v42);
    result = sub_23B5D8998();
    v23 = -1 << *(v4 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v9 + 8 * (v24 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      while (++v25 != v27 || (v26 & 1) == 0)
      {
        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v9 + 8 * v25);
        if (v29 != -1)
        {
          v12 = __clz(__rbit64(~v29)) + (v25 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v12 = __clz(__rbit64((-1 << v24) & ~*(v9 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v7 &= v7 - 1;
    v13 = 40 * v12;
    v14 = *(v4 + 48) + v13;
    *v14 = v32;
    *(v14 + 16) = v33;
    *(v14 + 32) = v34;
    result = sub_23B5CCFC8(v42, *(v4 + 56) + v13);
    ++*(v4 + 16);
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      return v4;
    }

    v7 = *(a1 + 64 + 8 * v15);
    ++v11;
    if (v7)
    {
      v11 = v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23B5CAFA0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23B5CAFF4(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D048, &qword_23B5DDE18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  if (sub_23B5D8718() < 1)
  {
    goto LABEL_18;
  }

  v7 = sub_23B5D8718();
  if (v7 > 255)
  {
    goto LABEL_18;
  }

  v43 = 46;
  v44 = 0xE100000000000000;
  MEMORY[0x28223BE20](v7);
  v38 = &v43;

  v9 = sub_23B5CB944(0x7FFFFFFFFFFFFFFFLL, 1, sub_23B5CD034, (&v40 - 4), a1, a2, v8);
  if (v9[2] != 2)
  {
LABEL_17:

LABEL_18:
    v28 = 0;
    return v28 & 1;
  }

  v10 = v9[4];
  v11 = v9[5];
  v12 = v9[6];
  v13 = v9[7];
  v14 = v9;

  v15 = MEMORY[0x23EE9F700](v10, v11, v12, v13);
  v17 = v16;

  if (sub_23B5D8718() < 1)
  {
    goto LABEL_16;
  }

  v18 = sub_23B5D8718();
  if ((sub_23B5CB4D0(95, 0xE100000000000000, v15, v17) & 1) == 0)
  {
    if (v18 < 16)
    {
      goto LABEL_9;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (v18 > 16)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((sub_23B5CB62C(v15, v17) & 1) == 0)
  {
    goto LABEL_16;
  }

  v43 = v15;
  v44 = v17;
  v41 = 0x5D5A2D417A2D615BLL;
  v42 = 0xE800000000000000;
  v19 = sub_23B5D8478();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v38 = sub_23B5CD08C();
  v39 = v38;
  sub_23B5D8968();
  v21 = v20;
  sub_23B5C3308(v6, &qword_27E15D048, &qword_23B5DDE18);
  if (v21 & 1) != 0 || (sub_23B5CB4D0(45, 0xE100000000000000, v15, v17) & 1) != 0 || (sub_23B5D8788())
  {
    goto LABEL_16;
  }

  v22 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v23 = sub_23B5CB868(0x7D2C327B5D2D5BLL, 0xE700000000000000, 0);
  v24 = sub_23B5D8718();
  v25 = sub_23B5D86A8();
  v26 = [v23 firstMatchInString:v25 options:0 range:{0, v24}];

  if (v26)
  {

    goto LABEL_16;
  }

  v43 = v15;
  v44 = v17;
  v41 = 95;
  v42 = 0xE100000000000000;
  v27 = *(sub_23B5D8958() + 16);

  if (v27 > 2)
  {
    goto LABEL_16;
  }

  if (v27 == 2)
  {
    v30 = sub_23B5CB4D0(95, 0xE100000000000000, v15, v17);

    if ((v30 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (v14[2] >= 2uLL)
  {
    v31 = v14[8];
    v32 = v14[9];
    v33 = v14[10];
    v34 = v14[11];

    v35 = MEMORY[0x23EE9F700](v31, v32, v33, v34);
    v37 = v36;

    if (v35 == 1885566047 && v37 == 0xE400000000000000 || (sub_23B5D8C88() & 1) != 0 || v35 == 1885631839 && v37 == 0xE400000000000000)
    {

      v28 = 1;
    }

    else
    {
      v28 = sub_23B5D8C88();
    }

    return v28 & 1;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_23B5CB4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_23B5D8748();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_23B5D8748();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_23B5D8C88();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_23B5D8748();
      v7 = v9;
    }

    while (v9);
  }

  sub_23B5D8748();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_23B5CB62C(uint64_t a1, uint64_t a2)
{

  v2 = sub_23B5D8748();
  if (!v3)
  {
LABEL_43:
    v18 = 1;
LABEL_46:

    return v18;
  }

  v4 = v2;
  v5 = v3;
  while (1)
  {
    if (v4 == 2573 && v5 == 0xE200000000000000)
    {
      goto LABEL_24;
    }

    result = sub_23B5D8C88();
    if (result)
    {
      goto LABEL_24;
    }

    v7 = (v5 & 0x2000000000000000) != 0 ? HIBYTE(v5) & 0xF : v4 & 0xFFFFFFFFFFFFLL;
    if (!v7)
    {
      break;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v12 = sub_23B5D86F8();
    }

    else
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v9 = v4;
      }

      else
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v8 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v8 = sub_23B5D8A48();
        }

        v9 = *v8;
      }

      v10 = v9;
      v11 = (__clz(~v9) - 24) << 16;
      if (v10 < 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 65541;
      }
    }

    if (v12 >> 14 != 4 * v7)
    {
      goto LABEL_44;
    }

    result = sub_23B5CBE10(v4, v5);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_49;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_44:

LABEL_45:
      v18 = 0;
      goto LABEL_46;
    }

    result = sub_23B5CBE10(v4, v5);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_50;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_48;
    }

LABEL_24:
    if ((sub_23B5D8678() & 1) != 0 || (sub_23B5D8688() & 1) != 0 || v4 == 45 && v5 == 0xE100000000000000 || ((v14 = sub_23B5D8C88(), v4 == 95) ? (v15 = v5 == 0xE100000000000000) : (v15 = 0), !v15 ? (v16 = 0) : (v16 = 1), (v14 & 1) != 0 || v16))
    {
    }

    else
    {
      v17 = sub_23B5D8C88();

      if ((v17 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    v4 = sub_23B5D8748();
    v5 = v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

id sub_23B5CB868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23B5D86A8();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_23B5D83E8();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_23B5CB944@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_23B5D87A8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_23B5CBD04(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_23B5CBD04((a7 > 1), v10, 1, v14);
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
        v19 = sub_23B5D8798();
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

        v14 = sub_23B5D8728();
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
        v18 = sub_23B5D8728();
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
          v7 = sub_23B5D87A8();
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

        v14 = sub_23B5CBD04(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_23B5D87A8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_23B5CBD04(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_23B5CBD04((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_23B5D8728();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_23B5CBD04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D058, &qword_23B5DDE20);
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

unint64_t sub_23B5CBE10(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_23B5CBF60(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_23B5D89F8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_23B5D8A48() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_23B5CBF60(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_23B5CBFF8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_23B5CC06C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_23B5CBFF8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_23B5CC190(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23B5CC06C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_23B5D8A48();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_23B5CC190(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23B5D8778();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23EE9F780](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_23B5CC20C(uint64_t a1)
{
  v4 = MEMORY[0x277D84F90];
  v39 = sub_23B5C931C(MEMORY[0x277D84F90]);
  v35 = sub_23B5C9330(v4);
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v36 = v9;
LABEL_4:
  v11 = v10;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v11;
LABEL_9:
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v1 = *v13;
    v2 = v13[1];
    v14 = *(*(a1 + 56) + 8 * v12);

    if ((sub_23B5CAFF4(v1, v2) & 1) == 0)
    {
LABEL_34:

      v40 = 0;
      v41 = 0xE000000000000000;
      sub_23B5D8A08();

      v40 = 39;
      v41 = 0xE100000000000000;
      MEMORY[0x23EE9F750](v1, v2);

      MEMORY[0x23EE9F750](0xD00000000000002DLL, 0x800000023B5DF590);
      v28 = v40;
      v29 = v41;
      if (qword_27E15C2E0 != -1)
      {
        swift_once();
      }

      v30 = sub_23B5D84B8();
      __swift_project_value_buffer(v30, qword_27E15D408);
      sub_23B5AC790(v28, v29);
      while (1)
      {
        sub_23B5D8AE8();
        __break(1u);
LABEL_43:

LABEL_44:
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_23B5D8A08();
        MEMORY[0x23EE9F750](39, 0xE100000000000000);
        v31 = 0x6269726373627553;
        v32 = 0xEC000000656C6261;
LABEL_39:
        MEMORY[0x23EE9F750](v31, v32);
        MEMORY[0x23EE9F750](0xD000000000000014, 0x800000023B5DF620);
        MEMORY[0x23EE9F750](v38, v2);

        MEMORY[0x23EE9F750](0xD000000000000022, 0x800000023B5DF640);
        v33 = v40;
        v34 = v41;
LABEL_41:
        sub_23B5AC790(v33, v34);
      }
    }

    if (qword_27E15C2E0 != -1)
    {
      swift_once();
    }

    v37 = sub_23B5D84B8();
    __swift_project_value_buffer(v37, qword_27E15D408);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_23B5D8A08();

    v40 = 0xD000000000000010;
    v41 = 0x800000023B5DF5C0;
    v38 = v1;
    MEMORY[0x23EE9F750](v1, v2);
    MEMORY[0x23EE9F750](0x6320687469772027, 0xEF203A6769666E6FLL);
    v15 = sub_23B5D8638();
    MEMORY[0x23EE9F750](v15);

    sub_23B5AC760(v40, v41);

    if (!*(v14 + 16))
    {
      goto LABEL_40;
    }

    v16 = v5;

    sub_23B5C7ADC(0x616873696C627550, 0xEB00000000656C62);
    v18 = v17;

    if (!*(v14 + 16))
    {
      if (v18)
      {
LABEL_38:

        v40 = 0;
        v41 = 0xE000000000000000;
        sub_23B5D8A08();
        MEMORY[0x23EE9F750](39, 0xE100000000000000);
        v31 = 0x616873696C627550;
        v32 = 0xEB00000000656C62;
        goto LABEL_39;
      }

LABEL_40:

      v40 = 0;
      v41 = 0xE000000000000000;
      sub_23B5D8A08();
      MEMORY[0x23EE9F750](0x3A65636976726553, 0xEA00000000002720);
      MEMORY[0x23EE9F750](v38, v2);

      MEMORY[0x23EE9F750](0xD000000000000014, 0x800000023B5DF5E0);
      MEMORY[0x23EE9F750](0x616873696C627550, 0xEB00000000656C62);
      MEMORY[0x23EE9F750](0x2720726F2027, 0xE600000000000000);
      MEMORY[0x23EE9F750](0x6269726373627553, 0xEC000000656C6261);
      MEMORY[0x23EE9F750](0xD00000000000001CLL, 0x800000023B5DF600);
      v33 = v40;
      v34 = v41;
      goto LABEL_41;
    }

    v8 &= v8 - 1;

    sub_23B5C7ADC(0x6269726373627553, 0xEC000000656C6261);
    v1 = v19;

    if ((v18 & 1) == 0)
    {
      v5 = v16;
      if ((v1 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_26:
      if (!*(v14 + 16))
      {
        goto LABEL_43;
      }

      v23 = sub_23B5C7ADC(0x6269726373627553, 0xEC000000656C6261);
      if ((v24 & 1) == 0)
      {
        goto LABEL_43;
      }

      sub_23B5ACF60(*(v14 + 56) + 32 * v23, &v40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D040, &qword_23B5DDE10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_44;
      }

      v25 = v37;
      if (qword_27E15C2F8 != -1)
      {
        swift_once();
        v25 = v37;
      }

      v1 = __swift_project_value_buffer(v25, qword_27E15D450);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_23B5D8A08();

      v40 = 0xD00000000000001ELL;
      v41 = 0x800000023B5DF670;
      MEMORY[0x23EE9F750](v38, v2);
      MEMORY[0x23EE9F750](39, 0xE100000000000000);
      sub_23B5AC778(v40, v41);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v35;
      sub_23B5C8434(v38, v2, v38, v2, isUniquelyReferenced_nonNull_native);

      v35 = v40;
      v9 = v36;
      goto LABEL_4;
    }

    if (!*(v14 + 16))
    {
      goto LABEL_38;
    }

    v20 = sub_23B5C7ADC(0x616873696C627550, 0xEB00000000656C62);
    if ((v21 & 1) == 0)
    {
      goto LABEL_38;
    }

    sub_23B5ACF60(*(v14 + 56) + 32 * v20, &v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D040, &qword_23B5DDE10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_38;
    }

    if (qword_27E15C2F0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v37, qword_27E15D438);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_23B5D8A08();

    v40 = 0xD00000000000001DLL;
    v41 = 0x800000023B5DF690;
    MEMORY[0x23EE9F750](v38, v2);
    MEMORY[0x23EE9F750](39, 0xE100000000000000);
    sub_23B5AC778(v40, v41);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v39;
    sub_23B5C8448(v38, v2, v38, v2, v22);
    v39 = v40;
    if (v1)
    {
      v5 = v16;
      goto LABEL_26;
    }

    v11 = v10;
    v5 = v16;
    v9 = v36;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  return v39;
}

uint64_t sub_23B5CCBB4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    if (qword_27E15C2E0 != -1)
    {
      swift_once();
    }

    v11 = sub_23B5D84B8();
    __swift_project_value_buffer(v11, qword_27E15D408);
    sub_23B5AC790(0xD000000000000015, 0x800000023B5DF490);
    goto LABEL_15;
  }

  v2 = sub_23B5D8628();

  if (!*(v2 + 16) || (v3 = sub_23B5C7ADC(0xD000000000000011, 0x800000023B5DF4F0), (v4 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_23B5ACF60(*(v2 + 56) + 32 * v3, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D020, &qword_23B5DDE00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_27E15C2E0 != -1)
    {
      swift_once();
    }

    v10 = sub_23B5D84B8();
    __swift_project_value_buffer(v10, qword_27E15D408);
    sub_23B5AC760(0xD00000000000003DLL, 0x800000023B5DF510);
    return 0;
  }

  v5 = sub_23B5CC20C(v13);
  v7 = v6;

  if (!*(v5 + 16) && !*(v7 + 16))
  {
    while (1)
    {

      if (qword_27E15C2E0 != -1)
      {
        swift_once();
      }

      v12 = sub_23B5D84B8();
      __swift_project_value_buffer(v12, qword_27E15D408);
      sub_23B5AC790(0xD00000000000003DLL, 0x800000023B5DF550);
LABEL_15:
      sub_23B5D8AE8();
      __break(1u);
    }
  }

  v8 = sub_23B5CACE4(v5, &type metadata for WAPublishableService, sub_23B5CCFE0);

  sub_23B5CACE4(v7, &type metadata for WASubscribableService, sub_23B5CCF74);

  return v8;
}

uint64_t sub_23B5CCF10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23B5CCF74()
{
  result = qword_27E15D030;
  if (!qword_27E15D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D030);
  }

  return result;
}

uint64_t sub_23B5CCFC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_23B5CCFE0()
{
  result = qword_27E15D038;
  if (!qword_27E15D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D038);
  }

  return result;
}

uint64_t sub_23B5CD034(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23B5D8C88() & 1;
  }
}

unint64_t sub_23B5CD08C()
{
  result = qword_27E15D050;
  if (!qword_27E15D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D050);
  }

  return result;
}

void sub_23B5CD0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void NWError.wifiAware.getter(char *a1@<X8>)
{
  v3 = sub_23B5D85C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 3];
  (*(v4 + 16))(v6, v1, v3);
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x277CD8FB8])
  {
    (*(v4 + 8))(v6, v3);
LABEL_6:
    v8 = -1;
    goto LABEL_7;
  }

  (*(v4 + 96))(v6, v3);
  if ((*v6 + 11984) < 0xFFFFFFF1)
  {
    goto LABEL_6;
  }

  v7 = sub_23B5D85B8();
  WAError.ErrorCode.init(rawValue:)(v7);
  if (v11 == 15)
  {
    goto LABEL_6;
  }

  v10[1] = v11;
  WAError.ErrorCode.errorObject.getter(v10);
  v8 = v10[0];
LABEL_7:
  *a1 = v8;
}

void NWParameters.wifiAware.getter(_BYTE *a1@<X8>)
{
  v2 = sub_23B5D8538();
  if (v3 >> 60 == 15)
  {
    if (qword_27E15C300 != -1)
    {
      swift_once();
    }

    v4 = sub_23B5D84B8();
    __swift_project_value_buffer(v4, qword_27E15D468);
    sub_23B5AC760(0xD000000000000032, 0x800000023B5DF6B0);
    v7 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    static WAParametersAgentInterface.Parameters.decode(from:)(v2, v3);
    sub_23B5CD480(v5, v6);
    v7 = v8;
  }

  *a1 = v7;
}

uint64_t sub_23B5CD480(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23B5AE940(result, a2);
  }

  return result;
}

uint64_t NWParameters.wifiAware.setter(_BYTE *a1)
{
  v1 = WAParametersAgentInterface.Parameters.encode()();

  return MEMORY[0x282125AE8](v1);
}

uint64_t (*NWParameters.wifiAware.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  NWParameters.wifiAware.getter((a1 + 8));
  return sub_23B5CD620;
}

uint64_t sub_23B5CD620(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return NWParameters.wifiAware.setter(v2);
}

uint64_t NWParameters.wifiAware(_:)(uint64_t (*a1)(char *))
{
  NWParameters.wifiAware.getter(&v4);
  a1(&v4);
  sub_23B5D8528();
  v3 = v4;
  NWParameters.wifiAware.setter(&v3);
}

uint64_t NWParametersBuilder.wifiAware(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_23B5D8588();
  NWParameters.wifiAware.getter(&v10);

  a1(&v10);
  sub_23B5D8588();
  v9 = v10;
  NWParameters.wifiAware.setter(&v9);

  v7 = *(*(a2 - 8) + 16);

  return v7(a3, v3, a2);
}

uint64_t NWPath.wifiAware.getter(uint64_t a1)
{
  v2[104] = v1;
  v2[103] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D060, &qword_23B5DDE68);
  v2[105] = swift_task_alloc();
  v3 = type metadata accessor for WAPerformanceReport(0);
  v2[106] = v3;
  v2[107] = *(v3 - 8);
  v2[108] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D068, &qword_23B5DDE70);
  v2[109] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D070, &qword_23B5DDE78);
  v2[110] = swift_task_alloc();
  v4 = sub_23B5D84D8();
  v2[111] = v4;
  v2[112] = *(v4 - 8);
  v2[113] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B5CDA1C, 0, 0);
}

uint64_t sub_23B5CDA1C()
{
  v70 = v0;
  v69 = *MEMORY[0x277D85DE8];
  v1 = sub_23B5D85A8();
  *(v0 + 912) = v1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v1;
  v3 = *(v0 + 896);
  v4 = *(v0 + 888);
  v5 = *(v0 + 880);
  sub_23B5D8598();
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    v6 = *(v0 + 880);
    swift_unknownObjectRelease();
    sub_23B5C3308(v6, &qword_27E15D070, &qword_23B5DDE78);
LABEL_4:
    if (qword_27E15C308 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 824);
    v8 = sub_23B5D84B8();
    __swift_project_value_buffer(v8, qword_27E15D480);
    sub_23B5AC790(0xD000000000000026, 0x800000023B5DF770);
    v9 = type metadata accessor for WAPath(0);
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    goto LABEL_7;
  }

  v12 = *(v0 + 904);
  v13 = *(v0 + 896);
  v14 = *(v0 + 888);
  v15 = *(v0 + 880);
  v16 = *(v13 + 32);
  *(v0 + 920) = v16;
  *(v0 + 928) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v16(v12, v15, v14);
  v17 = swift_unknownObjectRetain();
  v18 = MEMORY[0x23EE9FEA0](v17);
  *(v0 + 1000) = v18;
  if (!v18)
  {
    swift_unknownObjectRelease();
    if (qword_27E15C308 == -1)
    {
LABEL_19:
      v35 = *(v0 + 904);
      v36 = *(v0 + 896);
      v37 = *(v0 + 888);
      v38 = *(v0 + 824);
      v39 = sub_23B5D84B8();
      __swift_project_value_buffer(v39, qword_27E15D480);
      sub_23B5AC790(0xD00000000000002BLL, 0x800000023B5DF7A0);
      swift_unknownObjectRelease();
      (*(v36 + 8))(v35, v37);
      v40 = type metadata accessor for WAPath(0);
      (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
      goto LABEL_7;
    }

LABEL_32:
    swift_once();
    goto LABEL_19;
  }

  v19 = v18;
  v20 = *(v0 + 872);
  v21 = type metadata accessor for WAPath(0);
  *(v0 + 936) = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  *(v0 + 944) = v23;
  *(v0 + 952) = (v22 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v23(v20, 1, 1, v21);
  if (((v19 + 1) >> 8))
  {
    __break(1u);
    goto LABEL_32;
  }

  v24 = calloc(1uLL, (v19 + 1));
  *(v0 + 960) = v24;
  v25 = MEMORY[0x23EE9FE90](v2, v24, v0 + 1000);
  swift_unknownObjectRelease();
  if (!v25)
  {
LABEL_17:
    v30 = *(v0 + 904);
    v31 = *(v0 + 896);
    v32 = *(v0 + 888);
    v33 = *(v0 + 872);
    v34 = *(v0 + 824);
    free(*(v0 + 960));
    swift_unknownObjectRelease();
    (*(v31 + 8))(v30, v32);
    sub_23B5CEF3C(v33, v34);
LABEL_7:

    v10 = *(v0 + 8);

    return v10();
  }

  if (qword_27E15C308 != -1)
  {
    swift_once();
  }

  v26 = sub_23B5D84B8();
  *(v0 + 968) = __swift_project_value_buffer(v26, qword_27E15D480);
  sub_23B5D8A08();

  *&v68[0] = 0xD000000000000025;
  *(&v68[0] + 1) = 0x800000023B5DF7D0;
  *(v0 + 1001) = *(v0 + 1000);
  v27 = sub_23B5D8C58();
  MEMORY[0x23EE9F750](v27);

  sub_23B5AC760(*&v68[0], *(&v68[0] + 1));

  if (!v24)
  {
    v41 = *(v0 + 896);
    v42 = *(v0 + 888);
    v43 = *(v0 + 872);
    v66 = *(v0 + 904);
    v67 = *(v0 + 824);
    sub_23B5AC790(0xD000000000000015, 0x800000023B5DF800);
    swift_unknownObjectRelease();
    sub_23B5C3308(v43, &qword_27E15D068, &qword_23B5DDE70);
    (*(v41 + 8))(v66, v42);
    v23(v67, 1, 1, v21);
    goto LABEL_7;
  }

  v28 = sub_23B5CF10C(v24, *(v0 + 1000));
  *(v0 + 976) = v28;
  *(v0 + 984) = v29;
  static WAPathAgentInterface.AgentToPath.decode(from:)(v28, v29);
  v44 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v44;
  v45 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v45;
  v46 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v46;
  v47 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v47;
  v48 = *(v0 + 168);
  if (v48)
  {
    v49 = *(v0 + 160);
    *(v0 + 624) = &type metadata for WASubscribableService;
    *(v0 + 632) = sub_23B5CCF74();
    *(v0 + 600) = v49;
    *(v0 + 608) = v48;
  }

  else
  {
    v50 = *(v0 + 152);
    if (v50)
    {
      v51 = *(v0 + 144);
      *(v0 + 624) = &type metadata for WAPublishableService;
      *(v0 + 632) = sub_23B5CCFE0();
      *(v0 + 600) = v51;
      *(v0 + 608) = v50;
    }

    else
    {
      *(v0 + 632) = 0;
      *(v0 + 600) = 0u;
      *(v0 + 616) = 0u;
    }
  }

  v52 = *(v0 + 96);
  v68[4] = *(v0 + 80);
  v68[5] = v52;
  v53 = *(v0 + 128);
  v68[6] = *(v0 + 112);
  v68[7] = v53;
  v54 = *(v0 + 32);
  v68[0] = *(v0 + 16);
  v68[1] = v54;
  v55 = *(v0 + 64);
  v68[2] = *(v0 + 48);
  v68[3] = v55;
  type metadata accessor for WiFiAwarePerformancePrivate();
  swift_allocObject();
  sub_23B5B25D4(v0 + 144, v0 + 272);

  v56 = sub_23B5D67E0(v68);
  *(v0 + 992) = v56;
  if (!v56)
  {
    (*(*(v0 + 856) + 56))(*(v0 + 840), 1, 1, *(v0 + 848));
    sub_23B5C3308(*(v0 + 840), &qword_27E15D060, &qword_23B5DDE68);
    v58 = *(v0 + 984);
    v59 = *(v0 + 976);
    *&v68[0] = 0;
    *(&v68[0] + 1) = 0xE000000000000000;
    sub_23B5D8A08();
    v60 = *(&v68[0] + 1);
    *(v0 + 784) = *&v68[0];
    *(v0 + 792) = v60;
    MEMORY[0x23EE9F750](0xD00000000000002CLL, 0x800000023B5DF840);
    v61 = *(v0 + 224);
    *(v0 + 464) = *(v0 + 208);
    *(v0 + 480) = v61;
    v62 = *(v0 + 256);
    *(v0 + 496) = *(v0 + 240);
    *(v0 + 512) = v62;
    v63 = *(v0 + 160);
    *(v0 + 400) = *(v0 + 144);
    *(v0 + 416) = v63;
    v64 = *(v0 + 192);
    *(v0 + 432) = *(v0 + 176);
    *(v0 + 448) = v64;
    sub_23B5D8AB8();
    MEMORY[0x23EE9F750](0x6376697265732820, 0xEB00000000203A65);
    sub_23B5CF1BC(v0 + 600, v0 + 640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D078, &qword_23B5DDE80);
    v65 = sub_23B5D86C8();
    MEMORY[0x23EE9F750](v65);

    MEMORY[0x23EE9F750](41, 0xE100000000000000);
    sub_23B5AC790(*(v0 + 784), *(v0 + 792));
    sub_23B5AE940(v59, v58);
    sub_23B5B260C(v0 + 144);

    sub_23B5C3308(v0 + 600, &qword_27E15D078, &qword_23B5DDE80);
    goto LABEL_17;
  }

  v57 = v56;

  return MEMORY[0x2822009F8](sub_23B5CE358, v57, 0);
}

uint64_t sub_23B5CE358()
{
  if (*(v0[124] + 112))
  {
    sub_23B5D6B70(v0[105]);
    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];

  (*(v2 + 56))(v4, v1, 1, v3);

  return MEMORY[0x2822009F8](sub_23B5CE448, 0, 0);
}

uint64_t sub_23B5CE448()
{
  v1 = *(v0 + 840);
  if ((*(*(v0 + 856) + 48))(v1, 1, *(v0 + 848)) == 1)
  {
    sub_23B5C3308(v1, &qword_27E15D060, &qword_23B5DDE68);
    v2 = *(v0 + 984);
    v3 = *(v0 + 976);
    sub_23B5D8A08();
    *(v0 + 784) = 0;
    *(v0 + 792) = 0xE000000000000000;
    MEMORY[0x23EE9F750](0xD00000000000002CLL, 0x800000023B5DF840);
    v4 = *(v0 + 224);
    *(v0 + 464) = *(v0 + 208);
    *(v0 + 480) = v4;
    v5 = *(v0 + 256);
    *(v0 + 496) = *(v0 + 240);
    *(v0 + 512) = v5;
    v6 = *(v0 + 160);
    *(v0 + 400) = *(v0 + 144);
    *(v0 + 416) = v6;
    v7 = *(v0 + 192);
    *(v0 + 432) = *(v0 + 176);
    *(v0 + 448) = v7;
    sub_23B5D8AB8();
    MEMORY[0x23EE9F750](0x6376697265732820, 0xEB00000000203A65);
    sub_23B5CF1BC(v0 + 600, v0 + 640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D078, &qword_23B5DDE80);
    v8 = sub_23B5D86C8();
    MEMORY[0x23EE9F750](v8);

    MEMORY[0x23EE9F750](41, 0xE100000000000000);
    sub_23B5AC790(*(v0 + 784), *(v0 + 792));
    sub_23B5AE940(v3, v2);
    sub_23B5B260C(v0 + 144);

    sub_23B5C3308(v0 + 600, &qword_27E15D078, &qword_23B5DDE80);
    v9 = *(v0 + 904);
    v10 = *(v0 + 896);
    v11 = *(v0 + 888);
    v12 = *(v0 + 872);
    v13 = *(v0 + 824);
    free(*(v0 + 960));
    swift_unknownObjectRelease();
    (*(v10 + 8))(v9, v11);
    sub_23B5CEF3C(v12, v13);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    sub_23B5CF22C(v1, *(v0 + 864));
    v16 = *(v0 + 992);

    return MEMORY[0x2822009F8](sub_23B5CE790, v16, 0);
  }
}

uint64_t sub_23B5CE790()
{
  v1 = *(v0[124] + 112);
  if (v1)
  {
    v2 = v1;
    [v2 durationActive];
    v0[100] = sub_23B5D8DB8();
    v0[101] = v3;

    v4 = sub_23B5CE874;
  }

  else
  {

    v4 = sub_23B5CEC64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23B5CE874()
{
  sub_23B5CF1BC(v0 + 600, v0 + 720);
  if (*(v0 + 744))
  {
    v28 = *(v0 + 808);
    v29 = *(v0 + 800);
    v1 = *(v0 + 984);
    v2 = *(v0 + 976);
    v30 = *(v0 + 944);
    v3 = *(v0 + 936);
    v4 = *(v0 + 920);
    v5 = *(v0 + 904);
    v6 = *(v0 + 888);
    v27 = *(v0 + 864);
    v7 = *(v0 + 824);
    sub_23B5C3308(*(v0 + 872), &qword_27E15D068, &qword_23B5DDE70);
    sub_23B5AE940(v2, v1);

    swift_unknownObjectRelease();
    sub_23B5CCFC8((v0 + 720), v0 + 680);
    sub_23B5CCFC8((v0 + 680), v7);
    sub_23B5AF43C(v0 + 176, v0 + 528);
    sub_23B5B260C(v0 + 144);
    v8 = type metadata accessor for WAEndpoint(0);
    v4(v7 + *(v8 + 24), v5, v6);
    *(v7 + 40) = *(v0 + 176);
    v10 = *(v0 + 208);
    v9 = *(v0 + 224);
    v11 = *(v0 + 240);
    *(v7 + 56) = *(v0 + 192);
    *(v7 + 104) = v11;
    *(v7 + 88) = v9;
    *(v7 + 72) = v10;
    sub_23B5CF22C(v27, v7 + *(v3 + 20));
    v12 = (v7 + *(v3 + 24));
    *v12 = v29;
    v12[1] = v28;
    v30(v7, 0, 1, v3);
    sub_23B5C3308(v0 + 600, &qword_27E15D078, &qword_23B5DDE80);
  }

  else
  {
    sub_23B5CF290(*(v0 + 864));
    sub_23B5C3308(v0 + 720, &qword_27E15D078, &qword_23B5DDE80);
    v13 = *(v0 + 984);
    v14 = *(v0 + 976);
    sub_23B5D8A08();
    *(v0 + 784) = 0;
    *(v0 + 792) = 0xE000000000000000;
    MEMORY[0x23EE9F750](0xD00000000000002CLL, 0x800000023B5DF840);
    v15 = *(v0 + 224);
    *(v0 + 464) = *(v0 + 208);
    *(v0 + 480) = v15;
    v16 = *(v0 + 256);
    *(v0 + 496) = *(v0 + 240);
    *(v0 + 512) = v16;
    v17 = *(v0 + 160);
    *(v0 + 400) = *(v0 + 144);
    *(v0 + 416) = v17;
    v18 = *(v0 + 192);
    *(v0 + 432) = *(v0 + 176);
    *(v0 + 448) = v18;
    sub_23B5D8AB8();
    MEMORY[0x23EE9F750](0x6376697265732820, 0xEB00000000203A65);
    sub_23B5CF1BC(v0 + 600, v0 + 640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D078, &qword_23B5DDE80);
    v19 = sub_23B5D86C8();
    MEMORY[0x23EE9F750](v19);

    MEMORY[0x23EE9F750](41, 0xE100000000000000);
    sub_23B5AC790(*(v0 + 784), *(v0 + 792));
    sub_23B5AE940(v14, v13);
    sub_23B5B260C(v0 + 144);

    sub_23B5C3308(v0 + 600, &qword_27E15D078, &qword_23B5DDE80);
    v20 = *(v0 + 904);
    v21 = *(v0 + 896);
    v22 = *(v0 + 888);
    v23 = *(v0 + 872);
    v24 = *(v0 + 824);
    free(*(v0 + 960));
    swift_unknownObjectRelease();
    (*(v21 + 8))(v20, v22);
    sub_23B5CEF3C(v23, v24);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_23B5CEC64()
{
  sub_23B5CF290(*(v0 + 864));
  v1 = *(v0 + 984);
  v2 = *(v0 + 976);
  sub_23B5D8A08();
  *(v0 + 784) = 0;
  *(v0 + 792) = 0xE000000000000000;
  MEMORY[0x23EE9F750](0xD00000000000002CLL, 0x800000023B5DF840);
  v3 = *(v0 + 224);
  *(v0 + 464) = *(v0 + 208);
  *(v0 + 480) = v3;
  v4 = *(v0 + 256);
  *(v0 + 496) = *(v0 + 240);
  *(v0 + 512) = v4;
  v5 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 144);
  *(v0 + 416) = v5;
  v6 = *(v0 + 192);
  *(v0 + 432) = *(v0 + 176);
  *(v0 + 448) = v6;
  sub_23B5D8AB8();
  MEMORY[0x23EE9F750](0x6376697265732820, 0xEB00000000203A65);
  sub_23B5CF1BC(v0 + 600, v0 + 640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D078, &qword_23B5DDE80);
  v7 = sub_23B5D86C8();
  MEMORY[0x23EE9F750](v7);

  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  sub_23B5AC790(*(v0 + 784), *(v0 + 792));
  sub_23B5AE940(v2, v1);
  sub_23B5B260C(v0 + 144);

  sub_23B5C3308(v0 + 600, &qword_27E15D078, &qword_23B5DDE80);
  v8 = *(v0 + 904);
  v9 = *(v0 + 896);
  v10 = *(v0 + 888);
  v11 = *(v0 + 872);
  v12 = *(v0 + 824);
  free(*(v0 + 960));
  swift_unknownObjectRelease();
  (*(v9 + 8))(v8, v10);
  sub_23B5CEF3C(v11, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t type metadata accessor for WAPath(uint64_t a1)
{
  result = qword_27E15D080;
  if (!qword_27E15D080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B5CEF3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D068, &qword_23B5DDE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5CF054(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_23B5CF10C(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_23B5CF054(a1, &a1[a2]);
  }

  sub_23B5D8368();
  swift_allocObject();
  sub_23B5D8328();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_23B5D8408();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_23B5CF1BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D078, &qword_23B5DDE80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5CF22C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WAPerformanceReport(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5CF290(uint64_t a1)
{
  v2 = type metadata accessor for WAPerformanceReport(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B5CF2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B5CF37C(uint64_t a1)
{
  result = type metadata accessor for WAEndpoint(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WAPerformanceReport(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static ListenerProvider<>.wifiAware(_:active:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for WAPublisherListener.Action(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B5CF830(a1, v12, type metadata accessor for WAPublisherListener.Action);
  if (a4)
  {
    a2 = sub_23B5D8DA8();
    a3 = v13;
  }

  sub_23B5CF898(v12, a5, type metadata accessor for WAPublisherListener.Action);
  result = type metadata accessor for WAPublisherListener(0);
  v15 = (a5 + *(result + 20));
  *v15 = a2;
  v15[1] = a3;
  return result;
}

uint64_t WAPublisherListener.service.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WAPublisherListener.Devices(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v1;
  v13 = v1[1];
  v14 = type metadata accessor for WAPublisherListener.Action(0);
  sub_23B5CF830(v1 + *(v14 + 24), v7, type metadata accessor for WAPublisherListener.Devices);
  sub_23B5CF898(v7, v4, type metadata accessor for WADevicesAgentInterface.Devices);
  v15 = (v1 + *(type metadata accessor for WAPublisherListener(0) + 20));
  v17 = *v15;
  v16 = v15[1];
  v18 = *(v1 + *(v14 + 28));
  *v11 = v12;
  v11[1] = v13;
  sub_23B5CF898(v4, v11 + v9[7], type metadata accessor for WADevicesAgentInterface.Devices);
  v19 = (v11 + v9[8]);
  *v19 = v17;
  v19[1] = v16;
  *(v11 + v9[9]) = v18 & 1;
  swift_bridgeObjectRetain_n();
  v20 = WAListenerAgentInterface.DescriptorToAgent.encode()();
  v22 = v21;
  sub_23B5B182C(v20, v21);
  sub_23B5D84E8();
  sub_23B5CD480(v20, v22);
  return sub_23B5CF900(v11);
}

uint64_t sub_23B5CF830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B5CF898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B5CF900(uint64_t a1)
{
  v2 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WAPublisherListener.configureParameters(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D0C0, "(+");
  MEMORY[0x28223BE20](v1 - 8);
  sub_23B5D8518();
  sub_23B5D84F8();
  sub_23B5D8558();
  v2 = *(v0 + *(type metadata accessor for WAPublisherListener.Action(0) + 28));
  if (v2 != 2)
  {
    v4 = v2 & 1;
    NWParameters.wifiAware.setter(&v4);
  }

  return sub_23B5D8508();
}

uint64_t static WAPublisherListener.Action.connecting(to:from:datapath:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a3;
  v9 = type metadata accessor for WAPublisherListener.Action(0);
  sub_23B5CF830(a2, a4 + *(v9 + 24), type metadata accessor for WAPublisherListener.Devices);
  *a4 = v7;
  a4[1] = v6;
  *(a4 + *(v9 + 28)) = v8;
}

uint64_t sub_23B5CFB0C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = type metadata accessor for WAPublisherListener.Devices(0);
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23B5CFBA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for WAPublisherListener.Devices(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_23B5CF830(v7, a4, type metadata accessor for WAPublisherListener.Devices);
}

uint64_t static WAPublisherListener.Devices.selected<A>(_:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X7>)
{
  v5 = sub_23B5CFF68(sub_23B5CFCBC, 0, a1, MEMORY[0x277D84C58], MEMORY[0x277D84A98], a2, MEMORY[0x277D84AC0], a4);
  v6 = sub_23B5D0FB8(v5);

  *a3 = v6;
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

void *sub_23B5CFCBC@<X0>(void *result@<X0>, _WORD *a2@<X8>)
{
  if (*result >> 16)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_23B5CFCD4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v36 = MEMORY[0x277D84F90];
  sub_23B5C1548(0, v2, 0);
  v3 = v1 + 64;
  v4 = v36;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  v8 = (63 - v6) >> 6;
  v24 = v2;
  v25 = v1;
  if (v2)
  {

    v10 = 0;
    v11 = 0;
    while (v7)
    {
LABEL_10:
      v13 = *(v1 + 56) + 72 * (__clz(__rbit64(v7)) | (v10 << 6));
      v14 = *(v13 + 64);
      v16 = *(v13 + 32);
      v15 = *(v13 + 48);
      v32 = *(v13 + 16);
      v17 = *v13;
      v33 = v16;
      v34 = v15;
      v31 = v17;
      v35 = v14;
      v28 = v17;
      v29 = v32;
      v26 = v16;
      v27 = v15;
      result = sub_23B5AF43C(&v31, v30);
      if (v29 == 1)
      {
        goto LABEL_32;
      }

      if (v28 >> 16)
      {
        goto LABEL_30;
      }

      v31 = v28;
      v32 = v29;
      v33 = v26;
      v34 = v27;
      v35 = v14;
      result = sub_23B5AFD30(&v31);
      v36 = v4;
      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_23B5C1548((v18 > 1), v19 + 1, 1);
        v4 = v36;
      }

      ++v11;
      v7 &= v7 - 1;
      *(v4 + 16) = v19 + 1;
      *(v4 + 2 * v19 + 32) = v28;
      v1 = v25;
      if (v11 == v24)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_32;
      }

      v7 = *(v3 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v10 = 0;
LABEL_17:
    if (v7)
    {
      goto LABEL_22;
    }

LABEL_18:
    while (1)
    {
      v20 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v20 >= v8)
      {

        return v4;
      }

      v7 = *(v3 + 8 * v20);
      ++v10;
      if (v7)
      {
        v10 = v20;
LABEL_22:
        while (1)
        {
          v21 = *(*(v1 + 56) + 72 * (__clz(__rbit64(v7)) | (v10 << 6)));
          if (v21 >> 16)
          {
            goto LABEL_31;
          }

          v36 = v4;
          v23 = *(v4 + 16);
          v22 = *(v4 + 24);
          if (v23 >= v22 >> 1)
          {
            result = sub_23B5C1548((v22 > 1), v23 + 1, 1);
            v4 = v36;
          }

          v7 &= v7 - 1;
          *(v4 + 16) = v23 + 1;
          *(v4 + 2 * v23 + 32) = v21;
          v1 = v25;
          if (!v7)
          {
            goto LABEL_18;
          }
        }
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23B5CFF68(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_23B5D8938();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_23B5D87D8();
  v63 = sub_23B5D8A78();
  v58 = sub_23B5D8A88();
  sub_23B5D8A58();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_23B5D87C8();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_23B5D8948();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_23B5D8A68();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_23B5D8948();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_23B5D8A68();
      sub_23B5D8948();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t static WAPublisherListener.Devices.selected(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23B5CFCD4(a1);
  v4 = sub_23B5D0FB8(v3);

  *a2 = v4;
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static WAPublisherListener.Devices.matching(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23B5D0778()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D0C0, "(+");
  MEMORY[0x28223BE20](v1 - 8);
  sub_23B5D8518();
  sub_23B5D84F8();
  sub_23B5D8558();
  v2 = *(v0 + *(type metadata accessor for WAPublisherListener.Action(0) + 28));
  if (v2 != 2)
  {
    v4 = v2 & 1;
    NWParameters.wifiAware.setter(&v4);
  }

  return sub_23B5D8508();
}

uint64_t sub_23B5D0850(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x23EE9FD10](*(*v2 + 40), a2, 2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 2 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_23B5D0B60(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23B5D0938(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D100, &qword_23B5DDF58);
  result = sub_23B5D89B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      result = MEMORY[0x23EE9FD10](*(v5 + 40), v17, 2);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 2 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23B5D0B60(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B5D0938(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_23B5D0C84();
      a2 = v7;
      goto LABEL_12;
    }

    sub_23B5D0DC4(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x23EE9FD10](*(*v3 + 40), v4, 2);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 2 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 2 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B5D8C98();
  __break(1u);
  return result;
}

void *sub_23B5D0C84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D100, &qword_23B5DDF58);
  v2 = *v0;
  v3 = sub_23B5D89A8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_23B5D0DC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D100, &qword_23B5DDF58);
  result = sub_23B5D89B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 2 * (v13 | (v6 << 6)));
      result = MEMORY[0x23EE9FD10](*(v5 + 40), v16, 2);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 2 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_23B5D0FB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23EE9F8F0](v2, MEMORY[0x277D84C58], MEMORY[0x277D84C68]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_23B5D0850(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_23B5D1054(uint64_t a1)
{
  result = type metadata accessor for WAPublisherListener.Action(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23B5D10F0(uint64_t a1)
{
  type metadata accessor for WAPublisherListener.Devices(319);
  if (v1 <= 0x3F)
  {
    sub_23B5D118C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B5D118C()
{
  if (!qword_27E15D0E8)
  {
    v0 = sub_23B5D8938();
    if (!v1)
    {
      atomic_store(v0, &qword_27E15D0E8);
    }
  }
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

uint64_t sub_23B5D12E8(uint64_t a1)
{
  result = type metadata accessor for WADevicesAgentInterface.Devices(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static BrowserProvider<>.wifiAware(_:active:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for WASubscriberBrowser.Action(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B5D1850(a1, v12, type metadata accessor for WASubscriberBrowser.Action);
  if (a4)
  {
    a2 = sub_23B5D8DA8();
    a3 = v13;
  }

  sub_23B5D18B8(v12, a5, type metadata accessor for WASubscriberBrowser.Action);
  result = type metadata accessor for WASubscriberBrowser(0);
  v15 = (a5 + *(result + 20));
  *v15 = a2;
  v15[1] = a3;
  return result;
}

uint64_t WASubscriberBrowser.makeDescriptor()@<X0>(void *a1@<X8>)
{
  v32 = a1;
  v2 = sub_23B5D85E8();
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WADevicesAgentInterface.Devices(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WASubscriberBrowser.Devices(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *v1;
  v15 = v1[1];
  v16 = type metadata accessor for WASubscriberBrowser.Action(0);
  sub_23B5D1850(v1 + *(v16 + 24), v9, type metadata accessor for WASubscriberBrowser.Devices);
  sub_23B5D18B8(v9, v6, type metadata accessor for WADevicesAgentInterface.Devices);
  v17 = (v1 + *(type metadata accessor for WASubscriberBrowser(0) + 20));
  v19 = *v17;
  v18 = v17[1];
  v20 = *(v16 + 28);
  v21 = v14;
  v22 = *(v1 + v20);
  *v13 = v14;
  v13[1] = v15;
  sub_23B5D18B8(v6, v13 + v11[7], type metadata accessor for WADevicesAgentInterface.Devices);
  v23 = (v13 + v11[8]);
  *v23 = v19;
  v23[1] = v18;
  *(v13 + v11[9]) = v22 & 1;
  swift_bridgeObjectRetain_n();
  v24 = WABrowserAgentInterface.DescriptorToAgent.encode()();
  v26 = v25;
  v27 = v32;
  *v32 = v21;
  v27[1] = v15;
  v27[2] = v24;
  v27[3] = v25;
  sub_23B5B182C(v24, v25);
  sub_23B5D85D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D138, &unk_23B5DDF70);
  sub_23B5D85F8();
  sub_23B5CD480(v24, v26);
  sub_23B5D1920(v13);
  v28 = *MEMORY[0x277CD90A0];
  v29 = sub_23B5D8608();
  return (*(*(v29 - 8) + 104))(v27, v28, v29);
}

uint64_t sub_23B5D1850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B5D18B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B5D1920(uint64_t a1)
{
  v2 = type metadata accessor for WABrowserAgentInterface.DescriptorToAgent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WASubscriberBrowser.makeEndpoint(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B5D84D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_23B5D8618();
  v7 = sub_23B5D84C8();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v9 >> 60 == 15)
  {
    if (qword_27E15C2F8 != -1)
    {
      swift_once();
    }

    v10 = sub_23B5D84B8();
    __swift_project_value_buffer(v10, qword_27E15D450);
    sub_23B5AC790(0xD000000000000020, 0x800000023B5DF8D0);
    v11 = type metadata accessor for WAEndpoint(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    static WABrowserAgentInterface.AgentToEndpoint.decode(from:)(v7, v9);
    if (v1)
    {
      return sub_23B5CD480(v7, v9);
    }

    else
    {
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v23 = v29;
      v18 = v24;
      v19 = v25;
      v13 = v24;
      *(a1 + 24) = &type metadata for WASubscribableService;
      *(a1 + 32) = sub_23B5CCF74();
      *a1 = v13;
      v14 = type metadata accessor for WAEndpoint(0);

      sub_23B5AF43C(&v19, v17);
      sub_23B5D8618();
      sub_23B5CD480(v7, v9);
      sub_23B5B0098(&v18);
      v15 = v19;
      *(a1 + 56) = v20;
      *(a1 + 72) = v21;
      *(a1 + 88) = v22;
      *(a1 + 104) = v23;
      *(a1 + 40) = v15;
      return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
    }
  }
}

uint64_t WASubscriberBrowser.configureParameters(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D0C0, "(+");
  MEMORY[0x28223BE20](v4 - 8);
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    sub_23B5D8578();
    swift_allocObject();
    v5 = sub_23B5D8568();
  }

  sub_23B5D8518();
  sub_23B5D84F8();
  sub_23B5D8558();
  v6 = *(v2 + *(type metadata accessor for WASubscriberBrowser.Action(0) + 28));
  if (v6 != 2)
  {
    v8 = v6 & 1;
    NWParameters.wifiAware.setter(&v8);
  }

  sub_23B5D8508();
  return v5;
}

uint64_t static WASubscriberBrowser.Action.connecting(to:from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = type metadata accessor for WASubscriberBrowser.Action(0);
  sub_23B5D1850(a1, a3 + *(v7 + 24), type metadata accessor for WASubscriberBrowser.Devices);
  *a3 = v6;
  a3[1] = v5;
  *(a3 + *(v7 + 28)) = 2;
}

uint64_t sub_23B5D1E3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = type metadata accessor for WASubscriberBrowser.Devices(0);
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23B5D1ED4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for WASubscriberBrowser.Devices(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_23B5D1850(v7, a4, type metadata accessor for WASubscriberBrowser.Devices);
}

uint64_t static WASubscriberBrowser.Devices.selected<A>(_:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X7>, uint64_t *a4@<X8>)
{
  v5 = sub_23B5CFF68(sub_23B5CFCBC, 0, a1, MEMORY[0x277D84C58], MEMORY[0x277D84A98], a2, MEMORY[0x277D84AC0], a3);
  v6 = sub_23B5D0FB8(v5);

  *a4 = v6;
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static WASubscriberBrowser.Devices.selected(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23B5CFCD4(a1);
  v4 = sub_23B5D0FB8(v3);

  *a2 = v4;
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static WASubscriberBrowser.Devices.matching(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C428, &qword_23B5DDF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for WADevicesAgentInterface.Devices(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_23B5D2114()
{
  result = qword_27E15D140;
  if (!qword_27E15D140)
  {
    type metadata accessor for WAEndpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D140);
  }

  return result;
}

uint64_t sub_23B5D2194(uint64_t a1)
{
  result = type metadata accessor for WASubscriberBrowser.Action(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23B5D2230(uint64_t a1)
{
  type metadata accessor for WASubscriberBrowser.Devices(319);
  if (v1 <= 0x3F)
  {
    sub_23B5D22CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B5D22CC()
{
  if (!qword_27E15D168)
  {
    v0 = sub_23B5D8938();
    if (!v1)
    {
      atomic_store(v0, &qword_27E15D168);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_23B5D2450(uint64_t a1)
{
  v2 = sub_23B5D2A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D248C(uint64_t a1)
{
  v2 = sub_23B5D2A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5D24C8()
{
  if (*v0)
  {
    return 0x656D69746C616572;
  }

  else
  {
    return 1802270050;
  }
}

uint64_t sub_23B5D24FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802270050 && a2 == 0xE400000000000000;
  if (v5 || (sub_23B5D8C88() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D69746C616572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23B5D8C88();

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

uint64_t sub_23B5D25D8(uint64_t a1)
{
  v2 = sub_23B5D2984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D2614(uint64_t a1)
{
  v2 = sub_23B5D2984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5D2650(uint64_t a1)
{
  v2 = sub_23B5D29D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D268C(uint64_t a1)
{
  v2 = sub_23B5D29D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPerformanceMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D180, "@*");
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D188, &qword_23B5DE048);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D190, &qword_23B5DE050);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D2984();
  sub_23B5D8D78();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_23B5D29D8();
    v14 = v18;
    sub_23B5D8BD8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_23B5D2A2C();
    sub_23B5D8BD8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_23B5D2984()
{
  result = qword_27E15D198;
  if (!qword_27E15D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D198);
  }

  return result;
}

unint64_t sub_23B5D29D8()
{
  result = qword_27E15D1A0;
  if (!qword_27E15D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D1A0);
  }

  return result;
}

unint64_t sub_23B5D2A2C()
{
  result = qword_27E15D1A8;
  if (!qword_27E15D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D1A8);
  }

  return result;
}

uint64_t WAPerformanceMode.hashValue.getter()
{
  v1 = *v0;
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](v1);
  return sub_23B5D8D58();
}

uint64_t WAPerformanceMode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1B0, &qword_23B5DE058);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1B8, &qword_23B5DE060);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1C0, &unk_23B5DE068);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D2984();
  v12 = v31;
  sub_23B5D8D68();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_23B5D8BC8();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_23B5AE6E0();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_23B5D8A38();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4B8, &qword_23B5D9630);
      *v22 = &type metadata for WAPerformanceMode;
      sub_23B5D8B48();
      sub_23B5D8A28();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_23B5D29D8();
        sub_23B5D8B38();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_23B5D2A2C();
        sub_23B5D8B38();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_23B5D3004(uint64_t a1)
{
  v2 = sub_23B5D3850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D3040(uint64_t a1)
{
  v2 = sub_23B5D3850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5D307C(uint64_t a1)
{
  v2 = sub_23B5D38A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D30B8(uint64_t a1)
{
  v2 = sub_23B5D38A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5D30F4()
{
  v1 = 0x6F66664574736562;
  if (*v0)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_23B5D3180@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B5D6428(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B5D31A8(uint64_t a1)
{
  v2 = sub_23B5D3754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D31E4(uint64_t a1)
{
  v2 = sub_23B5D3754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5D3220(uint64_t a1)
{
  v2 = sub_23B5D37FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D325C(uint64_t a1)
{
  v2 = sub_23B5D37FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B5D3298(uint64_t a1)
{
  v2 = sub_23B5D37A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D32D4(uint64_t a1)
{
  v2 = sub_23B5D37A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAAccessCategory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1C8, &qword_23B5DE078);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1D0, &qword_23B5DE080);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1D8, &qword_23B5DE088);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1E0, &qword_23B5DE090);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D1E8, &qword_23B5DE098);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D3754();
  sub_23B5D8D78();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_23B5D37FC();
      v18 = v27;
      sub_23B5D8BD8();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_23B5D37A8();
      v18 = v30;
      sub_23B5D8BD8();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_23B5D3850();
    v18 = v24;
    sub_23B5D8BD8();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_23B5D38A4();
  sub_23B5D8BD8();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_23B5D3754()
{
  result = qword_27E15D1F0;
  if (!qword_27E15D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D1F0);
  }

  return result;
}

unint64_t sub_23B5D37A8()
{
  result = qword_27E15D1F8;
  if (!qword_27E15D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D1F8);
  }

  return result;
}

unint64_t sub_23B5D37FC()
{
  result = qword_27E15D200;
  if (!qword_27E15D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D200);
  }

  return result;
}

unint64_t sub_23B5D3850()
{
  result = qword_27E15D208;
  if (!qword_27E15D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D208);
  }

  return result;
}

unint64_t sub_23B5D38A4()
{
  result = qword_27E15D210;
  if (!qword_27E15D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D210);
  }

  return result;
}

uint64_t WAAccessCategory.hashValue.getter()
{
  v1 = *v0;
  sub_23B5D8D18();
  MEMORY[0x23EE9FD40](v1);
  return sub_23B5D8D58();
}

uint64_t WAAccessCategory.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D218, &qword_23B5DE0A0);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D220, &qword_23B5DE0A8);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D228, &qword_23B5DE0B0);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D230, &qword_23B5DE0B8);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D238, &qword_23B5DE0C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_23B5D3754();
  v15 = v46;
  sub_23B5D8D68();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_23B5D8BC8();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_23B5AE714();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_23B5D8A38();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15C4B8, &qword_23B5D9630);
      *v28 = &type metadata for WAAccessCategory;
      sub_23B5D8B48();
      sub_23B5D8A28();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_23B5D3850();
        v32 = v35;
        sub_23B5D8B38();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_23B5D38A4();
        v25 = v35;
        sub_23B5D8B38();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_0(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_23B5D37FC();
      v31 = v35;
      sub_23B5D8B38();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_23B5D37A8();
      v33 = v35;
      sub_23B5D8B38();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

uint64_t WAPerformanceReport.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B5D8448();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WAPerformanceReport.localTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WAPerformanceReport(0) + 20);
  v4 = sub_23B5D8AA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WAPerformanceReport(uint64_t a1)
{
  result = qword_27E15D2F8;
  if (!qword_27E15D2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double WAPerformanceReport.throughputCapacityRatio.getter()
{
  v1 = type metadata accessor for WAPerformanceReport(0);
  v3 = v0 + *(v1 + 28);
  if ((*(v3 + 8) & 1) == 0)
  {
    v4 = v0 + *(v1 + 24);
    if ((*(v4 + 8) & 1) == 0)
    {
      return *v3 / *v4;
    }
  }

  return result;
}

uint64_t WAPerformanceReport.transmitLatency.getter()
{
  type metadata accessor for WAPerformanceReport(0);
}

uint64_t sub_23B5D4268()
{
  if (*v0)
  {
    return 0x65676172657661;
  }

  else
  {
    return 0x6143737365636361;
  }
}

uint64_t sub_23B5D42B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6143737365636361 && a2 == 0xEE0079726F676574;
  if (v6 || (sub_23B5D8C88() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65676172657661 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23B5D8C88();

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

uint64_t sub_23B5D4394(uint64_t a1)
{
  v2 = sub_23B5D45D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D43D0(uint64_t a1)
{
  v2 = sub_23B5D45D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPerformanceReport.TransmitLatencyMetrics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D240, &qword_23B5DE0C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v12 = *(v1 + 2);
  v13 = v9;
  v17 = v1[24];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D45D8();
  sub_23B5D8D78();
  LOBYTE(v14) = v8;
  v18 = 0;
  sub_23B5D462C();
  sub_23B5D8C28();
  if (!v2)
  {
    v14 = v13;
    v15 = v12;
    v16 = v17;
    v18 = 1;
    sub_23B5D8C08();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_23B5D45D8()
{
  result = qword_27E15D248;
  if (!qword_27E15D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D248);
  }

  return result;
}

unint64_t sub_23B5D462C()
{
  result = qword_27E15D250;
  if (!qword_27E15D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D250);
  }

  return result;
}

uint64_t WAPerformanceReport.TransmitLatencyMetrics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D258, &qword_23B5DE0D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D45D8();
  sub_23B5D8D68();
  if (!v2)
  {
    v15 = 0;
    sub_23B5D4860();
    sub_23B5D8B98();
    v9 = v13;
    v15 = 1;
    sub_23B5D8B78();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    v11 = v13;
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_23B5D4860()
{
  result = qword_27E15D260;
  if (!qword_27E15D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D260);
  }

  return result;
}

unint64_t sub_23B5D48E4()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x74696D736E617274;
  if (v1 != 4)
  {
    v3 = 0x74536C616E676973;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  v5 = 0x6D69546C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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
    return v4;
  }
}

uint64_t sub_23B5D49D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B5D65AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B5D4A04(uint64_t a1)
{
  v2 = sub_23B5D4DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5D4A40(uint64_t a1)
{
  v2 = sub_23B5D4DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WAPerformanceReport.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D268, &qword_23B5DE0D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D4DB8();
  sub_23B5D8D78();
  v16 = 0;
  sub_23B5D8448();
  sub_23B5D542C(&qword_27E15D278, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_23B5D8C28();
  if (!v2)
  {
    v9 = type metadata accessor for WAPerformanceReport(0);
    v15 = 1;
    sub_23B5D8AA8();
    sub_23B5D542C(&qword_27E15D280, MEMORY[0x277D858F8], MEMORY[0x277D85900]);
    sub_23B5D8C28();
    v14 = 2;
    sub_23B5D8BF8();
    v13 = 3;
    sub_23B5D8BF8();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D288, &qword_23B5DE0E0);
    sub_23B5D5474(&qword_27E15D290, sub_23B5D462C, sub_23B5D4E0C, MEMORY[0x277D83508]);
    sub_23B5D8C28();
    v11[14] = 5;
    sub_23B5D8BF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23B5D4DB8()
{
  result = qword_27E15D270;
  if (!qword_27E15D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D270);
  }

  return result;
}

unint64_t sub_23B5D4E0C()
{
  result = qword_27E15D298;
  if (!qword_27E15D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D298);
  }

  return result;
}

uint64_t WAPerformanceReport.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_23B5D8AA8();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23B5D8448();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D2A0, &qword_23B5DE0E8);
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v29 - v8;
  v10 = type metadata accessor for WAPerformanceReport(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5D4DB8();
  v35 = v9;
  v13 = v37;
  sub_23B5D8D68();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v14 = v5;
  v15 = v31;
  v16 = v32;
  v44 = 0;
  sub_23B5D542C(&qword_27E15D2A8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_23B5D8B98();
  v17 = *(v30 + 32);
  v37 = v6;
  v17(v12, v34);
  v43 = 1;
  sub_23B5D542C(&qword_27E15D2B0, MEMORY[0x277D858F8], MEMORY[0x277D85918]);
  sub_23B5D8B98();
  (*(v15 + 32))(&v12[v10[5]], v14, v16);
  v42 = 2;
  v18 = sub_23B5D8B68();
  v19 = &v12[v10[6]];
  *v19 = v18;
  v19[8] = v20 & 1;
  v41 = 3;
  v21 = sub_23B5D8B68();
  v22 = &v12[v10[7]];
  *v22 = v21;
  v22[8] = v23 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D288, &qword_23B5DE0E0);
  v40 = 4;
  sub_23B5D5474(&qword_27E15D2B8, sub_23B5D4860, sub_23B5D5504, MEMORY[0x277D83528]);
  sub_23B5D8B98();
  *&v12[v10[8]] = v38;
  v39 = 5;
  v24 = sub_23B5D8B68();
  v26 = v25;
  (*(v33 + 8))(v35, v36);
  v27 = &v12[v10[9]];
  *v27 = v24;
  v27[8] = v26 & 1;
  sub_23B5D5558(v12, v29);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23B5CF290(v12);
}

uint64_t sub_23B5D542C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B5D5474(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E15D288, &qword_23B5DE0E0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B5D5504()
{
  result = qword_27E15D2C0;
  if (!qword_27E15D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D2C0);
  }

  return result;
}

uint64_t sub_23B5D5558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WAPerformanceReport(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B5D55C0()
{
  result = qword_27E15D2C8;
  if (!qword_27E15D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D2C8);
  }

  return result;
}

unint64_t sub_23B5D5648()
{
  result = qword_27E15D2E0;
  if (!qword_27E15D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D2E0);
  }

  return result;
}

uint64_t sub_23B5D56CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_23B5D5798(uint64_t a1)
{
  sub_23B5D8448();
  if (v1 <= 0x3F)
  {
    sub_23B5D8AA8();
    if (v2 <= 0x3F)
    {
      sub_23B5D5850();
      if (v3 <= 0x3F)
      {
        sub_23B5D58A0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23B5D5850()
{
  if (!qword_27E15D308)
  {
    v0 = sub_23B5D8938();
    if (!v1)
    {
      atomic_store(v0, &qword_27E15D308);
    }
  }
}

void sub_23B5D58A0(uint64_t a1)
{
  if (!qword_27E15D310)
  {
    sub_23B5D5904();
    v1 = sub_23B5D8648();
    if (!v2)
    {
      atomic_store(v1, &qword_27E15D310);
    }
  }
}

unint64_t sub_23B5D5904()
{
  result = qword_27E15D318;
  if (!qword_27E15D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D318);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23B5D596C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[25])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23B5D59B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WAPerformanceReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WAPerformanceReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23B5D5BEC()
{
  result = qword_27E15D320;
  if (!qword_27E15D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D320);
  }

  return result;
}

unint64_t sub_23B5D5C44()
{
  result = qword_27E15D328;
  if (!qword_27E15D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D328);
  }

  return result;
}

unint64_t sub_23B5D5C9C()
{
  result = qword_27E15D330;
  if (!qword_27E15D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D330);
  }

  return result;
}

unint64_t sub_23B5D5CF4()
{
  result = qword_27E15D338;
  if (!qword_27E15D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D338);
  }

  return result;
}

unint64_t sub_23B5D5D4C()
{
  result = qword_27E15D340;
  if (!qword_27E15D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D340);
  }

  return result;
}

unint64_t sub_23B5D5DA4()
{
  result = qword_27E15D348;
  if (!qword_27E15D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D348);
  }

  return result;
}

unint64_t sub_23B5D5DFC()
{
  result = qword_27E15D350;
  if (!qword_27E15D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D350);
  }

  return result;
}

unint64_t sub_23B5D5E54()
{
  result = qword_27E15D358;
  if (!qword_27E15D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D358);
  }

  return result;
}

unint64_t sub_23B5D5EAC()
{
  result = qword_27E15D360;
  if (!qword_27E15D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D360);
  }

  return result;
}

unint64_t sub_23B5D5F04()
{
  result = qword_27E15D368;
  if (!qword_27E15D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D368);
  }

  return result;
}

unint64_t sub_23B5D5F5C()
{
  result = qword_27E15D370;
  if (!qword_27E15D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D370);
  }

  return result;
}

unint64_t sub_23B5D5FB4()
{
  result = qword_27E15D378;
  if (!qword_27E15D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D378);
  }

  return result;
}

unint64_t sub_23B5D600C()
{
  result = qword_27E15D380;
  if (!qword_27E15D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D380);
  }

  return result;
}

unint64_t sub_23B5D6064()
{
  result = qword_27E15D388;
  if (!qword_27E15D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D388);
  }

  return result;
}

unint64_t sub_23B5D60BC()
{
  result = qword_27E15D390;
  if (!qword_27E15D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D390);
  }

  return result;
}

unint64_t sub_23B5D6114()
{
  result = qword_27E15D398;
  if (!qword_27E15D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D398);
  }

  return result;
}

unint64_t sub_23B5D616C()
{
  result = qword_27E15D3A0;
  if (!qword_27E15D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3A0);
  }

  return result;
}

unint64_t sub_23B5D61C4()
{
  result = qword_27E15D3A8;
  if (!qword_27E15D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3A8);
  }

  return result;
}

unint64_t sub_23B5D621C()
{
  result = qword_27E15D3B0;
  if (!qword_27E15D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3B0);
  }

  return result;
}

unint64_t sub_23B5D6274()
{
  result = qword_27E15D3B8;
  if (!qword_27E15D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3B8);
  }

  return result;
}

unint64_t sub_23B5D62CC()
{
  result = qword_27E15D3C0;
  if (!qword_27E15D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3C0);
  }

  return result;
}

unint64_t sub_23B5D6324()
{
  result = qword_27E15D3C8;
  if (!qword_27E15D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3C8);
  }

  return result;
}

unint64_t sub_23B5D637C()
{
  result = qword_27E15D3D0;
  if (!qword_27E15D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3D0);
  }

  return result;
}

unint64_t sub_23B5D63D4()
{
  result = qword_27E15D3D8;
  if (!qword_27E15D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3D8);
  }

  return result;
}

uint64_t sub_23B5D6428(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F66664574736562 && a2 == 0xEA00000000007472;
  if (v4 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023B5DF900 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023B5DF920 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23B5D8C88();

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

uint64_t sub_23B5D65AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_23B5D8C88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69546C61636F6CLL && a2 == 0xEE00706D61747365 || (sub_23B5D8C88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023B5DF940 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023B5DF960 == a2 || (sub_23B5D8C88() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696D736E617274 && a2 == 0xEF79636E6574614CLL || (sub_23B5D8C88() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74536C616E676973 && a2 == 0xEE006874676E6572)
  {

    return 5;
  }

  else
  {
    v6 = sub_23B5D8C88();

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

uint64_t sub_23B5D67E0(__int128 *a1)
{
  v2 = v1;
  v3 = a1[5];
  v20 = a1[4];
  v21 = v3;
  v4 = a1[7];
  v22 = a1[6];
  v23 = v4;
  v5 = a1[1];
  v16 = *a1;
  v17 = v5;
  v6 = a1[3];
  v18 = a1[2];
  v19 = v6;
  swift_defaultActor_initialize();
  v7 = sub_23B5D6984(v23, *(&v23 + 1));
  if (v7)
  {
    v8 = v7;
    if (*(&v17 + 1))
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v10 = [objc_opt_self() performanceFor:BYTE8(v22) datapathType:v9 peerMacAddress:{v7, v16, v17}];

    sub_23B5B260C(&v16);
    *(v2 + 112) = v10;
  }

  else
  {
    sub_23B5B260C(&v16);
    if (qword_27E15C308 != -1)
    {
      swift_once();
    }

    v11 = sub_23B5D84B8();
    __swift_project_value_buffer(v11, qword_27E15D480);
    v12 = sub_23B5D8498();
    v13 = sub_23B5D8908();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23B5AA000, v12, v13, "Could not determine peer WiFi MAC address", v14, 2u);
      MEMORY[0x23EEA0310](v14, -1, -1);
    }

    type metadata accessor for WiFiAwarePerformancePrivate();
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

id sub_23B5D6984(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 6)
      {
        goto LABEL_8;
      }

      return 0;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    if (v2)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 6)
    {
      return 0;
    }

LABEL_8:
    while (v2 != 2)
    {
      if (v2 != 1)
      {
        v20 = vdupq_n_s64(a1);
        *v26.i8 = vmovn_s32(vuzp1q_s32(vshlq_u64(v20, xmmword_23B5DED10), vshlq_u64(v20, xmmword_23B5DED00)));
        v18 = a1;
        v19 = a1 >> 8;
        goto LABEL_23;
      }

      v7 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_26;
      }

      v8 = sub_23B5D8338();
      if (!v8)
      {
        goto LABEL_31;
      }

      v9 = v8;
      v10 = sub_23B5D8358();
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_28;
      }

      v11 = v7 - v10 + v9;
      a1 = sub_23B5D8348();
      if (v11)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_25;
      }

      if (HIDWORD(a1) - a1 != 6)
      {
        return 0;
      }
    }

    v14 = *(a1 + 16);
    v15 = sub_23B5D8338();
    if (!v15)
    {
      goto LABEL_29;
    }

    v16 = v15;
    v17 = sub_23B5D8358();
    if (!__OFSUB__(v14, v17))
    {
      v11 = v14 - v17 + v16;
      sub_23B5D8348();
      if (!v11)
      {
        goto LABEL_30;
      }

LABEL_21:
      v18 = *v11;
      LOBYTE(v19) = *(v11 + 1);
      v12.i32[0] = *(v11 + 2);
      v26 = vmovl_u8(v12);
LABEL_23:
      v21 = objc_allocWithZone(MEMORY[0x277D7BB10]);
      v22 = vmovl_u16((v26.i64[0] & 0xFF00FF00FF00FFLL));
      v23.i64[0] = v22.u32[0];
      v23.i64[1] = v22.u32[1];
      v24 = v23;
      v23.i64[0] = v22.u32[2];
      v23.i64[1] = v22.u32[3];
      v25 = vorrq_s8(vshlq_u64(v24, xmmword_23B5DED30), vshlq_u64(v23, xmmword_23B5DED20));
      return [v21 initWithAddress_];
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_23B5D8348();
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_23B5D8348();
  __break(1u);
  return result;
}

uint64_t sub_23B5D6B70@<X0>(int64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23B5D8AA8();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B5D8448();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v127 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D3E0, &qword_23B5DED98);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v121 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v111 - v15;
  MEMORY[0x28223BE20](v14);
  v129 = &v111 - v17;
  v128 = sub_23B5C9450(MEMORY[0x277D84F90]);
  v18 = [v2 txLatency];
  v125 = v2;
  v126 = v7;
  v122 = v9;
  v123 = v8;
  v120 = v16;
  if (v18)
  {
    v19 = v18;
    v117 = v5;
    v118 = v4;
    v119 = a1;
    v20 = sub_23B5BCA08();
    sub_23B5D7894(&qword_27E15CD48, sub_23B5BCA08, MEMORY[0x277D85378]);
    v124 = v20;
    v21 = sub_23B5D8628();

    v22 = v21;
    if ((v21 & 0xC000000000000001) != 0)
    {
      a1 = 0;
      v23 = 0;
      v5 = 0;
      v21 = sub_23B5D8AC8() | 0x8000000000000000;
    }

    else
    {
      v24 = -1 << *(v21 + 32);
      v23 = ~v24;
      a1 = v21 + 64;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v5 = v26 & *(v21 + 64);
    }

    v116 = v22;

    v27 = 0;
    v115 = v23;
    v28 = (v23 + 64) >> 6;
    while (1)
    {
      while (1)
      {
        v29 = v27;
        if (v21 < 0)
        {
          v35 = sub_23B5D8AD8();
          if (!v35 || (v37 = v36, v130 = v35, swift_dynamicCast(), v4 = v131, v130 = v37, swift_dynamicCast(), v34 = v131, !v4))
          {
LABEL_47:
            sub_23B5D78DC(v21);

            a1 = v119;
            v4 = v118;
            v5 = v117;
            v2 = v125;
            v7 = v126;
            goto LABEL_48;
          }
        }

        else
        {
          v30 = v27;
          v31 = v5;
          if (!v5)
          {
            while (1)
            {
              v27 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                break;
              }

              if (v27 >= v28)
              {
                goto LABEL_47;
              }

              v31 = *(a1 + 8 * v27);
              ++v30;
              if (v31)
              {
                goto LABEL_14;
              }
            }

            __break(1u);
            swift_once();
            v86 = sub_23B5D84B8();
            __swift_project_value_buffer(v86, qword_27E15D480);
            v131 = 0;
            v132 = 0xE000000000000000;
            sub_23B5D8A08();
            MEMORY[0x23EE9F750](0xD000000000000022, 0x800000023B5DF9E0);
            swift_getErrorValue();
            sub_23B5D8C68();
            sub_23B5AC790(v131, v132);
            sub_23B5AE940(v28, v27);

            v7 = v21;
            v2 = v125;
            v79 = v129;
            goto LABEL_50;
          }

LABEL_14:
          v5 = (v31 - 1) & v31;
          v32 = (v27 << 9) | (8 * __clz(__rbit64(v31)));
          v33 = *(*(v21 + 56) + v32);
          v4 = *(*(v21 + 48) + v32);
          v34 = v33;
          if (!v4)
          {
            goto LABEL_47;
          }
        }

        v38 = [v4 integerValue];
        v39 = v38 - 1;
        if ((v38 - 1) <= 3)
        {
          break;
        }
      }

      sub_23B5D8DA8();
      [v34 doubleValue];
      sub_23B5D8D88();
      v113 = sub_23B5D8D98();
      v114 = v40;
      v41 = v128;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131 = v41;
      v44 = sub_23B5C7B54(v39);
      v45 = *(v41 + 16);
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        result = sub_23B5D8CA8();
        __break(1u);
        return result;
      }

      if (*(v41 + 24) < v47)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      v111 = v44;
      v112 = v43;
      v53 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15CF50, &qword_23B5DD850);
      v54 = sub_23B5D8B08();
      v41 = v54;
      if (*(v53 + 16))
      {
        v55 = (v54 + 64);
        v56 = v128 + 8;
        v57 = ((1 << *(v41 + 32)) + 63) >> 6;
        if (v41 != v128 || v55 >= &v56[v57])
        {
          memmove(v55, v128 + 8, 8 * v57);
        }

        v58 = 0;
        v59 = v128;
        *(v41 + 16) = v128[2];
        v60 = 1 << *(v59 + 32);
        v61 = v59[8];
        if (v60 < 64)
        {
          v62 = ~(-1 << v60);
        }

        else
        {
          v62 = -1;
        }

        v63 = v62 & v61;
        for (i = (v60 + 63) >> 6; v63; *(v73 + 24) = v71)
        {
          v65 = __clz(__rbit64(v63));
          v63 &= v63 - 1;
          v66 = v65 | (v58 << 6);
LABEL_41:
          v69 = v128[7] + 32 * v66;
          v70 = *v69;
          v71 = *(v69 + 24);
          v72 = *(v69 + 8);
          *(*(v41 + 48) + v66) = *(v128[6] + v66);
          v73 = *(v41 + 56) + 32 * v66;
          *v73 = v70;
          *(v73 + 8) = v72;
        }

        v67 = v58;
        while (1)
        {
          v58 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            goto LABEL_65;
          }

          if (v58 >= i)
          {
            break;
          }

          v68 = v56[v58];
          ++v67;
          if (v68)
          {
            v63 = (v68 - 1) & v68;
            v66 = __clz(__rbit64(v68)) | (v58 << 6);
            goto LABEL_41;
          }
        }
      }

      v50 = v114;
      v51 = v113;
      v44 = v111;
      if (v112)
      {
LABEL_26:
        v52 = *(v41 + 56) + 32 * v44;
        *v52 = v39;
        *(v52 + 8) = v51;
        *(v52 + 16) = v50;
        *(v52 + 24) = 0;
        goto LABEL_46;
      }

LABEL_44:
      *(v41 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      *(*(v41 + 48) + v44) = v39;
      v74 = *(v41 + 56) + 32 * v44;
      *v74 = v39;
      *(v74 + 8) = v51;
      *(v74 + 16) = v50;
      *(v74 + 24) = 0;
      v75 = *(v41 + 16);
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        goto LABEL_64;
      }

      *(v41 + 16) = v77;
LABEL_46:

      v128 = v41;
    }

    v112 = v43;
    sub_23B5C742C(v47, isUniquelyReferenced_nonNull_native);
    v41 = v131;
    v48 = sub_23B5C7B54(v39);
    v49 = v43 & 1;
    LOBYTE(v43) = v112;
    if ((v112 & 1) != v49)
    {
      goto LABEL_66;
    }

    v44 = v48;
LABEL_25:
    v50 = v114;
    v51 = v113;
    if (v43)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

LABEL_48:
  v78 = *(v5 + 56);
  v79 = v129;
  v78(v129, 1, 1, v4);
  v80 = [v2 localTimestamp];
  if (v80)
  {
    v81 = v80;
    v82 = sub_23B5D8428();
    v84 = v83;

    sub_23B5D83D8();
    swift_allocObject();
    sub_23B5D83C8();
    sub_23B5D7894(&qword_27E15D2B0, MEMORY[0x277D858F8], MEMORY[0x277D85918]);
    v85 = v120;
    sub_23B5D83B8();
    v79 = v129;
    sub_23B5D77BC(v129);

    sub_23B5AE940(v82, v84);
    v78(v85, 0, 1, v4);
    sub_23B5D7824(v85, v79);
    v2 = v125;
    v7 = v126;
  }

LABEL_50:
  v87 = [v2 timestamp];
  sub_23B5D8438();

  v88 = v79;
  v89 = v121;
  sub_23B5D774C(v88, v121);
  v90 = *(v5 + 48);
  if (v90(v89, 1, v4) == 1)
  {
    sub_23B5D8A98();
    v91 = 0x278B83000;
    if (v90(v89, 1, v4) != 1)
    {
      sub_23B5D77BC(v89);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v89, v4);
    v91 = 0x278B83000uLL;
  }

  v92 = [v2 throughputCeilingMbps];
  v93 = v92;
  v94 = 0;
  v95 = 0;
  if (v92)
  {
    [v92 *(v91 + 3608)];
    v95 = v96;
  }

  v97 = [v2 throughputCapacityMbps];
  v98 = v97;
  if (v97)
  {
    [v97 *(v91 + 3608)];
    v94 = v99;
  }

  v100 = [v2 signalStrength];
  v101 = v100;
  if (v100)
  {
    [v100 *(v91 + 3608)];
    v103 = v102;
  }

  else
  {
    v103 = 0;
  }

  v104 = v93 == 0;
  sub_23B5D77BC(v129);
  (*(v122 + 32))(a1, v127, v123);
  v105 = type metadata accessor for WAPerformanceReport(0);
  (*(v5 + 32))(a1 + v105[5], v7, v4);
  v106 = v128;

  v108 = a1 + v105[6];
  *v108 = v95;
  *(v108 + 8) = v104;
  v109 = a1 + v105[7];
  *v109 = v94;
  *(v109 + 8) = v98 == 0;
  *(a1 + v105[8]) = v106;
  v110 = a1 + v105[9];
  *v110 = v103;
  *(v110 + 8) = v101 == 0;
  return result;
}

uint64_t sub_23B5D76F0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23B5D774C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D3E0, &qword_23B5DED98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5D77BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D3E0, &qword_23B5DED98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B5D7824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D3E0, &qword_23B5DED98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B5D7894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B5D78FC@<X0>(void *a2@<X8>)
{
  sub_23B5CCF10(v2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D018, &qword_23B5DDDF8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t WAEndpoint.device.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10 = v3;
  v11 = *(v1 + 104);
  v4 = v11;
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_23B5AF43C(v8, v7);
}

uint64_t WAEndpoint.nw.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WAEndpoint(0) + 24);
  v4 = sub_23B5D84D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WAEndpoint(uint64_t a1)
{
  result = qword_27E15D3F0;
  if (!qword_27E15D3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WAEndpoint.nw.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WAEndpoint(0) + 24);
  v4 = sub_23B5D84D8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WAEndpoint.description.getter()
{
  sub_23B5D8A08();
  MEMORY[0x23EE9F750](0xD000000000000014, 0x800000023B5DFA10);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_23B5D8C78();
  MEMORY[0x23EE9F750](0x656369766564202CLL, 0xEA0000000000203ALL);
  v1 = WAPairedDevice.description.getter();
  MEMORY[0x23EE9F750](v1);

  MEMORY[0x23EE9F750](41, 0xE100000000000000);
  return 0;
}

uint64_t WAEndpoint.hash(into:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_23B5D8668();
  v2 = v1[7];
  v3 = v1[9];
  MEMORY[0x23EE9FD60](v1[5]);
  if (!v2)
  {
    sub_23B5D8D38();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_23B5D8D38();
  }

  sub_23B5D8D38();
  sub_23B5D8708();
  if (!v3)
  {
    return sub_23B5D8D38();
  }

LABEL_3:
  sub_23B5D8D38();
  sub_23B5D8708();
  sub_23B5D8708();

  return sub_23B5D8708();
}

uint64_t WAEndpoint.hashValue.getter()
{
  sub_23B5D8D18();
  WAEndpoint.hash(into:)(v1);
  return sub_23B5D8D58();
}

uint64_t sub_23B5D7DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_23B5D84D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23B5D7E28()
{
  sub_23B5D8D18();
  WAEndpoint.hash(into:)(v1);
  return sub_23B5D8D58();
}

uint64_t sub_23B5D7E6C(uint64_t a1)
{
  sub_23B5D8D18();
  WAEndpoint.hash(into:)(v2);
  return sub_23B5D8D58();
}

BOOL _s9WiFiAware10WAEndpointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_23B5CCF10(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15D018, &qword_23B5DDDF8);
  if ((swift_dynamicCast() & 1) == 0 || !*(&v30[0] + 1))
  {
LABEL_5:
    sub_23B5CCF10(a1, v32);
    if ((swift_dynamicCast() & 1) != 0 && *(&v30[0] + 1))
    {
      sub_23B5CCF10(a2, v32);
      if (swift_dynamicCast())
      {
        goto LABEL_8;
      }

      v30[0] = 0uLL;
    }

    return 0;
  }

  sub_23B5CCF10(a2, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30[0] = 0uLL;

    goto LABEL_5;
  }

LABEL_8:

  v5 = *(a1 + 56);
  v6 = *(a1 + 88);
  v26[2] = *(a1 + 72);
  v26[3] = v6;
  v27 = *(a1 + 104);
  v26[0] = *(a1 + 40);
  v26[1] = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 88);
  v23 = *(a1 + 72);
  v24 = v8;
  v25 = *(a1 + 104);
  v21 = *(a1 + 40);
  v22 = v7;
  v9 = *(a2 + 40);
  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  v12 = *(a2 + 88);
  v29 = *(a2 + 104);
  v28[2] = v11;
  v28[3] = v12;
  v28[0] = v9;
  v28[1] = v10;
  v13 = *(a2 + 56);
  v14 = *(a2 + 88);
  v18 = *(a2 + 72);
  v19 = v14;
  v20 = *(a2 + 104);
  v16 = *(a2 + 40);
  v17 = v13;
  sub_23B5AF43C(v26, v32);
  sub_23B5AF43C(v28, v32);
  v15 = _s9WiFiAware14WAPairedDeviceV2eeoiySbAC_ACtFZ_0(&v21, &v16);
  v30[2] = v18;
  v30[3] = v19;
  v31 = v20;
  v30[0] = v16;
  v30[1] = v17;
  sub_23B5AFD30(v30);
  v32[2] = v23;
  v32[3] = v24;
  v33 = v25;
  v32[0] = v21;
  v32[1] = v22;
  sub_23B5AFD30(v32);
  return v15;
}

unint64_t sub_23B5D8158()
{
  result = qword_27E15D3E8;
  if (!qword_27E15D3E8)
  {
    type metadata accessor for WAEndpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15D3E8);
  }

  return result;
}

uint64_t sub_23B5D81D8(uint64_t a1)
{
  result = sub_23B5D8264();
  if (v2 <= 0x3F)
  {
    result = sub_23B5D84D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23B5D8264()
{
  result = qword_27E15D400;
  if (!qword_27E15D400)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27E15D400);
  }

  return result;
}