id IntentPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntentPerformer.init()()
{
  *&v0[OBJC_IVAR____TtC8Announce15IntentPerformer_localPlaybackSession] = 0;
  *&v0[OBJC_IVAR____TtC8Announce15IntentPerformer____lazy_storage___playbackSessionDelegate] = 0;
  *&v0[OBJC_IVAR____TtC8Announce15IntentPerformer_announce] = 0;
  *&v0[OBJC_IVAR____TtC8Announce15IntentPerformer____lazy_storage___announceDelegate] = 0;
  v1 = OBJC_IVAR____TtC8Announce15IntentPerformer____lazy_storage___logger;
  v2 = sub_223800FA0();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for IntentPerformer(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t type metadata accessor for IntentPerformer(uint64_t a1)
{
  result = qword_27D09A730;
  if (!qword_27D09A730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2237F77A0(uint64_t a1)
{
  sub_2237F7858(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2237F7858(uint64_t a1)
{
  if (!qword_27D09A740)
  {
    sub_223800FA0();
    v1 = sub_223801140();
    if (!v2)
    {
      atomic_store(v1, &qword_27D09A740);
    }
  }
}

void *sub_2237F7930(void *a1, uint64_t a2)
{
  v3 = sub_223800FA0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = result;
      v12 = a1;
      sub_2237F6C2C(v9);

      v13 = a1;
      v14 = sub_223800F80();
      v15 = sub_223801100();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v26 = v17;
        *v16 = 136446210;
        swift_getErrorValue();
        v18 = sub_223801290();
        v20 = sub_2237EF884(v18, v19, &v26);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_2237C8000, v14, v15, "Prewarm Completed with Error %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x223DEC5C0](v17, -1, -1);
        MEMORY[0x223DEC5C0](v16, -1, -1);
      }

      else
      {
      }

      return (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = result;
      sub_2237F6C2C(v7);

      v22 = sub_223800F80();
      v23 = sub_223801110();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2237C8000, v22, v23, "Prewarm Completed", v24, 2u);
        MEMORY[0x223DEC5C0](v24, -1, -1);
      }

      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

id sub_2237F7C50(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2237F7D10()
{
  result = qword_27D09A7E0;
  if (!qword_27D09A7E0)
  {
    sub_223800F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A7E0);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2237F7D88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2237F7E00(unsigned __int8 a1)
{
  sub_2238012E0();
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237F7F14(uint64_t a1, unsigned __int8 a2)
{
  sub_2238012E0();
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237F8044(uint64_t a1, unsigned __int8 a2)
{
  sub_2238012E0();
  sub_223801020();

  return sub_223801300();
}

uint64_t sub_2237F8154(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x73736563637573;
  v7 = 0xE700000000000000;
  v8 = 0x6572756C696166;
  if (a1 != 4)
  {
    v8 = 0xD000000000000019;
    v7 = 0x80000002238095E0;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7964616572;
  if (a1 != 1)
  {
    v10 = 0x6572676F72506E69;
    v9 = 0xEA00000000007373;
  }

  if (!a1)
  {
    v10 = 0x6669636570736E75;
    v9 = 0xEB00000000646569;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x73736563637573)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x6572756C696166)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0x80000002238095E0;
      if (v11 != 0xD000000000000019)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x7964616572)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6572676F72506E69;
      v2 = 0xEA00000000007373;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_223801270();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_2237F832C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1 <= 2u)
  {
    v7 = 0xE500000000000000;
    v8 = 0x7964616572;
    if (a1 != 1)
    {
      v8 = 0x6572676F72506E69;
      v7 = 0xEA00000000007373;
    }

    if (a1)
    {
      v5 = v8;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v4)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v4 == 5)
    {
      v6 = 0x80000002238095E0;
    }

    else
    {
      v6 = 0x8000000223809780;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x73736563637573;
    }

    else
    {
      v5 = 0x6572756C696166;
    }

    v6 = 0xE700000000000000;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v5 != 0x7964616572)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v3 = 0x6572676F72506E69;
      v2 = 0xEA00000000007373;
    }

    if (v5 != v3)
    {
LABEL_43:
      v10 = sub_223801270();
      goto LABEL_44;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v9 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v2 = 0x80000002238095E0;
    }

    else
    {
      v2 = 0x8000000223809780;
    }

    if (v5 != v9)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v5 != 0x73736563637573)
      {
        goto LABEL_43;
      }
    }

    else if (v5 != 0x6572756C696166)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v6 != v2)
  {
    goto LABEL_43;
  }

  v10 = 1;
LABEL_44:

  return v10 & 1;
}

uint64_t sub_2237F8550()
{
  v1 = *v0;
  v2 = 0x6669636570736E75;
  v3 = 0x73736563637573;
  v4 = 0x6572756C696166;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7964616572;
  if (v1 != 1)
  {
    v5 = 0x6572676F72506E69;
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
    return v3;
  }
}

Announce::StopAnnouncementIntentResponseCode_optional __swiftcall StopAnnouncementIntentResponseCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223801240();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2237F8694(uint64_t a1)
{
  sub_223801020();
}

void sub_2237F87A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = 0xE700000000000000;
  v6 = 0x73736563637573;
  v7 = 0xE700000000000000;
  v8 = 0x6572756C696166;
  if (v2 != 4)
  {
    v8 = 0xD000000000000019;
    v7 = 0x80000002238095E0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7964616572;
  if (v2 != 1)
  {
    v10 = 0x6572676F72506E69;
    v9 = 0xEA00000000007373;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2237F88BC(uint64_t a1)
{
  v2 = sub_2237F9690();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2237F890C(uint64_t a1)
{
  v2 = sub_2237F95EC();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_2237F8958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A4F0, &qword_223804938);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A948, &unk_223805AB0);
    v7 = sub_223801230();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2237F0D34(v9, v5, &qword_27D09A4F0, &qword_223804938);
      result = sub_2237E5770(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_223800E70();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_2237F8B40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A650, &qword_223805378);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A940, &unk_223805AA0);
    v7 = sub_223801230();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2237F0D34(v9, v5, &qword_27D09A650, &qword_223805378);
      result = sub_2237E5840(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_223800E70();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_2237F8D28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A6F0, &unk_2238056A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A938, &unk_223805A90);
    v7 = sub_223801230();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2237F0D34(v9, v5, &unk_27D09A6F0, &unk_2238056A8);
      result = sub_2237E5884(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_223800E70();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_2237F8F10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A928, &qword_223805A78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A930, &unk_223805A80);
    v7 = sub_223801230();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2237F0D34(v9, v5, &qword_27D09A928, &qword_223805A78);
      result = sub_2237E5930(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_223800E70();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t _s8Announce34StopAnnouncementIntentResponseCodeO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A920, &qword_223805A70);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A928, &qword_223805A78) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_223805750;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_223800E60();
  v4[v1] = 1;
  sub_223800E60();
  v4[2 * v1] = 2;
  sub_223800E60();
  v4[3 * v1] = 3;
  sub_223800E60();
  v4[4 * v1] = 4;
  sub_223800E60();
  v4[5 * v1] = 5;
  sub_223800E60();
  v5 = sub_2237F8F10(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

unint64_t sub_2237F9324()
{
  result = qword_27D09A8B0;
  if (!qword_27D09A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8B0);
  }

  return result;
}

unint64_t sub_2237F937C()
{
  result = qword_27D09A8B8;
  if (!qword_27D09A8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09A8C0, &qword_223805800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8B8);
  }

  return result;
}

unint64_t sub_2237F93E4()
{
  result = qword_27D09A8C8;
  if (!qword_27D09A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8C8);
  }

  return result;
}

