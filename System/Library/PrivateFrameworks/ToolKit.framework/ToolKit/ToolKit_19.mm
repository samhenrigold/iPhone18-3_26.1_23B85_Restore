uint64_t sub_1C8E2C07C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1C8E2C0BC(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8E2C12C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C6F636F746F7270 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8E2C240(char a1)
{
  if (!a1)
  {
    return 0x644965707974;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0x6C6F636F746F7270;
}

uint64_t sub_1C8E2C298(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316B68, &qword_1C9088438);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = *(v1 + 24);
  v25 = *(v1 + 16);
  v24 = v9;
  v10 = *(v1 + 40);
  v23 = *(v1 + 32);
  v22 = v10;
  v21 = *(v1 + 48);
  v11 = *(v1 + 72);
  v32 = *(v1 + 56);
  v33 = v11;
  v34[0] = *(v1 + 88);
  *(v34 + 9) = *(v1 + 97);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E2D120(v12, v13, v14);
  sub_1C9064E1C();
  LOBYTE(v29) = 0;
  v15 = v35;
  sub_1C9064B2C();
  if (v15)
  {
    return (*(v5 + 8))(v8, v3);
  }

  *&v29 = v25;
  *(&v29 + 1) = v24;
  *&v30 = v23;
  *(&v30 + 1) = v22;
  v31[0] = v21;
  LOBYTE(v26[0]) = 1;
  sub_1C8D54590(v25, v24, v23, v22, v21);
  sub_1C8E2D2D8(v16, v17, v18);
  sub_1C9064B8C();
  sub_1C8D3ED20(v29, *(&v29 + 1), v30, *(&v30 + 1), v31[0]);
  v29 = v32;
  v30 = v33;
  *v31 = v34[0];
  *&v31[9] = *(v34 + 9);
  v28 = 2;
  sub_1C8E2D32C(&v32, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FD8, &qword_1C906B500);
  sub_1C8E2D39C(&qword_1EC316B70, &unk_1C908BCB8);
  sub_1C9064B8C();
  v26[0] = v29;
  v26[1] = v30;
  *v27 = *v31;
  *&v27[9] = *&v31[9];
  sub_1C8E2D414(v26);
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C8E2C588@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316B50, &unk_1C9088428);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E2D120(v6, v7, v8);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  v9 = sub_1C9064A0C();
  v11 = v10;
  v21 = v9;
  LOBYTE(v22[0]) = 1;
  sub_1C8E2D174(v9, v10, v12);
  sub_1C9064A6C();
  v19 = v24;
  v20 = v23;
  v18 = v25;
  v16 = v26;
  v17 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FD8, &qword_1C906B500);
  v34 = 2;
  sub_1C8E2D39C(&qword_1EC316B60, &unk_1C908BC38);
  sub_1C9064A6C();
  v13 = OUTLINED_FUNCTION_3_36();
  v14(v13);
  *&v38[7] = v35;
  *&v38[23] = v36;
  *&v38[39] = v37[0];
  *&v38[48] = *(v37 + 9);
  v22[0] = v21;
  v22[1] = v11;
  v22[2] = v20;
  v22[3] = v19;
  v22[4] = v18;
  v22[5] = v16;
  LOBYTE(v22[6]) = v17;
  *(&v22[12] + 1) = *(v37 + 9);
  *(&v22[10] + 1) = *&v38[32];
  *(&v22[8] + 1) = *&v38[16];
  *(&v22[6] + 1) = *v38;
  memcpy(a2, v22, 0x71uLL);
  sub_1C8E2D270(v22, &v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30 = *v38;
  v31 = *&v38[16];
  v32 = *&v38[32];
  v23 = v21;
  v24 = v11;
  v25 = v20;
  v26 = v19;
  v27 = v18;
  v28 = v16;
  v29 = v17;
  v33 = *&v38[48];
  return sub_1C8E2D2A8(&v23);
}

uint64_t sub_1C8E2C8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E2C12C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E2C91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E2D120(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E2C958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E2D120(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

double sub_1C8E2C9C8@<D0>(uint64_t a2@<X8>)
{
  if (qword_1EC3113F8 != -1)
  {
    OUTLINED_FUNCTION_2_43(&qword_1EC3113F8);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EC390BA0);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v5 = v4;
  v7 = v6;

  if (qword_1EC311400 != -1)
  {
    OUTLINED_FUNCTION_1_50(&qword_1EC311400);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390BB8);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v9 = v8;
  v11 = v10;

  SystemTypeProtocol.Identifier.init(rawValue:)(v9, v11, v29);
  v22 = v29[1];
  v24 = v29[0];
  v12 = v30;
  if (v30 == 255)
  {
    v13 = 2;
  }

  else
  {
    v13 = v30;
  }

  if (qword_1EC311408 != -1)
  {
    OUTLINED_FUNCTION_0_55(&qword_1EC311408);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390BD0);
  v14 = sub_1C9062E5C();
  sub_1C8D27C98(v14, v15);
  v16.i32[0] = 255;
  v17.i32[0] = v12;
  v18 = vdupq_lane_s32(*&vceqq_s32(v17, v16), 0);
  v23 = vbicq_s8(v22, v18);
  v25 = vbicq_s8(v24, v18);

  *&v31[7] = v26;
  *&v31[23] = v27;
  *&v31[39] = *v28;
  *&v31[48] = *&v28[9];
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v25;
  *(a2 + 32) = v23;
  *(a2 + 48) = v13;
  v19 = *&v31[16];
  *(a2 + 49) = *v31;
  *(a2 + 65) = v19;
  result = *&v31[32];
  v21 = *&v31[48];
  *(a2 + 81) = *&v31[32];
  *(a2 + 97) = v21;
  return result;
}

uint64_t sub_1C8E2CBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8E2D020(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8E2CCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = *(v5 + 72);
  v21 = *(v5 + 56);
  v22 = v8;
  v23[0] = *(v5 + 88);
  *(v23 + 9) = *(v5 + 97);

  sub_1C8E2D32C(&v21, &v17);
  if (qword_1EC3113F8 != -1)
  {
    OUTLINED_FUNCTION_2_43(&qword_1EC3113F8);
  }

  v9 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v9, qword_1EC390BA0);
  sub_1C9062E5C();
  v10 = MEMORY[0x1E69E6158];
  v11 = MEMORY[0x1E69A0138];
  v19 = MEMORY[0x1E69E6158];
  v20 = MEMORY[0x1E69A0138];
  v17 = v7;
  v18 = v6;
  sub_1C9062BFC();
  if (qword_1EC311400 != -1)
  {
    OUTLINED_FUNCTION_1_50(&qword_1EC311400);
  }

  OUTLINED_FUNCTION_10(v9, qword_1EC390BB8);
  sub_1C9062E5C();
  v12 = SystemTypeProtocol.Identifier.rawValue.getter();
  v19 = v10;
  v20 = v11;
  v17 = v12;
  v18 = v13;
  sub_1C9062BFC();
  if (qword_1EC311408 != -1)
  {
    OUTLINED_FUNCTION_0_55(&qword_1EC311408);
  }

  OUTLINED_FUNCTION_10(v9, qword_1EC390BD0);
  sub_1C9062E5C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FD8, &qword_1C906B500);
  v20 = sub_1C8E2D524();
  v14 = swift_allocObject();
  v17 = v14;
  v15 = v22;
  v14[1] = v21;
  v14[2] = v15;
  v14[3] = v23[0];
  *(v14 + 57) = *(v23 + 9);
  return sub_1C9062BFC();
}

uint64_t sub_1C8E2CEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC316B18;

  return v5;
}

unint64_t sub_1C8E2CF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316B28;
  if (!qword_1EC316B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B28);
  }

  return result;
}

unint64_t sub_1C8E2CF8C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E2CFCC(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8E2D020(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D16A38(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8E2D074(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8E2CFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316B30;
  if (!qword_1EC316B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B30);
  }

  return result;
}

unint64_t sub_1C8E2D020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316B38;
  if (!qword_1EC316B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B38);
  }

  return result;
}

unint64_t sub_1C8E2D074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316B40;
  if (!qword_1EC316B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B40);
  }

  return result;
}

unint64_t sub_1C8E2D0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316B48;
  if (!qword_1EC316B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B48);
  }

  return result;
}

unint64_t sub_1C8E2D120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316B58;
  if (!qword_1EC316B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B58);
  }

  return result;
}

unint64_t sub_1C8E2D174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A30;
  if (!qword_1EDA60A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A30);
  }

  return result;
}

unint64_t sub_1C8E2D1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA609F0;
  if (!qword_1EDA609F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA609F0);
  }

  return result;
}

unint64_t sub_1C8E2D21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA609F8;
  if (!qword_1EDA609F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA609F8);
  }

  return result;
}

unint64_t sub_1C8E2D2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A38;
  if (!qword_1EDA60A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A38);
  }

  return result;
}

uint64_t sub_1C8E2D32C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FD8, &qword_1C906B500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8E2D39C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312FD8, &qword_1C906B500);
    v9 = sub_1C8E2D1C8(v4, v5, v6);
    sub_1C8E2D21C(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8E2D414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FD8, &qword_1C906B500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8E2D4AC(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C8E2D120(v5, v6, v7);
  return sub_1C9062E8C();
}

unint64_t sub_1C8E2D524()
{
  result = qword_1EC313350;
  if (!qword_1EC313350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312FD8, &qword_1C906B500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313350);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemTypeProtocolRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E2D668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316B78;
  if (!qword_1EC316B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B78);
  }

  return result;
}

unint64_t sub_1C8E2D6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316B80;
  if (!qword_1EC316B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B80);
  }

  return result;
}

unint64_t sub_1C8E2D718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316B88;
  if (!qword_1EC316B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B88);
  }

  return result;
}

uint64_t ValueSearchPredicate.Template.input.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t ValueSearchPredicate.Template.debugDescription.getter()
{
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD000000000000012, 0x80000001C90CB680);
  sub_1C90648BC();
  return 0;
}

unint64_t static ValueSearchPredicate.Template.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;

  static TypeInstance.== infix(_:_:)(&v6, &v5);
  LOBYTE(v2) = v3;

  return v2 & 1;
}

uint64_t sub_1C8E2D8FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E2D988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E2D8FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E2D9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E2DB68(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E2D9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E2DB68(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ValueSearchPredicate.Template.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316B90, &qword_1C9088560);
  OUTLINED_FUNCTION_11();
  v25 = v24;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_73();
  v27 = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1C8E2DB68(v27, v28, v29);

  v30 = sub_1C9064E1C();
  sub_1C8CA6D90(v30, v31, v32);
  sub_1C9064B8C();

  (*(v25 + 8))(v20, v23);
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8E2DB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316B98;
  if (!qword_1EC316B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B98);
  }

  return result;
}

uint64_t ValueSearchPredicate.Template.hashValue.getter()
{
  sub_1C9064D7C();
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

void ValueSearchPredicate.Template.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316BA0, &qword_1C9088568);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_73();
  v16 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v19 = sub_1C8E2DB68(v16, v17, v18);
  v21 = OUTLINED_FUNCTION_355(&type metadata for ValueSearchPredicate.Template.CodingKeys, v20, v19);
  if (!v10)
  {
    sub_1C8CAC450(v21, v22, v23);
    sub_1C9064A6C();
    v24 = OUTLINED_FUNCTION_4_30();
    v25(v24);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E2DD84(uint64_t a1)
{
  sub_1C9064D7C();
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t ValueSearchPredicate.debugDescription.getter()
{
  v1 = *v0;
  sub_1C906478C();

  strcpy(v4, "VALUE SEARCH '");
  v2 = MEMORY[0x1CCA81C30](v1, &type metadata for TypedValue);
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](39, 0xE100000000000000);
  return v4[0];
}

uint64_t sub_1C8E2DEA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E2DF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E2DEA8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E2DF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E2E15C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E2DF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E2E15C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ValueSearchPredicate.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316BA8, &unk_1C9088570);
  OUTLINED_FUNCTION_11();
  v27 = v26;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  v32 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1C8E2E15C(v32, v33, v34);

  sub_1C9064E1C();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316410, &qword_1C907D840);
  sub_1C8E2E460(&qword_1EDA62DE0, sub_1C8D381AC, MEMORY[0x1E69E6300]);
  sub_1C9064B8C();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8E2E15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316BB0;
  if (!qword_1EC316BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BB0);
  }

  return result;
}

uint64_t ValueSearchPredicate.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1CCA82810](v2);
  if (v2)
  {
    v4 = v1 + 32;
    do
    {
      v4 += 8;

      TypedValue.hash(into:)();

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ValueSearchPredicate.hashValue.getter()
{
  sub_1C9064D7C();
  sub_1C8D03430();
  return sub_1C9064DBC();
}

void ValueSearchPredicate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316BB8, &qword_1C9088580);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_73();
  v16 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v19 = sub_1C8E2E15C(v16, v17, v18);
  OUTLINED_FUNCTION_355(&type metadata for ValueSearchPredicate.CodingKeys, v20, v19);
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316410, &qword_1C907D840);
    sub_1C8E2E460(&qword_1EDA60518, sub_1C8D39E40, MEMORY[0x1E69E6330]);
    sub_1C9064A6C();
    v21 = OUTLINED_FUNCTION_4_30();
    v22(v21);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E2E3E8(uint64_t a1)
{
  sub_1C9064D7C();
  sub_1C8D03430();
  return sub_1C9064DBC();
}

uint64_t sub_1C8E2E460(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC316410, &qword_1C907D840);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E2E548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316BC0;
  if (!qword_1EC316BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BC0);
  }

  return result;
}

unint64_t sub_1C8E2E59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316BC8;
  if (!qword_1EC316BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BC8);
  }

  return result;
}

unint64_t sub_1C8E2E5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316BD0;
  if (!qword_1EC316BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BD0);
  }

  return result;
}

unint64_t sub_1C8E2E644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316BD8;
  if (!qword_1EC316BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BD8);
  }

  return result;
}

unint64_t sub_1C8E2E69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316BE0;
  if (!qword_1EC316BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BE0);
  }

  return result;
}

uint64_t sub_1C8E2E744(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8E2E7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316BE8;
  if (!qword_1EC316BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BE8);
  }

  return result;
}

unint64_t sub_1C8E2E7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316BF0;
  if (!qword_1EC316BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BF0);
  }

  return result;
}

unint64_t sub_1C8E2E854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316BF8;
  if (!qword_1EC316BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BF8);
  }

  return result;
}

_BYTE *sub_1C8E2E8D8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C8E2E988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316C00;
  if (!qword_1EC316C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C00);
  }

  return result;
}

unint64_t sub_1C8E2E9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316C08;
  if (!qword_1EC316C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C08);
  }

  return result;
}

unint64_t sub_1C8E2EA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316C10;
  if (!qword_1EC316C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C10);
  }

  return result;
}

unint64_t sub_1C8E2EA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316C18;
  if (!qword_1EC316C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C18);
  }

  return result;
}

unint64_t sub_1C8E2EAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316C20;
  if (!qword_1EC316C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C20);
  }

  return result;
}

unint64_t sub_1C8E2EB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316C28;
  if (!qword_1EC316C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C28);
  }

  return result;
}

__n128 AssistantEntitySchemaDefinition.init(identifier:properties:displayRepresentation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = a3->n128_u64[0];
  v7 = a3->n128_u64[1];
  v8 = a3[2].n128_u64[0];
  *a4 = *a1;
  *(a4 + 8) = v4;
  v9 = *(a1 + 32);
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v9;
  *(a4 + 48) = v5;
  *(a4 + 56) = a2;
  *(a4 + 64) = v6;
  *(a4 + 72) = v7;
  result = a3[1];
  *(a4 + 80) = result;
  *(a4 + 96) = v8;
  return result;
}

uint64_t sub_1C8E2EBCC()
{
  v0 = sub_1C9063D3C();
  __swift_allocate_value_buffer(v0, qword_1EC316C30);
  __swift_project_value_buffer(v0, qword_1EC316C30);
  return sub_1C9063D2C();
}

uint64_t AssistantEntitySchemaDefinition.identifier.getter@<X0>(uint64_t a5@<X8>)
{
  v6 = *(v5 + 8);
  v7 = *(v5 + 48);
  *a5 = *v5;
  *(a5 + 8) = v6;
  v8 = *(v5 + 32);
  *(a5 + 16) = *(v5 + 16);
  *(a5 + 32) = v8;
  *(a5 + 48) = v7;
}

uint64_t AssistantEntitySchemaDefinition.displayRepresentation.getter@<X0>(void *a5@<X8>)
{
  v6 = v5[8];
  v7 = v5[9];
  v9 = v5[10];
  v8 = v5[11];
  v10 = v5[12];
  *a5 = v6;
  a5[1] = v7;
  a5[2] = v9;
  a5[3] = v8;
  a5[4] = v10;
}

