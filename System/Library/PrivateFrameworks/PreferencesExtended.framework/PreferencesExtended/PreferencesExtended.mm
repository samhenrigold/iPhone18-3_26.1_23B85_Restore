uint64_t type metadata accessor for PreferencesControllerRepresentableModel(uint64_t a1)
{
  result = qword_281219500;
  if (!qword_281219500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B8B7BA0(uint64_t a1)
{
  result = type metadata accessor for PreferencesControllerRecipe(319);
  if (v2 <= 0x3F)
  {
    result = sub_21B8D2BD0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21B8B7C98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B8B7CD0(uint64_t a1)
{
  type metadata accessor for PreferencesControllerRecipe.Kind(319);
  if (v1 <= 0x3F)
  {
    sub_21B8B8280(319, qword_281218C00, &unk_27CD99520, &qword_21B8D4DC0, type metadata accessor for WeakBox);
    if (v2 <= 0x3F)
    {
      sub_21B8B8280(319, qword_2812193B0, &qword_27CD99478, &unk_21B8D4CD0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21B8B8280(319, &qword_2812193A8, &qword_27CD99488, &qword_21B8D4CE0, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21B8B83DC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21B8B7E40(uint64_t a1)
{
  sub_21B8B7EDC();
  if (v1 <= 0x3F)
  {
    sub_21B8B7F7C(319);
    if (v2 <= 0x3F)
    {
      sub_21B8B8110();
      if (v3 <= 0x3F)
      {
        sub_21B8B8250();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_21B8B7EDC()
{
  if (!qword_281218B78)
  {
    v0 = sub_21B8B7F34(0, &unk_281218B68, 0x277D3FAD8);
    if (!v1)
    {
      atomic_store(v0, &qword_281218B78);
    }
  }
}

uint64_t sub_21B8B7F34(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_21B8B7F7C(uint64_t a1)
{
  if (!qword_281218B90)
  {
    type metadata accessor for NSBundle.PreferencesPluginLocation(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD994A8, "L!");
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_281218B90);
    }
  }
}

uint64_t type metadata accessor for NSBundle.PreferencesPluginLocation(uint64_t a1)
{
  result = qword_281218A80;
  if (!qword_281218A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B8B8050(uint64_t a1)
{
  result = sub_21B8D2B60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21B8B80BC()
{
  result = qword_281218B48;
  if (!qword_281218B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CD99520, &qword_21B8D4DC0);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_281218B48);
  }

  return result;
}

void sub_21B8B8110()
{
  if (!qword_281218B50)
  {
    v0 = sub_21B8B80BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281218B50);
    }
  }
}

uint64_t sub_21B8B81A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21B8B81EC()
{
  result = qword_281218C88;
  if (!qword_281218C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218C88);
  }

  return result;
}

uint64_t sub_21B8B8250()
{
  result = qword_281218BA0;
  if (!qword_281218BA0)
  {
    result = MEMORY[0x277D83690];
    atomic_store(MEMORY[0x277D83690], &qword_281218BA0);
  }

  return result;
}

void sub_21B8B8280(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21B8B83DC(uint64_t a1)
{
  if (!qword_281218B60)
  {
    sub_21B8B7F34(255, &unk_281218B68, 0x277D3FAD8);
    v1 = sub_21B8D33C0();
    if (!v2)
    {
      atomic_store(v1, &qword_281218B60);
    }
  }
}

uint64_t sub_21B8B8464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SettingsAnyViewRecipe(uint64_t a1)
{
  result = qword_281219388;
  if (!qword_281219388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B8B8540(uint64_t a1)
{
  result = sub_21B8D2B90();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21B8B85B4()
{
  if (!qword_281218BA8)
  {
    v0 = sub_21B8D33C0();
    if (!v1)
    {
      atomic_store(v0, &qword_281218BA8);
    }
  }
}

uint64_t type metadata accessor for ClearSettingsNavigationPathAction(uint64_t a1)
{
  result = qword_281219060;
  if (!qword_281219060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B8B8660()
{
  result = qword_281218BD0;
  if (!qword_281218BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD99540, &qword_21B8D5498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218BD0);
  }

  return result;
}

uint64_t View.appendSettingsNavigationPathAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_21B8D2FC0();
}

uint64_t ClearSettingsNavigationPathAction.init(namespace:onClear:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A0, &qword_21B8D4560);
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  result = type metadata accessor for ClearSettingsNavigationPathAction(0);
  v12 = (a5 + *(result + 20));
  v13 = a5 + *(result + 24);
  *v13 = a1;
  *(v13 + 8) = a2 & 1;
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t View.clearSettingsNavigationPathAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_21B8D2FC0();
}

unint64_t sub_21B8B88E4()
{
  result = qword_281218BC8;
  if (!qword_281218BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD993C8, &unk_21B8D4840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218BC8);
  }

  return result;
}

uint64_t View.resetSettingsNavigationStateAction(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_21B8D2FC0();
}

unint64_t sub_21B8B89E4()
{
  result = qword_281218BB8;
  if (!qword_281218BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CD993D0, "h!");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218BB8);
  }

  return result;
}

unint64_t sub_21B8B8A48()
{
  result = qword_281218E68;
  if (!qword_281218E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218E68);
  }

  return result;
}

unint64_t sub_21B8B8A9C()
{
  result = qword_281219078;
  if (!qword_281219078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281219078);
  }

  return result;
}

uint64_t type metadata accessor for AppendSettingsNavigationPathAction(uint64_t a1)
{
  result = qword_281218FC0;
  if (!qword_281218FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B8B8B50(uint64_t a1)
{
  sub_21B8B8C1C(319, &qword_281218BB0, &qword_27CD993A0, &qword_21B8D4560);
  if (v1 <= 0x3F)
  {
    sub_21B8B8C1C(319, &unk_281218A00, &qword_27CD993B0, ":$");
    if (v2 <= 0x3F)
    {
      sub_21B8B85B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B8B8C1C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21B8D33C0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t AppendSettingsNavigationPathAction.init(namespace:onAppend:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A0, &qword_21B8D4560);
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  result = type metadata accessor for AppendSettingsNavigationPathAction(0);
  v12 = (a5 + *(result + 20));
  v13 = a5 + *(result + 24);
  *v13 = a1;
  *(v13 + 8) = a2 & 1;
  *v12 = a3;
  v12[1] = a4;
  return result;
}

unint64_t sub_21B8B8D20()
{
  result = qword_281218BC0;
  if (!qword_281218BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD993B8, &unk_21B8D4680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218BC0);
  }

  return result;
}

uint64_t ResetSettingsNavigationStateAction.init(namespace:onReset:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = a4;
  *(a5 + 16) = result;
  *(a5 + 24) = a2 & 1;
  *a5 = a3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t View.settingsAppPrimaryNavigationMode(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_21B8D2FC0();
}

uint64_t sub_21B8B8E44@<X0>(_BYTE *a1@<X8>)
{
  sub_21B8B8EF0();
  result = sub_21B8D2DF0();
  *a1 = v3;
  return result;
}

unint64_t sub_21B8B8EF0()
{
  result = qword_281218F20;
  if (!qword_281218F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218F20);
  }

  return result;
}

unint64_t sub_21B8B8F48()
{
  result = qword_281218F28;
  if (!qword_281218F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218F28);
  }

  return result;
}

uint64_t sub_21B8B8F9C()
{
  sub_21B8B8A48();
  sub_21B8B8A9C();
  return sub_21B8D32D0();
}

uint64_t sub_21B8B8FF4@<X0>(_BYTE *a1@<X8>)
{
  if (qword_281218E78 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_27CD99539;
  return result;
}

uint64_t sub_21B8B9058()
{
  result = swift_beginAccess();
  byte_27CD99539 = byte_27CD99538;
  return result;
}

uint64_t getEnumTagSinglePayload for SettingsAppPrimaryNavigationMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void *sub_21B8B914C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for SettingsAppPrimaryNavigationMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double sub_21B8B921C@<D0>(uint64_t a1@<X8>)
{
  sub_21B8B927C();
  sub_21B8D2DF0();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_21B8B927C()
{
  result = qword_281218E80;
  if (!qword_281218E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218E80);
  }

  return result;
}

unint64_t sub_21B8B92D4()
{
  result = qword_281218E88;
  if (!qword_281218E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218E88);
  }

  return result;
}

unint64_t sub_21B8B9368()
{
  result = qword_281218C90;
  if (!qword_281218C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218C90);
  }

  return result;
}

uint64_t sub_21B8B93BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_281218C98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_281218CA0;
  v3 = byte_281218CB8;
  *a1 = qword_281218CA0;
  v4 = *algn_281218CA8;
  *(a1 + 8) = *algn_281218CA8;
  *(a1 + 24) = v3;
  return sub_21B8B94D0(v2, v4);
}

uint64_t sub_21B8B9450()
{
  if (qword_281218E90 != -1)
  {
    swift_once();
  }

  v1 = qword_281218E98;
  qword_281218CA0 = qword_281218E98;
  *algn_281218CA8 = *&qword_281218EA0;
  byte_281218CB8 = byte_281218EB0;
  v2 = qword_281218EA0;

  return sub_21B8B94D0(v1, v2);
}

uint64_t sub_21B8B94D0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_21B8B94E0()
{
  byte_281218EB0 = 1;
  qword_281218EA0 = 0;
  unk_281218EA8 = 0;
  qword_281218E98 = 0;
}

uint64_t sub_21B8B94FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21B8B9554(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21B8B95B0(uint64_t *a1)
{
  sub_21B8B94D0(*a1, a1[1]);
  sub_21B8B927C();
  return sub_21B8D2E00();
}

unint64_t sub_21B8B9618()
{
  result = qword_281218EF0;
  if (!qword_281218EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218EF0);
  }

  return result;
}

unint64_t sub_21B8B9670()
{
  result = qword_281218EF8;
  if (!qword_281218EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218EF8);
  }

  return result;
}

unint64_t sub_21B8B9704()
{
  result = qword_281218E38;
  if (!qword_281218E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218E38);
  }

  return result;
}

uint64_t sub_21B8B9758@<X0>(uint64_t a1@<X8>)
{
  if (qword_281218E48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  v3 = __swift_project_value_buffer(v2, qword_281218E50);
  swift_beginAccess();
  return sub_21B8B9AD4(v3, a1);
}

uint64_t sub_21B8B97E4()
{
  v0 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  __swift_allocate_value_buffer(v0, qword_281218E50);
  v1 = __swift_project_value_buffer(v0, qword_281218E50);
  if (qword_281218F00 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281218F08);

  return sub_21B8B9AD4(v2, v1);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21B8B991C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A8, &qword_21B8D4568);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  __swift_allocate_value_buffer(v3, qword_281218F08);
  v4 = __swift_project_value_buffer(v3, qword_281218F08);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A0, &qword_21B8D4560);
  v6 = *(*(v5 - 8) + 56);
  v6(v2, 1, 1, v5);
  v6(v4, 1, 1, v5);
  v7 = (v4 + *(v3 + 20));
  *v7 = 0;
  v7[1] = 0;
  v8 = v4 + *(v3 + 24);
  *v8 = 0;
  *(v8 + 8) = 1;
  return sub_21B8B9A64(v2, v4);
}

uint64_t sub_21B8B9A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A8, &qword_21B8D4568);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B8B9AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B8B9B4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A8, &qword_21B8D4568);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21B8B9C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A8, &qword_21B8D4568);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21B8B9CF8(uint64_t a1)
{
  v2 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_21B8B9AD4(a1, &v9 - v6);
  sub_21B8B9AD4(v7, v5);
  sub_21B8B9618();
  sub_21B8D2E00();
  return sub_21B8B9DC8(v7);
}

uint64_t sub_21B8B9DC8(uint64_t a1)
{
  v2 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B8B9E24()
{
  result = qword_281218EB8;
  if (!qword_281218EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218EB8);
  }

  return result;
}

unint64_t sub_21B8B9E7C()
{
  result = qword_281218EC0;
  if (!qword_281218EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218EC0);
  }

  return result;
}

unint64_t sub_21B8B9F10()
{
  result = qword_281218CC0;
  if (!qword_281218CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218CC0);
  }

  return result;
}

uint64_t sub_21B8B9F64()
{
  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  __swift_allocate_value_buffer(appended, qword_281218CD0);
  v1 = __swift_project_value_buffer(appended, qword_281218CD0);
  if (qword_281218ED0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(appended, qword_281218ED8);

  return sub_21B8BA1D4(v2, v1);
}

uint64_t sub_21B8BA000@<X0>(uint64_t a1@<X8>)
{
  if (qword_281218CC8 != -1)
  {
    swift_once();
  }

  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  v3 = __swift_project_value_buffer(appended, qword_281218CD0);
  swift_beginAccess();
  return sub_21B8BA1D4(v3, a1);
}

uint64_t sub_21B8BA08C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A8, &qword_21B8D4568);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  __swift_allocate_value_buffer(appended, qword_281218ED8);
  v4 = __swift_project_value_buffer(appended, qword_281218ED8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A0, &qword_21B8D4560);
  v6 = *(*(v5 - 8) + 56);
  v6(v2, 1, 1, v5);
  v6(v4, 1, 1, v5);
  v7 = (v4 + *(appended + 20));
  *v7 = 0;
  v7[1] = 0;
  v8 = v4 + *(appended + 24);
  *v8 = 0;
  *(v8 + 8) = 1;
  return sub_21B8B9A64(v2, v4);
}

uint64_t sub_21B8BA1D4(uint64_t a1, uint64_t a2)
{
  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  (*(*(appended - 8) + 16))(a2, a1, appended);
  return a2;
}

uint64_t sub_21B8BA24C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A8, &qword_21B8D4568);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21B8BA324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A8, &qword_21B8D4568);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21B8BA3F8(uint64_t a1)
{
  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  v3 = MEMORY[0x28223BE20](appended - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_21B8BA1D4(a1, &v9 - v6);
  sub_21B8BA1D4(v7, v5);
  sub_21B8B9E24();
  sub_21B8D2E00();
  return sub_21B8BA4C8(v7);
}

uint64_t sub_21B8BA4C8(uint64_t a1)
{
  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  (*(*(appended - 8) + 8))(a1, appended);
  return a1;
}

uint64_t sub_21B8BA524(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = v2;
  return UIMutableTraits.settingsAppPrimaryNavigationMode.setter(&v6, v3, v4);
}

uint64_t UIMutableTraits.settingsAppPrimaryNavigationMode.setter(char *a1, uint64_t a2, uint64_t a3)
{
  sub_21B8B8A48();
  sub_21B8B8A9C();
  return sub_21B8D2C90();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_21B8BA638(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  *&v9 = v2;
  *(&v9 + 1) = v3;
  v10 = v4;
  v11 = v5;
  sub_21B8B94D0(v2, v3);
  return sub_21B8BA6BC(&v9, v6, v7);
}

uint64_t sub_21B8BA72C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 & 1) != 0 || (v3)
  {
    return v2 & v3;
  }

  else
  {
    return MEMORY[0x282133E80](*(a1 + 16), *(a2 + 16));
  }
}

uint64_t sub_21B8BA750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B8B9AD4(a2, v6);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  return sub_21B8BA7F4(v6, v7, v8);
}

uint64_t sub_21B8BA7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21B8B9AD4(a1, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B8B9704();
  sub_21B8D2CA0();
  return sub_21B8B9DC8(a1);
}

uint64_t sub_21B8BA8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = (a1 + v3);
  v5 = *(a1 + v3 + 8);
  v6 = a2 + v3;
  v7 = *(v6 + 8);
  if (v5 & 1) != 0 || (v7)
  {
    return v5 & v7;
  }

  else
  {
    return MEMORY[0x282133E80](*v4, *v6);
  }
}

uint64_t sub_21B8BA8DC(uint64_t a1, uint64_t a2)
{
  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  MEMORY[0x28223BE20](appended - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B8BA1D4(a2, v6);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  return sub_21B8BA980(v6, v7, v8);
}

uint64_t sub_21B8BA980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  MEMORY[0x28223BE20](appended - 8);
  sub_21B8BA1D4(a1, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B8B9F10();
  sub_21B8D2CA0();
  return sub_21B8BA4C8(a1);
}

uint64_t sub_21B8BAA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B8BAA9C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_21B8BAA9C()
{
  result = qword_281219080;
  if (!qword_281219080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281219080);
  }

  return result;
}

uint64_t sub_21B8BAB08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B8BAB40()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B8BAB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B8D2B90();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21B8BAC38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21B8D2B90();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21B8BACF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B8BAD2C()
{
  sub_21B8BF8CC();
  sub_21B8BFEB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21B8BAD9C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD993B8, &unk_21B8D4680);
  sub_21B8D2D90();
  sub_21B8B8D20();
  return swift_getWitnessTable();
}

uint64_t sub_21B8BAE1C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD993C8, &unk_21B8D4840);
  sub_21B8D2D90();
  sub_21B8B88E4();
  return swift_getWitnessTable();
}

uint64_t sub_21B8BAE9C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CD993D0, "h!");
  sub_21B8D2D90();
  sub_21B8B89E4();
  return swift_getWitnessTable();
}

uint64_t sub_21B8BAF1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B8D2DC0();
  *a1 = result;
  return result;
}

uint64_t sub_21B8BAF70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B8D2DA0();
  *a1 = result;
  return result;
}

uint64_t sub_21B8BAFC8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B8BB014()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B8BB058()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B8BB0A0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B8BB0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreferencesControllerRecipe.Kind(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21B8BB19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PreferencesControllerRecipe.Kind(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21B8BB254()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_21B8BB2B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentViewController];
  *a2 = result;
  return result;
}

uint64_t sub_21B8BB2F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B8BB328()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21B8BB380()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B8BB3BC()
{
  sub_21B8C7680();
  sub_21B8BFEB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21B8BB424@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CD99538;
  return result;
}

uint64_t sub_21B8BB470(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CD99538 = v1;
  return result;
}

void *sub_21B8BB4B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = UIMutableTraits.settingsAppPrimaryNavigationMode.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = v5;
  return result;
}

uint64_t sub_21B8BB4FC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  return UIMutableTraits.settingsAppPrimaryNavigationMode.setter(&v7, v4, v5);
}

__n128 sub_21B8BB548(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21B8BB55C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD99540, &qword_21B8D5498);
  sub_21B8D2D90();
  sub_21B8B8660();
  return swift_getWitnessTable();
}

uint64_t sub_21B8BB5D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B8BB618()
{
  MEMORY[0x21CEF9F70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B8BB650()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B8BB690()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B8BB6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B8D2B60();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21B8BB734(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B8D2B60();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21B8BB7A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t PSViewController.emitNavigationEventForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B8D3130();
  sub_21B8D3120();
  sub_21B8D3100();
}

uint64_t PSViewController.emitNavigationEventForApplicationSetting(applicationBundleIdentifier:title:localizedNavigationComponents:deepLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21B8D3130();
  sub_21B8D3120();
  sub_21B8D3110();
}

uint64_t sub_21B8BB8DC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, id, uint64_t, char *))
{
  v10 = sub_21B8D2B60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21B8D3190();
  v16 = v15;
  sub_21B8BBA3C();
  v17 = sub_21B8D3200();
  sub_21B8D2B30();
  v18 = a4;
  v19 = a1;
  a7(v14, v16, v18, v17, v13);

  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_21B8BBA3C()
{
  result = qword_281218B20;
  if (!qword_281218B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281218B20);
  }

  return result;
}

void *sub_21B8BBA88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B8BBAA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B8BBAA8(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99258, &qword_21B8D4040);
  v10 = *(sub_21B8D2AA0() - 8);
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
  v15 = *(sub_21B8D2AA0() - 8);
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

