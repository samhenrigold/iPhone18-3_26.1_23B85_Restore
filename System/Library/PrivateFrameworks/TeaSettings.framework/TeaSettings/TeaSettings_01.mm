unint64_t sub_26D199250(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t SettingsBundle.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SettingsBundle.init(title:layout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 98) = 1;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = sub_26D199378;
  *(a4 + 32) = 0;
  *(a4 + 96) = 263;
  *(a4 + 104) = a3;
}

double sub_26D199378@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t SettingsBundle.callAsFunction(title:additionalGroups:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v10 = *(v4 + 104);

  sub_26D190B3C(v8);
  *(a4 + 98) = 1;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v10;
  *(a4 + 24) = sub_26D199378;
  *(a4 + 32) = 0;
  *(a4 + 96) = 263;
  *(a4 + 104) = v10;
}

uint64_t sub_26D199450(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D199490(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PresetStartupTask.__allocating_init(presetManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_26D1885C4(a1, v2 + 16);
  return v2;
}

uint64_t PresetStartupTask.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void *FeatureFlags.items.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_26D19BA44();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_26D190C54(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v18;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D6B46D0](v5, v1);
        sub_26D1868C4(v6 + 16, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_26D1868C4(*(v1 + 8 * v5 + 32) + 16, v15);
      }

      v18 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_26D190C54((v7 > 1), v8 + 1, 1);
      }

      ++v5;
      v9 = v16;
      v10 = v17;
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
      MEMORY[0x28223BE20](v11);
      v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v13);
      sub_26D190E34(v8, v13, &v18, v9, v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v3 = v18;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t FeatureFlags.__allocating_init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FeatureFlags.enableAllItem(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = type metadata accessor for FeatureFlags.EnableAllItem();
  swift_allocObject();
  v9 = sub_26D199BE0(a1, a2, v7);
  a3[3] = v8;
  a3[4] = &off_287E917B0;
  *a3 = v9;
}

uint64_t FeatureFlags.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D1998F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = sub_26D1893BC(v4);
  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D6B46D0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v1 = (*(v8 + 56))(v2, &off_287E91738);

    v6 = v7 + 1;
  }

  while ((v1 & 1) != 0);
  sub_26D19A8C0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26D19D3B0;
  if (qword_2804DF270 == -1)
  {
    goto LABEL_11;
  }

LABEL_16:
  swift_once();
LABEL_11:
  v9 = v5 == v7;
  *(v1 + 32) = qword_2804DF5F0;
  v10 = swift_allocObject();
  swift_weakInit();
  *a1 = v9;
  *(a1 + 8) = v1;
  *(a1 + 16) = sub_26D19AB48;
  *(a1 + 24) = v10;
  *(a1 + 80) = 0;
}

uint64_t sub_26D199A98@<X0>(char a1@<W0>, char *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + 16);
    v8 = sub_26D1893BC(v7);

    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {

        v12 = 1;
        goto LABEL_12;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D6B46D0](i, v7);
        v10 = result;
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v10 = *(v7 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v11 = *(v10 + 72);

      v11(a1 & 1, v6, &off_287E91760);
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
    v12 = 0;
LABEL_12:
    *a3 = v12;
  }

  return result;
}

uint64_t sub_26D199BE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  if (a3 >> 62)
  {
    v4 = sub_26D19BA44();
  }

  else
  {
    v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v3 + 40) = v4 != 0;
  return v3;
}

uint64_t sub_26D199C30()
{

  return v0;
}

uint64_t sub_26D199C58()
{
  v0 = sub_26D199C30();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_26D199C88()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t FeatureFlag.__allocating_init(_:label:invertValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  OUTLINED_FUNCTION_1_5();
  v8 = swift_allocObject();
  FeatureFlag.init(_:label:invertValue:)(a1, a2, a3, v4);
  return v8;
}

void *FeatureFlag.init(_:label:invertValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_26D19A8C0();
  OUTLINED_FUNCTION_2_3();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26D19D3B0;
  v8 = qword_2804DF270;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_2804DF270);
  }

  *(v7 + 32) = qword_2804DF5F0;
  sub_26D190F1C(0, v9, v10, v11);
  v13 = v12;
  swift_allocObject();
  v14 = sub_26D191110();
  v4[5] = v13;
  v4[6] = &protocol witness table for Item<A>;
  v4[2] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a4 & 1;
  v4[7] = sub_26D19A914;
  v4[8] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a4 & 1;
  v4[9] = sub_26D19A920;
  v4[10] = v16;

  return v4;
}

