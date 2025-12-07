uint64_t sub_1D7FE8E44()
{
  OUTLINED_FUNCTION_0_100();
  v0 = OUTLINED_FUNCTION_2_68();

  return sub_1D7E0E10C(v0, v1);
}

double sub_1D7FE8EB8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *))
{
  v5 = a3;

  a4(v5);

  return result;
}

uint64_t sub_1D7FE8F18(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190D54();

  return v3;
}

uint64_t sub_1D7FE8F84()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t sub_1D7FE8FC0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7FE9040(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 32) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1D7FE91C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 32) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D7FE9434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0x6974616D6F747561;
  a4[1] = 0xEA00000000006E6FLL;
  a4[2] = (*(a3 + 24))(a2, a3);
  a4[3] = v8;
  v10 = type metadata accessor for AutomationIdentifier(0, a2, a3, v9);
  v11 = *(*(a2 - 8) + 32);
  v12 = a4 + *(v10 + 40);

  return v11(v12, a1, a2);
}

uint64_t sub_1D7FE94F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D8192634() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D8192634() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1635017060 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D8192634();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D7FE9620(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 1635017060;
}

uint64_t sub_1D7FE966C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v15[0] = *(a2 + 24);
  v15[1] = v6;
  type metadata accessor for AutomationIdentifier.CodingKeys(255, v6, v15[0], a4);
  OUTLINED_FUNCTION_0_101();
  swift_getWitnessTable();
  v7 = sub_1D8192584();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D81928C4();
  v18 = 0;
  v13 = v15[3];
  sub_1D8192564();
  if (!v13)
  {
    v17 = 1;
    sub_1D8192564();
    v16 = 2;
    sub_1D8192574();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1D7FE9828@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  OUTLINED_FUNCTION_2();
  v33 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AutomationIdentifier.CodingKeys(255, v10, v11, v12);
  OUTLINED_FUNCTION_0_101();
  swift_getWitnessTable();
  v39 = sub_1D8192544();
  OUTLINED_FUNCTION_2();
  v35 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v37 = a3;
  v18 = type metadata accessor for AutomationIdentifier(0, a2, a3, v17);
  OUTLINED_FUNCTION_2();
  v32 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v31 - v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = v16;
  v23 = v40;
  sub_1D81928A4();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v40 = a1;
  v24 = v36;
  v43 = 0;
  *v22 = sub_1D8192514();
  v22[1] = v25;
  v42 = 1;
  v22[2] = sub_1D8192514();
  v22[3] = v26;
  v41 = 2;
  sub_1D8192524();
  v27 = OUTLINED_FUNCTION_2_69();
  v28(v27);
  (*(v33 + 32))(v22 + *(v18 + 40), v24, a2);
  v29 = v32;
  (*(v32 + 16))(v34, v22, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  return (*(v29 + 8))(v22, v18);
}

uint64_t sub_1D7FE9BE0(uint64_t a1)
{
  sub_1D81927E4();
  sub_1D7EBD688(v3, *v1);
  return sub_1D8192824();
}

uint64_t sub_1D7FE9C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7FE94F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7FE9C88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7FE9618();
  *a1 = result;
  return result;
}

uint64_t sub_1D7FE9CB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D7FE9D0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

_BYTE *sub_1D7FE9DB0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D7FE9ED0(uint64_t a1, __n128 a2)
{
  sub_1D7FEA2BC(0, a2);
  v4 = v3;
  v5 = *(v3 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7FEAC18(0, v6);
  v10 = v9 - 8;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v11);
  sub_1D7FEACAC(&qword_1ECA0F130, sub_1D7FEA2BC, MEMORY[0x1E69D6620]);
  sub_1D8191134();
  v14 = *(v10 + 44);
  sub_1D7FEACAC(&qword_1ECA0F128, sub_1D7FEA2BC, MEMORY[0x1E69D6628]);
  while (1)
  {
    sub_1D81917B4();
    if (*&v13[v14] == v19[0])
    {
      break;
    }

    v16 = sub_1D81918F4();

    v16(v19, 0);
    sub_1D81917C4();
    sub_1D818EAB4();
    v17 = sub_1D818EAA4();
    sub_1D7F0A7A4(v17);
  }

  return sub_1D7FEACF4(v13, v15);
}

uint64_t SettingActionHandler.__allocating_init()()
{
  v1 = swift_allocObject();
  v2 = sub_1D818EAC4();
  OUTLINED_FUNCTION_0_102();
  v4 = sub_1D7FEACAC(v3, v0, MEMORY[0x1E69D6D68]);
  v5 = OUTLINED_FUNCTION_1_80(&unk_1ECA0D8F0);
  MEMORY[0x1DA7114E0](MEMORY[0x1E69E7CC0], v2, v4, v5);
  return v1;
}

uint64_t SettingActionHandler.init()(__n128 a1)
{
  v3 = sub_1D818EAC4();
  OUTLINED_FUNCTION_0_102();
  v5 = sub_1D7FEACAC(v4, v2, MEMORY[0x1E69D6D68]);
  v6 = OUTLINED_FUNCTION_1_80(&unk_1ECA0D8F0);
  MEMORY[0x1DA7114E0](MEMORY[0x1E69E7CC0], v3, v5, v6);
  return v1;
}

uint64_t SettingActionHandler.push(action:)(uint64_t a1)
{
  swift_beginAccess();
  sub_1D7FEA2BC(0, v1);
  sub_1D818F314();
  return swift_endAccess();
}

void sub_1D7FEA2BC(uint64_t a1, __n128 a2)
{
  if (!qword_1ECA0F108)
  {
    sub_1D818EAC4();
    v2 = MEMORY[0x1E69D6D60];
    sub_1D7FEACAC(&qword_1ECA0D8E8, MEMORY[0x1E69D6D60], MEMORY[0x1E69D6D68]);
    sub_1D7FEACAC(&unk_1ECA0D8F0, v2, MEMORY[0x1E69D6D40]);
    v3 = sub_1D818F394();
    if (!v4)
    {
      atomic_store(v3, &qword_1ECA0F108);
    }
  }
}

