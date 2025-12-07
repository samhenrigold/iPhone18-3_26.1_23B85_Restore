unint64_t sub_2450BB5CC()
{
  result = qword_27EDF7AB8;
  if (!qword_27EDF7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7AB8);
  }

  return result;
}

unint64_t sub_2450BB624()
{
  result = qword_27EDF7AC0;
  if (!qword_27EDF7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7AC0);
  }

  return result;
}

unint64_t sub_2450BB67C()
{
  result = qword_27EDF7AC8;
  if (!qword_27EDF7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7AC8);
  }

  return result;
}

unint64_t sub_2450BB6D4()
{
  result = qword_27EDF7AD0;
  if (!qword_27EDF7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7AD0);
  }

  return result;
}

unint64_t sub_2450BB72C()
{
  result = qword_27EDF7AD8;
  if (!qword_27EDF7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7AD8);
  }

  return result;
}

unint64_t sub_2450BB784()
{
  result = qword_27EDF7AE0;
  if (!qword_27EDF7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7AE0);
  }

  return result;
}

unint64_t sub_2450BB7DC()
{
  result = qword_27EDF7AE8;
  if (!qword_27EDF7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7AE8);
  }

  return result;
}

unint64_t sub_2450BB834()
{
  result = qword_27EDF7AF0;
  if (!qword_27EDF7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7AF0);
  }

  return result;
}

unint64_t sub_2450BB88C()
{
  result = qword_27EDF7AF8;
  if (!qword_27EDF7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7AF8);
  }

  return result;
}

unint64_t sub_2450BB8E4()
{
  result = qword_27EDF7B00;
  if (!qword_27EDF7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7B00);
  }

  return result;
}

unint64_t sub_2450BB93C()
{
  result = qword_27EDF7B08;
  if (!qword_27EDF7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7B08);
  }

  return result;
}

unint64_t sub_2450BB994()
{
  result = qword_27EDF7B10;
  if (!qword_27EDF7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7B10);
  }

  return result;
}

unint64_t sub_2450BB9EC()
{
  result = qword_27EDF7B18;
  if (!qword_27EDF7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7B18);
  }

  return result;
}

unint64_t sub_2450BBA44()
{
  result = qword_27EDF7B20;
  if (!qword_27EDF7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7B20);
  }

  return result;
}

unint64_t sub_2450BBA9C()
{
  result = qword_27EDF7B28;
  if (!qword_27EDF7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7B28);
  }

  return result;
}

unint64_t sub_2450BBAF4()
{
  result = qword_27EDF7B30;
  if (!qword_27EDF7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7B30);
  }

  return result;
}

unint64_t sub_2450BBB4C()
{
  result = qword_27EDF7B38;
  if (!qword_27EDF7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7B38);
  }

  return result;
}

unint64_t sub_2450BBBA4()
{
  result = qword_27EDF7B40;
  if (!qword_27EDF7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7B40);
  }

  return result;
}

unint64_t sub_2450BBBFC()
{
  result = qword_27EDF7B48;
  if (!qword_27EDF7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7B48);
  }

  return result;
}

unint64_t sub_2450BBC54()
{
  result = qword_27EDF7B50;
  if (!qword_27EDF7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7B50);
  }

  return result;
}

uint64_t sub_2450BBCAC(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SubscriptionRegistrar();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F98];
  v4[2] = 0;
  v4[3] = v5;
  v6 = MEMORY[0x277D84F90];
  v4[4] = sub_2450C3354(MEMORY[0x277D84F90]);
  v4[5] = sub_2450C3458(v6);
  v4[6] = sub_2450C3598(v6);
  *(v2 + 16) = v4;
  type metadata accessor for SubscriptionHandlers();
  swift_allocObject();

  v8 = sub_2450E0EB0(v7, a1);

  *(v2 + 24) = v8;
  return v2;
}

void sub_2450BBDB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xF0))(a2);
  }
}

uint64_t sub_2450BBE44(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2450BBE88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xF8))(a2);
  }
}

void sub_2450BBF98(int a1, const char *a2, ...)
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  oslog = sub_2450E5628();
  v5 = sub_2450E59A8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_24508F000, oslog, v5, a2, v6, 8u);
    MEMORY[0x245D63500](v6, -1, -1);
  }
}

id sub_2450BC0C8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NSXPCService();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2450BC190(void *a1)
{
  v3 = [a1 processIdentifier];
  [a1 setExportedInterface_];
  sub_24509FAE0(v1 + OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_interfaceDelegate, &v12);
  __swift_project_boxed_opaque_existential_1(&v12, v15);
  v4 = sub_2450E5E58();
  __swift_destroy_boxed_opaque_existential_0Tm(&v12);
  [a1 setExportedObject_];
  swift_unknownObjectRelease();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v16 = sub_2450BC494;
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_2450BBE44;
  v15 = &block_descriptor;
  v7 = _Block_copy(&v12);

  [a1 setInterruptionHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  v16 = sub_2450BC4B8;
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_2450BBE44;
  v15 = &block_descriptor_26;
  v10 = _Block_copy(&v12);

  [a1 setInvalidationHandler_];
  _Block_release(v10);
  [a1 activate];
  (*((*MEMORY[0x277D85000] & *v1) + 0xE8))(v3);
  return 1;
}

uint64_t sub_2450BC424()
{
  MEMORY[0x245D635B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2450BC45C()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2450BC4D0(uint64_t a1)
{
  if (*(a1 + 16) == 1751741300)
  {
    v1 = sub_2450BCB28(&unk_2857FEF18);
    swift_arrayDestroy();
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  sub_2450CD538(v1);

  v2 = sub_2450CD3F0();
  v6 = sub_2450E5E48();
  v7 = v3;

  MEMORY[0x245D624D0](0x6741657571696E75, 0xEF65746167657267);

  v4 = sub_2450CA700(v6, v7, v2);

  sub_2450CCC28(v4);
}

uint64_t sub_2450BC6EC(uint64_t a1)
{
  if (*(a1 + 16) == 1751741300)
  {
    v1 = sub_2450BCB28(&unk_2857FEE70);
    swift_arrayDestroy();
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  sub_2450CD538(v1);
  v20[4] = sub_2450CD3F0();

  v8 = sub_2450ABB84(v7);

  v9 = 1 << *(v1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v1 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_17:
    v16 = (*(v1 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v11)))));
    v17 = v16[1];
    v11 &= v11 - 1;
    v21[0] = *v16;
    v21[1] = v17;
    MEMORY[0x28223BE20](v13);
    v20[2] = v21;

    v18 = sub_2450BC9CC(sub_2450BCAD0, v20, v8);

    if ((v18 & 1) == 0)
    {
      v19 = 0;
LABEL_20:

      return v19;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      v19 = 1;
      goto LABEL_20;
    }

    v11 = *(v1 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_17;
    }
  }

  __break(1u);
  swift_once();
  v2 = sub_2450E5638();
  __swift_project_value_buffer(v2, qword_27EE0AEC8);
  v3 = sub_2450E5628();
  v4 = sub_2450E59A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24508F000, v3, v4, "could not setHiddenDeviceUIDS", v5, 2u);
    MEMORY[0x245D63500](v5, -1, -1);
  }

  return 0;
}

uint64_t sub_2450BC9CC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2450BCA78(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2450E5E68() & 1;
  }
}

uint64_t sub_2450BCAD0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2450E5E68() & 1;
  }
}

uint64_t sub_2450BCB28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C50, &unk_2450EDC90);
    v3 = sub_2450E5B38();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2450E5EF8();

      sub_2450E5838();
      result = sub_2450E5F38();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2450E5E68();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2450BCC90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D80, &unk_2450EDE10);
    v2 = sub_2450E5C28();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_2450C5B70(*(a1 + 48) + 40 * v13, v33);
    v35 = *(*(a1 + 56) + 8 * v13);
    v21 = v33[0];
    v23 = v33[1];
    v25 = v34;
    *&v32[0] = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF79D0, qword_2450ED170);
    swift_dynamicCast();
    v28 = v21;
    v29 = v23;
    v30 = v25;
    sub_2450C58FC(&v27, v31);
    v22 = v28;
    v24 = v29;
    v26 = v30;
    sub_2450C58FC(v31, v32);
    result = sub_2450E5AE8();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v24;
    *(v11 + 32) = v26;
    result = sub_2450C58FC(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_2450BCF50(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  *&v30 = &type metadata for GetPropertyResponseHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78B0, &unk_2450ED000);
  v9 = sub_2450E5818();
  v11 = v10;
  v12 = sub_2450D2F34(0, 1, 1, MEMORY[0x277D84F90]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_2450D2F34((v13 > 1), v14 + 1, 1, v12);
  }

  v31 = &type metadata for GetPropertyResponseHeader;
  v32 = sub_2450B72FC();
  *&v30 = v9;
  *(&v30 + 1) = v11;
  v12[2] = v14 + 1;
  sub_24509551C(&v30, &v12[5 * v14 + 4]);
  *&v30 = &type metadata for StatusDescription;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78C0, &qword_2450F1870);
  v15 = sub_2450E5818();
  v17 = v16;
  v19 = v12[2];
  v18 = v12[3];
  if (v19 >= v18 >> 1)
  {
    v12 = sub_2450D2F34((v18 > 1), v19 + 1, 1, v12);
  }

  v31 = &type metadata for StatusDescription;
  v32 = sub_2450B7350();
  v20 = swift_allocObject();
  *&v30 = v20;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3;
  v12[2] = v19 + 1;
  sub_24509551C(&v30, &v12[5 * v19 + 4]);
  if (sub_2450E5788() == a1)
  {
    *&v30 = &type metadata for DataPayload;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7938, &unk_2450ED150);
    v21 = sub_2450E5818();
    v23 = v22;
    sub_2450C5A70(a4, a5);
    v25 = v12[2];
    v24 = v12[3];
    if (v25 >= v24 >> 1)
    {
      v12 = sub_2450D2F34((v24 > 1), v25 + 1, 1, v12);
    }

    v31 = &type metadata for DataPayload;
    v32 = sub_2450B8C0C();
    v26 = swift_allocObject();
    *&v30 = v26;
    v26[2] = v21;
    v26[3] = v23;
    v26[4] = a4;
    v26[5] = a5;
    v12[2] = v25 + 1;
    sub_24509551C(&v30, &v12[5 * v25 + 4]);
  }

  v27 = sub_2450B68D0(v12);

  return v27;
}

unint64_t sub_2450BD1E4(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4)
{
  *&v27 = &type metadata for GetPropertyResponseHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78B0, &unk_2450ED000);
  v8 = sub_2450E5818();
  v10 = v9;
  v11 = sub_2450D2F34(0, 1, 1, MEMORY[0x277D84F90]);
  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_2450D2F34((v12 > 1), v13 + 1, 1, v11);
  }

  v29 = &type metadata for GetPropertyResponseHeader;
  v30 = sub_2450B72FC();
  *&v27 = v8;
  *(&v27 + 1) = v10;
  v11[2] = v13 + 1;
  sub_24509551C(&v27, &v11[5 * v13 + 4]);
  *&v27 = &type metadata for StatusDescription;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78C0, &qword_2450F1870);
  v14 = sub_2450E5818();
  v16 = v15;
  v18 = v11[2];
  v17 = v11[3];
  if (v18 >= v17 >> 1)
  {
    v11 = sub_2450D2F34((v17 > 1), v18 + 1, 1, v11);
  }

  v29 = &type metadata for StatusDescription;
  v30 = sub_2450B7350();
  v19 = swift_allocObject();
  *&v27 = v19;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 48) = a3;
  v11[2] = v18 + 1;
  sub_24509551C(&v27, &v11[5 * v18 + 4]);
  if (sub_2450E5788() == a1)
  {
    *&v27 = &type metadata for BoolPayload;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7940, &qword_2450EF930);
    v20 = sub_2450E5818();
    v22 = v21;
    v24 = v11[2];
    v23 = v11[3];
    if (v24 >= v23 >> 1)
    {
      v11 = sub_2450D2F34((v23 > 1), v24 + 1, 1, v11);
    }

    v29 = &type metadata for BoolPayload;
    v30 = sub_2450B8B64();
    *&v27 = v20;
    *(&v27 + 1) = v22;
    v28 = a4 & 1;
    v11[2] = v24 + 1;
    sub_24509551C(&v27, &v11[5 * v24 + 4]);
  }

  v25 = sub_2450B68D0(v11);

  return v25;
}

