uint64_t sub_24A9DB530()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24A9CBD30;

  return sub_24A9D2608(v2, v3, v5, v4);
}

uint64_t sub_24A9DB5F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24A9CBD30;

  return sub_24A9D1D2C(v2, v3, v5, v4);
}

uint64_t objectdestroy_55Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A9DB6FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24A9CBD30;

  return sub_24A9D0F04(v2, v3, v4);
}

uint64_t objectdestroy_110Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A9DB800()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24A9CB4BC;

  return sub_24A9D0580(v2, v3, v5, v4);
}

uint64_t objectdestroy_59Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A9DB900()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A9DB938(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24A9CBD30;

  return sub_24A9CEE50(a1, a2, v6);
}

uint64_t sub_24A9DB9FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24A9CBD30;

  return sub_24A9CEC88(a1, a2, a3, v8);
}

uint64_t sub_24A9DBACC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A9DBB14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A9DBB54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A9CBD30;

  return sub_24A9D629C(a1, v4, v5, v6);
}

uint64_t sub_24A9DBC08()
{
  swift_unknownObjectRelease();
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A9DBC50(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24A9CBD30;

  return sub_24A9D6CE4(a1, a2, v6, v7, v8);
}

uint64_t sub_24A9DBD10()
{
  MEMORY[0x24C2231C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_222(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of XPCServiceConfiguration.makeConnection()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A9DBF9C;

  return v7(a1, a2);
}

uint64_t sub_24A9DBF9C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24A9DC10C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24A9FEA90();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_24A9FEA80();
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

void sub_24A9DC1E8()
{
  v0 = [objc_allocWithZone(type metadata accessor for ConversationChangeNotifier()) init];
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 conversationManager];

  sub_24A9DC5E4();
  v3 = v0;
  v4 = sub_24A9FEDD0();
  [v2 addDelegate:v3 queue:v4];

  qword_27EF82AD0 = v3;
}

id ConversationChangeNotifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ConversationChangeNotifier.shared.getter()
{
  if (qword_27EF82690 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF82AD0;

  return v1;
}

uint64_t ConversationChangeNotifier.conversationManager(_:activeRemoteParticipantsChangedFor:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AE0, &qword_24AA00CD0);
  sub_24A9DC39C();
  return sub_24A9FEAF0();
}

unint64_t sub_24A9DC39C()
{
  result = qword_27EF82AE8;
  if (!qword_27EF82AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF82AE0, &qword_24AA00CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82AE8);
  }

  return result;
}

id ConversationChangeNotifier.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore26ConversationChangeNotifier_activeRemoteParticipantsChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AE0, &qword_24AA00CD0);
  swift_allocObject();
  *&v0[v2] = sub_24A9FEAD0();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id ConversationChangeNotifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24A9DC5E4()
{
  result = qword_27EF82B58;
  if (!qword_27EF82B58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF82B58);
  }

  return result;
}

unint64_t sub_24A9DC630()
{
  type metadata accessor for MessageService();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 2;
  result = sub_24A9DD644(MEMORY[0x277D84F90]);
  *(v0 + 120) = result;
  qword_27EF82BC0 = v0;
  return result;
}

uint64_t static MessageService.shared.getter()
{
  if (qword_27EF82698 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24A9DC6E0()
{
  v1 = *(v0 + 112);
  if (v1 == 2)
  {
    LOBYTE(v1) = [objc_opt_self() isAvailable];
    *(v0 + 112) = v1;
  }

  return v1 & 1;
}

uint64_t sub_24A9DC720(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x2822009F8](sub_24A9DC744, v2, 0);
}

uint64_t sub_24A9DC744()
{
  if ((sub_24A9DC6E0() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_6;
  }

  v1 = v0[23];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v4 = v0[21];
    v3 = v0[22];

    v5 = sub_24A9DCCBC(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + v5);

      v8 = v7;
LABEL_6:
      v9 = v0[1];

      return v9(v8);
    }
  }

  v11 = objc_opt_self();
  v12 = sub_24A9FEC30();
  v0[24] = v12;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_24A9DC934;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A48, &qword_24AA012A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24A9D53E0;
  v0[13] = &block_descriptor_0;
  v0[14] = v13;
  [v11 canMessageDestination:v12 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24A9DC934()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_24A9DCA28, v1, 0);
}

uint64_t sub_24A9DCA28()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 200);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 120);
  *(v1 + 120) = 0x8000000000000000;
  sub_24A9DD0A4(v4, v3, v2, isUniquelyReferenced_nonNull_native);
  *(v1 + 120) = v8;
  swift_endAccess();
  v6 = *(v0 + 8);

  return v6(v4);
}

void sub_24A9DCAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_opt_self();
  v5 = sub_24A9FEC30();
  v6 = sub_24A9FEC30();
  [v4 sendMessage:v5 to:v6];
}

uint64_t MessageService.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageService.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24A9DCC14(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A9C3E08;

  return sub_24A9DC720(a1, a2);
}

unint64_t sub_24A9DCCBC(uint64_t a1, uint64_t a2)
{
  sub_24A9FF1E0();
  sub_24A9FECA0();
  v4 = sub_24A9FF210();

  return sub_24A9DCD4C(a1, a2, v4);
}

unint64_t sub_24A9DCD4C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24A9FF170())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24A9DCE04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82BC8, &unk_24AA01738);
  v34 = v4;
  result = sub_24A9FF0B0();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24A9FF1E0();
      sub_24A9FECA0();
      result = sub_24A9FF210();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
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

unint64_t sub_24A9DD0A4(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24A9DCCBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24A9DCE04(v16, a4 & 1);
      result = sub_24A9DCCBC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_24A9FF190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_24A9DD4DC();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t dispatch thunk of MessageServiceProtocol.available(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24A9DD740;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MessageService.available(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24A9C3E08;

  return v8(a1, a2);
}

void *sub_24A9DD4DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82BC8, &unk_24AA01738);
  v2 = *v0;
  v3 = sub_24A9FF0A0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

unint64_t sub_24A9DD644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82BC8, &unk_24AA01738);
    v3 = sub_24A9FF0C0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24A9DCCBC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t FTNCallCenter.disconnect<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a5 + 168))(v9, a2, a3, a5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DD808(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_24A9FEEE0();
    v5 = v4;
    v6 = sub_24A9FEF50();
    v8 = v7;
    v9 = MEMORY[0x24C2227A0](v3, v5, v6, v7);
    sub_24A9C96CC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_24A9C96CC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_24A9FEEB0();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_24A9C9720(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_24A9C96CC(v3, v5, v2 != 0);
  return v12;
}

void sub_24A9DD924(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCall_];

  *a2 = v4;
}

id (*sub_24A9DD99C(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 behavior];
  return sub_24A9DD9F0;
}

uint64_t sub_24A9DDA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.answer<A>(_:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.answer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a4 + 136))(v7, a2, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DDB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.answer<A>(with:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.answer<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_24A9FEE70();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v23 - v17;
  (*(v19 + 16))(v15, a1, a3);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v12, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v18, v12, AssociatedTypeWitness);
    (*(a4 + 144))(v18, v23, a4);
    return (*(v16 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    v21(v12, 1, 1, AssociatedTypeWitness);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_24A9DDE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.answerAsAudio<A>(_:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.answerAsAudio<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a4 + 152))(v7, a2, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DDF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.disconnect<A>(_:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.disconnect<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a4 + 160))(v7, a2, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DE09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.disconnect<A>(_:with:)(a1, a2, a3, AssociatedTypeWitness, a4);
}

uint64_t sub_24A9DE118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.unhold<A>(_:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.unhold<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a4 + 184))(v7, a2, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DE240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.canGroup<A, B>(_:with:)(a1, a2, a3, AssociatedTypeWitness, AssociatedTypeWitness, a4);
}

uint64_t FTNCallCenter.canGroup<A, B>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v8 = (*(a6 + 192))(v10, v10, a3, a6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8 & 1;
}

uint64_t sub_24A9DE3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.group<A, B>(_:with:)(a1, a2, a3, AssociatedTypeWitness, AssociatedTypeWitness, a4);
}

uint64_t FTNCallCenter.group<A, B>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      (*(a6 + 200))(v9, v9, a3, a6);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DE558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.requestVideoUpgrade<A>(for:originatingUIType:)(a1, a2, a3, AssociatedTypeWitness, a4);
}

uint64_t FTNCallCenter.requestVideoUpgrade<A>(for:originatingUIType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a5 + 208))(v9, a2, a3, a5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DE698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.activeConversation<A>(for:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.activeConversation<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v6 = (*(a4 + 216))(v8, a2, a4);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_24A9DE7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.openShare<A>(for:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.openShare<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a4 + 240))(v7, a2, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DE8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.requestToShare<A>(for:in:)(a1, a2, a3, AssociatedTypeWitness, a4);
}

uint64_t FTNCallCenter.requestToShare<A>(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a5 + 248))(a1, v9, a3, a5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DEA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.requestToShareSupported<A>(for:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.requestToShareSupported<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v6 = (*(a4 + 256))(v8, a2, a4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void TUCallCenter.answerAsAudio(_:)()
{
  v1 = [v0 incomingVideoCall];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D6EDC0]) initWithCall_];
    [v3 setBehavior_];
    [v0 answerWithRequest_];
  }
}

void TUCallCenter.openShare(for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF82900, &qword_24AA01280);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_24A9FEA40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 activeConversationForCall_];
  if (v10)
  {
    v11 = v10;
    v17 = [v1 conversationManager];
    [v17 requestScreenSharingPickerForConversation:v11 withContentStyle:0];

    v12 = v17;
  }

  else
  {
    v13 = [a1 callUUID];
    sub_24A9FEC40();

    sub_24A9FE9E0();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_24A9DEEA4(v5);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v14 = [v1 conversationManager];
      v15 = sub_24A9FEA00();
      [v14 requestScreenSharingPickerForCallUUID:v15 withContentStyle:0];

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_24A9DEEA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF82900, &qword_24AA01280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void TUCallCenter.requestToShare(for:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v2 activeConversationForCall_];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 conversationManager];
    [v7 requestParticipantToShareScreen:a1 forConversation:v6];
  }
}

id TUCallCenter.requestToShareSupported(for:)(uint64_t a1)
{
  v2 = [v1 activeConversationForCall_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 activeRemoteParticipants];
  sub_24A9C27EC(0, &qword_27EF82878, 0x277D6EEA8);
  sub_24A9DF0C0();
  v5 = sub_24A9FED60();

  v6 = sub_24A9DD808(v5);

  if (v6)
  {
    v7 = [v6 capabilities];
    v8 = [v7 supportsRequestToScreenShare];

    v3 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

unint64_t sub_24A9DF0C0()
{
  result = qword_27EF82BD0;
  if (!qword_27EF82BD0)
  {
    sub_24A9C27EC(255, &qword_27EF82878, 0x277D6EEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82BD0);
  }

  return result;
}

id sub_24A9DF16C()
{
  v1 = [*v0 currentVideoCall];

  return v1;
}

uint64_t sub_24A9DF1C0(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, void *a5)
{
  v8 = [*v5 *a3];
  sub_24A9C27EC(0, a4, a5);
  v9 = sub_24A9FECE0();

  return v9;
}

id sub_24A9DF248(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_24A9FEC30();
  v5 = [v3 callWithUniqueProxyIdentifier_];

  return v5;
}

uint64_t sub_24A9DF298(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v11[4] = sub_24A9DFBB4;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A9DF3EC;
  v11[3] = &block_descriptor_1;
  v7 = _Block_copy(v11);

  v8 = [v5 callsPassingTest_];
  _Block_release(v7);
  sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v9 = sub_24A9FECE0();

  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A9DF3EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

id sub_24A9DF430()
{
  v1 = [*v0 incomingVideoCall];

  return v1;
}

id sub_24A9DF4B0(uint64_t a1)
{
  v2 = [*v1 dialWithRequest_];

  return v2;
}

void sub_24A9DF53C()
{
  v1 = *v0;
  v2 = [*v0 incomingVideoCall];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D6EDC0]) initWithCall_];
    [v4 setBehavior_];
    [v1 answerWithRequest_];
  }
}

id sub_24A9DF69C(uint64_t a1)
{
  v2 = [*v1 activeConversationForCall_];

  return v2;
}

id sub_24A9DF6D8()
{
  v1 = [*v0 conversationManager];

  return v1;
}

id sub_24A9DF710()
{
  v1 = [*v0 providerManager];

  return v1;
}

void sub_24A9DF76C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = [*v2 activeConversationForCall_];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 conversationManager];
    [v7 requestParticipantToShareScreen:a1 forConversation:v6];
  }
}

id sub_24A9DF848()
{
  v1 = [*v0 callServicesClientCapabilities];

  return v1;
}

void sub_24A9DF890(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_24A9FEC30();
  [v3 sendReceptionistReply_];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DownstreamAction.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id DownstreamAction.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownstreamAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DownstreamAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownstreamAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ResizeViewAction.__allocating_init(size:)(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC24FaceTimeNotificationCore16ResizeViewAction_size];
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ResizeViewAction.init(size:)(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore16ResizeViewAction_size];
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ResizeViewAction.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  [a1 decodeSize];
  v4 = &v3[OBJC_IVAR____TtC24FaceTimeNotificationCore16ResizeViewAction_size];
  *v4 = v5;
  *(v4 + 1) = v6;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DownstreamAction();
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id ResizeViewAction.init(coder:)(void *a1)
{
  [a1 decodeSize];
  v3 = &v1[OBJC_IVAR____TtC24FaceTimeNotificationCore16ResizeViewAction_size];
  *v3 = v4;
  *(v3 + 1) = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DownstreamAction();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

uint64_t StartDraggingAction.keypadDialed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_keypadDialed);

  return v1;
}

id StartDraggingAction.__allocating_init(frame:position:showingRTT:showingKeypad:keypadDialed:showingLiveReply:showingReceptionist:)(int8x16_t *a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, double a8, double a9)
{
  v26 = *a1;
  v27 = a1[1];
  v19 = objc_allocWithZone(v9);
  if (a1[2].i8[0])
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21 = vdupq_n_s64(v20);
  v22 = &v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame];
  *v22 = vbicq_s8(v26, v21);
  v22[1] = vbicq_s8(v27, v21);
  v23 = &v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_position];
  *v23 = a8;
  v23[1] = a9;
  v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingRTT] = a2;
  v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingKeypad] = a3;
  v24 = &v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_keypadDialed];
  *v24 = a4;
  v24[1] = a5;
  v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingLiveReply] = a6;
  v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingReceptionist] = a7;
  v28.receiver = v19;
  v28.super_class = v9;
  return [(int8x16_t *)&v28 init:*&v26];
}