Swift::Void __swiftcall SettingActionHandler.push(actions:)(Swift::OpaquePointer actions)
{
  sub_1D7FEA2BC(0, v2);
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v20 = v1;
  v21 = sub_1D7E36AB8(actions._rawValue);
  v19 = OBJC_IVAR____TtC5TeaUI20SettingActionHandler_actions;
  swift_beginAccess();
  v12 = 0;
  v18 = actions._rawValue & 0xC000000000000001;
  rawValue = actions._rawValue;
  v14 = actions._rawValue & 0xFFFFFFFFFFFFFF8;
  v15 = (v7 + 16);
  v16 = (v7 + 8);
  while (1)
  {
    if (v21 == v12)
    {
      swift_beginAccess();
      sub_1D818F304();
      swift_endAccess();

      return;
    }

    if (v18)
    {
      MEMORY[0x1DA714420](v12, rawValue);
    }

    else
    {
      if (v12 >= *(v14 + 16))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(v12, 1))
    {
      break;
    }

    (*v15)(v11, v20 + v19, v5);
    sub_1D818EA84();
    v17 = sub_1D818F364();

    (*v16)(v11, v5);
    if (v17)
    {
    }

    else
    {
      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
    }

    ++v12;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t SettingActionHandler.perform(on:completion:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v6 = sub_1D818EA94();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  sub_1D7FEA2BC(0, v13);
  v15 = v14;
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  v35 = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtC5TeaUI20SettingActionHandler_actions;
  swift_beginAccess();
  v23.n128_f64[0] = (*(v17 + 16))(v21, v4 + v22, v15);
  sub_1D7FE9ED0(v21, v23);
  (*(v17 + 8))(v21, v15);
  (*(v8 + 104))(v12, *MEMORY[0x1E69D6D48], v6);
  v34 = v12;
  v24 = sub_1D7F8F218(sub_1D7FEAAAC, v33, v35);
  v25 = (*(v8 + 8))(v12, v6);
  if (v24)
  {
    sub_1D7E0A1A8(0, &qword_1ECA0ED08, 0x1E69DC650);
    v26 = sub_1D7FC5088(0xD000000000000013, 0x80000001D81CDD60, 0xD00000000000004ELL, 0x80000001D81CDD80, 1);
    sub_1D7E0A1A8(0, &qword_1ECA0ED10, 0x1E69DC648);
    v27 = sub_1D7FC52F8(0x707041206C6C694BLL, 0xE800000000000000, 2, sub_1D7FEA948, 0);
    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = a3;

    v29 = sub_1D7FC52F8(0x726574614CLL, 0xE500000000000000, 2, sub_1D7E74D44, v28);
    [v26 addAction_];
    [v26 addAction_];
    [a1 presentViewController:v26 animated:1 completion:0];
  }

  else
  {
    a2(v25);
  }

  swift_beginAccess();
  sub_1D818F374();
  swift_endAccess();
}

uint64_t SettingActionHandler.deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI20SettingActionHandler_actions;
  sub_1D7FEA2BC(0, a1);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(v1 + v2);
  return v1;
}

uint64_t SettingActionHandler.__deallocating_deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI20SettingActionHandler_actions;
  sub_1D7FEA2BC(0, a1);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(v1 + v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SettingActionHandler(uint64_t a1)
{
  result = qword_1ECA0F110;
  if (!qword_1ECA0F110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7FEAB5C(uint64_t a1, __n128 a2)
{
  sub_1D7FEA2BC(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D7FEAC18(uint64_t a1, __n128 a2)
{
  if (!qword_1ECA0F120)
  {
    sub_1D7FEA2BC(255, a2);
    sub_1D7FEACAC(&qword_1ECA0F128, sub_1D7FEA2BC, MEMORY[0x1E69D6628]);
    v2 = sub_1D8192344();
    if (!v3)
    {
      atomic_store(v2, &qword_1ECA0F120);
    }
  }
}

uint64_t sub_1D7FEACAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7FEACF4(uint64_t a1, __n128 a2)
{
  sub_1D7FEAC18(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AppURLContext.options2.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppURLContext(0) + 20);
  sub_1D818F654();
  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AppURLContext.route.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppURLContext(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AppURLContext.routeOptions.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppURLContext(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AppURLContext.init(options:options2:route:routeOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X8>)
{
  v7 = *a3;
  v8 = *a4;
  *a5 = a1;
  v9 = type metadata accessor for AppURLContext(0);
  v10 = v9[5];
  sub_1D818F654();
  OUTLINED_FUNCTION_8();
  result = (*(v11 + 32))(&a5[v10], a2);
  a5[v9[6]] = v7;
  a5[v9[7]] = v8;
  return result;
}

uint64_t AppURLContext.init(options:options2:route:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v6 = *a3;
  *a4 = a1;
  v7 = type metadata accessor for AppURLContext(0);
  v8 = v7[5];
  sub_1D818F654();
  OUTLINED_FUNCTION_8();
  result = (*(v9 + 32))(&a4[v8], a2);
  a4[v7[6]] = v6;
  a4[v7[7]] = 1;
  return result;
}

TeaUI::URLHandlerRoute_optional __swiftcall URLHandlerRoute.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D81924B4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t URLHandlerRoute.rawValue.getter()
{
  v1 = 0x6974634172657375;
  if (*v0 != 1)
  {
    v1 = 0x6E6F43656E656373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4C52556E65706FLL;
  }
}

uint64_t sub_1D7FEB05C@<X0>(uint64_t *a1@<X8>)
{
  result = URLHandlerRoute.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t URLHandlerRouteOptions.description.getter()
{
  v1 = *v0;
  sub_1D81921A4();

  OUTLINED_FUNCTION_2_70();
  v6 = v2;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1DA713260](v3, v4);

  MEMORY[0x1DA713260](125, 0xE100000000000000);
  return v6;
}

uint64_t URLHandlerManager<A>.handle(url:options:route:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = type metadata accessor for AppURLContext(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v9 = (v8 - v7);
  LOBYTE(a3) = *a3;
  sub_1D8190DB4();
  URLHandlerOpenOptions.init(options:)();
  *v9 = a2;
  *(v9 + *(v6 + 32)) = a3;
  *(v9 + *(v6 + 36)) = 1;
  sub_1D8190DB4();
  LOBYTE(a3) = sub_1D818F4A4();
  sub_1D7FEB20C(v9);
  return a3 & 1;
}

uint64_t sub_1D7FEB20C(uint64_t a1)
{
  v2 = type metadata accessor for AppURLContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t URLHandlerManager<A>.handle(url:options:route:routeOptions:)(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v7 = type metadata accessor for AppURLContext(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = (v10 - v9);
  v12 = *a3;
  v13 = *a4;
  sub_1D7E1A4D0(0);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_1D81A1B70;
  if (v12)
  {
    if (v12 == 1)
    {
      v16 = 0xEC00000079746976;
      v17 = 0x6974634172657375;
    }

    else
    {
      v16 = 0xEC0000007463656ELL;
      v17 = 0x6E6F43656E656373;
    }
  }

  else
  {
    v16 = 0xE700000000000000;
    v17 = 0x4C52556E65706FLL;
  }

  v18 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D7E13BF4();
  v15[8] = v19;
  v15[4] = v17;
  v15[5] = v16;
  v20 = sub_1D818E5B4();
  v15[12] = v18;
  v15[13] = v19;
  v15[9] = v20;
  v15[10] = v21;
  sub_1D81921A4();

  OUTLINED_FUNCTION_2_70();
  v32 = v23;
  v33 = v22;
  if (v13)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v13)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x1DA713260](v24, v25);

  MEMORY[0x1DA713260](125, 0xE100000000000000);
  v15[17] = v18;
  v15[18] = v19;
  v15[14] = v32;
  v15[15] = v33;
  sub_1D7E13588();
  v26 = sub_1D8191E44();
  v27 = sub_1D81919E4();
  sub_1D818FD44("Handling url route=%{public}@, url=%{public}@, options=%{public}@", 65, 2, &dword_1D7DFF000, v26, v27, v15);

  if (a2)
  {
    v28 = a2;
    v29 = sub_1D816C6E4();
    sub_1D816C888();
  }

  else
  {
    type metadata accessor for OpenURLOptionsKey();
    sub_1D7E09E08();
    v29 = OUTLINED_FUNCTION_3_63();
    OUTLINED_FUNCTION_3_63();
    URLHandlerOpenOptions.init(options:)();
  }

  *v11 = v29;
  *(v11 + *(v7 + 24)) = v12;
  *(v11 + *(v7 + 28)) = v13;
  v30 = sub_1D818F4A4();
  sub_1D7FEB20C(v11);
  return v30 & 1;
}

uint64_t URLHandlerManager<A>.handle(url:options:route:)(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = *a3;
  v4 = 1;
  return URLHandlerManager<A>.handle(url:options:route:routeOptions:)(a1, a2, &v5, &v4) & 1;
}

uint64_t URLHandlerManager<A>.handle(url:options:)(uint64_t a1)
{
  v1 = type metadata accessor for AppURLContext(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v5 = (v4 - v3);
  v6 = sub_1D816C6E4();
  sub_1D816C888();
  *v5 = v6;
  *(v5 + *(v2 + 32)) = 3;
  *(v5 + *(v2 + 36)) = 1;
  v7 = sub_1D818F4A4();
  sub_1D7FEB20C(v5);
  return v7 & 1;
}

unint64_t sub_1D7FEB61C()
{
  result = qword_1ECA0F138;
  if (!qword_1ECA0F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F138);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for URLHandlerRoute(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for URLHandlerRouteOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D7FEB858@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

id SceneProvider.traits.getter(uint64_t a1)
{
  result = SceneProvider.keyWindow.getter(a1);
  if (result)
  {
    v2 = result;
    v3 = [result rootViewController];

    if (v3)
    {
      v4 = sub_1D7E4B87C(0x1E69DCF78);
      if (v4)
      {
        v5 = v4;
        v6 = [v4 displayMode];

        if (v6 == 1)
        {
          return &unk_1F52E4498;
        }

        else
        {
          return 0;
        }
      }

      v7 = sub_1D7E4B87C(0x1E69DD000);
      if (v7)
      {
        v8 = v7;
        v9 = [v7 _uip_sidebar];
        v10 = [v9 _isVisible];

        if (v10)
        {
          return 0;
        }

        else
        {
          return &unk_1F52E44C0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t SceneProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t SceneProvider.__deallocating_deinit()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocClassInstance();
}

__n128 BlueprintLayoutCollectionSection.headerUnionFrame.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1D7FEBB68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_1D7FEBBA8(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

double sub_1D7FEBC20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id ImplicitAnimationGroup.__allocating_init(animators:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC5TeaUI22ImplicitAnimationGroup_animators] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ImplicitAnimationGroup.init(animators:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI22ImplicitAnimationGroup_animators] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ImplicitAnimationGroup.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImplicitAnimationGroup.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ImplicitAnimationGroup.state.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI22ImplicitAnimationGroup_animators);
  if (v1 >> 62)
  {
    result = OUTLINED_FUNCTION_3_64();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_1D7E33DD8(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA714420](0, v1);
  }

  else
  {
    v3 = *(v1 + 32);
    swift_unknownObjectRetain();
  }

  v4 = [v3 state];
  swift_unknownObjectRelease();
  return v4;
}

void ImplicitAnimationGroup.isRunning.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI22ImplicitAnimationGroup_animators);
  v2 = sub_1D7E36AB8(v1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA714420](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(v1 + 8 * v3 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v6 = [v5 isRunning];
    swift_unknownObjectRelease();
    v3 = v4 + 1;
  }

  while (!v6);
}

id ImplicitAnimationGroup.isReversed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI22ImplicitAnimationGroup_animators);
  if (v1 >> 62)
  {
    if (OUTLINED_FUNCTION_3_64())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:
  sub_1D7E33DD8(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1DA714420](0, v1);
  }

  else
  {
    v2 = *(v1 + 32);
    swift_unknownObjectRetain();
  }

  v3 = [v2 isReversed];
  swift_unknownObjectRelease();
  return v3;
}

void (*ImplicitAnimationGroup.isReversed.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ImplicitAnimationGroup.isReversed.getter() & 1;
  return sub_1D7FEC134;
}

uint64_t ImplicitAnimationGroup.fractionComplete.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI22ImplicitAnimationGroup_animators);
  if (v1 >> 62)
  {
    result = OUTLINED_FUNCTION_3_64();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_1D7E33DD8(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA714420](0, v1);
  }

  else
  {
    v3 = *(v1 + 32);
    swift_unknownObjectRetain();
  }

  [v3 fractionComplete];
  return swift_unknownObjectRelease();
}

void (*ImplicitAnimationGroup.fractionComplete.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  ImplicitAnimationGroup.fractionComplete.getter();
  *a1 = v3;
  return sub_1D7FEC2F0;
}

void sub_1D7FEC378(SEL *a1, double a2)
{
  OUTLINED_FUNCTION_4_43(OBJC_IVAR____TtC5TeaUI22ImplicitAnimationGroup_animators);
  OUTLINED_FUNCTION_0_104();
  while (v2 != v3)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_8_29();
      v4 = v9;
    }

    else
    {
      OUTLINED_FUNCTION_6_42();
      if (v8)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_2_71();
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    [v4 *a1];
    swift_unknownObjectRelease();
    ++v3;
  }
}

void sub_1D7FEC484(SEL *a1)
{
  OUTLINED_FUNCTION_4_43(OBJC_IVAR____TtC5TeaUI22ImplicitAnimationGroup_animators);
  OUTLINED_FUNCTION_0_104();
  while (v1 != v2)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_8_29();
      v3 = v7;
    }

    else
    {
      OUTLINED_FUNCTION_6_42();
      if (v6)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_2_71();
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    [v3 *a1];
    swift_unknownObjectRelease();
    ++v2;
  }
}

void sub_1D7FEC570(char a1, SEL *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC5TeaUI22ImplicitAnimationGroup_animators);
  v6 = sub_1D7E36AB8(v5);
  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA714420](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v8 = *(v5 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    [v8 *a2];
    swift_unknownObjectRelease();
  }
}

void ImplicitAnimationGroup.finishAnimation(at:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_43(OBJC_IVAR____TtC5TeaUI22ImplicitAnimationGroup_animators);
  OUTLINED_FUNCTION_0_104();
  while (v1 != v2)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_8_29();
      v3 = v7;
    }

    else
    {
      OUTLINED_FUNCTION_6_42();
      if (v6)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_2_71();
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    [v3 finishAnimationAtPosition_];
    swift_unknownObjectRelease();
    ++v2;
  }
}

void ImplicitAnimationGroup.addCompletion(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, __n128 a7)
{
  v32 = a1;
  v33 = a2;
  sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v38 = v9;
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_2();
  v36 = v10;
  v37 = sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v35 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_2();
  v34 = v13;
  v14 = dispatch_group_create();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = OUTLINED_FUNCTION_4_43(OBJC_IVAR____TtC5TeaUI22ImplicitAnimationGroup_animators);
  if (!v16)
  {
LABEL_11:
    sub_1D7E11E0C();
    v23 = sub_1D8191AB4();
    v24 = swift_allocObject();
    v24[2] = v32;
    v24[3] = v33;
    v24[4] = v15;
    OUTLINED_FUNCTION_1_81(v24);
    v41 = 1107296256;
    v42 = sub_1D7E64940;
    v43 = &block_descriptor_35;
    v25 = _Block_copy(aBlock);

    sub_1D8190BF4();
    sub_1D7E28784(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1D7E2885C(0, v26, v27, v28, v29, v30, v31);
    sub_1D7E28784(&qword_1EDBB3340, sub_1D7E2885C, MEMORY[0x1E69E6328]);
    sub_1D8192004();
    sub_1D8191A54();
    _Block_release(v25);

    (*(v38 + 8))(v36, v39);
    (*(v35 + 8))(v34, v37);

    return;
  }

  v17 = v16;
  if (v16 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1DA714420](i, v7);
      }

      else
      {
        v19 = *(v7 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v19 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        dispatch_group_enter(v14);
        v20 = swift_allocObject();
        *(v20 + 16) = v15;
        *(v20 + 24) = v14;
        OUTLINED_FUNCTION_1_81(v20);
        v41 = 1107296256;
        v42 = sub_1D7FEBC20;
        v43 = &block_descriptor_9_0;
        v21 = _Block_copy(aBlock);

        v22 = v14;
        [v19 addCompletion_];
        swift_unknownObjectRelease_n();
        _Block_release(v21);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_11;
  }

  __break(1u);
}

void sub_1D7FECBAC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  if (v6 != 1)
  {
    if (a1)
    {
      if (a1 != 2)
      {
        if (a1 == 1)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }

      if (v6)
      {
LABEL_8:
        a1 = 0;
        goto LABEL_11;
      }
    }

    else if (v6 != 2)
    {
      goto LABEL_8;
    }

    a1 = 2;
    goto LABEL_11;
  }

  a1 = 1;
LABEL_11:
  swift_beginAccess();
  *(a2 + 16) = a1;
  dispatch_group_leave(a3);
}

void ImplicitAnimationGroup.continueAnimation(withTimingParameters:durationFactor:)(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_4_43(OBJC_IVAR____TtC5TeaUI22ImplicitAnimationGroup_animators);
  OUTLINED_FUNCTION_0_104();
  while (v2 != v3)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_8_29();
      v4 = v9;
    }

    else
    {
      OUTLINED_FUNCTION_6_42();
      if (v8)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_2_71();
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    if ([v4 respondsToSelector_])
    {
      [v4 continueAnimationWithTimingParameters:a1 durationFactor:a2];
    }

    swift_unknownObjectRelease();
    ++v3;
  }
}

id TouchInsetsButton.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

void sub_1D7FECF68(uint64_t a1@<X8>)
{
  *a1 = sub_1D7FECFC4();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

double sub_1D7FECFC4()
{
  OUTLINED_FUNCTION_1_34(OBJC_IVAR____TtC5TeaUI17TouchInsetsButton_touchInsets);
  swift_beginAccess();
  return *v0;
}

void sub_1D7FED008()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_1_34(OBJC_IVAR____TtC5TeaUI17TouchInsetsButton_touchInsets);
  swift_beginAccess();
  *v0 = v4;
  v0[1] = v3;
  v0[2] = v2;
  v0[3] = v1;
}

BOOL sub_1D7FED0C0(CGFloat a1, CGFloat a2)
{
  [v3 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_1_34(OBJC_IVAR____TtC5TeaUI17TouchInsetsButton_touchInsets);
  swift_beginAccess();
  v16.origin.x = UIEdgeInsetsInsetRect(v7, v9, v11, v13, *v2, v2[1]);
  v15.x = a1;
  v15.y = a2;
  return CGRectContainsPoint(v16, v15);
}

void sub_1D7FED1C8(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TouchInsetsButton();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v2 = [v1 titleLabel];
  if (v2)
  {
    v3 = v2;
    [v3 frame];
    v6 = CGRectIntegral(v5);
    [v3 setFrame_];
  }
}

id TouchInsetsButton.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI17TouchInsetsButton_touchInsets);
  __asm { FMOV            V0.2D, #-20.0 }

  *v1 = _Q0;
  v1[1] = _Q0;
  v11 = type metadata accessor for TouchInsetsButton();
  v7 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v8, v9, v7, v0, v11);
}

id TouchInsetsButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TouchInsetsButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5TeaUI17TouchInsetsButton_touchInsets];
  __asm { FMOV            V0.2D, #-20.0 }

  *v3 = _Q0;
  *(v3 + 1) = _Q0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for TouchInsetsButton();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id TouchInsetsButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TouchInsetsButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D7FED510(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1D7E91F50(v1);
}

uint64_t sub_1D7FED540()
{

  sub_1D818FA44();

  return v1;
}

uint64_t (*sub_1D7FED584(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 16);

  v3[5] = sub_1D818FA34();
  return sub_1D7FED5F4;
}

void sub_1D7FED5F4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t UserActivityManager.__allocating_init(serializer:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_161();
  UserActivityManager.init(serializer:)(v1);
  return v0;
}

void sub_1D7FED684(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v12 = a1;
    if (qword_1EDBBC3C0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D818FE34();
    __swift_project_value_buffer(v13, qword_1EDBC6108);
    (*(v8 + 16))(v10, a2, a3);
    v14 = a1;
    v15 = sub_1D818FE14();
    v16 = sub_1D81919C4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v17 = 136446466;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v20 = (*(AssociatedConformanceWitness + 32))(a3, AssociatedConformanceWitness);
      v22 = v21;
      (*(v8 + 8))(v10, a3);
      v23 = sub_1D7E1C3D8(v20, v22, &v28);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2114;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v25;
      *v18 = v25;
      _os_log_impl(&dword_1D7DFF000, v15, v16, "User activity failed to donate interaction for %{public}s, error=%{public}@", v17, 0x16u);
      sub_1D7E39F80(v18);
      MEMORY[0x1DA715D00](v18, -1, -1);
      v26 = v27;
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1DA715D00](v26, -1, -1);
      MEMORY[0x1DA715D00](v17, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, a3);
    }
  }
}

void sub_1D7FED96C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1D7FED9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = *(a6 - 8);
  v8[8] = swift_task_alloc();
  v9 = sub_1D818E2F4();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FEDAF0, 0, 0);
}

uint64_t sub_1D7FEDAF0()
{
  v1 = v0[2];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1D7FEDBB0;
  v5 = v0[11];

  return MEMORY[0x1EEDB2DA0](v5, v3, v2);
}

uint64_t sub_1D7FEDBB0()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v3 = v2;
  v2[13] = v0;

  if (v0)
  {
    v4 = sub_1D7FEDD38;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v4 = sub_1D7FEDCD0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7FEDCD0()
{
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7FEDD38()
{
  v29 = v0;
  if (qword_1EDBBC3C0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[3];
  v4 = v0[4];
  v6 = sub_1D818FE34();
  __swift_project_value_buffer(v6, qword_1EDBC6108);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_1D818FE14();
  v9 = sub_1D81919C4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[13];
  v13 = v0[7];
  v12 = v0[8];
  if (v10)
  {
    v14 = v0[4];
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v15 = 136446466;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 32))(v14, AssociatedConformanceWitness);
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_1D7E1C3D8(v17, v19, &v28);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2114;
    v21 = v11;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v26 = v22;
    _os_log_impl(&dword_1D7DFF000, v8, v9, "User activity failed to donate app intent for %{public}s, error=%{public}@", v15, 0x16u);
    sub_1D7E39F80(v26);
    MEMORY[0x1DA715D00](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1DA715D00](v27, -1, -1);
    MEMORY[0x1DA715D00](v15, -1, -1);
  }

  else
  {
    v23 = v0[4];

    (*(v13 + 8))(v12, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1D7FEE01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, __n128 a7)
{
  v65 = a4;
  v66 = a5;
  v68 = a2;
  v8 = sub_1D8190BD4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8190C34();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v63 = v18;
  v64 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v56 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v67 = result;
  if (result)
  {
    v57 = v15;
    v59 = v11;
    v62 = v8;
    if (qword_1EDBBC3C0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D818FE34();
    __swift_project_value_buffer(v23, qword_1EDBC6108);
    v24 = *(v16 + 16);
    v56[1] = v16 + 16;
    v56[0] = v24;
    v24(v21, v68, a3);
    v25 = sub_1D818FE14();
    v26 = sub_1D81919E4();
    v27 = os_log_type_enabled(v25, v26);
    v60 = v12;
    v61 = v9;
    v58 = v13;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136446210;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v31 = (*(AssociatedConformanceWitness + 32))(a3, AssociatedConformanceWitness);
      v33 = v32;
      (*(v16 + 8))(v21, a3);
      v34 = sub_1D7E1C3D8(v31, v33, aBlock);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_1D7DFF000, v25, v26, "User activity will resign current, identifier=%{public}s)", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1DA715D00](v29, -1, -1);
      MEMORY[0x1DA715D00](v28, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v21, a3);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    }

    v35 = (*(AssociatedConformanceWitness + 32))(a3, AssociatedConformanceWitness);
    v37 = v36;
    swift_beginAccess();
    v39 = sub_1D7F04064(v35, v37, v38);
    swift_endAccess();

    v40 = sub_1D7FED540();
    v41 = v40;
    if (v39)
    {
      if (!v40)
      {
        goto LABEL_14;
      }

      sub_1D7E0A1A8(0, qword_1EDBBC7E0, 0x1E69636A8);
      v42 = v39;
      v43 = sub_1D8191CC4();

      if ((v43 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v40)
    {

LABEL_14:
      sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
      v44 = sub_1D8191AB4();
      v45 = v64;
      (v56[0])(v64, v68, a3);
      v46 = (*(v16 + 80) + 48) & ~*(v16 + 80);
      v47 = swift_allocObject();
      v49 = v65;
      v48 = v66;
      *(v47 + 2) = a3;
      *(v47 + 3) = v49;
      *(v47 + 4) = v48;
      *(v47 + 5) = v39;
      (*(v16 + 32))(&v47[v46], v45, a3);
      aBlock[4] = sub_1D7FEF50C;
      aBlock[5] = v47;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7E64940;
      aBlock[3] = &block_descriptor_27;
      v50 = _Block_copy(aBlock);
      v51 = v39;

      v52 = v57;
      sub_1D8190BF4();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D7E10290(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v53 = MEMORY[0x1E69E7F60];
      sub_1D7E10320(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D7E1043C(&qword_1EDBB3340, &qword_1EDBB3348, v53);
      v54 = v59;
      v55 = v62;
      sub_1D8192004();
      MEMORY[0x1DA713CE0](0, v52, v54, v50);
      _Block_release(v50);

      (*(v61 + 8))(v54, v55);
      return (*(v58 + 8))(v52, v60);
    }

    sub_1D7E91F50(0);
    goto LABEL_14;
  }

  return result;
}

void sub_1D7FEE740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v11 resignCurrent];
  if (qword_1EDBBC3C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1D818FE34();
  __swift_project_value_buffer(v12, qword_1EDBC6108);
  (*(v7 + 16))(v10, a2, a3);
  v13 = sub_1D818FE14();
  v14 = sub_1D81919E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = (*(AssociatedConformanceWitness + 32))(a3, AssociatedConformanceWitness);
    v20 = v19;
    (*(v7 + 8))(v10, a3);
    v21 = sub_1D7E1C3D8(v18, v20, &v23);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1D7DFF000, v13, v14, "User activity did resign current, identifier=%{public}s)", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1DA715D00](v16, -1, -1);
    MEMORY[0x1DA715D00](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, a3);
  }
}

double sub_1D7FEE9B8()
{
  sub_1D7E10320(0, &qword_1EDBB32B8, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1D8191564();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1D7F7F414(0, 0, v2, &unk_1D81ACFA8, v4);

  return result;
}

uint64_t sub_1D7FEEAC4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_1D7FEEBD8;
  v2 = swift_continuation_init();
  sub_1D7FEF47C();
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D7FEEE54;
  v0[13] = &block_descriptor_21_0;
  v0[14] = v2;
  [v1 deleteAllSavedUserActivitiesWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D7FEEBD8()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_3_4();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D7FEECAC, 0, 0);
}

uint64_t sub_1D7FEECC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D7FEED6C;

  return sub_1D7FEEAA8();
}

uint64_t sub_1D7FEED6C()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_3_4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D7FEEE54(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume(v1);
}

uint64_t sub_1D7FEEE8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_30();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  OUTLINED_FUNCTION_8_30();
  v25[1] = *(v2 + *(v13 + 128));
  (*(v7 + 16))(v12);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  OUTLINED_FUNCTION_8_30();
  v18 = *(v17 + 88);
  *(v19 + 24) = v18;
  OUTLINED_FUNCTION_8_30();
  v21 = *(v20 + 96);
  *(v22 + 32) = v21;
  (*(v7 + 32))(v22 + v14, v12, v5);
  *(v16 + v15) = a2;
  sub_1D7E0A1A8(0, qword_1EDBBC7E0, 0x1E69636A8);
  type metadata accessor for UserActivityManager(0, v5, v18, v21);
  sub_1D8190DB4();
  v23 = sub_1D818FC04();

  return v23;
}

void *sub_1D7FEF078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D7E8FD58(a2, a3);
  if (!v3)
  {
    sub_1D7E10114(0, &qword_1ECA0F1D0, qword_1EDBBC7E0, 0x1E69636A8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D818FB44();
  }

  return result;
}

uint64_t *UserActivityManager.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));

  return v0;
}

uint64_t UserActivityManager.__deallocating_deinit()
{
  UserActivityManager.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1D7FEF250(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D7FED584(v2);
  return sub_1D7F4150C;
}

uint64_t sub_1D7FEF390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI19UserActivityManagerC20DeserializationErrorOyxq__G(uint64_t a1)
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

void sub_1D7FEF47C()
{
  if (!qword_1ECA0F1D8)
  {
    v0 = sub_1D8191584();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0F1D8);
    }
  }
}

uint64_t objectdestroy_23Tm_0()
{
  OUTLINED_FUNCTION_2();

  v1 = OUTLINED_FUNCTION_2_11();
  v2(v1);
  OUTLINED_FUNCTION_4_44();

  return swift_deallocObject();
}

uint64_t sub_1D7FEF5C8(uint64_t a1)
{
  sub_1D7E10320(0, &qword_1EDBBC718, sub_1D7FEF654, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7FEF654()
{
  result = qword_1EDBBC720;
  if (!qword_1EDBBC720)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBC720);
  }

  return result;
}

uint64_t sub_1D7FEF6B0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = (*(*(v4 - 8) + 80) + 96) & ~*(*(v4 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D7FEF800;

  return sub_1D7FED9D8(a1, v8, v9, (v1 + 7), v1 + v7, v4, v5, v6);
}

uint64_t PillViewImageRequestFactory.createImageRequest(assetHandles:screenScale:size:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, uint64_t a4@<D1>, uint64_t a5@<D2>)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    if (a3 < 1.0 || a3 > 2.0)
    {
      a1 += 80;
    }

    else
    {
      a1 += 40;
    }
  }

  sub_1D7E0E768(a1, v13);
  sub_1D7E05450(v13, v14);
  sub_1D7E0E768(v14, v13);
  v10 = type metadata accessor for ProcessedImageRequest();
  swift_allocObject();
  v11 = ProcessedImageRequest.init(assetHandle:size:imageRenderingMode:userInterfaceStyle:)(v13, a4, a5, 0, 2, 0);
  a2[3] = v10;
  a2[4] = &protocol witness table for ProcessedImageRequest;
  *a2 = v11;
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

double PillViewImageRequestFactory.createImageRequest(iconURL:size:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t Debounce.deinit()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    [v1 invalidate];
  }

  return v0;
}

uint64_t Debounce.__deallocating_deinit()
{
  Debounce.deinit();
  OUTLINED_FUNCTION_7_2();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7FEFA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = sub_1D8191E84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 24);

    v12(v13);

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v14, 1, a5);
  v15 = (*(v8 + 8))(v10, v7);
  return a3(v15);
}

double BlueprintCompositionalLayoutOptions.sectionHeaderLayoutOptions.getter@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_105(*(v1 + 16), a1, v2, v3);
}

double BlueprintCompositionalLayoutOptions.supplementaryHeaderLayoutOptions.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_105(*(v1 + 40), a1, v2, v3);
}

double BlueprintCompositionalLayoutOptions.supplementaryFooterLayoutOptions.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_105(*(v1 + 64), a1, v2, v3);
}

__n128 BlueprintCompositionalLayoutOptions.init(sectionContentInsets:interGroupSpacing:supplementaryHeaderLayoutOptions:supplementaryFooterLayoutOptions:interSectionSpacing:supplementariesFollowContentInsets:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>)
{
  v11 = *(a1 + 16);
  v12 = a2[1].n128_u8[0];
  *(a6 + 72) = a7;
  *(a6 + 80) = a8;
  *(a6 + 88) = a9;
  *(a6 + 96) = a10;
  *(a6 + 104) = a11;
  *(a6 + 112) = a3;
  *(a6 + 120) = a4 & 1;
  *(a6 + 121) = a5;
  *(a6 + 24) = *a1;
  *(a6 + 40) = v11;
  result = *a2;
  *(a6 + 48) = *a2;
  *(a6 + 64) = v12;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 2;
  return result;
}

void BlueprintCompositionalLayoutOptions.init(sectionContentInsets:interGroupSpacing:interSectionSpacing:supplementariesFollowContentInsets:sectionHeaderLayoutOptions:)(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 16);
  *(a5 + 72) = a6;
  *(a5 + 80) = a7;
  *(a5 + 88) = a8;
  *(a5 + 96) = a9;
  *(a5 + 104) = a10;
  *(a5 + 112) = a1;
  *(a5 + 120) = a2 & 1;
  *(a5 + 121) = a3;
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    if (v14 == 1)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v12 = sub_1D8190DB4();
    v16 = 0;
    v15 = v12;
  }

  *(a5 + 24) = v15;
  *(a5 + 32) = v16;
  *(a5 + 40) = v14;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = 2;
  *a5 = v12;
  *(a5 + 8) = v13;
  *(a5 + 16) = v14;
}

uint64_t static BlueprintCompositionalLayoutOptions.zero.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (qword_1EDBB4DB0 != -1)
  {
    a1 = swift_once();
  }

  OUTLINED_FUNCTION_4_45(a1, a2, a3, a4, a5, a6, a7, a8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v9[11], v9[12], v9[13], v9[14], v9[15]);
  OUTLINED_FUNCTION_3_65();
  return sub_1D7E22264(v10, v9);
}

void sub_1D7FEFD5C()
{
  unk_1EDBAF398 = xmmword_1D81AD1C0;
  unk_1EDBAF3A8 = xmmword_1D81AD1C0;
  qword_1EDBAF3B8 = 0;
  unk_1EDBAF3C0 = 0;
  OUTLINED_FUNCTION_1_82(&unk_1EDBAF350);
}

