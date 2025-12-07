uint64_t sub_24DCCFEF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98C0, &qword_24DCDCE70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_24DCDC17C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_24DCDC16C();
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

uint64_t InProcessTransport.init(serviceConfig:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24DCDC19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0x65636F72702D6E69;
  v16 = 0xEB000000003A7373;
  v14[1] = sub_24DCD024C();
  v8 = sub_24DCDC40C();
  MEMORY[0x253036840](v8);

  v9 = v15;
  v10 = v16;
  type metadata accessor for InProcessTransport.Server(0);

  *a2 = InProcessTransport.Server.__allocating_init(peer:)(v9, v10);
  type metadata accessor for InProcessTransport.Client(0);
  (*(v5 + 16))(v7, a1, v4);

  v12 = InProcessTransport.Client.__allocating_init(server:serviceConfig:peer:)(v11, v7, v9, v10);
  result = (*(v5 + 8))(a1, v4);
  a2[1] = v12;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24DCD01B8(uint64_t *a1, int a2)
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

uint64_t sub_24DCD0200(uint64_t result, int a2, int a3)
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

uint64_t default argument 1 of InProcessTransport.Client.init(server:serviceConfig:peer:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98C0, &qword_24DCDCE70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_24DCDC17C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_24DCDC16C();
}

uint64_t InProcessTransport.Client.__allocating_init(server:serviceConfig:peer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24DCD71E0(a1, a2, a3, a4);

  return v8;
}

uint64_t InProcessTransport.Client.init(server:serviceConfig:peer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24DCD71E0(a1, a2, a3, a4);

  return v4;
}

uint64_t InProcessTransport.Client.connect()()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98C8, &qword_24DCDCF20);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D0, &qword_24DCDCF28);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98E0, &qword_24DCDCF38);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98E8, &qword_24DCDCF40);
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
  v1[18] = v7;
  v1[19] = *(v7 - 8);
  v1[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F8, &qword_24DCDCF50);
  v1[21] = v8;
  v1[22] = *(v8 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCD072C, 0, 0);
}

uint64_t sub_24DCD072C()
{
  v13 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 16);
  (*(v3 + 104))(v2, *MEMORY[0x277D85778], v4);
  sub_24DCDC32C();
  (*(v3 + 8))(v2, v4);
  v6 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state;
  *(v0 + 192) = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state;
  v7 = (v5 + v6);
  os_unfair_lock_lock((v5 + v6));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58) + 28);
  *(v0 + 288) = v8;
  sub_24DCD15C4(v7 + v8, v1, &v12);
  *(v0 + 200) = 0;
  os_unfair_lock_unlock(v7);
  sub_24DCDC36C();
  v9 = swift_task_alloc();
  *(v0 + 208) = v9;
  *v9 = v0;
  v9[1] = sub_24DCD09B8;
  v10 = *(v0 + 96);

  return MEMORY[0x2822003E8](v0 + 296, 0, 0, v10);
}

uint64_t sub_24DCD09B8()
{

  return MEMORY[0x2822009F8](sub_24DCD0AB4, 0, 0);
}

uint64_t sub_24DCD0AB4()
{
  v27 = v0;
  if (*(v0 + 296))
  {
    v1 = *(v0 + 288);
    v2 = (*(v0 + 16) + *(v0 + 192));
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    os_unfair_lock_lock(v2);
    sub_24DCD19A0(v2 + v1, &v26);
    os_unfair_lock_unlock(v2);
    v3 = v26;
    *(v0 + 216) = v26;
    v4 = *(v3 + 32);
    *(v0 + 297) = v4;
    v5 = -1;
    v6 = -1 << v4;
    if (-(-1 << v4) < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v3 + 64);

    if (v7)
    {
      v8 = 0;
LABEL_12:
      *(v0 + 224) = v7;
      *(v0 + 232) = v8;
      v12 = *(v0 + 88);
      v13 = *(v0 + 72);
      sub_24DCD82F0(*(v3 + 56) + *(*(v0 + 80) + 72) * (__clz(__rbit64(v7)) | (v8 << 6)), v12, &qword_27F1A98D8, &qword_24DCDCF30);
      *(v0 + 292) = *(v13 + 48);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9908, &qword_24DCDCF60);
      sub_24DCDC27C();
      (*(*(v14 - 8) + 8))(v12, v14);
      *(v0 + 240) = sub_24DCDC2FC();
      *(v0 + 248) = sub_24DCD7754(&qword_27F1A9910, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v15 = swift_allocError();
      *(v0 + 256) = v15;
      sub_24DCDC2BC();
      v16 = swift_task_alloc();
      *(v0 + 264) = v16;
      *v16 = v0;
      v16[1] = sub_24DCD0EA8;
      v17 = *(v0 + 48);

      return MEMORY[0x282162F38](v15, v17);
    }

    else
    {
      v11 = 0;
      while (((63 - v6) >> 6) - 1 != v11)
      {
        v8 = v11 + 1;
        v7 = *(v3 + 8 * v11++ + 72);
        if (v7)
        {
          goto LABEL_12;
        }
      }

      v19 = *(v0 + 176);
      v18 = *(v0 + 184);
      v21 = *(v0 + 160);
      v20 = *(v0 + 168);
      v22 = *(v0 + 144);
      v23 = *(v0 + 152);

      (*(v23 + 8))(v21, v22);
      (*(v19 + 8))(v18, v20);

      v24 = *(v0 + 8);

      return v24();
    }
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    *v9 = v0;
    v9[1] = sub_24DCD09B8;
    v10 = *(v0 + 96);

    return MEMORY[0x2822003E8](v0 + 296, 0, 0, v10);
  }
}

uint64_t sub_24DCD0EA8()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  MEMORY[0x253036B30](v1);

  return MEMORY[0x2822009F8](sub_24DCD101C, 0, 0);
}

uint64_t sub_24DCD101C()
{
  v1 = *(v0 + 292);
  v2 = *(v0 + 88);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  sub_24DCDC27C();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  v4 = swift_allocError();
  *(v0 + 272) = v4;
  sub_24DCDC2BC();
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = sub_24DCD1158;
  v6 = *(v0 + 24);

  return MEMORY[0x282162F38](v4, v6);
}

uint64_t sub_24DCD1158()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  MEMORY[0x253036B30](v1);

  return MEMORY[0x2822009F8](sub_24DCD12CC, 0, 0);
}