unint64_t sub_2237F943C()
{
  result = qword_27D09A8D0;
  if (!qword_27D09A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8D0);
  }

  return result;
}

unint64_t sub_2237F9494()
{
  result = qword_27D09A8D8;
  if (!qword_27D09A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8D8);
  }

  return result;
}

unint64_t sub_2237F94EC()
{
  result = qword_27D09A8E0;
  if (!qword_27D09A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8E0);
  }

  return result;
}

unint64_t sub_2237F9540()
{
  result = qword_27D09A8E8;
  if (!qword_27D09A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8E8);
  }

  return result;
}

unint64_t sub_2237F9594()
{
  result = qword_27D09A8F0;
  if (!qword_27D09A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8F0);
  }

  return result;
}

unint64_t sub_2237F95EC()
{
  result = qword_27D09A8F8;
  if (!qword_27D09A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A8F8);
  }

  return result;
}

unint64_t sub_2237F9690()
{
  result = qword_27D09A900;
  if (!qword_27D09A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A900);
  }

  return result;
}

unint64_t sub_2237F96E8()
{
  result = qword_27D09A908;
  if (!qword_27D09A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A908);
  }

  return result;
}

unint64_t sub_2237F9740()
{
  result = qword_27D09A910;
  if (!qword_27D09A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A910);
  }

  return result;
}

