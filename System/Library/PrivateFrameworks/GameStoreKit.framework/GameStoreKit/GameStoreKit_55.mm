uint64_t sub_24EB9A848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A28, &unk_24F9770A0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  v12 = *a1;
  v13 = *(v12 + 24);
  if (v13)
  {
    v14 = *(v12 + 16);
    v19[0] = v8;
    v15 = sub_24F9232F8();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v19[4] = type metadata accessor for Action(0);
    v19[5] = sub_24EB9B370(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
    v19[1] = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v13;

    sub_24F921788();
    (*(v19[0] + 32))(a2, v11, v7);
    return (*(v19[0] + 56))(a2, 0, 1, v7);
  }

  else
  {
    v18 = *(v8 + 56);

    return v18(a2, 1, 1, v7, v9);
  }
}

uint64_t sub_24EB9AB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkableTextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB9AB64()
{
  v1 = type metadata accessor for LinkableTextView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 56))
  {
    if (*(v2 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    }
  }

  else
  {
  }

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F921B58();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_24E62A5EC(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  sub_24E62A5EC(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  sub_24E62A5EC(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_24EB9ACEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkableTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24EB9AD50()
{
  type metadata accessor for LinkableTextView(0);

  sub_24EB9A2F4();
}

uint64_t sub_24EB9ADD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A738, &qword_24F987D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EB9AE40()
{
  result = qword_27F22A758;
  if (!qword_27F22A758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A740, &qword_24F987D28);
    sub_24EB9AECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A758);
  }

  return result;
}

unint64_t sub_24EB9AECC()
{
  result = qword_27F22A760;
  if (!qword_27F22A760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A738, &qword_24F987D20);
    sub_24EB9AF84();
    sub_24E602068(&qword_27F222CF8, &qword_27F222CE8, &qword_24F987DE0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A760);
  }

  return result;
}

unint64_t sub_24EB9AF84()
{
  result = qword_27F22A768;
  if (!qword_27F22A768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A770, &qword_24F987DE8);
    sub_24EB9B03C();
    sub_24E602068(&unk_27F236270, &qword_27F219DB0, &qword_24F987E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A768);
  }

  return result;
}

unint64_t sub_24EB9B03C()
{
  result = qword_27F22A778;
  if (!qword_27F22A778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A780, &unk_24F987DF0);
    sub_24E62FBF4();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A778);
  }

  return result;
}

unint64_t sub_24EB9B0FC()
{
  result = qword_27F22A790;
  if (!qword_27F22A790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A748, &qword_24F987D30);
    sub_24EB9AE40();
    sub_24EB9B370(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A790);
  }

  return result;
}

unint64_t sub_24EB9B1B8()
{
  result = qword_27F22A798;
  if (!qword_27F22A798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A788, &qword_24F987E08);
    sub_24EB9B23C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A798);
  }

  return result;
}

unint64_t sub_24EB9B23C()
{
  result = qword_27F22A7A0;
  if (!qword_27F22A7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A7A8, &qword_24F987E10);
    sub_24EB9B2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A7A0);
  }

  return result;
}

unint64_t sub_24EB9B2C0()
{
  result = qword_27F22A7B0;
  if (!qword_27F22A7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A7B8, &unk_24F987E18);
    sub_24E602068(&qword_27F228258, &qword_27F225A28, &unk_24F9770A0, MEMORY[0x277D7EB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A7B0);
  }

  return result;
}

uint64_t sub_24EB9B370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EB9B3B8()
{

  return swift_deallocObject();
}

unint64_t sub_24EB9B3F4()
{
  result = qword_27F22A7D0;
  if (!qword_27F22A7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A7D8, &qword_24F987E58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A748, &qword_24F987D30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A788, &qword_24F987E08);
    sub_24EB9B0FC();
    sub_24EB9B1B8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A7D0);
  }

  return result;
}

uint64_t sub_24EB9B4E0(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    while (1)
    {
      v6 = *(v5 + v4);
      if (v6 == 1)
      {
        v7 = 0x4F73646E65697266;
      }

      else
      {
        v7 = 0x796C6E4F656DLL;
      }

      v8 = 0xEB00000000796C6ELL;
      if (v6 != 1)
      {
        v8 = 0xE600000000000000;
      }

      if (*(v5 + v4))
      {
        v9 = v7;
      }

      else
      {
        v9 = 0x656E6F7972657665;
      }

      if (*(v5 + v4))
      {
        v10 = v8;
      }

      else
      {
        v10 = 0xE800000000000000;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v11 = 0x4F73646E65697266;
        }

        else
        {
          v11 = 0x796C6E4F656DLL;
        }

        if (a1 == 1)
        {
          v12 = 0xEB00000000796C6ELL;
        }

        else
        {
          v12 = 0xE600000000000000;
        }

        if (v9 != v11)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v9 != 0x656E6F7972657665)
        {
          goto LABEL_25;
        }
      }

      if (v10 == v12)
      {

        return v4;
      }

LABEL_25:
      v13 = sub_24F92CE08();

      if (v13)
      {
        return v4;
      }

      if (v2 == ++v4)
      {
        return 0;
      }
    }
  }

  return 0;
}

unint64_t sub_24EB9B644(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_24F92B3A8() != a1 || v9 != a2)
  {
    v10 = sub_24F92CE08();

    if (v10)
    {
      return v8;
    }

    v8 = sub_24F92B238();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_24EB9B734(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_80;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = *(a1 + 16);
      if ((v2 & 0xC000000000000001) == 0)
      {
        break;
      }

      v6 = 0;
      while (1)
      {
        v7 = MEMORY[0x253052270](v6, v2);
        v8 = *(v7 + 16);
        v9 = 0x68736E6565726373;
        if (v8 != 2)
        {
          v9 = 0x666C656873;
        }

        v10 = 0xEB0000000073746FLL;
        if (v8 != 2)
        {
          v10 = 0xE500000000000000;
        }

        v11 = 0x7975426F546B7361;
        if (*(v7 + 16))
        {
          v11 = 0x756B636F4C706F74;
        }

        v12 = 0xEF74736575716552;
        if (*(v7 + 16))
        {
          v12 = 0xE900000000000070;
        }

        v13 = *(v7 + 16) <= 1u ? v11 : v9;
        v14 = *(v7 + 16) <= 1u ? v12 : v10;
        if (v5 > 1)
        {
          v15 = v5 == 2 ? 0x68736E6565726373 : 0x666C656873;
          v16 = v5 == 2 ? 0xEB0000000073746FLL : 0xE500000000000000;
        }

        else
        {
          v15 = 0x7975426F546B7361;
          v16 = 0xEF74736575716552;
          if (v5)
          {
            v15 = 0x756B636F4C706F74;
            v16 = 0xE900000000000070;
          }
        }

        if (v13 == v15 && v14 == v16)
        {
        }

        else
        {
          v17 = sub_24F92CE08();

          if ((v17 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        v18 = *(v7 + 32);
        v19 = *(a1 + 32);
        if (v18)
        {
          if (!v19)
          {
LABEL_38:
            swift_unknownObjectRelease();
            goto LABEL_40;
          }

          if (*(v7 + 24) == *(a1 + 24) && v18 == v19)
          {
            swift_unknownObjectRelease();
            return v6;
          }

          v20 = sub_24F92CE08();
          swift_unknownObjectRelease();
          if (v20)
          {
            return v6;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          if (!v19)
          {
            return v6;
          }
        }

LABEL_40:
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (++v6 == v4)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      v4 = sub_24F92C738();
      if (!v4)
      {
        return 0;
      }
    }

    v6 = 0;
    v21 = v2 + 32;
    v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (v22 == v6)
      {
        goto LABEL_79;
      }

      v2 = *(v21 + 8 * v6);
      if (*(v2 + 16) <= 1u)
      {
        break;
      }

      if (*(v2 + 16) == 2)
      {
        v23 = 0x68736E6565726373;
        v24 = 0xEB0000000073746FLL;
LABEL_53:
        if (v5 > 1)
        {
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      v24 = 0xE500000000000000;
      v23 = 0x666C656873;
      if (v5 > 1)
      {
LABEL_57:
        if (v5 == 2)
        {
          v25 = 0x68736E6565726373;
        }

        else
        {
          v25 = 0x666C656873;
        }

        if (v5 == 2)
        {
          v26 = 0xEB0000000073746FLL;
        }

        else
        {
          v26 = 0xE500000000000000;
        }

        goto LABEL_63;
      }

LABEL_54:
      v25 = 0x7975426F546B7361;
      v26 = 0xEF74736575716552;
      if (v5)
      {
        v25 = 0x756B636F4C706F74;
        v26 = 0xE900000000000070;
      }

LABEL_63:
      if (v23 == v25 && v24 == v26)
      {
      }

      else
      {
        v27 = sub_24F92CE08();

        if ((v27 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v28 = *(v2 + 32);
      v29 = *(a1 + 32);
      if (v28)
      {
        if (!v29)
        {
LABEL_44:

          goto LABEL_45;
        }

        if (*(v2 + 24) == *(a1 + 24) && v28 == v29)
        {

          return v6;
        }

        v30 = sub_24F92CE08();

        if (v30)
        {
          return v6;
        }
      }

      else
      {

        if (!v29)
        {
          return v6;
        }
      }

LABEL_45:
      if (v4 == ++v6)
      {
        return 0;
      }
    }

    v23 = 0x7975426F546B7361;
    v24 = 0xEF74736575716552;
    if (*(v2 + 16))
    {
      v23 = 0x756B636F4C706F74;
      v24 = 0xE900000000000070;
      if (v5 > 1)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    goto LABEL_53;
  }

  return 0;
}

uint64_t String.nilIfEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

BOOL static String.isNilOrEmpty(_:)(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

Swift::String __swiftcall String.prefix(upToCharacter:)(Swift::String upToCharacter)
{
  v3 = v2;
  v4 = v1;
  sub_24EB9B644(upToCharacter._countAndFlagsBits, upToCharacter._object, v1, v2);
  if (v5)
  {
  }

  else
  {
    v6 = sub_24F92B3D8();
    v4 = MEMORY[0x253050B50](v6);
    v3 = v7;
  }

  v8 = v4;
  v9 = v3;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::String __swiftcall String.withAXAutoFocusIdentifier()()
{
  v5 = v0;
  v6 = v1;

  MEMORY[0x253050C20](0xD000000000000016, 0x800000024FA54B90);
  v2 = v5;
  v3 = v6;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

BOOL Optional<A>.isNotNilAndNotEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 != 0;
  return a2 && v3;
}

uint64_t sub_24EB9BD4C(uint64_t a1)
{
  v2 = sub_24EB9BED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EB9BD88(uint64_t a1)
{
  v2 = sub_24EB9BED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlaySystemSettingsPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A7E0, &qword_24F987E90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EB9BED8();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EB9BED8()
{
  result = qword_27F22A7E8;
  if (!qword_27F22A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A7E8);
  }

  return result;
}

uint64_t sub_24EB9BF74(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A7E0, &qword_24F987E90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EB9BED8();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EB9C0AC()
{
  result = qword_27F22A7F0;
  if (!qword_27F22A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A7F0);
  }

  return result;
}

unint64_t sub_24EB9C104()
{
  result = qword_27F22A7F8;
  if (!qword_27F22A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A7F8);
  }

  return result;
}

id sub_24EB9C158()
{
  result = [objc_allocWithZone(type metadata accessor for UpdateStore()) init];
  qword_27F22A800 = result;
  return result;
}

id UpdateStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24EB9C1E0()
{
  result = sub_24F92B098();
  qword_27F22A808 = result;
  return result;
}

id UpdateStore.init()()
{
  v14 = sub_24F92BEE8();
  v1 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92BE88();
  MEMORY[0x28223BE20](v4);
  v5 = sub_24F927DC8();
  MEMORY[0x28223BE20](v5 - 8);
  v0[OBJC_IVAR____TtC12GameStoreKit11UpdateStore_coalesceUpdateNotifications] = 0;
  swift_weakInit();
  v6 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v13[0] = ".AXAutoFocusOnChildren";
  v13[1] = v6;
  sub_24F927DA8();
  v16 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v14);
  *&v0[OBJC_IVAR____TtC12GameStoreKit11UpdateStore_notificationQueue] = sub_24F92BF38();
  updated = type metadata accessor for UpdateStore();
  v15.receiver = v0;
  v15.super_class = updated;
  v8 = objc_msgSendSuper2(&v15, sel_init);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  [v11 addObserver:v10 selector:sel_broadcastChangeNotificationIfNotCoalescing name:*MEMORY[0x277CEC310] object:0];

  return v10;
}

id UpdateStore.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for UpdateStore();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24EB9C6D8(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v34 = a1;
  v33 = sub_24F922028();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = &v31 - v6;
  v7 = sub_24F927D88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11UpdateStore_notificationQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93DE60;
  v13 = v11;
  sub_24F927D78();
  aBlock[0] = v12;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  v37 = v36;
  sub_24F92BF08();

  (*(v8 + 8))(v10, v7);
  sub_24F929778();
  sub_24F929768();
  v14 = v31;
  sub_24F921FF8();
  sub_24F92C058();
  v15 = sub_24F929768();
  sub_24F921FE8();

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v32;
  v17 = v33;
  (*(v3 + 16))(v32, v14, v33);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = (v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v22 + v19;
  v24 = v17;
  (*(v3 + 32))(v23, v18, v17);
  v25 = (v22 + v20);
  v27 = v34;
  v26 = v35;
  *v25 = v34;
  v25[1] = v26;
  *(v22 + v21) = v16;
  aBlock[4] = sub_24EB9CF30;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EB9CFEC;
  aBlock[3] = &block_descriptor_55;
  v28 = _Block_copy(aBlock);
  sub_24E5FCA4C(v27, v26);

  updated = type metadata accessor for UpdateStore();
  v38.receiver = v36;
  v38.super_class = updated;
  objc_msgSendSuper2(&v38, sel_reloadFromServerWithCompletionBlock_, v28);
  _Block_release(v28);
  return (*(v3 + 8))(v14, v24);
}

uint64_t sub_24EB9CB70()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

void sub_24EB9CBA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v20[0] = sub_24F927D88();
  v9 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C048();
  sub_24F929778();
  v12 = sub_24F929768();
  sub_24F921FE8();

  if (a4)
  {
    a4(a1, a2);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + OBJC_IVAR____TtC12GameStoreKit11UpdateStore_notificationQueue);
    v15 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24F93DE60;
    v17 = v14;
    sub_24F927D78();
    v20[2] = v16;
    sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
    v18 = v20[0];
    v19 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v19);
    v20[-2] = v15;
    sub_24F92BF08();

    (*(v9 + 8))(v11, v18);
    sub_24EB9D214();
  }
}

uint64_t sub_24EB9CE78()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

void sub_24EB9CF30(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);

  sub_24EB9CBA8(a1, a2, v2 + v6, v10, v11, v12);
}

void sub_24EB9CFEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_24E69A5C4(0, &qword_27F225148, 0x277CEC488);
  v5 = sub_24F92B5A8();

  v6 = a3;
  v4(v5, a3);
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24EB9D16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24E69A5C4(0, &qword_27F225148, 0x277CEC488);
  v5 = sub_24F92B588();
  if (a2)
  {
    v6 = sub_24F91F268();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_24EB9D214()
{
  v0 = sub_24F927DE8();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x28223BE20](v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v25 = v22 - v3;
  v4 = sub_24F927D88();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24EB9D7F4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_16;
  _Block_copy(aBlock);
  v31 = MEMORY[0x277D84F90];
  v22[3] = sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  v22[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  v22[1] = sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  sub_24F927E28();
  swift_allocObject();
  v8 = sub_24F927E08();

  v9 = OBJC_IVAR____TtC12GameStoreKit11UpdateStore_notificationQueue;
  v10 = v23;
  v11 = *(v23 + OBJC_IVAR____TtC12GameStoreKit11UpdateStore_notificationQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v12 = v24;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24F93DE60;
  v14 = v11;
  sub_24F927D78();
  aBlock[0] = v13;
  sub_24F92C6A8();
  v29 = v10;
  v30 = v8;
  sub_24F92BF08();

  (*(v12 + 8))(v6, v4);
  v15 = *(v10 + v9);
  v16 = v26;
  sub_24F927DD8();
  v17 = v25;
  sub_24F927E58();
  v18 = *(v27 + 8);
  v19 = v16;
  v20 = v28;
  v18(v19, v28);
  sub_24F92BEA8();

  return (v18)(v17, v20);
}

void sub_24EB9D64C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC12GameStoreKit11UpdateStore_coalesceUpdateNotifications))
    {
      v2 = Strong;
    }

    else
    {
      v3 = Strong;
      v2 = [objc_opt_self() defaultCenter];
      if (qword_27F210390 != -1)
      {
        swift_once();
      }

      [v2 postNotificationName:qword_27F22A808 object:v3];
    }
  }
}

uint64_t sub_24EB9D728(uint64_t a1, uint64_t a2)
{
  if (swift_weakLoadStrong())
  {
    sub_24F927E18();
  }

  return swift_weakAssign();
}

uint64_t sub_24EB9D818()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_24EB9D8B0(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = a2;
    v7 = sub_24F922D38();
    if (sub_24F92C168())
    {
      v6;
    }

    __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_24F922D48();
  }

  if (a3)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = a3;
    v8 = sub_24F922D38();
    if (sub_24F92C158())
    {
      v9;
    }

    __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_24F922D48();
  }
}

uint64_t static OverlayNavigationBarBackButtonHiddenKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F22A828 = a1;
  return result;
}

uint64_t static OverlayNavigationBarBackButtonHiddenKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    result = a2();
  }

  *a1 = result & 1;
  return result;
}

uint64_t sub_24EB9DB58@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F22A828;
  return result;
}

uint64_t sub_24EB9DBA4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F22A828;
  return result;
}

uint64_t sub_24EB9DBF0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F22A828 = v1;
  return result;
}

unint64_t sub_24EB9DCAC()
{
  result = qword_27F22A830;
  if (!qword_27F22A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A830);
  }

  return result;
}

id TimingCurve.caMediaTimingFunction.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v1)
      {
        v3 = [objc_opt_self() functionWithName_];
      }

      else
      {
        v3 = [objc_opt_self() functionWithName_];
      }
    }

    else if (v2 | v1)
    {
      v3 = [objc_opt_self() functionWithName_];
    }

    else
    {
      v3 = [objc_opt_self() functionWithName_];
    }

    return v3;
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);
    v6 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
    LODWORD(v8) = HIDWORD(v4);
    LODWORD(v7) = v4;
    LODWORD(v10) = HIDWORD(v5);
    LODWORD(v9) = v5;

    return [v6 initWithControlPoints__:v7 :{v8, v9, v10}];
  }
}

double sub_24EB9DE84(uint64_t a1)
{
  v3 = *(v1 + 16);
  v8 = 0;
  v6 = *v1;
  LOBYTE(v7) = v3;
  v4 = TimingCurve.caMediaTimingFunction.getter();
  [v4 getControlPointAtIndex:a1 values:{&v8, v6, v7}];

  return *&v8;
}

