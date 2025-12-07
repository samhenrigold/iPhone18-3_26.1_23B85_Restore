BOOL sub_1C5C8F0A4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C60179F0();
  sub_1C60169F0();
  v8 = sub_1C6017A20();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1C6017860() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1C5C8D8D8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_1C5C8F1F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C5C8FE04(0, &qword_1EC1A89C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  result = sub_1C60174F0();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1C60179F0();

        sub_1C60169F0();
        result = sub_1C6017A20();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_1C5C8F534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_110()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_3(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_45_4()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_45_6()
{

  return swift_unknownObjectRetain();
}

void OUTLINED_FUNCTION_45_7()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_45_9(uint64_t a1, void *a2, uint64_t a3)
{

  sub_1C5E00B08(0, a2);
}

uint64_t sub_1C5C8F8BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

_OWORD *OUTLINED_FUNCTION_87_1()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1C5C70758(v4, (v2 - 176));
}

uint64_t OUTLINED_FUNCTION_87_2(uint64_t a1)
{

  return sub_1C6017660();
}

void OUTLINED_FUNCTION_87_3()
{
  v2 = *(v0 + 384);
}

BOOL OUTLINED_FUNCTION_127()
{
  *(v0 + 208) = v1;

  return os_log_type_enabled(v2, v1);
}

void sub_1C5C8F9EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1, uint64_t a2)
{

  return sub_1C60176E0();
}

void *OUTLINED_FUNCTION_44_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = 0;
  v10[1] = 0;
  v11[228] = a9;
  v11[229] = a10;
  sub_1C5D3DD34(v10);

  return memcpy(v11 + 114, v10, 0xD9uLL);
}

void OUTLINED_FUNCTION_44_7()
{
}

id OUTLINED_FUNCTION_44_10(uint64_t a1)
{

  return sub_1C5DD9388(v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_11()
{
}

unint64_t OUTLINED_FUNCTION_139_0()
{

  return sub_1C5CB5808();
}

uint64_t OUTLINED_FUNCTION_35_2(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_35_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void *OUTLINED_FUNCTION_35_4()
{
  v2 = v0[2] + 1;

  return sub_1C5D0DEE4(0, v2, 1, v0);
}

unint64_t OUTLINED_FUNCTION_35_5()
{
  v2 = v1[20];
  v1[17] = *v0;
  v1[18] = v2;
  return 0xD000000000000019;
}

void OUTLINED_FUNCTION_35_9()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_35_10()
{
}

uint64_t OUTLINED_FUNCTION_35_18(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1C6016880();
}

unint64_t sub_1C5C8FDB0()
{
  result = qword_1ED7DC290;
  if (!qword_1ED7DC290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DC290);
  }

  return result;
}

void sub_1C5C8FE04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1C6017520();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_154_0()
{
}

void OUTLINED_FUNCTION_117_0()
{

  JUMPOUT(0x1C69534E0);
}

unint64_t OUTLINED_FUNCTION_117_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C5C6AB10(v3, v4, a3);
}

uint64_t sub_1C5C8FEE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C6017440();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1C5C8FF08()
{
  if (!qword_1EC1A89C0)
  {
    v0 = sub_1C6017520();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A89C0);
    }
  }
}

uint64_t sub_1C5C906A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  return sub_1C5CB5698(a1, v4);
}

uint64_t sub_1C5C90860(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1C5C9088C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1C5C9094C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C5CB82B0(a2, a3);
  *a1 = result;
  return result;
}

void *sub_1C5C909BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C5C909CC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_27_1(a1);
  result = sub_1C5C90884(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1C5C90A4C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_27_1(a1);
  result = sub_1C5C908A4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1C5C90AD4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C5CAC450(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1C5C90C6C()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_178();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C90CE8()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C90D1C()
{
  sub_1C6014F20();
  OUTLINED_FUNCTION_105();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C5C90D9C()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C9127C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C912C4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C9130C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C91354()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C9138C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C913D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C91430()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C91470()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 104);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1C5C91528()
{
  v1 = sub_1C6015020();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  v5 = *(v0 + 56);
  if (v5 != 1)
  {
  }

  v6 = (v3 + 144) & ~v3;

  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v4, v3 | 7);
}

uint64_t sub_1C5C91650()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C91688()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C9172C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_52_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C91768()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C9179C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C917DC()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_52_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C91828()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C91884(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    OUTLINED_FUNCTION_0_12(a1, &qword_1EC1AAAA0);
    v9 = v8;
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_1C5C91910(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_0_12(result, &qword_1EC1AAAA0);
    v8 = v7;
    v9 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1C5C91994()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C919D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C91A0C()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C91A40()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C91AEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C91B34()
{
  v1 = sub_1C6015BF0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C5C91BFC()
{
  MEMORY[0x1C6956A70](v0 + 16);
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C91C30()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_178();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C91C74()
{
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C91CD0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C91D20()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C91D60()
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1C6015600();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C91D88()
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1C60155E0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C91DB0()
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1C60155B0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C91DD8()
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1C60155F0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C91E00()
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1C60155A0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C91E28()
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1C6015580();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C91E50()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C91EC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    OUTLINED_FUNCTION_0_19();
    sub_1C5D0A178(0, v8, v9, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v12, a2, v11);
  }
}

uint64_t sub_1C5C91F68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_0_19();
    sub_1C5D0A178(0, v7, v8, MEMORY[0x1E69E6720]);
    v10 = v9;
    v11 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1C5C92030@<X0>(_BYTE *a1@<X8>)
{
  result = PodcastsDefaultsHelper.playbackRateMigrationAttempted.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5C920F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C5D129A8(a2);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5C92148@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C5D12AC0(a2);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5C92290()
{
  MEMORY[0x1C6956A70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C922CC()
{
  sub_1C60158F0();
  OUTLINED_FUNCTION_25();
  v3 = (((*(v2 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v4 = OUTLINED_FUNCTION_55_1();
  v5(v4);

  v6 = OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_1C5C923B0()
{
  OUTLINED_FUNCTION_70_0();
  result = sub_1C5D15C64();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C5C92404()
{
  OUTLINED_FUNCTION_70_0();
  result = sub_1C5D15D84();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C5C92458()
{
  OUTLINED_FUNCTION_70_0();
  result = sub_1C5D15EC8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C92484()
{
  OUTLINED_FUNCTION_70_0();
  result = sub_1C5D160A0();
  *v0 = result;
  return result;
}

uint64_t sub_1C5C924B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C924F0()
{
  sub_1C60158F0();
  OUTLINED_FUNCTION_105();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1C5C92598()
{
  sub_1C60158F0();
  OUTLINED_FUNCTION_25();

  v1 = OUTLINED_FUNCTION_55_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C5C92654()
{
  v1 = sub_1C60158F0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v4 + v5) & ~v4;

  v8 = *(v3 + 8);
  v8(v0 + v5, v1);
  v8(v0 + v7, v1);
  v9 = OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1C5C92738()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C9279C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5D2AFC8();
  *a1 = result;
  return result;
}

uint64_t sub_1C5C927D0()
{
  MEMORY[0x1C6956A70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C92808()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C92880()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C5C928DC()
{
  sub_1C5D3A084(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C5C92964()
{
  sub_1C5D3A084(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

BOOL sub_1C5C92A38(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1C5C92A74()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C92AAC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C92B0C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C5C92B54()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C92B9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 42, 7);
}

uint64_t sub_1C5C92BE4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C5C92C3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C92C80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C92CBC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C92D44()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C92D78()
{
  MEMORY[0x1C6956A70](v0 + 16);
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C92DAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C92DE4()
{

  v1 = *(v0 + 24);
  if (v1 >= 0xA)
  {
  }

  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  v2 = OUTLINED_FUNCTION_54_4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C5C92E3C()
{

  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  v1 = OUTLINED_FUNCTION_54_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C92E8C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C92EF4()
{

  v1 = OUTLINED_FUNCTION_53_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C92F34()
{
  if (*(v0 + 32))
  {
  }

  v1 = OUTLINED_FUNCTION_53_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C92F74()
{

  swift_unknownObjectRelease();

  sub_1C5D5D350(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1C5C9308C()
{

  sub_1C5D5D350(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1C5C93108()
{
  if (*(v0 + 16))
  {
  }

  v1 = OUTLINED_FUNCTION_54_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C93150()
{

  v0 = OUTLINED_FUNCTION_53_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C93190()
{
  sub_1C5D5D900();
  v2 = v1;
  OUTLINED_FUNCTION_25();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v0 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v8, v5 | 7);
}

uint64_t get_enum_tag_for_layout_string_17MediaPlaybackCore11PauseReasonO_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_1C5C93610@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExternalContent];
  *a2 = result;
  return result;
}

id sub_1C5C936D8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) isVideoContent];
  *v1 = result;
  return result;
}

id sub_1C5C9379C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) prefersSeekOverSkip];
  *v1 = result;
  return result;
}

id sub_1C5C937E0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) transitionPlaybackEndStateSourceTime];
  *v1 = v3;
  return result;
}

id sub_1C5C93824(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) transitionPlaybackEndStateTargetTime];
  *v1 = v3;
  return result;
}

uint64_t sub_1C5C93868()
{
  _Block_release(*(v0 + 16));

  v1 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C938A0()
{
  MEMORY[0x1C6956A70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C938D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C93914()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C9394C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C93984()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C939C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C939F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C93A30()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C93A6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C93AF8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C93B30()
{

  OUTLINED_FUNCTION_178();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

id sub_1C5C93B98(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) isPlaybackBufferEmpty];
  *v1 = result;
  return result;
}

id sub_1C5C93BC8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) isPlaybackBufferFull];
  *v1 = result;
  return result;
}

id sub_1C5C93BF8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) isPlaybackLikelyToKeepUp];
  *v1 = result;
  return result;
}

id sub_1C5C93C5C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) volume];
  *v1 = v3;
  return result;
}

id sub_1C5C93CA0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) timeControlStatus];
  *v1 = result;
  return result;
}

id sub_1C5C93CD0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) rate];
  *v1 = v3;
  return result;
}

id sub_1C5C93D14(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) status];
  *v1 = result;
  return result;
}

uint64_t sub_1C5C93D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C93D8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C9414C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C94184()
{

  sub_1C5D5D350(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C5C945F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C94630()
{
  v1 = sub_1C60149E0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C5C946F0()
{
  v1 = sub_1C6014AE0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1C5C94814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_16();
  v6 = sub_1C6014B20();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_2_37();
    sub_1C5DB08EC(0, v9, v10, MEMORY[0x1E69E6720]);
    v7 = v11;
    v8 = v4 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_1C5C948C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_24_16();
  v8 = sub_1C6014B20();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_2_37();
    sub_1C5DB08EC(0, v11, v12, MEMORY[0x1E69E6720]);
    v9 = v13;
    v10 = v5 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_1C5C94984()
{
  OUTLINED_FUNCTION_24_16();
  v2 = sub_1C6014A60();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, v0, v2);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5C949C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C6014A60();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1C5C94A24()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C94A6C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  OUTLINED_FUNCTION_34_10();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C94AB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C94AF8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  OUTLINED_FUNCTION_34_10();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C94B3C()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C5C94B94()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1C5C94C4C()
{

  v1 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C94C84()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1C5C94CC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C5C94CFC()
{

  v0 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C94D30()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C94D68()
{

  v0 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C94D98()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C94E20()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C94E58()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C5C94EBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C94EF4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C94F2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C950F4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C9512C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C95164()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1C5C951B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C5C951F8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C95240()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C95284(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_15(a1);
  v2 = PlayerState.init(rawValue:)(v1);
  return OUTLINED_FUNCTION_214(v2, v3);
}

uint64_t sub_1C5C952AC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_15(a1);
  v2 = PlaybackBehaviorType.init(rawValue:)(v1);
  return OUTLINED_FUNCTION_214(v2, v3);
}

uint64_t sub_1C5C952D4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_15(a1);
  v2 = ItemRequestReason.init(rawValue:)(v1);
  return OUTLINED_FUNCTION_214(v2, v3);
}

uint64_t sub_1C5C952FC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_15(a1);
  v2 = ExternalPlaybackType.init(rawValue:)(v1);
  return OUTLINED_FUNCTION_214(v2, v3);
}

uint64_t sub_1C5C95488()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C954C4()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C954F8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C5DCB178(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C5C9557C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5DCE570();
  *a1 = result & 1;
  return result;
}

id sub_1C5C955D4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) rate];
  *v1 = v3;
  return result;
}

id sub_1C5C95604(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) currentTime];
  *v1 = v3;
  return result;
}

id sub_1C5C95634(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) currentState];
  *v1 = result;
  return result;
}

uint64_t sub_1C5C95668()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C956A0()
{
  MEMORY[0x1C6956A70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C9579C()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C957D4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C95A34()
{

  sub_1C5D867AC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 90) << 16));

  return MEMORY[0x1EEE6BDD0](v0, 91, 7);
}

