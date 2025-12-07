uint64_t sub_1C049F2D8(uint64_t a1, unint64_t a2)
{
  v2 = sub_1C049F344(sub_1C049F340, 0, a1, a2);
  v6 = sub_1C049F378(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1C049F378(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C04F6B40();
    if (!v9 || (v10 = v9, v11 = sub_1C049EC5C(v9, 0), v12 = sub_1C049F4D8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C04F67D0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C04F67D0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C04F6C70();
LABEL_4:

  return sub_1C04F67D0();
}

unint64_t sub_1C049F4D8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1C049F6E8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C04F6880();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C04F6C70();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1C049F6E8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1C04F6860();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1C049F6E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C04F6890();
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
    v5 = MEMORY[0x1C68DC110](15, a1 >> 16);
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

unint64_t sub_1C049F764(uint64_t a1)
{
  v2 = sub_1C04F6BD0();

  return sub_1C049F85C(a1, v2);
}

unint64_t sub_1C049F7A8(uint64_t a1)
{
  sub_1C04F6E60();
  sub_1C04F54B0();
  sub_1C04A1764(&qword_1EDE41560, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C04F6710();
  v2 = sub_1C04F6E80();

  return sub_1C049F920(a1, v2);
}

unint64_t sub_1C049F85C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1C04A0CCC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1C68DC480](v8, a1);
    sub_1C04A0D28(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C049F920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableStoreKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ~(-1 << *(v2 + 32));
  for (i = a2 & v8; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    sub_1C04A0DC8(*(v2 + 48) + *(v5 + 72) * i, v7);
    v10 = sub_1C04F5480();
    sub_1C04A0E2C(v7);
    if (v10)
    {
      break;
    }
  }

  return i;
}

void sub_1C049FA54()
{
  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_108();
  if (v4)
  {
    __break(1u);
LABEL_14:
    sub_1C04F6DD0();
    __break(1u);
    return;
  }

  v5 = v2;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE50, &qword_1C04F8558);
  OUTLINED_FUNCTION_224();
  if (sub_1C04F6CC0())
  {
    sub_1C047D36C();
    OUTLINED_FUNCTION_281();
    if (!v8)
    {
      goto LABEL_14;
    }

    v5 = v7;
  }

  if (v6)
  {
    *(*(*v1 + 56) + 8 * v5) = v0;
    OUTLINED_FUNCTION_314();
  }

  else
  {
    OUTLINED_FUNCTION_310();
    sub_1C04A10FC(v11, v12, v13, v0, v14);
    OUTLINED_FUNCTION_314();
  }
}

uint64_t sub_1C049FB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_312();
  sub_1C047D36C();
  OUTLINED_FUNCTION_108();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF10, &unk_1C04F8680);
  if ((sub_1C04F6CC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1C047D36C();
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_1C04F6DD0();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = v7;
    v18[1] = v6;
    OUTLINED_FUNCTION_6();
  }

  else
  {
    sub_1C04A0D7C(v13, a3, a4, v7, v6, v17);
    OUTLINED_FUNCTION_6();
  }
}

unint64_t sub_1C049FC7C()
{
  result = qword_1EDE41AA0;
  if (!qword_1EDE41AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41AA0);
  }

  return result;
}

uint64_t sub_1C049FCDC()
{
  OUTLINED_FUNCTION_291();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_81(v8);
  *v9 = v10;
  v9[1] = sub_1C048A184;

  return sub_1C048CA1C(v2, v3, v4, v5, v6, v7);
}

uint64_t dispatch thunk of FlightSearchResponseFetcher.flightSearchResponse(for:)(uint64_t a1)
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_168();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_81(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_137(v2);

  return v5(v4);
}

uint64_t dispatch thunk of FlightSearchResponseFetcher.subscribe(to:pushMessagesHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_168();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_81(v13);
  *v14 = v15;
  v14[1] = sub_1C04A1810;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of FlightSearchResponseFetcher.unsubscribe(channelId:)(uint64_t a1)
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_168();
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C04A1810;
  OUTLINED_FUNCTION_237();

  return v5();
}

uint64_t dispatch thunk of FlightSearchResponseFetcher.fetchUpdate(for:)(uint64_t a1)
{
  OUTLINED_FUNCTION_188();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_168();
  v16 = (v11 + *v11);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_81(v12);
  *v13 = v14;
  v13[1] = sub_1C04A1810;

  return v16(v10, v8, v6, v4, v2);
}

uint64_t dispatch thunk of FlightSearchResponseFetcher.subscribe(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_168();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_81(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_137(v2);

  return v5(v4);
}

uint64_t dispatch thunk of PegasusProxyForFlightSearch.flightSearchResponse(for:)()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_229();
  v6 = (*(v0 + 552) + **(v0 + 552));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_81(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_226(v2);

  return v6(v4);
}

uint64_t dispatch thunk of PegasusProxyForFlightSearch.subscribe(to:pushMessagesHandler:)(uint64_t a1)
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_156();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_81(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_137(v2);

  return v5(v4);
}

uint64_t dispatch thunk of PegasusProxyForFlightSearch.subscribe(to:)()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_229();
  v6 = (*(v0 + 568) + **(v0 + 568));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_81(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_226(v2);

  return v6(v4);
}

uint64_t dispatch thunk of PegasusProxyForFlightSearch.unsubscribe(channelId:)()
{
  return (*(*v0 + 576))();
}

{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_229();
  v6 = (*(v3 + 584) + **(v3 + 584));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C04A1810;

  return v6(v1, v0);
}

uint64_t dispatch thunk of PegasusProxyForFlightSearch.fetchUpdate(for:)()
{
  OUTLINED_FUNCTION_291();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v11 = (*(*v0 + 592) + **(*v0 + 592));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_81(v7);
  *v8 = v9;
  v8[1] = sub_1C04A1810;

  return v11(v6, v4, v2);
}

_OWORD *sub_1C04A0980()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_108();
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_1C04F6DD0();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
  OUTLINED_FUNCTION_224();
  if (sub_1C04F6CC0())
  {
    OUTLINED_FUNCTION_293();
    sub_1C047D36C();
    OUTLINED_FUNCTION_281();
    if (!v10)
    {
      goto LABEL_14;
    }

    v7 = v9;
  }

  v11 = *v1;
  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1((v11[7] + 32 * v7));
    OUTLINED_FUNCTION_314();

    return sub_1C04A1208(v12, v13);
  }

  else
  {
    sub_1C04A0E88(v7, v3, v2, v0, v11);
    OUTLINED_FUNCTION_314();
  }
}

void sub_1C04A0A84(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for CancellableStoreKey(0);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  sub_1C049F7A8(a2);
  OUTLINED_FUNCTION_108();
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE58, &qword_1C04F8560);
  if ((sub_1C04F6CC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1C049F7A8(a2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_1C04F6DD0();
    __break(1u);
    return;
  }

  v13 = v15;
LABEL_5:
  v17 = *v3;
  if (v14)
  {
    *(v17[7] + 8 * v13) = a1;
    OUTLINED_FUNCTION_6();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_136();
    sub_1C04A0DC8(v19, v20);
    sub_1C04A0EF4(v13, v9, a1, v17);
    OUTLINED_FUNCTION_6();
  }
}

uint64_t sub_1C04A0BD8()
{
  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_108();
  if (v4)
  {
    __break(1u);
LABEL_14:
    result = sub_1C04F6DD0();
    __break(1u);
    return result;
  }

  v5 = v2;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE88, &qword_1C04FAD80);
  OUTLINED_FUNCTION_224();
  if (sub_1C04F6CC0())
  {
    sub_1C047D36C();
    OUTLINED_FUNCTION_281();
    if (!v8)
    {
      goto LABEL_14;
    }

    v5 = v7;
  }

  if (v6)
  {
    *(*(*v1 + 56) + 8 * v5) = v0;
    OUTLINED_FUNCTION_314();
  }

  else
  {
    OUTLINED_FUNCTION_310();
    sub_1C04A10FC(v11, v12, v13, v0, v14);
    OUTLINED_FUNCTION_314();
  }
}

unint64_t sub_1C04A0D7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1C04A0DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableStoreKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C04A0E2C(uint64_t a1)
{
  v2 = type metadata accessor for CancellableStoreKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1C04A0E88(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C04A1208(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1C04A0EF4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CancellableStoreKey(0);
  result = sub_1C04A0F94(a2, v8 + *(*(v9 - 8) + 72) * a1);
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

uint64_t sub_1C04A0F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableStoreKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C04A0FF8()
{
  result = qword_1EDE41AA8;
  if (!qword_1EDE41AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41AA8);
  }

  return result;
}

uint64_t sub_1C04A104C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1C04F5460();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1C04A10FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
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

uint64_t sub_1C04A1144(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_1C04A1208(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C04A1218(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_312();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEB8, &qword_1C04F8628);
  OUTLINED_FUNCTION_2_1(v4);
  v5 = OUTLINED_FUNCTION_293();

  return sub_1C048DC08(v5, v6, a3, v7);
}

uint64_t sub_1C04A12A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C048087C(result, a2);
  }

  return result;
}

uint64_t sub_1C04A12B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_152();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C04A130C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE0, &qword_1C04F8640);
  OUTLINED_FUNCTION_66(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1C048D400(a1, v1 + v8, v10, v11);
}

uint64_t sub_1C04A13B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_152();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C04A1410(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C04A1504;

  return v5(v2 + 32);
}

uint64_t sub_1C04A1504()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v2 = v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_49();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_150();

  return v8();
}

uint64_t sub_1C04A15FC()
{
  OUTLINED_FUNCTION_172();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_81(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_235(v1);

  return v4(v3);
}

uint64_t sub_1C04A1690(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE8, &qword_1C04F8668);
  OUTLINED_FUNCTION_66(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_1C04F60B0();
  OUTLINED_FUNCTION_2_1(v8);
  v10 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1C048C5F0(a1, v1 + v5, v10);
}

uint64_t sub_1C04A1764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C04A1814()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_222();

  return sub_1C0493F90(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return sub_1C04F5210();
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return sub_1C04F5210();
}

uint64_t OUTLINED_FUNCTION_15()
{

  return sub_1C04F6740();
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v27 = *(v23 + 320);
  v28 = *(v23 + 216);
  v29 = v28[1];
  *(v25 - 144) = *v28;
  *(v25 - 128) = v29;
  *(v25 - 112) = v28[2];

  return sub_1C04CA360(v27, v25 - 144, v22, v24, a22);
}

uint64_t OUTLINED_FUNCTION_18()
{
  v2 = *(v0 + 232);

  return sub_1C04E9F48(0x6D69742D63707267, 0xEC00000074756F65, v2);
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2)
{
  *(v3 + 416) = a1;
  *(v3 + 424) = a2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_29()
{

  return sub_1C04A1144(v1, v0);
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24)
{

  return sub_1C04A1144(v24, a24);
}

uint64_t OUTLINED_FUNCTION_31()
{
}

uint64_t OUTLINED_FUNCTION_32(uint64_t result, unint64_t a2)
{
  v5 = *(v2 + 384);
  *(v3 - 112) = *(v2 + 344);
  *(v3 - 104) = v5;

  return sub_1C04A1144(result, a2);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_1C04F5210();
}

uint64_t OUTLINED_FUNCTION_34()
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), v0);

  return sub_1C04F5200();
}

uint64_t OUTLINED_FUNCTION_35_0()
{
}

uint64_t OUTLINED_FUNCTION_36()
{
}

uint64_t OUTLINED_FUNCTION_37()
{
  *(v1 + 472) = bswap32(v0);

  return sub_1C04F5380();
}

uint64_t OUTLINED_FUNCTION_38(char a1)
{
  *(v6 - 144) = v2;

  return sub_1C049FB48(v1, v5, v4, v3, a1);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v27 + 4) = v26;
  *(v27 + 12) = 2082;

  return sub_1C047D76C(a23, a26, (v28 - 144));
}

uint64_t OUTLINED_FUNCTION_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v27 + 4) = v26;
  *(v27 + 12) = 2082;

  return sub_1C047D76C(a23, a26, (v28 - 144));
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{

  return sub_1C04F5210();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_1C04F6D80();
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(v24 + 4) = v23;
  *(v24 + 12) = 2080;

  return sub_1C047D76C(a23, v25, (v26 - 144));
}

void OUTLINED_FUNCTION_56(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_t log)
{

  _os_log_impl(a1, log, a13, a4, v19, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v22 + 24) = v20;
  *(v22 + 32) = 2085;

  return sub_1C047D76C(a20, v21, (v23 - 144));
}

void OUTLINED_FUNCTION_58(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_t log, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_type_t a19)
{

  _os_log_impl(a1, log, a19, a4, v19, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v23 + 24) = v21;
  *(v23 + 32) = v20;

  return sub_1C047D76C(a20, v22, (v24 - 144));
}

uint64_t OUTLINED_FUNCTION_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v26 + 14) = a1;
  *(v26 + 22) = v25;

  return sub_1C047D76C(a25, a16, (v27 - 144));
}

uint64_t OUTLINED_FUNCTION_65(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return sub_1C04F6350();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_1C04F51F0();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_72(uint64_t a1)
{

  return sub_1C04F5210();
}

uint64_t OUTLINED_FUNCTION_73(float *a1, float a2)
{
  *a1 = a2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_74()
{
  *(v0 + 476) = 1;
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  return sub_1C048087C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v27 + 14) = a1;
  *(v27 + 22) = v25;

  return sub_1C047D76C(a25, v26, (v28 - 144));
}

uint64_t OUTLINED_FUNCTION_76()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_78()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1C68DCEB0);
}