uint64_t sub_24DCD12CC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 232);
  v4 = (*(v2 + 224) - 1) & *(v2 + 224);
  if (v4)
  {
    v5 = *(v2 + 216);
LABEL_7:
    *(v2 + 224) = v4;
    *(v2 + 232) = v3;
    v7 = *(v2 + 88);
    v8 = *(v2 + 72);
    sub_24DCD82F0(*(v5 + 56) + *(*(v2 + 80) + 72) * (__clz(__rbit64(v4)) | (v3 << 6)), v7, &qword_27F1A98D8, &qword_24DCDCF30);
    *(v2 + 292) = *(v8 + 48);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9908, &qword_24DCDCF60);
    sub_24DCDC27C();
    (*(*(v9 - 8) + 8))(v7, v9);
    *(v2 + 240) = sub_24DCDC2FC();
    *(v2 + 248) = sub_24DCD7754(&qword_27F1A9910, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v10 = swift_allocError();
    *(v2 + 256) = v10;
    sub_24DCDC2BC();
    v11 = swift_task_alloc();
    *(v2 + 264) = v11;
    *v11 = v2;
    v11[1] = sub_24DCD0EA8;
    a2 = *(v2 + 48);
    a1 = v10;

    return MEMORY[0x282162F38](a1, a2);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return MEMORY[0x282162F38](a1, a2);
      }

      v5 = *(v2 + 216);
      if (v6 >= (((1 << *(v2 + 297)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v13 = *(v2 + 176);
    v12 = *(v2 + 184);
    v15 = *(v2 + 160);
    v14 = *(v2 + 168);
    v16 = *(v2 + 144);
    v17 = *(v2 + 152);

    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);

    v18 = *(v2 + 8);

    return v18();
  }
}

uint64_t sub_24DCD15C4(char *a1, uint64_t a2, uint64_t *a3)
{
  v26 = a2;
  v5 = sub_24DCDC1FC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24DCDC22C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DCD80DC(a1, v13, _s14descr2860F21E1O6ClientC5StateOMa);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24DCDC20C();
    MEMORY[0x253036750](MEMORY[0x277D84F90]);
    sub_24DCDC24C();
    sub_24DCD7754(&qword_27F1A99D0, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
    v14 = swift_allocError();
    sub_24DCDC23C();
    swift_willThrow();
    result = sub_24DCD8144(v13, _s14descr2860F21E1O6ClientC5StateOMa);
    *a3 = v14;
  }

  else
  {
    sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
    v17 = *v13;
    v16 = v13[1];
    v18 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa(0);
    v19 = *(v8 + 16);
    v19(&a1[*(v18 + 28)], v26, v7);
    v26 = v17;
    *a1 = v17;
    *(a1 + 1) = 0;
    *(a1 + 2) = sub_24DCD7010(MEMORY[0x277D84F90]);
    swift_storeEnumTagMultiPayload();
    v20 = *(v16 + 16);
    if (v20)
    {
      v21 = v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v22 = v16;
      v23 = *(v8 + 72);
      v24 = (v8 + 8);

      v25 = v22;

      do
      {
        v19(v10, v21, v7);
        sub_24DCDC34C();
        (*v24)(v10, v7);
        v21 += v23;
        --v20;
      }

      while (v20);

      return swift_bridgeObjectRelease_n();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24DCD19A0@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v4 = _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCD80DC(a1, v12, _s14descr2860F21E1O6ClientC5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
    sub_24DCD81A4(v12, v9, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
    v14 = *(v4 + 20);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
    v16 = *(*(v15 - 8) + 56);
    v16(&a1[v14], 1, 1, v15);
    *a1 = sub_24DCD7010(MEMORY[0x277D84F90]);
    sub_24DCD8358(&a1[v14], &qword_27F1A9920, &qword_24DCDCF70);
    v16(&a1[v14], 1, 1, v15);
    swift_storeEnumTagMultiPayload();
    v17 = *(v9 + 2);

    v18 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa;
    v19 = v9;
LABEL_5:
    result = sub_24DCD8144(v19, v18);
    *a2 = v17;
    return result;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24DCD81A4(v12, v6, _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa);
    v17 = *v6;

    v18 = _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa;
    v19 = v6;
    goto LABEL_5;
  }

  result = sub_24DCDC3CC();
  __break(1u);
  return result;
}

Swift::Void __swiftcall InProcessTransport.Client.beginGracefulShutdown()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9920, &qword_24DCDCF70);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = (v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state);
  os_unfair_lock_lock(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58);
  sub_24DCD1E80(v7 + *(v8 + 28), v6);
  os_unfair_lock_unlock(v7);
  sub_24DCD82F0(v6, v4, &qword_27F1A9920, &qword_24DCDCF70);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_24DCD8358(v6, &qword_27F1A9920, &qword_24DCDCF70);
    sub_24DCD8358(v4, &qword_27F1A9920, &qword_24DCDCF70);
  }

  else
  {
    sub_24DCDC34C();
    sub_24DCD8358(v6, &qword_27F1A9920, &qword_24DCDCF70);
    (*(v10 + 8))(v4, v9);
  }
}

uint64_t sub_24DCD1E80@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCD80DC(a1, v12, _s14descr2860F21E1O6ClientC5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
      sub_24DCD81A4(v12, v9, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
      if (*(*(v9 + 2) + 16))
      {
        v29 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa;
        sub_24DCD80DC(v9, v7, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
        v14 = _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa(0);
        v30 = a2;
        v15 = *(v14 + 20);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
        v17 = *(v16 - 8);
        v18 = *(v17 + 56);
        v18(&a1[v15], 1, 1, v16);
        *a1 = *(v7 + 2);

        sub_24DCD8358(&a1[v15], &qword_27F1A9920, &qword_24DCDCF70);
        (*(v17 + 16))(&a1[v15], &v7[*(v4 + 28)], v16);
        v19 = v29;
        sub_24DCD8144(v7, v29);
        v18(&a1[v15], 0, 1, v16);
        sub_24DCD8144(v9, v19);
        swift_storeEnumTagMultiPayload();
        return (v18)(v30, 1, 1, v16);
      }

      else
      {
        v25 = *(_s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa(0) + 20);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
        v27 = *(v26 - 8);
        v28 = *(v27 + 56);
        v28(&a1[v25], 1, 1, v26);
        *a1 = sub_24DCD7010(MEMORY[0x277D84F90]);
        sub_24DCD8358(&a1[v25], &qword_27F1A9920, &qword_24DCDCF70);
        v28(&a1[v25], 1, 1, v26);
        swift_storeEnumTagMultiPayload();
        (*(v27 + 16))(a2, &v9[*(v4 + 28)], v26);
        sub_24DCD8144(v9, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
        return (v28)(a2, 0, 1, v26);
      }
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
      (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
      return sub_24DCD8144(v12, _s14descr2860F21E1O6ClientC5StateOMa);
    }
  }

  else
  {
    sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
    sub_24DCD8144(v12, _s14descr2860F21E1O6ClientC5StateOMa);
    v21 = *(_s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa(0) + 20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
    v23 = *(*(v22 - 8) + 56);
    v23(&a1[v21], 1, 1, v22);
    *a1 = sub_24DCD7010(MEMORY[0x277D84F90]);
    sub_24DCD8358(&a1[v21], &qword_27F1A9920, &qword_24DCDCF70);
    v23(&a1[v21], 1, 1, v22);
    swift_storeEnumTagMultiPayload();
    return (v23)(a2, 1, 1, v22);
  }
}

uint64_t InProcessTransport.Client.withStream<A>(descriptor:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a1;
  v7[4] = a2;
  v9 = sub_24DCDC24C();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = *(a6 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1A9928, &qword_24DCDCF80);
  v10 = sub_24DCDC45C();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v11 = sub_24DCDC0CC();
  v7[19] = v11;
  v7[20] = *(v11 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9930, &qword_24DCDCF88);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98E0, &qword_24DCDCF38);
  v7[25] = v12;
  v7[26] = *(v12 - 8);
  v7[27] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F8, &qword_24DCDCF50);
  v7[28] = v13;
  v7[29] = *(v13 - 8);
  v7[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9938, &qword_24DCDCF90);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98C8, &qword_24DCDCF20);
  v7[33] = v14;
  v7[34] = *(v14 - 8);
  v7[35] = swift_task_alloc();
  v7[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9940, &qword_24DCDCF98);
  v7[37] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  v7[38] = v15;
  v7[39] = *(v15 - 8);
  v7[40] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D0, &qword_24DCDCF28);
  v7[41] = v16;
  v7[42] = *(v16 - 8);
  v7[43] = swift_task_alloc();
  v7[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9948, &qword_24DCDCFA0);
  v7[45] = swift_task_alloc();
  v17 = sub_24DCDC1AC();
  v7[46] = v17;
  v7[47] = *(v17 - 8);
  v7[48] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9908, &qword_24DCDCF60);
  v7[49] = v18;
  v7[50] = *(v18 - 8);
  v7[51] = swift_task_alloc();
  v7[52] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9950, &qword_24DCDCFA8);
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v7[55] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9958, &qword_24DCDCFB0);
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCD2A38, 0, 0);
}