uint64_t static AssistantEntitySchemaDefinition.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v30 = a1[7];
  v26 = a1[8];
  v27 = a1[9];
  v25 = a1[10];
  v28 = a1[11];
  v29 = a1[12];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v8 || v4 != v7 || v3 != v10)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v23 = a2[7];
  v24 = a1[6];
  v14 = a1[5];
  v15 = 0;
  if (sub_1C9064C2C())
  {
    v16 = v2 == v8 && v4 == v7;
    v17 = v16 && v3 == v10;
    v5 = v14;
    v12 = v23;
    v6 = v24;
    if (v17)
    {
LABEL_22:
      v20 = v5 == v9 && v6 == v11;
      if (v20 || (sub_1C9064C2C()) && (sub_1C8CEADC4(v30, v12))
      {
        v31[0] = v26;
        v31[1] = v27;
        v31[2] = v25;
        v31[3] = v28;
        v31[4] = v29;
        static TypeDisplayRepresentation.== infix(_:_:)(v31);
        v15 = v21;

        return v15 & 1;
      }

LABEL_29:
      v15 = 0;
    }
  }

  return v15 & 1;
}

uint64_t sub_1C8E2EEE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8E2F004(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x69747265706F7270;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C8E2F06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E2EEE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E2F094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E2F3E0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E2F0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E2F3E0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t AssistantEntitySchemaDefinition.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C48, &unk_1C9088AE0);
  OUTLINED_FUNCTION_11();
  v40 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = *v2;
  v10 = v2[1];
  v12 = v2[6];
  v11 = v2[7];
  v13 = v2[9];
  v37 = v2[8];
  v38 = v11;
  v14 = v2[11];
  v35 = v2[10];
  v36 = v13;
  v33 = v2[12];
  v34 = v14;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E2F3E0(v15, v16, v17);

  v18 = sub_1C9064E1C();
  v41 = v9;
  v42 = v10;
  v19 = *(v2 + 1);
  v44 = *(v2 + 2);
  v43 = v19;
  v45 = v12;
  v46 = 0;
  sub_1C8E28354(v18, v20, v21);
  v22 = v39;
  sub_1C9064B8C();

  if (!v22)
  {
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v26 = v33;
    v27 = v34;
    v41 = v38;
    v46 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C58, &unk_1C909F350);
    sub_1C8E2FAB8(&qword_1EDA62DA8, sub_1C8E2F434, MEMORY[0x1E69E6300]);
    v28 = sub_1C9064B8C();
    v41 = v25;
    v42 = v24;
    *&v43 = v23;
    *(&v43 + 1) = v27;
    *&v44 = v26;
    v46 = 2;
    sub_1C8E2F488(v28, v29, v30);

    sub_1C9064B8C();
  }

  return (*(v40 + 8))(v8, v4);
}

unint64_t sub_1C8E2F3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316C50;
  if (!qword_1EC316C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C50);
  }

  return result;
}

unint64_t sub_1C8E2F434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA668C8;
  if (!qword_1EDA668C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA668C8);
  }

  return result;
}

unint64_t sub_1C8E2F488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60768;
  if (!qword_1EDA60768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60768);
  }

  return result;
}

uint64_t AssistantEntitySchemaDefinition.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[11];
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v2);
  MEMORY[0x1CCA82830](v3);
  MEMORY[0x1CCA82830](v4);
  sub_1C9063FBC();
  sub_1C8D02D7C();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v5)
  {
    sub_1C9063FBC();
  }

  return sub_1C8CC1590();
}

uint64_t AssistantEntitySchemaDefinition.hashValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[11];
  sub_1C9064D7C();
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v1);
  MEMORY[0x1CCA82830](v2);
  MEMORY[0x1CCA82830](v3);
  sub_1C9063FBC();
  sub_1C8D02D7C();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v4)
  {
    sub_1C9063FBC();
  }

  sub_1C8CC1590();
  return sub_1C9064DBC();
}

uint64_t AssistantEntitySchemaDefinition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C60, &qword_1C9088AF0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E2F3E0(v6, v7, v8);
  v9 = sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = a2;
  sub_1C8E28C20(v9, v10, v11);
  sub_1C9064A6C();
  v26 = v35;
  v27 = v33;
  v25 = v36;
  v24 = v37;
  v28 = v39;
  v29 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C58, &unk_1C909F350);
  LOBYTE(v32[0]) = 1;
  sub_1C8E2FAB8(&qword_1EDA62DA0, sub_1C8E2FB30, MEMORY[0x1E69E6330]);
  v12 = sub_1C9064A6C();
  v23 = v38;
  v13 = v33;
  v51 = 2;
  sub_1C8E2FB84(v12, v14, v15);
  sub_1C9064A6C();
  v16 = OUTLINED_FUNCTION_1_5();
  v17(v16);
  v21 = v48;
  v22 = v47;
  v19 = v50;
  v20 = v49;
  v31 = v46;
  v32[0] = v27;
  v32[1] = v29;
  v32[2] = v26;
  v32[3] = v25;
  v32[4] = v24;
  v32[5] = v23;
  v32[6] = v28;
  v32[7] = v13;
  v32[8] = v46;
  v32[9] = v47;
  v32[10] = v48;
  v32[11] = v49;
  v32[12] = v50;
  memcpy(v30, v32, 0x68uLL);
  sub_1C8CC37E4(v32, &v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33 = v27;
  v34 = v29;
  v35 = v26;
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v39 = v28;
  v40 = v13;
  v41 = v31;
  v42 = v22;
  v43 = v21;
  v44 = v20;
  v45 = v19;
  return sub_1C8E2FBD8(&v33);
}

uint64_t sub_1C8E2FA78(uint64_t a1)
{
  sub_1C9064D7C();
  AssistantEntitySchemaDefinition.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E2FAB8(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316C58, &unk_1C909F350);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E2FB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA668C0;
  if (!qword_1EDA668C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA668C0);
  }

  return result;
}

unint64_t sub_1C8E2FB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60760;
  if (!qword_1EDA60760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60760);
  }

  return result;
}

unint64_t sub_1C8E2FC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316C68;
  if (!qword_1EC316C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssistantEntitySchemaDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E2FD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316C70;
  if (!qword_1EC316C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C70);
  }

  return result;
}

unint64_t sub_1C8E2FDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316C78;
  if (!qword_1EC316C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C78);
  }

  return result;
}

unint64_t sub_1C8E2FE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316C80;
  if (!qword_1EC316C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C80);
  }

  return result;
}

void sub_1C8E2FE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t SystemTypeProtocol.Identifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 32))
  {
    OUTLINED_FUNCTION_35_14();
    MEMORY[0x1CCA81A90](v1, v2);
    return v9;
  }

  v3 = v0[2];
  v4 = v0[3];
  if (*(v0 + 32) == 1)
  {
    OUTLINED_FUNCTION_35_14();
    MEMORY[0x1CCA81A90]();

    MEMORY[0x1CCA81A90](46, 0xE100000000000000);

    MEMORY[0x1CCA81A90](v1, v2);

    return v9;
  }

  if (!(v3 | v2 | v1 | v4))
  {
    return OUTLINED_FUNCTION_42();
  }

  v6 = v3 | v2 | v4;
  if (v1 == 1 && v6 == 0)
  {
    return OUTLINED_FUNCTION_26_12();
  }

  if (v1 == 2 && !v6)
  {
    return OUTLINED_FUNCTION_20_16();
  }

  if (v1 == 3 && !v6)
  {
    return OUTLINED_FUNCTION_25_14();
  }

  if (v1 == 4 && !v6)
  {
    return OUTLINED_FUNCTION_43_12();
  }

  if (v1 == 5 && !v6)
  {
    return OUTLINED_FUNCTION_19_18();
  }

  if (v1 == 6 && !v6)
  {
    return OUTLINED_FUNCTION_24_18();
  }

  if (v1 == 7 && !v6)
  {
    return 0xD000000000000012;
  }

  if (v1 == 8 && !v6)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  if (v1 == 9 && !v6)
  {
    return OUTLINED_FUNCTION_23_19();
  }

  if (v1 == 10 && !v6)
  {
    return OUTLINED_FUNCTION_39_13();
  }

  if (v1 == 11 && !v6)
  {
    return OUTLINED_FUNCTION_18_16();
  }

  if (v1 == 12 && !v6)
  {
    v8 = 5;
    return v8 | 0xD000000000000010;
  }

  if (v1 == 13 && !v6)
  {
    return 0xD000000000000010;
  }

  if (v1 == 14 && !v6)
  {
    v8 = 10;
    return v8 | 0xD000000000000010;
  }

  return 0x65536C6175736976;
}