uint64_t static BlueprintCompositionalLayoutOptions.regular.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (qword_1EDBAF348 != -1)
  {
    a1 = swift_once();
  }

  OUTLINED_FUNCTION_4_45(a1, a2, a3, a4, a5, a6, a7, a8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v9[11], v9[12], v9[13], v9[14], v9[15]);
  OUTLINED_FUNCTION_3_65();
  return sub_1D7E22264(v10, v9);
}

uint64_t sub_1D7FEFE04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 122))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 121);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7FEFE50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 122) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 122) = 0;
    }

    if (a2)
    {
      *(result + 121) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s5TeaUI25BlueprintActiveImpressionV9blueprintAA0C0Vyxq_Gvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for Blueprint(v3, v4);
  OUTLINED_FUNCTION_0_13();
  return (*(v5 + 16))(a1, v1);
}

uint64_t BlueprintActiveImpressionSection.section.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintSection(v5, v6);
  OUTLINED_FUNCTION_0_13();
  return (*(v7 + 16))(a2, v2 + v4);
}

uint64_t _s5TeaUI25BlueprintActiveImpressionV9startDate10Foundation0G0Vvg_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1D818E754();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _s5TeaUI25BlueprintActiveImpressionV17sessionIdentifierSSvg_0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));
  sub_1D8190DB4();
  return v2;
}

BOOL sub_1D7FF00EC()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v1 = Strong;
  v2 = [Strong viewIfLoaded];
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_28:

    return 0;
  }

  v3 = v2;
  swift_getObjectType();
  sub_1D8191C24();
  if ((v54 & 1) == 0)
  {
    v56.origin.x = 0.0;
    v56.origin.y = 0.0;
    v56.size.width = 0.0;
    v56.size.height = 0.0;
    if (CGRectEqualToRect(v53, v56))
    {
      if (qword_1EDBBC398 != -1)
      {
        OUTLINED_FUNCTION_0_106(&qword_1EDBBC398);
      }

      v4 = sub_1D818FE34();
      __swift_project_value_buffer(v4, qword_1EDBBC3A0);
      OUTLINED_FUNCTION_14_6();

      v5 = sub_1D818FE14();
      v6 = sub_1D81919C4();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = OUTLINED_FUNCTION_55_1();
        v8 = OUTLINED_FUNCTION_61();
        v52 = v8;
        *v7 = 136315138;
        v9 = TipPlacement.description.getter();
        v11 = sub_1D7E1C3D8(v9, v10, &v52);

        *(v7 + 4) = v11;
        OUTLINED_FUNCTION_16_21(&dword_1D7DFF000, v12, v13, "Bounds check invalidating placement=%s, reason='frame is zero'");
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      swift_unknownObjectRelease();

      goto LABEL_27;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      swift_unknownObjectRetain();
      v16 = [v15 tabBarController];
      if (!v16)
      {
        if (qword_1EDBBC398 != -1)
        {
          OUTLINED_FUNCTION_0_106(&qword_1EDBBC398);
        }

        v28 = sub_1D818FE34();
        __swift_project_value_buffer(v28, qword_1EDBBC3A0);
        OUTLINED_FUNCTION_14_6();

        v18 = sub_1D818FE14();
        v29 = sub_1D81919C4();

        if (!os_log_type_enabled(v18, v29))
        {
          goto LABEL_26;
        }

        v30 = OUTLINED_FUNCTION_55_1();
        v21 = OUTLINED_FUNCTION_61();
        v52 = v21;
        *v30 = 136315138;
        v31 = TipPlacement.description.getter();
        v33 = sub_1D7E1C3D8(v31, v32, &v52);

        *(v30 + 4) = v33;
        v27 = "Bounds check invalidating placement=%s, reason='tab is removed from view hierarchy'";
        goto LABEL_25;
      }

      if ([v15 isHidden])
      {
        if (qword_1EDBBC398 != -1)
        {
          OUTLINED_FUNCTION_0_106(&qword_1EDBBC398);
        }

        v17 = sub_1D818FE34();
        __swift_project_value_buffer(v17, qword_1EDBBC3A0);
        OUTLINED_FUNCTION_14_6();

        v18 = sub_1D818FE14();
        v19 = sub_1D81919C4();

        if (!os_log_type_enabled(v18, v19))
        {
          goto LABEL_26;
        }

        v20 = OUTLINED_FUNCTION_55_1();
        v21 = OUTLINED_FUNCTION_61();
        v52 = v21;
        *v20 = 136315138;
        v22 = TipPlacement.description.getter();
        v24 = sub_1D7E1C3D8(v22, v23, &v52);

        *(v20 + 4) = v24;
        v27 = "Bounds check invalidating placement=%s, reason='tab is hidden'";
LABEL_25:
        OUTLINED_FUNCTION_16_21(&dword_1D7DFF000, v25, v26, v27);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
LABEL_26:

        swift_unknownObjectRelease_n();
LABEL_27:

        goto LABEL_28;
      }

      swift_unknownObjectRelease();
    }

    [v3 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    [v3 safeAreaInsets];
    v45 = static BlueprintLayoutOptions.constrainedSafeAreaInsets(bounds:safeAreaInsets:)(v37, v39, v41, v43, v44);
    v47 = v46;
    [v3 bounds];
    v55.origin.x = UIEdgeInsetsInsetRect(v48, v49, v50, v51, 0.0, v47);
    v34 = CGRectContainsRect(v55, v53);
    swift_unknownObjectRelease();

    return v34;
  }

  swift_unknownObjectRelease();

  return 0;
}

uint64_t TipPlacement.sourceIdentifier.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

BOOL sub_1D7FF05DC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = swift_unknownObjectWeakLoadStrong();
  v3 = v2 != 0;
  if (v2)
  {
    swift_unknownObjectRelease();
    v4 = [v1 viewIfLoaded];
    v5 = [v4 window];

    v1 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t TipPlacement.__allocating_init(sourceIdentifier:source:sourceItem:sourceViewController:)()
{
  OUTLINED_FUNCTION_1_83();
  swift_allocObject();
  OUTLINED_FUNCTION_7_34();
  TipPlacement.init(sourceIdentifier:source:sourceItem:sourceViewController:)();
  return v0;
}

void TipPlacement.__allocating_init(sourceIdentifier:source:sourceItem:sourceViewController:traits:)()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_1_83();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_3_8();
  TipPlacement.init(sourceIdentifier:source:sourceItem:sourceViewController:traits:)(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_139();
}

void TipPlacement.__allocating_init(sourceIdentifier:source:sourceItem:sourceViewController:traits:permittedArrowDirections:)()
{
  OUTLINED_FUNCTION_144();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_1_83();
  swift_allocObject();
  TipPlacement.init(sourceIdentifier:source:sourceItem:sourceViewController:traits:permittedArrowDirections:)(v13, v11, v9, v7, v5, v3, v1);
  OUTLINED_FUNCTION_139();
}

uint64_t TipPlacement.__allocating_init(sourceIdentifier:source:sourceItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_83();
  swift_allocObject();
  OUTLINED_FUNCTION_14_6();
  TipPlacement.init(sourceIdentifier:source:sourceItem:)();
  return v4;
}

void TipPlacement.init(sourceIdentifier:source:sourceItem:)()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_3_67();
  swift_unknownObjectWeakInit();
  *(v0 + 64) = 1;
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_3_67();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  OUTLINED_FUNCTION_139();
}

uint64_t TipPlacement.__allocating_init(sourceIdentifier:source:sourceItem:traits:)()
{
  OUTLINED_FUNCTION_1_83();
  swift_allocObject();
  OUTLINED_FUNCTION_7_34();
  TipPlacement.init(sourceIdentifier:source:sourceItem:traits:)();
  return v0;
}

void TipPlacement.init(sourceIdentifier:source:sourceItem:traits:)()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_13_24();
  v2 = *v1;
  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_3_67();
  swift_unknownObjectWeakInit();
  *(v0 + 64) = 1;
  OUTLINED_FUNCTION_15_19();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_67();
  swift_unknownObjectWeakAssign();
  *(v0 + 72) = v2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  OUTLINED_FUNCTION_139();
}

void TipPlacement.__allocating_init(sourceIdentifier:source:sourceItem:traits:permittedArrowDirections:)()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_1_83();
  swift_allocObject();
  OUTLINED_FUNCTION_3_8();
  TipPlacement.init(sourceIdentifier:source:sourceItem:traits:permittedArrowDirections:)();
  OUTLINED_FUNCTION_139();
}

void TipPlacement.init(sourceIdentifier:source:sourceItem:traits:permittedArrowDirections:)()
{
  OUTLINED_FUNCTION_144();
  v2 = v1;
  OUTLINED_FUNCTION_4_46();
  v4 = *v3;
  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_3_67();
  swift_unknownObjectWeakInit();
  *(v0 + 64) = 1;
  OUTLINED_FUNCTION_6_45();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_67();
  swift_unknownObjectWeakAssign();
  *(v0 + 72) = v4;
  *(v0 + 80) = v2;
  *(v0 + 88) = 0;
  OUTLINED_FUNCTION_139();
}

uint64_t sub_1D7FF09E0(char a1)
{
  if (a1 & 1) != 0 && (*(v1 + 72))
  {
    if (qword_1EDBBC398 != -1)
    {
      OUTLINED_FUNCTION_0_106(&qword_1EDBBC398);
    }

    v3 = sub_1D818FE34();
    __swift_project_value_buffer(v3, qword_1EDBBC3A0);

    v4 = sub_1D818FE14();
    v5 = sub_1D81919C4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_55_1();
      v7 = OUTLINED_FUNCTION_61();
      v11 = v7;
      *v6 = 136446210;
      OUTLINED_FUNCTION_2_74();
      OUTLINED_FUNCTION_12_25();
      v8 = sub_1D7E1C3D8(v9, v10, &v11);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_1D7DFF000, v4, v5, "Invalid placement for tip source=%{public}s: keyboard is present", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }

  else if (sub_1D7FF05DC())
  {
    return *(v1 + 64);
  }

  return 0;
}

uint64_t sub_1D7FF0B30(char a1, char a2)
{
  if ((a2 & 0xFE) != 2)
  {
    if ((*(v2 + 72) & 8) == 0)
    {
      if (qword_1EDBBC398 != -1)
      {
        OUTLINED_FUNCTION_0_106(&qword_1EDBBC398);
      }

      v4 = sub_1D818FE34();
      __swift_project_value_buffer(v4, qword_1EDBBC3A0);

      v5 = sub_1D818FE14();
      v6 = sub_1D81919C4();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = OUTLINED_FUNCTION_55_1();
        v8 = OUTLINED_FUNCTION_61();
        v19 = v8;
        *v7 = 136446210;
        OUTLINED_FUNCTION_2_74();
        OUTLINED_FUNCTION_12_25();
        v9 = sub_1D7E1C3D8(v17, v18, &v19);

        *(v7 + 4) = v9;
        _os_log_impl(&dword_1D7DFF000, v5, v6, "Invalid placement for tip source=%{public}s: presentation operation processing is not complete", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      return 0;
    }

    if (qword_1EDBBC398 != -1)
    {
      OUTLINED_FUNCTION_0_106(&qword_1EDBBC398);
    }

    v11 = sub_1D818FE34();
    __swift_project_value_buffer(v11, qword_1EDBBC3A0);

    v12 = sub_1D818FE14();
    v13 = sub_1D81919E4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_55_1();
      v15 = OUTLINED_FUNCTION_61();
      v19 = v15;
      *v14 = 136446210;
      OUTLINED_FUNCTION_2_74();
      OUTLINED_FUNCTION_12_25();
      v16 = sub_1D7E1C3D8(v17, v18, &v19);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1D7DFF000, v12, v13, "Tip being placed for source %{public}s is flagged to allow display during active presentation processing.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }

  return sub_1D7FF09E0(a1 & 1);
}

uint64_t TipPlacement.deinit()
{

  sub_1D7E166A0(v0 + 32);
  MEMORY[0x1DA715E30](v0 + 40);

  return v0;
}

uint64_t TipPlacement.__deallocating_deinit()
{
  TipPlacement.deinit();
  OUTLINED_FUNCTION_1_83();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7FF0EB4(uint64_t a1, uint64_t a2)
{
  result = TUDeviceIsSlow(a1, a2);
  byte_1EDBB2F00 = result;
  return result;
}

uint64_t static UIDevice.isSlow.getter()
{
  if (qword_1EDBB2EF8 != -1)
  {
    OUTLINED_FUNCTION_0_107(&qword_1EDBB2EF8);
  }

  swift_beginAccess();
  return byte_1EDBB2F00;
}

void static UIDevice.isSlow.setter(char a1)
{
  if (qword_1EDBB2EF8 != -1)
  {
    OUTLINED_FUNCTION_0_107(&qword_1EDBB2EF8);
  }

  swift_beginAccess();
  byte_1EDBB2F00 = a1 & 1;
}

uint64_t (*static UIDevice.isSlow.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDBB2EF8 != -1)
  {
    OUTLINED_FUNCTION_0_107(&qword_1EDBB2EF8);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id SectionFooterViewRenderer.render(for:with:in:)(uint64_t *a1, double *a2, uint64_t a3)
{
  v24 = a1[1];
  v25 = *a1;
  v5 = a1[3];
  v23 = a1[2];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 7);
  v9 = a1[8];
  v28 = a1[9];
  v29 = *(a1 + 6);
  v26 = a1[11];
  v27 = a1[10];
  v31 = a1[13];
  v32 = a1[12];
  v33 = a1[14];
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[6];
  v13 = a2[7];
  v14 = a2[8];
  v15 = a2[9];
  v16 = a2[10];
  v17 = a2[11];
  v30 = *(a2 + 12);
  v18 = *(a3 + OBJC_IVAR____TtC5TeaUI17SectionFooterView_button);
  sub_1D7FF1208(*a1, v24, v23);
  sub_1D8190DB4();
  v19 = v9;
  [v18 setFrame_];
  v20 = *(a3 + OBJC_IVAR____TtC5TeaUI17SectionFooterView_separator);
  [v20 setFrame_];
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v40[0] = v29;
  v40[1] = v8;
  v41 = v19;
  v42 = v28;
  v43 = v27;
  v44 = v26;
  v34 = v25;
  v35 = v24;
  v36 = v23;
  v37 = v5;
  v38 = v6;
  v39 = v7;
  v21 = sub_1D7F84D08(v40, &v34, v32, v31, v30);
  sub_1D7F855E8(v34, v35, v36);

  [v18 setAttributedTitle:v21 forState:0];

  return [v20 setBackgroundColor_];
}

void sub_1D7FF1208(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    sub_1D8190DB4();

    v3 = a3;
  }
}

uint64_t SectionFooterViewRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t == infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_17;
    }

    v20 = OUTLINED_FUNCTION_14_0();
    sub_1D7FF1504(v20, v21, 0);
    v22 = OUTLINED_FUNCTION_4_8();
    sub_1D7FF1504(v22, v23, 0);
    v24 = OUTLINED_FUNCTION_4_8();
    sub_1D7FF1564(v24, v25, 0);
    v26 = OUTLINED_FUNCTION_14_0();
    v28 = 0;
LABEL_26:
    sub_1D7FF1564(v26, v27, v28);
    return 1;
  }

  if (v4 != 1)
  {
    if (v3 | v2)
    {
      if (v7 != 2 || v6 != 1 || v5 != 0)
      {
        goto LABEL_17;
      }
    }

    else if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_17;
    }

    v42 = OUTLINED_FUNCTION_14_0();
    sub_1D7FF1504(v42, v43, v7);
    v44 = OUTLINED_FUNCTION_4_8();
    sub_1D7FF1564(v44, v45, 2);
    v26 = OUTLINED_FUNCTION_14_0();
    v28 = v7;
    goto LABEL_26;
  }

  if (v7 != 1)
  {
LABEL_17:
    v31 = OUTLINED_FUNCTION_14_0();
    sub_1D7FF1504(v31, v32, v7);
    v33 = OUTLINED_FUNCTION_4_8();
    sub_1D7FF1504(v33, v34, v4);
    v35 = OUTLINED_FUNCTION_4_8();
    sub_1D7FF1564(v35, v36, v4);
    v37 = OUTLINED_FUNCTION_14_0();
    v39 = v7;
    goto LABEL_18;
  }

  if (!v3)
  {
    v40 = 1;
    v46 = OUTLINED_FUNCTION_14_0();
    sub_1D7FF1504(v46, v47, 1);
    sub_1D7FF1504(0, v2, 1);
    v48 = v6;
    sub_1D7FF1564(0, v2, 1);
    v49 = OUTLINED_FUNCTION_14_0();
    sub_1D7FF1564(v49, v50, 1);
    if (!v6)
    {
      return v40;
    }

    return 0;
  }

  if (v6)
  {
    sub_1D7E446F0();
    v8 = OUTLINED_FUNCTION_14_0();
    sub_1D7FF1504(v8, v9, 1);
    v10 = OUTLINED_FUNCTION_4_8();
    sub_1D7FF1504(v10, v11, 1);
    v12 = v6;
    v13 = v3;
    v14 = sub_1D8191CC4();
    v15 = OUTLINED_FUNCTION_4_8();
    sub_1D7FF1564(v15, v16, 1);
    v17 = OUTLINED_FUNCTION_14_0();
    sub_1D7FF1564(v17, v18, 1);

    return v14 & 1;
  }

  sub_1D7FF1504(0, *(a2 + 8), 1);
  v51 = OUTLINED_FUNCTION_4_8();
  sub_1D7FF1504(v51, v52, 1);
  v53 = OUTLINED_FUNCTION_4_8();
  sub_1D7FF1564(v53, v54, 1);
  v37 = 0;
  v38 = v5;
  v39 = 1;
LABEL_18:
  sub_1D7FF1564(v37, v38, v39);
  return 0;
}

void sub_1D7FF1504(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    sub_1D8190DB4();

    v4 = a1;
  }

  else if (!a3)
  {

    sub_1D8190DB4();
  }
}

void *sub_1D7FF1564(void *result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }
  }
}

void NavigatorPresentationContext.init(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  if ((a1[1] & 1) == 0)
  {
    v5 = *a1;
    if (*a1 != 0x100000)
    {
      if (v5 != 1179648)
      {

        if (v5 == 1703936)
        {
          v4 = 2;
          v3 = 1;
          goto LABEL_8;
        }

        goto LABEL_3;
      }

      v3 = 0;
    }

    v4 = 1;
    goto LABEL_8;
  }

LABEL_3:
  v3 = 0;
  v4 = 2;
LABEL_8:
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI28NavigatorPresentationContextO(uint64_t a1)
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

id ImageView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

void sub_1D7FF16B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  v3.value.super.isa = v1;
  sub_1D7E73860(v3);
}

id sub_1D7FF16E4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI9ImageView_imageView) image];

  return v1;
}

void (*sub_1D7FF1724(void *a1))(UIImage_optional a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + OBJC_IVAR____TtC5TeaUI9ImageView_imageView) image];
  return sub_1D7FF1788;
}

void sub_1D7FF1788(UIImage_optional a1)
{
  v1 = *a1.value.super.isa;
  if (a1.is_nil)
  {
    v2 = v1;
    v4.value.super.isa = v1;
    sub_1D7E73860(v4);
  }

  else
  {
    a1.value.super.isa = *a1.value.super.isa;
    sub_1D7E73860(a1);
  }
}

uint64_t sub_1D7FF17F0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI9ImageView_imageView) image];
  if (v1)
  {
  }

  else
  {
    sub_1D7EB9F0C();
    if (!v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D7FF185C()
{

  sub_1D818F554();
  OUTLINED_FUNCTION_16_1();

  return v0;
}

id ImageView.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithCoder_];

  return v1;
}

void ImageView.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5TeaUI9ImageView_imageView;
  *(v1 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCAE0]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI9ImageView__loadingIdentifier;
  OUTLINED_FUNCTION_1_84();
  sub_1D7E40724(0, v4, v5, MEMORY[0x1E69D6748]);
  swift_allocObject();
  *(v1 + v3) = sub_1D818F514();
  *(v1 + OBJC_IVAR____TtC5TeaUI9ImageView__backgroundColor) = 0;
  sub_1D81923A4();
  __break(1u);
}