uint64_t sub_1C5C95A98()
{
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C95AC8()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C95AF8()
{

  v0 = OUTLINED_FUNCTION_15_23();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C95B34()
{
  v1 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C95B64()
{

  v1 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C95BCC()
{

  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_15_23();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C95C0C()
{
  MEMORY[0x1C6956A70](v0 + 16);
  v1 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C95C40()
{

  v0 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C95C70()
{

  if (*(v0 + 24))
  {
  }

  v1 = OUTLINED_FUNCTION_15_23();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C95CFC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C95D34()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C95E20()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C95F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C5C95EBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C5C95F54()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1C5C95FE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C96050()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C9615C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C961A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C961E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C96254()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_139_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C962A0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_139_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C962F0()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C96348()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_178();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C9638C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C963D4()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C9648C()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1C5C964D4()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C96508@<X0>(uint64_t *a1@<X8>)
{
  result = PlaybackEngineSessionManager.lastSessionIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5C96534()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C9657C(uint64_t a1)
{
  OUTLINED_FUNCTION_72_5(a1, qword_1EC1AC0A8, &qword_1EC1AC048, 0x1E69B09E8);
  OUTLINED_FUNCTION_105();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v1 + v4);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_1C5C96610()
{
  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C9664C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C96690()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C966D4()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C9671C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C9675C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C96EA0()
{
  v1 = OUTLINED_FUNCTION_62_0();
  result = sub_1C5C90AD0(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1C5C96ED0()
{
  v0 = sub_1C60162D0();
  __swift_allocate_value_buffer(v0, qword_1EC1BE490);
  v1 = __swift_project_value_buffer(v0, qword_1EC1BE490);
  if (qword_1EC1A9798 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC1BE4E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1C5C96F98()
{
  if ([v0 isCompanion])
  {
    return 3;
  }

  if ([v0 isLocal])
  {
    return 2;
  }

  return 3;
}

uint64_t sub_1C5C96FE4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_227(0x6E55u);
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x65636F7250206E49;
      break;
    case 2:
      result = 0x6544206C61636F4CLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_152();
      break;
    default:
      OUTLINED_FUNCTION_332();

      OUTLINED_FUNCTION_11();
      v6 = v3;
      v4 = sub_1C60177D0();
      MEMORY[0x1C69534E0](v4);

      v5 = OUTLINED_FUNCTION_84();
      MEMORY[0x1C69534E0](v5);
      result = v6;
      break;
  }

  return result;
}

uint64_t sub_1C5C970F4(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      result = sub_1C60178A0();
      __break(1u);
      return result;
    }

    v1 = 0xE700000000000000;
    v2 = 0x64726177726F66;
  }

  else
  {
    v1 = 0xE800000000000000;
    v2 = 0x647261776B636162;
  }

  MEMORY[0x1C69534E0](v2, v1);
}

uint64_t sub_1C5C97190(uint64_t a1)
{
  v2 = 0xD000000000000013;
  if (a1)
  {
    if (a1 != 1)
    {
      result = sub_1C60178A0();
      __break(1u);
      return result;
    }

    v3 = ".globalPlaylist(";
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v3 = "Set Rate to Initiate Playback";
  }

  MEMORY[0x1C69534E0](v2, v3 | 0x8000000000000000);
}

uint64_t sub_1C5C9722C()
{
  OUTLINED_FUNCTION_315();
  sub_1C6014F20();
  OUTLINED_FUNCTION_1_0();
  sub_1C5CB8318(v0, v1, MEMORY[0x1E6968FE0]);
  OUTLINED_FUNCTION_120();
  v2 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v2);
}

uint64_t sub_1C5C972AC(char a1, uint64_t a2)
{
  v3 = 0xEC00000065756575;
  v4 = 0x7120666F20646E65;
  switch(a1)
  {
    case 1:
      v3 = 0xEC0000006E6F6974;
      v4 = 0x7075727265746E69;
      break;
    case 2:
      v3 = 0xEC00000065676E61;
      v4 = 0x6863206574756F72;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v4 = OUTLINED_FUNCTION_227(0x6E75u);
      break;
    default:
      break;
  }

  MEMORY[0x1C69534E0](v4, v3);
}

void sub_1C5C97374()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v3 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_102();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_309();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_173();
  v66 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v65 - v11;
  v13 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_146();
  (*(v15 + 104))(v18 - v17, *MEMORY[0x1E69D3960], v13);
  OUTLINED_FUNCTION_38_1();
  sub_1C5CB8318(v19, v20, MEMORY[0x1E69D3950]);
  v21 = sub_1C6015290();
  v22 = OUTLINED_FUNCTION_157();
  v23(v22);
  if (v21)
  {
    v65[1] = v5;
    v24 = *(v5 + 16);
    v24(v12, v2, v3);
    sub_1C5C97A5C(v12, v68);
    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v45 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v45, qword_1EC1BE490);
    v24(v66, v2, v3);
    sub_1C5CB5698(v68, &v67);
    v46 = sub_1C60162B0();
    v47 = sub_1C6016F30();
    sub_1C5CB56D0(v68);
    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_123();
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      v67 = swift_slowAlloc();
      *v48 = 136446466;
      OUTLINED_FUNCTION_1_0();
      sub_1C5CB8318(v49, v50, MEMORY[0x1E6968FE0]);
      sub_1C60177D0();
      v51 = OUTLINED_FUNCTION_142();
      v52(v51);
      v53 = OUTLINED_FUNCTION_157();
      v56 = sub_1C5C6AB10(v53, v54, v55);

      *(v48 + 4) = v56;
      *(v48 + 12) = 2082;
      sub_1C5CAE9DC(v57);
      OUTLINED_FUNCTION_318();
      sub_1C5CB56D0(v68);
      v58 = OUTLINED_FUNCTION_255();
      sub_1C5C6AB10(v58, v59, v60);
      OUTLINED_FUNCTION_206();

      *(v48 + 14) = v56;
      _os_log_impl(&dword_1C5C61000, v46, v47, "[XSQ] supportsURL | supported [] url=%{public}s \ncontent=%{public}s", v48, 0x16u);
      OUTLINED_FUNCTION_160();
      swift_arrayDestroy();
      v61 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v61);
      v62 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x1C6956920](v62);
    }

    else
    {
      sub_1C5CB56D0(v68);

      v63 = OUTLINED_FUNCTION_142();
      v64(v63);
    }
  }

  else
  {
    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v25 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v25, qword_1EC1BE490);
    v26 = v5;
    v27 = OUTLINED_FUNCTION_147();
    v28(v27);
    v29 = sub_1C60162B0();
    v30 = sub_1C6016F30();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_68_1();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_64_0();
      v32 = swift_slowAlloc();
      v68[0] = v32;
      *v31 = 136446210;
      OUTLINED_FUNCTION_1_0();
      sub_1C5CB8318(v33, v34, MEMORY[0x1E6968FE0]);
      sub_1C60177D0();
      (*(v26 + 8))(v0, v3);
      v35 = OUTLINED_FUNCTION_157();
      v38 = sub_1C5C6AB10(v35, v36, v37);

      *(v31 + 4) = v38;
      OUTLINED_FUNCTION_194();
      _os_log_impl(v39, v40, v41, v42, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v43 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v43);
      v44 = OUTLINED_FUNCTION_19();
      MEMORY[0x1C6956920](v44);
    }

    else
    {

      (*(v26 + 8))(v0, v3);
    }
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5C97A5C(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v5 = sub_1C6016990();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_146();
  v945 = v7 - v6;
  v8 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v1012 = v9;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = &v916 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v916 - v15;
  sub_1C6014EF0();
  v947 = a1;
  if (!v17)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_292();
  if (!v20)
  {

LABEL_10:
    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    OUTLINED_FUNCTION_74();
    v948 = 100;
    v951 = sub_1C6017840();
    v952 = v55;
    OUTLINED_FUNCTION_21_1();
    v58 = v57 - 39;
LABEL_11:
    v59 = v56 | 0x8000000000000000;
LABEL_14:
    MEMORY[0x1C69534E0](v58, v59);
    OUTLINED_FUNCTION_1_0();
    sub_1C5CB8318(v61, v62, MEMORY[0x1E6968FE0]);
LABEL_15:
    v63 = sub_1C60177D0();
    MEMORY[0x1C69534E0](v63);

LABEL_16:
    MEMORY[0x1C69534E0](0, 0xE000000000000000);
    sub_1C6016880();
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_2_3();
    sub_1C5CB8318(v64, v65, &unk_1C6035604);
    OUTLINED_FUNCTION_26();
    sub_1C6017280();
    OUTLINED_FUNCTION_90();

LABEL_17:
    swift_willThrow();
    v66 = OUTLINED_FUNCTION_228();
    v67(v66, v8);
    return;
  }

  v941 = v18;
  v946 = v19;
  sub_1C6014ED0();
  if (!v21)
  {
LABEL_13:

    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    OUTLINED_FUNCTION_74();
    v948 = 102;
    v951 = sub_1C6017840();
    v952 = v60;
    v58 = 0x20676E697373694DLL;
    v59 = 0xEE00203A74736F68;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_292();
  if (!v24)
  {

    goto LABEL_13;
  }

  v943 = v22;
  v944 = v8;
  v942 = v23;
  v934 = v2;
  v935 = a2;
  if (qword_1EC1A9730 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v25 = sub_1C60162D0();
  v26 = __swift_project_value_buffer(v25, qword_1EC1BE490);
  v27 = v1012;
  v28 = *(v1012 + 16);
  v29 = a1;
  v30 = v944;
  v28(v16, v29, v944);
  v31 = OUTLINED_FUNCTION_59_0();
  (v28)(v31);
  v32 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v33 = swift_allocObject();
  (*(v27 + 32))(v33 + v32, v16, v30);
  OUTLINED_FUNCTION_58();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1C5CB5DC4;
  *(v34 + 24) = v33;
  v937 = v33;

  v938 = v26;
  *&v940 = sub_1C60162B0();
  LODWORD(v27) = sub_1C6016F30();
  OUTLINED_FUNCTION_65_0();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_70(v35);
  OUTLINED_FUNCTION_65_0();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_69(v36);
  OUTLINED_FUNCTION_58();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C5CB5E34;
  *(v37 + 24) = v34;
  OUTLINED_FUNCTION_58();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1C5CB5E44;
  *(v38 + 24) = v37;
  sub_1C5CB5F2C(0, &qword_1ED7DCAF8, sub_1C5CB5E54, MEMORY[0x1E69E6F90]);
  v939 = v39;
  v40 = swift_allocObject();
  v936 = xmmword_1C6031150;
  *(v40 + 16) = xmmword_1C6031150;
  *(v40 + 32) = sub_1C5CB5E3C;
  *(v40 + 40) = v35;
  *(v40 + 48) = sub_1C5CB8408;
  *(v40 + 56) = v36;
  *(v40 + 64) = sub_1C5CB5E4C;
  *(v40 + 72) = v38;
  swift_setDeallocating();

  sub_1C5D677CC();
  LODWORD(v933) = v27;
  if (os_log_type_enabled(v940, v27))
  {
    OUTLINED_FUNCTION_68_1();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_64_0();
    v932 = swift_slowAlloc();
    v951 = v932;
    OUTLINED_FUNCTION_13_0();

    *(v41 + 3) = 8;

    OUTLINED_FUNCTION_1_0();
    sub_1C5CB8318(v42, v43, MEMORY[0x1E6968FE0]);
    v35 = v944;
    v44 = sub_1C60177D0();
    v46 = v45;
    v47 = sub_1C5C6AB10(v44, v45, &v951);

    *(v41 + 4) = v47;

    v48 = *(v1012 + 8);
    (v48)(v14, v35);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_190(v49, v50, v51, v52);
    __swift_destroy_boxed_opaque_existential_0(v932);
    v53 = OUTLINED_FUNCTION_22_0();
    MEMORY[0x1C6956920](v53);
    v54 = OUTLINED_FUNCTION_30_0();
    MEMORY[0x1C6956920](v54);
  }

  else
  {

    v48 = *(v1012 + 8);
    (v48)(v14, v944);
  }

  v68 = v941;
  v69 = v947;
  v70 = v941 == 0x2D616964656D2D78 && v946 == 0xEF7972617262696CLL;
  if (v70 || (OUTLINED_FUNCTION_153(0x2D616964656D2D78, 0xEF7972617262696CLL) & 1) != 0)
  {
    v71 = v943 == 0x62696C656C6F6877 && v942 == 0xEC00000079726172;
    if (v71 || (OUTLINED_FUNCTION_187(0x62696C656C6F6877, 0xEC00000079726172) & 1) != 0)
    {
      v941 = v48;
      sub_1C6014E90();
      v72 = sub_1C5CD4534();
      if (v73)
      {
        v74 = 18;
      }

      else
      {
        v74 = v72;
      }

      v953 = v74;
      v954 = 0;
      v955 = 0;
      v956 = 0;
      v957 = 0;
      OUTLINED_FUNCTION_107_0();
      v75 = swift_allocObject();
      v943 = v74;
      *(v75 + 16) = v74;
      *(v75 + 24) = 0;
      *(v75 + 32) = 0;
      *(v75 + 40) = 0;
      *(v75 + 48) = 0;
      OUTLINED_FUNCTION_58();
      v76 = swift_allocObject();
      OUTLINED_FUNCTION_264(v76);
      v945 = sub_1C60162B0();
      v77 = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v78 = swift_allocObject();
      OUTLINED_FUNCTION_70(v78);
      OUTLINED_FUNCTION_65_0();
      v79 = swift_allocObject();
      OUTLINED_FUNCTION_69(v79);
      OUTLINED_FUNCTION_58();
      v80 = swift_allocObject();
      *(v80 + 16) = sub_1C5CB83DC;
      *(v80 + 24) = v76;
      OUTLINED_FUNCTION_58();
      v81 = swift_allocObject();
      v82 = OUTLINED_FUNCTION_57(v81);
      OUTLINED_FUNCTION_81(v82);
      v83[4] = sub_1C5CB8408;
      v83[5] = v78;
      v83[6] = sub_1C5CB8408;
      v83[7] = v79;
      v83[8] = sub_1C5CB837C;
      v83[9] = v81;
      swift_setDeallocating();

      sub_1C5D677CC();
      OUTLINED_FUNCTION_205();
      if (os_log_type_enabled(v945, v84))
      {
        OUTLINED_FUNCTION_68_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_45_1();
        v939 = swift_slowAlloc();
        v948 = v939;
        OUTLINED_FUNCTION_24_0();

        *(v77 + 3) = 8;

        OUTLINED_FUNCTION_4_0();
        v85 = sub_1C5CAF1A0();
        v87 = v86;
        MEMORY[0x1C69534E0](v85);

        OUTLINED_FUNCTION_75_0();
        OUTLINED_FUNCTION_82();
        OUTLINED_FUNCTION_118();

        *(v77 + 4) = v87;

        OUTLINED_FUNCTION_86_1();
        OUTLINED_FUNCTION_233(v88, v89, v90, v91);
        __swift_destroy_boxed_opaque_existential_0(v939);
        v92 = OUTLINED_FUNCTION_22_0();
        MEMORY[0x1C6956920](v92);
        v93 = OUTLINED_FUNCTION_16_1();
        MEMORY[0x1C6956920](v93);
      }

      else
      {
      }

      v94 = OUTLINED_FUNCTION_5_0();
      v95(v94);
      v96 = 0;
      OUTLINED_FUNCTION_177();
      v98 = 0;
      goto LABEL_36;
    }

    v120 = *(sub_1C6014E80() + 16);

    if (v120 == 3)
    {
      v121 = sub_1C6014E80();
      sub_1C5D3E1D0(1uLL, v121);

      v122 = sub_1C5CD4534();
      v124 = v123;
      v125 = sub_1C6014E80();
      sub_1C5D3E1D0(2uLL, v125);

      v126 = sub_1C5CD4534();
      v128 = v127;
      OUTLINED_FUNCTION_58();
      v129 = swift_allocObject();
      v130 = v942;
      v129[2] = v943;
      v129[3] = v130;
      v131 = v129;
      v933 = v129;
      OUTLINED_FUNCTION_221();
      v132 = swift_allocObject();
      v921 = v122;
      *(v132 + 16) = v122;
      v925 = v124;
      *(v132 + 24) = v124 & 1;
      v133 = v132;
      v930 = v132;
      OUTLINED_FUNCTION_221();
      v134 = swift_allocObject();
      v945 = v126;
      *(v134 + 16) = v126;
      v920 = v128;
      *(v134 + 24) = v128 & 1;
      v135 = v134;
      v937 = v134;
      swift_bridgeObjectRetain_n();
      v928 = sub_1C60162B0();
      v927 = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v136 = swift_allocObject();
      *(v136 + 16) = 34;
      OUTLINED_FUNCTION_65_0();
      v137 = swift_allocObject();
      *(v137 + 16) = 8;
      v138 = v137;
      OUTLINED_FUNCTION_58();
      v139 = swift_allocObject();
      v139[2] = sub_1C5CB83D8;
      v139[3] = v131;
      v140 = v139;
      v932 = v139;
      OUTLINED_FUNCTION_58();
      v141 = swift_allocObject();
      *(v141 + 16) = sub_1C5CB83D4;
      *(v141 + 24) = v140;
      v142 = v141;
      OUTLINED_FUNCTION_65_0();
      v929 = swift_allocObject();
      *(v929 + 16) = 34;
      OUTLINED_FUNCTION_65_0();
      v941 = swift_allocObject();
      LOBYTE(v941[2].isa) = 8;
      OUTLINED_FUNCTION_58();
      v143 = swift_allocObject();
      *(v143 + 16) = sub_1C5CB614C;
      *(v143 + 24) = v133;
      v144 = v143;
      v931 = v143;
      OUTLINED_FUNCTION_58();
      v145 = swift_allocObject();
      *(v145 + 16) = sub_1C5CB83D4;
      *(v145 + 24) = v144;
      OUTLINED_FUNCTION_65_0();
      *&v940 = swift_allocObject();
      *(v940 + 16) = 34;
      OUTLINED_FUNCTION_65_0();
      v926 = swift_allocObject();
      *(v926 + 16) = 8;
      OUTLINED_FUNCTION_58();
      v146 = swift_allocObject();
      *(v146 + 16) = sub_1C5CB8394;
      *(v146 + 24) = v135;
      OUTLINED_FUNCTION_58();
      v147 = swift_allocObject();
      *(v147 + 16) = sub_1C5CB83D4;
      *(v147 + 24) = v146;
      v148 = swift_allocObject();
      *(v148 + 16) = xmmword_1C60311C0;
      *(v148 + 32) = sub_1C5CB8408;
      *(v148 + 40) = v136;
      *(v148 + 48) = sub_1C5CB8408;
      *(v148 + 56) = v138;
      *(v148 + 64) = sub_1C5CB837C;
      *(v148 + 72) = v142;
      v149 = v142;
      v150 = v929;
      *(v148 + 80) = sub_1C5CB8408;
      *(v148 + 88) = v150;
      v151 = v941;
      *(v148 + 96) = sub_1C5CB8408;
      *(v148 + 104) = v151;
      *(v148 + 112) = sub_1C5CB837C;
      *(v148 + 120) = v145;
      v152 = v940;
      *(v148 + 128) = sub_1C5CB8408;
      *(v148 + 136) = v152;
      v153 = v926;
      *(v148 + 144) = sub_1C5CB8408;
      *(v148 + 152) = v153;
      *(v148 + 160) = sub_1C5CB837C;
      *(v148 + 168) = v147;
      swift_setDeallocating();

      v924 = v146;

      v922 = v136;
      v154 = v929;

      v923 = v149;

      sub_1C5D677CC();
      v155 = v928;
      if (os_log_type_enabled(v928, v927))
      {
        v918 = v145;
        v919 = v147;
        OUTLINED_FUNCTION_64_0();
        v156 = swift_slowAlloc();
        OUTLINED_FUNCTION_112_0();
        v917 = swift_slowAlloc();
        v951 = v917;
        *v156 = 770;
        *(v156 + 2) = 34;

        *(v156 + 3) = 8;

        OUTLINED_FUNCTION_124_0();
        OUTLINED_FUNCTION_203();

        *(v156 + 4) = v155;

        *(v156 + 12) = 34;

        *(v156 + 13) = 8;

        v157 = v925;
        if (v925)
        {
          v158 = 7104878;
        }

        else
        {
          v948 = v921;
          sub_1C5CB6188();
          v158 = sub_1C6017380();
        }

        OUTLINED_FUNCTION_232(v158);
        OUTLINED_FUNCTION_136_0();

        *(v156 + 14) = v154;

        *(v156 + 22) = 34;

        *(v156 + 23) = 8;

        if (v920)
        {
          v214 = 7104878;
        }

        else
        {
          OUTLINED_FUNCTION_286();
          v214 = sub_1C6017380();
        }

        v215 = OUTLINED_FUNCTION_232(v214);

        *(v156 + 24) = v215;

        v216 = v928;
        _os_log_impl(&dword_1C5C61000, v928, v927, "[XSQ:Content] init | x-media-library | databaseID=%{public}s mediaTypeInt=%{public}s pid=%{public}s", v156, 0x20u);
        swift_arrayDestroy();
        v217 = OUTLINED_FUNCTION_19();
        MEMORY[0x1C6956920](v217);
        v218 = OUTLINED_FUNCTION_22_0();
        MEMORY[0x1C6956920](v218);
      }

      else
      {

        v157 = v925;
      }

      v8 = v944;
      if (v157 & 1) != 0 || (v219 = sub_1C5CAB4A4(), (v220))
      {

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        v948 = 111;
        v951 = OUTLINED_FUNCTION_341();
        v952 = v221;
        v222 = OUTLINED_FUNCTION_53();
        MEMORY[0x1C69534E0](v222);
        OUTLINED_FUNCTION_1_0();
        sub_1C5CB8318(v223, v224, MEMORY[0x1E6968FE0]);
        goto LABEL_15;
      }

      if (v920)
      {

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_51();
        v951 = sub_1C6017840();
        v952 = v225;
        OUTLINED_FUNCTION_21_1();
LABEL_98:
        OUTLINED_FUNCTION_131_0();
LABEL_137:
        MEMORY[0x1C69534E0](v226);
        sub_1C5C9722C();
        goto LABEL_16;
      }

      v75 = v219;
      v300 = v942;
      v299 = v943;
      v958 = v943;
      v959 = v942;
      v301 = v945;
      v960 = v219;
      v961 = v945;
      v962 = 1;
      OUTLINED_FUNCTION_107_0();
      v302 = swift_allocObject();
      *(v302 + 16) = v299;
      *(v302 + 24) = v300;
      *(v302 + 32) = v75;
      *(v302 + 40) = v301;
      *(v302 + 48) = 1;
      OUTLINED_FUNCTION_58();
      v303 = swift_allocObject();
      *(v303 + 16) = sub_1C5CB8470;
      *(v303 + 24) = v302;
      swift_bridgeObjectRetain_n();
      v937 = v302;

      v941 = sub_1C60162B0();
      LODWORD(v938) = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v304 = swift_allocObject();
      OUTLINED_FUNCTION_70(v304);
      OUTLINED_FUNCTION_65_0();
      v305 = swift_allocObject();
      OUTLINED_FUNCTION_69(v305);
      OUTLINED_FUNCTION_58();
      v306 = swift_allocObject();
      v306[2] = sub_1C5CB83DC;
      v306[3] = v303;
      OUTLINED_FUNCTION_58();
      v307 = swift_allocObject();
      *(v307 + 16) = sub_1C5CB83D4;
      *(v307 + 24) = v306;
      v308 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_81(v308);
      v309[4] = sub_1C5CB8408;
      v309[5] = v304;
      v309[6] = sub_1C5CB8408;
      v309[7] = v305;
      v309[8] = sub_1C5CB837C;
      v309[9] = v307;
      swift_setDeallocating();
      *&v940 = v303;
      v310 = v938;

      v939 = v306;

      sub_1C5D677CC();
      if (os_log_type_enabled(v941, v310))
      {
        OUTLINED_FUNCTION_68_1();
        v311 = swift_slowAlloc();
        OUTLINED_FUNCTION_64_0();
        v312 = swift_slowAlloc();
        v948 = v312;
        OUTLINED_FUNCTION_13_0();

        *(v311 + 3) = 8;

        OUTLINED_FUNCTION_4_0();
        v313 = v942;

        v314 = sub_1C5CAF1A0();
        MEMORY[0x1C69534E0](v314);

        OUTLINED_FUNCTION_75_0();

        v315 = OUTLINED_FUNCTION_82();

        *(v311 + 4) = v315;

        v316 = v941;
        OUTLINED_FUNCTION_190(&dword_1C5C61000, v941, v310, "[XSQ:Content] init | x-media-library | %{public}s");
        __swift_destroy_boxed_opaque_existential_0(v312);
        v317 = OUTLINED_FUNCTION_28_0();
        MEMORY[0x1C6956920](v317);
        v318 = OUTLINED_FUNCTION_30_0();
        MEMORY[0x1C6956920](v318);

        v319 = OUTLINED_FUNCTION_228();
        v320(v319, v944);
        v98 = 1;
        v96 = v313;
      }

      else
      {

        v96 = v942;

        v353 = OUTLINED_FUNCTION_228();
        v354(v353, v8);
        v98 = 1;
      }

      v99 = v943;
LABEL_87:
      v97 = v945;
      goto LABEL_37;
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    OUTLINED_FUNCTION_74();
    v948 = 110;
    v951 = OUTLINED_FUNCTION_341();
    v952 = v159;
    v160 = OUTLINED_FUNCTION_53();
    goto LABEL_56;
  }

  v101 = v973;
  v102 = OUTLINED_FUNCTION_226() & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
  v105 = v68 == v102 && v104 == v103;
  v106 = 0x65726F7473;
  if (!v105 && (OUTLINED_FUNCTION_153(v102, v103) & 1) == 0)
  {
    OUTLINED_FUNCTION_109();
    v165 = v68 == 0xD000000000000016 && v163 == v164;
    if (v165 || (OUTLINED_FUNCTION_153(0xD000000000000016, v163) & 1) != 0)
    {
      OUTLINED_FUNCTION_310();
      v167 = v70 && v166 == 0xE600000000000000;
      if (v167 || (OUTLINED_FUNCTION_126_0() & 1) != 0)
      {
        sub_1C6014E90();
        sub_1C5CD4534();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_221();
        v168 = swift_allocObject();
        *&v940 = OUTLINED_FUNCTION_52_0(v168);
        LODWORD(v937) = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v169 = swift_allocObject();
        OUTLINED_FUNCTION_70(v169);
        OUTLINED_FUNCTION_65_0();
        v170 = swift_allocObject();
        OUTLINED_FUNCTION_69(v170);
        OUTLINED_FUNCTION_58();
        v171 = swift_allocObject();
        *(v171 + 16) = sub_1C5CB6100;
        *(v171 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v172 = swift_allocObject();
        v173 = OUTLINED_FUNCTION_57(v172);
        OUTLINED_FUNCTION_81(v173);
        v174[4] = sub_1C5CB8408;
        v174[5] = v169;
        v174[6] = sub_1C5CB8408;
        v174[7] = v170;
        v174[8] = sub_1C5CB837C;
        v174[9] = v172;
        swift_setDeallocating();

        sub_1C5D677CC();
        v175 = v940;
        if (os_log_type_enabled(v940, v937))
        {
          v941 = v48;
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_46();
          v176 = swift_slowAlloc();
          v951 = v176;
          OUTLINED_FUNCTION_42_0();

          OUTLINED_FUNCTION_193();

          if (v943)
          {
            v177 = OUTLINED_FUNCTION_78();
          }

          else
          {
            OUTLINED_FUNCTION_286();
            v177 = sub_1C6017380();
            v175 = v321;
          }

          v8 = v944;
          OUTLINED_FUNCTION_232(v177);
          OUTLINED_FUNCTION_118();

          *(&v48->isa + 4) = v170;

          OUTLINED_FUNCTION_44();
          OUTLINED_FUNCTION_339(v322, v323, v324, v325);
          __swift_destroy_boxed_opaque_existential_0(v176);
          v326 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v326);
          v327 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v327);

          v48 = v941;
        }

        else
        {

          v8 = v944;
        }

        if (v943)
        {

          sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
          sub_1C6016940();
          OUTLINED_FUNCTION_51();
          v951 = OUTLINED_FUNCTION_341();
          v952 = v328;
          v226 = OUTLINED_FUNCTION_53();
          goto LABEL_137;
        }

        v977 = 0;
        v976 = 0;
        v978 = 2;
        v979 = v945;
        v980 = 1;
        OUTLINED_FUNCTION_107_0();
        v329 = swift_allocObject();
        OUTLINED_FUNCTION_218(v329);
        OUTLINED_FUNCTION_58();
        v96 = swift_allocObject();
        *(v96 + 16) = sub_1C5CB8470;
        *(v96 + 24) = v329;

        v330 = v938;
        v943 = sub_1C60162B0();
        v331 = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v332 = swift_allocObject();
        OUTLINED_FUNCTION_23_1(v332);
        OUTLINED_FUNCTION_65_0();
        v333 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v333);
        OUTLINED_FUNCTION_58();
        v334 = swift_allocObject();
        *(v334 + 16) = sub_1C5CB83DC;
        *(v334 + 24) = v96;
        OUTLINED_FUNCTION_58();
        v335 = swift_allocObject();
        *(v335 + 16) = sub_1C5CB83D4;
        *(v335 + 24) = v334;
        v336 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v336, 3);
        *v337 = sub_1C5CB8408;
        v337[1] = v330;
        v337[2] = sub_1C5CB8408;
        v337[3] = v8;
        v337[4] = sub_1C5CB837C;
        v337[5] = v335;

        LODWORD(v940) = v331;
        v338 = v331;
        v339 = v943;
        if (os_log_type_enabled(v943, v338))
        {
          OUTLINED_FUNCTION_68_1();
          v340 = swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v341 = swift_slowAlloc();
          v941 = v48;
          v342 = v341;
          OUTLINED_FUNCTION_34_0(v341);

          OUTLINED_FUNCTION_192();

          OUTLINED_FUNCTION_4_0();
          sub_1C5CAF1A0();
          OUTLINED_FUNCTION_284();

          OUTLINED_FUNCTION_75_0();
          OUTLINED_FUNCTION_82();
          OUTLINED_FUNCTION_113();

          *(v340 + 4) = v8;

          OUTLINED_FUNCTION_115();
          v343 = v943;
          OUTLINED_FUNCTION_266(v344, v943, v345, v346);
          __swift_destroy_boxed_opaque_existential_0(v342);
          v347 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v347);
          v348 = OUTLINED_FUNCTION_22_0();
          MEMORY[0x1C6956920](v348);

          v349 = OUTLINED_FUNCTION_5_0();
          v350(v349);
        }

        else
        {

          v352 = OUTLINED_FUNCTION_10_2();
          (v48)(v352);
        }

        OUTLINED_FUNCTION_217();
        v75 = 2;
        goto LABEL_87;
      }

      v269 = v943 == 0x65726F7473 && v942 == 0xE500000000000000;
      v941 = v48;
      if (v269 || (OUTLINED_FUNCTION_130_0() & 1) != 0)
      {
        OUTLINED_FUNCTION_335();
        sub_1C5CD4534();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_221();
        swift_allocObject();
        OUTLINED_FUNCTION_161();
        v945 = OUTLINED_FUNCTION_327(v270);
        v271 = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v272 = swift_allocObject();
        OUTLINED_FUNCTION_23_1(v272);
        OUTLINED_FUNCTION_65_0();
        v273 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v273);
        OUTLINED_FUNCTION_58();
        v274 = swift_allocObject();
        *(v274 + 16) = sub_1C5CB8394;
        *(v274 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v275 = swift_allocObject();
        v276 = OUTLINED_FUNCTION_57(v275);
        sub_1C5E1018C(v276, 3);
        *v277 = sub_1C5CB8408;
        v277[1] = 0x65726F7473;
        v277[2] = sub_1C5CB8408;
        v277[3] = v69;
        v277[4] = sub_1C5CB837C;
        v277[5] = v275;

        OUTLINED_FUNCTION_205();
        v278 = OUTLINED_FUNCTION_125();
        if (os_log_type_enabled(v278, v279))
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_45_1();
          v280 = swift_slowAlloc();
          OUTLINED_FUNCTION_20(v280);

          OUTLINED_FUNCTION_133();
          LODWORD(v937) = v973;
          if (v973)
          {
            v281 = OUTLINED_FUNCTION_78();
          }

          else
          {
            v948 = v943;
            sub_1C5CB60AC();
            v281 = sub_1C6017380();
            v106 = v482;
          }

          OUTLINED_FUNCTION_232(v281);
          OUTLINED_FUNCTION_113();

          *(v271 + 4) = v69;

          OUTLINED_FUNCTION_86_1();
          OUTLINED_FUNCTION_233(v483, v484, v485, v486);
          __swift_destroy_boxed_opaque_existential_0(v280);
          v487 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v487);
          v488 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v488);

          LOBYTE(v101) = v937;
        }

        else
        {
        }

        if ((v101 & 1) == 0)
        {
          OUTLINED_FUNCTION_107_0();
          v75 = swift_allocObject();
          OUTLINED_FUNCTION_256(v75, 2);
          OUTLINED_FUNCTION_58();
          v490 = swift_allocObject();
          OUTLINED_FUNCTION_264(v490);
          v491 = v938;
          v492 = sub_1C60162B0();
          v493 = sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v494 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v494);
          OUTLINED_FUNCTION_65_0();
          v495 = swift_allocObject();
          OUTLINED_FUNCTION_32_0(v495);
          OUTLINED_FUNCTION_58();
          v496 = swift_allocObject();
          *(v496 + 16) = sub_1C5CB83DC;
          *(v496 + 24) = v490;
          OUTLINED_FUNCTION_58();
          v497 = swift_allocObject();
          *(v497 + 16) = sub_1C5CB83D4;
          *(v497 + 24) = v496;
          v498 = OUTLINED_FUNCTION_63();
          sub_1C5E1018C(v498, 3);
          *v499 = sub_1C5CB8408;
          v499[1] = v491;
          v499[2] = sub_1C5CB8408;
          v499[3] = v69;
          v499[4] = sub_1C5CB837C;
          v499[5] = v497;

          LODWORD(v945) = v493;
          if (os_log_type_enabled(v492, v493))
          {
            OUTLINED_FUNCTION_68_1();
            v500 = swift_slowAlloc();
            *&v940 = v490;
            v501 = v500;
            OUTLINED_FUNCTION_64_0();
            v502 = swift_slowAlloc();
            OUTLINED_FUNCTION_34_0(v502);

            OUTLINED_FUNCTION_192();

            OUTLINED_FUNCTION_33();
            v951 = v503;
            v952 = v504;
            sub_1C5CAF86C(v943, 2, 0);
            OUTLINED_FUNCTION_284();

            OUTLINED_FUNCTION_75_0();
            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_113();

            *(v501 + 4) = v69;

            OUTLINED_FUNCTION_266(&dword_1C5C61000, v492, v945, "[XSQ:Content] init | x-sampcollection-album / store | %{public}s");
            __swift_destroy_boxed_opaque_existential_0(v502);
            v505 = OUTLINED_FUNCTION_28_0();
            MEMORY[0x1C6956920](v505);
            v506 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v506);
          }

          else
          {
          }

          v509 = OUTLINED_FUNCTION_5_0();
          v510(v509);
          OUTLINED_FUNCTION_177();
          v98 = 0x80;
          v96 = 2;
          goto LABEL_36;
        }

        goto LABEL_200;
      }

      v409 = OUTLINED_FUNCTION_48();
      v411 = v70 && v410 == 0xE800000000000000;
      if (v411 || (OUTLINED_FUNCTION_187(v409, 0xE800000000000000) & 1) != 0)
      {
        sub_1C6014E90();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_58();
        v412 = swift_allocObject();
        *&v940 = v69;
        v412[2] = v69;
        v412[3] = v973;
        OUTLINED_FUNCTION_211();
        v943 = sub_1C60162B0();
        v413 = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v414 = swift_allocObject();
        OUTLINED_FUNCTION_70(v414);
        OUTLINED_FUNCTION_65_0();
        v415 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v415);
        OUTLINED_FUNCTION_58();
        v416 = swift_allocObject();
        *(v416 + 16) = sub_1C5CB83D8;
        *(v416 + 24) = v412;
        OUTLINED_FUNCTION_58();
        v417 = swift_allocObject();
        *(v417 + 16) = sub_1C5CB83D4;
        *(v417 + 24) = v416;
        v418 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v418, 3);
        *v419 = sub_1C5CB8408;
        v419[1] = v414;
        v419[2] = sub_1C5CB8408;
        v419[3] = v69;
        v419[4] = sub_1C5CB837C;
        v419[5] = v417;

        LODWORD(v937) = v413;
        if (os_log_type_enabled(v943, v413))
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_45_1();
          v420 = swift_slowAlloc();
          OUTLINED_FUNCTION_20(v420);

          OUTLINED_FUNCTION_133();

          v421 = OUTLINED_FUNCTION_321();

          *(v413 + 4) = v421;

          OUTLINED_FUNCTION_230(&dword_1C5C61000, v422, v423, "[XSQ:Content] init | x-sampcollection-album / sirisync | syncID=%{public}s");
          __swift_destroy_boxed_opaque_existential_0(v420);
          v424 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v424);
          v425 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v425);
        }

        else
        {
        }

        sub_1C6014F40();
        OUTLINED_FUNCTION_288();
        if (v356)
        {
        }

        else
        {
          v541 = v516;
          OUTLINED_FUNCTION_263();
          OUTLINED_FUNCTION_243();
          v542 = sub_1C6016950();
          if (v543)
          {
            v544 = v543;
            v937 = v541;
            *&v940 = v973;
            v981 = v542;
            v982 = v543;
            v984 = 0;
            v983 = 0;
            v985 = 3;
            v545 = v542;
            v546 = swift_allocObject();
            v943 = v545;
            *(v546 + 16) = v545;
            *(v546 + 24) = v544;
            *(v546 + 32) = 0;
            *(v546 + 40) = 0;
            *(v546 + 48) = 3;
            OUTLINED_FUNCTION_58();
            v547 = swift_allocObject();
            *(v547 + 16) = sub_1C5CB8470;
            *(v547 + 24) = v546;
            *&v936 = v544;
            swift_bridgeObjectRetain_n();

            v548 = v938;
            v945 = sub_1C60162B0();
            v75 = sub_1C6016F30();
            OUTLINED_FUNCTION_65_0();
            v549 = swift_allocObject();
            OUTLINED_FUNCTION_23_1(v549);
            OUTLINED_FUNCTION_65_0();
            v550 = swift_allocObject();
            OUTLINED_FUNCTION_29(v550);
            OUTLINED_FUNCTION_58();
            v551 = swift_allocObject();
            *(v551 + 16) = sub_1C5CB83DC;
            *(v551 + 24) = v547;
            OUTLINED_FUNCTION_58();
            v552 = swift_allocObject();
            v553 = OUTLINED_FUNCTION_56(v552);
            sub_1C5E1018C(v553, 3);
            *v554 = sub_1C5CB8408;
            v554[1] = v548;
            v554[2] = sub_1C5CB8408;
            v554[3] = v544;
            v554[4] = sub_1C5CB837C;
            v554[5] = v552;
            OUTLINED_FUNCTION_349();

            LODWORD(v938) = v75;
            if (os_log_type_enabled(v945, v75))
            {
              OUTLINED_FUNCTION_68_1();
              swift_slowAlloc();
              OUTLINED_FUNCTION_46();
              v933 = swift_slowAlloc();
              v948 = v933;
              OUTLINED_FUNCTION_42_0();

              OUTLINED_FUNCTION_193();

              OUTLINED_FUNCTION_4_0();
              v96 = v936;

              sub_1C5CAF1A0();
              OUTLINED_FUNCTION_234();

              OUTLINED_FUNCTION_75_0();

              OUTLINED_FUNCTION_82();
              OUTLINED_FUNCTION_95();

              OUTLINED_FUNCTION_333();

              v370 = "[XSQ:Content] init | x-sampcollection-album / sirisync | %{public}s";
              goto LABEL_154;
            }

            goto LABEL_227;
          }

          v696 = OUTLINED_FUNCTION_243();
          sub_1C5CB6098(v696, v697);
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        v948 = 150;
        v951 = sub_1C6017840();
        v952 = v698;
        OUTLINED_FUNCTION_21_1();
        goto LABEL_209;
      }

      OUTLINED_FUNCTION_320();
      v616 = v614 == v615 && v613 == 0xE400000000000000;
      if (v616 || (OUTLINED_FUNCTION_156(), (sub_1C6017860() & 1) != 0))
      {
        sub_1C6014E90();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_58();
        v617 = swift_allocObject();
        OUTLINED_FUNCTION_67_0(v617);
        v618 = v938;
        sub_1C60162B0();
        sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v619 = swift_allocObject();
        OUTLINED_FUNCTION_70(v619);
        OUTLINED_FUNCTION_65_0();
        v620 = swift_allocObject();
        OUTLINED_FUNCTION_29(v620);
        OUTLINED_FUNCTION_58();
        v621 = swift_allocObject();
        *(v621 + 16) = sub_1C5CB83D8;
        *(v621 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v622 = swift_allocObject();
        *(v622 + 16) = sub_1C5CB83D4;
        *(v622 + 24) = v621;
        v623 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v623, 3);
        *v624 = sub_1C5CB8408;
        v624[1] = v619;
        v624[2] = sub_1C5CB8408;
        v624[3] = v68;
        v624[4] = sub_1C5CB837C;
        v624[5] = v622;

        if (OUTLINED_FUNCTION_127())
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v625 = swift_slowAlloc();
          v951 = v625;
          OUTLINED_FUNCTION_13_0();

          OUTLINED_FUNCTION_96();
          OUTLINED_FUNCTION_278();
          OUTLINED_FUNCTION_124_0();
          OUTLINED_FUNCTION_171();

          OUTLINED_FUNCTION_277();

          OUTLINED_FUNCTION_94_0(&dword_1C5C61000, v626, v627, "[XSQ:Content] init | x-sampcollection-album / ulid | ulid=%{public}s");
          __swift_destroy_boxed_opaque_existential_0(v625);
          v628 = OUTLINED_FUNCTION_19();
          MEMORY[0x1C6956920](v628);
          v629 = OUTLINED_FUNCTION_30_0();
          MEMORY[0x1C6956920](v629);
        }

        else
        {
        }

        v750 = HIBYTE(v945) & 0xF;
        if ((v945 & 0x2000000000000000) == 0)
        {
          v750 = v943 & 0xFFFFFFFFFFFFLL;
        }

        if (v750)
        {
          v986[0] = v943;
          v751 = v945;
          v986[1] = v945;
          v940 = xmmword_1C6031190;
          v987 = xmmword_1C6031190;
          v988 = 4;
          v752 = v943;
          v753 = swift_allocObject();
          v753[1].n128_u64[0] = v752;
          v753[1].n128_u64[1] = v751;
          OUTLINED_FUNCTION_150(v753);
          OUTLINED_FUNCTION_58();
          v754 = swift_allocObject();
          *(v754 + 16) = sub_1C5CB8470;
          *(v754 + 24) = v753;
          OUTLINED_FUNCTION_211();

          v755 = v938;
          v531 = sub_1C60162B0();
          sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v756 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v756);
          OUTLINED_FUNCTION_65_0();
          v757 = swift_allocObject();
          OUTLINED_FUNCTION_29(v757);
          OUTLINED_FUNCTION_58();
          v758 = swift_allocObject();
          *(v758 + 16) = sub_1C5CB83DC;
          *(v758 + 24) = v754;
          OUTLINED_FUNCTION_58();
          v759 = swift_allocObject();
          v760 = OUTLINED_FUNCTION_56(v759);
          sub_1C5E1018C(v760, 3);
          *v761 = sub_1C5CB8408;
          v761[1] = v755;
          v761[2] = sub_1C5CB8408;
          v761[3] = v68;
          v761[4] = sub_1C5CB837C;
          v761[5] = v759;

          if (OUTLINED_FUNCTION_181())
          {
            OUTLINED_FUNCTION_68_1();
            swift_slowAlloc();
            OUTLINED_FUNCTION_64_0();
            v938 = swift_slowAlloc();
            v948 = v938;
            OUTLINED_FUNCTION_13_0();

            OUTLINED_FUNCTION_96();
            OUTLINED_FUNCTION_4_0();
            OUTLINED_FUNCTION_125();

            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_234();

            OUTLINED_FUNCTION_75_0();

            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_95();

            OUTLINED_FUNCTION_348();

            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_190(v762, v763, v764, v765);
            __swift_destroy_boxed_opaque_existential_0(v938);
            v766 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v766);
            v767 = OUTLINED_FUNCTION_30_0();
            MEMORY[0x1C6956920](v767);
          }

          else
          {

            OUTLINED_FUNCTION_125();
          }

          v837 = OUTLINED_FUNCTION_5_0();
          v838(v837);
          OUTLINED_FUNCTION_314();
          v75 = 2;
LABEL_267:
          v96 = v531;
          goto LABEL_36;
        }

        goto LABEL_309;
      }

