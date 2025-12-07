unint64_t sub_192131758()
{
  result = qword_1EADF05D8;
  if (!qword_1EADF05D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF05C8, &qword_1922350C0);
    sub_19213290C(&qword_1EADF05E0, MEMORY[0x1E697CBD0], MEMORY[0x1E697CBC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF05D8);
  }

  return result;
}

unint64_t sub_19213180C()
{
  result = qword_1EADF05E8;
  if (!qword_1EADF05E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF05D0, &qword_1922350C8);
    sub_192031E74(&qword_1EADF05F0, &qword_1EADF05F8, &qword_1922350D0, &unk_1922351D8);
    sub_19213290C(&qword_1EADF0600, type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle, &unk_192235188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF05E8);
  }

  return result;
}

uint64_t type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle(uint64_t a1)
{
  result = qword_1EADF0628;
  if (!qword_1EADF0628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19213195C(uint64_t a1)
{
  v2 = sub_192226C60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05C8, &qword_1922350C0);
  MEMORY[0x1EEE9AC00](v5);
  sub_192226C50();
  (*(v3 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05D0, &qword_1922350C8);
  sub_192131758();
  sub_19213180C();
  return sub_192227350();
}

unint64_t sub_192131B40()
{
  result = qword_1EADF0608;
  if (!qword_1EADF0608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0610, &qword_192235148);
    sub_192031E74(&qword_1EADF0618, &qword_1EADF0620, &qword_192235150, MEMORY[0x1E697FE48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0608);
  }

  return result;
}

uint64_t sub_192131C18(uint64_t a1)
{
  result = sub_192226C60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_192131C84(uint64_t a1)
{
  result = sub_192226C60();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_192131D0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_192226C60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_192131F4C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_192226C60() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

unint64_t sub_1921322BC()
{
  result = qword_1EADF06E8;
  if (!qword_1EADF06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF06E8);
  }

  return result;
}

uint64_t sub_192132310@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_192226C60() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1921312CC(v4, a1);
}

uint64_t sub_192132390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921323F4(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192132450(uint64_t a1)
{
  result = sub_192226C60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226C60();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_192132598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle.LabelStyle(0, *(v3 + 16), *(v3 + 24), a2) - 8);
  v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_19212FB24(a1, v7, a3);
}

unint64_t sub_192132634()
{
  result = qword_1EADF07C0;
  if (!qword_1EADF07C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0700, &qword_192235250);
    sub_19213290C(&qword_1EADF07C8, MEMORY[0x1E697CBB0], MEMORY[0x1E697CBA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF07C0);
  }

  return result;
}

unint64_t sub_1921326E8()
{
  result = qword_1EADF07D0;
  if (!qword_1EADF07D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF07B8, &qword_1922352F0);
    sub_1921327A0();
    sub_192031E74(&qword_1EADF07F8, &qword_1EADF0800, &qword_192235308, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF07D0);
  }

  return result;
}

unint64_t sub_1921327A0()
{
  result = qword_1EADF07D8;
  if (!qword_1EADF07D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF07E0, &unk_1922352F8);
    sub_192132858();
    sub_192031E74(&qword_1EADEFF70, &qword_1EADEFF78, &qword_192231FD0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF07D8);
  }

  return result;
}

unint64_t sub_192132858()
{
  result = qword_1EADF07E8;
  if (!qword_1EADF07E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0708, &qword_192235258);
    sub_19213290C(&qword_1EADF07F0, MEMORY[0x1E697CBC0], MEMORY[0x1E697CBB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF07E8);
  }

  return result;
}

uint64_t sub_19213290C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t EnvironmentValues.widget.getter()
{
  sub_192050FFC();
  sub_1922261E0();
  return v1;
}

void (*EnvironmentValues.widget.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_192050FFC();
  sub_1922261E0();
  return sub_192132A30;
}

void sub_192132A30(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_1922261F0();
    v5 = *a1;
  }

  else
  {
    sub_1922261F0();
  }
}

uint64_t sub_192132ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_192132B64(uint64_t a1)
{
  v2 = sub_19206A320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192132BA0(uint64_t a1)
{
  v2 = sub_19206A320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetURLModifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0848, &qword_192235410);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19206A320();
  sub_192228B90();
  sub_192225020();
  sub_19203F924(&qword_1ED74BB38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_192228850();
  return (*(v3 + 8))(v5, v2);
}

uint64_t WidgetURLModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0850, &qword_192235418);
  sub_192051870(v2, a2 + *(v5 + 36));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0858, &qword_192235420);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t sub_192132DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19203F924(&qword_1ED74AB88, type metadata accessor for WidgetURLModifier, &protocol conformance descriptor for WidgetURLModifier);

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_192132F30(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0848, &qword_192235410);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19206A320();
  sub_192228B90();
  sub_192225020();
  sub_19203F924(&qword_1ED74BB38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_192228850();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static WidgetURLPreferenceKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED7499B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v3 = __swift_project_value_buffer(v2, qword_1ED748A78);
  swift_beginAccess();
  return sub_192051870(v3, a1);
}

uint64_t static WidgetURLPreferenceKey.defaultValue.setter(uint64_t a1)
{
  if (qword_1ED7499B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v3 = __swift_project_value_buffer(v2, qword_1ED748A78);
  swift_beginAccess();
  sub_192100974(a1, v3);
  swift_endAccess();
  return sub_1921331E8(a1);
}

uint64_t sub_1921331E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static WidgetURLPreferenceKey.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ED7499B8 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  __swift_project_value_buffer(v1, qword_1ED748A78);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1921332F0(uint64_t a1)
{
  if (qword_1ED7499B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v3 = __swift_project_value_buffer(v2, qword_1ED748A78);
  swift_beginAccess();
  sub_192100974(a1, v3);
  return swift_endAccess();
}

uint64_t static WidgetURLPreferenceKey.reduce(value:nextValue:)(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  sub_19205EC64(a1, v6);
  v10 = sub_192225020();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v6, 1, v10) == 1)
  {
    a2();
    if (v12(v6, 1, v10) != 1)
    {
      sub_1921331E8(v6);
    }
  }

  else
  {
    (*(v11 + 32))(v9, v6, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
  }

  return sub_19205EC64(v9, a1);
}

uint64_t sub_192133538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0870, &qword_192235740);
  sub_192051870(v2, a2 + *(v5 + 36));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0878, &qword_192235748);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0880, &qword_192235750) + 36);

  return sub_192051870(v2, v7);
}

uint64_t View.widgetURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v19[0] = type metadata accessor for WidgetURLMetadataModifier(0);
  MEMORY[0x1EEE9AC00](v19[0]);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetURLModifier(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_192225C70();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - v14;
  sub_192051870(a1, v11);
  MEMORY[0x193B0A190](v11, a2, v9, a3);
  sub_192133878(v11, type metadata accessor for WidgetURLModifier);
  sub_192051870(a1, v8);
  v16 = sub_19203F924(&qword_1ED74AE00, type metadata accessor for WidgetURLModifier, &protocol conformance descriptor for WidgetURLModifier);
  v19[2] = a3;
  v19[3] = v16;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193B0A190](v8, v12, v19[0], WitnessTable);
  sub_192133878(v8, type metadata accessor for WidgetURLMetadataModifier);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_192133878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.hiddenWidgetURL(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetURLModifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192051870(a1, v8);
  MEMORY[0x193B0A190](v8, a2, v6, a3);
  return sub_192133878(v8, type metadata accessor for WidgetURLModifier);
}

uint64_t sub_1921339AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_192225020();
  __swift_allocate_value_buffer(v3, qword_1EADECC08);
  v4 = __swift_project_value_buffer(v3, qword_1EADECC08);
  sub_192225010();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t IgnoredWidgetURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADECC00 != -1)
  {
    swift_once();
  }

  v2 = sub_192225020();
  v3 = __swift_project_value_buffer(v2, qword_1EADECC08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_192133C48()
{
  result = qword_1EADF0868;
  if (!qword_1EADF0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0868);
  }

  return result;
}

unint64_t sub_192133CB8()
{
  result = qword_1ED749B88;
  if (!qword_1ED749B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0880, &qword_192235750);
    sub_192133D70();
    sub_192031E74(qword_1ED749BA0, &qword_1EADF0860, &qword_1922355B8, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749B88);
  }

  return result;
}

unint64_t sub_192133D70()
{
  result = qword_1ED749B90;
  if (!qword_1ED749B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0870, &qword_192235740);
    sub_192031E74(&unk_1ED749B70, &qword_1EADF0878, &qword_192235748, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1ED749B98, &qword_1EADF0888, &qword_192235758, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749B90);
  }

  return result;
}

id sub_192133E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF08A0, &qword_1922358A0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF08A8, &qword_1922358A8) + 36)) = v7;

  return v7;
}

uint64_t static WidgetLightingImagePreferenceKey.reduce(value:nextValue:)(uint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    result = a2();
  }

  *a1 = result;
  return result;
}

uint64_t sub_192133F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_192031E74(&qword_1EADF08B8, &qword_1EADF08C0, &qword_1922358B0, MEMORY[0x1E69E7C90]);

  return MEMORY[0x1EEDDE438](a1, a2, v4);
}

void *sub_192133FC0(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_192134008(uint64_t a1)
{
  v2 = sub_1921341DC();

  return MEMORY[0x1EEDE0700](a1, v2);
}

void View.widgetLightingImage(image:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1)
  {
    v5 = a2;
    v6 = a1;
    if (CGImageGetWidth(v6) < 33)
    {
    }

    else
    {
      Height = CGImageGetHeight(v6);

      if (Height > 32)
      {
        v4 = 0;
LABEL_7:
        a2 = v5;
        goto LABEL_8;
      }
    }

    v8 = v6;
    goto LABEL_7;
  }

LABEL_8:
  v9 = v4;
  MEMORY[0x193B0A190](&v9, a2, &type metadata for WidgetLightingImageModifier, a3);
}

unint64_t sub_1921340F8()
{
  result = qword_1EADF0890;
  if (!qword_1EADF0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0890);
  }

  return result;
}

unint64_t sub_19213415C()
{
  result = qword_1EADF0898;
  if (!qword_1EADF0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0898);
  }

  return result;
}

unint64_t sub_1921341DC()
{
  result = qword_1EADF08B0;
  if (!qword_1EADF08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF08B0);
  }

  return result;
}

unint64_t sub_192134230()
{
  result = qword_1EADF08C8;
  if (!qword_1EADF08C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF08A8, &qword_1922358A8);
    sub_192031E74(&qword_1EADF08D0, &qword_1EADF08A0, &qword_1922358A0, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1EADF08D8, &qword_1EADF08E0, &qword_1922358B8, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF08C8);
  }

  return result;
}

uint64_t sub_19213431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_192134340, 0, 0);
}

uint64_t sub_192134340()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 56);
    v4 = [v2 linkAction];
    *(v0 + 80) = v4;
    if (v4)
    {
      v5 = v4;
      *(v0 + 40) = sub_192134788();
      *(v0 + 16) = v5;
      v6 = v5;
      v7 = swift_task_alloc();
      *(v0 + 88) = v7;
      *v7 = v0;
      v7[1] = sub_192134508;
      v8 = *(v0 + 48);

      return MEMORY[0x1EEDB2DA8](v8, v0 + 16);
    }

    v10 = *(v0 + 56);
    sub_192134734();
    swift_allocError();
    *v11 = xmmword_1922358C0;
    *(v11 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    sub_192134734();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 2;
    swift_willThrow();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_192134508()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_192134688;
  }

  else
  {
    v2 = sub_19213461C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19213461C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_192134688()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  sub_192134734();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

unint64_t sub_192134734()
{
  result = qword_1EADF08E8;
  if (!qword_1EADF08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF08E8);
  }

  return result;
}

unint64_t sub_192134788()
{
  result = qword_1EADEE500;
  if (!qword_1EADEE500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADEE500);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit11ChronoErrorO9AppIntentO(uint64_t a1)
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

uint64_t sub_1921347F0(uint64_t a1, unsigned int a2)
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

uint64_t sub_192134838(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_19213487C(uint64_t result, unsigned int a2)
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

unint64_t sub_1921348A8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_192228400();

    v7 = 0xD000000000000027;
    swift_getErrorValue();
    v5 = sub_192228A70();
    MEMORY[0x193B0A990](v5);

    return v7;
  }

  if (a3 == 1)
  {
    v7 = 0;
    sub_192228400();
    MEMORY[0x193B0A990](0x65646E6920656854, 0xEC00000027203A78);
    v3 = sub_192228910();
    MEMORY[0x193B0A990](v3);

    MEMORY[0x193B0A990](0xD000000000000064, 0x800000019224B5C0);
    v4 = sub_192228910();
    MEMORY[0x193B0A990](v4);

    MEMORY[0x193B0A990](0x746E656D656C6520, 0xE900000000000073);
    return v7;
  }

  if (a1 | a2)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

void __swiftcall LiveSceneWidgetConfiguration.init(_:)(WidgetKit::LiveSceneWidgetConfiguration *__return_ptr retstr, Swift::String a2)
{
  retstr->configuration.kind._countAndFlagsBits = 0x6E6563536576694CLL;
  retstr->configuration.kind._object = 0xEF74656764695765;
  retstr->configuration.intentType.value._countAndFlagsBits = 0;
  retstr->configuration.intentType.value._object = 0;
  retstr->_targetApplicationBundleIdentifier.value = a2;
}

uint64_t LiveSceneWidgetConfiguration.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 40);
  *v5 = *v1;
  *(v5 + 1) = v6;
  *(v5 + 2) = v7;
  v10 = *(v1 + 24);
  *(v5 + 24) = v10;
  *(v5 + 6) = 0;
  *(v5 + 7) = 0;
  *(v5 + 5) = v8;
  swift_storeEnumTagMultiPayload();

  return sub_19207ED1C(v5, a1);
}