void sub_1C8E3014C(uint64_t a5@<X8>)
{
  v6 = *v5;
  v7 = *(v5 + 40);
  switch(*(v5 + 56))
  {
    case 1:
      v8 = 12;
      goto LABEL_10;
    case 2:
      v8 = 14;
      goto LABEL_10;
    case 3:
      v10 = *(v5 + 24);
      v9 = *(v5 + 32);
      v11 = *(v5 + 16);
      v12 = vorrq_s8(v7, vdupq_laneq_s64(v6, 1)).u64[0];
      if (!(v12 | v6.i64[0] | v7.i64[1] | v9 | v10 | v11))
      {
        *a5 = 0u;
        *(a5 + 16) = 0u;
        goto LABEL_11;
      }

      v6.i64[1] = v12 | v7.i64[1] | v9 | v10 | v11;
      v13 = vmovn_s64(vceqq_s64(v6, xmmword_1C9088D50));
      if (v13.i32[0] & v13.i32[1])
      {
        v8 = 1;
LABEL_10:
        *a5 = v8;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
LABEL_11:
        *(a5 + 32) = 2;
        return;
      }

      OUTLINED_FUNCTION_29_1();
      if ((v15 & 1) == 0)
      {
        OUTLINED_FUNCTION_29_1();
        if (v16)
        {
          v8 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_29_1();
          if (v17)
          {
            v8 = 4;
          }

          else
          {
            OUTLINED_FUNCTION_29_1();
            if (v18)
            {
              v8 = 5;
            }

            else
            {
              OUTLINED_FUNCTION_29_1();
              if (v19)
              {
                v8 = 6;
              }

              else
              {
                OUTLINED_FUNCTION_29_1();
                if (v20)
                {
                  v8 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_29_1();
                  if (v21)
                  {
                    v8 = 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_29_1();
                    if (v22)
                    {
                      v8 = 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_29_1();
                      if (v23)
                      {
                        v8 = 10;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_29_1();
                        if (v24)
                        {
                          v8 = 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_29_1();
                          if (v27)
                          {
                            v8 = 13;
                          }

                          else if (((v25 == 13) & v26) != 0)
                          {
                            v8 = 15;
                          }

                          else
                          {
                            v8 = 16;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_10;
      }

      *v14 = 2;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 2;
      return;
    default:
      *a5 = v6;
      *(a5 + 16) = v7;
      *(a5 + 32) = 1;

      return;
  }
}

uint64_t SystemTypeProtocol.Identifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OUTLINED_FUNCTION_19_18();
  v8 = a1 == v6 && a2 == v7;
  if (v8 || (OUTLINED_FUNCTION_14_3(v6, v7) & 1) != 0)
  {

    v10 = 5;
LABEL_7:
    *a3 = v10;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
LABEL_14:
    v16 = 2;
LABEL_15:
    *(a3 + 32) = v16;
    return result;
  }

  v11 = OUTLINED_FUNCTION_42();
  v12 = a1 == v11 && a2 == 0xE700000000000000;
  if (v12 || (v13 = OUTLINED_FUNCTION_14_3(v11, 0xE700000000000000), (v13 & 1) != 0))
  {
LABEL_13:

    *a3 = 0u;
    *(a3 + 16) = 0u;
    goto LABEL_14;
  }

  v17 = sub_1C8E35EFC(v13, v14, v15);
  v20 = sub_1C8D1EA80(v17, v18, v19);
  v25 = OUTLINED_FUNCTION_46_8(v20, MEMORY[0x1E69E6158], v21, v22, v23, v24, a1, a2);
  if (v25)
  {
    OUTLINED_FUNCTION_45_14();
    v30 = sub_1C9063FCC();
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      v33 = sub_1C8E9E5F8(v32, a1, a2);
      MEMORY[0x1CCA81A20](v33);
      OUTLINED_FUNCTION_44_13();

      v42 = OUTLINED_FUNCTION_52_9(v34, v35, v36, v37, v38, v39, v40, v41, a2);
      v44 = v43;
      v45 = sub_1C906316C();
      v53 = OUTLINED_FUNCTION_52_9(v45, v46, v47, v48, v49, v50, v51, v52, a2);
      sub_1C8E9E2B0(v53, v54, v45);
      OUTLINED_FUNCTION_44_13();

      v55 = 0x446E776F6E6B6E55;
      if (a1)
      {
        v55 = a2;
      }

      v56 = 0xED00006E69616D6FLL;
      if (a1)
      {
        v56 = a1;
      }

      *a3 = v42;
      *(a3 + 8) = v44;
      *(a3 + 16) = v55;
      *(a3 + 24) = v56;
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_62;
  }

  if (OUTLINED_FUNCTION_46_8(v25, MEMORY[0x1E69E6158], v26, v27, v28, v29, a1, a2))
  {
    OUTLINED_FUNCTION_45_14();
    v57 = sub_1C9063FCC();
    v31 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (!v31)
    {
      v111 = sub_1C8E9E5F8(v58, a1, a2);
      sub_1C8E35F50(v111, v59, v60);
      v61 = sub_1C906466C();

      if (!v61[2])
      {
        goto LABEL_13;
      }

      v66 = v61[4];
      v67 = v61[5];
      v69 = v61[6];
      v68 = v61[7];
      v70 = sub_1C8E9E6CC(v61, v62, v63, v64, v65);
      v72 = v71;
      v74 = v73;
      v76 = v75;

      if (!v76)
      {
        goto LABEL_13;
      }

      v77 = MEMORY[0x1CCA81A20](v70, v72, v74, v76);
      v79 = v78;

      MEMORY[0x1CCA81A20](v66, v67, v69, v68);
      result = OUTLINED_FUNCTION_44_13();
      *a3 = v77;
      *(a3 + 8) = v79;
      *(a3 + 16) = v66;
      *(a3 + 24) = v67;
LABEL_23:
      v16 = 1;
      goto LABEL_15;
    }

    __break(1u);
LABEL_69:
    v95 = OUTLINED_FUNCTION_41_10();
    v96 = a1 == v95 && a2 == 0xEF797469746E4574;
    if (v96 || (OUTLINED_FUNCTION_14_3(v95, 0xEF797469746E4574) & 1) != 0)
    {

      v10 = 8;
    }

    else
    {
      v97 = OUTLINED_FUNCTION_23_19();
      v99 = a1 == v97 && a2 == v98;
      if (v99 || (OUTLINED_FUNCTION_14_3(v97, v98) & 1) != 0)
      {

        v10 = 9;
      }

      else
      {
        v100 = OUTLINED_FUNCTION_39_13();
        v101 = a1 == v100 && a2 == 0xEF797469746E4565;
        if (v101 || (OUTLINED_FUNCTION_14_3(v100, 0xEF797469746E4565) & 1) != 0)
        {

          v10 = 10;
        }

        else
        {
          v102 = a1 == 0xD000000000000015 && 0x80000001C90CA320 == a2;
          if (v102 || (OUTLINED_FUNCTION_14_3(0xD000000000000015, 0x80000001C90CA320) & 1) != 0)
          {

            v10 = 12;
          }

          else
          {
            v103 = a1 == 0xD000000000000010 && 0x80000001C90CA300 == a2;
            if (v103 || (OUTLINED_FUNCTION_14_3(0xD000000000000010, 0x80000001C90CA300) & 1) != 0)
            {

              v10 = 13;
            }

            else
            {
              v104 = a1 == 0xD00000000000001ALL && 0x80000001C90CA2E0 == a2;
              if (v104 || (OUTLINED_FUNCTION_14_3(0xD00000000000001ALL, 0x80000001C90CA2E0) & 1) != 0)
              {

                v10 = 14;
              }

              else
              {
                v105 = a1 == 0x65536C6175736976 && a2 == 0xEC00000068637261;
                if (v105 || (OUTLINED_FUNCTION_14_3(0x65536C6175736976, 0xEC00000068637261) & 1) != 0)
                {

                  v10 = 15;
                }

                else
                {
                  v106 = a1 == 0x65536C6175736976 && a2 == 0xEF52434F68637261;
                  if (v106 || (OUTLINED_FUNCTION_14_3(0x65536C6175736976, 0xEF52434F68637261) & 1) != 0)
                  {

                    v10 = 16;
                  }

                  else
                  {
                    v107 = OUTLINED_FUNCTION_18_16();
                    if (a1 == v107 && a2 == v108)
                    {
                    }

                    else
                    {
                      v110 = OUTLINED_FUNCTION_14_3(v107, v108);

                      if ((v110 & 1) == 0)
                      {
                        *a3 = 0u;
                        *(a3 + 16) = 0u;
                        v16 = -1;
                        goto LABEL_15;
                      }
                    }

                    v10 = 11;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_7;
  }

  v80 = OUTLINED_FUNCTION_26_12();
  v82 = a1 == v80 && a2 == v81;
  if (v82 || (OUTLINED_FUNCTION_14_3(v80, v81) & 1) != 0)
  {

    v10 = 1;
    goto LABEL_7;
  }

  v83 = OUTLINED_FUNCTION_20_16();
  v85 = a1 == v83 && a2 == v84;
  if (!v85 && (OUTLINED_FUNCTION_14_3(v83, v84) & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_25_14();
    v88 = a1 == v86 && a2 == v87;
    if (v88 || (OUTLINED_FUNCTION_14_3(v86, v87) & 1) != 0)
    {

      v10 = 3;
      goto LABEL_7;
    }

    v89 = OUTLINED_FUNCTION_43_12();
    v90 = a1 == v89 && a2 == 0xE700000000000000;
    if (v90 || (OUTLINED_FUNCTION_14_3(v89, 0xE700000000000000) & 1) != 0)
    {

      v10 = 4;
      goto LABEL_7;
    }

    v91 = OUTLINED_FUNCTION_24_18();
    v93 = a1 == v91 && a2 == v92;
    if (v93 || (OUTLINED_FUNCTION_14_3(v91, v92) & 1) != 0)
    {

      v10 = 6;
      goto LABEL_7;
    }

LABEL_62:
    v94 = a1 == 0xD000000000000012 && 0x80000001C90CA340 == a2;
    if (v94 || (OUTLINED_FUNCTION_14_3(0xD000000000000012, 0x80000001C90CA340) & 1) != 0)
    {

      v10 = 7;
      goto LABEL_7;
    }

    goto LABEL_69;
  }

  *a3 = 2;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  return result;
}

void sub_1C8E30978(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  v8 = v8 && v2 == v7;
  if (v8)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_5_29(v6);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v11)
  {

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_5_29(v10);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_17:
    v9 = 2;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v14)
  {

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_5_29(v13);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_25:
    v9 = 3;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v17)
  {

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_5_29(v16);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_33:
    v9 = 4;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v20)
  {

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_5_29(v19);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_41:
    v9 = 5;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v23)
  {

    goto LABEL_49;
  }

  OUTLINED_FUNCTION_5_29(v22);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_49:
    v9 = 6;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v26)
  {

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_5_29(v25);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_57:
    v9 = 7;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v29)
  {

    goto LABEL_65;
  }

  OUTLINED_FUNCTION_5_29(v28);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_65:
    v9 = 9;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v32)
  {

    goto LABEL_73;
  }

  OUTLINED_FUNCTION_5_29(v31);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_73:
    v9 = 10;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v35)
  {

    goto LABEL_81;
  }

  OUTLINED_FUNCTION_5_29(v34);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_81:
    v9 = 11;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v38)
  {

    goto LABEL_89;
  }

  OUTLINED_FUNCTION_5_29(v37);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_89:
    v9 = 13;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v41)
  {

    goto LABEL_97;
  }

  OUTLINED_FUNCTION_5_29(v40);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_97:
    v9 = 15;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v44)
  {

    goto LABEL_105;
  }

  OUTLINED_FUNCTION_5_29(v43);
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_105:
    v9 = 16;
    goto LABEL_9;
  }

  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v47)
  {

    v9 = 14;
  }

  else
  {
    v49 = OUTLINED_FUNCTION_5_29(v46);

    v9 = 14;
    if ((v49 & 1) == 0)
    {
      v9 = 0;
    }
  }

LABEL_9:
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
}

uint64_t sub_1C8E30FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 32);
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v11 = *(a2 + 32);
  return sub_1C8E5A270(v8, v10, a3, a4, a5) & 1;
}

uint64_t sub_1C8E31028(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C90CA320 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001ALL && 0x80000001C90CA2E0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8E31140(char a1)
{
  if (!a1)
  {
    return 0x7974706D65;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_1C8E311A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E31028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E311C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E35FA4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E31204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E35FA4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E31240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E360A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E3127C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E360A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E312B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3604C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E312F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3604C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E31330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E35FF8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E3136C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E35FF8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void SystemTypeProtocol.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v49 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C88, &qword_1C9088D60);
  OUTLINED_FUNCTION_11();
  v44 = v6;
  v45 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97();
  v43 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C90, &qword_1C9088D68);
  OUTLINED_FUNCTION_11();
  v41 = v10;
  v42 = v9;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C98, &qword_1C9088D70);
  OUTLINED_FUNCTION_11();
  v40 = v15;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CA0, &qword_1C9088D78);
  OUTLINED_FUNCTION_11();
  v47 = v18;
  v48 = v17;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v20 = v0[1];
  v46 = *v0;
  v39 = v20;
  v21 = *(v0 + 16);
  v22 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C8E35FA4(v22, v23, v24);
  v25 = sub_1C9064E1C();
  if (v21)
  {
    if (v21 != 1)
    {
      sub_1C8E360A0(v25, v26, v27);
      OUTLINED_FUNCTION_31_12(&type metadata for SystemTypeProtocol.Metadata.EmptyCodingKeys);
      (*(v40 + 8))(v2, v14);
      v37 = OUTLINED_FUNCTION_48_9();
      v38(v37);
      goto LABEL_7;
    }

    sub_1C8E35FF8(v25, v26, v27);
    v28 = v43;
    OUTLINED_FUNCTION_31_12(&type metadata for SystemTypeProtocol.Metadata.PersistentFileIdentifiableCodingKeys);
    v50 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CB8, &qword_1C9088D80);
    OUTLINED_FUNCTION_30_18();
    sub_1C8E360F4(v29, v30, v31, MEMORY[0x1E69E6300]);
    v32 = v45;
    sub_1C9064B8C();
    (*(v44 + 8))(v28, v32);
  }

  else
  {
    sub_1C8E3604C(v25, v26, v27);
    OUTLINED_FUNCTION_31_12(&type metadata for SystemTypeProtocol.Metadata.IntentUpdatableEntityCodingKeys);
    v33 = v42;
    sub_1C9064B2C();
    OUTLINED_FUNCTION_38_13();
    v34(v13, v33);
  }

  v35 = OUTLINED_FUNCTION_48_9();
  v36(v35);
LABEL_7:
  OUTLINED_FUNCTION_198();
}

void SystemTypeProtocol.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_196();
  a23 = v25;
  a24 = v26;
  v101 = v24;
  v28 = v27;
  v98 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CD0, &qword_1C9088D88);
  OUTLINED_FUNCTION_11();
  v96 = v30;
  v97 = v31;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_97();
  v100 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CD8, &qword_1C9088D90);
  OUTLINED_FUNCTION_11();
  v94 = v34;
  v95 = v35;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_38();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CE0, &qword_1C9088D98);
  OUTLINED_FUNCTION_11();
  v93 = v38;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v90 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CE8, &unk_1C9088DA0);
  OUTLINED_FUNCTION_11();
  v99 = v43;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v90 - v45;
  v47 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1C8E35FA4(v47, v48, v49);
  v50 = v101;
  sub_1C9064DEC();
  if (v50)
  {
    goto LABEL_9;
  }

  v91 = v37;
  v92 = v41;
  v101 = v28;
  v51 = sub_1C9064A9C();
  v55 = sub_1C8CB8914(v51, 0);
  if (v53 == v54 >> 1)
  {
LABEL_8:
    v65 = sub_1C90647DC();
    swift_allocError();
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v67 = &type metadata for SystemTypeProtocol.Metadata;
    v68 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v68);
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    v69 = OUTLINED_FUNCTION_9_21();
    v70(v69);
    v28 = v101;
LABEL_9:
    v71 = v28;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v71);
    OUTLINED_FUNCTION_198();
    return;
  }

  v90[1] = 0;
  if (v53 < (v54 >> 1))
  {
    v56 = *(v52 + v53);
    sub_1C8CB891C(v53 + 1, v54 >> 1, v55, v52, v53, v54);
    v58 = v57;
    v60 = v59;
    v61 = swift_unknownObjectRelease();
    if (v58 == v60 >> 1)
    {
      if (v56)
      {
        if (v56 == 1)
        {
          a13 = 1;
          sub_1C8E3604C(v61, v62, v63);
          OUTLINED_FUNCTION_32_10(&type metadata for SystemTypeProtocol.Metadata.IntentUpdatableEntityCodingKeys, &a13);
          v64 = v98;
          v80 = sub_1C9064A0C();
          v82 = v81;
          swift_unknownObjectRelease();
          v83 = OUTLINED_FUNCTION_47_9();
          v84(v83);
          v85 = OUTLINED_FUNCTION_9_21();
          v86(v85);
          v87 = 0;
        }

        else
        {
          a14 = 2;
          sub_1C8E35FF8(v61, v62, v63);
          OUTLINED_FUNCTION_32_10(&type metadata for SystemTypeProtocol.Metadata.PersistentFileIdentifiableCodingKeys, &a14);
          v64 = v98;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CB8, &qword_1C9088D80);
          OUTLINED_FUNCTION_28_13();
          sub_1C8E360F4(v76, v77, v78, MEMORY[0x1E69E6330]);
          sub_1C9064A6C();
          v79 = v99;
          swift_unknownObjectRelease();
          v88 = OUTLINED_FUNCTION_49_8();
          v89(v88);
          (*(v79 + 8))(v46, v42);
          v82 = 0;
          v80 = v102;
          v87 = 1;
        }
      }

      else
      {
        a12 = 0;
        sub_1C8E360A0(v61, v62, v63);
        v72 = v92;
        OUTLINED_FUNCTION_32_10(&type metadata for SystemTypeProtocol.Metadata.EmptyCodingKeys, &a12);
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_38_13();
        v73(v72, v91);
        v74 = OUTLINED_FUNCTION_9_21();
        v75(v74);
        v80 = 0;
        v82 = 0;
        v87 = 2;
        v64 = v98;
      }

      *v64 = v80;
      *(v64 + 8) = v82;
      *(v64 + 16) = v87;
      v71 = v101;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

double SystemTypeProtocol.init(from:metadata:)@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = a1;
  sub_1C8E30978(v6, &v27);
  v21 = v27;
  v22 = v28;
  v7 = v29;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 actionIdentifier];
    v11 = sub_1C9063EEC();
    v13 = v12;
    swift_unknownObjectRelease();

    v15 = 0;
  }

  else
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      v18 = [v17 supportedContentTypes];
      sub_1C9063C4C();
      v11 = sub_1C906419C();
      swift_unknownObjectRelease();

      v13 = 0;
      v15 = 1;
    }

    else
    {
      v11 = 0;
      v13 = 0;
      v15 = 2;
    }
  }

  v27 = v21;
  v28 = v22;
  v29 = v7;
  v23[0] = v11;
  v23[1] = v13;
  v24 = v15;
  SystemTypeProtocol.init(from:metadata:)(&v27, v23, v14, v25);

  swift_unknownObjectRelease();
  if (!v4)
  {
    v20 = v25[1];
    *a3 = v25[0];
    a3[1] = v20;
    a3[2] = v26[0];
    result = *(v26 + 9);
    *(a3 + 41) = *(v26 + 9);
  }

  return result;
}

uint64_t SystemTypeProtocol.init(from:metadata:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a9@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = *(a1 + 32);
  v17 = *a2;
  v16 = *(a2 + 8);
  v18 = *(a2 + 16);
  v22[0] = *a1;
  v22[1] = v12;
  v22[2] = v13;
  v22[3] = v14;
  v23 = v15;
  v24 = v17;
  v25 = v16;
  v26 = v18;
  if (v15 != 2)
  {
    goto LABEL_52;
  }

  v19 = v13 | v12 | v14;
  if (v11 == 1 && !v19)
  {
    OUTLINED_FUNCTION_27_12();
    v17 = 1;
    goto LABEL_54;
  }

  if (v11 == 2 && !v19)
  {
    OUTLINED_FUNCTION_27_12();
    v17 = 2;
    goto LABEL_54;
  }

  if (v11 == 3 && !v19)
  {
    v16 = 0;
    v17 = 3;
LABEL_53:
    v9 = 3;
    goto LABEL_54;
  }

  if (v11 == 4 && !v19)
  {
    OUTLINED_FUNCTION_27_12();
    v17 = 4;
    goto LABEL_54;
  }

  if (v11 == 5 && !v19)
  {
    OUTLINED_FUNCTION_27_12();
    v17 = 5;
    goto LABEL_54;
  }

  if (v11 == 6 && !v19)
  {
    OUTLINED_FUNCTION_27_12();
    v17 = 6;
    goto LABEL_54;
  }

  if (v11 == 7 && !v19)
  {
    OUTLINED_FUNCTION_27_12();
    v17 = 7;
    goto LABEL_54;
  }

  if (v11 == 9 && !v19)
  {
    OUTLINED_FUNCTION_27_12();
    v17 = 9;
    goto LABEL_54;
  }

  if (v11 != 10 || v19)
  {
    if (v11 == 11 && !v19)
    {
      OUTLINED_FUNCTION_27_12();
      v17 = 11;
      goto LABEL_54;
    }

    if (v11 == 12 && !v19)
    {
      if (v18)
      {
        goto LABEL_29;
      }

LABEL_37:

      v9 = 1;
      goto LABEL_54;
    }

    if (v11 == 13 && !v19)
    {
      OUTLINED_FUNCTION_27_12();
      v17 = 12;
      goto LABEL_54;
    }

    if (v11 != 14 || v19)
    {
      if (v11 == 15 && !v19)
      {
        OUTLINED_FUNCTION_27_12();
        v17 = 13;
        goto LABEL_54;
      }

      if (v11 == 16 && !v19)
      {
        OUTLINED_FUNCTION_27_12();
        v17 = 14;
        goto LABEL_54;
      }
    }

    else if (v18 == 1)
    {

      v9 = 2;
      goto LABEL_54;
    }

LABEL_52:
    v17 = 0;
    v16 = 0;
    goto LABEL_53;
  }

  if (!v18)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v18 == 1)
  {
    sub_1C8E361C0(a1, a2, a3);
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    return sub_1C8D14208(v22, &qword_1EC316CF0, &qword_1C9088DB0);
  }

  OUTLINED_FUNCTION_27_12();
  v17 = 10;
LABEL_54:
  result = sub_1C8D14208(v22, &qword_1EC316CF0, &qword_1C9088DB0);
  *a9 = v17;
  *(a9 + 8) = v16;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0;
  *(a9 + 56) = v9;
  return result;
}

