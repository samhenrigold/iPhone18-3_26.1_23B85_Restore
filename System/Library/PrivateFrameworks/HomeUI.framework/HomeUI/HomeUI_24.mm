void sub_20D10767C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  v0 = v21;
  if (!v21)
  {
    return;
  }

  if (![v21 isKeyAvailable_])
  {

    return;
  }

  v1 = [v21 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821840, &qword_20D5C9CD8);
  v2 = sub_20D567A78();

  if (v2 >> 62)
  {
LABEL_33:
    v3 = sub_20D568768();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_34:

    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_34;
  }

LABEL_5:
  v20 = v0;
  v4 = 0;
  v0 = (v2 & 0xC000000000000001);
  do
  {
    if (v0)
    {
      v5 = MEMORY[0x20F31DD20](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v8 = [v5 label];
    if (!v8)
    {
      sub_20D567838();
LABEL_7:

      goto LABEL_8;
    }

    v9 = v8;
    v10 = sub_20D567838();
    v12 = v11;

    v13 = sub_20D567838();
    if (!v12)
    {
      goto LABEL_7;
    }

    if (v10 == v13 && v12 == v14)
    {

      goto LABEL_28;
    }

    v16 = sub_20D568BF8();

    if (v16)
    {
      goto LABEL_28;
    }

LABEL_8:

    ++v4;
  }

  while (v7 != v3);
  if (v0)
  {
    v17 = MEMORY[0x20F31DD20](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v2 + 32);
  }

  v6 = v17;
LABEL_28:

  v18 = [v6 value];
  if (v18)
  {
    v19 = v18;
    sub_20D567828();
  }

  else
  {
  }
}

void sub_20D10796C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  v0 = v33;
  if (!v33)
  {
    return;
  }

  if (![v33 isKeyAvailable_])
  {

    return;
  }

  v1 = [v33 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821840, &qword_20D5C9CD8);
  v2 = sub_20D567A78();

  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_54:

    return;
  }

LABEL_5:
  v32 = v0;
  v4 = 0;
  v0 = (v2 & 0xC000000000000001);
  do
  {
    if (v0)
    {
      v5 = MEMORY[0x20F31DD20](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      v3 = sub_20D568768();
      if (!v3)
      {
        goto LABEL_54;
      }

      goto LABEL_5;
    }

    v8 = [v5 label];
    if (!v8)
    {
      sub_20D567838();
LABEL_7:

      goto LABEL_8;
    }

    v9 = v8;
    v10 = sub_20D567838();
    v12 = v11;

    v13 = sub_20D567838();
    if (!v12)
    {
      goto LABEL_7;
    }

    if (v10 == v13 && v12 == v14)
    {
LABEL_40:

LABEL_45:

      v30 = [v6 value];
      v31 = [v30 formattedStringValue];

      if (v31)
      {
        sub_20D567838();
      }

      return;
    }

    v16 = sub_20D568BF8();

    if (v16)
    {
      goto LABEL_45;
    }

LABEL_8:

    ++v4;
  }

  while (v7 != v3);
  v17 = 0;
  do
  {
    if (v0)
    {
      v18 = MEMORY[0x20F31DD20](v17, v2);
    }

    else
    {
      if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v18 = *(v2 + 8 * v17 + 32);
    }

    v6 = v18;
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_51;
    }

    v20 = [v18 label];
    if (!v20)
    {
      sub_20D567838();
LABEL_25:

      goto LABEL_26;
    }

    v21 = v20;
    v22 = sub_20D567838();
    v24 = v23;

    v25 = sub_20D567838();
    if (!v24)
    {
      goto LABEL_25;
    }

    if (v22 == v25 && v24 == v26)
    {
      goto LABEL_40;
    }

    v28 = sub_20D568BF8();

    if (v28)
    {
      goto LABEL_45;
    }

LABEL_26:

    ++v17;
  }

  while (v19 != v3);
  if (v0)
  {
    v29 = MEMORY[0x20F31DD20](0, v2);
    goto LABEL_44;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v2 + 32);
LABEL_44:
    v6 = v29;
    goto LABEL_45;
  }

  __break(1u);
}

id sub_20D107D74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  if (v18)
  {
    if ([v18 isKeyAvailable_])
    {
      v0 = [v18 postalAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821840, &qword_20D5C9CD8);
      v1 = sub_20D567A78();

      if (v1 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
      {
        v3 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v4 = MEMORY[0x20F31DD20](v3, v1);
          }

          else
          {
            if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v4 = *(v1 + 8 * v3 + 32);
          }

          v5 = v4;
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          v7 = [v4 label];
          if (!v7)
          {
            sub_20D567838();
LABEL_7:

            goto LABEL_8;
          }

          v8 = v7;
          v9 = sub_20D567838();
          v11 = v10;

          v12 = sub_20D567838();
          if (!v11)
          {
            goto LABEL_7;
          }

          if (v9 == v12 && v11 == v13)
          {

LABEL_24:

            v16 = [v5 value];

            return v16;
          }

          v15 = sub_20D568BF8();

          if (v15)
          {
            goto LABEL_24;
          }

LABEL_8:

          ++v3;
          if (v6 == i)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

LABEL_28:
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_20D10800C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  if (v8)
  {
    if ([v8 isKeyAvailable_])
    {
      v0 = [v8 givenName];
      v1 = sub_20D567838();
      v3 = v2;

      v4 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v4 = v1 & 0xFFFFFFFFFFFFLL;
      }

      if (v4)
      {
        v5 = [v8 givenName];
        v6 = sub_20D567838();

        return v6;
      }
    }
  }

  return 0;
}

uint64_t sub_20D108138()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  if (!v8)
  {
    return 0;
  }

  if (![v8 isKeyAvailable_])
  {
    goto LABEL_8;
  }

  v0 = [v8 familyName];
  v1 = sub_20D567838();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_8:

    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  v5 = [v8 familyName];

  v6 = sub_20D567838();
  return v6;
}

uint64_t AccountDetailsDataModel.phoneNumberServer.getter()
{
  v0 = sub_20D565988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  v4 = v19;
  if (!v19)
  {
    return 0;
  }

  if (![v19 isKeyAvailable_])
  {
    goto LABEL_15;
  }

  v5 = [v4 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821840, &qword_20D5C9CD8);
  v6 = sub_20D567A78();

  if (v6 >> 62)
  {
    if (sub_20D568768())
    {
      goto LABEL_5;
    }

LABEL_17:

    return 0;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x20F31DD20](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v6 = [v8 value];

  if (v6)
  {
    v9 = [v6 fullyQualifiedDigits];
    if (v9)
    {
LABEL_14:
      v15 = v9;
      v16 = sub_20D567838();

      return v16;
    }

    if (qword_28111FAF0 == -1)
    {
LABEL_11:
      v10 = qword_281120C18;
      sub_20D565998();
      v11 = sub_20D565968();
      v12 = sub_20D567EC8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v19 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_20CEE913C(0xD000000000000011, 0x800000020D5DB070, &v19);
        _os_log_impl(&dword_20CEB6000, v11, v12, "%s could not get fullyQualifiedDigits", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x20F31FC70](v14, -1, -1);
        MEMORY[0x20F31FC70](v13, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      v9 = [v6 digits];
      goto LABEL_14;
    }

LABEL_21:
    swift_once();
    goto LABEL_11;
  }

LABEL_15:

  return 0;
}

id AccountDetailsDataModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountDetailsDataModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D1089E8@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_20D566628();
  *a2 = result;
  return result;
}

void sub_20D108A28(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  *a2 = v3;
}

uint64_t sub_20D108AA8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_20D566678();
}

unint64_t sub_20D108B1C()
{
  result = qword_27C81ED40;
  if (!qword_27C81ED40)
  {
    type metadata accessor for AccountDetailsDataModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81ED40);
  }

  return result;
}

uint64_t type metadata accessor for AccountDetailsDataModel(uint64_t a1)
{
  result = qword_27C821848;
  if (!qword_27C821848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D108BC8(uint64_t a1)
{
  sub_20D108CD4(319);
  if (v1 <= 0x3F)
  {
    sub_20D108D38();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20D108CD4(uint64_t a1)
{
  if (!qword_27C821858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821830, &qword_20D5C9CD0);
    v1 = sub_20D566688();
    if (!v2)
    {
      atomic_store(v1, &qword_27C821858);
    }
  }
}

void sub_20D108D38()
{
  if (!qword_27C821860)
  {
    v0 = sub_20D566688();
    if (!v1)
    {
      atomic_store(v0, &qword_27C821860);
    }
  }
}

uint64_t sub_20D108D88(uint64_t a1, unint64_t a2)
{
  v4 = sub_20D5636E8();
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF26E34(a1, a2);
  sub_20D5636F8();
  sub_20D10F79C(&unk_27C821920, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  sub_20D568558();
  if ((v16 & 1) == 0)
  {
    v14 = xmmword_20D5BC410;
    v7 = MEMORY[0x277D84B78];
    v8 = MEMORY[0x277D84BC0];
    do
    {
      v9 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620, &unk_20D5BD450);
      v10 = swift_allocObject();
      *(v10 + 16) = v14;
      *(v10 + 56) = v7;
      *(v10 + 64) = v8;
      *(v10 + 32) = v9;
      v11 = sub_20D567848();
      MEMORY[0x20F31CDB0](v11);

      sub_20D568558();
    }

    while (v16 != 1);
  }

  return (*(v13 + 8))(v6, v4);
}

id HomeWiFiPickerContext.init(with:home:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v38 = a3;
  v31 = a1;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_20D568028();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x28223BE20](v5);
  v34 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20D567FB8();
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D567F88();
  MEMORY[0x28223BE20](v11);
  v12 = sub_20D567678();
  MEMORY[0x28223BE20](v12 - 8);
  *&v3[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_cwfKnownNetworkProfiles] = 0;
  *&v3[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_scanTimer] = 0;
  v33 = OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_statusTimer;
  *&v3[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_statusTimer] = 0;
  v29 = OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_taskQueue;
  v13 = sub_20CECF940(0, &qword_28111FF30, 0x277D85C78);
  v28[1] = "";
  v28[2] = v13;
  sub_20D567668();
  v40 = MEMORY[0x277D84F90];
  sub_20D10F79C(&qword_28111FF38, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C821890, &qword_20D5C9E00);
  sub_20D10F7E4(&qword_281120030, &unk_27C821890, &qword_20D5C9E00);
  sub_20D5686B8();
  (*(v8 + 104))(v10, *MEMORY[0x277D85260], v30);
  v14 = sub_20D567FE8();
  v15 = v29;
  *&v3[v29] = v14;
  v3[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isScanTimerCancelled] = 1;
  v3[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isCurrentNetworkTimerCancelled] = 1;
  v3[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isScanInProgress] = 0;
  v3[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isNetworkFetchInProgress] = 0;
  v3[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isNetworkJoinInProgress] = 0;
  v17 = v31;
  v16 = v32;
  *&v4[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_mediaAccessory] = v31;
  *&v4[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_home] = v16;
  *&v4[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_delegate] = v38;
  v18 = objc_allocWithZone(MEMORY[0x277D02B18]);
  v31 = v17;
  v19 = v16;
  swift_unknownObjectRetain();
  v20 = [v18 initWithServiceType_];
  *&v4[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_cwfInterface] = v20;
  sub_20CECF940(0, &qword_27C8218E8, 0x277D85CA0);
  v21 = *&v4[v15];
  v40 = MEMORY[0x277D84F90];
  sub_20D10F79C(&qword_27C8218F0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8218F8, &qword_20D5C9E08);
  sub_20D10F7E4(&unk_27C821900, &qword_27C8218F8, &qword_20D5C9E08);
  v23 = v34;
  v24 = v35;
  sub_20D5686B8();
  v25 = sub_20D568038();

  (*(v36 + 8))(v23, v24);
  *&v4[v33] = v25;
  swift_unknownObjectRelease();
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v39, sel_init);
  sub_20D10A6F0(sub_20D10F92C, &block_descriptor_76);

  swift_unknownObjectRelease();
  return v26;
}

id HomeWiFiPickerContext.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (qword_27C81A338 != -1)
  {
    swift_once();
  }

  v2 = qword_27C8382D0;
  v3 = sub_20D567EC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v2, v3, "Deiniting...", v4, 2u);
    MEMORY[0x20F31FC70](v4, -1, -1);
  }

  HomeWiFiPickerContext.tearDown()();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

Swift::Void __swiftcall HomeWiFiPickerContext.tearDown()()
{
  if (*(v0 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_scanTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ((sub_20D568048() & 1) == 0)
    {
      sub_20D568068();
    }

    swift_unknownObjectRelease();
  }

  if (*(v0 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_statusTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ((sub_20D568048() & 1) == 0)
    {
      sub_20D568068();
    }

    swift_unknownObjectRelease();
  }

  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_cwfInterface);

  [v1 invalidate];
}

uint64_t HomeWiFiPickerContext.performScan()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_20D109904;

  return sub_20D109AB0();
}

uint64_t sub_20D109904(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x2822009F8](sub_20D109A04, 0, 0);
}

uint64_t sub_20D109A04()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_20D5663C8();
  sub_20D10A6F0(sub_20D10F77C, &block_descriptor_59);

  v3 = *(v0 + 8);
  v4 = *(v0 + 40);

  return v3(v1, v4);
}

uint64_t sub_20D109AD0()
{
  v18 = v0;
  v1 = v0[23];
  v2 = *(v1 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_cwfInterface);
  v0[24] = v2;
  [v2 activate];
  v3 = *(v1 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_delegate);
  v0[25] = v3;
  if (v3)
  {
    [v3 beginScan];
  }

  if (qword_27C81A338 != -1)
  {
    swift_once();
  }

  v4 = qword_27C8382D0;
  v0[26] = qword_27C8382D0;
  v5 = sub_20D567EC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = [*(v6 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_mediaAccessory) hf_displayName];
    v10 = sub_20D567838();
    v12 = v11;

    v13 = sub_20CEE913C(v10, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_20CEB6000, v4, v5, "Now scanning available networks for accessory: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F31FC70](v8, -1, -1);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  v14 = [*(v0[23] + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_mediaAccessory) accessoryWiFiController];
  v0[27] = v14;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_20D109D8C;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821930, &qword_20D5C9F00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20D10DE4C;
  v0[13] = &block_descriptor_72;
  v0[14] = v15;
  [v14 scanNetworksWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20D109D8C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_20D10A52C;
  }

  else
  {
    v2 = sub_20D109E9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20D109E9C()
{
  v70 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = [v1 knownNetworkProfilesWithProperties_];
  if (v5)
  {
    v6 = v5;
    sub_20CECF940(0, &qword_27C821918, 0x277D02B38);
    v7 = sub_20D567A78();
  }

  else
  {
    v7 = v3;
  }

  v8 = *(v0 + 208);
  v9 = sub_20D567EC8();
  v59 = v0;
  v66 = v7;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 208);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v69 = v12;
    *v11 = 136315138;
    v13 = sub_20CECF940(0, &qword_27C821918, 0x277D02B38);
    v14 = MEMORY[0x20F31CF30](v66, v13);
    v16 = sub_20CEE913C(v14, v15, &v69);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_20CEB6000, v10, v9, "knownNetworkProfiles for controller: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F31FC70](v12, -1, -1);
    v17 = v11;
    v7 = v66;
    MEMORY[0x20F31FC70](v17, -1, -1);
  }

  v69 = v3;
  if (v4 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20D568768())
  {
    sub_20D5663C8();
    if (!i)
    {
      break;
    }

    v19 = v4;
    v4 = 0;
    v63 = v19 & 0xFFFFFFFFFFFFFF8;
    v64 = v19 & 0xC000000000000001;
    v58 = v19;
    v68 = v7 & 0xFFFFFFFFFFFFFF8;
    v67 = v7 & 0xC000000000000001;
    v61 = v7 >> 62;
    v62 = v19 + 32;
    v60 = i;
    while (1)
    {
      if (v64)
      {
        v20 = MEMORY[0x20F31DD20](v4, v58);
      }

      else
      {
        if (v4 >= *(v63 + 16))
        {
          goto LABEL_70;
        }

        v20 = *(v62 + 8 * v4);
      }

      v21 = v20;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v23 = [v20 SSID];
      if (v23)
      {
        v0 = v23;
        v24 = sub_20D567838();
        v26 = v25;

        v65 = v21;
        if (v61)
        {
          v27 = sub_20D568768();
          if (v27)
          {
LABEL_21:
            v28 = 0;
            while (1)
            {
              if (v67)
              {
                v29 = MEMORY[0x20F31DD20](v28, v7);
              }

              else
              {
                if (v28 >= *(v68 + 16))
                {
                  goto LABEL_66;
                }

                v29 = *(v7 + 8 * v28 + 32);
              }

              v30 = v29;
              v3 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              v31 = [v29 networkName];
              if (v31)
              {
                v32 = v31;
                v33 = sub_20D567838();
                v35 = v34;

                if (v33 == v24 && v35 == v26)
                {

                  v7 = v66;
LABEL_37:

                  sub_20D5688C8();
                  v0 = *(v69 + 16);
                  sub_20D568908();
                  sub_20D568918();
                  sub_20D5688D8();
                  goto LABEL_41;
                }

                v0 = sub_20D568BF8();

                v7 = v66;
                if (v0)
                {
                  goto LABEL_37;
                }
              }

              else
              {
              }

              ++v28;
              if (v3 == v27)
              {
                goto LABEL_40;
              }
            }

            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
            break;
          }
        }

        else
        {
          v27 = *(v68 + 16);
          if (v27)
          {
            goto LABEL_21;
          }
        }

LABEL_40:

LABEL_41:
        i = v60;
        if (v4 == v60)
        {
LABEL_42:
          v7 = v69;
          v0 = v59;
          v3 = MEMORY[0x277D84F90];
          goto LABEL_44;
        }
      }

      else
      {

        if (v4 == i)
        {
          goto LABEL_42;
        }
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  v7 = v3;
LABEL_44:
  v37 = *(v0 + 184);
  v0 = v66;

  *(v37 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_cwfKnownNetworkProfiles) = v66;

  v38 = sub_20D10DF48();
  v69 = v3;
  if ((v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
  {
    v3 = sub_20D568768();
  }

  else
  {
    v3 = *(v7 + 16);
  }

  v4 = 0;
  v39 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x20F31DD20](v4, v7);
    }

    else
    {
      if (v4 >= *(v7 + 16))
      {
        goto LABEL_68;
      }

      v40 = *(v7 + 8 * v4 + 32);
    }

    v0 = v40;
    v41 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_67;
    }

    v42 = sub_20D10EF0C(v40, v38);

    ++v4;
    if (v42)
    {
      MEMORY[0x20F31CEE0]();
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v0 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20D567AB8();
      }

      sub_20D567B08();
      v39 = v69;
      v4 = v41;
    }
  }

  v43 = v59;
  v44 = *(v59 + 208);

  v45 = sub_20D567EC8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = *(v59 + 208);
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v69 = v48;
    *v47 = 136315138;
    v49 = sub_20D564958();
    v50 = sub_20D5663C8();
    v51 = MEMORY[0x20F31CF30](v50, v49);
    v53 = v52;

    v54 = sub_20CEE913C(v51, v53, &v69);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_20CEB6000, v46, v45, "Final list of scannedNetworks %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v43 = v59;
    MEMORY[0x20F31FC70](v48, -1, -1);
    MEMORY[0x20F31FC70](v47, -1, -1);
  }

  v55 = *(v43 + 200);
  if (v55)
  {
    [v55 endScan];
  }

  v56 = *(v43 + 8);

  return v56(v39, 0);
}