uint64_t sub_2450BD450@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *&v16[0] = 0x65756C6176;
  *(&v16[0] + 1) = 0xE500000000000000;
  sub_2450E5B08();
  if (*(a1 + 16) && (v4 = sub_2450C81B4(&v17), (v5 & 1) != 0))
  {
    sub_24509FAE0(*(a1 + 56) + 32 * v4, v16);
    sub_2450B883C(&v17);
    sub_24509F608(v16, &qword_27EDF7D48, &unk_2450EDDC0);
    *&v16[0] = 0x65756C6176;
    *(&v16[0] + 1) = 0xE500000000000000;
    result = sub_2450E5B08();
    if (*(a1 + 16))
    {
      result = sub_2450C81B4(&v17);
      if (v7)
      {
        sub_24509FAE0(*(a1 + 56) + 32 * result, v15);
        sub_2450B883C(&v17);
        sub_2450C58FC(v15, v16);
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7938, &unk_2450ED150);
        result = sub_2450E5818();
        *a2 = result;
        a2[1] = v8;
        a2[2] = v13;
        a2[3] = v14;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_2450B883C(&v17);
    memset(v16, 0, sizeof(v16));
    sub_24509F608(v16, &qword_27EDF7D48, &unk_2450EDDC0);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_2450E5B58();

    v17 = 0xD00000000000001FLL;
    v18 = 0x80000002450F3790;
    *&v16[0] = &type metadata for DataPayload;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7938, &unk_2450ED150);
    v9 = sub_2450E5818();
    MEMORY[0x245D624D0](v9);

    v10 = v17;
    v11 = v18;
    sub_2450B8890();
    swift_allocError();
    *v12 = v10;
    *(v12 + 8) = v11;
    *(v12 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2450BD698()
{
  sub_2450E5B58();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7928, &qword_2450ED148);
  v0 = sub_2450E5818();
  MEMORY[0x245D624D0](v0);

  sub_2450B8890();
  swift_allocError();
  *v1 = 0xD00000000000001FLL;
  *(v1 + 8) = 0x80000002450F3790;
  *(v1 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_2450BD778(uint64_t a1)
{
  v34[4] = *MEMORY[0x277D85DE8];
  v3 = sub_2450E5808();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24509FAE0(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7908, &qword_2450ED130);
  v7 = MEMORY[0x277D84F70];
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v16 = *&v33[0];
      goto LABEL_11;
    }

    if (swift_dynamicCast())
    {
      *&v33[0] = v30[0];
      v18 = v33;
      v19 = v33;
LABEL_9:
      v16 = sub_2450BDD18(v19, (v18 + 8));
      goto LABEL_11;
    }

    if (swift_dynamicCast())
    {
      v21 = v33[0];
      sub_2450E57F8();
      v16 = sub_2450E57E8();
      v23 = v22;
      (*(v4 + 8))(v6, v3);
      if (v23 >> 60 != 15)
      {

        goto LABEL_11;
      }

      sub_2450B8890();
      swift_allocError();
      *v24 = v21;
      *(v24 + 16) = 1;
    }

    else
    {
      if (swift_dynamicCast())
      {
        *v30 = *&v33[0];
        v18 = v30;
        v19 = v30;
        goto LABEL_9;
      }

      *&v33[0] = v7 + 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D18, &qword_2450EDD90);
      v25 = sub_2450E5818();
      v16 = v26;
      sub_2450B8890();
      swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v16;
      *(v27 + 16) = 0;
    }

    swift_willThrow();
    goto LABEL_11;
  }

  sub_24509551C(v33, v30);
  v8 = v31;
  v9 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v10 = *(v9 + 24);
  v29[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1(v29);
  v10(v8, v9);
  v11 = sub_2450BD778(v29);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    v13 = v31;
    v12 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v14 = (*(*(v12 + 8) + 24))(v13);
    v16 = v15;
    sub_2450B8890();
    swift_allocError();
    *v17 = v14;
    *(v17 + 8) = v16;
    *(v17 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v16 = v11;
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v30);
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  return v16;
}

uint64_t sub_2450BDB98(uint64_t a1)
{
  type metadata accessor for MessageParser();
  sub_2450AD6FC(a1, v15);
  v3 = v16;
  v4 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v5 = *(v4 + 24);
  v14[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1(v14);
  v5(v3, v4);
  v6 = sub_2450BD778(v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  if (v1)
  {
    v8 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = (*(*(v7 + 8) + 24))(v8);
    v11 = v10;
    sub_2450B8890();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = v11;
    *(v12 + 16) = 1;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return v6;
}

uint64_t sub_2450BDD18(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_2450C3B60(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_2450C3C9C(v3, v4);
    }

    else
    {
      v6 = sub_2450C3C18(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t sub_2450BDE3C(uint64_t a1)
{
  v2 = v1;
  v55 = *MEMORY[0x277D85DE8];
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24508F000, v5, v6, "CoreAudioOrchestrationDelegate - createConfiguration", v7, 2u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  v8 = sub_2450B8938(a1);
  if (v8)
  {
    v9 = v8;
    if (*(v8 + 16))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C58, &unk_2450EDCA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2450EA8E0;
  *(v9 + 32) = sub_2450C36C4(MEMORY[0x277D84F90]);
LABEL_9:
  v10 = objc_opt_self();

  v11 = sub_2450E5798();
  v12 = [v10 isValidJSONObject_];

  if (v12)
  {
    v13 = sub_2450E5798();

    v52[0] = 0;
    v14 = [v10 dataWithJSONObject:v13 options:0 error:v52];

    v15 = v52[0];
    if (!v14)
    {
      v19 = v15;

      v20 = sub_2450E55D8();

      swift_willThrow();
      v21 = v20;
      goto LABEL_19;
    }

    v16 = sub_2450E5608();
    v18 = v17;

    sub_2450E5578();
    swift_allocObject();
    sub_2450E5568();
    sub_2450C4200();
    sub_2450E5558();

    sub_2450A5294(v16, v18);
  }

  else
  {
    sub_2450C3A84(&type metadata for CreateConfigurationHeader, &qword_27EDF7D88, &qword_2450EDE20);
  }

  if (*(v9 + 16) < 2uLL)
  {
    __break(1u);
  }

  v22 = sub_2450E5798();
  v23 = [v10 isValidJSONObject_];

  if ((v23 & 1) == 0)
  {
    v50 = sub_2450C3A84(&type metadata for UseCaseID, &qword_27EDF7920, &qword_2450ED140);
    v49 = v47;
    v51 = v48;

    goto LABEL_27;
  }

  v24 = sub_2450E5798();

  v52[0] = 0;
  v25 = [v10 dataWithJSONObject:v24 options:0 error:v52];

  v26 = v52[0];
  if (v25)
  {
    v27 = sub_2450E5608();
    v29 = v28;

    sub_2450E5578();
    swift_allocObject();
    sub_2450E5568();
    sub_2450B8F40();
    sub_2450E5558();

    sub_2450A5294(v27, v29);
    v50 = v53[0];
    v49 = v53[1];
    v51 = v54;
LABEL_27:
    v35 = sub_2450C3D18(*(v2 + OBJC_IVAR____TtC22CoreAudioOrchestration30CoreAudioOrchestrationDelegate_orchestrator), v50, v49, v51);

    goto LABEL_22;
  }

  v45 = v26;

  v46 = sub_2450E55D8();

  swift_willThrow();
  v21 = v46;
LABEL_19:
  v30 = sub_2450E5628();
  v31 = sub_2450E59A8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v53[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_2450C0EE8(0xD00000000000002FLL, 0x80000002450F34E0, v53);
    _os_log_impl(&dword_24508F000, v30, v31, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x245D63500](v33, -1, -1);
    MEMORY[0x245D63500](v32, -1, -1);
  }

  v34 = sub_2450B6D18(1u, 0, 1, 0xD00000000000002FLL, 0x80000002450F34E0);
  v35 = sub_2450BCC90(v34);

LABEL_22:
  swift_bridgeObjectRetain_n();
  v36 = sub_2450E5628();
  v37 = sub_2450E5988();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v53[0] = v39;
    *v38 = 136315138;
    v40 = sub_2450E57B8();
    v42 = v41;

    v43 = sub_2450C0EE8(v40, v42, v53);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_24508F000, v36, v37, "return createConfiguration:%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x245D63500](v39, -1, -1);
    MEMORY[0x245D63500](v38, -1, -1);
  }

  else
  {
  }

  return v35;
}

uint64_t sub_2450BE5B4(uint64_t a1)
{
  v2 = v1;
  v35[3] = *MEMORY[0x277D85DE8];
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24508F000, v5, v6, "CoreAudioOrchestrationDelegate - activateConfiguration", v7, 2u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  v8 = sub_2450B8938(a1);
  if (v8)
  {
    if (*(v8 + 16))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C58, &unk_2450EDCA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2450EA8E0;
  *(v9 + 32) = sub_2450C36C4(MEMORY[0x277D84F90]);
LABEL_9:

  v10 = objc_opt_self();
  v11 = sub_2450E5798();
  v12 = [v10 isValidJSONObject_];

  if (!v12)
  {
    v20 = sub_2450C3A84(&type metadata for ActivateConfigurationHeader, &qword_27EDF7D70, &unk_2450EDDF8);
    v19 = v22;
    v21 = v23;

    goto LABEL_13;
  }

  v13 = sub_2450E5798();

  v34[0] = 0;
  v14 = [v10 dataWithJSONObject:v13 options:0 error:v34];

  v15 = v34[0];
  if (v14)
  {
    v16 = sub_2450E5608();
    v18 = v17;

    sub_2450E5578();
    swift_allocObject();
    sub_2450E5568();
    sub_2450C4254();
    sub_2450E5558();

    sub_2450A5294(v16, v18);
    v20 = v35[0];
    v19 = v35[1];
    v21 = v35[2];
LABEL_13:
    v24 = sub_2450C1490(*(v2 + OBJC_IVAR____TtC22CoreAudioOrchestration30CoreAudioOrchestrationDelegate_orchestrator), v20, v19, v21);

    return v24;
  }

  v25 = v15;
  v26 = sub_2450E55D8();

  swift_willThrow();
  v27 = v26;
  v28 = sub_2450E5628();
  v29 = sub_2450E59A8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_2450C0EE8(0xD000000000000031, 0x80000002450F3510, v35);
    _os_log_impl(&dword_24508F000, v28, v29, "%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x245D63500](v31, -1, -1);
    MEMORY[0x245D63500](v30, -1, -1);
  }

  v32 = sub_2450B6CE8(1, 0xD000000000000031, 0x80000002450F3510);
  v24 = sub_2450BCC90(v32);

  return v24;
}

uint64_t sub_2450BEA24(uint64_t a1)
{
  v2 = v1;
  v35[3] = *MEMORY[0x277D85DE8];
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24508F000, v5, v6, "CoreAudioOrchestrationDelegate - deactivateConfiguration", v7, 2u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  v8 = sub_2450B8938(a1);
  if (v8)
  {
    if (*(v8 + 16))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C58, &unk_2450EDCA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2450EA8E0;
  *(v9 + 32) = sub_2450C36C4(MEMORY[0x277D84F90]);
LABEL_9:

  v10 = objc_opt_self();
  v11 = sub_2450E5798();
  v12 = [v10 isValidJSONObject_];

  if (!v12)
  {
    v20 = sub_2450C3A84(&type metadata for DeactivateConfigurationHeader, &qword_27EDF7D68, &qword_2450EDDF0);
    v19 = v22;
    v21 = v23;

    goto LABEL_13;
  }

  v13 = sub_2450E5798();

  v34[0] = 0;
  v14 = [v10 dataWithJSONObject:v13 options:0 error:v34];

  v15 = v34[0];
  if (v14)
  {
    v16 = sub_2450E5608();
    v18 = v17;

    sub_2450E5578();
    swift_allocObject();
    sub_2450E5568();
    sub_2450C42A8();
    sub_2450E5558();

    sub_2450A5294(v16, v18);
    v20 = v35[0];
    v19 = v35[1];
    v21 = v35[2];
LABEL_13:
    v24 = sub_2450C1A4C(*(v2 + OBJC_IVAR____TtC22CoreAudioOrchestration30CoreAudioOrchestrationDelegate_orchestrator), v20, v19, v21);

    return v24;
  }

  v25 = v15;
  v26 = sub_2450E55D8();

  swift_willThrow();
  v27 = v26;
  v28 = sub_2450E5628();
  v29 = sub_2450E59A8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_2450C0EE8(0xD000000000000033, 0x80000002450F3550, v35);
    _os_log_impl(&dword_24508F000, v28, v29, "%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x245D63500](v31, -1, -1);
    MEMORY[0x245D63500](v30, -1, -1);
  }

  v32 = sub_2450B6CE8(1, 0xD000000000000033, 0x80000002450F3550);
  v24 = sub_2450BCC90(v32);

  return v24;
}

uint64_t sub_2450BEE94(uint64_t a1)
{
  v2 = v1;
  v43[3] = *MEMORY[0x277D85DE8];
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24508F000, v5, v6, "CoreAudioOrchestrationDelegate - destroyConfiguration", v7, 2u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  v8 = sub_2450B8938(a1);
  if (v8)
  {
    if (*(v8 + 16))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C58, &unk_2450EDCA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2450EA8E0;
  *(v9 + 32) = sub_2450C36C4(MEMORY[0x277D84F90]);
LABEL_9:

  v10 = objc_opt_self();
  v11 = sub_2450E5798();
  v12 = [v10 isValidJSONObject_];

  if (!v12)
  {
    v31 = sub_2450C3A84(&type metadata for DestroyConfigurationHeader, &qword_27EDF7D60, &qword_2450EDDE8);
    v30 = v28;
    v32 = v29;

    goto LABEL_16;
  }

  v13 = sub_2450E5798();

  v42[0] = 0;
  v14 = [v10 dataWithJSONObject:v13 options:0 error:v42];

  v15 = v42[0];
  if (v14)
  {
    v16 = sub_2450E5608();
    v18 = v17;

    sub_2450E5578();
    swift_allocObject();
    sub_2450E5568();
    sub_2450C42FC();
    sub_2450E5558();

    sub_2450A5294(v16, v18);
    v31 = v43[0];
    v30 = v43[1];
    v32 = v43[2];
LABEL_16:
    v27 = sub_2450C2030(*(v2 + OBJC_IVAR____TtC22CoreAudioOrchestration30CoreAudioOrchestrationDelegate_orchestrator), v31, v30, v32);

    goto LABEL_17;
  }

  v19 = v15;
  v20 = sub_2450E55D8();

  swift_willThrow();
  v21 = v20;
  v22 = sub_2450E5628();
  v23 = sub_2450E59A8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_2450C0EE8(0xD000000000000030, 0x80000002450F3590, v43);
    _os_log_impl(&dword_24508F000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x245D63500](v25, -1, -1);
    MEMORY[0x245D63500](v24, -1, -1);
  }

  v26 = sub_2450B6CE8(1, 0xD000000000000030, 0x80000002450F3590);
  v27 = sub_2450BCC90(v26);

LABEL_17:
  swift_bridgeObjectRetain_n();
  v33 = sub_2450E5628();
  v34 = sub_2450E5988();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43[0] = v36;
    *v35 = 136315138;
    v37 = sub_2450E57B8();
    v39 = v38;

    v40 = sub_2450C0EE8(v37, v39, v43);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_24508F000, v33, v34, "return destroyConfiguration:%s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x245D63500](v36, -1, -1);
    MEMORY[0x245D63500](v35, -1, -1);
  }

  else
  {
  }

  return v27;
}

uint64_t sub_2450BF434(uint64_t a1)
{
  v2 = v1;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24508F000, v5, v6, "CoreAudioOrchestrationDelegate - register", v7, 2u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  *(*(*(*(v2 + OBJC_IVAR____TtC22CoreAudioOrchestration30CoreAudioOrchestrationDelegate_orchestrator) + 32) + 24) + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v8 = sub_2450B6CE8(0, 0, 0);
  v9 = sub_2450BCC90(v8);

  return v9;
}

uint64_t sub_2450BF608(uint64_t a1)
{
  v2 = v1;
  v50 = *MEMORY[0x277D85DE8];
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24508F000, v5, v6, "CoreAudioOrchestrationDelegate - subscribeToEvent", v7, 2u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  if (!a1)
  {
    goto LABEL_32;
  }

  v8 = sub_2450B8938(a1);
  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C58, &unk_2450EDCA0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2450EA8E0;
    v8 = sub_2450C36C4(MEMORY[0x277D84F90]);
    *(v9 + 32) = v8;
    if (*(v9 + 16))
    {
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  if (!v8[2])
  {
    goto LABEL_13;
  }

LABEL_8:
  v10 = objc_opt_self();

  v11 = sub_2450E5798();
  v12 = [v10 isValidJSONObject_];

  if (!v12)
  {
    v22 = sub_2450C3A84(&type metadata for SubscribeHeader, &qword_27EDF7D50, &qword_2450EDDD8);
    v21 = v20;

    goto LABEL_15;
  }

  v13 = sub_2450E5798();

  *&v44 = 0;
  v14 = [v10 dataWithJSONObject:v13 options:0 error:&v44];

  v8 = v44;
  if (v14)
  {
    v15 = sub_2450E5608();
    v17 = v16;

    sub_2450E5578();
    swift_allocObject();
    sub_2450E5568();
    sub_2450C4358();
    sub_2450E5558();

    sub_2450A5294(v15, v17);
    v22 = v47;
    v21 = v48;
LABEL_15:
    type metadata accessor for MessageParser();
    if (*(v9 + 16) >= 2uLL)
    {

      sub_2450B751C(v23, &v47);

      if (*(v9 + 16) < 3uLL)
      {

        v46 = 0;
        v44 = 0u;
        v45 = 0u;
      }

      else
      {
        v39 = *(v9 + 48);

        sub_2450B751C(v39, v41);

        v44 = *v41;
        v45 = v42;
        v46 = v43;
      }

      v32 = sub_2450C265C(*(v2 + OBJC_IVAR____TtC22CoreAudioOrchestration30CoreAudioOrchestrationDelegate_orchestrator), &v47, &v44, v22, v21);

      sub_24509F608(&v44, &qword_27EDF7C88, qword_2450EDCB0);
      __swift_destroy_boxed_opaque_existential_0Tm(&v47);
      return v32;
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

LABEL_14:
  v18 = v8;

  v19 = sub_2450E55D8();

  swift_willThrow();
  v41[0] = v19;
  v24 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74C0, &qword_2450EB780);
  if (!swift_dynamicCast())
  {
    goto LABEL_20;
  }

  v25 = v47;
  v26 = v48;
  if (v49)
  {
    sub_2450C4350(v47, v48);
LABEL_20:

    v27 = sub_2450E5628();
    v28 = sub_2450E59A8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_2450C0EE8(0xD000000000000024, 0x80000002450F35D0, &v47);
      _os_log_impl(&dword_24508F000, v27, v28, "%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x245D63500](v30, -1, -1);
      MEMORY[0x245D63500](v29, -1, -1);
    }

    v31 = sub_2450B6F10(1u, 0, 1, 0xD000000000000024, 0x80000002450F35D0);
    v32 = sub_2450BCC90(v31);

    return v32;
  }

  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  sub_2450E5B58();
  MEMORY[0x245D624D0](0xD000000000000031, 0x80000002450F3600);
  MEMORY[0x245D624D0](v25, v26);
  sub_2450C4350(v25, v26);
  v33 = v44;

  v34 = sub_2450E5628();
  v35 = sub_2450E59A8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v44 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_2450C0EE8(v33, *(&v33 + 1), &v44);
    _os_log_impl(&dword_24508F000, v34, v35, "%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x245D63500](v37, -1, -1);
    MEMORY[0x245D63500](v36, -1, -1);
  }

  v38 = sub_2450B6F10(1u, 0, 1, v33, *(&v33 + 1));

  v32 = sub_2450BCC90(v38);

  return v32;
}

uint64_t sub_2450BFE3C(uint64_t a1)
{
  v2 = v1;
  v32[3] = *MEMORY[0x277D85DE8];
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24508F000, v5, v6, "CoreAudioOrchestrationDelegate - unsubscribeFromEvent", v7, 2u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  v8 = sub_2450B8938(a1);
  if (v8)
  {
    if (*(v8 + 16))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C58, &unk_2450EDCA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2450EA8E0;
  *(v9 + 32) = sub_2450C36C4(MEMORY[0x277D84F90]);
LABEL_9:

  v10 = objc_opt_self();
  v11 = sub_2450E5798();
  v12 = [v10 isValidJSONObject_];

  if (!v12)
  {
    sub_2450C3A84(&type metadata for UnsubscribeHeader, &qword_27EDF7D40, &unk_2450EDDB0);
    v19 = v20;

    goto LABEL_13;
  }

  v13 = sub_2450E5798();

  v31[0] = 0;
  v14 = [v10 dataWithJSONObject:v13 options:0 error:v31];

  v15 = v31[0];
  if (v14)
  {
    v16 = sub_2450E5608();
    v18 = v17;

    sub_2450E5578();
    swift_allocObject();
    sub_2450E5568();
    sub_2450C45E4();
    sub_2450E5558();

    sub_2450A5294(v16, v18);
    v19 = v32[2];
LABEL_13:
    v21 = sub_2450C43AC(*(v2 + OBJC_IVAR____TtC22CoreAudioOrchestration30CoreAudioOrchestrationDelegate_orchestrator), v19);

    return v21;
  }

  v22 = v15;
  v23 = sub_2450E55D8();

  swift_willThrow();
  v24 = v23;
  v25 = sub_2450E5628();
  v26 = sub_2450E59A8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_2450C0EE8(0xD000000000000026, 0x80000002450F3640, v32);
    _os_log_impl(&dword_24508F000, v25, v26, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x245D63500](v28, -1, -1);
    MEMORY[0x245D63500](v27, -1, -1);
  }

  v29 = sub_2450B6D18(1u, 0, 1, 0xD000000000000026, 0x80000002450F3640);
  v21 = sub_2450BCC90(v29);

  return v21;
}

uint64_t sub_2450C02A4(uint64_t a1)
{
  v2 = v1;
  v32[5] = *MEMORY[0x277D85DE8];
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24508F000, v5, v6, "CoreAudioOrchestrationDelegate - getProperty", v7, 2u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  v8 = sub_2450B8938(a1);
  if (v8)
  {
    v9 = v8;
    if (*(v8 + 16))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C58, &unk_2450EDCA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2450EA8E0;
  *(v9 + 32) = sub_2450C36C4(MEMORY[0x277D84F90]);
LABEL_9:
  v10 = objc_opt_self();

  v11 = sub_2450E5798();
  v12 = [v10 isValidJSONObject_];

  if (!v12)
  {
    sub_2450C3A84(&type metadata for GetPropertyHeader, &qword_27EDF7D30, &unk_2450EDDA0);

    goto LABEL_14;
  }

  v13 = sub_2450E5798();

  v31[0] = 0;
  v14 = [v10 dataWithJSONObject:v13 options:0 error:v31];

  v15 = v31[0];
  if (v14)
  {
    v16 = sub_2450E5608();
    v18 = v17;

    sub_2450E5578();
    swift_allocObject();
    sub_2450E5568();
    sub_2450C4EEC();
    sub_2450E5558();

    sub_2450A5294(v16, v18);
LABEL_14:
    type metadata accessor for MessageParser();
    if (*(v9 + 16) < 2uLL)
    {
      __break(1u);
    }

    v22 = *(v9 + 40);

    sub_2450B751C(v22, v32);

    v30 = sub_2450C4638(*(v2 + OBJC_IVAR____TtC22CoreAudioOrchestration30CoreAudioOrchestrationDelegate_orchestrator), v32);

    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    return v30;
  }

  v19 = v15;

  v20 = sub_2450E55D8();

  swift_willThrow();
  v21 = v20;
  v23 = sub_2450E5628();
  v24 = sub_2450E59A8();
  if (os_log_type_enabled(v23, v24))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_2450C0EE8(0xD000000000000026, 0x80000002450F3670, v32);
    _os_log_impl(&dword_24508F000, v23, v24, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x245D63500](v27, -1, -1);
    MEMORY[0x245D63500](v26, -1, -1);
  }

  v28 = sub_2450B7108(1, 0xD000000000000026, 0x80000002450F3670);
  v30 = sub_2450BCC90(v28);

  return v30;
}

uint64_t sub_2450C0784(uint64_t a1)
{
  v2 = v1;
  v37[5] = *MEMORY[0x277D85DE8];
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24508F000, v5, v6, "CoreAudioOrchestrationDelegate - setProperty", v7, 2u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  v8 = sub_2450B8938(a1);
  if (v8)
  {
    v9 = v8;
    if (*(v8 + 16))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C58, &unk_2450EDCA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2450EA8E0;
  *(v9 + 32) = sub_2450C36C4(MEMORY[0x277D84F90]);
LABEL_9:
  v10 = objc_opt_self();

  v11 = sub_2450E5798();
  v12 = [v10 isValidJSONObject_];

  if (!v12)
  {
    sub_2450C3A84(&type metadata for SetPropertyHeader, &qword_27EDF7D20, &qword_2450EDD98);

LABEL_14:
    type metadata accessor for MessageParser();
    if (*(v9 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {

      sub_2450B751C(v22, v37);

      if (*(v9 + 16) >= 3uLL)
      {
        v23 = *(v9 + 48);

        sub_2450B84FC(v23, v36);

        v31 = sub_2450BDB98(v36);
        v33 = v32;
        v34 = v31;
        v35 = sub_2450C4F40(*(v2 + OBJC_IVAR____TtC22CoreAudioOrchestration30CoreAudioOrchestrationDelegate_orchestrator), v37, v31, v32);
        sub_2450A5294(v34, v33);

        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        return v35;
      }
    }

    __break(1u);
  }

  v13 = sub_2450E5798();

  v36[0] = 0;
  v14 = [v10 dataWithJSONObject:v13 options:0 error:v36];

  v15 = v36[0];
  if (v14)
  {
    v16 = sub_2450E5608();
    v18 = v17;

    sub_2450E5578();
    swift_allocObject();
    sub_2450E5568();
    sub_2450C5698();
    sub_2450E5558();

    sub_2450A5294(v16, v18);
    goto LABEL_14;
  }

  v19 = v15;

  v20 = sub_2450E55D8();

  swift_willThrow();
  v21 = v20;
  v24 = sub_2450E5628();
  v25 = sub_2450E59A8();
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_2450C0EE8(0xD000000000000026, 0x80000002450F36A0, v37);
    _os_log_impl(&dword_24508F000, v24, v25, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x245D63500](v28, -1, -1);
    MEMORY[0x245D63500](v27, -1, -1);
  }

  v29 = sub_2450B7108(1, 0xD000000000000026, 0x80000002450F36A0);
  v35 = sub_2450BCC90(v29);

  return v35;
}

id sub_2450C0D04(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = sub_2450E57A8();
  v7 = a1;
  a4(v6);

  v8 = sub_2450E5798();

  return v8;
}

id CoreAudioOrchestrationDelegate.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CoreAudioOrchestrationDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2450C0E08(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_2450C0E54(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2450C0E8C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2450C0EE8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2450C0EE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2450C0FB4(v11, 0, 0, 1, a1, a2);
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
    sub_24509FAE0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2450C0FB4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2450C10C0(a5, a6);
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
    result = sub_2450E5B98();
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

void *sub_2450C10C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_2450C110C(a1, a2);
  sub_2450C123C(&unk_2857FED80);
  return v3;
}

void *sub_2450C110C(uint64_t a1, unint64_t a2)
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

  v6 = sub_2450C1328(v5, 0);
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

  result = sub_2450E5B98();
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
        v10 = sub_2450E5858();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2450C1328(v10, 0);
        result = sub_2450E5B48();
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

uint64_t sub_2450C123C(uint64_t result)
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

  result = sub_2450C139C(result, v11, 1, v3);
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

void *sub_2450C1328(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D78, &qword_2450EDE08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2450C139C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D78, &qword_2450EDE08);
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

uint64_t sub_2450C1490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = type metadata accessor for Orchestrator();
  v11 = &off_285801F90;
  v9[0] = a1;
  __swift_project_boxed_opaque_existential_1(v9, v10);

  sub_2450C66D4(a4);
  v6 = sub_2450B6CE8(0, 0, 0);
  v7 = sub_2450BCC90(v6);

  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return v7;
}

uint64_t sub_2450C1A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = type metadata accessor for Orchestrator();
  v11 = &off_285801F90;
  v9[0] = a1;
  __swift_project_boxed_opaque_existential_1(v9, v10);

  sub_2450C67B4(a4);
  v6 = sub_2450B6CE8(0, 0, 0);
  v7 = sub_2450BCC90(v6);

  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return v7;
}

uint64_t sub_2450C2030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = type metadata accessor for Orchestrator();
  v12 = &off_285801F90;
  v10[0] = a1;
  __swift_project_boxed_opaque_existential_1(v10, v11);

  sub_2450C67B4(a4);
  swift_beginAccess();
  sub_2450D1C28(a4, &v9);
  swift_endAccess();
  sub_24509F608(&v9, &qword_27EDF7D58, &qword_2450EDDE0);
  v6 = sub_2450B6CE8(0, 0, 0);
  v7 = sub_2450BCC90(v6);

  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return v7;
}

uint64_t sub_2450C265C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2450E50E0(a2, &v9);
  v5 = sub_2450D1E74(&v9);
  v6 = sub_2450B6F10(0, v5, 0, 0, 0);
  v7 = sub_2450BCC90(v6);

  sub_2450C5B18(&v9);
  return v7;
}

unint64_t sub_2450C2AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CF8, &unk_2450EDD58);
    v3 = sub_2450E5C28();
    v4 = a1 + 32;

    while (1)
    {
      sub_2450C5BCC(v4, v13, &qword_27EDF78A0, &qword_2450ECFF0);
      result = sub_2450C81B4(v13);
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
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2450C2C0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CD8, &qword_2450EDD38);
    v3 = sub_2450E5C28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_2450C81F8(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

unint64_t sub_2450C2D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D08, &qword_2450EDD78);
    v3 = sub_2450E5C28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_2450C81F8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_2450C2DF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D00, &qword_2450EDD68);
    v3 = sub_2450E5C28();
    v4 = a1 + 32;

    while (1)
    {
      sub_2450C5BCC(v4, v10, &qword_27EDF7258, &qword_2450EDD70);
      result = sub_2450C81F8(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_2450C58FC(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
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

void *sub_2450C2F18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CD0, &qword_2450EDD30);
  v3 = sub_2450E5C28();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_2450C8284(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_2450C8284(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2450C3028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CC8, &qword_2450EDD28);
  v3 = sub_2450E5C28();
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  result = sub_2450C8178(v4);
  v6 = v14;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v6;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v4 = *(v8 - 1);
    v15 = *v8;
    swift_unknownObjectRetain();
    result = sub_2450C8178(v4);
    v8 = v12;
    v6 = v15;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2450C3140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CE0, &unk_2450EDD40);
    v3 = sub_2450E5C28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_2450C81F8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_2450C3234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CE8, &unk_2450EE350);
    v3 = sub_2450E5C28();
    for (i = a1 + 32; ; i += 48)
    {
      sub_2450C5BCC(i, &v11, &qword_27EDF7CF0, &qword_2450EDD50);
      v5 = v11;
      result = sub_2450C8178(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24509551C(&v12, v3[7] + 40 * result);
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

unint64_t sub_2450C3354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CC0, &qword_2450EDD20);
    v3 = sub_2450E5C28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2450C7FE0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

void *sub_2450C3458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CB8, &qword_2450EDD18);
  v3 = sub_2450E5C28();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 36);
  v7 = sub_2450C8058(v4 | (v5 << 32));
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = 8 * v9;
    v13 = v3[6] + v12;
    *v13 = v4;
    *(v13 + 4) = v5 & 1;
    *(v3[7] + v12) = result;
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

    v17 = v11 + 2;
    v4 = *(v11 - 2);
    v5 = *(v11 - 4);
    v18 = *v11;

    v9 = sub_2450C8058(v4 | (v5 << 32));
    v11 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_2450C3598(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CB0, &qword_2450EDD10);
  v3 = sub_2450E5C28();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_2450C80E8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 16 * v9;
    *v12 = v4;
    *(v12 + 8) = v5 & 1;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 8);
    v17 = *v11;

    v9 = sub_2450C80E8(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2450C36C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D80, &unk_2450EDE10);
    v3 = sub_2450E5C28();
    v4 = a1 + 32;

    while (1)
    {
      sub_2450C5BCC(v4, v13, &qword_27EDF7D90, &qword_2450EDE28);
      result = sub_2450C81B4(v13);
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
      result = sub_2450C58FC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_2450C3830()
{
  sub_2450E5B58();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7948, &unk_2450ED160);
  v0 = sub_2450E5818();
  MEMORY[0x245D624D0](v0);

  sub_2450B8890();
  swift_allocError();
  *v1 = 0xD00000000000001FLL;
  *(v1 + 8) = 0x80000002450F3790;
  *(v1 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_2450C3910()
{
  sub_2450E5B58();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7940, &qword_2450EF930);
  v0 = sub_2450E5818();
  MEMORY[0x245D624D0](v0);

  sub_2450B8890();
  swift_allocError();
  *v1 = 0xD00000000000001FLL;
  *(v1 + 8) = 0x80000002450F3790;
  *(v1 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_2450C3A84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2450E5B58();

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_2450E5818();
  MEMORY[0x245D624D0](v5);

  sub_2450B8890();
  swift_allocError();
  *v6 = 0xD00000000000001FLL;
  *(v6 + 8) = 0x80000002450F3790;
  *(v6 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_2450C3B60(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_2450C3C18(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2450E55C8();
  swift_allocObject();
  result = sub_2450E55B8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2450C3C9C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2450E55C8();
  swift_allocObject();
  result = sub_2450E55B8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2450E55E8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2450C3D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Orchestrator();
  v32[3] = v6;
  v32[4] = &off_285801F90;
  v32[0] = a1;
  v7 = qword_27EDF6738;

  if (v7 != -1)
  {
    swift_once();
  }

  if (*(off_27EDF7D98 + 2) && (sub_2450C8284(a4), (v8 & 1) != 0))
  {
    __swift_project_boxed_opaque_existential_1(v32, v6);

    v10 = sub_2450C65F4(v9);
    v27 = sub_2450B6D18(0, v10, 0, 0, 0);
    v28 = sub_2450BCC90(v27);
  }

  else
  {
    sub_2450C59DC();
    v11 = swift_allocError();
    *v12 = a4;
    swift_willThrow();
    v31[0] = v11;
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74C0, &qword_2450EB780);
    if (swift_dynamicCast())
    {

      sub_2450E5B58();

      v30[0] = 0xD000000000000013;
      v30[1] = 0x80000002450F3960;
      v14 = sub_2450E5E48();
      MEMORY[0x245D624D0](v14);

      if (qword_27EDF6748 != -1)
      {
        swift_once();
      }

      v15 = sub_2450E5638();
      __swift_project_value_buffer(v15, qword_27EE0AEC8);

      v16 = sub_2450E5628();
      v17 = sub_2450E59A8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v30[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_2450C0EE8(0xD000000000000013, 0x80000002450F3960, v30);
        _os_log_impl(&dword_24508F000, v16, v17, "%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x245D63500](v19, -1, -1);
        MEMORY[0x245D63500](v18, -1, -1);
      }

      v20 = sub_2450B6D18(2u, 0, 1, 0xD000000000000013, 0x80000002450F3960);

      v28 = sub_2450BCC90(v20);
    }

    else
    {

      if (qword_27EDF6748 != -1)
      {
        swift_once();
      }

      v21 = sub_2450E5638();
      __swift_project_value_buffer(v21, qword_27EE0AEC8);

      v22 = sub_2450E5628();
      v23 = sub_2450E59A8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30[0] = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_2450C0EE8(0xD000000000000038, 0x80000002450F3920, v30);
        *(v24 + 12) = 1024;
        *(v24 + 14) = a4;

        _os_log_impl(&dword_24508F000, v22, v23, "%s: %u", v24, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        MEMORY[0x245D63500](v25, -1, -1);
        MEMORY[0x245D63500](v24, -1, -1);
      }

      else
      {
      }

      v26 = sub_2450B6D18(4u, 0, 1, 0xD000000000000038, 0x80000002450F3920);
      v28 = sub_2450BCC90(v26);
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  return v28;
}

unint64_t sub_2450C4200()
{
  result = qword_27EDF7C68;
  if (!qword_27EDF7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7C68);
  }

  return result;
}

unint64_t sub_2450C4254()
{
  result = qword_27EDF7C70;
  if (!qword_27EDF7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7C70);
  }

  return result;
}

unint64_t sub_2450C42A8()
{
  result = qword_27EDF7C78;
  if (!qword_27EDF7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7C78);
  }

  return result;
}

unint64_t sub_2450C42FC()
{
  result = qword_27EDF7C80;
  if (!qword_27EDF7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7C80);
  }

  return result;
}

unint64_t sub_2450C4358()
{
  result = qword_27EDF7C90;
  if (!qword_27EDF7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7C90);
  }

  return result;
}

uint64_t sub_2450C43AC(uint64_t a1, uint64_t a2)
{
  sub_2450D2134(a2, &v14);
  v2 = v16;
  sub_24509F608(&v14, &qword_27EDF7D38, &qword_2450EEC40);
  if (v2)
  {
    v3 = sub_2450B6CE8(0, 0, 0);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_2450E5B58();

    v14 = 0xD00000000000001CLL;
    v15 = 0x80000002450F37D0;
    v4 = sub_2450E5E48();
    MEMORY[0x245D624D0](v4);

    v6 = v14;
    v5 = v15;
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v7 = sub_2450E5638();
    __swift_project_value_buffer(v7, qword_27EE0AEC8);

    v8 = sub_2450E5628();
    v9 = sub_2450E59A8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2450C0EE8(v6, v5, &v14);
      _os_log_impl(&dword_24508F000, v8, v9, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x245D63500](v11, -1, -1);
      MEMORY[0x245D63500](v10, -1, -1);
    }

    v3 = sub_2450B6F10(2u, 0, 1, v6, v5);
  }

  v12 = sub_2450BCC90(v3);

  return v12;
}

unint64_t sub_2450C45E4()
{
  result = qword_27EDF7C98;
  if (!qword_27EDF7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7C98);
  }

  return result;
}

uint64_t sub_2450C4638(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Orchestrator();
  v60 = v4;
  v61 = &off_285801F58;
  v59[0] = a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  DynamicType = swift_getDynamicType();
  if (DynamicType == &type metadata for DevicePropertyDescription)
  {
    __swift_project_boxed_opaque_existential_1(v59, v4);
    sub_2450AD6FC(a2, &v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7900, &unk_2450EDD80);
    swift_dynamicCast();
    v62 = v54;
    v63[0] = *v55;
    *(v63 + 12) = *&v55[3];
    v47 = sub_2450C692C(&v62);
    v49 = v48;
    sub_2450C5988(&v62);
    v50 = sub_2450BCF50(0, 0, 0, v47, v49);
    v51 = sub_2450BCC90(v50);

    sub_2450A5294(v47, v49);
  }

  else
  {
    if (DynamicType == &type metadata for IsolatedUseCaseDevicesAvailable)
    {
      sub_2450AD6FC(a2, &v62);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7900, &unk_2450EDD80);
      swift_dynamicCast();

      if (qword_27EDF6738 != -1)
      {
        swift_once();
      }

      v14 = off_27EDF7D98;
      if (*(off_27EDF7D98 + 2))
      {
        v15 = sub_2450C8284(v55[0]);
        if (v16)
        {
          v17 = *(v14[7] + 8 * v15);
          __swift_project_boxed_opaque_existential_1(v59, v60);
          v18 = *(v17 + 16);

          v19 = sub_2450C6C38(v18);
          v53 = sub_2450BD1E4(0, 0, 0, v19);
          v51 = sub_2450BCC90(v53);

          goto LABEL_32;
        }
      }

      sub_2450C59DC();
      v12 = swift_allocError();
      *v20 = v55[0];
    }

    else
    {
      v6 = a2[3];
      v7 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v6);
      v8 = *(v7 + 24);

      v9 = v8(v6, v7);
      v11 = v10;
      sub_2450C590C();
      v12 = swift_allocError();
      *v13 = v9;
      *(v13 + 8) = v11;
      *(v13 + 16) = 0;
    }

    swift_willThrow();
    v58 = v12;
    v21 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74C0, &qword_2450EB780);
    if (swift_dynamicCast() && (v55[0] & 1) == 0)
    {

      sub_2450E5B58();

      v56 = 0xD000000000000017;
      v57 = 0x80000002450F3770;
      MEMORY[0x245D624D0](v54, *(&v54 + 1));
      sub_2450C5978(v54, *(&v54 + 1), 0);
      v24 = 0xD000000000000017;
      v23 = 0x80000002450F3770;
      if (qword_27EDF6748 != -1)
      {
        swift_once();
      }

      v31 = sub_2450E5638();
      __swift_project_value_buffer(v31, qword_27EE0AEC8);

      v32 = sub_2450E5628();
      v33 = sub_2450E59A8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v56 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_2450C0EE8(0xD000000000000017, 0x80000002450F3770, &v56);
        _os_log_impl(&dword_24508F000, v32, v33, "%s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x245D63500](v35, -1, -1);
        MEMORY[0x245D63500](v34, -1, -1);
      }

      v30 = 2;
      goto LABEL_25;
    }

    v58 = v12;
    v22 = v12;
    if (swift_dynamicCast())
    {
      if (LOBYTE(v55[0]) == 2)
      {

        sub_2450E5B58();

        v56 = 0xD00000000000001ALL;
        v57 = 0x80000002450F3750;
        MEMORY[0x245D624D0](v54, *(&v54 + 1));
        sub_2450C5960(v54, *(&v54 + 1), 2);
        v24 = 0xD00000000000001ALL;
        v23 = 0x80000002450F3750;
        if (qword_27EDF6748 != -1)
        {
          swift_once();
        }

        v25 = sub_2450E5638();
        __swift_project_value_buffer(v25, qword_27EE0AEC8);

        v26 = sub_2450E5628();
        v27 = sub_2450E59A8();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v56 = v29;
          *v28 = 136315138;
          *(v28 + 4) = sub_2450C0EE8(0xD00000000000001ALL, 0x80000002450F3750, &v56);
          _os_log_impl(&dword_24508F000, v26, v27, "%s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
          MEMORY[0x245D63500](v29, -1, -1);
          MEMORY[0x245D63500](v28, -1, -1);
        }

        v30 = 4;
LABEL_25:
        v36 = sub_2450B7108(v30, v24, v23);

        v51 = sub_2450BCC90(v36);

        goto LABEL_32;
      }

      sub_2450C5960(v54, *(&v54 + 1), v55[0]);
    }

    sub_2450E5B58();

    *&v54 = 0xD000000000000018;
    *(&v54 + 1) = 0x80000002450F37B0;
    v37 = a2[3];
    v38 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v37);
    v39 = (*(v38 + 24))(v37, v38);
    MEMORY[0x245D624D0](v39);

    v40 = v54;
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v41 = sub_2450E5638();
    __swift_project_value_buffer(v41, qword_27EE0AEC8);

    v42 = sub_2450E5628();
    v43 = sub_2450E59A8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v54 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_2450C0EE8(v40, *(&v40 + 1), &v54);
      _os_log_impl(&dword_24508F000, v42, v43, "%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x245D63500](v45, -1, -1);
      MEMORY[0x245D63500](v44, -1, -1);
    }

    v46 = sub_2450B7108(4, v40, *(&v40 + 1));

    v51 = sub_2450BCC90(v46);
  }

LABEL_32:
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  return v51;
}

unint64_t sub_2450C4EEC()
{
  result = qword_27EDF7CA0;
  if (!qword_27EDF7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7CA0);
  }

  return result;
}

uint64_t sub_2450C4F40(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Orchestrator();
  v52[3] = v8;
  v52[4] = &off_285801F58;
  v52[0] = a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (swift_getDynamicType() == &type metadata for DevicePropertyDescription)
  {
    __swift_project_boxed_opaque_existential_1(v52, v8);
    sub_2450AD6FC(a2, &v49);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7900, &unk_2450EDD80);
    swift_dynamicCast();
    v53 = v47;
    v54[0] = *v48;
    *(v54 + 12) = *&v48[12];
    sub_2450C6AB4(&v53, a3, a4);
    sub_2450C5988(&v53);
    v44 = sub_2450B6CE8(0, 0, 0);
    v45 = sub_2450BCC90(v44);
  }

  else
  {
    v9 = a2[3];
    v10 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v9);
    v11 = *(v10 + 24);

    v12 = v11(v9, v10);
    v14 = v13;
    sub_2450C590C();
    v15 = swift_allocError();
    *v16 = v12;
    *(v16 + 8) = v14;
    *(v16 + 16) = 0;
    swift_willThrow();
    v51 = v15;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74C0, &qword_2450EB780);
    v18 = swift_dynamicCast();
    if (v18 && (v48[0] & 1) == 0)
    {

      sub_2450E5B58();

      v49 = 0xD000000000000017;
      v50 = 0x80000002450F3770;
      MEMORY[0x245D624D0](v47, *(&v47 + 1));
      sub_2450C5978(v47, *(&v47 + 1), 0);
      v21 = 0xD000000000000017;
      v20 = 0x80000002450F3770;
      if (qword_27EDF6748 != -1)
      {
        swift_once();
      }

      v28 = sub_2450E5638();
      __swift_project_value_buffer(v28, qword_27EE0AEC8);

      v29 = sub_2450E5628();
      v30 = sub_2450E59A8();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v49 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_2450C0EE8(0xD000000000000017, 0x80000002450F3770, &v49);
        _os_log_impl(&dword_24508F000, v29, v30, "%s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x245D63500](v32, -1, -1);
        MEMORY[0x245D63500](v31, -1, -1);
      }

      v27 = 2;
      goto LABEL_18;
    }

    v51 = v15;
    v19 = v15;
    if (swift_dynamicCast())
    {
      if (v48[0] == 2)
      {

        sub_2450E5B58();

        v49 = 0xD00000000000001ALL;
        v50 = 0x80000002450F3750;
        MEMORY[0x245D624D0](v47, *(&v47 + 1));
        sub_2450C5960(v47, *(&v47 + 1), 2);
        v21 = 0xD00000000000001ALL;
        v20 = 0x80000002450F3750;
        if (qword_27EDF6748 != -1)
        {
          swift_once();
        }

        v22 = sub_2450E5638();
        __swift_project_value_buffer(v22, qword_27EE0AEC8);

        v23 = sub_2450E5628();
        v24 = sub_2450E59A8();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v49 = v26;
          *v25 = 136315138;
          *(v25 + 4) = sub_2450C0EE8(0xD00000000000001ALL, 0x80000002450F3750, &v49);
          _os_log_impl(&dword_24508F000, v23, v24, "%s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v26);
          MEMORY[0x245D63500](v26, -1, -1);
          MEMORY[0x245D63500](v25, -1, -1);
        }

        v27 = 4;
LABEL_18:
        v33 = sub_2450B6CE8(v27, v21, v20);

        v45 = sub_2450BCC90(v33);

        goto LABEL_25;
      }

      sub_2450C5960(v47, *(&v47 + 1), v48[0]);
    }

    sub_2450E5B58();

    *&v47 = 0xD000000000000018;
    *(&v47 + 1) = 0x80000002450F3730;
    v34 = a2[3];
    v35 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v34);
    v36 = (*(v35 + 24))(v34, v35);
    MEMORY[0x245D624D0](v36);

    v37 = v47;
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v38 = sub_2450E5638();
    __swift_project_value_buffer(v38, qword_27EE0AEC8);

    v39 = sub_2450E5628();
    v40 = sub_2450E59A8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v47 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_2450C0EE8(v37, *(&v37 + 1), &v47);
      _os_log_impl(&dword_24508F000, v39, v40, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x245D63500](v42, -1, -1);
      MEMORY[0x245D63500](v41, -1, -1);
    }

    v43 = sub_2450B6CE8(4, v37, *(&v37 + 1));

    v45 = sub_2450BCC90(v43);
  }