LABEL_325:

      sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
      sub_1C6016940();
      OUTLINED_FUNCTION_50();
      v951 = sub_1C6017840();
      v952 = v830;
      goto LABEL_326;
    }

    OUTLINED_FUNCTION_109();
    v253 = v68 == 0xD000000000000017 && v251 == v252;
    v941 = v48;
    if (v253 || (OUTLINED_FUNCTION_153(0xD000000000000017, v251) & 1) != 0)
    {
      OUTLINED_FUNCTION_310();
      v255 = v70 && v254 == 0xE600000000000000;
      if (v255 || (OUTLINED_FUNCTION_126_0() & 1) != 0)
      {
        OUTLINED_FUNCTION_335();
        sub_1C5CD4534();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_221();
        v256 = swift_allocObject();
        v257 = OUTLINED_FUNCTION_52_0(v256);
        sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v258 = swift_allocObject();
        OUTLINED_FUNCTION_23_1(v258);
        OUTLINED_FUNCTION_65_0();
        v259 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v259);
        OUTLINED_FUNCTION_58();
        v260 = swift_allocObject();
        *(v260 + 16) = sub_1C5CB8394;
        *(v260 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v261 = swift_allocObject();
        v262 = OUTLINED_FUNCTION_57(v261);
        sub_1C5E1018C(v262, 3);
        *v263 = sub_1C5CB8408;
        v263[1] = 0x65726F7473;
        v263[2] = sub_1C5CB8408;
        v263[3] = v69;
        v263[4] = sub_1C5CB837C;
        v263[5] = v261;

        OUTLINED_FUNCTION_205();
        if (os_log_type_enabled(v257, v264))
        {
          v937 = v257;
          OUTLINED_FUNCTION_68_1();
          v265 = swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v266 = swift_slowAlloc();
          v951 = v266;
          OUTLINED_FUNCTION_132();
          OUTLINED_FUNCTION_265();
          v267 = v943;
          if (v943)
          {
            v268 = OUTLINED_FUNCTION_78();
          }

          else
          {
            OUTLINED_FUNCTION_286();
            v268 = sub_1C6017380();
          }

          OUTLINED_FUNCTION_232(v268);
          OUTLINED_FUNCTION_113();

          *(v265 + 4) = v69;

          OUTLINED_FUNCTION_115();
          v450 = v937;
          OUTLINED_FUNCTION_239();
          _os_log_impl(v451, v452, v453, v454, v455, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v266);
          v456 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v456);
          v457 = OUTLINED_FUNCTION_19();
          MEMORY[0x1C6956920](v457);
        }

        else
        {
          v267 = v943;
        }

        if ((v267 & 1) == 0)
        {
          v990 = 0;
          v989 = 0;
          v991 = 3;
          v992 = v945;
          v993 = 1;
          OUTLINED_FUNCTION_107_0();
          v460 = swift_allocObject();
          OUTLINED_FUNCTION_218(v460);
          OUTLINED_FUNCTION_58();
          v461 = swift_allocObject();
          OUTLINED_FUNCTION_264(v461);
          v462 = v938;
          v463 = sub_1C60162B0();
          v464 = sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v465 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v465);
          OUTLINED_FUNCTION_65_0();
          v466 = swift_allocObject();
          OUTLINED_FUNCTION_32_0(v466);
          OUTLINED_FUNCTION_58();
          v96 = swift_allocObject();
          *(v96 + 16) = sub_1C5CB83DC;
          *(v96 + 24) = v461;
          OUTLINED_FUNCTION_58();
          v467 = swift_allocObject();
          v468 = OUTLINED_FUNCTION_57(v467);
          sub_1C5E1018C(v468, 3);
          *v469 = sub_1C5CB8408;
          v469[1] = v462;
          v469[2] = sub_1C5CB8408;
          v469[3] = v69;
          v469[4] = sub_1C5CB837C;
          v469[5] = v467;

          if (os_log_type_enabled(v463, v464))
          {
            OUTLINED_FUNCTION_68_1();
            v470 = swift_slowAlloc();
            v943 = v463;
            v471 = v470;
            OUTLINED_FUNCTION_64_0();
            v472 = swift_slowAlloc();
            LODWORD(v940) = v464;
            v473 = v472;
            v948 = v472;
            OUTLINED_FUNCTION_132();
            OUTLINED_FUNCTION_265();
            OUTLINED_FUNCTION_4_0();
            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_284();

            OUTLINED_FUNCTION_75_0();
            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_113();

            *(v471 + 4) = v69;

            OUTLINED_FUNCTION_115();
            v474 = v943;
            OUTLINED_FUNCTION_239();
            _os_log_impl(v475, v476, v477, v478, v479, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v473);
            v480 = OUTLINED_FUNCTION_16_1();
            MEMORY[0x1C6956920](v480);
            v481 = OUTLINED_FUNCTION_19();
            MEMORY[0x1C6956920](v481);
          }

          else
          {
          }

          v507 = OUTLINED_FUNCTION_5_0();
          v508(v507);
          OUTLINED_FUNCTION_217();
          v75 = 3;
          goto LABEL_87;
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_51();
        v951 = OUTLINED_FUNCTION_341();
        v952 = v458;
        v459 = OUTLINED_FUNCTION_53();
        goto LABEL_210;
      }

      v396 = v943 == 0x65726F7473 && v942 == 0xE500000000000000;
      if (v396 || (OUTLINED_FUNCTION_130_0() & 1) != 0)
      {
        OUTLINED_FUNCTION_335();
        sub_1C5CD4534();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_221();
        swift_allocObject();
        OUTLINED_FUNCTION_161();
        v945 = OUTLINED_FUNCTION_327(v397);
        v398 = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v399 = swift_allocObject();
        OUTLINED_FUNCTION_23_1(v399);
        OUTLINED_FUNCTION_65_0();
        v400 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v400);
        OUTLINED_FUNCTION_58();
        v401 = swift_allocObject();
        *(v401 + 16) = sub_1C5CB8394;
        *(v401 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v402 = swift_allocObject();
        v403 = OUTLINED_FUNCTION_57(v402);
        sub_1C5E1018C(v403, 3);
        *v404 = sub_1C5CB8408;
        v404[1] = 0x65726F7473;
        v404[2] = sub_1C5CB8408;
        v404[3] = v69;
        v404[4] = sub_1C5CB837C;
        v404[5] = v402;

        OUTLINED_FUNCTION_205();
        v405 = OUTLINED_FUNCTION_125();
        if (os_log_type_enabled(v405, v406))
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_45_1();
          v407 = swift_slowAlloc();
          OUTLINED_FUNCTION_20(v407);

          OUTLINED_FUNCTION_133();
          LODWORD(v937) = v973;
          if (v973)
          {
            v408 = OUTLINED_FUNCTION_78();
          }

          else
          {
            v948 = v943;
            sub_1C5CB60AC();
            v408 = sub_1C6017380();
            v106 = v660;
          }

          OUTLINED_FUNCTION_232(v408);
          OUTLINED_FUNCTION_113();

          *(v398 + 4) = v69;

          OUTLINED_FUNCTION_86_1();
          OUTLINED_FUNCTION_233(v661, v662, v663, v664);
          __swift_destroy_boxed_opaque_existential_0(v407);
          v665 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v665);
          v666 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v666);

          LOBYTE(v101) = v937;
        }

        else
        {
        }

        if ((v101 & 1) == 0)
        {
          OUTLINED_FUNCTION_107_0();
          v75 = swift_allocObject();
          OUTLINED_FUNCTION_256(v75, 3);
          OUTLINED_FUNCTION_58();
          v667 = swift_allocObject();
          OUTLINED_FUNCTION_264(v667);
          v668 = v938;
          v669 = sub_1C60162B0();
          v670 = sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v671 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v671);
          OUTLINED_FUNCTION_65_0();
          v672 = swift_allocObject();
          OUTLINED_FUNCTION_32_0(v672);
          OUTLINED_FUNCTION_58();
          v673 = swift_allocObject();
          *(v673 + 16) = sub_1C5CB83DC;
          *(v673 + 24) = v667;
          OUTLINED_FUNCTION_58();
          v674 = swift_allocObject();
          *(v674 + 16) = sub_1C5CB83D4;
          *(v674 + 24) = v673;
          v675 = OUTLINED_FUNCTION_63();
          sub_1C5E1018C(v675, 3);
          *v676 = sub_1C5CB8408;
          v676[1] = v668;
          v676[2] = sub_1C5CB8408;
          v676[3] = v69;
          v676[4] = sub_1C5CB837C;
          v676[5] = v674;

          LODWORD(v945) = v670;
          v677 = OUTLINED_FUNCTION_162();
          if (os_log_type_enabled(v677, v678))
          {
            OUTLINED_FUNCTION_68_1();
            v679 = swift_slowAlloc();
            *&v940 = v669;
            v680 = v679;
            OUTLINED_FUNCTION_64_0();
            v681 = swift_slowAlloc();
            OUTLINED_FUNCTION_34_0(v681);

            OUTLINED_FUNCTION_192();

            OUTLINED_FUNCTION_33();
            v951 = v682;
            v952 = v683;
            sub_1C5CAF86C(v943, 3, 0);
            OUTLINED_FUNCTION_284();

            OUTLINED_FUNCTION_75_0();
            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_113();

            *(v680 + 4) = v69;

            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_266(v684, v685, v686, v687);
            __swift_destroy_boxed_opaque_existential_0(v681);
            v688 = OUTLINED_FUNCTION_16_1();
            MEMORY[0x1C6956920](v688);
            v689 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v689);

            v690 = OUTLINED_FUNCTION_5_0();
            v691(v690);
            OUTLINED_FUNCTION_177();
            v98 = 0x80;
            v96 = 3;
            goto LABEL_37;
          }

          v694 = OUTLINED_FUNCTION_5_0();
          v695(v694);
          OUTLINED_FUNCTION_177();
          v98 = 0x80;
          v96 = 3;
          goto LABEL_36;
        }

LABEL_200:

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        v948 = 200;
        v951 = sub_1C6017840();
        v952 = v489;
LABEL_209:
        OUTLINED_FUNCTION_131_0();
LABEL_210:
        MEMORY[0x1C69534E0](v459);
LABEL_211:
        sub_1C5C9722C();
        MEMORY[0x1C69534E0](0, 0xE000000000000000);
        sub_1C6016880();
        OUTLINED_FUNCTION_92();
        OUTLINED_FUNCTION_2_3();
        sub_1C5CB8318(v514, v515, &unk_1C6035604);
        OUTLINED_FUNCTION_26();
        sub_1C6017280();
        OUTLINED_FUNCTION_90();

        v8 = v944;
        goto LABEL_17;
      }

      v592 = OUTLINED_FUNCTION_48();
      v594 = v70 && v593 == 0xE800000000000000;
      if (v594 || (OUTLINED_FUNCTION_187(v592, 0xE800000000000000) & 1) != 0)
      {
        sub_1C6014E90();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_58();
        swift_allocObject();
        OUTLINED_FUNCTION_161();
        *(v595 + 16) = v69;
        *(v595 + 24) = v973;
        OUTLINED_FUNCTION_211();
        sub_1C60162B0();
        v596 = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v597 = swift_allocObject();
        OUTLINED_FUNCTION_70(v597);
        OUTLINED_FUNCTION_65_0();
        v598 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v598);
        OUTLINED_FUNCTION_58();
        v599 = swift_allocObject();
        *(v599 + 16) = sub_1C5CB83D8;
        *(v599 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v600 = swift_allocObject();
        *(v600 + 16) = sub_1C5CB83D4;
        *(v600 + 24) = v599;
        v601 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v601, 3);
        *v602 = sub_1C5CB8408;
        v602[1] = v597;
        v602[2] = sub_1C5CB8408;
        v602[3] = v69;
        v602[4] = sub_1C5CB837C;
        v602[5] = v600;

        LODWORD(v937) = v596;
        v603 = OUTLINED_FUNCTION_289();
        if (os_log_type_enabled(v603, v604))
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_45_1();
          v605 = swift_slowAlloc();
          OUTLINED_FUNCTION_20(v605);

          OUTLINED_FUNCTION_133();

          v606 = sub_1C5C6AB10(v943, v973, &v951);

          *(v596 + 4) = v606;

          OUTLINED_FUNCTION_140();
          OUTLINED_FUNCTION_233(v607, v608, v609, v610);
          __swift_destroy_boxed_opaque_existential_0(v605);
          v611 = OUTLINED_FUNCTION_31_0();
          MEMORY[0x1C6956920](v611);
          v612 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v612);
        }

        else
        {
        }

        sub_1C6014F40();
        OUTLINED_FUNCTION_288();
        if (v356)
        {
        }

        else
        {
          v768 = v749;
          *&v940 = v973;
          sub_1C6016970();
          v937 = v768;
          OUTLINED_FUNCTION_243();
          v769 = sub_1C6016950();
          v943 = v769;
          v945 = v770;
          if (v770)
          {
            v994 = v943;
            v995 = v945;
            v997 = 0;
            v996 = 0;
            v998 = 3;
            OUTLINED_FUNCTION_107_0();
            v771 = swift_allocObject();
            OUTLINED_FUNCTION_302(v771);
            OUTLINED_FUNCTION_58();
            v772 = swift_allocObject();
            *(v772 + 16) = sub_1C5CB8470;
            *(v772 + 24) = v596;
            OUTLINED_FUNCTION_211();

            v773 = v938;
            v938 = sub_1C60162B0();
            v75 = sub_1C6016F30();
            OUTLINED_FUNCTION_65_0();
            v774 = swift_allocObject();
            OUTLINED_FUNCTION_23_1(v774);
            OUTLINED_FUNCTION_65_0();
            v775 = swift_allocObject();
            OUTLINED_FUNCTION_29(v775);
            OUTLINED_FUNCTION_58();
            v776 = swift_allocObject();
            *(v776 + 16) = sub_1C5CB83DC;
            *(v776 + 24) = v772;
            OUTLINED_FUNCTION_58();
            v777 = swift_allocObject();
            v778 = OUTLINED_FUNCTION_56(v777);
            sub_1C5E1018C(v778, 3);
            *v779 = sub_1C5CB8408;
            v779[1] = v773;
            v779[2] = sub_1C5CB8408;
            v779[3] = v600;
            v779[4] = sub_1C5CB837C;
            v779[5] = v777;
            OUTLINED_FUNCTION_349();

            LODWORD(v936) = v75;
            if (os_log_type_enabled(v938, v75))
            {
              OUTLINED_FUNCTION_68_1();
              swift_slowAlloc();
              OUTLINED_FUNCTION_46();
              v933 = swift_slowAlloc();
              v948 = v933;
              OUTLINED_FUNCTION_42_0();

              OUTLINED_FUNCTION_193();

              OUTLINED_FUNCTION_4_0();
              v96 = v945;

              sub_1C5CAF1A0();
              OUTLINED_FUNCTION_234();

              OUTLINED_FUNCTION_75_0();

              OUTLINED_FUNCTION_82();
              OUTLINED_FUNCTION_95();

              OUTLINED_FUNCTION_333();

              v370 = "[XSQ:Content] init | x-sampcollection-artist / sirisync | %{public}s";
LABEL_305:
              v371 = v936;
              v372 = v938;
              goto LABEL_155;
            }

            goto LABEL_344;
          }

          v839 = OUTLINED_FUNCTION_191();
          sub_1C5CB6098(v839, v840);
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        v948 = 150;
        v951 = sub_1C6017840();
        v952 = v841;
        OUTLINED_FUNCTION_21_1();
        goto LABEL_326;
      }

      OUTLINED_FUNCTION_320();
      v809 = v808 == v807 && v942 == 0xE400000000000000;
      if (v809 || (v810 = OUTLINED_FUNCTION_156(), (OUTLINED_FUNCTION_187(v810, v811) & 1) != 0))
      {
        v812 = v947;
        sub_1C6014E90();
        OUTLINED_FUNCTION_313();
        OUTLINED_FUNCTION_58();
        swift_allocObject();
        OUTLINED_FUNCTION_161();
        *(v813 + 16) = v812;
        *(v813 + 24) = v35;
        v945 = v35;
        swift_bridgeObjectRetain_n();
        sub_1C60162B0();
        v814 = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v815 = swift_allocObject();
        OUTLINED_FUNCTION_70(v815);
        OUTLINED_FUNCTION_65_0();
        v816 = swift_allocObject();
        OUTLINED_FUNCTION_29(v816);
        OUTLINED_FUNCTION_58();
        v817 = swift_allocObject();
        *(v817 + 16) = sub_1C5CB83D8;
        *(v817 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v818 = swift_allocObject();
        *(v818 + 16) = sub_1C5CB83D4;
        *(v818 + 24) = v817;
        v819 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v819, 3);
        *v820 = sub_1C5CB8408;
        v820[1] = v815;
        v820[2] = sub_1C5CB8408;
        v820[3] = v68;
        v820[4] = sub_1C5CB837C;
        v820[5] = v818;

        LODWORD(v937) = v814;
        v821 = OUTLINED_FUNCTION_289();
        if (os_log_type_enabled(v821, v822))
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v823 = swift_slowAlloc();
          v951 = v823;
          OUTLINED_FUNCTION_13_0();

          OUTLINED_FUNCTION_96();
          OUTLINED_FUNCTION_278();
          OUTLINED_FUNCTION_124_0();
          OUTLINED_FUNCTION_171();

          OUTLINED_FUNCTION_277();

          OUTLINED_FUNCTION_140();
          OUTLINED_FUNCTION_190(v824, v825, v826, v827);
          __swift_destroy_boxed_opaque_existential_0(v823);
          v828 = OUTLINED_FUNCTION_31_0();
          MEMORY[0x1C6956920](v828);
          v829 = OUTLINED_FUNCTION_30_0();
          MEMORY[0x1C6956920](v829);
        }

        else
        {
        }

        OUTLINED_FUNCTION_201();
        if (v842)
        {
          v843 = v943;
          v844 = v945;
          v999[0] = v943;
          v999[1] = v945;
          v940 = xmmword_1C6031180;
          v1000 = xmmword_1C6031180;
          v1001 = 4;
          OUTLINED_FUNCTION_107_0();
          v845 = swift_allocObject();
          v845[1].n128_u64[0] = v843;
          v845[1].n128_u64[1] = v844;
          OUTLINED_FUNCTION_150(v845);
          OUTLINED_FUNCTION_58();
          v846 = swift_allocObject();
          *(v846 + 16) = sub_1C5CB8470;
          *(v846 + 24) = v845;
          swift_bridgeObjectRetain_n();

          v847 = v938;
          v531 = sub_1C60162B0();
          sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v848 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v848);
          OUTLINED_FUNCTION_65_0();
          v849 = swift_allocObject();
          OUTLINED_FUNCTION_29(v849);
          OUTLINED_FUNCTION_58();
          v850 = swift_allocObject();
          *(v850 + 16) = sub_1C5CB83DC;
          *(v850 + 24) = v846;
          OUTLINED_FUNCTION_58();
          v851 = swift_allocObject();
          v852 = OUTLINED_FUNCTION_56(v851);
          sub_1C5E1018C(v852, 3);
          *v853 = sub_1C5CB8408;
          v853[1] = v847;
          v853[2] = sub_1C5CB8408;
          v853[3] = v68;
          v853[4] = sub_1C5CB837C;
          v853[5] = v851;

          if (OUTLINED_FUNCTION_181())
          {
            OUTLINED_FUNCTION_68_1();
            swift_slowAlloc();
            OUTLINED_FUNCTION_64_0();
            v938 = swift_slowAlloc();
            v948 = v938;
            OUTLINED_FUNCTION_13_0();

            OUTLINED_FUNCTION_96();
            OUTLINED_FUNCTION_4_0();
            OUTLINED_FUNCTION_125();

            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_234();

            OUTLINED_FUNCTION_75_0();

            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_95();

            OUTLINED_FUNCTION_348();

            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_190(v854, v855, v856, v857);
            __swift_destroy_boxed_opaque_existential_0(v938);
            v858 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v858);
            v859 = OUTLINED_FUNCTION_30_0();
            MEMORY[0x1C6956920](v859);
          }

          else
          {

            OUTLINED_FUNCTION_125();
          }

          v890 = OUTLINED_FUNCTION_5_0();
          v891(v890);
          OUTLINED_FUNCTION_314();
          v75 = 3;
          goto LABEL_267;
        }

        goto LABEL_309;
      }
    }

    else
    {
      v377 = OUTLINED_FUNCTION_226() & 0xFFFFFFFFFFFFLL | 0x6C70000000000000;
      v380 = v68 == v377 && v379 == v378;
      if (!v380 && (OUTLINED_FUNCTION_153(v377, v378) & 1) == 0)
      {
        v559 = OUTLINED_FUNCTION_226() & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
        v562 = v68 == v559 && v561 == v560;
        if (!v562 && (OUTLINED_FUNCTION_153(v559, v560) & 1) == 0)
        {

          sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
          sub_1C6016940();
          OUTLINED_FUNCTION_74();
          v948 = 0;
          v951 = sub_1C6017840();
          v952 = v780;
LABEL_326:
          OUTLINED_FUNCTION_131_0();
          MEMORY[0x1C69534E0]();
          goto LABEL_211;
        }

        v563 = v943 == 0x65726F7473 && v942 == 0xE500000000000000;
        if (v563 || (sub_1C6017860() & 1) != 0)
        {
          sub_1C6014E90();
          OUTLINED_FUNCTION_99_0();
          OUTLINED_FUNCTION_58();
          v564 = swift_allocObject();
          OUTLINED_FUNCTION_67_0(v564);
          v565 = v938;
          sub_1C60162B0();
          sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v566 = swift_allocObject();
          OUTLINED_FUNCTION_70(v566);
          OUTLINED_FUNCTION_65_0();
          v567 = swift_allocObject();
          OUTLINED_FUNCTION_29(v567);
          OUTLINED_FUNCTION_58();
          v568 = swift_allocObject();
          *(v568 + 16) = sub_1C5CB83D8;
          *(v568 + 24) = 0x656369766564;
          OUTLINED_FUNCTION_58();
          v569 = swift_allocObject();
          *(v569 + 16) = sub_1C5CB83D4;
          *(v569 + 24) = v568;
          v570 = OUTLINED_FUNCTION_63();
          sub_1C5E1018C(v570, 3);
          *v571 = sub_1C5CB8408;
          v571[1] = v566;
          v571[2] = sub_1C5CB8408;
          v571[3] = v68;
          v571[4] = sub_1C5CB837C;
          v571[5] = v569;

          if (OUTLINED_FUNCTION_127())
          {
            OUTLINED_FUNCTION_68_1();
            swift_slowAlloc();
            OUTLINED_FUNCTION_64_0();
            v572 = swift_slowAlloc();
            v951 = v572;
            OUTLINED_FUNCTION_13_0();

            OUTLINED_FUNCTION_96();
            OUTLINED_FUNCTION_278();
            OUTLINED_FUNCTION_124_0();
            OUTLINED_FUNCTION_171();

            OUTLINED_FUNCTION_277();

            OUTLINED_FUNCTION_94_0(&dword_1C5C61000, v573, v574, "[XSQ:Content] init | x-sampradio | stationID=%{public}s");
            __swift_destroy_boxed_opaque_existential_0(v572);
            v575 = OUTLINED_FUNCTION_19();
            MEMORY[0x1C6956920](v575);
            v576 = OUTLINED_FUNCTION_30_0();
            MEMORY[0x1C6956920](v576);
          }

          else
          {
          }

          OUTLINED_FUNCTION_200();
          if (v699)
          {
            OUTLINED_FUNCTION_107_0();
            v700 = swift_allocObject();
            *(v700 + 16) = v565;
            *(v700 + 24) = v945;
            *(v700 + 32) = 0;
            *(v700 + 40) = 0;
            *(v700 + 48) = 64;
            OUTLINED_FUNCTION_58();
            v701 = swift_allocObject();
            *(v701 + 16) = sub_1C5CB8470;
            *(v701 + 24) = v700;
            swift_bridgeObjectRetain_n();

            v702 = v938;
            v75 = sub_1C60162B0();
            v703 = sub_1C6016F30();
            OUTLINED_FUNCTION_65_0();
            v704 = swift_allocObject();
            OUTLINED_FUNCTION_23_1(v704);
            OUTLINED_FUNCTION_65_0();
            v705 = swift_allocObject();
            OUTLINED_FUNCTION_29(v705);
            OUTLINED_FUNCTION_58();
            v706 = swift_allocObject();
            *(v706 + 16) = sub_1C5CB6090;
            *(v706 + 24) = v701;
            OUTLINED_FUNCTION_58();
            v707 = swift_allocObject();
            v708 = OUTLINED_FUNCTION_56(v707);
            sub_1C5E1018C(v708, 3);
            *v709 = sub_1C5CB8408;
            v709[1] = v702;
            v709[2] = sub_1C5CB8408;
            v709[3] = v68;
            v709[4] = sub_1C5CB837C;
            v709[5] = v707;

            LODWORD(v939) = v703;
            *&v940 = v75;
            if (os_log_type_enabled(v75, v703))
            {
              OUTLINED_FUNCTION_68_1();
              v710 = swift_slowAlloc();
              OUTLINED_FUNCTION_64_0();
              v938 = swift_slowAlloc();
              v948 = v938;
              OUTLINED_FUNCTION_13_0();

              OUTLINED_FUNCTION_96();
              v951 = 0;
              v952 = 0xE000000000000000;
              v75 = v945;

              sub_1C6017540();

              OUTLINED_FUNCTION_89();
              v951 = 0xD000000000000012;
              v952 = v711;
              MEMORY[0x1C69534E0](v943, v75);
              v712 = OUTLINED_FUNCTION_246();
              MEMORY[0x1C69534E0](v712);

              OUTLINED_FUNCTION_82();
              OUTLINED_FUNCTION_95();

              *(v710 + 4) = v68;

              OUTLINED_FUNCTION_44();
              OUTLINED_FUNCTION_190(v713, v714, v715, v716);
              __swift_destroy_boxed_opaque_existential_0(v938);
              v717 = OUTLINED_FUNCTION_22_0();
              MEMORY[0x1C6956920](v717);
              v718 = OUTLINED_FUNCTION_30_0();
              MEMORY[0x1C6956920](v718);

              v719 = OUTLINED_FUNCTION_5_0();
              v720(v719);
              OUTLINED_FUNCTION_177();
              v98 = 64;
              v96 = v75;
              goto LABEL_37;
            }

            v831 = v945;

            v832 = OUTLINED_FUNCTION_5_0();
            v833(v832);
            OUTLINED_FUNCTION_177();
            v98 = 64;
            v96 = v831;
            goto LABEL_36;
          }

          sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
          sub_1C6016940();
          OUTLINED_FUNCTION_74();
          v948 = 201;
          v951 = sub_1C6017840();
          v952 = v781;
          OUTLINED_FUNCTION_21_1();
          goto LABEL_326;
        }

        goto LABEL_325;
      }

      OUTLINED_FUNCTION_310();
      v382 = v70 && v381 == 0xE600000000000000;
      if (v382 || (OUTLINED_FUNCTION_126_0() & 1) != 0)
      {
        OUTLINED_FUNCTION_335();
        sub_1C5CD4534();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_221();
        v383 = swift_allocObject();
        v384 = OUTLINED_FUNCTION_52_0(v383);
        sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v385 = swift_allocObject();
        OUTLINED_FUNCTION_23_1(v385);
        OUTLINED_FUNCTION_65_0();
        v386 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v386);
        OUTLINED_FUNCTION_58();
        v387 = swift_allocObject();
        *(v387 + 16) = sub_1C5CB8394;
        *(v387 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v388 = swift_allocObject();
        v389 = OUTLINED_FUNCTION_57(v388);
        sub_1C5E1018C(v389, 3);
        *v390 = sub_1C5CB8408;
        v390[1] = 0x65726F7473;
        v390[2] = sub_1C5CB8408;
        v390[3] = v69;
        v390[4] = sub_1C5CB837C;
        v390[5] = v388;

        OUTLINED_FUNCTION_205();
        if (os_log_type_enabled(v384, v391))
        {
          v937 = v384;
          OUTLINED_FUNCTION_68_1();
          v392 = swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v393 = swift_slowAlloc();
          v951 = v393;
          OUTLINED_FUNCTION_132();
          OUTLINED_FUNCTION_265();
          v394 = v943;
          if (v943)
          {
            v395 = OUTLINED_FUNCTION_78();
          }

          else
          {
            OUTLINED_FUNCTION_286();
            v395 = sub_1C6017380();
          }

          OUTLINED_FUNCTION_232(v395);
          OUTLINED_FUNCTION_113();

          *(v392 + 4) = v69;

          OUTLINED_FUNCTION_115();
          v630 = v937;
          OUTLINED_FUNCTION_239();
          _os_log_impl(v631, v632, v633, v634, v635, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v393);
          v636 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v636);
          v637 = OUTLINED_FUNCTION_19();
          MEMORY[0x1C6956920](v637);
        }

        else
        {
          v394 = v943;
        }

        if ((v394 & 1) == 0)
        {
          v1002[0] = 0;
          v1002[1] = 0;
          v1002[2] = 5;
          v1002[3] = v945;
          v1003 = 1;
          OUTLINED_FUNCTION_107_0();
          v639 = swift_allocObject();
          OUTLINED_FUNCTION_218(v639);
          OUTLINED_FUNCTION_58();
          v96 = swift_allocObject();
          OUTLINED_FUNCTION_264(v96);
          v640 = v938;
          v641 = sub_1C60162B0();
          v642 = sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v643 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v643);
          OUTLINED_FUNCTION_65_0();
          v644 = swift_allocObject();
          OUTLINED_FUNCTION_32_0(v644);
          OUTLINED_FUNCTION_58();
          v645 = swift_allocObject();
          *(v645 + 16) = sub_1C5CB83DC;
          *(v645 + 24) = v96;
          OUTLINED_FUNCTION_58();
          v646 = swift_allocObject();
          *(v646 + 16) = sub_1C5CB83D4;
          *(v646 + 24) = v645;
          v647 = OUTLINED_FUNCTION_63();
          sub_1C5E1018C(v647, 3);
          *v648 = sub_1C5CB8408;
          v648[1] = v640;
          v648[2] = sub_1C5CB8408;
          v648[3] = v69;
          v648[4] = sub_1C5CB837C;
          v648[5] = v646;

          LODWORD(v943) = v642;
          v649 = OUTLINED_FUNCTION_162();
          if (os_log_type_enabled(v649, v650))
          {
            OUTLINED_FUNCTION_68_1();
            v651 = swift_slowAlloc();
            *&v940 = v641;
            v652 = v651;
            OUTLINED_FUNCTION_64_0();
            v653 = swift_slowAlloc();
            OUTLINED_FUNCTION_34_0(v653);

            OUTLINED_FUNCTION_192();

            OUTLINED_FUNCTION_4_0();
            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_284();

            OUTLINED_FUNCTION_75_0();
            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_113();

            *(v652 + 4) = v69;

            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_266(v654, v655, v656, v657);
            __swift_destroy_boxed_opaque_existential_0(v653);
            v658 = OUTLINED_FUNCTION_16_1();
            MEMORY[0x1C6956920](v658);
            v659 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v659);
          }

          else
          {
          }

          v692 = OUTLINED_FUNCTION_5_0();
          v693(v692);
          OUTLINED_FUNCTION_217();
          v75 = 5;
          goto LABEL_87;
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_51();
        v951 = sub_1C6017840();
        v952 = v638;
        goto LABEL_209;
      }

      v578 = v943 == 0x65726F7473 && v942 == 0xE500000000000000;
      if (v578 || (OUTLINED_FUNCTION_130_0() & 1) != 0)
      {
        sub_1C6014E90();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_58();
        v579 = swift_allocObject();
        OUTLINED_FUNCTION_67_0(v579);
        v580 = v938;
        sub_1C60162B0();
        sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v581 = swift_allocObject();
        OUTLINED_FUNCTION_70(v581);
        OUTLINED_FUNCTION_65_0();
        v582 = swift_allocObject();
        OUTLINED_FUNCTION_29(v582);
        OUTLINED_FUNCTION_58();
        v583 = swift_allocObject();
        *(v583 + 16) = sub_1C5CB83D8;
        *(v583 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v584 = swift_allocObject();
        *(v584 + 16) = sub_1C5CB83D4;
        *(v584 + 24) = v583;
        v585 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v585, 3);
        *v586 = sub_1C5CB8408;
        v586[1] = v581;
        v586[2] = sub_1C5CB8408;
        v586[3] = v68;
        v586[4] = sub_1C5CB837C;
        v586[5] = v584;

        if (OUTLINED_FUNCTION_127())
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v587 = swift_slowAlloc();
          v951 = v587;
          OUTLINED_FUNCTION_13_0();

          OUTLINED_FUNCTION_96();
          OUTLINED_FUNCTION_278();
          OUTLINED_FUNCTION_124_0();
          OUTLINED_FUNCTION_171();

          OUTLINED_FUNCTION_277();

          OUTLINED_FUNCTION_94_0(&dword_1C5C61000, v588, v589, "[XSQ:Content] init | x-sampplaylist / store | globalPlaylistID=%{public}s");
          __swift_destroy_boxed_opaque_existential_0(v587);
          v590 = OUTLINED_FUNCTION_19();
          MEMORY[0x1C6956920](v590);
          v591 = OUTLINED_FUNCTION_30_0();
          MEMORY[0x1C6956920](v591);
        }

        else
        {
        }

        OUTLINED_FUNCTION_200();
        if (v721)
        {
          OUTLINED_FUNCTION_107_0();
          v722 = swift_allocObject();
          *(v722 + 16) = v580;
          *(v722 + 24) = v945;
          *(v722 + 32) = xmmword_1C6031170;
          *(v722 + 48) = 0x80;
          OUTLINED_FUNCTION_58();
          v723 = swift_allocObject();
          *(v723 + 16) = sub_1C5CB8470;
          *(v723 + 24) = v722;
          swift_bridgeObjectRetain_n();

          v724 = v938;
          v725 = sub_1C60162B0();
          v726 = sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v727 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v727);
          OUTLINED_FUNCTION_65_0();
          v728 = swift_allocObject();
          OUTLINED_FUNCTION_29(v728);
          OUTLINED_FUNCTION_58();
          v729 = swift_allocObject();
          *(v729 + 16) = sub_1C5CB83DC;
          *(v729 + 24) = v723;
          OUTLINED_FUNCTION_58();
          v730 = swift_allocObject();
          *(v730 + 16) = sub_1C5CB83D4;
          *(v730 + 24) = v729;
          v731 = OUTLINED_FUNCTION_63();
          sub_1C5E1018C(v731, 3);
          *v732 = sub_1C5CB8408;
          v732[1] = v724;
          v732[2] = sub_1C5CB8408;
          v732[3] = v68;
          v732[4] = sub_1C5CB837C;
          v732[5] = v730;

          LODWORD(v939) = v726;
          *&v940 = v725;
          if (os_log_type_enabled(v725, v726))
          {
            OUTLINED_FUNCTION_68_1();
            v733 = swift_slowAlloc();
            OUTLINED_FUNCTION_64_0();
            v938 = swift_slowAlloc();
            v950 = v938;
            *v733 = 258;
            *(v733 + 2) = 34;

            OUTLINED_FUNCTION_192();

            OUTLINED_FUNCTION_33();
            v951 = v734;
            v952 = v735;
            v948 = 0;
            v949 = 0xE000000000000000;
            v736 = v945;

            sub_1C6017540();

            OUTLINED_FUNCTION_89();
            v948 = 0xD000000000000011;
            v949 = v737;
            MEMORY[0x1C69534E0](v943, v736);
            v738 = OUTLINED_FUNCTION_246();
            MEMORY[0x1C69534E0](v738);
            v739 = v949;
            MEMORY[0x1C69534E0](v948, v949);

            OUTLINED_FUNCTION_75_0();

            v740 = v952;
            sub_1C5C6AB10(v951, v952, &v950);
            OUTLINED_FUNCTION_95();

            *(v733 + 4) = v739;

            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_266(v741, v742, v743, v744);
            __swift_destroy_boxed_opaque_existential_0(v938);
            v745 = OUTLINED_FUNCTION_16_1();
            MEMORY[0x1C6956920](v745);
            v746 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v746);

            v747 = OUTLINED_FUNCTION_5_0();
            v748(v747);
            v99 = v943;
            v97 = 0;
            v75 = 128;
            v96 = v736;
            v98 = 0x80;
            goto LABEL_37;
          }

          v834 = v945;

          v835 = OUTLINED_FUNCTION_5_0();
          v836(v835);
          v97 = 0;
          v75 = 128;
          v96 = v834;
          goto LABEL_102;
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        v948 = 114;
        v951 = sub_1C6017840();
        v952 = v782;
        OUTLINED_FUNCTION_21_1();
        goto LABEL_326;
      }

      v784 = OUTLINED_FUNCTION_48();
      v785 = v70 && v942 == 0xE800000000000000;
      if (v785 || (OUTLINED_FUNCTION_187(v784, 0xE800000000000000) & 1) != 0)
      {
        v786 = sub_1C6014E90();
        v788 = v787;
        OUTLINED_FUNCTION_58();
        v789 = swift_allocObject();
        v943 = v786;
        *(v789 + 16) = v786;
        *(v789 + 24) = v788;
        OUTLINED_FUNCTION_289();
        swift_bridgeObjectRetain_n();
        v790 = sub_1C60162B0();
        LODWORD(v786) = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v791 = swift_allocObject();
        OUTLINED_FUNCTION_70(v791);
        OUTLINED_FUNCTION_65_0();
        v792 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v792);
        OUTLINED_FUNCTION_58();
        v793 = swift_allocObject();
        *(v793 + 16) = sub_1C5CB83D8;
        *(v793 + 24) = v789;
        OUTLINED_FUNCTION_58();
        v794 = swift_allocObject();
        *(v794 + 16) = sub_1C5CB83D4;
        *(v794 + 24) = v793;
        v795 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v795, 3);
        *v796 = sub_1C5CB8408;
        v796[1] = v791;
        v796[2] = sub_1C5CB8408;
        v796[3] = v69;
        v796[4] = sub_1C5CB837C;
        v796[5] = v794;

        LODWORD(v937) = v786;
        if (os_log_type_enabled(v790, v786))
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_45_1();
          v797 = swift_slowAlloc();
          OUTLINED_FUNCTION_20(v797);

          OUTLINED_FUNCTION_133();
          v798 = v940;

          v799 = sub_1C5C6AB10(v943, v798, &v951);

          *(v790 + 4) = v799;

          OUTLINED_FUNCTION_169();
          _os_log_impl(v800, v801, v802, v803, v804, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v797);
          v805 = OUTLINED_FUNCTION_19();
          MEMORY[0x1C6956920](v805);
          v806 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v806);
        }

        else
        {
        }

        v937 = sub_1C6014F40();
        OUTLINED_FUNCTION_288();
        if (v356)
        {
        }

        else
        {
          OUTLINED_FUNCTION_263();
          OUTLINED_FUNCTION_191();
          v860 = sub_1C6016950();
          v943 = v860;
          v945 = v861;
          if (v861)
          {
            v1004 = v943;
            v1005 = v945;
            v1006 = 0;
            v1007 = 0;
            v1008 = 3;
            OUTLINED_FUNCTION_107_0();
            v862 = swift_allocObject();
            OUTLINED_FUNCTION_302(v862);
            OUTLINED_FUNCTION_58();
            v863 = swift_allocObject();
            *(v863 + 16) = sub_1C5CB8470;
            *(v863 + 24) = v790;
            OUTLINED_FUNCTION_211();

            v864 = v938;
            v938 = sub_1C60162B0();
            v75 = sub_1C6016F30();
            OUTLINED_FUNCTION_65_0();
            v865 = swift_allocObject();
            OUTLINED_FUNCTION_23_1(v865);
            OUTLINED_FUNCTION_65_0();
            v866 = swift_allocObject();
            OUTLINED_FUNCTION_29(v866);
            OUTLINED_FUNCTION_58();
            v867 = swift_allocObject();
            *(v867 + 16) = sub_1C5CB83DC;
            *(v867 + 24) = v863;
            OUTLINED_FUNCTION_58();
            v868 = swift_allocObject();
            v869 = OUTLINED_FUNCTION_56(v868);
            sub_1C5E1018C(v869, 3);
            *v870 = sub_1C5CB8408;
            v870[1] = v864;
            v870[2] = sub_1C5CB8408;
            v870[3] = v794;
            v870[4] = sub_1C5CB837C;
            v870[5] = v868;
            OUTLINED_FUNCTION_349();

            LODWORD(v936) = v75;
            if (os_log_type_enabled(v938, v75))
            {
              OUTLINED_FUNCTION_68_1();
              swift_slowAlloc();
              OUTLINED_FUNCTION_46();
              v933 = swift_slowAlloc();
              v948 = v933;
              OUTLINED_FUNCTION_42_0();

              OUTLINED_FUNCTION_193();

              OUTLINED_FUNCTION_4_0();
              v96 = v945;

              sub_1C5CAF1A0();
              OUTLINED_FUNCTION_234();

              OUTLINED_FUNCTION_75_0();

              OUTLINED_FUNCTION_82();
              OUTLINED_FUNCTION_95();

              OUTLINED_FUNCTION_333();

              v370 = "[XSQ:Content] init | x-sampcollection-artist / ulid | %{public}s";
              goto LABEL_305;
            }

LABEL_344:

            v871 = OUTLINED_FUNCTION_191();
            sub_1C5CB6098(v871, v872);

            v96 = v945;
            goto LABEL_228;
          }

          v892 = OUTLINED_FUNCTION_191();
          sub_1C5CB6098(v892, v893);
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        v951 = OUTLINED_FUNCTION_262(150);
        v952 = v894;
        OUTLINED_FUNCTION_21_1();
        goto LABEL_326;
      }

      OUTLINED_FUNCTION_320();
      v874 = v943 == v873 && v942 == 0xE400000000000000;
      if (v874 || (v875 = OUTLINED_FUNCTION_156(), (OUTLINED_FUNCTION_187(v875, v876) & 1) != 0))
      {
        sub_1C6014E90();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_58();
        v877 = swift_allocObject();
        OUTLINED_FUNCTION_67_0(v877);
        v878 = v938;
        sub_1C60162B0();
        sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v879 = swift_allocObject();
        OUTLINED_FUNCTION_70(v879);
        OUTLINED_FUNCTION_65_0();
        v880 = swift_allocObject();
        OUTLINED_FUNCTION_29(v880);
        OUTLINED_FUNCTION_58();
        v881 = swift_allocObject();
        *(v881 + 16) = sub_1C5CB83D8;
        *(v881 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v882 = swift_allocObject();
        *(v882 + 16) = sub_1C5CB83D4;
        *(v882 + 24) = v881;
        v883 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v883, 3);
        *v884 = sub_1C5CB8408;
        v884[1] = v879;
        v884[2] = sub_1C5CB8408;
        v884[3] = v68;
        v884[4] = sub_1C5CB837C;
        v884[5] = v882;

        if (OUTLINED_FUNCTION_127())
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v885 = swift_slowAlloc();
          v951 = v885;
          OUTLINED_FUNCTION_13_0();

          OUTLINED_FUNCTION_96();
          OUTLINED_FUNCTION_278();
          OUTLINED_FUNCTION_124_0();
          OUTLINED_FUNCTION_171();

          OUTLINED_FUNCTION_277();

          OUTLINED_FUNCTION_94_0(&dword_1C5C61000, v886, v887, "[XSQ:Content] init | x-sampplaylist / ulid | ulid=%{public}s");
          __swift_destroy_boxed_opaque_existential_0(v885);
          v888 = OUTLINED_FUNCTION_19();
          MEMORY[0x1C6956920](v888);
          v889 = OUTLINED_FUNCTION_30_0();
          MEMORY[0x1C6956920](v889);
        }

        else
        {
        }

        OUTLINED_FUNCTION_201();
        if (v895)
        {
          v896 = v943;
          v897 = v945;
          v1009[0] = v943;
          v1009[1] = v945;
          v940 = xmmword_1C6031160;
          v1010 = xmmword_1C6031160;
          v1011 = 4;
          OUTLINED_FUNCTION_107_0();
          v898 = swift_allocObject();
          v898[1].n128_u64[0] = v896;
          v898[1].n128_u64[1] = v897;
          OUTLINED_FUNCTION_150(v898);
          OUTLINED_FUNCTION_58();
          v899 = swift_allocObject();
          *(v899 + 16) = sub_1C5CB8470;
          *(v899 + 24) = v898;
          OUTLINED_FUNCTION_211();

          v900 = v938;
          v531 = sub_1C60162B0();
          sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v901 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v901);
          OUTLINED_FUNCTION_65_0();
          v902 = swift_allocObject();
          OUTLINED_FUNCTION_29(v902);
          OUTLINED_FUNCTION_58();
          v903 = swift_allocObject();
          *(v903 + 16) = sub_1C5CB83DC;
          *(v903 + 24) = v899;
          OUTLINED_FUNCTION_58();
          v904 = swift_allocObject();
          v905 = OUTLINED_FUNCTION_56(v904);
          sub_1C5E1018C(v905, 3);
          *v906 = sub_1C5CB8408;
          v906[1] = v900;
          v906[2] = sub_1C5CB8408;
          v906[3] = v68;
          v906[4] = sub_1C5CB837C;
          v906[5] = v904;

          if (OUTLINED_FUNCTION_181())
          {
            OUTLINED_FUNCTION_68_1();
            swift_slowAlloc();
            OUTLINED_FUNCTION_64_0();
            v938 = swift_slowAlloc();
            v948 = v938;
            OUTLINED_FUNCTION_13_0();

            OUTLINED_FUNCTION_96();
            OUTLINED_FUNCTION_4_0();
            OUTLINED_FUNCTION_125();

            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_234();

            OUTLINED_FUNCTION_75_0();

            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_95();

            OUTLINED_FUNCTION_348();

            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_190(v907, v908, v909, v910);
            __swift_destroy_boxed_opaque_existential_0(v938);
            v911 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v911);
            v912 = OUTLINED_FUNCTION_30_0();
            MEMORY[0x1C6956920](v912);
          }

          else
          {

            OUTLINED_FUNCTION_125();
          }

          v914 = OUTLINED_FUNCTION_5_0();
          v915(v914);
          OUTLINED_FUNCTION_314();
          v75 = 5;
          goto LABEL_267;
        }