uint64_t sub_1D7FF19E8()
{
  v1[2] = v0;
  v1[3] = sub_1D8191534();
  v1[4] = sub_1D8191524();
  v3 = sub_1D81914D4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D7FF1A84, v3, v2);
}

uint64_t sub_1D7FF1A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1D7EB9F0C();
  if (v13)
  {
    v14 = v12[2];

    v15 = sub_1D8191524();
    v12[7] = v15;
    v16 = swift_task_alloc();
    v12[8] = v16;
    *(v16 + 16) = v14;
    v17 = swift_task_alloc();
    v12[9] = v17;
    *v17 = v12;
    v17[1] = sub_1D7FF1BD8;
    v18 = MEMORY[0x1E69E85E0];
    v19 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v17, v15, v18, 0xD00000000000001ALL, 0x80000001D81CE180, sub_1D7FF1EE4, v16, v19, a9, a10, a11, a12);
  }

  else
  {

    v20 = v12[1];

    return v20();
  }
}

uint64_t sub_1D7FF1BD8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D7FF1D38, v3, v2);
}

uint64_t sub_1D7FF1D38()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1D7FF1D98(uint64_t a1)
{
  sub_1D7FF3308();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1D7FF185C();
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1D818F4F4();

  return result;
}

uint64_t sub_1D7FF1EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    v3 = MEMORY[0x1E69D6968];
  }

  else
  {
    sub_1D7FF3308();
    sub_1D81914F4();
    v3 = MEMORY[0x1E69D6960];
  }

  v4 = *v3;
  v5 = sub_1D818F7A4();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

id ImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ImageView.clipsToBounds.setter(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ImageView();
  objc_msgSendSuper2(&v4, sel_setClipsToBounds_, a1 & 1);
  return sub_1D7FF20F4();
}

id sub_1D7FF20F4()
{
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI9ImageView_imageView];
  v2 = [v0 clipsToBounds];
  result = [v1 clipsToBounds];
  if (v2 != result)
  {

    return [v1 setClipsToBounds_];
  }

  return result;
}

double ImageView.setImage(from:with:)(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 16))(v4, v5);
  sub_1D7E73B8C(v6, v7);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  OUTLINED_FUNCTION_0_8();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7E0E768(a2, v14);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_1D7E05450(v14, v11 + 24);
  v12 = *(v9 + 8);

  v12(a2, sub_1D7FF2644, v11, v8, v9);

  return result;
}

uint64_t sub_1D7FF236C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, __n128 a7)
{
  v10 = sub_1D8190BD4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D8190C34();
  v14 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v16 = &aBlock[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E11E0C();
  v17 = sub_1D8191AB4();
  sub_1D7E0E768(a4, v31);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  sub_1D7E05450(v31, v18 + 24);
  *(v18 + 64) = a1;
  aBlock[4] = sub_1D7FF32F8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_39;
  v19 = _Block_copy(aBlock);
  v20 = a1;

  v21 = sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7EBCD5C(v26, v27, v21, v22, v23, v24, v25);
  sub_1D7E40724(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7EBCDB4();
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v16, v13, v19);
  _Block_release(v19);

  (*(v11 + 8))(v13, v10);
  return (*(v14 + 8))(v16, v29);
}

void sub_1D7FF2650(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1D7EB9F0C();
    v9 = v8;
    v10 = a2[3];
    v11 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v10);
    v12 = (*(v11 + 16))(v10, v11);
    if (v9)
    {
      if (v7 == v12 && v9 == v13)
      {
      }

      else
      {
        v15 = sub_1D8192634();

        if ((v15 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v16 = a3;
      v17.value.super.isa = a3;
      sub_1D7E73860(v17);
    }

    else
    {
    }

LABEL_12:
  }
}

void ImageView.crossFadeImage(_:animated:completion:)(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (!a1)
  {
    if (!a3)
    {
      return;
    }

    v16 = 0;
    goto LABEL_8;
  }

  if (a2)
  {
    v8 = objc_opt_self();
    v9 = *&v4[OBJC_IVAR____TtC5TeaUI9ImageView_imageView];
    OUTLINED_FUNCTION_0_32();
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = a1;
    v22 = sub_1D7FF2FC0;
    v23 = v10;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_1D7E64940;
    v21 = &block_descriptor_20_0;
    v11 = _Block_copy(&v18);
    v12 = a1;
    v13 = v4;

    OUTLINED_FUNCTION_0_32();
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v22 = sub_1D7FF2FC8;
    v23 = v14;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_1D7EB30D4;
    v21 = &block_descriptor_26_0;
    v15 = _Block_copy(&v18);
    sub_1D7E38808(a3, a4);

    [v8 transitionWithView:v9 duration:5308418 options:v11 animations:v15 completion:0.25];

    _Block_release(v15);
    _Block_release(v11);
    return;
  }

  v17 = a1;
  v24.value.super.isa = a1;
  sub_1D7E73860(v24);
  if (a3)
  {
    v16 = 1;
LABEL_8:
    a3(v16, a2);
  }
}

void sub_1D7FF2970(uint64_t a1, void *a2)
{
  v3 = a2;
  v4.value.super.isa = a2;
  sub_1D7E73860(v4);
}

id sub_1D7FF29A0(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUIP33_01AB305DE961FE9633E4B4930A1B15A714ImageViewLayer_coordinateWithLayer] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void *sub_1D7FF2A40(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUIP33_01AB305DE961FE9633E4B4930A1B15A714ImageViewLayer_coordinateWithLayer] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1D8192614();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithLayer_, v4);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

id sub_1D7FF2B58()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_maskedCorners);
}

void sub_1D7FF2BE4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setMaskedCorners_, a1);
  sub_1D7FF2C30();
}

void sub_1D7FF2C30()
{
  v1 = *&v0[OBJC_IVAR____TtC5TeaUIP33_01AB305DE961FE9633E4B4930A1B15A714ImageViewLayer_coordinateWithLayer];
  if (v1)
  {
    v4.receiver = v0;
    v4.super_class = swift_getObjectType();
    v2 = v1;
    v3 = objc_msgSendSuper2(&v4, sel_maskedCorners);
    [v2 setMaskedCorners_];
  }
}

id sub_1D7FF2D70(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setShadowOffset_, a1, a2);
}

id sub_1D7FF2E18(float a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  *&v3 = a1;
  return objc_msgSendSuper2(&v5, sel_setShadowOpacity_, v3);
}

void sub_1D7FF2EC4(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_108();
  objc_msgSendSuper2(v2, v3, a1);
}

id sub_1D7FF2F68(double a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_setShadowRadius_, a1);
}

uint64_t sub_1D7FF2FC8(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t dispatch thunk of ImageView.waitUntilFinishedLoading()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D7FF3204;

  return v5();
}

uint64_t sub_1D7FF3204()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1D7FF3308()
{
  if (!qword_1ECA0F200)
  {
    v0 = sub_1D8191504();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0F200);
    }
  }
}

uint64_t sub_1D7FF336C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7FF3308();

  return sub_1D7FF1EEC(a1, a2);
}

double static MenuItemKey.key(input:modifierFlags:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  sub_1D8190DB4();
  return result;
}

TeaUI::MenuItemKey __swiftcall MenuItemKey.init(input:modifierFlags:)(Swift::String input, __C::UIKeyModifierFlags modifierFlags)
{
  *v2 = input;
  *(v2 + 16) = modifierFlags;
  result.input = input;
  result.modifierFlags = modifierFlags;
  return result;
}

uint64_t sub_1D7FF341C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D7FF345C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D7FF34AC(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  [v4 setDefinesPresentationContext_];
  if (!a1)
  {
    goto LABEL_4;
  }

  [a1 willMoveToParentViewController_];
  result = [a1 view];
  if (result)
  {
    v6 = result;
    [result removeFromSuperview];

    [a1 removeFromParentViewController];
LABEL_4:

    return v4;
  }

  __break(1u);
  return result;
}

void sub_1D7FF35A8()
{
  swift_unknownObjectWeakInit();
  sub_1D81923A4();
  __break(1u);
}