uint64_t sub_20D10A52C(uint64_t a1)
{
  v20 = v1;
  v2 = *(v1 + 216);
  v3 = *(v1 + 208);
  swift_willThrow();

  v4 = sub_20D567EC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 208);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_20D568CC8();
    v10 = sub_20CEE913C(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20CEB6000, v5, v4, "ScanAvailable Networks failed with HomeKit Error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F31FC70](v7, -1, -1);
    MEMORY[0x20F31FC70](v6, -1, -1);
  }

  v11 = *(v1 + 224);
  v12 = *(v1 + 200);
  objc_allocWithZone(sub_20D564978());
  v13 = v11;
  v14 = sub_20D564968();
  if (v12)
  {
    [*(v1 + 200) endScan];
  }

  v15 = *(v1 + 184);

  *(v15 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isScanInProgress) = 0;
  v16 = *(v1 + 8);
  v17 = MEMORY[0x277D84F90];

  return v16(v17, v14);
}

double sub_20D10A6F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_20D567648();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D567678();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_taskQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CFFFE8C;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_20D567658();
  v17 = MEMORY[0x277D84F90];
  sub_20D10F79C(&qword_281120070, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F1F0, &unk_20D5C4420);
  sub_20D10F7E4(&qword_281120050, &qword_27C81F1F0, &unk_20D5C4420);
  sub_20D5686B8();
  MEMORY[0x20F31D480](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);

  return result;
}

uint64_t sub_20D10AB30(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20D10ABD8;

  return sub_20D109AB0();
}

uint64_t sub_20D10ABD8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return MEMORY[0x2822009F8](sub_20D10ACD8, 0, 0);
}

uint64_t sub_20D10ACD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  sub_20D5663C8();
  sub_20D10A6F0(sub_20D10F77C, &block_descriptor_59);

  sub_20D564958();
  sub_20D5663C8();
  v4 = sub_20D567A58();

  (v2)[2](v2, v4, v3);

  _Block_release(v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t HomeWiFiPickerContext.associate(to:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610, &qword_20D5BCCE0);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D10AEA0, 0, 0);
}

uint64_t sub_20D10AEA0()
{
  v2 = v1[21];
  v3 = OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isNetworkJoinInProgress;
  v1[23] = OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isNetworkJoinInProgress;
  *(v2 + v3) = 1;
  v4 = *(v2 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_cwfKnownNetworkProfiles);
  v5 = &OBJC_IVAR___HUQuickControlPresentationCoordinator__touchGestureRecognizer;
  v6 = 0x27C838000;
  if (!v4)
  {
    v0 = 0;
    goto LABEL_35;
  }

  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    v8 = sub_20D568768();
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_20D5663C8();
  if (!v8)
  {
LABEL_23:

    v0 = 0;
    v6 = 0x27C838000;
    v5 = &OBJC_IVAR___HUQuickControlPresentationCoordinator__touchGestureRecognizer;
    goto LABEL_35;
  }

  v9 = 0;
  v45 = v4;
  v46 = v4 & 0xC000000000000001;
  while (1)
  {
    if (v46)
    {
      v10 = MEMORY[0x20F31DD20](v9, v4);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_43;
      }

      v10 = *(v4 + 8 * v9 + 32);
    }

    v0 = v10;
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v12 = [v10 networkName];
    if (!v12)
    {
      sub_20D564928();
LABEL_7:

      goto LABEL_8;
    }

    v13 = v0;
    v14 = v8;
    v15 = v12;
    v6 = sub_20D567838();
    v17 = v16;

    v18 = sub_20D564928();
    if (!v17)
    {
      v8 = v14;
      v0 = v13;
      v4 = v45;
      goto LABEL_7;
    }

    if (v6 == v18 && v17 == v19)
    {
      break;
    }

    v6 = sub_20D568BF8();

    v8 = v14;
    v0 = v13;
    v4 = v45;
    if (v6)
    {
      goto LABEL_26;
    }

LABEL_8:

    ++v9;
    if (v11 == v8)
    {
      goto LABEL_23;
    }
  }

  v0 = v13;
LABEL_26:

  v21 = v0;
  v6 = &iCloudQuotaLibraryCore_frameworkLibrary;
  v5 = &OBJC_IVAR___HUQuickControlPresentationCoordinator__touchGestureRecognizer;
  if ([v21 isOpen])
  {
  }

  else
  {
    v22 = *(v1[21] + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_cwfInterface);
    v1[18] = 0;
    v23 = [v22 passwordForKnownNetworkProfile:v21 error:v1 + 18];
    v24 = v1[18];
    if (v23)
    {
      v25 = v23;
      sub_20D567838();
      v26 = v24;
    }

    else
    {
      v27 = v24;
      v28 = sub_20D5635D8();

      swift_willThrow();
      if (qword_27C81A338 != -1)
      {
        swift_once();
      }

      v29 = qword_27C8382D0;
      v30 = sub_20D567EC8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_20CEB6000, v29, v30, "Failed to retrieve password. Continuing association with empty password.", v31, 2u);
        MEMORY[0x20F31FC70](v31, -1, -1);
      }
    }
  }

LABEL_35:
  v1[24] = v0;
  if (*(v5 + 103) != -1)
  {
LABEL_44:
    swift_once();
  }

  v32 = *(v6 + 720);
  v1[25] = v32;
  swift_bridgeObjectRetain_n();
  v33 = sub_20D567EC8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v1[20];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412802;
    *(v35 + 4) = v34;
    *(v35 + 12) = 2112;
    *(v35 + 14) = v0;
    *v36 = v34;
    v36[1] = v0;
    *(v35 + 22) = 2048;
    v37 = v34;
    v38 = v0;
    v39 = sub_20D5678D8();

    *(v35 + 24) = v39;

    _os_log_impl(&dword_20CEB6000, v32, v33, "Now associating to network: %@ mathching knownNetwork: %@ with password length: %ld", v35, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60, &unk_20D5BDEB0);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v36, -1, -1);
    MEMORY[0x20F31FC70](v35, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v40 = [*(v1[21] + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_mediaAccessory) accessoryWiFiController];
  v1[26] = v40;
  sub_20D564928();
  v41 = sub_20D5677F8();
  v1[27] = v41;

  v42 = sub_20D5677F8();
  v1[28] = v42;

  v1[2] = v1;
  v1[7] = v1 + 19;
  v1[3] = sub_20D10B4B4;
  v43 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821910, &qword_20D5C9E30);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_20D08E9CC;
  v1[13] = &block_descriptor_53;
  v1[14] = v43;
  [v40 joinNetworkWithSSID:v41 password:v42 completion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_20D10B4B4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_20D10B9EC;
  }

  else
  {
    v2 = sub_20D10B5F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20D10B5F0()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 152);

  if (v3)
  {
    v4 = *(v0 + 168);
    v5 = v3;
    v6 = sub_20D10EF0C(v5, 0);

    v7 = *(v4 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_delegate);
    v8 = v6;
    if (v7)
    {
      [v7 didJoinNewNetwork];
    }

    v30 = *(v0 + 200);
    v31 = sub_20D567EC8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 200);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v6;
      *v34 = v6;
      v35 = v6;
      _os_log_impl(&dword_20CEB6000, v32, v31, "Association to network: %@ Succeeded!", v33, 0xCu);
      sub_20CF31DFC(v34);
      MEMORY[0x20F31FC70](v34, -1, -1);
      MEMORY[0x20F31FC70](v33, -1, -1);
    }

    else
    {
      v35 = v6;
    }

    v36 = *(v0 + 184);
    v37 = *(v0 + 168);

    v26 = 0;
    *(v37 + v36) = 0;
  }

  else
  {
    v9 = *(v0 + 192);
    v10 = *MEMORY[0x277CCFD28];
    v11 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:v10 code:sub_20D564988() userInfo:0];

    swift_willThrow();
    v12 = *(v0 + 200);
    v13 = sub_20D567EC8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 200);
      v15 = *(v0 + 160);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v15;
      *v17 = v15;
      *(v16 + 12) = 2112;
      v18 = v15;
      v19 = v11;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      v17[1] = v20;
      _os_log_impl(&dword_20CEB6000, v14, v13, "Association to network: %@ failed with error %@", v16, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60, &unk_20D5BDEB0);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v17, -1, -1);
      MEMORY[0x20F31FC70](v16, -1, -1);
    }

    v21 = *(v0 + 176);
    v22 = *(v0 + 184);
    v23 = *(v0 + 168);
    v24 = objc_allocWithZone(sub_20D564978());
    v25 = v11;
    v26 = sub_20D564968();
    v23[v22] = 0;
    v27 = sub_20D567C58();
    (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v23;
    v29 = v23;
    sub_20CF18960(0, 0, v21, &unk_20D5C9E40, v28);

    v6 = 0;
  }

  v38 = *(v0 + 8);

  return v38(v6, v26);
}

uint64_t sub_20D10B9EC(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  v5 = v1[24];
  swift_willThrow();

  v6 = v1[29];
  v7 = v1[25];
  v8 = sub_20D567EC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1[25];
    v10 = v1[20];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2112;
    v13 = v10;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    v12[1] = v15;
    _os_log_impl(&dword_20CEB6000, v9, v8, "Association to network: %@ failed with error %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60, &unk_20D5BDEB0);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v12, -1, -1);
    MEMORY[0x20F31FC70](v11, -1, -1);
  }

  v16 = v1[22];
  v17 = v1[23];
  v18 = v1[21];
  v19 = objc_allocWithZone(sub_20D564978());
  v20 = v6;
  v21 = sub_20D564968();
  v18[v17] = 0;
  v22 = sub_20D567C58();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v18;
  v24 = v18;
  sub_20CF18960(0, 0, v16, &unk_20D5C9E40, v23);

  v25 = v1[1];

  return v25(0, v21);
}

uint64_t sub_20D10BC78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20D10BD08;

  return sub_20D10BE0C();
}

uint64_t sub_20D10BD08(void *a1, void *a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_20D10BE2C(uint64_t a1)
{
  v17 = v1;
  v1[24] = sub_20D10DF48();
  if (qword_27C81A338 != -1)
  {
    swift_once();
  }

  v2 = qword_27C8382D0;
  v1[25] = qword_27C8382D0;
  v3 = sub_20D567EC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = [*(v4 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_mediaAccessory) hf_displayName];
    v8 = sub_20D567838();
    v10 = v9;

    v11 = sub_20CEE913C(v8, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_20CEB6000, v2, v3, "Now fetching current network status for accessory %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x20F31FC70](v6, -1, -1);
    MEMORY[0x20F31FC70](v5, -1, -1);
  }

  v12 = *(v1[23] + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_mediaAccessory);
  v1[26] = v12;
  v13 = [v12 accessoryWiFiController];
  v1[27] = v13;
  v1[2] = v1;
  v1[7] = v1 + 21;
  v1[3] = sub_20D10C0B8;
  v14 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821910, &qword_20D5C9E30);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_20D08E9CC;
  v1[13] = &block_descriptor_52;
  v1[14] = v14;
  [v13 queryWiFiNetworkWithCompletion_];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_20D10C0B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {

    v2 = sub_20D10C718;
  }

  else
  {
    v2 = sub_20D10C1D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20D10C1D0()
{
  v58 = v0;
  v1 = *(v0 + 168);

  v2 = *(v0 + 200);
  if (v1)
  {
    v3 = sub_20D567EC8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 200);
      v5 = *(v0 + 208);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v57 = v7;
      *v6 = 136315394;
      v8 = [v5 hf_displayName];
      v9 = sub_20D567838();
      v11 = v10;

      v12 = sub_20CEE913C(v9, v11, &v57);

      *(v6 + 4) = v12;
      *(v6 + 12) = 2080;
      v13 = [v1 hf_prettyDescription];
      v14 = sub_20D567838();
      v16 = v15;

      v17 = sub_20CEE913C(v14, v16, &v57);

      *(v6 + 14) = v17;
      _os_log_impl(&dword_20CEB6000, v4, v3, "Fetched network status for accessory: %s - status: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v7, -1, -1);
      MEMORY[0x20F31FC70](v6, -1, -1);
    }

    v18 = sub_20D10EF0C(v1, *(v0 + 192));
    v19 = v18;
    if (v18)
    {
      v20 = *(v0 + 184);
      if (*(v20 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isNetworkJoinInProgress))
      {

        v21 = 0;
      }

      else
      {
        v39 = v18;

        v40 = *(v20 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_delegate);
        if (v40)
        {
          [v40 updateCurrentWiFiNetwork_];
        }

        v21 = 0;
      }
    }

    else
    {
      v26 = *(v0 + 200);
      v27 = objc_allocWithZone(sub_20D564978());
      v21 = sub_20D564968();
      v28 = sub_20D567EC8();
      v29 = os_log_type_enabled(v26, v28);
      v30 = *(v0 + 192);
      if (v29)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v56;
        *v31 = 138412546;
        *(v31 + 4) = v1;
        *v32 = v1;
        *(v31 + 12) = 2080;
        if (v30)
        {
          v33 = *(v0 + 192);
          v34 = sub_20CECF940(0, &qword_27C821918, 0x277D02B38);
          v35 = v1;
          v36 = MEMORY[0x20F31CF30](v33, v34);
          v38 = v37;
        }

        else
        {
          v41 = v1;
          v36 = 0;
          v38 = 0xE000000000000000;
        }

        v42 = *(v0 + 200);
        v43 = sub_20CEE913C(v36, v38, &v57);

        *(v31 + 14) = v43;
        _os_log_impl(&dword_20CEB6000, v42, v28, "Failed to get wifiNetwork from wiFiInfo  %@: networkProfiles: %s", v31, 0x16u);
        sub_20CF31DFC(v32);
        MEMORY[0x20F31FC70](v32, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x20F31FC70](v56, -1, -1);
        MEMORY[0x20F31FC70](v31, -1, -1);
      }

      else
      {
      }
    }

    v44 = *(v0 + 200);
    v45 = *(v0 + 184);
    v46 = sub_20D567EC8();
    if (os_log_type_enabled(v44, v46))
    {
      v47 = *(v0 + 200);
      v48 = *(v0 + 184);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412546;
      *(v49 + 4) = v19;
      *v50 = v19;
      *(v49 + 12) = 1024;
      v51 = v48[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isNetworkJoinInProgress];
      v52 = v19;

      *(v49 + 14) = v51;
      _os_log_impl(&dword_20CEB6000, v47, v46, "Returning  wiFiInfo wifiNetwork %@ isNetworkJoinInProgress: %{BOOL}d", v49, 0x12u);
      sub_20CF31DFC(v50);
      MEMORY[0x20F31FC70](v50, -1, -1);
      MEMORY[0x20F31FC70](v49, -1, -1);
    }

    else
    {
      v53 = *(v0 + 184);
    }
  }

  else
  {

    v22 = sub_20D567EC8();
    if (os_log_type_enabled(v2, v22))
    {
      v23 = *(v0 + 200);
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20CEB6000, v23, v22, "queryCurrentWiFiNetwork returned nil wifiInfo", v24, 2u);
      MEMORY[0x20F31FC70](v24, -1, -1);
    }

    v25 = objc_allocWithZone(sub_20D564978());
    v21 = sub_20D564968();
    v19 = 0;
  }

  v54 = *(v0 + 8);

  return v54(v19, v21);
}

uint64_t sub_20D10C718(uint64_t a1)
{
  v15 = v1;
  v2 = v1[27];
  v3 = v1[25];
  swift_willThrow();

  v4 = sub_20D567EC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_20D568CC8();
    v10 = sub_20CEE913C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20CEB6000, v5, v4, "Fetching current network failed with HomeKit Error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F31FC70](v7, -1, -1);
    MEMORY[0x20F31FC70](v6, -1, -1);
  }

  objc_allocWithZone(sub_20D564978());
  v11 = sub_20D564968();
  v12 = v1[1];

  return v12(0, v11);
}

uint64_t sub_20D10CA24(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_20D10CAE8;

  return HomeWiFiPickerContext.associate(to:)(v6);
}

uint64_t sub_20D10CAE8(void *a1, void *a2)
{
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v10 = *v2;

  (v5)[2](v5, a1, a2);
  _Block_release(v5);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_20D10CC80()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isNetworkFetchInProgress;
  v0[3] = OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isNetworkFetchInProgress;
  *(v1 + v2) = 1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_20D10CD28;

  return sub_20D10BE0C();
}

uint64_t sub_20D10CD28(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return MEMORY[0x2822009F8](sub_20D10CE28, 0, 0);
}

uint64_t sub_20D10CFBC(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_20D10D034, 0, 0);
}

uint64_t sub_20D10D034()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isNetworkFetchInProgress;
  v0[4] = OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isNetworkFetchInProgress;
  *(v1 + v2) = 1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_20D10D0DC;

  return sub_20D10BE0C();
}

uint64_t sub_20D10D0DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return MEMORY[0x2822009F8](sub_20D10D1DC, 0, 0);
}

uint64_t sub_20D10D1DC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[2];
  v4[v0[4]] = 0;

  (v3)[2](v3, v1, v2);
  _Block_release(v3);
  v5 = v0[1];

  return v5();
}

Swift::Void __swiftcall HomeWiFiPickerContext.wifiPickerViewDidAppear()()
{
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_delegate);
  if (v1)
  {
    [v1 wifiPickerViewDidAppear];
  }
}

Swift::Void __swiftcall HomeWiFiPickerContext.wifiPickerViewDidDisappear()()
{
  HomeWiFiPickerContext.tearDown()();
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_delegate);
  if (v1)
  {

    [v1 wifiPickerViewDidDisappear];
  }
}

void sub_20D10D368(uint64_t a1)
{
  v1 = sub_20D567648();
  v41 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v39 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20D567678();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D567638();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_20D567698();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  v13 = sub_20D568028();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v35 = v1;
    v19 = OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isScanTimerCancelled;
    if (*(Strong + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isScanTimerCancelled) != 1)
    {
      goto LABEL_13;
    }

    v36 = OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_scanTimer;
    if (!*(Strong + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_scanTimer))
    {
      v20 = sub_20CECF940(0, &qword_27C8218E8, 0x277D85CA0);
      v34[2] = *&v18[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_taskQueue];
      v34[3] = v20;
      aBlock[0] = MEMORY[0x277D84F90];
      v34[1] = sub_20D10F79C(&qword_27C8218F0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8218F8, &qword_20D5C9E08);
      sub_20D10F7E4(&unk_27C821900, &qword_27C8218F8, &qword_20D5C9E08);
      sub_20D5686B8();
      v21 = sub_20D568038();
      (*(v14 + 8))(v16, v13);
      *&v18[v36] = v21;
      swift_unknownObjectRelease();
    }

    if (qword_27C81A338 != -1)
    {
      swift_once();
    }

    v22 = qword_27C8382D0;
    v23 = sub_20D567EC8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20CEB6000, v22, v23, "Starting Network Periodic Scan...", v24, 2u);
      MEMORY[0x20F31FC70](v24, -1, -1);
    }

    v18[v19] = 0;
    if (*&v18[v36] && (ObjectType = swift_getObjectType(), swift_unknownObjectRetain(), sub_20D567688(), sub_20D5676D8(), v26 = *(v42 + 8), v26(v9, v7), *v6 = 0, v28 = v43, v27 = v44, (*(v43 + 104))(v6, *MEMORY[0x277D85168], v44), MEMORY[0x20F31D700](v12, v6, ObjectType, 10.0), swift_unknownObjectRelease(), (*(v28 + 8))(v6, v27), v26(v12, v7), v29 = v36, *&v18[v36]) && (swift_getObjectType(), v30 = swift_allocObject(), swift_unknownObjectWeakInit(), aBlock[4] = sub_20D10F838, aBlock[5] = v30, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = sub_20CFFFE8C, aBlock[3] = &block_descriptor_63, v31 = _Block_copy(aBlock), swift_unknownObjectRetain(), , v32 = v37, sub_20D567658(), v33 = v39, sub_20D10DD74(), sub_20D568058(), _Block_release(v31), swift_unknownObjectRelease(), (*(v41 + 8))(v33, v35), (*(v38 + 8))(v32, v40), , , *&v18[v29]))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_20D568078();

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_13:
    }
  }
}