uint64_t sub_192134BAC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 40);
  *v5 = *v1;
  *(v5 + 1) = v6;
  *(v5 + 2) = v7;
  v10 = *(v1 + 24);
  *(v5 + 24) = v10;
  *(v5 + 6) = 0;
  *(v5 + 7) = 0;
  *(v5 + 5) = v8;
  swift_storeEnumTagMultiPayload();

  return sub_19207ED1C(v5, a1);
}

uint64_t LiveSceneWidgetConfiguration.init<A>(kind:intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  a5[4] = 0;
  a5[5] = 0;
  result = sub_1920FDC30(a3, a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  a5[3] = v9;
  return result;
}

void sub_192134CF8()
{
  v1 = v0;
  v135 = sub_192225840();
  v143 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v132 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v121 = &v117 - v4;
  v126 = sub_192226690();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v117 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v117 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v129 = &v117 - v12;
  v13 = type metadata accessor for ActivityViewCollection(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v117 - v17;
  *&v145 = sub_192225360();
  v140 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v139 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v134 = &v117 - v21;
  v150 = sub_192225800();
  v22 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v136 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v122 = &v117 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v137 = &v117 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v138 = &v117 - v29;
  v141 = type metadata accessor for ActivityArchiver(0);
  MEMORY[0x1EEE9AC00](v141);
  v144 = (&v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v117 - v32);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v34 = sub_1922258B0();
  __swift_project_value_buffer(v34, qword_1ED74CCC8);
  sub_192137CD8(v0, v33, type metadata accessor for ActivityArchiver);
  v35 = sub_192225890();
  v36 = sub_192227F80();
  v37 = os_log_type_enabled(v35, v36);
  v131 = v18;
  v146 = v22;
  v127 = v8;
  v130 = v15;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v147[0] = v39;
    *v38 = 136315138;
    v40 = *(*v33 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment);
    v148 = 0xD000000000000012;
    *&v149 = 0x80000001922488B0;
    v41 = [v40 debugDescription];
    v42 = sub_192227960();
    v43 = v1;
    v45 = v44;

    MEMORY[0x193B0A990](v42, v45);
    v1 = v43;

    v46 = v148;
    v47 = v149;
    sub_192137C78(v33, type metadata accessor for ActivityArchiver);
    v48 = sub_19202B8CC(v46, v47, v147);
    v22 = v146;

    *(v38 + 4) = v48;
    _os_log_impl(&dword_192028000, v35, v36, "Environment for archiving: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x193B0C7F0](v39, -1, -1);
    MEMORY[0x193B0C7F0](v38, -1, -1);
  }

  else
  {

    sub_192137C78(v33, type metadata accessor for ActivityArchiver);
  }

  v49 = *(v141 + 24);
  v50 = *(v22 + 16);
  v51 = v138;
  v50(v138, v1 + *(v141 + 28), v150);
  v52 = v144;
  sub_192137CD8(v1, v144, type metadata accessor for ActivityArchiver);
  v141 = v49;
  v53 = sub_192225820();
  v133 = sub_1922280E0();
  if (sub_192228200())
  {
    v54 = swift_slowAlloc();
    v118 = v54;
    v119 = swift_slowAlloc();
    v148 = v119;
    *v54 = 136315138;
    v55 = *v52;
    v56 = v140;
    v57 = v134;
    v58 = v51;
    v59 = v145;
    (*(v140 + 16))(v134, v55 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor, v145);
    v60 = sub_192225350();
    v120 = v50;
    v61 = v60;
    v128 = v1;
    v63 = v62;
    v64 = v59;
    v51 = v58;
    (*(v56 + 8))(v57, v64);
    sub_192137C78(v144, type metadata accessor for ActivityArchiver);
    v65 = v61;
    v50 = v120;
    v66 = sub_19202B8CC(v65, v63, &v148);
    v22 = v146;
    v1 = v128;

    v67 = v118;
    *(v118 + 1) = v66;
    v68 = sub_1922257F0();
    _os_signpost_emit_with_name_impl(&dword_192028000, v53, v133, v68, "GetSessionPlatter", "<session-id>=%s", v67, 0xCu);
    v69 = v119;
    __swift_destroy_boxed_opaque_existential_1(v119);
    MEMORY[0x193B0C7F0](v69, -1, -1);
    MEMORY[0x193B0C7F0](v67, -1, -1);
  }

  else
  {

    sub_192137C78(v52, type metadata accessor for ActivityArchiver);
    v56 = v140;
  }

  v70 = v150;
  v50(v137, v51, v150);
  sub_192225870();
  swift_allocObject();
  v140 = sub_192225860();
  v71 = *(v22 + 8);
  v146 = v22 + 8;
  v144 = v71;
  (v71)(v51, v70);
  v72 = v1[4];
  v73 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v72);
  v74 = *v1;
  v75 = v139;
  v76 = v145;
  (*(v56 + 16))(v139, *v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor, v145);
  v77 = v142;
  (*(v73 + 48))(&v148, v75, v72, v73);
  if (v77)
  {
    (*(v56 + 8))(v75, v76);
    v81 = v143;
    v82 = sub_192225820();
    v83 = v136;
    sub_192225850();
    v84 = sub_1922280D0();
    if (sub_192228200())
    {

      v85 = v132;
      sub_192225880();

      v86 = v135;
      if ((*(v81 + 88))(v85, v135) == *MEMORY[0x1E69E93E8])
      {
        v87 = "[Error] Interval already ended";
      }

      else
      {
        (*(v81 + 8))(v85, v86);
        v87 = "<error.present>=true)";
      }

      v88 = swift_slowAlloc();
      *v88 = 0;
      v89 = sub_1922257F0();
      _os_signpost_emit_with_name_impl(&dword_192028000, v82, v84, v89, "GetSessionPlatter", v87, v88, 2u);
      MEMORY[0x193B0C7F0](v88, -1, -1);
    }

    (v144)(v83, v150);
    swift_willThrow();

    return;
  }

  (*(v56 + 8))(v75, v76);
  v145 = v149;
  v78 = v131;
  sub_192135DD8(&v148, v131);
  v79 = v130;
  sub_192137CD8(v78, v130, type metadata accessor for ActivityViewCollection);
  v80 = v129;
  sub_1920B97C8(v129);
  v128 = v1;
  sub_1921068B0(v80, v147);
  sub_192137C78(v79, type metadata accessor for ActivityViewCollection);
  v148 = v147[0];
  *&v149 = v147[1];
  v90 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment;
  v91 = *(v74 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment);
  KeyPath = swift_getKeyPath();
  v93 = v91;
  v94 = sub_1920668D0(KeyPath);

  if (v94)
  {
  }

  sub_192226450();
  v95 = *(v74 + v90);
  v96 = swift_getKeyPath();
  v97 = v95;
  v98 = sub_1920668D0(v96);

  v99 = v131;
  v100 = v127;
  if (v98)
  {
    if (*(v98 + 2))
    {

      sub_192226470();
    }

    else
    {
    }
  }

  if (*(v74 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion) - 1 < 2)
  {
    v101 = v74;
    sub_192226680();
LABEL_28:
    v102 = v125;
    v103 = v123;
    v104 = v100;
    v105 = v126;
    (*(v125 + 32))(v123, v104, v126);
    (*(v102 + 16))(v124, v103, v105);
    sub_192226430();
    (*(v102 + 8))(v103, v105);
    v74 = v101;
    v99 = v131;
    goto LABEL_29;
  }

  if (!*(v74 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion))
  {
    v101 = v74;
    sub_192226670();
    goto LABEL_28;
  }

LABEL_29:
  v106 = *(v74 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E8, &unk_192232AB0);
  sub_192106D18();
  sub_1922263B0();

  sub_192137C78(v99, type metadata accessor for ActivityViewCollection);

  v107 = sub_192225820();
  v108 = v122;
  sub_192225850();
  v109 = sub_1922280D0();
  v110 = sub_192228200();
  v111 = v143;
  if (v110)
  {

    v112 = v121;
    sub_192225880();

    v113 = v135;
    if ((*(v111 + 88))(v112, v135) == *MEMORY[0x1E69E93E8])
    {
      v114 = "[Error] Interval already ended";
    }

    else
    {
      (*(v111 + 8))(v112, v113);
      v114 = "<error.present>=false)";
    }

    v115 = swift_slowAlloc();
    *v115 = 0;
    v116 = sub_1922257F0();
    _os_signpost_emit_with_name_impl(&dword_192028000, v107, v109, v116, "GetSessionPlatter", v114, v115, 2u);
    MEMORY[0x193B0C7F0](v115, -1, -1);
  }

  (v144)(v108, v150);
}

uint64_t ActivityArchiver.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityArchiver(0) + 24);
  v4 = sub_192225830();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_192135DD8@<D0>(uint64_t (**a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = type metadata accessor for ActivityViewSourceContext(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = *v2;
  v13 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v14 = sub_192225360();
  (*(*(v14 - 8) + 16))(v7, v12 + v13, v14);
  v15 = *(v12 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload);
  v16 = *(v12 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload + 8);
  v17 = (v12 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata);
  v18 = *(v12 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 16);
  v19 = &v7[*(v5 + 28)];
  *v19 = v15;
  v19[1] = v16;
  v7[*(v5 + 32)] = v18;
  v52 = v8;
  v53 = v8;
  v51 = v9;
  v54 = v9;
  v55 = v11;
  v48 = v10;
  v49 = v11;
  v56 = v10;
  sub_1920367C8(v15, v16);
  v50 = v2;
  v20 = sub_192137D40();
  v21 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment;
  v22 = *(v12 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment);
  KeyPath = swift_getKeyPath();
  v24 = v22;
  v25 = sub_19209A170(KeyPath);

  if (v25)
  {
    if (*(v25 + 16))
    {
      v26 = *(v25 + 32);

      if ((sub_19206CB1C(v26, v20) & 1) == 0 && (v26 & 1) == 0)
      {
        v27 = MEMORY[0x193B0BDE0]("_makeViewCollection(source:)");
        v46 = v20;
        if (v27)
        {
          v53 = sub_1922273D0();
        }

        v29 = sub_192227570();
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v28 = v57;
  v29 = v52(v7);
  if (v28)
  {
    sub_192137C78(v7, type metadata accessor for ActivityViewSourceContext);

    return result;
  }

  v46 = v20;
  v57 = 0;
LABEL_12:
  v45 = v29;
  v31 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics;
  v32 = type metadata accessor for ActivityViewCollection(0);
  v33 = v47;
  sub_192137CD8(v12 + v31, v47 + v32[7], type metadata accessor for ActivityMetricsDefinition);
  v34 = *(v12 + v21);
  v35 = *v17;
  v36 = v17[1];
  v37 = *(v17 + 16);
  v38 = *(v17 + 17);
  v44 = *(v17 + 18);
  v39 = type metadata accessor for JindoViewCollection(0);
  (*(*(v39 - 8) + 56))(v33, 1, 1, v39);
  *(v33 + v32[6]) = v45;
  *(v33 + v32[5]) = v34;
  v40 = v33 + v32[9];
  *v40 = v35;
  *(v40 + 8) = v36;
  *(v40 + 16) = v37;
  *(v40 + 17) = v38;
  *(v40 + 18) = v44;
  *(v33 + v32[8]) = v46;
  v53 = v52;
  v54 = v51;
  v55 = v49;
  v56 = v48;

  v41 = v34;

  v42 = v57;
  sub_192138474(&v53, v33);
  if (v42)
  {

    sub_192137C78(v33, type metadata accessor for ActivityViewCollection);
    sub_192137C78(v7, type metadata accessor for ActivityViewSourceContext);
  }

  else
  {
    sub_192137C78(v7, type metadata accessor for ActivityViewSourceContext);
  }

  return result;
}

uint64_t (*static ActivityArchiver.makeMockArchivedViewCollection(attributesType:attributesData:contentStatePayload:isStale:metricsDefinition:environment:payloadID:supportedFamilies:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, void **a8, uint64_t a9, uint64_t a10, uint64_t a11))(uint64_t a1)
{
  v98 = a8;
  v87 = a7;
  LODWORD(v96) = a6;
  v94 = a4;
  v95 = a5;
  v93 = a3;
  v91 = a2;
  v99 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v81 = &v79 - v12;
  v86 = type metadata accessor for JindoViewCollection(0);
  v88 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v79 = (&v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = &v79 - v15;
  v83 = type metadata accessor for ActivityViewCollection(0);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v84 = &v79 - v18;
  v92 = type metadata accessor for ActivityViewSourceContext(0) - 8;
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_192225150();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v97 = sub_1922253B0();
  v21 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_192225360();
  v100 = *(v24 - 8);
  v101 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1922253E0();
  MEMORY[0x1EEE9AC00](v26);
  v89 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v79 - v29;
  v31 = sub_1922253D0();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v79 - v36);
  v82 = *v98;
  sub_1922253C0();
  sub_1922253F0();
  swift_storeEnumTagMultiPayload();
  (*(v21 + 16))(v23, v99, v97);
  v99 = v30;
  v38 = v90;
  sub_192137CD8(v30, v89, MEMORY[0x1E6959C58]);
  v39 = *(v32 + 16);
  v97 = v31;
  v98 = v37;
  v39(v34, v37, v31);
  sub_1920367C8(v91, v93);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v40 = v100;
  v41 = v102;
  v42 = v101;
  sub_192225340();
  (*(v40 + 16))(v38, v41, v42);
  v43 = v92;
  v44 = (v38 + *(v92 + 28));
  v45 = v94;
  v46 = v95;
  *v44 = v94;
  v44[1] = v46;
  v47 = v96;
  *(v38 + *(v43 + 32)) = v96;
  sub_1920367C8(v45, v46);
  v48 = sub_192136E48();
  if (!v105)
  {
    v49 = v48;
    v95 = v32;
    v50 = v47 & 1;
    v51 = v83;
    v52 = v84;
    v53 = v87;
    sub_192137CD8(v87, &v84[*(v83 + 28)], type metadata accessor for ActivityMetricsDefinition);
    v54 = *(v88 + 56);
    v88 += 56;
    v96 = v54;
    v54(v52, 1, 1, v86);
    *(v52 + v51[6]) = v49;
    v55 = v82;
    *(v52 + v51[5]) = v82;
    v56 = v52 + v51[9];
    *v56 = a9;
    *(v56 + 8) = a10;
    *(v56 + 16) = v50;
    *(v56 + 17) = 0;
    *(v52 + v51[8]) = a11;
    v57 = v53 + *(type metadata accessor for ActivityMetricsDefinition(0) + 20);
    v58 = v85;
    sub_19202CFFC(v57, v85, &qword_1EADEFA58, &unk_19222F820);
    v59 = type metadata accessor for JindoMetricsDefinition(0);
    v60 = v38;
    v61 = (*(*(v59 - 8) + 48))(v58, 1, v59);

    v42 = v55;

    sub_192033970(v58, &qword_1EADEFA58, &unk_19222F820);
    v62 = v102;
    if (v61 != 1)
    {
      sub_192136EC4(v103);
      v63 = v99;
      if (v105)
      {
        sub_192137C78(v60, type metadata accessor for ActivityViewSourceContext);
        (*(v100 + 8))(v62, v101);
        sub_192137C78(v63, MEMORY[0x1E6959C58]);
        (*(v95 + 8))(v98, v97);
        goto LABEL_17;
      }

      v64 = v79;
      sub_19203832C(v103, (v79 + 1));
      v65 = v86;
      sub_192137CD8(v87, v64 + *(v86 + 24), type metadata accessor for ActivityMetricsDefinition);
      *v64 = v42;
      v66 = v42;
      sub_192033970(v52, &qword_1EADEF1B0, qword_19222C1D0);
      sub_192138C7C(v64, v52, type metadata accessor for JindoViewCollection);
      v96(v52, 0, 1, v65);
    }

    v67 = v80;
    sub_192137CD8(v52, v80, type metadata accessor for ActivityViewCollection);
    v68 = v81;
    v69 = v105;
    sub_1920B97C8(v81);
    v105 = v69;
    if (v69)
    {
      v42 = type metadata accessor for ActivityViewCollection;
      sub_192137C78(v67, type metadata accessor for ActivityViewCollection);
      sub_192137C78(v60, type metadata accessor for ActivityViewSourceContext);
      (*(v100 + 8))(v62, v101);
      sub_192137C78(v99, MEMORY[0x1E6959C58]);
      (*(v95 + 8))(v98, v97);
      v70 = v52;
LABEL_18:
      sub_192137C78(v70, type metadata accessor for ActivityViewCollection);
      return v42;
    }

    sub_1921068B0(v68, &v104);
    sub_192137C78(v67, type metadata accessor for ActivityViewCollection);
    v103[0] = v104;
    KeyPath = swift_getKeyPath();
    v72 = sub_1920668D0(KeyPath);

    v73 = v98;
    if (v72)
    {
    }

    sub_192226450();
    v74 = swift_getKeyPath();
    v75 = sub_1920668D0(v74);

    if (v75)
    {
      if (*(v75 + 2))
      {

        sub_192226470();
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E8, &unk_192232AB0);
    sub_192106D18();
    v76 = v105;
    v77 = sub_1922263C0();
    v105 = v76;
    if (!v76)
    {
      v42 = v77;
      sub_192137C78(v60, type metadata accessor for ActivityViewSourceContext);
      (*(v100 + 8))(v102, v101);
      sub_192137C78(v99, MEMORY[0x1E6959C58]);
      (*(v95 + 8))(v73, v97);

      sub_192137C78(v52, type metadata accessor for ActivityViewCollection);
      return v42;
    }

    sub_192137C78(v60, type metadata accessor for ActivityViewSourceContext);
    (*(v100 + 8))(v102, v101);
    sub_192137C78(v99, MEMORY[0x1E6959C58]);
    (*(v95 + 8))(v73, v97);
    v42 = *&v103[0];

LABEL_17:
    v70 = v52;
    goto LABEL_18;
  }

  sub_192137C78(v38, type metadata accessor for ActivityViewSourceContext);
  (*(v40 + 8))(v41, v42);
  sub_192137C78(v99, MEMORY[0x1E6959C58]);
  (*(v32 + 8))(v98, v97);
  return v42;
}

uint64_t sub_192136E48()
{
  sub_192226540();
  sub_192226FC0();
  return sub_192227570();
}

uint64_t sub_192136EC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for JindoViewProviderMock(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtC9WidgetKit21JindoViewProviderMock_widgetURL;
  v5 = sub_192225020();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  a1[3] = v2;
  a1[4] = &off_1F06AF440;
  *a1 = v3;
  return result;
}

uint64_t (*static ActivityArchiver.makeArchivedViewCollection(attributesType:attributesData:contentStatePayload:isStale:viewSource:metricsDefinition:environment:payloadID:supportedFamilies:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12))(uint64_t a1)
{
  v102 = a8;
  LODWORD(v116) = a6;
  v114 = a4;
  v115 = a5;
  v112 = a2;
  v113 = a3;
  v118 = a9;
  v119 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v97 = &v92 - v14;
  v103 = type metadata accessor for JindoViewCollection(0);
  v104 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v93 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v101 = &v92 - v17;
  v99 = type metadata accessor for ActivityViewCollection(0);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v100 = &v92 - v20;
  v111 = type metadata accessor for ActivityViewSourceContext(0) - 8;
  MEMORY[0x1EEE9AC00](v111);
  v126 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_192225150();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v110 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1922253B0();
  v24 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_192225360();
  v121 = *(v27 - 8);
  v122 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v123 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1922253E0();
  MEMORY[0x1EEE9AC00](v29);
  v106 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v92 - v32;
  v34 = sub_1922253D0();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v92 - v39;
  v41 = *(a7 + 8);
  v108 = *a7;
  v107 = v41;
  v42 = *(a7 + 24);
  v95 = *(a7 + 16);
  v94 = v42;
  v98 = *v118;
  sub_1922253C0();
  sub_1922253F0();
  swift_storeEnumTagMultiPayload();
  v105 = "ed";
  (*(v24 + 16))(v26, v119, v109);
  v43 = v121;
  v119 = v33;
  sub_192137CD8(v33, v106, MEMORY[0x1E6959C58]);
  v44 = *(v35 + 16);
  v120 = v40;
  v118 = v34;
  v44(v37, v40, v34);
  sub_1920367C8(v112, v113);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v45 = v126;
  v46 = v123;
  v47 = v122;
  sub_192225340();
  (*(v43 + 16))(v45, v46, v47);
  v48 = v111;
  v49 = (v45 + *(v111 + 28));
  v50 = v114;
  v51 = v115;
  *v49 = v114;
  v49[1] = v51;
  v52 = v116;
  *(v45 + *(v48 + 32)) = v116;
  sub_1920367C8(v50, v51);
  v53 = v117;
  v54 = v108(v45);
  v117 = v53;
  if (v53)
  {
    sub_192137C78(v45, type metadata accessor for ActivityViewSourceContext);
    (*(v43 + 8))(v46, v47);
    sub_192137C78(v119, MEMORY[0x1E6959C58]);
    v56 = *(v35 + 8);
    v55 = (v35 + 8);
    v56(v120, v118);
    return v55;
  }

  v57 = v54;
  v115 = v35;
  v58 = v52 & 1;
  v59 = v99;
  v60 = v100;
  v61 = v102;
  sub_192137CD8(v102, &v100[*(v99 + 28)], type metadata accessor for ActivityMetricsDefinition);
  v62 = *(v104 + 56);
  v104 += 56;
  v116 = v62;
  v62(v60, 1, 1, v103);
  *&v60[v59[6]] = v57;
  v63 = v98;
  *&v60[v59[5]] = v98;
  v64 = &v60[v59[9]];
  *v64 = a10;
  *(v64 + 1) = a11;
  v64[16] = v58;
  *(v64 + 17) = 0;
  *&v60[v59[8]] = a12;
  v65 = type metadata accessor for ActivityMetricsDefinition(0);
  v66 = v101;
  sub_19202CFFC(v61 + *(v65 + 20), v101, &qword_1EADEFA58, &unk_19222F820);
  v67 = type metadata accessor for JindoMetricsDefinition(0);
  v68 = (*(*(v67 - 8) + 48))(v66, 1, v67);

  v69 = v63;

  sub_192033970(v66, &qword_1EADEFA58, &unk_19222F820);
  v70 = v68 == 1;
  v71 = v60;
  if (v70)
  {
    v74 = v126;
    v72 = v119;
    v73 = v117;
  }

  else
  {
    v74 = v126;
    v75 = v117;
    v95(&v124, v126);
    v73 = v75;
    v72 = v119;
    v55 = v123;
    if (v75)
    {
      sub_192137C78(v74, type metadata accessor for ActivityViewSourceContext);
      (*(v121 + 8))(v55, v122);
      sub_192137C78(v72, MEMORY[0x1E6959C58]);
      (*(v115 + 8))(v120, v118);
      v90 = v71;
LABEL_18:
      sub_192137C78(v90, type metadata accessor for ActivityViewCollection);
      return v55;
    }

    v76 = v71;
    v77 = v93;
    sub_19203832C(&v124, (v93 + 8));
    v78 = v103;
    sub_192137CD8(v61, v77 + *(v103 + 24), type metadata accessor for ActivityMetricsDefinition);
    *v77 = v69;
    v79 = v69;
    sub_192033970(v76, &qword_1EADEF1B0, qword_19222C1D0);
    v80 = v77;
    v71 = v76;
    sub_192138C7C(v80, v76, type metadata accessor for JindoViewCollection);
    v116(v76, 0, 1, v78);
  }

  v81 = v96;
  sub_192137CD8(v71, v96, type metadata accessor for ActivityViewCollection);
  v82 = v97;
  sub_1920B97C8(v97);
  v83 = v121;
  if (v73)
  {
    v84 = v120;
    v55 = type metadata accessor for ActivityViewCollection;
    sub_192137C78(v81, type metadata accessor for ActivityViewCollection);
    sub_192137C78(v74, type metadata accessor for ActivityViewSourceContext);
    (*(v83 + 8))(v123, v122);
    sub_192137C78(v72, MEMORY[0x1E6959C58]);
    (*(v115 + 8))(v84, v118);
    v90 = v71;
    goto LABEL_18;
  }

  sub_1921068B0(v82, &v125);
  sub_192137C78(v81, type metadata accessor for ActivityViewCollection);
  v124 = v125;
  KeyPath = swift_getKeyPath();
  v86 = sub_1920668D0(KeyPath);

  if (v86)
  {
  }

  sub_192226450();
  v87 = swift_getKeyPath();
  v88 = sub_1920668D0(v87);

  v89 = v126;
  if (v88)
  {
    if (*(v88 + 2))
    {

      sub_192226470();
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E8, &unk_192232AB0);
  sub_192106D18();
  v55 = sub_1922263C0();
  sub_192137C78(v89, type metadata accessor for ActivityViewSourceContext);
  (*(v83 + 8))(v123, v122);
  sub_192137C78(v119, MEMORY[0x1E6959C58]);
  (*(v115 + 8))(v120, v118);

  sub_192137C78(v71, type metadata accessor for ActivityViewCollection);
  return v55;
}

uint64_t sub_192137C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192137CD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_192137D40()
{
  v53 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v53);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0900, &unk_192235BA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v41 - v4;
  v44 = type metadata accessor for WidgetDescriptor(0);
  v54 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v41 - v11;
  v12 = sub_1922253B0();
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_192225360();
  v14 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0[4];
  v17 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v18);
  v19 = (*(v17 + 64))(v18, v17);
  v20 = v52;
  (*(v14 + 16))(v16, *v0 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor, v52);
  v21 = v51;
  sub_192225320();
  (*(v14 + 8))(v16, v20);
  v22 = sub_192225370();
  v23 = v45;
  v52 = v22;
  v49 = v24;
  v47 = *(v45 + 8);
  v48 = v45 + 8;
  result = v47(v21, v12);
  v26 = v19;
  v51 = *(v19 + 16);
  if (v51)
  {
    v27 = 0;
    v50 = v19 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v28 = (v23 + 56);
    v46 = (v23 + 32);
    v29 = (v23 + 48);
    do
    {
      if (v27 >= *(v26 + 16))
      {
        __break(1u);
        return result;
      }

      sub_192137CD8(v50 + *(v54 + 72) * v27, v7, type metadata accessor for WidgetDescriptor);
      sub_192137CD8(v7, v2, type metadata accessor for ViewSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          (*v28)(v5, 1, 1, v12);
          sub_192137C78(v2, type metadata accessor for ViewSource);
          goto LABEL_12;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

        (*v46)(v5, v2, v12);
        (*v28)(v5, 0, 1, v12);
        goto LABEL_12;
      }

      sub_192137C78(v2, type metadata accessor for ViewSource);
      (*v28)(v5, 1, 1, v12);
LABEL_12:
      if ((*v29)(v5, 1, v12) == 1)
      {
        sub_192033970(v5, &qword_1EADF0900, &unk_192235BA0);
      }

      else
      {
        v31 = sub_192225370();
        v33 = v32;
        v47(v5, v12);
        if (v31 == v52 && v33 == v49)
        {

          goto LABEL_19;
        }

        v34 = sub_1922289A0();

        if (v34)
        {

LABEL_19:

          v37 = v43;
          sub_192138C7C(v7, v43, type metadata accessor for WidgetDescriptor);
          v35 = 0;
          v36 = v44;
          goto LABEL_20;
        }
      }

      ++v27;
      result = sub_192137C78(v7, type metadata accessor for WidgetDescriptor);
    }

    while (v51 != v27);
  }

  v35 = 1;
  v37 = v43;
  v36 = v44;
LABEL_20:
  v38 = v42;
  v39 = v54;
  (*(v54 + 56))(v37, v35, 1, v36);
  sub_19202CFFC(v37, v38, &qword_1EADEEE20, &qword_19222B670);
  if ((*(v39 + 48))(v38, 1, v36) == 1)
  {
    sub_192033970(v38, &qword_1EADEEE20, &qword_19222B670);
    v40 = &unk_1F06A7788;
  }

  else
  {
    v40 = *(v38 + *(v36 + 32));

    sub_192137C78(v38, type metadata accessor for WidgetDescriptor);
  }

  sub_192033970(v37, &qword_1EADEEE20, &qword_19222B670);
  return v40;
}

void sub_192138474(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v36 = a2;
  v6 = type metadata accessor for JindoViewCollection(0);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ActivityViewSourceContext(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  v15 = *(a1 + 16);
  v16 = *v4;
  v17 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v18 = *(v16 + v17);
  if (v18)
  {
    v32 = v15;
    v19 = v16 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics;
    v20 = *(type metadata accessor for ActivityMetricsDefinition(0) + 20);
    v31 = v19;
    sub_19202CFFC(v19 + v20, v14, &qword_1EADEFA58, &unk_19222F820);
    v21 = type metadata accessor for JindoMetricsDefinition(0);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_192033970(v14, &qword_1EADEFA58, &unk_19222F820);
    }

    else
    {
      v22 = v18;
      sub_192033970(v14, &qword_1EADEFA58, &unk_19222F820);
      v23 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
      v24 = sub_192225360();
      (*(*(v24 - 8) + 16))(v11, v16 + v23, v24);
      v25 = *(v16 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload);
      v26 = *(v16 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload + 8);
      v27 = *(v16 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 16);
      v28 = &v11[*(v9 + 20)];
      *v28 = v25;
      v28[1] = v26;
      v11[*(v9 + 24)] = v27;
      sub_1920367C8(v25, v26);
      v32(v35, v11);
      sub_192137C78(v11, type metadata accessor for ActivityViewSourceContext);
      if (v3)
      {
      }

      else
      {
        sub_19203832C(v35, (v8 + 1));
        v29 = v34;
        sub_192137CD8(v31, v8 + *(v34 + 24), type metadata accessor for ActivityMetricsDefinition);
        *v8 = v22;
        v30 = v36;
        sub_192033970(v36, &qword_1EADEF1B0, qword_19222C1D0);
        sub_192138C7C(v8, v30, type metadata accessor for JindoViewCollection);
        (*(v33 + 56))(v30, 0, 1, v29);
      }
    }
  }
}

uint64_t sub_19213882C()
{

  sub_192033970(v0 + OBJC_IVAR____TtC9WidgetKit21JindoViewProviderMock_widgetURL, &qword_1EADEEE10, &unk_19222B630);

  return swift_deallocClassInstance();
}

uint64_t sub_19213891C(uint64_t a1)
{
  result = type metadata accessor for ActivityWidgetRequest(319);
  if (v2 <= 0x3F)
  {
    result = sub_1921389D0();
    if (v3 <= 0x3F)
    {
      result = sub_192225830();
      if (v4 <= 0x3F)
      {
        result = sub_192225800();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1921389D0()
{
  result = qword_1EADEDB90;
  if (!qword_1EADEDB90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADEDB90);
  }

  return result;
}

void sub_192138A5C(uint64_t a1)
{
  sub_19203F7F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_192138AF8(char a1)
{
  v1 = sub_192226530();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_192226520();
  sub_192226510();
  sub_192227990();
  sub_192226500();

  sub_192226510();
  JindoMetricsDefinition.hashValue.getter();
  sub_1922264F0();
  sub_192226510();
  sub_192226550();
  sub_192226FC0();
  return sub_192227570();
}

uint64_t sub_192138C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AccessoryRectangularGaugeStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0908, &qword_192235BB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  v9 = a1;
  v8 = a1;
  sub_1922268C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0910, &qword_192235BB8);
  sub_1921391A0();
  sub_1921391F8();
  sub_192225C40();
  sub_19213925C();
  sub_1921392E8();
  sub_192227140();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_192138E70@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0938, &qword_192235C30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0940, &qword_192235C38);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0948, &qword_192235C40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  sub_192226890();
  sub_1922268A0();
  sub_1922268B0();
  sub_19202CFFC(v18, v15, &qword_1EADF0948, &qword_192235C40);
  sub_19202CFFC(v12, v9, &qword_1EADF0940, &qword_192235C38);
  v19 = v3;
  sub_19202CFFC(v6, v3, &qword_1EADF0938, &qword_192235C30);
  v20 = v24;
  sub_19202CFFC(v15, v24, &qword_1EADF0948, &qword_192235C40);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0950, &qword_192235C48);
  sub_19202CFFC(v9, v20 + *(v21 + 48), &qword_1EADF0940, &qword_192235C38);
  sub_19202CFFC(v19, v20 + *(v21 + 64), &qword_1EADF0938, &qword_192235C30);
  sub_192033970(v6, &qword_1EADF0938, &qword_192235C30);
  sub_192033970(v12, &qword_1EADF0940, &qword_192235C38);
  sub_192033970(v18, &qword_1EADF0948, &qword_192235C40);
  sub_192033970(v19, &qword_1EADF0938, &qword_192235C30);
  sub_192033970(v9, &qword_1EADF0940, &qword_192235C38);
  return sub_192033970(v15, &qword_1EADF0948, &qword_192235C40);
}

unint64_t sub_1921391A0()
{
  result = qword_1EADF0918;
  if (!qword_1EADF0918)
  {
    sub_1922268C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0918);
  }

  return result;
}

unint64_t sub_1921391F8()
{
  result = qword_1EADF0920;
  if (!qword_1EADF0920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0910, &qword_192235BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0920);
  }

  return result;
}

unint64_t sub_19213925C()
{
  result = qword_1EADF0928;
  if (!qword_1EADF0928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0908, &qword_192235BB0);
    sub_1921391A0();
    sub_1921391F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0928);
  }

  return result;
}

unint64_t sub_1921392E8()
{
  result = qword_1EADF0930;
  if (!qword_1EADF0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0930);
  }

  return result;
}

