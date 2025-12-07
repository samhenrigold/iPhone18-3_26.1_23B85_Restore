uint64_t sub_25460E848()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t HoverTextError.description.getter(uint64_t a1, uint64_t a2)
{
  sub_2546129E8();

  MEMORY[0x259C12E00](a1, a2);
  return 0xD000000000000010;
}

unint64_t sub_25460E974()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2546129E8();

  MEMORY[0x259C12E00](v1, v2);
  return 0xD000000000000010;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25460E9FC(uint64_t a1, int a2)
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

uint64_t sub_25460EA44(uint64_t result, int a2, int a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25460EB2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_254612908();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2546128F8();
}

uint64_t sub_25460EBC8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_254612908();

  return __swift_project_value_buffer(v3, a2);
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

uint64_t sub_25460EC80()
{
  MEMORY[0x259C12E00](0x6F72724520435049, 0xEB00000000203A72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60AE38, &qword_254613200);
  sub_254612A08();
  return 0;
}

uint64_t sub_25460ED1C(uint64_t result, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  if (a3)
  {
    if (a2)
    {
      sub_25460F050(a3, a4);
      v7 = a2;
      a3(a2, 1);

      return sub_25460F060(a3, a4);
    }

    else
    {
      v8 = result;
      if (result)
      {

        v9 = v8;
      }

      else
      {
        sub_25460F050(a3, a4);
        v9 = sub_25460EF34(MEMORY[0x277D84F90]);
      }

      a3(v9, 0);
      sub_25460F060(a3, a4);
    }
  }

  return result;
}

unint64_t sub_25460EE28(uint64_t a1)
{
  v2 = sub_2546129A8();

  return sub_25460EE6C(a1, v2);
}

