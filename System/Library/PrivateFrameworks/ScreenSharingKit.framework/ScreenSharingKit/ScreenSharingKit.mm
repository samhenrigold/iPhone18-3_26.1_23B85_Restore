__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2649C87A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2649C8808(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2649C8828(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
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

uint64_t sub_2649C8878(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2649C8898(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_2649C88FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2649C895C(uint64_t a1, id *a2)
{
  result = sub_264B41024();
  *a2 = 0;
  return result;
}

uint64_t sub_2649C89D4(uint64_t a1, id *a2)
{
  v3 = sub_264B41034();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2649C8A54@<X0>(uint64_t *a1@<X8>)
{
  sub_264B41044();
  v2 = sub_264B41014();

  *a1 = v2;
  return result;
}

BOOL sub_2649C8AC4(void *a1, uint64_t *a2)
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

void *sub_2649C8B4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2649C8B78@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2649C8C3C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2649C8C60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2649C9A14(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2649C8D30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2649C8E08@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_264B41014();

  *a2 = v3;
  return result;
}

uint64_t sub_2649C8E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264B41044();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2649C8E7C(uint64_t a1)
{
  v2 = sub_2649C8D30(&qword_27FF88640, type metadata accessor for Name, &unk_264B43D94);
  v3 = sub_2649C8D30(&qword_27FF88648, type metadata accessor for Name, &unk_264B43D34);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2649C8F38()
{
  v0 = sub_264B41044();
  v1 = MEMORY[0x2667483C0](v0);

  return v1;
}

uint64_t sub_2649C8F74(uint64_t a1)
{
  sub_264B41044();
  sub_264B41084();
}

uint64_t sub_2649C8FC8(uint64_t a1)
{
  sub_264B41044();
  sub_264B41B84();
  sub_264B41084();
  v1 = sub_264B41BB4();

  return v1;
}

uint64_t sub_2649C903C(void *a1, uint64_t *a2)
{
  v2 = sub_264B41044();
  v4 = v3;
  if (v2 == sub_264B41044() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_264B41AA4();
  }

  return v7 & 1;
}

uint64_t sub_2649C90C4()
{
  v0 = [objc_opt_self() getDaemonProcessInfo];
  v1 = sub_264B40F64();

  v28 = sub_264B41044();
  sub_264B416F4();
  if (*(v1 + 16) && (v2 = sub_264A20A44(v30), (v3 & 1) != 0))
  {
    sub_2649C964C(*(v1 + 56) + 32 * v2, v31);
    sub_2649C95C0(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    if (swift_dynamicCast())
    {

      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v4 = sub_264B40964();
      __swift_project_value_buffer(v4, qword_27FFA71D0);
      v5 = v28;
      v6 = sub_264B40944();
      v7 = sub_264B41494();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v30[0] = v9;
        *v8 = 136446210;
        swift_getErrorValue();
        v10 = sub_264B41B24();
        v12 = sub_2649CC004(v10, v11, v30);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_2649C6000, v6, v7, "Failed to get Daemon Process info with error=%{public}s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x266749940](v9, -1, -1);
        MEMORY[0x266749940](v8, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  else
  {
    sub_2649C95C0(v30);
  }

  v29 = sub_264B41044();
  sub_264B416F4();
  if (!*(v1 + 16) || (v13 = sub_264A20A44(v30), (v14 & 1) == 0))
  {

    sub_2649C95C0(v30);
    goto LABEL_18;
  }

  sub_2649C964C(*(v1 + 56) + 32 * v13, v31);
  sub_2649C95C0(v30);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v24 = sub_264B40964();
    __swift_project_value_buffer(v24, qword_27FFA71D0);
    v25 = sub_264B40944();
    v26 = sub_264B41494();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2649C6000, v25, v26, "Failed to get unique PID", v27, 2u);
      MEMORY[0x266749940](v27, -1, -1);
    }

    return 0;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v15 = sub_264B40964();
  __swift_project_value_buffer(v15, qword_27FFA71D0);
  v16 = sub_264B40944();
  v17 = sub_264B41484();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30[0] = v19;
    *v18 = 136446210;
    v31[0] = v29;
    v20 = sub_264B41A64();
    v22 = sub_2649CC004(v20, v21, v30);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2649C6000, v16, v17, "Daemon Process UPID: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x266749940](v19, -1, -1);
    MEMORY[0x266749940](v18, -1, -1);
  }

  return v29;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2649C964C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2649C975C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2649C9A14(uint64_t a1)
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

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2649C9A70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2649C9A90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

void sub_2649C9AF0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for MockDeviceRestrictionPrimitives(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MockDeviceRestrictionPrimitives(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2649C9D58(uint64_t a1)
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

uint64_t sub_2649C9DF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = v4[10];
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v13 - v7;
  v9 = v4[12];
  swift_beginAccess();
  (*(v6 + 16))(v8, &v3[v9], v5);
  (*(v4[11] + 16))(&v14, v5);
  (*(v6 + 8))(v8, v5);
  v10 = *&v3[*(*v3 + 104)];
  type metadata accessor for NotifyingPlaybackEventConsumer();
  v11 = swift_allocObject();

  v13 = v14;
  swift_defaultActor_initialize();
  *(v11 + 112) = v13;
  *(v11 + 128) = v10;
  sub_2649CA1A0();
  return v11;
}

uint64_t sub_2649C9FA4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t sub_2649CA030()
{
  sub_2649C9FA4();

  return swift_deallocClassInstance();
}

uint64_t sub_2649CA0A0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2649C9DF8(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2649CA0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  (*(a3 + 24))(a1, a2, *(v7 + 80), a3);
  return swift_endAccess();
}

unint64_t sub_2649CA1A0()
{
  result = qword_27FF887A0;
  if (!qword_27FF887A0)
  {
    type metadata accessor for NotifyingPlaybackEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF887A0);
  }

  return result;
}

uint64_t sub_2649CA228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 200) = 514;
  *(v4 + 208) = MEMORY[0x277D84F90];
  *(v4 + 216) = 0;
  sub_2649CB564(a1, v4 + 16);
  *(v4 + 176) = a2;
  *(v4 + 184) = a3;
  *(v4 + 192) = a4;
  sub_2649CB5C0(a1, v26);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
  MEMORY[0x28223BE20](v9, v9);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v14 = type metadata accessor for TimeBackedTaskSleepPrimitives();
  v25[3] = v14;
  v25[4] = &off_28765C058;
  v25[0] = v13;
  type metadata accessor for TaskBackedTimer();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v25, v14);
  MEMORY[0x28223BE20](v16, v16);
  v18 = (v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  *(v15 + 40) = v14;
  *(v15 + 48) = &off_28765C058;
  *(v15 + 16) = v20;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 88) = 0;
  *(v15 + 96) = 1;
  __swift_destroy_boxed_opaque_existential_0(v25);
  sub_2649CB510(a1);
  __swift_destroy_boxed_opaque_existential_0(v26);
  *(v4 + 224) = v15;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = *(v15 + 64);
  v23 = *(v15 + 72);
  *(v15 + 64) = sub_2649CB674;
  *(v15 + 72) = v21;

  swift_retain_n();
  sub_2649CB67C(v22, v23);

  return v4;
}

uint64_t sub_2649CA4B8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2649CA6C4();
  }

  return result;
}

uint64_t sub_2649CA528()
{
  *(v0 + 216) = 0;
  v1 = *(v0 + 224);
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  if (*(v1 + 56))
  {

    sub_264B41304();
  }

  *(v1 + 56) = 0;

  result = swift_beginAccess();
  v3 = *(v0 + 208);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    *(v0 + 208) = MEMORY[0x277D84F90];

    swift_beginAccess();
    *(v0 + 200) = 514;
    return sub_264B409C4();
  }

  result = sub_264B41884();
  v4 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v4 >= 1)
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266748A70](i, v3);
      }

      else
      {
      }

      sub_264B40994();
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2649CA6C4()
{
  v1 = v0;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = sub_264B40944();
  v4 = sub_264B414B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2649C6000, v3, v4, "Policy engine: Inactivity timeout fired", v5, 2u);
    MEMORY[0x266749940](v5, -1, -1);
  }

  sub_2649CA528();
  v6 = *(v1 + 184);

  v6(v7);
}

uint64_t sub_2649CA7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887A8, &qword_264B44010);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - v11;
  v22 = a3;
  sub_2649CB2F0();
  v13 = sub_264B41554();
  v23 = v13;
  v14 = sub_264B41514();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887B0, &qword_264B44018);
  sub_2649CB4C8(&qword_27FF89EB0, &qword_27FF887B0, &qword_264B44018, MEMORY[0x277CBCD90]);
  sub_2649CB384();
  sub_264B40B14();
  sub_2649CB3DC(v7);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v18;
  sub_2649CB4C8(&qword_27FF887C0, &qword_27FF887A8, &qword_264B44010, MEMORY[0x277CBCD60]);

  sub_264B40B54();

  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EC0, &unk_264B44020);
  sub_2649CB4C8(&qword_27FF887C8, &unk_27FF89EC0, &unk_264B44020, MEMORY[0x277D83990]);
  sub_264B40984();
  swift_endAccess();
}

uint64_t sub_2649CAB18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2649CAB8C(a3, a4);
  }

  return result;
}

uint64_t sub_2649CAB8C(uint64_t result, unint64_t a2)
{
  if (*(v2 + 216) == 1)
  {
    v3 = *(v2 + 224);
    if (*(v3 + 96))
    {
      v18 = *(v3 + 56) != 0;
    }

    else
    {
      v5 = result;
      v6 = *(v3 + 80);
      v7 = *(v3 + 88);
      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v8 = sub_264B40964();
      __swift_project_value_buffer(v8, qword_27FF8AE70);

      v9 = sub_264B40944();
      v10 = sub_264B41474();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v16 = v12;
        *v11 = 136446210;
        *(v11 + 4) = sub_2649CC004(v5, a2, &v16);
        _os_log_impl(&dword_2649C6000, v9, v10, "Policy engine: Inactivity timer deferral condition fired: %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x266749940](v12, -1, -1);
        MEMORY[0x266749940](v11, -1, -1);
      }

      v13 = sub_264B40944();
      v14 = sub_264B41474();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2649C6000, v13, v14, "Policy engine: Pushing out inactivity timer", v15, 2u);
        MEMORY[0x266749940](v15, -1, -1);
      }

      sub_264B0D954(v6, v7);
      v17 = *(v3 + 56) != 0;
    }

    return sub_264B409C4();
  }

  return result;
}

uint64_t sub_2649CADBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 224);
  if (!*(v5 + 56) || (*(v5 + 96) & 1) != 0 || (sub_264B41BF4() & 1) == 0)
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AE70);
    v7 = sub_264B40944();
    v8 = sub_264B414B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      v11 = sub_264B41BE4();
      v13 = sub_2649CC004(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2649C6000, v7, v8, "Policy engine: Starting inactivity timer with duration %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x266749940](v10, -1, -1);
      MEMORY[0x266749940](v9, -1, -1);
    }

    sub_264B0D954(a1, a2);
    v16 = *(v5 + 56) != 0;
  }

  return sub_264B409C4();
}

uint64_t sub_2649CAF8C()
{
  v1 = *(v0 + 224);
  if (*(v1 + 56))
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v2 = sub_264B40964();
    __swift_project_value_buffer(v2, qword_27FF8AE70);
    v3 = sub_264B40944();
    v4 = sub_264B414B4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2649C6000, v3, v4, "Policy engine: Stopping inactivity timer", v5, 2u);
      MEMORY[0x266749940](v5, -1, -1);
    }

    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    *(v1 + 96) = 1;
    if (*(v1 + 56))
    {

      sub_264B41304();
    }

    *(v1 + 56) = 0;
  }

  return sub_264B409C4();
}