LABEL_25:
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  return v45;
}

unint64_t sub_2450C5698()
{
  result = qword_27EDF7CA8;
  if (!qword_27EDF7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7CA8);
  }

  return result;
}

_OWORD *sub_2450C58FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2450C590C()
{
  result = qword_27EDF7D10;
  if (!qword_27EDF7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7D10);
  }

  return result;
}

uint64_t sub_2450C5960(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_2450C5978(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_2450C59DC()
{
  result = qword_27EDF7D28;
  if (!qword_27EDF7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7D28);
  }

  return result;
}

uint64_t sub_2450C5A30()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2450C5A70(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2450C5AC4()
{

  sub_2450A5294(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2450C5B04(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_2450C5BCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2450C5C54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_2450C5C9C(uint64_t result, int a2, int a3)
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
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2450C5CFC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v6 = sub_2450E5638();
  __swift_project_value_buffer(v6, qword_27EE0AEC8);

  v7 = sub_2450E5628();
  v8 = sub_2450E5988();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2450C0EE8(a1, a2, &v13);
    _os_log_impl(&dword_24508F000, v7, v8, "Starting session with %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x245D63500](v10, -1, -1);
    MEMORY[0x245D63500](v9, -1, -1);
  }

  v3[2] = a1;
  v3[3] = a2;
  type metadata accessor for ClientServiceLauncher();
  v11 = swift_allocObject();
  type metadata accessor for ClientSharedAudioXPCConnection();
  swift_allocObject();

  *(v11 + 16) = sub_2450A7230(a1, a2, 0, 0);
  v3[4] = v11;
  return v3;
}

uint64_t sub_2450C5EAC()
{
  v1 = v0;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v2 = sub_2450E5638();
  __swift_project_value_buffer(v2, qword_27EE0AEC8);

  v3 = sub_2450E5628();
  v4 = sub_2450E5988();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2450C0EE8(*(v1 + 16), *(v1 + 24), &v8);
    _os_log_impl(&dword_24508F000, v3, v4, "Launching... %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245D63500](v6, -1, -1);
    MEMORY[0x245D63500](v5, -1, -1);
  }

  sub_24509FB3C();
}

void sub_2450C6114(uint64_t a1)
{
  v2 = v1;
  if (a1 < 1)
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v11 = sub_2450E5638();
    __swift_project_value_buffer(v11, qword_27EE0AEC8);

    oslog = sub_2450E5628();
    v12 = sub_2450E59A8();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2450C0EE8(v2[2], v2[3], &v16);
      _os_log_impl(&dword_24508F000, oslog, v12, "Could not recover %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x245D63500](v14, -1, -1);
      MEMORY[0x245D63500](v13, -1, -1);
    }
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v3 = sub_2450E5638();
    __swift_project_value_buffer(v3, qword_27EE0AEC8);

    v4 = sub_2450E5628();
    v5 = sub_2450E59B8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2450C0EE8(v2[2], v2[3], &v16);
      _os_log_impl(&dword_24508F000, v4, v5, "Recovering... %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x245D63500](v7, -1, -1);
      MEMORY[0x245D63500](v6, -1, -1);
    }

    v8 = v2[2];
    v9 = v2[3];
    type metadata accessor for ClientServiceLauncher();
    v10 = swift_allocObject();
    type metadata accessor for ClientSharedAudioXPCConnection();
    swift_allocObject();

    *(v10 + 16) = sub_2450A7230(v8, v9, 0, 0);
    sub_24509FB3C();
    v2[4] = v10;
  }
}

uint64_t sub_2450C6444()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_2450C64A8()
{
  v1 = v0;
  type metadata accessor for ConfigurationRegistrar();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2450C3234(MEMORY[0x277D84F90]);
  *(v2 + 24) = 0;
  v1[3] = v2;
  type metadata accessor for OrchestratorConnections();
  v3 = swift_allocObject();
  type metadata accessor for ClientRegistry();
  swift_allocObject();
  v4 = sub_2450AB694(0);
  *(v3 + 16) = v4;
  type metadata accessor for ServerRegistrarXPCService();
  *(swift_allocObject() + 40) = v4;

  *(v3 + 24) = sub_2450B519C(0xD00000000000002ELL, 0x80000002450F3A50, 0xD000000000000032, 0x80000002450F3A80);
  v1[2] = v3;

  v5 = sub_2450CED70();

  type metadata accessor for OrchestratorEventSubscriptions();
  swift_allocObject();
  v1[4] = sub_2450BBCAC(v5);
  return v1;
}

uint64_t sub_2450C65F4(uint64_t a1)
{
  sub_2450CEA18(*(a1 + 16), &v7);
  if (v8)
  {
    sub_2450C5C34(&v7, v9);
    v2 = *(v1 + 24);
    v3 = __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v4 = sub_2450C6E68(*v3, v2);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    sub_2450C6E00(&v7);
    v4 = 0x80000002450F3A20;
    sub_2450B09A8();
    swift_allocError();
    *v5 = 0xD000000000000029;
    *(v5 + 8) = 0x80000002450F3A20;
    *(v5 + 16) = 2;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_2450C66D4(uint64_t a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (*(v4 + 16) && (v5 = sub_2450C8178(a1), (v6 & 1) != 0))
  {
    sub_2450AD6FC(*(v4 + 56) + 40 * v5, v9);
    sub_2450C5C34(v9, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_2450B0464();
    return __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    sub_2450B09A8();
    swift_allocError();
    *v8 = a1;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_2450C67B4(uint64_t a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (*(v4 + 16) && (v5 = sub_2450C8178(a1), (v6 & 1) != 0))
  {
    sub_2450AD6FC(*(v4 + 56) + 40 * v5, v13);
    sub_2450C5C34(v13, v14);
    v7 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v8 = *v7;
    [*(*v7 + 16) lock];
    swift_beginAccess();
    v9 = sub_2450DC8C0(*(v8 + 24));
    [*(v8 + 16) unlock];
    if (v9)
    {
      sub_2450CCE4C();
    }

    else
    {
      sub_2450B09A8();
      swift_allocError();
      *v12 = 0xD000000000000014;
      *(v12 + 8) = 0x80000002450F2DE0;
      *(v12 + 16) = 2;
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    sub_2450B09A8();
    swift_allocError();
    *v10 = a1;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }
}

unint64_t sub_2450C692C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2450CEA18(1751741300, &v11);
  if (v12)
  {
    sub_2450C5C34(&v11, v13);
    v4 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v5 = *v4;
    [*(*v4 + 16) lock];
    swift_beginAccess();
    v6 = sub_2450DC8D8(*(v5 + 24));
    [*(v5 + 16) unlock];
    if (v6)
    {
      sub_2450CD678(a1);
      v3 = v7;
    }

    else
    {
      v3 = 0x80000002450F2DE0;
      sub_2450B09A8();
      swift_allocError();
      *v9 = 0xD000000000000014;
      *(v9 + 8) = 0x80000002450F2DE0;
      *(v9 + 16) = 2;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    sub_2450C6E00(&v11);
    sub_2450B09A8();
    swift_allocError();
    *v8 = xmmword_2450EDEF0;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2450C6AB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2450CEA18(1751741300, &v12);
  if (v13)
  {
    sub_2450C5C34(&v12, v14);
    v6 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v7 = *v6;
    [*(*v6 + 16) lock];
    swift_beginAccess();
    v8 = sub_2450DC8D8(*(v7 + 24));
    [*(v7 + 16) unlock];
    if (v8)
    {
      sub_2450CD838(a1, a2, a3);
    }

    else
    {
      sub_2450B09A8();
      swift_allocError();
      *v11 = 0xD000000000000014;
      *(v11 + 8) = 0x80000002450F2DE0;
      *(v11 + 16) = 2;
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    sub_2450C6E00(&v12);
    sub_2450B09A8();
    swift_allocError();
    *v9 = xmmword_2450EDEF0;
    *(v9 + 16) = 0;
    return swift_willThrow();
  }
}

BOOL sub_2450C6C38(uint64_t a1)
{
  v1 = a1;
  sub_2450CEA18(a1, &v8);
  if (v9)
  {
    sub_2450C5C34(&v8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v2 = sub_2450B08C0();
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    sub_2450C6E00(&v8);
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v3 = sub_2450E5638();
    __swift_project_value_buffer(v3, qword_27EE0AEC8);
    v4 = sub_2450E5628();
    v5 = sub_2450E59A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v1;
      _os_log_impl(&dword_24508F000, v4, v5, "No client for provided use case ID: %u!", v6, 8u);
      MEMORY[0x245D63500](v6, -1, -1);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_2450C6D94()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2450C6E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D58, &qword_2450EDDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2450C6E68(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for HADRegisteredClient();
  v9[3] = result;
  v9[4] = &off_2858011B0;
  v9[0] = a1;
  v5 = *(a2 + 24);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 24) = v6;
    sub_2450AD6FC(v9, v7);
    swift_beginAccess();

    sub_2450D37D0(v7, v6, v8);
    sub_2450C6E00(v8);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v6;
  }

  return result;
}

uint64_t sub_2450C6F2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2450C6F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2450C6FD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7DA0, &qword_2450EE098);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2450EE060;
  *(inited + 32) = 1936290409;
  type metadata accessor for Route();
  v1 = swift_allocObject();
  *(v1 + 16) = 1751741300;
  v2 = sub_2450AEB38(1751741300);
  v3 = type metadata accessor for ExclaveAudioFormat();
  v4 = [objc_allocWithZone(v3) initFormat_];

  *(v1 + 24) = v4;
  *(inited + 40) = v1;
  *(inited + 48) = 1836346212;
  v5 = swift_allocObject();
  *(v5 + 16) = 1836346212;
  v6 = sub_2450AEB38(1836346212);
  v7 = [objc_allocWithZone(v3) initFormat_];

  *(v5 + 24) = v7;
  *(inited + 56) = v5;
  *(inited + 64) = 1819309171;
  v8 = swift_allocObject();
  *(v8 + 16) = 1751741300;
  v9 = sub_2450AEB38(1751741300);
  v10 = [objc_allocWithZone(v3) initFormat_];

  *(v8 + 24) = v10;
  *(inited + 72) = v8;
  v11 = sub_2450C2F18(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7DA8, &unk_2450EE0A0);
  result = swift_arrayDestroy();
  off_27EDF7D98 = v11;
  return result;
}

uint64_t getEnumTagSinglePayload for RouteCatalogError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RouteCatalogError(uint64_t result, int a2, int a3)
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

unint64_t sub_2450C7230()
{
  v1 = 0x7461676572676761;
  v2 = *v0;
  v3 = 0xD000000000000011;
  v4 = 0x697665446E69616DLL;
  if (v2 != 4)
  {
    v4 = 0x4965736143657375;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0x73656369766564;
  if (v2 == 1)
  {
    v5 = 0x7461676572676761;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2450C72FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2450C7D2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2450C7330(uint64_t a1)
{
  v2 = sub_2450C7B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450C736C(uint64_t a1)
{
  v2 = sub_2450C7B38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450C73A8()
{

  return MEMORY[0x2821FE8D8](v0, 77, 7);
}

uint64_t sub_2450C741C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7DD0, &qword_2450EE1D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450C7B38();
  sub_2450E5F58();
  LOBYTE(v12) = 0;
  sub_2450E5DC8();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_2450E5DC8();
    v12 = *(v3 + 48);
    BYTE4(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7DC0, &qword_2450EE1D0);
    sub_2450C7B8C(&qword_27EDF7DD8, &qword_27EDF69B0, &unk_2450E79A0, MEMORY[0x277D83948]);
    sub_2450E5E08();
    LOBYTE(v12) = 3;
    sub_2450E5DF8();
    v12 = *(v3 + 64);
    BYTE4(v11) = 4;
    type metadata accessor for AudioDeviceInfo();
    sub_2450AADC4(&qword_27EDF69B0, &unk_2450E79A0);
    sub_2450E5D98();
    v10 = *(v3 + 76);
    LOBYTE(v12) = 5;
    BYTE4(v11) = v10;
    sub_2450E5DA8();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_2450C76FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7DB0, &qword_2450EE1C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450C7B38();
  sub_2450E5F48();
  if (v2)
  {
    type metadata accessor for AggregateDescription();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15) = 0;
    v1[2] = sub_2450E5CC8();
    v1[3] = v9;
    LOBYTE(v15) = 1;
    v1[4] = sub_2450E5CC8();
    v1[5] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7DC0, &qword_2450EE1D0);
    v14 = 2;
    sub_2450C7B8C(&qword_27EDF7DC8, &qword_27EDF6840, &unk_2450E79C8, MEMORY[0x277D83978]);
    sub_2450E5D08();
    v1[6] = v15;
    LOBYTE(v15) = 3;
    v1[7] = sub_2450E5CF8();
    type metadata accessor for AudioDeviceInfo();
    v14 = 4;
    sub_2450AADC4(&qword_27EDF6840, &unk_2450E79C8);
    sub_2450E5C98();
    v1[8] = v15;
    LOBYTE(v15) = 5;
    v12 = sub_2450E5CA8();
    (*(v6 + 8))(v8, v5);
    *(v3 + 18) = v12;
    *(v3 + 76) = BYTE4(v12) & 1;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

void *sub_2450C7ABC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AggregateDescription();
  v5 = swift_allocObject();
  result = sub_2450C76FC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_2450C7B38()
{
  result = qword_27EDF7DB8;
  if (!qword_27EDF7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7DB8);
  }

  return result;
}

uint64_t sub_2450C7B8C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7DC0, &qword_2450EE1D0);
    sub_2450AADC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2450C7C28()
{
  result = qword_27EDF7DE0;
  if (!qword_27EDF7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7DE0);
  }

  return result;
}

unint64_t sub_2450C7C80()
{
  result = qword_27EDF7DE8;
  if (!qword_27EDF7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7DE8);
  }

  return result;
}

unint64_t sub_2450C7CD8()
{
  result = qword_27EDF7DF0;
  if (!qword_27EDF7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7DF0);
  }

  return result;
}

uint64_t sub_2450C7D2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7461676572676761 && a2 == 0xEC00000044495565;
  if (v3 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xED0000656D614E65 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002450F3B40 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x697665446E69616DLL && a2 == 0xEA00000000006563 || (sub_2450E5E68() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4965736143657375 && a2 == 0xE900000000000044)
  {

    return 5;
  }

  else
  {
    v6 = sub_2450E5E68();

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

uint64_t sub_2450C7F5C(uint64_t a1)
{
  v2 = v1;
  result = sub_2450C8178(a1);
  if (v4)
  {
    v5 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    v8 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2450C9100();
      v7 = v8;
    }

    swift_unknownObjectRelease();
    result = sub_2450C874C(v5, v7);
    *v2 = v7;
  }

  return result;
}

unint64_t sub_2450C7FE0(uint64_t a1, uint64_t a2)
{
  sub_2450E5EF8();
  sub_2450E5838();
  v4 = sub_2450E5F38();

  return sub_2450C82F0(a1, a2, v4);
}

unint64_t sub_2450C8058(unint64_t a1)
{
  sub_2450E5EF8();
  sub_2450E5F18();
  if ((a1 & 0x100000000) == 0)
  {
    sub_2450E5F28();
  }

  v2 = sub_2450E5F38();

  return sub_2450C83A8(a1 | ((HIDWORD(a1) & 1) << 32), v2);
}

unint64_t sub_2450C80E8(uint64_t a1, char a2)
{
  sub_2450E5EF8();
  sub_2450E5F18();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x245D62B90](a1);
  }

  v4 = sub_2450E5F38();

  return sub_2450C842C(a1, a2 & 1, v4);
}

unint64_t sub_2450C81B4(uint64_t a1)
{
  v2 = sub_2450E5AE8();

  return sub_2450C84B0(a1, v2);
}

unint64_t sub_2450C81F8(char a1)
{
  sub_2450E5EF8();
  sub_2450E5838();

  v2 = sub_2450E5F38();

  return sub_2450C8578(a1 & 1, v2);
}

unint64_t sub_2450C8284(uint64_t a1)
{
  v1 = a1;
  sub_2450E5EF8();
  sub_2450E5F28();
  v2 = sub_2450E5F38();

  return sub_2450C8674(v1, v2);
}

unint64_t sub_2450C82F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2450E5E68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2450C83A8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2450C842C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2450C84B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2450C5B70(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D62780](v9, a1);
      sub_2450B883C(v9);
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

unint64_t sub_2450C8578(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 4473165;
    }

    else
    {
      v6 = 4473160;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 4473165 : 4473160;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_2450E5E68();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_2450C8674(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2450C86E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_2450C874C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2450E5A28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_2450E5EE8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2450C88BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2450E5A28() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_2450E5EE8();
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

uint64_t sub_2450C8A38(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2450E5A28() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      sub_2450E5EF8();
      sub_2450E5F18();
      if (v12 != 1)
      {
        MEMORY[0x245D62B90](v11);
      }

      result = sub_2450E5F38();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_12;
      }

      if (v3 >= v13)
      {
LABEL_12:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + v9);
        if (16 * v3 != v9 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
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

uint64_t sub_2450C8C00(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2450E5A28() + 1) & ~v5;
    do
    {
      v9 = 8 * v6;
      v10 = *(*(a2 + 48) + 8 * v6 + 4);
      sub_2450E5EF8();
      sub_2450E5F18();
      if (v10 != 1)
      {
        sub_2450E5F28();
      }

      result = sub_2450E5F38();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_12;
      }

      if (v3 >= v11)
      {
LABEL_12:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + v9);
        if (8 * v3 != v9 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2450C8DC8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2450E5A28() + 1) & ~v5;
    do
    {
      sub_2450E5EF8();

      sub_2450E5838();
      v9 = sub_2450E5F38();

      v10 = v9 & v7;
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
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
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

unint64_t sub_2450C8F78(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2450E5A28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_2450E5EE8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          result = v15 + 96 * v3;
          v16 = (v15 + 96 * v6);
          if (96 * v3 < (96 * v6) || result >= v16 + 96 || v3 != v6)
          {
            result = memmove(result, v16, 0x60uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

void *sub_2450C9100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CC8, &qword_2450EDD28);
  v2 = *v0;
  v3 = sub_2450E5C08();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = swift_unknownObjectRetain();
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

void *sub_2450C9264()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CE0, &unk_2450EDD40);
  v2 = *v0;
  v3 = sub_2450E5C08();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_2450C93C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CE8, &unk_2450EE350);
  v2 = *v0;
  v3 = sub_2450E5C08();
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
        sub_2450AD6FC(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_2450C5C34(v19, *(v4 + 56) + 40 * v17);
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

void *sub_2450C9540()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CB0, &qword_2450EDD10);
  v2 = *v0;
  v3 = sub_2450E5C08();
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_2450C96B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CB8, &qword_2450EDD18);
  v2 = *v0;
  v3 = sub_2450E5C08();
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 4);
        v20 = *(*(v2 + 56) + v17);
        v21 = *(v4 + 48) + v17;
        *v21 = v19;
        *(v21 + 4) = v18;
        *(*(v4 + 56) + v17) = v20;
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

void *sub_2450C9820()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CC0, &qword_2450EDD20);
  v2 = *v0;
  v3 = sub_2450E5C08();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_2450C9990()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7DF8, &qword_2450EE348);
  v2 = *v0;
  v3 = sub_2450E5C08();
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
        result = sub_2450C9B28(*(v2 + 56) + 96 * v17, v24);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = (*(v4 + 56) + 96 * v17);
        v20 = v24[1];
        *v19 = v24[0];
        v19[1] = v20;
        v21 = v24[2];
        v22 = v24[3];
        v23 = v25[0];
        *(v19 + 73) = *(v25 + 9);
        v19[3] = v22;
        v19[4] = v23;
        v19[2] = v21;
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

void *sub_2450C9B84(uint64_t a1)
{
  v2 = sub_2450C3028(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v19 = *i;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = sub_2450C8178(ObjectType);
    v9 = v2[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      break;
    }

    v13 = v8;
    if (v2[3] < v12)
    {
      sub_2450DD4B0(v12, isUniquelyReferenced_nonNull_native);
      v7 = sub_2450C8178(ObjectType);
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v13)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v17 = v7;
    sub_2450C9100();
    v7 = v17;
    if (v13)
    {
LABEL_3:
      *(v2[7] + 16 * v7) = v19;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_4;
    }

LABEL_11:
    v2[(v7 >> 6) + 8] |= 1 << v7;
    *(v2[6] + 8 * v7) = ObjectType;
    *(v2[7] + 16 * v7) = v19;
    swift_unknownObjectRelease();
    v15 = v2[2];
    v11 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (v11)
    {
      goto LABEL_17;
    }

    v2[2] = v16;
LABEL_4:
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_2450E5E88();
  __break(1u);
  return result;
}

uint64_t sub_2450C9D34()
{
  sub_2450C9E8C();
  result = sub_2450E59C8();
  qword_27EE0AEC0 = result;
  return result;
}

uint64_t sub_2450C9D9C()
{
  v0 = sub_2450E5638();
  __swift_allocate_value_buffer(v0, qword_27EE0AEC8);
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  if (qword_27EDF6740 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE0AEC0;
  return sub_2450E5648();
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

unint64_t sub_2450C9E8C()
{
  result = qword_27EDF7E00;
  if (!qword_27EDF7E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDF7E00);
  }

  return result;
}

uint64_t OrchestratorClientUID.rawValue.getter()
{
  if (*v0)
  {
    return 4473165;
  }

  else
  {
    return 4473160;
  }
}

uint64_t static OrchestratorClientUID.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 4473165;
  }

  else
  {
    v2 = 4473160;
  }

  if (*a2)
  {
    v3 = 4473165;
  }

  else
  {
    v3 = 4473160;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_2450E5E68();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

CoreAudioOrchestration::OrchestratorClientUID_optional __swiftcall OrchestratorClientUID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2450E5C38();

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

  *v2 = v5;
  return result;
}

uint64_t sub_2450C9FFC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 4473165;
  }

  else
  {
    v2 = 4473160;
  }

  if (*a2)
  {
    v3 = 4473165;
  }

  else
  {
    v3 = 4473160;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2450E5E68();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2450CA074(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 4473165;
  }

  else
  {
    v2 = 4473160;
  }

  if (*a2)
  {
    v3 = 4473165;
  }

  else
  {
    v3 = 4473160;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_2450E5E68();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2450CA0EC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 4473165;
  }

  else
  {
    v3 = 4473160;
  }

  if (v2)
  {
    v4 = 4473165;
  }

  else
  {
    v4 = 4473160;
  }

  if (v3 == v4)
  {
    swift_bridgeObjectRelease_n();
    v5 = 1;
  }

  else
  {
    v6 = sub_2450E5E68();
    swift_bridgeObjectRelease_n();
    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_2450CA174(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 4473165;
  }

  else
  {
    v2 = 4473160;
  }

  if (*a2)
  {
    v3 = 4473165;
  }

  else
  {
    v3 = 4473160;
  }

  if (v2 == v3)
  {
    swift_bridgeObjectRelease_n();
    v4 = 1;
  }

  else
  {
    v5 = sub_2450E5E68();
    swift_bridgeObjectRelease_n();
    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2450CA1FC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 4473165;
  }

  else
  {
    v3 = 4473160;
  }

  if (v2)
  {
    v4 = 4473165;
  }

  else
  {
    v4 = 4473160;
  }

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_2450E5E68();
  }

  swift_bridgeObjectRelease_n();
  return v5 & 1;
}

uint64_t sub_2450CA274()
{
  sub_2450E5EF8();
  sub_2450E5838();

  return sub_2450E5F38();
}

uint64_t sub_2450CA2DC(uint64_t a1)
{
  sub_2450E5838();
}

uint64_t sub_2450CA328(uint64_t a1)
{
  sub_2450E5EF8();
  sub_2450E5838();

  return sub_2450E5F38();
}

uint64_t sub_2450CA38C@<X0>(char *a2@<X8>)
{
  v3 = sub_2450E5C38();

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

void sub_2450CA3EC(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 4473165;
  }

  else
  {
    v2 = 4473160;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t CreateOrchestratorClientPortal(clientUID:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    if (v3)
    {
      v9 = 4473165;
    }

    else
    {
      v9 = 4473160;
    }

    v10 = sub_2450C0EE8(v9, 0xE300000000000000, &v12);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_24508F000, v5, v6, "Received CreateOrchestratorClientPortal for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245D63500](v8, -1, -1);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  type metadata accessor for ClientServiceFactory();
  v13 = v3;
  return sub_2450D8904(&v13, a2);
}

unint64_t sub_2450CA640()
{
  result = qword_27EDF7E08;
  if (!qword_27EDF7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7E08);
  }

  return result;
}

unint64_t sub_2450CA6A8()
{
  result = qword_27EDF7E10;
  if (!qword_27EDF7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7E10);
  }

  return result;
}

uint64_t sub_2450CA700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = MEMORY[0x277D84F90];
  v3 = *(a3 + 48);
  v51 = a3;
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_2450E5A48();
    type metadata accessor for AudioDeviceInfo();
    sub_2450CB9D8();
    sub_2450E5948();
    v5 = v54;
    v4 = v55;
    v6 = v56;
    v7 = v57;
    v8 = v58;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    v5 = *(a3 + 48);
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_23:
      sub_24509BD4C(v5);

      v20 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }

    while (1)
    {
      v19 = *(v17 + 24) == 0x6964754120504F41 && *(v17 + 32) == 0xEB00000000312D6FLL;
      if (v19 || (sub_2450E5E68() & 1) != 0)
      {
        sub_24509BD4C(v5);

        MEMORY[0x245D62530](v21);
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_55;
      }

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v18 = sub_2450E5AB8();
      if (v18)
      {
        v52 = v18;
        type metadata accessor for AudioDeviceInfo();
        swift_dynamicCast();
        v17 = v59;
        v15 = v7;
        v16 = v8;
        if (v59)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_23;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_55:
    sub_2450E58B8();
LABEL_25:
    sub_2450E58C8();

    v20 = v53;
LABEL_26:
    v50 = v20;
    v22 = *(v51 + 48);
    if ((v22 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_2450E5A48();
      type metadata accessor for AudioDeviceInfo();
      sub_2450CB9D8();
      sub_2450E5948();
      v24 = v59;
      v23 = v60;
      v25 = v61;
      v26 = v62;
      v27 = v63;
    }

    else
    {
      v28 = -1 << *(v22 + 32);
      v23 = v22 + 56;
      v25 = ~v28;
      v29 = -v28;
      v30 = v29 < 64 ? ~(-1 << v29) : -1;
      v27 = v30 & *(v22 + 56);
      swift_bridgeObjectRetain_n();
      v26 = 0;
      v24 = v22;
    }

    v51 = v25;
    v31 = (v25 + 64) >> 6;
    if (v24 < 0)
    {
      break;
    }

LABEL_33:
    v32 = v26;
    v33 = v27;
    v34 = v26;
    if (v27)
    {
LABEL_37:
      v35 = (v33 - 1) & v33;
      v36 = *(*(v24 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));

      if (v36)
      {
        goto LABEL_41;
      }

      goto LABEL_48;
    }

    while (1)
    {
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v34 >= v31)
      {
        goto LABEL_48;
      }

      v33 = *(v23 + 8 * v34);
      ++v32;
      if (v33)
      {
        goto LABEL_37;
      }
    }
  }

  while (sub_2450E5AB8())
  {
    type metadata accessor for AudioDeviceInfo();
    swift_dynamicCast();
    v36 = v52;
    v34 = v26;
    v35 = v27;
    if (!v52)
    {
      break;
    }

LABEL_41:
    v37 = *(v36 + 24) == 0x5472656B61657053 && *(v36 + 32) == 0xEA00000000007061;
    if (v37 || (sub_2450E5E68() & 1) != 0)
    {
      sub_24509BD4C(v24);

      MEMORY[0x245D62530](v41);
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2450E58B8();
      }

      sub_2450E58C8();

      v40 = v53;
      v39 = a1;
      v38 = a2;
      goto LABEL_52;
    }

    v26 = v34;
    v27 = v35;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_48:
  sub_24509BD4C(v24);

  v39 = a1;
  v38 = a2;
  v40 = v50;
LABEL_52:

  MEMORY[0x245D624D0](1145656608, 0xE400000000000000);
  v42 = [*(v47 + 24) framesPerIO];
  v43 = sub_2450E5958();

  v44 = *(v47 + 16);
  type metadata accessor for AggregateDescription();
  v45 = swift_allocObject();
  *(v45 + 16) = v39;
  *(v45 + 24) = v38;
  *(v45 + 32) = v39;
  *(v45 + 40) = v38;
  *(v45 + 48) = v40;
  *(v45 + 56) = v43;
  *(v45 + 64) = 0;
  *(v45 + 72) = v44;
  *(v45 + 76) = 0;

  return v45;
}

unint64_t sub_2450CACC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  if (qword_27EDF6748 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v7 = sub_2450E5638();
    __swift_project_value_buffer(v7, qword_27EE0AEC8);
    v8 = sub_2450E5628();
    v9 = sub_2450E59B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24508F000, v8, v9, "getADMConfigurationHAD", v10, 2u);
      MEMORY[0x245D63500](v10, -1, -1);
    }

    v11 = *(a1 + 48);
    v88 = v4;
    v89 = a2;
    v92 = a1;
    if ((v11 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_2450E5A48();
      type metadata accessor for AudioDeviceInfo();
      sub_2450CB9D8();
      sub_2450E5948();
      a2 = v94[1];
      v12 = v94[2];
      v13 = v94[3];
      v4 = v94[4];
      v14 = v94[5];
    }

    else
    {
      v15 = -1 << *(v11 + 32);
      v12 = v11 + 56;
      v13 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v14 = v17 & *(v11 + 56);
      a2 = *(a1 + 48);
      swift_bridgeObjectRetain_n();
      v4 = 0;
    }

    a1 = 0x6964754120504F41;
    v18 = (v13 + 64) >> 6;
    if ((a2 & 0x8000000000000000) == 0)
    {
LABEL_11:
      v19 = v4;
      v20 = v14;
      for (i = v4; !v20; ++v19)
      {
        i = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_112;
        }

        if (i >= v18)
        {
          goto LABEL_26;
        }

        v20 = *(v12 + 8 * i);
      }

      v22 = (v20 - 1) & v20;
      v3 = *(*(a2 + 48) + ((i << 9) | (8 * __clz(__rbit64(v20)))));

      if (!v3)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    while (1)
    {
      v23 = sub_2450E5AB8();
      if (!v23)
      {
        break;
      }

      v94[0] = v23;
      type metadata accessor for AudioDeviceInfo();
      swift_dynamicCast();
      v3 = v95[0];
      i = v4;
      v22 = v14;
      if (!v95[0])
      {
        break;
      }

LABEL_19:
      v24 = *(v3 + 24) == 0x6964754120504F41 && *(v3 + 32) == 0xEB00000000312D6FLL;
      if (v24 || (sub_2450E5E68() & 1) != 0)
      {
        sub_24509BD4C(a2);

        v46 = sub_245096644();
        if (v46 >> 62)
        {
          goto LABEL_123;
        }

        v25 = v92;
        if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_124:

          goto LABEL_27;
        }

        while ((v46 & 0xC000000000000001) == 0)
        {
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v63 = *(v46 + 32);

LABEL_98:

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E18, &qword_2450EE5B0);
            v64 = swift_allocObject();
            *(v64 + 16) = xmmword_2450EE570;
            a2 = v64;
            *(v64 + 32) = v63;

            v65 = sub_2450E5628();
            v66 = sub_2450E59B8();

            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              v68 = v25;
              v69 = swift_slowAlloc();
              v95[0] = v69;
              *v67 = 136315138;
              v70 = *(v3 + 24);
              v71 = *(v3 + 32);

              v72 = sub_2450C0EE8(v70, v71, v95);

              *(v67 + 4) = v72;
              _os_log_impl(&dword_24508F000, v65, v66, "getADMConfiguration input device: %s", v67, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v69);
              v73 = v69;
              v25 = v68;
              MEMORY[0x245D63500](v73, -1, -1);
              MEMORY[0x245D63500](v67, -1, -1);
            }

            goto LABEL_30;
          }

          __break(1u);
LABEL_129:
          v74 = MEMORY[0x245D627F0](0);
LABEL_106:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E18, &qword_2450EE5B0);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_2450EE570;
          v44 = v75;
          *(v75 + 32) = v74;

          v76 = sub_2450E5628();
          v77 = sub_2450E59B8();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v94[0] = v79;
            *v78 = 136315138;
            v80 = *(v3 + 24);
            v81 = *(v3 + 32);

            v82 = sub_2450C0EE8(v80, v81, v94);

            *(v78 + 4) = v82;
            _os_log_impl(&dword_24508F000, v76, v77, "getADMConfiguration reference device: %s", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v79);
            MEMORY[0x245D63500](v79, -1, -1);
            MEMORY[0x245D63500](v78, -1, -1);
          }

LABEL_56:
          v93 = v44;
          v4 = v90 >> 62;
          if (v90 >> 62)
          {
            v45 = sub_2450E5A88();
          }

          else
          {
            v45 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a2 = MEMORY[0x277D84F90];
          if (v45)
          {
            v94[0] = MEMORY[0x277D84F90];

            v46 = sub_2450CBA30(0, v45 & ~(v45 >> 63), 0);
            if ((v45 & 0x8000000000000000) == 0)
            {
              v47 = v94[0];
              v92 = v90 >> 62;
              v48 = v90;
              if (v4)
              {
                v49 = sub_2450E5A88();
              }

              else
              {
                v49 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v50 = 0;
              a2 = v90 & 0xC000000000000001;
              a1 = v49 & ~(v49 >> 63);
              while (a1 != v50)
              {
                if (a2)
                {
                  v4 = MEMORY[0x245D627F0](v50, v48);
                }

                else
                {
                  if (v50 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_114;
                  }

                  v4 = *(v48 + 8 * v50 + 32);
                }

                v94[0] = v47;
                v52 = *(v47 + 16);
                v51 = *(v47 + 24);
                v3 = v52 + 1;
                if (v52 >= v51 >> 1)
                {
                  sub_2450CBA30((v51 > 1), v52 + 1, 1);
                  v48 = v90;
                  v47 = v94[0];
                }

                v53 = v47 + 16 * v52;
                *(v53 + 32) = v4;
                *(v53 + 40) = v50;
                *(v47 + 16) = v3;
                if (v45 == ++v50)
                {

                  a2 = MEMORY[0x277D84F90];
                  v4 = v90 >> 62;
                  goto LABEL_74;
                }
              }

              __break(1u);
              goto LABEL_110;
            }

            __break(1u);
          }

          else
          {
            v47 = MEMORY[0x277D84F90];
LABEL_74:
            if (v93 >> 62)
            {
              v54 = sub_2450E5A88();
              if (!v54)
              {
LABEL_119:

                v55 = MEMORY[0x277D84F90];
LABEL_120:
                v83 = *(v88 + 16);
                *v89 = v47;
                *(v89 + 8) = v55;
                *(v89 + 16) = a2;
                *(v89 + 24) = 1024;
                *(v89 + 32) = v83;
                *(v89 + 36) = 0;
                return result;
              }
            }

            else
            {
              v54 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v54)
              {
                goto LABEL_119;
              }
            }

            v94[0] = a2;
            v46 = sub_2450CBA30(0, v54 & ~(v54 >> 63), 0);
            if ((v54 & 0x8000000000000000) == 0)
            {
              v55 = v94[0];
              if (v93 >> 62)
              {
                v56 = sub_2450E5A88();
                if (!v4)
                {
                  goto LABEL_81;
                }

LABEL_79:
                v91 = sub_2450E5A88();
              }

              else
              {
                v56 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v4)
                {
                  goto LABEL_79;
                }

LABEL_81:
                v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v57 = v93;
              v4 = 0;
              a1 = v56 & ~(v56 >> 63);
              while (a1 != v4)
              {
                if ((v93 & 0xC000000000000001) != 0)
                {
                  v3 = MEMORY[0x245D627F0](v4, v57);
                }

                else
                {
                  if (v4 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_115;
                  }

                  v3 = *(v57 + 8 * v4 + 32);
                }

                v58 = v4 + v91;
                if (__OFADD__(v4, v91))
                {
                  goto LABEL_111;
                }

                a2 = v54;
                v94[0] = v55;
                v60 = *(v55 + 16);
                v59 = *(v55 + 24);
                if (v60 >= v59 >> 1)
                {
                  sub_2450CBA30((v59 > 1), v60 + 1, 1);
                  v55 = v94[0];
                }

                ++v4;
                *(v55 + 16) = v60 + 1;
                v61 = v55 + 16 * v60;
                *(v61 + 32) = v3;
                *(v61 + 40) = v58;
                v57 = v93;
                if (v54 == v4)
                {

                  a2 = MEMORY[0x277D84F90];
                  goto LABEL_120;
                }
              }

LABEL_110:
              __break(1u);
LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
              goto LABEL_113;
            }
          }

          __break(1u);
LABEL_123:
          v84 = v46;
          v85 = sub_2450E5A88();
          v46 = v84;
          v25 = v92;
          if (!v85)
          {
            goto LABEL_124;
          }
        }

        v63 = MEMORY[0x245D627F0](0);
        goto LABEL_98;
      }

      v4 = i;
      v14 = v22;
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_26:
    sub_24509BD4C(a2);

    v25 = v92;
LABEL_27:
    v26 = sub_2450E5628();
    v27 = sub_2450E59B8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_24508F000, v26, v27, "getADMConfiguration no default input device/stream", v28, 2u);
      MEMORY[0x245D63500](v28, -1, -1);
    }

    a2 = MEMORY[0x277D84F90];
LABEL_30:
    v90 = a2;
    a1 = *(v25 + 48);
    if ((a1 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_2450E5A48();
      type metadata accessor for AudioDeviceInfo();
      sub_2450CB9D8();
      sub_2450E5948();
      v30 = v95[0];
      v29 = v95[1];
      v31 = v95[2];
      v4 = v95[3];
      v32 = v95[4];
    }

    else
    {
      v33 = -1 << *(a1 + 32);
      v29 = a1 + 56;
      v31 = ~v33;
      v34 = -v33;
      v35 = v34 < 64 ? ~(-1 << v34) : -1;
      v32 = v35 & *(a1 + 56);
      swift_bridgeObjectRetain_n();
      v4 = 0;
      v30 = a1;
    }

    v92 = v31;
    v36 = (v31 + 64) >> 6;
    if (v30 < 0)
    {
      break;
    }

LABEL_37:
    v37 = v4;
    v38 = v32;
    v39 = v4;
    if (v32)
    {
LABEL_41:
      a2 = (v38 - 1) & v38;
      v3 = *(*(v30 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));

      if (v3)
      {
        goto LABEL_45;
      }

LABEL_52:
      sub_24509BD4C(v30);

      goto LABEL_53;
    }

    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v36)
      {
        goto LABEL_52;
      }

      v38 = *(v29 + 8 * v39);
      ++v37;
      if (v38)
      {
        goto LABEL_41;
      }
    }

LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
  }

  while (1)
  {
    if (!sub_2450E5AB8())
    {
      goto LABEL_52;
    }

    type metadata accessor for AudioDeviceInfo();
    swift_dynamicCast();
    v3 = v94[0];
    v39 = v4;
    a2 = v32;
    if (!v94[0])
    {
      goto LABEL_52;
    }

LABEL_45:
    v40 = *(v3 + 24) == 0x5472656B61657053 && *(v3 + 32) == 0xEA00000000007061;
    if (v40 || (sub_2450E5E68() & 1) != 0)
    {
      break;
    }

    v4 = v39;
    v32 = a2;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }
  }

  sub_24509BD4C(v30);

  result = sub_245096644();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_103;
    }

LABEL_126:

LABEL_53:
    v41 = sub_2450E5628();
    v42 = sub_2450E59B8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_24508F000, v41, v42, "getADMConfiguration no default reference device/stream", v43, 2u);
      MEMORY[0x245D63500](v43, -1, -1);
    }

    v44 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  v86 = result;
  v87 = sub_2450E5A88();
  result = v86;
  if (!v87)
  {
    goto LABEL_126;
  }

LABEL_103:
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_129;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v74 = *(result + 32);

    goto LABEL_106;
  }

  __break(1u);
  return result;
}