id StartDraggingAction.init(frame:position:showingRTT:showingKeypad:keypadDialed:showingLiveReply:showingReceptionist:)(__int128 *a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, double a8, double a9)
{
  ObjectType = swift_getObjectType();
  v20 = 0uLL;
  v21 = 0uLL;
  if ((a1[2] & 1) == 0)
  {
    v20 = *a1;
    v21 = a1[1];
  }

  v22 = &v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame];
  *v22 = v20;
  v22[1] = v21;
  v23 = &v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_position];
  *v23 = a8;
  v23[1] = a9;
  v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingRTT] = a2 & 1;
  v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingKeypad] = a3 & 1;
  v24 = &v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_keypadDialed];
  *v24 = a4;
  v24[1] = a5;
  v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingLiveReply] = a6 & 1;
  v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingReceptionist] = a7 & 1;
  v26.receiver = v9;
  v26.super_class = ObjectType;
  return objc_msgSendSuper2(&v26, sel_init);
}

Swift::Void __swiftcall StartDraggingAction.encode(with:)(NSCoder with)
{
  [(objc_class *)with.super.isa encodeRect:*(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame), *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame + 8), *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame + 16), *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame + 24)];
  v3 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_position);
  v4 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_position + 8);
  v5 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodePoint:v5 forKey:v3, v4];

  v6 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingRTT);
  v7 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v6 forKey:v7];

  v8 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingLiveReply);
  v9 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v8 forKey:v9];

  v10 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingReceptionist);
  v11 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v10 forKey:v11];

  v12 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingKeypad);
  v13 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v12 forKey:v13];

  if (*(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_keypadDialed + 8))
  {
    v14 = sub_24A9FEC30();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();
}

id StartDraggingAction.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24A9E1CB0(a1);

  return v4;
}

id StartDraggingAction.init(coder:)(void *a1)
{
  v2 = sub_24A9E1CB0(a1);

  return v2;
}

uint64_t NoticeButtonClickAction.noticeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_noticeIdentifier;
  v4 = sub_24A9FEA40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NoticeButtonClickAction.buttonIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_buttonIdentifier);

  return v1;
}

id NoticeButtonClickAction.__allocating_init(noticeIdentifier:buttonIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_noticeIdentifier;
  v9 = sub_24A9FEA40();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  v11 = &v7[OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_buttonIdentifier];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v10 + 8))(a1, v9);
  return v12;
}

id NoticeButtonClickAction.init(noticeIdentifier:buttonIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_noticeIdentifier;
  v9 = sub_24A9FEA40();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a1, v9);
  v11 = &v3[OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_buttonIdentifier];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v10 + 8))(a1, v9);
  return v12;
}

Swift::Void __swiftcall NoticeButtonClickAction.encode(with:)(NSCoder with)
{
  sub_24A9FE9F0();
  v2 = sub_24A9FEC30();

  v3 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_24A9FEC30();
  v5 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

id NoticeButtonClickAction.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF82900, &qword_24AA01280);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_24A9FEA40();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF826C0, &unk_24AA006A0);
  v11 = swift_allocObject();
  v27 = xmmword_24AA00690;
  *(v11 + 16) = xmmword_24AA00690;
  v12 = sub_24A9E1EF8();
  *(v11 + 32) = v12;
  sub_24A9FEE40();

  if (!v33)
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_24A9FE9E0();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v13 = &unk_27EF82900;
    v14 = &qword_24AA01280;
    v15 = v6;
LABEL_10:
    sub_24A9C994C(v15, v13, v14);
    goto LABEL_11;
  }

  (*(v8 + 32))(v10, v6, v7);
  v16 = swift_allocObject();
  *(v16 + 16) = v27;
  *(v16 + 32) = v12;
  sub_24A9FEE40();

  if (!v33)
  {
    (*(v8 + 8))(v10, v7);
LABEL_9:
    v13 = &qword_27EF826D0;
    v14 = "*4";
    v15 = v32;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v17 = v30;
    v18 = v31;
    (*(v8 + 16))(&v2[OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_noticeIdentifier], v10, v7);
    v19 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_buttonIdentifier];
    *v19 = v17;
    *(v19 + 1) = v18;
    v20 = type metadata accessor for DownstreamAction();
    v29.receiver = v2;
    v29.super_class = v20;
    v21 = objc_msgSendSuper2(&v29, sel_init);

    (*(v8 + 8))(v10, v7);
    return v21;
  }

  (*(v8 + 8))(v10, v7);
LABEL_11:
  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v23 = sub_24A9FEA90();
  __swift_project_value_buffer(v23, qword_27EF84B68);
  v24 = sub_24A9FEA70();
  v25 = sub_24A9FED90();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24A9BF000, v24, v25, "Failed to decode NoticeButtonClickAction.", v26, 2u);
    MEMORY[0x24C223120](v26, -1, -1);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_24A9E0FE0()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_noticeIdentifier;
  v2 = sub_24A9FEA40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id OpenMessagesAction.__allocating_init(declineCall:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id OpenMessagesAction.init(declineCall:)(char a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall OpenMessagesAction.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall);
  v4 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];
}

id OpenMessagesAction.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24A9FEC30();
  v5 = [a1 decodeBoolForKey_];

  v3[OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall] = v5;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for DownstreamAction();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id OpenMessagesAction.init(coder:)(void *a1)
{
  v3 = sub_24A9FEC30();
  v4 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DownstreamAction();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id NotificationClickedAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_24A9E1584()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_24A9E15BC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_24A9E1610(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = type metadata accessor for DownstreamAction();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id sub_24A9E166C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DownstreamAction();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id sub_24A9E16B8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DownstreamAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t PresentConfirmationAlertAction.conflictingCallId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_conflictingCallId);

  return v1;
}

id PresentConfirmationAlertAction.__allocating_init(type:conflictingCallId:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_type] = *a1;
  v8 = &v7[OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_conflictingCallId];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PresentConfirmationAlertAction.init(type:conflictingCallId:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_type] = *a1;
  v8 = &v3[OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_conflictingCallId];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

Swift::Void __swiftcall PresentConfirmationAlertAction.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_type);
  v4 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = sub_24A9FEC30();
  v6 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id PresentConfirmationAlertAction.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_24A9FEC30();
  v5 = [a1 decodeIntegerForKey_];

  if (v5 <= 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF826C0, &unk_24AA006A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24AA00690;
    *(v6 + 32) = sub_24A9E1EF8();
    sub_24A9FEE40();

    if (v19)
    {
      if (swift_dynamicCast())
      {
        v2[OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_type] = v5;
        v7 = v17;
        v8 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_conflictingCallId];
        *v8 = v16;
        v8[1] = v7;
        v15.receiver = v2;
        v15.super_class = type metadata accessor for DownstreamAction();
        v9 = objc_msgSendSuper2(&v15, sel_init);

        return v9;
      }
    }

    else
    {
      sub_24A9C994C(v18, &qword_27EF826D0, "*4");
    }
  }

  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v11 = sub_24A9FEA90();
  __swift_project_value_buffer(v11, qword_27EF84B68);
  v12 = sub_24A9FEA70();
  v13 = sub_24A9FED90();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24A9BF000, v12, v13, "Failed to decode PresentConfirmationAlertAction.", v14, 2u);
    MEMORY[0x24C223120](v14, -1, -1);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id sub_24A9E1CB0(void *a1)
{
  v2 = v1;
  [a1 decodeRect];
  v4 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v9 = sub_24A9FEC30();
  [a1 decodePointForKey_];
  v11 = v10;
  v13 = v12;

  v14 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_position];
  *v14 = v11;
  v14[1] = v13;
  v15 = sub_24A9FEC30();
  v16 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingRTT] = v16;
  v17 = sub_24A9FEC30();
  v18 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingLiveReply] = v18;
  v19 = sub_24A9FEC30();
  v20 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingReceptionist] = v20;
  v21 = sub_24A9FEC30();
  v22 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingKeypad] = v22;
  sub_24A9E1EF8();
  v23 = sub_24A9FEE30();
  if (v23)
  {
    v24 = v23;
    v25 = sub_24A9FEC40();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_keypadDialed];
  *v28 = v25;
  v28[1] = v27;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for DownstreamAction();
  return objc_msgSendSuper2(&v30, sel_init);
}

unint64_t sub_24A9E1EF8()
{
  result = qword_27EF82920;
  if (!qword_27EF82920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF82920);
  }

  return result;
}

uint64_t dispatch thunk of StartDraggingAction.__allocating_init(frame:position:showingRTT:showingKeypad:keypadDialed:showingLiveReply:showingReceptionist:)(uint64_t a1)
{
  v2 = *(v1 + 160);
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3;
  return v2(v6);
}

uint64_t type metadata accessor for NoticeButtonClickAction(uint64_t a1)
{
  result = qword_27EF82C38;
  if (!qword_27EF82C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A9E20DC(uint64_t a1)
{
  result = sub_24A9FEA40();
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

id static TUCallProvider.telephony.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v1 = sub_24A9FEC30();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t FTNMockCall.recordingAvailability.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

void *FTNMockCall.recordingSession.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void FTNMockCall.recordingSession.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t FTNMockCall.contactIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FTNMockCall.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t FTNMockCall.isIncoming.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t FTNMockCall.eligibleForScreening.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 49) = a1;
  return result;
}

uint64_t FTNMockCall.eligibleForManualScreening.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 50) = a1;
  return result;
}

uint64_t FTNMockCall.isScreening.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 51) = a1;
  return result;
}

uint64_t FTNMockCall.isHostedOnCurrentDevice.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 52) = a1;
  return result;
}

uint64_t FTNMockCall.receptionistState.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

void *FTNMockCall.smartHoldingSession.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void FTNMockCall.smartHoldingSession.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t FTNMockCall.isRelay.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t FTNMockCall.isThumper.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 73) = a1;
  return result;
}

uint64_t FTNMockCall.isReceptionistCapable.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 74) = a1;
  return result;
}

uint64_t FTNMockCall.changesPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C48, &qword_24AA01A30);
  v30 = *(v0 - 8);
  v31 = v0;
  MEMORY[0x28223BE20](v0);
  v29 = &v24 - v1;
  v28 = sub_24A9FEAA0();
  v2 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C50, &qword_24AA01A38);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C58, &qword_24AA01A40);
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C60, &qword_24AA01A48);
  v11 = *(v10 - 8);
  v25 = v10;
  v26 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  sub_24A9E3310();
  v33 = sub_24A9FEAC0();
  sub_24A9C27EC(0, &qword_27EF82B58, 0x277D85C78);
  v14 = sub_24A9FEDD0();
  v32 = v14;
  v15 = sub_24A9FEDB0();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_24A9FEAE0();
  sub_24A9E33B4();
  sub_24A9FEBC0();
  sub_24A9C994C(v7, &qword_27EF82C50, &qword_24AA01A38);

  v16 = v28;
  (*(v2 + 104))(v4, *MEMORY[0x277CBCBD0], v28);
  v18 = v29;
  v17 = v30;
  v19 = v31;
  (*(v30 + 104))(v29, *MEMORY[0x277CBCBE8], v31);
  sub_24A9C9AB0(&qword_27EF82C78, &qword_27EF82C58, &qword_24AA01A40, MEMORY[0x277CBCD60]);
  v20 = v24;
  sub_24A9FEBB0();
  (*(v17 + 8))(v18, v19);
  (*(v2 + 8))(v4, v16);
  (*(v27 + 8))(v9, v20);
  sub_24A9C9AB0(&qword_27EF82C80, &qword_27EF82C60, &qword_24AA01A48, MEMORY[0x277CBCC80]);
  v21 = v25;
  v22 = sub_24A9FEB70();
  (*(v26 + 8))(v13, v21);
  return v22;
}

unint64_t sub_24A9E3310()
{
  result = qword_27EF82C68;
  if (!qword_27EF82C68)
  {
    type metadata accessor for FTNMockCall(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82C68);
  }

  return result;
}

uint64_t type metadata accessor for FTNMockCall(uint64_t a1)
{
  result = qword_27EF82DA8;
  if (!qword_27EF82DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24A9E33B4()
{
  result = qword_27EF82C70;
  if (!qword_27EF82C70)
  {
    sub_24A9C27EC(255, &qword_27EF82B58, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82C70);
  }

  return result;
}

uint64_t FTNMockCall.uniqueProxyIdentifier.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

uint64_t sub_24A9E3490@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_24A9E3514(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t FTNMockCall.uniqueProxyIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.uniqueProxyIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E36D8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C98, &qword_24AA01AA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C90, &qword_24AA01A98);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$uniqueProxyIdentifier.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C98, &qword_24AA01AA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C90, &qword_24AA01A98);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$uniqueProxyIdentifier.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C98, &qword_24AA01AA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__uniqueProxyIdentifier;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C90, &qword_24AA01A98);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t (*FTNMockCall.status.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E3C08(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CB0, &qword_24AA01AF8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$status.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CB0, &qword_24AA01AF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$status.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CB0, &qword_24AA01AF8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t FTNMockCall.handle.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

uint64_t sub_24A9E40BC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_24A9E4140(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_24A9FEB50();
}

uint64_t FTNMockCall.handle.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.handle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E42EC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC8, &qword_24AA01B50);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$handle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC8, &qword_24AA01B50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$handle.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC8, &qword_24AA01B50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t FTNMockCall.contacts.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

uint64_t sub_24A9E478C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_24A9E4810(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t FTNMockCall.contacts.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.contacts.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E49C0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CE0, &qword_24AA01BA8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$contacts.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CE0, &qword_24AA01BA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$contacts.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CE0, &qword_24AA01BA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t (*FTNMockCall.isVideo.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E4F04(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$isVideo.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isVideo.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t FTNMockCall.isSharePlayCapable.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FTNMockCall.isSharePlayCapable.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id FTNMockCall.model.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void FTNMockCall.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

BOOL FTNMockCall.isOnHold.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1 == 2;
}

BOOL FTNMockCall.isConnected.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v6 - v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(v2);

  v3 = sub_24A9FE9D0();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_24A9C994C(v2, &qword_27EF827E0, &qword_24AA00C90);
  return v4;
}

uint64_t FTNMockCall.dateConnected.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(a1);
}

uint64_t FTNMockCall.displayName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v6);

  v0 = v6;
  if (v6 >> 62)
  {
    result = sub_24A9FEF30();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x24C222870](0, v0);
  }

  else
  {
    if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v2 = *(v0 + 32);
  }

  v3 = v2;

  v4 = [v3 displayName];

  if (v4)
  {
    v5 = sub_24A9FEC40();

    return v5;
  }

  return 0;
}