uint64_t sub_24DCD2A38()
{
  v1 = *(v0 + 456);
  v50 = *(v0 + 448);
  v2 = *(v0 + 432);
  v46 = *(v0 + 440);
  v3 = *(v0 + 416);
  v60 = *(v0 + 424);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 368);
  v54 = v6;
  v59 = *(v0 + 256);
  v7 = *(v0 + 112);
  v52 = v7;
  v58 = *(v0 + 64);
  v8 = *(v0 + 32);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9960, &qword_24DCDCFB8);
  v61 = v1;
  sub_24DCDC1CC();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9968, &qword_24DCDCFC0);
  sub_24DCDC1CC();
  v53 = *(v5 + 16);
  *(v0 + 464) = v53;
  *(v0 + 472) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v53(v4, v8, v6);
  sub_24DCD82F0(v2, v60, &qword_27F1A9950, &qword_24DCDCFA8);
  v9 = *(v3 + 48);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9970, &qword_24DCDCFC8);
  v51 = MEMORY[0x277D0B8C8];
  v10 = sub_24DCD7800(&qword_27F1A9978, &qword_27F1A9970, &qword_24DCDCFC8, MEMORY[0x277D0B8C8]);
  MEMORY[0x253036720](v60, v56, v7, v57, v10);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9980, &qword_24DCDCFD0);
  (*(*(v55 - 8) + 8))(v60 + v9, v55);
  sub_24DCD82F0(v61, v50, &qword_27F1A9958, &qword_24DCDCFB0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9988, &qword_24DCDCFD8);
  v49 = MEMORY[0x277D0B8C0];
  sub_24DCD7800(&qword_27F1A9990, &qword_27F1A9988, &qword_24DCDCFD8, MEMORY[0x277D0B8C0]);
  sub_24DCDC2AC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9998, &qword_24DCDCFE0);
  (*(*(v12 - 8) + 8))(v50, v12);
  v47 = MEMORY[0x277D0B8A8];
  sub_24DCD7800(&qword_27F1A99A0, &qword_27F1A9948, &qword_24DCDCFA0, MEMORY[0x277D0B8A8]);
  v13 = MEMORY[0x277D0B958];
  sub_24DCD7800(&qword_27F1A99A8, &qword_27F1A98D0, &qword_24DCDCF28, MEMORY[0x277D0B958]);
  sub_24DCDC25C();
  v53(v4, v8, v54);
  sub_24DCD82F0(v61, v50, &qword_27F1A9958, &qword_24DCDCFB0);
  v14 = *(v46 + 48);
  v15 = sub_24DCD7800(&qword_27F1A99B0, &qword_27F1A9998, &qword_24DCDCFE0, v51);
  MEMORY[0x253036720](v50, v48, v52, v12, v15);
  (*(*(v11 - 8) + 8))(v50 + v14, v11);
  sub_24DCD82F0(v2, v60, &qword_27F1A9950, &qword_24DCDCFA8);
  sub_24DCD7800(&qword_27F1A99B8, &qword_27F1A9980, &qword_24DCDCFD0, v49);
  sub_24DCDC2AC();
  (*(*(v57 - 8) + 8))(v60);
  sub_24DCD7800(&qword_27F1A99C0, &qword_27F1A9940, &qword_24DCDCF98, v47);
  sub_24DCD7800(&qword_27F1A99C8, &qword_27F1A98C8, &qword_24DCDCF20, v13);
  sub_24DCDC25C();
  v16 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state;
  *(v0 + 480) = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state;
  v17 = (v58 + v16);
  os_unfair_lock_lock((v58 + v16));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58) + 28);
  *(v0 + 600) = v18;
  sub_24DCD4AB4((&v17->_os_unfair_lock_opaque + v18), v59);
  *(v0 + 488) = 0;
  os_unfair_lock_unlock(v17);
  v19 = *(v0 + 248);
  v20 = *(v0 + 224);
  v21 = *(v0 + 232);
  sub_24DCD82F0(*(v0 + 256), v19, &qword_27F1A9938, &qword_24DCDCF90);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_24DCD8358(*(v0 + 248), &qword_27F1A9938, &qword_24DCDCF90);
    v22 = *(v0 + 600);
    v23 = *(v0 + 408);
    v24 = *(v0 + 320);
    v25 = *(v0 + 192);
    v26 = (*(v0 + 64) + *(v0 + 480));
    os_unfair_lock_lock(v26);
    sub_24DCD4E8C(v26 + v22, v24, v23, v25);
    os_unfair_lock_unlock(v26);
    v30 = *(v0 + 184);
    v29 = *(v0 + 192);
    (*(v0 + 464))(*(v0 + 384), *(v0 + 32), *(v0 + 368));
    swift_bridgeObjectRetain_n();
    sub_24DCDC0BC();
    sub_24DCD82F0(v29, v30, &qword_27F1A9930, &qword_24DCDCF88);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v33 = *(v0 + 80);
      v32 = *(v0 + 88);
      v34 = *(v0 + 72);
      (*(v33 + 32))(v32, *(v0 + 184), v34);
      sub_24DCDC27C();
      *(v0 + 544) = sub_24DCD7754(&qword_27F1A99D0, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
      v35 = swift_allocError();
      *(v0 + 552) = v35;
      v36 = *(v33 + 16);
      *(v0 + 560) = v36;
      *(v0 + 568) = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v36(v37, v32, v34);
      v38 = swift_task_alloc();
      *(v0 + 576) = v38;
      *v38 = v0;
      v38[1] = sub_24DCD4354;
      v39 = *(v0 + 264);

      return MEMORY[0x282162F38](v35, v39);
    }

    else
    {
      v40 = *(v0 + 40);
      *(v0 + 504) = **(v0 + 184);
      v62 = (v40 + *v40);
      v41 = swift_task_alloc();
      *(v0 + 512) = v41;
      *v41 = v0;
      v41[1] = sub_24DCD3B3C;
      v42 = *(v0 + 408);
      v43 = *(v0 + 168);
      v44 = *(v0 + 104);

      return v62(v44, v42, v43);
    }
  }

  else
  {
    (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 248), *(v0 + 224));
    sub_24DCDC36C();
    v27 = swift_task_alloc();
    *(v0 + 496) = v27;
    *v27 = v0;
    v27[1] = sub_24DCD3410;
    v28 = *(v0 + 200);

    return MEMORY[0x2822003E8](v0 + 604, 0, 0, v28);
  }
}