uint64_t sub_192139358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0908, &qword_192235BB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  v9 = a1;
  v8 = a1;
  sub_1922268C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0910, &qword_192235BB8);
  sub_1921391A0();
  sub_1921391F8();
  sub_192225C40();
  sub_19213925C();
  sub_1921392E8();
  sub_192227140();
  return (*(v3 + 8))(v5, v2);
}

uint64_t View.applyCommonEnvironment(widget:metrics:overrideFamily:)(void *a1, void *a2, id a3, char a4, uint64_t a5, uint64_t a6)
{
  KeyPath = swift_getKeyPath();
  v26 = 0;
  v13 = swift_getKeyPath();
  v25 = 0;
  v14 = swift_getKeyPath();
  v24 = 0;
  v15 = a1;
  v16 = a2;
  if (a4)
  {
    a3 = [v15 family];
  }

  *&v18 = v15;
  *(&v18 + 1) = v16;
  *&v19 = a3;
  *(&v19 + 1) = KeyPath;
  LOBYTE(v20) = v26;
  *(&v20 + 1) = v13;
  *v21 = 0;
  v21[8] = v25;
  *&v21[16] = v14;
  v21[24] = v24;
  MEMORY[0x193B0A190](&v18, a5, &type metadata for CommonArchivingWidgetEnvironmentModifier, a6);
  v22[2] = v20;
  v23[0] = *v21;
  *(v23 + 9) = *&v21[9];
  v22[0] = v18;
  v22[1] = v19;
  return sub_1921396D4(v22);
}