uint64_t FTNMockCall.suggestedDisplayName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

double sub_24A9E58E8@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_24A9E5968(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t FTNMockCall.suggestedDisplayName.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.suggestedDisplayName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E5B28(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D18, &qword_24AA01CA8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$suggestedDisplayName.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D18, &qword_24AA01CA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$suggestedDisplayName.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D18, &qword_24AA01CA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t FTNMockCall.provider.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

uint64_t sub_24A9E5FC8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_24A9E6048(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_24A9FEB50();
}

uint64_t FTNMockCall.provider.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.provider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

id static TUCallProvider.faceTime.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v1 = sub_24A9FEC30();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_24A9E625C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D30, &qword_24AA01D00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$provider.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D30, &qword_24AA01D00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$provider.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D30, &qword_24AA01D00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t FTNMockCall.serviceString.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v5);

  v0 = v5;
  v1 = [v5 isTelephonyProvider];

  if (v1)
  {
    return 0xD000000000000010;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v5);

  v3 = v5;
  v4 = [v5 isFaceTimeProvider];

  if (!v4)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v5);

  return 0x656D695465636146;
}

uint64_t (*FTNMockCall.isUplinkMuted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E6928(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$isUplinkMuted.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isUplinkMuted.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t (*FTNMockCall.isSendingVideo.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E6E64(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$isSendingVideo.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isSendingVideo.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t (*FTNMockCall.isConferenced.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E73A0(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$isConferenced.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isConferenced.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t (*FTNMockCall.isVoicemail.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E78DC(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$isVoicemail.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isVoicemail.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t (*FTNMockCall.isEmergency.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E7E18(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$isEmergency.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isEmergency.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t sub_24A9E8258(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v3);

  return v3;
}

uint64_t sub_24A9E82D8@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v6);

  *a4 = v6;
  return result;
}

uint64_t sub_24A9E8368(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t sub_24A9E83EC(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.isSharingScreen.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E8518(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$isSharingScreen.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isSharingScreen.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t sub_24A9E8944@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(a2);
}

uint64_t sub_24A9E89C0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_24A9DB010(a1, &v10 - v7, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v8, v6, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();
  return sub_24A9C994C(v8, &qword_27EF827E0, &qword_24AA00C90);
}

uint64_t FTNMockCall.dateConnected.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(a1, v4, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();
  return sub_24A9C994C(a1, &qword_27EF827E0, &qword_24AA00C90);
}

uint64_t (*FTNMockCall.dateConnected.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E8CA0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D70, &qword_24AA01EC0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$dateConnected.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D70, &qword_24AA01EC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$dateConnected.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D70, &qword_24AA01EC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t FTNMockCall.isOutgoing.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FTNMockCall.isOutgoing.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id FTNMockCall.dialRequestForRedial.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v4);

  v0 = v4;
  v1 = [objc_allocWithZone(MEMORY[0x277D6EED0]) initWithProvider_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v4);

  v2 = v4;
  [v1 setHandle_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v4);

  [v1 setVideo_];
  [v1 setOriginatingUIType_];
  return v1;
}

void FTNMockCall.metadataSubtitle.getter(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 32);
  sub_24A9F474C(v4, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
}

void FTNMockCall.metadataSubtitle.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  *(v3 + 32) = *(a1 + 32);
  sub_24A9F4790(v4, v5, v6, v7);
}

uint64_t sub_24A9E9648@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_24A9DB010(v4 + v8, a4, a2, a3);
}

uint64_t sub_24A9E96D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_24A9F47D4(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24A9E97B0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_24A9E9810(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_24A9E98E0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v3);

  return v3;
}

uint64_t sub_24A9E9960@<X0>(_DWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v6);

  *a4 = v6;
  return result;
}

uint64_t sub_24A9E99F0(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t sub_24A9E9A74(int a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.faceTimeIDStatus.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9E9B84;
}

uint64_t sub_24A9E9BA4(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_24A9FEB10();
  return swift_endAccess();
}

uint64_t sub_24A9E9C1C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_24A9FEB10();
  return swift_endAccess();
}

uint64_t sub_24A9E9C98(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D88, &qword_24AA01F18);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCall.$faceTimeIDStatus.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D88, &qword_24AA01F18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$faceTimeIDStatus.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D88, &qword_24AA01F18);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9EA0C4;
}

void sub_24A9EA0C8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_24A9FEB20();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_24A9FEB20();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t FTNMockCall.isWaitOnHoldActive.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FTNMockCall.isWaitOnHoldActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FTNMockCall.__allocating_init(uniqueProxyIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FTNMockCall.init(uniqueProxyIdentifier:)(a1, a2);
  return v4;
}

uint64_t FTNMockCall.init(uniqueProxyIdentifier:)(uint64_t a1, uint64_t a2)
{
  v81 = a1;
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v61 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v7 = MEMORY[0x28223BE20](v74);
  v73 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x28223BE20](v10);
  v69 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  v66 = &v61 - v13;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v14 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v16 = &v61 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v18 = &v61 - v17;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v19 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v61 - v24;
  *(v2 + 16) = 2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
  *(v2 + 48) = 131585;
  *(v2 + 52) = 1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 71) = 0;
  v26 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v85) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v23 + 32))(v2 + v26, v25, v22);
  v27 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v85 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  sub_24A9FEB00();
  (*(v19 + 32))(v2 + v27, v21, v62);
  v28 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v85 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  sub_24A9FEB00();
  (*(v63 + 32))(v2 + v28, v18, v64);
  v29 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v85) = 0;
  sub_24A9FEB00();
  v30 = *(v14 + 32);
  v31 = v65;
  v30(v2 + v29, v16, v65);
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v32 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v2 + v32) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v33 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v85 = 0;
  v86 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v34 = v66;
  sub_24A9FEB00();
  (*(v67 + 32))(v2 + v33, v34, v68);
  v35 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v36 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v37 = sub_24A9FEC30();
  v38 = [v36 initWithIdentifier_];

  v85 = v38;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v39 = v69;
  sub_24A9FEB00();
  (*(v70 + 32))(v2 + v35, v39, v71);
  v40 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v85) = 0;
  sub_24A9FEB00();
  v30(v2 + v40, v16, v31);
  v41 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v85) = 0;
  sub_24A9FEB00();
  v30(v2 + v41, v16, v31);
  v42 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v85) = 0;
  sub_24A9FEB00();
  v30(v2 + v42, v16, v31);
  v43 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v85) = 0;
  sub_24A9FEB00();
  v30(v2 + v43, v16, v31);
  v44 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v85) = 0;
  sub_24A9FEB00();
  v30(v2 + v44, v16, v31);
  v45 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v85) = 0;
  sub_24A9FEB00();
  v30(v2 + v45, v16, v31);
  v46 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v47 = sub_24A9FE9D0();
  v48 = v72;
  (*(*(v47 - 8) + 56))(v72, 1, 1, v47);
  sub_24A9DB010(v48, v73, &qword_27EF827E0, &qword_24AA00C90);
  v49 = v75;
  sub_24A9FEB00();
  sub_24A9C994C(v48, &qword_27EF827E0, &qword_24AA00C90);
  (*(v76 + 32))(v2 + v46, v49, v77);
  v50 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID;
  v51 = sub_24A9FEA40();
  (*(*(v51 - 8) + 56))(v2 + v50, 1, 1, v51);
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v52 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v52 = 0;
  v52[1] = 0;
  v53 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v53 = 0;
  v53[1] = 0;
  v54 = v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v54 + 32) = 0;
  v55 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v56 = sub_24A9FE960();
  (*(*(v56 - 8) + 56))(v2 + v55, 1, 1, v56);
  v57 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v57 = 0;
  v57[1] = 0;
  v58 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v85) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v59 = v78;
  sub_24A9FEB00();
  (*(v79 + 32))(v2 + v58, v59, v80);
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v83 = v81;
  v84 = v82;
  sub_24A9FEB00();
  swift_endAccess();
  return v2;
}

uint64_t FTNMockCall.__allocating_init(uniqueProxyIdentifier:status:handle:contacts:isVideo:suggestedDisplayName:provider:isUplinkMuted:dateConnected:isWaitOnHoldActive:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, int a6, void *a7, uint64_t a8, void *a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12)
{
  v97 = a7;
  v98 = a8;
  v96 = a6;
  v94 = a4;
  v95 = a5;
  v93 = a3;
  v91 = a1;
  v92 = a2;
  v102 = a12;
  v101 = a11;
  v100 = a10;
  v99 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x28223BE20](v12);
  v88 = &v72 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v72 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v15 = MEMORY[0x28223BE20](v84);
  v103 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v83 = &v72 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v72 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v72 - v19;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v20 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v22 = &v72 - v21;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v24 = &v72 - v23;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v25 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v27 = &v72 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v72 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = 2;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  *(v32 + 24) = 0;
  *(v32 + 48) = 131585;
  *(v32 + 52) = 1;
  *(v32 + 56) = 0;
  *(v32 + 64) = 0;
  *(v32 + 71) = 0;
  v33 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v106) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v29 + 32))(v32 + v33, v31, v28);
  v34 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v106 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  sub_24A9FEB00();
  (*(v25 + 32))(v32 + v34, v27, v73);
  v35 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v106 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  sub_24A9FEB00();
  (*(v74 + 32))(v32 + v35, v24, v75);
  v36 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37 = *(v20 + 32);
  v38 = v76;
  v37(v32 + v36, v22, v76);
  *(v32 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v39 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v32 + v39) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v40 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v106 = 0;
  v107 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v41 = v77;
  sub_24A9FEB00();
  (*(v78 + 32))(v32 + v40, v41, v79);
  v42 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v43 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v44 = sub_24A9FEC30();
  v45 = [v43 initWithIdentifier_];

  v106 = v45;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v46 = v80;
  sub_24A9FEB00();
  (*(v81 + 32))(v32 + v42, v46, v82);
  v47 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37(v32 + v47, v22, v38);
  v48 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37(v32 + v48, v22, v38);
  v49 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37(v32 + v49, v22, v38);
  v50 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37(v32 + v50, v22, v38);
  v51 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37(v32 + v51, v22, v38);
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37(v32 + v52, v22, v38);
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v54 = sub_24A9FE9D0();
  v55 = v83;
  (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
  sub_24A9DB010(v55, v103, &qword_27EF827E0, &qword_24AA00C90);
  v56 = v85;
  sub_24A9FEB00();
  sub_24A9C994C(v55, &qword_27EF827E0, &qword_24AA00C90);
  (*(v86 + 32))(v32 + v53, v56, v87);
  v57 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID;
  v58 = sub_24A9FEA40();
  (*(*(v58 - 8) + 56))(v32 + v57, 1, 1, v58);
  *(v32 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v32 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v32 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v32 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v32 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v59 = (v32 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v59 = 0;
  v59[1] = 0;
  v60 = (v32 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v60 = 0;
  v60[1] = 0;
  v61 = v32 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v61 + 32) = 0;
  *v61 = 0u;
  *(v61 + 16) = 0u;
  v62 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v63 = sub_24A9FE960();
  (*(*(v63 - 8) + 56))(v32 + v62, 1, 1, v63);
  v64 = (v32 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v64 = 0;
  v64[1] = 0;
  v65 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v106) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v66 = v88;
  sub_24A9FEB00();
  (*(v89 + 32))(v32 + v65, v66, v90);
  v90 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v32 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v104 = v91;
  v105 = v92;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v106) = v93;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v106 = v94;
  v94 = v94;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v106 = v95;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v106) = v96;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v106 = v97;
  v107 = v98;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v99;
  v106 = v99;

  v68 = v67;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v106) = v100;

  sub_24A9FEB50();
  v69 = v101;
  sub_24A9DB010(v101, v55, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v55, v103, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v69, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v55, &qword_27EF827E0, &qword_24AA00C90);
  v70 = v90;
  swift_beginAccess();
  *(v32 + v70) = v102;
  return v32;
}

uint64_t FTNMockCall.init(uniqueProxyIdentifier:status:handle:contacts:isVideo:suggestedDisplayName:provider:isUplinkMuted:dateConnected:isWaitOnHoldActive:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, int a6, void *a7, uint64_t a8, void *a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12)
{
  v97 = a7;
  v98 = a8;
  v96 = a6;
  v94 = a4;
  v95 = a5;
  v93 = a3;
  v91 = a1;
  v92 = a2;
  v102 = a12;
  v101 = a11;
  v100 = a10;
  v99 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v89 = *(v13 - 8);
  v90 = v13;
  MEMORY[0x28223BE20](v13);
  v88 = &v72 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v72 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v16 = MEMORY[0x28223BE20](v84);
  v103 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = &v72 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v72 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v72 - v20;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v21 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v23 = &v72 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v25 = &v72 - v24;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v26 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v28 = &v72 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v72 - v31;
  *(v12 + 16) = 2;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 24) = 0;
  *(v12 + 48) = 131585;
  *(v12 + 52) = 1;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 71) = 0;
  v33 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v106) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v30 + 32))(v12 + v33, v32, v29);
  v34 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v106 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  sub_24A9FEB00();
  (*(v26 + 32))(v12 + v34, v28, v73);
  v35 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v106 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  sub_24A9FEB00();
  (*(v74 + 32))(v12 + v35, v25, v75);
  v36 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37 = *(v21 + 32);
  v38 = v76;
  v37(v12 + v36, v23, v76);
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v39 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v12 + v39) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v40 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v106 = 0;
  v107 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v41 = v77;
  sub_24A9FEB00();
  (*(v78 + 32))(v12 + v40, v41, v79);
  v42 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v43 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v44 = sub_24A9FEC30();
  v45 = [v43 initWithIdentifier_];

  v106 = v45;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v46 = v80;
  sub_24A9FEB00();
  (*(v81 + 32))(v12 + v42, v46, v82);
  v47 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37(v12 + v47, v23, v38);
  v48 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37(v12 + v48, v23, v38);
  v49 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37(v12 + v49, v23, v38);
  v50 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37(v12 + v50, v23, v38);
  v51 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37(v12 + v51, v23, v38);
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v106) = 0;
  sub_24A9FEB00();
  v37(v12 + v52, v23, v38);
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v54 = sub_24A9FE9D0();
  v55 = v83;
  (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
  sub_24A9DB010(v55, v103, &qword_27EF827E0, &qword_24AA00C90);
  v56 = v85;
  sub_24A9FEB00();
  sub_24A9C994C(v55, &qword_27EF827E0, &qword_24AA00C90);
  (*(v86 + 32))(v12 + v53, v56, v87);
  v57 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID;
  v58 = sub_24A9FEA40();
  (*(*(v58 - 8) + 56))(v12 + v57, 1, 1, v58);
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v59 = (v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v59 = 0;
  v59[1] = 0;
  v60 = (v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v60 = 0;
  v60[1] = 0;
  v61 = v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *v61 = 0u;
  *(v61 + 16) = 0u;
  *(v61 + 32) = 0;
  v62 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v63 = sub_24A9FE960();
  (*(*(v63 - 8) + 56))(v12 + v62, 1, 1, v63);
  v64 = (v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v64 = 0;
  v64[1] = 0;
  v65 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v106) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v66 = v88;
  sub_24A9FEB00();
  (*(v89 + 32))(v12 + v65, v66, v90);
  v90 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v104 = v91;
  v105 = v92;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v106) = v93;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v106 = v94;
  v94 = v94;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v106 = v95;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v106) = v96;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v106 = v97;
  v107 = v98;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v99;
  v106 = v99;

  v68 = v67;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v106) = v100;

  sub_24A9FEB50();
  v69 = v101;
  sub_24A9DB010(v101, v55, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v55, v103, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v69, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v55, &qword_27EF827E0, &qword_24AA00C90);
  v70 = v90;
  swift_beginAccess();
  *(v12 + v70) = v102;
  return v12;
}