LABEL_309:

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        OUTLINED_FUNCTION_316();
        v951 = sub_1C6017840();
        v952 = v783;
        OUTLINED_FUNCTION_21_1();
        goto LABEL_326;
      }
    }

LABEL_363:

    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    OUTLINED_FUNCTION_50();
    v951 = sub_1C6017840();
    v952 = v913;
    OUTLINED_FUNCTION_21_1();
    goto LABEL_326;
  }

  OUTLINED_FUNCTION_310();
  v108 = v70 && v107 == 0xE600000000000000;
  if (v108 || (OUTLINED_FUNCTION_126_0() & 1) != 0)
  {
    v941 = v48;
    sub_1C6014E90();
    sub_1C5CD4534();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_221();
    v109 = swift_allocObject();
    v110 = OUTLINED_FUNCTION_52_0(v109);
    sub_1C6016F30();
    OUTLINED_FUNCTION_65_0();
    v111 = swift_allocObject();
    OUTLINED_FUNCTION_70(v111);
    OUTLINED_FUNCTION_65_0();
    v112 = swift_allocObject();
    OUTLINED_FUNCTION_69(v112);
    OUTLINED_FUNCTION_58();
    v113 = swift_allocObject();
    *(v113 + 16) = sub_1C5CB8394;
    *(v113 + 24) = 0x656369766564;
    OUTLINED_FUNCTION_58();
    v114 = swift_allocObject();
    v115 = OUTLINED_FUNCTION_57(v114);
    OUTLINED_FUNCTION_81(v115);
    v116[4] = sub_1C5CB8408;
    v116[5] = v111;
    v116[6] = sub_1C5CB8408;
    v116[7] = v112;
    v116[8] = sub_1C5CB837C;
    v116[9] = v114;
    swift_setDeallocating();

    sub_1C5D677CC();
    OUTLINED_FUNCTION_205();
    if (os_log_type_enabled(v110, v117))
    {
      v937 = v110;
      OUTLINED_FUNCTION_68_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_46();
      v118 = swift_slowAlloc();
      v951 = v118;
      OUTLINED_FUNCTION_42_0();

      OUTLINED_FUNCTION_193();

      if (v943)
      {
        v119 = OUTLINED_FUNCTION_78();
      }

      else
      {
        OUTLINED_FUNCTION_286();
        v119 = sub_1C6017380();
      }

      v8 = v944;
      OUTLINED_FUNCTION_232(v119);
      OUTLINED_FUNCTION_118();

      *(v110 + 4) = v112;

      OUTLINED_FUNCTION_115();
      v182 = v937;
      OUTLINED_FUNCTION_339(v183, v937, v184, v185);
      __swift_destroy_boxed_opaque_existential_0(v118);
      v186 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v186);
      v187 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v187);
    }

    else
    {

      v8 = v944;
    }

    if ((v943 & 1) == 0)
    {
      v963 = 0;
      v964 = 0;
      v190 = v945;
      v965 = 1;
      v966 = v945;
      v967 = 1;
      OUTLINED_FUNCTION_107_0();
      v191 = swift_allocObject();
      *(v191 + 16) = 0;
      *(v191 + 24) = 0;
      *(v191 + 32) = 1;
      *(v191 + 40) = v190;
      *(v191 + 48) = 1;
      OUTLINED_FUNCTION_58();
      v192 = swift_allocObject();
      OUTLINED_FUNCTION_264(v192);
      v943 = sub_1C60162B0();
      v193 = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v194 = swift_allocObject();
      OUTLINED_FUNCTION_70(v194);
      OUTLINED_FUNCTION_65_0();
      v195 = swift_allocObject();
      OUTLINED_FUNCTION_69(v195);
      OUTLINED_FUNCTION_58();
      v196 = swift_allocObject();
      *(v196 + 16) = sub_1C5CB83DC;
      *(v196 + 24) = v192;
      OUTLINED_FUNCTION_58();
      v197 = swift_allocObject();
      v198 = OUTLINED_FUNCTION_57(v197);
      OUTLINED_FUNCTION_81(v198);
      v199[4] = sub_1C5CB8408;
      v199[5] = v194;
      v199[6] = sub_1C5CB8408;
      v199[7] = v195;
      v199[8] = sub_1C5CB837C;
      v199[9] = v197;
      swift_setDeallocating();
      *&v940 = v192;

      sub_1C5D677CC();
      LODWORD(v939) = v193;
      if (os_log_type_enabled(v943, v193))
      {
        OUTLINED_FUNCTION_68_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_45_1();
        v200 = swift_slowAlloc();
        v948 = v200;
        OUTLINED_FUNCTION_24_0();

        *(v193 + 3) = 8;

        OUTLINED_FUNCTION_4_0();
        v201 = sub_1C5CAF1A0();
        v203 = v202;
        MEMORY[0x1C69534E0](v201);

        OUTLINED_FUNCTION_75_0();
        OUTLINED_FUNCTION_82();
        OUTLINED_FUNCTION_118();

        *(v193 + 4) = v203;

        v204 = v943;
        OUTLINED_FUNCTION_169();
        _os_log_impl(v205, v206, v207, v208, v209, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v200);
        v210 = OUTLINED_FUNCTION_22_0();
        MEMORY[0x1C6956920](v210);
        v211 = OUTLINED_FUNCTION_16_1();
        MEMORY[0x1C6956920](v211);
      }

      else
      {
      }

      v212 = OUTLINED_FUNCTION_5_0();
      v213(v212);
      v99 = 0;
      v96 = 0;
      v75 = 1;
      v98 = 1;
      goto LABEL_87;
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    OUTLINED_FUNCTION_51();
    v951 = sub_1C6017840();
    v952 = v188;
    OUTLINED_FUNCTION_21_1();
    v58 = v189 - 9;
    goto LABEL_11;
  }

  v178 = v943 == 0x65726F7473 && v942 == 0xE500000000000000;
  if (!v178 && (OUTLINED_FUNCTION_130_0() & 1) == 0)
  {
    v282 = OUTLINED_FUNCTION_48();
    v284 = v70 && v283 == 0xE800000000000000;
    v941 = v48;
    if (v284 || (OUTLINED_FUNCTION_187(v282, 0xE800000000000000) & 1) != 0)
    {
      sub_1C6014E90();
      OUTLINED_FUNCTION_99_0();
      OUTLINED_FUNCTION_58();
      v285 = swift_allocObject();
      *&v940 = v69;
      v285[2] = v69;
      v285[3] = v973;
      OUTLINED_FUNCTION_211();
      v943 = sub_1C60162B0();
      v286 = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v287 = swift_allocObject();
      OUTLINED_FUNCTION_70(v287);
      OUTLINED_FUNCTION_65_0();
      v288 = swift_allocObject();
      OUTLINED_FUNCTION_32_0(v288);
      OUTLINED_FUNCTION_58();
      v289 = swift_allocObject();
      *(v289 + 16) = sub_1C5CB613C;
      *(v289 + 24) = v285;
      OUTLINED_FUNCTION_58();
      v290 = swift_allocObject();
      *(v290 + 16) = sub_1C5CB83D4;
      *(v290 + 24) = v289;
      v291 = OUTLINED_FUNCTION_63();
      sub_1C5E1018C(v291, 3);
      *v292 = sub_1C5CB8408;
      v292[1] = v287;
      v292[2] = sub_1C5CB8408;
      v292[3] = v69;
      v292[4] = sub_1C5CB837C;
      v292[5] = v290;

      LODWORD(v937) = v286;
      if (os_log_type_enabled(v943, v286))
      {
        OUTLINED_FUNCTION_68_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_45_1();
        v293 = swift_slowAlloc();
        OUTLINED_FUNCTION_20(v293);

        OUTLINED_FUNCTION_133();

        v294 = OUTLINED_FUNCTION_321();

        *(v286 + 4) = v294;

        OUTLINED_FUNCTION_230(&dword_1C5C61000, v295, v296, "[XSQ:Content] init | x-sampmeditem / sirisync | syncID=%{public}s");
        __swift_destroy_boxed_opaque_existential_0(v293);
        v297 = OUTLINED_FUNCTION_17();
        MEMORY[0x1C6956920](v297);
        v298 = OUTLINED_FUNCTION_16_1();
        MEMORY[0x1C6956920](v298);
      }

      else
      {
      }

      sub_1C6014F40();
      OUTLINED_FUNCTION_288();
      if (v356)
      {
      }

      else
      {
        v357 = v355;
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_243();
        v358 = sub_1C6016950();
        if (v359)
        {
          v360 = v359;
          v937 = v357;
          *&v940 = v973;
          v968 = v358;
          v969 = v359;
          v970 = 0;
          v971 = 0;
          v972 = 3;
          v361 = v358;
          v362 = swift_allocObject();
          v943 = v361;
          *(v362 + 16) = v361;
          *(v362 + 24) = v360;
          *(v362 + 32) = 0;
          *(v362 + 40) = 0;
          *(v362 + 48) = 3;
          OUTLINED_FUNCTION_58();
          v75 = swift_allocObject();
          *(v75 + 16) = sub_1C5CB8470;
          *(v75 + 24) = v362;
          *&v936 = v360;
          swift_bridgeObjectRetain_n();

          v363 = v938;
          v945 = sub_1C60162B0();
          LODWORD(v360) = sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v364 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v364);
          OUTLINED_FUNCTION_65_0();
          v365 = swift_allocObject();
          OUTLINED_FUNCTION_29(v365);
          OUTLINED_FUNCTION_58();
          v366 = swift_allocObject();
          *(v366 + 16) = sub_1C5CB83DC;
          *(v366 + 24) = v75;
          OUTLINED_FUNCTION_58();
          v367 = swift_allocObject();
          v368 = OUTLINED_FUNCTION_56(v367);
          sub_1C5E1018C(v368, 3);
          *v369 = sub_1C5CB8408;
          v369[1] = v363;
          v369[2] = sub_1C5CB8408;
          v369[3] = v290;
          v369[4] = sub_1C5CB837C;
          v369[5] = v367;
          v939 = v75;

          LODWORD(v938) = v360;
          if (os_log_type_enabled(v945, v360))
          {
            OUTLINED_FUNCTION_68_1();
            swift_slowAlloc();
            OUTLINED_FUNCTION_46();
            v933 = swift_slowAlloc();
            v948 = v933;
            OUTLINED_FUNCTION_42_0();

            OUTLINED_FUNCTION_193();

            OUTLINED_FUNCTION_4_0();
            v96 = v936;

            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_234();

            OUTLINED_FUNCTION_75_0();

            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_95();

            OUTLINED_FUNCTION_333();

            v370 = "[XSQ:Content] init | x-sampmeditem / sirisync | %{public}s";
LABEL_154:
            v371 = v938;
            v372 = v945;
LABEL_155:
            OUTLINED_FUNCTION_339(&dword_1C5C61000, v372, v371, v370);
            __swift_destroy_boxed_opaque_existential_0(v933);
            v373 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v373);
            v374 = OUTLINED_FUNCTION_17();
            MEMORY[0x1C6956920](v374);
            v375 = OUTLINED_FUNCTION_191();
            sub_1C5CB6098(v375, v376);

LABEL_229:
            v557 = OUTLINED_FUNCTION_5_0();
            v558(v557);
            OUTLINED_FUNCTION_177();
            v98 = 3;
            goto LABEL_36;
          }

LABEL_227:

          v555 = OUTLINED_FUNCTION_191();
          sub_1C5CB6098(v555, v556);

          v96 = v936;
LABEL_228:

          goto LABEL_229;
        }

        v511 = OUTLINED_FUNCTION_243();
        sub_1C5CB6098(v511, v512);
      }

      sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
      sub_1C6016940();
      OUTLINED_FUNCTION_74();
      v951 = OUTLINED_FUNCTION_262(150);
      v952 = v513;
      OUTLINED_FUNCTION_21_1();
      goto LABEL_209;
    }

    OUTLINED_FUNCTION_320();
    v429 = v427 == v428 && v426 == 0xE400000000000000;
    if (v429 || (OUTLINED_FUNCTION_156(), (sub_1C6017860() & 1) != 0))
    {
      v430 = sub_1C6014E90();
      v432 = v431;
      OUTLINED_FUNCTION_58();
      v433 = swift_allocObject();
      v943 = v430;
      v433[2] = v430;
      v433[3] = v432;
      v945 = v432;
      swift_bridgeObjectRetain_n();
      sub_1C60162B0();
      v434 = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v435 = swift_allocObject();
      OUTLINED_FUNCTION_70(v435);
      OUTLINED_FUNCTION_65_0();
      v436 = swift_allocObject();
      OUTLINED_FUNCTION_29(v436);
      OUTLINED_FUNCTION_58();
      v437 = swift_allocObject();
      *(v437 + 16) = sub_1C5CB83D8;
      *(v437 + 24) = v433;
      OUTLINED_FUNCTION_58();
      v438 = swift_allocObject();
      *(v438 + 16) = sub_1C5CB83D4;
      *(v438 + 24) = v437;
      v439 = OUTLINED_FUNCTION_63();
      sub_1C5E1018C(v439, 3);
      *v440 = sub_1C5CB8408;
      v440[1] = v435;
      v440[2] = sub_1C5CB8408;
      v440[3] = v68;
      v440[4] = sub_1C5CB837C;
      v440[5] = v438;

      v441 = OUTLINED_FUNCTION_289();
      if (os_log_type_enabled(v441, v442))
      {
        OUTLINED_FUNCTION_68_1();
        swift_slowAlloc();
        LODWORD(v937) = v434;
        OUTLINED_FUNCTION_64_0();
        v443 = swift_slowAlloc();
        v951 = v443;
        OUTLINED_FUNCTION_13_0();

        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_278();
        OUTLINED_FUNCTION_124_0();
        OUTLINED_FUNCTION_171();

        OUTLINED_FUNCTION_277();

        OUTLINED_FUNCTION_140();
        OUTLINED_FUNCTION_190(v444, v445, v446, v447);
        __swift_destroy_boxed_opaque_existential_0(v443);
        v448 = OUTLINED_FUNCTION_31_0();
        MEMORY[0x1C6956920](v448);
        v449 = OUTLINED_FUNCTION_30_0();
        MEMORY[0x1C6956920](v449);
      }

      else
      {
        v517 = v945;

        v68 = v517;
      }

      v8 = v944;
      v518 = (v68 >> 56) & 0xF;
      if ((v68 & 0x2000000000000000) == 0)
      {
        v518 = v943 & 0xFFFFFFFFFFFFLL;
      }

      if (!v518)
      {

        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        OUTLINED_FUNCTION_316();
        v951 = sub_1C6017840();
        v952 = v577;
        OUTLINED_FUNCTION_21_1();
        goto LABEL_98;
      }

      v973[0] = v943;
      v973[1] = v68;
      v940 = xmmword_1C60311A0;
      v974 = xmmword_1C60311A0;
      v975 = 4;
      v519 = v943;
      v520 = swift_allocObject();
      v520[1].n128_u64[0] = v519;
      v520[1].n128_u64[1] = v68;
      OUTLINED_FUNCTION_150(v520);
      OUTLINED_FUNCTION_58();
      v521 = swift_allocObject();
      *(v521 + 16) = sub_1C5CB8470;
      *(v521 + 24) = v520;
      swift_bridgeObjectRetain_n();

      v522 = v938;
      *&v940 = sub_1C60162B0();
      v523 = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v524 = swift_allocObject();
      OUTLINED_FUNCTION_23_1(v524);
      OUTLINED_FUNCTION_65_0();
      v525 = swift_allocObject();
      OUTLINED_FUNCTION_29(v525);
      OUTLINED_FUNCTION_58();
      v526 = swift_allocObject();
      *(v526 + 16) = sub_1C5CB83DC;
      *(v526 + 24) = v521;
      OUTLINED_FUNCTION_58();
      v527 = swift_allocObject();
      v528 = OUTLINED_FUNCTION_56(v527);
      sub_1C5E1018C(v528, 3);
      *v529 = sub_1C5CB8408;
      v529[1] = v522;
      v529[2] = sub_1C5CB8408;
      v529[3] = v68;
      v529[4] = sub_1C5CB837C;
      v529[5] = v527;
      OUTLINED_FUNCTION_349();

      LODWORD(v938) = v523;
      v530 = v523;
      v531 = v940;
      if (os_log_type_enabled(v940, v530))
      {
        OUTLINED_FUNCTION_68_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_64_0();
        v532 = swift_slowAlloc();
        v948 = v532;
        OUTLINED_FUNCTION_13_0();

        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_125();

        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_234();

        OUTLINED_FUNCTION_75_0();

        OUTLINED_FUNCTION_82();
        OUTLINED_FUNCTION_95();

        OUTLINED_FUNCTION_348();

        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_190(v533, v534, v535, v536);
        __swift_destroy_boxed_opaque_existential_0(v532);
        v537 = OUTLINED_FUNCTION_28_0();
        MEMORY[0x1C6956920](v537);
        v538 = OUTLINED_FUNCTION_30_0();
        MEMORY[0x1C6956920](v538);

        v539 = OUTLINED_FUNCTION_10_2();
      }

      else
      {

        OUTLINED_FUNCTION_125();

        v539 = v947;
        v540 = v8;
      }

      (v941)(v539, v540);
      OUTLINED_FUNCTION_314();
      v75 = 1;
      goto LABEL_267;
    }

    goto LABEL_363;
  }

  sub_1C6014E90();
  v179 = sub_1C5CD4534();
  if (v180)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    OUTLINED_FUNCTION_74();
    v951 = OUTLINED_FUNCTION_262(200);
    v952 = v181;
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_131_0();
LABEL_56:
    MEMORY[0x1C69534E0](v160);
    OUTLINED_FUNCTION_1_0();
    sub_1C5CB8318(v161, v162, MEMORY[0x1E6968FE0]);
    v8 = v944;
    goto LABEL_15;
  }

  v227 = v179;
  v228 = swift_allocObject();
  v943 = v227;
  *(v228 + 16) = v227;
  *(v228 + 24) = xmmword_1C60311B0;
  *(v228 + 40) = 0;
  *(v228 + 48) = 0x80;
  OUTLINED_FUNCTION_58();
  v229 = swift_allocObject();
  v229[2] = sub_1C5CB8470;
  v229[3] = v228;

  v945 = sub_1C60162B0();
  LODWORD(v940) = sub_1C6016F30();
  OUTLINED_FUNCTION_65_0();
  v230 = swift_allocObject();
  OUTLINED_FUNCTION_70(v230);
  OUTLINED_FUNCTION_65_0();
  v231 = swift_allocObject();
  OUTLINED_FUNCTION_69(v231);
  OUTLINED_FUNCTION_58();
  v232 = swift_allocObject();
  *(v232 + 16) = sub_1C5CB83DC;
  *(v232 + 24) = v229;
  OUTLINED_FUNCTION_58();
  v233 = swift_allocObject();
  *(v233 + 16) = sub_1C5CB83D4;
  *(v233 + 24) = v232;
  v234 = OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_81(v234);
  v235[4] = sub_1C5CB8408;
  v235[5] = v230;
  v235[6] = sub_1C5CB8408;
  v235[7] = v231;
  v235[8] = sub_1C5CB837C;
  v235[9] = v233;
  swift_setDeallocating();
  v939 = v229;

  sub_1C5D677CC();
  if (!os_log_type_enabled(v945, v940))
  {

    v351 = OUTLINED_FUNCTION_10_2();
    (v48)(v351);
    v96 = 0;
    v97 = 0;
    v98 = 0x80;
    v75 = 1;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_68_1();
  v236 = swift_slowAlloc();
  v941 = v48;
  v237 = v236;
  OUTLINED_FUNCTION_64_0();
  v938 = swift_slowAlloc();
  OUTLINED_FUNCTION_34_0(v938);

  OUTLINED_FUNCTION_192();

  OUTLINED_FUNCTION_33();
  v951 = v238;
  v952 = v239;
  v75 = 1;
  v240 = sub_1C5CAF86C(v943, 0, 1);
  v242 = v241;
  MEMORY[0x1C69534E0](v240);

  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_118();

  *(v237 + 4) = v242;

  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_266(v243, v244, v245, v246);
  __swift_destroy_boxed_opaque_existential_0(v938);
  v247 = OUTLINED_FUNCTION_19();
  MEMORY[0x1C6956920](v247);
  v248 = OUTLINED_FUNCTION_22_0();
  MEMORY[0x1C6956920](v248);

  v249 = OUTLINED_FUNCTION_5_0();
  v250(v249);
  v96 = 0;
  v97 = 0;
LABEL_102:
  v98 = 0x80;
LABEL_36:
  v99 = v943;
LABEL_37:
  v100 = v935;
  *v935 = v99;
  v100[1] = v96;
  v100[2] = v75;
  v100[3] = v97;
  *(v100 + 32) = v98;
}