void sub_1D7FF3630()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = [v0 view];
  v3 = v2;
  if (Strong)
  {
    if (v2)
    {
      [v2 setUserInteractionEnabled_];

      [v0 addChildViewController_];
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        v6 = [Strong view];
        if (v6)
        {
          v7 = v6;
          [v5 addSubview_];

          [Strong didMoveToParentViewController_];
          v8 = [Strong view];
          if (v8)
          {
            v3 = v8;
            v9 = [v0 view];
            if (v9)
            {
              v10 = v9;
              [v9 bounds];
              v12 = v11;
              v14 = v13;
              v16 = v15;
              v18 = v17;

              [v3 setFrame_];
LABEL_10:

              return;
            }

            goto LABEL_15;
          }

LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v2)
  {
    [v2 setUserInteractionEnabled_];
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
}

void sub_1D7FF3858()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong willMoveToParentViewController_];
    v1 = [v3 view];
    if (v1)
    {
      v2 = v1;
      [v1 removeFromSuperview];

      [v3 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

TeaUI::SwipeActionMenu __swiftcall SwipeActionMenu.init(_:)(TeaUI::SwipeActionMenu result)
{
  rawValue = result.actions._rawValue;
  v3 = v1;
  v4 = 0;
  v5 = *(result.actions._rawValue + 2);
  v6 = result.actions._rawValue + 48;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = &v6[104 * v4]; ; i += 104)
  {
    if (v5 == v4)
    {

      *v3 = v7;
      return result;
    }

    if (v4 >= rawValue[2])
    {
      break;
    }

    v10 = *(i - 2);
    v9 = *(i - 1);
    result.actions._rawValue = memcpy(__dst, i, sizeof(__dst));
    if (v9)
    {
      v17[0] = v10;
      v17[1] = v9;
      memcpy(v18, i, sizeof(v18));
      sub_1D7FF3B0C(v17, v16);
      v11 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE5304();
        v7 = v14;
      }

      v12 = *(v7 + 16);
      if (v12 >= *(v7 + 24) >> 1)
      {
        sub_1D7EE5304();
        v7 = v15;
      }

      ++v4;
      memcpy(v16, __dst, 0x58uLL);
      *(v7 + 16) = v12 + 1;
      v13 = (v7 + 104 * v12);
      v13[4] = v10;
      v13[5] = v9;
      result.actions._rawValue = memcpy(v13 + 6, v16, 0x58uLL);
      v3 = v11;
      goto LABEL_2;
    }

    ++v4;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MenuItemAlternate(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for MenuItemAlternate(uint64_t result, int a2, int a3)
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

uint64_t CardViewInteractiveState.description.getter()
{
  result = 0x657263736C6C7566;
  switch(*v0)
  {
    case 1:
      result = 0x6465646E61707865;
      break;
    case 2:
      result = 0x657370616C6C6F63;
      break;
    case 3:
      result = 0x676E696767617264;
      break;
    case 4:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CardViewInteractiveState.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7FF3D24()
{
  result = qword_1ECA0F210;
  if (!qword_1ECA0F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F210);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CardViewInteractiveState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

__C::UIContentSizeCategory_optional __swiftcall UIContentSizeCategory.larger()()
{
  sub_1D8190F14();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_47();
  v4 = v4 && v0 == v3;
  v5 = MEMORY[0x1E69DDC88];
  if (v4)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_0_109(v2);
  OUTLINED_FUNCTION_6_46();

  if (v1)
  {
    goto LABEL_63;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_47();
  v8 = v4 && v0 == v7;
  v5 = MEMORY[0x1E69DDC78];
  if (v8)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_0_109(v6);
  OUTLINED_FUNCTION_6_46();

  if (v1)
  {
    goto LABEL_63;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_47();
  v11 = v4 && v0 == v10;
  v5 = MEMORY[0x1E69DDC70];
  if (v11)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_0_109(v9);
  OUTLINED_FUNCTION_6_46();

  if (v1)
  {
LABEL_63:
    v42 = *v5;
LABEL_64:
    v43 = v42;
    goto LABEL_65;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_47();
  v14 = v4 && v0 == v13;
  v5 = MEMORY[0x1E69DDC60];
  if (v14)
  {
LABEL_62:

    goto LABEL_63;
  }

  OUTLINED_FUNCTION_0_109(v12);
  OUTLINED_FUNCTION_6_46();

  if (v1)
  {
    goto LABEL_63;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_47();
  if (v4 && v0 == v16)
  {

    goto LABEL_67;
  }

  OUTLINED_FUNCTION_0_109(v15);
  OUTLINED_FUNCTION_6_46();

  if (v1)
  {
LABEL_67:
    v45 = MEMORY[0x1E69DDC58];
LABEL_68:
    v42 = *v45;
    goto LABEL_64;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_47();
  if (v4 && v0 == v19)
  {

    goto LABEL_70;
  }

  OUTLINED_FUNCTION_0_109(v18);
  OUTLINED_FUNCTION_6_46();

  if (v1)
  {
LABEL_70:
    v45 = MEMORY[0x1E69DDC50];
    goto LABEL_68;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_47();
  if (v4 && v0 == v22)
  {

    goto LABEL_72;
  }

  OUTLINED_FUNCTION_0_109(v21);
  OUTLINED_FUNCTION_6_46();

  if (v1)
  {
LABEL_72:
    v45 = MEMORY[0x1E69DDC40];
    goto LABEL_68;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_47();
  if (v4 && v0 == v25)
  {

    goto LABEL_74;
  }

  OUTLINED_FUNCTION_0_109(v24);
  OUTLINED_FUNCTION_6_46();

  if (v1)
  {
LABEL_74:
    v45 = MEMORY[0x1E69DDC38];
    goto LABEL_68;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_47();
  if (v4 && v0 == v28)
  {

    goto LABEL_76;
  }

  OUTLINED_FUNCTION_0_109(v27);
  OUTLINED_FUNCTION_6_46();

  if (v1)
  {
LABEL_76:
    v45 = MEMORY[0x1E69DDC30];
    goto LABEL_68;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_47();
  if (v4 && v0 == v31)
  {

    goto LABEL_78;
  }

  OUTLINED_FUNCTION_0_109(v30);
  OUTLINED_FUNCTION_6_46();

  if (v1)
  {
LABEL_78:
    v45 = MEMORY[0x1E69DDC28];
    goto LABEL_68;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_47();
  if (v4 && v0 == v34)
  {

    goto LABEL_80;
  }

  OUTLINED_FUNCTION_0_109(v33);
  OUTLINED_FUNCTION_6_46();

  if (v1)
  {
LABEL_80:
    v45 = MEMORY[0x1E69DDC20];
    goto LABEL_68;
  }

  v36 = sub_1D8190F14();
  v38 = v37;
  if (v36 != sub_1D8190F14() || v38 != v39)
  {
    sub_1D8192634();
  }

  v42 = 0;
LABEL_65:
  v44 = v42;
  result.value._rawValue = v44;
  result.is_nil = v41;
  return result;
}

__C::UIContentSizeCategory_optional __swiftcall UIContentSizeCategory.smaller()()
{
  v1 = *MEMORY[0x1E69DDC68];
  v2 = sub_1D8190F14();
  v4 = v3;
  v6 = v2 == sub_1D8190F14() && v4 == v5;
  if (v6)
  {

    goto LABEL_63;
  }

  v7 = sub_1D8192634();

  if ((v7 & 1) == 0)
  {
    v9 = *MEMORY[0x1E69DDC88];
    sub_1D8190F14();
    OUTLINED_FUNCTION_3_68();
    OUTLINED_FUNCTION_5_39();
    if (!v6 || v7 != v11)
    {
      OUTLINED_FUNCTION_1_85(v10);
      OUTLINED_FUNCTION_7_35();

      if (v0)
      {
        goto LABEL_65;
      }

      v1 = *MEMORY[0x1E69DDC78];
      sub_1D8190F14();
      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_5_39();
      if (v6 && v7 == v14)
      {
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_1_85(v13);
      OUTLINED_FUNCTION_7_35();

      if (v0)
      {
        goto LABEL_68;
      }

      v9 = *MEMORY[0x1E69DDC70];
      sub_1D8190F14();
      OUTLINED_FUNCTION_3_68();
      OUTLINED_FUNCTION_5_39();
      if (!v6 || v7 != v17)
      {
        OUTLINED_FUNCTION_1_85(v16);
        OUTLINED_FUNCTION_7_35();

        if (v0)
        {
          goto LABEL_65;
        }

        v1 = *MEMORY[0x1E69DDC60];
        sub_1D8190F14();
        OUTLINED_FUNCTION_3_68();
        OUTLINED_FUNCTION_5_39();
        if (v6 && v7 == v20)
        {
          goto LABEL_67;
        }

        OUTLINED_FUNCTION_1_85(v19);
        OUTLINED_FUNCTION_7_35();

        if (v0)
        {
          goto LABEL_68;
        }

        v9 = *MEMORY[0x1E69DDC58];
        sub_1D8190F14();
        OUTLINED_FUNCTION_3_68();
        OUTLINED_FUNCTION_5_39();
        if (!v6 || v7 != v23)
        {
          OUTLINED_FUNCTION_1_85(v22);
          OUTLINED_FUNCTION_7_35();

          if (v0)
          {
            goto LABEL_65;
          }

          v1 = *MEMORY[0x1E69DDC50];
          sub_1D8190F14();
          OUTLINED_FUNCTION_3_68();
          OUTLINED_FUNCTION_5_39();
          if (v6 && v7 == v26)
          {
            goto LABEL_67;
          }

          OUTLINED_FUNCTION_1_85(v25);
          OUTLINED_FUNCTION_7_35();

          if (v0)
          {
            goto LABEL_68;
          }

          v9 = *MEMORY[0x1E69DDC40];
          sub_1D8190F14();
          OUTLINED_FUNCTION_3_68();
          OUTLINED_FUNCTION_5_39();
          if (!v6 || v7 != v29)
          {
            OUTLINED_FUNCTION_1_85(v28);
            OUTLINED_FUNCTION_7_35();

            if (v0)
            {
              goto LABEL_65;
            }

            v1 = *MEMORY[0x1E69DDC38];
            sub_1D8190F14();
            OUTLINED_FUNCTION_3_68();
            OUTLINED_FUNCTION_5_39();
            if (v6 && v7 == v32)
            {
              goto LABEL_67;
            }

            OUTLINED_FUNCTION_1_85(v31);
            OUTLINED_FUNCTION_7_35();

            if (v0)
            {
              goto LABEL_68;
            }

            v9 = *MEMORY[0x1E69DDC30];
            sub_1D8190F14();
            OUTLINED_FUNCTION_3_68();
            OUTLINED_FUNCTION_5_39();
            if (!v6 || v7 != v35)
            {
              OUTLINED_FUNCTION_1_85(v34);
              OUTLINED_FUNCTION_7_35();

              if ((v0 & 1) == 0)
              {
                v1 = *MEMORY[0x1E69DDC28];
                sub_1D8190F14();
                OUTLINED_FUNCTION_3_68();
                OUTLINED_FUNCTION_5_39();
                if (!v6 || v7 != v38)
                {
                  OUTLINED_FUNCTION_1_85(v37);
                  OUTLINED_FUNCTION_7_35();

                  if ((v0 & 1) == 0)
                  {
                    v40 = sub_1D8190F14();
                    v42 = v41;
                    sub_1D8190F14();
                    OUTLINED_FUNCTION_4_47();
                    if (!v6 || v42 != v44)
                    {
                      OUTLINED_FUNCTION_0_109(v43);
                      OUTLINED_FUNCTION_6_46();

                      if (v40)
                      {
                        goto LABEL_65;
                      }

                      goto LABEL_63;
                    }

                    goto LABEL_64;
                  }

LABEL_68:
                  v48 = v9;
                  v1 = v9;
                  goto LABEL_66;
                }

LABEL_67:

                goto LABEL_68;
              }

LABEL_65:
              v46 = v1;
              goto LABEL_66;
            }
          }
        }
      }
    }

LABEL_64:

    goto LABEL_65;
  }

LABEL_63:
  v1 = 0;
LABEL_66:
  v47 = v1;
  result.value._rawValue = v47;
  result.is_nil = v8;
  return result;
}

uint64_t LazyViewController.Trigger.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t LazyViewController.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI18LazyViewController_identifier);
  sub_1D8190DB4();
  return v1;
}

uint64_t sub_1D7FF4624(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return LazyViewController.loadedViewController.setter(v1);
}

void (*LazyViewController.loadedViewController.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + OBJC_IVAR____TtC5TeaUI18LazyViewController__loadedViewController);

  v3[5] = sub_1D818F524();
  return sub_1D7FED5F4;
}

uint64_t LazyViewController.$loadedViewController.getter()
{

  v0 = sub_1D818F554();

  return v0;
}

id LazyViewController.__allocating_init(identifier:trigger:_:)()
{
  OUTLINED_FUNCTION_5_40();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  return LazyViewController.__allocating_init(identifier:trigger:_:)();
}

{
  OUTLINED_FUNCTION_5_40();
  v5 = objc_allocWithZone(v1);
  return LazyViewController.init(identifier:trigger:loadBlock:postParentedBlock:)(v4, v3, &v7, v2, v0, nullsub_1, 0);
}

id LazyViewController.init(identifier:trigger:loadBlock:postParentedBlock:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v41 = a6;
  v42 = a7;
  v39 = a4;
  v40 = a5;
  ObjectType = swift_getObjectType();
  v38 = sub_1D818F5F4();
  v43 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v15 = OBJC_IVAR____TtC5TeaUI18LazyViewController__loadedViewController;
  v45 = 0;
  OUTLINED_FUNCTION_4_48();
  sub_1D7E193EC(0, v16, v17, MEMORY[0x1E69D6748]);
  OUTLINED_FUNCTION_8_5(v18);
  *&v8[v15] = sub_1D818F514();
  v19 = OBJC_IVAR____TtC5TeaUI18LazyViewController_eventManager;
  sub_1D7E2D1D0(0);
  OUTLINED_FUNCTION_8_5(v20);
  *&v8[v19] = sub_1D818EF74();
  v21 = &v8[OBJC_IVAR____TtC5TeaUI18LazyViewController_identifier];
  *v21 = a1;
  *(v21 + 1) = a2;
  v44.receiver = v8;
  v44.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v44, sel_initWithNibName_bundle_, 0, 0);
  sub_1D7E312E8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A1B70;
  *(inited + 32) = v14;
  *(inited + 33) = 770;
  v24 = v22;

  sub_1D7E31338(inited);
  v25 = MEMORY[0x1E69D6810];
  sub_1D7E193EC(0, &qword_1EDBB2CC0, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D819FAC0;
  sub_1D818F5C4();
  sub_1D818F5E4();
  v45 = v26;
  sub_1D7E2D2C8(&qword_1EDBBC470, 255, MEMORY[0x1E69D6810], MEMORY[0x1E69D6818]);
  sub_1D7E193EC(0, &qword_1EDBB33C8, v25, MEMORY[0x1E69E62F8]);
  sub_1D7E26188();
  v28 = v37;
  v27 = v38;
  sub_1D8192004();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v31 = v39;
  v32 = v40;
  v30[2] = v29;
  v30[3] = v31;
  v33 = v41;
  v34 = v42;
  v30[4] = v32;
  v30[5] = v33;
  v30[6] = v34;

  sub_1D818EF34();

  (*(v43 + 8))(v28, v27);

  return v24;
}

void sub_1D7FF4C7C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(id, id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  v8 = a2();
  v9 = v8;
  LazyViewController.loadedViewController.setter(v8);
  v10 = v7;
  [v10 addChildViewController_];
  v11 = [v10 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = [v9 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  [v12 addSubview_];

  [v9 didMoveToParentViewController_];
  v15 = [v9 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v10 view];

  if (!v17)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v16 setFrame_];
  a4(v10, v9);
  [v10 _updateTabBarLayout];
  v26 = [v10 tabBarController];

  if (v26)
  {
    UITabBarController.setFloatingTabBarNeedsTabBarMinimizeBehaviorUpdate()();
  }
}

void sub_1D7FF4E9C()
{
  v1 = OBJC_IVAR____TtC5TeaUI18LazyViewController__loadedViewController;
  OUTLINED_FUNCTION_4_48();
  sub_1D7E193EC(0, v2, v3, MEMORY[0x1E69D6748]);
  OUTLINED_FUNCTION_8_5(v4);
  *(v0 + v1) = sub_1D818F514();
  v5 = OBJC_IVAR____TtC5TeaUI18LazyViewController_eventManager;
  sub_1D7E2D1D0(0);
  OUTLINED_FUNCTION_8_5(v6);
  *(v0 + v5) = sub_1D818EF74();
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall LazyViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_setEditing_animated_, _, animated);
  LazyViewController.loadViewController()(v5);
  v7 = v6;
  [v6 setEditing:_ animated:animated];
}

void __swiftcall LazyViewController.contentScrollView(for:)(UIScrollView_optional *__return_ptr retstr, NSDirectionalRectEdge a2)
{
  v3 = LazyViewController.loadedViewController.getter();
  v4 = [v3 contentScrollViewForEdge_];
}

id LazyViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id LazyViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LazyViewController.tabBarNavigationBarVisiblity.getter@<X0>(_BYTE *a1@<X8>)
{
  if (LazyViewController.loadedViewController.getter() && (sub_1D7E194D0(), sub_1D7E0631C(0, &unk_1EDBB1D08, &protocol descriptor for TabBarable), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v6 + 1))
    {
      sub_1D7E05450(&v5, v8);
      v2 = v9;
      v3 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v3 + 16))(v2, v3);
      return __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  result = sub_1D7E9DD24(&v5, &qword_1EDBB1D00, &unk_1EDBB1D08, &protocol descriptor for TabBarable);
  *a1 = 1;
  return result;
}

uint64_t LazyViewController.shouldSelectOnCollapse.getter()
{
  if (!LazyViewController.loadedViewController.getter() || (OUTLINED_FUNCTION_7_36(), v0 = sub_1D7E0631C(0, &unk_1EDBB1D08, &protocol descriptor for TabBarable), v8 = OUTLINED_FUNCTION_2_2(v0, v1, v2, v3, v4, v5, v6, v7, v22[0], v22[1], v22[2], v23, v24, v25[0]), (v8 & 1) == 0))
  {
    OUTLINED_FUNCTION_2_9();
    goto LABEL_6;
  }

  if (!v23)
  {
LABEL_6:
    sub_1D7E9DD24(v22, &qword_1EDBB1D00, &unk_1EDBB1D08, &protocol descriptor for TabBarable);
    v20 = 0;
    return v20 & 1;
  }

  v16 = OUTLINED_FUNCTION_3_69(v8, v9, v10, v11, v12, v13, v14, v15, v22[0]);
  sub_1D7E05450(v16, v17);
  OUTLINED_FUNCTION_27_0(v25);
  v18 = OUTLINED_FUNCTION_3_1();
  v20 = v19(v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v20 & 1;
}

uint64_t LazyViewController.description.getter()
{
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD000000000000014, 0x80000001D81CE470);
  sub_1D8192334();
  MEMORY[0x1DA713260](0x6669746E65646920, 0xEC0000003D726569);
  MEMORY[0x1DA713260](*(v0 + OBJC_IVAR____TtC5TeaUI18LazyViewController_identifier), *(v0 + OBJC_IVAR____TtC5TeaUI18LazyViewController_identifier + 8));
  MEMORY[0x1DA713260](62, 0xE100000000000000);
  return 0;
}

uint64_t LazyViewController.tabBarSplitViewPresentation(for:)(char a1)
{
  LOBYTE(v8[0]) = 2;
  sub_1D818EF14();
  if (LazyViewController.loadedViewController.getter() && (sub_1D7E194D0(), sub_1D7E0631C(0, qword_1EDBB0758, &protocol descriptor for TabBarSplitViewPanable), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v6 + 1))
    {
      sub_1D7E05450(&v5, v8);
      v2 = v9;
      v3 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v3 + 8))(a1 & 1, v2, v3);
      return __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  sub_1D7E9DD24(&v5, &qword_1ECA0DD60, qword_1EDBB0758, &protocol descriptor for TabBarSplitViewPanable);
  result = sub_1D81923A4();
  __break(1u);
  return result;
}

id LazyViewController.responder.getter()
{
  result = LazyViewController.loadedViewController.getter();
  if (!result)
  {

    return v1;
  }

  return result;
}

Swift::Void __swiftcall LazyViewController.textBeginEditing()()
{
  if (LazyViewController.loadedViewController.getter() && (OUTLINED_FUNCTION_7_36(), v0 = sub_1D7E0631C(0, &qword_1ECA0DD68, &protocol descriptor for TextEditObserving), v8 = OUTLINED_FUNCTION_2_2(v0, v1, v2, v3, v4, v5, v6, v7, v20[0], v20[1], v20[2], v21, v22, v23[0]), (v8 & 1) != 0))
  {
    if (v21)
    {
      v16 = OUTLINED_FUNCTION_3_69(v8, v9, v10, v11, v12, v13, v14, v15, v20[0]);
      sub_1D7E05450(v16, v17);
      OUTLINED_FUNCTION_27_0(v23);
      v18 = OUTLINED_FUNCTION_3_1();
      v19(v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
  }

  sub_1D7E9DD24(v20, &qword_1ECA0DD70, &qword_1ECA0DD68, &protocol descriptor for TextEditObserving);
}

Swift::Void __swiftcall LazyViewController.textEndEditing()()
{
  if (LazyViewController.loadedViewController.getter() && (OUTLINED_FUNCTION_7_36(), v0 = sub_1D7E0631C(0, &qword_1ECA0DD68, &protocol descriptor for TextEditObserving), v8 = OUTLINED_FUNCTION_2_2(v0, v1, v2, v3, v4, v5, v6, v7, v20[0], v20[1], v20[2], v21, v22, v23[0]), (v8 & 1) != 0))
  {
    if (v21)
    {
      v16 = OUTLINED_FUNCTION_3_69(v8, v9, v10, v11, v12, v13, v14, v15, v20[0]);
      sub_1D7E05450(v16, v17);
      OUTLINED_FUNCTION_27_0(v23);
      v18 = OUTLINED_FUNCTION_3_1();
      v19(v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
  }

  sub_1D7E9DD24(v20, &qword_1ECA0DD70, &qword_1ECA0DD68, &protocol descriptor for TextEditObserving);
}

uint64_t LazyViewController.backdropGroupName.getter()
{
  if (!LazyViewController.loadedViewController.getter() || (OUTLINED_FUNCTION_7_36(), v0 = sub_1D7E0631C(0, &qword_1EDBB7300, &protocol descriptor for BackdropGroupNameProviding), v8 = OUTLINED_FUNCTION_2_2(v0, v1, v2, v3, v4, v5, v6, v7, v22[0], v22[1], v22[2], v23, v24, v25[0]), (v8 & 1) == 0))
  {
    OUTLINED_FUNCTION_2_9();
    goto LABEL_6;
  }

  if (!v23)
  {
LABEL_6:
    sub_1D7E9DD24(v22, &unk_1EDBB72F0, &qword_1EDBB7300, &protocol descriptor for BackdropGroupNameProviding);
    return 0;
  }

  v16 = OUTLINED_FUNCTION_3_69(v8, v9, v10, v11, v12, v13, v14, v15, v22[0]);
  sub_1D7E05450(v16, v17);
  OUTLINED_FUNCTION_27_0(v25);
  v18 = OUTLINED_FUNCTION_3_1();
  v20 = v19(v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v20;
}

uint64_t sub_1D7FF5A94(uint64_t a1, uint64_t a2)
{
  result = sub_1D7E2D2C8(&qword_1EDBB0F10, a2, type metadata accessor for LazyViewController, &protocol conformance descriptor for LazyViewController);
  *(a1 + 8) = result;
  return result;
}

void sub_1D7FF5B44(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, SEL *a5)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1D7E3ED28(a1, a2, a3);
  v11 = sub_1D8190EE4();

  [v5 *a5];
}

uint64_t UITableView.dequeue<A>(headerFooterView:name:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1D7E3ED28(a1, a2, a3);
  v6 = sub_1D8190EE4();

  v7 = [v4 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (v7)
  {
    v8 = v7;
    v9 = a4;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6BE48](v8, v9, v10, v11, v12);
}

uint64_t UITableView.dequeue<A>(cell:at:name:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_1D7E3ED28(a1, a3, a4);
  v8 = sub_1D8190EE4();

  v9 = sub_1D818E8E4();
  v10 = [v6 dequeueReusableCellWithIdentifier:v8 forIndexPath:v9];

  return MEMORY[0x1EEE6BE48](v10, a5, 0, 0, 0);
}

uint64_t ColorSectionDecorationItem.init(color:ordering:pinTrait:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  *a4 = *a2;
  *(a4 + 8) = v4;
  *(a4 + 16) = result;
  *(a4 + 24) = v5;
  *(a4 + 32) = v6;
  return result;
}

Swift::Void __swiftcall ColorSectionDecorationView.willMove(toSuperview:)(UIView_optional *toSuperview)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  [(UIView_optional *)&v3 willMoveToSuperview:toSuperview];
}

Swift::Void __swiftcall ColorSectionDecorationView.apply(_:)(UICollectionViewLayoutAttributes *a1)
{
  v2 = v1;
  v17.receiver = v2;
  v17.super_class = swift_getObjectType();
  [(UICollectionViewLayoutAttributes *)&v17 applyLayoutAttributes:a1];
  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
    swift_beginAccess();
    sub_1D7F0F5CC(v5 + v6, v15);
    if (v16)
    {
      sub_1D7FDADC0();
      v7 = a1;
      if (swift_dynamicCast())
      {
        v8 = v14;
        v9 = [v2 backgroundColor];
        if (v9 && (v10 = v9, sub_1D7E0A1A8(0, &qword_1EDBB2F68, 0x1E69DC888), v11 = v8, v12 = sub_1D8191CC4(), v10, v11, (v12 & 1) != 0))
        {
        }

        else
        {
          [v2 setBackgroundColor_];
        }

        return;
      }
    }

    else
    {
      sub_1D7F0F65C(v15);
    }
  }

  v13 = [v2 backgroundColor];
  if (v13)
  {

    [v2 setBackgroundColor_];
  }
}

id ColorSectionDecorationView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id ColorSectionDecorationView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
}

id ColorSectionDecorationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ColorSectionDecorationView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1D7FF62B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1D7FF62F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id SelectedBackgroundView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

uint64_t SelectedBackgroundView.Styling.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

double SelectedBackgroundView.insets.getter()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_insets;
  OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_insets, v3);
  return *v1;
}

double SelectedBackgroundView.cornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_cornerRadius;
  OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_cornerRadius, v3);
  return *(v0 + v1);
}

double sub_1D7FF6500@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_cornerRadius;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void (*SelectedBackgroundView.cornerRadius.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D7FF65AC;
}

void sub_1D7FF65AC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D7E9B700();
  }
}

uint64_t SelectedBackgroundView.styling.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_styling;
  result = OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_styling, v5);
  *a1 = *(v1 + v3);
  return result;
}

void SelectedBackgroundView.styling.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_styling;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

id SelectedBackgroundView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SelectedBackgroundView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_insets);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_cornerRadius) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_styling) = 0;
  sub_1D81923A4();
  __break(1u);
}

id SelectedBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D7FF67F8()
{
  result = qword_1ECA0F248;
  if (!qword_1ECA0F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F248);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectedBackgroundView.Styling(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1D7FF6928(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D81920A4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D7F08FEC(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v19;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1DA714420](v3, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        v6 = type metadata accessor for BlueprintInfiniteScrollRequest();
        v17 = v6;
        v7 = sub_1D7FF7DF0();
        v18 = v7;
        v19 = v4;
        v16[0] = v5;
        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1D7F08FEC(v8 > 1, v9 + 1, 1);
          v6 = v17;
          v10 = v18;
        }

        else
        {
          v10 = v7;
        }

        ++v3;
        v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v6);
        v12 = MEMORY[0x1EEE9AC00](v11);
        v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v14, v12);
        sub_1D7FF7D58(v9, v14, &v19, v6, v10);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        v4 = v19;
      }

      while (v2 != v3);
    }
  }
}

void sub_1D7FF6B18(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D81920A4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D7F0900C(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v9;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA714420](v3, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        type metadata accessor for CGColor();
        swift_dynamicCast();
        v9 = v4;
        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1D7F0900C(v6 > 1, v7 + 1, 1);
          v4 = v9;
        }

        ++v3;
        *(v4 + 16) = v7 + 1;
        sub_1D7E1C664(&v8, (v4 + 32 * v7 + 32));
      }

      while (v2 != v3);
    }
  }
}

void sub_1D7FF6C60(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D81920A4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1D7F0900C(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v8;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA714420](v3, a1);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        sub_1D7FF6F28();
        swift_dynamicCast();
        v8 = v4;
        v6 = *(v4 + 16);
        v5 = *(v4 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_1D7F0900C(v5 > 1, v6 + 1, 1);
          v4 = v8;
        }

        ++v3;
        *(v4 + 16) = v6 + 1;
        sub_1D7E1C664(&v7, (v4 + 32 * v6 + 32));
      }

      while (v2 != v3);
    }
  }
}

id SharingActivityProviderType.activityItemsConfiguration.getter(uint64_t a1)
{
  v2 = v1;
  sub_1D7E0A1A8(0, &qword_1ECA0F250, 0x1E69DC640);
  v4 = [v1 activityItemSources];
  sub_1D7FF6F28();
  v5 = sub_1D8191314();

  v6 = sub_1D7FF6F84(v5);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v2;
  v11[4] = sub_1D7FF7060;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D7FF7068;
  v11[3] = &block_descriptor_39;
  v8 = _Block_copy(v11);
  swift_unknownObjectRetain();

  [v6 setApplicationActivitiesProvider_];
  _Block_release(v8);
  v9 = [v2 excludedActivityTypes];
  [v6 ts:v9 setExcludedActivityTypes:?];

  return v6;
}

unint64_t sub_1D7FF6F28()
{
  result = qword_1ECA0F258;
  if (!qword_1ECA0F258)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0F258);
  }

  return result;
}

id sub_1D7FF6F84(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1D7FF6F28();
  v2 = sub_1D8191304();

  v3 = [v1 initTSWithActivityItemSources_];

  return v3;
}

uint64_t sub_1D7FF6FFC(void *a1)
{
  v1 = [a1 activities];
  sub_1D7E0A1A8(0, &qword_1ECA0F288, 0x1E69CD9E8);
  v2 = sub_1D8191314();

  return v2;
}

id sub_1D7FF7068(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  sub_1D7E0A1A8(0, &qword_1ECA0F288, 0x1E69CD9E8);
  v3 = sub_1D8191304();

  return v3;
}

id sub_1D7FF7320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  a3();
  a4(0);
  v5 = sub_1D8191304();

  return v5;
}

void sub_1D7FF73C0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  (a4)(0, a2);
  v7 = sub_1D8191314();
  v8 = a1;
  a5(v7);
}

uint64_t sub_1D7FF7450(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t SharingActivityProvider.linkPresentationSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TSSharingActivityProvider_linkPresentationSource;
  OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR___TSSharingActivityProvider_linkPresentationSource, v5);
  return sub_1D7E7B91C(v1 + v3, a1);
}

uint64_t SharingActivityProvider.linkPresentationSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TSSharingActivityProvider_linkPresentationSource;
  swift_beginAccess();
  sub_1D7E5C8DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SharingActivityProvider.activityItems.getter()
{
  v1 = OBJC_IVAR___TSSharingActivityProvider_linkPresentationSource;
  OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR___TSSharingActivityProvider_linkPresentationSource, v12);
  sub_1D7E7B91C(v0 + v1, &v10);
  if (v11)
  {
    sub_1D7E1C664(&v10, v13);
    OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR___TSSharingActivityProvider_activityItemSources, &v10);
    v2 = sub_1D8190DB4();
    sub_1D7FF6C60(v2);
    v4 = v3;

    sub_1D7E09D60(0, &qword_1EDBB2BE8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D819FAB0;
    sub_1D7E1B288(v13, inited + 32);
    sub_1D7F0A8E8(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    return v4;
  }

  else
  {
    sub_1D7E7BAAC(&v10);
    OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR___TSSharingActivityProvider_activityItemSources, v13);
    v7 = sub_1D8190DB4();
    sub_1D7FF6C60(v7);
    v6 = v8;
  }

  return v6;
}