uint64_t sub_2450CB97C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_2450CB9D8()
{
  result = qword_27EDF69B8;
  if (!qword_27EDF69B8)
  {
    type metadata accessor for AudioDeviceInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69B8);
  }

  return result;
}

char *sub_2450CBA30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2450CBA70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2450CBA50(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2450CBB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2450CBA70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E20, &qword_2450EE5B8);
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

char *sub_2450CBB7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E28, &unk_2450EE5C0);
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

uint64_t sub_2450CBC88()
{
  v2 = *(v0 + 16);
  if (!v2)
  {
    goto LABEL_7;
  }

  *v10 = 1;
  memset(&v10[8], 0, 48);
  *&v10[56] = 0x3000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E68, &qword_2450EE648);
  sub_2450A29B4();
  sub_2450CDC00();
  sub_2450E56A8();
  if (!v1)
  {
    v6 = *v10;
    v7 = *&v10[16];
    v8 = *&v10[32];
    v9 = *&v10[48];
    sub_2450AD478(&v6);
    if (v13 != 255)
    {
      v2 = v11;
      if ((v13 & 1) == 0)
      {
        return v2;
      }

      v3 = v12;
      sub_24509E850();
      swift_allocError();
      *v4 = v2;
      v4[1] = v3;
LABEL_8:
      swift_willThrow();
      return v2;
    }

LABEL_7:
    sub_2450A7C24();
    swift_allocError();
    goto LABEL_8;
  }

  v6 = *v10;
  v7 = *&v10[16];
  v8 = *&v10[32];
  v9 = *&v10[48];
  sub_2450AD478(&v6);
  return v2;
}