void OUTLINED_FUNCTION_80(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_98()
{
  result = *(v1 + 440);
  *(v2 - 96) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_110()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_111()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_112()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_114()
{

  return sub_1C04F6400();
}

void OUTLINED_FUNCTION_115(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_116()
{

  return sub_1C047D76C(v1, v0, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_117(float a1)
{
  *v3 = a1;

  return sub_1C047D76C(v2, v1, (v4 - 144));
}

uint64_t OUTLINED_FUNCTION_118()
{

  return sub_1C04A1144(v1, v0);
}

void OUTLINED_FUNCTION_119()
{

  JUMPOUT(0x1C68DCEB0);
}

uint64_t OUTLINED_FUNCTION_120(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_121(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_122()
{

  return sub_1C04F5210();
}

void OUTLINED_FUNCTION_123(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_124()
{

  return sub_1C04F51A0();
}

uint64_t OUTLINED_FUNCTION_125()
{

  return sub_1C04F5330();
}

uint64_t OUTLINED_FUNCTION_126()
{

  return sub_1C04F6320();
}

uint64_t OUTLINED_FUNCTION_127()
{
  v3 = v0[1];
  *(v1 - 144) = *v0;
  *(v1 - 136) = v3;
}

uint64_t OUTLINED_FUNCTION_128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return sub_1C04F6330();
}

void OUTLINED_FUNCTION_129(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_130(float a1)
{
  *v1 = a1;

  return sub_1C047D76C(v3, v2, (v4 - 144));
}

uint64_t OUTLINED_FUNCTION_132(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1C048087C(v2, v3);
}

void *OUTLINED_FUNCTION_169()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 176), v0);
}

uint64_t OUTLINED_FUNCTION_170()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_173()
{

  return sub_1C04F5380();
}

uint64_t OUTLINED_FUNCTION_174()
{
}

uint64_t OUTLINED_FUNCTION_175(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_176()
{

  return sub_1C047D76C(v0, v1, (v2 - 144));
}

void OUTLINED_FUNCTION_177()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
  v4 = *(v0 - 128);

  sub_1C04D31F4(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
}

uint64_t OUTLINED_FUNCTION_179()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_180()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_181(float a1)
{
  *v1 = a1;

  return sub_1C047D6CC();
}

uint64_t OUTLINED_FUNCTION_182()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_183()
{
}

uint64_t OUTLINED_FUNCTION_184()
{
  *(v2 - 144) = v0;
  *(v2 - 136) = v1;
}

void OUTLINED_FUNCTION_185()
{

  JUMPOUT(0x1C68DC0D0);
}

uint64_t OUTLINED_FUNCTION_186()
{

  return sub_1C047B774();
}

uint64_t OUTLINED_FUNCTION_187()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_191(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 280);

  return sub_1C04A13B0(v6, v4 - 176, a3, a4);
}

uint64_t OUTLINED_FUNCTION_200(uint64_t a1)
{
}

void *OUTLINED_FUNCTION_219()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 176), v0);
}

uint64_t OUTLINED_FUNCTION_221(uint64_t a1, _BYTE *a2)
{
  *a2 = 9;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_223(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_233@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_234()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_239()
{

  return sub_1C047D36C();
}

uint64_t OUTLINED_FUNCTION_240(uint64_t a1)
{
}

BOOL OUTLINED_FUNCTION_243()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_244()
{
}

uint64_t OUTLINED_FUNCTION_245()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_247(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_250()
{
}

uint64_t OUTLINED_FUNCTION_251(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_253(uint64_t a1@<X8>)
{
  *(v1 + a1) = 52;

  sub_1C0483574();
}

uint64_t OUTLINED_FUNCTION_254()
{
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  *(v0 + 176) = v1;
  *(v0 + 184) = v2;

  return sub_1C04A1144(v4, v5);
}

uint64_t OUTLINED_FUNCTION_255()
{
}

uint64_t OUTLINED_FUNCTION_256(uint64_t result, unint64_t a2, __n128 a3)
{
  v3[12] = a3;
  v3[29].n128_u8[12] = 0;

  return sub_1C048087C(result, a2);
}

void OUTLINED_FUNCTION_257()
{
}

uint64_t OUTLINED_FUNCTION_258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
}

uint64_t OUTLINED_FUNCTION_259()
{
}

uint64_t OUTLINED_FUNCTION_260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
}

uint64_t OUTLINED_FUNCTION_261(char a1)
{

  return sub_1C04F51E0();
}

uint64_t OUTLINED_FUNCTION_262()
{
}

BOOL OUTLINED_FUNCTION_263()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_264()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_265(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
}

uint64_t OUTLINED_FUNCTION_266(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
}

uint64_t OUTLINED_FUNCTION_267()
{
}

uint64_t OUTLINED_FUNCTION_268()
{
}

uint64_t OUTLINED_FUNCTION_269(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v27 + 14) = a1;
}

uint64_t OUTLINED_FUNCTION_270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24)
{

  return sub_1C04A1144(v24, a24);
}

uint64_t OUTLINED_FUNCTION_271(uint64_t a1, uint64_t a2)
{

  return sub_1C047D76C(a1, a2, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_272()
{

  return sub_1C04F6400();
}

id OUTLINED_FUNCTION_273(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_274()
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_275()
{
}

BOOL OUTLINED_FUNCTION_276()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_277(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
}

uint64_t OUTLINED_FUNCTION_285(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_286()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_287()
{

  return swift_task_alloc();
}

double OUTLINED_FUNCTION_288()
{
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 96) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_296(float a1)
{
  *v1 = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_297(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_298@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_299@<X0>(uint64_t a2@<X1>, char a3@<W8>)
{
  *(a2 + 24) = a3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_300()
{
}

void OUTLINED_FUNCTION_301(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;

  sub_1C0483574();
}

uint64_t OUTLINED_FUNCTION_302(uint64_t a1)
{

  return sub_1C04F6730();
}

uint64_t OUTLINED_FUNCTION_313(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_315()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_316@<X0>(_OWORD *a2@<X8>)
{
  v5 = a2[1];
  v4 = a2[2];
  v2[1] = *a2;
  v2[2] = v5;
  v2[3] = v4;

  return sub_1C04B7354();
}

uint64_t OUTLINED_FUNCTION_317(uint64_t a1)
{

  return MEMORY[0x1EEDC4538](a1, v3, v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_318(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_319()
{

  return sub_1C0482664(0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_320(uint64_t a1, _BYTE *a2)
{
  *a2 = 9;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_321()
{
  *(v0 + 216) = v1;

  return v1;
}

void OUTLINED_FUNCTION_322(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

BOOL OUTLINED_FUNCTION_323()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_324(uint64_t a1@<X8>)
{
  *(v1 + a1) = 49;

  sub_1C0483574();
}

uint64_t AtomicValue.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AtomicValue.init(_:)(a1);
  return v2;
}

char *AtomicValue.init(_:)(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for Lock();
  swift_allocObject();
  *(v1 + 2) = Lock.init()();
  OUTLINED_FUNCTION_2();
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v4 + 96)], a1);
  return v1;
}

void AtomicValue.load()(uint64_t a1@<X8>)
{
  v3 = *v1;
  Lock.lock()();
  OUTLINED_FUNCTION_2();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v5]);
  Lock.unlock()();
}

void AtomicValue.store(_:)(uint64_t a1)
{
  v3 = *v1;
  Lock.lock()();
  OUTLINED_FUNCTION_2();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(&v1[v5], a1);
  swift_endAccess();
  Lock.unlock()();
}

void AtomicValue.store(resultOf:)(void (*a1)(_BYTE *))
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  Lock.lock()();
  OUTLINED_FUNCTION_2();
  v11 = *(v10 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v11, v3);
  v12 = v14;
  a1(v6);
  (*(v4 + 8))(v6, v3);
  if (!v12)
  {
    swift_beginAccess();
    (*(v4 + 40))(v1 + v11, v9, v3);
    swift_endAccess();
  }

  sub_1C04A3984();
}

char *AtomicValue.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t AtomicValue.__deallocating_deinit()
{
  AtomicValue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C04A3A80(uint64_t a1)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C04A3B7C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C04A3BBC(uint64_t result, int a2, int a3)
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

uint64_t sub_1C04A3C0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C04A5380(0, v1, 0);
    v2 = v9;
    do
    {
      v9 = v2;
      v4 = *(v2 + 16);
      v3 = *(v2 + 24);
      if (v4 >= v3 >> 1)
      {
        sub_1C04A5380((v3 > 1), v4 + 1, 1);
        v2 = v9;
      }

      v7 = &unk_1F3F88040;
      v8 = &off_1F3F88050;
      *(v2 + 16) = v4 + 1;
      sub_1C047E140(&v6, v2 + 40 * v4 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C04A3CE4(uint64_t a1)
{
  sub_1C04F66F0();
  v1 = sub_1C04A3C0C(&unk_1F3F86770);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C04A61B0(v3, v14);
      v5 = v15;
      v6 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v7 = (*(v6 + 8))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1(v14);
      if (v9)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C04E7C34();
          v4 = v12;
        }

        v10 = *(v4 + 16);
        if (v10 >= *(v4 + 24) >> 1)
        {
          sub_1C04E7C34();
          v4 = v13;
        }

        *(v4 + 16) = v10 + 1;
        v11 = v4 + 16 * v10;
        *(v11 + 32) = v7;
        *(v11 + 40) = v9;
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  sub_1C04A3E60(v4);
  OUTLINED_FUNCTION_2_4();
}

uint64_t sub_1C04A3E60(uint64_t a1)
{
  result = MEMORY[0x1C68DC270](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1C04D4C24(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04A3F20(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v84[0] = 38;
  v84[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](a1);
  v74[2] = v84;

  v4 = sub_1C04A4FE4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C04A6214, v74, a1, a2);
  v5 = 0;
  v6 = *(v4 + 16);
  v7 = v4 + 32;
  v75 = MEMORY[0x1E69E7CC8];
  v76 = v4 + 32;
  v77 = v6;
  v78 = v4;
  while (1)
  {
    if (v5 == v6)
    {

      return v75;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v8 = (v7 + 32 * v5);
    v9 = *v8;
    ++v5;
    v10 = v8[1] >> 14;
    if (v10 != *v8 >> 14)
    {
      v81 = v5;
      v11 = v8[3];
      swift_bridgeObjectRetain_n();
      v12 = v9;
      v13 = MEMORY[0x1E69E7CC0];
      v83 = v11;
LABEL_7:
      v82 = v13;
      for (i = v12; ; i = sub_1C04F6B30())
      {
        v15 = i >> 14;
        v16 = v12 >> 14;
        if (i >> 14 == v10)
        {
          break;
        }

        if (sub_1C04F6B50() == 61 && v17 == 0xE100000000000000)
        {

LABEL_16:
          if (v16 == v15)
          {
            v13 = v82;
          }

          else
          {
            if (v15 < v16)
            {
              goto LABEL_48;
            }

            v20 = sub_1C04F6B60();
            v22 = v21;
            v24 = v23;
            v79 = v25;
            v13 = v82;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v80 = v24;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C04E7DE4();
              v13 = v30;
            }

            v27 = v13[2];
            if (v27 >= v13[3] >> 1)
            {
              sub_1C04E7DE4();
              v13 = v31;
            }

            v13[2] = v27 + 1;
            v28 = &v13[4 * v27];
            v28[4] = v20;
            v28[5] = v22;
            v29 = v79;
            v28[6] = v80;
            v28[7] = v29;
          }

          v12 = sub_1C04F6B30();
          goto LABEL_7;
        }

        v19 = sub_1C04F6D80();

        if (v19)
        {
          goto LABEL_16;
        }
      }

      if (v16 == v10)
      {

        v32 = v82;
        v33 = v82[2];
      }

      else
      {
        if (v10 < v16)
        {
          goto LABEL_49;
        }

        v34 = sub_1C04F6B60();
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v32 = v82;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C04E7DE4();
          v32 = v71;
        }

        v41 = v32[2];
        v33 = v41 + 1;
        if (v41 >= v32[3] >> 1)
        {
          sub_1C04E7DE4();
          v32 = v72;
        }

        v32[2] = v33;
        v42 = &v32[4 * v41];
        v42[4] = v34;
        v42[5] = v36;
        v42[6] = v38;
        v42[7] = v40;
      }

      if (v33 == 2)
      {
        v43 = v32[4];
        v44 = v32[5];
        v45 = v32[6];
        v46 = v32[7];

        v47 = MEMORY[0x1C68DC060](v43, v44, v45, v46);
        v49 = v48;

        if (v32[2] < 2uLL)
        {
          goto LABEL_50;
        }

        v50 = v32[8];
        v51 = v32[9];
        v52 = v32[10];
        v53 = v32[11];

        v54 = MEMORY[0x1C68DC060](v50, v51, v52, v53);
        v56 = v55;

        v57 = v75;
        swift_isUniquelyReferenced_nonNull_native();
        v84[0] = v57;
        v58 = sub_1C047D36C();
        if (__OFADD__(*(v57 + 16), (v59 & 1) == 0))
        {
          goto LABEL_51;
        }

        v60 = v58;
        v61 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF10, &unk_1C04F8680);
        if (sub_1C04F6CC0())
        {
          v62 = sub_1C047D36C();
          if ((v61 & 1) != (v63 & 1))
          {
            goto LABEL_53;
          }

          v60 = v62;
        }

        v64 = v84[0];
        v75 = v84[0];
        if (v61)
        {
          v65 = (*(v84[0] + 56) + 16 * v60);
          *v65 = v54;
          v65[1] = v56;
        }

        else
        {
          *(v84[0] + 8 * (v60 >> 6) + 64) |= 1 << v60;
          v66 = (v64[6] + 16 * v60);
          *v66 = v47;
          v66[1] = v49;
          v67 = (v64[7] + 16 * v60);
          *v67 = v54;
          v67[1] = v56;
          v68 = v64[2];
          v69 = __OFADD__(v68, 1);
          v70 = v68 + 1;
          if (v69)
          {
            goto LABEL_52;
          }

          v64[2] = v70;
        }
      }

      else
      {
      }

      v6 = v77;
      v4 = v78;
      v5 = v81;
      v7 = v76;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_1C04F6DD0();
  __break(1u);
  return result;
}

uint64_t sub_1C04A4478(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v8 = a2;
    v9 = result;
    v10 = *a5;
    v70 = a5[1];
    v71 = a5;
    v11 = sub_1C04A3F20(v10, v70);
    if (!v11)
    {
      v11 = sub_1C04F66F0();
    }

    v12 = v11;
    v13 = sub_1C04E9F48(a3, a4, v11);
    v73 = 44;
    v74 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v13);
    v65[2] = &v73;
    v16 = sub_1C04A4FE4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C04A6118, v65, v14, v15);
    v17 = *(v16 + 16);
    v69 = 0;
    if (v17)
    {
      v67 = v9;
      v68 = v12;
      v72 = a3;
      v66 = a4;
      v73 = MEMORY[0x1E69E7CC0];
      sub_1C04A53A0(0, v17, 0);
      v18 = v73;
      v19 = (v16 + 56);
      do
      {
        v20 = *(v19 - 3);
        v21 = *(v19 - 2);
        v22 = *(v19 - 1);
        v23 = *v19;

        v24 = MEMORY[0x1C68DC060](v20, v21, v22, v23);
        v26 = v25;

        v73 = v18;
        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1C04A53A0((v27 > 1), v28 + 1, 1);
          v18 = v73;
        }

        *(v18 + 16) = v28 + 1;
        v29 = v18 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v19 += 4;
        --v17;
      }

      while (v17);

      a4 = v66;
      v9 = v67;
      a3 = v72;
      v12 = v68;
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    v30 = (v18 + 40);
    v31 = *(v18 + 16) + 1;
    while (--v31)
    {
      if (*(v30 - 1) != v9 || *v30 != v8)
      {
        v30 += 2;
        if ((sub_1C04F6D80() & 1) == 0)
        {
          continue;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_42:
      sub_1C04E7C34();
      v18 = v63;
    }

    v33 = *(v18 + 16);
    if (v33 >= *(v18 + 24) >> 1)
    {
      sub_1C04E7C34();
      v18 = v64;
    }

    *(v18 + 16) = v33 + 1;
    v34 = v18 + 16 * v33;
    *(v34 + 32) = v9;
    *(v34 + 40) = v8;
    v73 = v18;

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF20, &qword_1C04F9210);
    v67 = sub_1C04A6138();
    v68 = v35;
    v36 = sub_1C04F6720();
    v38 = v37;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v12;
    sub_1C049FB48(v36, v38, a3, a4, isUniquelyReferenced_nonNull_native);
    v9 = v73;
    a4 = v73 + 64;
    v40 = 1 << *(v73 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    a3 = v41 & *(v73 + 64);
    v42 = (v40 + 63) >> 6;

    v8 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    v72 = v9;
    if (a3)
    {
      while (1)
      {
        v44 = v43;
LABEL_32:
        v46 = (v8 << 10) | (16 * __clz(__rbit64(a3)));
        v47 = (*(v9 + 48) + v46);
        v48 = v47[1];
        v49 = (*(v9 + 56) + v46);
        v50 = *v49;
        v51 = v49[1];
        v73 = *v47;
        v74 = v48;
        swift_bridgeObjectRetain_n();

        MEMORY[0x1C68DC0D0](61, 0xE100000000000000);
        MEMORY[0x1C68DC0D0](v50, v51);

        v52 = v73;
        v53 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C04E7C34();
          v44 = v56;
        }

        v12 = *(v44 + 16);
        v54 = v44;
        if (v12 >= *(v44 + 24) >> 1)
        {
          sub_1C04E7C34();
          v54 = v57;
        }

        a3 &= a3 - 1;
        *(v54 + 16) = v12 + 1;
        v43 = v54;
        v55 = v54 + 16 * v12;
        *(v55 + 32) = v52;
        *(v55 + 40) = v53;
        v9 = v72;
        if (!a3)
        {
          goto LABEL_28;
        }
      }
    }

    while (1)
    {
LABEL_28:
      v45 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v45 >= v42)
      {
        break;
      }

      a3 = *(a4 + 8 * v45);
      ++v8;
      if (a3)
      {
        v44 = v43;
        v8 = v45;
        goto LABEL_32;
      }
    }

    v73 = v43;

    v58 = v69;
    sub_1C04A55D8(&v73);
    if (v58)
    {

      __break(1u);
    }

    else
    {

      v59 = sub_1C04F6720();
      v61 = v60;

      v62 = v71;
      *v71 = v59;
      v62[1] = v61;
    }
  }

  return result;
}

void sub_1C04A49C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C04A3F20(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = v3 + 64;
    OUTLINED_FUNCTION_0_3();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    v11 = 0;
    v32 = v10;
    v33 = v5;

    v35 = v2;
    if (v8)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_3:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v12 >= v10)
      {

        OUTLINED_FUNCTION_2_4();

        return;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
    }

    while (!v8);
    v11 = v12;
LABEL_7:
    while (1)
    {
      v13 = (v11 << 10) | (16 * __clz(__rbit64(v8)));
      v14 = (*(v4 + 48) + v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = (*(v4 + 56) + v13);
      v18 = v17[1];
      v36 = *v17;
      swift_bridgeObjectRetain_n();

      swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v2 + 8);
      v19 = sub_1C047D36C();
      if (__OFADD__(v37[2], (v20 & 1) == 0))
      {
        break;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF10, &unk_1C04F8680);
      if (sub_1C04F6CC0())
      {
        v23 = sub_1C047D36C();
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_24;
        }

        v21 = v23;
      }

      if (v22)
      {
        v25 = (v37[7] + 16 * v21);
        *v25 = v36;
        v25[1] = v18;
      }

      else
      {
        v37[(v21 >> 6) + 8] |= 1 << v21;
        v26 = (v37[6] + 16 * v21);
        *v26 = v16;
        v26[1] = v15;
        v27 = (v37[7] + 16 * v21);
        *v27 = v36;
        v27[1] = v18;
        v28 = v37[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_23;
        }

        v37[2] = v30;
      }

      v8 &= v8 - 1;

      v4 = v34;
      *(v35 + 8) = v37;
      v2 = v35;
      v10 = v32;
      v5 = v33;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_1C04F6DD0();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
  }
}

uint64_t sub_1C04A4C18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  for (i = 0; v10; result = )
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (*(a1 + 48) + ((v14 << 10) | (16 * v15)));
    v17 = *v16;
    v18 = v16[1];

    sub_1C04A4478(v17, v18, 0x636967616DuLL, 0xE500000000000000, a5);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04A4D5C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C04F6740();
  v6 = [a1 stringForKey_];

  if (v6)
  {
    v7 = sub_1C04F6750();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v37[0] = v7;
  v37[1] = v9;
  OUTLINED_FUNCTION_0_3();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;

  v16 = 0;
  if (v12)
  {
    while (1)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v19 = (v17 << 10) | (16 * v18);
      v20 = (*(a2 + 48) + v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = (*(a2 + 56) + v19);
      v24 = *v23;
      v25 = v23[1];

      sub_1C04A4478(v24, v25, v21, v22, v37);

      if (!v12)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(a2 + 64 + 8 * v17);
    ++v16;
    if (v12)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  result = OUTLINED_FUNCTION_1_4(v26, v27, v28, v29, v30, v31, v32, v33, v35, a3, v37[0]);
  if (!v34)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1C04A4F08(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C04A4D5C(a1, a2, a3);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v7)
  {
    v9 = v7;
  }

  v24[0] = v8;
  v24[1] = v9;
  v10 = a1;

  v12 = sub_1C04A4C18(v11, v10, a2, a3, v24);
  result = OUTLINED_FUNCTION_1_4(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24[0]);
  if (!v21)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1C04A4FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C04F6D80() & 1;
  }
}

uint64_t sub_1C04A4FE4(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v50 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v14 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v15 = HIBYTE(a6) & 0xF) : (v15 = a5 & 0xFFFFFFFFFFFFLL), !v15))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v14 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1C04F68D0();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    sub_1C04E7DE4();
    v16 = v33;
    v9 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < v34 >> 1)
    {
LABEL_38:
      *(v16 + 16) = v10;
      v38 = (v16 + 32 * v9);
      v38[4] = v7;
      v38[5] = v11;
      v38[6] = v12;
      v38[7] = v13;
      return v16;
    }

LABEL_41:
    sub_1C04E7DE4();
    v16 = v39;
    goto LABEL_38;
  }

  v7 = a4;
  v16 = 4 * v15;
  v48 = MEMORY[0x1E69E7CC0];
  v17 = 15;
  while (1)
  {
    v46 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v16)
      {
        v17 = v46;
        goto LABEL_30;
      }

      v18 = sub_1C04F68B0();
      v12 = v19;
      v49[0] = v18;
      v49[1] = v19;
      v20 = v50(v49);
      if (v8)
      {

        return v16;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_1C04F6800();
    }

    v23 = (v46 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v46 >> 14)
    {
      break;
    }

    v47 = sub_1C04F68D0();
    v42 = v25;
    v43 = v24;
    v41 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C04E7DE4();
      v48 = v28;
    }

    v13 = *(v48 + 16);
    v12 = v13 + 1;
    if (v13 >= *(v48 + 24) >> 1)
    {
      sub_1C04E7DE4();
      v48 = v29;
    }

    *(v48 + 16) = v12;
    v27 = (v48 + 32 * v13);
    v27[4] = v47;
    v27[5] = v43;
    v27[6] = v42;
    v27[7] = v41;
LABEL_20:
    v17 = sub_1C04F6800();
    if ((v23 & 1) == 0 && *(v48 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v48;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_1C04F68D0();
        v11 = v35;
        v12 = v36;
        v13 = v37;

        v16 = v48;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v16 + 16);
          v34 = *(v16 + 24);
          goto LABEL_37;
        }
      }

      sub_1C04E7DE4();
      v16 = v40;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C04A5380(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C04A53C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C04A53A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C04A54D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C04A53C0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF38, &qword_1C04F8700);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C04E81C8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF40, &qword_1C04F8708);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C04A54D8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF30, &qword_1C04FADA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1C04E81F0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04A55D8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C04A619C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1C04A5644(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1C04A5644(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C04F6D50();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C04F6920();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C04A5800(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C04A5738(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C04A5738(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1C04F6D80();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C04A5800(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1C04F6D80();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1C04F6D80()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1C04F6D80() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C04E7ECC();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C04E7ECC();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C04A5E34((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_1C04A5D08(&v91, *result, a3);
LABEL_102:
}

uint64_t sub_1C04A5D08(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C04A5FD8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C04A5E34((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C04A5E34(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C04E81F0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1C04F6D80() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1C04E81F0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1C04F6D80() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_1C04A5FEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF28, &qword_1C04F86F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_1C04A6138()
{
  result = qword_1EDE44048;
  if (!qword_1EDE44048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE0CF20, &qword_1C04F9210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44048);
  }

  return result;
}

uint64_t sub_1C04A61B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C04A625C(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C04A6290@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C04A625C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C04A62D4()
{
  result = qword_1EBE0CF48;
  if (!qword_1EBE0CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0CF48);
  }

  return result;
}

uint64_t sub_1C04A6328()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE445B8);
  __swift_project_value_buffer(v0, qword_1EDE445B8);
  return sub_1C04F63F0();
}

uint64_t sub_1C04A63E0(unsigned __int8 a1)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](a1);
  return sub_1C04F6E80();
}

uint64_t sub_1C04A6444(uint64_t a1)
{
  v2 = *v1;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v2);
  return sub_1C04F6E80();
}

id sub_1C04A6488()
{
  result = [objc_allocWithZone(type metadata accessor for ParsecdConnection()) init];
  qword_1EDE44DD0 = result;
  return result;
}

void *sub_1C04A64B8()
{
  OUTLINED_FUNCTION_24_0();
  v0 = sub_1C04D3130();

  return v0;
}

uint64_t sub_1C04A64F4(uint64_t a1)
{
  OUTLINED_FUNCTION_24_0();
  sub_1C04D3274();
}

uint64_t sub_1C04A653C()
{
  OUTLINED_FUNCTION_24_0();
  v0 = sub_1C047BBA0();

  return v0 & 1;
}

uint64_t sub_1C04A6578(char a1)
{
  OUTLINED_FUNCTION_24_0();
  sub_1C047AC48(a1);
}

void sub_1C04A65C0(void *a2@<X8>)
{
  v3 = sub_1C04A64B8();
  if (v3)
  {
    v4 = v3;
    if ((sub_1C04A653C() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (qword_1EDE446E0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C04F6400();
  __swift_project_value_buffer(v5, qword_1EDE445B8);
  v6 = sub_1C04F63E0();
  v7 = sub_1C04F6A40();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C0479000, v6, v7, "creating new ParsecdConnection", v8, 2u);
    MEMORY[0x1C68DCEB0](v8, -1, -1);
  }

  sub_1C04A9000();
  v9 = sub_1C04A68E0(0xD000000000000011, 0x80000001C04FCF20, 0);
  sub_1C04A6578(0);
  v10 = [objc_opt_self() interfaceWithProtocol_];
  [v9 setRemoteObjectInterface_];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_1C04A945C;
  v21 = v11;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1C047C214;
  v19 = &block_descriptor_16;
  v12 = _Block_copy(&v16);

  [v9 setInvalidationHandler_];
  _Block_release(v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_1C04A9044;
  v21 = v13;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1C047C214;
  v19 = &block_descriptor_20;
  v14 = _Block_copy(&v16);

  [v9 setInterruptionHandler_];
  _Block_release(v14);
  [v9 resume];
  v15 = v9;
  sub_1C04A64F4(v9);
  v4 = sub_1C04A64B8();

LABEL_9:
  *a2 = v4;
}

id sub_1C04A68E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C04F6740();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_1C04A695C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1C04A6578(1);
  }
}

id sub_1C04A69B4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker;
  type metadata accessor for Locker();
  OUTLINED_FUNCTION_6_3();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *(v3 + 16) = v4;
  *v4 = 0;
  *&v1[v2] = v3;
  v5 = OBJC_IVAR____TtC10PegasusKit17ParsecdConnection___xpcConnection;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF80, &qword_1C04F8808);
  OUTLINED_FUNCTION_7_5();
  swift_allocObject();
  *&v1[v5] = sub_1C04D3018(0);
  v6 = OBJC_IVAR____TtC10PegasusKit17ParsecdConnection___xpcConnectionInvalid;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D200, &unk_1C04F8810);
  OUTLINED_FUNCTION_7_5();
  swift_allocObject();
  *&v1[v6] = sub_1C04D271C(0);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ParsecdConnection();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C04A6ABC()
{
  v1 = v0;

  sub_1C04BD4AC(v2, v1);

  v4.receiver = v1;
  v4.super_class = type metadata accessor for ParsecdConnection();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C04A6BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*&v3[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v7 = v3;
  v8 = OUTLINED_FUNCTION_11_1();
  os_unfair_lock_lock(v8);
  sub_1C04A65C0(aBlock);
  os_unfair_lock_unlock(v6);

  v9 = aBlock[0];
  if (aBlock[0])
  {
    OUTLINED_FUNCTION_6_3();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_12_0(v10);
    OUTLINED_FUNCTION_7_5();
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_23_0(v11);

    sub_1C04A6F84(sub_1C04A924C, v4, sub_1C04A925C, a1);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_16_0(v12, v13, v14);
  if (v20)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if (OUTLINED_FUNCTION_3_4(v15))
    {
      OUTLINED_FUNCTION_4_3();
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C04A70D0;
      v20 = &block_descriptor_70;
      v16 = _Block_copy(aBlock);

      [v9 getBagDataWithReply_];
      _Block_release(v16);
      swift_unknownObjectRelease();
    }

    v17 = v21;
  }

  else
  {
    sub_1C04A8E9C(v21);
    v17 = aBlock;
  }

  return sub_1C04A8E9C(v17);
}

void sub_1C04A6DB8(uint64_t a1, void (*a2)(void, unint64_t, void *), uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a4)
    {
      sub_1C04A8FAC();
      v9 = swift_allocError();
      *v10 = 1;
      a2(0, 0xF000000000000000, v9);
    }

    else
    {
      if (qword_1EDE446E0 != -1)
      {
        swift_once();
      }

      v13 = sub_1C04F6400();
      __swift_project_value_buffer(v13, qword_1EDE445B8);
      v14 = sub_1C04F63E0();
      v15 = sub_1C04F6A10();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1C0479000, v14, v15, "retrying bag data fetch once more on interruption", v16, 2u);
        MEMORY[0x1C68DCEB0](v16, -1, -1);
      }

      sub_1C04A6BCC(1, a2, a3);
    }
  }

  else
  {
    sub_1C04A8FAC();
    v11 = swift_allocError();
    *v12 = 0;
    a2(0, 0xF000000000000000, v11);
  }
}

uint64_t sub_1C04A6F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_6_3();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = a2;
  v14[4] = sub_1C04A8F9C;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1C04A8DDC;
  v14[3] = &block_descriptor;
  v11 = _Block_copy(v14);

  v12 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v11);
  sub_1C04F6BB0();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C04A717C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*&v5[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v12 = v5;
  os_unfair_lock_lock(v11);
  sub_1C04A65C0(aBlock);
  os_unfair_lock_unlock(v11);

  v13 = aBlock[0];
  if (aBlock[0])
  {
    OUTLINED_FUNCTION_6_3();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a4;
    *(v15 + 32) = a5;
    *(v15 + 40) = a3 & 1;
    *(v15 + 48) = a1;
    *(v15 + 56) = a2;
    OUTLINED_FUNCTION_7_5();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    swift_retain_n();

    sub_1C04A6F84(sub_1C04A91C8, v15, sub_1C04A91DC, v16);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_16_0(v17, v18, v19);
  if (v26)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if (OUTLINED_FUNCTION_3_4(v20))
    {
      v21 = v29;
      v27 = a4;
      v28 = a5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C04A70D0;
      v26 = &block_descriptor_60;
      v22 = _Block_copy(aBlock);

      [v21 getQueryContextDataForClient:a1 activity:a2 reply:v22];
      _Block_release(v22);
      swift_unknownObjectRelease();
    }

    v23 = v30;
  }

  else
  {
    sub_1C04A8E9C(v30);
    v23 = aBlock;
  }

  return sub_1C04A8E9C(v23);
}

void sub_1C04A73C4(uint64_t a1, void (*a2)(void, unint64_t, void *), uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a4)
    {
      sub_1C04A8FAC();
      v13 = swift_allocError();
      *v14 = 1;
      a2(0, 0xF000000000000000, v13);
    }

    else
    {
      if (qword_1EDE446E0 != -1)
      {
        swift_once();
      }

      v17 = sub_1C04F6400();
      __swift_project_value_buffer(v17, qword_1EDE445B8);
      v18 = sub_1C04F63E0();
      v19 = sub_1C04F6A10();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1C0479000, v18, v19, "retrying query context fetch once more on interruption", v20, 2u);
        MEMORY[0x1C68DCEB0](v20, -1, -1);
      }

      sub_1C04A717C(a5, a6, 1, a2, a3);
    }
  }

  else
  {
    sub_1C04A8FAC();
    v15 = swift_allocError();
    *v16 = 0;
    a2(0, 0xF000000000000000, v15);
  }
}