uint64_t sub_24DCD3410()
{

  return MEMORY[0x2822009F8](sub_24DCD350C, 0, 0);
}

void sub_24DCD350C()
{
  if (*(v0 + 604))
  {
    v1 = *(v0 + 488);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    sub_24DCDC38C();
    if (v1)
    {
      v2 = *(v0 + 456);
      v3 = *(v0 + 432);
      v4 = *(v0 + 400);
      v5 = *(v0 + 408);
      v6 = *(v0 + 392);
      v8 = *(v0 + 312);
      v7 = *(v0 + 320);
      v9 = *(v0 + 304);
      v10 = *(v0 + 256);
      (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
      sub_24DCD8358(v10, &qword_27F1A9938, &qword_24DCDCF90);
      (*(v8 + 8))(v7, v9);
      (*(v4 + 8))(v5, v6);
      sub_24DCD8358(v3, &qword_27F1A9950, &qword_24DCDCFA8);
      sub_24DCD8358(v2, &qword_27F1A9958, &qword_24DCDCFB0);

      v11 = *(v0 + 8);

      v11();
    }

    else
    {
      (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
      v14 = *(v0 + 600);
      v15 = *(v0 + 408);
      v16 = *(v0 + 320);
      v17 = *(v0 + 192);
      v18 = (*(v0 + 64) + *(v0 + 480));
      os_unfair_lock_lock(v18);
      sub_24DCD4E8C(v18 + v14, v16, v15, v17);
      os_unfair_lock_unlock(v18);
      v20 = *(v0 + 184);
      v19 = *(v0 + 192);
      (*(v0 + 464))(*(v0 + 384), *(v0 + 32), *(v0 + 368));
      swift_bridgeObjectRetain_n();
      sub_24DCDC0BC();
      sub_24DCD82F0(v19, v20, &qword_27F1A9930, &qword_24DCDCF88);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = *(v0 + 80);
        v21 = *(v0 + 88);
        v23 = *(v0 + 72);
        (*(v22 + 32))(v21, *(v0 + 184), v23);
        sub_24DCDC27C();
        *(v0 + 544) = sub_24DCD7754(&qword_27F1A99D0, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
        v24 = swift_allocError();
        *(v0 + 552) = v24;
        v25 = *(v22 + 16);
        *(v0 + 560) = v25;
        *(v0 + 568) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v25(v26, v21, v23);
        v27 = swift_task_alloc();
        *(v0 + 576) = v27;
        *v27 = v0;
        v27[1] = sub_24DCD4354;
        v28 = *(v0 + 264);

        MEMORY[0x282162F38](v24, v28);
      }

      else
      {
        v29 = *(v0 + 40);
        *(v0 + 504) = **(v0 + 184);
        v34 = (v29 + *v29);
        v30 = swift_task_alloc();
        *(v0 + 512) = v30;
        *v30 = v0;
        v30[1] = sub_24DCD3B3C;
        v31 = *(v0 + 408);
        v32 = *(v0 + 168);
        v33 = *(v0 + 104);

        v34(v33, v31, v32);
      }
    }
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 496) = v12;
    *v12 = v0;
    v12[1] = sub_24DCD3410;
    v13 = *(v0 + 200);

    MEMORY[0x2822003E8](v0 + 604, 0, 0, v13);
  }
}

uint64_t sub_24DCD3B3C()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_24DCD49EC;
  }

  else
  {
    v2 = sub_24DCD3C50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DCD3C50()
{
  (*(v0[12] + 32))(v0[18], v0[13], v0[7]);
  swift_storeEnumTagMultiPayload();
  v0[66] = v0[65];
  sub_24DCDC27C();
  v1 = swift_task_alloc();
  v0[67] = v1;
  *v1 = v0;
  v1[1] = sub_24DCD3D38;
  v2 = v0[41];

  return MEMORY[0x282162F40](v2);
}

uint64_t sub_24DCD3D38()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_24DCD3E90, 0, 0);
}

uint64_t sub_24DCD3E90()
{
  v1 = v0[66];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[3];
  sub_24DCD57F4(v0[63]);
  (*(v5 + 16))(v3, v2, v4);
  sub_24DCD59D0(v4, (v0 + 2), v6);
  v33 = v0[57];
  if (v1)
  {
    v7 = v0[50];
    v31 = v0[51];
    v32 = v0[54];
    v30 = v0[49];
    v8 = v0[39];
    v9 = v0[40];
    v10 = v0[38];
    v11 = v0[32];
    v12 = v0[24];
    v13 = v0[20];
    v14 = v0[21];
    v15 = v0[19];
    (*(v0[16] + 8))(v0[18], v0[15]);
    (*(v13 + 8))(v14, v15);
    sub_24DCD8358(v12, &qword_27F1A9930, &qword_24DCDCF88);
    sub_24DCD8358(v11, &qword_27F1A9938, &qword_24DCDCF90);
    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v31, v30);
    sub_24DCD8358(v32, &qword_27F1A9950, &qword_24DCDCFA8);
  }

  else
  {
    v29 = v0[54];
    v17 = v0[50];
    v27 = v0[49];
    v28 = v0[51];
    v18 = v0[39];
    v19 = v0[40];
    v20 = v0[38];
    v21 = v0[32];
    v22 = v0[24];
    v24 = v0[20];
    v23 = v0[21];
    v25 = v0[19];
    (*(v0[16] + 8))();
    (*(v24 + 8))(v23, v25);
    sub_24DCD8358(v22, &qword_27F1A9930, &qword_24DCDCF88);
    sub_24DCD8358(v21, &qword_27F1A9938, &qword_24DCDCF90);
    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v28, v27);
    sub_24DCD8358(v29, &qword_27F1A9950, &qword_24DCDCFA8);
  }

  sub_24DCD8358(v33, &qword_27F1A9958, &qword_24DCDCFB0);

  v16 = v0[1];

  return v16();
}

uint64_t sub_24DCD4354()
{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v4 = *(*v0 + 264);

  (*(v3 + 8))(v2, v4);
  MEMORY[0x253036B30](v1);

  return MEMORY[0x2822009F8](sub_24DCD44C8, 0, 0);
}