uint64_t FTNMockCall.answerRequest()@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for FTNMockAnswerRequest();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = 0;
  a1[3] = v3;
  a1[4] = &protocol witness table for FTNMockAnswerRequest;
  *a1 = v4;
}

Swift::Void __swiftcall FTNMockCall.toggleScreenSharing()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v0);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A9FEB50();
}

uint64_t FTNMockCall.deinit()
{

  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__uniqueProxyIdentifier;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C90, &qword_24AA01A98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);

  v12 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v11(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted, v10);
  v11(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo, v10);
  v11(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced, v10);
  v11(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail, v10);
  v11(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency, v10);
  v11(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen, v10);
  v16 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  sub_24A9C994C(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, &unk_27EF82900, &qword_24AA01280);

  sub_24A9F4790(*(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle), *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle + 8), *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle + 16), *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle + 24));
  sub_24A9C994C(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL, &qword_27EF82820, &qword_24AA00CB0);

  v18 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  return v0;
}

uint64_t FTNMockCall.__deallocating_deinit()
{
  FTNMockCall.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24A9ED108()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

uint64_t sub_24A9ED190@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID;
  swift_beginAccess();
  return sub_24A9DB010(v1 + v3, a1, &unk_27EF82900, &qword_24AA01280);
}

BOOL sub_24A9ED1F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v6 - v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(v2);

  v3 = sub_24A9FE9D0();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_24A9C994C(v2, &qword_27EF827E0, &qword_24AA00C90);
  return v4;
}

BOOL sub_24A9ED350()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1 == 2;
}

uint64_t (*sub_24A9ED3F4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9ED4C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*sub_24A9ED52C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

void sub_24A9ED5D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

id sub_24A9ED710()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_24A9ED770@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for FTNMockAnswerRequest();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = 0;
  a1[3] = v3;
  a1[4] = &protocol witness table for FTNMockAnswerRequest;
  *a1 = v4;
}

uint64_t sub_24A9ED7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v5);

  return v5;
}

uint64_t sub_24A9ED870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v5);

  return v5;
}

void *sub_24A9ED948()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_24A9ED9C0()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_24A9EDA38()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_24A9EDA7C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_24A9FEAC0();
  *a2 = result;
  return result;
}

uint64_t sub_24A9EDAF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

uint64_t sub_24A9EDB68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

uint64_t sub_24A9EDBE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

uint64_t sub_24A9EDC58@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(a1);
}

uint64_t sub_24A9EDCD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

uint64_t sub_24A9EDD4C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_24A9EDD94()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_24A9EDDDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

void sub_24A9EDE90(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 32);
  sub_24A9F474C(v4, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
}

uint64_t sub_24A9EDF1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  swift_beginAccess();
  return sub_24A9DB010(v3 + v4, a1, &qword_27EF82820, &qword_24AA00CB0);
}

uint64_t sub_24A9EDF94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_24A9EDFEC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_24A9EE03C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 51);
}

uint64_t sub_24A9EE07C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t static FTNMockCall.incomingFaceTimeAudio()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v107 = *(v0 - 1);
  v108 = v0;
  MEMORY[0x28223BE20](v0);
  v106 = &v75 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v102 = *(v2 - 8);
  v103 = v2;
  MEMORY[0x28223BE20](v2);
  v101 = &v75 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  v95 = &v75 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v75 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v75 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v75 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v14 = &v75 - v13;
  v15 = sub_24A9FEA40();
  v88 = v15;
  v87 = *(v15 - 8);
  v16 = v87;
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v19 = MEMORY[0x28223BE20](v93);
  v109 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v75 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v75 - v23;
  v105 = &v75 - v23;
  v79 = "ionAlertAction";
  v25 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v26 = sub_24A9FEC30();
  v104 = [v25 initWithIdentifier_];

  v85 = sub_24A9FE9D0();
  v27 = *(v85 - 8);
  v84 = *(v27 + 56);
  v86 = v27 + 56;
  v84(v24, 1, 1, v85);
  sub_24A9FEA30();
  v28 = sub_24A9FE9F0();
  v96 = v29;
  v97 = v28;
  (*(v16 + 8))(v18, v15);
  v30 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v31 = sub_24A9FEC30();
  v100 = [v30 initWithType:3 value:v31];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_24AA01220;
  v94 = v32;
  v33 = sub_24A9FEC30();
  v34 = sub_24A9FEC30();
  v35 = [objc_opt_self() contactWithDisplayName:v33 emailOrPhoneNumber:v34];

  *(v32 + 32) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = 2;
  *(v36 + 32) = 0;
  *(v36 + 40) = 0;
  *(v36 + 24) = 0;
  *(v36 + 48) = 131585;
  *(v36 + 52) = 1;
  *(v36 + 56) = 0;
  *(v36 + 64) = 0;
  *(v36 + 71) = 0;
  v37 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v112) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v75 + 32))(v36 + v37, v14, v76);
  v38 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v112 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  v39 = v77;
  sub_24A9FEB00();
  (*(v78 + 32))(v36 + v38, v39, v80);
  v40 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v112 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  v41 = v81;
  sub_24A9FEB00();
  (*(v82 + 32))(v36 + v40, v41, v83);
  v42 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43 = *(v8 + 32);
  v43(v36 + v42, v10, v7);
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v44 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v36 + v44) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v45 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v112 = 0;
  v113 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v46 = v89;
  sub_24A9FEB00();
  (*(v91 + 32))(v36 + v45, v46, v92);
  v47 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v48 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v49 = sub_24A9FEC30();
  v50 = [v48 initWithIdentifier_];

  v112 = v50;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v51 = v95;
  sub_24A9FEB00();
  (*(v98 + 32))(v36 + v47, v51, v99);
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43(v36 + v52, v10, v7);
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43(v36 + v53, v10, v7);
  v54 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43(v36 + v54, v10, v7);
  v55 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43(v36 + v55, v10, v7);
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43(v36 + v56, v10, v7);
  v57 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43(v36 + v57, v10, v7);
  v58 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v59 = v90;
  v84(v90, 1, 1, v85);
  sub_24A9DB010(v59, v109, &qword_27EF827E0, &qword_24AA00C90);
  v60 = v101;
  sub_24A9FEB00();
  sub_24A9C994C(v59, &qword_27EF827E0, &qword_24AA00C90);
  (*(v102 + 32))(v36 + v58, v60, v103);
  (*(v87 + 56))(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, 1, 1, v88);
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v61 = (v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v61 = 0;
  v61[1] = 0;
  v62 = (v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v62 = 0;
  v62[1] = 0;
  v63 = v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v63 + 32) = 0;
  *v63 = 0u;
  *(v63 + 16) = 0u;
  v64 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v65 = sub_24A9FE960();
  (*(*(v65 - 8) + 56))(v36 + v64, 1, 1, v65);
  v66 = (v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v66 = 0;
  v66[1] = 0;
  v67 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v112) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v68 = v106;
  sub_24A9FEB00();
  (*(v107 + 32))(v36 + v67, v68, v108);
  v69 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v110 = v97;
  v111 = v96;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v112) = 4;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = v100;
  v112 = v100;

  v108 = v70;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = v94;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v112) = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = 0;
  v113 = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v71 = v104;
  v112 = v104;

  v72 = v71;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v112) = 0;

  sub_24A9FEB50();
  v73 = v105;
  sub_24A9DB010(v105, v59, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v59, v109, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v59, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v73, &qword_27EF827E0, &qword_24AA00C90);
  swift_beginAccess();
  *(v36 + v69) = 0;
  return v36;
}

uint64_t static FTNMockCall.incomingFaceTimeVideo()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v113 = *(v0 - 1);
  v114 = v0;
  MEMORY[0x28223BE20](v0);
  v112 = &v79 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v106 = *(v2 - 8);
  v107 = v2;
  MEMORY[0x28223BE20](v2);
  v105 = &v79 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v102 = *(v4 - 8);
  v103 = v4;
  MEMORY[0x28223BE20](v4);
  v99 = &v79 - v5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v79 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v79 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v79 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v14 = &v79 - v13;
  v15 = sub_24A9FEA40();
  v93 = v15;
  v92 = *(v15 - 8);
  v16 = v92;
  MEMORY[0x28223BE20](v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v19 = MEMORY[0x28223BE20](v98);
  v115 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v95 = &v79 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v79 - v23;
  v109 = &v79 - v23;
  v83 = "ionAlertAction";
  v25 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v26 = sub_24A9FEC30();
  v108 = [v25 initWithIdentifier_];

  v90 = sub_24A9FE9D0();
  v27 = *(v90 - 8);
  v89 = *(v27 + 56);
  v91 = v27 + 56;
  v89(v24, 1, 1, v90);
  sub_24A9FEA30();
  v101 = sub_24A9FE9F0();
  v100 = v28;
  (*(v16 + 8))(v18, v15);
  v29 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v30 = sub_24A9FEC30();
  v104 = [v29 initWithType:3 value:v30];

  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v31 = swift_allocObject();
  v110 = xmmword_24AA01220;
  *(v31 + 16) = xmmword_24AA01220;
  v32 = v31;
  v85 = v31;
  v33 = sub_24A9FEC30();
  v34 = sub_24A9FEC30();
  v35 = [objc_opt_self() contactWithDisplayName:v33 emailOrPhoneNumber:v34];

  *(v32 + 32) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = 2;
  *(v36 + 32) = 0;
  *(v36 + 40) = 0;
  *(v36 + 24) = 0;
  *(v36 + 48) = 131585;
  *(v36 + 52) = 1;
  *(v36 + 56) = 0;
  *(v36 + 64) = 0;
  *(v36 + 71) = 0;
  v37 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v118) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v79 + 32))(v36 + v37, v14, v80);
  v38 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v118 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  v39 = v81;
  sub_24A9FEB00();
  (*(v82 + 32))(v36 + v38, v39, v84);
  v40 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v118 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  v41 = v86;
  sub_24A9FEB00();
  (*(v87 + 32))(v36 + v40, v41, v88);
  v42 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v118) = 0;
  sub_24A9FEB00();
  v43 = *(v8 + 32);
  v43(v36 + v42, v10, v7);
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v44 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v36 + v44) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v45 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v118 = 0;
  v119 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v46 = v94;
  sub_24A9FEB00();
  (*(v96 + 32))(v36 + v45, v46, v97);
  v47 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v48 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v49 = sub_24A9FEC30();
  v50 = [v48 initWithIdentifier_];

  v118 = v50;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v51 = v99;
  sub_24A9FEB00();
  (*(v102 + 32))(v36 + v47, v51, v103);
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v118) = 0;
  sub_24A9FEB00();
  v43(v36 + v52, v10, v7);
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v118) = 0;
  sub_24A9FEB00();
  v43(v36 + v53, v10, v7);
  v54 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v118) = 0;
  sub_24A9FEB00();
  v43(v36 + v54, v10, v7);
  v55 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v118) = 0;
  sub_24A9FEB00();
  v43(v36 + v55, v10, v7);
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v118) = 0;
  sub_24A9FEB00();
  v43(v36 + v56, v10, v7);
  v57 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v118) = 0;
  sub_24A9FEB00();
  v43(v36 + v57, v10, v7);
  v58 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v59 = v95;
  v89(v95, 1, 1, v90);
  sub_24A9DB010(v59, v115, &qword_27EF827E0, &qword_24AA00C90);
  v60 = v105;
  sub_24A9FEB00();
  sub_24A9C994C(v59, &qword_27EF827E0, &qword_24AA00C90);
  (*(v106 + 32))(v36 + v58, v60, v107);
  (*(v92 + 56))(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, 1, 1, v93);
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v61 = (v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v61 = 0;
  v61[1] = 0;
  v62 = (v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v62 = 0;
  v62[1] = 0;
  v63 = v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v63 + 32) = 0;
  *v63 = 0u;
  *(v63 + 16) = 0u;
  v64 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v65 = sub_24A9FE960();
  (*(*(v65 - 8) + 56))(v36 + v64, 1, 1, v65);
  v66 = (v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v66 = 0;
  v66[1] = 0;
  v67 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v118) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v68 = v112;
  sub_24A9FEB00();
  (*(v113 + 32))(v36 + v67, v68, v114);
  v69 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v116 = v101;
  v117 = v100;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v118) = 4;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = v104;
  v118 = v104;

  v114 = v70;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v118 = v85;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v118) = 1;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v118 = 0;
  v119 = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v71 = v108;
  v118 = v108;

  v72 = v71;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v118) = 0;

  sub_24A9FEB50();
  v73 = v109;
  sub_24A9DB010(v109, v59, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v59, v115, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v59, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v73, &qword_27EF827E0, &qword_24AA00C90);
  swift_beginAccess();
  *(v36 + v69) = 0;
  v74 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v75 = sub_24A9FEC30();
  [v74 setGivenName_];

  v76 = sub_24A9FEC30();
  [v74 setFamilyName_];

  v77 = swift_allocObject();
  *(v77 + 16) = v110;
  *(v77 + 32) = v74;
  swift_getKeyPath();
  swift_getKeyPath();
  v116 = v77;

  sub_24A9FEB50();
  return v36;
}