uint64_t sub_1C04A75A8(void *a1, uint64_t (*a2)(void, unint64_t, void *), uint64_t a3, const char *a4)
{
  if (qword_1EDE446E0 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EDE446E0);
  }

  v7 = sub_1C04F6400();
  __swift_project_value_buffer(v7, qword_1EDE445B8);
  v8 = a1;
  v9 = sub_1C04F63E0();
  v10 = sub_1C04F6A20();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v14 = sub_1C04F6790();
    v16 = sub_1C047D76C(v14, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1C0479000, v9, v10, a4, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  return a2(0, 0xF000000000000000, a1);
}

uint64_t sub_1C04A772C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*&v3[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v7 = v3;
  v8 = OUTLINED_FUNCTION_11_1();
  os_unfair_lock_lock(v8);
  sub_1C04A65C0(aBlock);
  os_unfair_lock_unlock(v6);

  v9 = aBlock[0];
  if (aBlock[0])
  {
    OUTLINED_FUNCTION_6_3();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_12_0(v10);
    OUTLINED_FUNCTION_7_5();
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_23_0(v11);

    sub_1C04A6F84(sub_1C04A91B0, v4, sub_1C04A91C0, a1);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_16_0(v12, v13, v14);
  if (v20)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if (OUTLINED_FUNCTION_3_4(v15))
    {
      OUTLINED_FUNCTION_4_3();
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C04A7C7C;
      v20 = &block_descriptor_50;
      v16 = _Block_copy(aBlock);

      [v9 getIsDeviceSetupCompleteWithReply_];
      _Block_release(v16);
      swift_unknownObjectRelease();
    }

    v17 = v21;
  }

  else
  {
    sub_1C04A8E9C(v21);
    v17 = aBlock;
  }

  return sub_1C04A8E9C(v17);
}

void sub_1C04A7918(uint64_t a1, void (*a2)(void, void *), uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a4)
    {
      sub_1C04A8FAC();
      v9 = swift_allocError();
      *v10 = 1;
      a2(0, v9);
    }

    else
    {
      if (qword_1EDE446E0 != -1)
      {
        swift_once();
      }

      v13 = sub_1C04F6400();
      __swift_project_value_buffer(v13, qword_1EDE445B8);
      v14 = sub_1C04F63E0();
      v15 = sub_1C04F6A10();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1C0479000, v14, v15, "retrying setup state fetch once more on interruption", v16, 2u);
        MEMORY[0x1C68DCEB0](v16, -1, -1);
      }

      sub_1C04A772C(1, a2, a3);
    }
  }

  else
  {
    sub_1C04A8FAC();
    v11 = swift_allocError();
    *v12 = 0;
    a2(0, v11);
  }
}