void *sub_21B8BBC80(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unint64_t a5)
{
  v39 = sub_21B8D2AA0();
  v10 = *(v39 - 8);
  v11 = MEMORY[0x28223BE20](v39);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = sub_21B8D30A0();
  MEMORY[0x28223BE20](v16);
  v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a1;
  v18[1] = a2;
  v19 = *MEMORY[0x277D4D788];
  v35 = v20;
  (*(v20 + 104))(v18, v19, v16);
  v38 = sub_21B8BBA3C();
  v43 = v38;
  v42[0] = a3;

  v21 = a3;
  sub_21B8D2A90();
  if (a4 >> 62)
  {
    goto LABEL_18;
  }

  v22 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v22)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_21B8BBA88(0, v22 & ~(v22 >> 63), 0);
    if ((v22 & 0x8000000000000000) == 0)
    {
      v37 = v22;
      v31 = v18;
      v32 = v15;
      v33 = v16;
      v34 = a5;
      v24 = 0;
      v25 = v41;
      v26 = a4;
      a5 = a4 & 0xC000000000000001;
      v36 = a4 & 0xFFFFFFFFFFFFFF8;
      v15 = (v10 + 32);
      v18 = a4;
      while (1)
      {
        if (a5)
        {
          v27 = MEMORY[0x21CEF9790](v24, v26);
        }

        else
        {
          if ((v24 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            v22 = sub_21B8D3480();
            goto LABEL_3;
          }

          if (v24 >= *(v36 + 16))
          {
            goto LABEL_17;
          }

          v27 = *(v26 + 8 * v24 + 32);
        }

        v28 = v27;
        v43 = v38;
        v42[0] = v27;
        sub_21B8BC31C(v42, v40);
        v29 = v28;
        sub_21B8D2A90();
        __swift_destroy_boxed_opaque_existential_0(v42);

        v41 = v25;
        a4 = *(v25 + 16);
        v30 = *(v25 + 24);
        v16 = a4 + 1;
        if (a4 >= v30 >> 1)
        {
          sub_21B8BBA88((v30 > 1), a4 + 1, 1);
          v25 = v41;
        }

        ++v24;
        *(v25 + 16) = v16;
        (*(v10 + 32))(v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a4, v13, v39);
        v26 = v18;
        if (v37 == v24)
        {
          v16 = v33;
          v18 = v31;
          v15 = v32;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_21B8D3130();
    sub_21B8D3120();
    sub_21B8D3100();

    (*(v10 + 8))(v15, v39);
    return (*(v35 + 8))(v18, v16);
  }

  return result;
}

void *sub_21B8BC02C(unint64_t a1, unint64_t a2, void *a3, unint64_t a4, unint64_t a5)
{
  v39 = sub_21B8D2AA0();
  v10 = *(v39 - 8);
  v11 = MEMORY[0x28223BE20](v39);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v38 = sub_21B8BBA3C();
  v43 = v38;
  v42[0] = a3;
  v16 = a3;
  sub_21B8D2A90();
  v17 = a4;
  if (a4 >> 62)
  {
    goto LABEL_18;
  }

  v18 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v18)
  {
    v19 = v17;
    v41 = MEMORY[0x277D84F90];
    result = sub_21B8BBA88(0, v18 & ~(v18 >> 63), 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v32 = v15;
      v33 = a1;
      v34 = a2;
      v35 = a5;
      a2 = 0;
      v21 = v41;
      v22 = v19;
      a5 = v19 & 0xC000000000000001;
      v36 = v19 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      v15 = (v10 + 32);
      v23 = v19;
      while (1)
      {
        if (a5)
        {
          v24 = MEMORY[0x21CEF9790](a2, v22);
        }

        else
        {
          if ((a2 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            v29 = v17;
            v30 = sub_21B8D3480();
            v17 = v29;
            v18 = v30;
            goto LABEL_3;
          }

          if (a2 >= *(v36 + 16))
          {
            goto LABEL_17;
          }

          v24 = *(v22 + 8 * a2 + 32);
        }

        v25 = v24;
        v43 = v38;
        v42[0] = v24;
        sub_21B8BC31C(v42, v40);
        v26 = v25;
        sub_21B8D2A90();
        __swift_destroy_boxed_opaque_existential_0(v42);

        v41 = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        a1 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          sub_21B8BBA88((v27 > 1), v28 + 1, 1);
          v21 = v41;
        }

        ++a2;
        *(v21 + 16) = a1;
        (*(v10 + 32))(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v28, v13, v39);
        v22 = v23;
        if (v37 == a2)
        {
          v15 = v32;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_21B8D3130();
    sub_21B8D3120();
    sub_21B8D3110();

    return (*(v10 + 8))(v15, v39);
  }

  return result;
}

uint64_t sub_21B8BC31C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void PESettingsFeatureDescriptionCell.refreshCellContents(with:)(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v31 = a1;
    [v1 setSelectionStyle_];
    v3 = [v31 identifier];
    [v2 setAccessibilityIdentifier_];

    v4 = [v31 name];
    if (v4)
    {
      v5 = v4;
      v6 = sub_21B8D3190();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        if ([v31 propertyForKey_])
        {
          sub_21B8D33D0();
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
        }

        v32 = v36;
        v33 = v37;
        if (!*(&v37 + 1))
        {

          goto LABEL_21;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_53:

          goto LABEL_54;
        }

        v10 = HIBYTE(*(&v35 + 1)) & 0xFLL;
        if ((*(&v35 + 1) & 0x2000000000000000) == 0)
        {
          v10 = v35 & 0xFFFFFFFFFFFFLL;
        }

        if (!v10)
        {
LABEL_52:

          goto LABEL_53;
        }

        boxed_opaque_existential_1 = v35;
        v11 = sub_21B8D3190();
        sub_21B8BCB94(v11, v12, 0);

        v13 = sub_21B8D3180();
        v14 = [v31 propertyForKey_];

        if (v14)
        {
          sub_21B8D33D0();
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
        }

        v32 = v36;
        v33 = v37;
        if (*(&v37 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99348, &qword_21B8D4068);
          if (swift_dynamicCast())
          {
            v15 = swift_allocObject();
            *(v15 + 16) = v35;
            v16 = sub_21B8BD134;
LABEL_28:
            if ([v31 propertyForKey_])
            {
              sub_21B8D33D0();
              swift_unknownObjectRelease();
            }

            else
            {
              v36 = 0u;
              v37 = 0u;
            }

            v32 = v36;
            v33 = v37;
            if (*(&v37 + 1))
            {
              if (swift_dynamicCast())
              {
                v17 = HIBYTE(*(&v35 + 1)) & 0xFLL;
                if ((*(&v35 + 1) & 0x2000000000000000) == 0)
                {
                  v17 = v35 & 0xFFFFFFFFFFFFLL;
                }

                if (v17)
                {
                  v29 = &v28;
                  boxed_opaque_existential_1 = MEMORY[0x28223BE20](*(&v35 + 1));
                  *(&v33 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99320, &qword_21B8D4050);
                  v34 = sub_21B8BCF78();
                  __swift_allocate_boxed_opaque_existential_1(&v32);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99330, &qword_21B8D4058);
                  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD99338, &qword_21B8D4060);
                  v19 = sub_21B8D3140();
                  v20 = sub_21B8BD088();
                  *&v36 = v19;
                  *(&v36 + 1) = v20;
                  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
                  *&v36 = v18;
                  *(&v36 + 1) = OpaqueTypeConformance2;
                  swift_getOpaqueTypeConformance2();
                  sub_21B8D2E40();
LABEL_48:

                  MEMORY[0x21CEF9600](&v32);
                  sub_21B8BB7A4(v16, v15);
LABEL_54:

                  return;
                }
              }
            }

            else
            {
              sub_21B8BCB2C(&v32);
            }

            if ([v31 propertyForKey_])
            {
              sub_21B8D33D0();
              swift_unknownObjectRelease();
            }

            else
            {
              v36 = 0u;
              v37 = 0u;
            }

            v32 = v36;
            v33 = v37;
            if (*(&v37 + 1))
            {
              v22 = swift_dynamicCast();
              if ((v22 & 1) == 0)
              {

                sub_21B8BB7A4(v16, v15);
                return;
              }

              v23 = HIBYTE(*(&v35 + 1)) & 0xFLL;
              if ((*(&v35 + 1) & 0x2000000000000000) == 0)
              {
                v23 = v35 & 0xFFFFFFFFFFFFLL;
              }

              if (v23)
              {
                v29 = &v28;
                MEMORY[0x28223BE20](v22);
                *(&v33 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99320, &qword_21B8D4050);
                v34 = sub_21B8BCF78();
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99330, &qword_21B8D4058);
                v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD99338, &qword_21B8D4060);
                v25 = sub_21B8D3140();
                v26 = sub_21B8BD088();
                *&v36 = v25;
                *(&v36 + 1) = v26;
                v27 = swift_getOpaqueTypeConformance2();
                *&v36 = v24;
                *(&v36 + 1) = v27;
                swift_getOpaqueTypeConformance2();
                sub_21B8D2E40();
                goto LABEL_48;
              }

              sub_21B8BB7A4(v16, v15);

              goto LABEL_52;
            }

            sub_21B8BB7A4(v16, v15);
LABEL_21:
            sub_21B8BCB2C(&v32);
            return;
          }
        }

        else
        {
          sub_21B8BCB2C(&v32);
        }

        v16 = 0;
        v15 = 0;
        goto LABEL_28;
      }
    }
  }
}

uint64_t sub_21B8BCB2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99410, &qword_21B8D4048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B8BCB94(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = sub_21B8D3180();
  v6 = [v3 propertyForKey_];

  if (v6)
  {
    sub_21B8D33D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      a3 = v10;
      return a3 & 1;
    }
  }

  else
  {
    sub_21B8BCB2C(&v13);
  }

  v7 = sub_21B8D3180();
  v8 = [v3 propertyForKey_];

  if (v8)
  {
    sub_21B8D33D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    sub_21B8B7F34(0, &qword_281218A10, 0x277CCACA8);
    if (swift_dynamicCast())
    {
      a3 = [v10 BOOLValue];
    }
  }

  else
  {
    sub_21B8BCB2C(&v13);
  }

  return a3 & 1;
}

uint64_t sub_21B8BCD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v29 = a7;
  v27 = a3;
  v28 = a5;
  v30 = a9;
  v31 = a10;
  v32 = a8;
  v26 = a11;
  v15 = sub_21B8D3140();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99338, &qword_21B8D4060);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v25 - v21;

  v26(a1, a2, v27, a4, v28, a6);
  v23 = sub_21B8BD088();
  sub_21B8D2F90();
  (*(v16 + 8))(v18, v15);
  v33 = v15;
  v34 = v23;
  swift_getOpaqueTypeConformance2();
  sub_21B8D2F80();
  return (*(v20 + 8))(v22, v19);
}

unint64_t sub_21B8BCF78()
{
  result = qword_27CD99328;
  if (!qword_27CD99328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD99320, &qword_21B8D4050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99328);
  }

  return result;
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_21B8BD088()
{
  result = qword_27CD99340;
  if (!qword_27CD99340)
  {
    sub_21B8D3140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99340);
  }

  return result;
}

Swift::Void __swiftcall PESettingsFeatureDescriptionCell.prepareForReuse()()
{
  v3.super_class = PESettingsFeatureDescriptionCell;
  objc_msgSendSuper2(&v3, sel_prepareForReuse);
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  MEMORY[0x21CEF9600](v1);
  [v0 setAccessibilityIdentifier_];
}

id PESettingsFeatureDescriptionCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_21B8D3180();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStyle:a1 reuseIdentifier:v6 specifier:a4];

  return v7;
}

{
  if (a3)
  {
    v7 = sub_21B8D3180();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = PESettingsFeatureDescriptionCell;
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

void __swiftcall PESettingsFeatureDescriptionCell.init(style:reuseIdentifier:)(PESettingsFeatureDescriptionCell *__return_ptr retstr, UITableViewCellStyle style, Swift::String_optional reuseIdentifier)
{
  if (reuseIdentifier.value._object)
  {
    v4 = sub_21B8D3180();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStyle:style reuseIdentifier:v4];
}

id PESettingsFeatureDescriptionCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_21B8D3180();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = PESettingsFeatureDescriptionCell;
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id PESettingsFeatureDescriptionCell.init(coder:)(void *a1)
{
  v4.super_class = PESettingsFeatureDescriptionCell;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

uint64_t sub_21B8BD718(void *a1)
{
  v1 = a1;
  v2 = sub_21B8D32F0();

  return v2 & 1;
}

void sub_21B8BD74C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_21B8B94D0(a1, a2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99348, &qword_21B8D4068);
    v6 = sub_21B8D34D0();
    v7 = sub_21B8D3180();
    [v2 setProperty:v6 forKey:v7];
    swift_unknownObjectRelease();

    sub_21B8BB7A4(a1, a2);
  }

  else
  {
    v8 = sub_21B8D3180();
    [v2 removePropertyForKey_];
  }
}

void sub_21B8BD8A0(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_21B8BD958;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = a1;
  sub_21B8BD74C(v7, v6);
  sub_21B8BB7A4(v7, v6);
}

void sub_21B8BD958()
{
  v1 = *(v0 + 16);
  v2 = sub_21B8D2AF0();
  (*(v1 + 16))(v1, v2);
}

uint64_t SettingsAnyViewRecipe.view.getter()
{
  type metadata accessor for SettingsAnyViewRecipe(0);
}

uint64_t SettingsAnyViewRecipe.init<A>(content:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a4@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v6 = sub_21B8D2B80();
  a1(v6);
  v7 = sub_21B8D3050();
  result = type metadata accessor for SettingsAnyViewRecipe(0);
  *(a4 + *(result + 20)) = v7;
  return result;
}

uint64_t SettingsAnyViewRecipe.hash(into:)(uint64_t a1)
{
  sub_21B8D2B90();
  sub_21B8B81A0(&qword_27CD99358, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_21B8D3170();
}

uint64_t SettingsAnyViewRecipe.hashValue.getter()
{
  sub_21B8D3550();
  sub_21B8D2B90();
  sub_21B8B81A0(&qword_27CD99358, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_21B8D3170();
  return sub_21B8D3570();
}

uint64_t sub_21B8BDBDC()
{
  sub_21B8D3550();
  sub_21B8D2B90();
  sub_21B8B81A0(&qword_27CD99358, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_21B8D3170();
  return sub_21B8D3570();
}

uint64_t sub_21B8BDC64(uint64_t a1)
{
  sub_21B8D2B90();
  sub_21B8B81A0(&qword_27CD99358, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_21B8D3170();
}

uint64_t sub_21B8BDCE8(uint64_t a1)
{
  sub_21B8D3550();
  sub_21B8D2B90();
  sub_21B8B81A0(&qword_27CD99358, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_21B8D3170();
  return sub_21B8D3570();
}

uint64_t SettingsAnyPlatformViewControllerModel.__allocating_init(recipe:)(void *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = 0;
  return result;
}

uint64_t SettingsAnyPlatformViewControllerModel.init(recipe:)(void *a1)
{
  *(v1 + 16) = *a1;
  *(v1 + 24) = 0;
  return v1;
}

id sub_21B8BDDE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD99500, &qword_21B8D4FF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - v4;
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v6 = sub_21B8D2C70();
  __swift_project_value_buffer(v6, qword_28121AE88);

  v7 = sub_21B8D2C50();
  v8 = sub_21B8D32B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v9 = 136315394;
    v10 = sub_21B8D3580();
    v12 = sub_21B8C0F44(v10, v11, &v32);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_21B8C0F44(0xD00000000000001CLL, 0x800000021B8D5C70, &v32);
    _os_log_impl(&dword_21B8B6000, v7, v8, "Start (%s.%s)…", v9, 0x16u);
    v13 = v31;
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v13, -1, -1);
    MEMORY[0x21CEF9ED0](v9, -1, -1);
  }

  v14 = v1[2];
  if (qword_281218E30 != -1)
  {
    swift_once();
  }

  v15 = sub_21B8CC568(v14);
  if (v15)
  {
    v16 = v15;
    if (v1[3])
    {
      v17 = v15;
      v18 = sub_21B8D2C50();
      v19 = sub_21B8D32B0();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 141558275;
        *(v20 + 4) = 1752392040;
        *(v20 + 12) = 2113;
        *(v20 + 14) = v17;
        *v21 = v16;
        v22 = v17;
        v23 = "Returning existing platform view controller: %{private,mask.hash}@.";
LABEL_14:
        _os_log_impl(&dword_21B8B6000, v18, v19, v23, v20, 0x16u);
        sub_21B8BE99C(v21);
        MEMORY[0x21CEF9ED0](v21, -1, -1);
        MEMORY[0x21CEF9ED0](v20, -1, -1);
      }
    }

    else
    {
      swift_getKeyPath();
      sub_21B8D2AC0();

      *(swift_allocObject() + 16) = v16;
      sub_21B8BE938();
      v27 = v16;
      v28 = sub_21B8D2D10();

      (*(v3 + 8))(v5, v2);
      v1[3] = v28;

      v17 = v27;
      v18 = sub_21B8D2C50();
      v19 = sub_21B8D32B0();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 141558275;
        *(v20 + 4) = 1752392040;
        *(v20 + 12) = 2113;
        *(v20 + 14) = v17;
        *v21 = v16;
        v29 = v17;
        v23 = "Returning now configured platform view controller: %{private,mask.hash}@.";
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

  sub_21B8BE8D0();
  v24 = swift_allocError();
  *v25 = v14;
  v26 = objc_allocWithZone(type metadata accessor for PreferencesControllerErrorHostingController(0));
  v32 = v24;
  v17 = sub_21B8D2E30();
LABEL_16:
  sub_21B8BE308(v1);
  return v17;
}

void sub_21B8BE308(void *a1)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v1 = sub_21B8D2C70();
  __swift_project_value_buffer(v1, qword_28121AE88);

  oslog = sub_21B8D2C50();
  v2 = sub_21B8D32B0();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315394;
    v5 = sub_21B8D3580();
    v7 = sub_21B8C0F44(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_21B8C0F44(0xD00000000000001CLL, 0x800000021B8D5C70, &v9);
    _os_log_impl(&dword_21B8B6000, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v4, -1, -1);
    MEMORY[0x21CEF9ED0](v3, -1, -1);
  }
}

void sub_21B8BE4D0(id *a1, void *a2)
{
  if (*a1)
  {
    v3 = qword_281219300;
    v4 = *a1;
    v5 = v4;
    if (v3 != -1)
    {
      swift_once();
      v4 = v5;
    }

    sub_21B8CD5E0(a2, v4);
  }
}

uint64_t sub_21B8BE568()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (qword_281218E30 != -1)
  {
    swift_once();
  }

  v3 = sub_21B8CC568(v2);
  if (v3)
  {
    if (qword_281219300 != -1)
    {
      v7 = v3;
      swift_once();
      v3 = v7;
    }

    v4 = v3;
    v5 = [v3 navigationItem];
    sub_21B8CD928(v5);
  }

  sub_21B8CC5DC(v2);
  if (*(v1 + 24))
  {

    sub_21B8D2D00();
  }

  *(v1 + 24) = 0;
}

uint64_t SettingsAnyPlatformViewControllerModel.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t SettingsAnyPlatformViewControllerModel.hashValue.getter()
{
  sub_21B8D3550();
  MEMORY[0x21CEF98A0](*(v0 + 16));
  return sub_21B8D3570();
}

uint64_t sub_21B8BE790()
{
  v1 = *v0;
  sub_21B8D3550();
  MEMORY[0x21CEF98A0](*(v1 + 16));
  return sub_21B8D3570();
}

uint64_t sub_21B8BE808(uint64_t a1)
{
  v2 = *v1;
  sub_21B8D3550();
  MEMORY[0x21CEF98A0](*(v2 + 16));
  return sub_21B8D3570();
}

unint64_t sub_21B8BE850()
{
  result = qword_27CD99360;
  if (!qword_27CD99360)
  {
    type metadata accessor for SettingsAnyPlatformViewControllerModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99360);
  }

  return result;
}

unint64_t sub_21B8BE8D0()
{
  result = qword_27CD99368;
  if (!qword_27CD99368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99368);
  }

  return result;
}