int8x16_t TimingCurve.reversed.getter@<Q0>(int8x16_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v20 = 0;
  v6 = TimingCurve.caMediaTimingFunction.getter();
  [v6 getControlPointAtIndex:1 values:&v20];

  v17 = HIDWORD(v20);
  v16 = v20;
  v18[0] = 0;
  v18[1] = v3;
  v18[2] = v4;
  v19 = v5;
  v7 = TimingCurve.caMediaTimingFunction.getter();
  [v7 getControlPointAtIndex:2 values:v18];

  __asm { FMOV            V2.2S, #1.0 }

  v13 = vsub_f32(_D2, __PAIR64__(v16, v18[0]));
  v14.i64[0] = v13.u32[0];
  v14.i64[1] = v13.u32[1];
  result = vorrq_s8(vshll_n_s32(vsub_f32(_D2, __PAIR64__(v17, HIDWORD(v18[0]))), 0x20uLL), v14);
  *a1 = result;
  a1[1].i8[0] = 0;
  return result;
}

double static TimingCurve.customNavigation.getter@<D0>(uint64_t a1@<X8>)
{
  result = 4.70103432e-24;
  *a1 = xmmword_24F9880A0;
  *(a1 + 16) = 0;
  return result;
}

int8x16_t sub_24EB9E00C()
{
  v23 = 0;
  v0 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v1) = 1044401829;
  LODWORD(v2) = 991345561;
  LODWORD(v3) = 1057634019;
  LODWORD(v4) = 1064730781;
  v5 = [v0 initWithControlPoints__:v1 :{v2, v3, v4}];
  [v5 getControlPointAtIndex:1 values:&v23];

  v21 = HIDWORD(v23);
  v20 = v23;
  v22 = 0;
  v6 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v7) = 1044401829;
  LODWORD(v8) = 991345561;
  LODWORD(v9) = 1057634019;
  LODWORD(v10) = 1064730781;
  v11 = [v6 initWithControlPoints__:v7 :{v8, v9, v10}];
  [v11 getControlPointAtIndex:2 values:&v22];

  __asm { FMOV            V2.2S, #1.0 }

  v17 = vsub_f32(_D2, __PAIR64__(v20, v22));
  v18.i64[0] = v17.u32[0];
  v18.i64[1] = v17.u32[1];
  result = vorrq_s8(vshll_n_s32(vsub_f32(_D2, __PAIR64__(v21, HIDWORD(v22))), 0x20uLL), v18);
  xmmword_27F22A838 = result;
  byte_27F22A848 = 0;
  return result;
}

double static TimingCurve.customNavigationPop.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27F210398 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = byte_27F22A848;
  result = *&xmmword_27F22A838;
  *a1 = xmmword_27F22A838;
  *(a1 + 16) = v1;
  return result;
}

double static TimingCurve.horizontalPush.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1045220557;
  *a1 = xmmword_24F9880B0;
  *(a1 + 16) = 0;
  return result;
}

double static TimingCurve.easingCurve1.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1050253722;
  *a1 = xmmword_24F9880C0;
  *(a1 + 16) = 0;
  return result;
}

double static TimingCurve.easingCurve2.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1065353216;
  *a1 = xmmword_24F9880D0;
  *(a1 + 16) = 0;
  return result;
}

double static TimingCurve.easingCurve3.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1050253722;
  *a1 = xmmword_24F9880E0;
  *(a1 + 16) = 0;
  return result;
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for TimingCurve(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 9) = 0;
    *(result + 4) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_24EB9E268(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EB9E284(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t EmptyShelfComponentTypeMappingProvider.componentType(for:asPartOf:)()
{
  return 0;
}

{
  return 0;
}

unint64_t sub_24EB9E370()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F253B50, &unk_24F988170);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_24E60D6F8(MEMORY[0x277D84F90]);
  *(v0 + 112) = result;
  *(v0 + 120) = 0x40BC200000000000;
  qword_27F39BDB0 = v0;
  return result;
}

uint64_t sub_24EB9E3D4(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = type metadata accessor for SocialSuggestionsDataIntent(0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EB9E4D4, 0, 0);
}

uint64_t sub_24EB9E4D4()
{
  v2 = sub_24EBA12BC(v0[19]);
  v3 = v1;
  v0[26] = v2;
  v0[27] = v1;
  if (qword_27F2103A0 != -1)
  {
    v5 = v1;
    v6 = v2;
    swift_once();
    v2 = v6;
    v3 = v5;
  }

  v4 = qword_27F39BDB0;
  v0[28] = qword_27F39BDB0;
  v0[12] = v2;
  v0[13] = v3;

  sub_24F92C7F8();

  return MEMORY[0x2822009F8](sub_24EB9E5C4, v4, 0);
}

uint64_t sub_24EB9E5C4()
{
  *(v0 + 232) = sub_24E80B490(v0 + 16);
  sub_24E6585F8(v0 + 16);

  return MEMORY[0x2822009F8](sub_24EB9E63C, 0, 0);
}

uint64_t sub_24EB9E63C()
{
  if (v0[29])
  {

    v1 = v0[29];
LABEL_3:

    v2 = v0[1];

    return v2(v1);
  }

  v4 = v0[19];
  v5 = *(v4 + *(v0[21] + 44));
  if (v5 != 2 && (v5 & 1) != 0)
  {

    v1 = MEMORY[0x277D84F90];
    goto LABEL_3;
  }

  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[20];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A850, &unk_24FA35BE0);
  v11 = sub_24F92A9E8();
  v0[30] = v11;
  v12 = sub_24F92B858();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_24EBA2224(v4, v7, type metadata accessor for SocialSuggestionsDataIntent);
  sub_24F92B7F8();

  v13 = sub_24F92B7E8();
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v13;
  v15[3] = v16;
  v15[4] = v10;
  sub_24EBA21BC(v7, v15 + v14, type metadata accessor for SocialSuggestionsDataIntent);
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  sub_24F1D3DA4(0, 0, v6, &unk_24F988208, v15);

  v17 = sub_24EBA1F4C();
  v18 = swift_task_alloc();
  v0[31] = v18;
  *v18 = v0;
  v18[1] = sub_24EB9E8E0;

  return MEMORY[0x282180360](v0 + 16, v19, v17);
}

uint64_t sub_24EB9E8E0()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {

    v3 = sub_24EB9EC24;
  }

  else
  {
    *(v2 + 264) = *(v2 + 128);
    v3 = sub_24EB9EA04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EB9EA04()
{
  v0[17] = v0[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A858, &qword_24F988210);
  sub_24F928B78();
  v1 = v0[18];
  v0[34] = v1;
  if (v1)
  {
    v2 = v0[27];
    v3 = v0[28];
    v0[14] = v0[26];
    v0[15] = v2;
    sub_24F92C7F8();

    return MEMORY[0x2822009F8](sub_24EB9EB24, v3, 0);
  }

  else
  {

    v4 = v0[33];

    v5 = v0[1];

    return v5(v4);
  }
}

uint64_t sub_24EB9EB24()
{
  sub_24E80AC40(*(v0 + 272), v0 + 56);

  sub_24E6585F8(v0 + 56);

  return MEMORY[0x2822009F8](sub_24EB9EBA8, 0, 0);
}

uint64_t sub_24EB9EBA8()
{

  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24EB9EC24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB9EC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[346] = a6;
  v6[345] = a5;
  v6[344] = a4;
  v6[347] = sub_24F92B7F8();
  v6[348] = sub_24F92B7E8();
  v7 = sub_24E69A5C4(0, &qword_27F22D170, 0x277CBDAB8);
  v8 = swift_task_alloc();
  v6[349] = v8;
  *v8 = v6;
  v8[1] = sub_24EB9ED84;

  return MEMORY[0x28217F228](v6 + 319, v7, v7);
}

uint64_t sub_24EB9ED84()
{
  v2 = *v1;
  v2[350] = v0;

  v4 = sub_24F92B778();
  v2[351] = v4;
  v2[352] = v3;
  if (v0)
  {
    v5 = sub_24EB9FCCC;
  }

  else
  {
    v5 = sub_24EB9EEE8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24EB9EEE8()
{
  v77 = v0;
  v71 = *(v0 + 2552);
  *(v0 + 2824) = v71;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 providerManager];
  *(v0 + 2832) = v2;

  v3 = [v2 defaultProvider];
  *(v0 + 2840) = v3;
  v4 = v3;
  v5 = [v2 providers];
  sub_24E69A5C4(0, &qword_27F225FA8, 0x277D6EE20);
  v73 = sub_24F92B5A8();
  *(v0 + 2848) = v73;

  v67 = [v2 faceTimeProvider];
  *(v0 + 2856) = v67;
  v66 = [v2 telephonyProvider];
  *(v0 + 2864) = v66;

  v6 = objc_allocWithZone(MEMORY[0x277D0C978]);
  v69 = v4;
  v7 = [v6 init];
  v8 = [v7 installedGames];

  sub_24E69A5C4(0, &qword_27F22A860, 0x277D0C980);
  v9 = sub_24F92B5A8();

  if (v9 >> 62)
  {
LABEL_33:
    v10 = sub_24F92C738();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v11 = 0;
    v74 = MEMORY[0x277D84F90];
    do
    {
      v12 = v11;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x253052270](v12, v9);
        }

        else
        {
          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v13 = *(v9 + 8 * v12 + 32);
        }

        v14 = v13;
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v15 = [v13 bundleID];
        if (v15)
        {
          break;
        }

        ++v12;
        if (v11 == v10)
        {
          goto LABEL_21;
        }
      }

      v16 = v15;
      v17 = sub_24F92B0D8();
      v65 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_24E615CF4(0, *(v74 + 2) + 1, 1, v74);
      }

      v20 = *(v74 + 2);
      v19 = *(v74 + 3);
      if (v20 >= v19 >> 1)
      {
        v74 = sub_24E615CF4((v19 > 1), v20 + 1, 1, v74);
      }

      *(v74 + 2) = v20 + 1;
      v21 = &v74[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v65;
    }

    while (v11 != v10);
  }

  else
  {
    v74 = MEMORY[0x277D84F90];
  }

LABEL_21:
  v22 = *(v0 + 2760);

  v23 = sub_24F45D828(v74);

  *(v0 + 2600) = v23;
  sub_24ED7C5F0(&v76, 0xD000000000000012, 0x800000024FA54CF0);

  v24 = *(v0 + 2600);
  *(v0 + 2872) = v24;
  v25 = type metadata accessor for SocialSuggestionsDataIntent(0);
  *(v0 + 2880) = v25;
  v26 = *(v22 + *(v25 + 36));
  if (v26 == 2 || (v26 & 1) == 0)
  {
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v27 = sub_24F9220D8();
    __swift_project_value_buffer(v27, qword_27F39E850);
    v28 = sub_24F9220B8();
    v29 = sub_24F92BDD8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_24E5DD000, v28, v29, "Unable to fetch friends: user is not fully onboarded to Game Center", v30, 2u);
      MEMORY[0x2530542D0](v30, -1, -1);
    }
  }

  v31 = *(v0 + 2760);
  v32 = *(v0 + 2752);
  v33 = sub_24F2CF8B8();
  v35 = v34;
  *(v0 + 2888) = v33;
  *(v0 + 2896) = v34;
  v36 = swift_task_alloc();
  *(v0 + 2904) = v36;
  v36[2] = v24;
  v36[3] = v33;
  v36[4] = v35;
  swift_asyncLet_begin();
  v37 = swift_task_alloc();
  *(v0 + 2912) = v37;
  *(v37 + 16) = v31;
  *(v37 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  swift_asyncLet_begin();
  v38 = swift_task_alloc();
  *(v0 + 2920) = v38;
  *(v38 + 16) = v31;
  *(v38 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228A30, &qword_24F988250);
  swift_asyncLet_begin();
  v39 = (v31 + *(v25 + 32));
  v40 = v39[1];
  *(v0 + 2360) = *v39;
  *(v0 + 2376) = v40;
  v41 = v39[2];
  v42 = v39[3];
  v43 = v39[5];
  *(v0 + 2424) = v39[4];
  *(v0 + 2440) = v43;
  *(v0 + 2392) = v41;
  *(v0 + 2408) = v42;
  v44 = v39[6];
  v45 = v39[7];
  v46 = v39[9];
  *(v0 + 2488) = v39[8];
  *(v0 + 2504) = v46;
  *(v0 + 2456) = v44;
  *(v0 + 2472) = v45;
  type metadata accessor for SocialSuggester();
  inited = swift_initStackObject();
  *(v0 + 2928) = inited;
  v75 = v71;
  v72 = v2;
  v48 = v69;

  v70 = v67;
  v68 = v66;
  v49 = MEMORY[0x277D84F90];
  sub_24E60D910(MEMORY[0x277D84F90]);

  v50 = sub_24E60D910(v49);
  v51 = MEMORY[0x277D84FA0];
  *(inited + 240) = v49;
  *(inited + 248) = v51;
  *(inited + 256) = v51;
  *(inited + 264) = v50;
  *(inited + 272) = v49;
  *(inited + 280) = sub_24E60D8FC(v49);
  *(inited + 288) = sub_24E60D938(v49);
  *(inited + 296) = sub_24E60DB20(v49);
  v52 = sub_24E60D924(v49);
  v53 = sub_24E60D924(v49);
  v54 = sub_24E60D924(v49);
  v55 = sub_24E60D924(v49);
  v56 = sub_24E608B7C(v49);
  *(inited + 304) = v52;
  *(inited + 312) = v53;
  *(inited + 320) = v54;
  *(inited + 328) = v55;
  *(inited + 336) = v56;
  *(inited + 16) = v75;
  *(inited + 24) = v72;
  *(inited + 32) = v69;
  *(inited + 40) = v69;
  *(inited + 48) = v73;
  *(inited + 56) = v70;
  *(inited + 64) = v68;
  *(inited + 232) = 0;
  v57 = *(v0 + 2456);
  v58 = *(v0 + 2472);
  v59 = *(v0 + 2488);
  *(inited + 216) = *(v0 + 2504);
  *(inited + 200) = v59;
  *(inited + 184) = v58;
  *(inited + 168) = v57;
  v60 = *(v0 + 2392);
  v61 = *(v0 + 2408);
  v62 = *(v0 + 2424);
  *(inited + 152) = *(v0 + 2440);
  *(inited + 136) = v62;
  *(inited + 120) = v61;
  *(inited + 104) = v60;
  v63 = *(v0 + 2360);
  *(inited + 88) = *(v0 + 2376);
  *(inited + 72) = v63;

  return MEMORY[0x282200928](v0 + 16, v0 + 2520, sub_24EB9F5F8, v0 + 1936);
}

uint64_t sub_24EB9F5F8()
{
  v0[367] = v0[315];
  v0[368] = v0[316];
  v0[369] = v0[317];
  v0[370] = v0[318];

  return MEMORY[0x282200928](v0 + 82, v0 + 331, sub_24EB9F6A0, v0 + 290);
}

uint64_t sub_24EB9F6A0()
{
  *(v0 + 2968) = *(v0 + 2648);

  return MEMORY[0x282200928](v0 + 1296, v0 + 2696, sub_24EB9F710, v0 + 2560);
}

uint64_t sub_24EB9F710()
{
  v1 = v0[337];
  v0[372] = v1;

  v2 = swift_task_alloc();
  v0[373] = v2;
  *v2 = v0;
  v2[1] = sub_24EB9F7F0;
  v3 = v0[371];
  v4 = v0[370];
  v5 = v0[369];
  v6 = v0[368];
  v7 = v0[367];
  v8 = v0[361];

  return sub_24F2CFB24(v7, v6, v5, v4, v3, v1, v8);
}

uint64_t sub_24EB9F7F0()
{
  v1 = *v0;

  v2 = *(v1 + 2816);
  v3 = *(v1 + 2808);

  return MEMORY[0x2822009F8](sub_24EB9F9D0, v3, v2);
}

uint64_t sub_24EB9F9D0()
{
  v1 = *(v0 + 2760);
  *(v0 + 2744) = sub_24F2C66F8(v1, v1 + *(*(v0 + 2880) + 24), *(v1 + *(*(v0 + 2880) + 28)), *(v1 + *(*(v0 + 2880) + 28) + 8), *(v1 + *(*(v0 + 2880) + 40)), *(v0 + 2888), *(v0 + 2896));
  sub_24F92A9C8();
  swift_setDeallocating();
  sub_24F2CB644();
  swift_deallocClassInstance();

  return MEMORY[0x282200920](v0 + 1296, v0 + 2696, sub_24EB9FAB0, v0 + 2608);
}

uint64_t sub_24EB9FACC()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 2648, sub_24EB9FB38, v0 + 2656);
}

uint64_t sub_24EB9FB54()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 2520, sub_24EB9FBC0, v0 + 2704);
}

uint64_t sub_24EB9FBDC()
{
  v1 = v0[358];
  v2 = v0[357];
  v3 = v0[355];
  v4 = v0[354];
  v5 = v0[353];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24EB9FCCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB9FD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;

  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24EB9FE14;

  return sub_24F2D1230(a2, a3, a4);
}

uint64_t sub_24EB9FE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = a4;

  return MEMORY[0x2822009F8](sub_24EB9FF18, 0, 0);
}

uint64_t sub_24EB9FF18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  *v1 = *(v0 + 32);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_24EB9FF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24EB9FF60, 0, 0);
}

uint64_t sub_24EB9FF60()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + *(type metadata accessor for SocialSuggestionsDataIntent(0) + 36));
  if (v2 == 2 || (v2 & 1) == 0)
  {
    **(v0 + 16) = MEMORY[0x277D84F90];
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_24EBA0058;
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);

    return sub_24EBA0484(v5, v4);
  }
}

uint64_t sub_24EBA0058(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_24EBA22EC, 0, 0);
}

uint64_t sub_24EBA0158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24EBA017C, 0, 0);
}

uint64_t sub_24EBA017C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + *(type metadata accessor for SocialSuggestionsDataIntent(0) + 36));
  if (v2 == 2 || (v2 & 1) == 0)
  {
    **(v0 + 16) = sub_24E60D8FC(MEMORY[0x277D84F90]);
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_24EBA0278;
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);

    return sub_24EBA0BCC(v5, v4);
  }
}

uint64_t sub_24EBA0278(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_24EA32554, 0, 0);
}

uint64_t sub_24EBA0378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return sub_24EB9E3D4(a2, a3);
}

unint64_t sub_24EBA042C()
{
  result = qword_27F21A600;
  if (!qword_27F21A600)
  {
    type metadata accessor for SocialSuggestionsDataIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21A600);
  }

  return result;
}

uint64_t sub_24EBA0484(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for FriendsDataIntent(0);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for Player(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBA05A8, 0, 0);
}

uint64_t sub_24EBA05A8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_24E6364A0(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[5], &unk_27F23E1F0, &unk_24F9549C0);
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E850);
    v5 = sub_24F9220B8();
    v6 = sub_24F92BDB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24E5DD000, v5, v6, "Unable to fetch friends: Missing local player", v7, 2u);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    v8 = v0[1];
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }

  else
  {
    v11 = v0[8];
    v12 = v0[4];
    sub_24EBA21BC(v0[5], v11, type metadata accessor for Player);
    sub_24EBA2224(v11, v12, type metadata accessor for Player);
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_24EBA07EC;
    v14 = v0[3];
    v15 = v0[4];

    return sub_24E6480C8(v15, v14);
  }
}

uint64_t sub_24EBA07EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_24EBA09D4;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_24EBA0914;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EBA0914()
{
  v1 = v0[8];
  sub_24EBA228C(v0[4], type metadata accessor for FriendsDataIntent);
  sub_24EBA228C(v1, type metadata accessor for Player);
  v2 = v0[11];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_24EBA09D4()
{
  sub_24EBA228C(v0[4], type metadata accessor for FriendsDataIntent);
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Unable to fetch friends: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = v0[10];
  v12 = v0[8];

  sub_24EBA228C(v12, type metadata accessor for Player);

  v13 = v0[1];
  v14 = MEMORY[0x277D84F90];

  return v13(v14);
}

uint64_t sub_24EBA0BCC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for Player(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBA0CC4, 0, 0);
}