unint64_t sub_2237F9798()
{
  result = qword_27D09A918;
  if (!qword_27D09A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09A918);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StopAnnouncementIntentResponseCode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StopAnnouncementIntentResponseCode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2237F9964@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v77 = a5;
  v81 = sub_223800FA0();
  v83 = *(v81 - 8);
  v10 = MEMORY[0x28223BE20](v81);
  v79 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v76 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v76 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v76 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v76 - v21;
  v82 = v5;
  v78 = sub_2237F62CC(a3, a4);
  v23 = [v78 unplayedAnnouncements];
  sub_2237FBD04();
  v24 = sub_223801070();

  v88 = v24;
  if (v24 >> 62)
  {
    v32 = sub_223801200();
    v86 = a1;
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_10:
    v33 = [v78 receivedAnnouncements];
    v34 = sub_223801070();

    v31 = v34;
    v88 = v34;
    sub_2237F6C2C(v22);
    v26 = sub_223800F80();
    LOBYTE(v35) = sub_223801110();
    if (!os_log_type_enabled(v26, v35))
    {
      v30 = 64;
      goto LABEL_16;
    }

    v28 = v14;
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (v31 >> 62)
    {
      goto LABEL_54;
    }

    v36 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v86 = a1;
  if (!v25)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_2237F6C2C(v20);
  v26 = sub_223800F80();
  v27 = sub_223801110();
  if (!os_log_type_enabled(v26, v27))
  {
    v30 = 128;
    v22 = v20;
    v31 = v24;
    goto LABEL_16;
  }

  v28 = v14;
  v14 = swift_slowAlloc();
  *v14 = 134217984;
  if (v24 >> 62)
  {
    v29 = sub_223801200();
  }

  else
  {
    v29 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v14 + 4) = v29;
  _os_log_impl(&dword_2237C8000, v26, v27, "Unheard Announcements (%ld)", v14, 0xCu);
  v30 = 128;
  v22 = v20;
  v31 = v24;
  while (1)
  {
    MEMORY[0x223DEC5C0](v14, -1, -1);
    v14 = v28;
LABEL_16:

    v28 = (v83 + 8);
    v37 = *(v83 + 8);
    v83 += 8;
    v80 = v37;
    v37(v22, v81);
    *(v82 + OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_playbackOptions) = v30;
    if (!a2)
    {
      goto LABEL_24;
    }

    sub_2237F6C2C(v17);

    v38 = sub_223800F80();
    v39 = sub_223801110();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v87[0] = v31;
      *v40 = 136315138;
      v41 = v86;
      *(v40 + 4) = sub_2237EF884(v86, a2, v87);
      _os_log_impl(&dword_2237C8000, v38, v39, "Single Announcement identifier %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x223DEC5C0](v31, -1, -1);
      MEMORY[0x223DEC5C0](v40, -1, -1);

      v80(v17, v81);
    }

    else
    {

      v80(v17, v81);
      v41 = v86;
    }

    swift_beginAccess();

    v42 = sub_2237FC1D0(&v88, v41, a2);

    if (!(v88 >> 62))
    {
      v43 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43 < v42)
      {
        break;
      }

      goto LABEL_22;
    }

    v43 = sub_223801200();
    if (v43 < v42)
    {
      break;
    }

LABEL_22:
    sub_2237FC590(v42, v43);
    swift_endAccess();
    v31 = v88;
    if (v88 >> 62)
    {
      goto LABEL_48;
    }

    if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

LABEL_24:
    if (v31 >> 62)
    {
      v35 = sub_223801200();
    }

    else
    {
      v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = MEMORY[0x277D84F90];
    if (!v35)
    {
      goto LABEL_39;
    }

    v87[0] = MEMORY[0x277D84F90];
    v17 = (v35 & ~(v35 >> 63));

    v26 = v87;
    sub_2237FBDF0(0, v17, 0);
    if ((v35 & 0x8000000000000000) == 0)
    {
      v45 = 0;
      v46 = v31;
      v84 = v31 & 0xC000000000000001;
      v85 = v35;
      v44 = v87[0];
      v86 = v31;
      do
      {
        if (v84)
        {
          v47 = MEMORY[0x223DEBB90](v45, v46);
        }

        else
        {
          v47 = *(v46 + 8 * v45 + 32);
        }

        v48 = v47;
        v49 = [v47 announcementID];
        v50 = sub_223800FE0();
        v52 = v51;

        v53 = [v48 audioFileDuration];
        v54 = v53;
        if (v53)
        {
          [v53 doubleValue];
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        v57 = [v48 homeName];
        v58 = sub_223800FE0();
        v60 = v59;

        v87[0] = v44;
        v62 = *(v44 + 16);
        v61 = *(v44 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_2237FBDF0((v61 > 1), v62 + 1, 1);
          v44 = v87[0];
        }

        ++v45;
        *(v44 + 16) = v62 + 1;
        v63 = v44 + 56 * v62;
        *(v63 + 32) = v50;
        *(v63 + 40) = v52;
        *(v63 + 48) = v56;
        *(v63 + 56) = v54 == 0;
        *(v63 + 64) = v58;
        *(v63 + 72) = v60;
        *(v63 + 80) = 0;
        v46 = v86;
      }

      while (v85 != v45);

LABEL_39:
      if (qword_27D09A400 != -1)
      {
        swift_once();
      }

      v64 = off_27D09A5B8;
      swift_beginAccess();
      v64[2] = v44;

      sub_2237F6C2C(v79);

      v65 = sub_223800F80();
      v66 = sub_223801110();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 134217984;
        v68 = *(v44 + 16);

        *(v67 + 4) = v68;

        _os_log_impl(&dword_2237C8000, v65, v66, "Created %ld announcement records", v67, 0xCu);
        MEMORY[0x223DEC5C0](v67, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v69 = v77;
      v80(v79, v81);

      v71 = 1;
      goto LABEL_52;
    }

    __break(1u);
LABEL_54:
    v36 = sub_223801200();
LABEL_13:
    *(v14 + 4) = v36;
    _os_log_impl(&dword_2237C8000, v26, v35, "All Announcements (%ld)", v14, 0xCu);
    v30 = 64;
  }

  __break(1u);
LABEL_48:
  if (sub_223801200())
  {
    goto LABEL_24;
  }

LABEL_49:
  sub_2237F6C2C(v14);

  v72 = sub_223800F80();
  v73 = sub_223801110();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v87[0] = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_2237EF884(v41, a2, v87);
    _os_log_impl(&dword_2237C8000, v72, v73, "No announcement found with identifier %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x223DEC5C0](v75, -1, -1);
    MEMORY[0x223DEC5C0](v74, -1, -1);
  }

  v80(v14, v81);

  v69 = v77;
  v71 = 6;
LABEL_52:
  *v69 = v71;
  return result;
}

uint64_t sub_2237FA31C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v7 + 131) = a6;
  *(v7 + 130) = a5;
  *(v7 + 129) = a4;
  *(v7 + 56) = a3;
  *(v7 + 64) = v6;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  v8 = sub_223800FA0();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237FA404, 0, 0);
}

uint64_t sub_2237FA404()
{
  if (qword_27D09A400 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v1 = off_27D09A5B8;
    swift_beginAccess();
    v2 = v1[2];
    v3 = *(v2 + 16);
    if (!v3)
    {
      v11 = *(v0 + 88);

      sub_2237F6C2C(v11);

      v12 = sub_223800F80();
      v13 = sub_223801110();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        v15 = *(v2 + 16);

        *(v14 + 4) = v15;

        _os_log_impl(&dword_2237C8000, v12, v13, "No announcements to play back. (%ld)", v14, 0xCu);
        MEMORY[0x223DEC5C0](v14, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
      v20 = MEMORY[0x277D84F90];
      v21 = 6;
      goto LABEL_37;
    }

    v4 = *(v0 + 129);
    v5 = objc_opt_self();

    v6 = [v5 sharedInstance];
    v7 = [v6 BOOLForDefault_];

    if (v4 != 1)
    {
      break;
    }

    sub_2237F6C2C(*(v0 + 104));

    v8 = sub_223800F80();
    v9 = sub_223801110();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v2 + 16);

      _os_log_impl(&dword_2237C8000, v8, v9, "Requesting playback (CarPlay) for announcements (%ld)", v10, 0xCu);
      MEMORY[0x223DEC5C0](v10, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 80) + 8))(*(v0 + 104), *(v0 + 72));
    v22 = 0;
    v20 = MEMORY[0x277D84F90];