uint64_t static SystemTypeProtocol.== infix(_:_:)(_OWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  v84 = *a1;
  v85 = v8;
  *v86 = a1[2];
  v9 = *v86;
  v10 = a2[1];
  v87 = *a2;
  v88 = v10;
  v12 = *a2;
  v11 = a2[1];
  *v89 = a2[2];
  *&v89[9] = *(a2 + 41);
  v13 = *(a1 + 41);
  *&v86[9] = v13;
  v90[0] = v84;
  v90[1] = v8;
  v91[0] = v9;
  *(v91 + 9) = v13;
  *(v92 + 9) = *(a2 + 41);
  v14 = a2[2];
  v91[3] = v11;
  v92[0] = v14;
  v91[2] = v12;
  v15 = *(&v84 + 1);
  switch(HIBYTE(v13))
  {
    case 1:
      if (v89[24] != 1)
      {
        goto LABEL_103;
      }

      v37 = v84 == v87 && *(&v84 + 1) == *(&v87 + 1);
      if (!v37)
      {
        v16 = sub_1C9064C2C();
        goto LABEL_19;
      }

      v50 = OUTLINED_FUNCTION_55_6(a1, *(&v84 + 1), v87, *(&v87 + 1), a5, a6, a7, a8, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75);
      OUTLINED_FUNCTION_54_6(v50, v51, v52, v53, v54, v55, v56, v57, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v76, v77, v78, v79, v80, v81, v82, v83);
      goto LABEL_102;
    case 2:
      if (v89[24] != 2)
      {
        goto LABEL_103;
      }

      v24 = OUTLINED_FUNCTION_55_6(a1, *(&v84 + 1), a3, a4, a5, a6, a7, a8, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75);
      OUTLINED_FUNCTION_54_6(v24, v25, v26, v27, v28, v29, v30, v31, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v76, v77, v78, v79, v80, v81, v82, v83);
      sub_1C8CEAF48();
      v33 = v32;
      goto LABEL_20;
    case 3:
      v34 = *v86 | *&v86[8] | (v13 >> 56);
      if (v8 | *(&v84 + 1) | v84 | *(&v8 + 1) | v34)
      {
        v35 = v8 | *(&v84 + 1) | *(&v8 + 1) | v34;
        if (v84 != 1 || v35)
        {
          if (v84 != 2 || v35)
          {
            if (v84 != 3 || v35)
            {
              if (v84 != 4 || v35)
              {
                if (v84 != 5 || v35)
                {
                  if (v84 != 6 || v35)
                  {
                    if (v84 != 7 || v35)
                    {
                      if (v84 != 8 || v35)
                      {
                        if (v84 != 9 || v35)
                        {
                          if (v84 != 10 || v35)
                          {
                            if (v84 != 11 || v35)
                            {
                              if (v84 != 12 || v35)
                              {
                                if (v84 != 13 || v35)
                                {
                                  OUTLINED_FUNCTION_21_13();
                                  if (!v37 || v87 != 14)
                                  {
                                    goto LABEL_103;
                                  }
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_21_13();
                                  if (!v37 || v87 != 13)
                                  {
                                    goto LABEL_103;
                                  }
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_21_13();
                                if (!v37 || v87 != 12)
                                {
                                  goto LABEL_103;
                                }
                              }
                            }

                            else
                            {
                              OUTLINED_FUNCTION_21_13();
                              if (!v37 || v87 != 11)
                              {
                                goto LABEL_103;
                              }
                            }
                          }

                          else
                          {
                            OUTLINED_FUNCTION_21_13();
                            if (!v37 || v87 != 10)
                            {
                              goto LABEL_103;
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_21_13();
                          if (!v37 || v87 != 9)
                          {
                            goto LABEL_103;
                          }
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_21_13();
                        if (!v37 || v87 != 8)
                        {
                          goto LABEL_103;
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_21_13();
                      if (!v37 || v87 != 7)
                      {
                        goto LABEL_103;
                      }
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_21_13();
                    if (!v37 || v87 != 6)
                    {
                      goto LABEL_103;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_21_13();
                  if (!v37 || v87 != 5)
                  {
                    goto LABEL_103;
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_21_13();
                if (!v37 || v87 != 4)
                {
                  goto LABEL_103;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_21_13();
              if (!v37 || v87 != 3)
              {
                goto LABEL_103;
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_21_13();
            if (!v37 || v87 != 2)
            {
              goto LABEL_103;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_13();
          if (!v37 || v87 != 1)
          {
            goto LABEL_103;
          }
        }

        v49 = *(&v87 + 1);
        v58 = vorrq_s8(*(v36 + 88), *(v36 + 104));
        v48 = *&vorr_s8(*v58.i8, *&vextq_s8(v58, v58, 8uLL)) | v88;
      }

      else
      {
        OUTLINED_FUNCTION_21_13();
        if (!v37)
        {
          goto LABEL_103;
        }

        v47 = vorrq_s8(*(v46 + 88), *(v46 + 104));
        v48 = *&vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL)) | v88;
        v49 = *(&v87 + 1) | v87;
      }

      if (!(v48 | v49))
      {
LABEL_102:
        sub_1C8D14208(v90, &qword_1EC316CF8, &qword_1C9088DB8);
        v33 = 1;
        return v33 & 1;
      }

LABEL_103:
      v59 = OUTLINED_FUNCTION_55_6(a1, v15, a3, a4, a5, a6, a7, a8, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75);
      OUTLINED_FUNCTION_54_6(v59, v60, v61, v62, v63, v64, v65, v66, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v76, v77, v78, v79, v80, v81, v82, v83);
      sub_1C8D14208(v90, &qword_1EC316CF8, &qword_1C9088DB8);
      v33 = 0;
      return v33 & 1;
    default:
      if (v89[24])
      {
        goto LABEL_103;
      }

      v72 = v84;
      v73 = v8;
      v74 = *v86;
      v75 = v13 >> 56;
      v68 = v87;
      v69 = v88;
      v70 = *v89;
      v71 = *&v89[16];
      v16 = static AssistantSchemaIdentifier.== infix(_:_:)(&v72, &v68);
LABEL_19:
      v33 = v16;
      v38 = OUTLINED_FUNCTION_55_6(v16, v17, v18, v19, v20, v21, v22, v23, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75);
      OUTLINED_FUNCTION_54_6(v38, v39, v40, v41, v42, v43, v44, v45, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v76, v77, v78, v79, v80, v81, v82, v83);
LABEL_20:
      sub_1C8D14208(v90, &qword_1EC316CF8, &qword_1C9088DB8);
      return v33 & 1;
  }
}

uint64_t sub_1C8E325F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E61747369737361 && a2 == 0xEF616D6568635374;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6363416C69616DLL && a2 == 0xEB00000000746E75;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726464416C69616DLL && a2 == 0xED00006565737365;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7373654D6C69616DLL && a2 == 0xEB00000000656761;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x786F626C69616DLL && a2 == 0xE700000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x654D746E65746E69 && a2 == 0xED00006567617373;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x476567617373656DLL && a2 == 0xEC00000070756F72;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x80000001C90CA340 == a2;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6569736E617274 && a2 == 0xEF797469746E4574;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E45657571696E75 && a2 == 0xEC00000079746974;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6C62617461647075 && a2 == 0xEF797469746E4565;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x4564657865646E69 && a2 == 0xED0000797469746ELL;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000015 && 0x80000001C90CA320 == a2;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000010 && 0x80000001C90CA300 == a2;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD00000000000001ALL && 0x80000001C90CA2E0 == a2;
                                if (v20 || (sub_1C9064C2C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x65536C6175736976 && a2 == 0xEC00000068637261;
                                  if (v21 || (sub_1C9064C2C() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0x65536C6175736976 && a2 == 0xEF52434F68637261)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_1C9064C2C();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C8E32B88(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6E61747369737361;
      break;
    case 2:
      result = 0x6F6363416C69616DLL;
      break;
    case 3:
      result = 0x726464416C69616DLL;
      break;
    case 4:
      result = 0x7373654D6C69616DLL;
      break;
    case 5:
      result = 0x786F626C69616DLL;
      break;
    case 6:
      result = 0x654D746E65746E69;
      break;
    case 7:
      result = 0x476567617373656DLL;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6E6569736E617274;
      break;
    case 10:
      result = 0x6E45657571696E75;
      break;
    case 11:
      result = 0x6C62617461647075;
      break;
    case 12:
      result = 0x4564657865646E69;
      break;
    case 13:
      v3 = 5;
      goto LABEL_15;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      v3 = 10;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
    case 16:
    case 17:
      result = 0x65536C6175736976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E32DE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001C90C9C20 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E32E60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001C90CB6A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E32EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E367A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E32F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E367A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E32F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E325F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E32F88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8E32B80();
  *a1 = result;
  return result;
}

uint64_t sub_1C8E32FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36214(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E32FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36214(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E33028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3640C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E33064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3640C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E330A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36604(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E330DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36604(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E33118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E363B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E33154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E363B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E33190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36754(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E331CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36754(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E33208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36700(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E33244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36700(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E33280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E366AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E332BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E366AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E332F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36658(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E33334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36658(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E33370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E365B0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E333AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E365B0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E333E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3655C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E33424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3655C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E33460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36310(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E3349C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36310(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E334D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36508(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E33514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36508(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E33550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E364B4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E3358C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E364B4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E335C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E367FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E33604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E367FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E33640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36460(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E3367C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36460(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E336B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36364(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E336F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36364(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E33730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E362BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E3376C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E362BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E337A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36268(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E337E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E36268(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void SystemTypeProtocol.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v155 = v21;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D00, &qword_1C9088DC0);
  OUTLINED_FUNCTION_4_22(v26, v139);
  v137[4] = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D08, &qword_1C9088DC8);
  OUTLINED_FUNCTION_4_22(v30, v138);
  v137[1] = v31;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D10, &qword_1C9088DD0);
  OUTLINED_FUNCTION_11();
  v148 = v35;
  v149 = v34;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v147 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D18, &qword_1C9088DD8);
  OUTLINED_FUNCTION_4_22(v38, v140);
  v137[7] = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D20, &qword_1C9088DE0);
  OUTLINED_FUNCTION_11();
  v145 = v43;
  v146 = v42;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_97();
  v144 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D28, &qword_1C9088DE8);
  OUTLINED_FUNCTION_4_22(v46, v141);
  v137[10] = v47;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D30, &qword_1C9088DF0);
  OUTLINED_FUNCTION_4_22(v50, &v142);
  v137[13] = v51;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D38, &qword_1C9088DF8);
  OUTLINED_FUNCTION_4_22(v54, &v145);
  v137[16] = v55;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D40, &qword_1C9088E00);
  OUTLINED_FUNCTION_4_22(v58, &v148);
  v137[19] = v59;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D48, &qword_1C9088E08);
  OUTLINED_FUNCTION_4_22(v62, &v151);
  v137[22] = v63;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D50, &qword_1C9088E10);
  OUTLINED_FUNCTION_4_22(v66, &v154);
  v137[25] = v67;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D58, &qword_1C9088E18);
  OUTLINED_FUNCTION_4_22(v70, v157);
  v137[28] = v71;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D60, &qword_1C9088E20);
  OUTLINED_FUNCTION_4_22(v74, v158);
  v137[31] = v75;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D68, &qword_1C9088E28);
  OUTLINED_FUNCTION_4_22(v78, &v159);
  v138[0] = v79;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D70, &qword_1C9088E30);
  OUTLINED_FUNCTION_4_22(v82, &a11);
  v139[0] = v83;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D78, &qword_1C9088E38);
  OUTLINED_FUNCTION_4_22(v86, &a14);
  v140[0] = v87;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D80, &qword_1C9088E40);
  OUTLINED_FUNCTION_11();
  v142 = v91;
  v143 = v90;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D88, &qword_1C9088E48);
  OUTLINED_FUNCTION_4_22(v94, &a17);
  v141[0] = v95;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D90, &qword_1C9088E50);
  OUTLINED_FUNCTION_11();
  v153 = v98;
  v154 = v99;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v100);
  v102 = v137 - v101;
  v103 = v20[1];
  v160 = *v20;
  v105 = v20[2];
  v104 = v20[3];
  v106 = v20[5];
  v150 = v20[4];
  v151 = v103;
  v107 = v20[6];
  v108 = *(v20 + 56);
  v109 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1C8E36214(v109, v110, v111);
  v152 = v102;
  v112 = sub_1C9064E1C();
  switch(v108)
  {
    case 1uLL:
      LOBYTE(v156) = 13;
      sub_1C8E363B8(v112, v113, v114);
      v125 = v144;
      OUTLINED_FUNCTION_40_13(&type metadata for SystemTypeProtocol.IntentUpdatableEntityCodingKeys);
      v129 = v146;
      sub_1C9064B2C();
      v130 = v145;
      goto LABEL_9;
    case 2uLL:
      LOBYTE(v156) = 15;
      sub_1C8E36310(v112, v113, v114);
      v125 = v147;
      OUTLINED_FUNCTION_40_13(&type metadata for SystemTypeProtocol.PersistentFileIdentifiableCodingKeys);
      v156 = v160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CB8, &qword_1C9088D80);
      OUTLINED_FUNCTION_30_18();
      sub_1C8E360F4(v126, v127, v128, MEMORY[0x1E69E6300]);
      v129 = v149;
      sub_1C9064B8C();
      v130 = v148;
LABEL_9:
      (*(v130 + 8))(v125, v129);
      OUTLINED_FUNCTION_38_13();
      v123 = v108;
      v124 = v106;
      goto LABEL_10;
    case 3uLL:
      v131 = v150 | v106 | v107;
      if (v105 | v151 | v160 | v104 | v131)
      {
        v132 = v105 | v151 | v104 | v131;
        if (v160 != 1 || v132)
        {
          if (v160 != 2 || v132)
          {
            if (v160 != 3 || v132)
            {
              if (v160 != 4 || v132)
              {
                if (v160 != 5 || v132)
                {
                  if (v160 != 6 || v132)
                  {
                    if (v160 != 7 || v132)
                    {
                      if (v160 != 8 || v132)
                      {
                        if (v160 != 9 || v132)
                        {
                          if (v160 != 10 || v132)
                          {
                            if (v160 != 11 || v132)
                            {
                              if (v160 != 12 || v132)
                              {
                                if (v160 != 13 || v132)
                                {
                                  LOBYTE(v156) = 17;
                                  sub_1C8E36268(v112, v113, v114);
                                  OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.VisualSearchOCRCodingKeys);
                                  v133 = OUTLINED_FUNCTION_6_26();
                                  v135 = v139;
                                }

                                else
                                {
                                  LOBYTE(v156) = 16;
                                  sub_1C8E362BC(v112, v113, v114);
                                  OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.VisualSearchCodingKeys);
                                  v133 = OUTLINED_FUNCTION_6_26();
                                  v135 = v138;
                                }
                              }

                              else
                              {
                                LOBYTE(v156) = 14;
                                sub_1C8E36364(v112, v113, v114);
                                OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.UrlRepresentableCodingKeys);
                                v133 = OUTLINED_FUNCTION_6_26();
                                v135 = v140;
                              }
                            }

                            else
                            {
                              LOBYTE(v156) = 12;
                              sub_1C8E3640C(v112, v113, v114);
                              OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.IndexedEntityCodingKeys);
                              v133 = OUTLINED_FUNCTION_6_26();
                              v135 = v141;
                            }
                          }

                          else
                          {
                            LOBYTE(v156) = 11;
                            sub_1C8E36460(v112, v113, v114);
                            OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.UpdatableEntityCodingKeys);
                            v133 = OUTLINED_FUNCTION_6_26();
                            v135 = &v142;
                          }
                        }

                        else
                        {
                          LOBYTE(v156) = 10;
                          sub_1C8E364B4(v112, v113, v114);
                          OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.UniqueEntityCodingKeys);
                          v133 = OUTLINED_FUNCTION_6_26();
                          v135 = &v145;
                        }
                      }

                      else
                      {
                        LOBYTE(v156) = 9;
                        sub_1C8E36508(v112, v113, v114);
                        OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.TransientEntityCodingKeys);
                        v133 = OUTLINED_FUNCTION_6_26();
                        v135 = &v148;
                      }
                    }

                    else
                    {
                      LOBYTE(v156) = 8;
                      sub_1C8E3655C(v112, v113, v114);
                      OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.MessageParticipantCodingKeys);
                      v133 = OUTLINED_FUNCTION_6_26();
                      v135 = &v151;
                    }
                  }

                  else
                  {
                    LOBYTE(v156) = 7;
                    sub_1C8E365B0(v112, v113, v114);
                    OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.MessageGroupCodingKeys);
                    v133 = OUTLINED_FUNCTION_6_26();
                    v135 = &v154;
                  }
                }

                else
                {
                  LOBYTE(v156) = 6;
                  sub_1C8E36604(v112, v113, v114);
                  OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.IntentMessageCodingKeys);
                  v133 = OUTLINED_FUNCTION_6_26();
                  v135 = v157;
                }
              }

              else
              {
                LOBYTE(v156) = 5;
                sub_1C8E36658(v112, v113, v114);
                OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.MailboxCodingKeys);
                v133 = OUTLINED_FUNCTION_6_26();
                v135 = v158;
              }
            }

            else
            {
              LOBYTE(v156) = 4;
              sub_1C8E366AC(v112, v113, v114);
              OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.MailMessageCodingKeys);
              v133 = OUTLINED_FUNCTION_6_26();
              v135 = &v159;
            }
          }

          else
          {
            LOBYTE(v156) = 3;
            sub_1C8E36700(v112, v113, v114);
            OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.MailAddresseeCodingKeys);
            v133 = OUTLINED_FUNCTION_6_26();
            v135 = &a11;
          }
        }

        else
        {
          LOBYTE(v156) = 2;
          sub_1C8E36754(v112, v113, v114);
          OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.MailAccountCodingKeys);
          v133 = OUTLINED_FUNCTION_6_26();
          v135 = &a14;
        }
      }

      else
      {
        LOBYTE(v156) = 0;
        sub_1C8E367FC(v112, v113, v114);
        OUTLINED_FUNCTION_4_31(&type metadata for SystemTypeProtocol.UnknownCodingKeys);
        v133 = OUTLINED_FUNCTION_6_26();
        v135 = &a17;
      }

      v134(v133, *(v135 - 32));
      OUTLINED_FUNCTION_38_13();
      v136(v109, v104);
      goto LABEL_50;
    default:
      LOBYTE(v156) = 1;
      sub_1C8E367A8(v112, v113, v114);
      v115 = v141[2];
      v117 = v152;
      v116 = v153;
      v118 = sub_1C9064ACC();
      v156 = v160;
      v157[0] = v151;
      v157[1] = v105;
      v157[2] = v104;
      v158[0] = v150;
      v158[1] = v106;
      v158[2] = v107;
      sub_1C8E28354(v118, v119, v120);
      v121 = v143;
      sub_1C9064B8C();
      (*(v142 + 8))(v115, v121);
      OUTLINED_FUNCTION_38_13();
      v123 = v117;
      v124 = v116;
LABEL_10:
      v122(v123, v124);
LABEL_50:
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t SystemTypeProtocol.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  switch(*(v1 + 56))
  {
    case 1:
      MEMORY[0x1CCA82810](13);
      goto LABEL_15;
    case 2:
      MEMORY[0x1CCA82810](15);

      result = sub_1C8D03724(a1, v2);
      break;
    case 3:
      v9 = v6 | *(v1 + 40) | *(v1 + 48);
      if (v5 | v3 | v2 | v4 | v9)
      {
        v10 = v5 | v3 | v4 | v9;
        if (v2 == 1 && v10 == 0)
        {
          v12 = 2;
        }

        else if (v2 != 2 || v10)
        {
          if (v2 != 3 || v10)
          {
            if (v2 != 4 || v10)
            {
              if (v2 != 5 || v10)
              {
                if (v2 != 6 || v10)
                {
                  if (v2 != 7 || v10)
                  {
                    if (v2 != 8 || v10)
                    {
                      if (v2 != 9 || v10)
                      {
                        if (v2 != 10 || v10)
                        {
                          if (v2 != 11 || v10)
                          {
                            if (v2 != 12 || v10)
                            {
                              if (v2 != 13 || v10)
                              {
                                v12 = 17;
                              }

                              else
                              {
                                v12 = 16;
                              }
                            }

                            else
                            {
                              v12 = 14;
                            }
                          }

                          else
                          {
                            v12 = 12;
                          }
                        }

                        else
                        {
                          v12 = 11;
                        }
                      }

                      else
                      {
                        v12 = 10;
                      }
                    }

                    else
                    {
                      v12 = 9;
                    }
                  }

                  else
                  {
                    v12 = 8;
                  }
                }

                else
                {
                  v12 = 7;
                }
              }

              else
              {
                v12 = 6;
              }
            }

            else
            {
              v12 = 5;
            }
          }

          else
          {
            v12 = 4;
          }
        }

        else
        {
          v12 = 3;
        }
      }

      else
      {
        v12 = 0;
      }

      result = MEMORY[0x1CCA82810](v12);
      break;
    default:
      MEMORY[0x1CCA82810](1);
      sub_1C9063FBC();
      MEMORY[0x1CCA82830](v5);
      MEMORY[0x1CCA82830](v4);
      MEMORY[0x1CCA82830](v6);
LABEL_15:

      result = sub_1C9063FBC();
      break;
  }

  return result;
}

uint64_t SystemTypeProtocol.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  SystemTypeProtocol.hash(into:)(v1);
  return sub_1C9064DBC();
}

void SystemTypeProtocol.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v268 = v26;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316DE8, &qword_1C9088E58);
  OUTLINED_FUNCTION_11();
  v253 = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_97();
  v266 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316DF0, &qword_1C9088E60);
  OUTLINED_FUNCTION_4_22(v30, &a10);
  v251 = v31;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_97();
  v264 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316DF8, &qword_1C9088E68);
  OUTLINED_FUNCTION_4_22(v34, &a13);
  v254 = v35;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v265 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E00, &qword_1C9088E70);
  OUTLINED_FUNCTION_4_22(v38, &v276);
  v247 = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  v262 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E08, &qword_1C9088E78);
  OUTLINED_FUNCTION_4_22(v42, &v277);
  v248 = v43;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_97();
  v263 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E10, &qword_1C9088E80);
  OUTLINED_FUNCTION_4_22(v46, v275 + 8);
  v245 = v47;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  v261 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E18, &qword_1C9088E88);
  OUTLINED_FUNCTION_4_22(v50, &v274);
  v243 = v51;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_97();
  v260 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E20, &qword_1C9088E90);
  OUTLINED_FUNCTION_4_22(v54, &v272);
  v241 = v55;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_97();
  v259 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E28, &qword_1C9088E98);
  OUTLINED_FUNCTION_4_22(v58, &v270);
  v239 = v59;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_97();
  v271 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E30, &qword_1C9088EA0);
  OUTLINED_FUNCTION_4_22(v62, &v268);
  v237 = v63;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E38, &qword_1C9088EA8);
  OUTLINED_FUNCTION_4_22(v66, &v261);
  v236 = v67;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E40, &qword_1C9088EB0);
  OUTLINED_FUNCTION_4_22(v70, &v265);
  v234 = v71;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_97();
  v270 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E48, &qword_1C9088EB8);
  OUTLINED_FUNCTION_4_22(v74, &v263);
  v232 = v75;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_97();
  v269 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E50, &qword_1C9088EC0);
  OUTLINED_FUNCTION_4_22(v78, &v260);
  v229 = v79;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E58, &qword_1C9088EC8);
  OUTLINED_FUNCTION_4_22(v82, &v258);
  v227 = v83;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E60, &qword_1C9088ED0);
  OUTLINED_FUNCTION_4_22(v86, v256);
  v223 = v87;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E68, &qword_1C9088ED8);
  OUTLINED_FUNCTION_4_22(v90, &v257);
  v225 = v91;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v92);
  v94 = v218 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E70, &qword_1C9088EE0);
  OUTLINED_FUNCTION_11();
  v222 = v96;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_38();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E78, &qword_1C9088EE8);
  OUTLINED_FUNCTION_11();
  v100 = v99;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v101);
  v103 = v218 - v102;
  v104 = v25[3];
  v272 = v25;
  v105 = __swift_project_boxed_opaque_existential_1(v25, v104);
  sub_1C8E36214(v105, v106, v107);
  v108 = a10;
  sub_1C9064DEC();
  if (v108)
  {
    goto LABEL_10;
  }

  v220 = v21;
  v219 = v95;
  v221 = v94;
  v109 = v269;
  v110 = v270;
  v111 = v271;
  a10 = v100;
  v112 = sub_1C9064A9C();
  v113 = sub_1C8CB8914(v112, 0);
  if (v115 == v116 >> 1)
  {
    v117 = a10;
LABEL_9:
    v134 = sub_1C90647DC();
    swift_allocError();
    v136 = v135;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v136 = &type metadata for SystemTypeProtocol;
    v137 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v137);
    (*(*(v134 - 8) + 104))(v136, *MEMORY[0x1E69E6AF8], v134);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v117 + 8))(v103, v98);