unint64_t sub_21B8BE938()
{
  result = qword_281218A18;
  if (!qword_281218A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CD99500, &qword_21B8D4FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218A18);
  }

  return result;
}

uint64_t sub_21B8BE99C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD994F0, &unk_21B8D4240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *SettingsAnyPlatformViewControllerRecipe.viewController.getter()
{
  v1 = *v0;
  if (qword_281218E30 != -1)
  {
    swift_once();
  }

  v2 = qword_28121AEA0;
  swift_beginAccess();
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (v4 = sub_21B8BEE04(v1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

void SettingsAnyPlatformViewControllerRecipe.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_281218E30 != -1)
  {
    swift_once();
  }

  v4 = sub_21B8CC80C(a1);

  *a2 = v4;
}

uint64_t SettingsAnyPlatformViewControllerRecipe.hashValue.getter()
{
  v1 = *v0;
  sub_21B8D3550();
  MEMORY[0x21CEF98A0](v1);
  return sub_21B8D3570();
}

uint64_t sub_21B8BEBC4()
{
  v1 = *v0;
  sub_21B8D3550();
  MEMORY[0x21CEF98A0](v1);
  return sub_21B8D3570();
}

uint64_t sub_21B8BEC38(uint64_t a1)
{
  v2 = *v1;
  sub_21B8D3550();
  MEMORY[0x21CEF98A0](v2);
  return sub_21B8D3570();
}

uint64_t SettingsAnyPlatformViewControllerRecipe.description.getter()
{
  v1 = *v0;
  MEMORY[0x21CEF9510](0xD000000000000027, 0x800000021B8D4230);
  MEMORY[0x21CEF9510](40, 0xE100000000000000);
  sub_21B8D3470();
  if (qword_281218E30 != -1)
  {
    swift_once();
  }

  v2 = qword_28121AEA0;
  swift_beginAccess();
  v3 = *(v2 + 16);
  if (!*(v3 + 16) || (sub_21B8BEE04(v1), (v4 & 1) == 0))
  {
    swift_endAccess();
    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_9;
  }

  result = swift_endAccess();
  if (*(v3 + 16))
  {
    result = sub_21B8BEE04(v1);
    if (v6)
    {
      swift_getObjectType();
      v7 = sub_21B8D3580();
      MEMORY[0x21CEF9510](v7);

      v8 = 8236;
      v9 = 0xE200000000000000;
LABEL_9:
      MEMORY[0x21CEF9510](v8, v9);

      MEMORY[0x21CEF9510](41, 0xE100000000000000);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21B8BEE04(uint64_t a1)
{
  v2 = sub_21B8D3540();

  return sub_21B8BEF18(a1, v2);
}

uint64_t getEnumTagSinglePayload for SettingsAnyPlatformViewControllerRecipe(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAnyPlatformViewControllerRecipe(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_21B8BEED4(uint64_t a1)
{
  v2 = sub_21B8D3400();

  return sub_21B8BEF84(a1, v2);
}

unint64_t sub_21B8BEF18(uint64_t a1, uint64_t a2)
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

unint64_t sub_21B8BEF84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21B8BF04C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CEF9750](v9, a1);
      sub_21B8BF0A8(v9);
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

uint64_t sub_21B8BF0FC(uint64_t a1)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21B8D2C70();
  __swift_project_value_buffer(v2, qword_28121AE88);

  v3 = sub_21B8D2C50();
  v4 = sub_21B8D32B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_21B8C0F44(0xD00000000000002ELL, 0x800000021B8D4360, &v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21B8C0F44(0xD000000000000011, 0x800000021B8D5D20, &v10);
    _os_log_impl(&dword_21B8B6000, v3, v4, "Start (%s.%s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v6, -1, -1);
    MEMORY[0x21CEF9ED0](v5, -1, -1);
  }

  type metadata accessor for SettingsAnyPlatformViewControllerRepresentable.Coordinator();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;

  sub_21B8BF2B8(v8);
  return v7;
}

void sub_21B8BF2B8(uint64_t a1)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v1 = sub_21B8D2C70();
  __swift_project_value_buffer(v1, qword_28121AE88);

  oslog = sub_21B8D2C50();
  v2 = sub_21B8D32B0();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_21B8C0F44(0xD00000000000002ELL, 0x800000021B8D4360, &v6);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_21B8C0F44(0xD000000000000011, 0x800000021B8D5D20, &v6);
    _os_log_impl(&dword_21B8B6000, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v4, -1, -1);
    MEMORY[0x21CEF9ED0](v3, -1, -1);
  }
}

id sub_21B8BF454()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99390, &qword_21B8D4488);
  sub_21B8D2EF0();

  v0 = sub_21B8BDDE0();

  return v0;
}

uint64_t sub_21B8BF4C4()
{
  v0 = sub_21B8D2DE0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99390, &qword_21B8D4488);
  sub_21B8D2EF0();

  sub_21B8D2F00();
  sub_21B8D2F10();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21B8BF5D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B8BF0FC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_21B8BF63C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD994D0, &qword_21B8D4478);
  sub_21B8D2F30();
  *(swift_allocObject() + 16) = xmmword_21B8D4330;
  sub_21B8D2F20();
  sub_21B8BF980();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD994E0, &qword_21B8D4480);
  sub_21B8BF9D8();
  return sub_21B8D33E0();
}

uint64_t sub_21B8BF750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B8BF92C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21B8BF7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B8BF92C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21B8BF834(uint64_t a1)
{
  sub_21B8BF92C();
  sub_21B8D2EA0();
  __break(1u);
}

uint64_t sub_21B8BF85C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_21B8BF8CC()
{
  result = qword_27CD99370;
  if (!qword_27CD99370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99370);
  }

  return result;
}

unint64_t sub_21B8BF92C()
{
  result = qword_27CD99378;
  if (!qword_27CD99378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99378);
  }

  return result;
}

unint64_t sub_21B8BF980()
{
  result = qword_27CD99380;
  if (!qword_27CD99380)
  {
    sub_21B8D2F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99380);
  }

  return result;
}

unint64_t sub_21B8BF9D8()
{
  result = qword_27CD99388;
  if (!qword_27CD99388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CD994E0, &qword_21B8D4480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99388);
  }

  return result;
}

void sub_21B8BFA3C()
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v0 = sub_21B8D2C70();
  __swift_project_value_buffer(v0, qword_28121AE88);
  oslog = sub_21B8D2C50();
  v1 = sub_21B8D32B0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_21B8C0F44(0xD000000000000033, 0x800000021B8D5D40, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_21B8C0F44(0xD000000000000029, 0x800000021B8D5D80, &v5);
    _os_log_impl(&dword_21B8B6000, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v3, -1, -1);
    MEMORY[0x21CEF9ED0](v2, -1, -1);
  }
}

void sub_21B8BFBC4()
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v0 = sub_21B8D2C70();
  __swift_project_value_buffer(v0, qword_28121AE88);
  v1 = sub_21B8D2C50();
  v2 = sub_21B8D32B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_21B8C0F44(0xD000000000000033, 0x800000021B8D5D40, &v5);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_21B8C0F44(0xD000000000000029, 0x800000021B8D5D80, &v5);
    _os_log_impl(&dword_21B8B6000, v1, v2, "Start (%s.%s)…", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v4, -1, -1);
    MEMORY[0x21CEF9ED0](v3, -1, -1);
  }

  sub_21B8BE568();

  sub_21B8BFA3C();
}

void *SettingsAnyPlatformViewControllerView.init(platformViewControllerModel:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for SettingsAnyPlatformViewControllerModel();
  result = sub_21B8D3030();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void *SettingsAnyPlatformViewControllerView.init(platformViewControllerRecipe:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for SettingsAnyPlatformViewControllerModel();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  result = sub_21B8D3030();
  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t SettingsAnyPlatformViewControllerView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99398, &qword_21B8D44A0);
  sub_21B8D3040();
  sub_21B8BF8CC();
  sub_21B8BFEB0();
  sub_21B8D2FE0();
}

unint64_t sub_21B8BFEB0()
{
  result = qword_281219768;
  if (!qword_281219768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281219768);
  }

  return result;
}

uint64_t sub_21B8BFF28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99398, &qword_21B8D44A0);
  sub_21B8D3040();
  sub_21B8BF8CC();
  sub_21B8BFEB0();
  sub_21B8D2FE0();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21B8BFFCC(uint64_t *a1, int a2)
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

uint64_t sub_21B8C0014(uint64_t result, int a2, int a3)
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

uint64_t AppendSettingsNavigationPathAction.init(namespace:navigationPath:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A0, &qword_21B8D4560);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  v10 = (a4 + *(appended + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = a4 + *(appended + 24);
  *v11 = a1;
  *(v11 + 8) = a2 & 1;

  return sub_21B8B9A64(a3, a4);
}

uint64_t sub_21B8C0110@<X0>(uint64_t a1@<X8>)
{
  if (qword_281218ED0 != -1)
  {
    swift_once();
  }

  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  v3 = __swift_project_value_buffer(appended, qword_281218ED8);

  return sub_21B8BA1D4(v3, a1);
}

uint64_t sub_21B8C0188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B8C16AC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t static AppendSettingsNavigationPathActionTrait.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281218CC8 != -1)
  {
    swift_once();
  }

  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  v3 = __swift_project_value_buffer(appended, qword_281218CD0);
  swift_beginAccess();
  return sub_21B8BA1D4(v3, a1);
}

uint64_t static AppendSettingsNavigationPathActionTrait.defaultValue.setter(uint64_t a1)
{
  if (qword_281218CC8 != -1)
  {
    swift_once();
  }

  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  v3 = __swift_project_value_buffer(appended, qword_281218CD0);
  swift_beginAccess();
  sub_21B8C0314(a1, v3);
  swift_endAccess();
  return sub_21B8BA4C8(a1);
}

uint64_t sub_21B8C0314(uint64_t a1, uint64_t a2)
{
  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  (*(*(appended - 8) + 24))(a2, a1, appended);
  return a2;
}

uint64_t (*static AppendSettingsNavigationPathActionTrait.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_281218CC8 != -1)
  {
    swift_once();
  }

  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  __swift_project_value_buffer(appended, qword_281218CD0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21B8C0410(uint64_t a1)
{
  if (qword_281218CC8 != -1)
  {
    swift_once();
  }

  appended = type metadata accessor for AppendSettingsNavigationPathAction(0);
  v3 = __swift_project_value_buffer(appended, qword_281218CD0);
  swift_beginAccess();
  sub_21B8C0314(a1, v3);
  return swift_endAccess();
}

uint64_t EnvironmentValues.appendSettingsNavigationPath.getter()
{
  sub_21B8B9E24();

  return sub_21B8D2DF0();
}

uint64_t UITraitCollection.appendSettingsNavigationPath.getter()
{
  sub_21B8B9F10();

  return sub_21B8D32E0();
}

void AppendSettingsNavigationPathAction.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a1;
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B8D2D80();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A8, &qword_21B8D4568);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A0, &qword_21B8D4560);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = v3 + *(type metadata accessor for AppendSettingsNavigationPathAction(0) + 20);
  v17 = *v16;
  if (*v16)
  {
    v18 = *(v16 + 8);
    v37[3] = a2;
    v37[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    (*(v5 + 16))(boxed_opaque_existential_1, v36, a2);

    v17(v37);
    sub_21B8BB7A4(v17, v18);
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  else
  {
    v34 = a2;
    v20 = v36;
    sub_21B8C09E4(v3, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_21B8C155C(v11, &qword_27CD993A8, &qword_21B8D4568);
      if (qword_27CD991E8 != -1)
      {
        swift_once();
      }

      v21 = sub_21B8D2C70();
      __swift_project_value_buffer(v21, qword_27CD99BD8);
      v22 = v5;
      v23 = *(v5 + 16);
      v24 = v7;
      v25 = v34;
      v23(v7, v20, v34);
      v26 = sub_21B8D2C50();
      v27 = sub_21B8D32A0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v37[0] = v29;
        *v28 = 136315138;
        swift_getDynamicType();
        v30 = sub_21B8D3580();
        v32 = v31;
        (*(v22 + 8))(v24, v25);
        v33 = sub_21B8C0F44(v30, v32, v37);

        *(v28 + 4) = v33;
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x21CEF9ED0](v29, -1, -1);
        MEMORY[0x21CEF9ED0](v28, -1, -1);
      }

      else
      {

        (*(v22 + 8))(v24, v25);
      }
    }

    else
    {
      sub_21B8C14EC(v11, v15);
      MEMORY[0x21CEF93A0](v12);
      sub_21B8D2D40();
      sub_21B8D3070();
      sub_21B8C155C(v15, &qword_27CD993A0, &qword_21B8D4560);
    }
  }
}

uint64_t sub_21B8C09E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A8, &qword_21B8D4568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void AppendSettingsNavigationPathAction.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36[2] = a3;
  v37 = a5;
  v36[1] = a4;
  v38 = a1;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B8D2D80();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A8, &qword_21B8D4568);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A0, &qword_21B8D4560);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v36 - v16;
  v18 = v5 + *(type metadata accessor for AppendSettingsNavigationPathAction(0) + 20);
  v19 = *v18;
  if (*v18)
  {
    v20 = *(v18 + 8);
    v39[3] = a2;
    v39[4] = v37;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(v7 + 16))(boxed_opaque_existential_1, v38, a2);

    v19(v39);
    sub_21B8BB7A4(v19, v20);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v36[0] = a2;
    v22 = v38;
    sub_21B8C09E4(v5, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_21B8C155C(v13, &qword_27CD993A8, &qword_21B8D4568);
      if (qword_27CD991E8 != -1)
      {
        swift_once();
      }

      v23 = sub_21B8D2C70();
      __swift_project_value_buffer(v23, qword_27CD99BD8);
      v24 = v7;
      v25 = *(v7 + 16);
      v26 = v9;
      v27 = v36[0];
      v25(v9, v22, v36[0]);
      v28 = sub_21B8D2C50();
      v29 = sub_21B8D32A0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39[0] = v31;
        *v30 = 136315138;
        swift_getDynamicType();
        v32 = sub_21B8D3580();
        v34 = v33;
        (*(v24 + 8))(v26, v27);
        v35 = sub_21B8C0F44(v32, v34, v39);

        *(v30 + 4) = v35;
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x21CEF9ED0](v31, -1, -1);
        MEMORY[0x21CEF9ED0](v30, -1, -1);
      }

      else
      {

        (*(v24 + 8))(v26, v27);
      }
    }

    else
    {
      sub_21B8C14EC(v13, v17);
      MEMORY[0x21CEF93A0](v14);
      sub_21B8D2D50();
      sub_21B8D3070();
      sub_21B8C155C(v17, &qword_27CD993A0, &qword_21B8D4560);
    }
  }
}

uint64_t static AppendSettingsNavigationPathAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AppendSettingsNavigationPathAction(0) + 24);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(v7 + 8);
  if (v6 & 1) != 0 || (v8)
  {
    return v6 & v8;
  }

  v9 = *v7;
  v10 = *v5;

  return MEMORY[0x282133E80](v10, v9);
}

unint64_t sub_21B8C0F44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21B8C1010(v11, 0, 0, 1, a1, a2);
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
    sub_21B8BC31C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21B8C1010(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21B8C111C(a5, a6);
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
    result = sub_21B8D3460();
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

void *sub_21B8C111C(uint64_t a1, unint64_t a2)
{
  v3 = sub_21B8C1168(a1, a2);
  sub_21B8C1298(&unk_282D4FE68);
  return v3;
}

void *sub_21B8C1168(uint64_t a1, unint64_t a2)
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

  v6 = sub_21B8C1384(v5, 0);
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

  result = sub_21B8D3460();
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
        v10 = sub_21B8D31E0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21B8C1384(v10, 0);
        result = sub_21B8D3430();
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

uint64_t sub_21B8C1298(uint64_t result)
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

  result = sub_21B8C13F8(result, v11, 1, v3);
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

void *sub_21B8C1384(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993C0, &qword_21B8D4728);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21B8C13F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993C0, &qword_21B8D4728);
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

uint64_t sub_21B8C14EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A0, &qword_21B8D4560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B8C155C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppendSettingsNavigationPathActionTrait(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppendSettingsNavigationPathActionTrait(_WORD *result, int a2, int a3)
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

unint64_t sub_21B8C16AC()
{
  result = qword_281218FD0[0];
  if (!qword_281218FD0[0])
  {
    type metadata accessor for AppendSettingsNavigationPathAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281218FD0);
  }

  return result;
}

uint64_t ClearSettingsNavigationPathAction.init(namespace:navigationPath:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A0, &qword_21B8D4560);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  v10 = (a4 + *(v9 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = a4 + *(v9 + 24);
  *v11 = a1;
  *(v11 + 8) = a2 & 1;

  return sub_21B8B9A64(a3, a4);
}

uint64_t sub_21B8C17C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_281218F00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  v3 = __swift_project_value_buffer(v2, qword_281218F08);

  return sub_21B8B9AD4(v3, a1);
}

uint64_t sub_21B8C183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B8C20C8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t static ClearSettingsNavigationPathActionTrait.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281218E48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  v3 = __swift_project_value_buffer(v2, qword_281218E50);
  swift_beginAccess();
  return sub_21B8B9AD4(v3, a1);
}

uint64_t static ClearSettingsNavigationPathActionTrait.defaultValue.setter(uint64_t a1)
{
  if (qword_281218E48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  v3 = __swift_project_value_buffer(v2, qword_281218E50);
  swift_beginAccess();
  sub_21B8C19C8(a1, v3);
  swift_endAccess();
  return sub_21B8B9DC8(a1);
}

uint64_t sub_21B8C19C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static ClearSettingsNavigationPathActionTrait.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_281218E48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  __swift_project_value_buffer(v1, qword_281218E50);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21B8C1AC0(uint64_t a1)
{
  if (qword_281218E48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ClearSettingsNavigationPathAction(0);
  v3 = __swift_project_value_buffer(v2, qword_281218E50);
  swift_beginAccess();
  sub_21B8C19C8(a1, v3);
  return swift_endAccess();
}

uint64_t EnvironmentValues.clearSettingsNavigationPath.getter()
{
  sub_21B8B9618();

  return sub_21B8D2DF0();
}

uint64_t UITraitCollection.clearSettingsNavigationPath.getter()
{
  sub_21B8B9704();

  return sub_21B8D32E0();
}

Swift::Void __swiftcall ClearSettingsNavigationPathAction.callAsFunction()()
{
  v1 = sub_21B8D2D80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A8, &qword_21B8D4568);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993A0, &qword_21B8D4560);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = v0 + *(type metadata accessor for ClearSettingsNavigationPathAction(0) + 20);
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 8);

    v13(v15);

    sub_21B8BB7A4(v13, v14);
  }

  else
  {
    sub_21B8C09E4(v0, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_21B8C155C(v7, &qword_27CD993A8, &qword_21B8D4568);
      if (qword_27CD991E8 != -1)
      {
        swift_once();
      }

      v16 = sub_21B8D2C70();
      __swift_project_value_buffer(v16, qword_27CD99BD8);
      v17 = sub_21B8D2C50();
      v18 = sub_21B8D32A0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        MEMORY[0x21CEF9ED0](v19, -1, -1);
      }
    }

    else
    {
      sub_21B8C14EC(v7, v11);
      MEMORY[0x21CEF93A0](v8);
      v20 = sub_21B8D2D60();
      (*(v2 + 8))(v4, v1);
      if (v20)
      {
        if (qword_27CD991E8 != -1)
        {
          swift_once();
        }

        v21 = sub_21B8D2C70();
        __swift_project_value_buffer(v21, qword_27CD99BD8);
        v22 = sub_21B8D2C50();
        v23 = sub_21B8D32B0();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_21B8B6000, v22, v23, "NavigationPath is already empty.", v24, 2u);
          MEMORY[0x21CEF9ED0](v24, -1, -1);
        }
      }

      else
      {
        sub_21B8D2D70();
        sub_21B8D3070();
      }

      sub_21B8C155C(v11, &qword_27CD993A0, &qword_21B8D4560);
    }
  }
}

uint64_t static ClearSettingsNavigationPathAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ClearSettingsNavigationPathAction(0) + 24);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(v7 + 8);
  if (v6 & 1) != 0 || (v8)
  {
    return v6 & v8;
  }

  v9 = *v7;
  v10 = *v5;

  return MEMORY[0x282133E80](v10, v9);
}

unint64_t sub_21B8C20C8()
{
  result = qword_281219070;
  if (!qword_281219070)
  {
    type metadata accessor for ClearSettingsNavigationPathAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281219070);
  }

  return result;
}

uint64_t sub_21B8C2120@<X0>(uint64_t a1@<X8>)
{
  if (qword_281218E90 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = qword_281218E98;
  v3 = byte_281218EB0;
  *a1 = qword_281218E98;
  v4 = qword_281218EA0;
  *(a1 + 8) = *&qword_281218EA0;
  *(a1 + 24) = v3;

  return sub_21B8B94D0(v2, v4);
}

uint64_t sub_21B8C21A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B8C2674();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t static ResetSettingsNavigationStateActionTrait.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281218C98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_281218CA0;
  v3 = byte_281218CB8;
  *a1 = qword_281218CA0;
  v4 = *algn_281218CA8;
  *(a1 + 8) = *algn_281218CA8;
  *(a1 + 24) = v3;
  return sub_21B8B94D0(v2, v4);
}

uint64_t static ResetSettingsNavigationStateActionTrait.defaultValue.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (qword_281218C98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_281218CA0;
  v6 = *algn_281218CA8;
  qword_281218CA0 = v1;
  *algn_281218CA8 = v2;
  qword_281218CB0 = v3;
  byte_281218CB8 = v4;
  return sub_21B8BB7A4(v5, v6);
}

uint64_t (*static ResetSettingsNavigationStateActionTrait.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_281218C98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21B8C23C8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_21B8B94D0(*a1, v2);
  if (qword_281218C98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_281218CA0;
  v6 = *algn_281218CA8;
  qword_281218CA0 = v1;
  *algn_281218CA8 = v2;
  qword_281218CB0 = v3;
  byte_281218CB8 = v4;
  return sub_21B8BB7A4(v5, v6);
}

uint64_t EnvironmentValues.resetSettingsNavigationState.getter()
{
  sub_21B8B927C();

  return sub_21B8D2DF0();
}

uint64_t UITraitCollection.resetSettingsNavigationState.getter()
{
  sub_21B8B9368();

  return sub_21B8D32E0();
}

Swift::Void __swiftcall ResetSettingsNavigationStateAction.callAsFunction()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 8);

    v1(v3);

    sub_21B8BB7A4(v1, v2);
  }

  else
  {
    if (qword_27CD991E8 != -1)
    {
      swift_once();
    }

    v4 = sub_21B8D2C70();
    __swift_project_value_buffer(v4, qword_27CD99BD8);
    oslog = sub_21B8D2C50();
    v5 = sub_21B8D32A0();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21B8B6000, oslog, v5, "Attempting to reset settings navigation state when there is no reset action set.", v6, 2u);
      MEMORY[0x21CEF9ED0](v6, -1, -1);
    }
  }
}

uint64_t static ResetSettingsNavigationStateAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 & 1) != 0 || (v3)
  {
    return v2 & v3;
  }

  else
  {
    return MEMORY[0x282133E80](*(a1 + 16), *(a2 + 16));
  }
}

unint64_t sub_21B8C2674()
{
  result = qword_281218F30[0];
  if (!qword_281218F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281218F30);
  }

  return result;
}

uint64_t type metadata accessor for PreferencesControllerErrorHostingController(uint64_t a1)
{
  result = qword_27CD993E0;
  if (!qword_27CD993E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_21B8C2754@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 sf_isInternalInstall];

  if (v5)
  {
    v6 = sub_21B8D2E10();
    sub_21B8C2A08(a1, &v35);
    v26 = v43;
    v27 = v44;
    v22 = v39;
    v23 = v40;
    v24 = v41;
    v25 = v42;
    v18 = v35;
    v19 = v36;
    v20 = v37;
    v21 = v38;
    v29[8] = v43;
    v29[9] = v44;
    v29[4] = v39;
    v29[5] = v40;
    v29[6] = v41;
    v29[7] = v42;
    v29[0] = v35;
    v29[1] = v36;
    v28 = v45;
    v30 = v45;
    v29[2] = v37;
    v29[3] = v38;
    sub_21B8C3ED8(&v18, &v31, &qword_27CD993F0, &qword_21B8D4BC0);
    sub_21B8C155C(v29, &qword_27CD993F0, &qword_21B8D4BC0);
    *&v17[119] = v25;
    *&v17[135] = v26;
    *&v17[151] = v27;
    *&v17[55] = v21;
    *&v17[71] = v22;
    *&v17[87] = v23;
    *&v17[103] = v24;
    *&v17[7] = v18;
    *&v17[23] = v19;
    v17[167] = v28;
    *&v17[39] = v20;
    KeyPath = swift_getKeyPath();
    v8 = sub_21B8D2F40();
    *&v32[113] = *&v17[112];
    *&v32[129] = *&v17[128];
    *&v32[145] = *&v17[144];
    *&v32[49] = *&v17[48];
    *&v32[65] = *&v17[64];
    *&v32[81] = *&v17[80];
    *&v32[97] = *&v17[96];
    *&v32[1] = *v17;
    *&v32[17] = *&v17[16];
    LOBYTE(v35) = 1;
    v31 = v6;
    v32[0] = 1;
    *&v32[161] = *&v17[160];
    *&v32[33] = *&v17[32];
    *&v33 = KeyPath;
    BYTE8(v33) = 1;
    v34[0] = v8;
    memset(&v34[8], 0, 32);
    v34[40] = 1;
    nullsub_6();
    v47 = v33;
    v48 = *v34;
    v49[0] = *&v34[16];
    *(v49 + 9) = *&v34[25];
    v43 = *&v32[112];
    v44 = *&v32[128];
    v45 = *&v32[144];
    v46 = *&v32[160];
    v39 = *&v32[48];
    v40 = *&v32[64];
    v41 = *&v32[80];
    v42 = *&v32[96];
    v35 = v31;
    v36 = *v32;
    v37 = *&v32[16];
    v38 = *&v32[32];
  }

  else
  {
    sub_21B8C3458(&v35);
  }

  v9 = v48;
  a2[12] = v47;
  a2[13] = v9;
  a2[14] = v49[0];
  *(a2 + 233) = *(v49 + 9);
  v10 = v44;
  a2[8] = v43;
  a2[9] = v10;
  v11 = v46;
  a2[10] = v45;
  a2[11] = v11;
  v12 = v40;
  a2[4] = v39;
  a2[5] = v12;
  v13 = v42;
  a2[6] = v41;
  a2[7] = v13;
  v14 = v36;
  *a2 = v35;
  a2[1] = v14;
  result = *&v37;
  v16 = v38;
  a2[2] = v37;
  a2[3] = v16;
  return result;
}

uint64_t sub_21B8C2A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B8D3010();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B8D3000();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v35 = sub_21B8D3020();

  (*(v5 + 8))(v7, v4);
  sub_21B8D3080();
  sub_21B8D2D20();
  v34 = v47;
  v8 = v48;
  LOBYTE(v4) = v50;
  v33 = v50;
  v38 = v51;
  v36 = v49;
  v37 = v52;
  v31 = sub_21B8D2FF0();
  KeyPath = swift_getKeyPath();
  LOBYTE(v58) = v8;
  v27 = v8;
  LOBYTE(v53) = v4;
  sub_21B8D2F60();
  v9 = sub_21B8D2F70();
  v28 = v10;
  v29 = v9;
  LOBYTE(v7) = v11;
  v30 = v12;

  v58 = 0;
  v59 = 0xE000000000000000;
  *&v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD993F8, &qword_21B8D4C28);
  sub_21B8D3470();
  sub_21B8D2F50();
  v13 = sub_21B8D2F70();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v44 = v7 & 1;
  v43 = 1;
  *&v53 = v35;
  *(&v53 + 1) = v34;
  LOBYTE(v54) = v8;
  *(&v54 + 1) = *v46;
  DWORD1(v54) = *&v46[3];
  *(&v54 + 1) = v36;
  LOBYTE(v55) = v33;
  DWORD1(v55) = *&v45[3];
  *(&v55 + 1) = *v45;
  *(&v55 + 1) = v38;
  *&v56 = v37;
  *(&v56 + 1) = KeyPath;
  v57 = v31;
  *(v42 + 7) = v53;
  *(&v42[4] + 7) = v31;
  *(&v42[3] + 7) = v56;
  *(&v42[2] + 7) = v55;
  *(&v42[1] + 7) = v54;
  v41 = v7 & 1;
  v40 = v17 & 1;
  v39 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v20 = v42[1];
  *(a2 + 9) = v42[0];
  v21 = v42[2];
  v22 = v42[3];
  *(a2 + 72) = *(&v42[3] + 15);
  *(a2 + 57) = v22;
  *(a2 + 41) = v21;
  *(a2 + 25) = v20;
  v23 = v28;
  v24 = v29;
  *(a2 + 88) = v29;
  *(a2 + 96) = v23;
  *(a2 + 104) = v7 & 1;
  *(a2 + 112) = v30;
  *(a2 + 120) = v13;
  *(a2 + 128) = v15;
  *(a2 + 136) = v17 & 1;
  *(a2 + 144) = v19;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  sub_21B8C3ED8(&v53, &v58, &qword_27CD99400, &qword_21B8D4C30);
  sub_21B8C3C38(v24, v23, v7 & 1);

  sub_21B8C3C38(v13, v15, v17 & 1);

  sub_21B8C3C48(v13, v15, v17 & 1);

  sub_21B8C3C48(v24, v23, v44);

  v58 = v35;
  v59 = v34;
  v60 = v27;
  *v61 = *v46;
  *&v61[3] = *&v46[3];
  v62 = v36;
  v63 = v33;
  *v64 = *v45;
  *&v64[3] = *&v45[3];
  v65 = v38;
  v66 = v37;
  v67 = KeyPath;
  v68 = v31;
  return sub_21B8C155C(&v58, &qword_27CD99400, &qword_21B8D4C30);
}

uint64_t sub_21B8C2E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_21B8D33D0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return sub_21B8C155C(v4, &qword_27CD99410, &qword_21B8D4048);
}

uint64_t sub_21B8C2EE0(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99408, &qword_21B8D4C38);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_21B8D3250();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21B8D4C48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21B8D4C58;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_21B8C3748(0, 0, v9, &unk_21B8D4C68, v14);
}

uint64_t sub_21B8C3068(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = sub_21B8D3230();
  v2[4] = sub_21B8D3220();
  v4 = sub_21B8D3210();

  return MEMORY[0x2822009F8](sub_21B8C3104, v4, v3);
}

uint64_t sub_21B8C3104()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_21B8D3220();
  v3 = sub_21B8D3210();

  return MEMORY[0x2822009F8](sub_21B8C31A4, v3, v2);
}

uint64_t sub_21B8C31A4()
{
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
    v2[2](v2);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

id sub_21B8C322C(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for PreferencesControllerErrorHostingController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_21B8C32A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreferencesControllerErrorHostingController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_21B8C3324(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = objc_allocWithZone(type metadata accessor for PreferencesControllerErrorHostingController(0));
  v4 = v2;
  v5 = sub_21B8D2E20();
  v6 = v5;

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_21B8C33A8(uint64_t *a1, int a2)
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

uint64_t sub_21B8C33F0(uint64_t result, int a2, int a3)
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

double sub_21B8C3458(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 233) = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_21B8C3484(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_21B8C42EC;

  return v6();
}

uint64_t sub_21B8C356C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_21B8C3654;

  return v7();
}

uint64_t sub_21B8C3654()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21B8C3748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99408, &qword_21B8D4C38);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_21B8C3ED8(a3, v23 - v10, &qword_27CD99408, &qword_21B8D4C38);
  v12 = sub_21B8D3250();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21B8C155C(v11, &qword_27CD99408, &qword_21B8D4C38);
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

  sub_21B8D3240();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_21B8D3210();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_21B8D31B0() + 32;
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

    sub_21B8C155C(a3, &qword_27CD99408, &qword_21B8D4C38);

    return v21;
  }

LABEL_8:
  sub_21B8C155C(a3, &qword_27CD99408, &qword_21B8D4C38);
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

uint64_t sub_21B8C3A44(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21B8C3B3C;

  return v6(a1);
}

uint64_t sub_21B8C3B3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21B8C3C38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21B8C3C48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21B8C3C58()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21B8C3654;

  return sub_21B8C3068(v2, v3);
}

uint64_t sub_21B8C3D0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21B8C42EC;

  return sub_21B8C3484(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B8C3E0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21B8C42EC;

  return sub_21B8C356C(a1, v4, v5, v6);
}

uint64_t sub_21B8C3ED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21B8C3F40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B8C42EC;

  return sub_21B8C3A44(a1, v4);
}

uint64_t sub_21B8C3FF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B8C3654;

  return sub_21B8C3A44(a1, v4);
}

unint64_t sub_21B8C40B0()
{
  result = qword_27CD99418;
  if (!qword_27CD99418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD99420, &qword_21B8D4C90);
    sub_21B8C4134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99418);
  }

  return result;
}

unint64_t sub_21B8C4134()
{
  result = qword_27CD99428;
  if (!qword_27CD99428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD99430, &qword_21B8D4C98);
    sub_21B8C41C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99428);
  }

  return result;
}

unint64_t sub_21B8C41C0()
{
  result = qword_27CD99438;
  if (!qword_27CD99438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD99440, &qword_21B8D4CA0);
    sub_21B8C42A4(&qword_27CD99448, &qword_27CD99450, &qword_21B8D4CA8, MEMORY[0x277CE1198]);
    sub_21B8C42A4(&qword_27CD99458, &unk_27CD99460, qword_21B8D4CB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99438);
  }

  return result;
}

uint64_t sub_21B8C42A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_21B8C42FC()
{
  v1 = v0;
  v2 = type metadata accessor for NSBundle.PreferencesPluginLocation(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PreferencesControllerRecipe.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B8C6254(v1, v7, type metadata accessor for PreferencesControllerRecipe.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_21B8D3440();
      MEMORY[0x21CEF9510](0xD000000000000031, 0x800000021B8D5F80);
      swift_getMetatypeMetadata();
      v11 = sub_21B8D3580();
      MEMORY[0x21CEF9510](v11);
    }

    else
    {
      v23 = *v7;
      if (qword_281218E30 != -1)
      {
        swift_once();
      }

      v24 = sub_21B8CC568(v23);
      if (v24)
      {
        v9 = v24;
        v30 = 0;
        v31 = 0xE000000000000000;
        sub_21B8D3440();

        v30 = 0xD00000000000002CLL;
        v31 = 0x800000021B8D5F50;
        v10 = [v9 description];
        goto LABEL_17;
      }

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_21B8D3440();
      MEMORY[0x21CEF9510](0xD000000000000027, 0x800000021B8D5F20);
      v29[1] = v23;
      sub_21B8D3470();
    }

    MEMORY[0x21CEF9510](8200231, 0xE300000000000000);
    return v30;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = *v7;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_21B8D3440();

    v30 = 0xD000000000000019;
    v31 = 0x800000021B8D6010;
    v10 = [v9 description];
LABEL_17:
    v25 = v10;
    v26 = sub_21B8D3190();
    v28 = v27;

    MEMORY[0x21CEF9510](v26, v28);

    MEMORY[0x21CEF9510](8200231, 0xE300000000000000);

    return v30;
  }

  v12 = *v7;
  v13 = v7[1];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99480, &unk_21B8D5160);
  v15 = (v7 + *(v14 + 64));
  v17 = *v15;
  v16 = v15[1];
  sub_21B8C61DC(v7 + *(v14 + 48), v4);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_21B8D3440();
  MEMORY[0x21CEF9510](0xD000000000000027, 0x800000021B8D5FC0);
  MEMORY[0x21CEF9510](v12, v13);

  MEMORY[0x21CEF9510](0x7461636F6C202C27, 0xEE0027203A6E6F69);
  v18 = NSBundle.PreferencesPluginLocation.description.getter();
  MEMORY[0x21CEF9510](v18);

  MEMORY[0x21CEF9510](0xD00000000000001DLL, 0x800000021B8D5FF0);
  if (v16)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0x617069636E697250;
  }

  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0xEF7373616C43206CLL;
  }

  MEMORY[0x21CEF9510](v19, v20);

  MEMORY[0x21CEF9510](8200231, 0xE300000000000000);
  v21 = v30;
  sub_21B8C632C(v4, type metadata accessor for NSBundle.PreferencesPluginLocation);
  return v21;
}