LABEL_14:
    v23 = (v2 + 40 + 56 * v22);
    while (1)
    {
      if (v3 == v22)
      {

        goto LABEL_32;
      }

      if (v22 >= *(v2 + 16))
      {
        break;
      }

      v24 = v23 + 7;
      ++v22;
      v25 = *v23;
      v23 += 7;
      if (v25)
      {
        v26 = *(v24 - 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2237FB9D0(0, *(v20 + 16) + 1, 1, v20);
        }

        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          v31 = sub_2237FB9D0((v27 > 1), v28 + 1, 1, v20);
          v29 = v28 + 1;
          v20 = v31;
        }

        *(v20 + 16) = v29;
        v30 = v20 + 16 * v28;
        *(v30 + 32) = v26;
        *(v30 + 40) = v25;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_41:
    swift_once();
  }

  sub_2237F6C2C(*(v0 + 96));

  v16 = sub_223800F80();
  v17 = sub_223801110();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    v19 = *(v2 + 16);

    *(v18 + 4) = v19;

    _os_log_impl(&dword_2237C8000, v16, v17, "Requesting playback for announcements (%ld)", v18, 0xCu);
    MEMORY[0x223DEC5C0](v18, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v32 = *(v0 + 56);
  (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
  if (v32)
  {
    v33 = *(v0 + 48);
    v34 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A460, &unk_223805AE0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_223805AC0;
    *(v20 + 32) = v33;
    *(v20 + 40) = v34;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  if (*(v0 + 131) == 1)
  {
    v35 = *(v0 + 64);
    v36 = *(v35 + OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_playbackOptions);
    if ((v36 & 0x20) == 0)
    {
      *(v35 + OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_playbackOptions) = v36 | 0x20;
    }
  }

LABEL_32:
  *(v0 + 112) = v20;
  if (*(v0 + 130) == 1)
  {
    v37 = swift_task_alloc();
    *(v0 + 120) = v37;
    *v37 = v0;
    v37[1] = sub_2237FA9BC;

    return sub_2237FAB44(v0 + 128, v20, v7);
  }

  v21 = 1;
LABEL_37:
  **(v0 + 40) = v21;

  v39 = *(v0 + 8);

  return v39(v20);
}

uint64_t sub_2237FA9BC()
{

  return MEMORY[0x2822009F8](sub_2237FAAB8, 0, 0);
}

uint64_t sub_2237FAAB8()
{
  v1 = *(v0 + 112);
  **(v0 + 40) = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2237FAB44(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 88) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A978, &qword_223805B60);
  *(v4 + 40) = swift_task_alloc();
  v5 = sub_223800FA0();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237FAC44, 0, 0);
}

uint64_t sub_2237FAC44()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);
  v3 = objc_opt_self();
  v4 = *(v2 + OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_playbackOptions);
  v5 = sub_223801060();
  v6 = [v3 playCommandWithOptions:v4 announcementIdentifiers:v5];
  *(v0 + 72) = v6;

  if (v1 == 1)
  {
    sub_2237F6C2C(*(v0 + 64));
    v7 = sub_223800F80();
    v8 = sub_223801110();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2237C8000, v7, v8, "Not waiting for playback to complete. Returning success early.", v9, 2u);
      MEMORY[0x223DEC5C0](v9, -1, -1);
    }

    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    v14 = *(v0 + 32);
    v15 = *(v0 + 16);

    (*(v11 + 8))(v10, v13);
    v16 = sub_2238010E0();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v14;
    v17[5] = v6;
    v18 = v14;
    v19 = v6;
    sub_2237FD9AC(0, 0, v12, &unk_223805B70, v17);

    *v15 = 3;

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = swift_task_alloc();
    *(v0 + 80) = v22;
    *v22 = v0;
    v22[1] = sub_2237FAF00;
    v23 = *(v0 + 16);

    return sub_2237FB224(v23, v6);
  }
}

uint64_t sub_2237FAF00()
{

  return MEMORY[0x2822009F8](sub_2237FAFFC, 0, 0);
}

uint64_t sub_2237FAFFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2237FB070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2237FB114;

  return sub_2237FB224(v5 + 24, a5);
}

uint64_t sub_2237FB114()
{

  return MEMORY[0x2822009F8](sub_2237FB210, 0, 0);
}

uint64_t sub_2237FB224(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_223800FA0();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237FB2F4, 0, 0);
}

uint64_t sub_2237FB2F4()
{
  v1 = v0[23];
  v2 = v0[24] + OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_endpointIdentifier;
  v3 = *v2;
  v4 = *(v2 + 8);

  v5 = sub_2237F6E84(v3, v4);
  v0[29] = v5;

  v0[2] = v0;
  v0[3] = sub_2237FB448;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9D0, &qword_223804DD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2237F30D4;
  v0[13] = &block_descriptor_4;
  v0[14] = v6;
  [v5 sendPlaybackCommand:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2237FB448()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_2237FB680;
  }

  else
  {
    v2 = sub_2237FB558;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2237FB558()
{
  v1 = *(v0 + 224);

  sub_2237F6C2C(v1);
  v2 = sub_223800F80();
  v3 = sub_223801110();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 224);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2237C8000, v2, v3, "Playback Completed", v8, 2u);
    MEMORY[0x223DEC5C0](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);
  **(v0 + 176) = 3;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2237FB680()
{
  v22 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  swift_willThrow();

  sub_2237F6C2C(v3);
  v4 = v1;
  v5 = sub_223800F80();
  v6 = sub_223801100();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v8 = *(v0 + 208);
    v20 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = sub_223801290();
    v14 = sub_2237EF884(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2237C8000, v5, v6, "Playback Error: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DEC5C0](v11, -1, -1);
    MEMORY[0x223DEC5C0](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v16 = *(v0 + 208);
    v15 = *(v0 + 216);
    v17 = *(v0 + 200);

    (*(v16 + 8))(v15, v17);
  }

  **(v0 + 176) = 4;

  v18 = *(v0 + 8);

  return v18();
}

id ReadAnnouncementsIntentPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReadAnnouncementsIntentPerformer.init()()
{
  *&v0[OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_playbackOptions] = 0;
  v1 = &v0[OBJC_IVAR____TtC8Announce32ReadAnnouncementsIntentPerformer_endpointIdentifier];
  AnnouncementsIntentPerformer = type metadata accessor for ReadAnnouncementsIntentPerformer(0);
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = AnnouncementsIntentPerformer;
  return objc_msgSendSuper2(&v4, sel_init);
}

id ReadAnnouncementsIntentPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadAnnouncementsIntentPerformer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2237FB9D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A460, &unk_223805AE0);
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

char *sub_2237FBADC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A980, qword_223805B78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2237FBC00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A970, &qword_223805B58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_2237FBD04()
{
  result = qword_27D09A950;
  if (!qword_27D09A950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D09A950);
  }

  return result;
}