uint64_t sub_26D199ED0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(&v9, a3, MEMORY[0x277D839B0], &protocol witness table for Bool, ObjectType, a2);
  return (v9 ^ a4) & 1;
}

uint64_t sub_26D199F54(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a1 ^ a5;
  ObjectType = swift_getObjectType();
  v10 = v7;
  return (*(a3 + 16))(a4, &v10, MEMORY[0x277D839B0], &protocol witness table for Bool, ObjectType, a3);
}

uint64_t FeatureFlag.__allocating_init(_:label:)()
{
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_1_5();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_5_1();
  FeatureFlag.init(_:label:)(v1);
  return v0;
}

{
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_1_5();
  swift_allocObject();
  OUTLINED_FUNCTION_5_1();
  FeatureFlag.init(_:label:)();
  return v0;
}

void *FeatureFlag.init(_:label:)(uint64_t a1)
{
  sub_26D19A8C0();
  OUTLINED_FUNCTION_2_3();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26D19D3B0;
  v4 = qword_2804DF270;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_2804DF270);
  }

  *(v3 + 32) = qword_2804DF5F0;
  sub_26D19A92C(0);
  v6 = v5;
  swift_allocObject();
  v7 = sub_26D191110();
  v1[5] = v6;
  v1[6] = &protocol witness table for Item<A>;
  v1[2] = v7;
  v1[7] = sub_26D19A988;
  v1[8] = a1;
  v1[9] = sub_26D19A990;
  v1[10] = a1;

  return v1;
}

uint64_t sub_26D19A180(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  ObjectType = swift_getObjectType();
  v11 = v6;
  v8 = *(a3 + 16);
  v9 = sub_26D18851C();
  return v8(a4, &v11, &type metadata for FeatureState, v9, ObjectType, a3);
}

uint64_t FeatureFlag.__allocating_init<A>(_:label:isEnabled:setEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_1_5();
  v14 = swift_allocObject();
  FeatureFlag.init<A>(_:label:isEnabled:setEnabled:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void *FeatureFlag.init<A>(_:label:isEnabled:setEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = type metadata accessor for Item(0, *(*a1 + 88), *(*a1 + 96), a4);
  sub_26D19A8C0();
  OUTLINED_FUNCTION_2_3();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26D19D3B0;
  v15 = qword_2804DF270;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_2804DF270);
  }

  *(v14 + 32) = qword_2804DF5F0;
  sub_26D18ED64(&v25);
  v24 = v25;
  v23 = 0;
  v16 = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)(a1, a2, a3, &v24, &v23, v14);
  v8[5] = v13;
  v8[6] = &protocol witness table for Item<A>;
  v8[2] = v16;
  OUTLINED_FUNCTION_2_3();
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a1;
  v8[7] = sub_26D19A998;
  v8[8] = v17;
  OUTLINED_FUNCTION_2_3();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a6;
  v18[4] = a7;
  v8[9] = sub_26D19A9A4;
  v8[10] = v18;

  return v8;
}

uint64_t sub_26D19A444(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v8 = *a5;
  v9 = *(*a5 + 88);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - v11;
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(v5, v9, *(v8 + 96), ObjectType, a2);
  LOBYTE(v5) = a3(v12);
  (*(v10 + 8))(v12, v9);
  return v5 & 1;
}

uint64_t sub_26D19A588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v16 = a5;
  v8 = *a4;
  v9 = *(*a4 + 88);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - v11;
  ObjectType = swift_getObjectType();
  v16(a1);
  (*(a3 + 16))(a4, v12, v9, *(v8 + 96), ObjectType, a3);
  return (*(v10 + 8))(v12, v9);
}