uint64_t sub_1C04A7ADC(void *a1, uint64_t (*a2)(void, void *))
{
  if (qword_1EDE446E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C04F6400();
  __swift_project_value_buffer(v4, qword_1EDE445B8);
  v5 = a1;
  v6 = sub_1C04F63E0();
  v7 = sub_1C04F6A20();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v11 = sub_1C04F6790();
    v13 = sub_1C047D76C(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C0479000, v6, v7, "fetchIsDeviceSetupCompleteFromDaemon failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1C68DCEB0](v9, -1, -1);
    MEMORY[0x1C68DCEB0](v8, -1, -1);
  }

  return a2(0, a1);
}

void sub_1C04A7C7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1C04A7CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t aBlock, uint64_t a11, uint64_t a12, void *a13, uint64_t (*a14)(), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_0();
  a31 = v36;
  a32 = v37;
  OUTLINED_FUNCTION_1_5();
  v38 = *(*&v33[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v39 = v33;
  os_unfair_lock_lock(v38);
  sub_1C04A65C0(&aBlock);
  os_unfair_lock_unlock(v38);

  v40 = aBlock;
  if (aBlock)
  {
    OUTLINED_FUNCTION_6_3();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_13_1(v41);
    OUTLINED_FUNCTION_18_0();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_2_5(v42);

    OUTLINED_FUNCTION_17_0(sub_1C04A9134, v43, sub_1C04A7EE0);
  }

  else
  {
    v46 = OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_16_0(v44, v45, v46);
  if (a13)
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if (OUTLINED_FUNCTION_3_4(v47))
    {
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_11_1();
      v48 = sub_1C04F6740();
      OUTLINED_FUNCTION_7_5();
      v49 = swift_allocObject();
      *(v49 + 16) = v34;
      *(v49 + 24) = v32;
      a14 = sub_1C04A90C0;
      a15 = v49;
      aBlock = MEMORY[0x1E69E9820];
      OUTLINED_FUNCTION_5_3();
      a12 = v50;
      a13 = &block_descriptor_43;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_14_0();

      OUTLINED_FUNCTION_8_1(v51, sel_subscribeToPushNotificationsWithChannelId_topic_completionHandler_);
      _Block_release(v34);
      swift_unknownObjectRelease();
    }

    p_aBlock = &a17;
  }

  else
  {
    sub_1C04A8E9C(&a17);
    p_aBlock = &aBlock;
  }

  sub_1C04A8E9C(p_aBlock);
  OUTLINED_FUNCTION_21_0();
}

void sub_1C04A7EEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1C04A7F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t aBlock, uint64_t a11, uint64_t a12, void *a13, uint64_t (*a14)(), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_0();
  a31 = v36;
  a32 = v37;
  OUTLINED_FUNCTION_1_5();
  v38 = *(*&v33[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v39 = v33;
  os_unfair_lock_lock(v38);
  sub_1C04A65C0(&aBlock);
  os_unfair_lock_unlock(v38);

  v40 = aBlock;
  if (aBlock)
  {
    OUTLINED_FUNCTION_6_3();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_13_1(v41);
    OUTLINED_FUNCTION_18_0();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_2_5(v42);

    OUTLINED_FUNCTION_17_0(sub_1C04A9090, v43, sub_1C04A83BC);
  }

  else
  {
    v46 = OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_16_0(v44, v45, v46);
  if (a13)
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if (OUTLINED_FUNCTION_3_4(v47))
    {
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_11_1();
      v48 = sub_1C04F6740();
      OUTLINED_FUNCTION_7_5();
      v49 = swift_allocObject();
      *(v49 + 16) = v34;
      *(v49 + 24) = v32;
      a14 = sub_1C04A9480;
      a15 = v49;
      aBlock = MEMORY[0x1E69E9820];
      OUTLINED_FUNCTION_5_3();
      a12 = v50;
      a13 = &block_descriptor_33;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_14_0();

      OUTLINED_FUNCTION_8_1(v51, sel_unsubscribeFromPushNotificationsWithChannelId_topic_completionHandler_);
      _Block_release(v34);
      swift_unknownObjectRelease();
    }

    p_aBlock = &a17;
  }

  else
  {
    sub_1C04A8E9C(&a17);
    p_aBlock = &aBlock;
  }

  sub_1C04A8E9C(p_aBlock);
  OUTLINED_FUNCTION_21_0();
}

void sub_1C04A8144(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, const char *a10, void (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), const char *a12)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      if (qword_1EDE446E0 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EDE446E0);
      }

      v21 = sub_1C04F6400();
      __swift_project_value_buffer(v21, qword_1EDE445B8);
      v22 = sub_1C04F63E0();
      v23 = sub_1C04F6A20();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_25_0();
        *v24 = 0;
        _os_log_impl(&dword_1C0479000, v22, v23, a9, v24, 2u);
        OUTLINED_FUNCTION_10_0();
      }
    }

    else
    {
      if (qword_1EDE446E0 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EDE446E0);
      }

      v28 = sub_1C04F6400();
      __swift_project_value_buffer(v28, qword_1EDE445B8);
      v29 = sub_1C04F63E0();
      v30 = sub_1C04F6A10();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_25_0();
        *v31 = 0;
        _os_log_impl(&dword_1C0479000, v29, v30, a10, v31, 2u);
        OUTLINED_FUNCTION_10_0();
      }

      a11(1, a3, a4, a5, a6, a7, a8);
    }
  }

  else
  {
    if (qword_1EDE446E0 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EDE446E0);
    }

    v25 = sub_1C04F6400();
    __swift_project_value_buffer(v25, qword_1EDE445B8);
    v20 = sub_1C04F63E0();
    v26 = sub_1C04F6A20();
    if (os_log_type_enabled(v20, v26))
    {
      v27 = OUTLINED_FUNCTION_25_0();
      *v27 = 0;
      _os_log_impl(&dword_1C0479000, v20, v26, a12, v27, 2u);
      OUTLINED_FUNCTION_10_0();
    }
  }
}

void sub_1C04A83C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t aBlock, uint64_t a11, uint64_t (*a12)(), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_0();
  a31 = v36;
  a32 = v37;
  OUTLINED_FUNCTION_1_5();
  v38 = *(*&v33[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v39 = v33;
  os_unfair_lock_lock(v38);
  sub_1C04A65C0(&aBlock);
  os_unfair_lock_unlock(v38);

  v40 = aBlock;
  if (aBlock)
  {
    OUTLINED_FUNCTION_6_3();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_13_1(v41);
    OUTLINED_FUNCTION_18_0();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_2_5(v42);

    OUTLINED_FUNCTION_17_0(sub_1C04A9060, v43, sub_1C04A85A0);
  }

  else
  {
    v46 = OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_16_0(v44, v45, v46);
  if (a13)
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if (OUTLINED_FUNCTION_3_4(v47))
    {
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_11_1();
      v48 = sub_1C04F6740();
      a14 = v34;
      a15 = v32;
      aBlock = MEMORY[0x1E69E9820];
      a11 = 1107296256;
      a12 = sub_1C04A70D0;
      a13 = &block_descriptor_23;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_14_0();

      OUTLINED_FUNCTION_8_1(v49, sel_fetchLatestPushUpdateWithChannel_topic_completionHandler_);
      _Block_release(v34);
      swift_unknownObjectRelease();
    }

    p_aBlock = &a17;
  }

  else
  {
    sub_1C04A8E9C(&a17);
    p_aBlock = &aBlock;
  }

  sub_1C04A8E9C(p_aBlock);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_1C04A85AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v37 = a4;
  v8 = sub_1C04F55B0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*&v4[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v16 = v4;
  os_unfair_lock_lock(v15);
  sub_1C04A65C0(v41);
  os_unfair_lock_unlock(v15);

  v17 = *&v41[0];
  if (*&v41[0])
  {
    OUTLINED_FUNCTION_6_3();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v10 + 16))(&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v36 = a1;
    v20 = a2;
    v21 = a3;
    v22 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v37 & 1;
    *(v23 + 24) = v18;
    (*(v10 + 32))(v23 + v19, v14, v8);
    v24 = (v23 + v22);
    *v24 = v20;
    v24[1] = v21;

    sub_1C04A6F84(sub_1C04A8F04, v23, sub_1C04A8AB0, 0);
  }

  else
  {
    memset(v41, 0, sizeof(v41));
  }

  sub_1C04A8E44();
  sub_1C04F6350();
  sub_1C04820C0(v41, v39);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C04A8E9C(v41);
      v34 = OUTLINED_FUNCTION_20_0();
      return sub_1C04A1144(v34, v35);
    }

    v25 = v38;
    OUTLINED_FUNCTION_20_0();
    v26 = sub_1C04F53B0();
    v27 = sub_1C04F6740();
    [v25 reportPegasusFeedbackWithPayloadData:v26 forUseragent:v27];
    v28 = OUTLINED_FUNCTION_20_0();
    sub_1C04A1144(v28, v29);
    swift_unknownObjectRelease();

    v30 = v41;
  }

  else
  {
    sub_1C04A8E9C(v41);
    v32 = OUTLINED_FUNCTION_20_0();
    sub_1C04A1144(v32, v33);
    v30 = v39;
  }

  return sub_1C04A8E9C(v30);
}

void sub_1C04A8968(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      if (qword_1EDE446E0 != -1)
      {
        swift_once();
      }

      v10 = sub_1C04F6400();
      __swift_project_value_buffer(v10, qword_1EDE445B8);
      v11 = sub_1C04F63E0();
      v12 = sub_1C04F6A10();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1C0479000, v11, v12, "retrying report payload once more on interruption", v13, 2u);
        MEMORY[0x1C68DCEB0](v13, -1, -1);
      }

      sub_1C04A85AC(a3, a4, a5, 1);
    }
  }
}

void sub_1C04A8ABC(void *a1, const char *a2, ...)
{
  if (qword_1EDE446E0 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EDE446E0);
  }

  v4 = sub_1C04F6400();
  __swift_project_value_buffer(v4, qword_1EDE445B8);
  v5 = a1;
  oslog = sub_1C04F63E0();
  v6 = sub_1C04F6A20();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v10 = sub_1C04F6790();
    v12 = sub_1C047D76C(v10, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1C0479000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {
  }
}

void sub_1C04A8C40(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1C04A8FAC();
    v18 = swift_allocError();
    *v19 = 0;
    (a3)();

    return;
  }

  v9 = Strong;
  [Strong invalidate];
  v10 = sub_1C04F52C0();
  v11 = [v10 domain];
  v12 = sub_1C04F6750();
  v14 = v13;

  if (v12 == sub_1C04F6750() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_1C04F6D80();

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if ([v10 code] != 4097)
  {
LABEL_12:
    a3(a1);
    goto LABEL_13;
  }

  a5();
LABEL_13:
}

void sub_1C04A8DDC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_1C04A8E44()
{
  result = qword_1EBE0CF68;
  if (!qword_1EBE0CF68)
  {
    sub_1C04F55B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0CF68);
  }

  return result;
}

uint64_t sub_1C04A8E9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB20, &unk_1C04F8B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C04A8F04()
{
  v1 = *(sub_1C04F55B0() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_1C04A8968(v3, v4, v0 + v2, v6, v7);
}

unint64_t sub_1C04A8FAC()
{
  result = qword_1EBE0CF78;
  if (!qword_1EBE0CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0CF78);
  }

  return result;
}

unint64_t sub_1C04A9000()
{
  result = qword_1EDE446A8;
  if (!qword_1EDE446A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE446A8);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{

  OUTLINED_FUNCTION_18_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroy_53Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t getEnumTagSinglePayload for ParsecdConnectionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ParsecdConnectionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C04A93E8()
{
  result = qword_1EBE0CF88;
  if (!qword_1EBE0CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0CF88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1)
{
  *(a1 + 16) = v7;
  *(a1 + 24) = v8 & 1;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  *(a1 + 64) = v2;
  *(a1 + 72) = v1;
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_8_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t result)
{
  *(result + 16) = v4;
  *(result + 24) = v2;
  *(result + 32) = v1;
  *(result + 40) = v3 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_14_0()
{
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return sub_1C04F6740();
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);

  return sub_1C04820C0(va1, va);
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C04A6F84(a1, v3, a3, 0);
}

uint64_t OUTLINED_FUNCTION_23_0(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return swift_retain_n();
}

uint64_t sub_1C04A963C()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE40978);
  __swift_project_value_buffer(v0, qword_1EDE40978);
  return sub_1C04F63F0();
}

uint64_t sub_1C04A96C0()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6260();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BDB08], v0, v6);
  sub_1C04F6270();
  v9 = sub_1C04F6250();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  qword_1EDE41050 = v9;
  *algn_1EDE41058 = v11;
  return result;
}

uint64_t PegasusProxyForSpotlightZKW.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

void sub_1C04A98DC()
{
  *&xmmword_1EDE41078 = 0xD000000000000030;
  *(&xmmword_1EDE41078 + 1) = 0x80000001C04FCFD0;
  qword_1EDE41088 = 0x74736567677553;
  unk_1EDE41090 = 0xE700000000000000;
  *&xmmword_1EDE41098 = 0xD00000000000001CLL;
  *(&xmmword_1EDE41098 + 1) = 0x80000001C04FD010;
}

void *PegasusProxyForSpotlightZKW.init(bagData:urlSession:)(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1EDE41048 != -1)
  {
    OUTLINED_FUNCTION_3_5(&qword_1EDE41048);
  }

  v6 = qword_1EDE41050;
  v7 = *algn_1EDE41058;

  sub_1C04A12A0(a1, a2);
  v8 = a3;
  v9 = sub_1C04B8AAC(v6, v7, 0, a1, a2, a3);

  sub_1C047AAE0();

  sub_1C047E0BC(a1, a2, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, vars0);

  return v9;
}

uint64_t sub_1C04A9A54()
{
  v1 = sub_1C04F6130();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = sub_1C04F6200();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = *(v0 + 16);
  (*(v3 + 104))(v7, *MEMORY[0x1E69BDAF8], v1);

  sub_1C04F6230();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  return sub_1C0482EFC(v12, 17, v11, 0, 1);
}

uint64_t sub_1C04A9B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v43 = *v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFC0, &qword_1C04F8A58);
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v6);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFC8, &qword_1C04F8A60);
  OUTLINED_FUNCTION_0();
  v45 = v7;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFD0, &qword_1C04F8A68);
  OUTLINED_FUNCTION_0();
  v39 = v10;
  v40 = v9;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFD8, &unk_1C04F8A70);
  OUTLINED_FUNCTION_0();
  v41 = v15;
  v42 = v14;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  if (qword_1EDE41048 != -1)
  {
    OUTLINED_FUNCTION_3_5(&qword_1EDE41048);
  }

  v20 = qword_1EDE41050;
  v19 = *algn_1EDE41058;

  v21 = sub_1C04B7354();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v49[0] = v21;
  sub_1C049FB48(v20, v19, 0x6567612D72657375, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  sub_1C04B7390();
  sub_1C047ACAC();
  if (qword_1EDE41070 != -1)
  {
    swift_once();
  }

  v49[0] = xmmword_1EDE41078;
  v49[1] = *&qword_1EDE41088;
  v49[2] = xmmword_1EDE41098;
  v23 = sub_1C04B7354();
  v24 = sub_1C04D9214(v49, a1, v23, v46, 0);
  v26 = v25;

  v27 = v24;

  v28 = nw_activity_create();
  v29 = v27;
  sub_1C04E0B04(v29, v28, 0, 0xE000000000000000, a2);
  swift_unknownObjectRelease();

  v48 = v26;

  sub_1C04F6410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFE0, &qword_1C04F8A80);
  OUTLINED_FUNCTION_2_6();
  sub_1C047C1A4(v30, v31, &qword_1C04F8A80, v32);
  OUTLINED_FUNCTION_4_4(&qword_1EDE40870, &qword_1EBE0CFC8, &qword_1C04F8A60);
  sub_1C04F6530();

  v33 = swift_allocObject();
  v34 = v43;
  *(v33 + 16) = a2;
  *(v33 + 24) = v34;
  sub_1C047C1A4(&qword_1EDE408C8, &qword_1EBE0CFD0, &qword_1C04F8A68, MEMORY[0x1E695BE40]);

  v35 = v40;
  sub_1C04F6500();

  (*(v39 + 8))(v13, v35);
  sub_1C047C1A4(&qword_1EDE40900, &qword_1EBE0CFD8, &unk_1C04F8A70, MEMORY[0x1E695BDA0]);
  v36 = v42;
  v37 = sub_1C04F64E0();

  (*(v41 + 8))(v18, v36);
  return v37;
}

uint64_t sub_1C04AA2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v52 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFC0, &qword_1C04F8A58);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - v5;
  v7 = sub_1C04F5D20();
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_1C04F5ED0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE40970 != -1)
  {
    swift_once();
  }

  v16 = sub_1C04F6400();
  v17 = __swift_project_value_buffer(v16, qword_1EDE40978);
  v18 = *(v13 + 16);
  v53 = a1;
  v47 = v18;
  v48 = v13 + 16;
  v18(v15, a1, v12);
  v45 = v17;
  v19 = sub_1C04F63E0();
  v20 = sub_1C04F6A40();
  v21 = os_log_type_enabled(v19, v20);
  v46 = v12;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v43 = v6;
    v23 = v22;
    v42 = swift_slowAlloc();
    v54 = v42;
    *v23 = 136315138;
    sub_1C04F5EC0();
    v24 = sub_1C04F6790();
    v44 = v4;
    v26 = v25;
    (*(v13 + 8))(v15, v12);
    v27 = sub_1C047D76C(v24, v26, &v54);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1C0479000, v19, v20, "received rpc response with search status: %s", v23, 0xCu);
    v28 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1C68DCEB0](v28, -1, -1);
    v29 = v23;
    v6 = v43;
    MEMORY[0x1C68DCEB0](v29, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v30 = v53;
  sub_1C04F5EC0();
  v32 = v49;
  v31 = v50;
  (*(v50 + 104))(v49, *MEMORY[0x1E69BD3A0], v7);
  sub_1C04AC2DC(&qword_1EDE41520, MEMORY[0x1E69BD3A8], MEMORY[0x1E69BD3B0]);
  v33 = sub_1C04F6730();
  v34 = *(v31 + 8);
  v34(v32, v7);
  v34(v11, v7);
  if (v33)
  {
    *(v51 + qword_1EDE44718) = 19;
    sub_1C0483574();
    *v6 = 6;
  }

  else
  {
    *(v51 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v35 = sub_1C04F63E0();
    v36 = sub_1C04F6A40();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v6;
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C0479000, v35, v36, "publishing successful rpc response", v38, 2u);
      v39 = v38;
      v6 = v37;
      v30 = v53;
      MEMORY[0x1C68DCEB0](v39, -1, -1);
    }

    v47(v6, v30, v46);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

void sub_1C04AA7C8(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFC0, &qword_1C04F8A58);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = *a1;
  v36 = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v9 = v32;
    v10 = v33;
    v11 = v34;
    v12 = v35;
    sub_1C04B915C(v32, v33, v34, v35, a2);
    sub_1C0482080(v9, v10, v11, v12);
    goto LABEL_3;
  }

  v36 = v7;
  v13 = v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = v7;
    v17 = v7;
    if (swift_dynamicCast())
    {
      v18 = v36;
      sub_1C04AB63C();
      v19 = swift_allocError();
      *v20 = v18;
      sub_1C04B9574(v19, a2);

      *v6 = v18;
      goto LABEL_4;
    }

    *(a2 + qword_1EDE44718) = 51;
    sub_1C0483574();
    if (qword_1EDE40970 != -1)
    {
      swift_once();
    }

    v21 = sub_1C04F6400();
    __swift_project_value_buffer(v21, qword_1EDE40978);
    v22 = v7;
    v23 = sub_1C04F63E0();
    v24 = sub_1C04F6A20();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      v36 = v7;
      v27 = v7;
      v28 = sub_1C04F6790();
      v30 = sub_1C047D76C(v28, v29, &v32);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1C0479000, v23, v24, "search failure: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
      MEMORY[0x1C68DCEB0](v25, -1, -1);
    }