uint64_t sub_2450CBDE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(v2 + 16))
  {
    goto LABEL_5;
  }

  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 8);
  v26 = *(a1 + 36) & 1;
  *&v22 = v5;
  *(&v22 + 1) = v6;
  *&v23 = v7;
  *(&v23 + 1) = v8;
  LODWORD(v24) = v9;
  BYTE4(v24) = v26;
  *(&v24 + 1) = 0;
  *(&v25 + 1) = 0x1000000000000000;
  v33 = v6;
  v34 = v5;
  v32 = v7;
  sub_2450CDC9C(&v34, &v18);
  sub_2450CDC9C(&v33, &v18);
  sub_2450CDC9C(&v32, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E98, &qword_2450EE658);
  sub_2450A29B4();
  sub_2450CDDD0();
  sub_2450E56A8();
  if (v3)
  {
    v18 = v22;
    v19 = v23;
    v20 = v24;
    v21 = v25;
    return sub_2450AD478(&v18);
  }

  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  result = sub_2450AD478(&v18);
  v11 = v31;
  if (HIBYTE(v31) > 0xFEu)
  {
LABEL_5:
    sub_2450A7C24();
    swift_allocError();
    return swift_willThrow();
  }

  v12 = v27;
  v13 = v28;
  if ((v31 & 0x100) != 0)
  {
    v17 = v28;
    sub_24509E850();
    swift_allocError();
    *v16 = v12;
    v16[1] = v17;
    return swift_willThrow();
  }

  v14 = v29;
  v15 = v30;
  *a2 = v27;
  *(a2 + 8) = v13;
  *(a2 + 24) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_2450CBFB8(uint64_t *a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 8);
  v20 = *(a1 + 36) & 1;
  *&v16 = v4;
  *(&v16 + 1) = v5;
  *&v17 = v6;
  *(&v17 + 1) = v7;
  LODWORD(v18) = v8;
  BYTE4(v18) = v20;
  *(&v18 + 1) = 0x8000000000000000;
  *(&v19 + 1) = 0x1000000000000000;
  v25 = v5;
  v26 = v4;
  v24 = v6;
  sub_2450CDC9C(&v26, &v12);
  sub_2450CDC9C(&v25, &v12);
  sub_2450CDC9C(&v24, &v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E80, &qword_2450EE650);
  sub_2450A29B4();
  sub_2450CDD0C();
  sub_2450E56A8();
  if (!v2)
  {
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    sub_2450AD478(&v12);
    if (v23 != 255)
    {
      v3 = v21;
      v10 = v22;
      if (((v23 << 16) & 0x10000) == 0)
      {
        return v3;
      }

      sub_24509E850();
      swift_allocError();
      *v11 = v3;
      v11[1] = v10;
      goto LABEL_6;
    }

LABEL_5:
    sub_2450A7C24();
    swift_allocError();
LABEL_6:
    swift_willThrow();
    return v3;
  }

  v12 = v16;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  sub_2450AD478(&v12);
  return v3;
}