uint64_t sub_20D10DA78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20D10DB60;

    return sub_20D109AB0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20D10DB60(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return MEMORY[0x2822009F8](sub_20D10DC60, 0, 0);
}

uint64_t sub_20D10DC60()
{
  v1 = v0[8];
  *(v0[6] + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isScanInProgress) = 0;
  if (v1 >> 62)
  {
    v8 = sub_20D568768();
    v2 = v0[6];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v2 = v0[6];
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  v3 = *&v2[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_delegate];
  if (v3)
  {
    sub_20D564958();
    sub_20D5663C8();
    v4 = sub_20D567A58();

    [v3 updateScannedWiFiNetworks_];

    v2 = v0[6];
  }

LABEL_5:
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_20D10DD74()
{
  sub_20D567648();
  sub_20D10F79C(&qword_281120070, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F1F0, &unk_20D5C4420);
  sub_20D10F7E4(&qword_281120050, &qword_27C81F1F0, &unk_20D5C4420);
  return sub_20D5686B8();
}

uint64_t sub_20D10DE4C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0, &unk_20D5BDF40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_20CECF940(0, &qword_27C821938, 0x277CD1AC8);
      v9 = sub_20D567A78();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_20D10DF48()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_home) primaryResidentNetworkInfo];
  if (qword_27C81A338 != -1)
  {
    swift_once();
  }

  v2 = qword_27C8382D0;
  v3 = sub_20D567EC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v1;
    *v5 = v1;
    v6 = v1;
    _os_log_impl(&dword_20CEB6000, v2, v3, "primaryResidentNetworkInfo: %@", v4, 0xCu);
    sub_20CF31DFC(v5);
    MEMORY[0x20F31FC70](v5, -1, -1);
    MEMORY[0x20F31FC70](v4, -1, -1);
  }

  if (v1)
  {
    v7 = [v1 binaryIPv4NetworkSignature];
    if (v7)
    {
      v8 = v7;
      v9 = sub_20D5636D8();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    v12 = [v1 binaryIPv6NetworkSignature];
    if (v12)
    {
      v13 = v12;
      v14 = sub_20D5636D8();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xF000000000000000;
    }

    if (v11 >> 60 != 15)
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_20CF26E34(v9, v11);
      sub_20D108D88(v9, v11);
      sub_20D10F768(v9, v11);
    }

    v34 = v16;
    v35 = v9;
    v33 = v14;
    if (v16 >> 60 != 15)
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_20CF26E34(v14, v16);
      sub_20D108D88(v14, v16);
      sub_20D10F768(v14, v16);
    }

    v17 = [objc_allocWithZone(MEMORY[0x277D02B40]) initWithIPv4NetworkSignature:0 IPv6NetworkSignature:0];

    v18 = sub_20D567EC8();
    if (os_log_type_enabled(v2, v18))
    {
      v32 = v11;
      v19 = swift_slowAlloc();
      log = v2;
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315650;
      v21 = sub_20CEE913C(1280070990, 0xE400000000000000, &v37);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2080;
      v22 = sub_20CEE913C(1280070990, 0xE400000000000000, &v37);

      *(v19 + 14) = v22;
      *(v19 + 22) = 2080;
      if (v17)
      {
        v23 = 0x64696C6176;
      }

      else
      {
        v23 = 1280070990;
      }

      if (v17)
      {
        v24 = 0xE500000000000000;
      }

      else
      {
        v24 = 0xE400000000000000;
      }

      v25 = sub_20CEE913C(v23, v24, &v37);

      *(v19 + 24) = v25;
      _os_log_impl(&dword_20CEB6000, log, v18, "ipv4NetworkSignature: %s, ipv6NetworkSignature: %s networkSignature is %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v20, -1, -1);
      v26 = v19;
      v11 = v32;
      MEMORY[0x20F31FC70](v26, -1, -1);
    }

    else
    {
    }

    if (v17)
    {
      v27 = [*(v36 + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_cwfInterface) knownNetworkProfilesWithNetworkSignature_];
      if (v27)
      {
        v28 = v27;
        sub_20CECF940(0, &qword_27C821918, 0x277D02B38);
        v29 = sub_20D567A78();

        sub_20D10F768(v33, v34);
        sub_20D10F768(v35, v11);

        return v29;
      }
    }

    sub_20D10F768(v33, v34);
    sub_20D10F768(v35, v11);
  }

  return 0;
}

void sub_20D10E498(uint64_t a1)
{
  v1 = sub_20D567648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v30 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D567678();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D567638();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_20D567698();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v27 = v4;
    v15 = OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isCurrentNetworkTimerCancelled;
    if (*(Strong + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isCurrentNetworkTimerCancelled) != 1)
    {
      goto LABEL_11;
    }

    v25 = v2;
    v26 = v1;
    if (qword_27C81A338 != -1)
    {
      swift_once();
    }

    v16 = qword_27C8382D0;
    v17 = sub_20D567EC8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20CEB6000, v16, v17, "Starting Network Periodic Fetch...", v18, 2u);
      MEMORY[0x20F31FC70](v18, -1, -1);
    }

    v14[v15] = 0;
    v19 = OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_statusTimer;
    if (*&v14[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_statusTimer] && (ObjectType = swift_getObjectType(), swift_unknownObjectRetain(), sub_20D567688(), *v9 = 0, (*(v7 + 104))(v9, *MEMORY[0x277D85168], v6), MEMORY[0x20F31D700](v12, v9, ObjectType, 10.0), swift_unknownObjectRelease(), (*(v7 + 8))(v9, v6), (*(v31 + 8))(v12, v10), *&v14[v19]) && (swift_getObjectType(), v21 = swift_allocObject(), swift_unknownObjectWeakInit(), aBlock[4] = sub_20D10F934, aBlock[5] = v21, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = sub_20CFFFE8C, aBlock[3] = &block_descriptor_80, v22 = _Block_copy(aBlock), swift_unknownObjectRetain(), , v23 = v28, sub_20D567658(), v24 = v30, sub_20D10DD74(), sub_20D568058(), _Block_release(v22), swift_unknownObjectRelease(), (*(v25 + 8))(v24, v26), (*(v29 + 8))(v23, v27), , , *&v14[v19]))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_20D568078();

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_11:
    }
  }
}

double sub_20D10E9B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610, &qword_20D5BCCE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + *a2))
    {
    }

    else
    {
      *(Strong + *a2) = 1;
      v11 = Strong;
      v12 = sub_20D567C58();
      (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v13;
      sub_20CF18960(0, 0, v8, a4, v14);
    }
  }

  return result;
}

uint64_t sub_20D10EB4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20D10EC34;

    return sub_20D10BE0C();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20D10EC34(void *a1, void *a2)
{

  return MEMORY[0x2822009F8](sub_20D10ED40, 0, 0);
}

uint64_t sub_20D10ED40()
{
  v1 = *(v0 + 48);
  v1[OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_isNetworkFetchInProgress] = 0;

  v2 = *(v0 + 8);

  return v2();
}

id HomeWiFiPickerContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_20D10EE58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CEF934C;

  return sub_20D10BC78();
}

void *sub_20D10EF0C(void *a1, unint64_t a2)
{
  v4 = a1;
  v5 = [a1 SSID];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v53 = sub_20D567838();
  v8 = v7;

  v9 = [v4 security];
  if (v9)
  {
    v54 = 0.0;
    v55 = 1;
    v10 = v9;
    MEMORY[0x20F31D170](v9, &v54);

    if (v55)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v54;
    }

    if ((v55 & 1) == 0 && (*&v54 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_44;
    }

    if (v11 <= -9.22337204e18)
    {
      goto LABEL_42;
    }

    if (v11 >= 9.22337204e18)
    {
      goto LABEL_43;
    }
  }

  v12 = [v4 RSSI];
  if (v12)
  {
    v54 = 0.0;
    v55 = 1;
    v13 = v12;
    MEMORY[0x20F31D170](v12, &v54);
  }

  v14 = [v4 macAddress];
  if (v14)
  {
    v15 = v14;
    sub_20D567838();
  }

  objc_allocWithZone(sub_20D564958());
  sub_20D5663C8();
  v16 = sub_20D564938();
  v17 = [v4 BSSID];
  if (v17)
  {
    v18 = v17;
    sub_20D567838();
  }

  sub_20D564948();
  v19 = [v4 displayName];
  if (v19)
  {
    v20 = v19;
    sub_20D567838();
  }

  else
  {
    sub_20D5663C8();
  }

  sub_20D5648F8();
  v21 = &iCloudQuotaLibraryCore_frameworkLibrary;
  if (a2)
  {
    v51 = v4;
    v52 = v16;
    v2 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_45;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
    {
      v23 = 0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x20F31DD20](v23, a2);
        }

        else
        {
          if (v23 >= *(v2 + 16))
          {
            goto LABEL_41;
          }

          v24 = *(a2 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v27 = [v24 networkName];
        if (v27)
        {
          v28 = v8;
          v29 = v27;
          v30 = sub_20D567838();
          v32 = v31;

          v8 = v28;
          if (v30 == v53 && v32 == v28)
          {

            goto LABEL_47;
          }

          v34 = sub_20D568BF8();

          if (v34)
          {
            goto LABEL_46;
          }
        }

        else
        {
        }

        ++v23;
        if (v26 == i)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      ;
    }

LABEL_46:

LABEL_47:
    v16 = v52;
    sub_20D564918();
    v35 = &OBJC_IVAR___HUQuickControlPresentationCoordinator__touchGestureRecognizer;
    v21 = &iCloudQuotaLibraryCore_frameworkLibrary;
    if (qword_27C81A338 != -1)
    {
      swift_once();
    }

    v36 = qword_27C8382D0;
    v37 = v52;
    v38 = sub_20D567EC8();
    if (os_log_type_enabled(v36, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412546;
      *(v39 + 4) = v37;
      *v40 = v37;
      *(v39 + 12) = 1024;
      v41 = v37;
      v42 = sub_20D564908();

      v43 = v42 & 1;
      v21 = &iCloudQuotaLibraryCore_frameworkLibrary;
      *(v39 + 14) = v43;

      _os_log_impl(&dword_20CEB6000, v36, v38, "wifiNetwork %@ is Preferred Network? %{BOOL}d", v39, 0x12u);
      sub_20CF31DFC(v40);
      MEMORY[0x20F31FC70](v40, -1, -1);
      MEMORY[0x20F31FC70](v39, -1, -1);
    }

    else
    {
    }

    v4 = v51;
  }

  else
  {

    v35 = &OBJC_IVAR___HUQuickControlPresentationCoordinator__touchGestureRecognizer;
  }

  if (*(v35 + 103) != -1)
  {
    swift_once();
  }

  v44 = v21[90];
  v45 = sub_20D567EC8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412546;
    *(v46 + 4) = v16;
    *(v46 + 12) = 2112;
    *(v46 + 14) = v4;
    *v47 = v16;
    v47[1] = v4;
    v48 = v16;
    v49 = v4;
    _os_log_impl(&dword_20CEB6000, v44, v45, "Returning WiFiNetwork %@ for homeWiFiInfo: %@", v46, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60, &unk_20D5BDEB0);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v47, -1, -1);
    MEMORY[0x20F31FC70](v46, -1, -1);
  }

  return v16;
}

uint64_t sub_20D10F55C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20D10CFBC(v2, v3);
}

uint64_t sub_20D10F608()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20CEF934C;

  return sub_20D10CA24(v2, v3, v4);
}

uint64_t sub_20D10F6BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF5FFC;

  return sub_20D10AB30(v2, v3);
}

uint64_t sub_20D10F768(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20CEF5EF8(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D10F79C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D10F7E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_20D10F878(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20D10DA58(a1, v4, v5, v6);
}

uint64_t sub_20D10F974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20D10EB2C(a1, v4, v5, v6);
}

uint64_t sub_20D10FA74(uint64_t a1, char a2)
{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BF08, &qword_20D5BCC48);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_20D5BC4B0;
    *(v3 + 32) = a2 & 1 | 0x80;
    *(v3 + 33) = a2 & 1 | 0x80;
    return v3;
  }

  if (a1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BF08, &qword_20D5BCC48);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_20D5BC410;
    *(v3 + 32) = a2 & 1 | 0x80;
    return v3;
  }

  v3 = sub_20CEE89EC(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_20CEE89EC((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + v6 + 32) = a2 & 1 | 0x60;
  v9 = v3;
  result = a1 - 3;
  if (!__OFSUB__(a1, 3))
  {
    if (result >= 1)
    {
      v8 = sub_20D10FA74(result, a2 & 1);
      sub_20CF6C180(v8);
      return v9;
    }

    return v3;
  }

  __break(1u);
  return result;
}

double sub_20D10FD48(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_20D10FDA8(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___HUAccessoryEventPickerViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

uint64_t sub_20D10FF1C()
{
  v1 = (v0 + OBJC_IVAR___HUAccessoryEventPickerViewController_filter);
  swift_beginAccess();
  v2 = *v1;
  sub_20CEC81F4(*v1, v1[1]);
  return v2;
}

uint64_t sub_20D110038(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HUAccessoryEventPickerViewController_filter);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_20CEC8164(v6, v7);
}

uint64_t sub_20D110098@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HUAccessoryEventPickerViewController_filter);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20CF879F4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20CEC81F4(v4, v5);
}

uint64_t sub_20D110138(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20CF879B0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___HUAccessoryEventPickerViewController_filter);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20CEC81F4(v3, v4);
  return sub_20CEC8164(v8, v9);
}

id AccessoryEventPickerViewController.__allocating_init(eventBuilderItem:triggerBuilder:mode:source:delegate:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR___HUAccessoryEventPickerViewController_accessoryElementModule] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v10[OBJC_IVAR___HUAccessoryEventPickerViewController_filter];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v10[OBJC_IVAR___HUAccessoryEventPickerViewController_eventBuilderItem] = a1;
  *&v10[OBJC_IVAR___HUAccessoryEventPickerViewController_triggerBuilder] = a2;
  *&v10[OBJC_IVAR___HUAccessoryEventPickerViewController_mode] = a3;
  *&v10[OBJC_IVAR___HUAccessoryEventPickerViewController_source] = a4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v12 = type metadata accessor for AccessoryEventItemSelectionController();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_flow;
  *&v13[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_flow] = 0;
  v15 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_stepIdentifier;
  *&v13[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_stepIdentifier] = 0;
  v13[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_allowsDeselecting] = 0;
  *&v13[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectedItems] = MEMORY[0x277D84FA0];
  v16 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectionCompleteFuture;
  v17 = objc_opt_self();
  v18 = a1;
  v19 = a2;
  v20 = v18;
  v21 = [v17 futureWithNoResult];
  v22 = [v21 asGeneric];

  *&v13[v16] = v22;
  *&v13[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_triggerBuilder] = v19;
  v23 = *&v13[v14];
  *&v13[v14] = 0;
  v24 = v19;

  v25 = *&v13[v15];
  *&v13[v15] = 0;

  *&v13[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_eventBuilderItem] = v20;
  v47.receiver = v13;
  v47.super_class = v12;
  v26 = objc_msgSendSuper2(&v47, sel_init);

  *&v10[OBJC_IVAR___HUAccessoryEventPickerViewController_selectionController] = v26;
  v26[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_allowsDeselecting] = a3 == 0;
  v46.receiver = v10;
  v46.super_class = v38;
  v27 = [objc_allocWithZone(MEMORY[0x277D14B08]) initWithDelegate_];
  v28 = objc_msgSendSuper2(&v46, sel_initUsingCompositionalLayoutWithItemManager_, v27);
  [v27 setDelegate_];

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = sub_20D1126C4;
  v45 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_20CF351D8;
  v43 = &block_descriptor_54;
  v30 = _Block_copy(&aBlock);

  [v27 setHomeCreator_];
  _Block_release(v30);
  v31 = sub_20D1126E4(a4);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;
  v44 = sub_20D1129B4;
  v45 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_20CF35658;
  v43 = &block_descriptor_7_2;
  v34 = _Block_copy(&aBlock);
  v35 = v31;

  [v27 setItemModuleCreator_];
  _Block_release(v34);

  swift_unknownObjectRelease();
  return v28;
}

id AccessoryEventPickerViewController.init(eventBuilderItem:triggerBuilder:mode:source:delegate:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR___HUAccessoryEventPickerViewController_accessoryElementModule] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v5[OBJC_IVAR___HUAccessoryEventPickerViewController_filter];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v5[OBJC_IVAR___HUAccessoryEventPickerViewController_eventBuilderItem] = a1;
  *&v5[OBJC_IVAR___HUAccessoryEventPickerViewController_triggerBuilder] = a2;
  *&v5[OBJC_IVAR___HUAccessoryEventPickerViewController_mode] = a3;
  *&v5[OBJC_IVAR___HUAccessoryEventPickerViewController_source] = a4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v11 = type metadata accessor for AccessoryEventItemSelectionController();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_flow;
  *&v12[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_flow] = 0;
  v14 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_stepIdentifier;
  *&v12[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_stepIdentifier] = 0;
  v12[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_allowsDeselecting] = 0;
  *&v12[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectedItems] = MEMORY[0x277D84FA0];
  v15 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectionCompleteFuture;
  v16 = objc_opt_self();
  v17 = a1;
  v18 = a2;
  v19 = v17;
  v20 = [v16 futureWithNoResult];
  v21 = [v20 asGeneric];

  *&v12[v15] = v21;
  *&v12[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_triggerBuilder] = v18;
  v22 = *&v12[v13];
  *&v12[v13] = 0;
  v23 = v18;

  v24 = *&v12[v14];
  *&v12[v14] = 0;

  *&v12[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_eventBuilderItem] = v19;
  v46.receiver = v12;
  v46.super_class = v11;
  v25 = objc_msgSendSuper2(&v46, sel_init);

  *&v5[OBJC_IVAR___HUAccessoryEventPickerViewController_selectionController] = v25;
  v25[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_allowsDeselecting] = a3 == 0;
  v26 = [objc_allocWithZone(MEMORY[0x277D14B08]) initWithDelegate_];
  v45.receiver = v5;
  v45.super_class = type metadata accessor for AccessoryEventPickerViewController();
  v27 = v26;
  v28 = objc_msgSendSuper2(&v45, sel_initUsingCompositionalLayoutWithItemManager_, v27);
  [v27 setDelegate_];

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = sub_20D112CC4;
  v44 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_20CF351D8;
  v42 = &block_descriptor_12_0;
  v30 = _Block_copy(&aBlock);

  [v27 setHomeCreator_];
  _Block_release(v30);
  v31 = sub_20D1126E4(a4);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;
  v43 = sub_20D112CC0;
  v44 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_20CF35658;
  v42 = &block_descriptor_20_0;
  v34 = _Block_copy(&aBlock);
  v35 = v31;

  [v27 setItemModuleCreator_];
  _Block_release(v34);

  swift_unknownObjectRelease();
  return v28;
}

id sub_20D110B04(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = *(Strong + OBJC_IVAR___HUAccessoryEventPickerViewController_triggerBuilder), v2, v4 = [v3 home], v3, v4))
  {
    v5 = [objc_opt_self() futureWithResult_];
  }

  else
  {
    v6 = [objc_opt_self() hf:59 errorWithCode:?];
    v4 = sub_20D5635C8();
    v5 = [objc_opt_self() futureWithError_];
  }

  return v5;
}