void *sub_192139628@<X0>(void *a1@<X8>)
{
  sub_192101EC4();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192139678(id *a1)
{
  v1 = *a1;
  sub_192101EC4();
  v2 = v1;
  return sub_1922261F0();
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_192139734(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_19213977C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1921397D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a1;
  v192 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0958, &qword_192235E80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v173 = &v148 - v4;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0960, &qword_192235E88);
  MEMORY[0x1EEE9AC00](v162);
  v168 = &v148 - v5;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0968, &qword_192235E90);
  MEMORY[0x1EEE9AC00](v164);
  v166 = &v148 - v6;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0970, &qword_192235E98);
  MEMORY[0x1EEE9AC00](v165);
  v170 = &v148 - v7;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0978, &qword_192235EA0);
  MEMORY[0x1EEE9AC00](v169);
  v172 = &v148 - v8;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0980, &qword_192235EA8);
  MEMORY[0x1EEE9AC00](v171);
  v175 = &v148 - v9;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0988, &qword_192235EB0);
  MEMORY[0x1EEE9AC00](v174);
  v180 = &v148 - v10;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0990, &qword_192235EB8);
  MEMORY[0x1EEE9AC00](v177);
  v185 = &v148 - v11;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0998, &qword_192235EC0);
  MEMORY[0x1EEE9AC00](v182);
  v184 = &v148 - v12;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09A0, &qword_192235EC8);
  MEMORY[0x1EEE9AC00](v181);
  v183 = &v148 - v13;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09A8, &qword_192235ED0);
  MEMORY[0x1EEE9AC00](v178);
  v179 = &v148 - v14;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09B0, &qword_192235ED8);
  MEMORY[0x1EEE9AC00](v176);
  v187 = &v148 - v15;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09B8, &qword_192235EE0);
  MEMORY[0x1EEE9AC00](v189);
  v186 = &v148 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09C0, &unk_192235EE8);
  v190 = *(v17 - 8);
  v191 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v188 = &v148 - v18;
  v161 = sub_1922261D0();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v193 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v195);
  v21 = (&v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = type metadata accessor for WidgetDescriptor(0);
  v197 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v23 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v158 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v167 = (&v148 - v28);
  if (xmmword_1ED74CC80)
  {
    v29 = *(v2 + 8);
    v196 = *v2;
    v157 = v29;
    v30 = *(v2 + 24);
    v155 = *(v2 + 16);
    v153 = v30;
    v152 = *(v2 + 32);
    v31 = *(v2 + 48);
    v149 = *(v2 + 40);
    v151 = v31;
    v150 = *(v2 + 56);
    v156 = *(v2 + 64);
    v154 = *(v2 + 72);
    v32 = *xmmword_1ED74CC80;
    v198 = xmmword_1ED74CC80;
    v33 = (*(qword_1ED74CC90 + 24))(v32, v27);
    v34 = v33;
    v35 = *(v33 + 16);
    if (v35)
    {
      v36 = 0;
      v194 = v33 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
      do
      {
        if (v36 >= *(v34 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        sub_19207C0C0(v194 + *(v197 + 72) * v36, v23, type metadata accessor for WidgetDescriptor);
        sub_19207C0C0(v23, v21, type metadata accessor for ViewSource);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          sub_19207D1F8(v21, type metadata accessor for ViewSource);
        }

        else
        {
          if (!EnumCaseMultiPayload)
          {
            v39 = *v21;
            v38 = v21[1];
            v40 = v21[4];
            v41 = v21[5];

            sub_19207C280(v40, v41);

            goto LABEL_13;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

          v42 = sub_1922253B0();
          (*(*(v42 - 8) + 8))(v21, v42);
        }

        v39 = 0;
        v38 = 0;
LABEL_13:
        v43 = [v196 kind];
        v44 = sub_192227960();
        v46 = v45;

        if (v38)
        {
          if (v39 == v44 && v38 == v46)
          {

LABEL_20:

            v21 = v167;
            sub_19207C284(v23, v167);
            v48 = 0;
            v49 = v173;
            v50 = v168;
            goto LABEL_21;
          }

          v47 = sub_1922289A0();

          if (v47)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }

        ++v36;
        sub_19207D1F8(v23, type metadata accessor for WidgetDescriptor);
      }

      while (v35 != v36);
    }

    v48 = 1;
    v49 = v173;
    v50 = v168;
    v21 = v167;
LABEL_21:
    v51 = v159;
    v52 = v158;
    v53 = v197;
    (*(v197 + 56))(v21, v48, 1, v159);
    sub_19202CFFC(v21, v52, &qword_1EADEEE20, &qword_19222B670);
    v54 = (*(v53 + 48))(v52, 1, v51);
    v23 = v187;
    if (v54 == 1)
    {
      sub_192033970(v52, &qword_1EADEEE20, &qword_19222B670);
      v55 = 0;
    }

    else
    {
      v56 = *(v52 + *(v51 + 60));
      sub_19207D1F8(v52, type metadata accessor for WidgetDescriptor);
      v55 = v56 == 2;
    }

    v57 = v161;
    v58 = v160;
    if (v152)
    {
      v59 = v153;
    }

    else
    {
      v60 = v153;

      sub_192227FA0();
      v61 = sub_192226D00();
      sub_1922257A0();

      v62 = v193;
      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      v63 = sub_192049898(v60, 0);
      (*(v58 + 8))(v62, v57, v63);
      v59 = v198;
    }

    v64 = v59 == 2 || v55;
    if (v64 == 1)
    {
      v65 = v155;
      if (v150)
      {
        v66 = v151;
      }

      else
      {
        v68 = v155;
        v69 = v149;

        sub_192227FA0();
        v70 = sub_192226D00();
        sub_1922257A0();

        v71 = v193;
        _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
        swift_getAtKeyPath();
        v72 = sub_19213AE5C(v69, v151, 0);
        (*(v58 + 8))(v71, v57, v72);
        v65 = v68;
        v66 = v199;
      }

      v67 = (v66 - 3) < 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v67 = 0;
      v65 = v155;
    }

    InternalWidgetFamily.init(_:)(v65, &v200);
    v73 = v200;
    if (v154)
    {
      v198 = v156;
      v74 = v156;
    }

    else
    {
      LODWORD(v197) = v67;
      v75 = v57;
      v76 = v50;
      v77 = v49;
      v78 = v23;
      v79 = v21;
      v80 = v156;

      sub_192227FA0();
      v81 = sub_192226D00();
      sub_1922257A0();

      v82 = v193;
      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      v83 = v80;
      v21 = v79;
      v23 = v78;
      v49 = v77;
      v50 = v76;
      v84 = sub_19209561C(v83, 0);
      v85 = v75;
      v67 = v197;
      (*(v58 + 8))(v82, v85, v84);
      v74 = v198;
    }

    v86 = v157;

    LOBYTE(v198) = v73;
    v87 = sub_19206B9B0(v86, &v198);
    v89 = v88;
    KeyPath = swift_getKeyPath();
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09C8, &qword_192235F28);
    (*(*(v91 - 8) + 16))(v50, v163, v91);
    v92 = (v50 + *(v162 + 36));
    *v92 = KeyPath;
    v92[1] = v87;
    v92[2] = v89;
    v93 = swift_getKeyPath();
    if (v67)
    {
      if (qword_1ED748A70 != -1)
      {
        swift_once();
      }

      v94 = sub_1922275D0();
      v95 = __swift_project_value_buffer(v94, qword_1ED74C6D0);
      v96 = *(v94 - 8);
      (*(v96 + 16))(v49, v95, v94);
      (*(v96 + 56))(v49, 0, 1, v94);
    }

    else
    {
      v97 = sub_1922275D0();
      (*(*(v97 - 8) + 56))(v49, 1, 1, v97);
    }

    v98 = v166;
    v99 = &v166[*(v164 + 36)];
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09D0, &qword_192235F60);
    sub_19204E300(v49, v99 + *(v100 + 28), &qword_1EADF0958, &qword_192235E80);
    *v99 = v93;
    sub_19204E300(v50, v98, &qword_1EADF0960, &qword_192235E88);
    v101 = swift_getKeyPath();
    v102 = v170;
    sub_19204E300(v98, v170, &qword_1EADF0968, &qword_192235E90);
    v103 = v102 + *(v165 + 36);
    *v103 = v101;
    *(v103 + 8) = 0;
    v104 = swift_getKeyPath();
    v105 = swift_getKeyPath();
    v106 = swift_getKeyPath();
    v107 = v102;
    v108 = v172;
    sub_19204E300(v107, v172, &qword_1EADF0970, &qword_192235E98);
    v109 = v108 + *(v169 + 36);
    *v109 = v104;
    *(v109 + 8) = 0;
    *(v109 + 16) = v105;
    *(v109 + 24) = 0;
    *(v109 + 32) = v106;
    *(v109 + 40) = 0;
    v110 = swift_getKeyPath();
    v111 = swift_getKeyPath();
    v112 = v175;
    sub_19204E300(v108, v175, &qword_1EADF0978, &qword_192235EA0);
    v113 = v112 + *(v171 + 36);
    *v113 = v110;
    *(v113 + 8) = 0;
    *(v113 + 16) = v111;
    *(v113 + 24) = 0;
    *(v113 + 32) = 0;
    v114 = swift_getKeyPath();
    v115 = swift_getKeyPath();
    v116 = v112;
    v117 = v180;
    sub_19204E300(v116, v180, &qword_1EADF0980, &qword_192235EA8);
    v118 = v117 + *(v174 + 36);
    *v118 = v114;
    *(v118 + 8) = 0;
    *(v118 + 16) = v115;
    *(v118 + 24) = 0;
    *(v118 + 32) = 0;
    *(v118 + 40) = 1;
    v119 = swift_getKeyPath();
    v120 = swift_getKeyPath();
    v121 = v117;
    v122 = v185;
    sub_19204E300(v121, v185, &qword_1EADF0988, &qword_192235EB0);
    v123 = v122 + *(v177 + 36);
    *v123 = v119;
    *(v123 + 8) = 0;
    *(v123 + 16) = v120;
    *(v123 + 24) = 0;
    v124 = swift_getKeyPath();
    v125 = swift_getKeyPath();
    v126 = v184;
    sub_19204E300(v122, v184, &qword_1EADF0990, &qword_192235EB8);
    v127 = v126 + *(v182 + 36);
    *v127 = v124;
    *(v127 + 8) = 0;
    *(v127 + 16) = v125;
    *(v127 + 24) = 0;
    v128 = swift_getKeyPath();
    v129 = v183;
    sub_19204E300(v126, v183, &qword_1EADF0998, &qword_192235EC0);
    v130 = v129 + *(v181 + 36);
    *v130 = v128;
    *(v130 + 8) = 0;
    v131 = swift_getKeyPath();
    v132 = v179;
    sub_19204E300(v129, v179, &qword_1EADF09A0, &qword_192235EC8);
    v133 = v132 + *(v178 + 36);
    *v133 = v131;
    *(v133 + 8) = 0;
    v134 = swift_getKeyPath();
    sub_19204E300(v132, v23, &qword_1EADF09A8, &qword_192235ED0);
    v135 = &v23[*(v176 + 36)];
    v136 = v196;
    *v135 = v134;
    v135[1] = v136;
    v34 = swift_getKeyPath();
    v137 = qword_1ED74A150;
    v138 = v136;
    if (v137 != -1)
    {
LABEL_47:
      swift_once();
    }

    v139 = sub_192225B10();
    v140 = __swift_project_value_buffer(v139, qword_1ED74C7B8);
    v141 = v189;
    v142 = v186;
    v143 = &v186[*(v189 + 36)];
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09D8, &qword_1922360B8);
    (*(*(v139 - 8) + 16))(v143 + *(v144 + 28), v140, v139);
    *v143 = v34;
    sub_19204E300(v23, v142, &qword_1EADF09B0, &qword_192235ED8);
    v145 = sub_19207A51C();
    v146 = v188;
    sub_192227150();
    sub_192033970(v142, &qword_1EADF09B8, &qword_192235EE0);
    v198 = v141;
    v199 = v145;
    swift_getOpaqueTypeConformance2();
    v147 = v191;
    sub_192227180();
    (*(v190 + 8))(v146, v147);
    sub_192033970(v21, &qword_1EADEEE20, &qword_19222B670);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19213AC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0958, &qword_192235E80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_19202CFFC(a1, &v5 - v3, &qword_1EADF0958, &qword_192235E80);
  return sub_192225FA0();
}