uint64_t sub_2237FBD50(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_223801200();
LABEL_9:
  result = sub_2238011E0();
  *v2 = result;
  return result;
}

char *sub_2237FBDF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2237FBE30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2237FBE10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2237FBF54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2237FBE30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A980, qword_223805B78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2237FBF54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A460, &unk_223805AE0);
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

unint64_t sub_2237FC060(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_20:
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_223801200();
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v18 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DEBB90](v6, a1);
    }

    else
    {
      if (v6 >= *(v17 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = [v8 announcementID];
    v11 = sub_223800FE0();
    v13 = v12;

    if (v11 == a2 && v13 == a3)
    {
    }

    else
    {
      v15 = sub_223801270();

      if ((v15 & 1) == 0)
      {
        return v6;
      }
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_19;
    }
  }

  return 0;
}

unint64_t sub_2237FC1D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  result = sub_2237FC060(*a1, a2, a3);
  v10 = result;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_223801200();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = 0;
  v32 = a1;
  v11 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v33 = a3;
  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_223801200())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x223DEBB90](v11, v7);
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v15 = *(v7 + 8 * v11 + 32);
LABEL_16:
    v16 = v15;
    v17 = [v15 announcementID];
    v18 = sub_223800FE0();
    v20 = v19;

    if (v18 == a2 && v20 == v33)
    {

      if (v10 != v11)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    v22 = sub_223801270();

    if (v22)
    {
      if (v10 != v11)
      {
LABEL_24:
        if ((v7 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x223DEBB90](v10, v7);
          v24 = MEMORY[0x223DEBB90](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v25)
          {
            goto LABEL_52;
          }

          if (v11 >= v25)
          {
            goto LABEL_53;
          }

          v26 = *(v7 + 32 + 8 * v11);
          v23 = *(v7 + 32 + 8 * v10);
          v24 = v26;
        }

        v27 = v24;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_2238008A4(v7);
          v28 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v28) = 0;
        }

        v29 = v7 & 0xFFFFFFFFFFFFFF8;
        v30 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v27;

        if ((v7 & 0x8000000000000000) != 0 || v28)
        {
          v7 = sub_2238008A4(v7);
          v29 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_44:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v11 >= *(v29 + 16))
        {
          goto LABEL_50;
        }

        v12 = v29 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v23;

        *v32 = v7;
      }

LABEL_8:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_49;
      }
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_47:
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
  __break(1u);
  return sub_223801200();
}

uint64_t sub_2237FC490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2237FBD04();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_223801200();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_223801200();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2237FC590(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_223801200();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_223801200();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_2237FBD50(result, 1);

  return sub_2237FC490(v5, v3, 0);
}

uint64_t type metadata accessor for ReadAnnouncementsIntentPerformer(uint64_t a1)
{
  result = qword_27D09A960;
  if (!qword_27D09A960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ReadAnnouncementsIntentPerformer.performIntent(startAnnouncementIdentifier:isCarPlay:startPlayback:continuePlaying:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *((*MEMORY[0x277D85000] & *v6) + 0x140);
  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2237FC8D4;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2237FC8D4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2237FC9E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2237F0BFC;

  return sub_2237FB070(a1, v4, v5, v7, v6);
}

uint64_t sub_2237FCAA8(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 216) = a3;
  *(v4 + 144) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237FCB64, 0, 0);
}

uint64_t sub_2237FCB64()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 176);
    sub_223800F10();
    v2 = sub_223800F40();
    (*(*(v2 - 8) + 48))(v1, 1, v2);
    sub_2237F0360(v1, &unk_27D09A9C0, &qword_223804B08);
  }

  v3 = *(v0 + 184);
  v4 = sub_223800F40();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 1, 1, v4);
  v6 = sub_223800F80();
  v7 = sub_223801110();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 216);
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v8;
    _os_log_impl(&dword_2237C8000, v6, v7, "AnnouncePlaybackHelper playing sent tone with Siri audio session ID: %u", v9, 8u);
    MEMORY[0x223DEC5C0](v9, -1, -1);
  }

  v10 = *(v0 + 184);
  v11 = *(v0 + 168);

  v12 = sub_2237FD6AC();
  *(v0 + 192) = v12;
  sub_2237F3064(v10, v11);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    v13 = 0;
  }

  else
  {
    v14 = *(v0 + 168);
    v13 = sub_223800F20();
    (*(v5 + 8))(v14, v4);
  }

  *(v0 + 200) = v13;
  v15 = *(v0 + 216);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2237FCE78;
  v16 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9D0, &qword_223804DD0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2237F30D4;
  *(v0 + 104) = &block_descriptor_5;
  *(v0 + 112) = v16;
  [v12 playTone:0 audioSessionID:v15 endpointUUID:v13 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2237FCE78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_2237FD038;
  }

  else
  {
    v2 = sub_2237FCF88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2237FCF88()
{
  v2 = v0[24];
  v1 = v0[25];
  sub_2237F0360(v0[23], &unk_27D09A9C0, &qword_223804B08);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2237FD038()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];
  swift_willThrow();
  sub_2237F0360(v2, &unk_27D09A9C0, &qword_223804B08);

  v4 = v0[1];

  return v4();
}