uint64_t sub_2450CC16C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(v2 + 16))
  {
    v10 = 0;
    v11 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
LABEL_5:
    sub_2450CDB28(v11, v10, 255);
    sub_2450A7C24();
    swift_allocError();
    return swift_willThrow();
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  *&v19 = *a1;
  *(&v19 + 1) = v5;
  v20 = v6;
  *&v21 = v7;
  *(&v21 + 1) = v8;
  *(&v22 + 1) = 0x2000000000000000;
  sub_2450A4E10(a1, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E50, &qword_2450EE638);
  sub_2450A29B4();
  sub_2450CDB64();
  sub_2450E56A8();
  if (v3)
  {
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    return sub_2450AD478(&v15);
  }

  v15 = v19;
  v16 = v20;
  v17 = v21;
  v18 = v22;
  result = sub_2450AD478(&v15);
  if (v25 == 255)
  {
    v11 = v23;
    v10 = v24;
    goto LABEL_5;
  }

  v13 = v23;
  v12 = v24;
  if (v25)
  {
    sub_24509E850();
    swift_allocError();
    *v14 = v13;
    v14[1] = v12;
    return swift_willThrow();
  }

  *a2 = v23;
  a2[1] = v12;
  return result;
}

uint64_t sub_2450CC304(__int128 *a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 6);
  v7 = *(a1 + 10) | 0x8000000000000000;
  v8 = *(a1 + 7) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v16 = *a1;
  v17 = v4;
  *&v18 = v5;
  *(&v18 + 1) = v7;
  *&v19 = v6;
  *(&v19 + 1) = v8;
  sub_2450A2644(a1, &v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E38, &unk_2450EE628);
  sub_2450A29B4();
  sub_2450CDA8C();
  sub_2450E56A8();
  if (!v2)
  {
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    sub_2450AD478(&v12);
    if (v22 != 255)
    {
      v3 = v20;
      if ((v22 & 1) == 0)
      {
        return v3;
      }

      v9 = v21;
      sub_24509E850();
      swift_allocError();
      *v10 = v3;
      v10[1] = v9;
LABEL_8:
      swift_willThrow();
      return v3;
    }

LABEL_7:
    sub_2450A7C24();
    swift_allocError();
    goto LABEL_8;
  }

  v12 = v16;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  sub_2450AD478(&v12);
  return v3;
}

uint64_t sub_2450CC460()
{
  if (!*(v0 + 16))
  {
    goto LABEL_6;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E38, &unk_2450EE628);
  sub_2450B6504();
  sub_2450CDA8C();
  sub_2450E56A8();
  if (v1)
  {
    return v2;
  }

  if (v7 == 255)
  {
LABEL_6:
    sub_2450A7C24();
    v2 = swift_allocError();
    swift_willThrow();
    return v2;
  }

  v2 = v5;
  if (v7)
  {
    sub_24509E850();
    swift_allocError();
    *v3 = v5;
    v3[1] = v6;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_2450CC55C(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  *&v11 = a1;
  *(&v13 + 1) = 0x8000000000000000;
  *(&v14 + 1) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E38, &unk_2450EE628);
  sub_2450A29B4();
  sub_2450CDA8C();
  sub_2450E56A8();
  if (!v2)
  {
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
    sub_2450AD478(&v7);
    if (v17 != 255)
    {
      v3 = v15;
      if ((v17 & 1) == 0)
      {
        return v3;
      }

      v4 = v16;
      sub_24509E850();
      swift_allocError();
      *v5 = v3;
      v5[1] = v4;
LABEL_8:
      swift_willThrow();
      return v3;
    }

LABEL_7:
    sub_2450A7C24();
    swift_allocError();
    goto LABEL_8;
  }

  v7 = v11;
  v8 = v12;
  v9 = v13;
  v10 = v14;
  sub_2450AD478(&v7);
  return v3;
}

uint64_t sub_2450CC6AC(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  *&v11 = a1;
  *(&v13 + 1) = 0;
  *(&v14 + 1) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E38, &unk_2450EE628);
  sub_2450A29B4();
  sub_2450CDA8C();
  sub_2450E56A8();
  if (!v2)
  {
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
    sub_2450AD478(&v7);
    if (v17 != 255)
    {
      v3 = v15;
      if ((v17 & 1) == 0)
      {
        return v3;
      }

      v4 = v16;
      sub_24509E850();
      swift_allocError();
      *v5 = v3;
      v5[1] = v4;
LABEL_8:
      swift_willThrow();
      return v3;
    }

LABEL_7:
    sub_2450A7C24();
    swift_allocError();
    goto LABEL_8;
  }

  v7 = v11;
  v8 = v12;
  v9 = v13;
  v10 = v14;
  sub_2450AD478(&v7);
  return v3;
}

uint64_t sub_2450CC7F8()
{
  v2 = *(v0 + 16);
  if (!v2)
  {
    goto LABEL_7;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  *&v13 = 0;
  *(&v13 + 1) = 0x3000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E38, &unk_2450EE628);
  sub_2450A29B4();
  sub_2450CDA8C();
  sub_2450E56A8();
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    v8 = v12;
    v9 = v13;
    sub_2450AD478(&v6);
    if (v16 != 255)
    {
      v2 = v14;
      if ((v16 & 1) == 0)
      {
        return v2;
      }

      v3 = v15;
      sub_24509E850();
      swift_allocError();
      *v4 = v2;
      v4[1] = v3;
LABEL_8:
      swift_willThrow();
      return v2;
    }

LABEL_7:
    sub_2450A7C24();
    swift_allocError();
    goto LABEL_8;
  }

  v6 = v10;
  v7 = v11;
  v8 = v12;
  v9 = v13;
  sub_2450AD478(&v6);
  return v2;
}