void sub_1C5C9F1B0()
{
  OUTLINED_FUNCTION_247();
  v174 = v2;
  OUTLINED_FUNCTION_297();
  v3 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_102();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_309();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v168 - v18;
  v20 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_146();
  v26 = v25 - v24;
  (*(v22 + 104))(v25 - v24, *MEMORY[0x1E69D3960], v20);
  OUTLINED_FUNCTION_38_1();
  sub_1C5CB8318(v27, v28, MEMORY[0x1E69D3950]);
  v29 = sub_1C6015290();
  v30 = v22 + 8;
  v31 = OUTLINED_FUNCTION_116();
  v32(v31);
  v180 = v3;
  v176 = v5;
  if (v29)
  {
    v169 = v9;
    v33 = v1;
    v35 = v5 + 16;
    v34 = *(v5 + 16);
    v171 = v33;
    (v34)(v19);
    v36 = 0;
    sub_1C5C97A5C(v19, v187);
    v58 = v5;
    sub_1C5CB5698(v187, v188);
    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v59 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v59, qword_1EC1BE490);
    v60 = v183;
    OUTLINED_FUNCTION_236();
    v34();
    v175 = v26;
    v61 = sub_1C60162B0();
    v62 = sub_1C6016F30();
    sub_1C5CB56D0(v187);
    v63 = os_log_type_enabled(v61, v62);
    v64 = v174;
    if (v63)
    {
      OUTLINED_FUNCTION_123();
      v65 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      v184 = swift_slowAlloc();
      v186[0] = v184;
      *v65 = 136446466;
      OUTLINED_FUNCTION_1_0();
      sub_1C5CB8318(v66, v67, MEMORY[0x1E6968FE0]);
      LODWORD(v181) = v62;
      sub_1C60177D0();
      OUTLINED_FUNCTION_249();
      v68 = OUTLINED_FUNCTION_168(v176);
      v69(v68);
      v70 = OUTLINED_FUNCTION_116();
      sub_1C5C6AB10(v70, v71, v72);
      OUTLINED_FUNCTION_90();

      *(v65 + 4) = v60;
      *(v65 + 12) = 2082;
      v73 = sub_1C5CB5698(v187, v188);
      sub_1C5CAE9DC(v73);
      OUTLINED_FUNCTION_249();
      sub_1C5CB56D0(v187);
      v74 = OUTLINED_FUNCTION_116();
      sub_1C5C6AB10(v74, v75, v76);
      OUTLINED_FUNCTION_90();
      v58 = v176;

      *(v65 + 14) = v187;
      _os_log_impl(&dword_1C5C61000, v61, v181, "[XSQ] supportsContainerURL | container supported [] url=%{public}s \ncontent=%{public}s", v65, 0x16u);
      OUTLINED_FUNCTION_179();
      swift_arrayDestroy();
      v77 = OUTLINED_FUNCTION_31_0();
      MEMORY[0x1C6956920](v77);
      v78 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x1C6956920](v78);
    }

    else
    {

      v79 = OUTLINED_FUNCTION_168(v58);
      v80(v79);
    }

    v81 = v30;
    v82 = v178;
    v83 = *(v64 + 16);
    sub_1C5D0DC0C(0, v83, 0, MEMORY[0x1E69E7CC0]);
    v184 = v84;
    v85 = 0;
    *&v86 = 136446466;
    v172 = v86;
    v87 = v179;
    while (1)
    {
      if (v83 == v85)
      {
        (v34)(v170, v171, v81);
        sub_1C5CB5698(v187, v186);

        v122 = sub_1C60162B0();
        v123 = sub_1C6016F30();

        sub_1C5CB56D0(v187);
        if (os_log_type_enabled(v122, v123))
        {
          v124 = OUTLINED_FUNCTION_334();
          v186[0] = swift_slowAlloc();
          *v124 = 136446978;
          OUTLINED_FUNCTION_1_0();
          sub_1C5CB8318(v125, v126, MEMORY[0x1E6968FE0]);
          v127 = sub_1C60177D0();
          v129 = v128;
          OUTLINED_FUNCTION_49_0();
          v130();
          v131 = sub_1C5C6AB10(v127, v129, v186);

          *(v124 + 4) = v131;
          *(v124 + 12) = 2082;
          v132 = MEMORY[0x1C6953600](v64, v81);
          v134 = v133;
          sub_1C5C6AB10(v132, v133, v186);
          OUTLINED_FUNCTION_73();

          *(v124 + 14) = v131;
          *(v124 + 22) = 2082;
          sub_1C5CAE9DC(v135);
          OUTLINED_FUNCTION_318();
          sub_1C5CB56D0(v187);
          v136 = OUTLINED_FUNCTION_255();
          sub_1C5C6AB10(v136, v137, v138);
          OUTLINED_FUNCTION_206();

          *(v124 + 24) = v134;
          *(v124 + 32) = 2082;

          MEMORY[0x1C6953600](v139, &_s7ContentON);
          OUTLINED_FUNCTION_318();

          v140 = OUTLINED_FUNCTION_255();
          sub_1C5C6AB10(v140, v141, v142);
          OUTLINED_FUNCTION_206();

          *(v124 + 34) = v134;
          _os_log_impl(&dword_1C5C61000, v122, v123, "[XSQ] supportsContainerURL | supported [] url=%{public}s\nitems=%{public}s\ncontainerContent=%{public}s\nitemContent=%{public}s", v124, 0x2Au);
          OUTLINED_FUNCTION_160();
          swift_arrayDestroy();
          v143 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v143);
          v144 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v144);
        }

        else
        {
          sub_1C5CB56D0(v187);

          OUTLINED_FUNCTION_49_0();
          v166();
        }

        goto LABEL_29;
      }

      v88 = v64 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v89 = *(v58 + 72);
      v181 = v85;
      (v34)(v87, v88 + v89 * v85, v81);
      v90 = v177;
      (v34)(v177, v87, v81);
      sub_1C5C97A5C(v90, v188);
      if (v36)
      {
        break;
      }

      (v34)(v82, v87, v81);
      sub_1C5CB5698(v187, v186);
      v91 = v82;
      v92 = sub_1C60162B0();
      v93 = sub_1C6016F30();
      sub_1C5CB56D0(v187);
      v94 = OUTLINED_FUNCTION_162();
      if (os_log_type_enabled(v94, v95))
      {
        OUTLINED_FUNCTION_123();
        v96 = swift_slowAlloc();
        OUTLINED_FUNCTION_72();
        v97 = swift_slowAlloc();
        v173 = 0;
        v185 = v97;
        *v96 = v172;
        OUTLINED_FUNCTION_1_0();
        sub_1C5CB8318(&qword_1EC1A91E8, v98, MEMORY[0x1E6968FE0]);
        v99 = v83;
        v100 = v35;
        v101 = v34;
        v102 = sub_1C60177D0();
        v104 = v103;
        OUTLINED_FUNCTION_49_0();
        v105();
        v106 = v102;
        v34 = v101;
        v35 = v100;
        v83 = v99;
        sub_1C5C6AB10(v106, v104, &v185);
        OUTLINED_FUNCTION_114();

        *(v96 + 4) = v91;
        *(v96 + 12) = 2082;
        v107 = sub_1C5CB5698(v187, v186);
        v108 = sub_1C5CAE9DC(v107);
        sub_1C5CB56D0(v187);
        v109 = OUTLINED_FUNCTION_110_0();
        sub_1C5C6AB10(v109, v110, v111);
        OUTLINED_FUNCTION_114();
        v81 = v180;

        *(v96 + 14) = v108;
        _os_log_impl(&dword_1C5C61000, v92, v93, "[XSQ] supportsContainerURL | item supported [] url=%{public}s \ncontent=%{public}s", v96, 0x16u);
        swift_arrayDestroy();
        v36 = v173;
        v58 = v176;
        OUTLINED_FUNCTION_55();
        MEMORY[0x1C6956920]();
        v64 = v174;
        OUTLINED_FUNCTION_55();
        MEMORY[0x1C6956920]();
      }

      else
      {

        OUTLINED_FUNCTION_110_0();
        OUTLINED_FUNCTION_49_0();
        v112();
      }

      v114 = *(v184 + 2);
      v113 = *(v184 + 3);
      v87 = v179;
      if (v114 >= v113 >> 1)
      {
        v120 = OUTLINED_FUNCTION_128(v113);
        sub_1C5D0DC0C(v120, v114 + 1, 1, v184);
        v184 = v121;
      }

      OUTLINED_FUNCTION_49_0();
      v115();
      v116 = v184;
      *(v184 + 2) = v114 + 1;
      v117 = &v116[40 * v114];
      v118 = v188[0];
      v119 = v188[1];
      v117[64] = v189;
      *(v117 + 2) = v118;
      *(v117 + 3) = v119;
      v85 = v181 + 1;
      v82 = v178;
    }

    sub_1C5CB56D0(v187);
    v145 = v169;
    (v34)(v169, v87, v81);
    v146 = v36;
    v147 = sub_1C60162B0();
    v148 = sub_1C6016F20();

    if (os_log_type_enabled(v147, v148))
    {
      OUTLINED_FUNCTION_123();
      v149 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      v186[0] = swift_slowAlloc();
      *v149 = v172;
      OUTLINED_FUNCTION_1_0();
      sub_1C5CB8318(v150, v151, MEMORY[0x1E6968FE0]);
      v152 = sub_1C60177D0();
      v153 = v81;
      v155 = v154;
      v156 = v182;
      v182(v145, v153);
      v157 = OUTLINED_FUNCTION_110_0();
      sub_1C5C6AB10(v157, v158, v159);
      OUTLINED_FUNCTION_114();

      *(v149 + 4) = v152;
      *(v149 + 12) = 2082;
      swift_getErrorValue();
      v160 = sub_1C6017940();
      sub_1C5C6AB10(v160, v161, v186);
      OUTLINED_FUNCTION_113();

      *(v149 + 14) = v155;
      OUTLINED_FUNCTION_324(&dword_1C5C61000, v162, v163, "[XSQ] supportsContainerURL | not supported [item failed parsing] url=%{public}s error=%{public}s");
      OUTLINED_FUNCTION_77_0();
      swift_arrayDestroy();
      v164 = OUTLINED_FUNCTION_28_0();
      MEMORY[0x1C6956920](v164);
      v165 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v165);

      v156(v179, v153);
    }

    else
    {

      v167 = v182;
      v182(v145, v81);
      v167(v87, v81);
    }
  }

  else
  {
    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v37 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v37, qword_1EC1BE490);
    v38 = v180;
    (*(v176 + 16))(v0, v1, v180);
    v39 = v174;

    v40 = sub_1C60162B0();
    v41 = sub_1C6016F30();

    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_123();
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      *&v188[0] = swift_slowAlloc();
      *v42 = 136446466;
      OUTLINED_FUNCTION_1_0();
      sub_1C5CB8318(v43, v44, MEMORY[0x1E6968FE0]);
      sub_1C60177D0();
      v46 = v45;
      v47 = OUTLINED_FUNCTION_147();
      v48(v47);
      v49 = OUTLINED_FUNCTION_111();
      v51 = sub_1C5C6AB10(v49, v46, v50);

      *(v42 + 4) = v51;
      *(v42 + 12) = 2082;
      v52 = MEMORY[0x1C6953600](v39, v38);
      OUTLINED_FUNCTION_351(v52, v53);
      OUTLINED_FUNCTION_73();

      *(v42 + 14) = v51;
      _os_log_impl(&dword_1C5C61000, v40, v41, "[XSQ] supportsContainerURL | not supported [feature disabled] url=%{public}s \nitems=%{public}s", v42, 0x16u);
      OUTLINED_FUNCTION_160();
      swift_arrayDestroy();
      v54 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v54);
      v55 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x1C6956920](v55);
    }

    else
    {

      v56 = OUTLINED_FUNCTION_147();
      v57(v56);
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_237();
}

void sub_1C5CA0250()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_102();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  *&v1[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue_repeatType] = 0;
  *&v1[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue_shuffleType] = 0;
  v18 = *(v10 + 16);
  v48 = v3;
  v18(&v46 - v16, v3, v8);
  _s8_StorageCMa(0);
  v19 = swift_allocObject();
  v20 = v17;
  v21 = v19;
  sub_1C5CA0BFC(v20, MEMORY[0x1E69E7CC0]);
  *&v1[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] = v19;
  if (v5)
  {

    sub_1C6016900();
    OUTLINED_FUNCTION_250();
  }

  else
  {
    v21 = 0;
  }

  v50.receiver = v1;
  v50.super_class = MPCAssistantXSchemeURLPlaybackQueue;
  v22 = objc_msgSendSuper2(&v50, sel_initWithContextID_, v21);

  v23 = qword_1EC1A9730;
  v24 = v22;
  if (v23 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v25 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v25, qword_1EC1BE490);
  sub_1C5CB55D8();
  v26 = sub_1C5CB3604();
  v29 = OUTLINED_FUNCTION_71_0(v26, v27, v28);
  sub_1C5C74C18(v29, v30);
  v18(v14, v48, v8);

  v31 = sub_1C60162B0();
  v32 = sub_1C6016F30();

  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_103_0();
    v33 = v10;
    v34 = v14;
    v35 = swift_slowAlloc();
    OUTLINED_FUNCTION_72();
    v47 = swift_slowAlloc();
    v49 = v47;
    *v35 = 67109634;
    *(v35 + 4) = *(*&v24[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] + 16);
    *(v35 + 8) = 2082;
    if (v5)
    {
      v36 = v7;
    }

    else
    {
      v36 = 7104878;
    }

    if (v5)
    {
      v37 = v5;
    }

    else
    {
      v37 = 0xE300000000000000;
    }

    v38 = sub_1C5C6AB10(v36, v37, &v49);

    *(v35 + 10) = v38;
    *(v35 + 18) = 2082;
    OUTLINED_FUNCTION_1_0();
    sub_1C5CB8318(v39, v40, MEMORY[0x1E6968FE0]);
    sub_1C60177D0();
    OUTLINED_FUNCTION_313();
    v41 = *(v33 + 8);
    v42 = OUTLINED_FUNCTION_252();
    v41(v42);
    sub_1C5C6AB10(v34, v38, &v49);
    OUTLINED_FUNCTION_250();

    *(v35 + 20) = v34;
    _os_log_impl(&dword_1C5C61000, v31, v32, "[XSQ:%{sonic:fourCC}u] init | contextID=%{public}s url=%{public}s", v35, 0x1Cu);
    swift_arrayDestroy();
    v43 = OUTLINED_FUNCTION_47();
    MEMORY[0x1C6956920](v43);
    v44 = OUTLINED_FUNCTION_30_0();
    MEMORY[0x1C6956920](v44);

    (v41)(v48, v8);
  }

  else
  {

    v45 = *(v10 + 8);
    v45(v48, v8);
    v45(v14, v8);
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5CA06E0()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_297();
  v9 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_102();
  v55 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  *&v2[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue_repeatType] = 0;
  *&v2[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue_shuffleType] = 0;
  v57 = v11;
  v18 = *(v11 + 16);
  v19 = OUTLINED_FUNCTION_110_0();
  v18(v19);
  _s8_StorageCMa(0);
  v20 = swift_allocObject();

  v21 = v17;
  v22 = v20;
  sub_1C5CA0BFC(v21, v4);
  *&v2[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] = v20;
  v56 = v1;
  if (v8)
  {

    sub_1C6016900();
    OUTLINED_FUNCTION_90();
  }

  else
  {
    v22 = 0;
  }

  v59.receiver = v2;
  v59.super_class = MPCAssistantXSchemeURLPlaybackQueue;
  v23 = objc_msgSendSuper2(&v59, sel_initWithContextID_, v22);

  v24 = qword_1EC1A9730;
  v25 = v23;
  v26 = v55;
  if (v24 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v27 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v27, qword_1EC1BE490);
  sub_1C5CB55D8();
  v28 = sub_1C5CB3604();
  v31 = OUTLINED_FUNCTION_71_0(v28, v29, v30);
  sub_1C5C74C18(v31, v32);
  (v18)(v26, v6, v9);

  v33 = sub_1C60162B0();
  v34 = sub_1C6016F30();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v56;
  if (v35)
  {
    OUTLINED_FUNCTION_170();
    v37 = swift_slowAlloc();
    v54 = v6;
    v38 = v37;
    OUTLINED_FUNCTION_112_0();
    v53 = swift_slowAlloc();
    v58 = v53;
    *v38 = 67109890;
    *(v38 + 4) = *(*&v25[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] + 16);
    *(v38 + 8) = 2082;
    if (v8)
    {
      v39 = v36;
    }

    else
    {
      v39 = 7104878;
    }

    LODWORD(v56) = v34;
    if (v8)
    {
      v40 = v8;
    }

    else
    {
      v40 = 0xE300000000000000;
    }

    sub_1C5C6AB10(v39, v40, &v58);
    OUTLINED_FUNCTION_136_0();

    *(v38 + 10) = v8;
    *(v38 + 18) = 2082;
    OUTLINED_FUNCTION_1_0();
    sub_1C5CB8318(v41, v42, MEMORY[0x1E6968FE0]);
    sub_1C60177D0();
    OUTLINED_FUNCTION_249();
    v57 = *(v57 + 8);
    (v57)(v26, v9);
    v43 = OUTLINED_FUNCTION_116();
    sub_1C5C6AB10(v43, v44, v45);
    OUTLINED_FUNCTION_90();

    *(v38 + 20) = v26;
    *(v38 + 28) = 2082;
    v46 = OUTLINED_FUNCTION_303();
    MEMORY[0x1C6953600](v46);
    OUTLINED_FUNCTION_99_0();

    v47 = OUTLINED_FUNCTION_159();
    sub_1C5C6AB10(v47, v48, v49);
    OUTLINED_FUNCTION_98();

    *(v38 + 30) = v26;
    _os_log_impl(&dword_1C5C61000, v33, v56, "[XSQ:%{sonic:fourCC}u] init | contextID=%{public}s url=%{public}s\nitemURLs=%{public}s", v38, 0x26u);
    swift_arrayDestroy();
    v50 = OUTLINED_FUNCTION_31_0();
    MEMORY[0x1C6956920](v50);
    v51 = OUTLINED_FUNCTION_28_0();
    MEMORY[0x1C6956920](v51);

    (v57)(v54, v9);
  }

  else
  {

    v52 = *(v57 + 8);
    v52(v6, v9);
    v52(v26, v9);
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5CA0BFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = sub_1C6017A70();
  v5 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo35MPCAssistantXSchemeURLPlaybackQueue8_Storage_url;
  sub_1C6014F20();
  OUTLINED_FUNCTION_105();
  (*(v6 + 32))(v2 + v5, a1);
  *(v2 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo35MPCAssistantXSchemeURLPlaybackQueue8_Storage_itemURLs) = a2;
  return v2;
}

uint64_t sub_1C5CA0C7C()
{
  v1 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo35MPCAssistantXSchemeURLPlaybackQueue8_Storage_url;
  sub_1C6014F20();
  OUTLINED_FUNCTION_105();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C5CA0E04@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);
  v4 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo35MPCAssistantXSchemeURLPlaybackQueue8_Storage_url;
  sub_1C6014F20();
  OUTLINED_FUNCTION_105();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t MPCAssistantXSchemeURLPlaybackQueue.description.getter()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_297();
  v1 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_146();
  v7 = v6 - v5;
  sub_1C6017540();
  MEMORY[0x1C69534E0](60, 0xE100000000000000);
  v8 = sub_1C6017AD0();
  MEMORY[0x1C69534E0](v8);

  MEMORY[0x1C69534E0](2016419898, 0xE400000000000000);
  v17 = v0;
  sub_1C6017650();
  MEMORY[0x1C69534E0](0x3D6C727520, 0xE500000000000000);
  v9 = [v0 url];
  sub_1C6014EC0();

  OUTLINED_FUNCTION_1_0();
  sub_1C5CB8318(v10, v11, MEMORY[0x1E6968FE0]);
  v12 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v12);

  (*(v3 + 8))(v7, v1);
  MEMORY[0x1C69534E0](0x4C52556D65746920, 0xEA00000000003D73);
  v13 = [v17 itemURLs];
  sub_1C6016B10();

  v14 = OUTLINED_FUNCTION_147();
  MEMORY[0x1C6953600](v14);

  v15 = OUTLINED_FUNCTION_254();
  MEMORY[0x1C69534E0](v15);

  MEMORY[0x1C69534E0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C5CA1278()
{
  OUTLINED_FUNCTION_248();
  v1[144] = v0;
  v1[143] = v2;
  v3 = sub_1C6014F20();
  v1[145] = v3;
  v1[146] = *(v3 - 8);
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v4 = sub_1C60167E0();
  v1[153] = v4;
  v1[154] = *(v4 - 8);
  v1[155] = swift_task_alloc();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5CA13CC(uint64_t a1)
{
  v116 = v1;
  v2 = OUTLINED_FUNCTION_319();
  v3(v2);
  OUTLINED_FUNCTION_38_1();
  sub_1C5CB8318(v4, v5, MEMORY[0x1E69D3950]);
  v6 = sub_1C6015290();
  v7 = OUTLINED_FUNCTION_108();
  v8(v7);
  if (v6)
  {
    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v9 = v1[144];
    v10 = v1[143];
    v11 = sub_1C60162D0();
    v1[156] = __swift_project_value_buffer(v11, qword_1EC1BE490);
    v1[157] = sub_1C5CB55D8();
    v12 = v9;
    v13 = sub_1C5CB3604();
    v16 = OUTLINED_FUNCTION_71_0(v13, v14, v15);
    sub_1C5C74C18(v16, v17);
    v18 = v10;
    v19 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_240();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v1[144];
    v23 = v1[143];
    if (v21)
    {
      v24 = OUTLINED_FUNCTION_220();
      OUTLINED_FUNCTION_97();
      v25 = swift_slowAlloc();
      *v24 = 67109378;
      OUTLINED_FUNCTION_199();
      *(v24 + 4) = v26;

      *(v24 + 8) = 2114;
      *(v24 + 10) = v23;
      *v25 = v23;

      OUTLINED_FUNCTION_169();
      _os_log_impl(v27, v28, v29, v30, v31, 0x12u);
      sub_1C5CB5700(v25);
      v32 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v32);
      v33 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v33);
      v34 = v1[144];
    }

    else
    {

      v34 = v1[144];
      v19 = v34;
    }

    v49 = [v34 userIdentity];
    v1[158] = v49;
    v50 = v1[144];
    if (v49)
    {
      v51 = v49;
      v52 = v50;
      v53 = sub_1C5CB3604();
      v56 = OUTLINED_FUNCTION_71_0(v53, v54, v55);
      sub_1C5C74C18(v56, v57);
      v58 = v51;
      v59 = sub_1C60162B0();
      v60 = sub_1C6016F30();
      v61 = OUTLINED_FUNCTION_268(v60);
      v62 = v1[144];
      if (v61)
      {
        v63 = OUTLINED_FUNCTION_220();
        OUTLINED_FUNCTION_97();
        v64 = swift_slowAlloc();
        *v63 = 67109378;
        *(v63 + 4) = *(*&v62[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] + 16);

        *(v63 + 8) = 2114;
        *(v63 + 10) = v58;
        *v64 = v51;

        _os_log_impl(&dword_1C5C61000, v59, v60, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | [] userIdentity=%{public}@", v63, 0x12u);
        sub_1C5CB5700(v64);
        v65 = OUTLINED_FUNCTION_37();
        MEMORY[0x1C6956920](v65);
        v66 = OUTLINED_FUNCTION_28_0();
        MEMORY[0x1C6956920](v66);
        v67 = v1[144];
      }

      else
      {

        v67 = v1[144];
        v59 = v67;
      }

      v95 = v67;
      v96 = sub_1C5CB3604();
      v99 = OUTLINED_FUNCTION_71_0(v96, v97, v98);
      sub_1C5C74C18(v99, v100);
      v101 = sub_1C60162B0();
      v102 = sub_1C6016F00();
      v103 = OUTLINED_FUNCTION_268(v102);
      v104 = v1[144];
      if (v103)
      {
        OUTLINED_FUNCTION_97();
        v105 = swift_slowAlloc();
        *v105 = 67109120;
        v105[1] = *(*&v104[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] + 16);

        OUTLINED_FUNCTION_238();
        _os_log_impl(v106, v107, v108, v109, v110, 8u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x1C6956920]();
      }

      else
      {

        v101 = v1[144];
      }

      v111 = objc_opt_self();
      v1[159] = v111;
      v112 = [v111 sharedManager];
      v1[160] = v112;
      v1[2] = v1;
      v1[3] = sub_1C5CA1CFC;
      swift_continuation_init();
      OUTLINED_FUNCTION_297();
      sub_1C5CB562C();
      v1[33] = v113;
      v1[26] = MEMORY[0x1E69E9820];
      v1[27] = 1107296256;
      v1[28] = sub_1C5E22268;
      v1[29] = &block_descriptor;
      v1[30] = v104;
      [v112 performAfterLoadingAccounts_];

      return MEMORY[0x1EEE6DEC8](v1 + 2);
    }

    v114 = sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    v68 = sub_1C6016940();
    v1[140] = 1;
    v115[0] = sub_1C6017840();
    v115[1] = v69;
    OUTLINED_FUNCTION_109();
    MEMORY[0x1C69534E0](0xD000000000000017);
    v70 = [v50 description];
    sub_1C6016940();
    OUTLINED_FUNCTION_290();

    v71 = OUTLINED_FUNCTION_300();
    MEMORY[0x1C69534E0](v71);

    sub_1C6016880();
    _s3__C4CodeOMa_4(0);
    v73 = v72;
    OUTLINED_FUNCTION_2_3();
    sub_1C5CB8318(v74, v75, &unk_1C6035604);
    OUTLINED_FUNCTION_100();
    sub_1C6017280();
    OUTLINED_FUNCTION_90();

    v76 = v50;
    v77 = sub_1C5CB3604();
    v80 = OUTLINED_FUNCTION_71_0(v77, v78, v79);
    sub_1C5C74C18(v80, v81);
    v82 = v114;
    v83 = sub_1C60162B0();
    v84 = sub_1C6016F20();
    v85 = OUTLINED_FUNCTION_272(v84);
    v86 = v1[144];
    if (v85)
    {
      OUTLINED_FUNCTION_220();
      OUTLINED_FUNCTION_45_1();
      v87 = swift_slowAlloc();
      v115[0] = v87;
      *v73 = 67109378;
      OUTLINED_FUNCTION_121();
      *(v73 + 4) = v88;

      *(v73 + 8) = 2082;
      swift_getErrorValue();
      v89 = sub_1C6017940();
      sub_1C5C6AB10(v89, v90, v115);
      OUTLINED_FUNCTION_261();
      *(v73 + 10) = v68;

      OUTLINED_FUNCTION_326(&dword_1C5C61000, v91, v92, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | failed [missing user identity] error=%{public}s");
      __swift_destroy_boxed_opaque_existential_0(v87);
      v93 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v93);
      v94 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v94);
    }

    else
    {
    }
  }

  else
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    v1[139] = 999;
    sub_1C6016880();
    _s3__C4CodeOMa_4(0);
    OUTLINED_FUNCTION_2_3();
    sub_1C5CB8318(v35, v36, &unk_1C6035604);
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_100();
    sub_1C6017280();

    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v37 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v37, qword_1EC1BE490);
    v38 = sub_1C60162B0();
    v39 = sub_1C6016F20();
    if (OUTLINED_FUNCTION_268(v39))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_238();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      OUTLINED_FUNCTION_55();
      MEMORY[0x1C6956920](v45, v46);
    }
  }

  swift_willThrow();
  OUTLINED_FUNCTION_145(v1[155]);

  OUTLINED_FUNCTION_172();

  return v47();
}