void *FeatureFlag.init(_:label:)()
{
  OUTLINED_FUNCTION_4_5();
  sub_26D1868C4(v4, v8);
  v1[5] = &type metadata for FeatureFlag.FeatureFlagItem;
  v1[6] = &off_287E91788;
  v5 = swift_allocObject();
  v1[2] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
  sub_26D1885C4(v8, v5 + 32);
  *(v5 + 112) = 267;
  sub_26D1885C4(v3, v8);
  v6 = swift_allocObject();
  sub_26D1885C4(v8, v6 + 16);
  v1[7] = sub_26D19A9B0;
  v1[8] = v6;
  v1[9] = nullsub_1;
  v1[10] = 0;
  return v1;
}

uint64_t sub_26D19A7FC()
{
  v1 = *v0;

  return v1;
}

void *FeatureFlag.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t FeatureFlag.__deallocating_deinit()
{
  FeatureFlag.deinit();
  v0 = OUTLINED_FUNCTION_1_5();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26D19A8C0()
{
  if (!qword_280AF2890)
  {
    v0 = sub_26D19BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF2890);
    }
  }
}

void sub_26D19A92C(uint64_t a1)
{
  if (!qword_2804DF610)
  {
    v2 = sub_26D18851C();
    v4 = type metadata accessor for Item(a1, &type metadata for FeatureState, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_2804DF610);
    }
  }
}

uint64_t dispatch thunk of FeatureFlag.__allocating_init(_:label:)()
{
  return (*(v0 + 112))();
}

{
  return (*(v0 + 128))();
}

uint64_t sub_26D19AA9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 98))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D19AADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ResetItem.label.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

double ResetItem.cellStyle.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for SettingAction();
  swift_allocObject();
  SettingAction.init(_:_:)(0xD000000000000015, 0x800000026D19DDA0, sub_26D19ADF0, v2);
  v3 = sub_26D198620();

  sub_26D19A8C0();
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_26D19D3B0;
  *(v4 + 32) = v3;
  *a1 = 1;
  *(a1 + 8) = 0x7465736552;
  *(a1 + 16) = 0xE500000000000000;
  *(a1 + 24) = 0xD000000000000012;
  *(a1 + 32) = 0x800000026D19DDC0;
  *(a1 + 40) = 0xD00000000000002FLL;
  *(a1 + 48) = 0x800000026D19DDE0;
  *(a1 + 56) = v4;
  *(a1 + 64) = nullsub_1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 9;
  return result;
}

uint64_t sub_26D19ACD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = MEMORY[0x277D84F90];

    sub_26D191A74(v4, &v8);

    v5 = v8;
    result = sub_26D1893BC(v8);
    v6 = result;
    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D6B46D0](i, v5);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_26D1985B0();
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t ResetItem.__allocating_init(layout:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 257;
  *(result + 24) = 0xD000000000000012;
  *(result + 32) = 0x800000026D19DDC0;
  *(result + 40) = a1;
  return result;
}

uint64_t ResetItem.init(layout:)(uint64_t a1)
{
  *(v1 + 16) = 257;
  *(v1 + 24) = 0xD000000000000012;
  *(v1 + 32) = 0x800000026D19DDC0;
  *(v1 + 40) = a1;
  return v1;
}

uint64_t ResetItem.deinit()
{

  return v0;
}

uint64_t ResetItem.__deallocating_deinit()
{
  ResetItem.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

unint64_t sub_26D19AF80(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t (*sub_26D19AFA4(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_26D19AF74(a3);
  sub_26D19AF80(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x26D6B46D0](a2, a3);
  }

  *a1 = v7;
  return sub_26D19B030;
}

uint64_t DataType.hashValue.getter()
{
  v1 = *v0;
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](v1);
  return sub_26D19BAE4();
}

unint64_t sub_26D19B124()
{
  result = qword_2804DF618;
  if (!qword_2804DF618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DF618);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DataType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t ConditionalItem.label.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t ConditionalItem.cellStyle.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t ConditionalItem.isEnabled.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t sub_26D19B420(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D19B460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D19B4C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D19B518(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26D19B56C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}