uint64_t PreferencesControllerRecipe.viewControllerIfLoaded.getter()
{
  type metadata accessor for PreferencesControllerRecipe(0);

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t PreferencesControllerRecipe.init(viewController:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_281218E30 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v3 = a1;
  v4 = sub_21B8CC80C(v3);

  *a2 = v4;
  type metadata accessor for PreferencesControllerRecipe.Kind(0);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for PreferencesControllerRecipe(0);
  v6 = v5[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99470, &qword_21B8D4CC8);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = swift_unknownObjectWeakAssign();
  *(a2 + v6) = v7;
  v9 = v5[6];
  *(a2 + v5[7]) = 0;
  *(a2 + v5[8]) = 0;
  *(a2 + v9) = 0;
  return result;
}

uint64_t PreferencesControllerRecipe.init(viewController:specifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_281218E30 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  v5 = a1;
  v6 = sub_21B8CC80C(v5);

  *a3 = v6;
  type metadata accessor for PreferencesControllerRecipe.Kind(0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for PreferencesControllerRecipe(0);
  v8 = v7[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99470, &qword_21B8D4CC8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = swift_unknownObjectWeakAssign();
  *(a3 + v8) = v9;
  v11 = v7[6];
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = a2;
  *(a3 + v11) = 0;
  return result;
}

uint64_t PreferencesControllerRecipe.init(viewController:pendingURLPayload:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_281218E30 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v5 = a1;
  v6 = sub_21B8CC80C(v5);

  *a3 = v6;
  type metadata accessor for PreferencesControllerRecipe.Kind(0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for PreferencesControllerRecipe(0);
  v8 = v7[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99470, &qword_21B8D4CC8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(a3 + v8) = v9;
  v10 = v7[6];
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99478, &unk_21B8D4CD0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = sub_21B8C69D4;
  *(result + 32) = v11;
  *(a3 + v10) = result;
  return result;
}

uint64_t PreferencesControllerRecipe.init(viewController:specifier:pendingURLPayload:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (qword_281218E30 != -1)
  {
    v15 = a1;
    swift_once();
    a1 = v15;
  }

  v7 = a1;
  v8 = sub_21B8CC80C(v7);

  *a4 = v8;
  type metadata accessor for PreferencesControllerRecipe.Kind(0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for PreferencesControllerRecipe(0);
  v10 = v9[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99470, &qword_21B8D4CC8);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(a4 + v10) = v11;
  v12 = v9[6];
  *(a4 + v9[7]) = 0;
  *(a4 + v9[8]) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99478, &unk_21B8D4CD0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = sub_21B8C69D4;
  *(result + 32) = v13;
  *(a4 + v12) = result;
  return result;
}

uint64_t PreferencesControllerRecipe.init(bundleName:location:viewControllerClassName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99480, &unk_21B8D5160);
  v13 = *(v12 + 48);
  v14 = (a6 + *(v12 + 64));
  *a6 = a1;
  a6[1] = a2;
  sub_21B8C61DC(a3, a6 + v13);
  *v14 = a4;
  v14[1] = a5;
  type metadata accessor for PreferencesControllerRecipe.Kind(0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for PreferencesControllerRecipe(0);
  v16 = v15[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99470, &qword_21B8D4CC8);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = swift_unknownObjectWeakAssign();
  *(a6 + v16) = v17;
  v19 = v15[6];
  *(a6 + v15[7]) = 0;
  *(a6 + v15[8]) = 0;
  *(a6 + v19) = 0;
  return result;
}

uint64_t PreferencesControllerRecipe.init(specifier:bundleName:location:viewControllerClassName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99480, &unk_21B8D5160);
  v15 = *(v14 + 48);
  v16 = (a7 + *(v14 + 64));
  *a7 = a2;
  a7[1] = a3;
  sub_21B8C61DC(a4, a7 + v15);
  *v16 = a5;
  v16[1] = a6;
  type metadata accessor for PreferencesControllerRecipe.Kind(0);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for PreferencesControllerRecipe(0);
  v18 = v17[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99470, &qword_21B8D4CC8);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = swift_unknownObjectWeakAssign();
  *(a7 + v18) = v19;
  v21 = v17[6];
  *(a7 + v17[7]) = 0;
  *(a7 + v17[8]) = a1;
  *(a7 + v21) = 0;
  return result;
}

uint64_t PreferencesControllerRecipe.init(bundleName:location:viewControllerClassName:pendingURLPayload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99480, &unk_21B8D5160);
  v15 = *(v14 + 48);
  v16 = (a7 + *(v14 + 64));
  *a7 = a1;
  a7[1] = a2;
  sub_21B8C61DC(a3, a7 + v15);
  *v16 = a4;
  v16[1] = a5;
  type metadata accessor for PreferencesControllerRecipe.Kind(0);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for PreferencesControllerRecipe(0);
  v18 = v17[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99470, &qword_21B8D4CC8);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(a7 + v18) = v19;
  v20 = v17[6];
  *(a7 + v17[7]) = 0;
  *(a7 + v17[8]) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99478, &unk_21B8D4CD0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = sub_21B8C69D4;
  *(result + 32) = v21;
  *(a7 + v20) = result;
  return result;
}

uint64_t PreferencesControllerRecipe.init(specifier:bundleName:location:viewControllerClassName:pendingURLPayload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99480, &unk_21B8D5160);
  v17 = *(v16 + 48);
  v18 = (a8 + *(v16 + 64));
  *a8 = a2;
  a8[1] = a3;
  sub_21B8C61DC(a4, a8 + v17);
  *v18 = a5;
  v18[1] = a6;
  type metadata accessor for PreferencesControllerRecipe.Kind(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for PreferencesControllerRecipe(0);
  v20 = v19[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99470, &qword_21B8D4CC8);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(a8 + v20) = v21;
  v22 = v19[6];
  *(a8 + v19[7]) = 0;
  *(a8 + v19[8]) = a1;
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99478, &unk_21B8D4CD0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = sub_21B8C69D4;
  *(result + 32) = v23;
  *(a8 + v22) = result;
  return result;
}

uint64_t sub_21B8C5178@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for PreferencesControllerRecipe.Kind(0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for PreferencesControllerRecipe(0);
  v5 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99470, &qword_21B8D4CC8);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = swift_unknownObjectWeakAssign();
  *(a3 + v5) = v6;
  v8 = v4[6];
  *(a3 + v4[7]) = 0;
  *(a3 + v4[8]) = 0;
  *(a3 + v8) = 0;
  return result;
}

uint64_t PreferencesControllerRecipe.init(viewControllerClass:specifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for PreferencesControllerRecipe.Kind(0);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for PreferencesControllerRecipe(0);
  v6 = v5[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99470, &qword_21B8D4CC8);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = swift_unknownObjectWeakAssign();
  *(a3 + v6) = v7;
  v9 = v5[6];
  *(a3 + v5[7]) = 0;
  *(a3 + v5[8]) = a2;
  *(a3 + v9) = 0;
  return result;
}

uint64_t sub_21B8C52FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  type metadata accessor for PreferencesControllerRecipe.Kind(0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for PreferencesControllerRecipe(0);
  v10 = v9[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99470, &qword_21B8D4CC8);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(a6 + v10) = v11;
  v12 = v9[6];
  *(a6 + v9[7]) = 0;
  *(a6 + v9[8]) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99478, &unk_21B8D4CD0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a5;
  *(result + 32) = v13;
  *(a6 + v12) = result;
  return result;
}

uint64_t PreferencesControllerRecipe.init(viewControllerClass:specifier:pendingURLPayload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  type metadata accessor for PreferencesControllerRecipe.Kind(0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for PreferencesControllerRecipe(0);
  v8 = v7[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99470, &qword_21B8D4CC8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(a4 + v8) = v9;
  v10 = v7[6];
  *(a4 + v7[7]) = 0;
  *(a4 + v7[8]) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99478, &unk_21B8D4CD0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = sub_21B8C69D4;
  *(result + 32) = v11;
  *(a4 + v10) = result;
  return result;
}

uint64_t PreferencesControllerRecipe.controllerRecipeWithPendingURLPayload(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21B8C6254(v2, a2, type metadata accessor for PreferencesControllerRecipe);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99478, &unk_21B8D4CD0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = sub_21B8C6240;
  *(v6 + 32) = v5;
  v7 = *(type metadata accessor for PreferencesControllerRecipe(0) + 24);

  *(a2 + v7) = v6;
  return result;
}

uint64_t PreferencesControllerRecipe.controllerRecipeWithPendingURLPayload(_:pendingURLCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  sub_21B8C6254(v5, a4, type metadata accessor for PreferencesControllerRecipe);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99478, &unk_21B8D4CD0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = sub_21B8C69D4;
  *(v11 + 32) = v10;
  v12 = type metadata accessor for PreferencesControllerRecipe(0);
  v13 = *(v12 + 24);

  *(a4 + v13) = v11;
  if (a2)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99488, &qword_21B8D4CE0);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = sub_21B8C624C;
    *(v16 + 32) = v15;
    v17 = *(v12 + 28);

    *(a4 + v17) = v16;
  }

  return result;
}

uint64_t sub_21B8C5740@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  if (result)
  {
    v4 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = a2;
    *a3 = sub_21B8C69A4;
    a3[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PreferencesControllerRecipe.settingsPaneRecipe.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99490, &qword_21B8D4CE8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_21B8D3380();
  v38 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD99498, &unk_21B8D4CF0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = type metadata accessor for NSBundle.PreferencesPluginLocation(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PreferencesControllerRecipe.Kind(0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B8C6254(v2, v23, type metadata accessor for PreferencesControllerRecipe.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_4;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_21B8C632C(v23, type metadata accessor for PreferencesControllerRecipe.Kind);
LABEL_4:
    v25 = sub_21B8D30D0();
    return (*(*(v25 - 8) + 56))(v39, 1, 1, v25);
  }

  v36 = *v23;
  v37 = v17;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99480, &unk_21B8D5160) + 48);

  sub_21B8C61DC(v23 + v27, v20);
  sub_21B8D0BA0(v5);
  v28 = v38;
  if ((*(v38 + 48))(v5, 1, v6) != 1)
  {
    (*(v28 + 32))(v11, v5, v6);
    sub_21B8B7F34(0, qword_281218A20, 0x277CCA8D8);
    v29 = sub_21B8D3390();
    sub_21B8D33A0();

    v32 = *(v2 + *(type metadata accessor for PreferencesControllerRecipe(0) + 32));
    if (v32)
    {
      v33 = sub_21B8D3180();
      v34 = [v32 propertyForKey_];

      if (v34)
      {
        sub_21B8D33D0();
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
      }

      v42 = v40;
      v43 = v41;
      v28 = v38;
      if (*(&v41 + 1))
      {
        if (swift_dynamicCast())
        {
          (*(v38 + 16))(v9, v11, v6);
          v28 = v38;
          sub_21B8D30C0();
LABEL_20:

          (*(v28 + 8))(v11, v6);
          sub_21B8C632C(v20, type metadata accessor for NSBundle.PreferencesPluginLocation);
          v35 = sub_21B8D30D0();
          (*(*(v35 - 8) + 56))(v15, 0, 1, v35);
          v31 = v37;
          sub_21B8C62BC(v15, v37);
          return sub_21B8C62BC(v31, v39);
        }

LABEL_19:
        (*(v28 + 16))(v9, v11, v6);
        sub_21B8D30B0();
        goto LABEL_20;
      }
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    sub_21B8C155C(&v42, &qword_27CD99410, &qword_21B8D4048);
    goto LABEL_19;
  }

  sub_21B8C632C(v20, type metadata accessor for NSBundle.PreferencesPluginLocation);

  sub_21B8C155C(v5, &qword_27CD99490, &qword_21B8D4CE8);
  v30 = sub_21B8D30D0();
  v31 = v37;
  (*(*(v30 - 8) + 56))(v37, 1, 1, v30);
  return sub_21B8C62BC(v31, v39);
}

unint64_t PreferencesControllerRecipe.description.getter()
{
  v0 = sub_21B8C42FC();
  MEMORY[0x21CEF9510](v0);

  MEMORY[0x21CEF9510](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

unint64_t sub_21B8C5EA4()
{
  v0 = sub_21B8C42FC();
  MEMORY[0x21CEF9510](v0);

  MEMORY[0x21CEF9510](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

void _s19PreferencesExtended0A16ControllerRecipeV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for NSBundle.PreferencesPluginLocation(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreferencesControllerRecipe.Kind(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B8C6254(v2, v8, type metadata accessor for PreferencesControllerRecipe.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    MEMORY[0x21CEF98A0](*v8);
  }

  else if (EnumCaseMultiPayload)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99480, &unk_21B8D5160);
    v12 = *(v8 + *(v11 + 64) + 8);
    sub_21B8C61DC(v8 + *(v11 + 48), v5);
    sub_21B8D31C0();

    sub_21B8D2B60();
    sub_21B8B8464(&qword_27CD994B8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_21B8D3170();
    if (v12)
    {
      sub_21B8D31C0();
    }

    sub_21B8C632C(v5, type metadata accessor for NSBundle.PreferencesPluginLocation);
  }

  else
  {
    v10 = *v8;
    MEMORY[0x21CEF98A0](*v8);
  }
}

uint64_t PreferencesControllerRecipe.hashValue.getter()
{
  sub_21B8D3550();
  _s19PreferencesExtended0A16ControllerRecipeV4hash4intoys6HasherVz_tF_0(v1);
  return sub_21B8D3570();
}

uint64_t sub_21B8C6160()
{
  sub_21B8D3550();
  _s19PreferencesExtended0A16ControllerRecipeV4hash4intoys6HasherVz_tF_0(v1);
  return sub_21B8D3570();
}

uint64_t sub_21B8C61A0(uint64_t a1)
{
  sub_21B8D3550();
  _s19PreferencesExtended0A16ControllerRecipeV4hash4intoys6HasherVz_tF_0(v2);
  return sub_21B8D3570();
}

uint64_t sub_21B8C61DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSBundle.PreferencesPluginLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B8C6254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B8C62BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD99498, &unk_21B8D4CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B8C632C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s19PreferencesExtended0A16ControllerRecipeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSBundle.PreferencesPluginLocation(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v48 - v7;
  v8 = type metadata accessor for PreferencesControllerRecipe.Kind(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v48 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v48 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = (&v48 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD994C0, &qword_21B8D4E68);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v48 - v22;
  v24 = &v48 + *(v21 + 56) - v22;
  sub_21B8C6254(a1, &v48 - v22, type metadata accessor for PreferencesControllerRecipe.Kind);
  sub_21B8C6254(a2, v24, type metadata accessor for PreferencesControllerRecipe.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21B8C6254(v23, v14, type metadata accessor for PreferencesControllerRecipe.Kind);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_18;
      }

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v28 = ObjCClassFromMetadata == swift_getObjCClassFromMetadata();
    }

    else
    {
      sub_21B8C6254(v23, v11, type metadata accessor for PreferencesControllerRecipe.Kind);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_18;
      }

      v28 = *v11 == *v24;
    }

LABEL_30:
    sub_21B8C632C(v23, type metadata accessor for PreferencesControllerRecipe.Kind);
    return v28 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21B8C6254(v23, v17, type metadata accessor for PreferencesControllerRecipe.Kind);
    v29 = *v17;
    v30 = v17[1];
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99480, &unk_21B8D5160);
    v32 = *(v31 + 48);
    v33 = *(v31 + 64);
    v35 = *(v17 + v33);
    v34 = *(v17 + v33 + 8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_21B8C632C(v17 + v32, type metadata accessor for NSBundle.PreferencesPluginLocation);
      goto LABEL_18;
    }

    v49 = v35;
    v36 = *v24;
    v37 = *(v24 + 1);
    v38 = *&v24[v33];
    v39 = *&v24[v33 + 8];
    v48 = v38;
    v40 = v17 + v32;
    v41 = v51;
    sub_21B8C61DC(v40, v51);
    v42 = &v24[v32];
    v43 = v50;
    sub_21B8C61DC(v42, v50);
    if (v29 == v36 && v30 == v37)
    {
    }

    else
    {
      v45 = sub_21B8D34C0();

      if ((v45 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if (_sSo8NSBundleC19PreferencesExtendedE0B14PluginLocationV2eeoiySbAE_AEtFZ_0())
    {
      if (!v34)
      {
        sub_21B8C632C(v43, type metadata accessor for NSBundle.PreferencesPluginLocation);
        sub_21B8C632C(v41, type metadata accessor for NSBundle.PreferencesPluginLocation);
        if (!v39)
        {
          v28 = 1;
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      if (v39)
      {
        if (v49 == v48 && v34 == v39)
        {
          v28 = 1;
        }

        else
        {
          v28 = sub_21B8D34C0();
        }

        sub_21B8C632C(v43, type metadata accessor for NSBundle.PreferencesPluginLocation);
        sub_21B8C632C(v41, type metadata accessor for NSBundle.PreferencesPluginLocation);
        goto LABEL_30;
      }

LABEL_28:

      sub_21B8C632C(v43, type metadata accessor for NSBundle.PreferencesPluginLocation);
      sub_21B8C632C(v41, type metadata accessor for NSBundle.PreferencesPluginLocation);
LABEL_29:
      v28 = 0;
      goto LABEL_30;
    }

LABEL_27:

    goto LABEL_28;
  }

  sub_21B8C6254(v23, v19, type metadata accessor for PreferencesControllerRecipe.Kind);
  v26 = *v19;
  if (!swift_getEnumCaseMultiPayload())
  {
    v46 = *v24;

    v28 = v26 == v46;
    goto LABEL_30;
  }

LABEL_18:
  sub_21B8C155C(v23, &unk_27CD994C0, &qword_21B8D4E68);
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_21B8C69E0(uint64_t a1)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21B8D2C70();
  __swift_project_value_buffer(v2, qword_28121AE88);

  v3 = sub_21B8D2C50();
  v4 = sub_21B8D32B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D4EA0, &v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21B8C0F44(0xD000000000000011, 0x800000021B8D5D20, &v10);
    _os_log_impl(&dword_21B8B6000, v3, v4, "Start (%s.%s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v6, -1, -1);
    MEMORY[0x21CEF9ED0](v5, -1, -1);
  }

  type metadata accessor for PreferencesControllerRepresentable.Coordinator();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;

  sub_21B8C6B9C(v8);
  return v7;
}

void sub_21B8C6B9C(uint64_t a1)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v1 = sub_21B8D2C70();
  __swift_project_value_buffer(v1, qword_28121AE88);

  oslog = sub_21B8D2C50();
  v2 = sub_21B8D32B0();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D4EA0, &v6);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_21B8C0F44(0xD000000000000011, 0x800000021B8D5D20, &v6);
    _os_log_impl(&dword_21B8B6000, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v4, -1, -1);
    MEMORY[0x21CEF9ED0](v3, -1, -1);
  }
}

id sub_21B8C6D38(uint64_t a1, uint64_t a2)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v3 = sub_21B8D2C70();
  __swift_project_value_buffer(v3, qword_28121AE88);

  v4 = sub_21B8D2C50();
  v5 = sub_21B8D32B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D4EA0, &v10);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_21B8C0F44(0xD00000000000001ELL, 0x800000021B8D6110, &v10);
    _os_log_impl(&dword_21B8B6000, v4, v5, "Start (%s.%s)…", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v7, -1, -1);
    MEMORY[0x21CEF9ED0](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD994F8, &qword_21B8D4FC0);
  sub_21B8D2EF0();

  v8 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();

  sub_21B8C6F28(a2);
  return v8;
}

void sub_21B8C6F28(uint64_t a1)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v1 = sub_21B8D2C70();
  __swift_project_value_buffer(v1, qword_28121AE88);

  oslog = sub_21B8D2C50();
  v2 = sub_21B8D32B0();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D4EA0, &v6);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_21B8C0F44(0xD00000000000001ELL, 0x800000021B8D6110, &v6);
    _os_log_impl(&dword_21B8B6000, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v4, -1, -1);
    MEMORY[0x21CEF9ED0](v3, -1, -1);
  }
}

void sub_21B8C70C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21B8D2DE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v9 = sub_21B8D2C70();
  __swift_project_value_buffer(v9, qword_28121AE88);

  v10 = sub_21B8D2C50();
  v11 = sub_21B8D32B0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D4EA0, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D60E0, &v15);
    _os_log_impl(&dword_21B8B6000, v10, v11, "Start (%s.%s)…", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v13, -1, -1);
    MEMORY[0x21CEF9ED0](v12, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD994F8, &qword_21B8D4FC0);
  sub_21B8D2EF0();

  sub_21B8D2F00();
  sub_21B8D2F10();
  sub_21B8CBB5C(a1);

  (*(v6 + 8))(v8, v5);
  sub_21B8C737C(a3);
}

void sub_21B8C737C(uint64_t a1)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v1 = sub_21B8D2C70();
  __swift_project_value_buffer(v1, qword_28121AE88);

  oslog = sub_21B8D2C50();
  v2 = sub_21B8D32B0();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D4EA0, &v6);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D60E0, &v6);
    _os_log_impl(&dword_21B8B6000, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v4, -1, -1);
    MEMORY[0x21CEF9ED0](v3, -1, -1);
  }
}