uint64_t sub_19213AD04(uint64_t a1)
{
  v2 = sub_192225B10();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_192226110();
}

unint64_t sub_19213ADD0()
{
  result = qword_1ED749F88;
  if (!qword_1ED749F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF09A8, &qword_192235ED0);
    sub_19207A5D4();
    sub_19206ABD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F88);
  }

  return result;
}

double sub_19213AE5C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

id NSError.init(code:underlyingError:debugDescription:__file:__line:)(_BYTE *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    LOBYTE(v27) = *a1;
    a3 = CKCErrorCode.debugDescription.getter();
    v6 = v8;
  }

  v9 = qword_1922362B0[v5];
  v10 = *MEMORY[0x1E69941E8];
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  v11 = sub_192227960();
  v13 = v12;
  v28 = MEMORY[0x1E69E6158];
  *&v27 = a3;
  *(&v27 + 1) = v6;
  sub_19203BEDC(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28(v26, v11, v13, isUniquelyReferenced_nonNull_native);

  if (a2)
  {
    v15 = sub_192227960();
    v17 = v16;
    swift_getErrorValue();
    v28 = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1);
    sub_19203BEDC(&v27, v26);
    v19 = a2;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_19213DB28(v26, v15, v17, v20);
  }

  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = sub_192227830();

  v23 = [v21 initWithDomain:v10 code:v9 userInfo:v22];

  return v23;
}

unint64_t CKCErrorCode.debugDescription.getter()
{
  result = 0x676F646863746157;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000023;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 9:
    case 0x14:
      result = 0xD000000000000015;
      break;
    case 4:
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x656972746E456F6ELL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0xD00000000000001ALL;
      break;
    case 0xB:
      result = 0xD00000000000002ALL;
      break;
    case 0xC:
      result = 0xD00000000000002CLL;
      break;
    case 0xD:
      result = 0xD000000000000014;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
    case 0x12:
      result = 0xD000000000000013;
      break;
    case 0x10:
      result = 0xD000000000000021;
      break;
    case 0x11:
      result = 0x4E65766968637261;
      break;
    case 0x13:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

WidgetKit::CKCErrorCode_optional __swiftcall CKCErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 1199)
  {
    if (rawValue > 1399)
    {
      if (rawValue > 1500)
      {
        if (rawValue == 1501)
        {
          *v1 = 19;
          return rawValue;
        }

        if (rawValue == 1600)
        {
          *v1 = 20;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 1400)
        {
          *v1 = 17;
          return rawValue;
        }

        if (rawValue == 1500)
        {
          *v1 = 18;
          return rawValue;
        }
      }
    }

    else if (rawValue > 1300)
    {
      if (rawValue == 1301)
      {
        *v1 = 15;
        return rawValue;
      }

      if (rawValue == 1302)
      {
        *v1 = 16;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 1200)
      {
        *v1 = 13;
        return rawValue;
      }

      if (rawValue == 1300)
      {
        *v1 = 14;
        return rawValue;
      }
    }

LABEL_35:
    *v1 = 21;
    return rawValue;
  }

  v2 = 0;
  v3 = 3;
  switch(rawValue)
  {
    case 1001:
      goto LABEL_28;
    case 1002:
      v2 = 1;
      goto LABEL_28;
    case 1050:
      v2 = 2;
LABEL_28:
      v3 = v2;
      goto LABEL_29;
    case 1051:
LABEL_29:
      *v1 = v3;
      break;
    case 1052:
      *v1 = 4;
      break;
    case 1100:
      *v1 = 5;
      break;
    case 1101:
      *v1 = 6;
      break;
    case 1102:
      *v1 = 7;
      break;
    case 1103:
      *v1 = 8;
      break;
    case 1104:
      *v1 = 9;
      break;
    case 1105:
      *v1 = 10;
      break;
    case 1106:
      *v1 = 11;
      break;
    case 1107:
      *v1 = 12;
      break;
    default:
      goto LABEL_35;
  }

  return rawValue;
}

uint64_t sub_19213B4A8()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](qword_1922362B0[v1]);
  return sub_192228B30();
}

uint64_t sub_19213B530()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](qword_1922362B0[v1]);
  return sub_192228B30();
}

id NSError.init(domain:code:underlyingError:debugDescription:__file:__line:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  if (a6)
  {
    v10 = sub_192227960();
    v12 = v11;
    v31 = MEMORY[0x1E69E6158];
    *&v30 = a5;
    *(&v30 + 1) = a6;
    sub_19203BEDC(&v30, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19213DB28(v27, v10, v12, isUniquelyReferenced_nonNull_native);
  }

  if (a4)
  {
    v14 = sub_192227960();
    v16 = v15;
    swift_getErrorValue();
    v17 = v28;
    v18 = v29;
    v31 = v29;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v17, v18);
    sub_19203BEDC(&v30, v27);
    v20 = a4;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_19213DB28(v27, v14, v16, v21);
  }

  v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v23 = sub_192227930();

  v24 = sub_192227830();

  v25 = [v22 initWithDomain:v23 code:a3 userInfo:v24];

  return v25;
}

void sub_19213B7BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A80, &qword_192236290);
  v34 = v4;
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_19203BEDC(v24, v35);
      }

      else
      {
        sub_19202A98C(v24, v35);
      }

      sub_192228AD0();
      sub_1922279B0();
      v25 = sub_192228B30();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_19203BEDC(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_19213BA74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A10, &qword_192236228);
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {

        sub_1920367C8(v30, *(&v30 + 1));
      }

      sub_192228AD0();
      sub_192140210(v31, v20);
      v21 = sub_192228B30();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
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

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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
}

void sub_19213BD10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = sub_192225020();
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_192226B30();
  v7 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SymbolLookupKey(0);
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A30, &qword_192236248);
  v62 = v4;
  v13 = sub_1922286A0();
  v14 = v12;
  if (*(v12 + 16))
  {
    v48 = v2;
    v15 = 0;
    v16 = (v14 + 64);
    v17 = 1 << *(v14 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v14 + 64);
    v20 = (v17 + 63) >> 6;
    v58 = (v7 + 16);
    v57 = (v7 + 88);
    v56 = *MEMORY[0x1E697CAF0];
    v51 = *MEMORY[0x1E697CAF8];
    v55 = (v7 + 96);
    v50 = (v5 + 32);
    v49 = (v5 + 8);
    v21 = v13 + 64;
    v22 = v54;
    v59 = v14;
    while (v19)
    {
      v24 = v9;
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = *(v14 + 48);
      v30 = v14;
      v64 = *(v60 + 72);
      v31 = v29 + v64 * v28;
      if (v62)
      {
        sub_192140B10(v31, v22, type metadata accessor for SymbolLookupKey);
        v63 = *(*(v30 + 56) + 8 * v28);
      }

      else
      {
        sub_1920B7F00(v31, v22, type metadata accessor for SymbolLookupKey);
        v63 = *(*(v30 + 56) + 8 * v28);
      }

      sub_192228AD0();
      v9 = v24;
      v32 = v24;
      v33 = v61;
      (*v58)(v32, v22, v61);
      v34 = (*v57)(v9, v33);
      if (v34 == v56)
      {
        (*v55)(v9, v33);
        v35 = v52;
        v36 = v53;
        (*v50)(v52, v9, v53);
        sub_192076BC8(&qword_1EADF0A38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        sub_192227890();
        v37 = v36;
        v22 = v54;
        (*v49)(v35, v37);
      }

      else
      {
        if (v34 != v51)
        {
          goto LABEL_41;
        }

        (*v55)(v9, v33);
        sub_192228AF0();
      }

      v38 = sub_192228B30();
      v39 = -1 << *(v13 + 32);
      v40 = v38 & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v21 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v21 + 8 * v41);
          if (v45 != -1)
          {
            v23 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
LABEL_41:
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_192228400();
        MEMORY[0x193B0A990](0xD00000000000004BLL, 0x800000019224B9D0);
        sub_1922285A0();
        sub_192228620();
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v40) & ~*(v21 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      sub_192140B10(v22, *(v13 + 48) + v64 * v23, type metadata accessor for SymbolLookupKey);
      *(*(v13 + 56) + 8 * v23) = v63;
      ++*(v13 + 16);
      v14 = v59;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v24 = v9;
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v62 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_38;
    }

    v46 = 1 << *(v14 + 32);
    v3 = v48;
    if (v46 >= 64)
    {
      bzero(v16, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v14 = v59;
    }

    else
    {
      *v16 = -1 << v46;
    }

    *(v14 + 16) = 0;
  }

LABEL_38:
  *v3 = v13;
}

void sub_19213C3E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09F8, &qword_192236210);
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 88 * v20;
      v35 = *(v22 + 32);
      v36 = *(v22 + 48);
      *v37 = *(v22 + 64);
      *&v37[15] = *(v22 + 79);
      v33 = *v22;
      v34 = *(v22 + 16);
      v23 = sub_192228AC0();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 88 * v15;
      *(v16 + 32) = v35;
      *(v16 + 48) = v36;
      *(v16 + 64) = *v37;
      *(v16 + 79) = *&v37[15];
      *v16 = v33;
      *(v16 + 16) = v34;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
}