uint64_t sub_1C5CA1CFC()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C5CA1DCC()
{
  v150 = v0;
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1264);

  v3 = [v1 sharedManager];
  v4 = [v3 accountForUserIdentity_];
  *(v0 + 1288) = v4;

  if (v4)
  {
    OUTLINED_FUNCTION_216();
    v6 = v5;
    v7 = sub_1C5CB3604();
    v10 = OUTLINED_FUNCTION_71_0(v7, v8, v9);
    sub_1C5C74C18(v10, v11);
    v12 = v4;
    v13 = sub_1C60162B0();
    v14 = sub_1C6016F30();
    v15 = OUTLINED_FUNCTION_268(v14);
    v16 = *(v0 + 1152);
    v141 = v12;
    if (v15)
    {
      v17 = OUTLINED_FUNCTION_220();
      OUTLINED_FUNCTION_97();
      v18 = swift_slowAlloc();
      *v17 = 67109378;
      OUTLINED_FUNCTION_129(*&v16[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage]);

      *(v17 + 8) = 2114;
      *(v17 + 10) = v12;
      *v18 = v4;

      OUTLINED_FUNCTION_239();
      _os_log_impl(v19, v20, v21, v22, v23, 0x12u);
      sub_1C5CB5700(v18);
      v24 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v24);
      v25 = OUTLINED_FUNCTION_19();
      MEMORY[0x1C6956920](v25);
      v26 = *(v0 + 1152);
    }

    else
    {

      v26 = *(v0 + 1152);
      v13 = v26;
    }

    v61 = *(v0 + 1216);

    v62 = [v26 url];
    sub_1C6014EC0();

    sub_1C5C97A5C(v61, (v0 + 488));
    OUTLINED_FUNCTION_216();
    v64 = v63;
    sub_1C5CB5698(v0 + 488, v0 + 728);
    v65 = sub_1C5CB3604();
    v68 = OUTLINED_FUNCTION_71_0(v65, v66, v67);
    sub_1C5C74C18(v68, v69);
    v70 = v64;
    sub_1C5CB5698(v0 + 488, v0 + 768);
    v71 = sub_1C60162B0();
    v72 = sub_1C6016F30();
    if (OUTLINED_FUNCTION_209(v72))
    {
      v73 = *(v0 + 1208);
      v74 = *(v0 + 1152);
      OUTLINED_FUNCTION_103_0();
      v75 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      v149[0] = swift_slowAlloc();
      *v75 = 67109634;
      OUTLINED_FUNCTION_208(*&v74[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage]);

      OUTLINED_FUNCTION_298();
      v76 = [v74 url];
      sub_1C6014EC0();

      OUTLINED_FUNCTION_1_0();
      sub_1C5CB8318(v77, v78, MEMORY[0x1E6968FE0]);
      sub_1C60177D0();
      OUTLINED_FUNCTION_290();
      v79 = OUTLINED_FUNCTION_157();
      v80(v79);
      v81 = OUTLINED_FUNCTION_300();
      sub_1C5C6AB10(v81, v82, v83);
      OUTLINED_FUNCTION_114();

      *(v75 + 10) = v73;

      OUTLINED_FUNCTION_299();
      v84 = sub_1C5CB5698(v0 + 488, v0 + 328);
      sub_1C5CAE9DC(v84);
      OUTLINED_FUNCTION_249();
      sub_1C5CB56D0(v0 + 488);
      v85 = OUTLINED_FUNCTION_116();
      sub_1C5C6AB10(v85, v86, v87);
      OUTLINED_FUNCTION_90();

      *(v75 + 20) = v0 + 488;
      sub_1C5CB56D0(v0 + 488);
      sub_1C5CB56D0(v0 + 488);
      OUTLINED_FUNCTION_267(&dword_1C5C61000, v88, v72, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | content [decoded] url=%{public}s \ncontent=%{public}s");
      OUTLINED_FUNCTION_179();
      swift_arrayDestroy();
      v89 = OUTLINED_FUNCTION_31_0();
      MEMORY[0x1C6956920](v89);
      v90 = OUTLINED_FUNCTION_47();
      MEMORY[0x1C6956920](v90);
    }

    else
    {
      v92 = *(v0 + 1152);

      sub_1C5CB56D0(v0 + 488);
      sub_1C5CB56D0(v0 + 488);
    }

    v93 = v12;
    v94 = *(v0 + 1168);
    v95 = *(v0 + 1152);
    v96 = [v95 itemURLs];
    v97 = sub_1C6016B10();

    v98 = *(v97 + 16);

    sub_1C5D0DC0C(0, v98, 0, MEMORY[0x1E69E7CC0]);
    v140 = v99;
    *(v0 + 1296) = v99;
    v100 = [v95 itemURLs];
    v101 = sub_1C6016B10();

    v102 = 0;
    v146 = v94;
    v147 = *(v101 + 16);
    v103 = v94 + 16;
    v144 = (v94 + 8);
    v143 = v94 + 16;
    v145 = v101;
    while (v147 != v102)
    {
      if (v102 >= *(v101 + 16))
      {
        __break(1u);
        return;
      }

      v104 = *(v0 + 1192);
      v105 = *(v146 + 16);
      v106 = OUTLINED_FUNCTION_87_0();
      v105(v106);
      v107 = OUTLINED_FUNCTION_255();
      v105(v107);
      sub_1C5C97A5C(v104, (v0 + 448));
      v108 = *(v0 + 1200);
      v148 = v102;
      v109 = *(v0 + 1184);
      v110 = *(v0 + 1160);
      v111 = *(v0 + 1152);
      v112 = sub_1C5CB3604();
      v115 = OUTLINED_FUNCTION_71_0(v112, v113, v114);
      sub_1C5C74C18(v115, v116);
      (v105)(v109, v108, v110);
      sub_1C5CB5698(v0 + 448, v0 + 368);
      sub_1C5CB5698(v0 + 448, v0 + 808);
      v117 = sub_1C60162B0();
      v118 = sub_1C6016F30();
      v119 = OUTLINED_FUNCTION_167(v118);
      v120 = *(v0 + 1200);
      v121 = *(v0 + 1160);
      v122 = *(v0 + 1152);
      if (v119)
      {
        OUTLINED_FUNCTION_103_0();
        v123 = swift_slowAlloc();
        OUTLINED_FUNCTION_72();
        v149[0] = swift_slowAlloc();
        *v123 = 67109634;
        *(v123 + 4) = *(*&v122[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] + 16);

        *(v123 + 8) = 2082;
        OUTLINED_FUNCTION_1_0();
        sub_1C5CB8318(&qword_1EC1A91E8, v124, MEMORY[0x1E6968FE0]);
        v125 = sub_1C60177D0();
        v142 = v120;
        v127 = sub_1C5C6AB10(v125, v126, v149);

        *(v123 + 10) = v127;
        v128 = *v144;
        v129 = OUTLINED_FUNCTION_108();
        v128(v129);
        *(v123 + 18) = 2082;
        v130 = sub_1C5CB5698(v0 + 448, v0 + 688);
        sub_1C5CAE9DC(v130);
        OUTLINED_FUNCTION_249();
        sub_1C5CB56D0(v0 + 448);
        v131 = OUTLINED_FUNCTION_116();
        sub_1C5C6AB10(v131, v132, v133);
        OUTLINED_FUNCTION_90();

        *(v123 + 20) = v0 + 448;
        sub_1C5CB56D0(v0 + 448);
        sub_1C5CB56D0(v0 + 448);
        sub_1C5CB56D0(v0 + 448);
        _os_log_impl(&dword_1C5C61000, v117, v103, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | content [decoded item] url=%{public}s \ncontent=%{public}s", v123, 0x1Cu);
        OUTLINED_FUNCTION_196();
        v134 = OUTLINED_FUNCTION_16_1();
        MEMORY[0x1C6956920](v134);
        v93 = v141;
        OUTLINED_FUNCTION_55();
        MEMORY[0x1C6956920]();

        (v128)(v142, v121);
      }

      else
      {

        sub_1C5CB56D0(v0 + 448);
        v135 = *v144;
        v136 = OUTLINED_FUNCTION_108();
        v135(v136);
        sub_1C5CB56D0(v0 + 448);
        sub_1C5CB56D0(v0 + 448);

        (v135)(v120, v121);
      }

      v102 = v148 + 1;
      v103 = v143;
      v101 = v145;
    }

    v137 = swift_task_alloc();
    *(v0 + 1304) = v137;
    *v137 = v0;
    v137[1] = sub_1C5CA2D64;
    v138 = *(v0 + 1144);

    sub_1C5CA41D8(v0 + 272, v0 + 488, v140, v138, v93);
  }

  else
  {
    v27 = *(v0 + 1264);
    v28 = *(v0 + 1152);
    v29 = sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    v30 = sub_1C6016940();
    *(v0 + 1088) = 2;
    v149[0] = sub_1C6017840();
    v149[1] = v31;
    OUTLINED_FUNCTION_109();
    MEMORY[0x1C69534E0](0xD000000000000013);
    v32 = [v28 description];
    v33 = sub_1C6016940();
    v35 = v34;

    MEMORY[0x1C69534E0](v33, v35);

    MEMORY[0x1C69534E0](540945696, 0xE400000000000000);
    v36 = [v27 description];
    v37 = sub_1C6016940();
    v39 = v38;

    MEMORY[0x1C69534E0](v37, v39);

    sub_1C6016880();
    _s3__C4CodeOMa_4(0);
    OUTLINED_FUNCTION_2_3();
    sub_1C5CB8318(v40, v41, &unk_1C6035604);
    OUTLINED_FUNCTION_100();
    sub_1C6017280();
    OUTLINED_FUNCTION_90();

    v42 = v28;
    v43 = sub_1C5CB3604();
    v46 = OUTLINED_FUNCTION_71_0(v43, v44, v45);
    sub_1C5C74C18(v46, v47);
    v48 = v29;
    v49 = sub_1C60162B0();
    v50 = sub_1C6016F20();
    v51 = OUTLINED_FUNCTION_272(v50);
    v52 = *(v0 + 1152);
    if (v51)
    {
      OUTLINED_FUNCTION_220();
      OUTLINED_FUNCTION_45_1();
      v53 = swift_slowAlloc();
      v149[0] = v53;
      *v29 = 67109378;
      OUTLINED_FUNCTION_121();
      v29[1] = v54;

      *(v29 + 4) = 2082;
      swift_getErrorValue();
      v55 = sub_1C6017940();
      sub_1C5C6AB10(v55, v56, v149);
      OUTLINED_FUNCTION_261();
      *(v29 + 10) = v30;

      OUTLINED_FUNCTION_326(&dword_1C5C61000, v57, v58, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | failed [missing user identity] error=%{public}s");
      __swift_destroy_boxed_opaque_existential_0(v53);
      v59 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v59);
      v60 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v60);
    }

    else
    {
    }

    v91 = *(v0 + 1264);
    swift_willThrow();

    OUTLINED_FUNCTION_145(*(v0 + 1240));

    OUTLINED_FUNCTION_172();

    v139();
  }
}

uint64_t sub_1C5CA2D64()
{
  OUTLINED_FUNCTION_248();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *(v2 + 1312) = v0;

  sub_1C5CB56D0(v2 + 488);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5CA2E84(uint64_t a1)
{
  OUTLINED_FUNCTION_216();
  v2 = *(v1 + 1144);
  v3 = *(v1 + 288);
  *(v1 + 848) = *(v1 + 272);
  *(v1 + 864) = v3;
  *(v1 + 880) = *(v1 + 304);
  *(v1 + 1320) = *(v1 + 312);
  v5 = v4;
  sub_1C5CB5698(v1 + 848, v1 + 648);

  v6 = sub_1C5CB3604();
  v9 = OUTLINED_FUNCTION_71_0(v6, v7, v8);
  sub_1C5C74C18(v9, v10);
  sub_1C5CB5698(v1 + 848, v1 + 608);

  v11 = v2;
  sub_1C5CB5698(v1 + 848, v1 + 568);

  v12 = v11;
  sub_1C5CB5698(v1 + 848, v1 + 528);

  v13 = sub_1C60162B0();
  v14 = sub_1C6016F30();
  if (OUTLINED_FUNCTION_209(v14))
  {
    v15 = *(v1 + 1152);
    v16 = *(v1 + 1144);
    OUTLINED_FUNCTION_170();
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_97();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_72();
    swift_slowAlloc();
    *v17 = 67109890;
    OUTLINED_FUNCTION_83(OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);

    *(v17 + 8) = 2114;
    *(v17 + 10) = v16;
    *v18 = v16;

    *(v17 + 18) = 2082;
    v19 = sub_1C5CB5698(v1 + 848, v1 + 408);
    sub_1C5CAE9DC(v19);
    OUTLINED_FUNCTION_176();
    sub_1C5CB56D0(v1 + 848);
    v20 = OUTLINED_FUNCTION_158();
    sub_1C5C6AB10(v20, v21, v22);
    OUTLINED_FUNCTION_203();

    *(v17 + 20) = v1 + 848;
    sub_1C5CB56D0(v1 + 848);

    sub_1C5CB56D0(v1 + 848);

    *(v17 + 28) = 2082;

    MEMORY[0x1C6953600](v23, &_s7ContentON);
    OUTLINED_FUNCTION_176();

    v24 = OUTLINED_FUNCTION_158();
    sub_1C5C6AB10(v24, v25, v26);
    OUTLINED_FUNCTION_203();

    *(v17 + 30) = v1 + 848;
    sub_1C5CB56D0(v1 + 848);

    sub_1C5CB56D0(v1 + 848);

    _os_log_impl(&dword_1C5C61000, v13, v14, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | fit content [] destination=%{public}@\ncontent=%{public}s\nitemsContent=%{public}s", v17, 0x26u);
    sub_1C5CB5700(v18);
    v27 = OUTLINED_FUNCTION_28_0();
    MEMORY[0x1C6956920](v27);
    OUTLINED_FUNCTION_160();
    swift_arrayDestroy();
    v28 = OUTLINED_FUNCTION_17();
    MEMORY[0x1C6956920](v28);
    v29 = OUTLINED_FUNCTION_19();
    MEMORY[0x1C6956920](v29);
  }

  else
  {
    v30 = *(v1 + 1152);
    v31 = *(v1 + 1144);

    sub_1C5CB56D0(v1 + 848);

    sub_1C5CB56D0(v1 + 848);

    sub_1C5CB56D0(v1 + 848);

    sub_1C5CB56D0(v1 + 848);
  }

  v32 = swift_task_alloc();
  *(v1 + 1328) = v32;
  *v32 = v1;
  v32[1] = sub_1C5CA31D0;
  v33 = *(v1 + 1264);

  return sub_1C5CA58A4(v1 + 272, v33);
}

uint64_t sub_1C5CA31D0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *(v2 + 1336) = v4;
  *(v2 + 1344) = v0;

  sub_1C5CB56D0(v2 + 848);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5CA332C()
{
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1336);
  if ([v2 shouldImmediatelyStartPlayback])
  {
    v4 = 20;
  }

  else
  {
    v4 = 10;
  }

  [v3 setActionAfterQueueLoad_];
  sub_1C5CB50F4(v2, &selRef_contextID);
  if (v5)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    v2 = 0;
  }

  v6 = *(v0 + 1336);
  v7 = *(v0 + 1152);
  v8 = OUTLINED_FUNCTION_253();
  [v8 v9];

  sub_1C5CB50F4(v7, &selRef_featureName);
  OUTLINED_FUNCTION_313();

  if (v1)
  {
    v10 = v2;
  }

  else
  {
    v10 = 1769105779;
  }

  if (v1)
  {
    v11 = v1;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  sub_1C5E208F0(v10, v11, v6);
  sub_1C5CB50F4(v7, &selRef_queueGroupingID);
  if (v12)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    v2 = 0;
  }

  v13 = *(v0 + 1152);
  [*(v0 + 1336) setQueueGroupingID_];

  sub_1C5CB50F4(v13, &selRef_siriAssetInfo);
  if (v14)
  {
    v15 = sub_1C6016900();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v0 + 1336);
  v17 = *(v0 + 1152);
  [v16 setSiriAssetInfo_];

  v18 = v17;
  v19 = sub_1C5CB3604();
  v22 = OUTLINED_FUNCTION_71_0(v19, v20, v21);
  sub_1C5C74C18(v22, v23);
  v24 = v16;
  v25 = sub_1C60162B0();
  v26 = sub_1C6016F30();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 1336);
  v29 = *(v0 + 1152);
  if (v27)
  {
    v30 = OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_97();
    v31 = swift_slowAlloc();
    *v30 = 67109378;
    OUTLINED_FUNCTION_207(*&v29[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage]);

    *(v30 + 8) = 2114;
    *(v30 + 10) = v28;
    *v31 = v28;

    _os_log_impl(&dword_1C5C61000, v25, v26, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | intent [] playbackIntent=%{public}@", v30, 0x12u);
    sub_1C5CB5700(v31);
    v32 = OUTLINED_FUNCTION_19();
    MEMORY[0x1C6956920](v32);
    OUTLINED_FUNCTION_55();
    MEMORY[0x1C6956920]();
  }

  else
  {

    v25 = *(v0 + 1152);
  }

  v33 = *(v0 + 1336);

  v34 = sub_1C5C96F98();
  *(v0 + 1352) = v34;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 1104;
  *(v0 + 88) = sub_1C5CA36B4;
  v35 = swift_continuation_init();
  sub_1C5CB5788(0);
  *(v0 + 200) = v36;
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1C5CA6B88;
  *(v0 + 168) = &block_descriptor_83;
  *(v0 + 176) = v35;
  [v33 getRemotePlaybackQueueWithDestination:v34 completion:v0 + 144];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1C5CA36B4()
{
  OUTLINED_FUNCTION_248();
  *(*v0 + 1360) = *(*v0 + 112);
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C5CA37BC()
{
  v39 = v0;
  v1 = *(v0 + 1336);
  OUTLINED_FUNCTION_311();
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1104);

  v4 = v2;
  v5 = sub_1C5CB3604();
  v8 = OUTLINED_FUNCTION_71_0(v5, v6, v7);
  sub_1C5C74C18(v8, v9);
  v10 = v3;
  v11 = sub_1C60162B0();
  sub_1C6016F30();
  OUTLINED_FUNCTION_240();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 1352);
    v14 = *(v0 + 1336);
    v36 = *(v0 + 1264);
    v37 = *(v0 + 1288);
    v15 = *(v0 + 1152);
    OUTLINED_FUNCTION_103_0();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_72();
    v38 = swift_slowAlloc();
    *v16 = 67109634;
    OUTLINED_FUNCTION_207(*&v15[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage]);

    *(v16 + 8) = 2082;
    if (v13 == 3)
    {
      v17 = 0x442065746F6D6552;
    }

    else
    {
      v17 = 0x6544206C61636F4CLL;
    }

    if (v13 == 3)
    {
      v18 = 0xED00006563697665;
    }

    else
    {
      v18 = 0xEC00000065636976;
    }

    v19 = sub_1C5C6AB10(v17, v18, &v38);

    *(v16 + 10) = v19;
    *(v16 + 18) = 2082;
    v20 = [v10 description];
    sub_1C6016940();

    v21 = OUTLINED_FUNCTION_88_0();
    sub_1C5C6AB10(v21, v22, v23);
    OUTLINED_FUNCTION_171();

    *(v16 + 20) = v20;

    OUTLINED_FUNCTION_238();
    _os_log_impl(v24, v25, v26, v27, v28, 0x1Cu);
    OUTLINED_FUNCTION_196();
    v29 = OUTLINED_FUNCTION_16_1();
    MEMORY[0x1C6956920](v29);
    OUTLINED_FUNCTION_55();
    MEMORY[0x1C6956920]();
  }

  else
  {
    v30 = *(v0 + 1336);
    v31 = *(v0 + 1288);
    v32 = *(v0 + 1264);
    v33 = *(v0 + 1152);
  }

  OUTLINED_FUNCTION_145(*(v0 + 1240));

  v34 = *(v0 + 8);

  return v34(v10);
}

uint64_t sub_1C5CA3A80()
{
  v35 = v0;
  v2 = *(v0 + 1312);
  OUTLINED_FUNCTION_311();
  v3 = *(v0 + 1144);
  v4 = *(v0 + 1152);
  v5 = sub_1C5CB3604();
  v8 = OUTLINED_FUNCTION_71_0(v5, v6, v7);
  sub_1C5C74C18(v8, v9);
  v10 = v3;
  v11 = v2;
  v12 = v10;
  v13 = v2;
  v14 = sub_1C60162B0();
  sub_1C6016F20();
  OUTLINED_FUNCTION_240();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 1312);
    v17 = *(v0 + 1152);
    v18 = *(v0 + 1144);
    OUTLINED_FUNCTION_103_0();
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_97();
    swift_slowAlloc();
    OUTLINED_FUNCTION_46();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 67109634;
    OUTLINED_FUNCTION_121();
    *(v19 + 4) = v21;

    *(v19 + 8) = 2114;
    *(v19 + 10) = v18;
    *v1 = v18;

    *(v19 + 18) = 2082;
    swift_getErrorValue();
    v22 = sub_1C6017940();
    sub_1C5C6AB10(v22, v23, &v34);
    OUTLINED_FUNCTION_95();

    *(v19 + 20) = v18;

    _os_log_impl(&dword_1C5C61000, v14, v3, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | fit content [failed] destination=%{public}@ error=%{public}s", v19, 0x1Cu);
    sub_1C5CB5700(v1);
    v24 = OUTLINED_FUNCTION_17();
    MEMORY[0x1C6956920](v24);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v25 = OUTLINED_FUNCTION_16_1();
    MEMORY[0x1C6956920](v25);
    OUTLINED_FUNCTION_55();
    MEMORY[0x1C6956920](v26);
  }

  else
  {
    v27 = *(v0 + 1312);
    v28 = *(v0 + 1152);
    v29 = *(v0 + 1144);
  }

  v30 = *(v0 + 1288);
  v31 = *(v0 + 1264);
  swift_willThrow();

  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_172();

  return v32();
}