uint64_t sub_24DCD44C8()
{
  v1 = v0[70];
  v2 = v0[11];
  v3 = v0[9];
  sub_24DCDC27C();
  v4 = swift_allocError();
  v0[73] = v4;
  v1(v5, v2, v3);
  v6 = swift_task_alloc();
  v0[74] = v6;
  *v6 = v0;
  v6[1] = sub_24DCD45C4;
  v7 = v0[41];

  return MEMORY[0x282162F38](v4, v7);
}

uint64_t sub_24DCD45C4()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 328);

  (*(v3 + 8))(v2, v4);
  MEMORY[0x253036B30](v1);

  return MEMORY[0x2822009F8](sub_24DCD4738, 0, 0);
}

uint64_t sub_24DCD4738()
{
  v1 = v0[70];
  v19 = v0[54];
  v20 = v0[57];
  v2 = v0[50];
  v17 = v0[49];
  v18 = v0[51];
  v3 = v0[39];
  v15 = v0[38];
  v16 = v0[40];
  v13 = v0[24];
  v14 = v0[32];
  v4 = v0[20];
  v11 = v0[19];
  v12 = v0[21];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];
  swift_allocError();
  v1(v8, v6, v7);
  swift_willThrow();
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v12, v11);
  sub_24DCD8358(v13, &qword_27F1A9930, &qword_24DCDCF88);
  sub_24DCD8358(v14, &qword_27F1A9938, &qword_24DCDCF90);
  (*(v3 + 8))(v16, v15);
  (*(v2 + 8))(v18, v17);
  sub_24DCD8358(v19, &qword_27F1A9950, &qword_24DCDCFA8);
  sub_24DCD8358(v20, &qword_27F1A9958, &qword_24DCDCFB0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24DCD49EC()
{
  **(v0 + 144) = *(v0 + 520);
  swift_storeEnumTagMultiPayload();
  *(v0 + 528) = 0;
  sub_24DCDC27C();
  v1 = swift_task_alloc();
  *(v0 + 536) = v1;
  *v1 = v0;
  v1[1] = sub_24DCD3D38;
  v2 = *(v0 + 328);

  return MEMORY[0x282162F40](v2);
}

uint64_t sub_24DCD4AB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98E8, &qword_24DCDCF40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DCD80DC(a1, v16, _s14descr2860F21E1O6ClientC5StateOMa);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24DCD8144(v16, _s14descr2860F21E1O6ClientC5StateOMa);
    v17 = 1;
    v18 = v30;
  }

  else
  {
    v29 = a1;
    sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
    v19 = *v16;
    v20 = v16[1];
    v28 = v19;
    (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3);
    sub_24DCDC32C();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 16))(v11, v13, v7);
    v21 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_24DCD651C(0, v20[2] + 1, 1, v20);
    }

    v23 = v20[2];
    v22 = v20[3];
    v24 = v29;
    v18 = v30;
    if (v23 >= v22 >> 1)
    {
      v20 = sub_24DCD651C((v22 > 1), v23 + 1, 1, v20);
    }

    (*(v8 + 8))(v13, v7);
    v20[2] = v23 + 1;
    (*(v8 + 32))(v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23, v21, v7);
    *v24 = v28;
    v24[1] = v20;
    swift_storeEnumTagMultiPayload();
    v17 = 0;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F8, &qword_24DCDCF50);
  return (*(*(v25 - 8) + 56))(v18, v17, 1, v25);
}

uint64_t sub_24DCD4E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a4;
  v37 = a3;
  v38 = a2;
  v5 = sub_24DCDC1FC();
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24DCDC22C();
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24DCDC24C();
  v9 = *(v41 - 8);
  v10 = MEMORY[0x28223BE20](v41);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A08, &qword_24DCDD118);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  v18 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_24DCD80DC(a1, v23, _s14descr2860F21E1O6ClientC5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DCDC20C();
      MEMORY[0x253036750](MEMORY[0x277D84F90]);
      sub_24DCDC23C();
      (*(v9 + 32))(v42, v14, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9930, &qword_24DCDCF88);
      swift_storeEnumTagMultiPayload();
      return sub_24DCD8144(v23, _s14descr2860F21E1O6ClientC5StateOMa);
    }