uint64_t sub_24EBA0CC4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_24E6364A0(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[4], &unk_27F23E1F0, &unk_24F9549C0);
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E850);
    v5 = sub_24F9220B8();
    v6 = sub_24F92BDB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24E5DD000, v5, v6, "Unable to fetch friend play activity: Missing local player", v7, 2u);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    v8 = sub_24E60D8FC(MEMORY[0x277D84F90]);

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[7];
    sub_24EBA21BC(v0[4], v11, type metadata accessor for Player);
    v12 = *v11;
    v13 = v11[1];
    v0[8] = v13;

    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_24EBA0F14;
    v15 = v0[3];

    return sub_24E649174(0, v12, v13, v15);
  }
}

uint64_t sub_24EBA0F14(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_24EBA10D4;
  }

  else
  {

    *(v4 + 88) = a1;
    v5 = sub_24EBA1044;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EBA1044()
{
  sub_24EBA228C(v0[7], type metadata accessor for Player);
  v1 = v0[11];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24EBA10D4()
{

  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Unable to fetch friend play activity: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = v0[10];
  v12 = v0[7];

  v13 = sub_24E60D8FC(MEMORY[0x277D84F90]);
  sub_24EBA228C(v12, type metadata accessor for Player);

  v14 = v0[1];

  return v14(v13);
}

unint64_t sub_24EBA12BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v19 - v3);
  sub_24E6364A0(a1, v19 - v3);
  v5 = type metadata accessor for Player(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_24E601704(v4, &unk_27F23E1F0, &unk_24F9549C0);
    v6 = 0xE800000000000000;
    v7 = 0x726579616C706F6ELL;
  }

  else
  {
    v7 = *v4;
    v6 = v4[1];

    sub_24EBA228C(v4, type metadata accessor for Player);
  }

  v8 = type metadata accessor for SocialSuggestionsDataIntent(0);
  v9 = (a1 + v8[5]);
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v11 = 0xEA00000000006469;
    v10 = 0x656C646E75626F6ELL;
  }

  v12 = a1 + v8[7];
  if (*(v12 + 8))
  {
    v13 = 6;
  }

  else
  {
    v13 = *v12;
  }

  v14 = *(a1 + v8[10]);
  if (v14 == 2 || (v14 & 1) == 0)
  {
    v20 = 0;
    v21 = 0xE000000000000000;

    sub_24F92C888();

    v20 = 0xD000000000000012;
    v21 = 0x800000024FA54D10;
    MEMORY[0x253050C20](v7, v6);

    MEMORY[0x253050C20](45, 0xE100000000000000);
    MEMORY[0x253050C20](v10, v11);

    MEMORY[0x253050C20](45, 0xE100000000000000);
    v19[1] = v13;
    v17 = sub_24F92CD88();
    MEMORY[0x253050C20](v17);

    v15 = 45;
    v16 = 0xE100000000000000;
  }

  else
  {

    v20 = 0;
    v21 = 0xE000000000000000;
    sub_24F92C888();

    v20 = 0xD000000000000012;
    v21 = 0x800000024FA54D10;
    MEMORY[0x253050C20](v7, v6);

    v15 = 0x73646E656972662DLL;
    v16 = 0xEC000000796C6E4FLL;
  }

  MEMORY[0x253050C20](v15, v16);
  return v20;
}

uint64_t sub_24EBA158C()
{
  v1 = type metadata accessor for SocialSuggestionsDataIntent(0);
  v2 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + ((v2 + 40) & ~v2);
  v4 = type metadata accessor for Player(0);
  if (!(*(*(v4 - 1) + 48))(v3, 1, v4))
  {

    v5 = v4[6];
    v6 = sub_24F9289E8();
    v40 = *(v6 - 8);
    v41 = v6;
    v39 = *(v40 + 8);
    v39(v3 + v5);

    if (*(v3 + v4[9] + 8) != 1)
    {
    }

    v7 = v3 + v4[13];
    v8 = type metadata accessor for CallProviderConversationHandleSet(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v42 = v1;
      v9 = type metadata accessor for CallProviderConversationHandle(0);
      v10 = *(*(v9 - 8) + 48);
      if (!v10(v7, 1, v9))
      {

        v11 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v40 + 48))(v7 + v11, 1, v41))
        {
          (v39)(v7 + v11, v41);
        }
      }

      v12 = v7 + *(v8 + 20);
      if (!v10(v12, 1, v9))
      {

        v13 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v40 + 48))(v12 + v13, 1, v41))
        {
          (v39)(v12 + v13, v41);
        }
      }

      v1 = v42;
    }

    if (*(v3 + v4[15] + 8))
    {
    }

    v14 = v3 + v4[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
    {

      v16 = type metadata accessor for Game(0);
      (v39)(v14 + v16[18], v41);
      v17 = v16[19];
      if (!(*(v40 + 48))(v14 + v17, 1, v41))
      {
        (v39)(v14 + v17, v41);
      }

      v18 = v16[21];
      v19 = sub_24F920818();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v14 + v18, 1, v19))
      {
        (*(v20 + 8))(v14 + v18, v19);
      }
    }

    v21 = v3 + v4[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
    {

      v23 = type metadata accessor for Game(0);
      (v39)(v21 + v23[18], v41);
      v24 = v23[19];
      if (!(*(v40 + 48))(v21 + v24, 1, v41))
      {
        (v39)(v21 + v24, v41);
      }

      v25 = v23[21];
      v26 = sub_24F920818();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(v21 + v25, 1, v26))
      {
        (*(v27 + 8))(v21 + v25, v26);
      }
    }
  }

  v28 = v3 + *(v1 + 24);
  v29 = type metadata accessor for Game(0);
  if (!(*(*(v29 - 1) + 48))(v28, 1, v29))
  {

    v30 = v29[18];
    v31 = sub_24F9289E8();
    v32 = *(v31 - 8);
    v33 = *(v32 + 8);
    v33(v28 + v30, v31);
    v34 = v29[19];
    if (!(*(v32 + 48))(v28 + v34, 1, v31))
    {
      v33(v28 + v34, v31);
    }

    v35 = v29[21];
    v36 = sub_24F920818();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v28 + v35, 1, v36))
    {
      (*(v37 + 8))(v28 + v35, v36);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24EBA1E1C(uint64_t a1)
{
  v4 = *(type metadata accessor for SocialSuggestionsDataIntent(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24EB9EC9C(a1, v6, v7, v8, v1 + v5, v9);
}

unint64_t sub_24EBA1F4C()
{
  result = qword_27F253B30;
  if (!qword_27F253B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A850, &unk_24FA35BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F253B30);
  }

  return result;
}

uint64_t sub_24EBA1FB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EB9FD30(a1, v4, v5, v6);
}

uint64_t sub_24EBA2064(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24EB9FF3C(a1, v5, v4);
}

uint64_t sub_24EBA2110(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24EBA0158(a1, v5, v4);
}

uint64_t sub_24EBA21BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EBA2224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EBA228C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EBA2304(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EBA2384(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RefURLFieldsProvider(uint64_t a1)
{
  result = qword_27F22A868;
  if (!qword_27F22A868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_24EBA2440(uint64_t a1)
{
  if (qword_27F210678 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
  __swift_project_value_buffer(v2, qword_27F22E418);
  v3 = MEMORY[0x277D837D0];
  result = sub_24F929AD8();
  if (v5[1])
  {
    v5[3] = v3;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t ProductCapabilityLayout.init(metrics:iconView:titleText:captionText:)@<X0>(double *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  sub_24EBA2618(a1, a5 + 120);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F922268();
  sub_24EBA2650(a1);
  sub_24E612C80(a3, a5 + 40);
  sub_24E612C80(a4, a5 + 80);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t ProductCapabilityLayout.Metrics.init(iconSize:iconMargin:titleSpace:captionTopSpace:captionBottomSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = a7;
  a6[1] = a8;
  sub_24E612C80(a1, (a6 + 2));
  sub_24E612C80(a2, (a6 + 7));
  sub_24E612C80(a3, (a6 + 12));
  sub_24E612C80(a4, (a6 + 17));

  return sub_24E612C80(a5, (a6 + 22));
}

double ProductCapabilityLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v51 = sub_24F92CDB8();
  v7 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F9225E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24F922618();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v50 - v18;
  v54 = a1;
  v20 = [a1 traitCollection];
  v21 = sub_24F92BF98();

  if (v21)
  {
    (*(v11 + 104))(v13, *MEMORY[0x277D22788], v10);
    sub_24F9225F8();
    __swift_project_boxed_opaque_existential_1(v4, *(v4 + 24));
    if ((sub_24F922238() & 1) == 0)
    {
      v23 = *(v4 + 24);
      v22 = *(v4 + 32);
      v24 = __swift_project_boxed_opaque_existential_1(v4, v23);
      v59 = v23;
      v60 = *(v22 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v24, v23);
      sub_24F922608();
      __swift_destroy_boxed_opaque_existential_1(v58);
      sub_24E615E00(v4 + 136, v57);
      v59 = sub_24F9229A8();
      v60 = MEMORY[0x277D228E0];
      __swift_allocate_boxed_opaque_existential_1(v58);
      sub_24F9229B8();
      sub_24F922608();
      __swift_destroy_boxed_opaque_existential_1(v58);
    }

    sub_24E615E00(v4 + 176, v57);
    v26 = sub_24F9229A8();
    v27 = MEMORY[0x277D228E0];
    v59 = v26;
    v60 = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1(v58);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v58);
    v28 = *(v4 + 104);
    v29 = *(v4 + 112);
    v30 = __swift_project_boxed_opaque_existential_1((v4 + 80), v28);
    v57[3] = v28;
    v57[4] = *(v29 + 8);
    v31 = __swift_allocate_boxed_opaque_existential_1(v57);
    (*(*(v28 - 8) + 16))(v31, v30, v28);
    sub_24E615E00(v4 + 216, v56);
    sub_24E615E00(v4 + 256, v55);
    v59 = sub_24F9229F8();
    v60 = MEMORY[0x277D22900];
    __swift_allocate_boxed_opaque_existential_1(v58);
    sub_24F9229E8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v58);
    sub_24E615E00(v4 + 296, v57);
    v59 = v26;
    v60 = v27;
    __swift_allocate_boxed_opaque_existential_1(v58);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v58);
    sub_24F9225D8();
    a2 = v32;
    (*(v52 + 8))(v19, v53);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v4, *(v4 + 24));
    if ((sub_24F922238() & 1) == 0)
    {
      v34 = *(v4 + 160);
      __swift_project_boxed_opaque_existential_1((v4 + 136), v34);
      sub_24E8ED7D8(v34);
      v35 = sub_24F9223A8();
      (*(v7 + 8))(v9, v51);
      v33.n128_f64[0] = v35 + *(v4 + 120);
    }

    (*(v11 + 104))(v13, *MEMORY[0x277D22788], v10, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_24F93A400;
    sub_24E615E00(v4 + 176, v58);
    v37 = sub_24F9229A8();
    v38 = MEMORY[0x277D228E0];
    *(v36 + 56) = v37;
    *(v36 + 64) = v38;
    __swift_allocate_boxed_opaque_existential_1((v36 + 32));
    sub_24F9229B8();
    v39 = *(v4 + 104);
    v40 = *(v4 + 112);
    v41 = __swift_project_boxed_opaque_existential_1((v4 + 80), v39);
    v59 = v39;
    v60 = *(v40 + 8);
    v42 = __swift_allocate_boxed_opaque_existential_1(v58);
    (*(*(v39 - 8) + 16))(v42, v41, v39);
    sub_24E615E00(v4 + 216, v57);
    sub_24E615E00(v4 + 256, v56);
    v43 = sub_24F9229F8();
    v44 = MEMORY[0x277D22900];
    *(v36 + 96) = v43;
    *(v36 + 104) = v44;
    __swift_allocate_boxed_opaque_existential_1((v36 + 72));
    sub_24F9229E8();
    sub_24F9225F8();
    sub_24F9225D8();
    v45 = *(v4 + 160);
    __swift_project_boxed_opaque_existential_1((v4 + 136), v45);
    sub_24E8ED7D8(v45);
    sub_24F9223A8();
    v46 = *(v7 + 8);
    v47 = v51;
    v46(v9, v51);
    v48 = *(v4 + 320);
    __swift_project_boxed_opaque_existential_1((v4 + 296), v48);
    sub_24E8ED7D8(v48);
    sub_24F9223A8();
    v46(v9, v47);
    (*(v52 + 8))(v15, v53);
  }

  return a2;
}

uint64_t ProductCapabilityLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v6;
  v55 = a1;
  v59 = a2;
  v54 = sub_24F92CDB8();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_24F922938();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v43 - v11;
  v51 = sub_24F922998();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24F9221D8();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F9228C8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v44 = sub_24F9228E8();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50, &unk_24F9AFC90);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_24F93A400;
  v24 = v6[8];
  v25 = v7[9];
  v26 = __swift_project_boxed_opaque_existential_1(v7 + 5, v24);
  v70 = v24;
  v27 = *(v25 + 8);
  v28 = v55;
  v71 = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  sub_24E615E00(v69, v23 + 32);
  sub_24E615E00((v7 + 22), v23 + 80);
  sub_24E930DFC(v67, v23 + 120);
  *(v23 + 72) = 1;
  *(v23 + 160) = 8;
  sub_24E930E6C(v67);
  __swift_destroy_boxed_opaque_existential_1(v69);
  sub_24E615E00((v7 + 32), v69);
  sub_24E615E00((v7 + 10), v23 + 168);
  sub_24E615E00((v7 + 27), v23 + 216);
  sub_24E930DFC(v69, v23 + 256);
  *(v23 + 208) = 1;
  *(v23 + 296) = 8;
  sub_24E930E6C(v69);
  v30 = [v28 traitCollection];
  LOBYTE(v26) = sub_24F92BF98();

  v70 = &type metadata for _VerticalFlowLayout;
  v31 = sub_24EBA3CDC();
  LOBYTE(v69[0]) = 0;
  v71 = v31;
  v69[1] = v23;
  sub_24E615E00(v7, v67);
  sub_24E615E00((v7 + 17), v66);
  if (v26)
  {
    v65 = 0;
    v64 = 0u;
    v63 = 0u;
    v32 = *MEMORY[0x277D22898];
    v33 = *(v15 + 104);
    v33(v20, v32, v14);
    v33(v17, v32, v14);
    v61 = sub_24F922418();
    v62 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v60);
    sub_24F922408();
    sub_24F9228D8();
    v34 = v56;
    sub_24F9228B8();
    (*(v57 + 8))(v34, v58);
    (*(v43 + 8))(v22, v44);
  }

  else
  {
    v35 = *(v46 + 104);
    v36 = v48;
    v35(v45, *MEMORY[0x277D228C0], v48);
    v65 = 0;
    v64 = 0u;
    v63 = 0u;
    v61 = sub_24F922418();
    v62 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v60);
    sub_24F922408();
    v35(v47, *MEMORY[0x277D228C8], v36);
    v37 = v49;
    sub_24F922978();
    v38 = v56;
    sub_24F922958();
    (*(v57 + 8))(v38, v58);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_24F922218();
    v58 = v39;
    v40 = v7[20];
    __swift_project_boxed_opaque_existential_1(v7 + 17, v40);
    v41 = v52;
    sub_24E8ED7D8(v40);
    sub_24F9223A8();
    (*(v53 + 8))(v41, v54);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_24F922228();
    (*(v50 + 8))(v37, v51);
  }

  return sub_24F922128();
}

double _s12GameStoreKit23ProductCapabilityLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_24F9225E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F922618();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277D22788], v6, v12);
  sub_24F9225F8();
  v15 = [a2 traitCollection];
  LOBYTE(v9) = sub_24F92BF98();

  v16 = MEMORY[0x277D228E0];
  if (v9)
  {
    v17 = *(a1 + 8);
    v23[3] = MEMORY[0x277D85048];
    v23[4] = MEMORY[0x277D225F8];
    v23[0] = v17;
    v18 = sub_24F9229A8();
    v25 = v18;
    v26 = v16;
    __swift_allocate_boxed_opaque_existential_1(v24);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_24E615E00(a1 + 16, v23);
    v25 = v18;
    v26 = v16;
    __swift_allocate_boxed_opaque_existential_1(v24);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  sub_24E615E00(a1 + 56, v23);
  v19 = sub_24F9229A8();
  v25 = v19;
  v26 = v16;
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_24E615E00(a1 + 96, v23);
  v25 = v19;
  v26 = v16;
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_24E615E00(a1 + 136, v23);
  v25 = v19;
  v26 = v16;
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_24E615E00(a1 + 176, v23);
  v25 = v19;
  v26 = v16;
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_24F9225D8();
  v21 = v20;
  (*(v11 + 8))(v14, v10);
  return v21;
}

unint64_t sub_24EBA3CDC()
{
  result = qword_27F22A878;
  if (!qword_27F22A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A878);
  }

  return result;
}

unint64_t sub_24EBA3D34()
{
  result = qword_27F22A880;
  if (!qword_27F22A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A880);
  }

  return result;
}

uint64_t sub_24EBA3D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EBA3DD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EBA3E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EBA3EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LocalAskToBuyAction.__allocating_init(adamId:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v12 = *a1;
  v11 = a1[1];
  v13 = (v10 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_adamId);
  *v13 = v12;
  v13[1] = v11;
  v14 = (v10 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_completion);
  *v14 = a2;
  v14[1] = a3;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  *&v26 = 0;
  *(&v26 + 1) = 0xE000000000000000;

  sub_24F92C888();

  *&v26 = 0xD000000000000015;
  *(&v26 + 1) = 0x800000024FA495E0;
  MEMORY[0x253050C20](v12, v11);

  v15 = v26;
  sub_24F928A98();
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(v10 + v16, 1, 1, v17);
  v18 = (v10 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v10 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v29, &v26);
  if (*(&v27 + 1))
  {
    v20 = v27;
    *v19 = v26;
    *(v19 + 16) = v20;
    *(v19 + 32) = v28;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    v25[1] = v21;
    v25[2] = v23;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v29, &qword_27F235830, &qword_24F93B8C0);
  *(v10 + 16) = v15;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  return v10;
}

uint64_t LocalAskToBuyAction.init(adamId:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v32 = sub_24F928AD8();
  v14 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  v19 = (v4 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_adamId);
  *v19 = v18;
  v19[1] = v17;
  v20 = (v4 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_completion);
  *v20 = a2;
  v20[1] = a3;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;

  sub_24F92C888();

  *&v38 = 0xD000000000000015;
  *(&v38 + 1) = 0x800000024FA495E0;
  MEMORY[0x253050C20](v18, v17);

  v21 = v38;
  sub_24F928A98();
  v22 = sub_24F929608();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = (v4 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v30 + 8))(v10, v31);
    v33 = v24;
    v34 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v41, &qword_27F235830, &qword_24F93B8C0);
  v27 = v4 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 32) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 16) = v28;
  sub_24E65E0D4(v13, v4 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v4 + 16) = v21;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  (*(v14 + 32))(v4 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v16, v32);
  return v4;
}

double LocalAskToBuyAction.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_adamId);
  a1[1] = v2;

  return result;
}

uint64_t LocalAskToBuyAction.adamIdString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_adamId);

  return v1;
}

uint64_t LocalAskToBuyAction.completion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_completion);

  return v1;
}

double sub_24EBA46B8()
{

  return result;
}