uint64_t sub_1C5CA3CEC()
{
  v33 = v0;
  v2 = *(v0 + 1344);
  OUTLINED_FUNCTION_311();
  v3 = *(v0 + 1152);
  v4 = sub_1C5CB3604();
  v7 = OUTLINED_FUNCTION_71_0(v4, v5, v6);
  sub_1C5C74C18(v7, v8);
  v9 = v2;
  v10 = v2;
  v11 = sub_1C60162B0();
  v12 = sub_1C6016F20();
  if (OUTLINED_FUNCTION_272(v12))
  {
    v13 = *(v0 + 1344);
    v14 = *(v0 + 1152);
    v15 = OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_64_0();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 67109378;
    OUTLINED_FUNCTION_83(OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);

    *(v15 + 8) = 2082;
    swift_getErrorValue();
    v17 = sub_1C6017940();
    sub_1C5C6AB10(v17, v18, &v32);
    OUTLINED_FUNCTION_261();
    *(v15 + 10) = v1;

    OUTLINED_FUNCTION_139();
    _os_log_impl(v19, v20, v21, v22, v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v24 = OUTLINED_FUNCTION_16_1();
    MEMORY[0x1C6956920](v24);
    v25 = OUTLINED_FUNCTION_19();
    MEMORY[0x1C6956920](v25);
  }

  else
  {
    v26 = *(v0 + 1344);
    v27 = *(v0 + 1152);
  }

  v28 = *(v0 + 1288);
  v29 = *(v0 + 1264);
  swift_willThrow();

  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_172();

  return v30();
}

uint64_t sub_1C5CA3EE4()
{
  v38 = v0;
  v1 = v0[170];
  v2 = v0[167];
  OUTLINED_FUNCTION_311();
  v3 = v0[144];
  swift_willThrow();

  v4 = v3;
  v5 = sub_1C5CB3604();
  v8 = OUTLINED_FUNCTION_71_0(v5, v6, v7);
  sub_1C5C74C18(v8, v9);
  v10 = v2;
  v11 = v1;
  v12 = v10;
  v13 = v1;
  v14 = sub_1C60162B0();
  sub_1C6016F20();
  OUTLINED_FUNCTION_240();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[170];
    v17 = v0[169];
    v18 = v0[167];
    v19 = v0[144];
    OUTLINED_FUNCTION_170();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_97();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_72();
    v37[0] = swift_slowAlloc();
    *v20 = 67109890;
    OUTLINED_FUNCTION_199();
    *(v20 + 4) = v22;

    *(v20 + 8) = 2082;
    if (v17 == 3)
    {
      v23 = 0x442065746F6D6552;
    }

    else
    {
      v23 = 0x6544206C61636F4CLL;
    }

    if (v17 == 3)
    {
      v24 = 0xED00006563697665;
    }

    else
    {
      v24 = 0xEC00000065636976;
    }

    sub_1C5C6AB10(v23, v24, v37);
    OUTLINED_FUNCTION_95();

    *(v20 + 10) = v19;
    *(v20 + 18) = 2114;
    *(v20 + 20) = v18;
    *v21 = v18;

    *(v20 + 28) = 2082;
    swift_getErrorValue();
    v25 = sub_1C6017940();
    sub_1C5C6AB10(v25, v26, v37);
    OUTLINED_FUNCTION_95();

    *(v20 + 30) = v19;

    _os_log_impl(&dword_1C5C61000, v14, v1, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | queue [failed] \nintentDestination=%{public}s\nintent=%{public}@\nerror=%{public}s", v20, 0x26u);
    sub_1C5CB5700(v21);
    v27 = OUTLINED_FUNCTION_17();
    MEMORY[0x1C6956920](v27);
    OUTLINED_FUNCTION_196();
    v28 = OUTLINED_FUNCTION_16_1();
    MEMORY[0x1C6956920](v28);
    OUTLINED_FUNCTION_55();
    MEMORY[0x1C6956920]();
  }

  else
  {
    v29 = v0[170];
    v30 = v0[167];
    v31 = v0[144];
  }

  v32 = v0[167];
  v33 = v0[161];
  v34 = v0[158];
  swift_willThrow();

  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_172();

  return v35();
}

uint64_t sub_1C5CA41D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 304) = a5;
  *(v6 + 312) = v5;
  *(v6 + 288) = a3;
  *(v6 + 296) = a4;
  *(v6 + 272) = a1;
  *(v6 + 280) = a2;
  v7 = *(a2 + 16);
  *(v6 + 320) = *a2;
  *(v6 + 336) = v7;
  *(v6 + 49) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1C5CA4210, 0, 0);
}

void sub_1C5CA4210()
{
  v440 = v0;
  v1 = v0;
  v2 = *(v0 + 280);
  v3 = *(v2 + 32);
  v5 = *v2;
  v4 = *(v2 + 16);
  *(v0 + 248) = *(v0 + 288);
  *(v0 + 96) = v5;
  *(v0 + 112) = v4;
  v427 = v0 + 136;
  v428 = v0 + 248;
  *(v0 + 128) = v3;
  sub_1C5CB5698(v2, v0 + 136);
  v6 = qword_1EC1A9730;

  if (v6 != -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v8 = *(v1 + 304);
    v7 = *(v1 + 312);
    v9 = *(v1 + 296);
    v10 = sub_1C60162D0();
    v11 = __swift_project_value_buffer(v10, qword_1EC1BE490);
    v12 = sub_1C5CB55D8();
    v13 = v7;
    v422 = v12;
    v14 = sub_1C5CB3604();
    v17 = OUTLINED_FUNCTION_71_0(v14, v15, v16);
    sub_1C5C74C18(v17, v18);
    v19 = v9;
    v20 = v8;
    v423 = v11;
    v21 = sub_1C60162B0();
    v22 = sub_1C6016F30();

    v426 = v1;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v1 + 304);
      v24 = *(v1 + 312);
      v25 = *(v1 + 296);
      v26 = *(v1 + 280);
      v27 = swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_259();
      OUTLINED_FUNCTION_72();
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_304(v29);
      *v27 = 67110146;
      OUTLINED_FUNCTION_129(*(v24 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage));
      *(v27 + 8) = 2082;
      v30 = sub_1C5CB5698(v26, v427);
      sub_1C5CAE9DC(v30);
      OUTLINED_FUNCTION_290();
      sub_1C5CB56D0(v26);
      v31 = OUTLINED_FUNCTION_300();
      sub_1C5C6AB10(v31, v32, v33);
      OUTLINED_FUNCTION_114();

      OUTLINED_FUNCTION_219();

      MEMORY[0x1C6953600](v34, &_s7ContentON);
      OUTLINED_FUNCTION_176();

      v35 = OUTLINED_FUNCTION_111();
      sub_1C5C6AB10(v35, v24, v36);
      OUTLINED_FUNCTION_203();

      *(v27 + 20) = v26;
      *(v27 + 28) = 2114;
      *(v27 + 30) = v25;
      *(v27 + 38) = 2114;
      *(v27 + 40) = v23;
      *v28 = v25;
      v28[1] = v23;
      v37 = v25;
      v38 = v23;
      _os_log_impl(&dword_1C5C61000, v21, v22, "[XSQ:%{sonic:fourCC}u] fitContent(...) | begin []\ncontent=%{public}s\nitems=%{public}s\ndestination=%{public}@\naccount=%{public}@", v27, 0x30u);
      OUTLINED_FUNCTION_14_4(v39, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
      OUTLINED_FUNCTION_119();
      swift_arrayDestroy();
      v40 = OUTLINED_FUNCTION_28_0();
      v41 = MEMORY[0x1C6956920](v40);
      OUTLINED_FUNCTION_138(v41, v42, v43, v44, v45, v46, v47, v48, v401, v402, v403, v404, v405, *(&v405 + 1), v406, *(&v406 + 1), v407, v408, v410, v412, v415, v417, v418, v419, v421, v422, v423, v424);
      swift_arrayDestroy();
      v49 = OUTLINED_FUNCTION_31_0();
      MEMORY[0x1C6956920](v49);
      v50 = OUTLINED_FUNCTION_19();
      MEMORY[0x1C6956920](v50);
    }

    v51 = *(v1 + 304);
    v52 = [v51 hasCatalogPlaybackCapability];
    if ([v51 hasCatalogPlaybackCapability])
    {
      HIDWORD(v418) = [*(v1 + 304) hasCloudLibraryEnabled];
    }

    else
    {
      HIDWORD(v418) = 0;
    }

    v419 = (v428 - 152);
    v53 = (v428 - 48);
    v54 = *(v1 + 312);
    v55 = sub_1C5C96F98();
    v56 = v54;
    v57 = sub_1C5CB3604();
    v60 = OUTLINED_FUNCTION_71_0(v57, v58, v59);
    sub_1C5C74C18(v60, v61);
    v62 = sub_1C60162B0();
    v63 = sub_1C6016F30();

    v417 = v55;
    if (os_log_type_enabled(v62, v63))
    {
      v64 = *(v1 + 312);
      v65 = swift_slowAlloc();
      OUTLINED_FUNCTION_64_0();
      v66 = swift_slowAlloc();
      *&v436 = v66;
      *v65 = 67109890;
      OUTLINED_FUNCTION_129(*(v64 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage));
      *(v65 + 8) = 1024;
      *(v65 + 10) = v52;
      *(v65 + 14) = 1024;
      *(v65 + 16) = HIDWORD(v418);
      *(v65 + 20) = 2082;
      v67 = sub_1C5C96FE4(v55);
      v69 = sub_1C5C6AB10(v67, v68, &v436);

      *(v65 + 22) = v69;
      OUTLINED_FUNCTION_239();
      _os_log_impl(v70, v71, v72, v73, v74, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      v75 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v75);
      v76 = OUTLINED_FUNCTION_19();
      MEMORY[0x1C6956920](v76);
    }

    if (v52)
    {
      v77 = v428;
      v78 = *(v1 + 49);
      v80 = *(v1 + 336);
      v79 = *(v1 + 344);
      v81 = *(v1 + 320);
      v82 = *(v1 + 328);
      v427 = *(v1 + 288);
    }

    else
    {
      v83 = (v428 - 232);
      v84 = *(v1 + 280);
      if ((*(v84 + 32) & 0xC0) != 0x80 || (*(v84 + 16) & 0x80) != 0)
      {
        v87 = (v1 + 320);
        sub_1C5CB5698(v84, v427);
        v86 = *(v1 + 49);
        v80 = *(v1 + 336);
        v85 = *(v1 + 344);
        v82 = *(v1 + 328);
        v84 = *(v1 + 280);
      }

      else
      {
        v82 = 0;
        v85 = 0;
        v86 = 5;
        v80 = 1;
        v87 = *(v1 + 280);
      }

      v88 = *v87;
      *(v1 + 16) = *v87;
      *(v1 + 24) = v82;
      *(v1 + 32) = v80;
      *(v1 + 40) = v85;
      *(v1 + 48) = v86;
      if (sub_1C5CAC810(v428 - 232, v84))
      {
        OUTLINED_FUNCTION_18_0();
        sub_1C5CB587C(v89, v90, v91, v92, v93);
        LODWORD(v410) = *(v1 + 49);
        v80 = *(v1 + 336);
        v409 = *(v1 + 344);
        v81 = *(v1 + 320);
        v82 = *(v1 + 328);
      }

      else
      {
        v94 = *(v1 + 312);
        v95 = sub_1C5CB3604();
        v98 = OUTLINED_FUNCTION_71_0(v95, v96, v97);
        sub_1C5C74C18(v98, v99);
        OUTLINED_FUNCTION_18_0();
        sub_1C5CB58E0(v100, v101, v102, v103, v104);
        v105 = sub_1C60162B0();
        v106 = sub_1C6016F30();

        OUTLINED_FUNCTION_18_0();
        sub_1C5CB587C(v107, v108, v109, v110, v111);
        LODWORD(v406) = v106;
        LODWORD(v410) = v86;
        v409 = v85;
        if (os_log_type_enabled(v105, v106))
        {
          v112 = *(v1 + 312);
          *&v405 = v105;
          v113 = *(v1 + 280);
          OUTLINED_FUNCTION_103_0();
          v114 = swift_slowAlloc();
          OUTLINED_FUNCTION_72();
          v404 = swift_slowAlloc();
          *&v436 = v404;
          *v114 = 67109634;
          OUTLINED_FUNCTION_207(*(v112 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage));
          *(v114 + 8) = 2082;
          v115 = sub_1C5CB5698(v113, v427);
          v116 = sub_1C5CAE9DC(v115);
          v118 = v117;
          sub_1C5CB56D0(v113);
          sub_1C5C6AB10(v116, v118, &v436);
          OUTLINED_FUNCTION_250();

          *(v114 + 10) = v113;
          *(v114 + 18) = 2082;
          v119 = OUTLINED_FUNCTION_244();
          v124 = sub_1C5CB58E0(v119, v120, v121, v122, v123);
          sub_1C5CAE9DC(v124);
          OUTLINED_FUNCTION_99_0();
          v125 = OUTLINED_FUNCTION_244();
          sub_1C5CB587C(v125, v126, v127, v128, v129);
          v130 = OUTLINED_FUNCTION_111();
          sub_1C5C6AB10(v130, v116, v131);
          OUTLINED_FUNCTION_98();

          *(v114 + 20) = v83;
          v105 = v405;
          OUTLINED_FUNCTION_238();
          _os_log_impl(v132, v133, v134, v135, v136, 0x1Cu);
          swift_arrayDestroy();
          v137 = OUTLINED_FUNCTION_22_0();
          MEMORY[0x1C6956920](v137);
          OUTLINED_FUNCTION_55();
          MEMORY[0x1C6956920]();
        }

        v138 = *(v1 + 280);
        swift_beginAccess();
        v139 = *(v428 - 216);
        *v419 = *v83;
        *(v428 - 136) = v139;
        *(v428 - 120) = *(v428 - 200);
        sub_1C5CB56D0(v138);
        v81 = v88;
      }

      v53 = (v428 - 48);
      v140 = *(v1 + 288);
      v141 = *(v140 + 16);
      v142 = MEMORY[0x1E69E7CC0];
      v425 = v82;
      if (v141)
      {
        v413 = v81;
        v416 = v80;
        *&v436 = MEMORY[0x1E69E7CC0];

        sub_1C5D0F07C(0, v141, 0);
        v142 = v436;
        v143 = (v140 + 64);
        do
        {
          v145 = *(v143 - 4);
          v144 = *(v143 - 3);
          v146 = *(v143 - 2);
          v147 = *(v143 - 1);
          v148 = *v143;
          if ((*v143 & 0xC0) == 0x80)
          {
            if ((v146 & 0x80) != 0)
            {
              sub_1C5CB586C(*(v143 - 4), *(v143 - 3), v146);
            }

            else
            {
              v144 = 0;
              v147 = 0;
              v148 = 5;
              v146 = 1;
            }
          }

          else
          {
            sub_1C5CB58E0(*(v143 - 4), *(v143 - 3), *(v143 - 2), *(v143 - 1), *v143);
          }

          *&v436 = v142;
          v150 = *(v142 + 16);
          v149 = *(v142 + 24);
          if (v150 >= v149 >> 1)
          {
            v152 = OUTLINED_FUNCTION_128(v149);
            sub_1C5D0F07C(v152, v150 + 1, 1);
            v142 = v436;
          }

          v143 += 40;
          *(v142 + 16) = v150 + 1;
          v151 = v142 + 40 * v150;
          *(v151 + 32) = v145;
          *(v151 + 40) = v144;
          *(v151 + 48) = v146;
          *(v151 + 56) = v147;
          *(v151 + 64) = v148;
          --v141;
        }

        while (v141);
        v1 = v426;

        v140 = *(v426 + 288);
        v153 = v428;
        v53 = (v428 - 48);
        v81 = v413;
        v80 = v416;
        v82 = v425;
      }

      else
      {
        v153 = v428;
      }

      v154 = v142;
      v155 = sub_1C5DBC7DC(v142, v140);

      if (v155)
      {
        v77 = v153;

        v427 = *(v1 + 288);
        v78 = v410;
        v79 = v409;
      }

      else
      {
        v156 = v153;
        *&v406 = v153 - 72;
        v157 = *(v1 + 312);
        v158 = sub_1C5CB3604();
        v161 = OUTLINED_FUNCTION_71_0(v158, v159, v160);
        sub_1C5C74C18(v161, v162);

        v163 = sub_1C60162B0();
        v164 = sub_1C6016F30();

        v427 = v154;
        if (os_log_type_enabled(v163, v164))
        {
          v414 = v81;
          v165 = *(v1 + 312);
          OUTLINED_FUNCTION_103_0();
          v166 = swift_slowAlloc();
          OUTLINED_FUNCTION_72();
          *&v436 = swift_slowAlloc();
          *v166 = 67109634;
          OUTLINED_FUNCTION_207(*(v165 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage));
          *(v166 + 8) = 2082;

          v168 = v53;
          v169 = MEMORY[0x1C6953600](v167, &_s7ContentON);
          v171 = v170;

          v172 = v169;
          v53 = v168;
          v173 = sub_1C5C6AB10(v172, v171, &v436);
          v1 = v426;

          *(v166 + 10) = v173;
          *(v166 + 18) = 2082;
          v81 = v414;
          v174 = MEMORY[0x1C6953600](v427, &_s7ContentON);
          v176 = sub_1C5C6AB10(v174, v175, &v436);

          *(v166 + 20) = v176;
          OUTLINED_FUNCTION_238();
          _os_log_impl(v177, v178, v179, v180, v181, 0x1Cu);
          OUTLINED_FUNCTION_77_0();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_55();
          MEMORY[0x1C6956920]();
          v182 = v427;
          OUTLINED_FUNCTION_55();
          MEMORY[0x1C6956920]();

          v183 = v428;
          v78 = v410;
          v79 = v409;
          v82 = v425;
        }

        else
        {
          v182 = v154;

          v78 = v410;
          v79 = v409;
          v82 = v425;
          v183 = v156;
        }

        v77 = v183;
        swift_beginAccess();
        *(v1 + 248) = v182;
      }
    }

    v184 = *(v1 + 304);
    v185 = *(v1 + 312);
    *&v436 = v81;
    *(&v436 + 1) = v82;
    v437 = v80;
    v438 = v79;
    v439 = v78;
    v186 = v184;
    OUTLINED_FUNCTION_18_0();
    sub_1C5CB58E0(v187, v188, v189, v190, v191);
    v192 = v186;
    OUTLINED_FUNCTION_18_0();
    sub_1C5CB58E0(v193, v194, v195, v196, v197);
    sub_1C5CA6F0C(&v433, "[XSQ:%{sonic:fourCC}u] fitContent(...) | failed [library content not in library]\ncontent=%{public}s \nerror=%{public}s", &v436, v185, v192, v53, v401, v402, v403, v404);
    HIDWORD(v421) = HIDWORD(v53);
    OUTLINED_FUNCTION_18_0();
    sub_1C5CB587C(v198, v199, v200, v201, v202);
    OUTLINED_FUNCTION_18_0();
    sub_1C5CB587C(v203, v204, v205, v206, v207);
    v424 = v82;
    v208 = v435;
    if (v435 > 0xF7u)
    {
      v400 = *(v1 + 304);

      __break(1u);
      return;
    }

    v209 = v81;
    v210 = v80;
    v211 = *(&v433 + 1);
    v212 = v433;
    v213 = v434;
    *(v1 + 56) = v433;
    *(v1 + 64) = v211;
    v412 = *(&v213 + 1);
    v415 = v213;
    *(v1 + 72) = v213;
    *(v1 + 88) = v208;
    swift_beginAccess();
    v214 = *(v77 - 176);
    *v419 = *(v77 - 192);
    *(v428 - 136) = v214;
    v408 = v77 - 192;
    *(v428 - 120) = *(v77 - 160);
    sub_1C5CB587C(v209, v424, v210, v79, v78);
    v215 = *(v427 + 16);
    LODWORD(v421) = v208;
    if (!v215)
    {
      break;
    }

    v410 = v211;
    v419 = v212;
    v431 = MEMORY[0x1E69E7CC0];

    sub_1C5D0F07C(0, v215, 0);
    v216 = v427;
    v217 = 0;
    v218 = v431;
    v219 = (v427 + 64);
    v424 = v215;
    while (v217 < *(v216 + 16))
    {
      v220 = v218;
      v221 = *(v1 + 304);
      v222 = *(v1 + 312);
      v223 = *(v219 - 3);
      v224 = *(v219 - 2);
      v225 = *(v219 - 1);
      v226 = *v219;
      *&v436 = *(v219 - 4);
      *(&v436 + 1) = v223;
      v437 = v224;
      v438 = v225;
      v439 = v226;
      v227 = v221;
      v228 = OUTLINED_FUNCTION_116();
      sub_1C5CB58E0(v228, v229, v224, v225, v226);
      sub_1C5CA6F0C(&v433, "[XSQ:%{sonic:fourCC}u] fitContent(...) | failed [library content not in library]\ncontent=%{public}s\nerror=%{public}s", &v436, v222, v227, (v428 + 8), v401, v402, v403, v404);
      v230 = OUTLINED_FUNCTION_116();
      sub_1C5CB587C(v230, v231, v224, v225, v226);
      v232 = v433;
      v233 = v434;
      v234 = v435;
      v218 = v220;
      v432 = v220;
      v235 = *(v220 + 16);
      v236 = *(v218 + 24);
      if (v235 >= v236 >> 1)
      {
        v238 = OUTLINED_FUNCTION_128(v236);
        v405 = v240;
        v406 = v239;
        sub_1C5D0F07C(v238, v235 + 1, 1);
        v233 = v405;
        v232 = v406;
        v218 = v432;
      }

      ++v217;
      *(v218 + 16) = v235 + 1;
      v237 = v218 + 40 * v235;
      *(v237 + 32) = v232;
      *(v237 + 48) = v233;
      *(v237 + 64) = v234;
      v219 += 40;
      v1 = v426;
      v216 = v427;
      if (v424 == v217)
      {
        swift_bridgeObjectRelease_n();
        v208 = v421;
        v212 = v419;
        v211 = v410;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_77:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v218 = MEMORY[0x1E69E7CC0];
LABEL_47:
  if (v208 > 0x3F)
  {
    goto LABEL_60;
  }

  if (v208 == 5)
  {
    v241 = *(v1 + 312);
    v242 = sub_1C5CB3604();
    v245 = OUTLINED_FUNCTION_71_0(v242, v243, v244);
    sub_1C5C74C18(v245, v246);
    v247 = sub_1C60162B0();
    v248 = sub_1C6016F30();

    v249 = os_log_type_enabled(v247, v248);
    if (v417 == 2)
    {
      if (v249)
      {
        OUTLINED_FUNCTION_103_0();
        v250 = swift_slowAlloc();
        OUTLINED_FUNCTION_72();
        v251 = swift_slowAlloc();
        OUTLINED_FUNCTION_304(v251);
        *v250 = 67109634;
        OUTLINED_FUNCTION_83(OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);
        OUTLINED_FUNCTION_141();
        OUTLINED_FUNCTION_143();
        v257 = sub_1C5CB5C88(v252, v253, v254, v255, v256);
        sub_1C5CAE9DC(v257);
        OUTLINED_FUNCTION_149_0();
        OUTLINED_FUNCTION_88_0();
        OUTLINED_FUNCTION_143();
        sub_1C5CB5C9C(v258, v259, v260, v261, v262);
        v263 = OUTLINED_FUNCTION_111();
        sub_1C5C6AB10(v263, v218, v264);
        OUTLINED_FUNCTION_90();

        OUTLINED_FUNCTION_219();
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_136_0();

        *(v250 + 20) = v218;
        v218 = v427;
        OUTLINED_FUNCTION_139();
        _os_log_impl(v265, v266, v267, v268, v269, 0x1Cu);
        OUTLINED_FUNCTION_138(v270, v271, v272, v273, v274, v275, v276, v277, v401, v402, v403, v404, v405, *(&v405 + 1), v406, *(&v406 + 1), v407, v408, v410, *(&v213 + 1), v213, 2, v418, v419, v421, v422, v423, v424);
        swift_arrayDestroy();
        v278 = OUTLINED_FUNCTION_31_0();
        MEMORY[0x1C6956920](v278);
        v279 = OUTLINED_FUNCTION_19();
        MEMORY[0x1C6956920](v279);

LABEL_55:
        LOBYTE(v208) = v421;
        goto LABEL_56;
      }
    }

    else if (v249)
    {
      OUTLINED_FUNCTION_170();
      v280 = swift_slowAlloc();
      OUTLINED_FUNCTION_112_0();
      v281 = swift_slowAlloc();
      OUTLINED_FUNCTION_304(v281);
      *v280 = 67109890;
      OUTLINED_FUNCTION_83(OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);
      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_143();
      v287 = sub_1C5CB5C88(v282, v283, v284, v285, v286);
      sub_1C5CAE9DC(v287);
      OUTLINED_FUNCTION_149_0();
      OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_143();
      sub_1C5CB5C9C(v288, v289, v290, v291, v292);
      v293 = OUTLINED_FUNCTION_111();
      sub_1C5C6AB10(v293, v218, v294);
      OUTLINED_FUNCTION_90();

      *(v280 + 10) = v408;
      *(v280 + 18) = 2082;
      v295 = OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_231(v295);
      OUTLINED_FUNCTION_136_0();

      *(v280 + 20) = v218;
      *(v280 + 28) = 2082;
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_136_0();

      *(v280 + 30) = v218;
      v218 = v427;
      OUTLINED_FUNCTION_139();
      _os_log_impl(v296, v297, v298, v299, v300, 0x26u);
      OUTLINED_FUNCTION_138(v301, v302, v303, v304, v305, v306, v307, v308, v401, v402, v403, v404, v405, *(&v405 + 1), v406, *(&v406 + 1), v407, v408, v410, *(&v213 + 1), v213, v417, v418, v419, v421, v422, v423, v424);
      swift_arrayDestroy();
      v309 = OUTLINED_FUNCTION_31_0();
      MEMORY[0x1C6956920](v309);
      v310 = OUTLINED_FUNCTION_19();
      MEMORY[0x1C6956920](v310);
    }

    v417 = 2;
    goto LABEL_55;
  }

LABEL_56:
  if ([*(v1 + 296) isCompanion])
  {
    v311 = *(v1 + 312);
    v312 = sub_1C5CB3604();
    v315 = OUTLINED_FUNCTION_71_0(v312, v313, v314);
    sub_1C5C74C18(v315, v316);
    v317 = sub_1C60162B0();
    v318 = sub_1C6016F30();

    v319 = os_log_type_enabled(v317, v318);
    if (v417 == 2)
    {
      if (v319)
      {
        v429 = *(v1 + 304);
        OUTLINED_FUNCTION_103_0();
        v320 = swift_slowAlloc();
        OUTLINED_FUNCTION_72();
        *&v436 = swift_slowAlloc();
        *v320 = 67109634;
        OUTLINED_FUNCTION_83(OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);
        *(v320 + 8) = 2082;
        LOBYTE(v208) = v421;
        v321 = sub_1C5CB5C88(v212, v211, v415, v412, v421);
        sub_1C5CAE9DC(v321);
        OUTLINED_FUNCTION_149_0();
        sub_1C5CB5C9C(v212, v211, v415, v412, v421);
        v322 = OUTLINED_FUNCTION_111();
        sub_1C5C6AB10(v322, v218, v323);
        OUTLINED_FUNCTION_90();

        OUTLINED_FUNCTION_219();
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_136_0();

        *(v320 + 20) = v218;
        v218 = v427;
        OUTLINED_FUNCTION_139();
        _os_log_impl(v324, v325, v326, v327, v328, 0x1Cu);
        v329 = 2;
        OUTLINED_FUNCTION_196();
        v330 = OUTLINED_FUNCTION_16_1();
        MEMORY[0x1C6956920](v330);
        v331 = OUTLINED_FUNCTION_19();
        MEMORY[0x1C6956920](v331);

        goto LABEL_70;
      }

LABEL_69:
      v396 = *(v1 + 304);

      v329 = 2;
      LOBYTE(v208) = v421;
      goto LABEL_70;
    }

    if (!v319)
    {
      goto LABEL_69;
    }

    v430 = *(v1 + 304);
    OUTLINED_FUNCTION_170();
    v378 = swift_slowAlloc();
    OUTLINED_FUNCTION_112_0();
    v379 = swift_slowAlloc();
    OUTLINED_FUNCTION_304(v379);
    *v378 = 67109890;
    OUTLINED_FUNCTION_83(OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);
    v380 = OUTLINED_FUNCTION_141();
    LODWORD(v423) = v318;
    LOBYTE(v208) = v421;
    v382 = sub_1C5CB5C88(v380, v381, v415, v412, v421);
    sub_1C5CAE9DC(v382);
    OUTLINED_FUNCTION_149_0();
    sub_1C5CB5C9C(v212, v211, v415, v412, v421);
    v383 = OUTLINED_FUNCTION_111();
    sub_1C5C6AB10(v383, v218, v384);
    OUTLINED_FUNCTION_90();

    *(v378 + 10) = v408;
    *(v378 + 18) = 2082;
    v385 = OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_231(v385);
    OUTLINED_FUNCTION_136_0();

    *(v378 + 20) = v218;
    *(v378 + 28) = 2082;
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_136_0();

    *(v378 + 30) = v218;
    v218 = v427;
    _os_log_impl(&dword_1C5C61000, v317, v318, "[XSQ:%{sonic:fourCC}u] fitContent(...) | policy change [forcing library mode for companion content] \ncontent=%{public}s\npreviousIntentDestination=%{public}s\nintentDestination=%{public}s", v378, 0x26u);
    OUTLINED_FUNCTION_138(v386, v387, v388, v389, v390, v391, v392, v393, v401, v402, v403, v404, v405, *(&v405 + 1), v406, *(&v406 + 1), v407, v408, v410, v412, v415, v417, v418, v419, v421, v422, v423, v424);
    swift_arrayDestroy();
    v394 = OUTLINED_FUNCTION_31_0();
    MEMORY[0x1C6956920](v394);
    v395 = OUTLINED_FUNCTION_19();
    MEMORY[0x1C6956920](v395);

    v333 = v430;
LABEL_64:

    v329 = 2;
    goto LABEL_70;
  }

LABEL_60:
  if (v417 != 3)
  {
    v333 = *(v1 + 304);
    goto LABEL_64;
  }

  if ((v418 & 0x100000000) == 0)
  {
    v411 = v211;
    v420 = v212;
    v335 = *(v1 + 304);
    v334 = *(v1 + 312);
    v336 = *(v1 + 296);
    v337 = sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    *(v1 + 256) = 10;
    OUTLINED_FUNCTION_224();
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    *&v436 = 0xD000000000000023;
    *(&v436 + 1) = v338;
    v339 = [v334 description];
    sub_1C6016940();
    OUTLINED_FUNCTION_290();

    v340 = OUTLINED_FUNCTION_300();
    MEMORY[0x1C69534E0](v340);

    v341 = OUTLINED_FUNCTION_41();
    MEMORY[0x1C69534E0](v341);
    v342 = [v335 description];
    sub_1C6016940();

    v343 = OUTLINED_FUNCTION_88_0();
    MEMORY[0x1C69534E0](v343);

    v344 = OUTLINED_FUNCTION_41();
    MEMORY[0x1C69534E0](v344);
    v345 = [v336 description];
    v346 = sub_1C6016940();
    v348 = v347;

    MEMORY[0x1C69534E0](v346, v348);

    sub_1C6016880();
    _s3__C4CodeOMa_4(0);
    OUTLINED_FUNCTION_2_3();
    sub_1C5CB8318(v349, v350, &unk_1C6035604);
    OUTLINED_FUNCTION_26();
    sub_1C6017280();
    OUTLINED_FUNCTION_98();

    v351 = v334;
    v352 = sub_1C5CB3604();
    v355 = OUTLINED_FUNCTION_71_0(v352, v353, v354);
    sub_1C5C74C18(v355, v356);
    v357 = v337;
    v358 = sub_1C60162B0();
    v359 = sub_1C6016F20();

    if (os_log_type_enabled(v358, v359))
    {
      OUTLINED_FUNCTION_103_0();
      v360 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      *&v436 = swift_slowAlloc();
      *v360 = 67109634;
      OUTLINED_FUNCTION_121();
      *(v360 + 4) = v361;
      *(v360 + 8) = 2082;
      v362 = v412;
      v363 = sub_1C5CB5C88(v420, v411, v415, v412, v421);
      sub_1C5CAE9DC(v363);
      OUTLINED_FUNCTION_176();
      v364 = OUTLINED_FUNCTION_293();
      sub_1C5CB5C9C(v364, v365, v415, v412, v421);
      v366 = OUTLINED_FUNCTION_111();
      sub_1C5C6AB10(v366, v428, v367);
      OUTLINED_FUNCTION_203();

      *(v360 + 10) = v408;
      *(v360 + 18) = 2082;
      swift_getErrorValue();
      v368 = sub_1C6017940();
      sub_1C5C6AB10(v368, v369, &v436);
      OUTLINED_FUNCTION_261();
      *(v360 + 20) = v421;
      OUTLINED_FUNCTION_169();
      _os_log_impl(v370, v371, v372, v373, v374, 0x1Cu);
      swift_arrayDestroy();
      v375 = OUTLINED_FUNCTION_19();
      MEMORY[0x1C6956920](v375);
      v376 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v376);

      v377 = v426;
    }

    else
    {

      v377 = v426;
      v362 = v412;
    }

    v399 = *(v377 + 304);
    swift_willThrow();

    sub_1C5CB587C(v420, v411, v415, v362, v421);
    v398 = *(v377 + 8);
    goto LABEL_73;
  }

  v332 = *(v1 + 304);

  v329 = 3;
LABEL_70:
  v397 = *(v1 + 272);
  *v397 = v212;
  *(v397 + 8) = v211;
  *(v397 + 16) = v415;
  *(v397 + 24) = v412;
  *(v397 + 32) = v208;
  *(v397 + 40) = v218;
  *(v397 + 48) = v329;
  v398 = *(v1 + 8);
LABEL_73:

  v398();
}

uint64_t sub_1C5CA58A4(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C5CA58C8, 0, 0);
}