double sub_20D110C24(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = objc_allocWithZone(type metadata accessor for EventAccessoryItemModule());
  v8 = &v7[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v7[OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider] = 0;
  *&v7[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = a3;
  swift_getObjectType();
  v9 = a3;
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = sub_20CF86924(v10, a2, 0, 0, v7);

  swift_unknownObjectRelease();
  v12 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v13 = *&v9[v12];
  v14 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  *&v11[v14] = v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR___HUAccessoryEventPickerViewController_selectionController);
    v17 = Strong;
    v18 = v11;
    v19 = v16;

    v20 = sub_20D112C5C(&qword_27C821988, type metadata accessor for AccessoryEventItemSelectionController, &protocol conformance descriptor for AccessoryEventItemSelectionController);
  }

  else
  {
    v21 = v11;
    v19 = 0;
    v20 = 0;
  }

  v22 = &v11[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  swift_beginAccess();
  *v22 = v19;
  *(v22 + 1) = v20;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  v24 = v11;
  if (v23)
  {
    v24 = *&v23[OBJC_IVAR___HUAccessoryEventPickerViewController_accessoryElementModule];
    *&v23[OBJC_IVAR___HUAccessoryEventPickerViewController_accessoryElementModule] = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80, &unk_20D5BB540);
  v25 = swift_allocObject();
  *&result = 1;
  *(v25 + 16) = xmmword_20D5BA040;
  *(v25 + 32) = v11;
  return result;
}

uint64_t sub_20D110ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D565DE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v43 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v43 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v43 - v17;
  v54 = &unk_2825BCA78;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v20 = result;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      v47 = a2;
      v45 = a3;
      v21 = result;
      ObjectType = swift_getObjectType();
      v23 = v20;
      v24 = ObjectType;
      v48 = v23;
      v52 = v23;
      swift_unknownObjectRetain();
      v49 = v24;
      v50 = a1;
      v46 = v21;
      sub_20D565EC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA50, &unk_20D5C3BD0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_20D5BC4B0;
      sub_20D565DA8();
      sub_20D565DC8();
      v51 = v25;
      v26 = sub_20D112C5C(&qword_27C81F060, MEMORY[0x277D13288], MEMORY[0x277D13298]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA60, &unk_20D5C2960);
      sub_20CFCF230();
      sub_20D5686B8();
      (*(v7 + 16))(v9, v18, v6);
      sub_20D568688();
      LOBYTE(v25) = sub_20D568698();
      v27 = *(v7 + 8);
      v27(v12, v6);
      v27(v15, v6);
      v27(v18, v6);
      if (v25)
      {
        goto LABEL_16;
      }

      v28 = [objc_opt_self() hiddenFromScenesAndAutomationsAccessoryTypeGroup];
      v29 = v48;
      v30 = sub_20D568198();
      v31 = [v28 containsType_];

      if (v31)
      {
        goto LABEL_16;
      }

      v43[1] = v26;
      v44 = objc_opt_self();
      sub_20D5681D8();
      sub_20CECF940(0, &qword_27C81AEC0, 0x277CD1D90);
      sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0, 0x277CD1D90);
      v32 = sub_20D567CD8();

      v33 = [v44 hasOptionsForServices:v32 outCharacteristicType:0];

      if (!v33)
      {
        goto LABEL_16;
      }

      v34 = v47;
      if (v47 == 1)
      {
        v52 = v29;
        sub_20D565EC8();
        sub_20D565DC8();
        v35 = sub_20D568678();
        v27(v15, v6);
        v27(v18, v6);
        if (v35)
        {
          goto LABEL_16;
        }

        v52 = v29;
        sub_20D565EC8();
        sub_20D565DA8();
      }

      else
      {
        if (v47)
        {
          v52 = 0;
          v53 = 0xE000000000000000;
          sub_20D568858();
          MEMORY[0x20F31CDB0](0xD000000000000034, 0x800000020D5DB810);
          v51 = v34;
          type metadata accessor for HUCharacteristicTriggerServicePickerSource(0);
          sub_20D5689B8();
          result = sub_20D568A58();
          __break(1u);
          return result;
        }

        v52 = v29;
        sub_20D565EC8();
        sub_20D565DC8();
      }

      v36 = sub_20D568678();
      v27(v15, v6);
      v27(v18, v6);
      if (v36)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong || (v38 = Strong + OBJC_IVAR___HUAccessoryEventPickerViewController_filter, v39 = Strong, swift_beginAccess(), v41 = *v38, v40 = *(v38 + 8), sub_20CEC81F4(v41, v40), v39, !v41))
        {
          swift_unknownObjectRelease();
          return 1;
        }

        swift_unknownObjectRetain();
        v42 = v41(v29);
        sub_20CEC8164(v41, v40);
        swift_unknownObjectRelease_n();
        return (v42 & 1) != 0;
      }

LABEL_16:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void sub_20D111560()
{
  v1 = type metadata accessor for AccessoryEventPickerViewController();
  v25.receiver = v0;
  v25.super_class = v1;
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR___HUAccessoryEventPickerViewController_source];
  if (v2 == 1)
  {
    v3 = sub_20D5677F8();
    v4 = HULocalizedString(v3);

    if (!v4)
    {
      sub_20D567838();
      v4 = sub_20D5677F8();
    }
  }

  else
  {
    if (v2)
    {
      sub_20D568858();
      MEMORY[0x20F31CDB0](0xD000000000000034, 0x800000020D5DB4C0);
      type metadata accessor for HUCharacteristicTriggerServicePickerSource(0);
      sub_20D5689B8();
      sub_20D568A58();
      __break(1u);
      return;
    }

    v5 = sub_20D5677F8();
    v4 = HULocalizedString(v5);

    if (!v4)
    {
      sub_20D567838();
      v4 = sub_20D5677F8();
    }
  }

  [v0 setTitle_];

  v6 = [v0 navigationItem];
  v7 = sub_20D5677F8();
  v8 = HULocalizedString(v7);

  if (!v8)
  {
    sub_20D567838();
    v8 = sub_20D5677F8();
  }

  [v6 setPrompt_];

  if (!*&v0[OBJC_IVAR___HUAccessoryEventPickerViewController_mode])
  {
    v9 = [v0 navigationItem];
    v10 = sub_20D5677F8();
    v11 = HULocalizedString(v10);

    sub_20D567838();
    v24 = v1;
    v23 = v0;
    v12 = v0;
    v13 = sub_20D5677F8();

    v14 = v24;
    if (v24)
    {
      v15 = __swift_project_boxed_opaque_existential_1(&v23, v24);
      v16 = *(v14 - 8);
      v17 = MEMORY[0x28223BE20](v15);
      v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v19, v17);
      v20 = sub_20D568BD8();
      (*(v16 + 8))(v19, v14);
      __swift_destroy_boxed_opaque_existential_1(&v23);
    }

    else
    {
      v20 = 0;
    }

    v21 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v13 style:2 target:v20 action:sel_nextWithSender_];

    swift_unknownObjectRelease();
    [v9 setRightBarButtonItem_];
  }

  sub_20D111BC4();
}

void sub_20D111BC4()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v27 = [v2 rightBarButtonItem];

  if (!v27)
  {
    return;
  }

  v3 = [v1 itemManager];
  v4 = [v3 allDisplayedItems];

  sub_20CECF940(0, &qword_281120AC0, 0x277D14748);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0, 0x277D14748);
  v5 = sub_20D567D08();

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_20D568768();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  if (!v6)
  {
    [v27 setEnabled_];

    return;
  }

  v26 = v1;
  v7 = [v1 itemManager];
  v8 = [v7 allDisplayedItems];

  v9 = sub_20D567D08();
  if ((v9 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20D567D58();
    v11 = v29;
    v10 = v30;
    v12 = v31;
    v13 = v32;
    v14 = v33;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v9 + 56);
    sub_20D5663C8();
    v13 = 0;
    v11 = v9;
  }

  v18 = (v12 + 64) >> 6;
  while (v11 < 0)
  {
    if (!sub_20D568798() || (swift_dynamicCast(), (v19 = v28) == 0))
    {
LABEL_26:
      v25 = 0;
LABEL_27:
      sub_20CEC80DC(v11);

      [v27 setEnabled_];

      return;
    }

LABEL_17:
    v20 = *&v26[OBJC_IVAR___HUAccessoryEventPickerViewController_selectionController];
    sub_20D049794(v19);
    v22 = v21;

    if (v22)
    {
      v25 = 1;
      goto LABEL_27;
    }
  }

  v23 = v13;
  v24 = v14;
  if (v14)
  {
LABEL_16:
    v14 = (v24 - 1) & v24;
    v19 = *(*(v11 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v19)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_26;
    }

    v24 = *(v10 + 8 * v13);
    ++v23;
    if (v24)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_20D111F9C()
{
  v1 = *(v0 + OBJC_IVAR___HUAccessoryEventPickerViewController_selectionController);
  v2 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectionCompleteFuture;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_20D112C54;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20D0EB4F0;
  aBlock[3] = &block_descriptor_33_1;
  v5 = _Block_copy(aBlock);
  v6 = v3;

  v7 = [v6 addCompletionBlock_];
  _Block_release(v5);
}

void sub_20D1120C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___HUAccessoryEventPickerViewController_eventBuilderItem);
    v6 = *(Strong + OBJC_IVAR___HUAccessoryEventPickerViewController_triggerBuilder);
    v7 = *(Strong + OBJC_IVAR___HUAccessoryEventPickerViewController_mode);
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = objc_allocWithZone(HUCharacteristicTriggerEventViewController);
      v11 = v5;
      v12 = v6;
      v13 = [v10 initWithCharacteristicEventBuilderItem:v11 triggerBuilder:v12 mode:v7 delegate:v9];

      swift_unknownObjectRelease();
      v14 = [v4 navigationController];
      if (v14)
      {
        v15 = v14;

        v16 = v13;
      }

      else
      {
        v16 = v4;
        v4 = v13;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id AccessoryEventPickerViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id AccessoryEventPickerViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

id AccessoryEventPickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryEventPickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_20D1126E4(uint64_t a1)
{
  v1 = 2;
  if (!a1)
  {
    v1 = 4;
  }

  v22 = v1;
  v23 = [objc_allocWithZone(MEMORY[0x277D148D0]) init];
  v24 = type metadata accessor for AccessoryRepresentableItemModule.Context();
  v2 = objc_allocWithZone(v24);
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel] = 0;
  v4 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer] = 0;
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType] = 1;
  v6 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions] = 0;
  v7 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter] = 0;
  v8 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x277D148D0]) &selRef_indexesOfObjectsPassingTest_];
  v9 = &v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter];
  *v10 = 0;
  v10[1] = 0;
  swift_beginAccess();
  *&v2[v3] = v22;
  swift_beginAccess();
  *&v2[v4] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  *&v2[v5] = 1;
  swift_beginAccess();
  v2[v6] = 1;
  swift_beginAccess();
  v2[v7] = 0;
  swift_beginAccess();
  *&v2[v8] = v23;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v11 = *v9;
  v12 = v9[1];
  *v9 = 0;
  v9[1] = 0;
  sub_20CEC8164(v11, v12);
  swift_beginAccess();
  v13 = *v10;
  v14 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  sub_20CEC8164(v13, v14);
  v26.receiver = v2;
  v26.super_class = v24;
  v15 = objc_msgSendSuper2(&v26, sel_init);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v16;
  v18 = &v15[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  *v18 = sub_20D112CA4;
  v18[1] = v17;

  sub_20CEC8164(v19, v20);

  return v15;
}

id sub_20D1129E0(uint64_t a1)
{
  type metadata accessor for AccessoryRepresentableItemModule();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = type metadata accessor for AccessoryListModuleController();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR___HUAccessoryListModuleController_cellVerticalContentInset] = 0x4028000000000000;
    *&v3[OBJC_IVAR___HUAccessoryListModuleController_collectionLayoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    v6.receiver = v3;
    v6.super_class = v2;
    v4 = objc_msgSendSuper2(&v6, sel_initWithModule_, v1);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v1 = [v4 asGeneric];
  }

  return v1;
}

uint64_t sub_20D112C5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D112CEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DA50, &qword_20D5BFEC8);
  __swift_allocate_value_buffer(v0, qword_281120C68);
  __swift_project_value_buffer(v0, qword_281120C68);
  return sub_20D566558();
}

uint64_t sub_20D112D5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D708, &qword_20D5BFA18);
  __swift_allocate_value_buffer(v0, qword_281120C80);
  __swift_project_value_buffer(v0, qword_281120C80);
  return sub_20D5665E8();
}

uint64_t sub_20D112E10@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E8E8, &qword_20D5C27C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E8F0, &qword_20D5C27D0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12[-v9];
  sub_20CF156D0(&qword_2811209E8, &qword_27C81E8F0, &qword_20D5C27D0, MEMORY[0x277CC90F8]);
  sub_20D563538();
  v12[15] = 0;
  sub_20D563528();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E8F8, &qword_20D5C27D8);
  a2[4] = sub_20CFC6290();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_20CF156D0(&qword_281120A38, &qword_27C81E8E8, &qword_20D5C27C8, MEMORY[0x277CC9080]);
  sub_20D5634E8();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_20D113070@<X0>(uint64_t *a2@<X8>)
{
  v34 = a2;
  v2 = sub_20D563518();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821990, &qword_20D5CA058);
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821998, &qword_20D5CA060);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8219A0, &qword_20D5CA068);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8219A8, &qword_20D5CA070);
  v15 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v17 = &v28 - v16;
  sub_20CF156D0(&qword_281120A00, &qword_27C821998, &qword_20D5CA060, MEMORY[0x277CC90F8]);
  sub_20D563538();
  swift_getKeyPath();
  sub_20D5634F8();

  (*(v8 + 8))(v10, v7);
  swift_getKeyPath();
  v18 = MEMORY[0x277CC90C0];
  sub_20CF156D0(&qword_281120A20, &qword_27C8219A0, &qword_20D5CA068, MEMORY[0x277CC90C0]);
  sub_20D5634F8();

  (*(v12 + 8))(v14, v11);
  v37 = 3;
  v19 = v30;
  sub_20D563528();
  v21 = v31;
  v20 = v32;
  v22 = v33;
  (*(v32 + 104))(v31, *MEMORY[0x277CC8FC0], v33);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8219B0, &unk_20D5CA0E0);
  v24 = v34;
  v34[3] = v23;
  v24[4] = sub_20D113C80();
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_20CF156D0(&qword_281120A10, &qword_27C8219A8, &qword_20D5CA070, v18);
  sub_20CF156D0(&qword_281120A28, &qword_27C821990, &qword_20D5CA058, MEMORY[0x277CC9080]);
  v25 = v29;
  v26 = v35;
  sub_20D563508();
  (*(v20 + 8))(v21, v22);
  (*(v36 + 8))(v19, v26);
  return (*(v15 + 8))(v17, v25);
}

uint64_t sub_20D1135B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8205E0, &qword_20D5C74B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - v2;
  v4 = sub_20D566438();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8205E8, &qword_20D5C74B8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  sub_20D566448();
  v12 = MEMORY[0x277CE1A00];
  MEMORY[0x20F31B8B0](v7, v4, MEMORY[0x277CE1A00]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F31B8D0](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_20D566418();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

unint64_t sub_20D113860()
{
  result = qword_2811208A8;
  if (!qword_2811208A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811208A8);
  }

  return result;
}

uint64_t sub_20D1138B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DA50, &qword_20D5BFEC8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D708, &qword_20D5BFA18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E8E0, &qword_20D5C27C0);
  sub_20D566528();
  *(swift_allocObject() + 16) = xmmword_20D5BC4B0;
  if (qword_2811208D0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281120C80);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  sub_20D566548();
  if (qword_2811208C8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_281120C68);
  (*(v1 + 16))(v3, v9, v0);
  sub_20D5663E8();
  sub_20D113C3C(&qword_2811200A0, MEMORY[0x277CE19C0]);
  sub_20D113C3C(&qword_2811200A8, MEMORY[0x277CE19B8]);
  sub_20D566538();
  sub_20D5663C8();

  v10 = sub_20D5663C8();

  return v10;
}

uint64_t sub_20D113C3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20D5663E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D113C80()
{
  result = qword_281120A50;
  if (!qword_281120A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C8219B0, &unk_20D5CA0E0);
    sub_20D113D38();
    sub_20CF156D0(&qword_281120A30, &qword_27C821990, &qword_20D5CA058, MEMORY[0x277CE1978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120A50);
  }

  return result;
}

unint64_t sub_20D113D38()
{
  result = qword_281120A08;
  if (!qword_281120A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8219A8, &qword_20D5CA070);
    sub_20D113DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120A08);
  }

  return result;
}

unint64_t sub_20D113DBC()
{
  result = qword_281120A18;
  if (!qword_281120A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8219A0, &qword_20D5CA068);
    sub_20CF156D0(&qword_2811209F8, &qword_27C821998, &qword_20D5CA060, MEMORY[0x277CE1988]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120A18);
  }

  return result;
}

uint64_t (*sub_20D113EEC(uint64_t *a1))()
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
  v5 = OBJC_IVAR___HUMediaSystemEditorViewController_presentationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED118C;
}

uint64_t (*sub_20D113FB4(uint64_t *a1))()
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
  v5 = OBJC_IVAR___HUMediaSystemEditorViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED4524;
}

id sub_20D114074()
{
  v1 = OBJC_IVAR___HUMediaSystemEditorViewController____lazy_storage___helper;
  v2 = *(v0 + OBJC_IVAR___HUMediaSystemEditorViewController____lazy_storage___helper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HUMediaSystemEditorViewController____lazy_storage___helper);
  }

  else
  {
    v4 = [objc_allocWithZone(HUMediaSystemEditorHelper) initWithDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void MediaSystemEditorViewController.init(accessories:home:)(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D14830]) initWithHome_];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_28111FFF0, 0x277CD1650);
    sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0, 0x277CD1650);
    sub_20D567D58();
    v5 = v23;
    v4 = v24;
    v6 = v25;
    v7 = v26;
    v8 = v27;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v4 = a1 + 56;
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

    v8 = v11 & *(a1 + 56);
    sub_20D5663C8();
    v7 = 0;
    v5 = a1;
  }

  v19 = v6;
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
LABEL_18:
      sub_20CEC80DC(v5);
      sub_20CECF940(0, &qword_28111FFF0, 0x277CD1650);
      sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0, 0x277CD1650);
      v18 = sub_20D567CD8();

      [v20 initWithMediaSystemBuilder:v3 staticAccessories:v18];

      return;
    }

    while (1)
    {
      [v3 addAccessory_];

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_20D568798())
      {
        sub_20CECF940(0, &qword_28111FFF0, 0x277CD1650);
        swift_dynamicCast();
        v17 = v22;
        v15 = v7;
        v16 = v8;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_18;
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
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id MediaSystemEditorViewController.init(mediaSystemBuilder:staticAccessories:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___HUMediaSystemEditorViewController_accessoryModule] = 0;
  *&v2[OBJC_IVAR___HUMediaSystemEditorViewController____lazy_storage___helper] = 0;
  type metadata accessor for MediaSystemBuilderSelectionController();
  v5 = swift_allocObject();
  *(v5 + 48) = MEMORY[0x277D84F90];
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = xmmword_20D5C35D0;
  *&v2[OBJC_IVAR___HUMediaSystemEditorViewController_selectionController] = v5;
  v6 = a1;
  v7 = sub_20D116FAC(v6);
  v8 = [objc_allocWithZone(MEMORY[0x277D14B08]) initWithDelegate_];
  v24.receiver = v2;
  v24.super_class = type metadata accessor for MediaSystemEditorViewController();
  v9 = objc_msgSendSuper2(&v24, sel_initUsingCompositionalLayoutWithItemManager_, v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_20D11725C;
  v23 = v10;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_20CF351D8;
  v21 = &block_descriptor_55;
  v11 = _Block_copy(&v18);
  v12 = v9;

  [v8 setHomeCreator_];
  _Block_release(v11);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = v13;
  v22 = sub_20D11727C;
  v23 = v14;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_20CF35658;
  v21 = &block_descriptor_7_3;
  v15 = _Block_copy(&v18);
  v16 = v7;

  [v8 setItemModuleCreator_];
  _Block_release(v15);

  return v12;
}

id sub_20D114738(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR___HUMediaSystemEditorViewController_selectionController), v3 = Strong, , v3, v4 = *(v2 + 16), , v5 = [v4 home], v4, v5))
  {
    v6 = [objc_opt_self() futureWithResult_];
  }

  else
  {
    v7 = [objc_opt_self() hf:59 errorWithCode:?];
    v5 = sub_20D5635C8();
    v6 = [objc_opt_self() futureWithError_];
  }

  return v6;
}