id SharingActivityProvider.init(activityItems:activitySources:excludedActivityTypes:linkPresentationSource:)()
{
  OUTLINED_FUNCTION_1_86();
  ObjectType = swift_getObjectType();
  v6 = &v1[OBJC_IVAR___TSSharingActivityProvider_linkPresentationSource];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v1[OBJC_IVAR___TSSharingActivityProvider_activities] = v4;
  *&v1[OBJC_IVAR___TSSharingActivityProvider_activityItemSources] = v3;
  *&v1[OBJC_IVAR___TSSharingActivityProvider_excludedActivityTypes] = v2;
  swift_beginAccess();
  sub_1D7FF7A44(v0, v6);
  swift_endAccess();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_1D7E7BAAC(v0);
  return v7;
}

uint64_t sub_1D7FF7A44(uint64_t a1, uint64_t a2)
{
  sub_1D7E09D60(0, &qword_1EDBBC780, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id SharingActivityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingActivityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7FF7D58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D7E05450(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_1D7FF7DF0()
{
  result = qword_1EDBB5F20;
  if (!qword_1EDBB5F20)
  {
    type metadata accessor for BlueprintInfiniteScrollRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB5F20);
  }

  return result;
}

uint64_t static MotionDisabledTransform.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
LABEL_16:
      sub_1D7F387E8(v4, v5);
      sub_1D7F38800(v2, v3);
      sub_1D7F38800(v4, v5);
LABEL_17:
      v14 = 0;
      return v14 & 1;
    }

    sub_1D7F38800(*a1, 0);
    sub_1D7F38800(v4, 0);
    if (*&v2 != *&v4)
    {
      goto LABEL_17;
    }

LABEL_14:
    v14 = 1;
    return v14 & 1;
  }

  if (v3 != 1)
  {
    if (v5 != 2 || v4 != 0)
    {
      goto LABEL_16;
    }

    sub_1D7F38800(*a1, 2);
    sub_1D7F38800(0, 2);
    goto LABEL_14;
  }

  if (v5 != 1)
  {

    goto LABEL_16;
  }

  v25 = *a2;
  v26 = v2;
  v6 = OUTLINED_FUNCTION_1_87();
  sub_1D7F387E8(v6, v7);
  v8 = OUTLINED_FUNCTION_0_110();
  sub_1D7F387E8(v8, v9);
  v10 = OUTLINED_FUNCTION_1_87();
  sub_1D7F387E8(v10, v11);
  v12 = OUTLINED_FUNCTION_0_110();
  sub_1D7F387E8(v12, v13);
  v14 = static MotionTransform.Transform.== infix(_:_:)(&v26, &v25);
  v15 = OUTLINED_FUNCTION_0_110();
  sub_1D7F38800(v15, v16);
  v17 = OUTLINED_FUNCTION_1_87();
  sub_1D7F38800(v17, v18);
  v19 = OUTLINED_FUNCTION_1_87();
  sub_1D7F38800(v19, v20);
  v21 = OUTLINED_FUNCTION_0_110();
  sub_1D7F38800(v21, v22);
  return v14 & 1;
}

unint64_t get_enum_tag_for_layout_string_5TeaUI15MotionTransformO0D0O(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaUI23MotionDisabledTransformO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void PageViewControllerParallaxing<>.parallaxSafeAreaInsets.getter()
{
  v1 = sub_1D7E62A24();
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      OUTLINED_FUNCTION_9_0();

      v5 = [v2 view];
      if (v5)
      {
        [v5 safeAreaInsets];
        OUTLINED_FUNCTION_2_76();

        v6.n128_f64[0] = OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_3_70(v6, v7, v8, v9, v10, v11, v12, v13);
        OUTLINED_FUNCTION_9_0();

LABEL_8:
        OUTLINED_FUNCTION_8_0();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  v14 = [v0 view];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  [v14 bounds];
  OUTLINED_FUNCTION_9_0();

  v16 = [v0 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];
    OUTLINED_FUNCTION_2_76();

    v18.n128_f64[0] = OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3_70(v18, v19, v20, v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_9_0();
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

id PageViewControllerParallaxing<>.parallaxSafeAreaLayoutGuide.getter()
{
  v1 = sub_1D7E62A24();
  if (v1)
  {
    v2 = v1;
    result = [v1 view];
    if (result)
    {
      v4 = result;
      v5 = [result safeAreaLayoutGuide];

LABEL_6:
      return v5;
    }

    __break(1u);
  }

  else
  {
    result = [v0 view];
    if (result)
    {
      v4 = result;
      v5 = [result safeAreaLayoutGuide];
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t PageViewControllerParallaxing<>.computeParallaxTranslateX(changedVisibilityFactor:scrollDirection:isPrimary:)(uint64_t a1, char a2, double a3)
{
  PageViewControllerParallaxing<>.parallaxSafeAreaInsets.getter();
  v7 = 120.0;
  if (v6 > 120.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 120.0;
  }

  v9 = fabs(v6);
  if (v6 > 120.0)
  {
    v7 = v9;
  }

  v10 = (v6 + v7) * a3 - v8;
  if (a1 == 1)
  {
    if ((a2 & 1) == 0)
    {
      v10 = v6;
    }

    return *&v10;
  }

  if (a1 == 2)
  {
    if (a2)
    {
      v10 = v6;
    }

    return *&v10;
  }

  return 0;
}

void *ComplexImageProcessorRequest.Mask.identifier.getter()
{
  sub_1D7FF8384(v0, v11);
  v1 = sub_1D7FF8384(v11, __src);
  OUTLINED_FUNCTION_1_88(v1, &qword_1EDBB2C60);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_2_77(v2, xmmword_1D819FAC0);
  memcpy(__dst, __src, sizeof(__dst));
  v3 = sub_1D7FF8398(__dst);
  v4 = sub_1D7EC5538(__dst);
  if (v3 == 1)
  {
    v5 = *v4;
    v6 = sub_1D8190DB4();
  }

  else
  {
    memcpy(v10, v4, 0x49uLL);
    GradientDescriptor.identifier.getter();
    v5 = v7;
    v6 = v8;
  }

  v2[3].n128_u64[0] = v5;
  v2[3].n128_u64[1] = v6;
  v10[0] = v2;
  OUTLINED_FUNCTION_0_111(v6, &qword_1EDBB3330);
  sub_1D7E1B6BC();
  OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_6_47();
  return v10;
}

void *ComplexImageProcessorRequest.Blend.identifier.getter()
{
  memcpy(__dst, v0, 0x94uLL);
  if (sub_1D7FF8EC4(__dst) == 1)
  {
    v1 = sub_1D7EC5558(__dst);
    v2 = *v1;
    OUTLINED_FUNCTION_1_88(v1, &qword_1EDBB2C60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D81A1B70;
    *(v3 + 32) = 0x726F6C6F63;
    *(v3 + 40) = 0xE500000000000000;
    v4 = [v2 description];
    v5 = sub_1D8190F14();
    v7 = v6;

    *(v3 + 48) = v5;
    *(v3 + 56) = v7;
    type metadata accessor for CGBlendMode();
    v8 = sub_1D8190F84();
    *(v3 + 64) = v8;
    *(v3 + 72) = v9;
    v23[0] = v3;
    OUTLINED_FUNCTION_0_111(v8, &qword_1EDBB3330);
    sub_1D7E1B6BC();
    v10 = v23;
  }

  else
  {
    v11 = sub_1D7EC5558(__dst);
    v12 = v11[36];
    OUTLINED_FUNCTION_1_88(v11, &qword_1EDBB2C60);
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_2_77(v13, xmmword_1D81A1B70);
    memcpy(v23, v11, sizeof(v23));
    LODWORD(v11) = sub_1D7FF8398(v23);
    v14 = sub_1D7EC5538(v23);
    if (v11 == 1)
    {
      v15 = *v14;
      v16 = sub_1D8190DB4();
    }

    else
    {
      memcpy(v22, v14, 0x49uLL);
      GradientDescriptor.identifier.getter();
      v15 = v17;
      v16 = v18;
    }

    v13[3].n128_u64[0] = v15;
    v13[3].n128_u64[1] = v16;
    LODWORD(v22[0]) = v12;
    type metadata accessor for CGBlendMode();
    v19 = sub_1D8190F84();
    v13[4].n128_u64[0] = v19;
    v13[4].n128_u64[1] = v20;
    v22[0] = v13;
    OUTLINED_FUNCTION_0_111(v19, &qword_1EDBB3330);
    sub_1D7E1B6BC();
    v10 = v22;
  }

  OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_6_47();
  return v10;
}

uint64_t *ComplexImageProcessorRequest.Instruction.identifier.getter()
{
  memcpy(__dst, v0, 0x94uLL);
  switch(sub_1D7FF8ED0(__dst))
  {
    case 1u:
      v49 = sub_1D7EC5564(__dst);
      memcpy(v64, v49, sizeof(v64));
      v43 = ComplexImageProcessorRequest.Blend.identifier.getter();
      goto LABEL_12;
    case 2u:
      v41 = sub_1D7EC5564(__dst);
      v42 = *(v41 + 16);
      *v64 = *v41;
      v64[16] = v42;
      v43 = CoreImageFilterDescriptor.identifier.getter();
LABEL_12:
      v48 = v43;
      break;
    case 3u:
      v44 = *(sub_1D7EC5564(__dst) + 16);
      strcpy(v64, "resize:");
      *&v64[8] = 0xE700000000000000;
      if (v44)
      {
        v45 = 0xE900000000000074;
      }

      else
      {
        v45 = 0xEA00000000006C6CLL;
      }

      MEMORY[0x1DA713260](0x6946746365707361, v45);

      MEMORY[0x1DA713260](58, 0xE100000000000000);
      v46 = sub_1D81915A4();
      MEMORY[0x1DA713260](v46);

      MEMORY[0x1DA713260](58, 0xE100000000000000);
      v47 = sub_1D81915A4();
      MEMORY[0x1DA713260](v47);

      v48 = *v64;
      break;
    case 4u:
      v8 = sub_1D7EC5564(__dst);
      v9 = *v8;
      v10 = *(v8 + 56);
      v11 = *(v8 + 72);
      v12 = *(v8 + 80);
      v13 = *(v8 + 88);
      *v64 = 0;
      *&v64[8] = 0xE000000000000000;
      v53 = *(v8 + 32);
      v57 = *(v8 + 16);
      sub_1D81921A4();
      MEMORY[0x1DA713260](0x3A646570706F7263, 0xE800000000000000);
      type metadata accessor for CGSize();
      OUTLINED_FUNCTION_4_49(v14, v15, v14, v16, v17, v18, v19, v20, v53, *(&v53 + 1), v57, *(&v57 + 1), v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], 0, 0xE000000000000000, *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), v9);
      OUTLINED_FUNCTION_3_71();
      *&v64[16] = v54;
      type metadata accessor for CGRect();
      OUTLINED_FUNCTION_4_49(v21, v22, v21, v23, v24, v25, v26, v27, v54, *(&v54 + 1), v58, v60, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], __src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), v58);
      OUTLINED_FUNCTION_3_71();
      v28 = sub_1D81915A4();
      MEMORY[0x1DA713260](v28);

      OUTLINED_FUNCTION_3_71();
      type metadata accessor for UIRectCorner();
      OUTLINED_FUNCTION_4_49(v29, v30, v29, v31, v32, v33, v34, v35, v55, v56, v59, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], __src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), v10);
      OUTLINED_FUNCTION_3_71();
      v36 = sub_1D81915A4();
      MEMORY[0x1DA713260](v36);

      OUTLINED_FUNCTION_3_71();
      if (v12)
      {
        *v64 = v11;
        *&v64[8] = v12;
        v64[16] = v13;
        v38 = ImageBorder.cacheIdentifier.getter(v37);
        v40 = v39;
      }

      else
      {
        v40 = 0xE300000000000000;
        v38 = 7104878;
      }

      MEMORY[0x1DA713260](v38, v40);

      MEMORY[0x1DA713260](41, 0xE100000000000000);
      v48 = *&__src[0];
      break;
    default:
      v1 = sub_1D7EC5564(__dst);
      v2 = sub_1D7FF8384(v1, __src);
      OUTLINED_FUNCTION_1_88(v2, &qword_1EDBB2C60);
      v3 = swift_allocObject();
      OUTLINED_FUNCTION_2_77(v3, xmmword_1D819FAC0);
      memcpy(v64, __src, 0x90uLL);
      v4 = sub_1D7FF8398(v64);
      v5 = sub_1D7EC5538(v64);
      if (v4 == 1)
      {
        v6 = *v5;
        v7 = sub_1D8190DB4();
      }

      else
      {
        memcpy(v62, v5, 0x49uLL);
        GradientDescriptor.identifier.getter();
        v6 = v50;
        v7 = v51;
      }

      v3[3].n128_u64[0] = v6;
      v3[3].n128_u64[1] = v7;
      v62[0] = v3;
      OUTLINED_FUNCTION_0_111(v7, &qword_1EDBB3330);
      sub_1D7E1B6BC();
      v48 = v62;
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_6_47();
      break;
  }

  return v48;
}

uint64_t ComplexImageProcessorRequest.cacheIdentifier.getter()
{
  v1 = *(v0 + 24);
  sub_1D8190DB4();
  return v1;
}

uint64_t ComplexImageProcessorRequest.__allocating_init(assetHandle:instructions:size:imageRenderingMode:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = swift_allocObject();
  ComplexImageProcessorRequest.init(assetHandle:instructions:size:imageRenderingMode:)(a1, a2, a3, a4, a5 & 1, a6);
  return v12;
}

uint64_t ComplexImageProcessorRequest.init(assetHandle:instructions:size:imageRenderingMode:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  sub_1D7F7A9E0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D819FAB0;
  *(inited + 32) = 0x6567616D69;
  *(inited + 40) = 0xE500000000000000;
  sub_1D7E0E768(a1, inited + 48);
  sub_1D7F7AAA0();
  *(v6 + 16) = sub_1D8190D94();
  sub_1D7E0E768(a1, v6 + 40);
  *(v6 + 80) = a2;
  a5 &= 1u;
  v14 = sub_1D8190DB4();
  v15 = sub_1D7FF8B38(v14, a3, a4, a5, a1, a6);
  v17 = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v6 + 24) = v15;
  *(v6 + 32) = v17;
  *(v6 + 88) = a3;
  *(v6 + 96) = a4;
  *(v6 + 104) = a5;
  *(v6 + 112) = a6;
  return v6;
}

uint64_t sub_1D7FF8B38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D7F08E34(0, v8, 0);
    v10 = (a1 + 32);
    do
    {
      memcpy(__dst, v10, 0x94uLL);
      v11 = ComplexImageProcessorRequest.Instruction.identifier.getter();
      v13 = v12;
      v15 = *(v24 + 16);
      v14 = *(v24 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D7F08E34(v14 > 1, v15 + 1, 1);
      }

      *(v24 + 16) = v15 + 1;
      v16 = v24 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v10 += 152;
      --v8;
    }

    while (v8);
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v17 = a5[3];
  v18 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v17);
  v19 = (*(v18 + 32))(v17, v18);
  MEMORY[0x1DA713260](v19);

  if ((a4 & 1) == 0)
  {
    MEMORY[0x1DA713260](14906, 0xE200000000000000);
    type metadata accessor for CGSize();
    sub_1D8192334();
  }

  MEMORY[0x1DA713260](14906, 0xE200000000000000);
  type metadata accessor for RenderingMode();
  sub_1D8192334();
  MEMORY[0x1DA713260](14906, 0xE200000000000000);
  sub_1D7E0E81C(0, &qword_1EDBB3330, MEMORY[0x1E69E62F8]);
  sub_1D7E1B6BC();
  v20 = sub_1D8190E94();
  v22 = v21;

  MEMORY[0x1DA713260](v20, v22);

  return __dst[0];
}

uint64_t ComplexImageProcessorRequest.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return v0;
}

uint64_t ComplexImageProcessorRequest.__deallocating_deinit()
{
  ComplexImageProcessorRequest.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7FF8F44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D7FF8F8C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 112) = 0;
      *(a1 + 120) = 2 * -a2;
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI25CoreImageFilterDescriptorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D7FF9090(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 148))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D7FF90D8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 144) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 148) = 1;
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
      result = 0.0;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 112) = 0;
      *(a1 + 120) = 2 * -a2;
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      return result;
    }

    *(a1 + 148) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t BlueprintResponderBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7FF923C()
{
  result = qword_1ECA0F290;
  if (!qword_1ECA0F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F290);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintResponderBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t CardViewScrollViewCoordinatorState.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7FF93F8()
{
  result = qword_1ECA0F298;
  if (!qword_1ECA0F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F298);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CardViewScrollViewCoordinatorState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t ToolbarItemVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7FF95C4()
{
  result = qword_1ECA0F2A0;
  if (!qword_1ECA0F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F2A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolbarItemVisibility(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

char *sub_1D7FF96F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC5TeaUI22TextFieldTableViewCell_onChange];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC5TeaUI22TextFieldTableViewCell_textField;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  if (a3)
  {
    sub_1D8190DB4();
    v7 = sub_1D8190EE4();
  }

  else
  {
    v7 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for TextFieldTableViewCell();
  v8 = objc_msgSendSuper2(&v16, sel_initWithStyle_reuseIdentifier_, 1000, v7);

  v9 = v8;
  result = [v9 ts_editableTextField];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  [result setDelegate_];

  result = OUTLINED_FUNCTION_0_112();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  [result setTextAlignment_];

  result = OUTLINED_FUNCTION_0_112();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  [result setClearButtonMode_];

  result = OUTLINED_FUNCTION_0_112();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  [result setAutocorrectionType_];

  result = OUTLINED_FUNCTION_0_112();
  if (result)
  {
    v15 = result;

    [v15 setAutocapitalizationType_];

    [v9 setAccessoryView_];
    return v9;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_1D7FF991C()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI22TextFieldTableViewCell_onChange);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC5TeaUI22TextFieldTableViewCell_textField;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  sub_1D81923A4();
  __break(1u);
}

uint64_t sub_1D7FF99CC(void *a1)
{
  result = sub_1D7FC3208(a1);
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + OBJC_IVAR____TtC5TeaUI22TextFieldTableViewCell_onChange);
    if (v5)
    {
      v6 = result;
      v7 = *(v1 + OBJC_IVAR____TtC5TeaUI22TextFieldTableViewCell_onChange + 8);

      v5(v6, v4);
      sub_1D7E418F4(v5, v7);
    }
  }

  return result;
}

id sub_1D7FF9AC8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TextFieldTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1D7FF9BAC()
{
  result = [*(v0 + OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_mainViewController) view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1D7FF9BE8(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_onboardingViewController;
  *&v3[OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_onboardingViewController] = 0;
  v3[OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_hasSaveToolbar] = 0;
  *&v3[v8] = a1;
  *&v3[OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_mainViewController] = a2;
  v3[OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_shouldHideToolbar] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D7FF9C78()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_onboardingViewController) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_hasSaveToolbar) = 0;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D7FF9DCC()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_mainViewController];
  [v0 addChildViewController_];
  v2 = OUTLINED_FUNCTION_88();
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = OUTLINED_FUNCTION_3_18();
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = OUTLINED_FUNCTION_3_18();
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  v8 = OUTLINED_FUNCTION_88();
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  [v8 bounds];
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_3_2(v7, sel_setFrame_);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    [v10 ts:0 columnSeparatorsExtendToTitlebar:?];
  }

  v11 = *&v0[OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_onboardingViewController];
  if (v11)
  {
    v12 = v11;
    [v0 addChildViewController_];
    v13 = OUTLINED_FUNCTION_88();
    if (v13)
    {
      v14 = v13;
      v15 = OUTLINED_FUNCTION_3_18();
      if (v15)
      {
        v16 = v15;
        [v14 addSubview_];

        [v12 didMoveToParentViewController_];
        v17 = OUTLINED_FUNCTION_3_18();
        if (v17)
        {
          v18 = v17;
          v19 = OUTLINED_FUNCTION_88();
          if (v19)
          {
            v20 = v19;
            [v19 bounds];
            OUTLINED_FUNCTION_9_0();

            OUTLINED_FUNCTION_3_2(v18, sel_setFrame_);
            return;
          }

LABEL_21:
          __break(1u);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }
}

void sub_1D7FFA060()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_onboardingViewController];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = [v1 view];
  if (!v2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    OUTLINED_FUNCTION_9_0();

    OUTLINED_FUNCTION_3_2(v3, sel_setFrame_);
LABEL_5:
    v6 = [*&v0[OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_mainViewController] view];
    if (v6)
    {
      v7 = v6;
      v8 = [v0 view];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];
        OUTLINED_FUNCTION_9_0();

        OUTLINED_FUNCTION_3_2(v7, sel_setFrame_);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

void *sub_1D7FFA1E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_onboardingViewController);
  v2 = v1;
  if (!v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_mainViewController);
    v3 = v2;
  }

  v4 = v1;
  return v2;
}