LABEL_10:
    v138 = v272;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v138);
    OUTLINED_FUNCTION_198();
    return;
  }

  v218[1] = 0;
  if (v115 < (v116 >> 1))
  {
    v218[0] = *(v114 + v115);
    sub_1C8CB891C(v115 + 1, v116 >> 1, v113, v114, v115, v116);
    v119 = v118;
    v121 = v120;
    v122 = swift_unknownObjectRelease();
    if (v119 == v121 >> 1)
    {
      v125 = v267;
      v126 = v268;
      switch(v218[0])
      {
        case 1:
          LOBYTE(v273) = 1;
          sub_1C8E367A8(v122, v123, v124);
          v181 = v221;
          v182 = OUTLINED_FUNCTION_13_19(&type metadata for SystemTypeProtocol.AssistantSchemaCodingKeys, &v273);
          sub_1C8E28C20(v182, v183, v184);
          v185 = v226;
          sub_1C9064A6C();
          v138 = v272;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296();
          v213(v181, v185);
          OUTLINED_FUNCTION_15_19();
          v214(v103, v98);
          v143 = 0;
          v131 = v273;
          v109 = v274;
          v133 = v275[0];
          v212 = v275[1];
          v132 = v276;
          goto LABEL_31;
        case 2:
          LOBYTE(v273) = 2;
          sub_1C8E36754(v122, v123, v124);
          v109 = v256[0];
          OUTLINED_FUNCTION_8_27(&type metadata for SystemTypeProtocol.MailAccountCodingKeys, &v273);
          swift_unknownObjectRelease();
          v164 = OUTLINED_FUNCTION_23();
          v165(v164, v224);
          v166 = OUTLINED_FUNCTION_2_44();
          v167(v166);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 1;
          goto LABEL_30;
        case 3:
          LOBYTE(v273) = 3;
          sub_1C8E36700(v122, v123, v124);
          v109 = v256[1];
          OUTLINED_FUNCTION_8_27(&type metadata for SystemTypeProtocol.MailAddresseeCodingKeys, &v273);
          swift_unknownObjectRelease();
          v173 = OUTLINED_FUNCTION_23();
          v174(v173, v228);
          v175 = OUTLINED_FUNCTION_2_44();
          v176(v175);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 2;
          goto LABEL_30;
        case 4:
          LOBYTE(v273) = 4;
          sub_1C8E366AC(v122, v123, v124);
          OUTLINED_FUNCTION_8_27(&type metadata for SystemTypeProtocol.MailMessageCodingKeys, &v273);
          swift_unknownObjectRelease();
          v152 = OUTLINED_FUNCTION_23();
          v153(v152, v230);
          v154 = OUTLINED_FUNCTION_2_44();
          v155(v154);
          v109 = 0;
          v132 = 0;
          v133 = 0uLL;
          v131 = 3;
          goto LABEL_16;
        case 5:
          LOBYTE(v273) = 5;
          sub_1C8E36658(v122, v123, v124);
          OUTLINED_FUNCTION_8_27(&type metadata for SystemTypeProtocol.MailboxCodingKeys, &v273);
          swift_unknownObjectRelease();
          v190 = OUTLINED_FUNCTION_23();
          v191(v190, v233);
          v192 = OUTLINED_FUNCTION_2_44();
          v193(v192);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 4;
          goto LABEL_30;
        case 6:
          LOBYTE(v273) = 6;
          sub_1C8E36604(v122, v123, v124);
          v109 = v110;
          OUTLINED_FUNCTION_13_19(&type metadata for SystemTypeProtocol.IntentMessageCodingKeys, &v273);
          swift_unknownObjectRelease();
          v197 = OUTLINED_FUNCTION_23();
          v198(v197, v235);
          v199 = OUTLINED_FUNCTION_2_44();
          v200(v199);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 5;
          goto LABEL_30;
        case 7:
          LOBYTE(v273) = 7;
          sub_1C8E365B0(v122, v123, v124);
          OUTLINED_FUNCTION_13_19(&type metadata for SystemTypeProtocol.MessageGroupCodingKeys, &v273);
          swift_unknownObjectRelease();
          v177 = OUTLINED_FUNCTION_6_26();
          v178(v177, v231);
          v179 = OUTLINED_FUNCTION_2_44();
          v180(v179);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 6;
          goto LABEL_30;
        case 8:
          LOBYTE(v273) = 8;
          sub_1C8E3655C(v122, v123, v124);
          v109 = v258;
          OUTLINED_FUNCTION_8_27(&type metadata for SystemTypeProtocol.MessageParticipantCodingKeys, &v273);
          swift_unknownObjectRelease();
          v205 = OUTLINED_FUNCTION_23();
          v206(v205, v238);
          v207 = OUTLINED_FUNCTION_2_44();
          v208(v207);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 7;
          goto LABEL_30;
        case 9:
          LOBYTE(v273) = 9;
          sub_1C8E36508(v122, v123, v124);
          v109 = v111;
          OUTLINED_FUNCTION_13_19(&type metadata for SystemTypeProtocol.TransientEntityCodingKeys, &v273);
          swift_unknownObjectRelease();
          v160 = OUTLINED_FUNCTION_23();
          v161(v160, v240);
          v162 = OUTLINED_FUNCTION_2_44();
          v163(v162);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 8;
          goto LABEL_30;
        case 0xALL:
          LOBYTE(v273) = 10;
          sub_1C8E364B4(v122, v123, v124);
          v109 = v259;
          OUTLINED_FUNCTION_8_27(&type metadata for SystemTypeProtocol.UniqueEntityCodingKeys, &v273);
          swift_unknownObjectRelease();
          v201 = OUTLINED_FUNCTION_23();
          v202(v201, v242);
          v203 = OUTLINED_FUNCTION_2_44();
          v204(v203);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 9;
          goto LABEL_30;
        case 0xBLL:
          LOBYTE(v273) = 11;
          sub_1C8E36460(v122, v123, v124);
          v109 = v260;
          OUTLINED_FUNCTION_8_27(&type metadata for SystemTypeProtocol.UpdatableEntityCodingKeys, &v273);
          swift_unknownObjectRelease();
          v148 = OUTLINED_FUNCTION_23();
          v149(v148, v244);
          v150 = OUTLINED_FUNCTION_2_44();
          v151(v150);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 10;
          goto LABEL_30;
        case 0xCLL:
          LOBYTE(v273) = 12;
          sub_1C8E3640C(v122, v123, v124);
          v109 = v261;
          OUTLINED_FUNCTION_8_27(&type metadata for SystemTypeProtocol.IndexedEntityCodingKeys, &v273);
          swift_unknownObjectRelease();
          v156 = OUTLINED_FUNCTION_23();
          v157(v156, v246);
          v158 = OUTLINED_FUNCTION_2_44();
          v159(v158);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 11;
          goto LABEL_30;
        case 0xDLL:
          LOBYTE(v273) = 13;
          sub_1C8E363B8(v122, v123, v124);
          v194 = v263;
          OUTLINED_FUNCTION_13_19(&type metadata for SystemTypeProtocol.IntentUpdatableEntityCodingKeys, &v273);
          v271 = v103;
          v195 = v250;
          v196 = sub_1C9064A0C();
          v138 = v272;
          v131 = v196;
          v109 = v215;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296();
          v216(v194, v195);
          OUTLINED_FUNCTION_15_19();
          v217(v271, v98);
          v143 = 1;
          goto LABEL_31;
        case 0xELL:
          LOBYTE(v273) = 14;
          sub_1C8E36364(v122, v123, v124);
          v109 = v262;
          OUTLINED_FUNCTION_8_27(&type metadata for SystemTypeProtocol.UrlRepresentableCodingKeys, &v273);
          swift_unknownObjectRelease();
          v144 = OUTLINED_FUNCTION_23();
          v145(v144, v249);
          v146 = OUTLINED_FUNCTION_2_44();
          v147(v146);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 12;
          goto LABEL_30;
        case 0xFLL:
          LOBYTE(v273) = 15;
          sub_1C8E36310(v122, v123, v124);
          v168 = v265;
          OUTLINED_FUNCTION_13_19(&type metadata for SystemTypeProtocol.PersistentFileIdentifiableCodingKeys, &v273);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CB8, &qword_1C9088D80);
          OUTLINED_FUNCTION_28_13();
          sub_1C8E360F4(v169, v170, v171, MEMORY[0x1E69E6330]);
          v172 = v255;
          sub_1C9064A6C();
          v109 = v168;
          v138 = v272;
          swift_unknownObjectRelease();
          v209 = OUTLINED_FUNCTION_23();
          v210(v209, v172);
          OUTLINED_FUNCTION_15_19();
          v211(v103, v98);
          v131 = v273;
          v143 = 2;
          goto LABEL_31;
        case 0x10:
          LOBYTE(v273) = 16;
          sub_1C8E362BC(v122, v123, v124);
          v109 = v264;
          OUTLINED_FUNCTION_8_27(&type metadata for SystemTypeProtocol.VisualSearchCodingKeys, &v273);
          swift_unknownObjectRelease();
          v139 = OUTLINED_FUNCTION_23();
          v140(v139, v252);
          v141 = OUTLINED_FUNCTION_2_44();
          v142(v141);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 13;
          goto LABEL_30;
        case 0x11:
          LOBYTE(v273) = 17;
          sub_1C8E36268(v122, v123, v124);
          v109 = v266;
          OUTLINED_FUNCTION_8_27(&type metadata for SystemTypeProtocol.VisualSearchOCRCodingKeys, &v273);
          swift_unknownObjectRelease();
          v186 = OUTLINED_FUNCTION_23();
          v187(v186, v125);
          v188 = OUTLINED_FUNCTION_2_44();
          v189(v188);
          *&v133 = OUTLINED_FUNCTION_2_1();
          v131 = 14;
          goto LABEL_30;
        default:
          LOBYTE(v273) = 0;
          sub_1C8E367FC(v122, v123, v124);
          OUTLINED_FUNCTION_8_27(&type metadata for SystemTypeProtocol.UnknownCodingKeys, &v273);
          swift_unknownObjectRelease();
          v127 = OUTLINED_FUNCTION_23();
          v128(v127, v219);
          v129 = OUTLINED_FUNCTION_2_44();
          v130(v129);
          v131 = 0;
          v109 = 0;
          v132 = 0;
          v133 = 0uLL;
LABEL_16:
          v143 = 3;
LABEL_30:
          v212 = 0uLL;
          v138 = v272;
LABEL_31:
          *v126 = v131;
          *(v126 + 8) = v109;
          *(v126 + 16) = v133;
          *(v126 + 32) = v212;
          *(v126 + 48) = v132;
          *(v126 + 56) = v143;
          break;
      }

      goto LABEL_11;
    }

    v117 = a10;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C8E35E58(uint64_t a1)
{
  sub_1C9064D7C();
  SystemTypeProtocol.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E35ED4@<X0>(uint64_t *a1@<X8>)
{
  result = SystemTypeProtocol.Identifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C8E35EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA605A8;
  if (!qword_1EDA605A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605A8);
  }

  return result;
}

