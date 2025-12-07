id sub_2723F37BC()
{
  result = [objc_allocWithZone(VCSignposts) init];
  qword_280895EF0 = result;
  return result;
}

void __swiftcall VCSignposts.init()(VCSignposts *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static VCSignposts.shared.getter()
{
  if (qword_280893E08 != -1)
  {
    swift_once();
  }

  v1 = qword_280895EF0;

  return v1;
}

uint64_t sub_2723F3910(uint64_t a1, unint64_t a2, const char *a3)
{
  v24 = a1;
  v6 = sub_2723FE3E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2723FE414();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2723D9230(v3 + OBJC_IVAR___VCSignposts_sVCSignposter, v25);
  swift_dynamicCast();

  sub_2723FE3D4();
  v14 = sub_2723FE3F4();
  v23 = sub_2723FE8B4();

  if (sub_2723FE904())
  {
    v15 = swift_slowAlloc();
    v22 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v21 = a3;
    v18 = v17;
    v25[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_2723E4A00(v24, a2, v25);
    v19 = sub_2723FE3C4();
    _os_signpost_emit_with_name_impl(&dword_2723CB000, v14, v23, v19, v21, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2743C8040](v18, -1, -1);
    MEMORY[0x2743C8040](v16, -1, -1);

    (*(v7 + 8))(v9, v22);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2723F3BC8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_2723FE5B4();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_2723F3EE0(const char *a1)
{
  v3 = sub_2723FE3E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2723FE414();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2723D9230(v1 + OBJC_IVAR___VCSignposts_sVCSignposter, v21);
  swift_dynamicCast();
  sub_2723FE3D4();
  v11 = sub_2723FE3F4();
  v12 = sub_2723FE8B4();
  if (sub_2723FE904())
  {
    v13 = swift_slowAlloc();
    v20 = v3;
    v14 = a1;
    v15 = v13;
    *v13 = 0;
    v16 = sub_2723FE3C4();
    v17 = v14;
    v3 = v20;
    _os_signpost_emit_with_name_impl(&dword_2723CB000, v11, v12, v16, v17, "", v15, 2u);
    MEMORY[0x2743C8040](v15, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

id VCSignposts.init()()
{
  v1 = &v0[OBJC_IVAR___VCSignposts_sVCSignposter];
  v1[3] = sub_2723FE414();
  __swift_allocate_boxed_opaque_existential_0(v1);
  sub_2723FE404();
  v3.receiver = v0;
  v3.super_class = VCSignposts;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t type metadata accessor for VCSignposts()
{
  result = qword_280894250;
  if (!qword_280894250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280894250);
  }

  return result;
}

id sub_2723F42F4()
{
  result = [objc_allocWithZone(VCSettingsObjC) init];
  qword_280895EF8 = result;
  return result;
}

id static VCSettingsObjC.shared.getter()
{
  if (qword_280893E10 != -1)
  {
    swift_once();
  }

  v1 = qword_280895EF8;

  return v1;
}

BOOL VCSettingsObjC.enabled.getter()
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  return _AXSCommandAndControlEnabled() != 0;
}

uint64_t VCSettingsObjC.enabled.setter(char a1)
{
  if (qword_280893DC8 == -1)
  {
    v2 = a1 & 1;
  }

  else
  {
    swift_once();
    v2 = a1 & 1;
  }

  return MEMORY[0x2821EFF28](v2);
}

uint64_t VCSettingsObjC.supportedLocales.getter()
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  if (qword_280893E00 != -1)
  {
    swift_once();
  }
}

uint64_t VCSettingsObjC.bestSupportedLocale(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v6 = qword_280894088;
  v7 = [objc_opt_self() sharedPreferences];
  v8 = [v7 languageCode];

  if (v8)
  {
    v9 = sub_2723FE5B4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_2723FE2F4();
  sub_2723EB6EC(v6, a1, a2, v9, v11, a3);
}

uint64_t VCSettingsObjC.activeLocale.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_2723EC124();
  v4 = v3;
  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v5 = qword_280894088;
  v6 = [objc_opt_self() sharedPreferences];
  v7 = [v6 languageCode];

  if (v7)
  {
    v8 = sub_2723FE5B4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  sub_2723FE2F4();
  sub_2723EB6EC(v5, v2, v4, v8, v10, a1);
}

_BYTE *VCSettingsObjC.alwaysShowOverlayType.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280893DC8 != -1)
  {
    v4 = a1;
    v5 = a2;
    swift_once();
    a1 = v4;
    a2 = v5;
  }

  VCOverlayType.init(rawValue:)(*&a1);
  v2 = v7;
  if (v7 == 9)
  {
    v2 = 0;
  }

  v6 = v2;
  return VCSettings.alwaysShowOverlayType.setter(&v6);
}

void sub_2723F5098(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 alwaysShowOverlayType];
  v4 = sub_2723FE5B4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

BOOL VCSettingsObjC.showUserHints.getter()
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  return sub_2723EC990() == 3;
}

uint64_t VCSettingsObjC.carPlayDebugOverlayUIEnabled.getter()
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v0 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v0)
  {
    v1 = v0;
    v2 = sub_2723E842C(0xAu);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_2723F5400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_280893DC8 != -1)
  {
    v4 = a3;
    swift_once();
    a3 = v4;
  }

  return a3() & 1;
}

uint64_t sub_2723F5480(uint64_t (*a1)(void))
{
  if (qword_280893DC8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return a1() & 1;
}

uint64_t _sSo14VCSettingsObjCC12VoiceControlE18setPreferredLocaleyySSSgF_0(uint64_t result, uint64_t a2)
{
  if (qword_280893DC8 != -1)
  {
    v7 = result;
    swift_once();
    result = v7;
  }

  v3 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v3)
  {
    if (a2)
    {
      v4 = MEMORY[0x277D837D0];
      v5 = a2;
    }

    else
    {
      result = 0;
      v5 = 0;
      v4 = 0;
      v8[2] = 0;
    }

    v8[0] = result;
    v8[1] = v5;
    v8[3] = v4;
    v6 = v3;

    sub_2723E88C8(v8, 1u);

    return sub_2723EF760(v8);
  }

  return result;
}

uint64_t _sSo14VCSettingsObjCC12VoiceControlE21alwaysShowOverlayTypeSSvg_0()
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  VCSettings.alwaysShowOverlayType.getter(&v5);
  if (v5 <= 3u)
  {
    v3 = 1701736270;
    v4 = 0x656C4564656D614ELL;
    if (v5 != 2)
    {
      v4 = 0x64657265626D754ELL;
    }

    if (v5)
    {
      v3 = 0xD000000000000010;
    }

    if (v5 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v0 = 0xD000000000000012;
    v1 = 0xD000000000000011;
    if (v5 != 7)
    {
      v1 = 0xD000000000000012;
    }

    if (v5 != 6)
    {
      v0 = v1;
    }

    if (v5 <= 5u)
    {
      return 0x64657265626D754ELL;
    }

    else
    {
      return v0;
    }
  }
}

uint64_t _sSo14VCSettingsObjCC12VoiceControlE13showUserHintsSbvs_0(uint64_t result)
{
  if (qword_280893DC8 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  v1 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v1)
  {
    v2 = 3;
    if ((result & 1) == 0)
    {
      v2 = 0;
    }

    v5[3] = MEMORY[0x277D83B88];
    v5[0] = v2;
    v3 = v1;
    sub_2723E88C8(v5, 6u);

    return sub_2723EF760(v5);
  }

  return result;
}

id _sSo14VCSettingsObjCC12VoiceControlE21syncVocabularyEntriesSbvs_0(char a1)
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v2 = qword_280894080;
  result = [objc_opt_self() vocabularySyncEnabled];
  if (result)
  {
    v4 = *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
    if (v4)
    {
      v7 = MEMORY[0x277D839B0];
      v6[0] = a1 & 1;
      v5 = v4;
      sub_2723E88C8(v6, 8u);

      return sub_2723EF760(v6);
    }
  }

  return result;
}