uint64_t LocalAskToBuyAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t LocalAskToBuyAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalAskToBuyAction(uint64_t a1)
{
  result = qword_27F22A888;
  if (!qword_27F22A888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageGridCache.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_24E60E044(MEMORY[0x277D84F90]);
  *(v0 + 24) = sub_24E60E044(v1);
  return v0;
}

uint64_t PageGridCache.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_24E60E044(MEMORY[0x277D84F90]);
  *(v0 + 24) = sub_24E60E044(v1);
  return v0;
}

void *sub_24EBA4AC8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, double, double, double, double, double, double, double, double, double, double)@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v97 = a2;
  v85 = a6;
  v86 = a5;
  v84 = a4;
  v105 = a3;
  v103 = a14;
  v104 = a15;
  v102 = a1;
  v99 = a7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  MEMORY[0x28223BE20](v23 - 8);
  v88 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = &v82 - v26;
  MEMORY[0x28223BE20](v27);
  v95 = &v82 - v28;
  MEMORY[0x28223BE20](v29);
  v100 = &v82 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v106 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v82 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  MEMORY[0x28223BE20](v34);
  v83 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v87 = &v82 - v37;
  MEMORY[0x28223BE20](v38);
  v89 = &v82 - v39;
  MEMORY[0x28223BE20](v40);
  v101 = &v82 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v82 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v82 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v82 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v82 - v52;
  sub_24E60169C(v97, &v82 - v52, &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(v105, &v53[*(v34 + 48)], &unk_27F23A690, &qword_24F982880);
  (*(v106 + 16))(v33, v102, v31);
  v97 = v53;
  sub_24E60169C(v53, v50, &unk_27F23A680, &unk_24F981ED0);
  v54 = *(v34 + 48);
  sub_24EAA34E0(v50, v47);
  sub_24EAA34E0(&v50[v54], &v47[*(v34 + 48)]);
  swift_getKeyPath();
  sub_24F928A48();

  v94 = v108[0];
  swift_getKeyPath();
  sub_24F928A48();

  v93 = v108[0];
  swift_getKeyPath();
  sub_24F928A48();

  v92 = v108[0];
  swift_getKeyPath();
  v96 = v33;
  v55 = v100;
  sub_24F928A48();

  *&v108[21] = v107[1];
  *&v108[37] = v107[2];
  *&v108[53] = v107[3];
  *&v108[69] = *&v107[4];
  *&v108[5] = v107[0];
  v91 = v47;
  sub_24E60169C(v47, v44, &unk_27F23A680, &unk_24F981ED0);
  v105 = v34;
  v56 = *(v34 + 48);
  sub_24EAA34E0(v44, v55);
  v57 = v106;
  v58 = *(v106 + 48);
  if (v58(v55, 1, v31) == 1)
  {
    sub_24E601704(&v44[v56], &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v55, &unk_27F23A690, &qword_24F982880);
    v59 = v95;
    v60 = v101;
    v61 = v91;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v62 = LOBYTE(v107[0]);
    (*(v57 + 8))(v55, v31);
    sub_24E601704(&v44[v56], &unk_27F23A690, &qword_24F982880);
    LODWORD(v100) = v62;
    v59 = v95;
    v60 = v101;
    v61 = v91;
    if (v62 != 104)
    {
      goto LABEL_8;
    }
  }

  v63 = v87;
  sub_24E60169C(v61, v87, &unk_27F23A680, &unk_24F981ED0);
  v64 = v63 + *(v105 + 48);
  v65 = v63;
  v66 = v88;
  sub_24EAA34E0(v65, v88);
  if (v58(v66, 1, v31) == 1)
  {
    sub_24E601704(v64, &unk_27F23A690, &qword_24F982880);
    LODWORD(v100) = 104;
    v64 = v66;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();
    v60 = v101;

    LODWORD(v100) = LOBYTE(v107[0]);
    (*(v106 + 8))(v66, v31);
  }

  sub_24E601704(v64, &unk_27F23A690, &qword_24F982880);
LABEL_8:
  sub_24E60169C(v61, v60, &unk_27F23A680, &unk_24F981ED0);
  sub_24EAA34E0(v60 + *(v105 + 48), v59);
  if (v58(v59, 1, v31) == 1)
  {
    sub_24E601704(v60, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v59, &unk_27F23A690, &qword_24F982880);
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v67 = LOBYTE(v107[0]);
    v68 = *(v106 + 8);
    v68(v59, v31);
    sub_24E601704(v60, &unk_27F23A690, &qword_24F982880);
    if (v67 != 104)
    {
      sub_24E601704(v61, &unk_27F23A680, &unk_24F981ED0);
      v68(v96, v31);
      goto LABEL_15;
    }
  }

  v69 = v89;
  sub_24E60169C(v61, v89, &unk_27F23A680, &unk_24F981ED0);
  v70 = v90;
  sub_24EAA34E0(v69 + *(v105 + 48), v90);
  if (v58(v70, 1, v31) == 1)
  {
    sub_24E601704(v61, &unk_27F23A680, &unk_24F981ED0);
    (*(v106 + 8))(v96, v31);
    sub_24E601704(v69, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v70, &unk_27F23A690, &qword_24F982880);
    LOBYTE(v67) = 104;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    sub_24E601704(v61, &unk_27F23A680, &unk_24F981ED0);
    v71 = *(v106 + 8);
    v71(v96, v31);
    LOBYTE(v67) = v107[0];
    v71(v70, v31);
    sub_24E601704(v69, &unk_27F23A690, &qword_24F982880);
  }

LABEL_15:
  v111 = *&v108[16];
  v112 = *&v108[32];
  *v113 = *&v108[48];
  *&v113[13] = *&v108[61];
  v109[0] = v94;
  v109[1] = v93;
  v109[2] = v92;
  v110 = *v108;
  v114 = v100;
  v115 = v67;
  v117 = WORD2(v107[0]);
  v116 = v107[0];
  v118 = a8;
  v119 = a9;
  v120 = a10;
  v121 = a11;
  v122 = a12;
  v123 = a13;
  v124 = v103;
  v125 = v104;
  v126 = a16;
  v127 = a17;
  v72 = v98;
  swift_beginAccess();
  v73 = *(v72 + 16);
  if (!*(v73 + 16))
  {
LABEL_19:
    v77 = v97;
    v78 = v83;
    sub_24E60169C(v97, v83, &unk_27F23A680, &unk_24F981ED0);
    v79 = *(v105 + 48);
    v86(v107, v102, v78, v78 + v79, v84, a8, a9, a10, a11, a12, a13, v103, v104, a16, a17);
    sub_24E601704(v78 + v79, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v78, &unk_27F23A690, &qword_24F982880);
    memcpy(v108, v107, sizeof(v108));
    swift_beginAccess();
    sub_24E8B9768(v108, v107);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v107[0] = *(v72 + 16);
    *(v72 + 16) = 0x8000000000000000;
    sub_24E81E840(v108, v109, isUniquelyReferenced_nonNull_native);
    sub_24E772830(v109);
    *(v72 + 16) = *&v107[0];
    swift_endAccess();
    v76 = v77;
    goto LABEL_20;
  }

  v74 = sub_24E76E2DC(v109);
  if ((v75 & 1) == 0)
  {

    goto LABEL_19;
  }

  memcpy(v108, (*(v73 + 56) + 392 * v74), sizeof(v108));
  sub_24E8B9768(v108, v107);
  sub_24E772830(v109);

  v76 = v97;
LABEL_20:
  sub_24E601704(v76, &unk_27F23A680, &unk_24F981ED0);
  return memcpy(v99, v108, 0x188uLL);
}

void *sub_24EBA5620@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, double, double, double, double, double, double, double, double, double, double)@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v97 = a2;
  v85 = a6;
  v86 = a5;
  v84 = a4;
  v105 = a3;
  v103 = a14;
  v104 = a15;
  v102 = a1;
  v99 = a7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  MEMORY[0x28223BE20](v23 - 8);
  v88 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = &v82 - v26;
  MEMORY[0x28223BE20](v27);
  v95 = &v82 - v28;
  MEMORY[0x28223BE20](v29);
  v100 = &v82 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v106 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v82 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  MEMORY[0x28223BE20](v34);
  v83 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v87 = &v82 - v37;
  MEMORY[0x28223BE20](v38);
  v89 = &v82 - v39;
  MEMORY[0x28223BE20](v40);
  v101 = &v82 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v82 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v82 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v82 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v82 - v52;
  sub_24E60169C(v97, &v82 - v52, &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(v105, &v53[*(v34 + 48)], &unk_27F23A690, &qword_24F982880);
  (*(v106 + 16))(v33, v102, v31);
  v97 = v53;
  sub_24E60169C(v53, v50, &unk_27F23A680, &unk_24F981ED0);
  v54 = *(v34 + 48);
  sub_24EAA34E0(v50, v47);
  sub_24EAA34E0(&v50[v54], &v47[*(v34 + 48)]);
  swift_getKeyPath();
  sub_24F928A48();

  v94 = v108[0];
  swift_getKeyPath();
  sub_24F928A48();

  v93 = v108[0];
  swift_getKeyPath();
  sub_24F928A48();

  v92 = v108[0];
  swift_getKeyPath();
  v96 = v33;
  v55 = v100;
  sub_24F928A48();

  *&v108[21] = v107[1];
  *&v108[37] = v107[2];
  *&v108[53] = v107[3];
  *&v108[69] = *&v107[4];
  *&v108[5] = v107[0];
  v91 = v47;
  sub_24E60169C(v47, v44, &unk_27F23A680, &unk_24F981ED0);
  v105 = v34;
  v56 = *(v34 + 48);
  sub_24EAA34E0(v44, v55);
  v57 = v106;
  v58 = *(v106 + 48);
  if (v58(v55, 1, v31) == 1)
  {
    sub_24E601704(&v44[v56], &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v55, &unk_27F23A690, &qword_24F982880);
    v59 = v95;
    v60 = v101;
    v61 = v91;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v62 = LOBYTE(v107[0]);
    (*(v57 + 8))(v55, v31);
    sub_24E601704(&v44[v56], &unk_27F23A690, &qword_24F982880);
    LODWORD(v100) = v62;
    v59 = v95;
    v60 = v101;
    v61 = v91;
    if (v62 != 104)
    {
      goto LABEL_8;
    }
  }

  v63 = v87;
  sub_24E60169C(v61, v87, &unk_27F23A680, &unk_24F981ED0);
  v64 = v63 + *(v105 + 48);
  v65 = v63;
  v66 = v88;
  sub_24EAA34E0(v65, v88);
  if (v58(v66, 1, v31) == 1)
  {
    sub_24E601704(v64, &unk_27F23A690, &qword_24F982880);
    LODWORD(v100) = 104;
    v64 = v66;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();
    v60 = v101;

    LODWORD(v100) = LOBYTE(v107[0]);
    (*(v106 + 8))(v66, v31);
  }

  sub_24E601704(v64, &unk_27F23A690, &qword_24F982880);
LABEL_8:
  sub_24E60169C(v61, v60, &unk_27F23A680, &unk_24F981ED0);
  sub_24EAA34E0(v60 + *(v105 + 48), v59);
  if (v58(v59, 1, v31) == 1)
  {
    sub_24E601704(v60, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v59, &unk_27F23A690, &qword_24F982880);
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v67 = LOBYTE(v107[0]);
    v68 = *(v106 + 8);
    v68(v59, v31);
    sub_24E601704(v60, &unk_27F23A690, &qword_24F982880);
    if (v67 != 104)
    {
      sub_24E601704(v61, &unk_27F23A680, &unk_24F981ED0);
      v68(v96, v31);
      goto LABEL_15;
    }
  }

  v69 = v89;
  sub_24E60169C(v61, v89, &unk_27F23A680, &unk_24F981ED0);
  v70 = v90;
  sub_24EAA34E0(v69 + *(v105 + 48), v90);
  if (v58(v70, 1, v31) == 1)
  {
    sub_24E601704(v61, &unk_27F23A680, &unk_24F981ED0);
    (*(v106 + 8))(v96, v31);
    sub_24E601704(v69, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v70, &unk_27F23A690, &qword_24F982880);
    LOBYTE(v67) = 104;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    sub_24E601704(v61, &unk_27F23A680, &unk_24F981ED0);
    v71 = *(v106 + 8);
    v71(v96, v31);
    LOBYTE(v67) = v107[0];
    v71(v70, v31);
    sub_24E601704(v69, &unk_27F23A690, &qword_24F982880);
  }

LABEL_15:
  v111 = *&v108[16];
  v112 = *&v108[32];
  *v113 = *&v108[48];
  *&v113[13] = *&v108[61];
  v109[0] = v94;
  v109[1] = v93;
  v109[2] = v92;
  v110 = *v108;
  v114 = v100;
  v115 = v67;
  v117 = WORD2(v107[0]);
  v116 = v107[0];
  v118 = a8;
  v119 = a9;
  v120 = a10;
  v121 = a11;
  v122 = a12;
  v123 = a13;
  v124 = v103;
  v125 = v104;
  v126 = a16;
  v127 = a17;
  v72 = v98;
  swift_beginAccess();
  v73 = *(v72 + 24);
  if (!*(v73 + 16))
  {
LABEL_19:
    v77 = v97;
    v78 = v83;
    sub_24E60169C(v97, v83, &unk_27F23A680, &unk_24F981ED0);
    v79 = *(v105 + 48);
    v86(v107, v102, v78, v78 + v79, v84, a8, a9, a10, a11, a12, a13, v103, v104, a16, a17);
    sub_24E601704(v78 + v79, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v78, &unk_27F23A690, &qword_24F982880);
    memcpy(v108, v107, sizeof(v108));
    swift_beginAccess();
    sub_24E8B9768(v108, v107);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v107[0] = *(v72 + 24);
    *(v72 + 24) = 0x8000000000000000;
    sub_24E81E840(v108, v109, isUniquelyReferenced_nonNull_native);
    sub_24E772830(v109);
    *(v72 + 24) = *&v107[0];
    swift_endAccess();
    v76 = v77;
    goto LABEL_20;
  }

  v74 = sub_24E76E2DC(v109);
  if ((v75 & 1) == 0)
  {

    goto LABEL_19;
  }

  memcpy(v108, (*(v73 + 56) + 392 * v74), sizeof(v108));
  sub_24E8B9768(v108, v107);
  sub_24E772830(v109);

  v76 = v97;
LABEL_20:
  sub_24E601704(v76, &unk_27F23A680, &unk_24F981ED0);
  return memcpy(v99, v108, 0x188uLL);
}

uint64_t sub_24EBA6178()
{
  swift_beginAccess();
  v1 = MEMORY[0x277D84F98];
  *(v0 + 16) = MEMORY[0x277D84F98];

  swift_beginAccess();
  *(v0 + 24) = v1;
}

uint64_t PageGridCache.deinit()
{

  return v0;
}

uint64_t PageGridCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EBA6338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_24F91F968();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t TitledButtonStack.__allocating_init(id:buttons:compactLineBreaks:regularLineBreaks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_24E65E064(a1, &v23);
  if (*(&v24 + 1))
  {
    v26 = v23;
    v27 = v24;
    v28 = v25;
  }

  else
  {
    sub_24F91F6A8();
    v13 = sub_24F91F668();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v22[1] = v13;
    v22[2] = v15;
    sub_24F92C7F8();
    sub_24E601704(&v23, &qword_27F235830, &qword_24F93B8C0);
  }

  v16 = v12 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_id;
  v17 = v27;
  *v16 = v26;
  *(v16 + 16) = v17;
  *(v16 + 32) = v28;
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  *(v12 + 16) = a2;
  v18 = OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_compactLineBreaks;
  v19 = sub_24F91F968();
  v20 = *(*(v19 - 8) + 32);
  v20(v12 + v18, a3, v19);
  v20(v12 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_regularLineBreaks, a4, v19);
  return v12;
}

uint64_t TitledButtonStack.init(id:buttons:compactLineBreaks:regularLineBreaks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v24);
  if (*(&v25 + 1))
  {
    v27 = v24;
    v28 = v25;
    v29 = v26;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v23[1] = v14;
    v23[2] = v16;
    sub_24F92C7F8();
    sub_24E601704(&v24, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v17 = v5 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_id;
  v18 = v28;
  *v17 = v27;
  *(v17 + 16) = v18;
  *(v17 + 32) = v29;
  *(v5 + 16) = a2;
  v19 = OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_compactLineBreaks;
  v20 = sub_24F91F968();
  v21 = *(*(v20 - 8) + 32);
  v21(v5 + v19, a3, v20);
  v21(v5 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_regularLineBreaks, a4, v20);
  return v5;
}

uint64_t TitledButtonStack.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TitledButtonStack.init(deserializing:using:)(a1, a2);
  return v4;
}

unint64_t *TitledButtonStack.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v98 = a2;
  v5 = *v3;
  v92 = v3;
  v89 = v5;
  v83 = sub_24F91F968();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v93 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v75 - v8;
  v97 = sub_24F9285B8();
  v91 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v86 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v75 - v13;
  MEMORY[0x28223BE20](v14);
  v90 = &v75 - v15;
  v96 = sub_24F92AC28();
  v16 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v85 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v88 = &v75 - v19;
  v95 = sub_24F91F6B8();
  v20 = *(v95 - 1);
  MEMORY[0x28223BE20](v95);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F928388();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v80 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v78 = &v75 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v75 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v75 - v32;
  sub_24F928398();
  v34 = sub_24F928348();
  v104 = a1;
  if (v35)
  {
    v99 = v34;
    v100 = v35;
    sub_24F92C7F8();
    v36 = *(v24 + 8);
    v37 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v33, v23);
    v38 = v92;
  }

  else
  {
    sub_24F91F6A8();
    v39 = sub_24F91F668();
    v41 = v40;
    (*(v20 + 8))(v22, v95);
    v99 = v39;
    v100 = v41;
    v38 = v92;
    sub_24F92C7F8();
    v36 = *(v24 + 8);
    v37 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v33, v23);
  }

  v42 = v38 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_id;
  v43 = v102;
  *v42 = v101;
  *(v42 + 16) = v43;
  *(v42 + 32) = v103;
  sub_24F928398();
  v44 = v90;
  sub_24F9282B8();
  v94 = v37;
  v95 = v36;
  v36(v30, v23);
  v45 = *(v16 + 48);
  v46 = v96;
  if (v45(v44, 1, v96) == 1)
  {
    sub_24E601704(v44, &qword_27F2213B0, &qword_24F965EC0);
LABEL_8:
    v48 = sub_24F92AC38();
    sub_24EBA75C4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v49 = 0x736E6F74747562;
    v49[1] = 0xE700000000000000;
    v49[2] = v89;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    (*(v91 + 8))(v98, v97);
    v95(v104, v23);
LABEL_9:
    sub_24E6585F8(v42);
    swift_deallocPartialClassInstance();
    return v38;
  }

  v47 = v88;
  (*(v16 + 32))(v88, v44, v46);
  if (sub_24F92ABF8())
  {
    (*(v16 + 8))(v47, v46);
    goto LABEL_8;
  }

  v76 = v45;
  v90 = v23;
  (*(v16 + 16))(v85, v47, v46);
  v51 = v91;
  (*(v91 + 16))(v86, v98, v97);
  v77 = type metadata accessor for TitledButton();
  sub_24EBA75C4(&qword_27F22A898, type metadata accessor for TitledButton, &protocol conformance descriptor for TitledButton);
  v52 = v87;
  v53 = sub_24F92B688();
  if (v52)
  {
    (*(v51 + 8))(v98, v97);
    v95(v104, v90);
    (*(v16 + 8))(v47, v46);
    goto LABEL_9;
  }

  v89 = v53;
  v86 = 0;
  v87 = v16;
  v54 = v78;
  sub_24F928398();
  v55 = v79;
  sub_24F9282B8();
  v56 = v90;
  v95(v54, v90);
  if (v76(v55, 1, v46) == 1)
  {
    sub_24E601704(v55, &qword_27F2213B0, &qword_24F965EC0);
    v57 = v88;
  }

  else
  {
    v58 = sub_24F92ABC8();
    (*(v87 + 8))(v55, v46);
    v57 = v88;
    if (v58)
    {
      goto LABEL_17;
    }
  }

  v58 = MEMORY[0x277D84F90];