LABEL_3:
    *v6 = 1;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1C04F64B0();
    return;
  }

  v14 = v32;
  v15 = v33;
  v16 = v34;
  sub_1C04B93C4(v32, v33, v34, a2);
  *v6 = 5;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C0482070(v14, v15, v16);
}

uint64_t sub_1C04AAB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a5;
  v62 = a4;
  v68 = a2;
  v74 = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v57 - v13;
  v66 = sub_1C04F65C0();
  OUTLINED_FUNCTION_0();
  v64 = v14;
  v69 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C04F6A80();
  OUTLINED_FUNCTION_0();
  v72 = v19;
  v73 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v63 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF98, &qword_1C04F88E8);
  OUTLINED_FUNCTION_0();
  v24 = v23;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v57 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFA0, &qword_1C04F88F0);
  OUTLINED_FUNCTION_0();
  v70 = v28;
  v71 = v29;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v30);
  v75 = &v57 - v31;
  v32 = sub_1C04A9A54();
  v61 = v7;
  v33 = sub_1C04A9B94(a1, v32, a4);
  *&v76[0] = v33;
  v65 = v33;
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = v33;
  v35[4] = a3;
  v35[5] = v32;
  v36 = v59;
  v35[6] = v59;
  v35[7] = a6;

  v58 = a3;

  sub_1C047BFEC(v36, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFA8, &qword_1C04F88F8);
  OUTLINED_FUNCTION_2_6();
  sub_1C047C1A4(v37, v38, &qword_1C04F88F8, v39);
  sub_1C04F64F0();

  sub_1C047C1A4(&qword_1EDE40920, &qword_1EBE0CF98, &qword_1C04F88E8, MEMORY[0x1E695BCC0]);
  v40 = sub_1C04F64E0();
  (*(v24 + 8))(v27, v22);
  *&v76[0] = v40;
  sub_1C04AB63C();
  sub_1C04F6580();

  v41 = v64;
  v42 = *(v64 + 16);
  v43 = v60;
  v44 = v68;
  v45 = v66;
  v42(v60, v68, v66);
  v46 = v63;
  sub_1C04F6A90();
  v78[0] = v58;
  v47 = sub_1C04F6A70();
  v48 = v67;
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v47);
  v49 = swift_allocObject();
  swift_weakInit();
  sub_1C04A13B0(v62, v76, &qword_1EBE0CE40, &qword_1C04F8900);
  v42(v43, v44, v45);
  v50 = (*(v41 + 80) + 72) & ~*(v41 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  *(v51 + 24) = v32;
  v52 = v76[1];
  *(v51 + 32) = v76[0];
  *(v51 + 48) = v52;
  *(v51 + 64) = v77;
  (*(v41 + 32))(v51 + v50, v43, v45);
  sub_1C04ABCD8();
  sub_1C047C1A4(&qword_1EDE40910, &qword_1EBE0CFA0, &qword_1C04F88F0, MEMORY[0x1E695BCF8]);
  sub_1C04AC2DC(qword_1EDE41568, sub_1C04ABCD8, MEMORY[0x1E69E8028]);

  v53 = v48;
  v54 = v70;
  v55 = v75;
  sub_1C04F6550();

  sub_1C04A12B4(v53, &qword_1EBE0CF90, &qword_1C04F88E0);
  (*(v72 + 8))(v46, v73);
  return (*(v71 + 8))(v55, v54);
}

uint64_t sub_1C04AB1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a6;
  v37 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFB8, &qword_1C04F8A50);
  v38 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for CancellableStoreKey(0);
  v36 = *(v16 - 8);
  v17 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C04F54A0();
    v40 = a4;
    v41 = a3;
    v23 = sub_1C04F6A70();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFA8, &qword_1C04F88F8);
    v34 = a7;
    sub_1C04ABCD8();
    v35 = v13;
    sub_1C047C1A4(&qword_1EDE40880, &qword_1EBE0CFA8, &qword_1C04F88F8, MEMORY[0x1E695BED8]);
    sub_1C04AC2DC(qword_1EDE41568, sub_1C04ABCD8, MEMORY[0x1E69E8028]);
    sub_1C04F6540();
    sub_1C04A12B4(v12, &qword_1EBE0CF90, &qword_1C04F88E0);
    v24 = swift_allocObject();
    swift_weakInit();
    sub_1C04AC474(v21, v18, type metadata accessor for CancellableStoreKey);
    v25 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    sub_1C04A0F94(v18, v27 + v25);
    *(v27 + v26) = v37;
    v28 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
    v29 = v39;
    v30 = v34;
    *v28 = v39;
    v28[1] = v30;

    sub_1C047BFEC(v29, v30);
    sub_1C047C1A4(&qword_1EDE408B0, &qword_1EBE0CFB8, &qword_1C04F8A50, MEMORY[0x1E695BE98]);
    v31 = v35;
    v32 = sub_1C04F6590();

    (*(v38 + 8))(v15, v31);

    sub_1C04B8074(v32, v21);

    return sub_1C04A0E2C(v21);
  }

  return result;
}

unint64_t sub_1C04AB63C()
{
  result = qword_1EDE41060;
  if (!qword_1EDE41060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41060);
  }

  return result;
}

uint64_t sub_1C04AB690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v16 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFC0, &qword_1C04F8A58);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = sub_1C04F5ED0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + 88) == 1)
  {
    sub_1C04A13B0(a1, v10, &qword_1EBE0CFC0, &qword_1C04F8A58);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C04A12B4(v10, &qword_1EBE0CFC0, &qword_1C04F8A58);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      if (a5)
      {
        a5(v14);
      }

      (*(v12 + 8))(v14, v11);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C04B811C(v16);
  }

  return result;
}

uint64_t sub_1C04AB88C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = sub_1C04F65C0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = result;
    v33 = a5;
    *(a2 + qword_1EDE44718) = 27;
    sub_1C0483574();
    sub_1C04A13B0(a3, v34, &qword_1EBE0CE40, &qword_1C04F8900);
    v17 = v35;
    if (v35)
    {
      v18 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      type metadata accessor for PegasusProxyForSpotlightZKW.TimeoutError(0);
      sub_1C04AC2DC(qword_1EDE41148, type metadata accessor for PegasusProxyForSpotlightZKW.TimeoutError, &unk_1C04F8AC0);
      v19 = swift_allocError();
      (*(v10 + 16))(v20, a4, v9);
      (*(v18 + 24))(v19, v17, v18);

      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    else
    {
      sub_1C04A12B4(v34, &qword_1EBE0CE40, &qword_1C04F8900);
    }

    if (qword_1EDE40970 != -1)
    {
      swift_once();
    }

    v22 = sub_1C04F6400();
    __swift_project_value_buffer(v22, qword_1EDE40978);
    v23 = *(v10 + 16);
    v23(v15, a4, v9);
    v24 = sub_1C04F63E0();
    v25 = sub_1C04F6A20();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136315138;
      v23(v12, v15, v9);
      v28 = sub_1C04F6790();
      v30 = v29;
      (*(v10 + 8))(v15, v9);
      v31 = sub_1C047D76C(v28, v30, v34);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1C0479000, v24, v25, "Timeout has been exceeded. timeout: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1C68DCEB0](v27, -1, -1);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
    }

    else
    {

      result = (*(v10 + 8))(v15, v9);
    }

    v21 = 2;
    a5 = v33;
  }

  else
  {
    v21 = 0;
  }

  *a5 = v21;
  return result;
}

uint64_t sub_1C04ABC60@<X0>(char *a1@<X8>)
{
  v3 = *(sub_1C04F65C0() - 8);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));

  return sub_1C04AB88C(v4, v1 + 32, v5, a1);
}

unint64_t sub_1C04ABCD8()
{
  result = qword_1EDE44168;
  if (!qword_1EDE44168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE44168);
  }

  return result;
}

uint64_t sub_1C04ABD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C04A9A54();
  v5 = sub_1C04A9B94(a1, v4, a2);

  return v5;
}