uint64_t static FTNMockCall.activeFaceTimeAudio()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v107 = *(v0 - 1);
  v108 = v0;
  MEMORY[0x28223BE20](v0);
  v106 = &v75 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v102 = *(v2 - 8);
  v103 = v2;
  MEMORY[0x28223BE20](v2);
  v101 = &v75 - v3;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v95 = &v75 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v75 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v75 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v75 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v13 = &v75 - v12;
  v14 = sub_24A9FEA40();
  v88 = v14;
  v87 = *(v14 - 8);
  v15 = v87;
  MEMORY[0x28223BE20](v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v18 = MEMORY[0x28223BE20](v93);
  v109 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v90 = &v75 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v75 - v22;
  v79 = "ionAlertAction";
  v24 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v25 = sub_24A9FEC30();
  v104 = [v24 initWithIdentifier_];

  v105 = v23;
  sub_24A9FE9C0();
  v85 = sub_24A9FE9D0();
  v26 = *(v85 - 8);
  v84 = *(v26 + 56);
  v86 = v26 + 56;
  v84(v23, 0, 1, v85);
  sub_24A9FEA30();
  v27 = sub_24A9FE9F0();
  v96 = v28;
  v97 = v27;
  (*(v15 + 8))(v17, v14);
  v29 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v30 = sub_24A9FEC30();
  v99 = [v29 initWithType:3 value:v30];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_24AA01220;
  v32 = v31;
  v94 = v31;
  v33 = sub_24A9FEC30();
  v34 = sub_24A9FEC30();
  v35 = [objc_opt_self() contactWithDisplayName:v33 emailOrPhoneNumber:v34];

  *(v32 + 32) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = 2;
  *(v36 + 32) = 0;
  *(v36 + 40) = 0;
  *(v36 + 24) = 0;
  *(v36 + 48) = 131585;
  *(v36 + 52) = 1;
  *(v36 + 56) = 0;
  *(v36 + 64) = 0;
  *(v36 + 71) = 0;
  v37 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v112) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v75 + 32))(v36 + v37, v13, v76);
  v38 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v112 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  v39 = v77;
  sub_24A9FEB00();
  (*(v78 + 32))(v36 + v38, v39, v80);
  v40 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v112 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  v41 = v81;
  sub_24A9FEB00();
  (*(v82 + 32))(v36 + v40, v41, v83);
  v42 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43 = *(v7 + 32);
  v43(v36 + v42, v9, v6);
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v44 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v36 + v44) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v45 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v112 = 0;
  v113 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v46 = v89;
  sub_24A9FEB00();
  (*(v91 + 32))(v36 + v45, v46, v92);
  v47 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v48 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v49 = sub_24A9FEC30();
  v50 = [v48 initWithIdentifier_];

  v112 = v50;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v51 = v95;
  sub_24A9FEB00();
  (*(v98 + 32))(v36 + v47, v51, v100);
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43(v36 + v52, v9, v6);
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43(v36 + v53, v9, v6);
  v54 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43(v36 + v54, v9, v6);
  v55 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43(v36 + v55, v9, v6);
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43(v36 + v56, v9, v6);
  v57 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v112) = 0;
  sub_24A9FEB00();
  v43(v36 + v57, v9, v6);
  v58 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v59 = v90;
  v84(v90, 1, 1, v85);
  sub_24A9DB010(v59, v109, &qword_27EF827E0, &qword_24AA00C90);
  v60 = v101;
  sub_24A9FEB00();
  sub_24A9C994C(v59, &qword_27EF827E0, &qword_24AA00C90);
  (*(v102 + 32))(v36 + v58, v60, v103);
  (*(v87 + 56))(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, 1, 1, v88);
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v61 = (v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v61 = 0;
  v61[1] = 0;
  v62 = (v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v62 = 0;
  v62[1] = 0;
  v63 = v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v63 + 32) = 0;
  *v63 = 0u;
  *(v63 + 16) = 0u;
  v64 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v65 = sub_24A9FE960();
  (*(*(v65 - 8) + 56))(v36 + v64, 1, 1, v65);
  v66 = (v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v66 = 0;
  v66[1] = 0;
  v67 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v112) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v68 = v106;
  sub_24A9FEB00();
  (*(v107 + 32))(v36 + v67, v68, v108);
  v69 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v36 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v110 = v97;
  v111 = v96;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v112) = 1;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = v99;
  v112 = v99;

  v108 = v70;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = v94;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v112) = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = 0;
  v113 = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v71 = v104;
  v112 = v104;

  v72 = v71;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v112) = 0;

  sub_24A9FEB50();
  v73 = v105;
  sub_24A9DB010(v105, v59, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v59, v109, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v59, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v73, &qword_27EF827E0, &qword_24AA00C90);
  swift_beginAccess();
  *(v36 + v69) = 0;
  return v36;
}

uint64_t static FTNMockCall.activeTelephony()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v106 = *(v0 - 1);
  v107 = v0;
  MEMORY[0x28223BE20](v0);
  v105 = &v74 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v101 = *(v2 - 8);
  v102 = v2;
  MEMORY[0x28223BE20](v2);
  v100 = &v74 - v3;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v74 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v74 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v74 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v74 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v13 = &v74 - v12;
  v14 = sub_24A9FEA40();
  v87 = v14;
  v86 = *(v14 - 8);
  v15 = v86;
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v18 = MEMORY[0x28223BE20](v92);
  v108 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v89 = &v74 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v74 - v22;
  v24 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v25 = sub_24A9FEC30();
  v103 = [v24 initWithIdentifier_];

  v104 = v23;
  sub_24A9FE9C0();
  v84 = sub_24A9FE9D0();
  v26 = *(v84 - 8);
  v83 = *(v26 + 56);
  v85 = v26 + 56;
  v83(v23, 0, 1, v84);
  sub_24A9FEA30();
  v27 = sub_24A9FE9F0();
  v95 = v28;
  v96 = v27;
  (*(v15 + 8))(v17, v14);
  v29 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v30 = sub_24A9FEC30();
  v98 = [v29 initWithType:3 value:v30];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_24AA01220;
  v93 = v31;
  v32 = sub_24A9FEC30();
  v33 = sub_24A9FEC30();
  v34 = [objc_opt_self() contactWithDisplayName:v32 emailOrPhoneNumber:v33];

  *(v31 + 32) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = 2;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  *(v35 + 24) = 0;
  *(v35 + 48) = 131585;
  *(v35 + 52) = 1;
  *(v35 + 56) = 0;
  *(v35 + 64) = 0;
  *(v35 + 71) = 0;
  v36 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v111) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v75 + 32))(v35 + v36, v13, v76);
  v37 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v111 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  v38 = v77;
  sub_24A9FEB00();
  (*(v78 + 32))(v35 + v37, v38, v79);
  v39 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v111 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  v40 = v80;
  sub_24A9FEB00();
  (*(v81 + 32))(v35 + v39, v40, v82);
  v41 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v111) = 0;
  sub_24A9FEB00();
  v42 = *(v7 + 32);
  v42(v35 + v41, v9, v6);
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v43 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v35 + v43) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v44 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v111 = 0;
  v112 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v45 = v88;
  sub_24A9FEB00();
  (*(v90 + 32))(v35 + v44, v45, v91);
  v46 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v47 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v48 = sub_24A9FEC30();
  v49 = [v47 initWithIdentifier_];

  v111 = v49;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v50 = v94;
  sub_24A9FEB00();
  (*(v97 + 32))(v35 + v46, v50, v99);
  v51 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v111) = 0;
  sub_24A9FEB00();
  v42(v35 + v51, v9, v6);
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v111) = 0;
  sub_24A9FEB00();
  v42(v35 + v52, v9, v6);
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v111) = 0;
  sub_24A9FEB00();
  v42(v35 + v53, v9, v6);
  v54 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v111) = 0;
  sub_24A9FEB00();
  v42(v35 + v54, v9, v6);
  v55 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v111) = 0;
  sub_24A9FEB00();
  v42(v35 + v55, v9, v6);
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v111) = 0;
  sub_24A9FEB00();
  v42(v35 + v56, v9, v6);
  v57 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v58 = v89;
  v83(v89, 1, 1, v84);
  sub_24A9DB010(v58, v108, &qword_27EF827E0, &qword_24AA00C90);
  v59 = v100;
  sub_24A9FEB00();
  sub_24A9C994C(v58, &qword_27EF827E0, &qword_24AA00C90);
  (*(v101 + 32))(v35 + v57, v59, v102);
  (*(v86 + 56))(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, 1, 1, v87);
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v60 = (v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v60 = 0;
  v60[1] = 0;
  v61 = (v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v61 = 0;
  v61[1] = 0;
  v62 = v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v62 + 32) = 0;
  *v62 = 0u;
  *(v62 + 16) = 0u;
  v63 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v64 = sub_24A9FE960();
  (*(*(v64 - 8) + 56))(v35 + v63, 1, 1, v64);
  v65 = (v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v65 = 0;
  v65[1] = 0;
  v66 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v111) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v67 = v105;
  sub_24A9FEB00();
  (*(v106 + 32))(v35 + v66, v67, v107);
  v68 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v109 = v96;
  v110 = v95;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v111) = 1;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v69 = v98;
  v111 = v98;

  v107 = v69;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v111 = v93;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v111) = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v111 = 0;
  v112 = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = v103;
  v111 = v103;

  v71 = v70;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v111) = 0;

  sub_24A9FEB50();
  v72 = v104;
  sub_24A9DB010(v104, v58, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v58, v108, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v58, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v72, &qword_27EF827E0, &qword_24AA00C90);
  swift_beginAccess();
  *(v35 + v68) = 0;
  return v35;
}

uint64_t static FTNMockCall.waitOnHoldCall()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v114 = *(v0 - 1);
  v115 = v0;
  MEMORY[0x28223BE20](v0);
  v111 = &v79 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v107 = *(v2 - 8);
  v108 = v2;
  MEMORY[0x28223BE20](v2);
  v106 = &v79 - v3;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v79 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v79 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v79 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v79 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v13 = &v79 - v12;
  v14 = sub_24A9FEA40();
  v94 = v14;
  v93 = *(v14 - 8);
  v15 = v93;
  MEMORY[0x28223BE20](v14);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v18 = MEMORY[0x28223BE20](v99);
  v116 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v96 = &v79 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v79 - v22;
  v84 = "ionAlertAction";
  v24 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v25 = sub_24A9FEC30();
  v109 = [v24 initWithIdentifier_];

  v110 = v23;
  sub_24A9FE9C0();
  v91 = sub_24A9FE9D0();
  v26 = *(v91 - 8);
  v90 = *(v26 + 56);
  v92 = v26 + 56;
  v90(v23, 0, 1, v91);
  sub_24A9FEA30();
  v102 = sub_24A9FE9F0();
  v101 = v27;
  (*(v15 + 8))(v17, v14);
  v28 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v29 = sub_24A9FEC30();
  v104 = [v28 initWithType:3 value:v29];

  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v30 = swift_allocObject();
  v112 = xmmword_24AA01220;
  *(v30 + 16) = xmmword_24AA01220;
  v31 = v30;
  v86 = v30;
  v32 = sub_24A9FEC30();
  v33 = sub_24A9FEC30();
  v34 = [objc_opt_self() contactWithDisplayName:v32 emailOrPhoneNumber:v33];

  *(v31 + 32) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = 2;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  *(v35 + 24) = 0;
  *(v35 + 48) = 131585;
  *(v35 + 52) = 1;
  *(v35 + 56) = 0;
  *(v35 + 64) = 0;
  *(v35 + 71) = 0;
  v36 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v119) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v80 + 32))(v35 + v36, v13, v81);
  v37 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v119 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  v38 = v82;
  sub_24A9FEB00();
  (*(v83 + 32))(v35 + v37, v38, v85);
  v39 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v119 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  v40 = v87;
  sub_24A9FEB00();
  (*(v88 + 32))(v35 + v39, v40, v89);
  v41 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42 = *(v7 + 32);
  v42(v35 + v41, v9, v6);
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v43 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v35 + v43) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v44 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v119 = 0;
  v120 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v45 = v95;
  sub_24A9FEB00();
  (*(v97 + 32))(v35 + v44, v45, v98);
  v46 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v47 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v48 = sub_24A9FEC30();
  v49 = [v47 initWithIdentifier_];

  v119 = v49;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v50 = v100;
  sub_24A9FEB00();
  (*(v103 + 32))(v35 + v46, v50, v105);
  v51 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42(v35 + v51, v9, v6);
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42(v35 + v52, v9, v6);
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42(v35 + v53, v9, v6);
  v54 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42(v35 + v54, v9, v6);
  v55 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42(v35 + v55, v9, v6);
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42(v35 + v56, v9, v6);
  v57 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v58 = v96;
  v90(v96, 1, 1, v91);
  sub_24A9DB010(v58, v116, &qword_27EF827E0, &qword_24AA00C90);
  v59 = v106;
  sub_24A9FEB00();
  sub_24A9C994C(v58, &qword_27EF827E0, &qword_24AA00C90);
  (*(v107 + 32))(v35 + v57, v59, v108);
  (*(v93 + 56))(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, 1, 1, v94);
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v60 = (v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v60 = 0;
  v60[1] = 0;
  v61 = (v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v61 = 0;
  v61[1] = 0;
  v62 = v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v62 + 32) = 0;
  *v62 = 0u;
  *(v62 + 16) = 0u;
  v63 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v64 = sub_24A9FE960();
  (*(*(v64 - 8) + 56))(v35 + v63, 1, 1, v64);
  v65 = (v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v65 = 0;
  v65[1] = 0;
  v66 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v119) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v67 = v111;
  sub_24A9FEB00();
  (*(v114 + 32))(v35 + v66, v67, v115);
  v68 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v117 = v102;
  v118 = v101;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v119) = 1;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v69 = v104;
  v119 = v104;

  v115 = v69;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v119 = v86;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v119) = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v119 = 0;
  v120 = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = v109;
  v119 = v109;

  v71 = v70;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v119) = 0;

  sub_24A9FEB50();
  v72 = v110;
  sub_24A9DB010(v110, v58, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v58, v116, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v58, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v72, &qword_27EF827E0, &qword_24AA00C90);
  swift_beginAccess();
  *(v35 + v68) = 1;
  v73 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v74 = sub_24A9FEC30();
  [v73 setGivenName_];

  v75 = sub_24A9FEC30();
  [v73 setFamilyName_];

  v76 = sub_24A9FEC30();
  [v73 setOrganizationName_];

  v77 = swift_allocObject();
  *(v77 + 16) = v112;
  *(v77 + 32) = v73;
  swift_getKeyPath();
  swift_getKeyPath();
  v117 = v77;

  sub_24A9FEB50();
  return v35;
}