double sub_20D11486C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = objc_allocWithZone(type metadata accessor for AccessoryRepresentableItemModule());
  v8 = &v7[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v7[OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider] = 0;
  *&v7[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = a3;
  swift_getObjectType();
  v9 = a3;
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = sub_20CF86924(v10, a2, 0, 0, v7);

  swift_unknownObjectRelease();
  v12 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v13 = *&v9[v12];
  v14 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  *&v11[v14] = v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR___HUMediaSystemEditorViewController_selectionController);
    v17 = Strong;

    v18 = sub_20D117858();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = &v11[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  swift_beginAccess();
  *v19 = v16;
  *(v19 + 1) = v18;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = *(v20 + OBJC_IVAR___HUMediaSystemEditorViewController_accessoryModule);
    *(v20 + OBJC_IVAR___HUMediaSystemEditorViewController_accessoryModule) = v11;
    v22 = v20;
    v23 = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80, &unk_20D5BB540);
  v24 = swift_allocObject();
  *&result = 1;
  *(v24 + 16) = xmmword_20D5BA040;
  *(v24 + 32) = v11;
  return result;
}

void sub_20D114B0C(uint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for MediaSystemEditorViewController();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v2 = [*(*&v1[OBJC_IVAR___HUMediaSystemEditorViewController_selectionController] + 16) mediaSystem];
  if (v2)
  {
  }

  v3 = sub_20D5677F8();
  v4 = HULocalizedString(v3);

  sub_20D567838();
  v5 = sub_20D5677F8();

  [v1 setTitle_];

  v6 = [v1 navigationItem];
  v7 = sub_20D5677F8();
  v8 = HULocalizedString(v7);

  if (!v8)
  {
    sub_20D567838();
    v8 = sub_20D5677F8();
  }

  [v6 setPrompt_];

  v9 = [v1 navigationItem];
  v10 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v11 = v1;
  v12 = [v10 initWithBarButtonSystemItem:1 target:v11 action:sel_cancelWithSender_];
  [v9 setLeftBarButtonItem_];

  v13 = [v11 navigationItem];
  v14 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v11 action:sel_doneWithSender_];

  [v13 setRightBarButtonItem_];
  sub_20D1159C0();
}

void sub_20D114D80()
{
  v1 = [v0 navigationItem];
  v2 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v3 = v0;
  v4 = [v2 initWithBarButtonSystemItem:1 target:v3 action:sel_cancelWithSender_];
  [v1 setLeftBarButtonItem_];

  v5 = [v3 navigationItem];
  v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v3 action:sel_doneWithSender_];

  [v5 setRightBarButtonItem_];
  sub_20D1159C0();
}

void sub_20D114ED8(uint64_t a1)
{
  v2 = sub_20D114074();
  v3 = [v2 createMediaSystemWithAccessory_];

  if (v3)
  {
    v5 = [v3 asGeneric];
    v4 = sub_20D115150(v5);
  }
}

id sub_20D115044()
{
  v0 = sub_20D114074();
  v1 = [v0 createMediaSystem];

  v2 = [v1 asGeneric];
  v3 = sub_20D115150(v2);

  return v3;
}

id sub_20D115150(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_20D117838;
  v17 = v2;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20D02C760;
  v15 = &block_descriptor_32_1;
  v3 = _Block_copy(&v12);

  v4 = [a1 flatMap_];
  _Block_release(v3);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_20D117840;
  v17 = v5;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20CF13714;
  v15 = &block_descriptor_36_2;
  v6 = _Block_copy(&v12);

  v7 = [v4 addSuccessBlock_];
  _Block_release(v6);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_20D117848;
  v17 = v8;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20D0261C0;
  v15 = &block_descriptor_40;
  v9 = _Block_copy(&v12);

  v10 = [v7 addFailureBlock_];
  _Block_release(v9);

  return v4;
}

id sub_20D1153A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = *(*(Strong + OBJC_IVAR___HUMediaSystemEditorViewController_selectionController) + 16), v3, v5 = [v4 mediaSystem], v4, v5))
  {
    v6 = [objc_opt_self() futureWithResult_];
    v7 = [v6 asGeneric];
  }

  else
  {
    v5 = [objc_opt_self() hf:30 errorWithCode:?];
    v6 = sub_20D5635C8();
    v7 = [objc_opt_self() futureWithError_];
  }

  v8 = v7;

  return v8;
}

void sub_20D1154DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      [v6 mediaSystemEditor:v7 didCreate:a1];

      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = [v8 finishPresentation:v4 animated:1];
      swift_unknownObjectRelease();
    }
  }
}

void sub_20D1155E8(uint64_t a1, uint64_t a2)
{
  v18 = sub_20D5635C8();
  v3 = [v18 domain];
  v4 = sub_20D567838();
  v6 = v5;

  if (v4 == sub_20D567838() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_20D568BF8();

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v18 code] == -7003)
  {
    v10 = [objc_opt_self() sharedHandler];
    v11 = sub_20D5635C8();
    v12 = sub_20D5677F8();
    [v10 logError:v11 operationDescription:v12];

    goto LABEL_13;
  }

LABEL_10:
  v13 = [v18 na_isCancelledError];
  v14 = [objc_opt_self() sharedHandler];
  v15 = sub_20D5635C8();
  if (v13)
  {
    aBlock[4] = sub_20D117850;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CFFFE8C;
    aBlock[3] = &block_descriptor_43;
    v16 = _Block_copy(aBlock);

    [v14 handleError:v15 retryBlock:v16 cancelBlock:0];

    _Block_release(v16);
    return;
  }

  v17 = sub_20D5677F8();
  [v14 logError:v15 operationDescription:v17];

LABEL_13:
}

void sub_20D1158B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_20D114074();
    v4 = [v3 createMediaSystem];

    v5 = [v4 asGeneric];
    v6 = sub_20D115150(v5);
  }
}

void sub_20D1159C0()
{
  v1 = [v0 navigationItem];
  v6 = [v1 rightBarButtonItem];

  if (v6)
  {
    v2 = *(*&v0[OBJC_IVAR___HUMediaSystemEditorViewController_selectionController] + 16);

    v3 = [v2 accessories];
    sub_20CECF940(0, &qword_28111FFF0, 0x277CD1650);
    sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0, 0x277CD1650);
    v4 = sub_20D567D08();

    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_20D568768();
    }

    else
    {

      v5 = *(v4 + 16);
    }

    [v6 setEnabled_];
  }
}

void sub_20D115E8C(uint64_t a1, void *a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return;
  }

  swift_getObjectType();
  v3 = sub_20D5681F8();
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_28111FFF0, 0x277CD1650);
    sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0, 0x277CD1650);
    sub_20D567D58();
    v4 = v66;
    v5 = v67;
    v6 = v68;
    v7 = v69;
    v8 = v70;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
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
    v7 = 0;
    v4 = sub_20D5663C8();
  }

  v60 = v4;
  v12 = (v6 + 64) >> 6;
  v61 = v5;
  v62 = a2;
  v63 = v12;
  while (1)
  {
    v15 = v8;
    if (v4 < 0)
    {
      break;
    }

    v16 = v7;
    v17 = v8;
    if (!v8)
    {
      while (1)
      {
        v7 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v7 >= v12)
        {
          goto LABEL_26;
        }

        v17 = *(v5 + 8 * v7);
        ++v16;
        if (v17)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_15:
    v18 = (v17 - 1) & v17;
    v19 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v19)
    {
      goto LABEL_26;
    }

LABEL_19:
    v64 = v18;
    v21 = v4;
    v22 = [a2 accessories];
    sub_20CECF940(0, &qword_28111FFF0, 0x277CD1650);
    sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0, 0x277CD1650);
    v23 = sub_20D567D08();

    if ((v23 & 0xC000000000000001) != 0)
    {
      v13 = v19;
      v14 = sub_20D5687A8();

      v4 = v21;
      v12 = v63;
      v8 = v64;
      if (v14)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (*(v23 + 16))
      {
        v24 = sub_20D5683E8();
        v25 = -1 << *(v23 + 32);
        v26 = v24 & ~v25;
        if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          while (1)
          {
            v28 = *(*(v23 + 48) + 8 * v26);
            v29 = sub_20D5683F8();

            if (v29)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v4 = v60;
LABEL_29:
          v36 = v4;
LABEL_48:
          sub_20CEC80DC(v36);

          return;
        }
      }

LABEL_25:

      v5 = v61;
      a2 = v62;
      v4 = v60;
      v12 = v63;
      v8 = v64;
    }
  }

  v20 = sub_20D568798();
  if (v20)
  {
    v71 = v20;
    sub_20CECF940(0, &qword_28111FFF0, 0x277CD1650);
    swift_dynamicCast();
    v19 = v76;
    v18 = v15;
    if (v76)
    {
      goto LABEL_19;
    }
  }

LABEL_26:
  sub_20CEC80DC(v4);

  v30 = sub_20D5681C8();
  if ((v30 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &unk_27C81D480, 0x277CD1760);
    sub_20CEF7F74(&unk_27C81BF30, &unk_27C81D480, 0x277CD1760);
    sub_20D567D58();
    v32 = v71;
    v31 = v72;
    v33 = v73;
    v34 = v74;
    v35 = v75;
  }

  else
  {
    v37 = -1 << *(v30 + 32);
    v31 = v30 + 56;
    v33 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v35 = v39 & *(v30 + 56);
    v34 = 0;
    v32 = sub_20D5663C8();
  }

  v40 = (v33 + 64) >> 6;
  while (2)
  {
    if (v32 < 0)
    {
      v44 = sub_20D568798();
      if (!v44 || (v65 = v44, sub_20CECF940(0, &unk_27C81D480, 0x277CD1760), swift_dynamicCast(), (v43 = v76) == 0))
      {
LABEL_47:
        v36 = v32;
        goto LABEL_48;
      }
    }

    else
    {
      v41 = v34;
      for (i = v35; !i; ++v41)
      {
        v34 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_70;
        }

        if (v34 >= v40)
        {
          goto LABEL_47;
        }

        i = *(v31 + 8 * v34);
      }

      v35 = (i - 1) & i;
      v43 = *(*(v32 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(i)))));
      if (!v43)
      {
        goto LABEL_47;
      }
    }

    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();

    if (!v45)
    {
      continue;
    }

    break;
  }

  sub_20CEC80DC(v32);

  v46 = sub_20D5681F8();
  if ((v46 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_28111FFF0, 0x277CD1650);
    sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0, 0x277CD1650);
    sub_20D567D58();
    v48 = v76;
    v47 = v77;
    v49 = v78;
    v50 = v79;
    v51 = v80;
  }

  else
  {
    v52 = -1 << *(v46 + 32);
    v47 = v46 + 56;
    v49 = ~v52;
    v53 = -v52;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v51 = v54 & *(v46 + 56);
    v50 = 0;
    v48 = sub_20D5663C8();
  }

  v55 = (v49 + 64) >> 6;
  while (2)
  {
    if (v48 < 0)
    {
      if (!sub_20D568798() || (sub_20CECF940(0, &qword_28111FFF0, 0x277CD1650), swift_dynamicCast(), (v58 = v65) == 0))
      {
LABEL_68:
        v36 = v48;
        goto LABEL_48;
      }

      goto LABEL_64;
    }

    v56 = v50;
    v57 = v51;
    if (v51)
    {
LABEL_60:
      v51 = (v57 - 1) & v57;
      v58 = *(*(v48 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v57)))));
      if (!v58)
      {
        goto LABEL_68;
      }

LABEL_64:
      if ([objc_opt_self() canSupportMediaSystem_] && (objc_msgSend(v62, sel_shouldAllowAddingAccessory_, v58) & 1) != 0)
      {
        v59 = [v62 stereoPairVersionMatchesForAccessory_];

        if (v59)
        {
          v36 = v48;
          goto LABEL_48;
        }
      }

      else
      {
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v50 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v50 >= v55)
    {
      goto LABEL_68;
    }

    v57 = *(v47 + 8 * v50);
    ++v56;
    if (v57)
    {
      goto LABEL_60;
    }
  }

LABEL_71:
  __break(1u);
}

id MediaSystemEditorViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id MediaSystemEditorViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

id MediaSystemEditorViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MediaSystemEditorViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall MediaSystemEditorViewController.mediaSystemEditorHelperDidEndCommitting(_:)(HUMediaSystemEditorHelper a1)
{
  v2 = [v1 navigationItem];
  v3 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v4 = v1;
  v5 = [v3 initWithBarButtonSystemItem:1 target:v4 action:sel_cancelWithSender_];
  [v2 setLeftBarButtonItem_];

  v6 = [v4 navigationItem];
  v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v4 action:sel_doneWithSender_];

  [v6 setRightBarButtonItem_];
  sub_20D1159C0();
  v8 = [v4 view];
  if (v8)
  {
    v9 = v8;
    [v8 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void MediaSystemEditorViewController.mediaSystemEditorHelper(_:didModifyMediaSystemBuilder:)()
{
  v1 = [v0 itemManager];
  [v1 recalculateVisibilityAndSortAllItems];
}

void MediaSystemEditorViewController.mediaSystemEditorHelper(_:needsToPresent:animated:completion:)(double a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v10[4] = a5;
    v10[5] = a6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20CFFFE8C;
    v10[3] = &block_descriptor_10_2;
    v9 = _Block_copy(v10);
  }

  else
  {
    v9 = 0;
  }

  [v6 presentViewController:a3 animated:a4 & 1 completion:v9];
  _Block_release(v9);
}

char *sub_20D116FAC(void *a1)
{
  v21 = [objc_allocWithZone(MEMORY[0x277D148D0]) init];
  v22 = type metadata accessor for AccessoryRepresentableItemModule.Context();
  v1 = objc_allocWithZone(v22);
  v2 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  *&v1[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel] = 0;
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  *&v1[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer] = 0;
  v4 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  *&v1[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType] = 1;
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  v1[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions] = 0;
  v6 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  v1[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter] = 0;
  v7 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D148D0]) &selRef_indexesOfObjectsPassingTest_];
  v8 = &v1[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter];
  *v9 = 0;
  v9[1] = 0;
  swift_beginAccess();
  *&v1[v2] = 4;
  swift_beginAccess();
  *&v1[v3] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  *&v1[v4] = 1;
  swift_beginAccess();
  v1[v5] = 1;
  swift_beginAccess();
  v1[v6] = 0;
  swift_beginAccess();
  *&v1[v7] = v21;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v10 = *v8;
  v11 = v8[1];
  *v8 = 0;
  v8[1] = 0;
  sub_20CEC8164(v10, v11);
  swift_beginAccess();
  v12 = *v9;
  v13 = v9[1];
  *v9 = 0;
  v9[1] = 0;
  sub_20CEC8164(v12, v13);
  v24.receiver = v1;
  v24.super_class = v22;
  v14 = objc_msgSendSuper2(&v24, sel_init);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = &v14[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  *v16 = sub_20D1178B0;
  v16[1] = v15;
  v19 = a1;
  sub_20CEC8164(v17, v18);
  return v14;
}

id sub_20D117284(void *a1)
{
  type metadata accessor for AccessoryRepresentableItemModule();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for AccessoryListModuleController();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR___HUAccessoryListModuleController_cellVerticalContentInset] = 0x4028000000000000;
    *&v5[OBJC_IVAR___HUAccessoryListModuleController_collectionLayoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    v13.receiver = v5;
    v13.super_class = v4;
    v6 = objc_msgSendSuper2(&v13, sel_initWithModule_, v3);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v7 = [v6 asGeneric];

    return v7;
  }

  else
  {
    sub_20D568858();

    v9 = [a1 description];
    v10 = sub_20D567838();
    v12 = v11;

    MEMORY[0x20F31CDB0](v10, v12);

    result = sub_20D568A58();
    __break(1u);
  }

  return result;
}

void _s6HomeUI31MediaSystemEditorViewControllerC05mediadE24HelperDidBeginCommittingyySo07HUMediadeI0CF_0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v2 = [v0 navigationItem];
  v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v2 setRightBarButtonItem_];

  [v1 startAnimating];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void sub_20D117548(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong mediaSystemEditor:v1 didAbortDueTo:a1];
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = [v4 finishPresentation:v1 animated:1];
    swift_unknownObjectRelease();
  }
}

unint64_t sub_20D117858()
{
  result = qword_27C81F190;
  if (!qword_27C81F190)
  {
    type metadata accessor for MediaSystemBuilderSelectionController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F190);
  }

  return result;
}

id AccessoryGridModuleController.__allocating_init(module:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithModule_];

  return v3;
}

__n128 sub_20D117934@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_cellSettings);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  v5 = v3[1].n128_u8[1];
  v6 = v3[1].n128_u8[2];
  v7 = v3[1].n128_u64[1];
  v8 = v3[2].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  a2[1].n128_u8[1] = v5;
  a2[1].n128_u8[2] = v6;
  a2[1].n128_u64[1] = v7;
  a2[2].n128_u8[0] = v8;
  return result;
}

uint64_t sub_20D1179B0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = *a2 + OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_cellSettings;
  result = swift_beginAccess();
  *v9 = v2;
  *(v9 + 8) = v3;
  *(v9 + 16) = v4;
  *(v9 + 17) = v5;
  *(v9 + 18) = v6;
  *(v9 + 24) = v7;
  *(v9 + 32) = v8;
  return result;
}

__n128 sub_20D117A40@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_cellSettings);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  v5 = v3[1].n128_u8[1];
  v6 = v3[1].n128_u8[2];
  v7 = v3[1].n128_u64[1];
  v8 = v3[2].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  a1[1].n128_u8[1] = v5;
  a1[1].n128_u8[2] = v6;
  a1[1].n128_u64[1] = v7;
  a1[2].n128_u8[0] = v8;
  return result;
}

uint64_t sub_20D117AB8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = v1 + OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_cellSettings;
  result = swift_beginAccess();
  *v9 = v2;
  *(v9 + 8) = v3;
  *(v9 + 16) = v4;
  *(v9 + 17) = v5;
  *(v9 + 18) = v6;
  *(v9 + 24) = v7;
  *(v9 + 32) = v8;
  return result;
}

uint64_t sub_20D117BAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_layoutStyle;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v6 = *(v3 + 16);
  *(a2 + 16) = v6;
  return sub_20CF008FC(v4, v5, v6);
}

uint64_t sub_20D117C0C(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_layoutStyle;
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  v8 = *(v4 + 16);
  *(v4 + 16) = v5;
  sub_20CF008FC(v2, v3, v5);
  return sub_20CEFF424(v6, v7, v8);
}

uint64_t sub_20D117CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_layoutStyle;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;
  return sub_20CF008FC(v4, v5, v6);
}

uint64_t sub_20D117D00(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_layoutStyle;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = v2;
  *(v5 + 8) = v3;
  v8 = *(v5 + 16);
  *(v5 + 16) = v4;
  return sub_20CEFF424(v6, v7, v8);
}