uint64_t sub_1C04ABD70()
{
  v1 = sub_1C04F65C0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PegasusProxyForSpotlightZKW.TimeoutError(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C04AC474(v0, v7, type metadata accessor for PegasusProxyForSpotlightZKW.TimeoutError);
  (*(v2 + 32))(v4, v7, v1);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1C04F6C40();
  MEMORY[0x1C68DC0D0](0x2074756F656D6954, 0xE800000000000000);
  sub_1C04F6CB0();
  MEMORY[0x1C68DC0D0](0x6564656563786520, 0xE900000000000064);
  v8 = v10[0];
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t PegasusProxyForSpotlightZKW.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1C04ABF70()
{
  result = qword_1EBE0CFB0;
  if (!qword_1EBE0CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0CFB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PegasusProxyForSpotlightZKW.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PegasusProxyForSpotlightZKW.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for PegasusProxyForSpotlightZKW.TimeoutError(uint64_t a1)
{
  result = qword_1EDE41118;
  if (!qword_1EDE41118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C04AC21C(uint64_t a1)
{
  v3 = *(type metadata accessor for CancellableStoreKey(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04AB690(a1, v6, v1 + v4, v7, v8);
}

uint64_t sub_1C04AC2DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C04AC324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C04F65C0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C04AC36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C04F65C0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1C04AC3CC(uint64_t a1)
{
  v2 = sub_1C04F65C0();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_1C04AC474(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_152();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695C008];

  return sub_1C047C1A4(a1, a2, a3, v4);
}

char *sub_1C04AC540()
{
  v1 = v0;
  v220 = sub_1C04F6780();
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v218 = &v218 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFF8, &qword_1C04F8B10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v4);
  v227 = &v218 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D000, &qword_1C04FAA20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_1();
  v232 = v8;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v218 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v218 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12_1();
  v241 = v18;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12_1();
  v238 = v22;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_12_1();
  v240 = v26;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12_1();
  v237 = v28;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_12_1();
  v239 = v30;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_12_1();
  v236 = v32;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_12_1();
  v234 = v34;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_12_1();
  v235 = v36;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_12_1();
  v233 = v38;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v218 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v218 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v218 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v218 - v49;
  v52 = MEMORY[0x1EEE9AC00](v51);
  v54 = &v218 - v53;
  v55 = [v1 requestStartDate];
  if (v55)
  {
    v56 = v55;
    sub_1C04F5440();

    v57 = sub_1C04F5460();
    v58 = 0;
  }

  else
  {
    v57 = sub_1C04F5460();
    v58 = 1;
  }

  v230 = v15;
  v231 = v11;
  OUTLINED_FUNCTION_22_1(v50, v58);
  sub_1C04AE59C(v50, v54, &qword_1EBE0D000, &qword_1C04FAA20);
  sub_1C04F5460();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v57);
  v60 = MEMORY[0x1E69E63B0];
  v226 = "v1/zkwsuggestservice/suggest";
  if (EnumTagSinglePayload == 1)
  {
    sub_1C0482130(v54, &qword_1EBE0D000, &qword_1C04FAA20);
    v61 = MEMORY[0x1E69E7CC8];
    v62 = sub_1C047D36C();
    if (v63)
    {
      v64 = v62;
      swift_isUniquelyReferenced_nonNull_native();
      v243 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_14_1();
      sub_1C04F6CC0();
      v65 = v243;

      sub_1C04A1208((*(v65 + 56) + 32 * v64), &v244);
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
      v65 = MEMORY[0x1E69E7CC8];
    }

    v69 = v1;
    v70 = v240;
    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v245 = v60;
    OUTLINED_FUNCTION_0_5(v66);
    v67 = OUTLINED_FUNCTION_21_1();
    v68(v67);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    sub_1C04A0980();
    v65 = v242;
    v69 = v1;
    v70 = v240;
  }

  v71 = v233;
  v72 = [v69 requestStartDate];
  if (v72)
  {
    v73 = v72;
    sub_1C04F5440();

    v74 = 0;
  }

  else
  {
    v74 = 1;
  }

  OUTLINED_FUNCTION_22_1(v44, v74);
  sub_1C04AE59C(v44, v47, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v47);
  if (v75)
  {
    sub_1C0482130(v47, &qword_1EBE0D000, &qword_1C04FAA20);
    v76 = sub_1C047D36C();
    if (v77)
    {
      v78 = v76;
      swift_isUniquelyReferenced_nonNull_native();
      v243 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_14_1();
      v70 = v240;
      sub_1C04F6CC0();
      v65 = v243;

      sub_1C04A1208((*(v65 + 56) + 32 * v78), &v244);
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
    v79 = MEMORY[0x1E69E63B0];
  }

  else
  {
    sub_1C04F5410();
    v79 = MEMORY[0x1E69E63B0];
    v245 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v80);
    (*(v81 + 8))(v47, v57);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_2();
    sub_1C04A0980();
    v65 = v242;
  }

  v82 = [v69 requestStartDate];
  if (v82)
  {
    v83 = v82;
    sub_1C04F5440();

    v84 = 0;
  }

  else
  {
    v84 = 1;
  }

  OUTLINED_FUNCTION_22_1(v71, v84);
  sub_1C04AE59C(v71, v41, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v41);
  if (v75)
  {
    sub_1C0482130(v41, &qword_1EBE0D000, &qword_1C04FAA20);
    sub_1C047D36C();
    if (v85)
    {
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_20_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v88 = v239;
    v90 = v234;
    v89 = v235;
    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v245 = v79;
    OUTLINED_FUNCTION_0_5(v86);
    (*(v87 + 8))(v41, v57);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_2();
    sub_1C04A0980();
    v65 = v242;
    v88 = v239;
    v90 = v234;
    v89 = v235;
  }

  v91 = [v69 requestEndDate];
  if (v91)
  {
    v92 = v91;
    sub_1C04F5440();

    v93 = 0;
  }

  else
  {
    v93 = 1;
  }

  OUTLINED_FUNCTION_22_1(v90, v93);
  sub_1C04AE59C(v90, v89, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v89);
  if (v75)
  {
    sub_1C0482130(v89, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_24_1();
    sub_1C047D36C();
    if (v94)
    {
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_20_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      v88 = v239;
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v98 = v236;
    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v245 = v79;
    OUTLINED_FUNCTION_0_5(v95);
    v96 = OUTLINED_FUNCTION_21_1();
    v97(v96);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v65 = v242;
    v98 = v236;
  }

  v99 = [v69 responseStartDate];
  if (v99)
  {
    v100 = v99;
    sub_1C04F5440();

    v101 = 0;
  }

  else
  {
    v101 = 1;
  }

  v102 = OUTLINED_FUNCTION_22_1(v88, v101);
  OUTLINED_FUNCTION_32_0(v102, v103, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v98);
  if (v75)
  {
    sub_1C0482130(v98, &qword_1EBE0D000, &qword_1C04FAA20);
    sub_1C047D36C();
    if (v104)
    {
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_20_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v108 = v237;
    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v245 = v79;
    OUTLINED_FUNCTION_0_5(v105);
    v106 = OUTLINED_FUNCTION_21_1();
    v107(v106);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v65 = v242;
    v108 = v237;
  }

  v109 = [v69 responseEndDate];
  if (v109)
  {
    v110 = v109;
    sub_1C04F5440();

    v111 = 0;
  }

  else
  {
    v111 = 1;
  }

  OUTLINED_FUNCTION_22_1(v70, v111);
  sub_1C04AE59C(v70, v108, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v108);
  if (v75)
  {
    sub_1C0482130(v108, &qword_1EBE0D000, &qword_1C04FAA20);
    sub_1C047D36C();
    if (v112)
    {
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_20_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v245 = v79;
    OUTLINED_FUNCTION_0_5(v113);
    v114 = OUTLINED_FUNCTION_21_1();
    v115(v114);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v65 = v242;
  }

  v116 = [v69 isReusedConnection];
  v245 = MEMORY[0x1E69E6370];
  LOBYTE(v244) = v116;
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_15_1();
  sub_1C04A0980();
  v117 = [v69 countOfRequestHeaderBytesSent];
  v118 = MEMORY[0x1E69E7360];
  v245 = MEMORY[0x1E69E7360];
  *&v244 = v117;
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v119 = [v69 countOfResponseHeaderBytesReceived];
  v245 = v118;
  *&v244 = v119;
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v120 = [v69 countOfResponseBodyBytesReceived];
  v245 = v118;
  *&v244 = v120;
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v121 = [v69 countOfResponseBodyBytesAfterDecoding];
  v245 = v118;
  *&v244 = v121;
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v122 = [v69 countOfRequestBodyBytesSent];
  result = [v69 countOfRequestHeaderBytesSent];
  if (__OFADD__(v122, result))
  {
    __break(1u);
    goto LABEL_144;
  }

  v245 = v118;
  *&v244 = &result[v122];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v124 = [v69 countOfResponseBodyBytesReceived];
  result = [v69 countOfResponseHeaderBytesReceived];
  if (__OFADD__(v124, result))
  {
LABEL_144:
    __break(1u);
    return result;
  }

  v245 = v118;
  *&v244 = &result[v124];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v125 = v242;
  v126 = sub_1C04AE604(v69, &selRef__interfaceName);
  if (v127)
  {
    v245 = MEMORY[0x1E69E6158];
    *&v244 = v126;
    *(&v244 + 1) = v127;
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_3_6();
    sub_1C04A0980();
    v125 = v242;
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    sub_1C047D36C();
    OUTLINED_FUNCTION_25_1();
    if (v129)
    {
      v130 = v128;
      swift_isUniquelyReferenced_nonNull_native();
      v243 = v125;
      v125 = *(v125 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_14_1();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_30_0();
      sub_1C04A1208((*(v125 + 56) + 32 * v130), &v244);
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  v131 = [v69 _connectionIdentifier];
  if (v131)
  {
    v132 = v131;
    sub_1C04F5490();

    v133 = 0;
  }

  else
  {
    v133 = 1;
  }

  v134 = sub_1C04F54B0();
  __swift_storeEnumTagSinglePayload(0x1E8117000, v133, 1, v134);
  sub_1C04AE59C(0x1E8117000, 0x1E8117000, &qword_1EBE0CFF8, &qword_1C04F8B10);
  if (__swift_getEnumTagSinglePayload(0x1E8117000, 1, v134) == 1)
  {
    sub_1C0482130(0x1E8117000, &qword_1EBE0CFF8, &qword_1C04F8B10);
    v135 = sub_1C047D36C();
    if (v136)
    {
      v137 = v135;
      swift_isUniquelyReferenced_nonNull_native();
      v243 = v125;
      v138 = *(v125 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_14_1();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_30_0();
      sub_1C04A1208((*(v138 + 56) + 32 * v137), &v244);
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v141 = v241;
    v142 = v238;
    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    v139 = sub_1C04F5470();
    v245 = MEMORY[0x1E69E6158];
    *&v244 = v139;
    *(&v244 + 1) = v140;
    (*(*(v134 - 8) + 8))(0x1E8117000uLL, v134);
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_3_6();
    sub_1C04A0980();
    v141 = v241;
    v142 = v238;
  }

  v143 = [v69 _redirected];
  v245 = MEMORY[0x1E69E7668];
  LODWORD(v244) = v143;
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v144 = v242;
  v145 = [v69 connectStartDate];
  if (v145)
  {
    v146 = v145;
    v147 = v228;
    sub_1C04F5440();

    v148 = 0;
    v149 = v229;
  }

  else
  {
    v148 = 1;
    v149 = v229;
    v147 = v228;
  }

  OUTLINED_FUNCTION_22_1(v147, v148);
  sub_1C04AE59C(v147, v149, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v149);
  if (v75)
  {
    sub_1C0482130(v149, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_28_0();
    if (v150)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      v141 = v241;
      v142 = v238;
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v154 = v221;
    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v245 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v151);
    v152 = OUTLINED_FUNCTION_21_1();
    v153(v152);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v144 = v242;
    v154 = v221;
  }

  v155 = [v69 connectEndDate];
  if (v155)
  {
    v156 = v155;
    sub_1C04F5440();

    v157 = 0;
  }

  else
  {
    v157 = 1;
  }

  OUTLINED_FUNCTION_22_1(v154, v157);
  sub_1C04AE59C(v154, v142, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v142);
  if (v75)
  {
    sub_1C0482130(v142, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_24_1();
    sub_1C047D36C();
    if (v158)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      v141 = v241;
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v161 = v222;
    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v245 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v159);
    (*(v160 + 8))(v142, v57);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v144 = v242;
    v161 = v222;
  }

  v162 = [v69 domainLookupStartDate];
  if (v162)
  {
    v163 = v162;
    sub_1C04F5440();

    v164 = 0;
  }

  else
  {
    v164 = 1;
  }

  v165 = OUTLINED_FUNCTION_22_1(v141, v164);
  OUTLINED_FUNCTION_32_0(v165, v166, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v161);
  if (v75)
  {
    sub_1C0482130(v161, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_28_0();
    if (v167)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v171 = v223;
    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v245 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v168);
    v169 = OUTLINED_FUNCTION_21_1();
    v170(v169);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v144 = v242;
    v171 = v223;
  }

  v172 = [v69 domainLookupEndDate];
  if (v172)
  {
    v173 = v172;
    v174 = v230;
    sub_1C04F5440();

    v175 = 0;
  }

  else
  {
    v175 = 1;
    v174 = v230;
  }

  v176 = OUTLINED_FUNCTION_22_1(v174, v175);
  OUTLINED_FUNCTION_32_0(v176, v177, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v171);
  if (v75)
  {
    sub_1C0482130(v171, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_28_0();
    if (v178)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v182 = v224;
    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v245 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v179);
    v180 = OUTLINED_FUNCTION_21_1();
    v181(v180);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v144 = v242;
    v182 = v224;
  }

  v183 = [v69 fetchStartDate];
  if (v183)
  {
    v184 = v183;
    v185 = v231;
    sub_1C04F5440();

    v186 = 0;
  }

  else
  {
    v186 = 1;
    v185 = v231;
  }

  v187 = OUTLINED_FUNCTION_22_1(v185, v186);
  OUTLINED_FUNCTION_32_0(v187, v188, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v182);
  if (v75)
  {
    sub_1C0482130(v182, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_24_1();
    sub_1C047D36C();
    if (v189)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v193 = v225;
    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v245 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v190);
    v191 = OUTLINED_FUNCTION_21_1();
    v192(v191);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v144 = v242;
    v193 = v225;
  }

  v194 = [v69 secureConnectionStartDate];
  if (v194)
  {
    v195 = v194;
    sub_1C04F5440();

    v196 = 0;
  }

  else
  {
    v196 = 1;
  }

  OUTLINED_FUNCTION_22_1(v193, v196);
  sub_1C04AE59C(v193, v65, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v65);
  if (v75)
  {
    sub_1C0482130(v65, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_28_0();
    if (v197)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v245 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v198);
    (*(v199 + 8))(v65, v57);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v144 = v242;
  }

  v200 = sub_1C04E596C(v69);
  if (v201)
  {
    v245 = MEMORY[0x1E69E6158];
    *&v244 = v200;
    *(&v244 + 1) = v201;
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v144 = v242;
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
    if (v202)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    sub_1C0482130(&v244, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  v203 = sub_1C04AE604(v69, &selRef_remoteAddress);
  if (v204)
  {
    v205 = v203;
    v206 = v204;
    v207 = sub_1C04F6AF0();
    if (v208)
    {
      v209 = 0;
      v210 = 0xE000000000000000;
    }

    else
    {
      *&v244 = 58;
      *(&v244 + 1) = 0xE100000000000000;
      v243 = v207;
      v211 = sub_1C04F6D60();
      MEMORY[0x1C68DC0D0](v211);

      v210 = *(&v244 + 1);
      v209 = v244;
    }

    *&v244 = v205;
    *(&v244 + 1) = v206;
    MEMORY[0x1C68DC0D0](v209, v210);

    v212 = v218;
    sub_1C04F6770();
    v213 = sub_1C04F6760();
    v215 = v214;

    (*(v219 + 8))(v212, v220);
    v245 = MEMORY[0x1E6969080];
    if (v215 >> 60 == 15)
    {
      v216 = 0;
    }

    else
    {
      v216 = v213;
    }

    v217 = 0xC000000000000000;
    if (v215 >> 60 != 15)
    {
      v217 = v215;
    }

    *&v244 = v216;
    *(&v244 + 1) = v217;
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    return v242;
  }

  return v144;
}

char *sub_1C04AE260()
{
  v1 = sub_1C04C95CC(v0);
  if (v1)
  {
    v2 = sub_1C04AE2E4(v1);

    if (v2)
    {
      return v2;
    }
  }

  v4 = [v0 _incompleteCurrentTaskTransactionMetrics];
  v5 = sub_1C04AC540();

  return v5;
}

unint64_t sub_1C04AE2E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFE8, &qword_1C04F8B00);
    v2 = sub_1C04F6D30();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1C04A0CCC(*(a1 + 48) + 40 * v10, __src);
    sub_1C047D9A0(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C04A0CCC(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1C047D9A0(&__dst[40], v20);
    sub_1C0482130(__dst, &qword_1EBE0CFF0, &qword_1C04F8B08);
    v21 = v18;
    sub_1C04A1208(v20, v22);
    v11 = v21;
    sub_1C04A1208(v22, v23);
    sub_1C04A1208(v23, &v21);
    result = sub_1C047D36C();
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v14);
      result = sub_1C04A1208(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1C04A1208(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1C0482130(__dst, &qword_1EBE0CFF0, &qword_1C04F8B08);

  return 0;
}

uint64_t sub_1C04AE59C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C04AE604(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C04F6750();

  return v4;
}

uint64_t OUTLINED_FUNCTION_7_6()
{
}

uint64_t OUTLINED_FUNCTION_10_2()
{
  sub_1C04A1208((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

double OUTLINED_FUNCTION_13_2()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_1()
{
  sub_1C04A1208((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

_OWORD *OUTLINED_FUNCTION_18_1()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1C04A1208(v4, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_19_0()
{
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

_OWORD *OUTLINED_FUNCTION_23_1()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1C04A1208(v4, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

_OWORD *OUTLINED_FUNCTION_27_0()
{

  return sub_1C04A0980();
}

unint64_t OUTLINED_FUNCTION_28_0()
{

  return sub_1C047D36C();
}

uint64_t OUTLINED_FUNCTION_30_0()
{
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C04AE59C(v5, v4, a3, a4);
}

uint64_t sub_1C04AE8A8()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE40930);
  __swift_project_value_buffer(v0, qword_1EDE40930);
  return sub_1C04F63F0();
}

void *sub_1C04AE928()
{
  type metadata accessor for PegasusProxyForAssistant();
  swift_allocObject();
  result = PegasusProxyForAssistant.init()();
  qword_1EDE41468 = result;
  return result;
}

uint64_t static PegasusProxyForAssistant.shared.getter()
{
  if (qword_1EDE41460 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C04AE9F4()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6260();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BDB08], v0, v6);
  sub_1C04F6270();
  v9 = sub_1C04F6250();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  qword_1EDE41450 = v9;
  *algn_1EDE41458 = v11;
  return result;
}

uint64_t PegasusProxyForAssistant.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

double sub_1C04AEC10()
{
  *&xmmword_1EDE41478 = 0xD000000000000024;
  *(&xmmword_1EDE41478 + 1) = 0x80000001C04FC7D0;
  qword_1EDE41488 = 0x7261655369726953;
  unk_1EDE41490 = 0xEA00000000006863;
  result = 8.89614186e247;
  xmmword_1EDE41498 = xmmword_1C04F80E0;
  return result;
}

void *PegasusProxyForAssistant.init()()
{
  *(v0 + 128) = 0;
  if (qword_1EDE41448 != -1)
  {
    OUTLINED_FUNCTION_8_3(&qword_1EDE41448);
  }

  v1 = qword_1EDE41450;
  v2 = *algn_1EDE41458;
  v3 = qword_1EDE44538;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_7(&qword_1EDE44538);
  }

  v4 = qword_1EDE44DC8;
  v5 = qword_1EDE44DC8;
  v6 = sub_1C04B8AAC(v1, v2, 0, 0, 0xF000000000000000, v4);
  v7 = qword_1EDE41E20;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_14(&qword_1EDE41E20);
  }

  if (byte_1EDE44D78 == 1)
  {
    v8 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v9 = sub_1C04B2ABC(0xD000000000000011, 0x80000001C04FCF20);
  }

  else
  {
    v9 = 0;
  }

  v10 = v6[16];
  v6[16] = v9;

  return v6;
}

void *PegasusProxyForAssistant.init(endpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = 0;
  if (qword_1EDE44538 != -1)
  {
    OUTLINED_FUNCTION_7(&qword_1EDE44538);
  }

  v5 = qword_1EDE44DC8;
  v6 = qword_1EDE44DC8;

  return sub_1C04B979C(a1, a2, 0, v5);
}

uint64_t sub_1C04AEE50()
{
  v1 = sub_1C04F6200();
  v2 = OUTLINED_FUNCTION_2_1(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_4();
  v8 = *(v7 + 184);

  v10 = v8(v9);
  sub_1C04F6220();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  return sub_1C0482EFC(v6, v10, v5, 0, 1);
}

uint64_t sub_1C04AEF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C04F5700();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  sub_1C04B24C0(a1, a2, a3);
  v13 = sub_1C04AF00C(v12);
  (*(v8 + 8))(v12, v6);
  return v13;
}

uint64_t sub_1C04AF00C(uint64_t a1)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  OUTLINED_FUNCTION_4();
  (*(v1 + 560))(v2, v3, v4, v5, v6);
  sub_1C04AFAB8();
  v8 = v7;

  sub_1C04A12B4(v10, &qword_1EBE0CE40, &qword_1C04F8900);
  return v8;
}

uint64_t sub_1C04AF0AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  (*(v2 + 560))();
  sub_1C04AFAB8();
  v4 = v3;

  return v4;
}

void sub_1C04AF124()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D058, &qword_1C04F8C80);
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D060, &qword_1C04F8C88);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = *v3;
  if (qword_1EDE40928 != -1)
  {
    OUTLINED_FUNCTION_4_6(&qword_1EDE40928);
  }

  v14 = sub_1C04F6400();
  __swift_project_value_buffer(v14, qword_1EDE40930);
  v15 = sub_1C04F63E0();
  v16 = sub_1C04F6A20();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v7;
    v18 = v17;
    v27 = swift_slowAlloc();
    v28 = v1;
    v31 = v27;
    *v18 = 136315138;
    v30 = v13;
    v19 = sub_1C04F6790();
    v21 = v9;
    v22 = v13;
    v23 = sub_1C047D76C(v19, v20, &v31);

    *(v18 + 4) = v23;
    v13 = v22;
    v9 = v21;
    _os_log_impl(&dword_1C0479000, v15, v16, "Pegasus for Assistant is disabled: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v1 = v28;
    OUTLINED_FUNCTION_10_0();
    v7 = v29;
    OUTLINED_FUNCTION_10_0();
  }

  if (v13 == 1)
  {
    v24 = 34;
  }

  else
  {
    v24 = 47;
  }

  if (v13 == 1)
  {
    v25 = 3;
  }

  else
  {
    v25 = 4;
  }

  *(v1 + qword_1EDE44718) = v24;
  sub_1C0483574();
  *v6 = v25;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C047C1A4(&qword_1EDE40878, &qword_1EBE0D060, &qword_1C04F8C88, MEMORY[0x1E695C008]);
  sub_1C04F64E0();
  (*(v9 + 8))(v12, v7);
  OUTLINED_FUNCTION_6();
}

void sub_1C04AF3FC()
{
  OUTLINED_FUNCTION_7_0();
  v39 = v0;
  v50 = v1;
  v44 = v2;
  v45 = v3;
  v42 = sub_1C04F5700();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v43 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D038, &unk_1C04F8C60);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D040, &qword_1C04F9540);
  OUTLINED_FUNCTION_0();
  v49 = v15;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D048, &unk_1C04F8C70);
  OUTLINED_FUNCTION_0();
  v47 = v19;
  v48 = v20;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  *&v51[0] = BasePegasusProxy.EnabledState.statusPublisher.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1E0, &qword_1C04F9180);
  OUTLINED_FUNCTION_3();
  v40 = v24;
  sub_1C047C1A4(v25, &qword_1EBE0D1E0, &qword_1C04F9180, v26);
  sub_1C04F6570();

  sub_1C047C1A4(&qword_1EDE41650, &qword_1EBE0D038, &unk_1C04F8C60, MEMORY[0x1E695BD78]);
  sub_1C04F6510();
  (*(v11 + 8))(v14, v9);
  v28 = v41;
  v27 = v42;
  (*(v5 + 16))(v41, v44, v42);
  sub_1C04A13B0(v45, v51, &qword_1EBE0CE40, &qword_1C04F8900);
  v29 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v30 = (v43 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v39;
  (*(v5 + 32))(v31 + v29, v28, v27);
  v32 = v31 + v30;
  v33 = v51[1];
  *v32 = v51[0];
  *(v32 + 16) = v33;
  *(v32 + 32) = v52;
  *(v31 + ((v30 + 47) & 0xFFFFFFFFFFFFFFF8)) = v50;

  sub_1C04F6410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D018, &qword_1C04F8B38);
  sub_1C047C1A4(&qword_1EDE408F8, &qword_1EBE0D040, &qword_1C04F9540, MEMORY[0x1E695BDB8]);
  sub_1C047C1A4(&qword_1EDE40890, &qword_1EBE0D018, &qword_1C04F8B38, v40);
  v34 = v46;
  sub_1C04F65B0();

  (*(v49 + 8))(v18, v34);
  OUTLINED_FUNCTION_2_8();
  sub_1C047C1A4(v35, &qword_1EBE0D048, &unk_1C04F8C70, v36);
  v37 = v47;
  sub_1C04F64E0();
  (*(v48 + 8))(v23, v37);
  OUTLINED_FUNCTION_6();
}

void sub_1C04AF8C0(unsigned __int8 *a1@<X0>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  if (qword_1EDE40928 != -1)
  {
    swift_once();
  }

  v7 = sub_1C04F6400();
  __swift_project_value_buffer(v7, qword_1EDE40930);
  v8 = sub_1C04F63E0();
  v9 = sub_1C04F6A10();
  if (os_log_type_enabled(v8, v9))
  {
    buf = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *buf = 136315138;
    v10 = sub_1C04F6790();
    v12 = sub_1C047D76C(v10, v11, &v16);

    *(buf + 4) = v12;
    _os_log_impl(&dword_1C0479000, v8, v9, "Retrying with enabledState status: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1C68DCEB0](v15, -1, -1);
    MEMORY[0x1C68DCEB0](buf, -1, -1);
  }

  if (v6 == 4)
  {
    v18 = 0;
LABEL_10:
    sub_1C04AF124();
    goto LABEL_11;
  }

  if (v6 != 5)
  {
    v17 = v6;
    goto LABEL_10;
  }

  sub_1C04AFAB8();
LABEL_11:
  *a5 = v13;
}

void sub_1C04AFAB8()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_4();
  v71 = v8;
  v9 = sub_1C04F5700();
  OUTLINED_FUNCTION_0();
  v70 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D068, &unk_1C04F8C90);
  OUTLINED_FUNCTION_0();
  v73 = v15;
  v74 = v14;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v64 - v17;
  v68 = sub_1C04F54B0();
  OUTLINED_FUNCTION_0();
  v67 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v66 = v21 - v20;
  if (qword_1EDE41448 != -1)
  {
    OUTLINED_FUNCTION_8_3(&qword_1EDE41448);
  }

  v22 = qword_1EDE41450;
  v23 = *algn_1EDE41458;

  v24 = sub_1C04B7354();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79[0] = v24;
  sub_1C049FB48(v22, v23, 0x6567612D72657375, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  v26 = sub_1C04B7390();
  if ((*(*v1 + 184))(v26) == 13)
  {
    if (qword_1EDE40928 != -1)
    {
      OUTLINED_FUNCTION_4_6(&qword_1EDE40928);
    }

    v27 = sub_1C04F6400();
    __swift_project_value_buffer(v27, qword_1EDE40930);

    v28 = sub_1C04F63E0();
    v29 = sub_1C04F6A10();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v64 = v7;
      v31 = v30;
      v32 = swift_slowAlloc();
      v65 = v9;
      v33 = v32;
      v79[0] = v32;
      *v31 = 136315138;
      sub_1C04F6490();
      v76 = v77;
      v34 = sub_1C04F6790();
      v36 = v5;
      v37 = v3;
      v38 = v12;
      v39 = sub_1C047D76C(v34, v35, v79);

      *(v31 + 4) = v39;
      v12 = v38;
      v3 = v37;
      v5 = v36;
      _os_log_impl(&dword_1C0479000, v28, v29, "Processing enabledState status: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v9 = v65;
      OUTLINED_FUNCTION_10_0();
      v7 = v64;
      OUTLINED_FUNCTION_10_0();
    }

    sub_1C04F6490();
    if (LOBYTE(v79[0]) == 4)
    {
      sub_1C04AF3FC();
      goto LABEL_19;
    }

    if (LOBYTE(v79[0]) != 5)
    {
      LOBYTE(v77) = v79[0];
      sub_1C04AF124();
      goto LABEL_19;
    }
  }

  sub_1C04A13B0(v5, &v77, &qword_1EBE0CE40, &qword_1C04F8900);
  if (v78)
  {
    sub_1C047E140(&v77, v79);
  }

  else
  {
    v40 = swift_allocObject();
    swift_weakInit();
    v79[3] = &type metadata for NetworkFeedbackGenerator;
    v79[4] = &protocol witness table for NetworkFeedbackGenerator;
    v41 = swift_allocObject();
    v79[0] = v41;

    v42 = v66;
    sub_1C04F54A0();
    v43 = v3;
    v44 = sub_1C04F5470();
    v45 = v12;
    v46 = v7;
    v48 = v47;
    (*(v67 + 8))(v42, v68);

    *(v41 + 16) = v44;
    *(v41 + 24) = v48;
    v3 = v43;
    v7 = v46;
    v12 = v45;
    *(v41 + 32) = 0;
    *(v41 + 40) = sub_1C04B310C;
    *(v41 + 48) = v40;
    if (v78)
    {
      sub_1C04A12B4(&v77, &qword_1EBE0CE40, &qword_1C04F8900);
    }
  }

  v68 = v3;
  if (qword_1EDE42870 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v49 = sub_1C04D0244(3, 0);
  v67 = v49;

  v75 = v49;
  v51 = v69;
  v50 = v70;
  (*(v70 + 16))(v69, v7, v9);
  sub_1C04A61B0(v79, &v77);
  v52 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v53 = (v12 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  (*(v50 + 32))(v56 + v52, v51, v9);
  *(v56 + v53) = v1;
  *(v56 + v54) = v68;
  sub_1C047E140(&v77, v56 + v55);
  *(v56 + ((v55 + 47) & 0xFFFFFFFFFFFFFFF8)) = v71;

  sub_1C04F6410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D070, &qword_1C04F9350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D018, &qword_1C04F8B38);
  v57 = MEMORY[0x1E695BED8];
  sub_1C047C1A4(&qword_1EDE40898, &qword_1EBE0D070, &qword_1C04F9350, MEMORY[0x1E695BED8]);
  sub_1C047C1A4(&qword_1EDE40890, &qword_1EBE0D018, &qword_1C04F8B38, v57);
  v58 = v72;
  sub_1C04F65B0();

  OUTLINED_FUNCTION_2_8();
  sub_1C047C1A4(v59, v60, v61, v62);
  v63 = v74;
  sub_1C04F64E0();
  (*(v73 + 8))(v58, v63);
  __swift_destroy_boxed_opaque_existential_1(v79);
LABEL_19:
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04B0274(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1C04F6460();
  }

  v3 = sub_1C04F55B0();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t sub_1C04B032C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v89 = a6;
  v90 = a5;
  v92 = a3;
  v99 = a1;
  v103 = a7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D058, &qword_1C04F8C80);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v79 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D060, &qword_1C04F8C88);
  v97 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v96 = &v79 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D078, &qword_1C04F8CA0);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v79 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D080, &qword_1C04F8CA8);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = (&v79 - v14);
  v15 = sub_1C04F54F0();
  v93 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v79 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v79 - v24);
  v26 = sub_1C04F5700();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v31;
  v101 = v30;
  (*(v31 + 16))(v29, a2, v27);
  sub_1C04A13B0(v99, v25, &qword_1EBE0D088, &qword_1C04F9370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v29;
    v33 = *v25;
    *(a4 + qword_1EDE44718) = 49;
    sub_1C0483574();
    if (qword_1EDE40928 != -1)
    {
      swift_once();
    }

    v34 = sub_1C04F6400();
    __swift_project_value_buffer(v34, qword_1EDE40930);
    v35 = v33;
    v36 = sub_1C04F63E0();
    v37 = sub_1C04F6A20();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v105[0] = v39;
      *v38 = 136315138;
      v104[0] = v33;
      v40 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v41 = sub_1C04F6790();
      v43 = sub_1C047D76C(v41, v42, v105);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1C0479000, v36, v37, "context fetch failure: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1C68DCEB0](v39, -1, -1);
      MEMORY[0x1C68DCEB0](v38, -1, -1);
    }

    v29 = v32;
    *v94 = 8;
    swift_storeEnumTagMultiPayload();
    v44 = v96;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EDE40878, &qword_1EBE0D060, &qword_1C04F8C88, MEMORY[0x1E695C008]);
    v45 = v102;
    v46 = sub_1C04F64E0();

    (*(v97 + 8))(v44, v45);
  }

  else
  {
    v82 = a4;
    v47 = v93;
    v81 = *(v93 + 32);
    v48 = v81(v22, v25, v15);
    v49 = (*(*v92 + 184))(v48);
    sub_1C04F56A0();
    v50 = v98;
    sub_1C0482664(v49, v17, v98);
    v51 = v47 + 8;
    v99 = *(v47 + 8);
    v99(v17, v15);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v15);
    v53 = v15;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C04A12B4(v98, &qword_1EBE0CC70, &qword_1C04F8CB0);
      *(v82 + qword_1EDE44718) = 50;
      sub_1C0483574();
      if (qword_1EDE40928 != -1)
      {
        swift_once();
      }

      v54 = sub_1C04F6400();
      __swift_project_value_buffer(v54, qword_1EDE40930);
      v55 = sub_1C04F63E0();
      v56 = sub_1C04F6A20();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_1C0479000, v55, v56, "unable to create unified query context", v57, 2u);
        MEMORY[0x1C68DCEB0](v57, -1, -1);
      }

      *v94 = 9;
      swift_storeEnumTagMultiPayload();
      v58 = v96;
      sub_1C04F64B0();
      sub_1C047C1A4(&qword_1EDE40878, &qword_1EBE0D060, &qword_1C04F8C88, MEMORY[0x1E695C008]);
      v59 = v102;
      v46 = sub_1C04F64E0();
      (*(v97 + 8))(v58, v59);
      v99(v22, v15);
    }

    else
    {
      v80 = v22;
      v60 = v91;
      v81(v91, v98, v53);
      (*(v93 + 16))(v17, v60, v53);
      sub_1C04F56B0();
      sub_1C047ACAC();
      if (qword_1EDE41470 != -1)
      {
        swift_once();
      }

      v105[0] = xmmword_1EDE41478;
      v105[1] = *&qword_1EDE41488;
      v105[2] = xmmword_1EDE41498;
      v61 = sub_1C04B7354();
      sub_1C04A61B0(v90, v104);
      v62 = sub_1C04D94A0(v105, v29, v61, v104, 1);
      v63 = v82;
      v64 = v62;
      v66 = v65;
      sub_1C04A12B4(v104, &qword_1EBE0CE40, &qword_1C04F8900);

      v67 = v64;

      v68 = nw_activity_create();
      v69 = v67;
      sub_1C04E0B04(v69, v68, 0, 0xE000000000000000, v63);
      swift_unknownObjectRelease();

      v104[0] = v66;

      sub_1C04F6410();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D090, &unk_1C04F8CB8);
      v98 = v51;
      sub_1C047C1A4(&qword_1EDE408A8, &qword_1EBE0D090, &unk_1C04F8CB8, MEMORY[0x1E695BED8]);
      v97 = v53;
      sub_1C047C1A4(&qword_1EDE40878, &qword_1EBE0D060, &qword_1C04F8C88, MEMORY[0x1E695C008]);
      v70 = v83;
      sub_1C04F6530();

      v71 = swift_allocObject();
      v72 = v89;
      *(v71 + 16) = v63;
      *(v71 + 24) = v72;
      sub_1C047C1A4(&qword_1EDE408D0, &qword_1EBE0D078, &qword_1C04F8CA0, MEMORY[0x1E695BE40]);

      v73 = v84;
      v74 = v86;
      sub_1C04F6500();

      (*(v85 + 8))(v70, v74);
      sub_1C047C1A4(&qword_1EDE40908, &qword_1EBE0D080, &qword_1C04F8CA8, MEMORY[0x1E695BDA0]);
      v75 = v88;
      v46 = sub_1C04F64E0();

      (*(v87 + 8))(v73, v75);
      v76 = v97;
      v77 = v99;
      v99(v91, v97);
      v77(v80, v76);
    }
  }

  result = (*(v100 + 8))(v29, v101);
  *v103 = v46;
  return result;
}

uint64_t sub_1C04B12DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v58 = a3;
  v60 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D058, &qword_1C04F8C80);
  MEMORY[0x1EEE9AC00](v54);
  v59 = &v44 - v3;
  v4 = sub_1C04F5730();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C04F5C60();
  v56 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = sub_1C04F5750();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  if (qword_1EDE40928 != -1)
  {
    swift_once();
  }

  v18 = sub_1C04F6400();
  v19 = __swift_project_value_buffer(v18, qword_1EDE40930);
  v20 = *(v12 + 16);
  v21 = v60;
  v20(v17, v60, v11);
  v52 = v20;
  v53 = v12 + 16;
  v20(v14, v21, v11);
  v51 = v19;
  v22 = sub_1C04F63E0();
  v23 = sub_1C04F6A40();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v61 = v46;
    *v24 = 136315394;
    v45 = v23;
    sub_1C04F5710();
    v25 = sub_1C04F6790();
    v47 = v6;
    v27 = v26;
    v44 = *(v12 + 8);
    v44(v17, v11);
    v28 = sub_1C047D76C(v25, v27, &v61);
    v6 = v47;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = v48;
    sub_1C04F5740();
    v30 = sub_1C04F5720();
    v32 = v31;
    (*(v49 + 8))(v29, v50);
    v44(v14, v11);
    v33 = sub_1C047D76C(v30, v32, &v61);

    *(v24 + 14) = v33;
    _os_log_impl(&dword_1C0479000, v22, v45, "received rpc response with search status: %s, error detail: %s", v24, 0x16u);
    v34 = v46;
    swift_arrayDestroy();
    MEMORY[0x1C68DCEB0](v34, -1, -1);
    MEMORY[0x1C68DCEB0](v24, -1, -1);
  }

  else
  {

    v35 = *(v12 + 8);
    v35(v14, v11);
    v35(v17, v11);
  }

  sub_1C04F5710();
  v36 = v55;
  v37 = v56;
  (*(v56 + 104))(v55, *MEMORY[0x1E69BD138], v6);
  sub_1C0484C50();
  v38 = sub_1C04F6730();
  v39 = *(v37 + 8);
  v39(v36, v6);
  v39(v10, v6);
  if (v38)
  {
    *(v57 + qword_1EDE44718) = 19;
    sub_1C0483574();
    *v59 = 6;
  }

  else
  {
    *(v57 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v40 = sub_1C04F63E0();
    v41 = sub_1C04F6A40();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1C0479000, v40, v41, "publishing successful rpc response", v42, 2u);
      MEMORY[0x1C68DCEB0](v42, -1, -1);
    }

    v52(v59, v60, v11);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

void sub_1C04B1900(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D058, &qword_1C04F8C80);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  v7 = *a1;
  v37 = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v9 = v33;
    v10 = v34;
    v11 = v35;
    v12 = v36;
    sub_1C04B915C(v33, v34, v35, v36, a2);
    sub_1C0482080(v9, v10, v11, v12);
    v13 = 7;
    goto LABEL_3;
  }

  v37 = v7;
  v14 = v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = v7;
    v18 = v7;
    if (swift_dynamicCast())
    {
      v19 = v37;
      sub_1C04B2BC4();
      v20 = swift_allocError();
      *v21 = v19;
      sub_1C04B9574(v20, a2);

      *v6 = v19;
      goto LABEL_4;
    }

    *(a2 + qword_1EDE44718) = 51;
    sub_1C0483574();
    if (qword_1EDE40928 != -1)
    {
      swift_once();
    }

    v22 = sub_1C04F6400();
    __swift_project_value_buffer(v22, qword_1EDE40930);
    v23 = v7;
    v24 = sub_1C04F63E0();
    v25 = sub_1C04F6A20();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v37 = v7;
      v28 = v7;
      v29 = sub_1C04F6790();
      v31 = sub_1C047D76C(v29, v30, &v33);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1C0479000, v24, v25, "search failure: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1C68DCEB0](v27, -1, -1);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
    }

    v13 = 1;