uint64_t sub_21B8C752C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B8C69E0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_21B8C7558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B8C76D4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21B8C75BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B8C76D4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21B8C7620(uint64_t a1)
{
  sub_21B8C76D4();
  sub_21B8D2EA0();
  __break(1u);
}

unint64_t sub_21B8C7680()
{
  result = qword_281219550;
  if (!qword_281219550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281219550);
  }

  return result;
}

unint64_t sub_21B8C76D4()
{
  result = qword_281219558[0];
  if (!qword_281219558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281219558);
  }

  return result;
}

void sub_21B8C7728()
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v0 = sub_21B8D2C70();
  __swift_project_value_buffer(v0, qword_28121AE88);
  oslog = sub_21B8D2C50();
  v1 = sub_21B8D32B0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_21B8C0F44(0xD000000000000027, 0x800000021B8D60B0, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_21B8C0F44(0xD000000000000029, 0x800000021B8D5D80, &v5);
    _os_log_impl(&dword_21B8B6000, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v3, -1, -1);
    MEMORY[0x21CEF9ED0](v2, -1, -1);
  }
}

void sub_21B8C78B0(void *a1)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21B8D2C70();
  __swift_project_value_buffer(v2, qword_28121AE88);
  v3 = sub_21B8D2C50();
  v4 = sub_21B8D32B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_21B8C0F44(0xD000000000000027, 0x800000021B8D60B0, &v13);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21B8C0F44(0xD000000000000029, 0x800000021B8D5D80, &v13);
    _os_log_impl(&dword_21B8B6000, v3, v4, "Start (%s.%s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v6, -1, -1);
    MEMORY[0x21CEF9ED0](v5, -1, -1);
  }

  v7 = a1;
  v8 = sub_21B8D2C50();
  v9 = sub_21B8D32B0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_21B8B6000, v8, v9, "Dismantle for %@.", v10, 0xCu);
    sub_21B8BE99C(v11);
    MEMORY[0x21CEF9ED0](v11, -1, -1);
    MEMORY[0x21CEF9ED0](v10, -1, -1);
  }

  sub_21B8C81E8();

  sub_21B8C7728();
}

id sub_21B8C7B0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentViewController];
  *a2 = result;
  return result;
}

id PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD99500, &qword_21B8D4FF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v50 - v4;
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v6 = sub_21B8D2C70();
  v7 = __swift_project_value_buffer(v6, qword_28121AE88);

  v8 = sub_21B8D2C50();
  v9 = sub_21B8D32B0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v54 = v7;
    v11 = v5;
    v12 = v3;
    v13 = v10;
    v14 = swift_slowAlloc();
    v56[0] = v14;
    *v13 = 136315394;
    v15 = sub_21B8D3580();
    v17 = sub_21B8C0F44(v15, v16, v56);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_21B8C0F44(0xD00000000000001CLL, 0x800000021B8D5C70, v56);
    _os_log_impl(&dword_21B8B6000, v8, v9, "Start (%s.%s)…", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v14, -1, -1);
    v18 = v13;
    v3 = v12;
    v5 = v11;
    v7 = v54;
    MEMORY[0x21CEF9ED0](v18, -1, -1);
  }

  v19 = OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel_preferencesController;
  v20 = *(v1 + OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel_preferencesController);
  if (v20)
  {
    v21 = v20;
    v22 = sub_21B8D2C50();
    v23 = sub_21B8D32B0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2113;
      *(v24 + 14) = v21;
      *v25 = v20;
      v26 = v21;
      v27 = "Returning existing preferences controller: %{private,mask.hash}@.";
LABEL_14:
      _os_log_impl(&dword_21B8B6000, v22, v23, v27, v24, 0x16u);
      sub_21B8C155C(v25, &qword_27CD994F0, &unk_21B8D4240);
      MEMORY[0x21CEF9ED0](v25, -1, -1);
      MEMORY[0x21CEF9ED0](v24, -1, -1);
    }
  }

  else
  {
    v53 = v2;
    v54 = v7;
    v52 = v3;
    v28 = sub_21B8C8FA8();
    swift_getKeyPath();
    v56[0] = v1;
    v29 = sub_21B8CBAE4(&qword_281219518, &protocol conformance descriptor for PreferencesControllerRepresentableModel);
    sub_21B8D2BB0();

    v30 = v1 + OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel__recipe;
    swift_beginAccess();
    v31 = type metadata accessor for PreferencesControllerRecipe(0);
    swift_unknownObjectWeakAssign();
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    v51 = v28;
    v33 = v28;
    v34 = v33;
    if (v32)
    {
      v35 = v33;
      [v32 setUrlHandlingDeferredForViewControllerContainment_];
      v36 = objc_opt_self();
      v50[1] = v29;
      v37 = v36;
      v50[0] = v35;
      v38 = [v37 appearance];
      v39 = [v38 extendedLayoutIncludesOpaqueBars];

      [v32 setExtendedLayoutIncludesOpaqueBars_];
      v40 = v50[0];
    }

    swift_getKeyPath();
    v55 = v1;
    sub_21B8D2BB0();

    if (*&v30[*(v31 + 32)])
    {
      [v34 setSpecifier_];
    }

    swift_getKeyPath();
    v41 = v34;
    sub_21B8D2AC0();

    *(swift_allocObject() + 16) = v41;
    sub_21B8BE938();
    v42 = v41;
    v43 = v53;
    v44 = sub_21B8D2D10();

    (*(v52 + 8))(v5, v43);
    *(v1 + OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel_cancellable) = v44;

    v45 = *(v1 + v19);
    v46 = v51;
    *(v1 + v19) = v51;
    v47 = v46;

    v21 = v42;
    v22 = sub_21B8D2C50();
    v23 = sub_21B8D32B0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2113;
      *(v24 + 14) = v21;
      *v25 = v47;
      v48 = v21;
      v27 = "Returning lazily created preferences controller: %{private,mask.hash}@.";
      goto LABEL_14;
    }
  }

  sub_21B8BE308(v1);
  return v21;
}

uint64_t sub_21B8C81E8()
{
  v1 = v0;
  v2 = type metadata accessor for PreferencesControllerRecipe.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel_preferencesController;
  v6 = *(v0 + OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel_preferencesController);
  if (v6)
  {
    v7 = qword_281219300;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = [v8 navigationItem];
    sub_21B8CD928(v9);
  }

  swift_getKeyPath();
  v16[1] = v1;
  sub_21B8CBAE4(&qword_281219518, &protocol conformance descriptor for PreferencesControllerRepresentableModel);
  sub_21B8D2BB0();

  v10 = v1 + OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel__recipe;
  swift_beginAccess();
  sub_21B8CC0B4(v10, v4, type metadata accessor for PreferencesControllerRecipe.Kind);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v11 = *v4;
    if (qword_281218E30 != -1)
    {
      v15 = *v4;
      swift_once();
      v11 = v15;
    }

    sub_21B8CC5DC(v11);
  }

  else
  {
    sub_21B8CC11C(v4, type metadata accessor for PreferencesControllerRecipe.Kind);
  }

  swift_getKeyPath();
  v16[0] = v1;
  sub_21B8D2BB0();

  type metadata accessor for PreferencesControllerRecipe(0);
  swift_unknownObjectWeakAssign();
  v12 = *(v1 + v5);
  *(v1 + v5) = 0;

  v13 = OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel_cancellable;
  if (*(v1 + OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel_cancellable))
  {

    sub_21B8D2D00();
  }

  *(v1 + v13) = 0;
}

uint64_t PreferencesControllerRepresentableModel.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21B8CBAE4(&qword_281219518, &protocol conformance descriptor for PreferencesControllerRepresentableModel);
  sub_21B8D2BB0();

  v3 = OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel__recipe;
  swift_beginAccess();
  return sub_21B8CC0B4(v5 + v3, a1, type metadata accessor for PreferencesControllerRecipe);
}

uint64_t sub_21B8C8560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21B8CBAE4(&qword_281219518, &protocol conformance descriptor for PreferencesControllerRepresentableModel);
  sub_21B8D2BB0();

  v4 = OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel__recipe;
  swift_beginAccess();
  return sub_21B8CC0B4(v3 + v4, a2, type metadata accessor for PreferencesControllerRecipe);
}

uint64_t sub_21B8C8628(uint64_t a1)
{
  v2 = type metadata accessor for PreferencesControllerRecipe(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B8CC0B4(a1, v4, type metadata accessor for PreferencesControllerRecipe);
  return sub_21B8C86C8(v4);
}

uint64_t sub_21B8C86C8(uint64_t a1)
{
  v3 = type metadata accessor for PreferencesControllerRecipe(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel__recipe;
  swift_beginAccess();
  sub_21B8CC0B4(v1 + v6, v5, type metadata accessor for PreferencesControllerRecipe);
  v7 = _s19PreferencesExtended0A16ControllerRecipeV2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_21B8CC11C(v5, type metadata accessor for PreferencesControllerRecipe);
  if (v7)
  {
    swift_beginAccess();
    sub_21B8CC050(a1, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_21B8CBAE4(&qword_281219518, &protocol conformance descriptor for PreferencesControllerRepresentableModel);
    sub_21B8D2BA0();
  }

  return sub_21B8CC11C(a1, type metadata accessor for PreferencesControllerRecipe);
}

uint64_t sub_21B8C8898(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel__recipe;
  swift_beginAccess();
  sub_21B8CC050(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t PreferencesControllerRepresentableModel.__allocating_init(recipe:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PreferencesControllerRepresentableModel.init(recipe:)(a1);
  return v2;
}

void *PreferencesControllerRepresentableModel.init(recipe:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PreferencesControllerRecipe(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel_preferencesController) = 0;
  *(v1 + OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel_cancellable) = 0;
  sub_21B8D2BC0();
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v7 = sub_21B8D2C70();
  __swift_project_value_buffer(v7, qword_28121AE88);
  sub_21B8CC0B4(a1, v6, type metadata accessor for PreferencesControllerRecipe);

  v8 = sub_21B8D2C50();
  v9 = sub_21B8D3280();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315907;
    v12 = sub_21B8D3580();
    v14 = sub_21B8C0F44(v12, v13, &v23);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_21B8C0F44(0x6365722874696E69, 0xED0000293A657069, &v23);
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2081;
    v21 = 0xD00000000000001CLL;
    v22 = 0x800000021B8D5ED0;
    v15 = sub_21B8C42FC();
    MEMORY[0x21CEF9510](v15);

    MEMORY[0x21CEF9510](41, 0xE100000000000000);
    v16 = v21;
    v17 = v22;
    sub_21B8CC11C(v6, type metadata accessor for PreferencesControllerRecipe);
    v18 = sub_21B8C0F44(v16, v17, &v23);

    *(v10 + 34) = v18;
    _os_log_impl(&dword_21B8B6000, v8, v9, "Start (%s.%s) recipe: %{private,mask.hash}s…", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v11, -1, -1);
    MEMORY[0x21CEF9ED0](v10, -1, -1);
  }

  else
  {

    sub_21B8CC11C(v6, type metadata accessor for PreferencesControllerRecipe);
  }

  sub_21B8CC0B4(a1, v2 + OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel__recipe, type metadata accessor for PreferencesControllerRecipe);
  sub_21B8C8CB0(v2, a1);
  sub_21B8CC11C(a1, type metadata accessor for PreferencesControllerRecipe);
  return v2;
}

void sub_21B8C8CB0(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for PreferencesControllerRecipe(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v6 = sub_21B8D2C70();
  __swift_project_value_buffer(v6, qword_28121AE88);
  sub_21B8CC0B4(a2, v5, type metadata accessor for PreferencesControllerRecipe);

  v7 = sub_21B8D2C50();
  v8 = sub_21B8D3280();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315907;
    v11 = sub_21B8D3580();
    v13 = sub_21B8C0F44(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_21B8C0F44(0x6365722874696E69, 0xED0000293A657069, &v21);
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021B8D5ED0;
    v14 = sub_21B8C42FC();
    MEMORY[0x21CEF9510](v14);

    MEMORY[0x21CEF9510](41, 0xE100000000000000);
    v15 = v19;
    v16 = v20;
    sub_21B8CC11C(v5, type metadata accessor for PreferencesControllerRecipe);
    v17 = sub_21B8C0F44(v15, v16, &v21);

    *(v9 + 34) = v17;
    _os_log_impl(&dword_21B8B6000, v7, v8, "…Complete (%s.%s) recipe: %{private,mask.hash}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v10, -1, -1);
    MEMORY[0x21CEF9ED0](v9, -1, -1);
  }

  else
  {

    sub_21B8CC11C(v5, type metadata accessor for PreferencesControllerRecipe);
  }
}

uint64_t sub_21B8C8FA8()
{
  v1 = v0;
  v202 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for NSBundle.PreferencesPluginLocation(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  *&v187 = &v183 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v183 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v183 - v8;
  v189 = sub_21B8D2C10();
  v188 = *(v189 - 8);
  v10 = MEMORY[0x28223BE20](v189);
  v190 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v183 - v12;
  v14 = type metadata accessor for PreferencesControllerRecipe.Kind(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v17 = sub_21B8D2C70();
  v18 = __swift_project_value_buffer(v17, qword_28121AE88);

  v19 = sub_21B8D2C50();
  v20 = sub_21B8D32B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v192 = v18;
    v22 = v21;
    v23 = swift_slowAlloc();
    v191 = v9;
    v193 = v1;
    v24 = v23;
    *&v197 = v23;
    *v22 = 136315394;
    v25 = sub_21B8D3580();
    v27 = v7;
    v28 = v13;
    v29 = sub_21B8C0F44(v25, v26, &v197);

    *(v22 + 4) = v29;
    v13 = v28;
    v7 = v27;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_21B8C0F44(0xD000000000000014, 0x800000021B8D6290, &v197);
    _os_log_impl(&dword_21B8B6000, v19, v20, "Start (%s.%s)…", v22, 0x16u);
    swift_arrayDestroy();
    v30 = v24;
    v1 = v193;
    v9 = v191;
    MEMORY[0x21CEF9ED0](v30, -1, -1);
    v31 = v22;
    v18 = v192;
    MEMORY[0x21CEF9ED0](v31, -1, -1);
  }

  swift_getKeyPath();
  *&v197 = v1;
  sub_21B8CBAE4(&qword_281219518, &protocol conformance descriptor for PreferencesControllerRepresentableModel);
  sub_21B8D2BB0();

  v32 = OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel__recipe;
  swift_beginAccess();
  sub_21B8CC0B4(v1 + v32, v16, type metadata accessor for PreferencesControllerRecipe.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v34 = *v16;
      *&v195 = sub_21B8D3190();
      *(&v195 + 1) = v35;
      v36 = [v34 objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v36)
      {
        sub_21B8D33D0();
        swift_unknownObjectRelease();
      }

      else
      {
        v195 = 0u;
        v196 = 0u;
      }

      v197 = v195;
      v198 = v196;
      if (*(&v196 + 1))
      {
        if (swift_dynamicCast())
        {
          v89 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
          v90 = sub_21B8D3180();

          v91 = [v89 initWithPath_];

          if (v91)
          {
            v192 = v18;
            v193 = v1;
            if (qword_281218BE8 != -1)
            {
              swift_once();
            }

            v92 = sub_21B8D2C40();
            __swift_project_value_buffer(v92, qword_28121AE70);
            sub_21B8D2C00();
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            *&v197 = v94;
            *v93 = 136446210;
            v95 = [v91 bundlePath];
            v96 = sub_21B8D3190();
            v97 = v13;
            v99 = v98;

            v100 = sub_21B8C0F44(v96, v99, &v197);
            v101 = v97;

            *(v93 + 4) = v100;
            v102 = sub_21B8D2C30();
            LOBYTE(v100) = sub_21B8D3310();
            v103 = sub_21B8D2BF0();
            _os_signpost_emit_with_name_impl(&dword_21B8B6000, v102, v100, v103, "Preferences Plugin Bundle Load (via PSSpecifier)", "Bundle: %{public}s", v93, 0xCu);
            *&v195 = 0;
            if ([v91 loadAndReturnError_])
            {
              v104 = v195;
              v105 = sub_21B8D3300();
              v106 = sub_21B8D2BF0();
              _os_signpost_emit_with_name_impl(&dword_21B8B6000, v102, v105, v106, "Preferences Plugin Bundle Load (via PSSpecifier)", "Bundle: %{public}s", v93, 0xCu);

              __swift_destroy_boxed_opaque_existential_0(v94);
              MEMORY[0x21CEF9ED0](v94, -1, -1);
              MEMORY[0x21CEF9ED0](v93, -1, -1);
              (*(v188 + 8))(v101, v189);
              *&v195 = sub_21B8D3190();
              *(&v195 + 1) = v107;
              v108 = [v34 objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v108)
              {
                sub_21B8D33D0();
                swift_unknownObjectRelease();
              }

              else
              {
                v195 = 0u;
                v196 = 0u;
              }

              v1 = v193;
              v197 = v195;
              v198 = v196;
              if (*(&v196 + 1))
              {
                if (swift_dynamicCast())
                {
                  v166 = sub_21B8D3180();

                  v167 = NSClassFromString(v166);

                  [v34 setDetailControllerClass_];
LABEL_65:

                  goto LABEL_66;
                }
              }

              else
              {
                sub_21B8C155C(&v197, &qword_27CD99410, &qword_21B8D4048);
              }

              [v34 setDetailControllerClass_];
              goto LABEL_65;
            }

            v153 = v195;
            v123 = sub_21B8D2A80();

            swift_willThrow();
            (*(v188 + 8))(v101, v189);
            v1 = v193;
LABEL_74:
            v172 = v123;
            v173 = sub_21B8D2C50();
            v174 = sub_21B8D3290();

            if (os_log_type_enabled(v173, v174))
            {
              v175 = swift_slowAlloc();
              v176 = swift_slowAlloc();
              *&v197 = v176;
              *v175 = 136446210;
              swift_getErrorValue();
              v177 = sub_21B8D34F0();
              v179 = sub_21B8C0F44(v177, v178, &v197);

              *(v175 + 4) = v179;
              _os_log_impl(&dword_21B8B6000, v173, v174, "Encountered error creating view controller: '%{public}s'", v175, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v176);
              MEMORY[0x21CEF9ED0](v176, -1, -1);
              MEMORY[0x21CEF9ED0](v175, -1, -1);
            }

            v180 = objc_allocWithZone(type metadata accessor for PreferencesControllerErrorHostingController(0));
            *&v197 = v123;
            v51 = sub_21B8D2E30();
LABEL_77:
            v80 = v51;
            goto LABEL_78;
          }
        }
      }

      else
      {
        sub_21B8C155C(&v197, &qword_27CD99410, &qword_21B8D4048);
      }

LABEL_66:
      v168 = [objc_allocWithZone(MEMORY[0x277D3FA48]) init];
      ObjectType = [v168 selectSpecifier_];
      v170 = ObjectType;
      if (ObjectType)
      {
        ObjectType = swift_getObjectType();
      }

      else
      {
        *(&v197 + 1) = 0;
        *&v198 = 0;
      }

      *&v197 = v170;
      *(&v198 + 1) = ObjectType;
      sub_21B8CC1D0(&v197, &v195);
      if (*(&v196 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD99520, &qword_21B8D4DC0);
        if (swift_dynamicCast())
        {

          v80 = v194;
          sub_21B8C155C(&v197, &qword_27CD99410, &qword_21B8D4048);
          goto LABEL_78;
        }
      }

      else
      {
        sub_21B8C155C(&v195, &qword_27CD99410, &qword_21B8D4048);
      }

      sub_21B8CC17C();
      v123 = swift_allocError();
      *v171 = 3;
      swift_willThrow();

      sub_21B8C155C(&v197, &qword_27CD99410, &qword_21B8D4048);
      goto LABEL_74;
    }

    v52 = *v16;
    v53 = v16[1];
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99480, &unk_21B8D5160);
    v55 = *(v54 + 48);
    v56 = (v16 + *(v54 + 64));
    v58 = *v56;
    v57 = v56[1];
    v186 = v58;
    v193 = v57;
    sub_21B8C61DC(v16 + v55, v9);
    sub_21B8CC0B4(v9, v7, type metadata accessor for NSBundle.PreferencesPluginLocation);

    v59 = sub_21B8D2C50();
    v60 = sub_21B8D32B0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v192 = v18;
      v62 = v61;
      v63 = v9;
      v64 = v1;
      v65 = swift_slowAlloc();
      *&v197 = v65;
      *v62 = 136446466;
      *(v62 + 4) = sub_21B8C0F44(v52, v53, &v197);
      *(v62 + 12) = 2082;
      v66 = NSBundle.PreferencesPluginLocation.description.getter();
      v67 = v7;
      v68 = v53;
      v69 = v52;
      v70 = v66;
      v72 = v71;
      sub_21B8CC11C(v67, type metadata accessor for NSBundle.PreferencesPluginLocation);
      v73 = sub_21B8C0F44(v70, v72, &v197);

      *(v62 + 14) = v73;
      v52 = v69;
      v53 = v68;
      _os_log_impl(&dword_21B8B6000, v59, v60, "Retrieving preferences plugin with name '%{public}s' at location '%{public}s'.", v62, 0x16u);
      swift_arrayDestroy();
      v74 = v65;
      v1 = v64;
      v9 = v63;
      MEMORY[0x21CEF9ED0](v74, -1, -1);
      v75 = v62;
      v18 = v192;
      MEMORY[0x21CEF9ED0](v75, -1, -1);
    }

    else
    {

      sub_21B8CC11C(v7, type metadata accessor for NSBundle.PreferencesPluginLocation);
    }

    v109 = sub_21B8D1D74(v52, v53);
    v110 = v187;
    sub_21B8CC0B4(v9, v187, type metadata accessor for NSBundle.PreferencesPluginLocation);

    v111 = sub_21B8D2C50();
    v112 = sub_21B8D32B0();

    v113 = os_log_type_enabled(v111, v112);
    v192 = v18;
    v185 = v52;
    if (v113)
    {
      v114 = swift_slowAlloc();
      v184 = v109;
      v115 = v110;
      v116 = v114;
      v117 = swift_slowAlloc();
      *&v197 = v117;
      *v116 = 136446466;
      *(v116 + 4) = sub_21B8C0F44(v52, v53, &v197);
      *(v116 + 12) = 2082;
      v118 = NSBundle.PreferencesPluginLocation.description.getter();
      v120 = v119;
      v121 = v115;
      v109 = v184;
      sub_21B8CC11C(v121, type metadata accessor for NSBundle.PreferencesPluginLocation);
      v122 = sub_21B8C0F44(v118, v120, &v197);

      *(v116 + 14) = v122;
      _os_log_impl(&dword_21B8B6000, v111, v112, "Loading plugin with name '%{public}s' at location '%{public}s'.", v116, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEF9ED0](v117, -1, -1);
      MEMORY[0x21CEF9ED0](v116, -1, -1);
    }

    else
    {

      sub_21B8CC11C(v110, type metadata accessor for NSBundle.PreferencesPluginLocation);
    }

    v191 = v9;
    if (qword_281218BE8 != -1)
    {
      swift_once();
    }

    v125 = sub_21B8D2C40();
    __swift_project_value_buffer(v125, qword_28121AE70);
    sub_21B8D2C00();
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *&v197 = v127;
    *&v128 = 136446210;
    v187 = v128;
    *v126 = 136446210;
    v129 = [v109 bundlePath];
    v130 = sub_21B8D3190();
    v132 = v131;

    v133 = v130;
    v134 = v190;
    v135 = sub_21B8C0F44(v133, v132, &v197);

    *(v126 + 4) = v135;
    v136 = sub_21B8D2C30();
    LOBYTE(v135) = sub_21B8D3310();
    v137 = sub_21B8D2BF0();
    _os_signpost_emit_with_name_impl(&dword_21B8B6000, v136, v135, v137, "Preferences Plugin Bundle Load", "Bundle: %{public}s", v126, 0xCu);
    *&v195 = 0;
    if (![v109 loadAndReturnError_])
    {
      v152 = v195;
      v123 = sub_21B8D2A80();

      swift_willThrow();

      sub_21B8CC11C(v191, type metadata accessor for NSBundle.PreferencesPluginLocation);
      (*(v188 + 8))(v134, v189);
      goto LABEL_74;
    }

    v138 = v195;
    v139 = sub_21B8D3300();
    v140 = sub_21B8D2BF0();
    _os_signpost_emit_with_name_impl(&dword_21B8B6000, v136, v139, v140, "Preferences Plugin Bundle Load", "Bundle: %{public}s", v126, 0xCu);

    __swift_destroy_boxed_opaque_existential_0(v127);
    MEMORY[0x21CEF9ED0](v127, -1, -1);
    MEMORY[0x21CEF9ED0](v126, -1, -1);
    (*(v188 + 8))(v134, v189);
    if (v193)
    {

      v141 = sub_21B8D3180();
      v142 = NSClassFromString(v141);

      v143 = v193;

      v144 = v191;
      if (v142)
      {
        swift_getObjCClassMetadata();
        v199 = &unk_282D65418;
        if (swift_dynamicCastTypeToObjCProtocolConditional())
        {
          sub_21B8B7F34(0, &qword_281218B30, 0x277D75D28);
          if (swift_dynamicCastMetatype())
          {

            v145 = sub_21B8D2C50();
            v146 = sub_21B8D32B0();

            if (os_log_type_enabled(v145, v146))
            {
              v147 = swift_slowAlloc();
              v148 = swift_slowAlloc();
              *&v197 = v148;
              *v147 = 136446466;
              v149 = sub_21B8C0F44(v186, v143, &v197);

              *(v147 + 4) = v149;
              *(v147 + 12) = 2082;
              v150 = sub_21B8C0F44(v185, v53, &v197);

              *(v147 + 14) = v150;
              _os_log_impl(&dword_21B8B6000, v145, v146, "Retrieving '%{public}s' from bundle '%{public}s'.", v147, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x21CEF9ED0](v148, -1, -1);
              MEMORY[0x21CEF9ED0](v147, -1, -1);

              v151 = v191;
            }

            else
            {

              v151 = v144;
            }

            sub_21B8CC11C(v151, type metadata accessor for NSBundle.PreferencesPluginLocation);
            goto LABEL_13;
          }
        }
      }

      v154 = sub_21B8D2C50();
      v155 = sub_21B8D32A0();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        *&v197 = v157;
        *v156 = 136446466;

        v158 = sub_21B8C0F44(v186, v143, &v197);

        *(v156 + 4) = v158;
        *(v156 + 12) = 2082;
        v159 = sub_21B8C0F44(v185, v53, &v197);

        *(v156 + 14) = v159;
        _os_log_impl(&dword_21B8B6000, v154, v155, "Cannot use '%{public}s' as it could not be loaded from bundle '%{public}s', falling back to principal class.", v156, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEF9ED0](v157, -1, -1);
        v160 = v156;
LABEL_57:
        MEMORY[0x21CEF9ED0](v160, -1, -1);
        goto LABEL_80;
      }

      swift_bridgeObjectRelease_n();
    }

    else
    {

      v154 = sub_21B8D2C50();
      v161 = sub_21B8D32B0();

      v162 = os_log_type_enabled(v154, v161);
      v144 = v191;
      if (v162)
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *&v197 = v164;
        *v163 = v187;
        v165 = sub_21B8C0F44(v185, v53, &v197);

        *(v163 + 4) = v165;
        _os_log_impl(&dword_21B8B6000, v154, v161, "Retrieving principal class from bundle '%{public}s'.", v163, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v164);
        MEMORY[0x21CEF9ED0](v164, -1, -1);
        v160 = v163;
        goto LABEL_57;
      }
    }

LABEL_80:

    if (![v109 principalClass] || (swift_getObjCClassMetadata(), v200 = &unk_282D65418, !swift_dynamicCastTypeToObjCProtocolConditional()) || (sub_21B8B7F34(0, &qword_281218B30, 0x277D75D28), !swift_dynamicCastMetatype()))
    {
      sub_21B8CC17C();
      v123 = swift_allocError();
      *v182 = 2;
      swift_willThrow();

      sub_21B8CC11C(v144, type metadata accessor for NSBundle.PreferencesPluginLocation);
      goto LABEL_74;
    }

    sub_21B8CC11C(v144, type metadata accessor for NSBundle.PreferencesPluginLocation);

LABEL_13:
    v44 = sub_21B8D2C50();
    v45 = sub_21B8D32B0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v197 = v47;
      *v46 = 136446210;
      v48 = sub_21B8D3580();
      v50 = sub_21B8C0F44(v48, v49, &v197);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_21B8B6000, v44, v45, "Initializing %{public}s.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x21CEF9ED0](v47, -1, -1);
      MEMORY[0x21CEF9ED0](v46, -1, -1);
    }

    v51 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    goto LABEL_77;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v37 = sub_21B8D2C50();
    v38 = sub_21B8D32B0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v197 = v40;
      *v39 = 136446210;
      v41 = sub_21B8D3580();
      v43 = sub_21B8C0F44(v41, v42, &v197);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_21B8B6000, v37, v38, "Eagerly loading controller of type '%{public}s'", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x21CEF9ED0](v40, -1, -1);
      MEMORY[0x21CEF9ED0](v39, -1, -1);
    }

    goto LABEL_13;
  }

  v76 = *v16;
  if (qword_281218E30 != -1)
  {
    swift_once();
  }

  v77 = sub_21B8CC568(v76);
  if (!v77)
  {
LABEL_40:
    sub_21B8BE8D0();
    v123 = swift_allocError();
    *v124 = v76;
    swift_willThrow();
    goto LABEL_74;
  }

  v78 = v77;
  v201 = &unk_282D65418;
  v79 = swift_dynamicCastObjCProtocolConditional();
  if (!v79)
  {

    goto LABEL_40;
  }

  v80 = v79;
  v81 = v78;
  v82 = sub_21B8D2C50();
  v83 = sub_21B8D32B0();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&v197 = v85;
    *v84 = 136446210;
    swift_getObjectType();
    v86 = sub_21B8D3580();
    v88 = sub_21B8C0F44(v86, v87, &v197);

    *(v84 + 4) = v88;
    _os_log_impl(&dword_21B8B6000, v82, v83, "Using existing controller of type '%{public}s'.", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v85);
    MEMORY[0x21CEF9ED0](v85, -1, -1);
    MEMORY[0x21CEF9ED0](v84, -1, -1);
  }