id sub_2237FD0F4(uint64_t a1)
{
  v1 = sub_223800F40();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A7D0, "rt");
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9C0, &qword_223804B08);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v41 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  if (v20)
  {
    sub_223800F10();
    (*(v2 + 48))(v17, 1, v1);
    sub_2237F0360(v17, &unk_27D09A9C0, &qword_223804B08);
  }

  v21 = *(v2 + 56);
  v21(v19, 1, 1, v1);
  v22 = OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_localPlaybackSession;
  v23 = v46;
  v24 = *(v46 + OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_localPlaybackSession);
  if (!v24)
  {
    goto LABEL_14;
  }

  v43 = v24;
  v25 = [v43 endpointIdentifier];
  if (v25)
  {
    v26 = v25;
    sub_223800F30();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v45;
  v21(v14, v27, 1, v1);
  v29 = *(v4 + 48);
  sub_2237F3064(v14, v6);
  sub_2237F3064(v19, &v6[v29]);
  v30 = *(v2 + 48);
  if (v30(v6, 1, v1) == 1)
  {
    sub_2237F0360(v14, &unk_27D09A9C0, &qword_223804B08);
    v31 = v30(&v6[v29], 1, v1);
    v23 = v46;
    if (v31 == 1)
    {
      sub_2237F0360(v6, &unk_27D09A9C0, &qword_223804B08);
LABEL_19:
      sub_2237F0360(v19, &unk_27D09A9C0, &qword_223804B08);
      return v43;
    }

    goto LABEL_13;
  }

  sub_2237F3064(v6, v28);
  if (v30(&v6[v29], 1, v1) == 1)
  {

    sub_2237F0360(v14, &unk_27D09A9C0, &qword_223804B08);
    (*(v2 + 8))(v28, v1);
    v23 = v46;
LABEL_13:
    sub_2237F0360(v6, &unk_27D09A7D0, "rt");
    goto LABEL_14;
  }

  v38 = v42;
  (*(v2 + 32))(v42, &v6[v29], v1);
  sub_2237F7D10();
  v39 = sub_223800FC0();
  v40 = *(v2 + 8);
  v40(v38, v1);
  sub_2237F0360(v14, &unk_27D09A9C0, &qword_223804B08);
  v40(v45, v1);
  sub_2237F0360(v6, &unk_27D09A9C0, &qword_223804B08);
  if (v39)
  {
    goto LABEL_19;
  }

  v23 = v46;
LABEL_14:
  [*(v23 + v22) invalidate];
  v32 = v44;
  sub_2237F3064(v19, v44);
  if ((*(v2 + 48))(v32, 1, v1) == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_223800F20();
    (*(v2 + 8))(v32, v1);
  }

  v34 = [objc_allocWithZone(ANLocalPlaybackSession) initWithEndpointIdentifier_];

  [v34 setDelegate_];
  sub_2237F0360(v19, &unk_27D09A9C0, &qword_223804B08);
  v35 = *(v23 + v22);
  *(v23 + v22) = v34;
  v36 = v34;

  return v36;
}