LABEL_3:
    *v6 = v13;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1C04F64B0();
    return;
  }

  v15 = v33;
  v16 = v34;
  v17 = v35;
  sub_1C04B93C4(v33, v34, v35, a2);
  *v6 = 5;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C0482070(v15, v16, v17);
}

void sub_1C04B1C94()
{
  OUTLINED_FUNCTION_7_0();
  v73 = v0;
  v91 = v1;
  v83 = v2;
  v84 = v3;
  v85 = v4;
  sub_1C04F5CB0();
  OUTLINED_FUNCTION_0();
  v89 = v6;
  v90 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v88 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D008, &qword_1C04F8B18);
  OUTLINED_FUNCTION_2_1(v9);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_2(&v69 - v11);
  sub_1C04F5610();
  OUTLINED_FUNCTION_0();
  v86 = v13;
  v87 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_2(&v69 - v16);
  sub_1C04F54F0();
  OUTLINED_FUNCTION_0();
  v81 = v18;
  v82 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v80 = v20 - v19;
  v21 = sub_1C04F5CA0();
  v22 = OUTLINED_FUNCTION_2_1(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9_2(v24 - v23);
  v77 = sub_1C04F5650();
  OUTLINED_FUNCTION_0();
  v76 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_2(&v69 - v28);
  v29 = sub_1C04F54B0();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  v75 = sub_1C04F55F0();
  v36 = *(v75 - 8);
  v37 = v36;
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_1();
  v40 = v39 - v38;
  sub_1C04F56F0();
  sub_1C04F55E0();
  sub_1C04F54A0();
  sub_1C04F5470();
  (*(v31 + 8))(v35, v29);
  sub_1C04F55C0();

  sub_1C04F55D0();
  v41 = sub_1C04F56E0();
  v43 = v42;
  sub_1C04B2B50(sub_1C04E7D10);
  v44 = *(*v43 + 16);
  v45 = v77;
  v46 = v76;
  sub_1C04B30C4(v44, sub_1C04E7D10);
  v47 = *v43;
  *(v47 + 16) = v44 + 1;
  v48 = v47 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v36 + 72) * v44;
  v49 = v75;
  v50 = *(v36 + 16);
  v85 = v40;
  v50(v48, v40, v75);
  v41(&v94, 0);
  v51 = v78;
  sub_1C04F5640();
  sub_1C04F5C90();
  sub_1C04F5630();
  (*(v81 + 16))(v80, v84, v82);
  sub_1C04F56B0();
  sub_1C04F5680();
  v52 = v45;
  (*(v46 + 16))(v79, v51, v45);
  sub_1C04F5670();
  sub_1C04F56D0();
  if (qword_1EDE41E20 != -1)
  {
    OUTLINED_FUNCTION_14(&qword_1EDE41E20);
  }

  v53 = byte_1EDE44D78;
  sub_1C04F5660();
  if (v53 == 1)
  {
    v54 = *(v73 + 128);
    if (v54)
    {
      v55 = v37;
      v56 = v54;
      v57 = sub_1C04F6740();
      v58 = [v56 objectForKey_];

      if (v58)
      {
        sub_1C04F6BB0();
        swift_unknownObjectRelease();
      }

      else
      {
        v92 = 0u;
        v93 = 0u;
      }

      v60 = v87;
      v94 = v92;
      v95 = v93;
      v37 = v55;
      if (*(&v93 + 1))
      {
        sub_1C04B2C20(0, &qword_1EDE44778, 0x1E696AD98);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_16:
          v59 = MEMORY[0x1E69BCBB8];
          goto LABEL_17;
        }

        v61 = v92;
        [v92 integerValue];

        v62 = v72;
        sub_1C04F5600();
        if (__swift_getEnumTagSinglePayload(v62, 1, v60) != 1)
        {
          v66 = v86;
          v67 = v70;
          (*(v86 + 32))(v70, v62, v60);
          (*(v66 + 16))(v71, v67, v60);
          sub_1C04F56C0();
          v68 = v67;
          v37 = v55;
          (*(v66 + 8))(v68, v60);
          goto LABEL_18;
        }

        v63 = &qword_1EBE0D008;
        v64 = &qword_1C04F8B18;
        v65 = v62;
LABEL_15:
        sub_1C04A12B4(v65, v63, v64);
        goto LABEL_16;
      }
    }

    else
    {
      v94 = 0u;
      v95 = 0u;
      v60 = v87;
    }

    v63 = &qword_1EBE0CB20;
    v64 = &unk_1C04F8B20;
    v65 = &v94;
    goto LABEL_15;
  }

  v59 = MEMORY[0x1E69BCBB0];
  v60 = v87;