uint64_t sub_1D7FFA294()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_onboardingViewController);
  sub_1D7E49240();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D81A50A0;
  if (v1)
  {
    *(v2 + 32) = v1;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_mainViewController);
    *(v2 + 32) = v3;
    v4 = v3;
  }

  v5 = v1;
  return v2;
}

unint64_t sub_1D7FFA334()
{
  result = qword_1ECA0F2E8;
  if (!qword_1ECA0F2E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0F2E8);
  }

  return result;
}

id sub_1D7FFA390()
{
  result = OUTLINED_FUNCTION_88();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = result;
  v3 = [result snapshotViewAfterScreenUpdates_];

  if (!v3)
  {
    goto LABEL_6;
  }

  result = OUTLINED_FUNCTION_88();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  v5 = [result window];

  if (v5)
  {
    [v5 addSubview_];
  }

LABEL_6:
  v6 = OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_onboardingViewController;
  v7 = *&v0[OBJC_IVAR____TtC5TeaUI26BootstrapperViewController_onboardingViewController];
  if (!v7)
  {
    goto LABEL_11;
  }

  [v7 willMoveToParentViewController_];
  v8 = *&v0[v6];
  if (!v8)
  {
    goto LABEL_11;
  }

  result = [v8 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = result;
  [result removeFromSuperview];

  v10 = *&v0[v6];
  if (!v10)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  [v10 removeFromParentViewController];
  v11 = *&v0[v6];
LABEL_12:
  *&v0[v6] = 0;

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    [v12 ts:1 columnSeparatorsExtendToTitlebar:?];
  }

  [v0 setNeedsStatusBarAppearanceUpdate];
  return v3;
}

uint64_t initializeBufferWithCopyOfBuffer for MotionTransform(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for GradientDescriptor.Direction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GradientDescriptor.Direction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1D7FFA5B4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t CommandCenterWithTracker.__allocating_init(commandCenter:tracker:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1D7E05450(a3, v6 + 32);
  return v6;
}

double CommandCenterWithTracker.execute<A>(command:context:location:sourceView:sourceRect:)(uint64_t *a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v7 = *a1;
  HIBYTE(v36) = *a3;
  sub_1D7E0E768(v4 + 32, v32);
  type metadata accessor for CommandExecutionSource();
  v8 = swift_allocObject();
  v10 = v33;
  v9 = v34;
  __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  (*(v14 + 16))(v13 - v12);
  v15 = a4;
  OUTLINED_FUNCTION_7_37();
  sub_1D7E3B938(v16, v17, v18, v19, v20, v21, v22, v8, v10, v9, v28, a2, v31, v32[0], v32[1], v32[2], v33, v34, v35, v36, v37, v38);
  v24 = v23;
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v25 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  (*(v25 + 8))(a1, v30, v24, *(v7 + 88), ObjectType, v25);

  return result;
}

void CommandCenterWithTracker.canExecute<A>(command:context:location:)()
{
  OUTLINED_FUNCTION_144();
  v2 = v1;
  v4 = v3;
  v5 = *v3;
  HIBYTE(v28) = *v6;
  sub_1D7E0E768(v0 + 32, v25);
  v29 = 0u;
  v30 = 0u;
  LOBYTE(v31) = 1;
  type metadata accessor for CommandExecutionSource();
  v7 = swift_allocObject();
  v8 = v26;
  v9 = v27;
  __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  (*(v13 + 16))(v12 - v11);
  OUTLINED_FUNCTION_7_37();
  sub_1D7E3B938(v14, v15, v16, v17, v18, v19, v20, v7, v8, v9, v25[0], v25[1], v25[2], v26, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, v32);
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v23 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v23 + 120))(v4, v2, v22, *(v5 + 88), ObjectType, v23);

  OUTLINED_FUNCTION_139();
}

double CommandCenterWithTracker.canExecute<A>(command:context:location:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_78();
  HIBYTE(v29) = *v6;
  sub_1D7E0E768(v5 + 32, v26);
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  type metadata accessor for CommandExecutionSource();
  v7 = swift_allocObject();
  v9 = v27;
  v8 = v28;
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  (*(v13 + 16))(v12 - v11);
  OUTLINED_FUNCTION_7_37();
  sub_1D7E3B938(v14, v15, v16, v17, v18, v19, v20, v7, v9, v8, v24, a5, v26[0], v26[1], v26[2], v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1));
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  swift_getObjectType();
  OUTLINED_FUNCTION_4_50();
  v21 = OUTLINED_FUNCTION_6_48();
  v22(v21);

  return result;
}

uint64_t CommandCenterWithTracker.execute<A>(command:context:source:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  return (*(v8 + 8))(a1, a2, a3, *(v7 + 88), ObjectType, v8);
}

void CommandCenterWithTracker.canExecute<A>(command:context:source:)()
{
  OUTLINED_FUNCTION_144();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v5;
  v8 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v8 + 120))(v6, v4, v2, *(v7 + 88), ObjectType, v8);
  OUTLINED_FUNCTION_139();
}

uint64_t CommandCenterWithTracker.canExecute<A>(command:context:source:closure:)()
{
  OUTLINED_FUNCTION_0_113();
  swift_getObjectType();
  OUTLINED_FUNCTION_3_72();
  v0 = OUTLINED_FUNCTION_1_89();
  return v1(v0);
}

void CommandCenterWithTracker.add<A>(_:for:with:tracker:closure:)()
{
  OUTLINED_FUNCTION_30_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  swift_getObjectType();
  OUTLINED_FUNCTION_3_72();
  v13(v11, v9, v7, v5, v3, v1, *(v12 + 88));
  OUTLINED_FUNCTION_29();
}

void CommandCenterWithTracker.state<A, B>(for:context:)()
{
  OUTLINED_FUNCTION_144();
  v2 = v1;
  v4 = v3;
  v5 = *v3;
  v6 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v6 + 80))(v4, v2, v5[17], v5[18], v5[19], ObjectType, v6);
  OUTLINED_FUNCTION_139();
}

void CommandCenterWithTracker.state<A, B>(for:context:closure:)()
{
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_0_113();
  swift_getObjectType();
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_3_72();
  v0 = OUTLINED_FUNCTION_1_89();
  v1(v0);
  OUTLINED_FUNCTION_29();
}

uint64_t CommandCenterWithTracker.remove(_:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 24))(a1, ObjectType, v3);
}

uint64_t CommandCenterWithTracker.remove<A>(_:for:)(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v6 + 32))(a1, a2, *(v5 + 88), ObjectType, v6);
}

void CommandCenterWithTracker.register<A, B>(handler:for:)()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_5_42();
  OUTLINED_FUNCTION_4_50();
  v5(v3, v2, *(v4 + 88), v1, v0);
  OUTLINED_FUNCTION_139();
}

void CommandCenterWithTracker.register<A, B, C>(handler:for:)()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_5_42();
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_4_50();
  v2(v1, v0);
  OUTLINED_FUNCTION_139();
}

uint64_t CommandCenterWithTracker.registerHandler<A>(for:handle:canHandle:)()
{
  OUTLINED_FUNCTION_0_113();
  swift_getObjectType();
  OUTLINED_FUNCTION_3_72();
  v0 = OUTLINED_FUNCTION_1_89();
  return v1(v0);
}

uint64_t CommandCenterWithTracker.registerHandler<A, B>(for:handle:canHandle:determineState:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a1;
  v15 = *(v7 + 24);
  ObjectType = swift_getObjectType();
  return (*(v15 + 64))(a1, a2, a3, a4, a5, a6, a7, v14[17], v14[18], v14[19], ObjectType, v15);
}

uint64_t CommandCenterWithTracker.context<A>(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v4 + 72))(a1, *(v3 + 88), ObjectType, v4);
}

void CommandCenterWithTracker.addExecuteObserver<A>(for:closure:)()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_2_78();
  swift_getObjectType();
  OUTLINED_FUNCTION_4_50();
  v0 = OUTLINED_FUNCTION_6_48();
  v1(v0);
  OUTLINED_FUNCTION_139();
}

void CommandCenterWithTracker.addExecuteObserver<A, B>(for:closure:)()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_2_78();
  swift_getObjectType();
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_4_50();
  v0 = OUTLINED_FUNCTION_6_48();
  v1(v0);
  OUTLINED_FUNCTION_139();
}

void CommandCenterWithTracker.addStateObserver<A, B>(for:context:closure:)()
{
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_0_113();
  swift_getObjectType();
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_3_72();
  v0 = OUTLINED_FUNCTION_1_89();
  v1(v0);
  OUTLINED_FUNCTION_29();
}

Swift::Void __swiftcall CommandCenterWithTracker.invalidateCommands()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 136))(ObjectType, v1);
}

uint64_t CommandCenterWithTracker.invalidate<A>(command:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v4 + 144))(a1, *(v3 + 88), ObjectType, v4);
}

Swift::Void __swiftcall CommandCenterWithTracker.cleanup()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 152))(ObjectType, v1);
}

uint64_t CommandCenterWithTracker.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  return v0;
}

uint64_t CommandCenterWithTracker.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t Then.init(block:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_1D7FFB658(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = *(a3 + 16);
  if (v7)
  {
    OUTLINED_FUNCTION_102_0();
    v8 = *(sub_1D818F824() - 8);
    v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(v20, v9, &v19);
      if (v5)
      {
        break;
      }

      v5 = 0;
      v11 = sub_1D8192274();
      OUTLINED_FUNCTION_135_1(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20[0], v20[1], v20[2]);
      OUTLINED_FUNCTION_46();
      sub_1D81922C4();
      sub_1D8192284();
      v9 += v10;
      if (!--v7)
      {
        return;
      }
    }
  }
}

void sub_1D7FFB7D4(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = v4;
  v8 = *(a3 + 16);
  if (v8)
  {
    OUTLINED_FUNCTION_102_0();
    v10 = *(a4(0) - 8);
    v11 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    while (1)
    {
      a1(v22, v11);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v13 = sub_1D8192274();
      OUTLINED_FUNCTION_135_1(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22[0], v22[1], v22[2]);
      OUTLINED_FUNCTION_46();
      sub_1D81922C4();
      sub_1D8192284();
      v11 += v12;
      if (!--v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D7FFB8F8(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D7F0908C(0, v5, 0);
    v8 = v17;
    for (i = (a3 + 32); ; i += 104)
    {
      memcpy(__dst, i, 0x68uLL);
      memcpy(__src, i, sizeof(__src));
      sub_1D7FF3B0C(__dst, v13);
      a1(v15, __src);
      if (v4)
      {
        break;
      }

      v4 = 0;
      memcpy(v13, __src, sizeof(v13));
      sub_1D800884C(v13);
      memcpy(v12, v15, sizeof(v12));
      v17 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D7F0908C(v10 > 1, v11 + 1, 1);
        v8 = v17;
      }

      *(v8 + 16) = v11 + 1;
      memcpy((v8 + 72 * v11 + 32), v12, 0x48uLL);
      if (!--v5)
      {
        return;
      }
    }

    memcpy(v13, __src, sizeof(v13));
    sub_1D800884C(v13);

    __break(1u);
  }
}

void sub_1D7FFBA7C(void (*a1)(void *__return_ptr, _OWORD *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a3;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1D7F090CC(0, v3, 0);
    v39 = v38;
    v5 = sub_1D7F21730();
    v7 = v6;
    v9 = v8;
    v10 = 0;
    v33 = v4 + 56;
    v29 = v4 + 64;
    v31 = v4;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v4 + 32))
      {
        v11 = v5 >> 6;
        if ((*(v33 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_28;
        }

        v32 = v10;
        v12 = (*(v4 + 48) + 48 * v5);
        v13 = v12[1];
        v36[0] = *v12;
        v36[1] = v13;
        v36[2] = v12[2];
        a1(__src, v36);
        if (v34)
        {
          goto LABEL_32;
        }

        memcpy(__dst, __src, sizeof(__dst));
        v14 = v39;
        v38 = v39;
        v16 = *(v39 + 16);
        v15 = *(v39 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D7F090CC(v15 > 1, v16 + 1, 1);
          v14 = v38;
        }

        *(v14 + 16) = v16 + 1;
        v39 = v14;
        memcpy((v14 + 568 * v16 + 32), __dst, 0x235uLL);
        if (v9)
        {
          goto LABEL_33;
        }

        v4 = v31;
        v17 = 1 << *(v31 + 32);
        if (v5 >= v17)
        {
          goto LABEL_29;
        }

        v18 = *(v33 + 8 * v11);
        if ((v18 & (1 << v5)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v31 + 36) != v7)
        {
          goto LABEL_31;
        }

        v19 = v18 & (-2 << (v5 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v11 << 6;
          v21 = v11 + 1;
          v22 = (v29 + 8 * v11);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              v25 = OUTLINED_FUNCTION_73();
              sub_1D7E452C4(v25, v26, 0);
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_20;
            }
          }

          v27 = OUTLINED_FUNCTION_73();
          sub_1D7E452C4(v27, v28, 0);
LABEL_20:
          v4 = v31;
        }

        v10 = v32 + 1;
        if (v32 + 1 == v3)
        {
          return;
        }

        v9 = 0;
        v7 = *(v4 + 36);
        v5 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D7FFBD2C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t BlueprintCollectionViewDelegate.delegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0(v0);
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t BlueprintCollectionViewDelegate.delegate.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

uint64_t sub_1D7FFBF14@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t BlueprintCollectionViewDelegate.keyCommandManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0(v0);
  return swift_weakLoadStrong();
}

uint64_t BlueprintCollectionViewDelegate.keyCommandManager.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_weakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

uint64_t sub_1D7FFC0D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + *((*MEMORY[0x1E69E7D40] & **a1) + 0xC0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7FFC148(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + *((*MEMORY[0x1E69E7D40] & **a2) + 0xC0);
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t BlueprintCollectionViewDelegate.selectionProvider.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4(v0 + *(v1 + 192), v3);
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t BlueprintCollectionViewDelegate.selectionProvider.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 1);
  v3[3] = Strong;
  v3[4] = v7;
  return OUTLINED_FUNCTION_20_10();
}

uint64_t sub_1D7FFC2D0@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t BlueprintCollectionViewDelegate.parentViewController.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0(v0);
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t BlueprintCollectionViewDelegate.parentViewController.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

double BlueprintCollectionViewDelegate.pluginManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0(v0);

  return result;
}

uint64_t BlueprintCollectionViewDelegate.pluginManager.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

double BlueprintCollectionViewDelegate.infiniteScrollManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0(v0);

  return result;
}

double sub_1D7FFC58C@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x1E69E7D40] & **a1) + 0xD8);
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t BlueprintCollectionViewDelegate.infiniteScrollManager.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

id sub_1D7FFC6B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x1E69E7D40] & **a1) + 0xE0);
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t BlueprintCollectionViewDelegate.viewportMonitor.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t sub_1D7FFC7E4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

double BlueprintCollectionViewDelegate.dragReorderDelegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4(v0 + *(v1 + 232), v3);
  swift_unknownObjectRetain();
  return result;
}

uint64_t BlueprintCollectionViewDelegate.dragReorderDelegate.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

double BlueprintCollectionViewDelegate.scrollTriggerDelta.getter()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v1 + 240);
  OUTLINED_FUNCTION_1_0(v3);
  return *(v0 + v2);
}

uint64_t BlueprintCollectionViewDelegate.scrollTriggerDelta.setter(double a1)
{
  OUTLINED_FUNCTION_3_7();
  v4 = *(v3 + 240);
  result = OUTLINED_FUNCTION_56(v1 + v4, v6);
  *(v1 + v4) = a1;
  return result;
}

uint64_t BlueprintCollectionViewDelegate.scrollTriggerDelta.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

char *BlueprintCollectionViewDelegate.__allocating_init(blueprintProvider:blueprintLayoutProvider:blueprintImpressionManager:commandCenter:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = objc_allocWithZone(v6);
  v12 = OUTLINED_FUNCTION_74();
  return BlueprintCollectionViewDelegate.init(blueprintProvider:blueprintLayoutProvider:blueprintImpressionManager:commandCenter:tracker:)(v12, v13, a3, a4, a5, a6);
}

void BlueprintCollectionViewDelegate.__allocating_init(blueprintProvider:blueprintLayoutProvider:blueprintImpressionManager:commandCenter:tracker:keyboardInputMonitor:prefetcher:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  objc_allocWithZone(v0);
  v13 = OUTLINED_FUNCTION_46();
  BlueprintCollectionViewDelegate.init(blueprintProvider:blueprintLayoutProvider:blueprintImpressionManager:commandCenter:tracker:keyboardInputMonitor:prefetcher:)(v13, v14, v12, v10, v8, v6, v4, v2);
  OUTLINED_FUNCTION_100();
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.viewWillDisappear()()
{
  OUTLINED_FUNCTION_10_34();
  *(v0 + *(v1 + 304)) = 3;
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_1_0(v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong childViewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
    OUTLINED_FUNCTION_117_1();
    v6 = sub_1D8191314();

    v7 = sub_1D7E36AB8(v6);
    if (v7)
    {
      v8 = v7;
      if (v7 < 1)
      {
        __break(1u);
        return;
      }

      v9 = 0;
      OUTLINED_FUNCTION_7_38();
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = OUTLINED_FUNCTION_54_1();
          v11 = MEMORY[0x1DA714420](v10);
        }

        else
        {
          v11 = *(v6 + 8 * v9 + 32);
        }

        v12 = v11;
        ViewControllerTransitionManager.state(viewController:)(v11);
        if (v13 == 1)
        {
          v13 = 1;
          ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v12, &v13, 0);
        }

        ++v9;
      }

      while (v8 != v9);
    }
  }
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.viewDidDisappear()()
{
  OUTLINED_FUNCTION_10_34();
  *(v0 + *(v1 + 304)) = 4;
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_1_0(v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong childViewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258);
    OUTLINED_FUNCTION_117_1();
    v6 = sub_1D8191314();

    v7 = sub_1D7E36AB8(v6);
    if (!v7)
    {
LABEL_11:

      return;
    }

    v8 = v7;
    if (v7 >= 1)
    {
      v9 = 0;
      OUTLINED_FUNCTION_7_38();
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = OUTLINED_FUNCTION_54_1();
          v11 = MEMORY[0x1DA714420](v10);
        }

        else
        {
          v11 = *(v6 + 8 * v9 + 32);
        }

        v12 = v11;
        ViewControllerTransitionManager.state(viewController:)(v11);
        if (v14 == 2)
        {
          ViewControllerTransitionManager.endTransition(viewController:)(v12);
        }

        ++v9;
      }

      while (v8 != v9);
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_38();
    OUTLINED_FUNCTION_138_1();
    OUTLINED_FUNCTION_55_7();
    v13();
  }
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.windowWillBecomeForeground()()
{
  OUTLINED_FUNCTION_3_7();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D7E499B0(Strong, 5);
  }
}