uint64_t sub_2649CB0F8()
{
  sub_2649CB510(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for InactivityTimeoutConditionMonitor.ConditionStorage(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for InactivityTimeoutConditionMonitor.ConditionStorage(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2649CB2F0()
{
  result = qword_27FF89DF0;
  if (!qword_27FF89DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF89DF0);
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

unint64_t sub_2649CB384()
{
  result = qword_27FF887B8;
  if (!qword_27FF887B8)
  {
    sub_2649CB2F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF887B8);
  }

  return result;
}

uint64_t sub_2649CB3DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2649CB444()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2649CB47C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2649CB4C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2649CB5C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2649CB67C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2649CB694()
{
  sub_264B41B84();
  MEMORY[0x266748E90](0);
  return sub_264B41BB4();
}

uint64_t sub_2649CB700(uint64_t a1)
{
  sub_264B41B84();
  MEMORY[0x266748E90](0);
  return sub_264B41BB4();
}

uint64_t CDPStateControllerBackediCloudHealthPrimitives.iCloudHealthNeedsRepair()()
{

  return MEMORY[0x2822009F8](sub_2649CB7E0, 0, 0);
}

uint64_t sub_2649CB7E0()
{
  v48 = v0;
  v47[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() contextForPrimaryAccount];
  v2 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];

  if (!v2)
  {
    sub_2649CBDD0();
    swift_allocError();
    swift_willThrow();
    goto LABEL_5;
  }

  *(v0 + 16) = 0;
  v3 = [v2 isManateeAvailable_];
  v4 = *(v0 + 16);
  if (!v3)
  {
    v8 = v4;
    v9 = sub_264B3FF84();

    swift_willThrow();
    *(v0 + 16) = v9;
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    sub_2649CBE24();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 24);
      v12 = [v11 domain];
      v13 = sub_264B41044();
      v15 = v14;

      if (v13 == sub_264B41044() && v15 == v16)
      {

LABEL_11:

        if (qword_27FF883E0 != -1)
        {
          swift_once();
        }

        v18 = sub_264B40964();
        __swift_project_value_buffer(v18, qword_27FFA71B8);
        v19 = v11;
        v20 = sub_264B40944();
        v21 = sub_264B41494();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v47[0] = v23;
          *v22 = 136446210;
          v24 = v19;
          v25 = [v24 description];
          v26 = sub_264B41044();
          v28 = v27;

          v29 = sub_2649CC004(v26, v28, v47);

          *(v22 + 4) = v29;
          _os_log_impl(&dword_2649C6000, v20, v21, "CDPStateController reports iCloud is unhealthy due to: %{public}s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x266749940](v23, -1, -1);
          MEMORY[0x266749940](v22, -1, -1);
        }

        else
        {
        }

        v7 = 1;
        goto LABEL_30;
      }

      v17 = sub_264B41AA4();

      if (v17)
      {
        goto LABEL_11;
      }
    }

    v30 = sub_264B3FF74();
    v31 = [v30 domain];
    v32 = sub_264B41044();
    v34 = v33;

    if (v32 == 0xD000000000000025 && 0x8000000264B58E20 == v34)
    {

LABEL_28:

      goto LABEL_29;
    }

    v35 = sub_264B41AA4();

    if ((v35 & 1) != 0 || ![v30 code])
    {
      goto LABEL_28;
    }

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v36 = sub_264B40964();
    __swift_project_value_buffer(v36, qword_27FFA71B8);
    v37 = v9;
    v38 = sub_264B40944();
    v39 = sub_264B41494();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47[0] = v41;
      *v40 = 136446210;
      *(v0 + 16) = v9;
      v42 = v9;
      v43 = sub_264B41064();
      v45 = sub_2649CC004(v43, v44, v47);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_2649C6000, v38, v39, "Unable to determine iCloud health state due to: %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x266749940](v41, -1, -1);
      MEMORY[0x266749940](v40, -1, -1);
    }

    swift_willThrow();
LABEL_5:
    v6 = *(v0 + 8);
    v7 = 0;
    goto LABEL_31;
  }

  v5 = v4;

LABEL_29:
  v7 = 0;
LABEL_30:
  v6 = *(v0 + 8);
LABEL_31:

  return v6(v7);
}

unint64_t sub_2649CBDD0()
{
  result = qword_27FF887D0;
  if (!qword_27FF887D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF887D0);
  }

  return result;
}

unint64_t sub_2649CBE24()
{
  result = qword_27FF887D8;
  if (!qword_27FF887D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF887D8);
  }

  return result;
}

uint64_t sub_2649CBE70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CBEFC;

  return CDPStateControllerBackediCloudHealthPrimitives.iCloudHealthNeedsRepair()();
}

uint64_t sub_2649CBEFC(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

unint64_t sub_2649CC004(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2649CC0D0(v11, 0, 0, 1, a1, a2);
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
    sub_2649C964C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2649CC0D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2649CC1DC(a5, a6);
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
    result = sub_264B417B4();
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

void *sub_2649CC1DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2649CC228(a1, a2);
  sub_2649CC358(&unk_287655740);
  return v3;
}

void *sub_2649CC228(uint64_t a1, unint64_t a2)
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

  v6 = sub_2649CC444(v5, 0);
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

  result = sub_264B417B4();
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
        v10 = sub_264B410B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2649CC444(v10, 0);
        result = sub_264B41744();
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

uint64_t sub_2649CC358(uint64_t result)
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

  result = sub_2649CC4B8(result, v11, 1, v3);
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

void *sub_2649CC444(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887E8, &unk_264B44140);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2649CC4B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887E8, &unk_264B44140);
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

uint64_t getEnumTagSinglePayload for AnnotationServiceConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AnnotationServiceConstants(_WORD *result, int a2, int a3)
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

unint64_t sub_2649CC6B0()
{
  result = qword_27FF887E0;
  if (!qword_27FF887E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF887E0);
  }

  return result;
}

uint64_t sub_2649CC710()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();
}

uint64_t ScreenContinuityServicesBackedContinuityDevicePrimitives.deinit()
{
  if (*(v0 + 24))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    sub_264B41304();
  }

  v1 = OBJC_IVAR____TtC16ScreenSharingKit56ScreenContinuityServicesBackedContinuityDevicePrimitives__continuityDeviceInfo;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScreenContinuityServicesBackedContinuityDevicePrimitives.__deallocating_deinit()
{
  if (*(v0 + 24))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    sub_264B41304();
  }

  v1 = OBJC_IVAR____TtC16ScreenSharingKit56ScreenContinuityServicesBackedContinuityDevicePrimitives__continuityDeviceInfo;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t ScreenContinuityServicesBackedContinuityDevicePrimitives.__allocating_init(fetchUnlockabilityStatus:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  ScreenContinuityServicesBackedContinuityDevicePrimitives.init(fetchUnlockabilityStatus:)(v1);
  return v2;
}

uint64_t ScreenContinuityServicesBackedContinuityDevicePrimitives.init(fetchUnlockabilityStatus:)(int a1)
{
  v2 = v1;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v27 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88800, qword_264B4CC90);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v27 - v17;
  sub_264B408B4();
  *(v1 + 16) = sub_264B408A4();
  *(v1 + 24) = 0;
  v19 = OBJC_IVAR____TtC16ScreenSharingKit56ScreenContinuityServicesBackedContinuityDevicePrimitives__continuityDeviceInfo;
  v20 = type metadata accessor for ContinuityDeviceInfo(0);
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_2649D046C(v18, v15, &qword_27FF88800, qword_264B4CC90);
  sub_264B40A44();
  sub_2649D04D4(v18, &qword_27FF88800, qword_264B4CC90);
  (*(v7 + 32))(v2 + v19, v10, v6);
  v21 = *(v2 + 16);
  v22 = sub_264B41274();
  v23 = v27;
  (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v28;
  *(v25 + 40) = v21;
  *(v25 + 48) = v24;

  *(v2 + 24) = sub_2649CD944(0, 0, v23, &unk_264B441A8, v25);

  return v2;
}

uint64_t sub_2649CCCB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2649CCCEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = a6;
  *(v6 + 168) = a4;
  *(v6 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88858, &qword_264B442D0);
  *(v6 + 96) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88860, &qword_264B442D8);
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  v8 = sub_264B40884();
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 - 8);
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649CCE54, 0, 0);
}

uint64_t sub_2649CCE54()
{
  if (*(v0 + 168) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88888, &qword_264B442E8);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_264B44150;
    sub_264B40874();
    *(v0 + 64) = v1;
  }

  else
  {
    *(v0 + 40) = MEMORY[0x277D84F90];
  }

  sub_2649D0534(&qword_27FF88868, MEMORY[0x277D4B7F0], MEMORY[0x277D4B7F8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88870, &qword_264B442E0);
  sub_2649CB4C8(&qword_27FF88878, &qword_27FF88870, &qword_264B442E0, MEMORY[0x277D83970]);
  sub_264B41684();
  sub_264B408B4();
  sub_2649D0534(&qword_27FF88880, MEMORY[0x277D4B808], MEMORY[0x277D4B810]);
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_2649CD0DC, v3, v2);
}

uint64_t sub_2649CD0DC()
{
  sub_264B40894();

  return MEMORY[0x2822009F8](sub_2649CD14C, 0, 0);
}

uint64_t sub_2649CD14C(uint64_t a1)
{
  v1[19] = swift_getOpaqueTypeConformance2();
  sub_264B41334();
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  v1[20] = v3;
  *v3 = v1;
  v3[1] = sub_2649CD278;
  v4 = v1[13];

  return MEMORY[0x282200310](v1 + 6, 0, 0, v1 + 7, v4, AssociatedConformanceWitness);
}