char *sub_20D117DD0()
{
  v1 = OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController____lazy_storage___collectionLayoutManager;
  v2 = *(v0 + OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController____lazy_storage___collectionLayoutManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController____lazy_storage___collectionLayoutManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_20D118008(void *a1, void *a2)
{
  v3 = v2;
  v32.receiver = v3;
  v32.super_class = type metadata accessor for AccessoryGridModuleController();
  objc_msgSendSuper2(&v32, sel_configureCell_forItem_, a1, a2);
  type metadata accessor for TileCell();
  v6 = swift_dynamicCastClass();
  v7 = &qword_27C821000;
  if (!v6)
  {
    goto LABEL_19;
  }

  v8 = v6;
  v9 = &v3[OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_cellSettings];
  swift_beginAccess();
  v10 = *(v9 + 1);
  v11 = OBJC_IVAR___HUTileCell_borderStyle;
  swift_beginAccess();
  v12 = *(v8 + v11);
  *(v8 + v11) = v10;
  v13 = a1;
  if (v10 != v12)
  {
    [v8 setNeedsUpdateConfiguration];
  }

  v14 = v9[16];
  v15 = OBJC_IVAR___HUTileCell_showPrefixLabel;
  swift_beginAccess();
  v16 = *(v8 + v15);
  *(v8 + v15) = v14;
  if (v14 != v16)
  {
    [v8 setNeedsUpdateConfiguration];
  }

  v17 = *(v9 + 3);
  v18 = v9[32];
  v19 = v8 + OBJC_IVAR___HUTileCell_overrideLayout;
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[8];
  *v19 = v17;
  v19[8] = v18;
  if (v18)
  {
    if (v21)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v17 != v20)
    {
      LOBYTE(v21) = 1;
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  [v8 setNeedsUpdateConfiguration];
LABEL_13:
  if (v9[17])
  {
    v22 = objc_opt_self();
    sub_20D1183B0(a2);
    sub_20CECF940(0, &unk_27C81A3F0, 0x277D145C8);
    sub_20CEF7F74(&qword_27C81D280, &unk_27C81A3F0, 0x277D145C8);
    v7 = &qword_27C821000;
    v23 = sub_20D567CD8();

    v24 = [v22 hu:v23 preferredToggleableControlItemInControlItems:?];

    v25 = v24 != 0;
  }

  else
  {
    v25 = 0;
  }

  (*((*MEMORY[0x277D85000] & *v8) + 0x138))(v25);
  v26 = v9[18];
  v27 = OBJC_IVAR___HUTileCell_useMutedIconOffColors;
  swift_beginAccess();
  v28 = *(v8 + v27);
  *(v8 + v27) = v26;
  if (v26 != v28)
  {
    [v8 setNeedsUpdateConfiguration];
  }

LABEL_19:
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v30 = result;
    v31 = v7[330];
    swift_beginAccess();
    return [v30 setBackgroundDisplayStyle_];
  }

  return result;
}

void sub_20D1183B0(void *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 accessory];
    v7 = [v6 hf_primaryService];

    if (v7)
    {
      v8 = [v4 controlItemsForService_];
      if (v8)
      {
        v9 = v8;
        sub_20CECF940(0, &unk_27C81A3F0, 0x277D145C8);
        sub_20CEF7F74(&qword_27C81D280, &unk_27C81A3F0, 0x277D145C8);
        sub_20D567D08();

        return;
      }

      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_33:

        return;
      }

LABEL_53:
      if (sub_20D568768())
      {
        sub_20CEF8F08(MEMORY[0x277D84F90]);

        return;
      }

      goto LABEL_33;
    }
  }

  v10 = [v1 module];
  v5 = [v10 itemUpdater];

  if (v5)
  {
    v11 = [v5 childItemsForItem_];
    sub_20CECF940(0, &qword_281120AC0, 0x277D14748);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0, 0x277D14748);
    v12 = sub_20D567D08();

    if ((v12 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x277D84FA0];
      v48 = MEMORY[0x277D84FA0];
      sub_20D568718();
      for (i = sub_20D568798(); i; i = sub_20D568798())
      {
        v46 = i;
        swift_dynamicCast();
        v15 = v47;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v16 = *(v7 + 16);
          if (*(v7 + 24) <= v16)
          {
            sub_20D0C041C(v16 + 1);
          }

          v7 = v48;
          v17 = sub_20D5683E8();
          v18 = v48 + 56;
          v19 = -1 << *(v48 + 32);
          v20 = v17 & ~v19;
          v21 = v20 >> 6;
          if (((-1 << v20) & ~*(v48 + 56 + 8 * (v20 >> 6))) != 0)
          {
            v22 = __clz(__rbit64((-1 << v20) & ~*(v48 + 56 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v23 = 0;
            v24 = (63 - v19) >> 6;
            do
            {
              if (++v21 == v24 && (v23 & 1) != 0)
              {
                __break(1u);
                goto LABEL_52;
              }

              v25 = v21 == v24;
              if (v21 == v24)
              {
                v21 = 0;
              }

              v23 |= v25;
              v26 = *(v18 + 8 * v21);
            }

            while (v26 == -1);
            v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          }

          *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
          *(*(v7 + 48) + 8 * v22) = v15;
          ++*(v7 + 16);
        }

        else
        {
        }
      }

      goto LABEL_51;
    }

    v29 = *(v12 + 32);
    v30 = ((1 << v29) + 63) >> 6;
    if ((v29 & 0x3Fu) > 0xD)
    {
      sub_20D5663C8();
      if (!swift_stdlib_isStackAllocationSafe())
      {
        v42 = swift_slowAlloc();
        v7 = sub_20D0C1064(v42, v30, v12, sub_20D118A34);

        MEMORY[0x20F31FC70](v42, -1, -1);
LABEL_51:
        sub_20D0A137C(v7, v27);
        swift_unknownObjectRelease();

        return;
      }
    }

    v43 = &v43;
    v44 = v30;
    MEMORY[0x28223BE20](v13);
    v32 = &v43 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v31);
    v45 = 0;
    v33 = 0;
    v34 = 1 << *(v12 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v7 = v35 & *(v12 + 56);
    v36 = (v34 + 63) >> 6;
    while (v7)
    {
      v37 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_46:
      v40 = v37 | (v33 << 6);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *&v32[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
        if (__OFADD__(v45++, 1))
        {
          __break(1u);
LABEL_50:
          v7 = sub_20D0C10F4(v32, v44, v45, v12);
          goto LABEL_51;
        }
      }
    }

    v38 = v33;
    while (1)
    {
      v33 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v33 >= v36)
      {
        goto LABEL_50;
      }

      v39 = *(v12 + 56 + 8 * v33);
      ++v38;
      if (v39)
      {
        v37 = __clz(__rbit64(v39));
        v7 = (v39 - 1) & v39;
        goto LABEL_46;
      }
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_20D568768())
  {
    v28 = MEMORY[0x277D84F90];

    sub_20CEF8F08(v28);
  }
}

BOOL sub_20D118BCC()
{
  v1 = [v0 module];
  v2 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  v3 = *&v1[v2];

  return v3 != 0;
}

id sub_20D118CA8(void *a1)
{
  [a1 setSectionLeadingMargin_];
  [a1 setSectionTrailingMargin_];

  return a1;
}

id AccessoryGridModuleController.init(module:)(void *a1)
{
  v2 = sub_20D118E4C(a1);

  return v2;
}

id AccessoryGridModuleController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryGridModuleController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20D118E4C(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_cellSettings];
  *v3 = xmmword_20D5BD270;
  *(v3 + 8) = 256;
  v3[18] = 0;
  *(v3 + 3) = 0;
  v3[32] = 1;
  v4 = &v1[OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_layoutStyle];
  *v4 = xmmword_20D5BA030;
  v4[16] = 2;
  *&v1[OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController____lazy_storage___collectionLayoutManager] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AccessoryGridModuleController();
  return objc_msgSendSuper2(&v6, sel_initWithModule_, a1);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20D1190EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20D119140(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

id sub_20D119198()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_itemManager) + OBJC_IVAR____TtC6HomeUI44AccessoryDetailsLinkedApplicationItemManager_linkedApplicationItemProvider);
  if (v1)
  {
    v2 = [v1 items];
    sub_20CF2C85C();
    sub_20CEF99B4();
    v3 = sub_20D567D08();

    v4 = sub_20CFAF954(v3);

    if (v4)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        [*(v0 + OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_linkedApplicationView) setItem_];
      }
    }
  }

  v6 = *(v0 + OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_linkedApplicationView);

  return [v6 updateUIWithAnimation_];
}

id AccessoryDetailsLinkedApplicationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20D5677F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AccessoryDetailsLinkedApplicationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDetailsLinkedApplicationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20D1195E0(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 latestResults];
    if (v7)
    {

      sub_20CECF7A0(v2 + OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_viewCoordinator, v14);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      sub_20D566708();

      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
    }
  }

  v8 = *(*(v2 + OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_itemManager) + OBJC_IVAR____TtC6HomeUI44AccessoryDetailsLinkedApplicationItemManager_linkedApplicationItemProvider);
  if (v8)
  {
    v9 = [v8 items];
    sub_20CF2C85C();
    sub_20CEF99B4();
    v10 = sub_20D567D08();

    v11 = sub_20CFAF954(v10);

    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        [*(v2 + OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_linkedApplicationView) setItem_];
      }
    }
  }

  return [*(v2 + OBJC_IVAR____TtC6HomeUI47AccessoryDetailsLinkedApplicationViewController_linkedApplicationView) updateUIWithAnimation_];
}

double sub_20D1198F4(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_20D119954(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___HUStatusDetailsViewController_statusDetailsDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

id StatusDetailsViewController.init(statusItem:delegate:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___HUStatusDetailsViewController____lazy_storage___collectionLayoutManager] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  [a1 copy];
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20CECF940(0, &qword_27C821B00, 0x277D14B58);
  v4 = swift_dynamicCast();
  v5 = objc_allocWithZone(HUHomeStatusDetailsItemManager);
  if (v4)
  {
    v6 = v12;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 initWithDelegate:0 sourceItem:v6];

  v11.receiver = v2;
  v11.super_class = type metadata accessor for StatusDetailsViewController();
  v8 = v7;
  v9 = objc_msgSendSuper2(&v11, sel_initUsingCompositionalLayoutWithItemManager_, v8);
  [v8 setDelegate_];

  swift_unknownObjectRelease();
  return v9;
}

void sub_20D119C10()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for StatusDetailsViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemGroupedBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setContentInset_];

      v6 = [v0 navigationItem];
      v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v0 action:sel_doneButtonPressed_];
      [v6 setLeftBarButtonItem_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *sub_20D119F10()
{
  v1 = OBJC_IVAR___HUStatusDetailsViewController____lazy_storage___collectionLayoutManager;
  v2 = *(v0 + OBJC_IVAR___HUStatusDetailsViewController____lazy_storage___collectionLayoutManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HUStatusDetailsViewController____lazy_storage___collectionLayoutManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_20D11A01C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = sub_20D5638C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = type metadata accessor for StatusDetailsViewController();
  v24.receiver = v4;
  v24.super_class = v16;
  result = objc_msgSendSuper2(&v24, sel_presentationCoordinator_shouldBeginInteractivePresentationWithTouchLocation_view_, a1, a2, a3, a4);
  if (result)
  {
    result = [v4 collectionView];
    if (result)
    {
      v18 = result;
      v19 = [result indexPathForItemAtPoint_];

      if (!v19)
      {
        return 1;
      }

      sub_20D563878();

      (*(v10 + 32))(v15, v12, v9);
      result = [v4 collectionView];
      if (result)
      {
        v20 = result;
        v21 = sub_20D563868();
        v22 = [v20 cellForItemAtIndexPath_];

        (*(v10 + 8))(v15, v9);
        if (v22)
        {
          objc_opt_self();
          v23 = swift_dynamicCastObjCClass() == 0;

          return v23;
        }

        return 1;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_20D11A518(void *a1, void *a2)
{
  v3 = v2;
  v70.receiver = v2;
  v70.super_class = type metadata accessor for StatusDetailsViewController();
  objc_msgSendSuper2(&v70, sel_configureCell_forItem_, a1, a2);
  v6 = objc_opt_self();
  v7 = [v3 _childItemsForItem_];
  sub_20CECF940(0, &unk_27C81A3F0, 0x277D145C8);
  sub_20D091FD8();
  sub_20D567D08();

  v8 = sub_20D567CD8();

  v9 = [v6 hu:v8 preferredToggleableControlItemInControlItems:?];

  type metadata accessor for AccessoryTileCell();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      v13 = a1;
      if (v12)
      {

        v9 = 0;
      }

      v14 = OBJC_IVAR___HUTileCell_backgroundDisplayStyle;
      swift_beginAccess();
      v15 = *(v11 + v14);
      *(v11 + v14) = 2;
      v16 = v13;
      if (v15 != 2)
      {
        [v11 setNeedsUpdateConfiguration];
      }

      v17 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v11) + 0x138))(v9 != 0);
      v18 = sub_20D119F10();
      v19 = (*((*v17 & *v18) + 0x128))(a2);
      v21 = v20;

      v22 = v11 + OBJC_IVAR___HUTileCell__gridSize;
      v24 = *(v11 + OBJC_IVAR___HUTileCell__gridSize);
      v23 = *(v11 + OBJC_IVAR___HUTileCell__gridSize + 8);
      v25 = *(v11 + OBJC_IVAR___HUTileCell__gridSize + 16);
      *v22 = v19;
      *(v22 + 1) = v21;
      v22[16] = 0;
      if ((v25 & 1) != 0 || v19 != v24 || v21 != v23)
      {
        [v11 setNeedsUpdateConfiguration];
      }
    }
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v28 = a1;
    v29 = [a2 latestResults];
    if (v29)
    {
      v30 = v29;
      v31 = sub_20D567758();

      v32 = sub_20D567838();
      if (*(v31 + 16))
      {
        v65 = v9;
        v34 = v28;
        v35 = sub_20CEED668(v32, v33);
        v37 = v36;

        if (v37)
        {
          sub_20CED43FC(*(v31 + 56) + 32 * v35, v68);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F4A8, &qword_20D5C4DF0);
          if (swift_dynamicCast())
          {
            v38 = v67;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {

          v38 = 0;
        }

        v28 = v34;
        v9 = v65;
      }

      else
      {

        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
    }

    [v27 setTitleText_];
    swift_unknownObjectRelease();
    v39 = [a2 latestResults];
    if (v39)
    {
      v40 = v39;
      v41 = sub_20D567758();

      v42 = sub_20D567838();
      if (*(v41 + 16))
      {
        v66 = v9;
        v44 = v28;
        v45 = sub_20CEED668(v42, v43);
        v47 = v46;

        if (v47)
        {
          sub_20CED43FC(*(v41 + 56) + 32 * v45, v68);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F4A8, &qword_20D5C4DF0);
          if (swift_dynamicCast())
          {
            v48 = v67;
          }

          else
          {
            v48 = 0;
          }
        }

        else
        {

          v48 = 0;
        }

        v28 = v44;
        v9 = v66;
      }

      else
      {

        v48 = 0;
      }
    }

    else
    {
      v48 = 0;
    }

    [v27 setDescriptionText_];
    swift_unknownObjectRelease();
    v49 = [v27 descriptionTextView];
    [v49 setDelegate_];

    v50 = sub_20D119F10();
    v51 = *&v50[OBJC_IVAR___HUCollectionLayoutManager_layoutOptions];

    [v27 setLayoutOptions_];
  }

  v69 = &unk_2824BFD88;
  v52 = swift_dynamicCastObjCProtocolConditional();
  if (v52)
  {
    v53 = v52;
    v54 = a1;
    v55 = [a2 latestResults];
    if (!v55)
    {
      goto LABEL_42;
    }

    v56 = v55;
    v57 = sub_20D567758();

    v58 = sub_20D567838();
    if (*(v57 + 16))
    {
      v60 = sub_20CEED668(v58, v59);
      v62 = v61;

      if (v62)
      {
        sub_20CED43FC(*(v57 + 56) + 32 * v60, v68);

        sub_20CECF940(0, &qword_28111FB20, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v63 = [v67 BOOLValue];

          v64 = v63;
LABEL_43:
          [v53 setDisabled_];

          goto LABEL_44;
        }

LABEL_42:
        v64 = 0;
        goto LABEL_43;
      }
    }

    else
    {
    }

    goto LABEL_42;
  }

LABEL_44:
}

id sub_20D11ACA0(uint64_t a1, void *a2)
{
  v5 = [v2 itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex_];

  if (!v6)
  {
    v13 = sub_20D119F10();
    v38 = xmmword_20D5C0F70;
    v39 = 2;
    sub_20CEFA3C8(0, 0xE000000000000000, &v38, a2);
    v15 = v14;
    goto LABEL_12;
  }

  v7 = sub_20D567838();
  v9 = v8;

  if (v7 != sub_20D567838() || v9 != v10)
  {
    v12 = sub_20D568BF8();

    if (v12)
    {
      goto LABEL_10;
    }

    v13 = sub_20D119F10();
    v38 = xmmword_20D5BA030;
    v39 = 2;
    sub_20CEFA3C8(v7, v9, &v38, a2);
    v15 = v36;

LABEL_12:

    return v15;
  }

LABEL_10:

  swift_getObjectType();
  v40.is_nil = 0;
  NSCollectionLayoutEnvironment.layoutOptions(overrideContentSize:)(v16, v40);
  v18 = v17;
  v19 = objc_opt_self();
  v20 = [v19 fractionalWidthDimension_];
  [v18 sectionHeaderCellHeight];
  v21 = [v19 estimatedDimension_];
  v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

  v23 = [objc_opt_self() itemWithLayoutSize_];
  v24 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80, &unk_20D5BB540);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20D5BA040;
  *(v25 + 32) = v23;
  sub_20CECF940(0, &qword_28111FE40, 0x277CFB860);
  v26 = v23;
  v27 = sub_20D567A58();

  v28 = [v24 horizontalGroupWithLayoutSize:v22 subitems:v27];

  v15 = [objc_opt_self() sectionWithGroup_];
  [v18 sectionTopMargin];
  v30 = v29;
  [v18 sectionLeadingMargin];
  v32 = v31;
  [v18 sectionBottomMargin];
  v34 = v33;
  [v18 sectionTrailingMargin];
  [v15 setContentInsets_];

  return v15;
}

uint64_t sub_20D11B0C0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F6D0, &unk_20D5C5180);
  v5 = swift_task_alloc();
  v3[8] = v5;
  v6 = sub_20D563E88();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = sub_20D567C18();
  v3[14] = sub_20D567C08();
  type metadata accessor for DataModelAccessoryControlViewController(0);
  v7 = swift_task_alloc();
  v3[15] = v7;
  *v7 = v3;
  v7[1] = sub_20D11B238;

  return static DataModelAccessoryControlViewController.findDataModelObjectIdentifier(with:)(v5, a1);
}

uint64_t sub_20D11B238()
{

  v1 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D11B374, v1, v0);
}

uint64_t sub_20D11B374()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CEF928C(v0[8], &qword_27C81F6D0, &unk_20D5C5180);
    v4 = 0;
  }

  else
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[6];
    v19 = v0[5];
    (*(v8 + 32))(v5, v0[8], v7);
    type metadata accessor for ItemCollectionViewControlsTransitionHelper(0);
    v10 = swift_allocObject();
    v11 = v10 + qword_27C81D6C0;
    *(v10 + qword_27C81D6C0 + 8) = 0;
    swift_unknownObjectWeakInit();
    v12 = v10 + qword_27C81D6D0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 1;
    v13 = qword_27C81D6D8;
    v14 = sub_20D5655D8();
    (*(*(v14 - 8) + 56))(v10 + v13, 1, 1, v14);
    swift_beginAccess();
    *(v11 + 8) = &protocol witness table for HUControllableItemCollectionViewController;
    swift_unknownObjectWeakAssign();
    *(v10 + qword_27C81D6C8) = v9;
    v15 = v9;
    v16 = sub_20D565658();
    (*(v8 + 16))(v6, v5, v7);
    objc_allocWithZone(type metadata accessor for DashboardAccessoryControlViewController(0));
    v4 = sub_20CFABB5C(v6, v19, v16);
    (*(v8 + 8))(v5, v7);
  }

  v17 = v0[1];

  return v17(v4);
}