id sub_2237FD6AC()
{
  v1 = OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper____lazy_storage___tonePlayer;
  v2 = *(v0 + OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper____lazy_storage___tonePlayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper____lazy_storage___tonePlayer);
  }

  else
  {
    v4 = [objc_allocWithZone(ANTonePlayerService) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2237FD750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnnouncePlaybackHelper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AnnouncePlaybackHelper(uint64_t a1)
{
  result = qword_27D09A9A8;
  if (!qword_27D09A9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2237FD868(uint64_t a1)
{
  result = sub_223800FA0();
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

void sub_2237FD904(char *a1)
{
  v2 = OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_localPlaybackSession;
  v3 = *&a1[OBJC_IVAR____TtC8Announce22AnnouncePlaybackHelper_localPlaybackSession];
  v4 = a1;
  if (v3)
  {
    [v3 setDelegate_];
    v5 = *&a1[v2];
  }

  else
  {
    v5 = 0;
  }

  *&a1[v2] = 0;
}

uint64_t sub_2237FD9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A978, &qword_223805B60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2238005F0(a3, v25 - v10);
  v12 = sub_2238010E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_223800660(v11);
  }

  else
  {
    sub_2238010D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2238010B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_223801000() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_223800660(a3);

      return v23;
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

  sub_223800660(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t (*sub_2237FDC9C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ANXPCManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_223800A58;
}

id sub_2237FDD40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_2237FDE58(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2237FDEB4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ANXPCManager_checkInProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2237FDF4C;
}

void sub_2237FDF50(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_2237FDFD0(char a1)
{
  v3 = *(v1 + OBJC_IVAR___ANXPCManager_lock);
  [v3 lock];
  *(v1 + OBJC_IVAR___ANXPCManager__needsCheckIn) = a1;
  [v3 unlock];
  oslog = sub_223800F80();
  v4 = sub_223801110();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_2237C8000, oslog, v4, "Needs Check in = %{BOOL}d", v5, 8u);
    MEMORY[0x223DEC5C0](v5, -1, -1);
  }
}

id XPCManager.__allocating_init(machServiceName:remoteObjectInterface:exportedInterface:exportedObject:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v23 = a2;
  v10 = sub_223800FA0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14[OBJC_IVAR___ANXPCManager__needsCheckIn] = 1;
  *&v14[OBJC_IVAR___ANXPCManager__connection] = 0;
  swift_unknownObjectWeakInit();
  sub_223800F90();
  (*(v11 + 32))(&v14[OBJC_IVAR___ANXPCManager_logger], v13, v10);
  v14[OBJC_IVAR___ANXPCManager_isConnectionValid] = 0;
  *&v14[OBJC_IVAR___ANXPCManager_notifyRegisterToken] = -1;
  *&v14[OBJC_IVAR___ANXPCManager_checkInObservers] = MEMORY[0x277D84F90];
  v15 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  *&v14[OBJC_IVAR___ANXPCManager_lock] = v15;
  v16 = &v14[OBJC_IVAR___ANXPCManager_machServiceName];
  v17 = v23;
  *v16 = a1;
  v16[1] = v17;
  *&v14[OBJC_IVAR___ANXPCManager_remoteObjectInterface] = a3;
  *&v14[OBJC_IVAR___ANXPCManager_exportedInterface] = a4;
  swift_unknownObjectWeakAssign();
  v24.receiver = v14;
  v24.super_class = v6;
  v18 = a3;
  v19 = a4;
  v20 = objc_msgSendSuper2(&v24, sel_init);
  sub_2237FDFD0(1);
  sub_2237FE604();

  swift_unknownObjectRelease();
  return v20;
}

id XPCManager.init(machServiceName:remoteObjectInterface:exportedInterface:exportedObject:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_223800FA0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR___ANXPCManager__needsCheckIn] = 1;
  *&v5[OBJC_IVAR___ANXPCManager__connection] = 0;
  swift_unknownObjectWeakInit();
  sub_223800F90();
  (*(v11 + 32))(&v5[OBJC_IVAR___ANXPCManager_logger], v13, v10);
  v5[OBJC_IVAR___ANXPCManager_isConnectionValid] = 0;
  *&v5[OBJC_IVAR___ANXPCManager_notifyRegisterToken] = -1;
  *&v5[OBJC_IVAR___ANXPCManager_checkInObservers] = MEMORY[0x277D84F90];
  v14 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  *&v5[OBJC_IVAR___ANXPCManager_lock] = v14;
  v15 = &v5[OBJC_IVAR___ANXPCManager_machServiceName];
  *v15 = a1;
  v15[1] = a2;
  *&v5[OBJC_IVAR___ANXPCManager_remoteObjectInterface] = a3;
  *&v5[OBJC_IVAR___ANXPCManager_exportedInterface] = a4;
  swift_unknownObjectWeakAssign();
  v16 = type metadata accessor for XPCManager(0);
  v21.receiver = v5;
  v21.super_class = v16;
  v17 = a3;
  v18 = a4;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  sub_2237FDFD0(1);
  sub_2237FE604();

  swift_unknownObjectRelease();
  return v19;
}

void sub_2237FE604()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR___ANXPCManager_notifyRegisterToken;
  if (*(v0 + OBJC_IVAR___ANXPCManager_notifyRegisterToken) == -1)
  {
    v2 = v0;
    out_token = -1;
    sub_223800FE0();
    sub_2238004E8();
    v3 = sub_223801120();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_223800534;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_2237FF43C;
    v8[3] = &block_descriptor_30;
    v5 = _Block_copy(v8);

    v6 = sub_223801000();

    v7 = notify_register_dispatch((v6 + 32), &out_token, v3, v5);

    _Block_release(v5);

    if (!v7)
    {
      *(v2 + v1) = out_token;
    }
  }
}

uint64_t type metadata accessor for XPCManager(uint64_t a1)
{
  result = qword_280FB28B8;
  if (!qword_280FB28B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id XPCManager.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___ANXPCManager__connection];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for XPCManager(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2237FEA1C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___ANXPCManager_lock);
  [v2 lock];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09AA08, &qword_223805BD0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3 = OBJC_IVAR___ANXPCManager_checkInObservers;
  v4 = swift_beginAccess();
  MEMORY[0x223DEBA10](v4);
  if (*((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_223801090();
  }

  sub_2238010A0();
  swift_endAccess();
  return [v2 unlock];
}

id sub_2237FEBE0()
{
  v1 = v0;
  v2 = OBJC_IVAR___ANXPCManager__connection;
  v3 = *&v0[OBJC_IVAR___ANXPCManager__connection];
  if (v3 && v0[OBJC_IVAR___ANXPCManager_isConnectionValid] == 1)
  {

    return v3;
  }

  else
  {
    v5 = v0;
    v6 = sub_223800F80();
    v7 = sub_223801110();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2237EF884(*&v5[OBJC_IVAR___ANXPCManager_machServiceName], *&v5[OBJC_IVAR___ANXPCManager_machServiceName + 8], &v19);
      _os_log_impl(&dword_2237C8000, v6, v7, "Creating connection for %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DEC5C0](v9, -1, -1);
      MEMORY[0x223DEC5C0](v8, -1, -1);
    }

    v10 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v11 = sub_223800FD0();
    v12 = [v10 initWithMachServiceName:v11 options:4096];

    [v12 setRemoteObjectInterface_];
    [v12 setExportedInterface_];
    [v12 setExportedObject_];
    swift_unknownObjectRelease();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_2237FF0C4;
    v24 = v13;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_2237FF0CC;
    v22 = &block_descriptor_6;
    v14 = _Block_copy(&v19);

    [v12 setInterruptionHandler_];
    _Block_release(v14);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_2237FF210;
    v24 = v15;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_2237FF0CC;
    v22 = &block_descriptor_4;
    v16 = _Block_copy(&v19);

    [v12 setInvalidationHandler_];
    _Block_release(v16);
    sub_2237FE604();
    sub_2237FDFD0(0);
    [v12 resume];
    v5[OBJC_IVAR___ANXPCManager_isConnectionValid] = 1;
    v17 = *&v1[v2];
    *&v1[v2] = v12;
    v18 = v12;

    return v18;
  }
}

void sub_2237FEF9C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_223800F80();
    v4 = sub_223801110();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2237C8000, v3, v4, "Connection to daemon was interrupted", v5, 2u);
      MEMORY[0x223DEC5C0](v5, -1, -1);
    }

    sub_2237FDFD0(1);
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      [v6 managerDidInterruptConnection_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_2237FF0CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2237FF128(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_223800F80();
    v4 = sub_223801110();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2237C8000, v3, v4, "Connection to daemon was invalidated", v5, 2u);
      MEMORY[0x223DEC5C0](v5, -1, -1);
    }

    sub_2237FDFD0(1);
    v2[OBJC_IVAR___ANXPCManager_isConnectionValid] = 0;
  }
}

id XPCManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2237FF2AC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A978, &qword_223805B60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR___ANXPCManager_lock);
    [v7 lock];
    v8 = v6[OBJC_IVAR___ANXPCManager__needsCheckIn];
    [v7 unlock];
    if (v8 == 1)
    {
      v9 = sub_2238010E0();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v10;
      sub_2237FD9AC(0, 0, v4, &unk_223805C70, v11);
    }
  }
}