LABEL_78:
  sub_21B8CA9D0(v1);
  return v80;
}

void sub_21B8CA9D0(void *a1)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v1 = sub_21B8D2C70();
  __swift_project_value_buffer(v1, qword_28121AE88);

  oslog = sub_21B8D2C50();
  v2 = sub_21B8D32B0();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315394;
    v5 = sub_21B8D3580();
    v7 = sub_21B8C0F44(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_21B8C0F44(0xD000000000000014, 0x800000021B8D6290, &v9);
    _os_log_impl(&dword_21B8B6000, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v4, -1, -1);
    MEMORY[0x21CEF9ED0](v3, -1, -1);
  }
}

void sub_21B8CAB98(void *a1, void *a2)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v3 = sub_21B8D2C70();
  __swift_project_value_buffer(v3, qword_28121AE88);

  v4 = a2;
  oslog = sub_21B8D2C50();
  v5 = sub_21B8D32B0();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v6 = 136315907;
    v9 = sub_21B8D3580();
    v11 = sub_21B8C0F44(v9, v10, &v14);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_21B8C0F44(0xD000000000000037, 0x800000021B8D61C0, &v14);
    *(v6 + 22) = 2160;
    *(v6 + 24) = 1752392040;
    *(v6 + 32) = 2113;
    *(v6 + 34) = v4;
    *v7 = v4;
    v12 = v4;
    _os_log_impl(&dword_21B8B6000, oslog, v5, "…Complete (%s.%s), preferencesController: %{private,mask.hash}@", v6, 0x2Au);
    sub_21B8C155C(v7, &qword_27CD994F0, &unk_21B8D4240);
    MEMORY[0x21CEF9ED0](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v8, -1, -1);
    MEMORY[0x21CEF9ED0](v6, -1, -1);
  }
}

void sub_21B8CADD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21B8D2C70();
  __swift_project_value_buffer(v8, qword_28121AE88);

  v9 = sub_21B8D2C50();
  v10 = sub_21B8D32B0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315394;
    v13 = sub_21B8D3580();
    v15 = sub_21B8C0F44(v13, v14, v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_21B8C0F44(0xD00000000000002ALL, 0x800000021B8D6200, v21);
    _os_log_impl(&dword_21B8B6000, v9, v10, "Start (%s.%s)…", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v12, -1, -1);
    MEMORY[0x21CEF9ED0](v11, -1, -1);
  }

  v16 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
  v17 = sub_21B8D3150();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = v4;
  v21[4] = sub_21B8CBFE4;
  v21[5] = v18;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_21B8CB6F8;
  v21[3] = &block_descriptor;
  v19 = _Block_copy(v21);

  v20 = v16;

  sub_21B8B94D0(a2, a3);

  [v20 handleURL:v17 withCompletion:v19];
  _Block_release(v19);
}