uint64_t sub_2723F591C(uint64_t result, unsigned __int8 a2)
{
  if (qword_280893DC8 != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
  }

  v3 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v3)
  {
    v7 = MEMORY[0x277D839B0];
    v6[0] = result & 1;
    v4 = v3;
    sub_2723E88C8(v6, a2);

    return sub_2723EF760(v6);
  }

  return result;
}

id sub_2723F59D8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enabled];
  *a2 = result;
  return result;
}

void sub_2723F5A30(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_2723FE574();
  [v2 setAlwaysShowOverlayType_];
}

id sub_2723F5AA0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 playSoundUponRecognition];
  *a2 = result;
  return result;
}

id sub_2723F5AF4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showTextResponseUponRecognition];
  *a2 = result;
  return result;
}

id sub_2723F5B48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showUserHints];
  *a2 = result;
  return result;
}

id sub_2723F5B9C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 syncVocabularyEntries];
  *a2 = result;
  return result;
}

id sub_2723F5BF0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 persistentSleepState];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for VCSettingsObjC()
{
  result = qword_280894258;
  if (!qword_280894258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280894258);
  }

  return result;
}

uint64_t sub_2723F5C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808942A0, &qword_272400758);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2723F8080(a1);
    v13 = sub_2723E4FAC(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2723D7678();
        v17 = v21;
      }

      sub_2723F80E8(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_2723F7474(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2723F8080(v8);
  }

  else
  {
    sub_2723F80E8(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_2723D72A8(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

unint64_t VCLogger(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - v6);
  result = *a1;
  if (qword_280893E18 != -1)
  {
    v13 = *a1;
    swift_once();
    result = v13;
  }

  v9 = off_280894260;
  if (*(off_280894260 + 2))
  {
    result = sub_2723E4FAC(result);
    if (v10)
    {
      sub_2723F7404(v9[7] + *(v5 + 72) * result, v7);

      v11 = *(v4 + 48);
      v12 = sub_2723FE434();
      return (*(*(v12 - 8) + 32))(a2, v7 + v11, v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

VoiceControl::VCLogging::Category_optional __swiftcall VCLogging.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2723FEC54();

  v5 = 0;
  v6 = 25;
  switch(v3)
  {
    case 0:
      goto LABEL_39;
    case 1:
      v5 = 1;
      goto LABEL_39;
    case 2:
      v5 = 2;
      goto LABEL_39;
    case 3:
      v5 = 3;
      goto LABEL_39;
    case 4:
      v5 = 4;
      goto LABEL_39;
    case 5:
      v5 = 5;
      goto LABEL_39;
    case 6:
      v5 = 6;
      goto LABEL_39;
    case 7:
      v5 = 7;
      goto LABEL_39;
    case 8:
      v5 = 8;
      goto LABEL_39;
    case 9:
      v5 = 9;
      goto LABEL_39;
    case 10:
      v5 = 10;
      goto LABEL_39;
    case 11:
      v5 = 11;
      goto LABEL_39;
    case 12:
      v5 = 12;
      goto LABEL_39;
    case 13:
      v5 = 13;
      goto LABEL_39;
    case 14:
      v5 = 14;
      goto LABEL_39;
    case 15:
      v5 = 15;
      goto LABEL_39;
    case 16:
      v5 = 16;
      goto LABEL_39;
    case 17:
      v5 = 17;
      goto LABEL_39;
    case 18:
      v5 = 18;
      goto LABEL_39;
    case 19:
      v5 = 19;
      goto LABEL_39;
    case 20:
      v5 = 20;
      goto LABEL_39;
    case 21:
      v5 = 21;
      goto LABEL_39;
    case 22:
      v5 = 22;
      goto LABEL_39;
    case 23:
      v5 = 23;
      goto LABEL_39;
    case 24:
      v5 = 24;
LABEL_39:
      v6 = v5;
      break;
    case 25:
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    default:
      v6 = 43;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t VCLogging.Category.rawValue.getter()
{
  result = 0x6669636570736E75;
  switch(*v0)
  {
    case 1:
      return 5395265;
    case 2:
      return 0x737465737361;
    case 3:
      return 0x6F4D676E69646F63;
    case 4:
      return 0x65727574616566;
    case 5:
      return 0x6C6379636566696CLL;
    case 6:
      return 0x656C61636F6CLL;
    case 7:
      return 0x73676E6974746573;
    case 8:
      return 0x616C756261636F76;
    case 9:
    case 0x16:
    case 0x25:
      return 0xD000000000000013;
    case 0xA:
      return 0xD000000000000010;
    case 0xB:
    case 0xC:
      v3 = 1098019684;
      return v3 | 0x6F69647500000000;
    case 0xD:
      v4 = 1131574116;
      goto LABEL_26;
    case 0xE:
      v2 = 1198682980;
      goto LABEL_7;
    case 0xF:
    case 0x11:
    case 0x1B:
      return 0xD000000000000011;
    case 0x10:
      return 0x74694B4F49727364;
    case 0x12:
      return 0x617267694D727364;
    case 0x13:
      v5 = 1349677924;
      goto LABEL_31;
    case 0x14:
    case 0x19:
    case 0x20:
    case 0x21:
    case 0x22:
      return 0xD000000000000014;
    case 0x15:
      return 0x6574737953727364;
    case 0x17:
      return 0x656C454955727364;
    case 0x18:
      return 0xD000000000000010;
    case 0x1A:
      return 0xD000000000000010;
    case 0x1C:
      v3 = 1097032035;
      return v3 | 0x6F69647500000000;
    case 0x1D:
      return 0x6552677542636163;
    case 0x1E:
      v4 = 1130586467;
LABEL_26:
      result = v4 | 0x65746E6F00000000;
      break;
    case 0x1F:
      result = 0x6572726F43636163;
      break;
    case 0x23:
      result = 0xD000000000000010;
      break;
    case 0x24:
      v2 = 1197695331;
LABEL_7:
      result = v2 | 0x72656E6500000000;
      break;
    case 0x26:
      result = 0x64697247636163;
      break;
    case 0x27:
      v5 = 1348690275;
LABEL_31:
      result = v5 | 0x6566657200000000;
      break;
    case 0x28:
      result = 0x676F636552636163;
      break;
    case 0x29:
      result = 0xD000000000000010;
      break;
    case 0x2A:
      result = 0x5064726F57636163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2723F6774()
{
  v0 = VCLogging.Category.rawValue.getter();
  v2 = v1;
  if (v0 == VCLogging.Category.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2723FEC44();
  }

  return v5 & 1;
}

uint64_t sub_2723F6810()
{
  sub_2723FEC94();
  VCLogging.Category.rawValue.getter();
  sub_2723FE634();

  return sub_2723FECB4();
}

uint64_t sub_2723F6878(uint64_t a1)
{
  VCLogging.Category.rawValue.getter();
  sub_2723FE634();
}

uint64_t sub_2723F68DC(uint64_t a1)
{
  sub_2723FEC94();
  VCLogging.Category.rawValue.getter();
  sub_2723FE634();

  return sub_2723FECB4();
}

uint64_t sub_2723F694C@<X0>(uint64_t *a1@<X8>)
{
  result = VCLogging.Category.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_2723F6A34()
{
  result = sub_2723F6A54();
  off_280894260 = result;
  return result;
}

unint64_t sub_2723F6A54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808942A0, &qword_272400758);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = sub_2723FE434();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2723D7CF0(MEMORY[0x277D84F90]);
  v7 = sub_2723F8038(0, &qword_2808942A8, 0x277D86200);
  v8 = 0;
  v9 = (v4 + 16);
  v10 = (v4 + 8);
  v21[2] = "persistentSleepState";
  v21[3] = v7;
  v21[0] = "sertion";
  v21[1] = "defaultsVocabulary";
  do
  {
    v16 = byte_28819F6B0[v8 + 32];
    v24 = byte_28819F6B0[v8 + 32];
    v17 = VCLogging.Category.rawValue.getter();
    v19 = sub_2723F704C(7500644, 0xE300000000000000, v17, v18);

    if ((v19 & 1) == 0)
    {
      v23 = v16;
      v11 = VCLogging.Category.rawValue.getter();
      sub_2723F704C(6512995, 0xE300000000000000, v11, v12);
    }

    ++v8;
    v22 = v16;
    VCLogging.Category.osLogCategory.getter();
    v13 = sub_2723FE914();
    sub_2723FE444();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
    v15 = *(v14 + 48);
    *v2 = v13;
    (*v9)(&v2[v15], v6, v3);
    (*(*(v14 - 8) + 56))(v2, 0, 1, v14);
    sub_2723F5C84(v2, v16);
    (*v10)(v6, v3);
  }

  while (v8 != 43);
  return v25;
}

unint64_t VCLogging.Category.osLogSubsystem.getter()
{
  v0 = VCLogging.Category.rawValue.getter();
  v2 = sub_2723F704C(7500644, 0xE300000000000000, v0, v1);

  if (v2)
  {
    return 0xD000000000000022;
  }

  v4 = VCLogging.Category.rawValue.getter();
  v6 = sub_2723F704C(6512995, 0xE300000000000000, v4, v5);

  if (v6)
  {
    return 0xD000000000000033;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t VCLogging.Category.osLogCategory.getter()
{
  v0 = VCLogging.Category.rawValue.getter();
  v2 = sub_2723F704C(7500644, 0xE300000000000000, v0, v1);

  if (v2)
  {
    v3 = VCLogging.Category.rawValue.getter();
    sub_2723F7678(3, v3, v4);

    v5 = sub_2723FE944();

    v6 = VCLogging.Category.rawValue.getter();
    sub_2723F7714(3uLL, v6, v7);

    sub_2723F77C4();
    sub_2723FE654();

    return v5;
  }

  else
  {
    v9 = VCLogging.Category.rawValue.getter();
    v11 = sub_2723F704C(6512995, 0xE300000000000000, v9, v10);

    if (v11)
    {
      v12 = VCLogging.Category.rawValue.getter();
      v14 = sub_2723F7714(3uLL, v12, v13);
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v21 = MEMORY[0x2743C7240](v14, v16, v18, v20);

      return v21;
    }

    else
    {
      VCLogging.Category.rawValue.getter();
      v22 = sub_2723FE604();

      return v22;
    }
  }
}

uint64_t sub_2723F704C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_2723FE674();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_2723FE674();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_2723FEC44();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_2723FE674();
      v7 = v9;
    }

    while (v9);
  }

  sub_2723FE674();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t VCLogging.Category.osLogMacroName.getter()
{
  v0 = VCLogging.Category.rawValue.getter();
  sub_2723F7678(1, v0, v1);

  v2 = sub_2723FE944();
  v4 = v3;

  MEMORY[0x2743C7290](v2, v4);

  v5 = VCLogging.Category.rawValue.getter();
  sub_2723F7714(1uLL, v5, v6);

  sub_2723F77C4();
  sub_2723FE654();

  return 0x676F4C4356;
}

VCLog __swiftcall VCLog.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2723F7404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2723F7474(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2723FE9D4() + 1) & ~v5;
    while (1)
    {
      sub_2723FEC94();
      VCLogging.Category.rawValue.getter();
      sub_2723FE634();

      result = sub_2723FECB4();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2723F7678(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2723FE644();

    return sub_2723FE6F4();
  }

  return result;
}

unint64_t sub_2723F7714(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2723FE644();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2723FE6F4();
}

unint64_t sub_2723F77C4()
{
  result = qword_280894268;
  if (!qword_280894268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280894268);
  }

  return result;
}

unint64_t sub_2723F7818(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  result = *a1;
  if (qword_280893E18 != -1)
  {
    v12 = *a1;
    swift_once();
    result = v12;
  }

  v7 = off_280894260;
  if (*(off_280894260 + 2))
  {
    result = sub_2723E4FAC(result);
    if (v8)
    {
      sub_2723F7404(v7[7] + *(v3 + 72) * result, v5);
      v9 = *v5;
      v10 = *(v2 + 48);
      v11 = sub_2723FE434();
      (*(*(v11 - 8) + 8))(&v5[v10], v11);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSo5VCLogC12VoiceControlE25isSensitiveLoggingEnabledSbvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894298, &qword_272400770);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v24 - v1;
  v3 = sub_2723FE174();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2723FE1F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x277CC91D0], v3);
  (*(v8 + 56))(v2, 1, 1, v7);
  sub_2723FE1D4();
  v11 = [objc_opt_self() defaultManager];
  sub_2723FE1C4();
  v12 = sub_2723FE574();

  v13 = [v11 fileExistsAtPath_];

  if (!v13)
  {
LABEL_16:
    (*(v8 + 8))(v10, v7);
    return v13 & 1;
  }

  v14 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v15 = sub_2723FE1B4();
  v16 = [v14 initWithContentsOfURL_];

  if (v16)
  {
    v25[0] = 0;
    sub_2723FE4A4();

    v17 = v25[0];
    if (v25[0])
    {
      if (!*(v25[0] + 16))
      {
        goto LABEL_13;
      }

      v18 = sub_2723E4F34(7500641, 0xE300000000000000);
      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      sub_2723D9230(*(v17 + 56) + 32 * v18, v25);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v20 = v24[0];
      if (!*(v24[0] + 16) || (v21 = sub_2723E4F34(0xD000000000000014, 0x8000000272401B60), (v22 & 1) == 0))
      {
LABEL_13:

        goto LABEL_14;
      }

      sub_2723D9230(*(v20 + 56) + 32 * v21, v25);

      if (swift_dynamicCast())
      {
        if (v24[0] == 0x76697469736E6553 && v24[1] == 0xE900000000000065)
        {

          LOBYTE(v13) = 1;
        }

        else
        {
          LOBYTE(v13) = sub_2723FEC44();
        }

        goto LABEL_16;
      }
    }
  }

LABEL_14:
  (*(v8 + 8))(v10, v7);
  LOBYTE(v13) = 0;
  return v13 & 1;
}

unint64_t sub_2723F7DB4()
{
  result = qword_280894270;
  if (!qword_280894270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280894270);
  }

  return result;
}

unint64_t sub_2723F7E0C()
{
  result = qword_280894278;
  if (!qword_280894278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280894280, &qword_272400648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280894278);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCLogging.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCLogging.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2723F7FE4()
{
  result = qword_280894290;
  if (!qword_280894290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280894290);
  }

  return result;
}

uint64_t sub_2723F8038(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2723F8080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808942A0, &qword_272400758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2723F80E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VCAssetStatus.description.getter()
{
  v1 = 0x7070757320746F6ELL;
  v2 = 0x696C6C6174736E69;
  if (*v0 != 2)
  {
    v2 = 0x656C6C6174736E69;
  }

  if (*v0)
  {
    v1 = 0x74736E6920746F6ELL;
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

uint64_t VCAssetStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2723FEC94();
  MEMORY[0x2743C78D0](v1);
  return sub_2723FECB4();
}

uint64_t sub_2723F8288()
{
  v1 = 0x7070757320746F6ELL;
  v2 = 0x696C6C6174736E69;
  if (*v0 != 2)
  {
    v2 = 0x656C6C6174736E69;
  }

  if (*v0)
  {
    v1 = 0x74736E6920746F6ELL;
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

uint64_t VCSpeechAsset.hash(into:)()
{
  v0 = sub_2723FE334();
  MEMORY[0x2743C78D0](v0);
  v1 = sub_2723FE8F4();
  return MEMORY[0x2743C78D0](v1);
}

uint64_t VCSpeechAsset.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v4 = sub_2723FE344();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VCSpeechAsset.language.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig) language];
  v2 = sub_2723FE5B4();

  return v2;
}

uint64_t VCSpeechAsset.status.getter@<X0>(char *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v4 = sub_2723FD1B8(1005);
  v24 = v3;
  v5 = *(sub_2723D29CC(sub_2723FDFE0, v23, v4) + 16);

  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = objc_opt_self();
  v8 = [v7 installedLanguagesForTaskHint_];
  v9 = sub_2723FE804();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_2723D612C(*(v9 + 16), 0);
    v12 = sub_2723D7A68(&v25, v11 + 4, v10, v9);
    result = sub_2723D8970(v25);
    if (v12 != v10)
    {
      __break(1u);
LABEL_5:
      v13 = 0;
      goto LABEL_14;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](result);
  v22 = v3;
  v14 = *(sub_2723D29CC(sub_2723FD718, v21, v11) + 16);

  if (v14)
  {
    v13 = 3;
  }

  else
  {
    v15 = sub_2723FE574();
    v16 = [v7 subscriptionsForClientIdentifier_];

    sub_2723F8038(0, &qword_2808942C0, 0x277CDCE88);
    v17 = sub_2723FE744();

    MEMORY[0x28223BE20](v18);
    v22 = v3;
    v19 = sub_2723D2B44(sub_2723FD738, v21, v17);
    if (v19 >> 62)
    {
      v20 = sub_2723FEB04();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

LABEL_14:
  *a1 = v13;
  return result;
}

uint64_t VCSpeechAsset.assetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2723FE174();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894298, &qword_272400770);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = objc_opt_self();
  v11 = *(v1 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  v12 = sub_2723FE574();
  v13 = [v10 pathToAssetWithConfig:v11 clientIdentifier:v12];

  if (v13)
  {
    sub_2723FE5B4();

    v14 = sub_2723FE1F4();
    v15 = *(*(v14 - 8) + 56);
    v15(v9, 1, 1, v14);
    (*(v4 + 104))(v6, *MEMORY[0x277CC91D8], v3);
    sub_2723FE1D4();
    return (v15)(a1, 0, 1, v14);
  }

  else
  {
    v17 = sub_2723FE1F4();
    v18 = *(*(v17 - 8) + 56);

    return v18(a1, 1, 1, v17);
  }
}

void VCSpeechAsset.install(progress:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_opt_self();
  v15 = *(v4 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  v16 = v9;
  v10 = sub_2723FE574();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v21 = sub_2723FD798;
  v22 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2723F8C3C;
  v20 = &block_descriptor_0;
  v12 = _Block_copy(&aBlock);
  sub_2723FD7B8(a1, a2);

  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v4;
  v21 = sub_2723FD810;
  v22 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2723F90D0;
  v20 = &block_descriptor_6;
  v14 = _Block_copy(&aBlock);
  sub_2723FD7B8(a3, a4);

  [v16 fetchAssetWithConfig:v15 clientIdentifier:v10 detailedProgress:v12 completion:v14];
  _Block_release(v14);
  _Block_release(v12);
}

uint64_t sub_2723F8BCC(uint64_t result, uint64_t a2, void (*a3)(uint64_t, double), uint64_t a4)
{
  if (a3)
  {
    v6 = result / 100.0;

    a3(v7, v6);

    return sub_2723FDF44(a3, a4);
  }

  return result;
}

uint64_t sub_2723F8C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_2723F8C9C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v38 - v12);
  v14 = sub_2723FE434();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {

    a4(a3);
    sub_2723FDF44(a4, a5);
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  v18 = a3;
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v19 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = sub_2723E4FAC(2);
  if ((v21 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_2723F7404(v19[7] + *(v11 + 72) * v20, v13);

  (*(v15 + 32))(v17, v13 + *(v10 + 48), v14);
  v22 = a3;

  v23 = sub_2723FE424();
  v24 = sub_2723FE894();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v25 = 136446466;
    v27 = [*(a6 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig) language];
    v28 = v15;
    v29 = sub_2723FE5B4();
    v40 = v14;
    v31 = v30;

    v32 = sub_2723E4A00(v29, v31, &v41);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2114;
    v33 = a3;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v34;
    *v26 = v34;
    _os_log_impl(&dword_2723CB000, v23, v24, "Downloading asset '%{public}s' encountered error: %{public}@", v25, 0x16u);
    sub_2723D9188(v26, &unk_280894310, &unk_2724009C0);
    MEMORY[0x2743C8040](v26, -1, -1);
    v35 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x2743C8040](v35, -1, -1);
    MEMORY[0x2743C8040](v25, -1, -1);

    (*(v28 + 8))(v17, v40);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

LABEL_11:
  if (qword_280893D70 != -1)
  {
    swift_once();
  }

  v36 = qword_280893FF0;
  v37 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v37, v36, 0, 0, 0);
}

uint64_t sub_2723F90D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_2723FE5B4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

Swift::Void __swiftcall VCSpeechAsset.uninstall()()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v2 = objc_opt_self();
  v3 = sub_2723FE574();
  v4 = [v2 subscriptionsForClientIdentifier_];

  sub_2723F8038(0, &qword_2808942C0, 0x277CDCE88);
  v5 = sub_2723FE744();

  v14[2] = v1;
  v6 = sub_2723D2B44(sub_2723FDFFC, v14, v5);
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2723FEB04())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2743C76B0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = sub_2723FE574();
      [v2 unsubscribeFromAssetWithConfig:v11 clientIdentifier:v13 completion:0];

      ++v9;
      if (v12 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_2723F932C(void *a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = (&v43 - v3);
  v4 = sub_2723FE434();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2723FE2D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2723FE344();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig) = a1;
  v14 = a1;
  v15 = [v14 language];
  sub_2723FE5B4();

  (*(v7 + 104))(v9, *MEMORY[0x277CC9668], v6);
  v16 = sub_2723FE2C4();
  v18 = v17;

  (*(v7 + 8))(v9, v6);
  v56 = v16;
  v57 = v18;
  v54 = 45;
  v55 = 0xE100000000000000;
  v52 = 95;
  v53 = 0xE100000000000000;
  v41 = sub_2723CD24C();
  v42 = v41;
  v40[0] = MEMORY[0x277D837D0];
  v40[1] = v41;
  sub_2723FE984();
  v19 = v51;

  sub_2723FE2A4();
  (*(v11 + 32))(v19 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale, v13, v10);
  VCSpeechAsset.status.getter(&v56);
  if (v56 != 3)
  {

    return v19;
  }

  v44 = v14;
  result = sub_2723F9EC8();
  if (result)
  {
    v21 = result;
    v56 = 0x6F69746174636944;
    v57 = 0xEB0000000043436ELL;
    MEMORY[0x28223BE20](result);
    v41 = &v56;
    v22 = sub_2723E718C(sub_2723CE180, v40, v21);

    if (v22)
    {

      return v19;
    }
  }

  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v23 = off_280894260;
  v25 = v48;
  v24 = v49;
  v26 = v50;
  if (*(off_280894260 + 2))
  {
    result = sub_2723E4FAC(2);
    if (v27)
    {
      v28 = v23[7];
      v29 = v46;
      sub_2723F7404(v28 + *(v45 + 72) * result, v46);

      (*(v25 + 32))(v26, v29 + *(v47 + 48), v24);

      v30 = sub_2723FE424();
      v31 = sub_2723FE894();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v56 = v33;
        *v32 = 136446210;
        v34 = v19;
        v35 = [*(v19 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig) language];
        v36 = sub_2723FE5B4();
        v38 = v37;

        v39 = sub_2723E4A00(v36, v38, &v56);

        *(v32 + 4) = v39;
        v19 = v34;
        _os_log_impl(&dword_2723CB000, v30, v31, "Asset '%{public}s' does not support Voice Control.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x2743C8040](v33, -1, -1);
        MEMORY[0x2743C8040](v32, -1, -1);

        (*(v25 + 8))(v50, v24);
      }

      else
      {

        (*(v25 + 8))(v26, v24);
      }

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL VCSpeechAsset.subscribed.getter()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v2 = objc_opt_self();
  v3 = sub_2723FE574();
  v4 = [v2 subscriptionsForClientIdentifier_];

  sub_2723F8038(0, &qword_2808942C0, 0x277CDCE88);
  v5 = sub_2723FE744();

  v9[2] = v1;
  v6 = sub_2723D2B44(sub_2723FDFFC, v9, v5);
  if (v6 >> 62)
  {
    v7 = sub_2723FEB04();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v7 != 0;
}

id sub_2723F9AA4()
{
  v29 = *MEMORY[0x277D85DE8];
  v0 = sub_2723FE174();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894298, &qword_272400770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26[-1] - v5;
  v7 = sub_2723FE1F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26[-1] - v12;
  VCSpeechAsset.assetURL.getter(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2723D9188(v6, &qword_280894298, &qword_272400770);
    return 0;
  }

  *&v28[0] = 0x6F736A2E696E696DLL;
  *(&v28[0] + 1) = 0xE90000000000006ELL;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D0], v0);
  sub_2723CD24C();
  sub_2723FE1E4();
  (*(v1 + 8))(v3, v0);
  v14 = *(v8 + 8);
  v14(v6, v7);
  (*(v8 + 32))(v13, v11, v7);
  v16 = sub_2723FE204();
  v18 = v17;
  v19 = objc_opt_self();
  v20 = sub_2723FE214();
  v26[0] = 0;
  v21 = [v19 JSONObjectWithData:v20 options:0 error:v26];

  v22 = v26[0];
  if (!v21)
  {
    v23 = v22;
    v24 = sub_2723FE164();

    swift_willThrow();
    sub_2723CE0C0(v16, v18);

    v14(v13, v7);
    return 0;
  }

  sub_2723FE994();
  sub_2723CE0C0(v16, v18);
  swift_unknownObjectRelease();
  v14(v13, v7);
  sub_2723D5A74(v27, v28);
  sub_2723D5A74(v28, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
  if (swift_dynamicCast())
  {
    return v26[0];
  }

  else
  {
    return 0;
  }
}

char *sub_2723F9EC8()
{
  v0 = sub_2723F9AA4();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (!v0[2])
  {
    goto LABEL_10;
  }

  v2 = sub_2723E4F34(0x6E692D6C65646F6DLL, 0xEA00000000006F66);
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_2723D9230(v1[7] + 32 * v2, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
  if ((swift_dynamicCast() & 1) == 0 || !v7)
  {
    return 0;
  }

  if (*(v7 + 16) && (v4 = sub_2723E4F34(0x736B736174, 0xE500000000000000), (v5 & 1) != 0))
  {
    sub_2723D9230(*(v7 + 56) + 32 * v4, v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    if (swift_dynamicCast())
    {
      v8[0] = v7;

      sub_2723D61B0(v8);

      return v8[0];
    }
  }

  else
  {
LABEL_10:
  }

  return 0;
}

uint64_t sub_2723FA064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v6 = sub_2723F9EC8();
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  v11[0] = a1;
  v11[1] = a2;
  MEMORY[0x28223BE20](v6);
  v10[2] = v11;
  v8 = sub_2723E718C(a3, v10, v7);

  return v8 & 1;
}

uint64_t VCSpeechAsset.deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v2 = sub_2723FE344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t VCSpeechAsset.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v2 = sub_2723FE344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t VCSpeechAsset.hashValue.getter()
{
  sub_2723FEC94();
  v0 = sub_2723FE334();
  MEMORY[0x2743C78D0](v0);
  v1 = sub_2723FE8F4();
  MEMORY[0x2743C78D0](v1);
  return sub_2723FECB4();
}

uint64_t sub_2723FA294@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v5 = sub_2723FE344();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2723FA310()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig) language];
  v2 = sub_2723FE5B4();

  return v2;
}

uint64_t sub_2723FA464()
{
  sub_2723FEC94();
  v0 = sub_2723FE334();
  MEMORY[0x2743C78D0](v0);
  v1 = sub_2723FE8F4();
  MEMORY[0x2743C78D0](v1);
  return sub_2723FECB4();
}

uint64_t sub_2723FA4D0(uint64_t a1)
{
  v1 = sub_2723FE334();
  MEMORY[0x2743C78D0](v1);
  v2 = sub_2723FE8F4();
  return MEMORY[0x2743C78D0](v2);
}

uint64_t sub_2723FA52C(uint64_t a1)
{
  sub_2723FEC94();
  v1 = sub_2723FE334();
  MEMORY[0x2743C78D0](v1);
  v2 = sub_2723FE8F4();
  MEMORY[0x2743C78D0](v2);
  return sub_2723FECB4();
}

uint64_t sub_2723FA594(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = a1;

  return sub_2723FE8D4();
}

uint64_t sub_2723FA5F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_2723FE744();

  v2(v3);
}

uint64_t sub_2723FA66C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_2723FE574();
  v4 = [v2 subscriptionsForClientIdentifier_];

  sub_2723F8038(0, &qword_2808942C0, 0x277CDCE88);
  v5 = sub_2723FE744();

  v7[2] = a1;
  return sub_2723D2B44(sub_2723FDFFC, v7, v5);
}

uint64_t sub_2723FA744(id *a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_2723FE2D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 language];
  sub_2723FE5B4();

  v8 = *MEMORY[0x277CC9668];
  v28 = *(v4 + 104);
  v28(v6, v8, v3);
  v9 = sub_2723FE2C4();
  v11 = v10;

  v27 = *(v4 + 8);
  v27(v6, v3);
  v34 = v9;
  v35 = v11;
  v32 = 45;
  v33 = 0xE100000000000000;
  v30 = 95;
  v31 = 0xE100000000000000;
  sub_2723CD24C();
  v12 = sub_2723FE984();
  v25 = v13;
  v26 = v12;

  sub_2723FE2B4();
  v28(v6, v8, v3);
  v14 = sub_2723FE2C4();
  v16 = v15;

  v17 = v3;
  v18 = 1;
  v27(v6, v17);
  v34 = v14;
  v35 = v16;
  v32 = 45;
  v33 = 0xE100000000000000;
  v30 = 95;
  v31 = 0xE100000000000000;
  v19 = sub_2723FE984();
  v21 = v20;
  v22 = v25;

  if (v26 != v19 || v22 != v21)
  {
    v18 = sub_2723FEC44();
  }

  return v18 & 1;
}

uint64_t sub_2723FAA28(uint64_t a1)
{
  v2 = [objc_opt_self() installedLanguagesForTaskHint_];
  v3 = sub_2723FE804();

  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_2723D612C(*(v3 + 16), 0);
  v6 = sub_2723D7A68(&v10, v5 + 4, v4, v3);
  v7 = sub_2723D8970(v10);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    v5 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v7);
  v9[2] = a1;
  return sub_2723D29CC(sub_2723FDFE0, v9, v5);
}

uint64_t sub_2723FAB3C(uint64_t *a1, uint64_t a2)
{
  v24 = a2;
  v2 = sub_2723FE2D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *MEMORY[0x277CC9668];
  v22 = *(v3 + 104);
  v22(v5, v6, v2);
  v7 = sub_2723FE2C4();
  v9 = v8;
  v23 = *(v3 + 8);
  v23(v5, v2);
  v29 = v7;
  v30 = v9;
  v27 = 45;
  v28 = 0xE100000000000000;
  v25 = 95;
  v26 = 0xE100000000000000;
  sub_2723CD24C();
  v21 = sub_2723FE984();
  v11 = v10;

  sub_2723FE2B4();
  v22(v5, v6, v2);
  v12 = sub_2723FE2C4();
  v14 = v13;

  v15 = v2;
  v16 = 1;
  v23(v5, v15);
  v29 = v12;
  v30 = v14;
  v27 = 45;
  v28 = 0xE100000000000000;
  v25 = 95;
  v26 = 0xE100000000000000;
  v17 = sub_2723FE984();
  v19 = v18;

  if (v21 != v17 || v11 != v19)
  {
    v16 = sub_2723FEC44();
  }

  return v16 & 1;
}

void static VCSpeechAssetManager.asset(forLocale:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2723FD1B8(1005);
  v47 = a1;
  v5 = sub_2723D29CC(sub_2723FDFE0, v46, v4);
  v6 = objc_opt_self();
  v42 = "Privacy-Enable-Level";
  v7 = sub_2723FE574();
  v8 = [v6 subscriptionsForClientIdentifier_];

  sub_2723F8038(0, &qword_2808942C0, 0x277CDCE88);
  v9 = sub_2723FE744();

  v45 = a1;
  v10 = sub_2723D2B44(sub_2723FDFFC, v44, v9);
  v43 = v6;
  v11 = [v6 installedLanguagesForTaskHint_];
  v12 = sub_2723FE804();

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = sub_2723D612C(*(v12 + 16), 0);
    v15 = sub_2723D7A68(&v48, v14 + 4, v13, v12);
    v16 = sub_2723D8970(v48);
    if (v15 == v13)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v14 = MEMORY[0x277D84F90];
LABEL_5:
  MEMORY[0x28223BE20](v16);
  v40[2] = a1;
  v17 = sub_2723D29CC(sub_2723FDFE0, v40, v14);
  if (v10 >> 62)
  {
    goto LABEL_26;
  }

  v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_27:
    v28 = v17;

    if (v28[2])
    {

      v29 = SFEntitledAssetTypeForTaskHint();
      if (!v28[2])
      {
        goto LABEL_42;
      }
    }

    else
    {

      if (!*(v5 + 16))
      {

        v33 = SFEntitledAssetTypeForTaskHint();
        v34 = objc_allocWithZone(MEMORY[0x277CDCE88]);
        v35 = sub_2723FE304();
        v26 = [v34 initWithAssetType:v33 locale:v35 regionId:0];

        goto LABEL_39;
      }

      v29 = SFEntitledAssetTypeForTaskHint();
      if (!*(v5 + 16))
      {
        goto LABEL_45;
      }
    }

    v30 = v29;

    v31 = objc_allocWithZone(MEMORY[0x277CDCE88]);
    v32 = sub_2723FE574();

    v26 = [v31 initWithAssetType:v30 language:v32 regionId:0];

LABEL_39:
    v37 = type metadata accessor for VCSpeechAsset(0);
    swift_allocObject();
    v38 = v26;
    v39 = sub_2723F932C(v38);
    a2[3] = v37;
    a2[4] = sub_2723FDD08(&qword_2808942C8, &protocol conformance descriptor for VCSpeechAsset);

    *a2 = v39;
    return;
  }

LABEL_7:
  v41 = a2;

  v5 = 0;
  v48 = MEMORY[0x277D84F90];
  v19 = v10 & 0xC000000000000001;
  a2 = &property descriptor for VCSettings.syncVocabularyEntries;
  do
  {
    if (v19)
    {
      v17 = MEMORY[0x2743C76B0](v5, v10);
    }

    else
    {
      if (v5 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v17 = *(v10 + 8 * v5 + 32);
    }

    v20 = v17;
    v21 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v27 = v17;
      v18 = sub_2723FEB04();
      v17 = v27;
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_7;
    }

    v22 = sub_2723FE574();
    v23 = [v43 pathToAssetWithConfig:v20 clientIdentifier:v22];

    if (v23)
    {

      sub_2723FEAA4();
      sub_2723FEAC4();
      sub_2723FEAD4();
      v17 = sub_2723FEAB4();
    }

    else
    {
    }

    ++v5;
  }

  while (v21 != v18);
  v24 = v48;
  a2 = v41;
  if (v48 < 0 || (v48 & 0x4000000000000000) != 0)
  {
    if (!sub_2723FEB04())
    {
      goto LABEL_35;
    }

LABEL_20:

    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x2743C76B0](0, v24);
      goto LABEL_23;
    }

    if (*(v24 + 16))
    {
      v25 = *(v24 + 32);
LABEL_23:
      v26 = v25;

      goto LABEL_39;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (*(v48 + 16))
  {
    goto LABEL_20;
  }

LABEL_35:

  if (v19)
  {
LABEL_43:
    v36 = MEMORY[0x2743C76B0](0, v10);
LABEL_38:
    v26 = v36;

    goto LABEL_39;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v10 + 32);
    goto LABEL_38;
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_2723FB374(uint64_t *a1)
{
  v2 = *(sub_2723FE344() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2723FD16C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2723FB41C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2723FB41C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2723FEC14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2723FE344();
        v6 = sub_2723FE794();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_2723FE344() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2723FB854(v8, v9, a1, v4);
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
    return sub_2723FB548(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2723FB548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2723FE344();
  v9 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v34 - v12;
  result = MEMORY[0x28223BE20](v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_2723FE2B4();
      v27 = v26;
      if (v25 == sub_2723FE2B4() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_2723FEC44();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2723FB854(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_2723FE344();
  v10 = MEMORY[0x28223BE20](v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v149 = &v128 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v153 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v128 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v133 = &v128 - v23;
  result = MEMORY[0x28223BE20](v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_2723FC410(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_2723FCB38(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_2723FCAAC(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_2723FCB38(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = MEMORY[0x277D84F90];
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = sub_2723FE2B4();
      v37 = v36;
      v38 = sub_2723FE2B4();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_2723FEC44();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_2723FE2B4();
        v52 = v51;
        if (v50 == sub_2723FE2B4() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_2723FEC44();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2723E42F4(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_2723E42F4((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_2723FC410(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_2723FCB38(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_2723FCAAC(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_2723FE2B4();
    v69 = v68;
    if (v5 == sub_2723FE2B4() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_2723FEC44();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_2723FC410(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = sub_2723FE344();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v59 - v14;
  result = MEMORY[0x28223BE20](v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_2723FE2B4();
            v52 = v51;
            if (v50 == sub_2723FE2B4() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_2723FEC44();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_2723FE2B4();
        v32 = v31;
        if (v30 == sub_2723FE2B4() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_2723FEC44();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_2723FCB4C(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_2723FCAAC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2723FCB38(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2723FCB4C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2723FE344();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2723FCC30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FE0, "z.");
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

void *sub_2723FCD8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_2723FCF68(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894050, &unk_2724009D0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0) - 8);
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

uint64_t sub_2723FD1B8(uint64_t a1)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v39 = (&v35 - v2);
  v3 = sub_2723FE434();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2723FE454();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_2723FE484();
  v8 = *(v44 - 8);
  v9 = MEMORY[0x28223BE20](v44);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = dispatch_semaphore_create(0);
  v43 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  aBlock[4] = sub_2723FDFCC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2723FA5F8;
  aBlock[3] = &block_descriptor_52;
  v17 = _Block_copy(aBlock);
  v42 = v14;

  v18 = v15;

  [v43 supportedLanguagesForTaskHint:v46 completion:v17];
  _Block_release(v17);
  sub_2723FE464();
  *v7 = 10;
  v19 = v45;
  (*(v5 + 104))(v7, *MEMORY[0x277D85188], v45);
  sub_2723FE474();
  (*(v5 + 8))(v7, v19);
  v20 = *(v8 + 8);
  v21 = v44;
  v20(v11, v44);
  sub_2723FE8C4();
  v20(v13, v21);
  result = swift_beginAccess();
  v23 = *(v14 + 16);
  if (v23)
  {

LABEL_10:

    return v23;
  }

  v24 = v39;
  v25 = v40;
  v26 = v41;
  v28 = v36;
  v27 = v37;
  v29 = v38;
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v30 = off_280894260;
  if (*(off_280894260 + 2))
  {
    result = sub_2723E4FAC(2);
    if (v31)
    {
      sub_2723F7404(v30[7] + *(v25 + 72) * result, v24);

      (*(v27 + 32))(v28, v24 + *(v26 + 48), v29);
      v32 = sub_2723FE424();
      v33 = sub_2723FE894();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134349056;
        *(v34 + 4) = 10;
        _os_log_impl(&dword_2723CB000, v32, v33, "SFSpeechAssetManager.supportedLanguages(for:) timed out after %{public}ld seconds.", v34, 0xCu);
        MEMORY[0x2743C8040](v34, -1, -1);
      }

      (*(v27 + 8))(v28, v29);
      v23 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2723FD758()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2723FD7B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2723FD7C8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2723FD81C()
{
  v26 = sub_2723FE2D4();
  v0 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2723FE344();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2723FD1B8(1005);
  v6 = *(v5 + 16);
  if (v6)
  {
    v32 = MEMORY[0x277D84F90];
    sub_2723D6C08(0, v6, 0);
    v7 = v32;
    v22 = *MEMORY[0x277CC9668];
    v9 = *(v0 + 104);
    v8 = v0 + 104;
    v20 = (v8 - 96);
    v21 = v9;
    v19[1] = v5;
    v19[2] = v2 + 32;
    v10 = v5 + 40;
    v23 = v8;
    do
    {
      v11 = v24;
      v12 = v26;
      v21(v24, v22, v26);

      v13 = sub_2723FE2C4();
      v15 = v14;
      (*v20)(v11, v12);
      v31[0] = v13;
      v31[1] = v15;
      v29 = 45;
      v30 = 0xE100000000000000;
      v27 = 95;
      v28 = 0xE100000000000000;
      sub_2723CD24C();
      sub_2723FE984();

      sub_2723FE2A4();

      v32 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2723D6C08((v16 > 1), v17 + 1, 1);
        v7 = v32;
      }

      *(v7 + 16) = v17 + 1;
      (*(v2 + 32))(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17, v4, v25);
      v10 += 16;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v31[0] = v7;

  sub_2723FB374(v31);

  return v31[0];
}

uint64_t type metadata accessor for VCSpeechAsset(uint64_t a1)
{
  result = qword_2808942F8;
  if (!qword_2808942F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2723FDBD4()
{
  result = qword_2808942D0;
  if (!qword_2808942D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808942D0);
  }

  return result;
}

unint64_t sub_2723FDC2C()
{
  result = qword_2808942D8;
  if (!qword_2808942D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808942E0, &qword_272400808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808942D8);
  }

  return result;
}

uint64_t sub_2723FDC90(uint64_t a1)
{
  result = sub_2723FDD08(&qword_2808942E8, &protocol conformance descriptor for VCSpeechAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2723FDD08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VCSpeechAsset(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2723FDDDC(uint64_t a1)
{
  result = sub_2723FE344();
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

uint64_t sub_2723FDF44(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2723FDF54()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2723FDF8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}