uint64_t sub_2237FF43C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2237FF4B0()
{
  v21 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {
    v0[30] = OBJC_IVAR___ANXPCManager_logger;
    v2 = sub_223800F80();
    v3 = sub_223801110();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2237C8000, v2, v3, "Checking in with daemon...", v4, 2u);
      MEMORY[0x223DEC5C0](v4, -1, -1);
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    v0[31] = v5;
    if (v5)
    {
      v6 = v5;
      v0[2] = v0;
      v0[3] = sub_2237FF810;
      v7 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D09A9D0, &qword_223804DD0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2237F30D4;
      v0[13] = &block_descriptor_48;
      v0[14] = v7;
      [v6 checkInWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 2);
    }

    sub_223800838();
    v8 = swift_allocError();
    swift_willThrow();
    v9 = v8;
    v10 = sub_223800F80();
    v11 = sub_223801100();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_223801290();
      v16 = sub_2237EF884(v14, v15, &v20);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2237C8000, v10, v11, "Failed to check in with daemon: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DEC5C0](v13, -1, -1);
      MEMORY[0x223DEC5C0](v12, -1, -1);
    }

    v17 = v0[29];
    sub_2237FDFD0(1);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_2237FF810()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_2237FFA50;
  }

  else
  {
    v2 = sub_2237FF920;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2237FF920(uint64_t a1)
{
  v2 = sub_223800F80();
  v3 = sub_223801110();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2237C8000, v2, v3, "Checked in with daemon", v4, 2u);
    MEMORY[0x223DEC5C0](v4, -1, -1);
  }

  v5 = *(v1 + 232);

  sub_2237FDFD0(0);
  v6 = *&v5[OBJC_IVAR___ANXPCManager_lock];
  [v6 lock];
  sub_2237FFBDC(v5);
  [v6 unlock];
  swift_unknownObjectRelease();

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_2237FFA50()
{
  v14 = v0;
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = v0[32];
  v2 = v1;
  v3 = sub_223800F80();
  v4 = sub_223801100();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_223801290();
    v9 = sub_2237EF884(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2237C8000, v3, v4, "Failed to check in with daemon: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223DEC5C0](v6, -1, -1);
    MEMORY[0x223DEC5C0](v5, -1, -1);
  }

  v10 = v0[29];
  sub_2237FDFD0(1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2237FFBDC(uint64_t a1)
{
  v2 = OBJC_IVAR___ANXPCManager_checkInObservers;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_223801200())
  {

    if (i)
    {
      v6 = 0;
      v7 = MEMORY[0x277D84F90];
      do
      {
        v8 = v6;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DEBB90](v8, v3);
            v6 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (v8 >= *(v4 + 16))
            {
              goto LABEL_28;
            }

            v6 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_27;
            }
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            break;
          }

          [Strong managerDidPerformDaemonCheckIn_];
          swift_unknownObjectRelease();

          ++v8;
          if (v6 == i)
          {
            goto LABEL_22;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2237FBC00(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_2237FBC00((v10 > 1), v11 + 1, 1, v7);
        }

        *(v7 + 2) = v11 + 1;
        *&v7[8 * v11 + 32] = v8;
      }

      while (v6 != i);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

LABEL_22:

    v12 = *(v7 + 2);
    if (!v12)
    {
      break;
    }

    while (v12 <= *(v7 + 2))
    {
      v4 = v12 - 1;
      v13 = *&v7[8 * v12 + 24];
      v14 = sub_2237FE0D0(v17);
      v3 = v15;
      sub_2237FFE10(v13);

      (v14)(v17, 0);
      v12 = v4;
      if (!v4)
      {
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }
}

unint64_t sub_2237FFE10(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2238008A8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2237FFEA8()
{
  sub_2238012E0();
  MEMORY[0x223DEBCB0](0);
  return sub_223801300();
}

uint64_t sub_2237FFF14(uint64_t a1)
{
  sub_2238012E0();
  MEMORY[0x223DEBCB0](0);
  return sub_223801300();
}

uint64_t sub_2237FFF7C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_223800074;

  return v6(a1);
}

uint64_t sub_223800074()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t keypath_getTm@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t sub_223800224(uint64_t a1)
{
  result = sub_223800FA0();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_2238004E8()
{
  result = qword_280FB28B0;
  if (!qword_280FB28B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FB28B0);
  }

  return result;
}

uint64_t sub_22380053C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2237F0BFC;

  return sub_2237FF490(a1, v4, v5, v6);
}

uint64_t sub_2238005F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A978, &qword_223805B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223800660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09A978, &qword_223805B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2238006C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2237F0E1C;

  return sub_2237FFF7C(a1, v4);
}

uint64_t sub_223800780(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2237F0BFC;

  return sub_2237FFF7C(a1, v4);
}

unint64_t sub_223800838()
{
  result = qword_27D09AA10;
  if (!qword_27D09AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09AA10);
  }

  return result;
}

uint64_t sub_2238008A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_223801200();
  }

  return sub_2238011E0();
}

uint64_t getEnumTagSinglePayload for XPCManager.XPCManagerError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for XPCManager.XPCManagerError(_WORD *result, int a2, int a3)
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

unint64_t sub_2238009F4()
{
  result = qword_27D09AA18;
  if (!qword_27D09AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09AA18);
  }

  return result;
}