unint64_t sub_25460EE6C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25460F138(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C12E60](v9, a1);
      sub_25460F194(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25460EF34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60AE28, &qword_254613110);
    v3 = sub_254612A18();
    v4 = a1 + 32;

    while (1)
    {
      sub_25460F0B8(v4, v13);
      result = sub_25460EE28(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25460F128(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_25460F050(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25460F060(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
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

uint64_t sub_25460F0B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60AEF0, &qword_254613118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_25460F128(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25460F1F4(uint64_t *a1, int a2)
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

uint64_t sub_25460F23C(uint64_t result, int a2, int a3)
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

unint64_t sub_25460F298()
{
  result = qword_27F60AE30;
  if (!qword_27F60AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60AE30);
  }

  return result;
}

uint64_t sub_25460F2EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_254612928();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_25460F3BC()
{
  v1 = *v0;
  sub_254612A88();
  MEMORY[0x259C12F40](v1 + 1);
  return sub_254612AA8();
}

uint64_t sub_25460F434(uint64_t a1)
{
  v2 = *v1;
  sub_254612A88();
  MEMORY[0x259C12F40](v2 + 1);
  return sub_254612AA8();
}

uint64_t sub_25460F478@<X0>(Swift::Int *a1@<X0>, HoverTextServices::HoverTextAXUIServiceMessageID_optional *a2@<X8>)
{
  result = _s17HoverTextServices0aB20AXUIServiceMessageIDO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

id sub_25460F518()
{
  v1 = OBJC_IVAR____TtC17HoverTextServices27HoverTextServiceAXUIService__client;
  v2 = *&v0[OBJC_IVAR____TtC17HoverTextServices27HoverTextServiceAXUIService__client];
  if (v2)
  {
    [v2 setDelegate_];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for HoverTextServiceAXUIService();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_25460F5C0()
{
  v1 = OBJC_IVAR____TtC17HoverTextServices27HoverTextServiceAXUIService__client;
  v2 = *(v0 + OBJC_IVAR____TtC17HoverTextServices27HoverTextServiceAXUIService__client);
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = v0;
  v4 = [objc_opt_self() processInfo];
  [v4 processIdentifier];

  v5 = sub_254612A28();
  MEMORY[0x259C12E00](v5);

  v6 = objc_allocWithZone(MEMORY[0x277CE7740]);
  v7 = sub_254612938();

  v8 = sub_254612938();
  v9 = [v6 initWithIdentifier:v7 serviceBundleName:v8];

  v10 = *(v3 + v1);
  *(v3 + v1) = v9;
  v11 = v9;

  if (v11)
  {
    [v11 setDelegate_];
  }

  v12 = *(v3 + v1);
  if (v12)
  {
    v12;
    v2 = 0;
LABEL_6:
    v13 = v2;
    return;
  }

  __break(1u);
}

void sub_25460F754()
{
  v1 = v0;
  v2 = sub_254612908();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28133E190 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, HTLog);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2546128E8();
  v8 = sub_254612998();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25460D000, v7, v8, "Client requesting HoverText start", v9, 2u);
    MEMORY[0x259C13270](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_25460F5C0();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_254611E74;
  *(v13 + 24) = v12;
  aBlock[4] = sub_254611F00;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25460F2EC;
  aBlock[3] = &block_descriptor_56;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  [v11 sendAsynchronousMessage:0 withIdentifier:1 targetAccessQueue:0 completion:v14];
  _Block_release(v14);
}

void sub_25460FA0C()
{
  v1 = v0;
  v2 = sub_254612908();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock[-1] - v7;
  if (*(v1 + OBJC_IVAR____TtC17HoverTextServices27HoverTextServiceAXUIService_hoverTextEnabled))
  {
    if (qword_28133E190 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v2, HTLog);
    swift_beginAccess();
    (*(v3 + 16))(v6, v9, v2);
    v10 = sub_2546128E8();
    v11 = sub_254612998();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_25460D000, v10, v11, "Client requesting HoverText stop", v12, 2u);
      MEMORY[0x259C13270](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_25460F5C0();
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_254611E38;
    *(v16 + 24) = v15;
    aBlock[4] = sub_254611F00;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25460F2EC;
    aBlock[3] = &block_descriptor_46;
    v17 = _Block_copy(aBlock);
    v18 = v1;

    [v14 sendAsynchronousMessage:0 withIdentifier:2 targetAccessQueue:0 completion:v17];
    _Block_release(v17);
  }

  else
  {
    if (qword_28133E190 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v2, HTLog);
    swift_beginAccess();
    (*(v3 + 16))(v8, v19, v2);
    v20 = sub_2546128E8();
    v21 = sub_254612978();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_25460D000, v20, v21, "HoverText was never started, no need to stop", v22, 2u);
      MEMORY[0x259C13270](v22, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_25460FDE8(void *a1, char a2, uint64_t a3, const char *a4, const char *a5, void *a6, char a7)
{
  v35 = a5;
  v13 = sub_254612908();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  if (a2)
  {
    v20 = a1;
    if (qword_28133E190 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v13, HTLog);
    swift_beginAccess();
    (*(v14 + 16))(v17, v21, v13);
    v22 = a1;
    v23 = sub_2546128E8();
    v24 = sub_254612988();
    sub_254611D90(a1, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      sub_25460F298();
      swift_allocError();
      *v27 = a1;
      v28 = a1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v29;
      *v26 = v29;
      _os_log_impl(&dword_25460D000, v23, v24, a4, v25, 0xCu);
      sub_254611DD8(v26, &qword_27F60AEE0, &qword_254613348);
      MEMORY[0x259C13270](v26, -1, -1);
      MEMORY[0x259C13270](v25, -1, -1);

      sub_254611D90(a1, 1);
    }

    else
    {
      sub_254611D90(a1, 1);
    }

    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    if (qword_28133E190 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v13, HTLog);
    swift_beginAccess();
    (*(v14 + 16))(v19, v30, v13);
    v31 = sub_2546128E8();
    v32 = sub_254612998();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_25460D000, v31, v32, v35, v33, 2u);
      MEMORY[0x259C13270](v33, -1, -1);
    }

    result = (*(v14 + 8))(v19, v13);
    *(a3 + *a6) = a7;
  }

  return result;
}

void sub_254610194(uint64_t a1, unint64_t a2)
{
  v4 = sub_254612908();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28133E190 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, HTLog);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2546128E8();
  v10 = sub_254612998();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_254611454(a1, a2, &aBlock);
    _os_log_impl(&dword_25460D000, v9, v10, "Client sending alert to HoverText: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C13270](v12, -1, -1);
    MEMORY[0x259C13270](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_25460F5C0();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60AEE8, &unk_254613350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254613220;
  aBlock = 1954047348;
  v22 = 0xE400000000000000;
  v16 = MEMORY[0x277D837D0];
  sub_2546129C8();
  *(inited + 96) = v16;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  sub_25460EF34(inited);
  swift_setDeallocating();
  sub_254611DD8(inited + 32, &unk_27F60AEF0, &qword_254613118);
  v17 = sub_254612918();
  v18 = swift_allocObject();
  *(v18 + 16) = nullsub_1;
  *(v18 + 24) = 0;
  v25 = sub_254611F00;
  v26 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_25460F2EC;
  v24 = &block_descriptor_36;
  v19 = _Block_copy(&aBlock);

  [v14 sendAsynchronousMessage:v17 withIdentifier:3 targetAccessQueue:0 completion:v19];

  _Block_release(v19);
}

void sub_254610554()
{
  v1 = v0;
  v2 = sub_254612908();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28133E190 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, HTLog);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2546128E8();
  v8 = sub_254612998();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25460D000, v7, v8, "Client requesting HoverText Typing start", v9, 2u);
    MEMORY[0x259C13270](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_25460F5C0();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_254611D9C;
  *(v13 + 24) = v12;
  aBlock[4] = sub_254611F00;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25460F2EC;
  aBlock[3] = &block_descriptor_29;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  [v11 sendAsynchronousMessage:0 withIdentifier:4 targetAccessQueue:0 completion:v14];
  _Block_release(v14);
}

void sub_25461080C()
{
  v1 = v0;
  v2 = sub_254612908();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock[-1] - v7;
  if (*(v1 + OBJC_IVAR____TtC17HoverTextServices27HoverTextServiceAXUIService_hoverTextTypingEnabled))
  {
    if (qword_28133E190 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v2, HTLog);
    swift_beginAccess();
    (*(v3 + 16))(v6, v9, v2);
    v10 = sub_2546128E8();
    v11 = sub_254612998();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_25460D000, v10, v11, "Client requesting HoverText Typing stop", v12, 2u);
      MEMORY[0x259C13270](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_25460F5C0();
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_254611D34;
    *(v16 + 24) = v15;
    aBlock[4] = sub_254611D70;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25460F2EC;
    aBlock[3] = &block_descriptor;
    v17 = _Block_copy(aBlock);
    v18 = v1;

    [v14 sendAsynchronousMessage:0 withIdentifier:5 targetAccessQueue:0 completion:v17];
    _Block_release(v17);
  }

  else
  {
    if (qword_28133E190 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v2, HTLog);
    swift_beginAccess();
    (*(v3 + 16))(v8, v19, v2);
    v20 = sub_2546128E8();
    v21 = sub_254612978();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_25460D000, v20, v21, "HoverText Typing was never started, no need to stop", v22, 2u);
      MEMORY[0x259C13270](v22, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }
}

void sub_254610C2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_254612908();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v40 - v12;
  MEMORY[0x28223BE20](v11);
  v16 = v40 - v15;
  v17 = *(v2 + OBJC_IVAR____TtC17HoverTextServices27HoverTextServiceAXUIService__client);
  if (a1)
  {
    if (v17)
    {
      v18 = v17 == a1;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      return;
    }
  }

  else if (v17)
  {
    return;
  }

  v41 = v14;
  if (qword_28133E190 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v4, HTLog);
  swift_beginAccess();
  v20 = *(v5 + 16);
  v43 = v5 + 16;
  v44 = v19;
  v42 = v20;
  v20(v16, v19, v4);
  v21 = sub_2546128E8();
  v22 = sub_254612988();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v5;
    v24 = v8;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_25460D000, v21, v22, "Connection to HoverText UI Service was interrupted", v25, 2u);
    v26 = v25;
    v8 = v24;
    v5 = v23;
    MEMORY[0x259C13270](v26, -1, -1);
  }

  v27 = *(v5 + 8);
  v27(v16, v4);
  v28 = objc_opt_self();
  v29 = [v28 sharedInstance];
  v30 = [v29 hoverTextEnabled];

  if (v30)
  {
    v40[5] = v8;
    v42(v13, v44, v4);
    v31 = sub_2546128E8();
    v32 = sub_254612978();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_25460D000, v31, v32, "HoverText still enabled. Will attempt to relaunch", v33, 2u);
      MEMORY[0x259C13270](v33, -1, -1);
    }

    v27(v13, v4);
    sub_25460F754();
  }

  v34 = [v28 sharedInstance];
  v35 = [v34 hoverTextTypingEnabled];

  v36 = v41;
  if (v35)
  {
    v42(v41, v44, v4);
    v37 = sub_2546128E8();
    v38 = sub_254612978();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_25460D000, v37, v38, "HoverText Typing still enabled. Will attempt to relaunch", v39, 2u);
      MEMORY[0x259C13270](v39, -1, -1);
    }

    v27(v36, v4);
    sub_254610554();
  }
}