uint64_t static FTNMockCall.incomingRelayCall()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v113 = *(v0 - 1);
  v114 = v0;
  MEMORY[0x28223BE20](v0);
  v110 = &v78 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v106 = *(v2 - 8);
  v107 = v2;
  MEMORY[0x28223BE20](v2);
  v105 = &v78 - v3;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v78 - v4;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = &v78 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v78 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v78 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v78 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v13 = &v78 - v12;
  v14 = sub_24A9FEA40();
  v93 = v14;
  v92 = *(v14 - 8);
  v15 = v92;
  MEMORY[0x28223BE20](v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v18 = MEMORY[0x28223BE20](v98);
  v115 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v95 = &v78 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v78 - v22;
  v109 = &v78 - v22;
  v83 = "ionAlertAction";
  v24 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v25 = sub_24A9FEC30();
  v108 = [v24 initWithIdentifier_];

  v90 = sub_24A9FE9D0();
  v26 = *(v90 - 8);
  v89 = *(v26 + 56);
  v91 = v26 + 56;
  v89(v23, 1, 1, v90);
  sub_24A9FEA30();
  v101 = sub_24A9FE9F0();
  v100 = v27;
  (*(v15 + 8))(v17, v14);
  v28 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v29 = sub_24A9FEC30();
  v104 = [v28 initWithType:3 value:v29];

  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v30 = swift_allocObject();
  v111 = xmmword_24AA01220;
  *(v30 + 16) = xmmword_24AA01220;
  v31 = v30;
  v85 = v30;
  v32 = sub_24A9FEC30();
  v33 = sub_24A9FEC30();
  v34 = [objc_opt_self() contactWithDisplayName:v32 emailOrPhoneNumber:v33];

  *(v31 + 32) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = 2;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  *(v35 + 24) = 0;
  *(v35 + 48) = 131585;
  *(v35 + 52) = 1;
  *(v35 + 56) = 0;
  *(v35 + 64) = 0;
  *(v35 + 71) = 0;
  v36 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v119) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v79 + 32))(v35 + v36, v13, v80);
  v37 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v119 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  v38 = v81;
  sub_24A9FEB00();
  (*(v82 + 32))(v35 + v37, v38, v84);
  v39 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v119 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  v40 = v86;
  sub_24A9FEB00();
  (*(v87 + 32))(v35 + v39, v40, v88);
  v41 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42 = *(v7 + 32);
  v42(v35 + v41, v9, v6);
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v43 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v35 + v43) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v44 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v119 = 0;
  v120 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v45 = v94;
  sub_24A9FEB00();
  (*(v96 + 32))(v35 + v44, v45, v97);
  v46 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v47 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v48 = sub_24A9FEC30();
  v49 = [v47 initWithIdentifier_];

  v119 = v49;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v50 = v99;
  sub_24A9FEB00();
  (*(v102 + 32))(v35 + v46, v50, v103);
  v51 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42(v35 + v51, v9, v6);
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42(v35 + v52, v9, v6);
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42(v35 + v53, v9, v6);
  v54 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42(v35 + v54, v9, v6);
  v55 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42(v35 + v55, v9, v6);
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v42(v35 + v56, v9, v6);
  v57 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v58 = v95;
  v89(v95, 1, 1, v90);
  sub_24A9DB010(v58, v115, &qword_27EF827E0, &qword_24AA00C90);
  v59 = v105;
  sub_24A9FEB00();
  sub_24A9C994C(v58, &qword_27EF827E0, &qword_24AA00C90);
  (*(v106 + 32))(v35 + v57, v59, v107);
  (*(v92 + 56))(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, 1, 1, v93);
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v60 = (v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v60 = 0;
  v60[1] = 0;
  v61 = (v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v61 = 0;
  v61[1] = 0;
  v62 = v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v62 + 32) = 0;
  *v62 = 0u;
  *(v62 + 16) = 0u;
  v63 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v64 = sub_24A9FE960();
  (*(*(v64 - 8) + 56))(v35 + v63, 1, 1, v64);
  v65 = (v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v65 = 0;
  v65[1] = 0;
  v66 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v119) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v67 = v110;
  sub_24A9FEB00();
  (*(v113 + 32))(v35 + v66, v67, v114);
  v68 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v35 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v117 = v101;
  v118 = v100;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v119) = 4;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v69 = v104;
  v119 = v104;

  v114 = v69;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v119 = v85;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v119) = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v119 = 0;
  v120 = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = v108;
  v119 = v108;

  v71 = v70;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v119) = 0;

  sub_24A9FEB50();
  v72 = v109;
  sub_24A9DB010(v109, v58, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v58, v115, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v58, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v72, &qword_27EF827E0, &qword_24AA00C90);
  swift_beginAccess();
  *(v35 + v68) = 0;
  swift_beginAccess();
  *(v35 + 72) = 1;
  v73 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v74 = sub_24A9FEC30();
  [v73 setGivenName_];

  v75 = sub_24A9FEC30();
  [v73 setFamilyName_];

  v76 = swift_allocObject();
  *(v76 + 16) = v111;
  *(v76 + 32) = v73;
  swift_getKeyPath();
  swift_getKeyPath();
  v116 = v76;

  sub_24A9FEB50();
  return v35;
}

void sub_24A9F474C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_24A9F4790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_24A9F47D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_24A9F4B58(uint64_t a1)
{
  sub_24A9F5068(319, &qword_27EF82DB8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24A9F5170(319, &qword_27EF82DC0, type metadata accessor for TUCallStatus, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_24A9F511C(319, &qword_27EF82DC8, &qword_27EF82D90, &unk_24AA01F20);
      if (v3 <= 0x3F)
      {
        sub_24A9F511C(319, &qword_27EF82DD0, &qword_27EF82810, &qword_24AA00CA8);
        if (v4 <= 0x3F)
        {
          sub_24A9F5068(319, &qword_27EF82DD8, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_24A9F511C(319, &qword_27EF82DE0, &qword_27EF82D98, &unk_24AA01F30);
            if (v6 <= 0x3F)
            {
              sub_24A9F50B4(319);
              if (v7 <= 0x3F)
              {
                sub_24A9F511C(319, &qword_27EF82DF0, &qword_27EF827E0, &qword_24AA00C90);
                if (v8 <= 0x3F)
                {
                  sub_24A9F5170(319, &qword_27EF82DF8, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_24A9F5170(319, &qword_27EF82E00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_24A9F5170(319, qword_27EF82E08, type metadata accessor for TUCallFaceTimeIDStatus, MEMORY[0x277CBCED0]);
                      if (v11 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24A9F5068(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24A9FEB60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A9F50B4(uint64_t a1)
{
  if (!qword_27EF82DE8)
  {
    sub_24A9C27EC(255, &qword_27EF82DA0, 0x277D6EE20);
    v1 = sub_24A9FEB60();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF82DE8);
    }
  }
}

void sub_24A9F511C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24A9FEB60();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24A9F5170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t BaseServiceProvider.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_24A9F5234(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v7[3] = type metadata accessor for BaseServiceProvider(0, *(*v4 + 80), *(*v4 + 88), a4);
  v7[0] = v4;

  XPCConnectionHolder.setConnection(_:exportedObject:)(v5, v7);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_24A9F52DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong remoteObjectProxy];
    sub_24A9FEE90();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA0, &qword_24AA022A8);
    if (swift_dynamicCast())
    {

      return v11;
    }

    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v7 = sub_24A9FEA90();
    __swift_project_value_buffer(v7, qword_27EF84B68);
    v8 = sub_24A9FEA70();
    v9 = sub_24A9FED90();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24A9BF000, v8, v9, "Wrong remoteObjectProxy type.", v10, 2u);
      MEMORY[0x24C223120](v10, -1, -1);
    }
  }

  else
  {
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v4 = sub_24A9FEA90();
    __swift_project_value_buffer(v4, qword_27EF84B68);
    v1 = sub_24A9FEA70();
    v5 = sub_24A9FED90();
    if (os_log_type_enabled(v1, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24A9BF000, v1, v5, "No valid XPC connection.", v6, 2u);
      MEMORY[0x24C223120](v6, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_24A9F5518@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = sub_24A9FEE70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong remoteObjectProxy];
    sub_24A9FEE90();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {

      v11 = *(v3 - 8);
      v12 = *(v11 + 56);
      v12(v7, 0, 1, v3);
      (*(v11 + 32))(a1, v7, v3);
      return (v12)(a1, 0, 1, v3);
    }

    else
    {
      v18 = *(*(v3 - 8) + 56);
      v18(v7, 1, 1, v3);
      (*(v5 + 8))(v7, v4);
      if (qword_27EF82680 != -1)
      {
        swift_once();
      }

      v19 = sub_24A9FEA90();
      __swift_project_value_buffer(v19, qword_27EF84B68);
      v20 = sub_24A9FEA70();
      v21 = sub_24A9FED90();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_24A9BF000, v20, v21, "Wrong remoteObjectProxy type.", v22, 2u);
        MEMORY[0x24C223120](v22, -1, -1);
      }

      return (v18)(a1, 1, 1, v3);
    }
  }

  else
  {
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v14 = sub_24A9FEA90();
    __swift_project_value_buffer(v14, qword_27EF84B68);
    v15 = sub_24A9FEA70();
    v16 = sub_24A9FED90();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24A9BF000, v15, v16, "No valid XPC connection.", v17, 2u);
      MEMORY[0x24C223120](v17, -1, -1);
    }

    return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  }
}

BOOL sub_24A9F5924()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
  }

  return v1 != 0;
}

uint64_t BaseServiceProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24A9F5A04@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A9F6CC0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A9CF0A8(v4);
}

uint64_t sub_24A9F5A98(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A9F6C98;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  sub_24A9CF0A8(v3);
  return sub_24A9CF118(v8, v9);
}

uint64_t sub_24A9F5B54()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_24A9CF0A8(v1);
  return v1;
}

uint64_t sub_24A9F5BA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_24A9CF118(v5, v6);
}

uint64_t sub_24A9F5C48@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A9F6C6C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A9CF0A8(v4);
}

uint64_t sub_24A9F5CDC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A9F6C34;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_24A9CF0A8(v3);
  return sub_24A9CF118(v8, v9);
}

uint64_t sub_24A9F5D98()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_24A9CF0A8(v1);
  return v1;
}

uint64_t sub_24A9F5DE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_24A9CF118(v5, v6);
}

uint64_t ExtensionXPC.__allocating_init()()
{
  v0 = swift_allocObject();
  ExtensionXPC.init()();
  return v0;
}

uint64_t ExtensionXPC.init()()
{
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  v1 = objc_opt_self();
  v2 = [v1 interfaceWithProtocol_];
  v3 = [v1 interfaceWithProtocol_];
  v4 = type metadata accessor for XPCConnectionHolder();
  v5 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_remoteInterface] = v2;
  *&v5[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_exportedInterface] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  *(v0 + 16) = objc_msgSendSuper2(&v8, sel_init);
  return v0;
}

uint64_t sub_24A9F5FCC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 32);
    v5 = OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value;

    v3(a1 + v5);
    return sub_24A9CF118(v3, v4);
  }

  else
  {
    result = sub_24A9FF080();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A9F6094(uint64_t a1, uint64_t a2, char *a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value;
    v8 = a3;

    sub_24A9CF0A8(v5);
    v5(&a3[v7]);

    return sub_24A9CF118(v5, v6);
  }

  else
  {
    result = sub_24A9FF080();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A9F618C(void *a1)
{
  v2 = v1;
  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v4 = sub_24A9FEA90();
  __swift_project_value_buffer(v4, qword_27EF84B68);
  v5 = a1;
  v6 = sub_24A9FEA70();
  v7 = sub_24A9FEDA0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;
    type metadata accessor for UpstreamAction();
    v10 = v5;
    v11 = sub_24A9FEC80();
    v13 = sub_24A9D83EC(v11, v12, v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24A9BF000, v6, v7, "ExtensionXPC: Send action %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x24C223120](v9, -1, -1);
    MEMORY[0x24C223120](v8, -1, -1);
  }

  swift_beginAccess();
  v14 = *(v2 + 40);
  if (v14)
  {
    v15 = *(v2 + 48);

    v14(v5);
    return sub_24A9CF118(v14, v15);
  }

  else
  {
    result = sub_24A9FF080();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A9F638C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_24A9F618C(v3);
}

void *sub_24A9F63DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertIdentifier(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24A9F52DC();
  if (result)
  {
    v8 = result;
    sub_24A9DAA40(a1, v6);
    v9 = type metadata accessor for WrappedAlertIdentifier(0);
    v10 = objc_allocWithZone(v9);
    sub_24A9DAA40(v6, v10 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value);
    v12.receiver = v10;
    v12.super_class = v9;
    v11 = objc_msgSendSuper2(&v12, sel_init);
    sub_24A9DAAA4(v6);
    [v8 receivedActionWithIdentifier:v11 action:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9F6514()
{
  sub_24A9CF118(v0[3], v0[4]);
  v1 = v0[5];
  v2 = v0[6];

  return sub_24A9CF118(v1, v2);
}

uint64_t ExtensionXPC.deinit()
{
  sub_24A9CF118(*(v0 + 24), *(v0 + 32));
  sub_24A9CF118(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t ExtensionXPC.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_24A9CF118(v1, v2);
  sub_24A9CF118(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_24A9F65E4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);
  sub_24A9CF0A8(v2);
  return v2;
}

uint64_t sub_24A9F6638(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  return sub_24A9CF118(v6, v7);
}

void *sub_24A9F66E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertIdentifier(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24A9F52DC();
  if (result)
  {
    v8 = result;
    sub_24A9DAA40(a1, v6);
    v9 = type metadata accessor for WrappedAlertIdentifier(0);
    v10 = objc_allocWithZone(v9);
    sub_24A9DAA40(v6, v10 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value);
    v12.receiver = v10;
    v12.super_class = v9;
    v11 = objc_msgSendSuper2(&v12, sel_init);
    sub_24A9DAAA4(v6);
    [v8 receivedActionWithIdentifier:v11 action:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9F680C(uint64_t *a1, int a2)
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

uint64_t sub_24A9F6854(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for ExtensionXPC(uint64_t a1)
{
  result = qword_27EF82E90;
  if (!qword_27EF82E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A9F6BFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A9F6C34(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t FTNMockAnswerRequest.__allocating_init(call:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t FTNMockAnswerRequest.behavior.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t FTNMockAnswerRequest.init(call:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t FTNMockAnswerRequest.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_24A9F6E9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *a2 = result;
  return result;
}

uint64_t sub_24A9F6EE0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t sub_24A9F6F20(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 24) = a1;
  return result;
}

id FTNMockCallCenter.callServicesClientCapabilities.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void FTNMockCallCenter.callServicesClientCapabilities.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t FTNMockCallCenter.currentAudioAndVideoCallGroups.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t FTNMockCallCenter.__allocating_init()()
{
  v0 = swift_allocObject();
  FTNMockCallCenter.init()();
  return v0;
}

char *FTNMockCallCenter.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D6EE38]) init];
  v6 = MEMORY[0x277D84F90];
  *(v0 + 2) = v5;
  *(v0 + 3) = v6;
  *(v0 + 4) = 0;
  *(v0 + 5) = 0;
  v7 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter__currentCalls;
  v9[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EB8, &qword_24AA022B8);
  sub_24A9FEB00();
  (*(v2 + 32))(&v0[v7], v4, v1);
  *&v0[OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_answerRequest] = 0;
  v0[OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isAddCallAllowed] = 1;
  v0[OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isHoldAndAnswerAllowed] = 1;
  return v0;
}

uint64_t FTNMockCallCenter.currentVideoCall.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t FTNMockCallCenter.incomingVideoCall.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_24A9F74A8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_24A9F752C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t FTNMockCallCenter.currentCalls.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

void (*FTNMockCallCenter.currentCalls.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9ED5D0;
}

uint64_t FTNMockCallCenter.$currentCalls.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  sub_24A9FEB10();
  return swift_endAccess();
}

uint64_t sub_24A9F7734(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  sub_24A9FEB10();
  return swift_endAccess();
}

uint64_t sub_24A9F77AC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EC0, &qword_24AA02308);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t FTNMockCallCenter.$currentCalls.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EC0, &qword_24AA02308);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*FTNMockCallCenter.$currentCalls.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EC0, &qword_24AA02308);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter__currentCalls;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9EA0C8;
}

uint64_t _s24FaceTimeNotificationCore17FTNMockCallCenterC12currentCallsSayAA0eF0CGvg_0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

id FTNMockCallCenter.conversationManager.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6EE98]);

  return [v0 init];
}

id FTNMockCallCenter.providerManager.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6EE28]);

  return [v0 init];
}