NSObject *sub_1C5CA58C8()
{
  v226 = v0;
  if (qword_1EC1A9730 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v2 = *(v0 + 176);
    v1 = *(v0 + 184);
    v3 = *(v0 + 168);
    v4 = sub_1C60162D0();
    __swift_project_value_buffer(v4, qword_1EC1BE490);
    v5 = sub_1C5CB55D8();
    v6 = v1;
    v223 = v5;
    v7 = sub_1C5CB3604();
    v10 = OUTLINED_FUNCTION_71_0(v7, v8, v9);
    sub_1C5C74C18(v10, v11);
    v12 = *v3;
    v13 = v3[1];
    *(v0 + 88) = *(v3 + 32);
    *(v0 + 72) = v13;
    *(v0 + 56) = v12;
    v219 = *(v3 + 1);
    v221 = *v3;
    v217 = *(v3 + 2);
    v14 = *(v3 + 5);
    sub_1C5CB5698(v0 + 56, v0 + 96);

    v15 = OUTLINED_FUNCTION_346(v2);
    v16 = sub_1C6016F30();

    sub_1C5CB56D0(v0 + 56);

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 176);
      OUTLINED_FUNCTION_170();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_97();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      v3 = swift_slowAlloc();
      v224 = v3;
      *v18 = 67109890;
      OUTLINED_FUNCTION_121();
      *(v18 + 4) = v20;
      OUTLINED_FUNCTION_298();
      v22 = sub_1C5CAE9DC(v21);
      sub_1C5C6AB10(v22, v23, &v224);
      OUTLINED_FUNCTION_261();
      *(v18 + 10) = v14;
      OUTLINED_FUNCTION_299();
      v24 = MEMORY[0x1C6953600](v14, &_s7ContentON);
      sub_1C5C6AB10(v24, v25, &v224);
      OUTLINED_FUNCTION_261();
      *(v18 + 20) = v14;
      *(v18 + 28) = 2114;
      *(v18 + 30) = v17;
      *v19 = v17;
      v26 = v17;
      _os_log_impl(&dword_1C5C61000, v15, v16, "[XSQ:%{sonic:fourCC}u] buildPlaybackIntent(...) | begin []\ncontent=%{public}s\nitemsContent=%{public}s\nuserIdentity=%{public}@", v18, 0x26u);
      sub_1C5CB5700(v19);
      v27 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v27);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_55();
      MEMORY[0x1C6956920]();
      v28 = OUTLINED_FUNCTION_47();
      MEMORY[0x1C6956920](v28);
    }

    v29 = *(v0 + 56);
    v30 = *(v0 + 64);
    v31 = *(v0 + 72);
    v32 = *(v0 + 88);
    if (!(v32 >> 6))
    {
      break;
    }

    if (v32 >> 6 == 1)
    {
      v3 = *(v0 + 184);
      objc_opt_self();
      OUTLINED_FUNCTION_110_0();
      v33 = sub_1C6016900();
      v34 = OUTLINED_FUNCTION_253();
      v36 = [v34 v35];

      v37 = v3;
      v38 = sub_1C5CB3604();
      v41 = OUTLINED_FUNCTION_71_0(v38, v39, v40);
      sub_1C5C74C18(v41, v42);
      v43 = OUTLINED_FUNCTION_346(v36);
      v44 = sub_1C6016F30();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = *(v0 + 184);
        v46 = OUTLINED_FUNCTION_220();
        OUTLINED_FUNCTION_97();
        v47 = swift_slowAlloc();
        *v46 = 67109378;
        OUTLINED_FUNCTION_208(*(v45 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage));
        *(v46 + 8) = 2114;
        *(v46 + 10) = v3;
        *v48 = v3;
        v3 = v3;
        _os_log_impl(&dword_1C5C61000, v43, v44, "[XSQ:%{sonic:fourCC}u] buildPlaybackIntent(...) | building radio request []\nintent=%{public}@", v46, 0x12u);
        sub_1C5CB5700(v47);
        v49 = OUTLINED_FUNCTION_16_1();
        MEMORY[0x1C6956920](v49);
        v50 = OUTLINED_FUNCTION_47();
        MEMORY[0x1C6956920](v50);
      }

LABEL_56:

      v211 = *(v0 + 8);

      return v211(v3);
    }

    v73 = *(v0 + 176);
    v74 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
    v75 = [objc_opt_self() musicRequestWithUserIdentity_];
    [v74 setPlaybackRequestEnvironment_];

    v76 = *(v14 + 16);
    if (!v76)
    {
      v111 = &selRef_hasCapability_;
      OUTLINED_FUNCTION_3_1();
      sub_1C5C6EFFC(0, v112, v113, v114);
      v115 = swift_allocObject();
      v116 = v115;
      *(v115 + 16) = xmmword_1C60311E0;
      if (v31 < 0)
      {
        *(v115 + 32) = v29;
        *(v115 + 40) = v30;
        sub_1C5CB586C(v221, v219, v217);
      }

      else
      {
        *(v0 + 96) = v29;
        *(v115 + 32) = sub_1C60177D0();
        *(v116 + 40) = v117;
      }

      sub_1C5CB507C(v116, v74);
      v3 = v223;
LABEL_53:
      v193 = *(v0 + 184);
      v194 = [objc_allocWithZone(MPCPlaybackIntent) v111[103]];
      v195 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) v111[103]];
      [v195 setRequest_];
      [v194 setTracklistToken_];
      [v194 setTracklistSource_];
      v196 = v193;
      v197 = sub_1C5CB3604();
      v200 = OUTLINED_FUNCTION_71_0(v197, v198, v199);
      sub_1C5C74C18(v200, v201);
      v202 = v74;
      v43 = OUTLINED_FUNCTION_346(v194);
      v203 = sub_1C6016F30();

      if (os_log_type_enabled(v43, v203))
      {
        OUTLINED_FUNCTION_103_0();
        v204 = swift_slowAlloc();
        OUTLINED_FUNCTION_259();
        *v204 = 67109634;
        OUTLINED_FUNCTION_199();
        *(v204 + 4) = v205;
        *(v204 + 8) = 2114;
        *(v204 + 10) = v202;
        *(v204 + 18) = 2114;
        *(v204 + 20) = v3;
        *v206 = v202;
        v206[1] = v3;
        v207 = v202;
        v3 = v3;
        _os_log_impl(&dword_1C5C61000, v43, v203, "[XSQ:%{sonic:fourCC}u] buildPlaybackIntent(...) | building subscription request []\nrequest=%{public}@\nintent=%{public}@", v204, 0x1Cu);
        OUTLINED_FUNCTION_14_4(v208, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
        OUTLINED_FUNCTION_119();
        swift_arrayDestroy();
        v209 = OUTLINED_FUNCTION_28_0();
        MEMORY[0x1C6956920](v209);
        v210 = OUTLINED_FUNCTION_31_0();
        MEMORY[0x1C6956920](v210);
      }

      else
      {

        v43 = v202;
      }

      goto LABEL_56;
    }

    v222 = [objc_allocWithZone(MEMORY[0x1E6970818]) &selRef_int64ValueAtColumnIndex_];
    if (v31 < 0)
    {
      sub_1C5C64D74(0, &qword_1EC1A8B78, 0x1E6970730);
      v78 = [swift_getObjCClassFromMetadata() identityKind];
      v79 = swift_task_alloc();
      v79[2] = v29;
      v79[3] = v30;
      v80 = objc_allocWithZone(MEMORY[0x1E6970550]);
    }

    else
    {
      if ((v31 & 1) != 0 || (v77 = sub_1C5CAB8D0(v30)) == 0)
      {
        v77 = [objc_opt_self() kindWithVariants_];
      }

      v78 = v77;
      v79 = swift_task_alloc();
      v79[2] = v29;
      v80 = objc_allocWithZone(MEMORY[0x1E6970550]);
    }

    v118 = OUTLINED_FUNCTION_9_4();
    sub_1C5E1ED90(v118, v119, v78, v120, v79);
    OUTLINED_FUNCTION_73();

    [v222 appendSection_];

    v121 = 0;
    v224 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v122 = v14 + 40 * v121;
    while (1)
    {
      if (v76 == v121)
      {
        sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
        sub_1C6016AF0();
        OUTLINED_FUNCTION_206();

        v191 = OUTLINED_FUNCTION_319();
        [v191 v192];

        [v74 setIdentifiers_];
        v3 = v223;
        v111 = &selRef_hasCapability_;
        goto LABEL_53;
      }

      if (v121 >= v76)
      {
        break;
      }

      v123 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_60;
      }

      v124 = *(v122 + 64);
      ++v121;
      v122 += 40;
      if ((v124 & 0xC0) == 0x80)
      {
        v218 = v14;
        v220 = v74;
        v126 = *(v122 - 8);
        v125 = *v122;
        v128 = *(v122 + 8);
        v127 = *(v122 + 16);
        if ((v128 & 0x80) != 0)
        {
          sub_1C5C64D74(0, &qword_1EC1A8B78, 0x1E6970730);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          sub_1C5CB586C(v126, v125, v128);
          v137 = [ObjCClassFromMetadata identityKind];
          v138 = swift_task_alloc();
          v138[2] = v126;
          v138[3] = v125;
          v139 = objc_allocWithZone(MEMORY[0x1E6970550]);
          v140 = OUTLINED_FUNCTION_8_2();
          sub_1C5E1ED90(v140, v141, v142, v143, v138);
        }

        else
        {
          v216 = *(v122 + 16);
          if ((v128 & 1) == 0)
          {
            switch(v125)
            {
              case 1:
              case 14:
                goto LABEL_40;
              case 2:
                objc_opt_self();
                v144 = objc_opt_self();
                v145 = OUTLINED_FUNCTION_119();
                sub_1C5CB58E0(v145, v146, v128, v127, v124);
                v147 = OUTLINED_FUNCTION_119();
                sub_1C5CB58E0(v147, v148, v128, v127, v124);
                v149 = [v144 kindWithVariants_];
                v150 = OUTLINED_FUNCTION_319();
                v152 = [v150 v151];
                goto LABEL_45;
              case 3:
                v214 = objc_opt_self();
                objc_opt_self();
                v171 = objc_opt_self();
                OUTLINED_FUNCTION_134(v126, 3);
                OUTLINED_FUNCTION_134(v126, 3);
                v172 = [v171 kindWithVariants_];
                v149 = OUTLINED_FUNCTION_350(v172, sel_kindWithSongKind_);

                v152 = [v214 kindWithAlbumKind_];
                goto LABEL_45;
              case 4:
                v215 = objc_opt_self();
                objc_opt_self();
                v173 = objc_opt_self();
                OUTLINED_FUNCTION_134(v126, 4);
                OUTLINED_FUNCTION_134(v126, 4);
                v174 = [v173 kindWithVariants_];
                v149 = OUTLINED_FUNCTION_350(v174, sel_kindWithSongKind_);

                v152 = [v215 kindWithAlbumKind_];
                goto LABEL_45;
              case 5:
                v212 = objc_opt_self();
                OUTLINED_FUNCTION_3_1();
                v160 = OUTLINED_FUNCTION_195();
                sub_1C5C6EFFC(v160, &qword_1ED7DCAF0, v161, v162);
                v164 = OUTLINED_FUNCTION_213(v163);
                *(v164 + 16) = xmmword_1C60311D0;
                v165 = objc_opt_self();
                OUTLINED_FUNCTION_134(v126, 5);
                OUTLINED_FUNCTION_134(v126, 5);
                *(v164 + 32) = [v165 kindWithVariants_];
                *(v164 + 40) = [objc_opt_self() kindWithVariants_];
                *(v164 + 48) = [objc_opt_self() kindWithVariants_];
                sub_1C5CB593C();
                v166 = sub_1C6016AF0();

                v213 = [v212 kindWithKinds_];

                v167 = objc_opt_self();
                v168 = [v167 kindWithPlaylistEntryKind:v213 options:0];
                v169 = [v168 variants];

                v170 = v169 & 0xFFFFFFFFFFFFFFF7;
                v149 = v213;
                v152 = [v167 kindWithVariants:v170 playlistEntryKind:v213 options:0];
LABEL_45:
                v175 = v152;

                goto LABEL_46;
              case 6:
              case 7:
              case 8:
              case 9:
              case 10:
              case 11:
              case 12:
              case 13:
                break;
              default:
                if (v125 != 18)
                {
                  break;
                }

LABEL_40:
                objc_opt_self();
                OUTLINED_FUNCTION_315();
                v153 = OUTLINED_FUNCTION_59_0();
                OUTLINED_FUNCTION_342(v153, v154, v155);
                v156 = OUTLINED_FUNCTION_59_0();
                OUTLINED_FUNCTION_342(v156, v157, v158);
                v135 = [v127 kindWithVariants_];
                goto LABEL_41;
            }
          }

          objc_opt_self();
          OUTLINED_FUNCTION_315();
          v129 = OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_342(v129, v130, v131);
          v132 = OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_342(v132, v133, v134);
          v135 = [v127 kindWithVariants_];
LABEL_41:
          v159 = v135;
LABEL_46:
          v176 = swift_task_alloc();
          v176[2] = v126;
          v177 = objc_allocWithZone(MEMORY[0x1E6970550]);
          v178 = OUTLINED_FUNCTION_8_2();
          sub_1C5E1ED90(v178, v179, v180, v181, v176);
          v182 = OUTLINED_FUNCTION_59_0();
          sub_1C5CB587C(v182, v183, v184, v216, v124);
        }

        v185 = OUTLINED_FUNCTION_59_0();
        sub_1C5CB587C(v185, v186, v187, v188, v124);

        MEMORY[0x1C69535C0](v189);
        v79 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v190 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (v79 >= v190 >> 1)
        {
          OUTLINED_FUNCTION_128(v190);
          sub_1C6016B30();
        }

        OUTLINED_FUNCTION_252();
        sub_1C6016B70();
        v121 = v123;
        v14 = v218;
        v74 = v220;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v51 = *(v0 + 176);
  v52 = *(v0 + 80);
  *(v0 + 16) = v29;
  *(v0 + 24) = v30;
  *(v0 + 32) = v31;
  *(v0 + 40) = v52;
  *(v0 + 48) = v32 & 0x3F;
  v53 = [objc_allocWithZone(MEMORY[0x1E69706C8]) init];
  v54 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
  if (v54)
  {
    v55 = v54;
    [v53 setMediaLibrary_];
    sub_1C5CA7574();
    result = [v53 playbackIntentWithStartItemIdentifiers_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v57 = result;
    v58 = *(v0 + 184);
    -[NSObject setShuffleMode:](result, sel_setShuffleMode_, [v58 shuffleType]);
    -[NSObject setRepeatMode:](v57, sel_setRepeatMode_, [v58 repeatType]);
    v59 = v58;
    v60 = sub_1C5CB3604();
    v63 = OUTLINED_FUNCTION_71_0(v60, v61, v62);
    sub_1C5C74C18(v63, v64);
    v43 = v53;
    v65 = OUTLINED_FUNCTION_346(v57);
    v66 = sub_1C6016F30();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = *(v0 + 184);
      OUTLINED_FUNCTION_103_0();
      v68 = swift_slowAlloc();
      OUTLINED_FUNCTION_259();
      *v68 = 67109634;
      OUTLINED_FUNCTION_208(*(v67 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage));
      *(v68 + 8) = 2114;
      *(v68 + 10) = v43;
      *(v68 + 18) = 2114;
      *(v68 + 20) = v3;
      *v69 = v43;
      v69[1] = v57;
      v43 = v43;
      v3 = v3;
      _os_log_impl(&dword_1C5C61000, v65, v66, "[XSQ:%{sonic:fourCC}u] buildPlaybackIntent(...) | building library request []\nrequest=%{public}@\nintent=%{public}@", v68, 0x1Cu);
      OUTLINED_FUNCTION_14_4(v70, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
      swift_arrayDestroy();
      v71 = OUTLINED_FUNCTION_37();
      MEMORY[0x1C6956920](v71);
      v72 = OUTLINED_FUNCTION_47();
      MEMORY[0x1C6956920](v72);
    }

    goto LABEL_56;
  }

  v81 = *(v0 + 176);
  v82 = *(v0 + 184);
  sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
  sub_1C6016940();
  *(v0 + 96) = 3;
  v224 = 0;
  v225 = 0xE000000000000000;
  sub_1C6017540();

  OUTLINED_FUNCTION_89();
  v224 = 0xD000000000000021;
  v225 = v83;
  v84 = v82;
  v85 = [v82 description];
  v86 = sub_1C6016940();
  v88 = v87;

  MEMORY[0x1C69534E0](v86, v88);

  v89 = OUTLINED_FUNCTION_41();
  MEMORY[0x1C69534E0](v89);
  v90 = [v81 description];
  sub_1C6016940();

  v91 = OUTLINED_FUNCTION_252();
  MEMORY[0x1C69534E0](v91);

  sub_1C6016880();
  _s3__C4CodeOMa_4(0);
  OUTLINED_FUNCTION_2_3();
  sub_1C5CB8318(v92, v93, &unk_1C6035604);
  OUTLINED_FUNCTION_100();
  v94 = sub_1C6017280();

  v95 = v84;
  v96 = sub_1C5CB3604();
  v99 = OUTLINED_FUNCTION_71_0(v96, v97, v98);
  sub_1C5C74C18(v99, v100);
  v101 = v94;
  v102 = sub_1C60162B0();
  v103 = sub_1C6016F20();

  if (os_log_type_enabled(v102, v103))
  {
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_46();
    v104 = swift_slowAlloc();
    v224 = v104;
    *v95 = 67109378;
    OUTLINED_FUNCTION_121();
    v95[1] = v105;
    *(v95 + 4) = 2082;
    swift_getErrorValue();
    v106 = sub_1C6017940();
    sub_1C5C6AB10(v106, v107, &v224);
    OUTLINED_FUNCTION_95();

    *(v95 + 10) = v84;
    _os_log_impl(&dword_1C5C61000, v102, v103, "[XSQ:%{sonic:fourCC}u] buildPlaybackIntent(...) | failed building library request [missing library] error=%{public}s", v95, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v104);
    v108 = OUTLINED_FUNCTION_28_0();
    MEMORY[0x1C6956920](v108);
    v109 = OUTLINED_FUNCTION_17();
    MEMORY[0x1C6956920](v109);
  }

  swift_willThrow();
  OUTLINED_FUNCTION_172();

  return v110();
}

void *sub_1C5CA6B88(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1C5E0232C();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_1C5E0231C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5CA6CA0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C5CA6D64;

  return sub_1C5CA1278();
}

uint64_t sub_1C5CA6D64(uint64_t a1)
{
  OUTLINED_FUNCTION_315();
  v4 = *v3;
  v5 = *(*v3 + 24);
  v6 = *(*v3 + 16);
  v7 = *v3;
  OUTLINED_FUNCTION_101();
  *v8 = v7;

  v9 = *(v4 + 32);
  if (v1)
  {
    sub_1C6014D30();

    (v9)[2](v9, 0, v2);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v4 + 32), v2, 0);
    _Block_release(v9);
  }

  v10 = *(v7 + 8);

  return v10();
}

void sub_1C5CA6F0C(void *__return_ptr a1@<X8>, const char *a2@<X4>, __int128 *a3@<X0>, void *a4@<X1>, void *a5@<X2>, void *a6@<X3>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  v14 = a3[1];
  v101 = *a3;
  v102 = v14;
  v103 = *(a3 + 32);
  if (v103 > 0x3Fu)
  {
    v38 = *(a3 + 32);
    v92 = *a3;
    v94 = a3[1];
    sub_1C5CB5698(&v101, v95);
    goto LABEL_11;
  }

  v108 = v101;
  v109 = v102;
  v110 = v103;
  objc_opt_self();
  v16 = [a5 userIdentity];
  v17 = OUTLINED_FUNCTION_253();
  v19 = [v17 v18];

  if (!v19)
  {
    __break(1u);
    goto LABEL_42;
  }

  sub_1C5CACA28(v19, v96);
  if (!v10)
  {
    v92 = v96[0];
    v94 = v96[1];
    v38 = v97;

LABEL_11:
    v98 = v92;
    v99 = v94;
    v100 = v38;
    if (v38 >> 6)
    {
      if (v38 >> 6 == 1)
      {
        if ((v103 & 0xC0) == 0x40)
        {
          v40 = *(&v101 + 1);
          v39 = v101;
LABEL_15:
          if (v92 == v39 && *(&v92 + 1) == v40)
          {
            goto LABEL_23;
          }

          v42 = sub_1C6017860();
LABEL_22:
          if (v42)
          {
LABEL_23:

LABEL_38:
            v87 = v99;
            *a1 = v98;
            *(a1 + 1) = v87;
            *(a1 + 32) = v100;
            return;
          }
        }
      }

      else if ((v103 & 0xC0) == 0x80)
      {
        v40 = *(&v101 + 1);
        v39 = v101;
        if ((v94 & 0x80) == 0)
        {
          if ((v102 & 0x80) == 0 && v92 == v101)
          {
            if (v94)
            {
              if (v102)
              {
                goto LABEL_23;
              }
            }

            else if (!(v102 & 1 | (*(&v92 + 1) != *(&v101 + 1))))
            {
              goto LABEL_23;
            }
          }

          goto LABEL_32;
        }

        if ((v102 & 0x80) != 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v104[0] = v92;
      v104[1] = v94;
      v105 = v38;
      if (v103 <= 0x3Fu)
      {
        v106[0] = v101;
        v106[1] = v102;
        v107 = v103;
        v42 = sub_1C5CAC220(v104, v106);
        goto LABEL_22;
      }
    }

LABEL_32:
    v111 = v10;
    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v43 = sub_1C60162D0();
    __swift_project_value_buffer(v43, qword_1EC1BE490);
    sub_1C5CB55D8();
    v44 = a4;
    v45 = sub_1C5CB3604();
    v48 = OUTLINED_FUNCTION_71_0(v45, v46, v47);
    sub_1C5C74C18(v48, v49);
    sub_1C5CB5698(&v101, v95);
    OUTLINED_FUNCTION_85_1();
    sub_1C5CB58E0(v50, v51, v52, v53, v54);
    v55 = sub_1C60162B0();
    v56 = sub_1C6016F30();

    sub_1C5CB56D0(&v101);
    OUTLINED_FUNCTION_85_1();
    sub_1C5CB587C(v57, v58, v59, v60, v61);
    if (!os_log_type_enabled(v55, v56))
    {

      goto LABEL_38;
    }

    v90 = v56;
    OUTLINED_FUNCTION_170();
    v62 = a5;
    v63 = swift_slowAlloc();
    OUTLINED_FUNCTION_97();
    v88 = swift_slowAlloc();
    OUTLINED_FUNCTION_72();
    v89 = swift_slowAlloc();
    v95[0] = v89;
    *v63 = 67109890;
    *(v63 + 4) = *(*&v44[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] + 16);
    *(v63 + 8) = 2082;
    v64 = sub_1C5CAE9DC(v89);
    sub_1C5C6AB10(v64, v65, v95);
    OUTLINED_FUNCTION_113();

    *(v63 + 10) = v44;
    *(v63 + 18) = 2114;
    v66 = objc_opt_self();
    v67 = [v62 userIdentity];
    v68 = [v66 deviceMediaLibraryWithUserIdentity_];

    if (v68)
    {
      *(v63 + 20) = v68;
      *v88 = v68;
      *(v63 + 28) = 2082;
      OUTLINED_FUNCTION_85_1();
      v74 = sub_1C5CB58E0(v69, v70, v71, v72, v73);
      sub_1C5CAE9DC(v74);
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_85_1();
      sub_1C5CB587C(v75, v76, v77, v78, v79);
      v80 = OUTLINED_FUNCTION_110_0();
      v83 = sub_1C5C6AB10(v80, v81, v82);

      *(v63 + 30) = v83;
      _os_log_impl(&dword_1C5C61000, v55, v90, "[XSQ:%{sonic:fourCC}u] fitContent(...) | swapped content [exists in library] \ncontent=%{public}s\nlibrary=%{public}@\nexistingContent=%{public}s", v63, 0x26u);
      sub_1C5CB5700(v88);
      v84 = OUTLINED_FUNCTION_28_0();
      MEMORY[0x1C6956920](v84);
      swift_arrayDestroy();
      v85 = OUTLINED_FUNCTION_47();
      MEMORY[0x1C6956920](v85);
      v86 = OUTLINED_FUNCTION_37();
      MEMORY[0x1C6956920](v86);

      goto LABEL_38;
    }

LABEL_42:
    __break(1u);
    return;
  }

  v93 = a5;

  if (qword_1EC1A9730 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v20 = sub_1C60162D0();
  __swift_project_value_buffer(v20, qword_1EC1BE490);
  sub_1C5CB55D8();
  v21 = a4;
  v22 = sub_1C5CB3604();
  v25 = OUTLINED_FUNCTION_71_0(v22, v23, v24);
  sub_1C5C74C18(v25, v26);
  sub_1C5CB5698(&v101, v95);
  v27 = v10;
  v28 = sub_1C60162B0();
  v29 = sub_1C6016F20();

  sub_1C5CB56D0(&v101);
  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_103_0();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_72();
    v95[0] = swift_slowAlloc();
    *v30 = 67109634;
    OUTLINED_FUNCTION_129(*&v21[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage]);
    *(v30 + 8) = 2082;
    v32 = sub_1C5CAE9DC(v31);
    sub_1C5C6AB10(v32, v33, v95);
    OUTLINED_FUNCTION_95();

    *(v30 + 10) = v21;
    *(v30 + 18) = 2082;
    swift_getErrorValue();
    v34 = sub_1C6017940();
    sub_1C5C6AB10(v34, v35, v95);
    OUTLINED_FUNCTION_95();

    *(v30 + 20) = v21;
    _os_log_impl(&dword_1C5C61000, v28, v29, a2, v30, 0x1Cu);
    OUTLINED_FUNCTION_77_0();
    swift_arrayDestroy();
    v36 = OUTLINED_FUNCTION_28_0();
    MEMORY[0x1C6956920](v36);
    v37 = OUTLINED_FUNCTION_19();
    MEMORY[0x1C6956920](v37);
  }

  swift_willThrow();
  *a6 = v10;
}