uint64_t sub_2649CD278()
{

  if (v0)
  {
    v1 = sub_2649CD680;
  }

  else
  {
    v1 = sub_2649CD388;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2649CD388()
{
  v20 = v0;
  v1 = v0[6];
  if (v1)
  {
    if (swift_weakLoadStrong())
    {
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v2 = sub_264B40964();
      __swift_project_value_buffer(v2, qword_27FFA71B8);

      v3 = sub_264B40944();
      v4 = sub_264B41484();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v19 = v6;
        *v5 = 136315138;
        v7 = sub_264B40864();
        v8 = MEMORY[0x266748460](v1, v7);
        v10 = sub_2649CC004(v8, v9, &v19);

        *(v5 + 4) = v10;
        _os_log_impl(&dword_2649C6000, v3, v4, "Replicator devices array changed: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x266749940](v6, -1, -1);
        MEMORY[0x266749940](v5, -1, -1);
      }

      sub_2649CDBF0(v1);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v12 = swift_task_alloc();
      v0[20] = v12;
      *v12 = v0;
      v12[1] = sub_2649CD278;
      v13 = v0[13];

      return MEMORY[0x282200310](v0 + 6, 0, 0, v0 + 7, v13, AssociatedConformanceWitness);
    }
  }

  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v15 + 8))(v14, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_2649CD680()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2649CD740()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2649CD788(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_2649CCCEC(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_2649CD850()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2649CD944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_2649D046C(a3, v23 - v10, &qword_27FF898C0, &unk_264B44190);
  v12 = sub_264B41274();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2649D04D4(v11, &qword_27FF898C0, &unk_264B44190);
  }

  else
  {
    sub_264B41264();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_264B411C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_264B41074() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2649D04D4(a3, &qword_27FF898C0, &unk_264B44190);

      return v21;
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

  sub_2649D04D4(a3, &qword_27FF898C0, &unk_264B44190);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_2649CDBF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88800, qword_264B4CC90);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v209 = &v199 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v208 = &v199 - v7;
  v211 = type metadata accessor for ContinuityDevice(0);
  v233 = *(v211 - 8);
  v9 = MEMORY[0x28223BE20](v211, v8);
  v202 = (&v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v199 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v207 = (&v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16, v18);
  v210 = &v199 - v19;
  v252 = sub_264B40804();
  v20 = *(v252 - 8);
  MEMORY[0x28223BE20](v252, v21);
  v217 = &v199 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88840, &qword_264B44278);
  v24 = MEMORY[0x28223BE20](v251, v23);
  v26 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v199 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88848, &qword_264B44280);
  v32 = MEMORY[0x28223BE20](v30 - 8, v31);
  v230 = &v199 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v224 = &v199 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v40 = &v199 - v39;
  v42 = MEMORY[0x28223BE20](v38, v41);
  v218 = &v199 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v216 = &v199 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v238 = &v199 - v49;
  MEMORY[0x28223BE20](v48, v50);
  v237 = &v199 - v51;
  v52 = sub_264B40864();
  v53 = *(v52 - 8);
  v55 = MEMORY[0x28223BE20](v52, v54);
  v205 = &v199 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v55, v57);
  v206 = &v199 - v59;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v200 = &v199 - v62;
  v64 = MEMORY[0x28223BE20](v61, v63);
  v201 = &v199 - v65;
  v67 = MEMORY[0x28223BE20](v64, v66);
  v231 = &v199 - v68;
  v70 = MEMORY[0x28223BE20](v67, v69);
  v232 = &v199 - v71;
  v73 = MEMORY[0x28223BE20](v70, v72);
  v229 = &v199 - v74;
  v76 = MEMORY[0x28223BE20](v73, v75);
  v214 = &v199 - v77;
  v79 = MEMORY[0x28223BE20](v76, v78);
  v223 = &v199 - v80;
  v82 = MEMORY[0x28223BE20](v79, v81);
  v250 = &v199 - v83;
  v85 = MEMORY[0x28223BE20](v82, v84);
  v222 = &v199 - v86;
  v88 = MEMORY[0x28223BE20](v85, v87);
  v249 = &v199 - v89;
  v90 = *(a1 + 16);
  v253 = v88;
  v212 = v53;
  v213 = v90;
  v219 = v13;
  if (v90)
  {
    v236 = v40;
    v220 = v26;
    v92 = *(v53 + 16);
    v91 = v53 + 16;
    v246 = v92;
    v93 = (*(v91 + 64) + 32) & ~*(v91 + 64);
    v204 = a1;
    v221 = v93;
    v248 = *(v91 + 56);
    v226 = *MEMORY[0x277D4B7A8];
    v244 = (v20 + 56);
    v245 = (v20 + 104);
    v215 = (v20 + 32);
    v203 = v20;
    v228 = (v20 + 8);
    v247 = v91;
    v234 = (v91 - 8);
    v235 = (v91 + 16);
    v225 = MEMORY[0x277D84F90];
    v94 = &qword_264B44280;
    v95 = a1 + v93;
    v96 = v90;
    v97 = (v20 + 48);
    v239 = (v20 + 48);
    v98 = v238;
    v227 = a1 + v93;
    while (1)
    {
      v240 = v96;
      v246(v249, v95, v253);
      v101 = v252;
      v102 = v94;
      v103 = v237;
      sub_264B40824();
      v243 = *v245;
      v243(v98, v226, v101);
      v242 = *v244;
      v242(v98, 0, 1, v101);
      v104 = *(v251 + 48);
      sub_2649D046C(v103, v29, &qword_27FF88848, v102);
      sub_2649D046C(v98, &v29[v104], &qword_27FF88848, v102);
      v105 = v98;
      v106 = *v97;
      v107 = (*v97)(v29, 1, v101);
      v241 = v106;
      if (v107 == 1)
      {
        break;
      }

      v109 = v216;
      sub_2649D046C(v29, v216, &qword_27FF88848, v102);
      if (v106(&v29[v104], 1, v101) == 1)
      {
        v94 = v102;
        sub_2649D04D4(v238, &qword_27FF88848, v102);
        sub_2649D04D4(v237, &qword_27FF88848, v102);
        (*v228)(v109, v252);
        v99 = v227;
LABEL_4:
        sub_2649D04D4(v29, &qword_27FF88840, &qword_264B44278);
        goto LABEL_5;
      }

      v110 = &v29[v104];
      v111 = v217;
      v112 = v252;
      (*v215)(v217, v110, v252);
      sub_2649D0534(&qword_27FF88850, MEMORY[0x277D4B7B0], MEMORY[0x277D4B7B8]);
      v113 = sub_264B40F94();
      v114 = *v228;
      v97 = v239;
      (*v228)(v111, v112);
      sub_2649D04D4(v238, &qword_27FF88848, &qword_264B44280);
      sub_2649D04D4(v237, &qword_27FF88848, &qword_264B44280);
      v114(v109, v112);
      v94 = &qword_264B44280;
      sub_2649D04D4(v29, &qword_27FF88848, &qword_264B44280);
      v99 = v227;
      if (v113)
      {
        goto LABEL_12;
      }

LABEL_5:
      (*v234)(v249, v253);
      v100 = v248;
      v98 = v238;
LABEL_6:
      v95 += v100;
      v96 = v240 - 1;
      if (v240 == 1)
      {
        v240 = MEMORY[0x277D84F90];
        v121 = &qword_264B44280;
        LODWORD(v249) = *MEMORY[0x277D4B7A0];
        v122 = v213;
        v123 = v220;
        v124 = v218;
        while (1)
        {
          v246(v250, v99, v253);
          sub_264B40824();
          v126 = v124;
          v127 = v236;
          v128 = v252;
          v243(v236, v249, v252);
          v242(v127, 0, 1, v128);
          v129 = *(v251 + 48);
          sub_2649D046C(v126, v123, &qword_27FF88848, v121);
          sub_2649D046C(v127, v123 + v129, &qword_27FF88848, v121);
          v130 = v128;
          v131 = v121;
          v132 = v241;
          if (v241(v123, 1, v130) == 1)
          {
            break;
          }

          v134 = v224;
          sub_2649D046C(v123, v224, &qword_27FF88848, v131);
          if (v132((v123 + v129), 1, v252) == 1)
          {
            sub_2649D04D4(v236, &qword_27FF88848, v131);
            v124 = v218;
            sub_2649D04D4(v218, &qword_27FF88848, v131);
            (*v228)(v134, v252);
            v121 = v131;
LABEL_19:
            sub_2649D04D4(v123, &qword_27FF88840, &qword_264B44278);
            goto LABEL_20;
          }

          v135 = (v123 + v129);
          v136 = v217;
          v137 = v252;
          (*v215)(v217, v135, v252);
          sub_2649D0534(&qword_27FF88850, MEMORY[0x277D4B7B0], MEMORY[0x277D4B7B8]);
          v138 = sub_264B40F94();
          v139 = *v228;
          v140 = v136;
          v123 = v220;
          (*v228)(v140, v137);
          sub_2649D04D4(v236, &qword_27FF88848, v131);
          v124 = v218;
          sub_2649D04D4(v218, &qword_27FF88848, v131);
          v139(v224, v137);
          sub_2649D04D4(v123, &qword_27FF88848, v131);
          v121 = v131;
          if (v138)
          {
            goto LABEL_27;
          }

LABEL_20:
          (*v234)(v250, v253);
          v125 = v248;
LABEL_21:
          v99 += v125;
          if (!--v122)
          {
            v53 = v212;
            v90 = v213;
            v13 = v219;
            v146 = v225;
            a1 = v204;
            v20 = v203;
            goto LABEL_34;
          }
        }

        sub_2649D04D4(v127, &qword_27FF88848, v131);
        sub_2649D04D4(v126, &qword_27FF88848, v131);
        v133 = v132((v123 + v129), 1, v252);
        v124 = v126;
        v121 = v131;
        if (v133 == 1)
        {
          sub_2649D04D4(v123, &qword_27FF88848, v131);
LABEL_27:
          v141 = *v235;
          (*v235)(v223, v250, v253);
          v142 = v240;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v254 = v142;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_264AAFC8C(0, *(v142 + 16) + 1, 1);
            v142 = v254;
          }

          v145 = *(v142 + 16);
          v144 = *(v142 + 24);
          v125 = v248;
          if (v145 >= v144 >> 1)
          {
            sub_264AAFC8C((v144 > 1), v145 + 1, 1);
            v125 = v248;
            v142 = v254;
          }

          *(v142 + 16) = v145 + 1;
          v240 = v142;
          v141((v142 + v221 + v145 * v125), v223, v253);
          v123 = v220;
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    sub_2649D04D4(v105, &qword_27FF88848, v102);
    sub_2649D04D4(v103, &qword_27FF88848, v102);
    v108 = v106(&v29[v104], 1, v101);
    v99 = v227;
    v94 = v102;
    if (v108 == 1)
    {
      sub_2649D04D4(v29, &qword_27FF88848, v102);
LABEL_12:
      v115 = *v235;
      (*v235)(v222, v249, v253);
      v116 = v225;
      v117 = swift_isUniquelyReferenced_nonNull_native();
      v254 = v116;
      v98 = v238;
      if ((v117 & 1) == 0)
      {
        sub_264AAFC8C(0, *(v116 + 16) + 1, 1);
        v116 = v254;
      }

      v119 = *(v116 + 16);
      v118 = *(v116 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_264AAFC8C((v118 > 1), v119 + 1, 1);
        v116 = v254;
      }

      *(v116 + 16) = v119 + 1;
      v225 = v116;
      v120 = v116 + v221;
      v100 = v248;
      v115((v120 + v119 * v248), v222, v253);
      v97 = v239;
      v94 = &qword_264B44280;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v146 = MEMORY[0x277D84F90];
  v240 = MEMORY[0x277D84F90];
LABEL_34:
  v225 = v146;
  v246 = *(v146 + 16);
  if (v246)
  {
    sub_2649CF360();
    v90 = v213;
  }

  v147 = MEMORY[0x277D84F90];
  if (v90)
  {
    v148 = *(v53 + 16);
    v250 = (v53 + 16);
    v251 = v148;
    v248 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v149 = a1 + v248;
    v150 = *(v53 + 72);
    v151 = (v20 + 48);
    v249 = (v53 + 32);
    v247 = (v53 + 8);
    v152 = v214;
    do
    {
      v153 = v253;
      (v251)(v152, v149, v253);
      v154 = v230;
      v155 = v152;
      sub_264B40824();
      v156 = (*v151)(v154, 1, v252);
      sub_2649D04D4(v154, &qword_27FF88848, &qword_264B44280);
      if (v156 == 1)
      {
        (*v247)(v155, v153);
        v152 = v155;
      }

      else
      {
        v157 = *v249;
        (*v249)(v229, v155, v153);
        v158 = swift_isUniquelyReferenced_nonNull_native();
        v254 = v147;
        if (v158)
        {
          v152 = v155;
        }

        else
        {
          sub_264AAFC8C(0, *(v147 + 16) + 1, 1);
          v152 = v214;
          v147 = v254;
        }

        v160 = *(v147 + 16);
        v159 = *(v147 + 24);
        if (v160 >= v159 >> 1)
        {
          sub_264AAFC8C((v159 > 1), v160 + 1, 1);
          v152 = v214;
          v147 = v254;
        }

        *(v147 + 16) = v160 + 1;
        v157(v147 + v248 + v160 * v150, v229, v253);
        v13 = v219;
      }

      v149 += v150;
      --v90;
    }

    while (v90);
  }

  v161 = *(v147 + 16);
  if (v161)
  {
    v254 = MEMORY[0x277D84F90];
    sub_264AAFC48(0, v161, 0);
    v162 = v254;
    v163 = *(v212 + 16);
    v164 = v147 + ((*(v212 + 80) + 32) & ~*(v212 + 80));
    v165 = *(v212 + 72);
    v251 = v147;
    v252 = v165;
    v166 = (v212 + 8);
    do
    {
      v167 = v232;
      v168 = v253;
      v163(v232, v164, v253);
      v169 = v231;
      v163(v231, v167, v168);
      sub_264AF574C(v169, v13);
      (*v166)(v167, v168);
      v254 = v162;
      v170 = v13;
      v172 = *(v162 + 16);
      v171 = *(v162 + 24);
      if (v172 >= v171 >> 1)
      {
        sub_264AAFC48((v171 > 1), v172 + 1, 1);
        v162 = v254;
      }

      *(v162 + 16) = v172 + 1;
      sub_2649D0390(v170, v162 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v172);
      v164 += v252;
      --v161;
      v13 = v170;
    }

    while (v161);
    v252 = v162;
  }

  else
  {

    v252 = MEMORY[0x277D84F90];
  }

  v173 = *(v233 + 56);
  v174 = v210;
  v175 = v211;
  v173(v210, 1, 1, v211);
  v176 = v240;
  if (*(v225 + 16) != 1 || *(v240 + 16))
  {

    if (*(v176 + 16))
    {
      v177 = v212;
      v178 = *(v212 + 16);
      v179 = v205;
      v180 = v253;
      v178(v205, v176 + ((*(v212 + 80) + 32) & ~*(v212 + 80)), v253);

      v181 = v206;
      (*(v177 + 32))(v206, v179, v180);
      v182 = v232;
      v178(v232, v181, v180);
      v183 = v207;
      sub_264AF574C(v182, v207);
      (*(v177 + 8))(v181, v180);
      sub_2649D04D4(v174, &unk_27FF89E30, &qword_264B44270);
      v173(v183, 0, 1, v175);
      sub_2649D03F4(v183, v174);
LABEL_66:
      v196 = v213 != 0;
      v197 = v208;
      sub_2649D046C(v174, v208, &unk_27FF89E30, &qword_264B44270);
      v198 = type metadata accessor for ContinuityDeviceInfo(0);
      *(v197 + *(v198 + 20)) = v252;
      *(v197 + *(v198 + 24)) = v196;
      (*(*(v198 - 8) + 56))(v197, 0, 1, v198);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2649D046C(v197, v209, &qword_27FF88800, qword_264B4CC90);

      sub_264B40A94();
      sub_2649D04D4(v197, &qword_27FF88800, qword_264B4CC90);
      sub_2649D04D4(v174, &unk_27FF89E30, &qword_264B44270);
      return;
    }

LABEL_58:

    goto LABEL_66;
  }

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v184 = sub_264B40964();
  __swift_project_value_buffer(v184, qword_27FFA71B8);
  v185 = sub_264B40944();
  v186 = sub_264B414B4();
  if (os_log_type_enabled(v185, v186))
  {
    v187 = swift_slowAlloc();
    *v187 = 0;
    _os_log_impl(&dword_2649C6000, v185, v186, "The device with migrating state will be used as the selected device", v187, 2u);
    v188 = v187;
    v175 = v211;
    MEMORY[0x266749940](v188, -1, -1);
  }

  if (!v246)
  {
    goto LABEL_58;
  }

  if (*(v225 + 16))
  {
    v189 = v212;
    v190 = *(v212 + 16);
    v191 = v200;
    v192 = v253;
    v190(v200, v225 + ((*(v212 + 80) + 32) & ~*(v212 + 80)), v253);

    v193 = v201;
    (*(v189 + 32))(v201, v191, v192);
    v194 = v232;
    v190(v232, v193, v192);
    v195 = v202;
    sub_264AF574C(v194, v202);
    (*(v189 + 8))(v193, v192);
    sub_2649D04D4(v174, &unk_27FF89E30, &qword_264B44270);
    *(v195 + *(v175 + 40)) = 1;
    sub_2649D0390(v195, v174);
    v173(v174, 0, 1, v175);
    goto LABEL_66;
  }

  __break(1u);
}

uint64_t sub_2649CF360()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = sub_264B3FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v11 = sub_264B40964();
  __swift_project_value_buffer(v11, qword_27FFA71B8);
  v12 = sub_264B41484();
  sub_264B3FF94();
  v13 = sub_264B3FFA4();
  v15 = v14;
  (*(v7 + 8))(v10, v6);

  v16 = sub_264B40944();

  if (os_log_type_enabled(v16, v12))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446722;
    v19 = sub_2649CC004(v13, v15, &v24);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2050;
    *(v17 + 14) = 75;
    *(v17 + 22) = 2082;
    *(v17 + 24) = sub_2649CC004(0xD000000000000025, 0x8000000264B58FA0, &v24);
    _os_log_impl(&dword_2649C6000, v16, v12, "%{public}s:%{public}ld %{public}s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v18, -1, -1);
    MEMORY[0x266749940](v17, -1, -1);
  }

  else
  {
  }

  v20 = sub_264B41274();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v1;

  sub_264A10C20(0, 0, v5, &unk_264B44260, v21);
}

uint64_t sub_2649CF6DC()
{
  v3 = (*MEMORY[0x277D4B7D0] + MEMORY[0x277D4B7D0]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2649CF784;

  return v3();
}

uint64_t sub_2649CF784()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2649CF8B8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2649CF8B8()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2649C6000, v4, v5, "retryStuckRemoteScreenRelationships failed with error %{public}@", v8, 0xCu);
    sub_2649D04D4(v9, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t ScreenContinuityServicesBackedContinuityDevicePrimitives.continuityDeviceChangedPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88808, &unk_264B441B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88810, &unk_264B4CCB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  sub_264B40A54();
  swift_endAccess();
  type metadata accessor for ContinuityDeviceInfo(0);
  sub_2649CB4C8(&qword_27FF88818, &qword_27FF88808, &unk_264B441B0, MEMORY[0x277CBCEC8]);
  sub_264B40AC4();
  (*(v1 + 8))(v4, v0);
  sub_2649CB4C8(&qword_27FF88820, &qword_27FF88810, &unk_264B4CCB0, MEMORY[0x277CBCB10]);
  v10 = sub_264B40AB4();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_2649CFCF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88808, &unk_264B441B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88810, &unk_264B4CCB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  sub_264B40A54();
  swift_endAccess();
  type metadata accessor for ContinuityDeviceInfo(0);
  sub_2649CB4C8(&qword_27FF88818, &qword_27FF88808, &unk_264B441B0, MEMORY[0x277CBCEC8]);
  sub_264B40AC4();
  (*(v1 + 8))(v4, v0);
  sub_2649CB4C8(&qword_27FF88820, &qword_27FF88810, &unk_264B4CCB0, MEMORY[0x277CBCB10]);
  v10 = sub_264B40AB4();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t type metadata accessor for ScreenContinuityServicesBackedContinuityDevicePrimitives(uint64_t a1)
{
  result = qword_27FF88828;
  if (!qword_27FF88828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2649CFFB8(uint64_t a1)
{
  sub_2649D008C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2649D008C(uint64_t a1)
{
  if (!qword_27FF88838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88800, qword_264B4CC90);
    v1 = sub_264B40AA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF88838);
    }
  }
}

uint64_t sub_2649D00F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2649D0130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649CD850;

  return sub_2649CF6BC(a1, v4, v5, v6);
}

uint64_t sub_2649D01E4(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();
}

uint64_t sub_2649D0260(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88800, qword_264B4CC90);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v12 - v9;
  sub_2649D046C(a1, &v12 - v9, &qword_27FF88800, qword_264B4CC90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2649D046C(v10, v7, &qword_27FF88800, qword_264B4CC90);

  sub_264B40A94();
  return sub_2649D04D4(v10, &qword_27FF88800, qword_264B4CC90);
}

uint64_t sub_2649D0390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuityDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D03F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D046C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2649D04D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2649D0534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2649D057C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2649D05C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2649D065C()
{
  v1 = 0x72656E6E69;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_2649D06A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2649D10F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2649D06E8(uint64_t a1)
{
  v2 = sub_2649D1EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649D0724(uint64_t a1)
{
  v2 = sub_2649D1EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2649D0760(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88920, &qword_264B445C8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v26 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88928, &qword_264B445D0);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88930, &qword_264B445D8);
  v23 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88938, &qword_264B445E0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v22 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649D1EE8();
  sub_264B41BD4();
  v19 = (v15 + 8);
  if (v29)
  {
    if (v29 == 1)
    {
      v31 = 1;
      sub_2649D1F90();
      sub_264B419B4();
      (*(v24 + 8))(v9, v25);
    }

    else
    {
      v32 = 2;
      sub_2649D1F3C();
      v20 = v26;
      sub_264B419B4();
      (*(v27 + 8))(v20, v28);
    }
  }

  else
  {
    v30 = 0;
    sub_2649D1FE4();
    sub_264B419B4();
    (*(v23 + 8))(v13, v10);
  }

  return (*v19)(v18, v14);
}

uint64_t sub_2649D0AE0(void *a1, uint64_t a2, char a3, double a4, double a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF888A8, &qword_264B443C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649D1B1C();
  sub_264B41BD4();
  v19 = 0;
  sub_264B41A34();
  if (!v5)
  {
    v18 = a3;
    v17 = 1;
    sub_2649D1BC4();
    sub_264B41A24();
    v16 = 2;
    sub_264B41A04();
    v15 = 3;
    sub_264B41A04();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2649D0CCC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2649D0D08(uint64_t a1)
{
  v2 = sub_2649D1F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649D0D44(uint64_t a1)
{
  v2 = sub_2649D1F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2649D0D80(uint64_t a1)
{
  v2 = sub_2649D1F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649D0DBC(uint64_t a1)
{
  v2 = sub_2649D1F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2649D0DF8(uint64_t a1)
{
  v2 = sub_2649D1FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649D0E34(uint64_t a1)
{
  v2 = sub_2649D1FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2649D0E70@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_2649D1200(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2649D0EB8()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t sub_2649D0F00(uint64_t a1)
{
  v2 = *v1;
  sub_264B41B84();
  MEMORY[0x266748E90](v2);
  return sub_264B41BB4();
}

unint64_t sub_2649D0F44()
{
  v1 = 0x6574617473;
  v2 = 120;
  if (*v0 != 2)
  {
    v2 = 121;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2649D0FA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2649D1770(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2649D0FDC(uint64_t a1)
{
  v2 = sub_2649D1B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649D1018(uint64_t a1)
{
  v2 = sub_2649D1B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2649D1054(uint64_t a1@<X8>, void *a2@<X0>)
{
  v6 = sub_2649D18C4(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }
}

uint64_t sub_2649D10F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656E6E69 && a2 == 0xE500000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_264B41AA4();

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

uint64_t sub_2649D1200(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF888D8, &qword_264B445A0);
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v2);
  v37 = &v30 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF888E0, &qword_264B445A8);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF888E8, &qword_264B445B0);
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF888F0, &qword_264B445B8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - v14;
  v16 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2649D1EE8();
  v17 = v38;
  sub_264B41BC4();
  if (!v17)
  {
    v31 = v7;
    v18 = v37;
    v38 = v12;
    v19 = v15;
    v20 = sub_264B419A4();
    v21 = (2 * *(v20 + 16)) | 1;
    v40 = v20;
    v41 = v20 + 32;
    v42 = 0;
    v43 = v21;
    v22 = sub_2649E0EDC();
    if (v22 != 3 && v42 == v43 >> 1)
    {
      v12 = v22;
      if (v22)
      {
        if (v22 == 1)
        {
          v44 = 1;
          sub_2649D1F90();
          sub_264B418F4();
          v23 = v38;
          (*(v34 + 8))(v6, v36);
          (*(v23 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v39);
          return v12;
        }

        v44 = 2;
        sub_2649D1F3C();
        v28 = v15;
        sub_264B418F4();
        v29 = v38;
        (*(v32 + 8))(v18, v35);
      }

      else
      {
        v44 = 0;
        sub_2649D1FE4();
        v28 = v15;
        sub_264B418F4();
        (*(v33 + 8))(v10, v31);
        v29 = v38;
      }

      (*(v29 + 8))(v28, v11);
      goto LABEL_13;
    }

    v24 = sub_264B417A4();
    swift_allocError();
    v26 = v25;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
    *v26 = &type metadata for StrokePointAnnotationEvent.State;
    sub_264B41904();
    sub_264B41794();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v38 + 8))(v19, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v39);
  return v12;
}

uint64_t sub_2649D1770(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000264B58FD0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 120 && a2 == 0xE100000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_264B41AA4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_2649D18C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88890, &qword_264B443B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649D1B1C();
  sub_264B41BC4();
  v10[15] = 0;
  sub_264B41994();
  v10[13] = 1;
  sub_2649D1B70();
  sub_264B41984();
  v10[12] = 2;
  sub_264B41964();
  v9 = v8;
  v10[11] = 3;
  sub_264B41964();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2649D1B1C()
{
  result = qword_27FF88898;
  if (!qword_27FF88898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88898);
  }

  return result;
}

unint64_t sub_2649D1B70()
{
  result = qword_27FF888A0;
  if (!qword_27FF888A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888A0);
  }

  return result;
}

unint64_t sub_2649D1BC4()
{
  result = qword_27FF888B0;
  if (!qword_27FF888B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StrokePointAnnotationEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StrokePointAnnotationEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2649D1D8C()
{
  result = qword_27FF888B8;
  if (!qword_27FF888B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888B8);
  }

  return result;
}

unint64_t sub_2649D1DE4()
{
  result = qword_27FF888C0;
  if (!qword_27FF888C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888C0);
  }

  return result;
}

unint64_t sub_2649D1E3C()
{
  result = qword_27FF888C8;
  if (!qword_27FF888C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888C8);
  }

  return result;
}

unint64_t sub_2649D1E94()
{
  result = qword_27FF888D0;
  if (!qword_27FF888D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888D0);
  }

  return result;
}

unint64_t sub_2649D1EE8()
{
  result = qword_27FF888F8;
  if (!qword_27FF888F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888F8);
  }

  return result;
}

unint64_t sub_2649D1F3C()
{
  result = qword_27FF88908;
  if (!qword_27FF88908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88908);
  }

  return result;
}

unint64_t sub_2649D1F90()
{
  result = qword_27FF88910;
  if (!qword_27FF88910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88910);
  }

  return result;
}

unint64_t sub_2649D1FE4()
{
  result = qword_27FF88918;
  if (!qword_27FF88918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88918);
  }

  return result;
}

uint64_t _s11ServerErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s11ServerErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2649D21C4()
{
  result = qword_27FF88940;
  if (!qword_27FF88940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88940);
  }

  return result;
}

unint64_t sub_2649D221C()
{
  result = qword_27FF88948;
  if (!qword_27FF88948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88948);
  }

  return result;
}

unint64_t sub_2649D2274()
{
  result = qword_27FF88950;
  if (!qword_27FF88950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88950);
  }

  return result;
}

unint64_t sub_2649D22CC()
{
  result = qword_27FF88958;
  if (!qword_27FF88958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88958);
  }

  return result;
}

unint64_t sub_2649D2324()
{
  result = qword_27FF88960;
  if (!qword_27FF88960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88960);
  }

  return result;
}

unint64_t sub_2649D237C()
{
  result = qword_27FF88968;
  if (!qword_27FF88968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88968);
  }

  return result;
}

unint64_t sub_2649D23D4()
{
  result = qword_27FF88970;
  if (!qword_27FF88970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88970);
  }

  return result;
}