uint64_t FTNMockCallCenter.call(withUniqueProxyIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FTNMockCall(0);
  swift_allocObject();

  return FTNMockCall.init(uniqueProxyIdentifier:)(a1, a2);
}

unint64_t FTNMockCallCenter.calls(passingTest:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v11);

  v3 = v11;
  v11 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_16:
    v4 = sub_24A9FEF30();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C222870](v5, v3);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v9 = v11;
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(v3 + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        if (a1(v7))
        {
          sub_24A9FF020();
          sub_24A9FF050();
          v6 = v3 & 0xFFFFFFFFFFFFFF8;
          sub_24A9FF060();
          sub_24A9FF030();
        }

        else
        {
        }

        ++v5;
        if (v8 == v4)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_18:

  return v9;
}

uint64_t FTNMockCallCenter.answerRequest.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_answerRequest;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t FTNMockCallCenter.answer(with:)(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_answerRequest;
  swift_beginAccess();
  *(v1 + v3) = a1;

  swift_beginAccess();
  if (*(a1 + 24) != 2)
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A9FEB40(&v14);

  v4 = v14;
  v14 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = a1;
  if (!v5)
  {
LABEL_19:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

LABEL_4:
  a1 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C222870](a1, v4);
      v6 = a1 + 1;
      if (!__OFADD__(a1, 1))
      {
        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
LABEL_15:

      return _s24FaceTimeNotificationCore17FTNMockCallCenterC6answeryyAA0eF0CF_0(*(a1 + 16));
    }

    if (a1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_18:
      v5 = sub_24A9FEF30();
      v12 = a1;
      if (!v5)
      {
        goto LABEL_19;
      }

      goto LABEL_4;
    }

    v6 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A9FEB40(&v13);

    if (v13 == 1)
    {
      sub_24A9FF020();
      sub_24A9FF050();
      sub_24A9FF060();
      sub_24A9FF030();
    }

    else
    {
    }

    ++a1;
  }

  while (v6 != v5);
  v7 = v14;
LABEL_20:

  if ((v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
LABEL_23:
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C222870](v9, v7);
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v9 >= *(v7 + 16))
        {
          goto LABEL_32;
        }

        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v8 = sub_24A9FEF30();
          if (!v8)
          {
            break;
          }

          goto LABEL_23;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LODWORD(v14) = 2;
      sub_24A9FEB50();
      ++v9;
    }

    while (v10 != v8);
  }

  a1 = v12;
  return _s24FaceTimeNotificationCore17FTNMockCallCenterC6answeryyAA0eF0CF_0(*(a1 + 16));
}

uint64_t FTNMockCallCenter.answerAsAudio(_:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A9FEB50();
  return _s24FaceTimeNotificationCore17FTNMockCallCenterC6answeryyAA0eF0CF_0(a1);
}

uint64_t FTNMockCallCenter.isAddCallAllowed.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isAddCallAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FTNMockCallCenter.isAddCallAllowed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isAddCallAllowed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FTNMockCallCenter.isHoldAndAnswerAllowed.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isHoldAndAnswerAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FTNMockCallCenter.isHoldAndAnswerAllowed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isHoldAndAnswerAllowed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FTNMockCallCenter.disconnect(_:with:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t sub_24A9F85E8(uint64_t a1, int a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

Swift::Void __swiftcall FTNMockCallCenter.swapCalls()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v4);

  v0 = v4;
  if (v4 >> 62)
  {
    v1 = sub_24A9FEF30();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v1 >= 1)
  {
    v2 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C222870](v2, v0);
      }

      else
      {
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A9FEB40(&v4);

      v3 = v4;
      swift_getKeyPath();
      swift_getKeyPath();
      if (v3 == 2)
      {
        LODWORD(v4) = 1;
      }

      else
      {
        sub_24A9FEB40(&v4);

        if (v4 != 1)
        {

          goto LABEL_7;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        LODWORD(v4) = 2;
      }

      sub_24A9FEB50();
LABEL_7:
      if (v1 == ++v2)
      {
        goto LABEL_16;
      }
    }
  }

  __break(1u);
}

uint64_t FTNMockCallCenter.requestVideoUpgrade(for:originatingUIType:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t FTNMockCallCenter.openShare(for:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v2);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t FTNMockCallCenter.deinit()
{

  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter__currentCalls;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FTNMockCallCenter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter__currentCalls;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_24A9F8BB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v1);

  return v1;
}

uint64_t sub_24A9F8C74(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FTNMockCall(0);
  swift_allocObject();

  return FTNMockCall.init(uniqueProxyIdentifier:)(a1, a2);
}

uint64_t sub_24A9F8D38()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isAddCallAllowed;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_24A9F8D80()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isHoldAndAnswerAllowed;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_24A9F8DFC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A9FEB50();
  return _s24FaceTimeNotificationCore17FTNMockCallCenterC6answeryyAA0eF0CF_0(a1);
}

uint64_t sub_24A9F8E7C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t sub_24A9F8F1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t sub_24A9F8F90(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

id sub_24A9F9044()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6EE98]);

  return [v0 init];
}

id sub_24A9F907C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6EE28]);

  return [v0 init];
}

uint64_t sub_24A9F90B4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v2);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

id sub_24A9F917C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t _s24FaceTimeNotificationCore17FTNMockCallCenterC6answeryyAA0eF0CF_0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-v5];
  sub_24A9FE9C0();
  v7 = sub_24A9FE9D0();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9F9618(v6, v4);

  sub_24A9FEB50();
  sub_24A9F9688(v6);
  swift_getKeyPath();
  swift_getKeyPath();
  *(&v11 + 1) = 1;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40(&v11);

  v8 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v10[10] = v8;

  return sub_24A9FEB50();
}

uint64_t type metadata accessor for FTNMockCallCenter(uint64_t a1)
{
  result = qword_27EF82EC8;
  if (!qword_27EF82EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A9F94BC(uint64_t a1)
{
  sub_24A9F95AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24A9F95AC(uint64_t a1)
{
  if (!qword_27EF82ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF82EB8, &qword_24AA022B8);
    v1 = sub_24A9FEB60();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF82ED8);
    }
  }
}