void sub_19213C690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A60, &qword_192236270);
  v35 = v4;
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_192228AD0();
      sub_1922279B0();
      v25 = sub_192228B30();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_19213C938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A48, &qword_192236258);
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v24 = *(v22 + 8);
      v23 = *(v22 + 16);
      v25 = *v22;
      sub_192228AD0();
      MEMORY[0x193B0BA90](v21);
      v26 = sub_192228B30();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v25;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_19213CBD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A50, &qword_192236260);
  v36 = v4;
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_192228AD0();
      sub_1922279B0();
      v26 = sub_192228B30();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_19213CE7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A40, &qword_192236250);
  v35 = v4;
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = *(v22 + 1);
      v36 = *(*(v5 + 56) + v21);
      if ((v35 & 1) == 0)
      {
        v25 = v24;
      }

      sub_192228AD0();
      MEMORY[0x193B0BA90](v23);
      sub_1922281E0();
      v26 = sub_192228B30();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v23;
      *(v17 + 8) = v24;
      *(*(v7 + 56) + v16) = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_19213D134(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A58, &qword_192236268);
  v40 = v4;
  v9 = sub_1922286A0();
  v10 = v8;
  v11 = v9;
  if (*(v8 + 16))
  {
    v36 = v3;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v9 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v38 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v40)
      {
        sub_192140B10(v25, v7, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
        v41 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_1920B7F00(v25, v7, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
        v41 = *(*(v10 + 56) + 8 * v23);
      }

      sub_192228AD0();
      sub_192225150();
      sub_192076BC8(&qword_1EADEEEC0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_192227890();
      WidgetEnvironment.Storage.hash.getter();
      MEMORY[0x193B0BA90]();
      v26 = sub_192228B30();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v10 = v37;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v10 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_192140B10(v7, *(v11 + 48) + v24 * v19, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_19213D518(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_192225150();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A00, &qword_192236218);
  v43 = v4;
  v8 = sub_1922286A0();
  v9 = v8;
  if (*(v7 + 16))
  {
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
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      sub_192228AD0();
      sub_1922279B0();
      v29 = sub_192228B30();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
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

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_19213D898(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A18, &qword_192236230);
  v31 = v4;
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_192228AD0();
      MEMORY[0x193B0BA90](v20);
      v22 = sub_192228B30();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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
        return;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
}

void sub_19213DB28(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1920440AC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19213EA88();
      v11 = v19;
      goto LABEL_8;
    }

    sub_19213B7BC(v16, a4 & 1);
    v11 = sub_1920440AC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_192228A40();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_19203BEDC(a1, v22);
  }

  else
  {
    sub_19213E73C(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_19213DC78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1920B71E4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_19213EDD4();
    result = v17;
    goto LABEL_8;
  }

  sub_19213C3E4(v14, a3 & 1);
  result = sub_1920B71E4(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      v20 = v19[7] + 88 * result;
      v21 = *(a1 + 48);
      *(v20 + 32) = *(a1 + 32);
      *(v20 + 48) = v21;
      *(v20 + 64) = *(a1 + 64);
      *(v20 + 79) = *(a1 + 79);
      v22 = *(a1 + 16);
      *v20 = *a1;
      *(v20 + 16) = v22;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v23 = v19[7] + 88 * result;
    v24 = *(a1 + 16);
    *v23 = *a1;
    *(v23 + 16) = v24;
    *(v23 + 79) = *(a1 + 79);
    v25 = *(a1 + 64);
    *(v23 + 48) = *(a1 + 48);
    *(v23 + 64) = v25;
    *(v23 + 32) = *(a1 + 32);
    v26 = v19[2];
    v13 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v13)
    {
      v19[2] = v27;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_192228A40();
  __break(1u);
  return result;
}

void sub_19213DDE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1920440AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_19213C690(v16, a4 & 1);
      v11 = sub_1920440AC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_192228A40();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_19213F3C0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_19213DF60(char a1, uint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1920B733C(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    v21 = result;
    sub_19213F530();
    result = v21;
    goto LABEL_8;
  }

  sub_19213C938(v18, a3 & 1);
  result = sub_1920B733C(a2);
  if ((v19 & 1) == (v22 & 1))
  {
LABEL_8:
    v23 = *v6;
    if (v19)
    {
      v24 = v23[7] + 24 * result;
      *v24 = a1;
      *(v24 + 8) = a4;
      *(v24 + 16) = a5;
      return result;
    }

    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a2;
    v25 = v23[7] + 24 * result;
    *v25 = a1;
    *(v25 + 8) = a4;
    *(v25 + 16) = a5;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for CHSWidgetFamily(0);
  result = sub_192228A40();
  __break(1u);
  return result;
}

void sub_19213E0AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1920440AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_19213CBD8(v16, a4 & 1);
      v11 = sub_1920440AC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_192228A40();
        __break(1u);
_objc_release_x1:
        MEMORY[0x1EEE66BB8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_19213F694();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_19213E224(uint64_t a1, void *a2, char a3, double a4, double a5)
{
  v6 = v5;
  v11 = *v5;
  result = sub_1920B73A8(a1, a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_19213CE7C(v17, a3 & 1);
      result = sub_1920B73A8(a1, a2);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_192228A40();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = result;
      sub_19213F800();
      result = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    v23 = (v22[7] + 16 * result);
    *v23 = a4;
    v23[1] = a5;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v24 = v22[6] + 16 * result;
  *v24 = a1;
  *(v24 + 8) = a2;
  v25 = (v22[7] + 16 * result);
  *v25 = a4;
  v25[1] = a5;
  v26 = v22[2];
  v16 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v27;

  return a2;
}

uint64_t sub_19213E3A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1920B7428(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_19213F970(type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey, &qword_1EADF0A58, &qword_192236268, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
      goto LABEL_7;
    }

    sub_19213D134(v16, a3 & 1);
    v21 = sub_1920B7428(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1920B7F00(a2, v10, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
      return sub_19213E7A8(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_192228A40();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

void sub_19213E56C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1920440AC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_19213FE34();
      goto LABEL_7;
    }

    sub_19213D518(v15, a4 & 1);
    v25 = sub_1920440AC(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_192228A40();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_192225150();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_19213E85C(v12, a2, a3, a1, v18);
}

unint64_t sub_19213E6EC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_19213E73C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19203BEDC(a4, (a5[7] + 32 * a1));
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

uint64_t sub_19213E7A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  result = sub_192140B10(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
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

uint64_t sub_19213E85C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_192225150();
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

void sub_19213E90C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A68, &qword_192236278);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 24 * v17);
        *v23 = v19;
        v23[1] = v20;
        v23[2] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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
}

void sub_19213EA88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A80, &qword_192236290);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_19202A98C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_19203BEDC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_19213EC2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A10, &qword_192236228);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

        sub_1920367C8(v18, *(&v18 + 1));
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
}

void sub_19213EDD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09F8, &qword_192236210);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 32) = v22)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 88 * v14;
      v18 = *(v17 + 48);
      *v23 = *(v17 + 64);
      *&v23[15] = *(v17 + 79);
      v19 = *(v17 + 16);
      v22 = *(v17 + 32);
      v20 = *v17;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 88 * v14;
      *v21 = v20;
      *(v21 + 16) = v19;
      *(v21 + 79) = *&v23[15];
      *(v21 + 48) = v18;
      *(v21 + 64) = *v23;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_19213EF6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09E8, &qword_192236200);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_19202A98C(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_19203BEDC(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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
}

void sub_19213F0EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF4F0, &qword_19222D8C8);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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
}

void sub_19213F250()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A78, &qword_192236288);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_19213F3C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A60, &qword_192236270);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_19213F530()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A48, &qword_192236258);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_19213F694()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A50, &qword_192236260);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

        v22 = v20;
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
}

void sub_19213F800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A40, &qword_192236250);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + v17);
        v22 = *(v4 + 48) + v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(*(v4 + 56) + v17) = v21;
        v23 = v20;
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
}

void sub_19213F970(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v7 = v4;
  v8 = a1(0);
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_192228690();
  v12 = v11;
  if (*(v10 + 16))
  {
    v32 = v7;
    v13 = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || v13 >= v10 + 64 + 8 * v14)
    {
      memmove(v13, (v10 + 64), 8 * v14);
    }

    v33 = v10 + 64;
    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = v34;
        v28 = *(v35 + 72) * v26;
        v29 = v36;
        sub_1920B7F00(*(v10 + 48) + v28, v34, v36);
        v30 = *(*(v10 + 56) + 8 * v26);
        v31 = v37;
        sub_192140B10(v27, *(v37 + 48) + v28, v29);
        *(*(v31 + 56) + 8 * v26) = v30;
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v7 = v32;
        v12 = v37;
        goto LABEL_21;
      }

      v25 = *(v33 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }
}

void sub_19213FBB0()
{
  v1 = v0;
  v26 = sub_1922285D0();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A28, &qword_192236240);
  v3 = *v0;
  v4 = sub_192228690();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_19202A98C(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        sub_19203BEDC(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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
}

void sub_19213FE34()
{
  v1 = v0;
  v35 = sub_192225150();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A00, &qword_192236218);
  v3 = *v0;
  v4 = sub_192228690();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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
}

void sub_1921400B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A18, &qword_192236230);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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
}

void sub_192140210(__int128 *a1, uint64_t a2)
{
  sub_192228B30();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x193B0BA90](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_192228AD0();

        sub_1922279B0();
        v10 = sub_192228B30();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

unint64_t sub_19214036C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A80, &qword_192236290);
    v3 = sub_1922286C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_19202CFFC(v4, &v13, &qword_1EADF0A88, qword_192236298);
      v5 = v13;
      v6 = v14;
      result = sub_1920440AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19203BEDC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1921404A0()
{
  result = qword_1EADF09E0;
  if (!qword_1EADF09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF09E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKCErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CKCErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_192140634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A10, &qword_192236228);
    v3 = sub_1922286C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v5 = *(i - 1);
      v7 = *i;

      sub_1920367C8(v5, v7);
      result = sub_1920B70BC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_192140738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A48, &qword_192236258);
    v3 = sub_1922286C0();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1920B733C(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_192140830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A08, &qword_192236220);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A00, &qword_192236218);
    v7 = sub_1922286C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_19202CFFC(v9, v5, &qword_1EADF0A08, &qword_192236220);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1920440AC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_192225150();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_192140A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09F0, &qword_192236208);
    v3 = sub_1922286C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1920B7548(v5);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_192140B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_192140BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920D7114;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_192140D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920D8A84;

  return v11(a1, a2, a3, a4);
}

double sub_192140EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_192140F78(a1, a2, a3, a4, WitnessTable);
}

double sub_192140F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = a1;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v15 = sub_192227CF0();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, v5, a3);
  sub_192227CC0();

  v16 = sub_192227CB0();
  v17 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 2) = v16;
  *(v19 + 3) = v20;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  *(v19 + 6) = v23;
  (*(v9 + 32))(&v19[v17], v11, a3);
  v21 = &v19[v18];
  *v21 = v24;
  v21[1] = a2;
  sub_19211CA04(0, 0, v14, &unk_1922363B8, v19);

  return result;
}

uint64_t sub_1921411A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a5;
  v7[3] = a6;
  v7[4] = sub_192227CC0();
  v7[5] = sub_192227CB0();
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = sub_192141274;

  return sub_1922216C0(a7, v12);
}

uint64_t sub_192141274(uint64_t a1)
{
  *(*v1 + 56) = a1;

  v3 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1921413B8, v3, v2);
}

uint64_t sub_1921413B8()
{
  v1 = v0[7];
  v2 = v0[2];

  v2(v1);

  v3 = v0[1];

  return v3();
}

double sub_192141438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_192140F78(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1921414B4(uint64_t a1)
{
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = (v1 + ((*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1920A59A8;

  return sub_1921411A8(a1, v6, v7, v1 + v5, v9, v10, v4);
}

void *EnvironmentValues.idealizedDateComponents.getter()
{
  sub_1920C8054();

  return sub_1922261E0();
}

uint64_t EnvironmentValues.idealizedDateComponents.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_19204154C(a1, &v5 - v3);
  sub_1920C8054();
  sub_1922261F0();
  return sub_192033970(a1, &qword_1EADEECD0, &qword_1922363D0);
}

uint64_t sub_19214170C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  __swift_allocate_value_buffer(v0, qword_1EADEE0D0);
  v1 = __swift_project_value_buffer(v0, qword_1EADEE0D0);
  v2 = sub_192224EA0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static IdealizedDateComponentsKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE0C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEE0D0);
  swift_beginAccess();
  return sub_19204154C(v3, a1);
}

uint64_t static IdealizedDateComponentsKey.defaultValue.setter(uint64_t a1)
{
  if (qword_1EADEE0C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEE0D0);
  swift_beginAccess();
  sub_192141904(a1, v3);
  swift_endAccess();
  return sub_192033970(a1, &qword_1EADEECD0, &qword_1922363D0);
}

uint64_t sub_192141904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static IdealizedDateComponentsKey.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EADEE0C8 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  __swift_project_value_buffer(v1, qword_1EADEE0D0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_192141A14@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE0C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEE0D0);
  swift_beginAccess();
  return sub_19204154C(v3, a1);
}