LABEL_17:
  sub_24F91F958();
  v59 = *(v58 + 16);
  v91 = v89 >> 62;
  if (v59)
  {
    if (v91)
    {
      v60 = sub_24F92C738();
    }

    else
    {
      v60 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = (v58 + 32);
    do
    {
      v62 = *v61++;
      if (v62 < v60)
      {
        sub_24F91F8F8();
      }

      --v59;
    }

    while (v59);
  }

  v63 = v80;
  v64 = v104;
  sub_24F928398();
  v65 = v81;
  sub_24F9282B8();
  v95(v63, v56);
  v66 = v96;
  if (v76(v65, 1, v96) == 1)
  {
    sub_24E601704(v65, &qword_27F2213B0, &qword_24F965EC0);
    v67 = v97;
LABEL_27:

    v68 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v68 = sub_24F92ABC8();
  (*(v87 + 8))(v65, v66);
  v67 = v97;
  if (!v68)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_24F91F958();
  v69 = *(v68 + 16);
  if (v69)
  {
    if (v91)
    {
      v70 = sub_24F92C738();
    }

    else
    {
      v70 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v71 = (v68 + 32);
    do
    {
      v72 = *v71++;
      if (v72 < v70)
      {
        sub_24F91F8F8();
      }

      --v69;
    }

    while (v69);
  }

  (*(v51 + 8))(v98, v67);
  v95(v64, v90);
  (*(v87 + 8))(v57, v96);
  v38 = v92;
  v92[2] = v89;
  v73 = *(v82 + 32);
  v74 = v83;
  v73(v38 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_compactLineBreaks, v84, v83);
  v73(v38 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_regularLineBreaks, v93, v74);
  return v38;
}

uint64_t TitledButtonStack.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_compactLineBreaks;
  v2 = sub_24F91F968();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_regularLineBreaks, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_id);
  return v0;
}

uint64_t TitledButtonStack.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_compactLineBreaks;
  v2 = sub_24F91F968();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_regularLineBreaks, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_id);

  return swift_deallocClassInstance();
}

uint64_t sub_24EBA75C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TitledButtonStack(uint64_t a1)
{
  result = qword_27F22A8A8;
  if (!qword_27F22A8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t *sub_24EBA7670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TitledButtonStack.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EBA76E0(uint64_t a1)
{
  result = sub_24F91F968();
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

void *RibbonBarItem.__allocating_init(id:artwork:artworkTintColor:accessibilityLabel:title:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a3;
  v35 = a4;
  v32 = a9;
  v33 = a2;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v19 = v18 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id;
  sub_24E60169C(a1, &v38, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v39 + 1))
  {
    v20 = v39;
    *v19 = v38;
    *(v19 + 1) = v20;
    *(v19 + 4) = v40;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v30 = a5;
    v31 = a6;
    v22 = a8;
    v23 = v21;
    v24 = a7;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v36 = v23;
    v37 = v26;
    a8 = v22;
    a7 = v24;
    a5 = v30;
    a6 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v32, v18 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics);
  v27 = v34;
  v18[2] = v33;
  v18[3] = v27;
  v18[4] = v35;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  v18[8] = a8;
  return v18;
}

void *RibbonBarItem.init(id:artwork:artworkTintColor:accessibilityLabel:title:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v35 = a2;
  v36 = a3;
  v34 = a9;
  v17 = sub_24F91F6B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v39, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v32 = a4;
    v33 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v18 + 8))(v20, v17);
    v37 = v24;
    v38 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    a4 = v32;
    a5 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v28 = v10 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id;
  v29 = v43;
  *v28 = v42;
  *(v28 + 1) = v29;
  *(v28 + 4) = v44;
  sub_24E65E0D4(v34, v10 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics);
  v30 = v36;
  v10[2] = v35;
  v10[3] = v30;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a6;
  v10[7] = a7;
  v10[8] = a8;
  return v10;
}

uint64_t RibbonBarItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RibbonBarItem.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *RibbonBarItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v72 = a2;
  v66 = *v3;
  v73 = sub_24F9285B8();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v59 - v9;
  v61 = sub_24F91F6B8();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v79 = a1;
  sub_24F928398();
  v22 = sub_24F928348();
  v24 = v23;
  v26 = *(v13 + 8);
  v25 = v13 + 8;
  v27 = v21;
  v28 = v12;
  v29 = v26;
  v26(v27, v28);
  v68 = v24;
  if (v24)
  {
    v66 = v22;
    sub_24F928398();
    v30 = sub_24F928348();
    v64 = v25;
    v65 = v28;
    v63 = v29;
    if (v31)
    {
      v74 = v30;
      v75 = v31;
      sub_24F92C7F8();
      v32 = v18;
      v33 = v28;
    }

    else
    {
      sub_24F91F6A8();
      v37 = sub_24F91F668();
      v38 = v28;
      v40 = v39;
      (*(v60 + 8))(v11, v61);
      v74 = v37;
      v75 = v40;
      sub_24F92C7F8();
      v32 = v18;
      v33 = v38;
    }

    v29(v32, v33);
    v41 = v3 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id;
    v42 = v77;
    *v41 = v76;
    *(v41 + 1) = v42;
    *(v41 + 4) = v78;
    sub_24F929608();
    sub_24F928398();
    v43 = v72;
    v44 = *(v71 + 16);
    v45 = v70;
    v44(v70, v72, v73);
    v46 = v67;
    sub_24F929548();
    sub_24E65E0D4(v46, v3 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics);
    v47 = v73;
    v44(v45, v43, v73);
    type metadata accessor for Artwork(0);
    v48 = v79;
    sub_24F928398();
    v44(v69, v45, v47);
    sub_24EBA98B0(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v3[2] = v76;
    sub_24F928398();
    v49 = JSONObject.appStoreColor.getter();
    v50 = v65;
    v51 = v63;
    v63(v15, v65);
    v3[3] = v49;
    sub_24F928398();
    v52 = sub_24F928348();
    v54 = v53;
    v51(v15, v50);
    v62 = v3;
    v3[4] = v52;
    v3[5] = v54;
    v55 = v68;
    v3[6] = v66;
    v3[7] = v55;
    type metadata accessor for Action(0);
    sub_24F928398();
    v69 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v45);
    v56 = *(v71 + 8);
    v57 = v73;
    v56(v72, v73);
    v51(v48, v50);
    v51(v15, v50);
    v3 = v62;
    v56(v45, v57);
    v3[8] = v69;
  }

  else
  {
    v34 = sub_24F92AC38();
    sub_24EBA98B0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v35 = 0x656C746974;
    v36 = v66;
    v35[1] = 0xE500000000000000;
    v35[2] = v36;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v71 + 8))(v72, v73);
    v29(v79, v28);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

void *RibbonBarItem.artworkTintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t RibbonBarItem.accessibilityLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RibbonBarItem.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t RibbonBarItem.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t RibbonBarItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F929598();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618, &qword_24F982808);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_24F92B218();
  if (v1[2])
  {
    sub_24F92D088();
    sub_24E9F7EC4(a1);
    v17 = v1[3];
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_24F92D088();
    v19 = v1[8];
    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_24F92D088();
  v17 = v1[3];
  if (!v17)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_24F92D088();
  v18 = v17;
  sub_24F92C418();

  v19 = v2[8];
  if (v19)
  {
LABEL_4:
    sub_24E65864C(v19 + OBJC_IVAR____TtC12GameStoreKit6Action_id, v31);
    goto LABEL_8;
  }

LABEL_7:
  v32 = 0;
  memset(v31, 0, sizeof(v31));
LABEL_8:
  sub_24E60169C(v31, &v28, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v29 + 1))
  {
    v26[0] = v28;
    v26[1] = v29;
    v27 = v30;
    sub_24F92D088();
    _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
    sub_24E6585F8(v26);
  }

  else
  {
    sub_24F92D088();
  }

  sub_24E601704(v31, &qword_27F235830, &qword_24F93B8C0);
  v20 = v2[5];
  v25[1] = a1;
  sub_24F92D088();
  if (v20)
  {
    sub_24F92B218();
  }

  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics, v10, &qword_27F213E68, &unk_24F93BC80);
  v21 = sub_24F929608();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_24E601704(v10, &qword_27F213E68, &unk_24F93BC80);
    v23 = 1;
  }

  else
  {
    sub_24F9295B8();
    (*(v22 + 8))(v10, v21);
    v23 = 0;
  }

  (*(v5 + 56))(v16, v23, 1, v4);
  sub_24E60169C(v16, v13, &qword_27F228618, &qword_24F982808);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_24F92D088();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_24F92D088();
    sub_24EBA98B0(&qword_27F21BCE8, MEMORY[0x277D21F50], MEMORY[0x277D21F58]);
    sub_24F92AEF8();
    (*(v5 + 8))(v7, v4);
  }

  return sub_24E601704(v16, &qword_27F228618, &qword_24F982808);
}

uint64_t RibbonBarItem.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id);
  return v0;
}

uint64_t RibbonBarItem.__deallocating_deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id);

  return swift_deallocClassInstance();
}

uint64_t RibbonBarItem.hashValue.getter()
{
  sub_24F92D068();
  RibbonBarItem.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EBA8B90@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 64);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24EBA98B0(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t *sub_24EBA8C30@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = RibbonBarItem.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EBA8CA4()
{
  sub_24F92D068();
  RibbonBarItem.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EBA8D0C()
{
  sub_24F92D068();
  RibbonBarItem.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit13RibbonBarItemC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_24F929598();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A8D8, &qword_24F9DF710);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618, &qword_24F982808);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v63 = &v56 - v23;
  if ((MEMORY[0x253052150](a1 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id, a2 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id, v22) & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_35;
  }

  v59 = v9;
  v60 = v5;
  v24 = a1[2];
  v25 = a2[2];
  if (!v24)
  {
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_10:
    v58 = v4;
    v27 = a1[3];
    v28 = a2[3];
    if (v27)
    {
      if (!v28)
      {
        goto LABEL_35;
      }

      sub_24E77ACC8();
      v29 = v28;
      v30 = v27;
      v31 = sub_24F92C408();

      if ((v31 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v28)
    {
      goto LABEL_35;
    }

    v32 = a1[8];
    if (v32)
    {
      sub_24E65864C(v32 + OBJC_IVAR____TtC12GameStoreKit6Action_id, v73);
      v33 = a2[8];
      if (v33)
      {
LABEL_17:
        sub_24E65864C(v33 + OBJC_IVAR____TtC12GameStoreKit6Action_id, v71);
        goto LABEL_20;
      }
    }

    else
    {
      v74 = 0;
      memset(v73, 0, sizeof(v73));
      v33 = a2[8];
      if (v33)
      {
        goto LABEL_17;
      }
    }

    v72 = 0;
    memset(v71, 0, sizeof(v71));
LABEL_20:
    sub_24E60169C(v73, v67, &qword_27F235830, &qword_24F93B8C0);
    sub_24E60169C(v71, &v68, &qword_27F235830, &qword_24F93B8C0);
    if (v67[3])
    {
      sub_24E60169C(v67, v66, &qword_27F235830, &qword_24F93B8C0);
      if (*(&v69 + 1))
      {
        v64[0] = v68;
        v64[1] = v69;
        v65 = v70;
        v34 = MEMORY[0x253052150](v66, v64);
        sub_24E6585F8(v64);
        sub_24E601704(v71, &qword_27F235830, &qword_24F93B8C0);
        sub_24E601704(v73, &qword_27F235830, &qword_24F93B8C0);
        sub_24E6585F8(v66);
        sub_24E601704(v67, &qword_27F235830, &qword_24F93B8C0);
        if (v34)
        {
          goto LABEL_26;
        }

LABEL_35:
        LOBYTE(v25) = 0;
        return v25 & 1;
      }

      sub_24E601704(v71, &qword_27F235830, &qword_24F93B8C0);
      sub_24E601704(v73, &qword_27F235830, &qword_24F93B8C0);
      sub_24E6585F8(v66);
    }

    else
    {
      sub_24E601704(v71, &qword_27F235830, &qword_24F93B8C0);
      sub_24E601704(v73, &qword_27F235830, &qword_24F93B8C0);
      if (!*(&v69 + 1))
      {
        sub_24E601704(v67, &qword_27F235830, &qword_24F93B8C0);
LABEL_26:
        v35 = a1[5];
        v36 = a2[5];
        if (v35)
        {
          if (!v36 || (a1[4] != a2[4] || v35 != v36) && (sub_24F92CE08() & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else if (v36)
        {
          goto LABEL_35;
        }

        sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics, v15, &qword_27F213E68, &unk_24F93BC80);
        v41 = sub_24F929608();
        v42 = *(v41 - 8);
        v57 = *(v42 + 48);
        if (v57(v15, 1, v41) == 1)
        {
          sub_24E601704(v15, &qword_27F213E68, &unk_24F93BC80);
          v43 = 1;
          v44 = v63;
        }

        else
        {
          v44 = v63;
          v56 = v42;
          sub_24F9295B8();
          v42 = v56;
          (*(v56 + 8))(v15, v41);
          v43 = 0;
        }

        v56 = *(v60 + 56);
        (v56)(v44, v43, 1, v58);
        sub_24E60169C(a2 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics, v12, &qword_27F213E68, &unk_24F93BC80);
        if (v57(v12, 1, v41) == 1)
        {
          sub_24E601704(v12, &qword_27F213E68, &unk_24F93BC80);
          v45 = 1;
        }

        else
        {
          sub_24F9295B8();
          (*(v42 + 8))(v12, v41);
          v45 = 0;
        }

        v46 = v58;
        (v56)(v20, v45, 1, v58);
        v47 = *(v7 + 48);
        v48 = v63;
        v49 = v59;
        sub_24E60169C(v63, v59, &qword_27F228618, &qword_24F982808);
        sub_24E60169C(v20, v49 + v47, &qword_27F228618, &qword_24F982808);
        v50 = *(v60 + 48);
        if (v50(v49, 1, v46) == 1)
        {
          sub_24E601704(v20, &qword_27F228618, &qword_24F982808);
          v25 = v59;
          sub_24E601704(v48, &qword_27F228618, &qword_24F982808);
          if (v50(v25 + v47, 1, v46) == 1)
          {
            sub_24E601704(v25, &qword_27F228618, &qword_24F982808);
            LOBYTE(v25) = 1;
            return v25 & 1;
          }
        }

        else
        {
          v51 = v62;
          sub_24E60169C(v49, v62, &qword_27F228618, &qword_24F982808);
          if (v50(v49 + v47, 1, v46) != 1)
          {
            v52 = v51;
            v54 = v60;
            v53 = v61;
            (*(v60 + 32))(v61, v49 + v47, v46);
            sub_24EBA98B0(&qword_27F21BCF0, MEMORY[0x277D21F50], MEMORY[0x277D21F60]);
            LOBYTE(v25) = sub_24F92AFF8();
            v55 = *(v54 + 8);
            v55(v53, v46);
            sub_24E601704(v20, &qword_27F228618, &qword_24F982808);
            sub_24E601704(v63, &qword_27F228618, &qword_24F982808);
            v55(v52, v46);
            sub_24E601704(v49, &qword_27F228618, &qword_24F982808);
            return v25 & 1;
          }

          sub_24E601704(v20, &qword_27F228618, &qword_24F982808);
          v25 = v59;
          sub_24E601704(v48, &qword_27F228618, &qword_24F982808);
          (*(v60 + 8))(v51, v46);
        }

        v37 = &qword_27F22A8D8;
        v38 = &qword_24F9DF710;
        v39 = v25;
        goto LABEL_34;
      }
    }

    v37 = &qword_27F21B438;
    v38 = &unk_24F95FB00;
    v39 = v67;
LABEL_34:
    sub_24E601704(v39, v37, v38);
    goto LABEL_35;
  }

  if (v25)
  {

    v26 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v24, v25);

    if ((v26 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  return v25 & 1;
}

uint64_t type metadata accessor for RibbonBarItem(uint64_t a1)
{
  result = qword_27F22A8C8;
  if (!qword_27F22A8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EBA9798(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EBA98B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double PurchaseIntent.init(from:stateMachine:additionalHeaders:presentingSceneIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  ObjectType = swift_getObjectType();
  v43 = *(a3 + 16);
  v43(&v53, ObjectType, a3);
  v13 = (*(&v53 + 1) << 8) | ((*(&v53 + 5) | (HIBYTE(v53) << 16)) << 40) | v53;
  v14 = v59 >> 60;
  if ((v59 >> 60) <= 2)
  {
    if (v14 == 1)
    {
      if ((v53 & 1) == 0)
      {
        swift_unknownObjectRelease();

        goto LABEL_39;
      }

      v41 = a6;
      v42 = a4;
      v37 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem + 8);
      v38 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);

      v39 = 0;
      v40 = 0;
      goto LABEL_23;
    }

    if (v14 == 2)
    {
      v41 = a6;
      v42 = a4;
      if (*(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) != 1)
      {
        v39 = (*(&v53 + 1) << 8) | ((*(&v53 + 5) | (HIBYTE(v53) << 16)) << 40) | v53;
        v40 = v54;

        v37 = 0;
        v38 = 0;
        v35 = 0;
        v36 = 2;
        goto LABEL_24;
      }

      goto LABEL_21;
    }

LABEL_32:

    sub_24E88D2AC(&v53);
    swift_unknownObjectRelease();
LABEL_39:
    result = 0.0;
    *(a7 + 128) = 0u;
    *(a7 + 144) = 0u;
    *(a7 + 96) = 0u;
    *(a7 + 112) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 80) = 0u;
    *(a7 + 32) = 0u;
    *(a7 + 48) = 0u;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  if (v14 != 3)
  {
    if (v14 != 7)
    {
      if (v14 == 8 && (v59 == 0x8000000000000000 && !(v13 | v54 | v60 | v58 | v57 | v56 | v55) || v59 == 0x8000000000000000 && v13 == 4 && !(v60 | v54 | v58 | v57 | v56 | v55)))
      {
        v41 = a6;
        v42 = a4;
        OfferAction.isRedownload.getter();
        if (v15)
        {
          v16 = 3;
        }

        else
        {
          v16 = 1;
        }

        v36 = v16;
        OfferAction.isRedownload.getter();
        v35 = v17;
        v37 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem + 8);
        v38 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);

        v39 = 0;
        v40 = 0;
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    if (*(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) == 1)
    {
      v41 = a6;
      v42 = a4;
LABEL_21:
      v39 = (*(a3 + 32))(ObjectType, a3);
      v40 = v19;
      v37 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem + 8);
      v38 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  v39 = (*(&v53 + 1) << 8) | ((*(&v53 + 5) | (HIBYTE(v53) << 16)) << 40) | v53;
  v40 = v54;
  v41 = a6;
  v42 = a4;
  v18 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem + 8);
  v38 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  sub_24E8B9478(&v53, &v52);
  v37 = v18;
LABEL_22:

LABEL_23:
  v35 = 1;
  v36 = 3;
LABEL_24:
  v20 = OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  sub_24E643A9C(a1 + v20, v46);
  v21 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  v32 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v33 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  v34 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId + 8);

  v43(v47, ObjectType, a3);
  v22 = v50 >> 60;
  v23 = 1;
  if (v50 >> 60 != 2 && v22 != 7)
  {
    if (v22 != 8 || v51 || v50 != 0x8000000000000000 || v47[0] != 1 || (v24 = vorrq_s8(v48, v49), *&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | v47[1]))
    {
      v23 = 0;
    }
  }

  sub_24E88D2AC(v47);
  v25 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest);
  v26 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason);
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v27 = sub_24EB6C148();
  MetricsSystemInfo.init()(&v45);
  v28 = MetricsSystemInfo.dictionaryRepresentation.getter();
  v52 = v45;
  sub_24EBAA4C4(&v52);
  sub_24E954060(v28);
  v30 = v29;

  swift_unknownObjectRelease();
  sub_24E88D2AC(&v53);

  *a7 = v36;
  sub_24E612B0C(v46, (a7 + 8));
  *(a7 + 40) = v32;
  *(a7 + 48) = v21;
  *(a7 + 72) = v39;
  *(a7 + 80) = v40;
  *(a7 + 88) = v35 & 1;
  *(a7 + 144) = v38;
  *(a7 + 152) = v37;
  *(a7 + 96) = v27;
  *(a7 + 104) = v30;
  *(a7 + 112) = v42;
  *(a7 + 120) = a5;
  *(a7 + 128) = v41;
  *(a7 + 136) = v23;
  *(a7 + 56) = v33;
  *(a7 + 64) = v34;
  *(a7 + 137) = v25;
  *(a7 + 138) = v26;
  return result;
}

uint64_t sub_24EBA9E24()
{
  v1 = v0;
  v2 = sub_24E608448(MEMORY[0x277D84F90]);
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      v3 = 0xE600000000000000;
      v4 = 0x657461647075;
    }

    else
    {
      v3 = 0xEA00000000006461;
      v4 = 0x6F6C6E776F646572;
    }
  }

  else if (*v1)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6573616863727570;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  v5 = MEMORY[0x277D837D0];
  v43 = MEMORY[0x277D837D0];
  *&v42 = v4;
  *(&v42 + 1) = v3;
  sub_24E612B0C(&v42, v41);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v41, 0x74616C6174736E69, 0xEF657079546E6F69, isUniquelyReferenced_nonNull_native);
  sub_24E643A9C((v1 + 8), &v42);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  *&v41[0] = v2;
  sub_24E81C1D4(&v42, 0x6E656B6F74, 0xE500000000000000, v7);
  v8 = *&v41[0];
  v9 = *(v1 + 5);
  v10 = *(v1 + 6);
  v43 = v5;
  *&v42 = v9;
  *(&v42 + 1) = v10;
  sub_24E612B0C(&v42, v41);

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v41, 0x64496D616461, 0xE600000000000000, v11);
  v12 = v1[88];
  v13 = MEMORY[0x277D839B0];
  v43 = MEMORY[0x277D839B0];
  LOBYTE(v42) = v12;
  sub_24E612B0C(&v42, v41);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v41, 0x6E776F6465527369, 0xEC00000064616F6CLL, v14);
  v15 = v1[137];
  v43 = v13;
  LOBYTE(v42) = v15;
  sub_24E612B0C(&v42, v41);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v41, 0xD000000000000018, 0x800000024FA54F80, v16);
  v17 = *(v1 + 10);
  if (v17)
  {
    v18 = *(v1 + 9);
    v43 = v5;
    *&v42 = v18;
    *(&v42 + 1) = v17;
    sub_24E612B0C(&v42, v41);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0xD000000000000011, 0x800000024FA55020, v19);
  }

  v20 = *(v1 + 19);
  if (v20)
  {
    v21 = *(v1 + 18);
    v43 = v5;
    *&v42 = v21;
    *(&v42 + 1) = v20;
    sub_24E612B0C(&v42, v41);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0x6D657449656E696CLL, 0xE800000000000000, v22);
  }

  v23 = *(v1 + 12);
  if (v23)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    *&v42 = v23;
    sub_24E612B0C(&v42, v41);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0x7363697274656DLL, 0xE700000000000000, v24);
  }

  v25 = *(v1 + 13);
  if (v25)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    *&v42 = v25;
    sub_24E612B0C(&v42, v41);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0xD000000000000011, 0x800000024FA55000, v26);
  }

  v27 = *(v1 + 14);
  if (v27)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    *&v42 = v27;
    sub_24E612B0C(&v42, v41);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0xD000000000000011, 0x800000024FA54FE0, v28);
  }

  v29 = *(v1 + 16);
  if (v29)
  {
    v30 = *(v1 + 15);
    v43 = v5;
    *&v42 = v30;
    *(&v42 + 1) = v29;
    sub_24E612B0C(&v42, v41);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0xD000000000000019, 0x800000024FA54FC0, v31);
  }

  v32 = *(v1 + 8);
  if (v32)
  {
    v33 = *(v1 + 7);
    v43 = v5;
    *&v42 = v33;
    *(&v42 + 1) = v32;
    sub_24E612B0C(&v42, v41);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0x6441746E65726170, 0xEC00000064496D61, v34);
  }

  v35 = v1[138];
  if (v35 != 2)
  {
    v36 = (v35 & 1) == 0;
    if (v35)
    {
      v37 = 0xD000000000000019;
    }

    else
    {
      v37 = 0xD000000000000010;
    }

    if (v36)
    {
      v38 = "gnF";
    }

    else
    {
      v38 = "exceptionDeleted";
    }

    v43 = v5;
    *&v42 = v37;
    *(&v42 + 1) = v38 | 0x8000000000000000;
    sub_24E612B0C(&v42, v41);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0xD000000000000013, 0x800000024FA54FA0, v39);
  }

  return v8;
}