unint64_t sub_2649D242C()
{
  result = qword_27FF88978;
  if (!qword_27FF88978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88978);
  }

  return result;
}

unint64_t sub_2649D2484()
{
  result = qword_27FF88980;
  if (!qword_27FF88980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88980);
  }

  return result;
}

uint64_t sub_2649D2500()
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v0 = getpid();
  if (proc_pidinfo(v0, 17, 1uLL, &v9, 56) != 56)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v1 = sub_264B40964();
    __swift_project_value_buffer(v1, qword_27FFA71B8);
    v2 = sub_264B40944();
    v3 = sub_264B41494();
    if (!os_log_type_enabled(v2, v3))
    {
      v5 = 0;
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Failed to fetch UPID for our own process", v4, 2u);
    v5 = 0;
    goto LABEL_10;
  }

  v5 = v10;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v6 = sub_264B40964();
  __swift_project_value_buffer(v6, qword_27FFA71B8);
  v2 = sub_264B40944();
  v7 = sub_264B414B4();
  if (os_log_type_enabled(v2, v7))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    *(v4 + 4) = v5;
    _os_log_impl(&dword_2649C6000, v2, v7, "UPID for our own process is: %{public}llu", v4, 0xCu);
LABEL_10:
    MEMORY[0x266749940](v4, -1, -1);
  }

LABEL_12:

  return v5;
}

unint64_t sub_2649D272C()
{
  result = qword_27FF88988;
  if (!qword_27FF88988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88988);
  }

  return result;
}

uint64_t MediaTransportBackedScreenSharingSessionVendor.__allocating_init(thisDeviceIdentifier:timeoutPrimitives:mediaTransportClientSessionVendor:localDeviceInformationPrimitives:hidServicePrimitives:launchRequestAuthority:telemetryVendor:userDefaultsPrimitives:rtiStateCoordinator:featureFlagPrimitives:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, __int128 *a8, __int128 *a9, __int128 *a10)
{
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_thisDeviceIdentifier;
  v19 = sub_264B40104();
  (*(*(v19 - 8) + 32))(v17 + v18, a1, v19);
  v20 = v17 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_timeoutPrimitives;
  v21 = *(a2 + 80);
  *(v20 + 64) = *(a2 + 64);
  *(v20 + 80) = v21;
  *(v20 + 96) = *(a2 + 96);
  *(v20 + 112) = *(a2 + 112);
  v22 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v22;
  v23 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v23;
  sub_2649D2AAC(a3, v17 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_mediaTransportClientSessionVendor);
  sub_2649D2AAC(a4, v17 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_localDeviceInformationPrimitives);
  sub_2649D2AAC(a5, v17 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_hidServicePrimitives);
  sub_2649D2AAC(a6, v17 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_launchRequestAuthority);
  sub_2649D2AAC(a7, v17 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor);
  sub_2649D2AAC(a8, v17 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_userDefaultsPrimitives);
  sub_2649D2AAC(a9, v17 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_rtiStateCoordinator);
  sub_2649D2AAC(a10, v17 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_featureFlagPrimitives);
  return v17;
}