uint64_t sub_192141AAC(uint64_t a1)
{
  if (qword_1EADEE0C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEE0D0);
  swift_beginAccess();
  sub_192141904(a1, v3);
  return swift_endAccess();
}

uint64_t sub_192141B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1920494E8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.idealizedDateComponents.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_1920C8054();
  sub_1922261E0();
  return sub_192141CC8;
}

void sub_192141CC8(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_19204154C((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_19204154C(v3[2], v3[1]);
    sub_1922261F0();
    sub_192033970(v6, &qword_1EADEECD0, &qword_1922363D0);
  }

  else
  {
    sub_1922261F0();
  }

  sub_192033970(v4, &qword_1EADEECD0, &qword_1922363D0);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_192141DB8(uint64_t a1)
{
  v2 = sub_192141FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192141DF4(uint64_t a1)
{
  v2 = sub_192141FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IdealizedDateComponentsKey.DateComponentsValue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A90, &qword_1922363D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192141FA8();
  sub_192228B90();
  sub_192224EA0();
  sub_1921435EC(&qword_1EADF0AA0, MEMORY[0x1E6968278], MEMORY[0x1E6968280]);
  sub_192228850();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_192141FA8()
{
  result = qword_1EADF0A98;
  if (!qword_1EADF0A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0A98);
  }

  return result;
}

uint64_t IdealizedDateComponentsKey.DateComponentsValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0AA8, &qword_1922363E0);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for IdealizedDateComponentsKey.DateComponentsValue(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_192224EA0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192141FA8();
  v13 = v18;
  sub_192228B70();
  if (!v13)
  {
    v14 = v16;
    sub_1921435EC(&qword_1EADF0AB0, MEMORY[0x1E6968278], MEMORY[0x1E6968298]);
    sub_192228750();
    (*(v17 + 8))(v8, v6);
    sub_192142334(v5, v11);
    sub_1921423A4(v11, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1921422D8(v11);
}

uint64_t type metadata accessor for IdealizedDateComponentsKey.DateComponentsValue(uint64_t a1)
{
  result = qword_1EADF0AD8;
  if (!qword_1EADF0AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1921422D8(uint64_t a1)
{
  v2 = type metadata accessor for IdealizedDateComponentsKey.DateComponentsValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192142334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921423A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdealizedDateComponentsKey.DateComponentsValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192142420(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A90, &qword_1922363D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192141FA8();
  sub_192228B90();
  sub_192224EA0();
  sub_1921435EC(&qword_1EADF0AA0, MEMORY[0x1E6968278], MEMORY[0x1E6968280]);
  sub_192228850();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_192142598()
{
  result = swift_getKeyPath();
  qword_1ED74C7D0 = result;
  return result;
}

uint64_t sub_1921425C0()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B00, &qword_192236658);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C7D8 = v0;
  unk_1ED74C7E0 = 0xD000000000000017;
  qword_1ED74C7E8 = 0x80000001922497B0;
  return result;
}

uint64_t sub_192142640()
{
  if (qword_1ED74A3B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19214269C()
{
  if (qword_1ED74A4B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C7D8;

  return v0;
}

BOOL _s9WidgetKit26IdealizedDateComponentsKeyV0dE5ValueV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_192224EA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF500, &unk_19222D8E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_19204154C(a1, &v20 - v12);
  sub_19204154C(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_19204154C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1921435EC(&qword_1EADECF18, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
      v18 = sub_192227910();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_192033970(v13, &qword_1EADEECD0, &qword_1922363D0);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_192033970(v13, &qword_1EADEF500, &unk_19222D8E0);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_192033970(v13, &qword_1EADEECD0, &qword_1922363D0);
  return 1;
}

BOOL _s9WidgetKit26IdealizedDateComponentsKeyV0dE5ValueV1loiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v97 = sub_1922252B0();
  v94 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v84 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v84 - v12;
  v14 = sub_192224EA0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v84 - v19;
  sub_19204154C(a1, v13);
  v21 = *(v15 + 48);
  if (v21(v13, 1, v14) != 1)
  {
    v96 = v17;
    v23 = *(v15 + 32);
    v23(v20, v13, v14);
    sub_19204154C(a2, v10);
    if (v21(v10, 1, v14) == 1)
    {
      (*(v15 + 8))(v20, v14);
      sub_192033970(v10, &qword_1EADEECD0, &qword_1922363D0);
      return 0;
    }

    v92 = v15;
    v93 = v14;
    v23(v96, v10, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B08, qword_192236690);
    v24 = v94;
    v25 = *(v94 + 9);
    v26 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1922363C0;
    v91 = v27;
    v28 = v27 + v26;
    v29 = *(v24 + 13);
    v30 = v97;
    v29(v27 + v26, *MEMORY[0x1E6969A68], v97);
    v29(v28 + v25, *MEMORY[0x1E6969A78], v30);
    v29(v28 + 2 * v25, *MEMORY[0x1E6969A48], v30);
    v87 = 2 * v25;
    v31 = *MEMORY[0x1E6969A58];
    v86 = 3 * v25;
    v29(v28 + 3 * v25, v31, v30);
    v29(v28 + 4 * v25, *MEMORY[0x1E6969A88], v30);
    v85 = 4 * v25;
    v32 = *MEMORY[0x1E6969A98];
    v84 = 5 * v25;
    v29(v28 + 5 * v25, v32, v30);
    v33 = *(v24 + 2);
    v34 = v95;
    v89 = (v24 + 16);
    v90 = v28;
    v88 = v33;
    v33(v95, v28, v30);
    v35 = sub_192224E70();
    v37 = v36;
    v38 = sub_192224E70();
    v40 = v39;
    v41 = *(v24 + 1);
    if (v37)
    {
      v42 = 0;
    }

    else
    {
      v42 = v35;
    }

    v41(v34, v30);
    v43 = v20;
    if (v40)
    {
      if (v42)
      {
        v38 = 0;
        v42 = v35;
LABEL_18:
        v53 = v92;
        v52 = v93;
LABEL_47:

        v81 = *(v53 + 8);
        v81(v96, v52);
        v81(v43, v52);
        return v42 < v38;
      }
    }

    else if (v42 != v38)
    {
      goto LABEL_18;
    }

    v44 = v90 + v25;
    v45 = v95;
    v46 = v97;
    v88(v95, v44, v97);
    v47 = sub_192224E70();
    v48 = v47;
    if (v49)
    {
      v42 = 0;
    }

    else
    {
      v42 = v47;
    }

    v38 = sub_192224E70();
    v51 = v50;
    v41(v45, v46);
    if (v51)
    {
      v53 = v92;
      v52 = v93;
      if (v42)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v53 = v92;
      v52 = v93;
      if (v42 != v38)
      {
        goto LABEL_47;
      }
    }

    v94 = v41;
    v54 = v95;
    v55 = v97;
    v88(v95, v90 + v87, v97);
    v56 = sub_192224E70();
    v48 = v56;
    if (v57)
    {
      v42 = 0;
    }

    else
    {
      v42 = v56;
    }

    v38 = sub_192224E70();
    v59 = v58;
    v94(v54, v55);
    if (v59)
    {
      if (v42)
      {
        goto LABEL_46;
      }
    }

    else if (v42 != v38)
    {
      goto LABEL_47;
    }

    v60 = v95;
    v61 = v97;
    v88(v95, v90 + v86, v97);
    v62 = sub_192224E70();
    v48 = v62;
    if (v63)
    {
      v42 = 0;
    }

    else
    {
      v42 = v62;
    }

    v38 = sub_192224E70();
    v65 = v64;
    v94(v60, v61);
    if (v65)
    {
      if (v42)
      {
        goto LABEL_46;
      }
    }

    else if (v42 != v38)
    {
      goto LABEL_47;
    }

    v66 = v95;
    v67 = v97;
    v88(v95, v90 + v85, v97);
    v68 = sub_192224E70();
    v48 = v68;
    if (v69)
    {
      v42 = 0;
    }

    else
    {
      v42 = v68;
    }

    v38 = sub_192224E70();
    v71 = v70;
    v72 = v66;
    v73 = v94;
    v94(v72, v67);
    if ((v71 & 1) == 0)
    {
      if (v42 != v38)
      {
        goto LABEL_47;
      }

LABEL_41:
      v74 = v73;
      v75 = v95;
      v76 = v97;
      v88(v95, v90 + v84, v97);
      v77 = sub_192224E70();
      v48 = v77;
      if (v78)
      {
        v42 = 0;
      }

      else
      {
        v42 = v77;
      }

      v38 = sub_192224E70();
      v80 = v79;
      v74(v75, v76);
      if (v80)
      {
        v52 = v93;
        if (v42)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v52 = v93;
        if (v42 != v38)
        {
          goto LABEL_47;
        }
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v83 = *(v53 + 8);
      v83(v96, v52);
      v83(v43, v52);
      return 0;
    }

    if (!v42)
    {
      goto LABEL_41;
    }

LABEL_46:
    v38 = 0;
    v42 = v48;
    goto LABEL_47;
  }

  sub_192033970(v13, &qword_1EADEECD0, &qword_1922363D0);
  sub_19204154C(a2, v7);
  v22 = v21(v7, 1, v14) != 1;
  sub_192033970(v7, &qword_1EADEECD0, &qword_1922363D0);
  return v22;
}

void sub_192143410(uint64_t a1)
{
  sub_19214347C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_19214347C(uint64_t a1)
{
  if (!qword_1ED749D08)
  {
    sub_192224EA0();
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED749D08);
    }
  }
}

unint64_t sub_1921434E8()
{
  result = qword_1EADF0AE8;
  if (!qword_1EADF0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0AE8);
  }

  return result;
}

unint64_t sub_192143540()
{
  result = qword_1EADF0AF0;
  if (!qword_1EADF0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0AF0);
  }

  return result;
}

unint64_t sub_192143598()
{
  result = qword_1EADF0AF8;
  if (!qword_1EADF0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0AF8);
  }

  return result;
}

uint64_t sub_1921435EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*EnvironmentValues.userWantsWidgetDataWhenPasscodeLocked.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_192041074();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19214375C;
}

uint64_t (*EnvironmentValues.userWantsLiveActivityDataWhenPasscodeLocked.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1920577E0();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1921437D0;
}

WidgetKit::JindoDisplayMode_optional __swiftcall JindoDisplayMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t *sub_192143864@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_19214387C()
{
  result = qword_1EADF0B30;
  if (!qword_1EADF0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0B30);
  }

  return result;
}

unint64_t sub_1921438D4()
{
  result = qword_1EADF0B38;
  if (!qword_1EADF0B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0B40, &qword_192236A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0B38);
  }

  return result;
}

unint64_t sub_192143A58()
{
  result = qword_1EADF0B48;
  if (!qword_1EADF0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0B48);
  }

  return result;
}

uint64_t AccessoryWidgetBackground.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  result = swift_getKeyPath();
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

double AccessoryWidgetBackground.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    LOBYTE(v19) = *(v1 + 16);
  }

  else
  {

    sub_192227FA0();
    v8 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v9 = sub_192049898(v7, 0);
    (*(v4 + 8))(v6, v3, v9);
  }

  if (CHSWidgetFamilyIsAccessory())
  {
    KeyPath = swift_getKeyPath();
    v11 = swift_getKeyPath();
    v12 = swift_getKeyPath();
    *v18 = KeyPath;
    *&v18[16] = v11;
    *&v18[32] = v12;
    *&v18[40] = 0;
  }

  else
  {
    memset(v18, 0, 41);
    v18[41] = 1;
  }

  sub_192040C10();
  sub_1922266E0();
  result = *&v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  *a1 = v19;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  *(a1 + 41) = v17;
  return result;
}

void *sub_192143D0C@<X0>(_BYTE *a1@<X8>)
{
  sub_192143E60();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

unint64_t sub_192143DD4()
{
  result = qword_1ED7491A0;
  if (!qword_1ED7491A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0B50, &unk_192236D10);
    sub_192040C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7491A0);
  }

  return result;
}

unint64_t sub_192143E60()
{
  result = qword_1EADECD90;
  if (!qword_1EADECD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD90);
  }

  return result;
}

uint64_t sub_192143ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192143FF0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double _s7SwiftUI17EnvironmentValuesV9WidgetKitE20widgetContentMarginsAA10EdgeInsetsVvg_0()
{
  sub_19207D65C();
  sub_1922261E0();
  return v1;
}

uint64_t sub_192143F70()
{
  sub_19207D56C();
  sub_1922261E0();
  return v1;
}

uint64_t sub_192143FAC(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 100)) = 1;
  return result;
}

unint64_t sub_192143FF0()
{
  result = qword_1EADF0B58;
  if (!qword_1EADF0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0B58);
  }

  return result;
}

uint64_t sub_192144054(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19214409C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_192144108()
{
  result = qword_1ED749FC0;
  if (!qword_1ED749FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0B90, &qword_192237050);
    sub_1921441C0();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FC0);
  }

  return result;
}

unint64_t sub_1921441C0()
{
  result = qword_1ED74A118;
  if (!qword_1ED74A118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0B68, &unk_192236FD0);
    sub_192144278();
    sub_192031E74(&qword_1ED74A0C0, &qword_1EADF0B98, &qword_192237058, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A118);
  }

  return result;
}