unint64_t sub_1C8E35F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA605A0;
  if (!qword_1EDA605A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605A0);
  }

  return result;
}

unint64_t sub_1C8E35FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316CA8;
  if (!qword_1EC316CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316CA8);
  }

  return result;
}

unint64_t sub_1C8E35FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316CB0;
  if (!qword_1EC316CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316CB0);
  }

  return result;
}

unint64_t sub_1C8E3604C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316CC0;
  if (!qword_1EC316CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316CC0);
  }

  return result;
}

unint64_t sub_1C8E360A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316CC8;
  if (!qword_1EC316CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316CC8);
  }

  return result;
}

uint64_t sub_1C8E360F4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316CB8, &qword_1C9088D80);
    sub_1C8E3617C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8E3617C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C9063C4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E361C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A10;
  if (!qword_1EDA60A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A10);
  }

  return result;
}

unint64_t sub_1C8E36214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63558;
  if (!qword_1EDA63558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63558);
  }

  return result;
}

unint64_t sub_1C8E36268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316D98;
  if (!qword_1EC316D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316D98);
  }

  return result;
}

unint64_t sub_1C8E362BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316DA0;
  if (!qword_1EC316DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DA0);
  }

  return result;
}

unint64_t sub_1C8E36310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316DA8;
  if (!qword_1EC316DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DA8);
  }

  return result;
}

unint64_t sub_1C8E36364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63460;
  if (!qword_1EDA63460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63460);
  }

  return result;
}

unint64_t sub_1C8E363B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316DB0;
  if (!qword_1EC316DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DB0);
  }

  return result;
}

unint64_t sub_1C8E3640C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316DB8;
  if (!qword_1EC316DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DB8);
  }

  return result;
}

unint64_t sub_1C8E36460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63488;
  if (!qword_1EDA63488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63488);
  }

  return result;
}

unint64_t sub_1C8E364B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA634E0;
  if (!qword_1EDA634E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634E0);
  }

  return result;
}

unint64_t sub_1C8E36508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316DC0;
  if (!qword_1EC316DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DC0);
  }

  return result;
}

unint64_t sub_1C8E3655C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316DC8;
  if (!qword_1EC316DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DC8);
  }

  return result;
}

unint64_t sub_1C8E365B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316DD0;
  if (!qword_1EC316DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DD0);
  }

  return result;
}

unint64_t sub_1C8E36604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316DD8;
  if (!qword_1EC316DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DD8);
  }

  return result;
}

unint64_t sub_1C8E36658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A28;
  if (!qword_1EDA60A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A28);
  }

  return result;
}

unint64_t sub_1C8E366AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63508;
  if (!qword_1EDA63508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63508);
  }

  return result;
}

unint64_t sub_1C8E36700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A18;
  if (!qword_1EDA60A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A18);
  }

  return result;
}

unint64_t sub_1C8E36754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A20;
  if (!qword_1EDA60A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A20);
  }

  return result;
}

unint64_t sub_1C8E367A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316DE0;
  if (!qword_1EC316DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DE0);
  }

  return result;
}

unint64_t sub_1C8E367FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63530;
  if (!qword_1EDA63530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63530);
  }

  return result;
}

unint64_t sub_1C8E36854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316E80;
  if (!qword_1EC316E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316E80);
  }

  return result;
}

unint64_t sub_1C8E368AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316E88;
  if (!qword_1EC316E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316E88);
  }

  return result;
}

uint64_t sub_1C8E36900(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 57))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8E36940(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8E36994(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1C8E369C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8E36A08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8E36A50(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit18SystemTypeProtocolO8MetadataO(uint64_t a1)
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

uint64_t sub_1C8E36A94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8E36AD4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C8E36B18(uint64_t result, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for ToolSymbolIconColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SystemTypeProtocol.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E36DC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SystemTypeProtocol.Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8E36F94(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C8E37044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316E90;
  if (!qword_1EC316E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316E90);
  }

  return result;
}

unint64_t sub_1C8E3709C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316E98;
  if (!qword_1EC316E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316E98);
  }

  return result;
}

unint64_t sub_1C8E370F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316EA0;
  if (!qword_1EC316EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EA0);
  }

  return result;
}

unint64_t sub_1C8E3714C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316EA8;
  if (!qword_1EC316EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EA8);
  }

  return result;
}

unint64_t sub_1C8E371A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316EB0;
  if (!qword_1EC316EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EB0);
  }

  return result;
}

unint64_t sub_1C8E371FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316EB8;
  if (!qword_1EC316EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EB8);
  }

  return result;
}

unint64_t sub_1C8E37254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316EC0;
  if (!qword_1EC316EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EC0);
  }

  return result;
}

unint64_t sub_1C8E372AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316EC8;
  if (!qword_1EC316EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EC8);
  }

  return result;
}

unint64_t sub_1C8E37304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63520;
  if (!qword_1EDA63520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63520);
  }

  return result;
}

unint64_t sub_1C8E3735C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63528;
  if (!qword_1EDA63528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63528);
  }

  return result;
}

unint64_t sub_1C8E373B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63490;
  if (!qword_1EDA63490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63490);
  }

  return result;
}

unint64_t sub_1C8E3740C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63498;
  if (!qword_1EDA63498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63498);
  }

  return result;
}

unint64_t sub_1C8E37464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63510;
  if (!qword_1EDA63510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63510);
  }

  return result;
}

unint64_t sub_1C8E374BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63518;
  if (!qword_1EDA63518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63518);
  }

  return result;
}

unint64_t sub_1C8E37514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA634A0;
  if (!qword_1EDA634A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634A0);
  }

  return result;
}

unint64_t sub_1C8E3756C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA634A8;
  if (!qword_1EDA634A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634A8);
  }

  return result;
}

unint64_t sub_1C8E375C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA634F8;
  if (!qword_1EDA634F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634F8);
  }

  return result;
}

unint64_t sub_1C8E3761C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63500;
  if (!qword_1EDA63500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63500);
  }

  return result;
}

unint64_t sub_1C8E37674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63538;
  if (!qword_1EDA63538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63538);
  }

  return result;
}

unint64_t sub_1C8E376CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63540;
  if (!qword_1EDA63540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63540);
  }

  return result;
}

unint64_t sub_1C8E37724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA634B0;
  if (!qword_1EDA634B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634B0);
  }

  return result;
}

unint64_t sub_1C8E3777C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA634B8;
  if (!qword_1EDA634B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634B8);
  }

  return result;
}

unint64_t sub_1C8E377D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA634E8;
  if (!qword_1EDA634E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634E8);
  }

  return result;
}

unint64_t sub_1C8E3782C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA634F0;
  if (!qword_1EDA634F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634F0);
  }

  return result;
}

unint64_t sub_1C8E37884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63440;
  if (!qword_1EDA63440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63440);
  }

  return result;
}

unint64_t sub_1C8E378DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63448;
  if (!qword_1EDA63448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63448);
  }

  return result;
}

unint64_t sub_1C8E37934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316ED0;
  if (!qword_1EC316ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316ED0);
  }

  return result;
}

unint64_t sub_1C8E3798C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316ED8;
  if (!qword_1EC316ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316ED8);
  }

  return result;
}

unint64_t sub_1C8E379E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA634D0;
  if (!qword_1EDA634D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634D0);
  }

  return result;
}

unint64_t sub_1C8E37A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA634D8;
  if (!qword_1EDA634D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634D8);
  }

  return result;
}

unint64_t sub_1C8E37A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63478;
  if (!qword_1EDA63478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63478);
  }

  return result;
}

unint64_t sub_1C8E37AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63480;
  if (!qword_1EDA63480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63480);
  }

  return result;
}

unint64_t sub_1C8E37B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316EE0;
  if (!qword_1EC316EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EE0);
  }

  return result;
}

unint64_t sub_1C8E37B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316EE8;
  if (!qword_1EC316EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EE8);
  }

  return result;
}

unint64_t sub_1C8E37BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316EF0;
  if (!qword_1EC316EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EF0);
  }

  return result;
}

unint64_t sub_1C8E37C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316EF8;
  if (!qword_1EC316EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EF8);
  }

  return result;
}

unint64_t sub_1C8E37CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63450;
  if (!qword_1EDA63450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63450);
  }

  return result;
}

unint64_t sub_1C8E37CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63458;
  if (!qword_1EDA63458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63458);
  }

  return result;
}

unint64_t sub_1C8E37D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F00;
  if (!qword_1EC316F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F00);
  }

  return result;
}

unint64_t sub_1C8E37DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F08;
  if (!qword_1EC316F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F08);
  }

  return result;
}

unint64_t sub_1C8E37E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA634C0;
  if (!qword_1EDA634C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634C0);
  }

  return result;
}

unint64_t sub_1C8E37E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA634C8;
  if (!qword_1EDA634C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634C8);
  }

  return result;
}

unint64_t sub_1C8E37EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63468;
  if (!qword_1EDA63468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63468);
  }

  return result;
}

unint64_t sub_1C8E37F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63470;
  if (!qword_1EDA63470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63470);
  }

  return result;
}

unint64_t sub_1C8E37F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63548;
  if (!qword_1EDA63548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63548);
  }

  return result;
}

unint64_t sub_1C8E37FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63550;
  if (!qword_1EDA63550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63550);
  }

  return result;
}

unint64_t sub_1C8E38014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F10;
  if (!qword_1EC316F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F10);
  }

  return result;
}

unint64_t sub_1C8E3806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F18;
  if (!qword_1EC316F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F18);
  }

  return result;
}

unint64_t sub_1C8E380C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F20;
  if (!qword_1EC316F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F20);
  }

  return result;
}

unint64_t sub_1C8E3811C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F28;
  if (!qword_1EC316F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F28);
  }

  return result;
}

unint64_t sub_1C8E38174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F30;
  if (!qword_1EC316F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F30);
  }

  return result;
}

unint64_t sub_1C8E381CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F38;
  if (!qword_1EC316F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F38);
  }

  return result;
}

unint64_t sub_1C8E38224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F40;
  if (!qword_1EC316F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F40);
  }

  return result;
}

unint64_t sub_1C8E3827C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F48;
  if (!qword_1EC316F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F48);
  }

  return result;
}

unint64_t sub_1C8E382D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F50;
  if (!qword_1EC316F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_52_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C90640AC();
}

void __swiftcall ToolInvocationOptions.init(interactionMode:interfaceIdiom:locale:requestIdentifier:hasShortcutOutput:)(ToolKit::ToolInvocationOptions *__return_ptr retstr, ToolKit::ToolInvocationOptions::InteractionMode_optional interactionMode, ToolKit::ToolInvocationOptions::InterfaceIdiom_optional interfaceIdiom, Swift::String_optional locale, Swift::String_optional requestIdentifier, Swift::Bool_optional hasShortcutOutput)
{
  v6 = *interfaceIdiom.value;
  retstr->interactionMode.value = *interactionMode.value;
  retstr->interfaceIdiom.value = v6;
  retstr->locale = locale;
  retstr->requestIdentifier = requestIdentifier;
  retstr->hasShortcutOutput = hasShortcutOutput;
}

uint64_t sub_1C8E383B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4679616C70736964 && a2 == 0xEE0064726177726FLL;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4F79616C70736964 && a2 == 0xEB00000000796C6ELL;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6E4F6563696F76 && a2 == 0xE900000000000079;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x726F466563696F76 && a2 == 0xEC00000064726177)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E3856C(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x4679616C70736964;
      break;
    case 2:
      result = 0x4F79616C70736964;
      break;
    case 3:
      result = 0x6C6E4F6563696F76;
      break;
    case 4:
      result = 0x726F466563696F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E38630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E383B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E38658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E38D64(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E38694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E38D64(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E386D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E38EB4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E3870C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E38EB4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E38748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E38E60(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E38784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E38E60(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E387C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E38F08(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E387FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E38F08(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E38838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E38DB8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E38874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E38DB8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E388B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E38E0C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E388EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E38E0C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolInvocationOptions.InteractionMode.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316F58, &qword_1C908A790);
  OUTLINED_FUNCTION_11();
  v53 = v5;
  v54 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v52 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316F60, &qword_1C908A798);
  OUTLINED_FUNCTION_11();
  v50 = v9;
  v51 = v8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v49 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316F68, &qword_1C908A7A0);
  OUTLINED_FUNCTION_11();
  v47 = v13;
  v48 = v12;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  v46 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316F70, &qword_1C908A7A8);
  OUTLINED_FUNCTION_11();
  v44 = v17;
  v45 = v16;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_97();
  v43 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316F78, &qword_1C908A7B0);
  OUTLINED_FUNCTION_11();
  v41 = v21;
  v42 = v20;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v40 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316F80, &qword_1C908A7B8);
  OUTLINED_FUNCTION_11();
  v27 = v26;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_233();
  v29 = *v0;
  v30 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8E38D64(v30, v31, v32);
  v33 = sub_1C9064E1C();
  v36 = (v27 + 8);
  switch(v29)
  {
    case 1:
      sub_1C8E38EB4(v33, v34, v35);
      v37 = v43;
      OUTLINED_FUNCTION_9_22(&type metadata for ToolInvocationOptions.InteractionMode.DisplayForwardCodingKeys);
      v39 = v44;
      v38 = v45;
      goto LABEL_7;
    case 2:
      sub_1C8E38E60(v33, v34, v35);
      v37 = v46;
      OUTLINED_FUNCTION_9_22(&type metadata for ToolInvocationOptions.InteractionMode.DisplayOnlyCodingKeys);
      v39 = v47;
      v38 = v48;
      goto LABEL_7;
    case 3:
      sub_1C8E38E0C(v33, v34, v35);
      v37 = v49;
      OUTLINED_FUNCTION_9_22(&type metadata for ToolInvocationOptions.InteractionMode.VoiceOnlyCodingKeys);
      v39 = v50;
      v38 = v51;
      goto LABEL_7;
    case 4:
      sub_1C8E38DB8(v33, v34, v35);
      v37 = v52;
      OUTLINED_FUNCTION_9_22(&type metadata for ToolInvocationOptions.InteractionMode.VoiceForwardCodingKeys);
      v39 = v53;
      v38 = v54;
LABEL_7:
      (*(v39 + 8))(v37, v38);
      break;
    default:
      sub_1C8E38F08(v33, v34, v35);
      sub_1C9064ACC();
      (*(v41 + 8))(v24, v42);
      break;
  }

  (*v36)(v1, v25);
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8E38D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62560;
  if (!qword_1EDA62560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62560);
  }

  return result;
}

unint64_t sub_1C8E38DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F88;
  if (!qword_1EC316F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F88);
  }

  return result;
}

unint64_t sub_1C8E38E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F90;
  if (!qword_1EC316F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F90);
  }

  return result;
}

unint64_t sub_1C8E38E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316F98;
  if (!qword_1EC316F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F98);
  }

  return result;
}

unint64_t sub_1C8E38EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316FA0;
  if (!qword_1EC316FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316FA0);
  }

  return result;
}

unint64_t sub_1C8E38F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62548;
  if (!qword_1EDA62548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62548);
  }

  return result;
}