double PurchaseIntent.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;

  return result;
}

double PurchaseIntent.parentAdamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;

  return result;
}

uint64_t PurchaseIntent.overrideBuyParameters.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PurchaseIntent.presentingSceneIdentifier.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t PurchaseIntent.lineItem.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

__n128 PurchaseIntent.init(installationType:purchaseToken:adamId:parentAdamId:overrideBuyParameters:isRedownload:lineItem:metricsDictionary:systemInformation:additionalHeaders:presentingSceneIdentifier:isAppInstalled:requiresExceptionRequest:forceAskToBuyReason:)@<Q0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __n128 a12, uint64_t a13, char a14, char a15, char *a16)
{
  v19 = *a3;
  v18 = a3[1];
  v21 = *a4;
  v20 = a4[1];
  v22 = *a16;
  *a9 = *a1;
  sub_24E612B0C(a2, (a9 + 8));
  *(a9 + 40) = v19;
  *(a9 + 48) = v18;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 144) = a8;
  *(a9 + 152) = a10;
  result = a12;
  *(a9 + 96) = a11;
  *(a9 + 112) = a12;
  *(a9 + 128) = a13;
  *(a9 + 136) = a14;
  *(a9 + 56) = v21;
  *(a9 + 64) = v20;
  *(a9 + 137) = a15;
  *(a9 + 138) = v22;
  return result;
}

uint64_t sub_24EBAA5F8()
{
  result = sub_24F92B098();
  qword_27F22A8E0 = result;
  return result;
}

id static PurchaseCompleteNotificationDetails.notificationName.getter()
{
  if (qword_27F2103A8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22A8E0;

  return v1;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_24EBAA6D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EBAA718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit14PurchaseResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_24EBAA7AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void *ProductPageScrollAction.__allocating_init(title:section:index:clicksOnScroll:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  v32 = a1;
  v33 = a2;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_section) = a3;
  v17 = v16 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_index;
  *v17 = a4;
  v17[8] = a5 & 1;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_clicksOnScroll) = a6;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v18 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v19 = sub_24F928AD8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v16 + v18, a7, v19);
  v21 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v22 = sub_24F929608();
  (*(*(v22 - 8) + 56))(v16 + v21, 1, 1, v22);
  v23 = (v16 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  v24 = v16 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v39, &v36);
  if (*(&v37 + 1))
  {
    v25 = v37;
    *v24 = v36;
    *(v24 + 1) = v25;
    *(v24 + 4) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v28 = v27;
    (*(v13 + 8))(v15, v12);
    v34 = v26;
    v35 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v20 + 8))(a7, v19);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  v29 = v33;
  v16[2] = v32;
  v16[3] = v29;
  v16[4] = 0;
  v16[5] = 0;
  return v16;
}

void *ProductPageScrollAction.init(title:section:index:clicksOnScroll:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, uint64_t a7)
{
  v8 = v7;
  v34 = a6;
  v35 = a1;
  v36 = a2;
  v33 = sub_24F91F6B8();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - v16;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_section) = a3;
  v22 = v8 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_index;
  *v22 = a4;
  v22[8] = a5 & 1;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_clicksOnScroll) = v34;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  (*(v19 + 16))(v21, a7, v18);
  v23 = sub_24F929608();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  v24 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  sub_24E65E064(v45, &v39);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v32 + 8))(v14, v33);
    v37 = v25;
    v38 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v19 + 8))(a7, v18);
  sub_24E601704(v45, &qword_27F235830, &qword_24F93B8C0);
  v28 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v28 + 4) = v44;
  v29 = v43;
  *v28 = v42;
  *(v28 + 1) = v29;
  sub_24E65E0D4(v17, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v30 = v36;
  v8[2] = v35;
  v8[3] = v30;
  v8[4] = 0;
  v8[5] = 0;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

char *ProductPageScrollAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v55 = a2;
  v6 = *v4;
  v50 = v3;
  v51 = v6;
  v54 = sub_24F9285B8();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v47 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v46 - v22;
  v56 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v48 = v13;
  v24 = *(v13 + 8);
  v53 = v12;
  v25 = v12;
  v26 = v24;
  (v24)(v23, v25);
  v52 = v7;
  if (a1)
  {
    v27 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v28 = 0x6E6F6974636573;
    v29 = v51;
    v28[1] = 0xE700000000000000;
    v28[2] = v29;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    v30 = v29;
  }

  else
  {
    sub_24F928398();
    v46 = *(v7 + 16);
    v46(v11, v55, v54);
    type metadata accessor for ProductPageSection();
    swift_allocObject();
    v31 = v50;
    v32 = ProductPageSection.init(deserializing:using:)(v20, v11);
    v30 = v51;
    if (!v31)
    {
      *(v4 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_section) = v32;
      sub_24F928398();
      v34 = sub_24F928258();
      v36 = v35;
      v37 = v23;
      v38 = v53;
      (v26)(v37, v53);
      v39 = v4 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_index;
      *v39 = v34;
      v39[8] = v36 & 1;
      sub_24F928398();
      LOBYTE(v34) = sub_24F928278();
      v51 = v26;
      (v26)(v17, v38);
      v40 = v38;
      *(v4 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_clicksOnScroll) = (v34 == 2) | v34 & 1;
      v41 = v47;
      v42 = v56;
      (*(v48 + 16))(v47, v56, v40);
      v43 = v49;
      v45 = v54;
      v44 = v55;
      v46(v49, v55, v54);
      v30 = Action.init(deserializing:using:)(v41, v43);
      (*(v52 + 8))(v44, v45);
      (v51)(v42, v53);
      return v30;
    }
  }

  (*(v52 + 8))(v55, v54);
  (v26)(v56, v53);
  swift_deallocPartialClassInstance();
  return v30;
}