unint64_t sub_192144278()
{
  result = qword_1ED74A130;
  if (!qword_1ED74A130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0B60, &qword_192236FC8);
    sub_192031E74(&qword_1ED74A0D8, &qword_1EADF0B88, &qword_192236FF8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A130);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_192144350(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192144370(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
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

  *(result + 57) = v3;
  return result;
}

uint64_t sub_1921443BC@<X0>(uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = sub_192226D20();
  sub_192226D50();
  v6 = sub_192226D50();
  v7 = v6 != v5;
  if (v6 == v5)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = sub_192226D40();
  sub_192226D50();
  v10 = sub_192226D50();
  v11 = v10 != v9;
  if (v10 == v9)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = sub_192226D30();
  sub_192226D50();
  v14 = sub_192226D50();
  v15 = v14 != v13;
  if (v14 == v13)
  {
    v16 = a3;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = sub_192226D60();
  sub_192226D50();
  result = sub_192226D50();
  if (result == v17)
  {
    v19 = a3;
  }

  else
  {
    v19 = 0.0;
  }

  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v12;
  *(a2 + 24) = v11;
  *(a2 + 32) = v16;
  *(a2 + 40) = v15;
  *(a2 + 48) = v19;
  *(a2 + 56) = result != v17;
  return result;
}

uint64_t ActivityPreviewSource.makeContent<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a1;
  v5[18] = a3;
  v7 = sub_192228240();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = *(a3 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  sub_192227CC0();
  v5[27] = sub_192227CB0();
  v9 = sub_192227C70();
  v5[28] = v9;
  v5[29] = v8;

  return MEMORY[0x1EEE6DFA0](sub_192144640, v9, v8);
}

uint64_t sub_192144640()
{
  v1 = *(v0 + 160);
  sub_192033A64(v1 + 24, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0BA0, &qword_1922370A8);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 208);
    v3 = *(v0 + 184);
    v4 = *(v0 + 192);
    v5 = *(v0 + 160);
    v6 = *(v0 + 144);
    (*(v4 + 56))(v3, 0, 1, v6);
    v7 = *(v4 + 32);
    *(v0 + 240) = v7;
    *(v0 + 248) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v7(v2, v3, v6);
    v23 = (*(v5 + 64) + **(v5 + 64));
    v8 = swift_task_alloc();
    *(v0 + 256) = v8;
    *v8 = v0;
    v8[1] = sub_192144970;

    return v23();
  }

  else
  {
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v14 = *(v0 + 160);
    v15 = *(v0 + 144);

    (*(v11 + 56))(v10, 1, 1, v15);
    (*(v13 + 8))(v10, v12);
    *(v0 + 80) = swift_getMetatypeMetadata();
    *(v0 + 56) = v15;
    v16 = *(v14 + 48);
    v17 = __swift_project_boxed_opaque_existential_1((v1 + 24), v16);
    *(v0 + 112) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 88));
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
    sub_192121A58();
    swift_allocError();
    v20 = v19;
    *v19 = 0xD000000000000017;
    *(v19 + 8) = 0x800000019224BBE0;
    *(v19 + 16) = 0x7475626972747461;
    *(v19 + 24) = 0xEA00000000007365;
    sub_19203BEDC((v0 + 56), (v19 + 32));
    v21 = *(v0 + 104);
    *(v20 + 64) = *(v0 + 88);
    *(v20 + 80) = v21;
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_192144970(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 264) = a1;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);

  return MEMORY[0x1EEE6DFA0](sub_192144A98, v4, v3);
}

uint64_t sub_192144A98()
{
  v1 = v0[33];
  v3 = v0[18];
  v2 = v0[19];

  v0[15] = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0BA8, &unk_1922370B0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
  v8 = sub_192145108();
  v9 = sub_19204301C(sub_1921450E8, v4, v5, AssociatedTypeWitness, v7, v8, MEMORY[0x1E69E7288], (v0 + 16));
  v10 = v0[30];
  v12 = v0[25];
  v11 = v0[26];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];

  v10(v12, v11, v14);
  (*(*(v14 - 8) + 32))(v15, v12, v14);
  *(v15 + *(type metadata accessor for ActivityPreviewSource.Content(0, v14, v13, v16) + 36)) = v9;

  v17 = v0[1];

  return v17();
}

uint64_t ActivityPreviewSource.Content.states.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_192144DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for ActivityPreviewSource.Content(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t ActivityPreviewSource.makeWidget.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_192144E7C@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_192228240();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - v11;
  sub_19202A98C(a1, &v22);
  v13 = swift_dynamicCast();
  v14 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v13)
  {
    v15 = *(AssociatedTypeWitness - 8);
    v14(v12, 0, 1, AssociatedTypeWitness);
    return (*(v15 + 32))(a5, v12, AssociatedTypeWitness);
  }

  else
  {
    v14(v12, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v12, v9);
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v22 = AssociatedTypeWitness;
    sub_19202A98C(a1, v21);
    sub_192121A58();
    v17 = swift_allocError();
    v19 = v18;
    *v18 = 0xD000000000000017;
    *(v18 + 8) = 0x800000019224BBE0;
    strcpy((v18 + 16), "content state");
    *(v18 + 30) = -4864;
    sub_19203BEDC(&v22, (v18 + 32));
    v20 = v21[1];
    *(v19 + 64) = v21[0];
    *(v19 + 80) = v20;
    result = swift_willThrow();
    *a4 = v17;
  }

  return result;
}

unint64_t sub_192145108()
{
  result = qword_1EADF0BB0[0];
  if (!qword_1EADF0BB0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0BA8, &unk_1922370B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADF0BB0);
  }

  return result;
}

uint64_t ActivityPreviewSource.contentDomain.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6966798];
  v3 = sub_192225720();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t Widget.buildActivityHost()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for ResolvedWidgetHost(0, a1, a2, a4);
  result = sub_1921AFBB8(v4, v7, v8, v9);
  a3[3] = v6;
  a3[4] = &off_1F06AFB88;
  *a3 = result;
  return result;
}

char *sub_192145294()
{
  v0 = type metadata accessor for WidgetDescriptor(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1921AA3D8();
  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(v0 + 32);
  v7 = *(v1 + 80);
  v21[1] = v4;
  v8 = v4 + ((v7 + 32) & ~v7);
  v9 = *(v1 + 72);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_19207F348(v8, v3);
    v12 = *&v3[v6];

    result = sub_192145924(v3);
    v13 = *(v12 + 16);
    v14 = *(v10 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v10 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_1920C3388(result, v16, 1, v10);
      v10 = result;
      if (*(v12 + 16))
      {
LABEL_14:
        v17 = *(v10 + 2);
        if ((*(v10 + 3) >> 1) - v17 < v13)
        {
          goto LABEL_23;
        }

        memcpy(&v10[v17 + 32], (v12 + 32), v13);

        if (v13)
        {
          v18 = *(v10 + 2);
          v19 = __OFADD__(v18, v13);
          v20 = v18 + v13;
          if (v19)
          {
            goto LABEL_24;
          }

          *(v10 + 2) = v20;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_22;
    }

LABEL_4:
    v8 += v9;
    if (!--v5)
    {

      return v10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1921454A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1921454F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_192145554(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_192227C40();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_192145608(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_192145744(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_192145924(uint64_t a1)
{
  v2 = type metadata accessor for WidgetDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ControlPicker.init<A, B, C, D>(kind:intent:displayName:preferredSize:stateProvider:title:subtitle:value:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v60 = a8;
  v61 = a2;
  v62 = a7;
  v63 = a4;
  v64 = a3;
  v65 = a5;
  v58 = a9;
  v59 = a1;
  v54 = a22;
  v55 = a23;
  v52 = a19;
  v53 = a20;
  v50 = a16;
  v51 = a18;
  v48 = a14;
  v49 = a15;
  v46 = a12;
  v47 = a13;
  v56 = a10;
  v57 = a11;
  v26 = *(a21 - 8);
  v45 = a24;
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PickerStateProviderBox(0, a21, a25, v29);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v42 - v31;
  v33 = sub_192224FB0();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v34 = *a6;
  v35 = *(swift_getAssociatedConformanceWitness() + 8);
  v44 = sub_192224BB0();
  v43 = v36;
  if (!v65)
  {
    sub_192224BC0();
    v63 = sub_192227980();
    v65 = v37;
  }

  v66[0] = v34;
  v38 = v62;
  (*(v26 + 16))(v28, v62, a21);
  (*(v26 + 32))(v32, v28, a21);
  WitnessTable = swift_getWitnessTable();
  v40 = sub_192224BA0();
  sub_192145D94(v59, v61, v64, v44, v43, v63, v65, v66, v58, v32, 3, v40, v60, v56, v57, v46, v47, v48, v49, v50, a17, v51, v52, v53, v30, v35, v54, v55, v45, WitnessTable);
  return (*(v26 + 8))(v38, a21);
}

uint64_t sub_192145D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v98 = a6;
  v102 = a5;
  v101 = a4;
  v120 = a30;
  v119 = a29;
  v111 = a28;
  v117 = a27;
  v118 = a24;
  v125 = a23;
  v124 = a22;
  v107 = a20;
  v106 = a19;
  v123 = a18;
  v104 = a17;
  v122 = a16;
  v103 = a15;
  v121 = a14;
  v112 = a25;
  v114 = *(a25 - 8);
  v100 = a13;
  v105 = a12;
  v108 = a11;
  v113 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v110 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_192224FB0();
  MEMORY[0x1EEE9AC00](v37 - 8);
  v38 = *a8;
  *(a9 + 192) = 0;
  v109 = a1;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v115 = a2;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  v39 = a9;
  *(a9 + 48) = a3;

  if (a7)
  {
    v40 = v98;
  }

  else
  {
    sub_192224BC0();
    v40 = sub_192227980();
    a7 = v41;
  }

  *(a9 + 152) = v40;
  *(a9 + 160) = a7;
  *(a9 + 168) = v38;
  v42 = v102;
  *(a9 + 176) = v101;
  *(a9 + 184) = v42;
  v102 = sub_192224BB0();
  v101 = v43;
  v44 = *(v114 + 16);
  v116 = a21;
  v45 = v112;
  v44(v110, v113);
  v46 = swift_allocObject();
  v47 = v124;
  v46[2] = a21;
  v46[3] = v47;
  v48 = v118;
  v46[4] = v125;
  v46[5] = v48;
  v49 = v48;
  v46[6] = v45;
  v46[7] = a26;
  v50 = v45;
  v51 = v117;
  v52 = v111;
  v46[8] = v117;
  v46[9] = v52;
  v53 = v119;
  v46[10] = v119;
  v54 = v53;
  v46[11] = v120;
  v55 = swift_allocObject();
  v56 = v116;
  v57 = v124;
  v55[2] = v116;
  v55[3] = v57;
  v55[4] = v125;
  v55[5] = v49;
  v55[6] = v50;
  v55[7] = a26;
  v99 = a26;
  v55[8] = v51;
  v55[9] = v52;
  v58 = v120;
  v55[10] = v54;
  v55[11] = v58;
  v59 = v121;
  v55[12] = v100;
  v55[13] = v59;
  v60 = swift_allocObject();
  v100 = v39;
  v61 = v124;
  v60[2] = v56;
  v60[3] = v61;
  v62 = v118;
  v60[4] = v125;
  v60[5] = v62;
  v60[6] = v50;
  v60[7] = a26;
  v63 = v117;
  v64 = v111;
  v60[8] = v117;
  v60[9] = v64;
  v65 = v119;
  v60[10] = v119;
  v60[11] = v58;
  v66 = v122;
  v60[12] = v103;
  v60[13] = v66;
  v67 = swift_allocObject();
  v67[2] = v116;
  v67[3] = v61;
  v68 = v125;
  v67[4] = v125;
  v67[5] = v62;
  v69 = v99;
  v67[6] = v50;
  v67[7] = v69;
  v67[8] = v63;
  v67[9] = v64;
  v67[10] = v65;
  v70 = v120;
  v71 = v104;
  v67[11] = v120;
  v67[12] = v71;
  v67[13] = v123;
  v72 = swift_allocObject();
  v73 = v124;
  v72[2] = v116;
  v72[3] = v73;
  v74 = v118;
  v72[4] = v68;
  v72[5] = v74;
  v75 = v112;
  v72[6] = v112;
  v72[7] = v69;
  v72[8] = v117;
  v72[9] = v64;
  v72[10] = v119;
  v72[11] = v70;
  v76 = v70;
  v77 = v106;
  v78 = v107;
  v72[12] = v106;
  v72[13] = v78;
  v79 = v115;

  sub_19202D088(v77, v78);
  v96 = v76;
  v80 = v75;
  v95 = v60;
  v94 = v55;
  v81 = v109;
  v82 = v79;
  sub_19207FAEC(v109, v79, v102, v101, v110, sub_19214C6B4, v46, sub_19214C6EC, v126, v94, sub_19214C704, v95, sub_19214C768, v67, sub_19214C7A4, v72, v75, v96);
  v83 = v108;
  v84 = v100;
  v85 = v105;
  *v100 = v108;
  v84[1] = v85;
  v84[16] = &type metadata for ControlPickerTemplateProvider;
  v84[17] = &off_1F06AFD68;
  v86 = swift_allocObject();
  v84[13] = v86;
  v87 = v85;
  sub_19203831C(v77, v78);

  v88 = v126[9];
  v86[9] = v126[8];
  v86[10] = v88;
  v86[11] = v126[10];
  v89 = v126[5];
  v86[5] = v126[4];
  v86[6] = v89;
  v90 = v126[7];
  v86[7] = v126[6];
  v86[8] = v90;
  v91 = v126[1];
  v86[1] = v126[0];
  v86[2] = v91;
  v92 = v126[3];
  v86[3] = v126[2];
  v86[4] = v92;
  result = (*(v114 + 8))(v113, v80);
  *(v84 + 144) = 0;
  v84[7] = v81;
  v84[8] = v82;
  v84[9] = 0;
  v84[10] = 0;
  v84[11] = v83;
  v84[12] = v87;
  return result;
}