uint64_t MediaTransportBackedScreenSharingSessionVendor.init(thisDeviceIdentifier:timeoutPrimitives:mediaTransportClientSessionVendor:localDeviceInformationPrimitives:hidServicePrimitives:launchRequestAuthority:telemetryVendor:userDefaultsPrimitives:rtiStateCoordinator:featureFlagPrimitives:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, __int128 *a8, __int128 *a9, __int128 *a10)
{
  v18 = OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_thisDeviceIdentifier;
  v19 = sub_264B40104();
  (*(*(v19 - 8) + 32))(v10 + v18, a1, v19);
  v20 = v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_timeoutPrimitives;
  v21 = *(a2 + 80);
  *(v20 + 64) = *(a2 + 64);
  *(v20 + 80) = v21;
  *(v20 + 96) = *(a2 + 96);
  *(v20 + 112) = *(a2 + 112);
  v22 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v22;
  v23 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v23;
  sub_2649D2AAC(a3, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_mediaTransportClientSessionVendor);
  sub_2649D2AAC(a4, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_localDeviceInformationPrimitives);
  sub_2649D2AAC(a5, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_hidServicePrimitives);
  sub_2649D2AAC(a6, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_launchRequestAuthority);
  sub_2649D2AAC(a7, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor);
  sub_2649D2AAC(a8, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_userDefaultsPrimitives);
  sub_2649D2AAC(a9, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_rtiStateCoordinator);
  sub_2649D2AAC(a10, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_featureFlagPrimitives);
  return v10;
}

uint64_t sub_2649D2AAC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t MediaTransportBackedScreenSharingSessionVendor.deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_thisDeviceIdentifier;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2649D2BB4(v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_timeoutPrimitives);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_mediaTransportClientSessionVendor));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_localDeviceInformationPrimitives));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_hidServicePrimitives));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_launchRequestAuthority));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_userDefaultsPrimitives));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_rtiStateCoordinator));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_featureFlagPrimitives));
  return v0;
}

uint64_t MediaTransportBackedScreenSharingSessionVendor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_thisDeviceIdentifier;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2649D2BB4(v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_timeoutPrimitives);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_mediaTransportClientSessionVendor));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_localDeviceInformationPrimitives));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_hidServicePrimitives));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_launchRequestAuthority));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_userDefaultsPrimitives));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_rtiStateCoordinator));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_featureFlagPrimitives));

  return swift_deallocClassInstance();
}

uint64_t MediaTransportBackedScreenSharingSessionVendor.vend(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v58 = &v52 - v5;
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScreenSharingSession.Config(0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v57 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v55 = &v52 - v16;
  v17 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor + 24);
  v18 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor), v17);
  v56 = (*(v18 + 8))(v17, v18);
  v19 = *(v7 + 16);
  v54 = v6;
  v19(v10, v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_thisDeviceIdentifier, v6);
  v20 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_timeoutPrimitives + 24);
  v21 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_timeoutPrimitives), v20);
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v21, v21);
  v24 = &v52 - v23;
  (*(v22 + 16))(&v52 - v23);
  if (sub_264B41644() < 65)
  {
    v53 = a1;
    v26 = sub_264B41654();
    v27 = sub_264B41634();
    (*(v22 + 8))(v24, v20);
    if (v26)
    {
      v25 = v27;
    }

    else
    {
      v25 = v27;
    }

    a1 = v53;
  }

  else
  {
    sub_2649D376C();
    sub_2649D37C0();
    sub_264B40F44();
    (*(v22 + 8))(v24, v20);
    v25 = *&v64;
  }

  v28 = v55;
  (*(v7 + 32))(v55, v10, v54);
  *(v28 + v11[5]) = 1;
  *(v28 + v11[6]) = v25;
  *(v28 + v11[7]) = -70;
  v29 = v57;
  sub_2649D3568(v28, v57);
  sub_2649CB5C0(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_mediaTransportClientSessionVendor, &v64);
  sub_2649CB5C0(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_localDeviceInformationPrimitives, v63);
  sub_2649CB5C0(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_hidServicePrimitives, v62);
  sub_2649CB5C0(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_rtiStateCoordinator, v61);
  v30 = v58;
  sub_2649D35CC(a1, v58);
  sub_2649CB5C0(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_featureFlagPrimitives, v60);
  type metadata accessor for ScreenSharingSession(0);
  v31 = swift_allocObject();
  swift_defaultActor_initialize();
  v32 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_launchRequest;
  v33 = sub_264B40744();
  (*(*(v33 - 8) + 56))(v31 + v32, 1, 1, v33);
  v34 = v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  *v34 = 0;
  *(v34 + 8) = 0;
  *(v34 + 16) = 9;
  v35 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
  v36 = type metadata accessor for ContinuityDevice(0);
  (*(*(v36 - 8) + 56))(v31 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
  (*(*(v38 - 8) + 56))(v31 + v37, 1, 1, v38);
  *(v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportIsTearingDown) = 0;
  v39 = (v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream);
  *v40 = 0;
  v40[1] = 0;
  *(v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession) = 0;
  v41 = v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
  *(v41 + 32) = 0;
  *v41 = 0u;
  *(v41 + 16) = 0u;
  v42 = v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0;
  v43 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_orientationStatusSubject;
  LOBYTE(v59[0]) = 0;
  v59[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889F0, &unk_264B449D0);
  swift_allocObject();
  *(v31 + v43) = sub_264B40A14();
  v44 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_deviceSensorsInUseSubject;
  v59[0] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889F8, &unk_264B51570);
  swift_allocObject();
  *(v31 + v44) = sub_264B40A14();
  v45 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragAndDropEventSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A00, &unk_264B449E0);
  swift_allocObject();
  *(v31 + v45) = sub_264B409D4();
  *(v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragNDropUsed) = 0;
  *(v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessibilityTrafficSeen) = 0;
  v46 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessbilityDataSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B470, qword_264B4BB60);
  swift_allocObject();
  v47 = sub_264B409D4();
  sub_2649D363C(v28);
  *(v31 + v46) = v47;
  v48 = (v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion);
  *(v48 + 41) = 0u;
  v48[1] = 0u;
  v48[2] = 0u;
  *v48 = 0u;
  *(v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverEventCancellationHandle) = 0;
  *(v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragAndDropEventCancellationHandle) = 0;
  *(v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessibilityEventCancellationHandle) = 0;
  v49 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiMessages;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A08, &qword_264B449F0);
  (*(*(v50 - 8) + 56))(v31 + v49, 1, 1, v50);
  sub_2649D3698(v29, v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_config);
  sub_2649D2AAC(&v64, v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSessionVendor);
  sub_2649D2AAC(v63, v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_localDevicePrimitives);
  sub_2649D2AAC(v62, v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_hidServicePrimitives);
  *(v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry) = v56;
  sub_2649D2AAC(v61, v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiStateCoordinator);
  swift_beginAccess();
  sub_2649D36FC(v30, v31 + v32);
  swift_endAccess();
  sub_2649D2AAC(v60, v31 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_featureFlagPrimitives);
  return v31;
}

uint64_t sub_2649D3568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenSharingSession.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D35CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D363C(uint64_t a1)
{
  v2 = type metadata accessor for ScreenSharingSession.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2649D3698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenSharingSession.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D36FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2649D376C()
{
  result = qword_27FF88A10;
  if (!qword_27FF88A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A10);
  }

  return result;
}

unint64_t sub_2649D37C0()
{
  result = qword_27FF88A18;
  if (!qword_27FF88A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A18);
  }

  return result;
}

uint64_t sub_2649D3814@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MediaTransportBackedScreenSharingSessionVendor.vend(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for MediaTransportBackedScreenSharingSessionVendor(uint64_t a1)
{
  result = qword_27FF88A20;
  if (!qword_27FF88A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2649D3894(uint64_t a1)
{
  result = sub_264B40104();
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

Swift::Void __swiftcall UserDefaultsPrimitives.removeObject(forKey:)(Swift::String forKey)
{
  memset(v2, 0, sizeof(v2));
  (*(v1 + 16))(v2, forKey._countAndFlagsBits, forKey._object);
  sub_2649D3A14(v2);
}

uint64_t sub_2649D3A14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FocusPointAnnotationEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FocusPointAnnotationEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2649D3B50(void *a1, uint64_t a2, double a3, double a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A40, &qword_264B44B80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649D414C();
  sub_264B41BD4();
  v12[15] = 0;
  sub_264B41A34();
  if (!v4)
  {
    v12[14] = 1;
    sub_264B41A04();
    v12[13] = 2;
    sub_264B41A04();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2649D3D00()
{
  v1 = 120;
  if (*v0 != 1)
  {
    v1 = 121;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2649D3D48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2649D3E70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2649D3D70(uint64_t a1)
{
  v2 = sub_2649D414C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649D3DAC(uint64_t a1)
{
  v2 = sub_2649D414C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2649D3DE8(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v5 = sub_2649D3F7C(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    a1[2] = v6;
  }
}

uint64_t sub_2649D3E70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000264B58FD0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 120 && a2 == 0xE100000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_264B41AA4();

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

double sub_2649D3F7C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A30, &qword_264B44B78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649D414C();
  sub_264B41BC4();
  v10[15] = 0;
  sub_264B41994();
  v10[14] = 1;
  sub_264B41964();
  v9 = v8;
  v10[13] = 2;
  sub_264B41964();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

unint64_t sub_2649D414C()
{
  result = qword_27FF88A38;
  if (!qword_27FF88A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A38);
  }

  return result;
}

unint64_t sub_2649D41B4()
{
  result = qword_27FF88A48;
  if (!qword_27FF88A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A48);
  }

  return result;
}

unint64_t sub_2649D420C()
{
  result = qword_27FF88A50;
  if (!qword_27FF88A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A50);
  }

  return result;
}

unint64_t sub_2649D4264()
{
  result = qword_27FF88A58;
  if (!qword_27FF88A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A58);
  }

  return result;
}

uint64_t sub_2649D42CC()
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  swift_beginAccess();
}

uint64_t sub_2649D4384@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_2649D4464(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_2649D44CC()
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  swift_beginAccess();
}

uint64_t sub_2649D4584@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_2649D4664(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40164();
}

uint64_t sub_2649D4720(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t sub_2649D4788()
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  return *(v0 + 32);
}

uint64_t sub_2649D4828@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_2649D48F8(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
    sub_264B40164();
  }

  return result;
}

uint64_t sub_2649D49FC()
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  return *(v0 + 40);
}

uint64_t sub_2649D4A9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_2649D4B44(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
    sub_264B40164();
  }

  return result;
}

uint64_t sub_2649D4C54()
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();
}

uint64_t sub_2649D4CF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  *a2 = *(v3 + 48);
}

uint64_t sub_2649D4DA4(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 48))
  {
    if (a1)
    {
      sub_264B409A4();
      sub_2649D8ED4(&qword_27FF88AB0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);

      v4 = sub_264B40F94();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v6);
    sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
    sub_264B40164();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 48) = a1;
}

uint64_t ScreenSharingAnnotationViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_264B401A4();
  return v0;
}

uint64_t ScreenSharingAnnotationViewModel.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_264B401A4();
  return v0;
}

uint64_t sub_2649D4FE8()
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40164();

  swift_getKeyPath();
  sub_264B40164();
}