uint64_t ProductPageScrollAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t ProductPageScrollAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductPageScrollAction(uint64_t a1)
{
  result = qword_27F22A8E8;
  if (!qword_27F22A8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LinkableText.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LinkableText.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t LinkableText.__allocating_init(id:text:linkedSubstrings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24E60169C(a1, v14, &qword_27F235830, &qword_24F93B8C0);
  type metadata accessor for StyledText(0);
  v8 = swift_allocObject();
  *(v8 + 40) = sub_24E609504(MEMORY[0x277D84F90]);
  v9 = OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString;
  v10 = sub_24F91F008();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = (v8 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  *v11 = 0;
  v11[1] = 0;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = 0;
  v12 = swift_allocObject();
  LinkableText.init(id:styledText:linkedSubstrings:)(v14, v8, a4);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  return v12;
}

uint64_t LinkableText.__allocating_init(id:styledText:linkedSubstrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E60169C(a1, &v17, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v18 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v17, &qword_27F235830, &qword_24F93B8C0);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t LinkableText.init(id:styledText:linkedSubstrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v18, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v19 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v18, &qword_27F235830, &qword_24F93B8C0);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t *LinkableText.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = v2;
  v67 = a2;
  v57 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v55 - v6;
  v7 = sub_24F928E68();
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_24F9285B8();
  v9 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v62 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F91F6B8();
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v58 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v64 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  v63 = v15;
  if (v22)
  {
    v68 = v21;
    v69 = v22;
    sub_24F92C7F8();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v14;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v11;
    v28 = v14;
    v29 = v7;
    v30 = v9;
    v32 = v31;
    v65[1](v13, v27);
    v68 = v26;
    v69 = v32;
    v9 = v30;
    v7 = v29;
    v14 = v28;
    sub_24F92C7F8();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v28;
  }

  v65 = v23;
  (v23)(v24, v25);
  v33 = v71;
  v34 = v66;
  *(v66 + 2) = v70;
  *(v34 + 3) = v33;
  v34[8] = v72;
  type metadata accessor for StyledText(0);
  v35 = v64;
  sub_24F928398();
  v36 = v67;
  v9[2](v62, v67, v73);
  sub_24EBAC7F0(&qword_27F22A8F8, 255, type metadata accessor for StyledText, &protocol conformance descriptor for StyledText);
  sub_24F929548();
  v37 = v70;
  if (!v70)
  {
    v45 = sub_24F92AC38();
    sub_24EBAC7F0(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v46 = 0x655464656C797473;
    v47 = v57;
    v46[1] = 0xEA00000000007478;
    v46[2] = v47;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D22530], v45);
    swift_willThrow();
    (v65)(v35, v14);
    sub_24E6585F8((v34 + 4));
    swift_deallocPartialClassInstance();
    (v9[1])(v36, v73);
    return v34;
  }

  v62 = v9;
  v38 = v58;
  sub_24F928398();
  v39 = v59;
  sub_24F9281F8();
  v40 = v38;
  v41 = v65;
  (v65)(v40, v14);
  v42 = v60;
  if ((*(v60 + 48))(v39, 1, v7) == 1)
  {
    sub_24E601704(v39, qword_27F221C40, &unk_24F967D80);
    v43 = sub_24E6091F0(MEMORY[0x277D84F90]);
    (v41)(v35, v14);
    v44 = v67;
LABEL_10:
    v34[2] = v37;
    v34[3] = v43;
    (*(v62 + 1))(v44, v73);
    return v34;
  }

  v63 = v14;
  v48 = v39;
  v49 = v56;
  v50 = (*(v42 + 32))(v56, v48, v7);
  MEMORY[0x28223BE20](v50);
  v51 = v42;
  v59 = v7;
  v44 = v67;
  *(&v55 - 2) = v67;
  type metadata accessor for Action(0);
  v52 = v61;
  v53 = sub_24F928E38();
  if (!v52)
  {
    v43 = v53;
    (v65)(v35, v63);
    (*(v51 + 8))(v49, v59);
    v34 = v66;
    goto LABEL_10;
  }

  sub_24E6585F8((v66 + 4));
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_24EBAC48C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v16 - v13;
  type metadata accessor for Action(0);
  v15 = static Action.makeInstance(byDeserializing:using:)(a3, a4);
  if (v5)
  {
    sub_24F928548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728, &unk_24F97ABB0);
    sub_24F9285D8();
    (*(v12 + 8))(v14, v11);
    sub_24E60169C(v18, v16, &qword_27F226730, &unk_24F984CC0);
    if (v17)
    {
      __swift_project_boxed_opaque_existential_1(v16, v17);
      type metadata accessor for LinkableText();
      sub_24F929EC8();

      sub_24E601704(v18, &qword_27F226730, &unk_24F984CC0);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      sub_24E601704(v18, &qword_27F226730, &unk_24F984CC0);

      sub_24E601704(v16, &qword_27F226730, &unk_24F984CC0);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    *a5 = a1;
    a5[1] = a2;
    a5[2] = v15;
  }
}

uint64_t LinkableText.deinit()
{

  sub_24E6585F8(v0 + 32);
  return v0;
}

uint64_t LinkableText.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t *sub_24EBAC724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = LinkableText.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EBAC7F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_24EBAC8B0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v3 = 0;
      v51 = a1 + 64;
      v4 = 1 << *(a1 + 32);
      if (v4 < 64)
      {
        v5 = ~(-1 << v4);
      }

      else
      {
        v5 = -1;
      }

      v6 = v5 & *(a1 + 64);
      v7 = (v4 + 63) >> 6;
      v52 = v7;
      v53 = a1;
      while (v6)
      {
        v8 = __clz(__rbit64(v6));
        v60 = (v6 - 1) & v6;
LABEL_16:
        v61 = v3;
        v11 = v8 | (v3 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        v15 = *(*(a1 + 56) + 8 * v11);

        v16 = sub_24E76D644(v13, v14);
        v18 = v17;

        if ((v18 & 1) == 0 || (v19 = *(*(v2 + 56) + 8 * v16), v20 = *(v19 + 16), v20 != *(v15 + 16)))
        {
LABEL_57:

          return;
        }

        if (v20 && v19 != v15)
        {
          v21 = v19 + 32;
          v22 = v15 + 32;

          v24 = 0;
          v57 = v2;
          v58 = v23;
          v59 = v15;
          v55 = v21;
          v56 = v20;
          v54 = v15 + 32;
          while (v24 < *(v23 + 16))
          {
            if (v24 >= *(v15 + 16))
            {
              goto LABEL_62;
            }

            v25 = *(v21 + 8 * v24);
            v26 = *(v22 + 8 * v24);
            if (v25 != v26)
            {
              if (*(v25 + 16) != *(v26 + 16))
              {

                goto LABEL_57;
              }

              v62 = v24;
              v27 = v25 + 64;
              v28 = 1 << *(v25 + 32);
              if (v28 < 64)
              {
                v29 = ~(-1 << v28);
              }

              else
              {
                v29 = -1;
              }

              v30 = v29 & *(v25 + 64);
              v31 = (v28 + 63) >> 6;

              v32 = 0;
              while (v30)
              {
                v33 = __clz(__rbit64(v30));
                v63 = (v30 - 1) & v30;
LABEL_39:
                v36 = 16 * (v33 | (v32 << 6));
                v37 = v25;
                v38 = (*(v25 + 48) + v36);
                v39 = *v38;
                v40 = v38[1];
                v41 = (*(v25 + 56) + v36);
                v43 = *v41;
                v42 = v41[1];

                v44 = sub_24E76D644(v39, v40);
                v46 = v45;

                if ((v46 & 1) == 0)
                {
LABEL_52:

LABEL_56:

                  goto LABEL_57;
                }

                v47 = (*(v26 + 56) + 16 * v44);
                v48 = v47[1];
                if (v48)
                {
                  if (!v42)
                  {
                    goto LABEL_55;
                  }

                  if (*v47 == v43 && v48 == v42)
                  {

                    v25 = v37;
                    v30 = v63;
                  }

                  else
                  {
                    v50 = sub_24F92CE08();

                    v25 = v37;
                    v30 = v63;
                    if ((v50 & 1) == 0)
                    {
LABEL_55:

                      goto LABEL_56;
                    }
                  }
                }

                else
                {
                  v25 = v37;
                  v30 = v63;
                  if (v42)
                  {
                    goto LABEL_52;
                  }
                }
              }

              v34 = v32;
              while (1)
              {
                v32 = v34 + 1;
                if (__OFADD__(v34, 1))
                {
                  break;
                }

                if (v32 >= v31)
                {

                  v2 = v57;
                  v23 = v58;
                  v15 = v59;
                  v21 = v55;
                  v20 = v56;
                  v22 = v54;
                  v24 = v62;
                  goto LABEL_22;
                }

                v35 = *(v27 + 8 * v32);
                ++v34;
                if (v35)
                {
                  v33 = __clz(__rbit64(v35));
                  v63 = (v35 - 1) & v35;
                  goto LABEL_39;
                }
              }

              __break(1u);
              goto LABEL_60;
            }

LABEL_22:
            if (++v24 == v20)
            {

              goto LABEL_8;
            }
          }

          goto LABEL_61;
        }

LABEL_8:

        v7 = v52;
        a1 = v53;
        v6 = v60;
        v3 = v61;
      }

      v9 = v3;
      while (1)
      {
        v3 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v3 >= v7)
        {
          return;
        }

        v10 = *(v51 + 8 * v3);
        ++v9;
        if (v10)
        {
          v8 = __clz(__rbit64(v10));
          v60 = (v10 - 1) & v10;
          goto LABEL_16;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
    }
  }
}

uint64_t sub_24EBACC80(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    sub_24E772674(*(v2 + 48) + 136 * v11, &v27);
    v12 = *(*(v2 + 56) + 8 * v11);
    v25 = v30;
    v26 = v28;
    v20 = v31;
    v21 = v29;
    v23 = v34;
    v24 = v32;
    v19 = v33;
    v13 = v35;
    v22 = v27;
    v14 = *(&v27 + 1);

    if (!v14)
    {
      return 1;
    }

    v27 = v22;
    v28 = v26;
    v29 = v21;
    v30 = v25;
    v31 = v20;
    v32 = v24;
    v33 = v19;
    v34 = v23;
    v35 = v13;
    sub_24E76D6EC(&v27);
    v16 = v15;
    sub_24E7726D0(&v27);
    if ((v16 & 1) == 0)
    {

      return 0;
    }

    v18 = sub_24EDD4178(v17, v12);

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBACE54(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_24E76D644(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_24F92CE08();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_24EBACFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A970, &qword_24F988C50);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v54 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v54 + 16))
  {
    v46 = &v43 - v10;
    v47 = v11;
    v13 = 0;
    v44 = a1;
    v14 = *(a1 + 64);
    v43 = a1 + 64;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v48 = v52 + 16;
    v49 = (v52 + 32);
    v45 = (v52 + 8);
    while (1)
    {
      v19 = v47;
      if (!v17)
      {
        break;
      }

      v50 = (v17 - 1) & v17;
      v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_16:
      v25 = *(*(v44 + 48) + v20);
      v27 = v51;
      v26 = v52;
      (*(v52 + 16))(v51, *(v44 + 56) + *(v52 + 72) * v20, v4, v12);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A978, &qword_24F988C58);
      v29 = *(v28 + 48);
      *v19 = v25;
      (*(v26 + 32))(&v19[v29], v27, v4);
      (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
LABEL_17:
      v30 = v19;
      v31 = v46;
      sub_24E6009C8(v30, v46, &qword_27F22A970, &qword_24F988C50);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A978, &qword_24F988C58);
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
      {
        return;
      }

      v33 = *(v32 + 48);
      v34 = *v31;
      (*v49)(v53, &v31[v33], v4);
      v35 = sub_24E76D758(v34);
      if ((v36 & 1) == 0)
      {
        (*v45)(v53, v4);
        return;
      }

      v37 = v51;
      v38 = v52;
      (*(v52 + 16))(v51, *(v54 + 56) + *(v52 + 72) * v35, v4);
      sub_24EBB0AE8(&qword_27F226C38, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v39 = v53;
      v40 = sub_24F92AFF8();
      v41 = *(v38 + 8);
      v41(v37, v4);
      v41(v39, v4);
      v17 = v50;
      if ((v40 & 1) == 0)
      {
        return;
      }
    }

    if (v18 <= v13 + 1)
    {
      v21 = v13 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v23 >= v18)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A978, &qword_24F988C58);
        (*(*(v42 - 8) + 56))(v19, 1, 1, v42);
        v50 = 0;
        v13 = v22;
        goto LABEL_17;
      }

      v24 = *(v43 + 8 * v23);
      ++v13;
      if (v24)
      {
        v50 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v13 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24EBAD4E8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_24E65864C(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_24E76D644(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_24E6585F8(&v24);
      return 0;
    }

    sub_24E65864C(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x253052150](v23, &v24);
    sub_24E6585F8(v23);
    result = sub_24E6585F8(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_24EBAD684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v34 - v8);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v10 = 0;
    v11 = *(a1 + 64);
    v37 = a1 + 64;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v38 = v15;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v39 = (v14 - 1) & v14;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = (*(a1 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(a1 + 56) + 8 * v19);

      v24 = sub_24E76D644(v21, v22);
      v26 = v25;

      if ((v26 & 1) == 0 || (v27 = *(*(a2 + 56) + 8 * v24), v28 = *(v27 + 16), v28 != *(v23 + 16)))
      {
LABEL_26:

        return;
      }

      if (v28 && v27 != v23)
      {
        v35 = a1;
        v36 = a2;
        v29 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v40 = v27 + v29;
        v30 = v23 + v29;

        v31 = 0;
        while (v31 < *(v27 + 16))
        {
          v32 = *(v41 + 72) * v31;
          sub_24EBB0A80(v40 + v32, v9, type metadata accessor for Player);
          if (v31 >= *(v23 + 16))
          {
            goto LABEL_30;
          }

          sub_24EBB0A80(v30 + v32, v6, type metadata accessor for Player);
          v33 = _s12GameStoreKit6PlayerV2eeoiySbAC_ACtFZ_0(v9, v6);
          sub_24E7E3948(v6, type metadata accessor for Player);
          sub_24E7E3948(v9, type metadata accessor for Player);
          if (!v33)
          {

            goto LABEL_26;
          }

          if (v28 == ++v31)
          {

            a1 = v35;
            a2 = v36;
            goto LABEL_6;
          }
        }

        goto LABEL_29;
      }

LABEL_6:

      v15 = v38;
      v14 = v39;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        return;
      }

      v18 = *(v37 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

void sub_24EBAD98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Game(0);
  v65 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v51 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
  v58 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A960, &qword_24F988C40);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v60 = v15;
    v56 = v6;
    v18 = 0;
    v54 = a1;
    v21 = *(a1 + 64);
    v20 = a1 + 64;
    v19 = v21;
    v22 = 1 << *(v20 - 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v19;
    v25 = (v22 + 63) >> 6;
    v53 = v58 + 16;
    v61 = &v51 - v14;
    v62 = (v58 + 32);
    v55 = (v58 + 8);
    v51 = v20;
    v52 = v25;
    while (v24)
    {
      v63 = (v24 - 1) & v24;
      v26 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
      v32 = v54;
      v34 = v57;
      v33 = v58;
      v35 = v66;
      (*(v58 + 16))(v57, *(v54 + 48) + *(v58 + 72) * v26, v66, v16);
      v36 = v64;
      sub_24EBB0A80(*(v32 + 56) + *(v65 + 72) * v26, v64, type metadata accessor for Game);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A968, &qword_24F988C48);
      v38 = *(v37 + 48);
      v39 = *(v33 + 32);
      v29 = v60;
      v39(v60, v34, v35);
      sub_24E636644(v36, v29 + v38);
      (*(*(v37 - 8) + 56))(v29, 0, 1, v37);
      v17 = v61;
      v25 = v52;
LABEL_17:
      sub_24E6009C8(v29, v17, &qword_27F22A960, &qword_24F988C40);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A968, &qword_24F988C48);
      if ((*(*(v40 - 8) + 48))(v17, 1, v40) == 1)
      {
        return;
      }

      v41 = *(v40 + 48);
      v42 = v59;
      v43 = v66;
      (*v62)(v59, v17, v66);
      v44 = &v17[v41];
      v45 = v56;
      sub_24E636644(v44, v56);
      v46 = sub_24E76DF04(v42);
      LOBYTE(v41) = v47;
      (*v55)(v42, v43);
      if ((v41 & 1) == 0)
      {
        sub_24E7E3948(v45, type metadata accessor for Game);
        return;
      }

      v48 = v64;
      sub_24EBB0A80(*(a2 + 56) + *(v65 + 72) * v46, v64, type metadata accessor for Game);
      v49 = _s12GameStoreKit0A0V2eeoiySbAC_ACtFZ_0(v48, v45);
      sub_24E7E3948(v48, type metadata accessor for Game);
      sub_24E7E3948(v45, type metadata accessor for Game);
      v17 = v61;
      v24 = v63;
      if (!v49)
      {
        return;
      }
    }

    if (v25 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v25;
    }

    v28 = v27 - 1;
    v29 = v60;
    while (1)
    {
      v30 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v30 >= v25)
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A968, &qword_24F988C48);
        (*(*(v50 - 8) + 56))(v29, 1, 1, v50);
        v63 = 0;
        v18 = v28;
        goto LABEL_17;
      }

      v31 = *(v51 + 8 * v30);
      ++v18;
      if (v31)
      {
        v63 = (v31 - 1) & v31;
        v26 = __clz(__rbit64(v31)) | (v30 << 6);
        v18 = v30;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24EBADF38(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_24E76D644(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBAE06C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 56) + 72 * v12;
    v17 = *(v16 + 64);
    v19 = *(v16 + 32);
    v18 = *(v16 + 48);
    v50 = *(v16 + 16);
    v20 = *v16;
    v51 = v19;
    v52 = v18;
    v49 = v20;
    v53 = v17;
    v33 = v18;
    v34 = v50;
    v31 = v19;
    v32 = v20;

    sub_24E627A14(&v49, &v44);
    if (!v14)
    {
      return 1;
    }

    v49 = v32;
    v50 = v34;
    v51 = v31;
    v52 = v33;
    v53 = v17;
    v21 = sub_24E76D644(v15, v14);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      v46 = v51;
      v47 = v52;
      v48 = v53;
      v44 = v49;
      v45 = v50;
      sub_24E627A70(&v44);
      return 0;
    }

    v24 = *(a2 + 56) + 72 * v21;
    v40[0] = *v24;
    v26 = *(v24 + 32);
    v25 = *(v24 + 48);
    v27 = *(v24 + 16);
    v41 = *(v24 + 64);
    v40[2] = v26;
    v40[3] = v25;
    v40[1] = v27;
    v28 = *(v24 + 48);
    v37 = *(v24 + 32);
    v38 = v28;
    v39 = *(v24 + 64);
    v29 = *(v24 + 16);
    v35 = *v24;
    v36 = v29;
    v30 = _s12GameStoreKit0A23ActivityDraftPlayerInfoV2eeoiySbAC_ACtFZ_0(&v35, &v49);
    v42[2] = v37;
    v42[3] = v38;
    v43 = v39;
    v42[0] = v35;
    v42[1] = v36;
    sub_24E627A14(v40, &v44);
    sub_24E627A70(v42);
    v46 = v51;
    v47 = v52;
    v48 = v53;
    v44 = v49;
    v45 = v50;
    result = sub_24E627A70(&v44);
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBAE2BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  __swift_allocate_value_buffer(v0, qword_27F22A908);
  __swift_project_value_buffer(v0, qword_27F22A908);
  return sub_24F928C68();
}

uint64_t static ArcadeSeeAllGamesPagePresenter.displayStyleKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2103B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  v3 = __swift_project_value_buffer(v2, qword_27F22A908);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ArcadeSeeAllGamesPagePresenter.__allocating_init(objectGraph:pageUrl:facetsPresenter:automaticallyManageFacetChanges:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  swift_allocObject();
  return ArcadeSeeAllGamesPagePresenter.init(objectGraph:pageUrl:facetsPresenter:automaticallyManageFacetChanges:)(a1, a2, a3, v4);
}

uint64_t ArcadeSeeAllGamesPagePresenter.init(objectGraph:pageUrl:facetsPresenter:automaticallyManageFacetChanges:)(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v62 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A920, &qword_24F9D7000);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v44 - v9;
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F928188();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v53 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v49 = sub_24F9288E8();
  v18 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageTitle);
  v22._object = 0x800000024FA55100;
  v22._countAndFlagsBits = 0xD000000000000010;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  *v21 = localizedString(_:comment:)(v22, v23);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v58 = v11;
  v59 = v10;
  v24 = *(v11 + 16);
  v60 = a2;
  v52 = v24;
  v48 = v11 + 16;
  v24(v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageUrl, a2, v10);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_facetsPresenter) = a3;
  v57 = a4;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_automaticallyManageFacetChanges) = a4;
  sub_24F929388();

  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2103B0 != -1)
  {
    swift_once();
  }

  v61 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  __swift_project_value_buffer(v25, qword_27F22A908);
  sub_24F928868();

  v26 = sub_24F92CB88();

  v27 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle) = v26 == 1;
  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  v28 = v63[0];
  sub_24F929EB8();
  if (qword_27F2108F0 != -1)
  {
    swift_once();
  }

  v29 = v49;
  (*(v18 + 104))(v20, *MEMORY[0x277D21C38], v49);
  sub_24F92A368();
  (*(v18 + 8))(v20, v29);
  v30 = v51;
  sub_24F92A408();
  (*(v50 + 8))(v17, v30);
  v31 = sub_24F929EA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
  v51 = v31;
  v63[0] = v31;
  v63[1] = MEMORY[0x277D221C0];
  v32 = v53;
  sub_24F928178();
  sub_24F928F88();
  (*(v54 + 8))(v32, v55);
  v55 = v28;
  v33 = v56;
  v34 = v59;
  v35 = v52;
  v52(v56, v60, v59);
  swift_beginAccess();
  LOBYTE(v32) = *(v5 + v27);
  type metadata accessor for ArcadeSeeAllGamesContentPresenter(0);
  v36 = swift_allocObject();
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves) = MEMORY[0x277D84F90];
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelfContentTypes) = MEMORY[0x277D84FA0];
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = 0;
  v37 = (v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken);
  *v37 = 0u;
  v37[1] = 0u;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage) = 0;
  v35(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl, v33, v34);
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_facetsPresenter) = v61;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) = v32;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

  v39 = sub_24EC8415C(v38, 0, 0, 0);

  v58 = *(v58 + 8);
  (v58)(v33, v34);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter) = v39;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

  v41 = sub_24EC8415C(v40, 0, 0, 0);

  if (v57)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A648, &unk_24F9876C0);
    sub_24EBB00D4();

    sub_24F9288B8();
    type metadata accessor for ArcadeSeeAllGamesPagePresenter(0);
    v42 = v45;
    sub_24F9288C8();

    (v58)(v60, v59);
    __swift_destroy_boxed_opaque_existential_1(v63);
    (*(v46 + 8))(v42, v47);
  }

  else
  {

    (v58)(v60, v59);
  }

  return v41;
}

uint64_t sub_24EBAEDE0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageTitle);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24EBAEE4C()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_24EBAEEA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_24EBAEF08(&v7);
}

double sub_24EBAEF08(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = *a1;
  v8 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  if (*(v1 + v8))
  {
    v9 = 0x746361706D6F63;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (v7)
  {
    v10 = 0x746361706D6F63;
  }

  else
  {
    v10 = 0x746C7561666564;
  }

  if (v9 == v10)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v12 = sub_24F92CE08();
    swift_bridgeObjectRelease_n();
    if ((v12 & 1) == 0)
    {
      sub_24F929388();
      _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
      if (qword_27F2103B0 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v3, qword_27F22A908);
      (*(v4 + 16))(v6, v13, v3);
      if (*(v1 + v8))
      {
        v14 = 0x746361706D6F63;
      }

      else
      {
        v14 = 0x746C7561666564;
      }

      v15[1] = v14;
      v15[2] = 0xE700000000000000;
      sub_24F928878();

      return sub_24EBB0184();
    }
  }

  return result;
}

uint64_t sub_24EBAF11C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

double sub_24EBAF170(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v4;
  return sub_24EBAEF08(&v6);
}

void (*sub_24EBAF1D0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24EBAF264;
}

void sub_24EBAF264(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_24EBAEF08(v6);

  free(v2);
}

uint64_t sub_24EBAF2E0(uint64_t a1)
{
  v3 = a1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(a1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v6 = v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v7 = *(v6 + 8);
  v8 = v5 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  *(v8 + 8) = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(*(v1 + v4) + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = &off_2861E5B48;
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v10 + 16) + 16) + 8))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EBAF48C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EBAF4F8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

double sub_24EBAF5FC(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(v3 + v4) = a1;
  v5 = v3 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  if (a1)
  {
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return result;
    }

    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 8);
    v10 = *(v9 + 8);

    v10(ObjectType, v9);
  }

  else
  {
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return result;
    }

    v11 = *(v5 + 8);
    v12 = swift_getObjectType();
    v13 = *(v11 + 8);
    v14 = *(v13 + 16);

    v14(v12, v13);
  }

  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_24EBAF72C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v2 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*sub_24EBAF780(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v6 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + v6);
  return sub_24EBAF824;
}

void sub_24EBAF824(uint64_t a1)
{
  v1 = *a1;
  sub_24EBAF5FC(*(*a1 + 32));

  free(v1);
}

BOOL sub_24EBAF864()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v2 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
  swift_beginAccess();
  sub_24E94E17C(v1 + v2, v5);
  v3 = v6 != 0;
  sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  return v3;
}

double sub_24EBAF8E4()
{

  sub_24ED07818();

  return result;
}

uint64_t sub_24EBAF92C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v2 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    return sub_24F92C738();
  }

  else
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_24EBAF9A0(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x253052270](a1, v6);

    return v7;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v7 = *(v6 + 8 * a1 + 32);

    return v7;
  }

  __break(1u);
  return result;
}

void sub_24EBAFA68(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v6 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v7 = *(v5 + v6);

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v5 + v6) = v7;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    v7 = sub_24ECDE964(v7);
    *(v5 + v6) = v7;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;
    *(v5 + v6) = v7;
    swift_endAccess();

    return;
  }

  __break(1u);
}

BOOL sub_24EBAFB4C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5 >> 62)
  {
    v6 = sub_24F92C738();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 > a1;
}

unint64_t sub_24EBAFBD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);

  v2 = sub_24F91FA18();
  v3 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (v2 < sub_24F92C738())
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_3:
  result = sub_24F91FA18();
  v6 = *(v1 + v3);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v11 = result;

    v7 = MEMORY[0x253052270](v11, v6);

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 8 * result + 32);

LABEL_7:
    v8 = *(v7 + 24);

    v9 = *(v8 + 16);

    v10 = sub_24F91FA08();

    return v10 < v9;
  }

  __break(1u);
  return result;
}

double sub_24EBAFD20()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
  }

  else
  {
    v2 = sub_24F92CE08();

    if ((v2 & 1) == 0)
    {
      v3 = *(v0 + v1);
      *(v0 + v1) = 1;
      goto LABEL_6;
    }
  }

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
LABEL_6:
  v5 = v3;
  return sub_24EBAEF08(&v5);
}

double sub_24EBAFDE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A658, &qword_24F988B80);
  sub_24F92BF18();
  v1 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter) + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions);
  if (!v1)
  {

    return sub_24EBB0184();
  }

  v2 = sub_24EBACC80(v4, v1);

  if ((v2 & 1) == 0)
  {
    return sub_24EBB0184();
  }

  return result;
}