LABEL_12:
    result = sub_24DCDC3CC();
    __break(1u);
    return result;
  }

  sub_24DCD81A4(v23, v20, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
  v36 = *(v20 + 1);
  v26 = v38;
  v27 = v43;
  sub_24DCD8954(v38);
  if (!v27)
  {
    sub_24DCD8144(v24, _s14descr2860F21E1O6ClientC5StateOMa);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
    v31 = *(v30 + 48);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9908, &qword_24DCDCF60);
    (*(*(v32 - 8) + 16))(v17, v37, v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
    (*(*(v33 - 8) + 16))(&v17[v31], v26, v33);
    (*(*(v30 - 8) + 56))(v17, 0, 1, v30);
    v34 = v36;
    sub_24DCD55C0(v17, v36);
    if (!__OFADD__(v34, 1))
    {
      *(v20 + 1) = v34 + 1;
      sub_24DCD80DC(v20, v24, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
      sub_24DCD8144(v20, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
      swift_storeEnumTagMultiPayload();
      *v42 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9930, &qword_24DCDCF88);
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
    goto LABEL_12;
  }

  v44 = v27;
  MEMORY[0x253036B40](v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9928, &qword_24DCDCF80);
  v28 = v41;
  if (swift_dynamicCast())
  {
    MEMORY[0x253036B30](v27);
    sub_24DCD8144(v20, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
    (*(v9 + 32))(v42, v12, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9930, &qword_24DCDCF88);
    swift_storeEnumTagMultiPayload();
    return MEMORY[0x253036B30](v44);
  }

  else
  {
    MEMORY[0x253036B30](v44);
    sub_24DCDC21C();
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_24DCDC3BC();
    MEMORY[0x253036840](0x206E776F6E6B6E55, 0xEF203A726F727265);
    swift_getErrorValue();
    sub_24DCDC42C();
    MEMORY[0x253036840](46, 0xE100000000000000);
    MEMORY[0x253036750](MEMORY[0x277D84F90]);
    sub_24DCDC23C();
    MEMORY[0x253036B30](v27);
    sub_24DCD8144(v20, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9930, &qword_24DCDCF88);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_24DCD55C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A08, &qword_24DCDD118);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_24DCD8358(a1, &qword_27F1A9A08, &qword_24DCDD118);
    v13 = sub_24DCD646C(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24DCD6DEC();
        v17 = v21;
      }

      sub_24DCD820C(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_24DCD6A30(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_24DCD8358(v8, &qword_27F1A9A08, &qword_24DCDD118);
  }

  else
  {
    sub_24DCD820C(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_24DCD6BF4(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_24DCD57F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9920, &qword_24DCDCF70);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = (v1 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state);
  os_unfair_lock_lock(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58);
  sub_24DCD5AA0(v9 + *(v10 + 28), a1, v8);
  os_unfair_lock_unlock(v9);
  sub_24DCD82F0(v8, v6, &qword_27F1A9920, &qword_24DCDCF70);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_24DCD8358(v8, &qword_27F1A9920, &qword_24DCDCF70);
    return sub_24DCD8358(v6, &qword_27F1A9920, &qword_24DCDCF70);
  }

  else
  {
    sub_24DCDC34C();
    sub_24DCD8358(v8, &qword_27F1A9920, &qword_24DCDCF70);
    return (*(v12 + 8))(v6, v11);
  }
}

uint64_t sub_24DCD59D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t sub_24DCD5AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A08, &qword_24DCDD118);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCD80DC(a1, v17, _s14descr2860F21E1O6ClientC5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
    sub_24DCD81A4(v17, v14, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
    sub_24DCD5E7C(a2, v11);
    sub_24DCD8358(v11, &qword_27F1A9A08, &qword_24DCDD118);
    sub_24DCD81A4(v14, a1, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      result = sub_24DCDC3CC();
      __break(1u);
      return result;
    }

    sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
    sub_24DCD81A4(v17, v8, _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa);
    sub_24DCD5E7C(a2, v11);
    sub_24DCD8358(v11, &qword_27F1A9A08, &qword_24DCDD118);
    sub_24DCD80DC(v8, a1, _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa);
    swift_storeEnumTagMultiPayload();
    if (!*(*v8 + 16))
    {
      sub_24DCD82F0(&v8[*(v6 + 20)], a3, &qword_27F1A9920, &qword_24DCDCF70);
      return sub_24DCD8144(v8, _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa);
    }

    sub_24DCD8144(v8, _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

uint64_t sub_24DCD5E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24DCD646C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24DCD6DEC();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
    v18 = *(v11 - 8);
    sub_24DCD820C(v10 + *(v18 + 72) * v7, a2);
    sub_24DCD6A30(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t InProcessTransport.Client.deinit()
{

  v1 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_methodConfig;
  v2 = sub_24DCDC0EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58);
  sub_24DCD8144(v3 + *(v4 + 28), _s14descr2860F21E1O6ClientC5StateOMa);

  return v0;
}

uint64_t InProcessTransport.Client.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_methodConfig;
  v2 = sub_24DCDC0EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58);
  sub_24DCD8144(v3 + *(v4 + 28), _s14descr2860F21E1O6ClientC5StateOMa);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_24DCD61C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DCD83B8;

  return InProcessTransport.Client.connect()();
}

uint64_t sub_24DCD627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24DCD6348;

  return InProcessTransport.Client.withStream<A>(descriptor:options:_:)(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_24DCD6348()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_24DCD646C(uint64_t a1)
{
  v2 = sub_24DCDC44C();

  return sub_24DCD64B0(a1, v2);
}

unint64_t sub_24DCD64B0(uint64_t a1, uint64_t a2)
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

void *sub_24DCD651C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A18, &qword_24DCDD128);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48) - 8);
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

uint64_t sub_24DCD670C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A10, &qword_24DCDD120);
  v37 = v4;
  result = sub_24DCDC3EC();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
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
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_24DCD820C(v25, v7);
      }

      else
      {
        sub_24DCD82F0(v25, v7, &qword_27F1A98D8, &qword_24DCDCF30);
      }

      result = sub_24DCDC44C();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_24DCD820C(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

unint64_t sub_24DCD6A30(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24DCDC3AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_24DCDC44C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

uint64_t sub_24DCD6BF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24DCD646C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_24DCD6DEC();
      goto LABEL_7;
    }

    sub_24DCD670C(v13, a3 & 1);
    v20 = sub_24DCD646C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24DCDC43C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30) - 8) + 72) * v10;

    return sub_24DCD827C(a1, v18);
  }

LABEL_13:

  return sub_24DCD6D4C(v10, a2, a1, v16);
}

uint64_t sub_24DCD6D4C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  result = sub_24DCD820C(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_24DCD6DEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A10, &qword_24DCDD120);
  v5 = *v0;
  v6 = sub_24DCDC3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_24DCD82F0(*(v5 + 56) + v22, v4, &qword_27F1A98D8, &qword_24DCDCF30);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_24DCD820C(v4, *(v7 + 56) + v22);
      }

      while (v15);
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

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

unint64_t sub_24DCD7010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A20, &qword_24DCDD130);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A10, &qword_24DCDD120);
    v7 = sub_24DCDC3FC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_24DCD82F0(v9, v5, &qword_27F1A9A20, &qword_24DCDD130);
      v11 = *v5;
      result = sub_24DCD646C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
      result = sub_24DCD820C(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

uint64_t sub_24DCD71E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v50 = a3;
  v46 = a1;
  v44 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  MEMORY[0x28223BE20](v44);
  v48 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58);
  v47 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v37 - v6;
  v7 = sub_24DCDC19C();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_24DCDC0EC();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24DCDC17C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98C0, &qword_24DCDCE70);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  v49 = a2;
  sub_24DCDC18C();
  sub_24DCD82F0(v23, v21, &qword_27F1A98C0, &qword_24DCDCE70);
  if ((*(v12 + 48))(v21, 1, v11) == 1)
  {
    sub_24DCD8358(v23, &qword_27F1A98C0, &qword_24DCDCE70);
    v24 = 0;
  }

  else
  {
    (*(v12 + 32))(v17, v21, v11);
    sub_24DCDC11C();
    (*(v12 + 16))(v15, v17, v11);
    v24 = sub_24DCDC10C();
    (*(v12 + 8))(v17, v11);
    sub_24DCD8358(v23, &qword_27F1A98C0, &qword_24DCDCE70);
  }

  v25 = v52;
  *(v52 + 16) = v24;
  v27 = v42;
  v26 = v43;
  v28 = v49;
  (*(v42 + 16))(v39, v49, v43);
  sub_24DCDC0DC();
  (*(v38 + 32))(v25 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_methodConfig, v10, v40);
  v29 = MEMORY[0x277D84F90];
  v30 = v48;
  *v48 = v46;
  *(v30 + 8) = v29;
  swift_storeEnumTagMultiPayload();
  v31 = v45;
  *v45 = 0;
  v32 = *(v41 + 28);

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A28, &qword_24DCDD138);
  bzero(&v31[v32], *(*(v33 - 8) + 64));
  sub_24DCD81A4(v30, &v31[v32], _s14descr2860F21E1O6ClientC5StateOMa);
  (*(v27 + 8))(v28, v26);
  memcpy((v25 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state), v31, v47);
  v34 = (v25 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_peer);
  v35 = v51;
  *v34 = v50;
  v34[1] = v35;
  return v25;
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