void BlueprintCollectionViewDelegate.collectionView(_:canFocusItemAt:)()
{
  OUTLINED_FUNCTION_120();
  v20 = v1;
  v19 = v2;
  v3 = OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_67();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for BlueprintItem(0, v3, AssociatedConformanceWitness, v6);
  OUTLINED_FUNCTION_50(v7);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_10_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_67();
  v22[0] = AssociatedTypeWitness;
  v22[1] = v3;
  v22[2] = swift_getAssociatedConformanceWitness();
  v22[3] = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_51();
  v11 = OUTLINED_FUNCTION_68_0();
  BlueprintProviderType.blueprint.getter(v11, v12);
  Blueprint.subscript.getter();
  v13 = OUTLINED_FUNCTION_73();
  v14(v13);
  v15 = OUTLINED_FUNCTION_91_2();
  v16(v15, v0, v3);
  sub_1D7E0631C(0, &qword_1ECA0F358, &protocol descriptor for Focusable);
  OUTLINED_FUNCTION_92();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_7();
    v17 = OUTLINED_FUNCTION_3_1();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_1D7E25DBC(&v21, &unk_1ECA0F360, &qword_1ECA0F358, &protocol descriptor for Focusable);
    BlueprintCollectionViewDelegate.collectionView(_:shouldSelectItemAt:)(v19, v20);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t BlueprintCollectionViewDelegate.collectionView(_:shouldSelectItemAt:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v77 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  v78 = v10;
  OUTLINED_FUNCTION_54_1();
  swift_getAssociatedConformanceWitness();
  v11 = OUTLINED_FUNCTION_97_1();
  type metadata accessor for BlueprintItem(v11, AssociatedTypeWitness, v2, v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v76 = v14;
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_65();
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_81();
  *&v86 = v15;
  *(&v86 + 1) = AssociatedTypeWitness;
  v79 = AssociatedTypeWitness;
  *&v87 = swift_getAssociatedConformanceWitness();
  *(&v87 + 1) = v2;
  type metadata accessor for Blueprint(0, &v86);
  OUTLINED_FUNCTION_9();
  v17 = v16;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_134_1();
  Blueprint.contains(indexPath:)();
  v20 = v19;
  v21 = *(v17 + 8);
  v22 = OUTLINED_FUNCTION_118_1();
  v21(v22);
  if ((v20 & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_134_1();
  Blueprint.subscript.getter();
  v23 = OUTLINED_FUNCTION_118_1();
  v21(v23);
  (*(v77 + 16))(v78, v76, v79);
  v24 = sub_1D7E0631C(0, qword_1EDBBC020, &protocol descriptor for Selectable);
  if (!OUTLINED_FUNCTION_141_0(&v86, v78, v25, v24))
  {
    v40 = OUTLINED_FUNCTION_15_20();
    v41(v40);
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    sub_1D7E25DBC(&v86, &qword_1ECA0F370, qword_1EDBBC020, &protocol descriptor for Selectable);
LABEL_25:
    v33 = 0;
    return v33 & 1;
  }

  sub_1D7E05450(&v86, v89);
  OUTLINED_FUNCTION_94_0();
  v26 = OUTLINED_FUNCTION_11_0();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v26, v27);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_65();
  v28 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_65();
  v29 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_64();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_85();
  v31 = swift_getAssociatedConformanceWitness();
  *&v82 = v28;
  *(&v82 + 1) = v29;
  v83 = AssociatedConformanceWitness;
  v84 = v31;
  v32 = type metadata accessor for BlueprintLayout(0, &v82);
  v33 = sub_1D81138E8(a2, v32);
  OUTLINED_FUNCTION_3_0();
  (*(v34 + 8))(&v86, v32);
  v35 = v89[4];
  __swift_project_boxed_opaque_existential_1(v89, v89[3]);
  v36 = OUTLINED_FUNCTION_6_1();
  v37(v36, v35);
  if (!v85)
  {
    v42 = sub_1D818E8E4();
    v43 = [a1 cellForItemAtIndexPath_];

    if (!v43)
    {
      v61 = OUTLINED_FUNCTION_15_20();
      v62(v61);
LABEL_24:
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      goto LABEL_25;
    }

    v81 = v43;
    sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8);
    sub_1D7E0631C(0, qword_1EDBB8580, &protocol descriptor for ViewControllerBackable);
    v44 = v43;
    if (OUTLINED_FUNCTION_100_1(&v82, &v81))
    {
      sub_1D7E05450(&v82, &v86);
      __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
      OUTLINED_FUNCTION_82_2();
      v45 = OUTLINED_FUNCTION_15_5();
      v47 = v46(v45);
      if (v47)
      {

        [v44 bounds];
        [v44 convertRect:a1 toCoordinateSpace:?];
        OUTLINED_FUNCTION_9_0();
        [a1 bounds];
        v91.origin.x = v3;
        v91.origin.y = v4;
        v91.size.width = v5;
        v91.size.height = v6;
        v48 = CGRectIntersectsRect(v90, v91);

        v49 = OUTLINED_FUNCTION_15_20();
        v50(v49);
        __swift_destroy_boxed_opaque_existential_1Tm(&v86);
        if (!v48)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v89);
          v33 = 1;
          return v33 & 1;
        }
      }

      else
      {

        v73 = OUTLINED_FUNCTION_15_20();
        v74(v73);
        __swift_destroy_boxed_opaque_existential_1Tm(&v86);
      }

      goto LABEL_24;
    }

    v65 = OUTLINED_FUNCTION_15_20();
    v66(v65);

    OUTLINED_FUNCTION_85_3();
    v67 = &qword_1EDBB8578;
    v68 = qword_1EDBB8580;
    v69 = &protocol descriptor for ViewControllerBackable;
LABEL_23:
    sub_1D7E25DBC(&v82, v67, v68, v69);
    goto LABEL_24;
  }

  if (v85 != 1)
  {
    v51 = sub_1D818E8E4();
    v52 = [a1 cellForItemAtIndexPath_];

    if (v52)
    {
      v81 = v52;
      sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8);
      v53 = sub_1D7E0631C(0, qword_1EDBBB350, &protocol descriptor for ViewSelectable);
      if (OUTLINED_FUNCTION_141_0(&v82, &v81, v54, v53))
      {
        if (v84)
        {
          sub_1D7E05450(&v82, &v86);
          v55 = v88;
          __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
          v56 = OUTLINED_FUNCTION_6_1();
          v58 = v57(v56, v55);
          v59 = OUTLINED_FUNCTION_15_20();
          v60(v59);
          v33 &= v58;
          __swift_destroy_boxed_opaque_existential_1Tm(&v86);
          goto LABEL_6;
        }
      }

      else
      {
        OUTLINED_FUNCTION_85_3();
      }

      v70 = OUTLINED_FUNCTION_15_20();
      v71(v70);
    }

    else
    {
      v63 = OUTLINED_FUNCTION_15_20();
      v64(v63);
      OUTLINED_FUNCTION_85_3();
    }

    v67 = &unk_1EDBBB340;
    v68 = qword_1EDBBB350;
    v69 = &protocol descriptor for ViewSelectable;
    goto LABEL_23;
  }

  v38 = OUTLINED_FUNCTION_15_20();
  v39(v38);
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  return v33 & 1;
}

void BlueprintCollectionViewDelegate.collectionView(_:didSelectItemAt:)()
{
  OUTLINED_FUNCTION_120();
  v3 = v0;
  v159 = v4;
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v147 = *MEMORY[0x1E69E7D40] & *v0;
  sub_1D7EA0824(0);
  v148 = v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_2();
  v10 = OUTLINED_FUNCTION_38_0(v9);
  sub_1D7E3D564(v10);
  v12 = OUTLINED_FUNCTION_50(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_38_0(v16);
  v156 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v151 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_2();
  v142 = v19;
  v20 = *((v6 & v5) + 0x68);
  v21 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_81();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_94();
  v154 = v24;
  OUTLINED_FUNCTION_81();
  v25 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_65();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_46();
  v170 = v25;
  v171 = AssociatedTypeWitness;
  v172 = AssociatedConformanceWitness;
  v173 = swift_getAssociatedConformanceWitness();
  v27 = OUTLINED_FUNCTION_118_0();
  v29 = type metadata accessor for Blueprint(v27, v28);
  OUTLINED_FUNCTION_9();
  v31 = v30;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_60_0();
  v34 = type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, v173, v33);
  OUTLINED_FUNCTION_9();
  v152 = v35;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_51();
  v145 = v21;
  v146 = v20;
  BlueprintProviderType.blueprint.getter(v21, v20);
  v37 = v159;
  OUTLINED_FUNCTION_106_1();
  Blueprint.subscript.getter();
  v38 = *(v31 + 8);
  v144 = v1;
  v39 = v1;
  v40 = v3;
  v143 = v29;
  v41 = v38(v39, v29);
  v42 = v38;
  OUTLINED_FUNCTION_16_22(v41, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D81A1B70;
  v44 = &v3[*((*MEMORY[0x1E69E7D40] & *v3) + 0x138)];
  v46 = *v44;
  v45 = v44[1];
  v47 = MEMORY[0x1E69E6158];
  *(v43 + 56) = MEMORY[0x1E69E6158];
  v48 = sub_1D7E13BF4();
  *(v43 + 64) = v48;
  *(v43 + 32) = v46;
  *(v43 + 40) = v45;
  sub_1D8190DB4();
  v153 = v34;
  OUTLINED_FUNCTION_70_4();
  v158 = v2;
  v50 = BlueprintItem.identifier.getter(v49);
  *(v43 + 96) = v47;
  *(v43 + 104) = v48;
  *(v43 + 72) = v50;
  *(v43 + 80) = v51;
  v52 = MEMORY[0x1DA710AD0]();
  *(v43 + 136) = v47;
  *(v43 + 144) = v48;
  *(v43 + 112) = v52;
  *(v43 + 120) = v53;
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  v54 = sub_1D8191E44();
  v55 = sub_1D81919E4();
  sub_1D818FD44("Blueprint did select item at index path, model=%{public}@, item=%{public}@, indexPath=%{public}@", 96, 2, &dword_1D7DFF000, v54, v55, v43);

  v56 = v159;
  v57 = sub_1D818E8E4();
  v58 = [v34 cellForItemAtIndexPath_];

  if (v58)
  {
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v58, ObjectType, &protocol descriptor for CellTapActionable))
    {
      v34 = v60;
      v56 = swift_getObjectType();
      v47 = v34 + 1;
      v40 = v34[1];
      v61 = v58;
      v62 = (v40)(v56, v34);
      if (v62)
      {
        v47 = v62;
        v63 = sub_1D8191E44();
        v64 = sub_1D81919E4();
        sub_1D818FD44("Blueprint processing configured cell tap action in place of default selection event", 83, 2, &dword_1D7DFF000, v63, v64, MEMORY[0x1E69E7CC0]);

        sub_1D7E80824();
        OUTLINED_FUNCTION_132_1();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_132_1();
    }

    OUTLINED_FUNCTION_70_4();
  }

  OUTLINED_FUNCTION_94_0();
  sub_1D7E25620(&v40[*(v65 + 280)], &v170, &qword_1EDBB7AF0, qword_1EDBB7AF8, &protocol descriptor for KeyboardInputMonitorType);
  if (v173)
  {
    v66 = v174;
    v67 = OUTLINED_FUNCTION_83_2();
    __swift_project_boxed_opaque_existential_1(v67, v68);
    OUTLINED_FUNCTION_82_2();
    v69 = OUTLINED_FUNCTION_6_1();
    v71 = v70(v69, v66);
    v73 = v72;
    __swift_destroy_boxed_opaque_existential_1Tm(&v170);
  }

  else
  {
    sub_1D7E25DBC(&v170, &qword_1EDBB7AF0, qword_1EDBB7AF8, &protocol descriptor for KeyboardInputMonitorType);
    v71 = 0;
    v73 = 1;
  }

  v74 = [v34 window];
  if (v74)
  {
    v75 = v74;
    v76 = [v74 windowScene];
  }

  else
  {
    v76 = 0;
  }

  OUTLINED_FUNCTION_94_0();
  v34 = *(v77 + 168);
  OUTLINED_FUNCTION_8_4(v34 + v40, &v169);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v47 = Strong;
    v34 = v144;
    BlueprintProviderType.blueprint.getter(v145, v146);
    v170 = v71;
    LOBYTE(v171) = v73 & 1;
    v172 = v76;
    (*(*(v147 + 120) + 56))(v144, v158, v56, &v170, *(v147 + 96));

    v42(v144, v143);
    OUTLINED_FUNCTION_70_4();
    goto LABEL_17;
  }

LABEL_16:
  OUTLINED_FUNCTION_70_4();
LABEL_17:
  v79 = OUTLINED_FUNCTION_85();
  v80(v79);
  v81 = sub_1D7E0631C(0, &unk_1EDBB49A0, &protocol descriptor for SeparatorViewIndexOffsetProviderType);
  if (OUTLINED_FUNCTION_141_0(&v166, v154, v82, v81))
  {
    sub_1D7E05450(&v166, &v170);
    v83 = v174;
    v84 = OUTLINED_FUNCTION_83_2();
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v86 = [v34 traitCollection];
    v87 = (*(v83 + 8))();

    v88 = sub_1D818E964();
    v89 = sub_1D8190EE4();
    v37 = v56;
    v90 = sub_1D818E8E4();
    v47 = &selRef_setMenu_;
    OUTLINED_FUNCTION_71_1();
    v93 = [v91 v92];

    if (v93)
    {
      sub_1D80085E8(0);
      OUTLINED_FUNCTION_17_7();
      v94 = swift_dynamicCastClass();
      if (v94)
      {
        v95 = *(v94 + qword_1EDBB8C88);
        v34 = OBJC_IVAR____TtC5TeaUI13SeparatorView_hidesOnSelection;
        OUTLINED_FUNCTION_8_4(v95 + OBJC_IVAR____TtC5TeaUI13SeparatorView_hidesOnSelection, &v161);
        if (*(v34 + v95) == 1)
        {
          v34 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected;
          OUTLINED_FUNCTION_56(OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected + v95, &v160);
          *(v34 + v95) = 1;
          v96 = v95;
          sub_1D806EB08();

          v93 = v96;
        }

        OUTLINED_FUNCTION_70_4();
      }
    }

    v97 = v155;
    if (v88 >= v87)
    {
      v98 = sub_1D8190EE4();
      v99 = sub_1D818E964();
      v100 = v99 - v87;
      if (__OFSUB__(v99, v87))
      {
        __break(1u);
        return;
      }

      v101 = sub_1D818E974();
      MEMORY[0x1DA710B60](v100, v101);
      v102 = sub_1D818E8E4();
      (*(v151 + 8))(v142, v156);
      OUTLINED_FUNCTION_64();
      v105 = [v103 v104];

      if (v105)
      {
        sub_1D80085E8(0);
        OUTLINED_FUNCTION_17_7();
        v106 = swift_dynamicCastClass();
        if (v106)
        {
          v107 = *(v106 + qword_1EDBB8C88);
          v34 = OBJC_IVAR____TtC5TeaUI13SeparatorView_hidesOnSelection;
          OUTLINED_FUNCTION_8_4(v107 + OBJC_IVAR____TtC5TeaUI13SeparatorView_hidesOnSelection, &v163);
          if (*(v34 + v107) == 1)
          {
            v34 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected;
            OUTLINED_FUNCTION_56(OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected + v107, &v162);
            *(v34 + v107) = 1;
            v108 = v107;
            sub_1D806EB08();

            v105 = v108;
          }

          OUTLINED_FUNCTION_70_4();
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v170);
    OUTLINED_FUNCTION_119_1();
  }

  else
  {
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    sub_1D7E25DBC(&v166, &qword_1EDBB4998, &unk_1EDBB49A0, &protocol descriptor for SeparatorViewIndexOffsetProviderType);
    OUTLINED_FUNCTION_119_1();
    v97 = v155;
  }

  if (([v34 allowsMultipleSelection] & 1) == 0)
  {
    v157 = *(v151 + 16);
    v157(v97, v159, v47);
    OUTLINED_FUNCTION_102();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v47);
    OUTLINED_FUNCTION_94_0();
    v113 = &v40[*(v112 + 192)];
    OUTLINED_FUNCTION_8_4(v113, &v165);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v114 = *(v113 + 8);
      v115 = swift_getObjectType();
      v116 = v150;
      (*(v114 + 8))(v115, v114);
      swift_unknownObjectRelease();
    }

    else
    {
      v116 = v150;
      __swift_storeEnumTagSinglePayload(v150, 1, 1, v47);
    }

    v117 = *(v148 + 48);
    sub_1D7E54838(v97, v37);
    sub_1D7E54838(v116, v37 + v117);
    OUTLINED_FUNCTION_43_0(v37, 1, v47);
    if (!v120)
    {
      sub_1D7E54838(v37, v149);
      OUTLINED_FUNCTION_43_0(v37 + v117, 1, v47);
      if (!v120)
      {
        (*(v151 + 32))(v142, v37 + v117, v47);
        sub_1D8008590();
        v127 = sub_1D8190ED4();
        v34 = (v151 + 8);
        v128 = *(v151 + 8);
        v128(v142, v47);
        sub_1D7E54AA4(v150, sub_1D7E3D564);
        v129 = OUTLINED_FUNCTION_128();
        sub_1D7E54AA4(v129, v130);
        v128(v149, v47);
        OUTLINED_FUNCTION_70_4();
        v131 = OUTLINED_FUNCTION_106_1();
        sub_1D7E54AA4(v131, v132);
        if (v127)
        {
          goto LABEL_50;
        }

LABEL_47:
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          v157(v141, v159, v47);
          OUTLINED_FUNCTION_102();
          __swift_storeEnumTagSinglePayload(v122, v123, v124, v47);
          v125 = OUTLINED_FUNCTION_107_1();
          v126(v125);
          swift_unknownObjectRelease();
        }

        goto LABEL_50;
      }

      sub_1D7E54AA4(v150, sub_1D7E3D564);
      sub_1D7E54AA4(v97, sub_1D7E3D564);
      (*(v151 + 8))(v149, v47);
LABEL_46:
      OUTLINED_FUNCTION_12_26();
      sub_1D7E54AA4(v37, v121);
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_6_49();
    sub_1D7E54AA4(v116, v118);
    sub_1D7E54AA4(v97, v149);
    OUTLINED_FUNCTION_43_0(v37 + v117, 1, v47);
    if (!v120)
    {
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_0_114();
    sub_1D7E54AA4(v37, v119);
  }

LABEL_50:
  v133 = sub_1D818E8E4();
  v134 = [v34 cellForItemAtIndexPath_];

  if (v134)
  {
    v164 = v134;
    sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8);
    sub_1D7E0631C(0, qword_1EDBB8170, &protocol descriptor for CellSelectionActionable);
    v135 = v134;
    if (OUTLINED_FUNCTION_100_1(&v166, &v164))
    {
      sub_1D7E05450(&v166, &v170);
      __swift_project_boxed_opaque_existential_1(&v170, v173);
      OUTLINED_FUNCTION_82_2();
      v136 = OUTLINED_FUNCTION_15_5();
      v138 = v137(v136);
      v139 = v138();

      if (v139)
      {
        v140 = sub_1D818E8E4();
        [v34 deselectItemAtIndexPath:v140 animated:1];
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v170);
    }

    else
    {

      v168 = 0;
      v166 = 0u;
      v167 = 0u;
      sub_1D7E25DBC(&v166, &qword_1EDBB8168, qword_1EDBB8170, &protocol descriptor for CellSelectionActionable);
    }
  }

  _s5TeaUI31BlueprintCollectionViewDelegateC010collectionE0_18didHighlightItemAtySo012UICollectionE0C_10Foundation9IndexPathVtF_0(v34, v159);
  (*(v152 + 8))(v158, v153);
  OUTLINED_FUNCTION_100();
}