LABEL_17:
  (*(v86 + 104))(v74, *v59, v60);
  sub_1C04F56C0();
LABEL_18:
  (*(v89 + 16))(v88, v91, v90);
  sub_1C04F5690();
  (*(v46 + 8))(v51, v52);
  (*(v37 + 8))(v85, v49);
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04B24C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C04F5CB0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  (*(v9 + 104))(v12 - v11, *MEMORY[0x1E69BD1A0], v7);
  (*(*v3 + 640))(a1, a2, a3, v13);
  return (*(v9 + 8))(v13, v7);
}

void sub_1C04B25F8()
{
  OUTLINED_FUNCTION_7_0();
  v39 = v1;
  v37 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v42 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0);
  OUTLINED_FUNCTION_2_1(v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v35 = sub_1C04F65C0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  sub_1C04F6A80();
  OUTLINED_FUNCTION_0();
  v40 = v21;
  v41 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D010, &qword_1C04F8B30);
  OUTLINED_FUNCTION_0();
  v38 = v25;
  OUTLINED_FUNCTION_5_4();
  v27.n128_f64[0] = MEMORY[0x1EEE9AC00](v26);
  v29 = &v34 - v28;
  (*(*v0 + 560))(v27);
  v43 = (*(*v0 + 592))(v8, v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D018, &qword_1C04F8B38);
  OUTLINED_FUNCTION_3();
  sub_1C047C1A4(v30, &qword_1EBE0D018, &qword_1C04F8B38, v31);
  sub_1C04B2BC4();
  sub_1C04F6580();

  (*(v15 + 16))(v19, v37, v35);
  sub_1C04F6A90();
  v43 = v39;
  v32 = sub_1C04F6A70();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v32);
  sub_1C04B2C20(0, &qword_1EDE44168, 0x1E69E9610);
  sub_1C047C1A4(&qword_1EBE0D028, &qword_1EBE0D010, &qword_1C04F8B30, MEMORY[0x1E695BCF8]);
  sub_1C04B2C60();

  v33 = v36;
  sub_1C04F6550();

  sub_1C04A12B4(v13, &qword_1EBE0CF90, &qword_1C04F88E0);
  (*(v40 + 8))(v24, v41);
  (*(v38 + 8))(v29, v33);
  OUTLINED_FUNCTION_6();
}

void sub_1C04B29FC(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *(a1 + qword_1EDE44718) = 27;
  sub_1C0483574();
  *a2 = 2;
}

uint64_t PegasusProxyForAssistant.deinit()
{
  v0 = BasePegasusProxy.deinit();

  return v0;
}

uint64_t PegasusProxyForAssistant.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

id sub_1C04B2ABC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C04F6740();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_1C04B2B50(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

unint64_t sub_1C04B2BC4()
{
  result = qword_1EBE0D020;
  if (!qword_1EBE0D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D020);
  }

  return result;
}

uint64_t sub_1C04B2C20(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1C04B2C60()
{
  result = qword_1EDE41568[0];
  if (!qword_1EDE41568[0])
  {
    sub_1C04B2C20(255, &qword_1EDE44168, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE41568);
  }

  return result;
}

unint64_t sub_1C04B2CCC()
{
  result = qword_1EBE0D030;
  if (!qword_1EBE0D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D030);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PegasusProxyForAssistant.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PegasusProxyForAssistant.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

void sub_1C04B2FF0(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C04F5700();

  sub_1C04AF8C0(a1, a2);
}

uint64_t sub_1C04B30C4(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1C04B3114@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1C04F5700() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04B032C(a1, v2 + v6, v10, v11, v2 + v9, v12, a2);
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C04B324C()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D098);
  __swift_project_value_buffer(v0, qword_1EBE0D098);
  return sub_1C04F63F0();
}

uint64_t PegasusProxyForEngagement.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

void sub_1C04B3368()
{
  *&xmmword_1EBE0D0B0 = 0xD000000000000042;
  *(&xmmword_1EBE0D0B0 + 1) = 0x80000001C04FD4C0;
  qword_1EBE0D0C0 = 0xD000000000000010;
  unk_1EBE0D0C8 = 0x80000001C04FD510;
  *&xmmword_1EBE0D0D0 = 0xD000000000000013;
  *(&xmmword_1EBE0D0D0 + 1) = 0x80000001C04FD530;
}

void PegasusProxyForEngagement.init()()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v26 = sub_1C04F6240();
  v2 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  v6 = sub_1C04F6260();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = *MEMORY[0x1E69BDB08];
  v14 = *(v2 + 104);
  v14(v5, v13, v26);
  sub_1C04F6270();
  v15 = sub_1C04F6250();
  v17 = v16;
  v18 = *(v8 + 8);
  v18(v12, v6);
  v1[16] = v15;
  v1[17] = v17;
  v1[18] = 3;
  v14(v5, v13, v26);
  sub_1C04F6270();
  v19 = sub_1C04F6250();
  v21 = v20;
  v18(v12, v6);
  v1[16] = v19;
  v1[17] = v21;

  OUTLINED_FUNCTION_141();
  sub_1C04B8AAC(v22, v23, v24, v25, 0xF000000000000000, 0);
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04B3894()
{
  v1 = sub_1C04F6200();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  v5 = *(v0 + 16);

  sub_1C04F6220();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  return sub_1C0482EFC(v5, 18, v4, 0, 1);
}

void sub_1C04B3944()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v3 = v2;
  v33 = *v0;
  v34 = v4;
  v5 = sub_1C04F5AF0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D158, &unk_1C04F8E20);
  OUTLINED_FUNCTION_0();
  v36 = v13;
  v37 = v12;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v32 - v15;
  v16 = v0[16];
  v17 = v0[17];

  v18 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  v39 = v18;
  OUTLINED_FUNCTION_307();
  sub_1C049FB48(v16, v17, v19, 0xEA0000000000746ELL, v20);
  sub_1C04B7390();
  if (qword_1EDE42870 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  v21 = v1[18];

  v22 = sub_1C04D0244(v21, 0);

  v38 = v22;
  (*(v7 + 16))(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v5);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v7 + 32))(v26 + v23, v11, v5);
  *(v26 + v24) = v1;
  v27 = v33;
  *(v26 + v25) = v34;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_1C04F6410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D070, &qword_1C04F9350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D0E8, &qword_1C04F8CD0);
  OUTLINED_FUNCTION_2_9();
  sub_1C047C1A4(v28, &qword_1EBE0D070, &qword_1C04F9350, v29);
  sub_1C047C1A4(&qword_1EBE0D0F0, &qword_1EBE0D0E8, &qword_1C04F8CD0, v24);
  v30 = v35;
  sub_1C04F65B0();

  OUTLINED_FUNCTION_3_7(&qword_1EBE0D160, &qword_1EBE0D158, &unk_1C04F8E20);
  v31 = v37;
  sub_1C04F64E0();
  (*(v36 + 8))(v30, v31);
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04B3CFC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v87 = a5;
  v88 = a3;
  v94 = a1;
  v98 = a6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D110, &qword_1C04F8E00);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v77 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D118, &qword_1C04F8E08);
  v93 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v92 = &v77 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D168, &qword_1C04F8E30);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v77 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D170, &qword_1C04F8E38);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v77 - v13);
  v15 = sub_1C04F54F0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v77 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v77 - v25);
  v27 = sub_1C04F5AF0();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v32;
  v96 = v31;
  (*(v32 + 16))(v30, a2, v28);
  sub_1C04B713C(v94, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v30;
    v34 = *v26;
    *(a4 + qword_1EDE44718) = 49;
    sub_1C0483574();
    if (qword_1EBE0C9B8 != -1)
    {
      swift_once();
    }

    v35 = sub_1C04F6400();
    __swift_project_value_buffer(v35, qword_1EBE0D098);
    v36 = v34;
    v37 = sub_1C04F63E0();
    v38 = sub_1C04F6A20();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v101[0] = v40;
      *v39 = 136315138;
      *&v99[0] = v34;
      v41 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v42 = sub_1C04F6790();
      v44 = sub_1C047D76C(v42, v43, v101);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1C0479000, v37, v38, "context fetch failure: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1C68DCEB0](v40, -1, -1);
      MEMORY[0x1C68DCEB0](v39, -1, -1);
    }

    v45 = v33;
    *v90 = 7;
    swift_storeEnumTagMultiPayload();
    v46 = v92;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EBE0D130, &qword_1EBE0D118, &qword_1C04F8E08, MEMORY[0x1E695C008]);
    v47 = v97;
    v48 = sub_1C04F64E0();

    (*(v93 + 8))(v46, v47);
  }

  else
  {
    v78 = a4;
    v49 = *(v16 + 32);
    v49(v23, v26, v15);
    sub_1C04F5AD0();
    v94 = v23;
    sub_1C0482664(18, v18, v14);
    v50 = *(v16 + 8);
    v80 = v16 + 8;
    v79 = v50;
    v50(v18, v15);
    v45 = v30;
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_1C04A12B4(v14, &qword_1EBE0CC70, &qword_1C04F8CB0);
      *(v78 + qword_1EDE44718) = 50;
      sub_1C0483574();
      if (qword_1EBE0C9B8 != -1)
      {
        swift_once();
      }

      v51 = sub_1C04F6400();
      __swift_project_value_buffer(v51, qword_1EBE0D098);
      v52 = sub_1C04F63E0();
      v53 = sub_1C04F6A20();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1C0479000, v52, v53, "unable to create unified query context", v54, 2u);
        v55 = v54;
        v45 = v30;
        MEMORY[0x1C68DCEB0](v55, -1, -1);
      }

      *v90 = 8;
      swift_storeEnumTagMultiPayload();
      v56 = v92;
      sub_1C04F64B0();
      sub_1C047C1A4(&qword_1EBE0D130, &qword_1EBE0D118, &qword_1C04F8E08, MEMORY[0x1E695C008]);
      v57 = v97;
      v48 = sub_1C04F64E0();
      (*(v93 + 8))(v56, v57);
      v79(v94, v15);
    }

    else
    {
      v58 = v89;
      v49(v89, v14, v15);
      (*(v16 + 16))(v18, v58, v15);
      sub_1C04F5AE0();
      sub_1C047ACAC();
      v59 = v15;
      if (qword_1EBE0C9C0 != -1)
      {
        swift_once();
      }

      v101[0] = xmmword_1EBE0D0B0;
      v101[1] = *&qword_1EBE0D0C0;
      v101[2] = xmmword_1EBE0D0D0;
      v60 = sub_1C04B7354();
      v100 = 0;
      memset(v99, 0, sizeof(v99));
      v61 = sub_1C04D972C(v101, v45, v60, v99, 1);
      v62 = v78;
      v63 = v61;
      v65 = v64;
      sub_1C04A12B4(v99, &qword_1EBE0CE40, &qword_1C04F8900);

      v66 = v63;

      v67 = nw_activity_create();
      v68 = v66;
      sub_1C04E0B04(v68, v67, 0, 0xE000000000000000, v62);
      swift_unknownObjectRelease();

      *&v99[0] = v65;

      sub_1C04F6410();
      v93 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D138, &qword_1C04FA7F0);
      sub_1C047C1A4(&qword_1EBE0D140, &qword_1EBE0D138, &qword_1C04FA7F0, MEMORY[0x1E695BED8]);
      sub_1C047C1A4(&qword_1EBE0D130, &qword_1EBE0D118, &qword_1C04F8E08, MEMORY[0x1E695C008]);
      v69 = v81;
      sub_1C04F6530();

      v70 = swift_allocObject();
      v71 = v87;
      *(v70 + 16) = v62;
      *(v70 + 24) = v71;
      sub_1C047C1A4(&qword_1EBE0D178, &qword_1EBE0D168, &qword_1C04F8E30, MEMORY[0x1E695BE40]);

      v72 = v82;
      v73 = v84;
      sub_1C04F6500();
      v45 = v93;

      (*(v83 + 8))(v69, v73);
      sub_1C047C1A4(&qword_1EBE0D180, &qword_1EBE0D170, &qword_1C04F8E38, MEMORY[0x1E695BDA0]);
      v74 = v86;
      v48 = sub_1C04F64E0();

      (*(v85 + 8))(v72, v74);
      v75 = v79;
      v79(v89, v59);
      v75(v94, v59);
    }
  }

  result = (*(v95 + 8))(v45, v96);
  *v98 = v48;
  return result;
}