uint64_t sub_24DCD7754(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24DCD7800(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_24DCD7870(uint64_t a1)
{
  sub_24DCDC0EC();
  if (v1 <= 0x3F)
  {
    sub_24DCD797C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24DCD797C(uint64_t a1)
{
  if (!qword_27F1A99E8)
  {
    _s14descr2860F21E1O6ClientC5StateOMa(255);
    v1 = sub_24DCDC0AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1A99E8);
    }
  }
}

uint64_t sub_24DCD79D4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DCD7A58(uint64_t a1)
{
  result = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DCD7B18(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DCD7B64(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9920, &qword_24DCDCF70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24DCD7C34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9920, &qword_24DCDCF70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24DCD7CE4(uint64_t a1)
{
  sub_24DCD7D68(319);
  if (v1 <= 0x3F)
  {
    sub_24DCD7DDC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24DCD7D68(uint64_t a1)
{
  if (!qword_27F1A99F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1A98D8, &qword_24DCDCF30);
    v1 = sub_24DCDC2CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1A99F0);
    }
  }
}

void sub_24DCD7DDC(uint64_t a1)
{
  if (!qword_27F1A99F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1A98F0, &qword_24DCDCF48);
    v1 = sub_24DCDC39C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1A99F8);
    }
  }
}

uint64_t sub_24DCD7E54(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24DCD7F24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24DCD7FD4(uint64_t a1)
{
  type metadata accessor for InProcessTransport.Server(319);
  if (v1 <= 0x3F)
  {
    sub_24DCD7D68(319);
    if (v2 <= 0x3F)
    {
      sub_24DCD8078();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24DCD8078()
{
  if (!qword_27F1A9A00)
  {
    v0 = sub_24DCDC35C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1A9A00);
    }
  }
}

uint64_t sub_24DCD80DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DCD8144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24DCD81A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DCD820C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DCD827C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DCD82F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24DCD8358(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t InProcessTransport.Server.peer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_peer);

  return v1;
}

uint64_t sub_24DCD83F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A88, &qword_24DCDD298);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_24DCDC14C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_24DCD8358(a1, &qword_27F1A9A88, &qword_24DCDD298);
    v13 = sub_24DCD646C(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24DCDAFDC();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_24DCDAC1C(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_24DCD8358(v8, &qword_27F1A9A88, &qword_24DCDD298);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_24DCDADC8(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t InProcessTransport.Server.__allocating_init(peer:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  InProcessTransport.Server.init(peer:)(a1, a2);
  return v4;
}

uint64_t InProcessTransport.Server.init(peer:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A30, &qword_24DCDD148);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A38, &qword_24DCDD150);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A40, &qword_24DCDD158);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3);
  sub_24DCDC32C();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 32))(v2 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_newStreams, v13, v10);
  (*(v7 + 32))(v2 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_newStreamsContinuation, v9, v20);
  v14 = sub_24DCDB5E4(MEMORY[0x277D84F90]);
  v15 = v2 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_handles;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = v14;
  *(v15 + 24) = 0;
  v16 = (v2 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_peer);
  v17 = v22;
  *v16 = v21;
  v16[1] = v17;
  return v2;
}

uint64_t sub_24DCD8954(uint64_t a1)
{
  v19 = a1;
  v1 = sub_24DCDC1FC();
  MEMORY[0x28223BE20](v1 - 8);
  v18[1] = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24DCDC22C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A48, &qword_24DCDD160);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  (*(v5 + 16))(v7, v19, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A38, &qword_24DCDD150);
  sub_24DCDC33C();
  (*(v9 + 16))(v12, v14, v8);
  v15 = (*(v9 + 88))(v12, v8);
  v16 = *(v9 + 8);
  if (v15 == *MEMORY[0x277D85748])
  {
    v16(v12, v8);
    sub_24DCDC20C();
    MEMORY[0x253036750](MEMORY[0x277D84F90]);
    sub_24DCDC24C();
    sub_24DCDB7C0();
    swift_allocError();
    sub_24DCDC23C();
    swift_willThrow();
    return (v16)(v14, v8);
  }

  else
  {
    v16(v14, v8);
    return (v16)(v12, v8);
  }
}

uint64_t InProcessTransport.Server.listen(streamHandler:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24DCD8CEC, 0, 0);
}

uint64_t sub_24DCD8CEC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_24DCD8DCC;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_24DCD8DCC()
{

  return MEMORY[0x2822009F8](sub_24DCDC0A8, 0, 0);
}

uint64_t sub_24DCD8EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v5[15] = *(v7 + 64);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A70, &qword_24DCDD250);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A78, &qword_24DCDD258);
  v5[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A80, &qword_24DCDD260);
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCD90A0, 0, 0);
}

uint64_t sub_24DCD90A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A40, &qword_24DCDD158);
  sub_24DCDC36C();
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_24DCD917C;
  v2 = v0[19];
  v3 = v0[20];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_24DCD917C()
{

  return MEMORY[0x2822009F8](sub_24DCD9278, 0, 0);
}

uint64_t sub_24DCD9278()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 144);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v27 = v7;
    v29 = *(v0 + 96);
    v30 = *(v0 + 136);
    v28 = *(v0 + 88);
    v9 = *(v0 + 80);
    v10 = sub_24DCDC31C();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 1, 1, v10);
    v12 = *(v2 + 32);
    v12(v7, v1, v3);
    v13 = (*(v2 + 80) + 40) & ~*(v2 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 4) = v9;
    v12(&v14[v13], v27, v3);
    v15 = &v14[(v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v15 = v28;
    *(v15 + 1) = v29;
    sub_24DCD82F0(v6, v30, &qword_27F1A9A70, &qword_24DCDD250);
    LODWORD(v6) = (*(v11 + 48))(v30, 1, v10);

    v16 = *(v0 + 136);
    if (v6 == 1)
    {
      sub_24DCD8358(*(v0 + 136), &qword_27F1A9A70, &qword_24DCDD250);
    }

    else
    {
      sub_24DCDC30C();
      (*(v11 + 8))(v16, v10);
    }

    if (*(v14 + 2))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_24DCDC2EC();
      v19 = v18;
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = **(v0 + 72);
    v21 = swift_allocObject();
    *(v21 + 16) = &unk_24DCDD270;
    *(v21 + 24) = v14;

    if (v19 | v17)
    {
      v22 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v17;
      *(v0 + 40) = v19;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(v0 + 144);
    *(v0 + 48) = 1;
    *(v0 + 56) = v22;
    *(v0 + 64) = v20;
    swift_task_create();

    sub_24DCD8358(v23, &qword_27F1A9A70, &qword_24DCDD250);
    v24 = swift_task_alloc();
    *(v0 + 184) = v24;
    *v24 = v0;
    v24[1] = sub_24DCD917C;
    v25 = *(v0 + 152);
    v26 = *(v0 + 160);

    return MEMORY[0x2822003E8](v25, 0, 0, v26);
  }
}

uint64_t sub_24DCD96A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_24DCD96CC, 0, 0);
}

uint64_t sub_24DCD96CC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_24DCD97A8;

  return MEMORY[0x282162E00]();
}

uint64_t sub_24DCD97A8()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_24DCD98C0, 0, 0);
  }

  return result;
}

uint64_t sub_24DCD98D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = sub_24DCDC14C();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  sub_24DCDC1AC();
  v6[10] = swift_task_alloc();
  v8 = sub_24DCDC15C();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A88, &qword_24DCDD298);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCD9A5C, 0, 0);
}