void sub_21B8CB0BC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = a1;
  sub_21B8D3420();
  if (!*(a2 + 16) || (v11 = sub_21B8BEED4(v41), (v12 & 1) == 0))
  {
    sub_21B8BF0A8(v41);
    goto LABEL_12;
  }

  sub_21B8BC31C(*(a2 + 56) + 32 * v11, v42);
  sub_21B8BF0A8(v41);
  sub_21B8B7F34(0, &qword_281218A10, 0x277CCACA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = [0x68746170 pathComponents];
  v14 = sub_21B8D3200();

  v15 = *(v14 + 16);

  if (v15 == 1)
  {
    v16 = [0x68746170 pathComponents];
    v17 = sub_21B8D3200();

    if (*(v17 + 16))
    {

      v18 = sub_21B8D3180();

      v19 = SFObjectAndOffsetForURLPair();

      v20 = sub_21B8D3160();
      sub_21B8D3420();
      if (!*(v20 + 16) || (v21 = sub_21B8BEED4(v41), (v22 & 1) == 0))
      {

        sub_21B8BF0A8(v41);
        goto LABEL_13;
      }

      sub_21B8BC31C(*(v20 + 56) + 32 * v21, v42);
      sub_21B8BF0A8(v41);

      if (swift_dynamicCast())
      {
        v23 = sub_21B8D3180();
        [v9 _scrollToSpecifierWithID_animated_];

        v24 = sub_21B8D3180();

        [v9 highlightSpecifierWithID_];

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

LABEL_13:
  if (a3)
  {
    a3();
  }

  else
  {
    if (qword_281218BF0 != -1)
    {
      swift_once();
    }

    v25 = sub_21B8D2C70();
    __swift_project_value_buffer(v25, qword_28121AE88);

    v26 = sub_21B8D2C50();
    v27 = sub_21B8D32A0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41[0] = v29;
      *v28 = 136315394;
      v30 = sub_21B8D3580();
      v32 = sub_21B8C0F44(v30, v31, v41);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_21B8C0F44(0xD00000000000002ALL, 0x800000021B8D6200, v41);
      _os_log_impl(&dword_21B8B6000, v26, v27, "%s.%s: completion block not present", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEF9ED0](v29, -1, -1);
      MEMORY[0x21CEF9ED0](v28, -1, -1);
    }
  }

  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v33 = sub_21B8D2C70();
  __swift_project_value_buffer(v33, qword_28121AE88);

  v34 = sub_21B8D2C50();
  v35 = sub_21B8D32B0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41[0] = v37;
    *v36 = 136315394;
    v38 = sub_21B8D3580();
    v40 = sub_21B8C0F44(v38, v39, v41);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_21B8C0F44(0xD00000000000002ALL, 0x800000021B8D6200, v41);
    _os_log_impl(&dword_21B8B6000, v34, v35, "…Complete (%s.%s)", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v37, -1, -1);
    MEMORY[0x21CEF9ED0](v36, -1, -1);
  }
}

uint64_t sub_21B8CB6F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t PreferencesControllerRepresentableModel.deinit()
{
  sub_21B8CC11C(v0 + OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel__recipe, type metadata accessor for PreferencesControllerRecipe);

  v1 = OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel___observationRegistrar;
  v2 = sub_21B8D2BD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PreferencesControllerRepresentableModel.__deallocating_deinit()
{
  sub_21B8CC11C(v0 + OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel__recipe, type metadata accessor for PreferencesControllerRecipe);

  v1 = OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel___observationRegistrar;
  v2 = sub_21B8D2BD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t PreferencesControllerRepresentableModel.hashValue.getter()
{
  sub_21B8D3550();
  MEMORY[0x21CEF98A0](v0);
  return sub_21B8D3570();
}

uint64_t PreferencesControllerRepresentableModel.description.getter()
{
  v0 = sub_21B8D3580();
  MEMORY[0x21CEF9510](v0);

  MEMORY[0x21CEF9510](8250, 0xE200000000000000);
  sub_21B8D3470();
  return 0;
}

uint64_t sub_21B8CB9F8()
{
  v0 = sub_21B8D3580();
  MEMORY[0x21CEF9510](v0);

  MEMORY[0x21CEF9510](8250, 0xE200000000000000);
  sub_21B8D3470();
  return 0;
}

uint64_t sub_21B8CBAE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PreferencesControllerRepresentableModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21B8CBB5C(void *a1)
{
  v2 = v1;
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v4 = sub_21B8D2C70();
  __swift_project_value_buffer(v4, qword_28121AE88);

  v5 = a1;
  v6 = sub_21B8D2C50();
  v7 = sub_21B8D32B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33[0] = v10;
    *v8 = 136315907;
    v11 = sub_21B8D3580();
    v13 = sub_21B8C0F44(v11, v12, v33);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_21B8C0F44(0xD000000000000037, 0x800000021B8D61C0, v33);
    *(v8 + 22) = 2160;
    *(v8 + 24) = 1752392040;
    *(v8 + 32) = 2113;
    *(v8 + 34) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&dword_21B8B6000, v6, v7, "Start (%s.%s), preferencesController: %{private,mask.hash}@…", v8, 0x2Au);
    sub_21B8C155C(v9, &qword_27CD994F0, &unk_21B8D4240);
    MEMORY[0x21CEF9ED0](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v10, -1, -1);
    MEMORY[0x21CEF9ED0](v8, -1, -1);
  }

  swift_getKeyPath();
  v33[0] = v2;
  sub_21B8CBAE4(&qword_281219518, &protocol conformance descriptor for PreferencesControllerRepresentableModel);
  sub_21B8D2BB0();

  v15 = v2 + OBJC_IVAR____TtC19PreferencesExtended39PreferencesControllerRepresentableModel__recipe;
  swift_beginAccess();
  v16 = type metadata accessor for PreferencesControllerRecipe(0);
  v17 = *&v15[*(v16 + 24)];
  if (v17 && (*(v17 + 16) & 1) == 0)
  {
    v31 = *(v17 + 24);
    v18 = 1;
    *(v17 + 16) = 1;
    v19 = v16;
    swift_getKeyPath();
    v32 = v2;

    sub_21B8D2BB0();

    v21 = *&v15[*(v19 + 28)];
    if (v21 && (*(v21 + 16) & 1) == 0)
    {
      v25 = *(v21 + 24);
      v24 = *(v21 + 32);
      *(v21 + 16) = 1;
      v23 = swift_allocObject();
      *(v23 + 16) = v25;
      *(v23 + 24) = v24;

      v18 = 0;
      v22 = sub_21B8CBF7C;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v31(&v32, v20);

    v26 = v32;
    if (v18)
    {
      v27 = 0;
      v28 = 0;
    }

    else
    {

      v27 = (v22)(v29);
      v28 = v30;
      sub_21B8BB7A4(v22, v23);
    }

    sub_21B8CADD8(v26, v27, v28);
    sub_21B8BB7A4(v27, v28);

    sub_21B8BB7A4(v22, v23);
  }

  sub_21B8CAB98(v2, v5);
}

uint64_t (*sub_21B8CBF7C())()
{
  (*(v0 + 16))(&v2);
  *(swift_allocObject() + 16) = v2;
  return sub_21B8CC00C;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21B8CC050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreferencesControllerRecipe(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B8CC0B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B8CC11C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21B8CC17C()
{
  result = qword_27CD99518;
  if (!qword_27CD99518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD99518);
  }

  return result;
}

uint64_t sub_21B8CC1D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99410, &qword_21B8D4048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *PreferencesControllerView.init(preferencesControllerRepresentableModel:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for PreferencesControllerRepresentableModel(0);
  result = sub_21B8D3030();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t PreferencesControllerView.init(preferencesControllerRecipe:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PreferencesControllerRecipe(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B8CC35C(a1, v6);
  type metadata accessor for PreferencesControllerRepresentableModel(0);
  swift_allocObject();
  v9[1] = PreferencesControllerRepresentableModel.init(recipe:)(v6);
  sub_21B8D3030();
  result = sub_21B8CC3C0(a1);
  v8 = v9[3];
  *a2 = v9[2];
  a2[1] = v8;
  return result;
}

uint64_t sub_21B8CC35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreferencesControllerRecipe(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B8CC3C0(uint64_t a1)
{
  v2 = type metadata accessor for PreferencesControllerRecipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PreferencesControllerView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99530, &qword_21B8D5170);
  sub_21B8D3040();
  sub_21B8C7680();
  sub_21B8BFEB0();
  sub_21B8D2FE0();
}

uint64_t sub_21B8CC4D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99530, &qword_21B8D5170);
  sub_21B8D3040();
  sub_21B8C7680();
  sub_21B8BFEB0();
  sub_21B8D2FE0();
}

void *sub_21B8CC568(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_21B8BEE04(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

void sub_21B8CC5DC(uint64_t a1)
{
  v2 = v1;
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v4 = sub_21B8D2C70();
  __swift_project_value_buffer(v4, qword_28121AE88);

  v5 = sub_21B8D2C50();
  v6 = sub_21B8D32B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315650;
    v9 = sub_21B8D3580();
    v11 = sub_21B8C0F44(v9, v10, v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D6300, v16);
    *(v7 + 22) = 2080;
    v12 = sub_21B8D31A0();
    v14 = sub_21B8C0F44(v12, v13, v16);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_21B8B6000, v5, v6, "Start (%s.%s)…%s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v8, -1, -1);
    MEMORY[0x21CEF9ED0](v7, -1, -1);
  }

  swift_beginAccess();
  v15 = sub_21B8CEB40(a1);
  swift_endAccess();

  sub_21B8CCE0C(v2);
}

void *sub_21B8CC80C(void *a1)
{
  v2 = v1;
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v4 = sub_21B8D2C70();
  __swift_project_value_buffer(v4, qword_28121AE88);

  v5 = sub_21B8D2C50();
  v6 = sub_21B8D32B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27[0] = v8;
    *v7 = 136315650;
    v9 = sub_21B8D3580();
    v11 = sub_21B8C0F44(v9, v10, v27);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_21B8C0F44(0x7265747369676572, 0xEC000000293A5F28, v27);
    *(v7 + 22) = 2080;
    v12 = sub_21B8D31A0();
    v14 = sub_21B8C0F44(v12, v13, v27);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_21B8B6000, v5, v6, "Start (%s.%s)…%s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v8, -1, -1);
    MEMORY[0x21CEF9ED0](v7, -1, -1);
  }

  swift_beginAccess();
  if (*(v2[2] + 16) && (sub_21B8BEE04(a1), (v15 & 1) != 0))
  {
    swift_endAccess();

    v16 = sub_21B8D2C50();
    v17 = sub_21B8D32B0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27[0] = v19;
      *v18 = 136315394;
      v20 = sub_21B8D3580();
      v22 = sub_21B8C0F44(v20, v21, v27);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_21B8C0F44(0x7265747369676572, 0xEC000000293A5F28, v27);
      _os_log_impl(&dword_21B8B6000, v16, v17, "…Complete (early bail) (%s.%s)", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEF9ED0](v19, -1, -1);
      MEMORY[0x21CEF9ED0](v18, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    v23 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v2[2];
    v2[2] = 0x8000000000000000;
    sub_21B8CF37C(v23, v23, isUniquelyReferenced_nonNull_native);
    v2[2] = v26;
    swift_endAccess();
    sub_21B8CCC40(v2);
  }

  return a1;
}

unint64_t sub_21B8CCBF8()
{
  type metadata accessor for PlatformViewControllerRepresentableMap();
  v0 = swift_allocObject();
  result = sub_21B8CF7E4(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_28121AEA0 = v0;
  return result;
}

void sub_21B8CCC40(void *a1)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v1 = sub_21B8D2C70();
  __swift_project_value_buffer(v1, qword_28121AE88);

  oslog = sub_21B8D2C50();
  v2 = sub_21B8D32B0();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315394;
    v5 = sub_21B8D3580();
    v7 = sub_21B8C0F44(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_21B8C0F44(0x7265747369676572, 0xEC000000293A5F28, &v9);
    _os_log_impl(&dword_21B8B6000, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v4, -1, -1);
    MEMORY[0x21CEF9ED0](v3, -1, -1);
  }
}

void sub_21B8CCE0C(void *a1)
{
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v1 = sub_21B8D2C70();
  __swift_project_value_buffer(v1, qword_28121AE88);

  oslog = sub_21B8D2C50();
  v2 = sub_21B8D32B0();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315394;
    v5 = sub_21B8D3580();
    v7 = sub_21B8C0F44(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_21B8C0F44(0xD000000000000022, 0x800000021B8D6300, &v9);
    _os_log_impl(&dword_21B8B6000, oslog, v2, "…Complete (%s.%s)", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF9ED0](v4, -1, -1);
    MEMORY[0x21CEF9ED0](v3, -1, -1);
  }
}

uint64_t sub_21B8CCFD4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

PreferencesExtended::SettingsAppPrimaryNavigationMode_optional __swiftcall SettingsAppPrimaryNavigationMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_21B8CD054()
{
  v1 = *v0;
  sub_21B8D3550();
  MEMORY[0x21CEF98A0](v1);
  return sub_21B8D3570();
}

uint64_t sub_21B8CD0C8(uint64_t a1)
{
  v2 = *v1;
  sub_21B8D3550();
  MEMORY[0x21CEF98A0](v2);
  return sub_21B8D3570();
}

uint64_t static SettingsAppPrimaryNavigationModeKey.defaultValue.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CD99538;
  return result;
}

uint64_t static SettingsAppPrimaryNavigationModeKey.defaultValue.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CD99538 = v1;
  return result;
}

uint64_t sub_21B8CD1F8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CD99538;
  return result;
}

uint64_t EnvironmentValues.settingsAppPrimaryNavigationMode.getter()
{
  sub_21B8B8EF0();

  return sub_21B8D2DF0();
}

uint64_t sub_21B8CD28C@<X0>(_BYTE *a1@<X8>)
{
  sub_21B8B8EF0();
  result = sub_21B8D2DF0();
  *a1 = v3;
  return result;
}

uint64_t static SettingsAppPrimaryNavigationModeTrait.defaultValue.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_281218E78 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_27CD99539;
  return result;
}

uint64_t UITraitCollection.settingsAppPrimaryNavigationMode.getter()
{
  sub_21B8B8A48();
  sub_21B8B8A9C();

  return sub_21B8D32D0();
}

uint64_t UIMutableTraits.settingsAppPrimaryNavigationMode.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B8B8A48();
  v5 = sub_21B8B8A9C();

  return MEMORY[0x2821DCDF0](&type metadata for SettingsAppPrimaryNavigationModeTrait, &type metadata for SettingsAppPrimaryNavigationModeTrait, v4, v5, a1, a2);
}

uint64_t (*UIMutableTraits.settingsAppPrimaryNavigationMode.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  a1[1] = a3;
  a1[2] = v3;
  *a1 = a2;
  UIMutableTraits.settingsAppPrimaryNavigationMode.getter(a2, a3);
  return sub_21B8CD4B0;
}

uint64_t sub_21B8CD4B0(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = *a1;
  if (a2)
  {
    v7 = *(a1 + 24);
    v5 = &v7;
  }

  else
  {
    v8 = *(a1 + 24);
    v5 = &v8;
  }

  return UIMutableTraits.settingsAppPrimaryNavigationMode.setter(v5, v4, v3);
}

uint64_t static SettingsAppPrimaryNavigationModeKey.read(from:)()
{
  sub_21B8B8A48();
  sub_21B8B8A9C();
  return sub_21B8D32D0();
}

uint64_t static SettingsAppPrimaryNavigationModeKey.write(to:value:)(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = v2;
  return UIMutableTraits.settingsAppPrimaryNavigationMode.setter(&v6, v3, v4);
}

void sub_21B8CD5E0(void *a1, void *a2)
{
  v3 = v2;
  v6 = [a1 navigationItem];
  swift_beginAccess();
  if (*(*(v2 + 16) + 16) && (sub_21B8BEE04(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    type metadata accessor for UINavigationItemProxySession();
    swift_allocObject();
    v8 = a1;
    v9 = sub_21B8CDBB8(v8, a2);
    if (qword_281218BF0 != -1)
    {
      swift_once();
    }

    v10 = sub_21B8D2C70();
    __swift_project_value_buffer(v10, qword_28121AE88);

    v11 = sub_21B8D2C50();
    v12 = sub_21B8D32B0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[0] = v14;
      *v13 = 136315650;
      v15 = sub_21B8D31A0();
      v17 = sub_21B8C0F44(v15, v16, v27);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v18 = sub_21B8D31A0();
      v20 = sub_21B8C0F44(v18, v19, v27);

      *(v13 + 14) = v20;
      *(v13 + 22) = 2082;
      v21 = sub_21B8D31A0();
      v23 = sub_21B8C0F44(v21, v22, v27);

      *(v13 + 24) = v23;
      _os_log_impl(&dword_21B8B6000, v11, v12, "Created UINavigationItemProxySession %s (from: %{public}s, to: %{public}s).", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEF9ED0](v14, -1, -1);
      MEMORY[0x21CEF9ED0](v13, -1, -1);
    }

    v24 = [v8 navigationItem];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    sub_21B8CF230(v9, v24, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v26;
    swift_endAccess();
  }
}

uint64_t sub_21B8CD928(void *a1)
{
  swift_beginAccess();
  if (!*(*(v1 + 16) + 16))
  {
    return swift_endAccess();
  }

  sub_21B8BEE04(a1);
  if ((v3 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v4 = sub_21B8D2C70();
  __swift_project_value_buffer(v4, qword_28121AE88);
  v5 = a1;
  v6 = sub_21B8D2C50();
  v7 = sub_21B8D32B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136446210;
    v10 = sub_21B8D31A0();
    v12 = sub_21B8C0F44(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21B8B6000, v6, v7, "Stopping session of UINavigationItem %{public}s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x21CEF9ED0](v9, -1, -1);
    MEMORY[0x21CEF9ED0](v8, -1, -1);
  }

  swift_beginAccess();
  sub_21B8CEB58(v5, sub_21B8CF4C4);
  swift_endAccess();
}

unint64_t sub_21B8CDB14()
{
  type metadata accessor for UINavigationItemProxyManager();
  v0 = swift_allocObject();
  result = sub_21B8CF8F4(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_28121AEA8 = v0;
  return result;
}

uint64_t sub_21B8CDB80()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_21B8CDBB8(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for UINavigationItemProxySession.ProxyBox();
  v3[2] = 0;
  v3[3] = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v7 = sub_21B8D2C70();
  __swift_project_value_buffer(v7, qword_28121AE88);
  v8 = a1;
  v9 = sub_21B8D2C50();
  v10 = sub_21B8D32B0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;

    v13 = sub_21B8D31A0();
    v15 = a2;
    v16 = sub_21B8C0F44(v13, v14, &v30);

    *(v11 + 4) = v16;
    a2 = v15;
    _os_log_impl(&dword_21B8B6000, v9, v10, "Setting up _UINavigationItemProxy for %s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x21CEF9ED0](v12, -1, -1);
    MEMORY[0x21CEF9ED0](v11, -1, -1);
  }

  v17 = [v8 navigationItem];
  *(v6 + 16) = v17;
  v18 = [a2 navigationItem];
  v19 = [v8 navigationItem];
  v20 = [objc_allocWithZone(MEMORY[0x277D76128]) initWithDestinationNavigationItem:v18 sourceNavigationItem:v19];

  v21 = *(v6 + 24);
  *(v6 + 24) = v20;

  v30 = v8;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();

  v22 = sub_21B8D2AB0();

  v23 = v3[2];
  v3[2] = v22;

  v30 = v8;
  swift_getKeyPath();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  swift_weakInit();

  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  v27 = sub_21B8D2AB0();

  v28 = v3[3];
  v3[3] = v27;

  v3[4] = v6;
  return v3;
}

void sub_21B8CDF74(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;

  v4 = [v3 parentViewController];
  if (v4)
  {
  }

  else
  {
    if (qword_281218BF0 != -1)
    {
      swift_once();
    }

    v5 = sub_21B8D2C70();
    __swift_project_value_buffer(v5, qword_28121AE88);
    v6 = sub_21B8D2C50();
    v7 = sub_21B8D32B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16[0] = v9;
      *v8 = 136315138;
      v10 = sub_21B8D31A0();
      v12 = sub_21B8C0F44(v10, v11, v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21B8B6000, v6, v7, "Tearing down _UINavigationItemProxy for %s.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x21CEF9ED0](v9, -1, -1);
      MEMORY[0x21CEF9ED0](v8, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = *(Strong + 24);
      *(Strong + 24) = 0;
    }

    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      *(v15 + 16) = 0;
    }
  }
}

void sub_21B8CE190(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 toolbarItems];
  if (v3)
  {
    v4 = v3;
    sub_21B8CF63C();
    v5 = sub_21B8D3200();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_21B8CE200(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_21B8CF63C();
    v3 = sub_21B8D31F0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setToolbarItems_];
}

void sub_21B8CE278(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong toolbarItems];
    if (v7)
    {
      v8 = v7;
      sub_21B8CF63C();
      v9 = sub_21B8D3200();
    }

    else
    {
      v9 = 0;
    }

    v21 = [v4 toolbarItems];
    if (v21)
    {
      v22 = v21;
      sub_21B8CF63C();
      v23 = sub_21B8D3200();

      if (v9)
      {
        if (v23)
        {
          v24 = sub_21B8CE900(v9, v23);

          if (v24)
          {
            goto LABEL_27;
          }

          goto LABEL_22;
        }

LABEL_21:

LABEL_22:
        if (qword_281218BF0 != -1)
        {
          swift_once();
        }

        v25 = sub_21B8D2C70();
        __swift_project_value_buffer(v25, qword_28121AE88);
        v26 = v4;
        v27 = v6;
        v28 = sub_21B8D2C50();
        v29 = sub_21B8D32B0();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 141558787;
          *(v30 + 4) = 1752392040;
          *(v30 + 12) = 2113;
          *(v30 + 14) = v26;
          *(v30 + 22) = 2160;
          *(v30 + 24) = 1752392040;
          *(v30 + 32) = 2113;
          *(v30 + 34) = v27;
          *v31 = v26;
          v31[1] = v6;
          v32 = v26;
          v33 = v27;
          _os_log_impl(&dword_21B8B6000, v28, v29, "Copying toolbarItems from %{private,mask.hash}@ to %{private,mask.hash}@.", v30, 0x2Au);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD994F0, &unk_21B8D4240);
          swift_arrayDestroy();
          MEMORY[0x21CEF9ED0](v31, -1, -1);
          MEMORY[0x21CEF9ED0](v30, -1, -1);
        }

        v34 = [v26 toolbarItems];
        [v27 setToolbarItems_];

        return;
      }

      if (v23)
      {
        goto LABEL_21;
      }
    }

    else if (v9)
    {
      goto LABEL_21;
    }

LABEL_27:

    return;
  }

  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v10 = sub_21B8D2C70();
  __swift_project_value_buffer(v10, qword_28121AE88);
  v11 = sub_21B8D2C50();
  v12 = sub_21B8D32B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35[0] = v14;
    *v13 = 136315138;
    v15 = sub_21B8D31A0();
    v17 = sub_21B8C0F44(v15, v16, v35);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_21B8B6000, v11, v12, "Tearing down _UINavigationItemProxy for %s.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x21CEF9ED0](v14, -1, -1);
    MEMORY[0x21CEF9ED0](v13, -1, -1);
  }

  swift_beginAccess();
  v18 = swift_weakLoadStrong();
  if (v18)
  {
    v19 = *(v18 + 24);
    *(v18 + 24) = 0;
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    *(v20 + 16) = 0;
  }
}

uint64_t sub_21B8CE6C8()
{
  v1 = v0;
  if (qword_281218BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21B8D2C70();
  __swift_project_value_buffer(v2, qword_28121AE88);

  v3 = sub_21B8D2C50();
  v4 = sub_21B8D32B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = sub_21B8D31A0();
    v9 = sub_21B8C0F44(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21B8B6000, v3, v4, "Teardown UINavigationItemProxySession %{public}s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x21CEF9ED0](v6, -1, -1);
    MEMORY[0x21CEF9ED0](v5, -1, -1);
  }

  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = v10;
    sub_21B8D2A70();
  }

  v12 = *(v1 + 24);
  if (v12)
  {
    v13 = v12;
    sub_21B8D2A70();
  }

  v14 = *(v1 + 32);
  v15 = *(v14 + 24);
  *(v14 + 24) = 0;

  return v1;
}

uint64_t sub_21B8CE888()
{
  v0 = sub_21B8CE6C8();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21B8CE900(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_21B8CF63C();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x21CEF9790](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x21CEF9790](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_21B8D33B0();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_21B8D33B0();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_21B8D3480();
  }

  result = sub_21B8D3480();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_21B8CEB58(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = sub_21B8BEE04(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a2();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 8 * v7);
  sub_21B8CF0C0(v7, v9);
  *v4 = v9;
  return v10;
}

uint64_t sub_21B8CEBE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99548, qword_21B8D5540);
  result = sub_21B8D34A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_21B8D3540();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B8CEE58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD99550, &unk_21B8D55D0);
  result = sub_21B8D34A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_21B8D3540();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21B8CF0C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B8D33F0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_21B8D3540();
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
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
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