uint64_t type metadata accessor for ScreenSharingAnnotationViewModel(uint64_t a1)
{
  result = qword_27FF88A80;
  if (!qword_27FF88A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2649D5210(char *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_264B40104();
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264B3FFD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FFA71B8);
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_264B41754();

  v48 = 0x7473654767617264;
  v49 = 0xEF203A4449657275;
  sub_2649D8ED4(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v45 = a1;
  v43 = v8;
  v17 = sub_264B41A64();
  MEMORY[0x266748390](v17);

  MEMORY[0x266748390](0x3A746E696F70202CLL, 0xE900000000000020);
  v46 = a2;
  v47 = a3;
  type metadata accessor for CGPoint(0);
  v18 = sub_264B41064();
  MEMORY[0x266748390](v18);

  v19 = v49;
  v44 = v48;
  v20 = sub_264B41484();
  sub_264B3FF94();
  v21 = sub_264B3FFA4();
  v23 = v22;
  (*(v12 + 8))(v15, v11);
  v24 = sub_264B40944();
  if (os_log_type_enabled(v24, v20))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = v26;
    *v25 = 136446978;
    v27 = sub_2649CC004(v21, v23, &v48);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2050;
    *(v25 + 14) = 32;
    *(v25 + 22) = 2082;
    *(v25 + 24) = sub_2649CC004(0xD00000000000001CLL, 0x8000000264B59260, &v48);
    *(v25 + 32) = 2082;
    *(v25 + 34) = sub_2649CC004(v44, v19, &v48);
    _os_log_impl(&dword_2649C6000, v24, v20, "%{public}s:%{public}ld %{public}s %{public}s", v25, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v26, -1, -1);
    MEMORY[0x266749940](v25, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  v48 = v4;
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  v28 = swift_beginAccess();
  v29 = *(v4 + 16);
  MEMORY[0x28223BE20](v28, v30);
  v31 = v45;
  *(&v41 - 2) = v45;

  v32 = sub_2649D5A28(sub_2649D7B70, (&v41 - 4), v29);

  if (!v32)
  {
    swift_getKeyPath();
    v46 = *&v4;
    sub_264B40174();

    if (*(v4 + 40) == 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v34);
      *(&v41 - 2) = v4;
      *(&v41 - 8) = 0;
      v46 = *&v4;
      sub_264B40164();
    }

    v36 = v41;
    v35 = v42;
    v37 = v43;
    (*(v42 + 16))(v41, v31, v43);
    type metadata accessor for Stroke(0);
    v38 = swift_allocObject();
    *(v38 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points) = MEMORY[0x277D84F90];
    *(v38 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke) = 0;
    sub_264B401A4();
    (*(v35 + 32))(v38 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id, v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB50, &unk_264B520F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B44CE0;
    *(inited + 32) = v38;
    swift_getKeyPath();
    v46 = *&v4;
    swift_retain_n();
    sub_264B40174();

    v46 = *&v4;
    swift_getKeyPath();
    sub_264B40194();

    swift_beginAccess();
    sub_2649D7958(inited);
    swift_endAccess();
    v46 = *&v4;
    swift_getKeyPath();
    sub_264B40184();
  }

  sub_264B17A40(a2, a3);

  swift_getKeyPath();
  v46 = *&v4;
  sub_264B40174();

  v46 = *&v4;
  swift_getKeyPath();
  sub_264B40194();

  ++*(v4 + 32);
  v46 = *&v4;
  swift_getKeyPath();
  sub_264B40184();

  sub_2649D6938();
}

uint64_t sub_2649D5A28(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_264B41884();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x266748A70](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_2649D5B4C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_264B40EB4();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v70 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_264B40EE4();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v9);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_264B40F04();
  v67 = *(v74 - 8);
  v12 = MEMORY[0x28223BE20](v74, v11);
  v65 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v66 = &v59 - v15;
  v60 = type metadata accessor for IdentifiablePoint(0);
  v62 = *(v60 - 8);
  v17 = MEMORY[0x28223BE20](v60, v16);
  v64 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v61 = &v59 - v21;
  v63 = v22;
  MEMORY[0x28223BE20](v20, v23);
  v75 = &v59 - v24;
  v25 = sub_264B3FFD4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v30 = sub_264B40964();
  __swift_project_value_buffer(v30, qword_27FFA71B8);
  aBlock = 0x203A746E696F70;
  v78 = 0xE700000000000000;
  v83 = a1;
  v84 = a2;
  type metadata accessor for CGPoint(0);
  v31 = sub_264B41064();
  MEMORY[0x266748390](v31);

  v32 = v78;
  v59 = aBlock;
  v33 = sub_264B41484();
  sub_264B3FF94();
  v34 = sub_264B3FFA4();
  v36 = v35;
  (*(v26 + 8))(v29, v25);
  v37 = sub_264B40944();
  if (os_log_type_enabled(v37, v33))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v38 = 136446978;
    v40 = sub_2649CC004(v34, v36, &aBlock);

    *(v38 + 4) = v40;
    *(v38 + 12) = 2050;
    *(v38 + 14) = 52;
    *(v38 + 22) = 2082;
    *(v38 + 24) = sub_2649CC004(0xD000000000000015, 0x8000000264B59280, &aBlock);
    *(v38 + 32) = 2082;
    *(v38 + 34) = sub_2649CC004(v59, v32, &aBlock);
    _os_log_impl(&dword_2649C6000, v37, v33, "%{public}s:%{public}ld %{public}s %{public}s", v38, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v39, -1, -1);
    MEMORY[0x266749940](v38, -1, -1);
  }

  else
  {
  }

  v41 = v61;
  v42 = v75;
  sub_264B400F4();
  v43 = (v42 + *(v60 + 20));
  *v43 = a1;
  v43[1] = a2;
  sub_2649D86F8(v42, v41);
  swift_getKeyPath();
  aBlock = v3;
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  aBlock = v3;
  swift_getKeyPath();
  sub_264B40194();

  swift_beginAccess();
  v44 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 24) = v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v44 = sub_2649D7C40(0, v44[2] + 1, 1, v44);
    *(v3 + 24) = v44;
  }

  v47 = v44[2];
  v46 = v44[3];
  if (v47 >= v46 >> 1)
  {
    v44 = sub_2649D7C40((v46 > 1), v47 + 1, 1, v44);
  }

  v44[2] = v47 + 1;
  v48 = *(v62 + 80);
  sub_2649D875C(v41, v44 + ((v48 + 32) & ~v48) + *(v62 + 72) * v47);
  *(v3 + 24) = v44;
  aBlock = v3;
  swift_getKeyPath();
  sub_264B40184();

  sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
  v49 = sub_264B41554();
  v50 = v65;
  sub_264B40EF4();
  v51 = v66;
  sub_264B40F24();
  v67 = *(v67 + 8);
  (v67)(v50, v74);
  v52 = v64;
  sub_2649D86F8(v75, v64);
  v53 = swift_allocObject();
  *(v53 + 16) = v3;
  sub_2649D875C(v52, v53 + ((v48 + 24) & ~v48));
  v81 = sub_2649D8894;
  v82 = v53;
  aBlock = MEMORY[0x277D85DD0];
  v78 = 1107296256;
  v79 = sub_2649D68F4;
  v80 = &block_descriptor;
  v54 = _Block_copy(&aBlock);

  v55 = v68;
  sub_264B40EC4();
  v76 = MEMORY[0x277D84F90];
  sub_2649D8ED4(&qword_27FF892C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_2649CB4C8(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0, MEMORY[0x277D83970]);
  v56 = v70;
  v57 = v73;
  sub_264B41684();
  MEMORY[0x266748800](v51, v55, v56, v54);
  _Block_release(v54);

  (*(v72 + 8))(v56, v57);
  (*(v69 + 8))(v55, v71);
  (v67)(v51, v74);
  sub_2649D8910(v75);
}

uint64_t sub_2649D64D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiablePoint(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v16 = a1;
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  swift_beginAccess();
  v8 = *(a1 + 24);
  v14 = a2;

  v9 = sub_2649D66E8(sub_2649D8B60, v13, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    swift_getKeyPath();
    v15 = a1;
    sub_264B40174();

    v15 = a1;
    swift_getKeyPath();
    sub_264B40194();

    swift_beginAccess();
    sub_2649D67D4(v9, v7);
    sub_2649D8910(v7);
    swift_endAccess();
    v15 = a1;
    swift_getKeyPath();
    sub_264B40184();
  }

  return result;
}

uint64_t sub_2649D66E8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for IdentifiablePoint(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2649D67D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264AD39A8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for IdentifiablePoint(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2649D875C(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2649D68F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2649D6938()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AF8, &qword_264B44EF0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v11 - v3;
  swift_getKeyPath();
  v12 = v0;
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  if (*(v0 + 48))
  {

    sub_264B40994();
  }

  sub_2649D8B90(0, &qword_27FF88B00, 0x277CBEBB8);
  v5 = [objc_opt_self() mainRunLoop];
  v6 = sub_264B415F4();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_264B415D4();

  sub_2649D8BD8(v4);
  v12 = v7;
  sub_264B415C4();
  sub_2649D8ED4(&qword_27FF88B08, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v8 = sub_264B40A24();

  v12 = v8;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88B10, &qword_264B44EF8);
  sub_2649CB4C8(&qword_27FF88B18, &qword_27FF88B10, &qword_264B44EF8, MEMORY[0x277CBCB30]);
  v9 = sub_264B40B54();

  return sub_2649D4DA4(v9);
}

uint64_t sub_2649D6C14(uint64_t a1, uint64_t a2)
{
  v3 = sub_264B40EB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264B40EE4();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_264B40F04();
  v45 = *(v52 - 8);
  v11 = MEMORY[0x28223BE20](v52, v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v44 = &v41 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v51 = v3;
  v50 = v4;
  v49 = v7;
  if (Strong)
  {
    if (*(Strong + 40) == 1)
    {
      *(Strong + 40) = 1;
    }

    else
    {
      v17 = Strong;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v19);
      *(&v41 - 2) = v17;
      *(&v41 - 8) = 1;
      aBlock[0] = v17;
      sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
      sub_264B40164();
    }
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v21 = v20;
    swift_getKeyPath();
    aBlock[0] = v21;
    sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
    sub_264B40174();

    swift_beginAccess();
    v22 = *(v21 + 16);

    v43 = a2;
    v42 = v13;
    if (v22 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_264B41884())
    {
      v24 = 0;
      v25 = v22 & 0xC000000000000001;
      v26 = v22 & 0xFFFFFFFFFFFFFF8;
      v54 = v22;
      v53 = v22 & 0xC000000000000001;
      while (v25)
      {
        v29 = MEMORY[0x266748A70](v24, v22);
        v30 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_19;
        }

LABEL_15:
        if (*(v29 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke))
        {
          *(v29 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke) = 1;
        }

        else
        {
          v27 = swift_getKeyPath();
          v55 = &v41;
          MEMORY[0x28223BE20](v27, v28);
          *(&v41 - 2) = v29;
          *(&v41 - 8) = 1;
          aBlock[0] = v29;
          sub_2649D8ED4(&qword_27FF88B20, type metadata accessor for Stroke, &protocol conformance descriptor for Stroke);
          sub_264B40164();

          v25 = v53;
          v22 = v54;
        }

        ++v24;
        if (v30 == i)
        {
          goto LABEL_22;
        }
      }

      if (v24 >= *(v26 + 16))
      {
        goto LABEL_20;
      }

      v29 = *(v22 + 8 * v24 + 32);

      v30 = v24 + 1;
      if (!__OFADD__(v24, 1))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:

    a2 = v43;
    v13 = v42;
  }

  swift_beginAccess();
  v31 = swift_weakLoadStrong();
  if (v31)
  {
    v32 = v31;
    swift_getKeyPath();
    aBlock[0] = v32;
    sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
    sub_264B40174();

    v33 = *(v32 + 48);

    if (v33)
    {
      sub_264B40994();
    }
  }

  sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
  v34 = sub_264B41554();
  sub_264B40EF4();
  v35 = v44;
  sub_264B40F24();
  v55 = *(v45 + 8);
  (v55)(v13, v52);
  aBlock[4] = sub_2649D8F1C;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_57;
  v36 = _Block_copy(aBlock);

  v37 = v46;
  sub_264B40EC4();
  v56 = MEMORY[0x277D84F90];
  sub_2649D8ED4(&qword_27FF892C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_2649CB4C8(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0, MEMORY[0x277D83970]);
  v38 = v48;
  v39 = v51;
  sub_264B41684();
  MEMORY[0x266748800](v35, v37, v38, v36);
  _Block_release(v36);

  (*(v50 + 8))(v38, v39);
  (*(v47 + 8))(v37, v49);
  (v55)(v35, v52);
}

uint64_t sub_2649D74C8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      swift_getKeyPath();
      sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
      sub_264B40174();

      swift_beginAccess();
      v4 = *(v3 + 16);

      if (v4 >> 62)
      {
        goto LABEL_18;
      }

      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        while (1)
        {
          v6 = 0;
          while ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x266748A70](v6, v4);
            v8 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_19;
            }

LABEL_11:
            swift_getKeyPath();
            sub_2649D8ED4(&qword_27FF88B20, type metadata accessor for Stroke, &protocol conformance descriptor for Stroke);
            sub_264B40174();

            if (*(v7 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke))
            {
            }

            else
            {
              sub_264B417D4();
              sub_264B41804();
              sub_264B41814();
              sub_264B417E4();
            }

            ++v6;
            if (v8 == v5)
            {
              goto LABEL_19;
            }
          }

          if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_18:
          v5 = sub_264B41884();
          if (!v5)
          {
            goto LABEL_19;
          }
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }

LABEL_19:
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel, &protocol conformance descriptor for ScreenSharingAnnotationViewModel);
    sub_264B40164();
  }

  return result;
}

char *ScreenSharingAnnotationViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC16ScreenSharingKit32ScreenSharingAnnotationViewModel___observationRegistrar;
  v2 = sub_264B401B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScreenSharingAnnotationViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16ScreenSharingKit32ScreenSharingAnnotationViewModel___observationRegistrar;
  v2 = sub_264B401B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2649D7958(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_264B41884();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_264B41884();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_264AD3904();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2649D8C80(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_2649D7A48(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2649D8370(result, v10, 1, v3, &qword_27FF88AE8, &unk_264B50DE0, &unk_27FF8AA30, &qword_264B44EE0);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA30, &qword_264B44EE0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2649D7C40(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AF0, &qword_264B44EE8);
  v10 = *(type metadata accessor for IdentifiablePoint(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for IdentifiablePoint(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2649D7E18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AA0, &qword_264B44E70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_2649D7F24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A98, &unk_264B57CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_2649D8028(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A90, &qword_264B44E58);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2649D8218(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AD8, &qword_264B44EC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AE0, &unk_264B44ED0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2649D8370(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2649D84B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AA8, &qword_264B44E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_2649D85C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AB8, &qword_264B44EA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AC0, &qword_264B44EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2649D86F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiablePoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D875C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiablePoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D87C0()
{
  v1 = *(type metadata accessor for IdentifiablePoint(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_264B40104();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2649D8894()
{
  v1 = *(type metadata accessor for IdentifiablePoint(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2649D64D4(v2, v3);
}

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2649D8910(uint64_t a1)
{
  v2 = type metadata accessor for IdentifiablePoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2649D8974(uint64_t a1)
{
  result = sub_264B401B4();
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

uint64_t sub_2649D8B18()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_2649D8B90(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2649D8BD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AF8, &qword_264B44EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2649D8C40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2649D8C80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_264B41884();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_264B41884();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2649CB4C8(&qword_27FF88B30, &qword_27FF88B28, &qword_264B57EE0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88B28, &qword_264B57EE0);
            v9 = sub_2649D8E24(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Stroke(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2649D8E24(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266748A70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2649D8EA4;
  }

  __break(1u);
  return result;
}

uint64_t sub_2649D8ED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MockRTIStateCoordinator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t MockRTIStateCoordinator.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_2649D8FDC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2649D9070(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2649D90D0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_2649D9118(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 16) = a1;
  return result;
}

uint64_t sub_2649D916C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2649D91B4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

ScreenSharingKit::TelemetryEvent_optional __swiftcall TelemetryEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264B41AB4();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TelemetryEvent.rawValue.getter()
{
  result = 0x7463416C65676E61;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      result = 0x696472616F626E6FLL;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 6:
      result = 0x696472616F626E6FLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x536E6F6973736573;
      break;
    case 9:
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 0xA:
      result = 0x456E6F6973736573;
      break;
    case 0xB:
      result = 0x54485444646E6573;
      break;
    case 0xC:
      result = 0x44485444646E6573;
      break;
    case 0xE:
      result = 0xD000000000000010;
      break;
    case 0xF:
      result = 0x656C416F69647561;
      break;
    case 0x10:
      result = 0xD000000000000017;
      break;
    case 0x11:
      result = 0xD000000000000014;
      break;
    case 0x12:
      result = 0x6F72444E67617264;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_2649D9604()
{
  v0 = TelemetryEvent.rawValue.getter();
  v2 = v1;
  if (v0 == TelemetryEvent.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_264B41AA4();
  }

  return v5 & 1;
}

uint64_t sub_2649D96A0()
{
  sub_264B41B84();
  TelemetryEvent.rawValue.getter();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_2649D9708(uint64_t a1)
{
  TelemetryEvent.rawValue.getter();
  sub_264B41084();
}

uint64_t sub_2649D976C(uint64_t a1, unsigned __int8 a2)
{
  sub_264B41084();
}

uint64_t sub_2649D98E4(uint64_t a1)
{
  sub_264B41B84();
  TelemetryEvent.rawValue.getter();
  sub_264B41084();

  return sub_264B41BB4();
}

unint64_t sub_2649D9954@<X0>(unint64_t *a1@<X8>)
{
  result = TelemetryEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ScreenSharingKit::TelemetryEventPayloadKeys_optional __swiftcall TelemetryEventPayloadKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264B418D4();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TelemetryEventPayloadKeys.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E6F73616552;
    v7 = 0x6E6F697461727544;
    if (v1 != 2)
    {
      v7 = 0x646F43726F727245;
    }

    if (*v0)
    {
      v6 = 0x6F436E6F73616552;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6A624F726F727245;
    v3 = 0x7461746E6569724FLL;
    if (v1 != 7)
    {
      v3 = 0x795468636E75614CLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x727453726F727245;
    if (v1 != 4)
    {
      v4 = 0x707954726F727245;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2649D9B44()
{
  v1 = *v0;
  sub_264B41B84();
  sub_2649D976C(v3, v1);
  return sub_264B41BB4();
}

uint64_t sub_2649D9B94(uint64_t a1)
{
  v2 = *v1;
  sub_264B41B84();
  sub_2649D976C(v4, v2);
  return sub_264B41BB4();
}

uint64_t sub_2649D9BE4@<X0>(uint64_t *a1@<X8>)
{
  result = TelemetryEventPayloadKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ScreenSharingKit::TelemetryErrorReportingCategories_optional __swiftcall TelemetryErrorReportingCategories.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

ScreenSharingKit::TelemetrySessionEndedReason_optional __swiftcall TelemetrySessionEndedReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 24;
  switch(rawValue)
  {
    case 0:
      goto LABEL_39;
    case 1:
      v2 = 1;
      goto LABEL_39;
    case 2:
      v2 = 2;
      goto LABEL_39;
    case 3:
      v2 = 3;
      goto LABEL_39;
    case 4:
      v2 = 4;
      goto LABEL_39;
    case 5:
      v2 = 5;
      goto LABEL_39;
    case 6:
      v2 = 6;
      goto LABEL_39;
    case 7:
      v2 = 7;
      goto LABEL_39;
    case 8:
      v2 = 8;
      goto LABEL_39;
    case 9:
      v2 = 9;
      goto LABEL_39;
    case 10:
      v2 = 10;
      goto LABEL_39;
    case 11:
      v2 = 11;
      goto LABEL_39;
    case 12:
      v2 = 12;
      goto LABEL_39;
    case 13:
      v2 = 13;
      goto LABEL_39;
    case 14:
      v2 = 14;
      goto LABEL_39;
    case 15:
      v2 = 15;
      goto LABEL_39;
    case 16:
      v2 = 16;
      goto LABEL_39;
    case 17:
      v2 = 17;
      goto LABEL_39;
    case 18:
      v2 = 18;
      goto LABEL_39;
    case 19:
      v2 = 19;
      goto LABEL_39;
    case 20:
      v2 = 20;
      goto LABEL_39;
    case 21:
      v2 = 21;
      goto LABEL_39;
    case 22:
      v2 = 22;
      goto LABEL_39;
    case 23:
      v2 = 23;
LABEL_39:
      v3 = v2;
      goto LABEL_40;
    case 24:
LABEL_40:
      *v1 = v3;
      break;
    case 25:
      *v1 = 25;
      break;
    case 26:
      *v1 = 26;
      break;
    case 27:
      *v1 = 27;
      break;
    case 28:
      *v1 = 28;
      break;
    case 29:
      *v1 = 29;
      break;
    case 30:
      *v1 = 30;
      break;
    case 31:
      *v1 = 31;
      break;
    case 32:
      *v1 = 32;
      break;
    case 33:
      *v1 = 33;
      break;
    case 34:
      *v1 = 34;
      break;
    case 35:
      *v1 = 35;
      break;
    case 36:
      *v1 = 36;
      break;
    case 37:
      *v1 = 37;
      break;
    case 38:
      *v1 = 38;
      break;
    case 39:
      *v1 = 39;
      break;
    case 40:
      *v1 = 40;
      break;
    case 41:
      *v1 = 41;
      break;
    default:
      *v1 = 42;
      break;
  }

  return rawValue;
}

unint64_t sub_2649D9EB8()
{
  result = qword_27FF88B38;
  if (!qword_27FF88B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88B38);
  }

  return result;
}

unint64_t sub_2649D9F40()
{
  result = qword_27FF88B50;
  if (!qword_27FF88B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88B50);
  }

  return result;
}

uint64_t sub_2649D9FC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2649DA01C()
{
  result = qword_27FF88B68;
  if (!qword_27FF88B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88B68);
  }

  return result;
}

unint64_t sub_2649DA074()
{
  result = qword_27FF88B70;
  if (!qword_27FF88B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88B70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TelemetryEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TelemetryEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnotationServiceClientError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnotationServiceClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TelemetrySessionEndedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD7)
  {
    goto LABEL_17;
  }

  if (a2 + 41 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 41) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 41;
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

      return (*a1 | (v4 << 8)) - 41;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 41;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2A;
  v8 = v6 - 42;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TelemetrySessionEndedReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 41 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 41) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD7)
  {
    v4 = 0;
  }

  if (a2 > 0xD6)
  {
    v5 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
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
    *result = a2 + 41;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

const char *OnenessFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "AppLaunch";
  }

  else
  {
    return "RemoteTextInput";
  }
}

uint64_t OnenessFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_2649DA608()
{
  result = qword_27FF88B78;
  if (!qword_27FF88B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88B78);
  }

  return result;
}

const char *sub_2649DA670()
{
  if (*v0)
  {
    return "AppLaunch";
  }

  else
  {
    return "RemoteTextInput";
  }
}

uint64_t getEnumTagSinglePayload for OnenessFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2649DA74C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

id sub_2649DA7C0()
{
  [*&v0[OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinder] stop];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FigCameraBackedDeviceSensorObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FigCameraBackedDeviceSensorObserver(uint64_t a1)
{
  result = qword_27FF88BA0;
  if (!qword_27FF88BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_2649DA960()
{
  v1 = sub_264B41544();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264B414F4();
  MEMORY[0x28223BE20](v4, v5);
  v6 = sub_264B40EE4();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - v11;
  v13 = OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver__sensorsInUse;
  v32 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
  sub_264B40A44();
  (*(v9 + 32))(v0 + v13, v12, v8);
  v26 = OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinderDelegateQueue;
  sub_2649CB2F0();
  sub_264B40EC4();
  v32 = MEMORY[0x277D84F90];
  sub_2649DB7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88CA8, &unk_264B471C0);
  sub_2649CB4C8(&qword_27FF88CB0, &qword_27FF88CA8, &unk_264B471C0, MEMORY[0x277D83970]);
  sub_264B41684();
  (*(v29 + 104))(v28, *MEMORY[0x277D85260], v30);
  v14 = sub_264B41574();
  v15 = v27;
  *&v27[v26] = v14;
  v16 = [objc_allocWithZone(MEMORY[0x277CF3B78]) init];
  *&v15[OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinder] = v16;
  v17 = type metadata accessor for FigCameraBackedDeviceSensorObserver(0);
  v31.receiver = v15;
  v31.super_class = v17;
  v18 = objc_msgSendSuper2(&v31, sel_init);
  v19 = OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinder;
  v20 = *&v18[OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinder];
  v21 = *&v18[OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinderDelegateQueue];
  v22 = v18;
  [v20 setDelegate:v22 queue:v21];
  v23 = *&v18[v19];
  sub_264A240D0(MEMORY[0x277D84F90]);
  v24 = sub_264B40F54();

  [v23 startWithOptions_];

  return v22;
}

void sub_2649DAD84(uint64_t a1)
{
  sub_2649DAE24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2649DAE24(uint64_t a1)
{
  if (!qword_27FF88BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF89D80, &qword_264B45588);
    v1 = sub_264B40AA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF88BB0);
    }
  }
}

uint64_t sub_2649DAF78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF88C80, &unk_264B455A0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  sub_264B40A54();
  swift_endAccess();
  sub_2649CB4C8(&qword_27FF88C90, &unk_27FF88C80, &unk_264B455A0, MEMORY[0x277CBCEC8]);
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_2649DB0DC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_2649DB15C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_264B40A94();
}

void *sub_2649DB1D4(void *a1)
{
  v2 = v1;
  v4 = sub_264B40F14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71B8);
  v10 = a1;
  v11 = sub_264B40944();
  v12 = sub_264B414B4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    result = swift_slowAlloc();
    v23 = result;
    *v13 = 136315138;
    if (!a1)
    {
      goto LABEL_10;
    }

    v15 = result;

    [v10 clientAuditToken];
    type metadata accessor for audit_token_t(0);
    v16 = sub_264B41064();
    v18 = sub_2649CC004(v16, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2649C6000, v11, v12, "Application %s is using the camera", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x266749940](v15, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v19 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinderDelegateQueue);
  *v8 = v19;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v20 = v19;
  LOBYTE(v19) = sub_264B40F34();
  result = (*(v5 + 8))(v8, v4);
  if (v19)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = sub_264B40A74();
    sub_264A12A64(&v23, 0);
    v21(v24, 0);
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void *sub_2649DB4B8(void *a1)
{
  v2 = v1;
  v4 = sub_264B40F14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71B8);
  v10 = a1;
  v11 = sub_264B40944();
  v12 = sub_264B414B4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    result = swift_slowAlloc();
    v23 = result;
    *v13 = 136315138;
    if (!a1)
    {
      goto LABEL_10;
    }

    v15 = result;

    [v10 clientAuditToken];
    type metadata accessor for audit_token_t(0);
    v16 = sub_264B41064();
    v18 = sub_2649CC004(v16, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2649C6000, v11, v12, "Application %s is no longer using the camera", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x266749940](v15, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v19 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinderDelegateQueue);
  *v8 = v19;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v20 = v19;
  LOBYTE(v19) = sub_264B40F34();
  result = (*(v5 + 8))(v8, v4);
  if (v19)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = sub_264B40A74();
    sub_264AA9F00(0, &v23);
    v21(v24, 0);
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_2649DB7A4()
{
  result = qword_27FF88CA0;
  if (!qword_27FF88CA0)
  {
    sub_264B414F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88CA0);
  }

  return result;
}

uint64_t ControlMessageSession.Role.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_2649DB88C()
{
  result = qword_27FF88CC0;
  if (!qword_27FF88CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88CC0);
  }

  return result;
}

uint64_t sub_2649DB8F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();
}

uint64_t sub_2649DB968()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_2649DB9DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_2649DBA50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession_sessionStateContinuation;
  swift_beginAccess();
  sub_2649DD3D0(v7, a2 + v10);
  return swift_endAccess();
}

uint64_t sub_2649DBB88()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DB0, &qword_264B46F90);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649DBCD0, v0, 0);
}

uint64_t sub_2649DBCD0()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[5] = 3;

  sub_264B40A94();
  v5 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession_sessionStateContinuation;
  swift_beginAccess();
  sub_2649DDAB0(v4 + v5, v1);
  v6 = *(v3 + 48);
  if (v6(v1, 1, v2))
  {
    sub_2649D04D4(v0[13], &qword_27FF88D78, &qword_264B45850);
    v7 = 1;
  }

  else
  {
    v8 = v0[13];
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    (*(v10 + 16))(v9, v8, v11);
    sub_2649D04D4(v8, &qword_27FF88D78, &qword_264B45850);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264B40A84();

    v0[7] = v0[6];
    sub_264B412A4();
    (*(v10 + 8))(v9, v11);
    v7 = 0;
  }

  v12 = v0[14];
  v13 = v0[12];
  v14 = v0[9];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DB8, &unk_264B46FB0);
  (*(*(v15 - 8) + 56))(v12, v7, 1, v15);
  sub_2649D04D4(v12, &qword_27FF88DB0, &qword_264B46F90);
  sub_2649DDAB0(v4 + v5, v13);
  v16 = v6(v13, 1, v14);
  v17 = v0[12];
  if (v16)
  {
    sub_2649D04D4(v0[12], &qword_27FF88D78, &qword_264B45850);
  }

  else
  {
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];
    (*(v19 + 16))(v18, v0[12], v20);
    sub_2649D04D4(v17, &qword_27FF88D78, &qword_264B45850);
    sub_264B412B4();
    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_2649DC01C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for MockMediaStream(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = OBJC_IVAR____TtC16ScreenSharingKit15MockMediaStream_stateContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + 24) = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = sub_264B40A74();
  v10 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v10;
  *v10 = 0x8000000000000000;
  sub_264A22858(v5, v3, isUniquelyReferenced_nonNull_native);
  *v10 = v14;
  v8(v13, 0);

  a2[3] = v4;
  a2[4] = &off_28765F3A8;
  *a2 = v5;
  return result;
}

uint64_t sub_2649DC1B0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v3;
}

void *sub_2649DC21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_264A92948(&unk_287655B30);
  type metadata accessor for MockControlMessageStream(0);
  swift_allocObject();

  v5 = sub_2649E2724(a1, a2, v4);
  swift_getKeyPath();
  swift_getKeyPath();

  v6 = sub_264B40A74();
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v8;
  *v8 = 0x8000000000000000;
  sub_264A229A4(v5, a1, a2, isUniquelyReferenced_nonNull_native);

  *v8 = v12;
  v6(v11, 0);

  return v5;
}

uint64_t sub_2649DC37C()
{
  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession_sessionStateContinuation, &qword_27FF88D78, &qword_264B45850);
  v1 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__currentState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA0, &qword_264B45878);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__startSessionCalled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__videoLayer;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D90, &qword_264B45868);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__mediaStreamsByType;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D88, &qword_264B45860);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__streamsByIdentifier;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D80, &qword_264B45858);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MockMediaTransportClientSession(uint64_t a1)
{
  result = qword_27FF88CF0;
  if (!qword_27FF88CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2649DC5AC(uint64_t a1)
{
  sub_2649DC89C(319, &qword_27FF88D00, &qword_27FF88D08, &qword_264B49A40, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2649DC850(319, &qword_27FF88D10, &type metadata for MediaTransportSessionState);
    if (v2 <= 0x3F)
    {
      sub_2649DC850(319, &qword_27FF8A990, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_2649DC89C(319, &qword_27FF88D18, &qword_27FF88D20, &qword_264B456F0, MEMORY[0x277CBCED0]);
        if (v4 <= 0x3F)
        {
          sub_2649DC89C(319, &qword_27FF88D28, &qword_27FF88D30, &qword_264B45710, MEMORY[0x277CBCED0]);
          if (v5 <= 0x3F)
          {
            sub_2649DC89C(319, &qword_27FF88D38, &qword_27FF88D40, qword_264B45718, MEMORY[0x277CBCED0]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2649DC850(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_264B40AA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2649DC89C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2649DC90C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2649DC930, v2, 0);
}

uint64_t sub_2649DC930()
{
  sub_2649DC01C(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

_UNKNOWN **sub_2649DC9A0(uint64_t a1, uint64_t a2)
{
  result = sub_2649DC21C(a1, a2);
  if (v2)
  {
    return &off_287657A40;
  }

  return result;
}

uint64_t sub_2649DC9E8()
{
  sub_2649DD2A4();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2649DCA74(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2649DCA94, v1, 0);
}

uint64_t sub_2649DCA94()
{
  v1 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  v2 = v1;
  sub_264B40A94();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2649DCB4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D60, &qword_264B457F8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649DCC18, v1, 0);
}

uint64_t sub_2649DCC18()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 56) = 1;

  sub_264B40A94();
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D68, &qword_264B46FC0);
  v4[4] = sub_2649DD308();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_264B412E4();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2649DCD64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649DCDF0;

  return sub_2649DBB88();
}

uint64_t sub_2649DCDF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2649DCEE8(uint64_t a1)
{
  result = sub_2649DCF70(&qword_27FF88D48, &unk_264B45784);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2649DCF2C(uint64_t a1)
{
  result = sub_2649DCF70(&qword_27FF88D50, &unk_264B45730);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2649DCF70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MockMediaTransportClientSession(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2649DCFB4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_2649DD034(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2649DDB20(v2);

  return sub_264B40A94();
}

uint64_t sub_2649DD0B0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_2649DD130(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_2649DD1A4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_2649DD228(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_264B40A94();
}

unint64_t sub_2649DD2A4()
{
  result = qword_27FF88D58;
  if (!qword_27FF88D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88D58);
  }

  return result;
}

unint64_t sub_2649DD308()
{
  result = qword_27FF88D70;
  if (!qword_27FF88D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88D68, &qword_264B46FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88D70);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2649DD3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649DD440@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a4 = v6;
  return result;
}

uint64_t sub_2649DD4BC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_2649DD534(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v45 = a4;
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D80, &qword_264B45858);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v41 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D88, &qword_264B45860);
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v38 = &v37 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D90, &qword_264B45868);
  v11 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA0, &qword_264B45878);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v37 - v23;

  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  v25 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession_sessionStateContinuation;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  (*(*(v26 - 8) + 56))(v4 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__currentState;
  v46 = 0;
  sub_264B40A44();
  (*(v21 + 32))(v4 + v27, v24, v20);
  v28 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__startSessionCalled;
  LOBYTE(v46) = 0;
  sub_264B40A44();
  (*(v16 + 32))(v4 + v28, v19, v15);
  v29 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__videoLayer;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D20, &qword_264B456F0);
  sub_264B40A44();
  (*(v11 + 32))(v4 + v29, v14, v37);
  v30 = v4 + OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession_discoveryBluetoothRSSIThreshold;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__mediaStreamsByType;
  v32 = MEMORY[0x277D84F98];
  v46 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D30, &qword_264B45710);
  v33 = v38;
  sub_264B40A44();
  (*(v39 + 32))(v4 + v31, v33, v40);
  v34 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__streamsByIdentifier;
  v46 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D40, qword_264B45718);
  v35 = v41;
  sub_264B40A44();
  (*(v42 + 32))(v4 + v34, v35, v43);
  *v30 = v44;
  *(v30 + 8) = v45 & 1;
  return v4;
}

uint64_t sub_2649DDAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2649DDB20(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

unint64_t sub_2649DDB44()
{
  result = qword_27FF88DC0;
  if (!qword_27FF88DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88DC0);
  }

  return result;
}

uint64_t sub_2649DDB98(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DE0, &qword_264B45B18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649DE374();
  sub_264B41BD4();
  v11[15] = *v3;
  v11[14] = 0;
  sub_2649DE41C();
  sub_264B41A24();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11[13] = 1;
  sub_264B419E4();
  v11[12] = 2;
  sub_264B419E4();
  v11[11] = 3;
  sub_264B419E4();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2649DDD70()
{
  v1 = 1701869940;
  v2 = 0x79546D6165727473;
  if (*v0 != 2)
  {
    v2 = 0x496E6F6973736573;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2649DDDF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2649DE588(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2649DDE18(uint64_t a1)
{
  v2 = sub_2649DE374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649DDE54(uint64_t a1)
{
  v2 = sub_2649DE374();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2649DDE90@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2649DE078(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_2649DDEF8()
{
  BYTE8(v2) = 0;
  sub_264B41754();
  MEMORY[0x266748390](0x203A6570797420, 0xE700000000000000);
  *&v2 = *v0;
  sub_264B41864();
  MEMORY[0x266748390](0xD000000000000013, 0x8000000264B59570);
  MEMORY[0x266748390](*(v0 + 1), *(v0 + 2));
  return *(&v2 + 1);
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

uint64_t sub_2649DDFD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2649DE01C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2649DE078@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DC8, &qword_264B45B10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649DE374();
  sub_264B41BC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v36 = 0;
  sub_2649DE3C8();
  sub_264B41984();
  v10 = v37;
  v35 = 1;
  v11 = sub_264B41914();
  v31 = v10;
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v30 = v14;
  v15 = 0xE000000000000000;
  if (v12)
  {
    v15 = v12;
  }

  v32 = v15;
  v34 = 2;
  v16 = sub_264B41914();
  v18 = v17;
  v19 = 0xE000000000000000;
  if (v17)
  {
    v19 = v17;
  }

  v28 = v16;
  v29 = v19;
  v33 = 3;
  v20 = sub_264B41914();
  if (v18)
  {
    v22 = v28;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  if (v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  (*(v6 + 8))(v9, v5);
  v25 = v32;

  v26 = v29;

  __swift_destroy_boxed_opaque_existential_0(a1);

  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v25;
  *(a2 + 24) = v22;
  *(a2 + 32) = v26;
  *(a2 + 40) = v23;
  *(a2 + 48) = v24;
  return result;
}

unint64_t sub_2649DE374()
{
  result = qword_27FF88DD0;
  if (!qword_27FF88DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88DD0);
  }

  return result;
}

unint64_t sub_2649DE3C8()
{
  result = qword_27FF88DD8;
  if (!qword_27FF88DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88DD8);
  }

  return result;
}

unint64_t sub_2649DE41C()
{
  result = qword_27FF88DE8;
  if (!qword_27FF88DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88DE8);
  }

  return result;
}

unint64_t sub_2649DE484()
{
  result = qword_27FF88DF0;
  if (!qword_27FF88DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88DF0);
  }

  return result;
}

unint64_t sub_2649DE4DC()
{
  result = qword_27FF88DF8;
  if (!qword_27FF88DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88DF8);
  }

  return result;
}

unint64_t sub_2649DE534()
{
  result = qword_27FF88E00;
  if (!qword_27FF88E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88E00);
  }

  return result;
}

uint64_t sub_2649DE588(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B59590 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79546D6165727473 && a2 == 0xEA00000000006570 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044)
  {

    return 3;
  }

  else
  {
    v6 = sub_264B41AA4();

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

uint64_t BluetoothState.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_2649DE790()
{
  result = qword_27FF88E08;
  if (!qword_27FF88E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88E08);
  }

  return result;
}

BOOL sub_2649DE81C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlMessage(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v8 = sub_264B40964();
  v9 = __swift_project_value_buffer(v8, qword_27FF8AEA0);
  sub_2649CB5C0(a1, v45);

  v10 = sub_264B40944();
  v11 = sub_264B41484();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41[1] = v9;
    v42[0] = v2;
    v14 = v13;
    v44 = v13;
    *v12 = 136446466;
    type metadata accessor for DragAndDropEventRouter();

    v15 = sub_264B41064();
    v17 = sub_2649CC004(v15, v16, &v44);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    v18 = v46;
    v19 = __swift_project_boxed_opaque_existential_1(v45, v46);
    v43 = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v19, v18);
    __swift_project_boxed_opaque_existential_1(v42, v43);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(v42);
    v21 = sub_264B41C44();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0(v45);
    v24 = sub_2649CC004(v21, v23, &v44);

    *(v12 + 14) = v24;
    _os_log_impl(&dword_2649C6000, v10, v11, "%{public}s: did receive message: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  (*(v26 + 8))(v25, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v28 = *v7;
    v29 = *(v7 + 1);
    v31 = *(v7 + 2);
    v30 = *(v7 + 3);
    if (v7[32])
    {
      v32 = v7[33];
      sub_2649DEF18(v28, v29);

      sub_264B139C4(v28, v29, v31, v30, v32);
      sub_2649DEF6C(v28, v29);
    }

    else
    {
      sub_2649DEF18(*v7, *(v7 + 1));

      sub_264AD15B0(v28, v29, v31, v30);

      sub_2649DEF6C(v28, v29);
    }

    sub_2649DEF6C(v28, v29);
  }

  else
  {
    sub_2649DEEBC(v7);

    v33 = sub_264B40944();
    v34 = sub_264B41494();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45[0] = v36;
      *v35 = 136446210;
      v42[0] = v2;
      type metadata accessor for DragAndDropEventRouter();

      v37 = sub_264B41064();
      v39 = sub_2649CC004(v37, v38, v45);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_2649C6000, v33, v34, "%{public}s: error decoding DragAndDropEvent event", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x266749940](v36, -1, -1);
      MEMORY[0x266749940](v35, -1, -1);
    }
  }

  return EnumCaseMultiPayload == 5;
}

void sub_2649DECD8()
{
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FF8AEA0);

  v1 = sub_264B40944();
  v2 = sub_264B414B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446210;
    type metadata accessor for DragAndDropEventRouter();

    v5 = sub_264B41064();
    v7 = sub_2649CC004(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2649C6000, v1, v2, "%{public}s: Invalidating", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x266749940](v4, -1, -1);
    MEMORY[0x266749940](v3, -1, -1);
  }

  sub_264AD172C();
  sub_264B13F74();
}