uint64_t sub_24DCD9A5C()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[2];
  v4 = v0[3];
  v6 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_handles;
  v0[15] = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_handles;
  v7 = v4 + v6;
  os_unfair_lock_lock((v4 + v6));
  v8 = *(v7 + 8);
  v0[16] = v8;
  *(v7 + 8) = v8 + 1;
  v17 = *(v3 + 16);
  v17(v1, v5, v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_24DCD83F8(v1, v8);
  LODWORD(v2) = *(v7 + 24);
  os_unfair_lock_unlock(v7);
  if (v2 == 1)
  {
    sub_24DCDC13C();
  }

  v9 = v0[9];
  v10 = v0[7];
  v11 = v0[5];
  v12 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  sub_24DCDC26C();
  v17(v9, v12, v10);
  swift_bridgeObjectRetain_n();
  sub_24DCDC12C();
  v18 = (v11 + *v11);
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_24DCD9C9C;
  v14 = v0[13];
  v15 = v0[4];

  return v18(v15, v14);
}

uint64_t sub_24DCD9C9C()
{

  return MEMORY[0x2822009F8](sub_24DCD9D98, 0, 0);
}

uint64_t sub_24DCD9D98()
{
  v1 = v0[16];
  v2 = (v0[3] + v0[15]);
  (*(v0[12] + 8))(v0[13], v0[11]);
  os_unfair_lock_lock(v2);
  sub_24DCDA518(&v2[2], v1);
  os_unfair_lock_unlock(v2);

  v3 = v0[1];

  return v3();
}

Swift::Void __swiftcall InProcessTransport.Server.beginGracefulShutdown()()
{
  v1 = sub_24DCDC14C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A38, &qword_24DCDD150);
  sub_24DCDC34C();
  v5 = v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_handles;
  os_unfair_lock_lock(v5);
  *(v5 + 24) = 1;
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_24DCDB4E8(*(v6 + 16), 0);
    v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v19[0] = v8;
    v10 = sub_24DCDB244(v21, &v8[v9], v7, v6);
    v11 = v21[0];
    v19[1] = v21[3];
    v20 = v10;

    sub_24DCDB8C8(v11);
    if (v20 != v7)
    {
      __break(1u);
      return;
    }

    v12 = v19[0];
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  *(v5 + 16) = MEMORY[0x277D84F98];
  os_unfair_lock_unlock(v5);
  v13 = *(v12 + 16);
  if (v13)
  {
    v16 = *(v2 + 16);
    v15 = v2 + 16;
    v14 = v16;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v18 = *(v15 + 56);
    do
    {
      v14(v4, v17, v1);
      sub_24DCDC13C();
      (*(v15 - 8))(v4, v1);
      v17 += v18;
      --v13;
    }

    while (v13);
  }
}

uint64_t InProcessTransport.Server.deinit()
{
  v1 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_newStreams;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A40, &qword_24DCDD158);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_newStreamsContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A38, &qword_24DCDD150);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_24DCDB8D0(v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_handles + 8);
  return v0;
}

uint64_t InProcessTransport.Server.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_newStreams;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A40, &qword_24DCDD158);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_newStreamsContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A38, &qword_24DCDD150);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_24DCDB8D0(v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_handles + 8);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_24DCDA2BC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_24DCDA2E4, 0, 0);
}

uint64_t sub_24DCDA2E4()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_24DCDA3C4;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_24DCDA3C4()
{

  return MEMORY[0x2822009F8](sub_24DCDA4DC, 0, 0);
}

uint64_t sub_24DCDA518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A88, &qword_24DCDD298);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24DCD646C(a2);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 8);
    v18 = v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24DCDAFDC();
      v11 = v18;
    }

    v12 = *(v11 + 56);
    v13 = sub_24DCDC14C();
    v14 = *(v13 - 8);
    (*(v14 + 32))(v6, v12 + *(v14 + 72) * v9, v13);
    sub_24DCDAC1C(v9, v11);
    *(a1 + 8) = v11;
    (*(v14 + 56))(v6, 0, 1, v13);
  }

  else
  {
    v15 = sub_24DCDC14C();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  return sub_24DCD8358(v6, &qword_27F1A9A88, &qword_24DCDD298);
}

uint64_t sub_24DCDA6F0(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24DCDA7D8;

  return v4();
}

uint64_t sub_24DCDA7D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DCDA8D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_24DCDC14C();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A90, &qword_24DCDD2A0);
  v37 = v4;
  result = sub_24DCDC3EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
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
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_24DCDC44C();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_24DCDAC1C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24DCDC3AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_24DCDC44C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_24DCDC14C() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

uint64_t sub_24DCDADC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24DCD646C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_24DCDAFDC();
      goto LABEL_7;
    }

    sub_24DCDA8D0(v13, a3 & 1);
    v24 = sub_24DCD646C(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24DCDC43C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_24DCDC14C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_24DCDAF30(v10, a2, a1, v16);
}

uint64_t sub_24DCDAF30(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_24DCDC14C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_24DCDAFDC()
{
  v1 = v0;
  v29 = sub_24DCDC14C();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A90, &qword_24DCDD2A0);
  v3 = *v0;
  v4 = sub_24DCDC3DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_24DCDB244(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_24DCDC14C();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
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
    v37 = a4 + 64;
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
      v23 = *(a4 + 56);
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

void *sub_24DCDB4E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A68, &qword_24DCDD248);
  v4 = *(sub_24DCDC14C() - 8);
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

unint64_t sub_24DCDB5E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A98, &qword_24DCDD2A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A90, &qword_24DCDD2A0);
    v7 = sub_24DCDC3FC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_24DCD82F0(v9, v5, &qword_27F1A9A98, &qword_24DCDD2A8);
      v11 = *v5;
      result = sub_24DCD646C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_24DCDC14C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_24DCDB7C0()
{
  result = qword_27F1A99D0;
  if (!qword_27F1A99D0)
  {
    sub_24DCDC24C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A99D0);
  }

  return result;
}

uint64_t sub_24DCDB818(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24DCD83B8;

  return sub_24DCD8EE4(v8, a2, v5, v6, v7);
}

unint64_t sub_24DCDB904()
{
  result = qword_27F1A99D8;
  if (!qword_27F1A99D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1A99E0, qword_24DCDCFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A99D8);
  }

  return result;
}

uint64_t type metadata accessor for InProcessTransport.Server(uint64_t a1)
{
  result = qword_27F1A9C20;
  if (!qword_27F1A9C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24DCDB9BC(uint64_t a1)
{
  sub_24DCDBAFC(319, &qword_27F1A9A50, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_24DCDBAFC(319, &qword_27F1A9A58, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24DCDBAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1A9918, &qword_24DCDCF68);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24DCDBB68()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A60, &qword_24DCDD210);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24DCDBBAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24DCDBBF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DCDBC44(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24DCD6348;

  return sub_24DCD8EE4(v8, a2, v5, v6, v7);
}

uint64_t sub_24DCDBCF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24DCDBDE4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24DCD83B8;

  return sub_24DCD96A8(v8, v9, v4, v0 + v3, v6, v7);
}

uint64_t sub_24DCDBF08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DCDBF40()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DCD83B8;

  return sub_24DCDA6F0(v2);
}

uint64_t sub_24DCDBFEC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24DCD6348;

  return sub_24DCD98D4(v9, a2, v5, v6, v8, v7);
}