uint64_t sub_20D11B770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_20D567C18();
  v4[6] = sub_20D567C08();
  v6 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D11B80C, v6, v5);
}

uint64_t sub_20D11B80C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_20D02ABCC;
  v10 = v0[2];
  v9 = v0[3];

  return sub_20D11B0C0(v10, v9);
}

id StatusDetailsViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id StatusDetailsViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

id StatusDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StatusDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t StatusDetailsViewController.displayedItems(inSection:)(uint64_t a1, uint64_t a2)
{
  v3 = [v2 itemManager];
  v4 = sub_20D5677F8();
  v5 = [v3 displayedItemsInSectionWithIdentifier_];

  sub_20CECF940(0, &qword_281120AC0, 0x277D14748);
  v6 = sub_20D567A78();

  return v6;
}

void __swiftcall StatusDetailsViewController.transform(_:)(HUGridLayoutOptions *__return_ptr retstr, HUGridLayoutOptions *a2)
{
  [(HUGridLayoutOptions *)a2 setSectionTopMargin:0.0];

  v2 = a2;
}

uint64_t sub_20D11BFF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_20CEF934C;

  return v6();
}

uint64_t sub_20D11C0E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_20CEF5FFC;

  return v7();
}

uint64_t sub_20D11C1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610, &qword_20D5BCCE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_20CF646CC(a3, v23 - v10);
  v12 = sub_20D567C58();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20CEF928C(v11, &qword_27C81C610, &qword_20D5BCCE0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_20D567C48();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_20D567BA8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_20D567878() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_20CEF928C(a3, &qword_27C81C610, &qword_20D5BCCE0);

    return v21;
  }

LABEL_8:
  sub_20CEF928C(a3, &qword_27C81C610, &qword_20D5BCCE0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

void sub_20D11C4B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong statusDetailsViewControllerDidFinish_];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = sub_20D567EA8();
    if (qword_27C81A328 != -1)
    {
      swift_once();
    }

    v3 = qword_27C8382C0;
    if (os_log_type_enabled(qword_27C8382C0, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      *(v4 + 4) = v0;
      *v5 = v0;
      v6 = v0;
      _os_log_impl(&dword_20CEB6000, v3, v2, "%@ delegate is nil! Self-dismissing since Done button was pressed.", v4, 0xCu);
      sub_20CEF928C(v5, &unk_27C81BE60, &unk_20D5BDEB0);
      MEMORY[0x20F31FC70](v5, -1, -1);
      MEMORY[0x20F31FC70](v4, -1, -1);
    }

    v7 = [v0 presentingViewController];
    if (v7)
    {
      v8 = v7;
    }
  }
}

id sub_20D11C654(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20D5636B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  if (qword_27C81A320 != -1)
  {
    swift_once();
  }

  v13 = qword_27C8382B8;
  (*(v7 + 16))(v12, a1, v6);
  v14 = sub_20D567EC8();
  if (!os_log_type_enabled(v13, v14))
  {
    v23 = *(v7 + 8);
    v23(v12, v6);
    if (!a2)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v36 = a1;
  v17 = v16;
  v33 = v16;
  v34 = swift_slowAlloc();
  v37 = v34;
  *v15 = 138412546;
  *(v15 + 4) = v3;
  *v17 = v3;
  *(v15 + 12) = 2080;
  sub_20CFD5148();
  v35 = v9;
  v18 = v3;
  v19 = sub_20D568BB8();
  v20 = v3;
  v22 = v21;
  v32 = v13;
  v23 = *(v7 + 8);
  v23(v12, v6);
  v24 = v19;
  v9 = v35;
  v25 = sub_20CEE913C(v24, v22, &v37);
  v3 = v20;

  *(v15 + 14) = v25;
  _os_log_impl(&dword_20CEB6000, v32, v14, "%@: User tapped URL: %s", v15, 0x16u);
  v26 = v33;
  sub_20CEF928C(v33, &unk_27C81BE60, &unk_20D5BDEB0);
  MEMORY[0x20F31FC70](v26, -1, -1);
  v27 = v34;
  __swift_destroy_boxed_opaque_existential_1(v34);
  MEMORY[0x20F31FC70](v27, -1, -1);
  MEMORY[0x20F31FC70](v15, -1, -1);
  if (a2)
  {
    return 0;
  }

LABEL_7:
  v28 = [objc_opt_self() aboutResidentDeviceURL];
  sub_20D563698();

  LOBYTE(v28) = sub_20D563688();
  v23(v9, v6);
  if ((v28 & 1) == 0)
  {
    v30 = [objc_opt_self() sharedInstance];
    v31 = sub_20D563678();

    goto LABEL_11;
  }

  result = [objc_allocWithZone(HUAboutResidentDeviceViewController) initWithStyle_];
  if (result)
  {
    v30 = result;
    [result setDelegate_];
    v31 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [v31 setModalPresentationStyle_];
    [v3 presentViewController:v31 animated:1 completion:0];
LABEL_11:

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_20D11CB24()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20CEF5FFC;

  return sub_20D11B770(v2, v3, v5, v4);
}

uint64_t sub_20D11CBE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CEF934C;

  return sub_20CF20C40(a1, v4);
}

uint64_t sub_20D11CC9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CEF5FFC;

  return sub_20CF20C40(a1, v4);
}

BOOL sub_20D11CD54()
{
  v1 = *(v0 + OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_services);
  swift_getObjectType();
  sub_20D5663C8();
  v2 = sub_20D5681D8();
  v3 = sub_20CF844D8(v2, v1);

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_20D568768();
  }

  else
  {
    v4 = *(v3 + 16);
  }

  return v4 != 0;
}

uint64_t sub_20D11CDE8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_selectedItems;
  swift_beginAccess();
  v12 = *(v2 + v5);
  swift_getObjectType();
  sub_20D5663C8();
  *(v2 + OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_services) = sub_20D5681D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80, &unk_20D5BB540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BA040;
  *(inited + 32) = a2;
  v7 = a2;
  sub_20CEF302C(inited);
  v9 = v8;
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v3 + v5) = v9;

  sub_20CEEA1BC(&v11, v7);

  return v12;
}

uint64_t sub_20D11CF24(uint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v7 = OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_selectedItems;
  swift_beginAccess();
  v36 = v7;
  v45 = *(v5 + v7);
  sub_20D5663C8();
  sub_20CEEA1BC(v44, a2);

  swift_getObjectType();
  v8 = sub_20D5681D8();
  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_27C81AEC0, 0x277CD1D90);
    sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0, 0x277CD1D90);
    sub_20D567D58();
    v10 = v44[0];
    v9 = v44[1];
    v11 = v44[2];
    v12 = v44[3];
    v13 = v44[4];
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v9 = (v8 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(v8 + 56));
    v12 = 0;
    v10 = sub_20D5663C8();
  }

  v17 = (v11 + 64) >> 6;
  v40 = v9;
  v41 = v17;
  while (1)
  {
    while (1)
    {
      if (v10 < 0)
      {
        if (!sub_20D568798() || (sub_20CECF940(0, &qword_27C81AEC0, 0x277CD1D90), swift_dynamicCast(), v24 = v43, v42 = v13, v9 = v40, !v43))
        {
LABEL_27:
          sub_20CEC80DC(v10);
          goto LABEL_32;
        }
      }

      else
      {
        v22 = v12;
        v23 = v13;
        if (!v13)
        {
          while (1)
          {
            v12 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v12 >= v17)
            {
              goto LABEL_27;
            }

            v23 = v9[v12];
            ++v22;
            if (v23)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_35;
        }

LABEL_14:
        v42 = (v23 - 1) & v23;
        v24 = *(*(v10 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v23)))));
        if (!v24)
        {
          goto LABEL_27;
        }
      }

      v25 = *(v5 + OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_services);
      if ((v25 & 0xC000000000000001) == 0)
      {
        break;
      }

      sub_20D5663C8();
      v18 = v24;
      v19 = v10;
      v20 = v18;
      v21 = sub_20D5687A8();

      v10 = v19;
      v17 = v41;
      v13 = v42;
      if (v21)
      {
        goto LABEL_29;
      }
    }

    if (*(v25 + 16))
    {
      break;
    }

LABEL_26:
    v17 = v41;
    v13 = v42;
  }

  v37 = v11;
  v38 = v5;
  v39 = v4;
  sub_20CECF940(0, &qword_27C81AEC0, 0x277CD1D90);
  sub_20D5663C8();
  v26 = sub_20D5683E8();
  v27 = -1 << *(v25 + 32);
  v28 = v26 & ~v27;
  if (((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
  {
LABEL_24:

    v5 = v38;
    v4 = v39;
    v9 = v40;
    v11 = v37;
    goto LABEL_26;
  }

  v29 = ~v27;
  while (1)
  {
    v30 = *(*(v25 + 48) + 8 * v28);
    v31 = sub_20D5683F8();

    if (v31)
    {
      break;
    }

    v28 = (v28 + 1) & v29;
    if (((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v5 = v38;
LABEL_29:
  sub_20CEC80DC(v10);

  if (!(MEMORY[0x277D84F90] >> 62))
  {
    v32 = MEMORY[0x277D84FA0];
    *(v5 + OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_services) = MEMORY[0x277D84FA0];

    goto LABEL_31;
  }

LABEL_35:
  if (sub_20D568768())
  {
    sub_20CEF8560(MEMORY[0x277D84F90]);
  }

  else
  {
    v34 = MEMORY[0x277D84FA0];
  }

  *(v5 + OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_services) = v34;

  if (sub_20D568768())
  {
    sub_20CEF302C(MEMORY[0x277D84F90]);
    v32 = v35;
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

LABEL_31:
  *(v5 + v36) = v32;
LABEL_32:

  return v45;
}

void sub_20D11D3E4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_selectedItems;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_20D5663C8();
  *(v2 + v4) = sub_20CF84068(a1, v5);

  v24[3] = MEMORY[0x277D84FA0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_281120AC0, 0x277D14748);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0, 0x277D14748);
    sub_20D567D58();
    a1 = v25;
    v6 = v26;
    v7 = v27;
    v8 = v28;
    v9 = v29;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);
    sub_20D5663C8();
    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  while (a1 < 0)
  {
    v19 = sub_20D568798();
    if (!v19 || (v23 = v19, sub_20CECF940(0, &qword_281120AC0, 0x277D14748), swift_dynamicCast(), v18 = v24[0], v16 = v8, v17 = v9, !v24[0]))
    {
LABEL_25:
      sub_20CEC80DC(a1);
      return;
    }

LABEL_19:
    _s26DefaultSelectionControllerCMa();
    sub_20D11DA40(&qword_27C821C58, &unk_20D5CA2AC);
    if (sub_20D565ED8())
    {
      swift_beginAccess();
      v20 = sub_20CEEA1BC(&v23, v18);
      v21 = v23;
      swift_endAccess();

      if ((v20 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      swift_beginAccess();
      v22 = sub_20CEEECF8(v18);
      swift_endAccess();
      if (!v22)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    sub_20CEEA1BC(v24, v18);

LABEL_9:
    v8 = v16;
    v9 = v17;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_25;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_20D11D73C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s26DefaultSelectionControllerCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20D11D848@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D13250];
  v3 = sub_20D565B18();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20D11D974(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20D565ED8();
}

uint64_t sub_20D11D9D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28216DBA0](a1, a2, WitnessTable);
}

uint64_t sub_20D11DA40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s26DefaultSelectionControllerCMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_20D11DA84()
{
  v0 = _sSo25UINavigationBarAppearanceC6HomeUIE09dashboardC0AByFZ_0();

  return v0;
}

id _sSo25UINavigationBarAppearanceC6HomeUIE09dashboardC0AByFZ_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  [v0 _setOverrideUserInterfaceStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D858, &qword_20D5BFAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BC410;
  v2 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  v6 = sub_20D0F67EC();
  *(inited + 64) = v6;
  *(inited + 40) = v5;
  sub_20CEF488C(inited);
  swift_setDeallocating();
  sub_20D11DCB8(inited + 32);
  type metadata accessor for Key(0);
  sub_20D11DD20();
  v7 = sub_20D567738();

  [v0 setTitleTextAttributes_];

  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_20D5BC410;
  *(v8 + 32) = v4;
  v9 = [v3 whiteColor];
  *(v8 + 64) = v6;
  *(v8 + 40) = v9;
  sub_20CEF488C(v8);
  swift_setDeallocating();
  sub_20D11DCB8(v8 + 32);
  v10 = sub_20D567738();

  [v0 setLargeTitleTextAttributes_];

  return v0;
}

uint64_t sub_20D11DCB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C270, &unk_20D5BFAD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20D11DD20()
{
  result = qword_28111FE70;
  if (!qword_28111FE70)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28111FE70);
  }

  return result;
}

id HUUserNotificationTopicServiceListViewController.buildSwiftItemModuleControllerForModule(_:)(void *a1)
{
  type metadata accessor for ActivityLogItemModule();
  v2 = [a1 isKindOfClass_];
  result = 0;
  if (v2)
  {
    return [objc_allocWithZone(type metadata accessor for ActivityLogSettingsModuleController()) initWithModule_];
  }

  return result;
}

char *sub_20D11DE68(void *a1)
{
  *&v1[OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_nameAndIconItem] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_accessoryElementItemModule] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_staticItemProvider] = 0;
  v31 = OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_accessoryElementContext;
  v29 = [objc_allocWithZone(MEMORY[0x277D148D0]) init];
  v30 = type metadata accessor for AccessoryRepresentableItemModule.Context();
  v2 = objc_allocWithZone(v30);
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel] = 0;
  v4 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer] = 0;
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType] = 1;
  v6 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions] = 0;
  v7 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter] = 0;
  v8 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x277D148D0]) &selRef_indexesOfObjectsPassingTest_];
  v9 = &v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter];
  *v10 = 0;
  v10[1] = 0;
  swift_beginAccess();
  *&v2[v3] = 4;
  swift_beginAccess();
  *&v2[v4] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  *&v2[v5] = 1;
  swift_beginAccess();
  v2[v6] = 1;
  swift_beginAccess();
  v2[v7] = 0;
  swift_beginAccess();
  *&v2[v8] = v29;
  v11 = v29;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v12 = *v9;
  v13 = v9[1];
  *v9 = 0;
  v9[1] = 0;
  sub_20CEC8164(v12, v13);
  swift_beginAccess();
  v14 = *v10;
  v15 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  sub_20CEC8164(v14, v15);
  v34.receiver = v2;
  v34.super_class = v30;
  v16 = objc_msgSendSuper2(&v34, sel_init);

  *&v1[v31] = v16;
  type metadata accessor for ServiceGroupSelectionController();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *&v1[OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController] = v17;
  v18 = a1;
  v19 = [v18 serviceGroup];
  v20 = v19;
  if (v19)
  {
  }

  v1[OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_creatingNew] = v20 == 0;
  v33.receiver = v1;
  v33.super_class = type metadata accessor for ServiceGroupEditorItemManager();
  v21 = objc_msgSendSuper2(&v33, sel_initWithDelegate_sourceItem_, 0, 0);

  v22 = *&v21[OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_accessoryElementContext];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = &v22[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];
  *v24 = sub_20D11F66C;
  v24[1] = v23;
  v27 = v22;

  sub_20CEC8164(v25, v26);

  return v21;
}

uint64_t sub_20D11E1F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    return 0;
  }

  swift_getObjectType();
  v4 = sub_20D5681D8();
  v5 = v4;
  v6 = v4 & 0xC000000000000001;
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (*(v4 + 16))
    {
      goto LABEL_5;
    }

LABEL_26:

LABEL_66:

    return 0;
  }

  if (!sub_20D568768())
  {
    goto LABEL_26;
  }

LABEL_5:
  v54 = OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController;
  v7 = *(v3 + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
  swift_beginAccess();
  v8 = [*(v7 + 16) services];
  sub_20CECF940(0, &qword_27C81AEC0, 0x277CD1D90);
  v9 = sub_20D567A78();

  v52 = v9;
  if (v9 >> 62)
  {
    goto LABEL_75;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v55 = v3;
  v53 = v6;
  if (!v10)
  {
LABEL_27:

    if (v6)
    {
      swift_unknownObjectRetain();
      sub_20D568718();
      sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0, 0x277CD1D90);
      sub_20D567D58();
      v28 = v57;
      v27 = v58;
      v29 = v59;
      v6 = v60;
      v30 = v61;
    }

    else
    {
      v31 = -1 << *(v5 + 32);
      v27 = v5 + 56;
      v29 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v30 = v33 & *(v5 + 56);
      sub_20D5663C8();
      v28 = v5;
    }

    v34 = (v29 + 64) >> 6;
    do
    {
      v3 = v30;
      if (v28 < 0)
      {
        if (!sub_20D568798())
        {
          goto LABEL_46;
        }

        swift_dynamicCast();
        v37 = v62;
        if (!v62)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v35 = v6;
        v36 = v30;
        if (!v30)
        {
          while (1)
          {
            v6 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              __break(1u);
              goto LABEL_72;
            }

            if (v6 >= v34)
            {
              break;
            }

            v36 = *(v27 + 8 * v6);
            ++v35;
            if (v36)
            {
              goto LABEL_40;
            }
          }

LABEL_46:
          sub_20CEC80DC(v28);
          if (v53)
          {
            swift_unknownObjectRetain();
            sub_20D568718();
            sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0, 0x277CD1D90);
            sub_20D567D58();
            v28 = v62;
            v39 = v63;
            v40 = v64;
            v6 = v65;
            v41 = v66;
          }

          else
          {
            v42 = -1 << *(v5 + 32);
            v39 = v5 + 56;
            v40 = ~v42;
            v43 = -v42;
            if (v43 < 64)
            {
              v44 = ~(-1 << v43);
            }

            else
            {
              v44 = -1;
            }

            v41 = v44 & *(v5 + 56);
            sub_20D5663C8();
            v6 = 0;
            v28 = v5;
          }

          v45 = (v40 + 64) >> 6;
          while (1)
          {
            v3 = v41;
            if (v28 < 0)
            {
              if (!sub_20D568798() || (swift_dynamicCast(), (v48 = v56) == 0))
              {
LABEL_64:

                goto LABEL_65;
              }
            }

            else
            {
              v46 = v6;
              v47 = v41;
              if (!v41)
              {
                while (1)
                {
                  v6 = v46 + 1;
                  if (__OFADD__(v46, 1))
                  {
                    break;
                  }

                  if (v6 >= v45)
                  {
                    goto LABEL_64;
                  }

                  v47 = *(v39 + 8 * v6);
                  ++v46;
                  if (v47)
                  {
                    goto LABEL_58;
                  }
                }

LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                v10 = sub_20D568768();
                goto LABEL_7;
              }

LABEL_58:
              v41 = (v47 - 1) & v47;
              v48 = *(*(v28 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v47)))));
              if (!v48)
              {
                goto LABEL_64;
              }
            }

            v49 = *&v55[v54];
            swift_beginAccess();
            LOBYTE(v49) = [*(v49 + 16) shouldAllowAddingService_];

            if (v49)
            {

              sub_20CEC80DC(v28);

              return 1;
            }
          }
        }

LABEL_40:
        v30 = (v36 - 1) & v36;
        v37 = *(*(v28 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v36)))));
        if (!v37)
        {
          goto LABEL_46;
        }
      }

      v38 = [v37 hf_serviceGroup];
    }

    while (!v38);