unint64_t sub_254611454(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254611520(v11, 0, 0, 1, a1, a2);
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
    sub_254611CD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_254611520(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25461162C(a5, a6);
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
    result = sub_2546129F8();
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

void *sub_25461162C(uint64_t a1, unint64_t a2)
{
  v3 = sub_254611678(a1, a2);
  sub_2546117A8(&unk_2866791C0);
  return v3;
}

void *sub_254611678(uint64_t a1, unint64_t a2)
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

  v6 = sub_254611894(v5, 0);
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

  result = sub_2546129F8();
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
        v10 = sub_254612968();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_254611894(v10, 0);
        result = sub_2546129D8();
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

uint64_t sub_2546117A8(uint64_t result)
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

  result = sub_254611908(result, v11, 1, v3);
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

void *sub_254611894(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60AED0, &qword_254613340);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_254611908(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60AED0, &qword_254613340);
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

uint64_t _s17HoverTextServices0aB20AXUIServiceMessageIDO8rawValueACSgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

unint64_t sub_254611A24()
{
  result = qword_27F60AE40;
  if (!qword_27F60AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60AE40);
  }

  return result;
}

unint64_t sub_254611A78(uint64_t a1)
{
  result = sub_254611AA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_254611AA0()
{
  result = qword_28133E188;
  if (!qword_28133E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28133E188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoverTextAXUIServiceMessageID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverTextAXUIServiceMessageID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

uint64_t sub_254611CD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_254611D90(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_254611DD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_18Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id HoverText.getter()
{
  if (qword_28133E178 != -1)
  {
    swift_once();
  }

  v1 = static HoverTextService.sharedInstance;

  return v1;
}

uint64_t *HoverTextService.sharedInstance.unsafeMutableAddressor()
{
  if (qword_28133E178 != -1)
  {
    swift_once();
  }

  return &static HoverTextService.sharedInstance;
}

id sub_254611FC0()
{
  result = [objc_allocWithZone(type metadata accessor for HoverTextService()) init];
  static HoverTextService.sharedInstance = result;
  return result;
}

id static HoverTextService.sharedInstance.getter()
{
  if (qword_28133E178 != -1)
  {
    swift_once();
  }

  v1 = static HoverTextService.sharedInstance;

  return v1;
}

id HoverTextService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HoverTextService.startHoverText()()
{
  sub_2546121F8(v0 + OBJC_IVAR____TtC17HoverTextServices16HoverTextService_serviceImpl, v3);
  v1 = v4;
  v2 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_2546121F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HoverTextService.stopHoverText()()
{
  sub_2546121F8(v0 + OBJC_IVAR____TtC17HoverTextServices16HoverTextService_serviceImpl, v3);
  v1 = v4;
  v2 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v3);
}

Swift::Void __swiftcall HoverTextService.showAlert(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_2546121F8(v1 + OBJC_IVAR____TtC17HoverTextServices16HoverTextService_serviceImpl, v6);
  v4 = v7;
  v5 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v5 + 24))(countAndFlagsBits, object, v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v6);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HoverTextService.startHoverTextTyping()()
{
  sub_2546121F8(v0 + OBJC_IVAR____TtC17HoverTextServices16HoverTextService_serviceImpl, v3);
  v1 = v4;
  v2 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HoverTextService.stopHoverTextTyping()()
{
  sub_2546121F8(v0 + OBJC_IVAR____TtC17HoverTextServices16HoverTextService_serviceImpl, v3);
  v1 = v4;
  v2 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v2 + 40))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v3);
}