void ToolInvocationOptions.InteractionMode.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_196();
  a25 = v28;
  a26 = v29;
  v107 = v26;
  v31 = v30;
  v103 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FA8, &qword_1C908A7C0);
  OUTLINED_FUNCTION_11();
  v100 = v33;
  v101 = v34;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_97();
  v106 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FB0, &qword_1C908A7C8);
  OUTLINED_FUNCTION_11();
  v98 = v37;
  v99 = v38;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v105 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FB8, &qword_1C908A7D0);
  OUTLINED_FUNCTION_11();
  v96 = v42;
  v97 = v41;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_97();
  v102 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FC0, &qword_1C908A7D8);
  OUTLINED_FUNCTION_11();
  v94 = v46;
  v95 = v45;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_233();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FC8, &qword_1C908A7E0);
  OUTLINED_FUNCTION_11();
  v93 = v49;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v88 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FD0, &unk_1C908A7E8);
  OUTLINED_FUNCTION_11();
  v104 = v54;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v88 - v56;
  v58 = __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_1C8E38D64(v58, v59, v60);
  v61 = v107;
  sub_1C9064DEC();
  if (v61)
  {
    goto LABEL_10;
  }

  v91 = v48;
  v92 = v52;
  v107 = v27;
  v62 = v105;
  v63 = v106;
  v64 = v57;
  v65 = sub_1C9064A9C();
  v69 = sub_1C8CB8914(v65, 0);
  if (v67 == v68 >> 1)
  {
    v70 = v104;
LABEL_9:
    v82 = sub_1C90647DC();
    swift_allocError();
    v84 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v84 = &type metadata for ToolInvocationOptions.InteractionMode;
    v85 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v85);
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x1E69E6AF8], v82);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v64, v53);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v31);
LABEL_11:
    OUTLINED_FUNCTION_198();
    return;
  }

  if (v67 < (v68 >> 1))
  {
    v89 = *(v66 + v67);
    v71 = sub_1C8CB891C(v67 + 1, v68 >> 1, v69, v66, v67, v68);
    v73 = v72;
    v75 = v74;
    v76 = swift_unknownObjectRelease();
    v90 = v71;
    if (v73 == v75 >> 1)
    {
      v79 = v103;
      v80 = v104;
      switch(v89)
      {
        case 1:
          a13 = 1;
          sub_1C8E38EB4(v76, v77, v78);
          v62 = v107;
          OUTLINED_FUNCTION_7_28(&type metadata for ToolInvocationOptions.InteractionMode.DisplayForwardCodingKeys, &a13);
          swift_unknownObjectRelease();
          v87 = v94;
          v86 = v95;
          goto LABEL_16;
        case 2:
          a14 = 2;
          sub_1C8E38E60(v76, v77, v78);
          v62 = v102;
          OUTLINED_FUNCTION_7_28(&type metadata for ToolInvocationOptions.InteractionMode.DisplayOnlyCodingKeys, &a14);
          swift_unknownObjectRelease();
          v87 = v96;
          v86 = v97;
          goto LABEL_16;
        case 3:
          a15 = 3;
          sub_1C8E38E0C(v76, v77, v78);
          OUTLINED_FUNCTION_7_28(&type metadata for ToolInvocationOptions.InteractionMode.VoiceOnlyCodingKeys, &a15);
          swift_unknownObjectRelease();
          v86 = v98;
          v87 = v99;
LABEL_16:
          (*(v87 + 8))(v62, v86);
          break;
        case 4:
          a16 = 4;
          sub_1C8E38DB8(v76, v77, v78);
          v71 = v57;
          sub_1C906498C();
          swift_unknownObjectRelease();
          (*(v101 + 8))(v63, v100);
          break;
        default:
          a12 = 0;
          sub_1C8E38F08(v76, v77, v78);
          v81 = v92;
          OUTLINED_FUNCTION_7_28(&type metadata for ToolInvocationOptions.InteractionMode.UnknownCodingKeys, &a12);
          swift_unknownObjectRelease();
          (*(v93 + 8))(v81, v91);
          break;
      }

      (*(v80 + 8))(v71, v53);
      *v79 = v89;
      __swift_destroy_boxed_opaque_existential_1(v31);
      goto LABEL_11;
    }

    v70 = v104;
    v64 = v57;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C8E395FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79616C50726163 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6565724673657965 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646F50656D6F68 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 6513005 && a2 == 0xE300000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73646F50726961 && a2 == 0xE700000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 6578544 && a2 == 0xE300000000000000;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6863746177 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 30324 && a2 == 0xE200000000000000;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6E6F69736976 && a2 == 0xE600000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C9064C2C();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E39948(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x79616C50726163;
      break;
    case 2:
      result = 0x6565724673657965;
      break;
    case 3:
      result = 0x646F50656D6F68;
      break;
    case 4:
      result = 6513005;
      break;
    case 5:
      result = 0x73646F50726961;
      break;
    case 6:
      result = 0x656E6F6870;
      break;
    case 7:
      result = 6578544;
      break;
    case 8:
      result = 0x6863746177;
      break;
    case 9:
      result = 30324;
      break;
    case 10:
      result = 0x6E6F69736976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E39A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C19C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E39A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C19C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E39AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C2EC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E39AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C2EC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E39B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E395FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E39B60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8E39940();
  *a1 = result;
  return result;
}

uint64_t sub_1C8E39B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3BFA4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E39BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3BFA4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E39C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C298(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E39C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C298(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E39C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C244(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E39CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C244(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E39CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C1F0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E39D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C1F0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E39D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C0F4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E39DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C0F4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E39DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C148(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E39E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C148(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E39E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C04C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E39E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C04C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E39ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C340(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E39F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C340(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E39F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3BFF8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E39F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3BFF8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E39FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C0A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E39FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C0A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolInvocationOptions.InterfaceIdiom.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FD8, &qword_1C908A7F8);
  OUTLINED_FUNCTION_11();
  v109 = v28;
  v110 = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  v108 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FE0, &qword_1C908A800);
  OUTLINED_FUNCTION_11();
  v106 = v32;
  v107 = v31;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  v105 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FE8, &qword_1C908A808);
  OUTLINED_FUNCTION_11();
  v103 = v36;
  v104 = v35;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_97();
  v102 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FF0, &qword_1C908A810);
  OUTLINED_FUNCTION_11();
  v100 = v40;
  v101 = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_97();
  v99 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FF8, &qword_1C908A818);
  OUTLINED_FUNCTION_11();
  v97 = v44;
  v98 = v43;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_97();
  v96 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317000, &qword_1C908A820);
  OUTLINED_FUNCTION_11();
  v94 = v48;
  v95 = v47;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v50);
  v93[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317008, &qword_1C908A828);
  OUTLINED_FUNCTION_11();
  v93[11] = v51;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v53);
  v93[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317010, &qword_1C908A830);
  OUTLINED_FUNCTION_11();
  v93[8] = v54;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v56);
  v93[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317018, &qword_1C908A838);
  OUTLINED_FUNCTION_11();
  v93[5] = v57;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v59);
  v93[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317020, &qword_1C908A840);
  OUTLINED_FUNCTION_11();
  v93[2] = v60;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  v63 = v93 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317028, &qword_1C908A848);
  OUTLINED_FUNCTION_11();
  v93[1] = v65;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_86();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317030, &qword_1C908A850);
  OUTLINED_FUNCTION_11();
  v68 = v67;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  v71 = v93 - v70;
  v72 = *v24;
  v73 = v26[4];
  v74 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1C8E3BFA4(v74, v75, v76);
  v111 = v71;
  v77 = sub_1C9064E1C();
  v80 = (v68 + 8);
  switch(v72)
  {
    case 1:
      v114 = 1;
      sub_1C8E3C2EC(v77, v78, v79);
      v74 = v111;
      v73 = v112;
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296();
      v82 = v63;
      v88 = &v116;
      goto LABEL_9;
    case 2:
      v115 = 2;
      sub_1C8E3C298(v77, v78, v79);
      v91 = v93[4];
      OUTLINED_FUNCTION_3_37(&type metadata for ToolInvocationOptions.InterfaceIdiom.EyesFreeCodingKeys);
      OUTLINED_FUNCTION_296();
      v82 = v91;
      v88 = &a11;
      goto LABEL_9;
    case 3:
      sub_1C8E3C244(v77, v78, v79);
      v92 = v93[7];
      OUTLINED_FUNCTION_3_37(&type metadata for ToolInvocationOptions.InterfaceIdiom.HomePodCodingKeys);
      OUTLINED_FUNCTION_296();
      v82 = v92;
      v88 = &a14;
      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_20_17();
      sub_1C8E3C1F0(v84, v85, v86);
      v87 = v93[10];
      OUTLINED_FUNCTION_3_37(&type metadata for ToolInvocationOptions.InterfaceIdiom.MacCodingKeys);
      OUTLINED_FUNCTION_296();
      v82 = v87;
      v88 = &a17;
LABEL_9:
      v83 = *(v88 - 32);
      break;
    case 5:
      sub_1C8E3C19C(v77, v78, v79);
      v89 = v93[13];
      OUTLINED_FUNCTION_3_37(&type metadata for ToolInvocationOptions.InterfaceIdiom.AirPodsCodingKeys);
      v90 = v94;
      v83 = v95;
      goto LABEL_14;
    case 6:
      sub_1C8E3C148(v77, v78, v79);
      v89 = v96;
      OUTLINED_FUNCTION_3_37(&type metadata for ToolInvocationOptions.InterfaceIdiom.PhoneCodingKeys);
      v90 = v97;
      v83 = v98;
      goto LABEL_14;
    case 7:
      sub_1C8E3C0F4(v77, v78, v79);
      v89 = v99;
      OUTLINED_FUNCTION_3_37(&type metadata for ToolInvocationOptions.InterfaceIdiom.PadCodingKeys);
      v90 = v100;
      v83 = v101;
      goto LABEL_14;
    case 8:
      sub_1C8E3C0A0(v77, v78, v79);
      v89 = v102;
      OUTLINED_FUNCTION_3_37(&type metadata for ToolInvocationOptions.InterfaceIdiom.WatchCodingKeys);
      v90 = v103;
      v83 = v104;
      goto LABEL_14;
    case 9:
      sub_1C8E3C04C(v77, v78, v79);
      v89 = v105;
      OUTLINED_FUNCTION_3_37(&type metadata for ToolInvocationOptions.InterfaceIdiom.TvCodingKeys);
      v90 = v106;
      v83 = v107;
      goto LABEL_14;
    case 10:
      sub_1C8E3BFF8(v77, v78, v79);
      v89 = v108;
      OUTLINED_FUNCTION_3_37(&type metadata for ToolInvocationOptions.InterfaceIdiom.VisionCodingKeys);
      v90 = v109;
      v83 = v110;
LABEL_14:
      v81 = *(v90 + 8);
      v82 = v89;
      break;
    default:
      v113 = 0;
      sub_1C8E3C340(v77, v78, v79);
      v74 = v111;
      v73 = v112;
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296();
      v82 = v21;
      v83 = v64;
      break;
  }

  v81(v82, v83);
  (*v80)(v74, v73);
  OUTLINED_FUNCTION_198();
}

uint64_t _s7ToolKit34DisplayRepresentationConfigurationV05ImageD0O9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

void ToolInvocationOptions.InterfaceIdiom.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_196();
  a26 = v29;
  a27 = v30;
  v132 = v27;
  v32 = v31;
  v127 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317088, &qword_1C908A858);
  OUTLINED_FUNCTION_11();
  v119 = v35;
  v120 = v34;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v126 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317090, &qword_1C908A860);
  OUTLINED_FUNCTION_11();
  v117 = v39;
  v118 = v38;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  v125 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317098, &qword_1C908A868);
  OUTLINED_FUNCTION_11();
  v115 = v43;
  v116 = v42;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_97();
  v124 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170A0, &qword_1C908A870);
  OUTLINED_FUNCTION_11();
  v113 = v47;
  v114 = v46;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  v130 = v49;
  v112[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170A8, &qword_1C908A878);
  OUTLINED_FUNCTION_11();
  v112[17] = v50;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_97();
  v129 = v52;
  v112[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170B0, &qword_1C908A880);
  OUTLINED_FUNCTION_11();
  v112[14] = v53;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_97();
  v128 = v55;
  v112[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170B8, &qword_1C908A888);
  OUTLINED_FUNCTION_11();
  v112[12] = v56;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_97();
  v123 = v58;
  v112[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170C0, &qword_1C908A890);
  OUTLINED_FUNCTION_11();
  v112[10] = v59;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_97();
  v122 = v61;
  v112[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170C8, &qword_1C908A898);
  OUTLINED_FUNCTION_11();
  v112[8] = v62;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_97();
  v121 = v64;
  v112[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170D0, &qword_1C908A8A0);
  OUTLINED_FUNCTION_11();
  v112[6] = v65;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v66);
  v68 = v112 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170D8, &qword_1C908A8A8);
  OUTLINED_FUNCTION_11();
  v112[5] = v70;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_233();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170E0, &qword_1C908A8B0);
  OUTLINED_FUNCTION_11();
  v73 = v72;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_86();
  v75 = v32[3];
  v131 = v32;
  v76 = __swift_project_boxed_opaque_existential_1(v32, v75);
  sub_1C8E3BFA4(v76, v77, v78);
  v79 = v132;
  sub_1C9064DEC();
  if (v79)
  {
    goto LABEL_8;
  }

  v112[3] = v28;
  v112[2] = v69;
  v112[4] = v68;
  v80 = v129;
  v81 = v130;
  v132 = v73;
  v82 = sub_1C9064A9C();
  v86 = sub_1C8CB8914(v82, 0);
  if (v84 == v85 >> 1)
  {
LABEL_7:
    v98 = sub_1C90647DC();
    swift_allocError();
    v100 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v100 = &type metadata for ToolInvocationOptions.InterfaceIdiom;
    v101 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v101);
    (*(*(v98 - 8) + 104))(v100, *MEMORY[0x1E69E6AF8], v98);
    swift_willThrow();
    swift_unknownObjectRelease();
    v102 = OUTLINED_FUNCTION_10_25();
    v103(v102);
LABEL_8:
    v104 = v131;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v104);
    OUTLINED_FUNCTION_198();
    return;
  }

  v112[1] = 0;
  if (v84 < (v85 >> 1))
  {
    v87 = *(v83 + v84);
    sub_1C8CB891C(v84 + 1, v85 >> 1, v86, v83, v84, v85);
    v89 = v88;
    v91 = v90;
    v92 = swift_unknownObjectRelease();
    if (v89 == v91 >> 1)
    {
      switch(v87)
      {
        case 1:
          v134 = 1;
          sub_1C8E3C2EC(v92, v93, v94);
          OUTLINED_FUNCTION_1_51(&type metadata for ToolInvocationOptions.InterfaceIdiom.CarPlayCodingKeys, &v134);
          swift_unknownObjectRelease();
          v95 = OUTLINED_FUNCTION_23();
          v97 = &v136;
          goto LABEL_18;
        case 2:
          v135 = 2;
          sub_1C8E3C298(v92, v93, v94);
          OUTLINED_FUNCTION_1_51(&type metadata for ToolInvocationOptions.InterfaceIdiom.EyesFreeCodingKeys, &v135);
          swift_unknownObjectRelease();
          v95 = OUTLINED_FUNCTION_23();
          v97 = &a10;
          goto LABEL_18;
        case 3:
          a10 = 3;
          sub_1C8E3C244(v92, v93, v94);
          OUTLINED_FUNCTION_1_51(&type metadata for ToolInvocationOptions.InterfaceIdiom.HomePodCodingKeys, &a10);
          swift_unknownObjectRelease();
          v95 = OUTLINED_FUNCTION_23();
          v97 = &a19;
          goto LABEL_18;
        case 4:
          OUTLINED_FUNCTION_20_17();
          sub_1C8E3C1F0(v105, v106, v107);
          OUTLINED_FUNCTION_1_51(&type metadata for ToolInvocationOptions.InterfaceIdiom.MacCodingKeys, &a11);
          swift_unknownObjectRelease();
          v95 = OUTLINED_FUNCTION_23();
          v97 = &a21;
          goto LABEL_18;
        case 5:
          a12 = 5;
          sub_1C8E3C19C(v92, v93, v94);
          OUTLINED_FUNCTION_2_45(&type metadata for ToolInvocationOptions.InterfaceIdiom.AirPodsCodingKeys, &a12);
          swift_unknownObjectRelease();
          v95 = OUTLINED_FUNCTION_23();
          v97 = &a23;
          goto LABEL_18;
        case 6:
          a13 = 6;
          sub_1C8E3C148(v92, v93, v94);
          OUTLINED_FUNCTION_2_45(&type metadata for ToolInvocationOptions.InterfaceIdiom.PhoneCodingKeys, &a13);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296();
          v95 = v80;
          v97 = &a24;
          goto LABEL_18;
        case 7:
          a14 = 7;
          sub_1C8E3C0F4(v92, v93, v94);
          OUTLINED_FUNCTION_1_51(&type metadata for ToolInvocationOptions.InterfaceIdiom.PadCodingKeys, &a14);
          swift_unknownObjectRelease();
          v109 = v113;
          v108 = v114;
          goto LABEL_21;
        case 8:
          a15 = 8;
          sub_1C8E3C0A0(v92, v93, v94);
          v81 = v124;
          OUTLINED_FUNCTION_1_51(&type metadata for ToolInvocationOptions.InterfaceIdiom.WatchCodingKeys, &a15);
          swift_unknownObjectRelease();
          v109 = v115;
          v108 = v116;
          goto LABEL_21;
        case 9:
          a16 = 9;
          sub_1C8E3C04C(v92, v93, v94);
          v81 = v125;
          OUTLINED_FUNCTION_1_51(&type metadata for ToolInvocationOptions.InterfaceIdiom.TvCodingKeys, &a16);
          swift_unknownObjectRelease();
          v109 = v117;
          v108 = v118;
          goto LABEL_21;
        case 10:
          a17 = 10;
          sub_1C8E3BFF8(v92, v93, v94);
          v81 = v126;
          OUTLINED_FUNCTION_1_51(&type metadata for ToolInvocationOptions.InterfaceIdiom.VisionCodingKeys, &a17);
          swift_unknownObjectRelease();
          v109 = v119;
          v108 = v120;
LABEL_21:
          v96 = *(v109 + 8);
          v95 = v81;
          break;
        default:
          v133 = 0;
          sub_1C8E3C340(v92, v93, v94);
          OUTLINED_FUNCTION_1_51(&type metadata for ToolInvocationOptions.InterfaceIdiom.UnknownCodingKeys, &v133);
          swift_unknownObjectRelease();
          v95 = OUTLINED_FUNCTION_23();
          v97 = &v129;
LABEL_18:
          v108 = *(v97 - 32);
          break;
      }

      v96(v95, v108);
      v110 = OUTLINED_FUNCTION_10_25();
      v111(v110);
      v104 = v131;
      *v127 = v87;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t ToolInvocationOptions.locale.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 8);

  return v6;
}