LABEL_65:
    sub_20CEC80DC(v28);
    goto LABEL_66;
  }

  v11 = 0;
  v12 = v52 & 0xC000000000000001;
  v3 = (v52 & 0xFFFFFFFFFFFFFF8);
  v13 = v52 + 32;
  v14 = v5 + 56;
  v50 = v52 + 32;
  v51 = v10;
  while (1)
  {
    while (1)
    {
      if (v12)
      {
        v16 = MEMORY[0x20F31DD20](v11, v52);
      }

      else
      {
        if (v11 >= v3[2])
        {
          goto LABEL_74;
        }

        v16 = *(v13 + 8 * v11);
      }

      v17 = v16;
      if (__OFADD__(v11++, 1))
      {
        goto LABEL_73;
      }

      if (!v6)
      {
        break;
      }

      v15 = sub_20D5687A8();

      if (v15)
      {

        goto LABEL_68;
      }

      if (v11 == v10)
      {
        goto LABEL_27;
      }
    }

    v19 = v3;
    v20 = v12;
    if (*(v5 + 16))
    {
      v21 = sub_20D5683E8();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      if ((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        break;
      }
    }

LABEL_21:

    v6 = v53;
    v12 = v20;
    v3 = v19;
    v13 = v52 + 32;
    v10 = v51;
    if (v11 == v51)
    {
      goto LABEL_27;
    }
  }

  v24 = ~v22;
  while (1)
  {
    v25 = *(*(v5 + 48) + 8 * v23);
    v26 = sub_20D5683F8();

    if (v26)
    {
      break;
    }

    v23 = (v23 + 1) & v24;
    if (((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_68:
  return 1;
}

id sub_20D11E870(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
    swift_beginAccess();
    v4 = [*(v3 + 16) primaryServiceType];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() defaultIconDescriptorForServiceType:v4 serviceSubtype:0];

      v7 = *MEMORY[0x277D13E88];
      ObjectType = swift_getObjectType();
      *&v20 = v6;
      sub_20CEC80B0(&v20, v19);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_20CEEF89C(v19, v7, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
    }

    v9 = *MEMORY[0x277D13F70];
    v10 = sub_20D5677F8();
    v11 = HULocalizedString(v10);

    v12 = sub_20D567838();
    v14 = v13;

    ObjectType = MEMORY[0x277D837D0];
    *&v20 = v12;
    *(&v20 + 1) = v14;
    sub_20CEC80B0(&v20, v19);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CEEF89C(v19, v9, v15);
    type metadata accessor for HFItemResultKey(0);
    sub_20D11F384(&qword_28111FF80, type metadata accessor for HFItemResultKey, &unk_20D5BB49C);
    v16 = sub_20D567738();

    v17 = [objc_opt_self() futureWithResult_];
  }

  else
  {
    sub_20CECF940(0, &qword_27C81F5D8, 0x277CBEAC0);
    v16 = sub_20D567E58();
    v17 = [objc_opt_self() futureWithResult_];
  }

  return v17;
}

uint64_t sub_20D11EBAC()
{
  v18 = MEMORY[0x277D84F90];
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_accessoryElementContext);
  v2 = objc_allocWithZone(type metadata accessor for AccessoryRepresentableItemModule());
  v3 = &v2[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider] = 0;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = v1;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType] = 1;
  swift_unknownObjectWeakAssign();
  v4 = &v2[OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_itemProviderBlock];
  *v4 = 0;
  *(v4 + 1) = 0;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for AccessoryItemModule();
  v5 = v1;
  v6 = objc_msgSendSuper2(&v17, sel_initWithItemUpdater_, v0);
  v7 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v8 = *&v5[v7];

  v9 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  *&v6[v9] = v8;
  v10 = *(v0 + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
  v11 = sub_20D11F384(&unk_27C821260, type metadata accessor for ServiceGroupSelectionController, &protocol conformance descriptor for ServiceGroupSelectionController);
  v12 = &v6[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  swift_beginAccess();
  *v12 = v10;
  *(v12 + 1) = v11;

  swift_unknownObjectRelease();
  v13 = *(v0 + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_accessoryElementItemModule);
  *(v0 + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_accessoryElementItemModule) = v6;
  v14 = v6;

  v15 = v14;
  MEMORY[0x20F31CEE0]();
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();

  return v18;
}

uint64_t sub_20D11EE80(uint64_t a1)
{
  v2 = v1;
  v18 = MEMORY[0x277D84F90];
  v3 = *(v1 + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_nameAndIconItem);
  if (v3)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D14850]);
    v5 = v3;
    v6 = sub_20D5677F8();
    v7 = [v4 initWithIdentifier_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80, &unk_20D5BB540);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20D5BA040;
    *(v8 + 32) = v5;
    sub_20CECF940(0, &qword_281120AC0, 0x277D14748);
    v9 = v5;
    v10 = sub_20D567A58();

    [v7 setItems_];

    v11 = v7;
    MEMORY[0x20F31CEE0]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    sub_20D567B08();
  }

  v12 = *(v2 + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_accessoryElementItemModule);
  if (v12)
  {
    sub_20CECF940(0, &qword_281120AC0, 0x277D14748);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0, 0x277D14748);
    v13 = v12;
    v14 = sub_20D567CD8();
    v15 = [v13 buildSectionsWithDisplayedItems_];

    sub_20CECF940(0, &unk_28111FFD0, 0x277D14778);
    v16 = sub_20D567A78();

    sub_20CF6BF50(v16);
  }

  return v18;
}

id sub_20D11F2B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServiceGroupEditorItemManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20D11F384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D11F3CC()
{
  v1 = v0;
  v16 = MEMORY[0x277D84F90];
  v15[6] = MEMORY[0x277D84FA0];
  if (*(v0 + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_creatingNew) == 1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = objc_allocWithZone(MEMORY[0x277D14B38]);
    v15[4] = sub_20D11F64C;
    v15[5] = v2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_20CF351D8;
    v15[3] = &block_descriptor_56;
    v4 = _Block_copy(v15);

    v5 = [v3 initWithResultsBlock_];
    _Block_release(v4);

    v6 = *(v1 + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_nameAndIconItem);
    *(v1 + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_nameAndIconItem) = v5;
    v7 = v5;

    sub_20CEEA1BC(v15, v7);
  }

  v8 = objc_allocWithZone(MEMORY[0x277D14B40]);
  sub_20CECF940(0, &qword_281120AC0, 0x277D14748);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0, 0x277D14748);
  v9 = sub_20D567CD8();

  v10 = [v8 initWithItems_];

  v11 = *(v1 + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_staticItemProvider);
  *(v1 + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_staticItemProvider) = v10;
  v12 = v10;

  v13 = [v12 asGeneric];
  MEMORY[0x20F31CEE0]();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();

  return v16;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20D1217B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D122C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20D125F3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

void sub_20D127FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D12B7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D12F4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaPickerControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPickerController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_5 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaPickerControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"HUMediaSelectionViewController.m" lineNumber:44 description:{@"Unable to find class %s", "MPMediaPickerController"}];

    __break(1u);
  }
}

void MediaPlayerLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_277DB7788;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"HUMediaSelectionViewController.m" lineNumber:43 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

void __getMPPlaybackArchiveConfigurationClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPPlaybackArchiveConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_281120CE0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPPlaybackArchiveConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"HUMediaSelectionViewController.m" lineNumber:45 description:{@"Unable to find class %s", "MPPlaybackArchiveConfiguration"}];

    __break(1u);
  }
}

void sub_20D1302C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20D13431C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D135DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1363B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20D137748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20D137BF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20D139780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D139A84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_20D139C80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_20D13C814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D13E274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20D141AC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

HUQuickControlSliderMetrics *HUQuickControlSliderMetricsForControlSize(uint64_t a1)
{
  v1 = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = HUQuickControlVerticalControlSmallCornerRadius;
      v2 = HUQuickControlVerticalControlSmallWidth;
      v1 = HUQuickControlVerticalControlSmallHeight;
    }

    else
    {
      v2 = 0;
      *&v3 = 0.0;
      if (a1 == 3)
      {
        v3 = HUQuickControlVerticalControlExtraSmallCornerRadius;
        v2 = HUQuickControlVerticalControlExtraSmallWidth;
        v1 = HUQuickControlVerticalControlExtraSmallHeight;
      }
    }
  }

  else if (a1)
  {
    v2 = 0;
    *&v3 = 0.0;
    if (a1 == 1)
    {
      v3 = HUQuickControlVerticalControlRegularCornerRadius;
      v2 = HUQuickControlVerticalControlRegularWidth;
      v1 = HUQuickControlVerticalControlRegularHeight;
    }
  }

  else
  {
    v3 = HUQuickControlVerticalControlLargeCornerRadius;
    v2 = HUQuickControlVerticalControlLargeWidth;
    v1 = HUQuickControlVerticalControlLargeHeight;
  }

  v4 = [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:1 flexType:*&v2, *&v1];
  [v4 intrinsicSize];
  v6 = [[HUQuickControlSliderMetrics alloc] initWithSizeDescriptor:v4 cornerRadius:*&v3 widthToCornerRadiusRatio:*&v3 / v5];

  return v6;
}

HUQuickControlStepperViewMetrics *HUQuickControlStepperViewMetricsForOrientation(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a1 - 2) < 2)
  {
    v4 = HUQuickControlVerticalControlSmallCornerRadius;
    v6 = *&HUQuickControlVerticalControlSmallWidth;
    if (a2)
    {
      v5 = *&HUQuickControlHorizontalStepperViewSmallHeight;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a1 == 1)
  {
    v4 = HUQuickControlVerticalControlRegularCornerRadius;
    v6 = *&HUQuickControlVerticalControlRegularWidth;
    if (a2)
    {
      v5 = *&HUQuickControlHorizontalStepperViewRegularHeight;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  *&v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (!a1)
  {
    v4 = HUQuickControlVerticalControlLargeCornerRadius;
    v6 = *&HUQuickControlVerticalControlLargeWidth;
    v5 = *&HUQuickControlVerticalControlLargeHeight;
  }

  if (!a2)
  {
LABEL_11:
    v5 = v6 / 1.15999997 * a3;
  }

LABEL_12:
  v7 = v6 * 0.6;
  if ((a2 - 1) >= 2)
  {
    v8 = *&v4;
  }

  else
  {
    v6 = v5 * 1.07;
    v5 = v7;
    v8 = *&v4 * 0.6;
  }

  v9 = [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:1 flexType:v6, v5];
  v10 = [[HUQuickControlStepperViewMetrics alloc] initWithSizeDescriptor:v9 orientation:a2 cornerRadius:v8];

  return v10;
}

HUQuickControlRingSliderMetrics *HUQuickControlRingSliderMetricsForControlSize(unint64_t a1)
{
  v7 = 0.0;
  if (a1 <= 3)
  {
    v7 = dbl_20D5CA520[a1];
  }

  v12 = v5;
  v8 = v7 * 0.5;
  v9 = [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:1 flexType:v7, v7, v6, v12, v2, v1, v3];
  v10 = [[HUQuickControlRingSliderMetrics alloc] initWithSizeDescriptor:v9 outerRadius:v8];

  return v10;
}

id HUQuickControlColorViewMetricsForControlSizeModeAndOrientation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v12 = HUQuickControlSliderMetricsForControlSize(a1);
    v11 = [v12 sizeDescriptor];
  }

  else if (a2)
  {
    v11 = 0;
  }

  else
  {
    v3 = vdup_n_s32(a3 == 0);
    v4.i64[0] = v3.u32[0];
    v4.i64[1] = v3.u32[1];
    v5 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v4, 0x3FuLL)), xmmword_20D5CA460, xmmword_20D5CA510);
    __asm { FMOV            V3.2S, #4.5 }

    v11 = [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:1 flexType:vmlaq_n_f64(vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(v5, vdupq_n_s64(1uLL)))), _D3)), vcvtq_f64_u64(v5), *&HUQuickControlPushButtonSmallDiameter)];
  }

  return v11;
}

HUQuickControlPushButtonMetrics *HUQuickControlPushButtonMetricsForControlSize(uint64_t a1)
{
  if ((a1 - 2) < 2)
  {
    v5 = HUQuickControlPushButtonSmallDiameter;
  }

  else if (a1 == 1)
  {
    v5 = HUQuickControlPushButtonRegularDiameter;
  }

  else
  {
    v5 = 0;
    if (!a1)
    {
      v5 = HUQuickControlPushButtonLargeDiameter;
    }
  }

  v6 = [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:1 flexType:*&v5, *&v5, v2, v1, v3];
  v7 = [[HUQuickControlPushButtonMetrics alloc] initWithSizeDescriptor:v6];

  return v7;
}

HUQuickControlIconViewMetrics *HUQuickControlIconViewMetricsForControlSize(uint64_t a1, double a2)
{
  v2 = 120.0;
  if (a1 == 1)
  {
    v2 = 280.0;
  }

  v3 = 330.0;
  if (a1)
  {
    v3 = v2;
  }

  v4 = 100.0;
  if (a2 > 0.0)
  {
    v4 = a2;
  }

  v5 = [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:1 flexType:v3, v4];
  v6 = [[HUQuickControlIconViewMetrics alloc] initWithSizeDescriptor:v5];

  return v6;
}

double HUQuickControlIconViewMaxWidth(uint64_t a1)
{
  result = 120.0;
  if (a1 == 1)
  {
    result = 280.0;
  }

  if (!a1)
  {
    return 330.0;
  }

  return result;
}

__CFString *HUQuickControlReachabilityString(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_2823E0EE8;
  }

  else
  {
    return off_277DB8130[a1];
  }
}

void sub_20D1475D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&a34);
  objc_destroyWeak((v35 - 152));
  _Unwind_Resume(a1);
}

void sub_20D14FAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1525A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D157674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D15974C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D15B840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D15F058(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20D15F1EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20D16213C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D164D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D16A36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D16DB50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v6 - 120));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_20D1779A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_20D177C18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_20D17A4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20D17D668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a43);
  objc_destroyWeak(&a49);
  objc_destroyWeak(&a55);
  objc_destroyWeak(&a60);
  objc_destroyWeak(&a65);
  objc_destroyWeak(&STACK[0x200]);
  _Unwind_Resume(a1);
}

void sub_20D1818A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20D183948(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_20D184D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D185494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D185AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D18A9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D18AFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D18C79C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20D1958F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_20D197458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1A03F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1A1DB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id _HUPreloadViewController(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NAFuture *_HUPreloadViewController(UIViewController *__strong, BOOL, NAFuture *(^__strong)(void))"}];
    [v20 handleFailureInFunction:v21 file:@"UIViewController+HUPreloading.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x277CCA890] currentHandler];
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NAFuture *_HUPreloadViewController(UIViewController *__strong, BOOL, NAFuture *(^__strong)(void))"}];
  [v22 handleFailureInFunction:v23 file:@"UIViewController+HUPreloading.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"presentationBlock"}];

LABEL_3:
  v8 = v5;
  v9 = &unk_28249D748;
  if ([v8 conformsToProtocol:v9])
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [v11 hu_preloadContent];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = ___HUPreloadViewController_block_invoke;
    v37[3] = &unk_277DB9808;
    v13 = v12;
    v38 = v13;
    [v8 _beginDelayingPresentation:v37 cancellationHandler:10.0];
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__4;
    v35 = __Block_byref_object_dispose__4;
    v36 = 0;
    if ((a2 & 1) == 0)
    {
      v14 = v7[2](v7);
      v15 = v32[5];
      v32[5] = v14;
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___HUPreloadViewController_block_invoke_134;
    v26[3] = &unk_277DB9830;
    v30 = a2;
    v29 = &v31;
    v28 = v7;
    v16 = v8;
    v27 = v16;
    v17 = [v13 flatMap:v26];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___HUPreloadViewController_block_invoke_2;
    v24[3] = &unk_277DB9858;
    v25 = v16;
    v18 = [v17 recover:v24];

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v18 = v7[2](v7);
  }

  return v18;
}

void sub_20D1A2568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20D1A44C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1A8D88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_20D1AAEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1AB724(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

id HUDashboardRoomSectionIdentifierForRoom(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 uniqueIdentifier];
  v3 = [v2 UUIDString];
  v4 = [v1 stringWithFormat:@"%@-%@", @"roomSection", v3];

  return v4;
}

id HURoomIdentifierForDashboardSectionIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"roomSection"])
  {
    v2 = [@"roomSection" length];
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = [v1 substringFromIndex:v2 + 1];
    v5 = [v3 initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id HURoomForDashboardSectionIdentifier(void *a1, void *a2)
{
  v3 = a2;
  v4 = HURoomIdentifierForDashboardSectionIdentifier(a1);
  if (v4)
  {
    v5 = [v3 hf_roomWithIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id HUDashboardAccessoryCategorySectionIdentifierForAccessoryTypeGroup(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 uniqueIdentifier];
  v3 = [v2 UUIDString];
  v4 = [v1 stringWithFormat:@"%@-%@", @"accessoryCategorySection", v3];

  return v4;
}

id HUAccessoryTypeGroupForDashboardSectionIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"accessoryCategorySection"])
  {
    v2 = [@"accessoryCategorySection" length];
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = [v1 substringFromIndex:v2 + 1];
    v5 = [v3 initWithUUIDString:v4];

    if (v5)
    {
      v6 = [MEMORY[0x277D14378] accessoryTypeGroupWithIdentifier:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

double __HUCreateColorWheelImage_block_invoke(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = a2 / v3;
  v5 = a2 % v3;
  HUColorWheelCoordinateForPoint(0, (a2 % v3), (a2 / v3));
  v8 = 4.0 / *(a1 + 40);
  v9 = (v8 + 1.0);
  v10 = -v8;
  if (v7 <= v9 && v7 >= v10)
  {
    [*(a1 + 32) colorForCoordinate:?];
    v12 = (v5 + *(a1 + 40) * v4) * *(a1 + 88);
    *(*(a1 + 96) + v12) = (v13 * 255.0);
    *(*(a1 + 96) + v12 + 1) = (v14 * 255.0);
    result = v15 * 255.0;
    *(*(a1 + 96) + v12 + 2) = (v15 * 255.0);
    *(*(a1 + 96) + v12 + 3) = -1;
  }

  return result;
}

void sub_20D1B3ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1B4A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1B5694(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_20D1B5B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1B5D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1B5FC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20D1B6AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20D1B8E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D1B9364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D1BA3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1BD97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1BE9E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20D1BF0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1BFFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HUIsLightColor(void *a1)
{
  v1 = a1;
  [v1 _luminance];
  if (v2 <= 0.95)
  {
    v3 = HFIsColorLighter();
  }

  else
  {
    v3 = 1;
  }

  v4 = v3 | HFIsNearYellow();

  return v4 & 1;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20D1CB044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1CB678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1D2A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1D51DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D1D8398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20D1D8888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D1D8E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D1D96CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D1D9D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D1DA414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D1DADF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

void sub_20D1DC82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D1DD18C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_20D1DDC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D1DF708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_20D1E35E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D1E6F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (v25)
  {
    (*(v25 + 16))(v25, a2, a3, a4, a5, a6, a7, a8);
  }

  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20D1E7518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (v25)
  {
    (*(v25 + 16))(v25, a2, a3, a4, a5, a6, a7, a8);
  }

  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20D1EAF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v31 - 112));
  _Unwind_Resume(a1);
}

void sub_20D1EFF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62, uint64_t a63)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a40);
  objc_destroyWeak(&a48);
  objc_destroyWeak(&a55);
  objc_destroyWeak(&a62);
  objc_destroyWeak(&a65);
  objc_destroyWeak((v65 - 216));
  objc_destroyWeak((v65 - 208));
  _Unwind_Resume(a1);
}

void sub_20D1F4BDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20D1F5D60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

double HUCircleGetPoint(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Width = CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMidY(v15);
  v12 = 0.0;
  if (a1 <= 7)
  {
    v12 = dbl_20D5CA808[a1];
  }

  return MidX + Width * 0.5 * v12;
}