uint64_t sub_2450CC938(__int16 a1)
{
  v4 = type metadata accessor for CoreAudioOrchestratorServerXPC.Request(0);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (!v7)
  {
    goto LABEL_6;
  }

  *v6 = a1 & 1;
  v6[1] = HIBYTE(a1) & 1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E38, &unk_2450EE628);
  sub_2450CDEF0();
  sub_2450CDA8C();
  sub_2450E56A8();
  sub_2450CDF48(v6);
  if (v2)
  {
    return v7;
  }

  if (v12 == 255)
  {
LABEL_6:
    sub_2450A7C24();
    swift_allocError();
    goto LABEL_7;
  }

  v7 = v11[1];
  if (v12)
  {
    v8 = v11[2];
    sub_24509E850();
    swift_allocError();
    *v9 = v7;
    v9[1] = v8;
LABEL_7:
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2450CCAAC(char a1, uint64_t a2)
{
  v6 = type metadata accessor for CoreAudioOrchestratorServerXPC.Request(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  if (!v9)
  {
    goto LABEL_6;
  }

  *v8 = a1 & 1;
  *(v8 + 1) = a2;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7E38, &unk_2450EE628);
  sub_2450CDEF0();
  sub_2450CDA8C();
  sub_2450E56A8();
  sub_2450CDF48(v8);
  if (v3)
  {
    return v9;
  }

  if (v14 == 255)
  {
LABEL_6:
    sub_2450A7C24();
    swift_allocError();
    goto LABEL_7;
  }

  v9 = v13[1];
  if (v14)
  {
    v10 = v13[2];
    sub_24509E850();
    swift_allocError();
    *v11 = v9;
    v11[1] = v10;
LABEL_7:
    swift_willThrow();
  }

  return v9;
}

void sub_2450CCC28(uint64_t a1)
{

  v3 = sub_2450CC6AC(a1);
  if (v1)
  {

    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v4 = sub_2450E5638();
    __swift_project_value_buffer(v4, qword_27EE0AEC8);
    v5 = sub_2450E5628();
    v6 = sub_2450E59A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24508F000, v5, v6, "Something went wrong when attempting to create the aggregate!", v7, 2u);
      MEMORY[0x245D63500](v7, -1, -1);
    }

    sub_2450CDA38();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v8 = v3;

    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v9 = sub_2450E5638();
    __swift_project_value_buffer(v9, qword_27EE0AEC8);
    v10 = sub_2450E5628();
    v11 = sub_2450E5988();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v8;
      _os_log_impl(&dword_24508F000, v10, v11, "Create Received: %d", v12, 8u);
      MEMORY[0x245D63500](v12, -1, -1);
    }
  }
}

void sub_2450CCE4C()
{

  v0 = sub_2450CC7F8();

  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  oslog = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    *(v3 + 4) = v0;
    _os_log_impl(&dword_24508F000, oslog, v2, "Destroy Received: %d", v3, 8u);
    MEMORY[0x245D63500](v3, -1, -1);
  }
}

void sub_2450CD01C(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 36);
  v27 = *a1;
  v28 = v3;
  v29 = v4;
  v30 = v5;
  v31 = v6 & 1;

  sub_2450CBDE0(&v27, v18);
  v16 = v18[1];
  v17 = v18[0];
  v13 = v19;
  v14 = v20;
  v15 = v21;

  if (v17)
  {
    v22 = v17;

    sub_2450CDDA8(v14, v15);
    sub_24509F608(&v22, &qword_27EDF6DB8, &unk_2450E8C40);
    v23 = *(&v17 + 1);
    sub_24509F608(&v23, &qword_27EDF6DB8, &unk_2450E8C40);
    v24 = v13;
    sub_24509F608(&v24, &qword_27EDF6DC0, &qword_2450EAD50);
    v25 = v20;
    v26 = v21;
    sub_24509F608(&v25, &qword_27EDF6DC8, &unk_2450E8C50);
    v12 = v16;
    v11 = v17;
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v7 = sub_2450E5638();
    __swift_project_value_buffer(v7, qword_27EE0AEC8);
    v8 = sub_2450E5628();
    v9 = sub_2450E59A8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24508F000, v8, v9, "Something went wrong when attempting to negotiate with ADM!", v10, 2u);
      MEMORY[0x245D63500](v10, -1, -1);
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
}

uint64_t sub_2450CD260(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v3 = *(a1 + 8);
  v4 = *(a1 + 36);
  v13 = *a1;
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4 & 1;

  v5 = sub_2450CBFB8(&v13);
  v7 = v6;

  if ((v7 & 0x100) != 0)
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v8 = sub_2450E5638();
    __swift_project_value_buffer(v8, qword_27EE0AEC8);
    v9 = sub_2450E5628();
    v10 = sub_2450E59A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24508F000, v9, v10, "Something went wrong when attempting to adapt with ADM!", v11, 2u);
      MEMORY[0x245D63500](v11, -1, -1);
    }
  }

  return v5;
}

uint64_t sub_2450CD3F0()
{

  v0 = sub_2450CBC88();

  return v0;
}

uint64_t sub_2450CD538(uint64_t a1)
{

  sub_2450CC55C(a1);
  if (!v1)
  {
  }

  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v3 = sub_2450E5638();
  __swift_project_value_buffer(v3, qword_27EE0AEC8);
  v4 = sub_2450E5628();
  v5 = sub_2450E59A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24508F000, v4, v5, "Something went wrong when attempting to set hidden device uids!", v6, 2u);
    MEMORY[0x245D63500](v6, -1, -1);
  }

  sub_2450CDA38();
  swift_allocError();
  return swift_willThrow();
}

void sub_2450CD678(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v11[0] = *a1;
  v11[1] = v2;
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v14 = v3;

  sub_2450CC16C(v11, v10);
  if (v1)
  {

    v4 = v1;
  }

  else
  {

    if (v10[1] >> 60 != 15)
    {
      return;
    }

    sub_2450C590C();
    v4 = swift_allocError();
    *v5 = xmmword_2450EE5D0;
    *(v5 + 16) = 1;
    swift_willThrow();
  }

  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v6 = sub_2450E5638();
  __swift_project_value_buffer(v6, qword_27EE0AEC8);
  v7 = sub_2450E5628();
  v8 = sub_2450E59A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24508F000, v7, v8, "Something went wrong when attempting to get a device property!", v9, 2u);
    MEMORY[0x245D63500](v9, -1, -1);
  }

  sub_2450CDA38();
  swift_allocError();
  swift_willThrow();
}

uint64_t sub_2450CD838(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 40);
  *&v18 = *a1;
  *(&v18 + 1) = v6;
  v19 = *(a1 + 16);
  *&v20 = *(a1 + 32);
  DWORD2(v20) = v7;
  *&v21 = a2;
  *(&v21 + 1) = a3;
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  sub_2450A51DC(a1, &v16);
  sub_2450C5A70(a2, a3);

  v8 = sub_2450CC304(v17);
  if (v3)
  {

    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v9 = sub_2450E5638();
    __swift_project_value_buffer(v9, qword_27EE0AEC8);
    v10 = sub_2450E5628();
    v11 = sub_2450E59A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24508F000, v10, v11, "Something went wrong when attempting to set a device property!", v12, 2u);
      MEMORY[0x245D63500](v12, -1, -1);
    }

    sub_2450CDA38();
    swift_allocError();
    goto LABEL_9;
  }

  v13 = v8;

  if (v13)
  {
    sub_2450C590C();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
LABEL_9:
    swift_willThrow();
  }

  return sub_2450A51AC(&v18);
}

unint64_t sub_2450CDA38()
{
  result = qword_27EDF7E30;
  if (!qword_27EDF7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7E30);
  }

  return result;
}

unint64_t sub_2450CDA8C()
{
  result = qword_27EDF7E40;
  if (!qword_27EDF7E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7E38, &unk_2450EE628);
    sub_2450CDE6C(&qword_27EDF7E48, &qword_27EDF74D8, &unk_2450EB790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7E40);
  }

  return result;
}

uint64_t sub_2450CDB28(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2450CDB40(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2450CDB40(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_2450CDB50(a1, a2);
  }
}

uint64_t sub_2450CDB50(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2450A5294(result, a2);
  }

  return result;
}

unint64_t sub_2450CDB64()
{
  result = qword_27EDF7E58;
  if (!qword_27EDF7E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7E50, &qword_2450EE638);
    sub_2450CDE6C(&qword_27EDF7E60, &qword_27EDF74E8, &qword_2450EE640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7E58);
  }

  return result;
}

unint64_t sub_2450CDC00()
{
  result = qword_27EDF7E70;
  if (!qword_27EDF7E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7E68, &qword_2450EE648);
    sub_2450CDE6C(&qword_27EDF7E78, &qword_27EDF7518, &qword_2450EB7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7E70);
  }

  return result;
}

uint64_t sub_2450CDC9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6DB0, &qword_2450EBB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2450CDD0C()
{
  result = qword_27EDF7E88;
  if (!qword_27EDF7E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7E80, &qword_2450EE650);
    sub_2450CDE6C(&qword_27EDF7E90, &qword_27EDF74F8, &unk_2450EB7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7E88);
  }

  return result;
}

uint64_t sub_2450CDDA8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_2450CDDBC(a1, a2);
  }

  return a1;
}

uint64_t sub_2450CDDBC(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

unint64_t sub_2450CDDD0()
{
  result = qword_27EDF7EA0;
  if (!qword_27EDF7EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7E98, &qword_2450EE658);
    sub_2450CDE6C(&qword_27EDF7EA8, &qword_27EDF7508, &unk_2450EE660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7EA0);
  }

  return result;
}

uint64_t sub_2450CDE6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2450CDEC0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_2450CDEF0()
{
  result = qword_27EDF7640;
  if (!qword_27EDF7640)
  {
    type metadata accessor for CoreAudioOrchestratorServerXPC.Request(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7640);
  }

  return result;
}

uint64_t sub_2450CDF48(uint64_t a1)
{
  v2 = type metadata accessor for CoreAudioOrchestratorServerXPC.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2450CDFB8()
{
  result = qword_27EDF7EB0;
  if (!qword_27EDF7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7EB0);
  }

  return result;
}

unint64_t sub_2450CE020()
{
  result = qword_27EDF7EB8;
  if (!qword_27EDF7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7EB8);
  }

  return result;
}

uint64_t sub_2450CE09C()
{
  result = sub_2450D7F88();
  qword_27EE0AEE0 = result;
  return result;
}

uint64_t _s22CoreAudioOrchestration08IsolatedaB12ClientServerC13StartIOAtTime04hostI0s5Int32Vs6UInt64V_tFZ_0(uint64_t a1)
{
  if (qword_27EDF6750 != -1)
  {
    swift_once();
  }

  v2 = sub_2450D7A98();
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v3 = sub_2450E5638();
  __swift_project_value_buffer(v3, qword_27EE0AEC8);
  v4 = sub_2450E5628();
  v5 = sub_2450E5988();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = a1;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v2;
    _os_log_impl(&dword_24508F000, v4, v5, "Started client at time: %llu with: %d", v6, 0x12u);
    MEMORY[0x245D63500](v6, -1, -1);
  }

  return v2;
}

uint64_t sub_2450CE2B8(uint64_t (*a1)(void), const char *a2, ...)
{
  if (qword_27EDF6750 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v3 = a1();
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_24508F000, v5, v6, a2, v7, 8u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  return v3;
}

void sub_2450CE3F0(char *a1)
{
  v1 = *a1;
  if (qword_27EDF6750 != -1)
  {
    swift_once();
  }

  v7 = v1;
  v2 = sub_2450D5BD8(&v7);
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v3 = sub_2450E5638();
  __swift_project_value_buffer(v3, qword_27EE0AEC8);
  oslog = sub_2450E5628();
  v4 = sub_2450E5988();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_24508F000, oslog, v4, "Registered client with: %d", v5, 8u);
    MEMORY[0x245D63500](v5, -1, -1);
  }
}

void sub_2450CE538(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v2 = sub_2450E5638();
  __swift_project_value_buffer(v2, qword_27EE0AEC8);
  v3 = sub_2450E5628();
  v4 = sub_2450E5988();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    if (v1)
    {
      v7 = 4473165;
    }

    else
    {
      v7 = 4473160;
    }

    v8 = sub_2450C0EE8(v7, 0xE300000000000000, &v13);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_24508F000, v3, v4, "Self configuring client: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245D63500](v6, -1, -1);
    MEMORY[0x245D63500](v5, -1, -1);
  }

  if (qword_27EDF6750 != -1)
  {
    swift_once();
  }

  v14 = v1;
  v9 = sub_2450D5F58(&v14);
  oslog = sub_2450E5628();
  v10 = sub_2450E5988();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v9;
    _os_log_impl(&dword_24508F000, oslog, v10, "Self configuration returned with: %d", v11, 8u);
    MEMORY[0x245D63500](v11, -1, -1);
  }
}

uint64_t sub_2450CE76C@<X0>(uint64_t a1@<X8>)
{
  sub_2450B64AC();
  sub_2450E5778();
  v2 = sub_2450CE924();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74D8, &unk_2450EB790);
  result = sub_2450AD608(&qword_27EDF74E0, &qword_27EDF74D8, &unk_2450EB790);
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2450CE8C0()
{

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_2450CE924()
{
  v1 = v0;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v2 = sub_2450E5638();
  __swift_project_value_buffer(v2, qword_27EE0AEC8);
  v3 = sub_2450E5628();
  v4 = sub_2450E5988();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24508F000, v3, v4, "Launch ping received!", v5, 2u);
    MEMORY[0x245D63500](v5, -1, -1);
  }

  *(v1 + 40) = 1;

  return sub_2450E5788();
}

double sub_2450CEA18@<D0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  if (qword_27EDF6748 != -1)
  {
LABEL_28:
    swift_once();
  }

  v27 = a2;
  v6 = sub_2450E5638();
  __swift_project_value_buffer(v6, qword_27EE0AEC8);
  v7 = sub_2450E5628();
  v8 = sub_2450E5998();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v4;
    _os_log_impl(&dword_24508F000, v7, v8, "Looking for client.... %u", v9, 8u);
    MEMORY[0x245D63500](v9, -1, -1);
  }

  v3 = *(*(v3 + 16) + 16);
  v10 = v3 + 64;
  v11 = 1 << *(v3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  a2 = v12 & *(v3 + 64);
  v13 = (v11 + 63) >> 6;

  v14 = 0;
  v28 = v3;
  while (a2)
  {
LABEL_13:
    v16 = *(*(v3 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(a2)))));
    v17 = *(v16 + 16);

    [v17 lock];
    swift_beginAccess();
    v18 = *(v16 + 24);
    v19 = type metadata accessor for UseCaseConfigurationBehavior();
    if (*(v18 + 16) && (sub_2450C8178(v19), (v20 & 1) != 0))
    {
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        swift_unknownObjectRetain();
      }

      v3 = v28;
    }

    else
    {
      v21 = 0;
    }

    [*(v16 + 16) unlock];
    if (v21)
    {
      v22 = *(*(v21 + 16) + 16);

      if (v22 == v4)
      {

        type metadata accessor for RegisteredClient();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC0, qword_2450EE8F8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          *(v27 + 32) = 0;
          result = 0.0;
          *v27 = 0u;
          *(v27 + 16) = 0u;
        }

        return result;
      }
    }

    a2 &= a2 - 1;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v13)
    {
      break;
    }

    a2 = *(v10 + 8 * v15);
    ++v14;
    if (a2)
    {
      v14 = v15;
      goto LABEL_13;
    }
  }

  v24 = sub_2450E5628();
  v25 = sub_2450E59A8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24508F000, v24, v25, "No possible Stravinsky client was found!", v26, 2u);
    MEMORY[0x245D63500](v26, -1, -1);
  }

  *(v27 + 32) = 0;
  result = 0.0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  return result;
}

uint64_t sub_2450CED70()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = *(*(v1 + 56) + ((v7 << 9) | (8 * v9)));
      result = swift_conformsToProtocol2();
      if (result)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v12 = result;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2450D307C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v13 = v8[2];
    v14 = v8[3];
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v19 = v13 + 1;
      v17 = v8;
      v18 = v8[2];
      result = sub_2450D307C((v14 > 1), v13 + 1, 1, v17);
      v13 = v18;
      v15 = v19;
      v8 = result;
    }

    v8[2] = v15;
    v16 = &v8[2 * v13];
    v16[4] = v10;
    v16[5] = v12;
  }

  while (v4);
LABEL_6:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 64 + 8 * v11);
    ++v7;
    if (v4)
    {
      v7 = v11;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2450CEF48@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2450CEF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v5 = *(a3 + 8);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = v4;
  return v5(v7, a2);
}

uint64_t sub_2450CEFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 40);
  v7 = *(a5 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = v6;
  return v7(v9, a2, a3, a4);
}

uint64_t sub_2450CF1E0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2450CF288;

  return sub_2450D0690();
}

uint64_t sub_2450CF288(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v4)
  {
    v6 = *(v3 + 16);
    v6[2](v6, a1);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}