uint64_t ToolInvocationOptions.requestIdentifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 24);

  return v6;
}

void __swiftcall ToolInvocationOptions.init(interactionMode:interfaceIdiom:locale:requestIdentifier:)(ToolKit::ToolInvocationOptions *__return_ptr retstr, ToolKit::ToolInvocationOptions::InteractionMode_optional interactionMode, ToolKit::ToolInvocationOptions::InterfaceIdiom_optional interfaceIdiom, Swift::String_optional locale, Swift::String_optional requestIdentifier)
{
  v5 = *interfaceIdiom.value;
  retstr->interactionMode.value = *interactionMode.value;
  retstr->interfaceIdiom.value = v5;
  retstr->locale = locale;
  retstr->requestIdentifier = requestIdentifier;
  retstr->hasShortcutOutput.value = 2;
}

uint64_t static ToolInvocationOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = a1[40];
  v10 = a1[41];
  v11 = *a2;
  v12 = *(a2 + 2);
  v14 = *(a2 + 3);
  v13 = *(a2 + 4);
  v15 = a2[40];
  v16 = a2[41];
  if (v4 == 5)
  {
    if (v11 != 5)
    {
      return 0;
    }
  }

  else if (v4 != v11)
  {
    return 0;
  }

  if (v6)
  {
    if (!v12)
    {
      return 0;
    }

    v17 = v5 == *(a2 + 1) && v6 == v12;
    if (!v17 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }

    v18 = v7 == v14 && v8 == v13;
    if (!v18 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }

LABEL_23:
    if (v9 == 11)
    {
      if (v15 != 11)
      {
        return 0;
      }
    }

    else if (v15 == 11 || v9 != v15)
    {
      return 0;
    }

    if (v10 == 2)
    {
      if (v16 != 2)
      {
        return 0;
      }
    }

    else if (v16 == 2 || ((v16 ^ v10) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v13)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_1C8E3B5B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463617265746E69 && a2 == 0xEF65646F4D6E6F69;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C90CB6C0 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6361667265746E69 && a2 == 0xEE006D6F69644965;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000011 && 0x80000001C90CB6E0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C8E3B774(char a1)
{
  result = 0x7463617265746E69;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6361667265746E69;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E3B82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E3B5B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E3B854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C394(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E3B890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E3C394(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolInvocationOptions.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170E8, &qword_1C908A8B8);
  OUTLINED_FUNCTION_11();
  v6 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  v10 = *(v0 + 8);
  v24 = *(v0 + 16);
  v25 = v10;
  v11 = *(v0 + 24);
  v22 = *(v0 + 32);
  v23 = v11;
  LODWORD(v11) = *(v0 + 40);
  v21[2] = *(v0 + 41);
  v21[3] = v11;
  v12 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8E3C394(v12, v13, v14);
  v15 = sub_1C9064E1C();
  sub_1C8E3C3E8(v15, v16, v17);
  OUTLINED_FUNCTION_16_1();
  sub_1C9064B0C();
  if (!v1)
  {
    sub_1C9064ADC();
    v18 = sub_1C9064ADC();
    sub_1C8E3C43C(v18, v19, v20);
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B0C();
    OUTLINED_FUNCTION_20_17();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064AEC();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_198();
}

uint64_t ToolInvocationOptions.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 4);
  v5 = v1[40];
  v6 = v1[41];
  if (v2 == 5)
  {
    sub_1C9064D9C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C9064D9C();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1C9064D9C();
  MEMORY[0x1CCA82810](v2);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C9064D9C();
  sub_1C9063FBC();
  if (v4)
  {
LABEL_4:
    sub_1C9064D9C();
    sub_1C9063FBC();
    goto LABEL_8;
  }

LABEL_7:
  sub_1C9064D9C();
LABEL_8:
  sub_1C9064D9C();
  if (v5 != 11)
  {
    MEMORY[0x1CCA82810](v5);
  }

  if (v6 != 2)
  {
    sub_1C9064D9C();
  }

  return sub_1C9064D9C();
}

uint64_t ToolInvocationOptions.hashValue.getter()
{
  v1 = *(v0 + 40);
  v3[72] = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  v6 = v1;
  sub_1C9064D7C();
  ToolInvocationOptions.hash(into:)(v3);
  return sub_1C9064DBC();
}

void ToolInvocationOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_196();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170F0, &qword_1C908A8C0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_86();
  v34 = __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_1C8E3C394(v34, v35, v36);
  v37 = sub_1C9064DEC();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    a15 = 0;
    v40 = sub_1C8E3C490(v37, v38, v39);
    OUTLINED_FUNCTION_22_22(&type metadata for ToolInvocationOptions.InteractionMode, &a15, v41, v42, v40);
    v43 = a16;
    a14 = 1;
    OUTLINED_FUNCTION_16_18();
    v44 = sub_1C90649AC();
    v46 = v45;
    v59 = v44;
    v60 = v43;
    a13 = 2;
    OUTLINED_FUNCTION_16_18();
    v47 = sub_1C90649AC();
    v49 = v48;
    v58 = v47;
    a11 = 3;
    v51 = sub_1C8E3C4E4(v47, v48, v50);
    OUTLINED_FUNCTION_22_22(&type metadata for ToolInvocationOptions.InterfaceIdiom, &a11, v52, v53, v51);
    v57 = a12;
    OUTLINED_FUNCTION_20_17();
    OUTLINED_FUNCTION_16_18();
    v54 = sub_1C90649BC();
    v55 = OUTLINED_FUNCTION_12_2();
    v56(v55);
    *v32 = v60;
    *(v32 + 8) = v59;
    *(v32 + 16) = v46;
    *(v32 + 24) = v58;
    *(v32 + 32) = v49;
    *(v32 + 40) = v57;
    *(v32 + 41) = v54;

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E3BED0(uint64_t a1)
{
  v2 = *(v1 + 40);
  v4[72] = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 24);
  v7 = v2;
  sub_1C9064D7C();
  ToolInvocationOptions.hash(into:)(v4);
  return sub_1C9064DBC();
}

void __swiftcall ToolInvocationOptions.init(interactionMode:locale:requestIdentifier:)(ToolKit::ToolInvocationOptions *__return_ptr retstr, ToolKit::ToolInvocationOptions::InteractionMode_optional interactionMode, Swift::String_optional locale, Swift::String_optional requestIdentifier)
{
  retstr->interactionMode.value = *interactionMode.value;
  retstr->locale = locale;
  retstr->requestIdentifier = requestIdentifier;
  OUTLINED_FUNCTION_11_23(retstr);
}

void __swiftcall ToolInvocationOptions.init(interactionMode:locale:)(ToolKit::ToolInvocationOptions *__return_ptr retstr, ToolKit::ToolInvocationOptions::InteractionMode_optional interactionMode, Swift::String_optional locale)
{
  retstr->interactionMode.value = *interactionMode.value;
  retstr->locale = locale;
  retstr->requestIdentifier.value._countAndFlagsBits = 0;
  retstr->requestIdentifier.value._object = 0;
  OUTLINED_FUNCTION_11_23(retstr);
}

void __swiftcall ToolInvocationOptions.init(interactionMode:)(ToolKit::ToolInvocationOptions *__return_ptr retstr, ToolKit::ToolInvocationOptions::InteractionMode_optional interactionMode)
{
  retstr->interactionMode.value = *interactionMode.value;
  retstr->locale = 0u;
  retstr->requestIdentifier = 0u;
  OUTLINED_FUNCTION_11_23(retstr);
}

unint64_t sub_1C8E3BFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62638;
  if (!qword_1EDA62638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62638);
  }

  return result;
}

unint64_t sub_1C8E3BFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317038;
  if (!qword_1EC317038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317038);
  }

  return result;
}

unint64_t sub_1C8E3C04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317040;
  if (!qword_1EC317040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317040);
  }

  return result;
}

unint64_t sub_1C8E3C0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317048;
  if (!qword_1EC317048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317048);
  }

  return result;
}

unint64_t sub_1C8E3C0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317050;
  if (!qword_1EC317050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317050);
  }

  return result;
}

unint64_t sub_1C8E3C148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317058;
  if (!qword_1EC317058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317058);
  }

  return result;
}

unint64_t sub_1C8E3C19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317060;
  if (!qword_1EC317060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317060);
  }

  return result;
}

unint64_t sub_1C8E3C1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317068;
  if (!qword_1EC317068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317068);
  }

  return result;
}

unint64_t sub_1C8E3C244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317070;
  if (!qword_1EC317070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317070);
  }

  return result;
}

unint64_t sub_1C8E3C298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317078;
  if (!qword_1EC317078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317078);
  }

  return result;
}

unint64_t sub_1C8E3C2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317080;
  if (!qword_1EC317080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317080);
  }

  return result;
}

unint64_t sub_1C8E3C340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62590;
  if (!qword_1EDA62590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62590);
  }

  return result;
}

unint64_t sub_1C8E3C394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62650;
  if (!qword_1EDA62650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62650);
  }

  return result;
}

unint64_t sub_1C8E3C3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA624F0;
  if (!qword_1EDA624F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624F0);
  }

  return result;
}

unint64_t sub_1C8E3C43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62568;
  if (!qword_1EDA62568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62568);
  }

  return result;
}

unint64_t sub_1C8E3C490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3170F8;
  if (!qword_1EC3170F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3170F8);
  }

  return result;
}

unint64_t sub_1C8E3C4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317100;
  if (!qword_1EC317100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317100);
  }

  return result;
}

unint64_t sub_1C8E3C53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317108;
  if (!qword_1EC317108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317108);
  }

  return result;
}

unint64_t sub_1C8E3C594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317110;
  if (!qword_1EC317110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317110);
  }

  return result;
}

unint64_t sub_1C8E3C5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317118;
  if (!qword_1EC317118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317118);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C8E3C654(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 42))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C8E3C6A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *sub_1C8E3C73C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E3C8C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E3C9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317120;
  if (!qword_1EC317120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317120);
  }

  return result;
}

unint64_t sub_1C8E3CA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317128;
  if (!qword_1EC317128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317128);
  }

  return result;
}

unint64_t sub_1C8E3CAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317130;
  if (!qword_1EC317130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317130);
  }

  return result;
}

unint64_t sub_1C8E3CB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62640;
  if (!qword_1EDA62640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62640);
  }

  return result;
}

unint64_t sub_1C8E3CB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62648;
  if (!qword_1EDA62648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62648);
  }

  return result;
}

unint64_t sub_1C8E3CBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62580;
  if (!qword_1EDA62580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62580);
  }

  return result;
}

unint64_t sub_1C8E3CC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62588;
  if (!qword_1EDA62588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62588);
  }

  return result;
}

unint64_t sub_1C8E3CC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA625A8;
  if (!qword_1EDA625A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625A8);
  }

  return result;
}

unint64_t sub_1C8E3CCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA625B0;
  if (!qword_1EDA625B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625B0);
  }

  return result;
}

unint64_t sub_1C8E3CD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62570;
  if (!qword_1EDA62570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62570);
  }

  return result;
}

unint64_t sub_1C8E3CD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62578;
  if (!qword_1EDA62578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62578);
  }

  return result;
}

unint64_t sub_1C8E3CDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62598;
  if (!qword_1EDA62598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62598);
  }

  return result;
}

unint64_t sub_1C8E3CE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA625A0;
  if (!qword_1EDA625A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625A0);
  }

  return result;
}

unint64_t sub_1C8E3CE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62608;
  if (!qword_1EDA62608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62608);
  }

  return result;
}

unint64_t sub_1C8E3CEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62610;
  if (!qword_1EDA62610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62610);
  }

  return result;
}

unint64_t sub_1C8E3CF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA625B8;
  if (!qword_1EDA625B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625B8);
  }

  return result;
}

unint64_t sub_1C8E3CF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA625C0;
  if (!qword_1EDA625C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625C0);
  }

  return result;
}

unint64_t sub_1C8E3CFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA625E8;
  if (!qword_1EDA625E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625E8);
  }

  return result;
}

unint64_t sub_1C8E3D028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA625F0;
  if (!qword_1EDA625F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625F0);
  }

  return result;
}

unint64_t sub_1C8E3D080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA625F8;
  if (!qword_1EDA625F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625F8);
  }

  return result;
}

unint64_t sub_1C8E3D0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62600;
  if (!qword_1EDA62600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62600);
  }

  return result;
}

unint64_t sub_1C8E3D130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA625D8;
  if (!qword_1EDA625D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625D8);
  }

  return result;
}

unint64_t sub_1C8E3D188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA625E0;
  if (!qword_1EDA625E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625E0);
  }

  return result;
}

unint64_t sub_1C8E3D1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62618;
  if (!qword_1EDA62618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62618);
  }

  return result;
}

unint64_t sub_1C8E3D238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62620;
  if (!qword_1EDA62620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62620);
  }

  return result;
}

unint64_t sub_1C8E3D290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA625C8;
  if (!qword_1EDA625C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625C8);
  }

  return result;
}

unint64_t sub_1C8E3D2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA625D0;
  if (!qword_1EDA625D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625D0);
  }

  return result;
}

unint64_t sub_1C8E3D340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62628;
  if (!qword_1EDA62628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62628);
  }

  return result;
}

unint64_t sub_1C8E3D398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62630;
  if (!qword_1EDA62630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62630);
  }

  return result;
}

unint64_t sub_1C8E3D3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62538;
  if (!qword_1EDA62538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62538);
  }

  return result;
}

unint64_t sub_1C8E3D448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62540;
  if (!qword_1EDA62540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62540);
  }

  return result;
}

unint64_t sub_1C8E3D4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA624F8;
  if (!qword_1EDA624F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624F8);
  }

  return result;
}

unint64_t sub_1C8E3D4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62500;
  if (!qword_1EDA62500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62500);
  }

  return result;
}

unint64_t sub_1C8E3D550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62518;
  if (!qword_1EDA62518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62518);
  }

  return result;
}

unint64_t sub_1C8E3D5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62520;
  if (!qword_1EDA62520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62520);
  }

  return result;
}

unint64_t sub_1C8E3D600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62528;
  if (!qword_1EDA62528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62528);
  }

  return result;
}

unint64_t sub_1C8E3D658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62530;
  if (!qword_1EDA62530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62530);
  }

  return result;
}

unint64_t sub_1C8E3D6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62508;
  if (!qword_1EDA62508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62508);
  }

  return result;
}

unint64_t sub_1C8E3D708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62510;
  if (!qword_1EDA62510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62510);
  }

  return result;
}

unint64_t sub_1C8E3D760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62550;
  if (!qword_1EDA62550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62550);
  }

  return result;
}

unint64_t sub_1C8E3D7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62558;
  if (!qword_1EDA62558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62558);
  }

  return result;
}

uint64_t sub_1C8E3D834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C8E3D888(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C8E3D8F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}