uint64_t sub_24A9F9618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A9F9688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Reminder.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Reminder.dialUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Reminder(0) + 20);
  v4 = sub_24A9FE960();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Reminder(uint64_t a1)
{
  result = qword_27EF82EF8;
  if (!qword_27EF82EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EventKitCallsReminder.add(reminder:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24A9CB4BC;

  return sub_24A9FA19C(a1);
}

uint64_t sub_24A9F98E4(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A80, &unk_24AA02770);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

void sub_24A9F99B0(void *a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v28 = sub_24A9FE9D0();
  v2 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A9FE910();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v29 = a1;
  v9 = [v8 reminderWithEventStore_];
  v10 = sub_24A9FEC30();
  [v9 setTitle_];

  type metadata accessor for Reminder(0);
  v11 = sub_24A9FE940();
  [v9 setURL_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24AA01220;
  v13 = [objc_allocWithZone(MEMORY[0x277CC5988]) initWithRelativeOffset_];
  if (!v13)
  {
    __break(1u);
  }

  *(v12 + 32) = v13;
  sub_24A9FAB84();
  v14 = sub_24A9FECD0();

  [v9 setAlarms_];

  v15 = sub_24A9FE940();
  [v9 setAction_];

  v16 = [objc_opt_self() calendarWithIdentifier_];
  if (v16)
  {
    v17 = v16;
    sub_24A9FE9A0();
    v18 = sub_24A9FE990();
    (*(v2 + 8))(v4, v28);
    v19 = [v17 components:636 fromDate:v18];

    sub_24A9FE900();
    v20 = sub_24A9FE8F0();
    [v9 setDueDateComponents_];

    v21 = v29;
    v22 = [v29 defaultCalendarForNewReminders];
    [v9 setCalendar_];

    v32[0] = 0;
    if ([v21 saveReminder:v9 error:v32])
    {
      v23 = *(v30 + 8);
      v24 = v32[0];
      v23(v7, v31);
    }

    else
    {
      v26 = v32[0];
      sub_24A9FE930();

      swift_willThrow();
      (*(v30 + 8))(v7, v31);
    }
  }

  else
  {

    sub_24A9FA5FC();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();
  }
}

uint64_t sub_24A9F9E4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24A9CBD30;

  return sub_24A9FA19C(a1);
}

uint64_t FTNCall.reminder(timeIntervalSinceNow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v34 = a3;
  v8 = sub_24A9FE960();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v31 = &v31 - v12;
  (*(a2 + 176))(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EE0, &qword_24AA025F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24AA00690;
  v35 = v4;
  v14 = (*(*(a2 + 8) + 8))(a1);
  v16 = v15;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_24A9FA5A8();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = sub_24A9FEC50();
  v19 = v18;

  v20 = (*(a2 + 184))(a1, a2);
  v21 = [v20 URL];

  if (v21)
  {
    sub_24A9FE950();

    v22 = v31;
    v23 = *(v32 + 32);
    v24 = v11;
    v25 = v17;
    v26 = v33;
    v23(v31, v24, v33);
    v27 = type metadata accessor for Reminder(0);
    v28 = v34;
    result = (v23)(v34 + *(v27 + 20), v22, v26);
    *v28 = v25;
    v28[1] = v19;
    *(v28 + *(v27 + 24)) = a4;
  }

  else
  {

    sub_24A9FA5FC();
    swift_allocError();
    *v30 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_24A9FA1BC()
{
  if (qword_27EF82688 != -1)
  {
    swift_once();
  }

  v1 = sub_24A9FEA90();
  __swift_project_value_buffer(v1, qword_27EF84B80);
  v2 = sub_24A9FEA70();
  v3 = sub_24A9FEDA0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A9BF000, v2, v3, "Add reminder for call.", v4, 2u);
    MEMORY[0x24C223120](v4, -1, -1);
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  v0[19] = v5;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_24A9FA3A4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F10, &unk_24AA02760);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24A9F98E4;
  v0[13] = &block_descriptor_2;
  v0[14] = v6;
  [v5 requestWriteOnlyAccessToEventsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24A9FA3A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_24A9FA538;
  }

  else
  {
    v2 = sub_24A9FA4B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A9FA4B4()
{
  sub_24A9F99B0(*(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A9FA538()
{
  v1 = *(v0 + 152);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_24A9FA5A8()
{
  result = qword_27EF82EE8;
  if (!qword_27EF82EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82EE8);
  }

  return result;
}

unint64_t sub_24A9FA5FC()
{
  result = qword_27EF82EF0;
  if (!qword_27EF82EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82EF0);
  }

  return result;
}

uint64_t sub_24A9FA664(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A9FE960();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A9FA724(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A9FE960();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A9FA7C8(uint64_t a1)
{
  result = sub_24A9FE960();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of CallsReminder.add(reminder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24A9CB4BC;

  return v9(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for EventKitReminderError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EventKitReminderError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A9FAB18()
{
  result = qword_27EF82F08;
  if (!qword_27EF82F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82F08);
  }

  return result;
}

unint64_t sub_24A9FAB84()
{
  result = qword_27EF82F18;
  if (!qword_27EF82F18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF82F18);
  }

  return result;
}

id WrappedAlertIdentifier.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_24A9DAA40(a1, v3 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_24A9DAAA4(a1);
  return v4;
}

uint64_t AlertIdentifier.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_24A9FEA40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlertIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A9DAA40(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v14 = 0x28656369746F6E2ELL;
    v15 = 0xE800000000000000;
    sub_24A9FD124(&qword_27EF82940, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_24A9FF150();
    MEMORY[0x24C222550](v9);

    MEMORY[0x24C222550](41, 0xE100000000000000);
    v10 = v14;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = *v8;
    v12 = v8[1];
    v14 = 0x286C6C61632ELL;
    v15 = 0xE600000000000000;
    MEMORY[0x24C222550](v11, v12);

    MEMORY[0x24C222550](41, 0xE100000000000000);
    return v14;
  }

  return v10;
}

uint64_t sub_24A9FAEB0(uint64_t a1)
{
  v2 = sub_24A9FD16C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9FAEEC(uint64_t a1)
{
  v2 = sub_24A9FD16C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9FAF28()
{
  if (*v0)
  {
    return 0x656369746F6ELL;
  }

  else
  {
    return 1819042147;
  }
}

uint64_t sub_24A9FAF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1819042147 && a2 == 0xE400000000000000;
  if (v5 || (sub_24A9FF170() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656369746F6ELL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A9FF170();

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

uint64_t sub_24A9FB030(uint64_t a1)
{
  v2 = sub_24A9FD07C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9FB06C(uint64_t a1)
{
  v2 = sub_24A9FD07C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9FB0A8()
{
  sub_24A9FF1E0();
  MEMORY[0x24C222A90](0);
  return sub_24A9FF210();
}

uint64_t sub_24A9FB0EC(uint64_t a1)
{
  sub_24A9FF1E0();
  MEMORY[0x24C222A90](0);
  return sub_24A9FF210();
}

uint64_t sub_24A9FB12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A9FF170();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A9FB1AC(uint64_t a1)
{
  v2 = sub_24A9FD0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9FB1E8(uint64_t a1)
{
  v2 = sub_24A9FD0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlertIdentifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F30, &qword_24AA02780);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v23 - v3;
  v4 = sub_24A9FEA40();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F38, &qword_24AA02788);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for AlertIdentifier(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F40, &qword_24AA02790);
  v12 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A9FD07C();
  sub_24A9FF230();
  sub_24A9DAA40(v30, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v26;
    v16 = v24;
    v17 = v11;
    v18 = v27;
    (*(v26 + 32))(v24, v17, v27);
    v33 = 1;
    sub_24A9FD0D0();
    v19 = v25;
    v20 = v31;
    sub_24A9FF120();
    sub_24A9FD124(&qword_27EF82F58, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v21 = v29;
    sub_24A9FF140();
    (*(v28 + 8))(v19, v21);
    (*(v15 + 8))(v16, v18);
  }

  else
  {
    v32 = 0;
    sub_24A9FD16C();
    v20 = v31;
    sub_24A9FF120();
    sub_24A9FF130();

    (*(v23 + 8))(v8, v6);
  }

  return (*(v12 + 8))(v14, v20);
}

uint64_t AlertIdentifier.hash(into:)(uint64_t a1)
{
  v2 = sub_24A9FEA40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlertIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A9DAA40(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C222A90](1);
    sub_24A9FD124(&unk_27EF82950, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24A9FEBF0();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x24C222A90](0);
    sub_24A9FECA0();
  }
}

uint64_t AlertIdentifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24A9FEA40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlertIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A9FF1E0();
  sub_24A9DAA40(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C222A90](1);
    sub_24A9FD124(&unk_27EF82950, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24A9FEBF0();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x24C222A90](0);
    sub_24A9FECA0();
  }

  return sub_24A9FF210();
}

uint64_t AlertIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F70, &qword_24AA02798);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x28223BE20](v3);
  v54 = &v44 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F78, &qword_24AA027A0);
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F80, &qword_24AA027A8);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = type metadata accessor for AlertIdentifier(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v44 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24A9FD07C();
  v20 = v56;
  sub_24A9FF220();
  if (!v20)
  {
    v45 = v16;
    v46 = v18;
    v56 = v13;
    v21 = v52;
    v22 = v53;
    v23 = v54;
    v47 = v10;
    v24 = v9;
    v25 = sub_24A9FF110();
    v26 = v25;
    if (*(v25 + 16) == 1)
    {
      if (*(v25 + 32))
      {
        v59 = 1;
        sub_24A9FD0D0();
        v27 = v23;
        sub_24A9FF0D0();
        v28 = v55;
        sub_24A9FEA40();
        v53 = v26;
        sub_24A9FD124(&qword_27EF82F90, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
        v34 = v56;
        v35 = v50;
        sub_24A9FF100();
        (*(v51 + 8))(v27, v35);
        (*(v28 + 8))(v24, v7);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v36 = v34;
      }

      else
      {
        v58 = 0;
        sub_24A9FD16C();
        v32 = v21;
        sub_24A9FF0D0();
        v33 = v55;
        v56 = v9;
        v37 = v22;
        v39 = sub_24A9FF0F0();
        v41 = v40;
        (*(v49 + 8))(v32, v37);
        (*(v33 + 8))(v56, v7);
        swift_unknownObjectRelease();
        v42 = v45;
        *v45 = v39;
        v42[1] = v41;
        swift_storeEnumTagMultiPayload();
        v36 = v42;
      }

      v43 = v46;
      sub_24A9DAB00(v36, v46);
      sub_24A9DAB00(v43, v48);
    }

    else
    {
      v29 = sub_24A9FF000();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F88, &unk_24AA027B0);
      *v31 = v47;
      sub_24A9FF0E0();
      sub_24A9FEFF0();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v55 + 8))(v9, v7);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_24A9FC09C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_24A9FEA40();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A9FF1E0();
  sub_24A9DAA40(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x24C222A90](1);
    sub_24A9FD124(&unk_27EF82950, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24A9FEBF0();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    MEMORY[0x24C222A90](0);
    sub_24A9FECA0();
  }

  return sub_24A9FF210();
}

id WrappedAlertIdentifier.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_24A9DAA40(a1, v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_24A9DAAA4(a1);
  return v4;
}

uint64_t static WrappedAlertIdentifier.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27EF82F20 = a1;
  return result;
}

Swift::Void __swiftcall WrappedAlertIdentifier.encode(with:)(NSCoder with)
{
  sub_24A9FE8E0();
  swift_allocObject();
  sub_24A9FE8D0();
  type metadata accessor for AlertIdentifier(0);
  sub_24A9FD124(&qword_27EF82F98, type metadata accessor for AlertIdentifier, &protocol conformance descriptor for AlertIdentifier);
  v2 = sub_24A9FE8C0();
  v4 = v3;

  v7[0] = v2;
  v7[1] = v4;
  v5 = sub_24A9FF160();
  sub_24A9CE38C(v7);
  v6 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

id WrappedAlertIdentifier.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF82FA0, &qword_24AA01290);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for AlertIdentifier(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF826C0, &unk_24AA006A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24AA00690;
  *(v11 + 32) = sub_24A9FD1C0();
  sub_24A9FEE40();

  if (v25)
  {
    if (swift_dynamicCast())
    {
      v20 = ObjectType;
      v12 = v22;
      v13 = v23;
      sub_24A9FE8B0();
      swift_allocObject();
      sub_24A9FE8A0();
      sub_24A9FD124(&qword_27EF82FC0, type metadata accessor for AlertIdentifier, &protocol conformance descriptor for AlertIdentifier);
      sub_24A9FE890();
      sub_24A9CE4C0(v12, v13);

      (*(v8 + 56))(v6, 0, 1, v7);
      sub_24A9DAB00(v6, v10);
      sub_24A9DAB00(v10, v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value);
      v21.receiver = v1;
      v21.super_class = v20;
      v18 = objc_msgSendSuper2(&v21, sel_init);

      return v18;
    }
  }

  else
  {
    sub_24A9C994C(v24, &qword_27EF826D0, "*4");
  }

  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v14 = sub_24A9FEA90();
  __swift_project_value_buffer(v14, qword_27EF84B68);
  v15 = sub_24A9FEA70();
  v16 = sub_24A9FED90();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24A9BF000, v15, v16, "Failed to decode alert identifier", v17, 2u);
    MEMORY[0x24C223120](v17, -1, -1);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t WrappedAlertIdentifier.description.getter()
{
  v1 = type metadata accessor for AlertIdentifier(0);
  MEMORY[0x28223BE20](v1);
  sub_24A9DAA40(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_24A9FEC70();
}

id WrappedAlertIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WrappedAlertIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s24FaceTimeNotificationCore15AlertIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A9FEA40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlertIdentifier(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v26 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A88, &qword_24AA01560);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - v16;
  v18 = (&v26 + *(v15 + 56) - v16);
  sub_24A9DAA40(a1, &v26 - v16);
  sub_24A9DAA40(a2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24A9DAA40(v17, v13);
    v22 = *v13;
    v21 = v13[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v22 == *v18 && v21 == v18[1])
      {
      }

      else
      {
        v24 = sub_24A9FF170();

        if ((v24 & 1) == 0)
        {
          sub_24A9DAAA4(v17);
          goto LABEL_8;
        }
      }

      sub_24A9DAAA4(v17);
      v19 = 1;
      return v19 & 1;
    }

LABEL_7:
    sub_24A9C994C(v17, &qword_27EF82A88, &qword_24AA01560);
LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  sub_24A9DAA40(v17, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, v18, v4);
  v19 = sub_24A9FEA10();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v11, v4);
  sub_24A9DAAA4(v17);
  return v19 & 1;
}

unint64_t sub_24A9FD07C()
{
  result = qword_27EF82F48;
  if (!qword_27EF82F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82F48);
  }

  return result;
}

unint64_t sub_24A9FD0D0()
{
  result = qword_27EF82F50;
  if (!qword_27EF82F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82F50);
  }

  return result;
}

uint64_t sub_24A9FD124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A9FD16C()
{
  result = qword_27EF82F60;
  if (!qword_27EF82F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82F60);
  }

  return result;
}

unint64_t sub_24A9FD1C0()
{
  result = qword_27EF82FB0;
  if (!qword_27EF82FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF82FB0);
  }

  return result;
}

uint64_t sub_24A9FD254@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27EF82F20;
  return result;
}

uint64_t sub_24A9FD2A0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27EF82F20 = v1;
  return result;
}

uint64_t sub_24A9FD338(uint64_t a1)
{
  result = sub_24A9FEA40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24A9FD3CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A9FD404(uint64_t a1)
{
  result = type metadata accessor for AlertIdentifier(319);
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

uint64_t sub_24A9FD500(unsigned int *a1, int a2)
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

_WORD *sub_24A9FD550(_WORD *result, int a2, int a3)
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

unint64_t sub_24A9FD5E0()
{
  result = qword_27EF82FF0;
  if (!qword_27EF82FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82FF0);
  }

  return result;
}

unint64_t sub_24A9FD638()
{
  result = qword_27EF82FF8;
  if (!qword_27EF82FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82FF8);
  }

  return result;
}

unint64_t sub_24A9FD690()
{
  result = qword_27EF83000;
  if (!qword_27EF83000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83000);
  }

  return result;
}

unint64_t sub_24A9FD6E8()
{
  result = qword_27EF83008;
  if (!qword_27EF83008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83008);
  }

  return result;
}

unint64_t sub_24A9FD740()
{
  result = qword_27EF83010;
  if (!qword_27EF83010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83010);
  }

  return result;
}

unint64_t sub_24A9FD798()
{
  result = qword_27EF83018;
  if (!qword_27EF83018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83018);
  }

  return result;
}

unint64_t sub_24A9FD7F0()
{
  result = qword_27EF83020;
  if (!qword_27EF83020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83020);
  }

  return result;
}

unint64_t sub_24A9FD848()
{
  result = qword_27EF83028;
  if (!qword_27EF83028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83028);
  }

  return result;
}

unint64_t sub_24A9FD8A0()
{
  result = qword_27EF83030;
  if (!qword_27EF83030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF83030);
  }

  return result;
}

uint64_t sub_24A9FD910(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void XPCConnectionHolder.setConnection(_:exportedObject:)(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    __break(1u);
  }

  else
  {
    swift_unknownObjectWeakAssign();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    [a1 setExportedObject_];
    swift_unknownObjectRelease();
    [a1 setExportedInterface_];
    [a1 setRemoteObjectInterface_];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = sub_24A9FE1BC;
    v19 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_24A9FD910;
    v17 = &block_descriptor_3;
    v7 = _Block_copy(&aBlock);

    [a1 setInterruptionHandler_];
    _Block_release(v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = sub_24A9FE2F0;
    v19 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_24A9FD910;
    v17 = &block_descriptor_4;
    v9 = _Block_copy(&aBlock);

    [a1 setInvalidationHandler_];
    _Block_release(v9);
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v10 = sub_24A9FEA90();
    __swift_project_value_buffer(v10, qword_27EF84B68);
    v11 = sub_24A9FEA70();
    v12 = sub_24A9FEDA0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24A9BF000, v11, v12, "Activate XPC connection.", v13, 2u);
      MEMORY[0x24C223120](v13, -1, -1);
    }

    [a1 activate];
  }
}

uint64_t sub_24A9FDC50()
{
  MEMORY[0x24C2231C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id XPCConnectionHolder.__allocating_init(remote:exported:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_remoteInterface] = a1;
  *&v5[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_exportedInterface] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_24A9FDD60@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A9FE85C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A9CF0A8(v4);
}

uint64_t sub_24A9FDE00(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A9FE834;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A9CF0A8(v3);
  return sub_24A9CF118(v8, v9);
}

uint64_t XPCConnectionHolder.onInvalidate.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate);
  swift_beginAccess();
  v2 = *v1;
  sub_24A9CF0A8(*v1);
  return v2;
}

uint64_t XPCConnectionHolder.onInvalidate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24A9CF118(v6, v7);
}

id XPCConnectionHolder.init(remote:exported:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_remoteInterface] = a1;
  *&v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_exportedInterface] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_24A9FE074(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v3 = sub_24A9FEA90();
    __swift_project_value_buffer(v3, qword_27EF84B68);
    v4 = sub_24A9FEA70();
    v5 = sub_24A9FEDA0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24A9BF000, v4, v5, "Connection interrupted.", v6, 2u);
      MEMORY[0x24C223120](v6, -1, -1);
    }

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      [v7 invalidate];
    }
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24A9FE1DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v3 = sub_24A9FEA90();
    __swift_project_value_buffer(v3, qword_27EF84B68);
    v4 = sub_24A9FEA70();
    v5 = sub_24A9FEDA0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24A9BF000, v4, v5, "Connection invalidated.", v6, 2u);
      MEMORY[0x24C223120](v6, -1, -1);
    }

    XPCConnectionHolder.destroyConnection()();
  }
}

Swift::Void __swiftcall XPCConnectionHolder.destroyConnection()()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v4 = sub_24A9FEA90();
    __swift_project_value_buffer(v4, qword_27EF84B68);
    v5 = sub_24A9FEA70();
    v6 = sub_24A9FEDA0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24A9BF000, v5, v6, "Destroy xpc connection.", v7, 2u);
      MEMORY[0x24C223120](v7, -1, -1);
    }

    [v3 setExportedObject_];
    [v3 setInvalidationHandler_];
    [v3 setInterruptionHandler_];
    [v3 invalidate];
    v8 = v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate;
    swift_beginAccess();
    v9 = *v8;
    if (*v8)
    {
      v10 = *(v8 + 8);

      v9(v11);
      sub_24A9CF118(v9, v10);
    }

    swift_unknownObjectWeakAssign();
  }
}

id XPCConnectionHolder.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v3 = sub_24A9FEA90();
  __swift_project_value_buffer(v3, qword_27EF84B68);
  v4 = sub_24A9FEA70();
  v5 = sub_24A9FEDA0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24A9BF000, v4, v5, "Connection holder destroyed.", v6, 2u);
    MEMORY[0x24C223120](v6, -1, -1);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id XPCConnectionHolder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24A9FE6EC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_24A9FE7FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}