uint64_t sub_24EBAFEF4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view;

  return sub_24E883630(v3);
}

uint64_t ArcadeSeeAllGamesPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view);
  return v0;
}

uint64_t ArcadeSeeAllGamesPagePresenter.__deallocating_deinit()
{
  ArcadeSeeAllGamesPagePresenter.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EBB00D4()
{
  result = qword_27F22A940;
  if (!qword_27F22A940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A648, &unk_24F9876C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A940);
  }

  return result;
}

uint64_t type metadata accessor for ArcadeSeeAllGamesPagePresenter(uint64_t a1)
{
  result = qword_27F22A950;
  if (!qword_27F22A950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24EBB0184()
{
  v1 = v0;
  v2 = sub_24F91F4A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
  v8 = *(v3 + 16);
  v8(v6, v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageUrl, v2, v4);
  v9 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_facetsPresenter);
  v10 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  v11 = *(v1 + v10);
  type metadata accessor for ArcadeSeeAllGamesContentPresenter(0);
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves) = MEMORY[0x277D84F90];
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelfContentTypes) = MEMORY[0x277D84FA0];
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = 0;
  v13 = (v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken);
  *v13 = 0u;
  v13[1] = 0u;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = 0;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage) = 0;
  (v8)(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl, v6, v2);
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_facetsPresenter) = v9;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) = v11;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

  v14 = sub_24EC8415C(v7, 0, 0, 0);

  (*(v3 + 8))(v6, v2);
  v15 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter) = v14;

  sub_24EBAF2E0(v15);

  memset(v18, 0, sizeof(v18));
  swift_beginAccess();
  sub_24EA095A4(v18, v1 + 40);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(v18, &qword_27F224F98, &unk_24F974A70);
  sub_24EC80D60();

  sub_24ED06378();

  return result;
}

uint64_t sub_24EBB04C4(uint64_t a1)
{
  result = sub_24EBB0AE8(&qword_27F22A948, type metadata accessor for ArcadeSeeAllGamesPagePresenter, &protocol conformance descriptor for BasePresenter);
  *(a1 + 8) = result;
  return result;
}

double sub_24EBB051C@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_24EBB0578@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EBB05D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EBB0630(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EBB0694@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EBB072C(uint64_t a1)
{
  result = sub_24F91F4A8();
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

uint64_t sub_24EBB0A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EBB0AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EBB0B40(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  type metadata accessor for LaunchGameActivityAction(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBB0BDC, 0, 0);
}

uint64_t sub_24EBB0BDC()
{
  v1 = v0[19];
  v2 = [objc_opt_self() proxyForLocalPlayer];
  v3 = [v2 gameServicePrivate];
  v0[22] = v3;

  v4 = sub_24F92B098();
  v0[23] = v4;
  if (!*(v1 + 64))
  {
    sub_24E6086DC(MEMORY[0x277D84F90]);
  }

  v5 = v0[19];

  v6 = sub_24F92AE28();
  v0[24] = v6;

  v7 = sub_24F92B098();
  v0[25] = v7;
  if (*(v5 + 40))
  {
    v8 = sub_24F92B098();
  }

  else
  {
    v8 = 0;
  }

  v0[26] = v8;
  if (*(v0[19] + 56))
  {
    v9 = sub_24F92B098();
  }

  else
  {
    v9 = 0;
  }

  v0[27] = v9;
  v0[2] = v0;
  v0[3] = sub_24EBB0E1C;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AA00, &unk_24F988CF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24EBB11A4;
  v0[13] = &block_descriptor_56;
  v0[14] = v10;
  [v3 createGameActivityWithIdentifier:v4 properties:v6 bundleID:v7 referenceLeaderboardID:v8 referenceAchievementDescriptionID:v9 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24EBB0E1C()
{

  return MEMORY[0x2822009F8](sub_24EBB0EFC, 0, 0);
}

uint64_t sub_24EBB0EFC()
{
  v29 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  swift_unknownObjectRelease();

  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];
  v9 = sub_24F9220D8();
  __swift_project_value_buffer(v9, qword_27F39E8B0);
  sub_24EBB1464(v8, v7);
  sub_24EBB1464(v8, v6);
  v10 = sub_24F9220B8();
  v11 = sub_24F92BD98();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[20];
  v14 = v0[21];
  if (v12)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315394;
    v17 = *v14;
    v18 = v14[1];

    sub_24EBB1770(v14);
    v19 = sub_24E7620D4(v17, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = *(v13 + 16);
    v21 = *(v13 + 24);

    sub_24EBB1770(v13);
    v22 = sub_24E7620D4(v20, v21, &v28);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_24E5DD000, v10, v11, "Game %s: Activity %s deeplink launched", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v16, -1, -1);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  else
  {

    sub_24EBB1770(v13);
    sub_24EBB1770(v14);
  }

  v23 = v0[18];
  v24 = *MEMORY[0x277D21CA8];
  v25 = sub_24F928AE8();
  (*(*(v25 - 8) + 104))(v23, v24, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_24EBB11A4(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

unint64_t sub_24EBB11F4()
{
  result = qword_27F2162D8;
  if (!qword_27F2162D8)
  {
    type metadata accessor for LaunchGameActivityAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2162D8);
  }

  return result;
}

uint64_t sub_24EBB1254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for LaunchGameActivityAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_24EBB1464(a1, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_24EBB15D0(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v10 = sub_24F92A9E8();
  v11 = sub_24F92B858();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24F988CE8;
  v12[5] = v9;
  v12[6] = v10;

  sub_24E6959D8(0, 0, v4, &unk_24F94D7B0, v12);

  return v10;
}

uint64_t sub_24EBB1464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameActivityAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBB14C8()
{
  v1 = (type metadata accessor for LaunchGameActivityAction(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[11];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EBB15D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameActivityAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBB1634(uint64_t a1)
{
  v4 = *(type metadata accessor for LaunchGameActivityAction(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24EBB0B40(a1, v1 + v5);
}

uint64_t sub_24EBB1710()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EBB1770(uint64_t a1)
{
  v2 = type metadata accessor for LaunchGameActivityAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ArtworkLoaderURLSession.__allocating_init(configuration:delegate:delegateQueue:)(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v6;
}

id ArtworkLoaderURLSession.init(configuration:delegate:delegateQueue:)(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = v3;
  v9.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v9, sel_initWithConfiguration_delegate_delegateQueue_, a1, a2, a3);

  swift_unknownObjectRelease();
  return v7;
}

id ArtworkLoaderURLSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL AspectRatio.isPortrait.getter(uint64_t a1)
{
  sub_24F9222C8();
  v2 = v1;
  sub_24F922338();
  return v2 < v3;
}

double AspectRatio.inverted.getter(uint64_t a1)
{
  sub_24F922338();
  sub_24F9222C8();

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  return result;
}

CGSize __swiftcall AspectRatio.maxSize(filling:)(CGSize filling)
{
  height = filling.height;
  width = filling.width;
  v3 = sub_24F922348();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_24F9222E8();
  v8 = v7;
  sub_24F9222E8();
  if (v8 >= v9)
  {
    sub_24F922308();
    height = v11;
  }

  else
  {
    sub_24F9222F8();
    width = v10;
  }

  (*(v4 + 8))(v6, v3);
  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

CGSize __swiftcall AspectRatio.maxSize(fitting:)(CGSize fitting)
{
  height = fitting.height;
  width = fitting.width;
  v3 = sub_24F922348();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_24F9222E8();
  v8 = v7;
  sub_24F9222E8();
  if (v9 >= v8)
  {
    sub_24F922308();
    height = v11;
  }

  else
  {
    sub_24F9222F8();
    width = v10;
  }

  (*(v4 + 8))(v6, v3);
  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

BOOL AspectRatio.isLandscape.getter(uint64_t a1)
{
  sub_24F9222C8();
  v2 = v1;
  sub_24F922338();
  return v2 >= v3;
}

uint64_t sub_24EBB1C90(uint64_t a1)
{
  v2 = sub_24EBB1E3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EBB1CCC(uint64_t a1)
{
  v2 = sub_24EBB1E3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EBB1D28(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AA08, &qword_24F988DF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBB1E3C();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EBB1E3C()
{
  result = qword_27F22AA10;
  if (!qword_27F22AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA10);
  }

  return result;
}

unint64_t sub_24EBB1EA4()
{
  result = qword_27F22AA18;
  if (!qword_27F22AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA18);
  }

  return result;
}

unint64_t sub_24EBB1EFC()
{
  result = qword_27F22AA20;
  if (!qword_27F22AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA20);
  }

  return result;
}

uint64_t PreorderStatus.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_24EBB209C();
  sub_24F928218();
  v7 = sub_24F9285B8();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_24F928388();
  result = (*(*(v8 - 8) + 8))(a1, v8);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

unint64_t sub_24EBB209C()
{
  result = qword_27F22AA28;
  if (!qword_27F22AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA28);
  }

  return result;
}

GameStoreKit::PreorderStatus_optional __swiftcall PreorderStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PreorderStatus.rawValue.getter()
{
  v1 = 0x726F687475416F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6F54656C62616E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C65636E6163;
  }
}

uint64_t sub_24EBB21C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726F687475416F6ELL;
  v4 = 0xEF6E6F6974617A69;
  if (v2 != 1)
  {
    v3 = 0x6F54656C62616E75;
    v4 = 0xEE006C65636E6143;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x64656C65636E6163;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x726F687475416F6ELL;
  v8 = 0xEF6E6F6974617A69;
  if (*a2 != 1)
  {
    v7 = 0x6F54656C62616E75;
    v8 = 0xEE006C65636E6143;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x64656C65636E6163;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24EBB22F8()
{
  result = qword_27F22AA30;
  if (!qword_27F22AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA30);
  }

  return result;
}

uint64_t sub_24EBB234C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EBB2408(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EBB24B0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EBB2574(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEF6E6F6974617A69;
  v5 = 0x726F687475416F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6F54656C62616E75;
    v4 = 0xEE006C65636E6143;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64656C65636E6163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24EBB25EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  sub_24EBB209C();
  sub_24F928218();
  v8 = sub_24F9285B8();
  (*(*(v8 - 8) + 8))(a2, v8);
  v9 = sub_24F928388();
  result = (*(*(v9 - 8) + 8))(a1, v9);
  if (!v4)
  {
    *a4 = v11;
  }

  return result;
}

uint64_t JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_24F928698();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v47 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_24F929158();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24F928818();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F922A48();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = a1;
  sub_24F922A38();
  v17 = swift_allocObject();
  *(v17 + 24) = a3;
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = v17;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  sub_24E5FCA4C(a5, a6);
  v19 = sub_24F922A58();
  if ((a4 & 1) == 0)
  {
    v31 = v19;
    sub_24E824448(a5, a6);

    swift_unknownObjectRelease();
    return v31;
  }

  v51 = v19;
  v20 = a1;
  ObjectType = swift_getObjectType();
  v22 = a3;
  v23 = *(a3 + 32);
  v40 = ObjectType;
  v23(v52, ObjectType, a3);
  v41 = a6;
  if (!v53)
  {
    sub_24E601704(v52, &qword_27F224F98, &unk_24F974A70);
LABEL_10:
    v26 = a5;
    v54 = 0u;
    v55 = 0u;
    v28 = v20;
    v29 = v45;
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(v52, v53);
  v24 = v42;
  sub_24F92AD48();
  v25 = sub_24F9286C8();
  (*(v43 + 8))(v24, v44);
  if (!v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
    goto LABEL_10;
  }

  v26 = a5;
  if (*(v25 + 16))
  {
    v27 = sub_24E76D644(0x6C725565676170, 0xE700000000000000);
    v28 = v20;
    v29 = v45;
    if (v30)
    {
      sub_24E643A9C(*(v25 + 56) + 32 * v27, &v54);
    }

    else
    {

      v54 = 0u;
      v55 = 0u;
    }
  }

  else
  {

    v54 = 0u;
    v55 = 0u;
    v28 = v20;
    v29 = v45;
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  if (*(&v55 + 1))
  {
    v35 = swift_dynamicCast();
    if (v35)
    {
      v33 = v52[0];
    }

    else
    {
      v33 = 0;
    }

    if (v35)
    {
      v34 = v52[1];
    }

    else
    {
      v34 = 0;
    }

    goto LABEL_21;
  }

LABEL_11:
  sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
  v33 = 0;
  v34 = 0;
LABEL_21:
  type metadata accessor for PageMetricsEvent();
  swift_initStackObject();
  v36 = v28;
  PageMetricsEvent.init(error:pageUrl:)(v28, v33, v34);
  (*(v22 + 88))(v40, v22);
  v37 = v47;
  sub_24E98D0D4();
  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v38 = sub_24F929AB8();
  __swift_project_value_buffer(v38, qword_27F22E3B8);
  sub_24F929138();
  swift_unknownObjectRelease();

  sub_24E824448(v26, v41);

  (*(v49 + 8))(v37, v50);
  (*(v46 + 8))(v29, v48);
  return v51;
}

uint64_t sub_24EBB2D40()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

void sub_24EBB2D78(char a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_24F928698();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F929158();
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = v13;
    _s12GameStoreKit17ClickMetricsEventC014makeErrorRetryF0ACyFZ_0();
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {

      if (a3)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    v22 = v9;
    v16 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v16 + 88))(ObjectType, v16);
    swift_unknownObjectRelease();
    sub_24E98C2FC();
    if (qword_27F210658 != -1)
    {
      swift_once();
    }

    v18 = sub_24F929AB8();
    __swift_project_value_buffer(v18, qword_27F22E3B8);
    sub_24F929138();

    (*(v22 + 8))(v11, v8);
    (*(v23 + 8))(v15, v12);
  }

  if (a3)
  {
LABEL_7:

    a3(v19);
    sub_24E824448(a3, a4);
    return;
  }

LABEL_9:
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(a2 + 24);
    v21 = swift_getObjectType();
    (*(*(v20 + 24) + 32))(1, v21);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24EBB304C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EBB30EC()
{
  if (*v0)
  {
    return 0x79726F6765746163;
  }

  else
  {
    return 0x64496D616461;
  }
}

uint64_t sub_24EBB3128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEA00000000006449)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EBB3208(uint64_t a1)
{
  v2 = sub_24EBB38A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EBB3244(uint64_t a1)
{
  v2 = sub_24EBB38A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EBB32FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AA68, &qword_24F989030);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBB38A0();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

void *sub_24EBB3494(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AA58, &qword_24F989028);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBB38A0();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    v9 = sub_24F92CC28();
    v11 = (v1 + OBJC_IVAR____TtC12GameStoreKit21ArcadeDownloadPackApp_adamId);
    *v11 = v9;
    v11[1] = v12;
    v19 = 1;
    v13 = sub_24F92CC28();
    v14 = (v1 + OBJC_IVAR____TtC12GameStoreKit21ArcadeDownloadPackApp_categoryId);
    *v14 = v13;
    v14[1] = v15;
    v18.receiver = v1;
    v18.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v18, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

void *sub_24EBB36C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_24EBB3494(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_24EBB37A0(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_24F92B098();

  return v3;
}

unint64_t sub_24EBB38A0()
{
  result = qword_27F22AA60;
  if (!qword_27F22AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA60);
  }

  return result;
}

unint64_t sub_24EBB3908()
{
  result = qword_27F22AA70;
  if (!qword_27F22AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA70);
  }

  return result;
}

unint64_t sub_24EBB3960()
{
  result = qword_27F22AA78;
  if (!qword_27F22AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA78);
  }

  return result;
}

unint64_t sub_24EBB39B8()
{
  result = qword_27F22AA80;
  if (!qword_27F22AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA80);
  }

  return result;
}

uint64_t InAppPurchaseShowcase.subtitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t InAppPurchaseShowcase.descriptionText.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t InAppPurchaseShowcase.__allocating_init(id:lockup:subtitle:descriptionText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  sub_24E65E064(a1, &v31);
  if (*(&v32 + 1))
  {
    v34 = v31;
    v35 = v32;
    v36 = v33;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v27 = a2;
    v28 = a3;
    v18 = v17;
    v19 = a4;
    v20 = a5;
    v21 = a6;
    v23 = v22;
    (*(v13 + 8))(v15, v12);
    v29 = v18;
    v30 = v23;
    a6 = v21;
    a5 = v20;
    a4 = v19;
    a2 = v27;
    a3 = v28;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v31);
  }

  v24 = v35;
  *(v16 + 56) = v34;
  *(v16 + 72) = v24;
  *(v16 + 88) = v36;
  sub_24E9BBAA8(a1);
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  return v16;
}

uint64_t InAppPurchaseShowcase.init(id:lockup:subtitle:descriptionText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v32);
  if (*(&v33 + 1))
  {
    v35 = v32;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v28 = a2;
    v29 = a3;
    v19 = v18;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v30 = v19;
    v31 = v24;
    a6 = v22;
    a5 = v21;
    a4 = v20;
    a2 = v28;
    a3 = v29;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v32);
  }

  sub_24E9BBAA8(a1);
  v25 = v36;
  *(v7 + 56) = v35;
  *(v7 + 72) = v25;
  *(v7 + 88) = v37;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  return v7;
}

uint64_t InAppPurchaseShowcase.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  InAppPurchaseShowcase.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t InAppPurchaseShowcase.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v54 = sub_24F9285B8();
  v3 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F6B8();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v53 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  v51 = v9;
  if (v19)
  {
    v55 = v18;
    v56 = v19;
    sub_24F92C7F8();
    v20 = v10;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v22 = v6;
    v23 = v10;
    v24 = v5;
    v25 = v3;
    v27 = v26;
    (*(v49 + 8))(v8, v22);
    v55 = v21;
    v56 = v27;
    v3 = v25;
    v5 = v24;
    sub_24F92C7F8();
    v20 = v23;
  }

  v49 = *(v20 + 8);
  (v49)(v17, v9);
  v28 = v58;
  v29 = v60;
  *(v60 + 56) = v57;
  *(v29 + 72) = v28;
  *(v29 + 88) = v59;
  v30 = v53;
  sub_24F928398();
  v31 = v5;
  v32 = v5;
  v33 = v52;
  v34 = v54;
  (*(v3 + 16))(v31, v52, v54);
  type metadata accessor for InAppPurchaseLockup(0);
  swift_allocObject();
  v35 = v50;
  v36 = InAppPurchaseLockup.init(deserializing:using:)(v14, v32);
  if (v35)
  {
    (*(v3 + 8))(v33, v34);
    (v49)(v30, v51);
    sub_24E6585F8(v29 + 56);
    type metadata accessor for InAppPurchaseShowcase();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v29 + 16) = v36;
    v37 = v48;
    v50 = 0;
    sub_24F928398();
    v38 = sub_24F928348();
    v40 = v39;
    v41 = v51;
    v42 = v49;
    (v49)(v37, v51);
    *(v60 + 24) = v38;
    *(v60 + 32) = v40;
    sub_24F928398();
    v43 = sub_24F928348();
    v45 = v44;
    (*(v3 + 8))(v33, v54);
    v42(v30, v41);
    v46 = v41;
    v29 = v60;
    v42(v37, v46);
    *(v29 + 40) = v43;
    *(v29 + 48) = v45;
  }

  return v29;
}

uint64_t sub_24EBB4304@<X0>(void *a2@<X8>)
{
  a2[3] = type metadata accessor for InAppPurchaseShowcase();
  *a2 = v2;
}

uint64_t InAppPurchaseShowcase.deinit()
{

  sub_24E6585F8(v0 + 56);
  return v0;
}

uint64_t InAppPurchaseShowcase.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 56);

  return swift_deallocClassInstance();
}