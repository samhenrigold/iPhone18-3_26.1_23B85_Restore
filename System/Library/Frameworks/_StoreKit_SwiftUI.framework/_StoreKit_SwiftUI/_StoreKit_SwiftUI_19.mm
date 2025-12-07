uint64_t sub_23BB3DE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1930, &qword_23BBFED10);
  v39 = *(a1 + 24);
  v4 = v39;
  v43 = sub_23BBDA358();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v34 - v7;
  v8 = *(a1 + 16);
  v9 = *(a1 + 40);
  v10 = sub_23BBDC078();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = sub_23BBDA358();
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v47 = &v34 - v17;
  v38 = v2;
  *&v18 = *(a1 + 32);
  *(&v18 + 1) = v9;
  *&v19 = v8;
  *(&v19 + 1) = v4;
  v49 = v19;
  v50 = v18;
  v46 = *(a1 + 48);
  v51 = v46;
  v52 = v2;
  sub_23B9BE15C(v8);
  sub_23BBDC068();
  KeyPath = swift_getKeyPath();
  LOBYTE(v57) = 0;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x23EEB43C0](&KeyPath, v10, &type metadata for SubscriptionPickerContentContainerValuesModifier, WitnessTable);

  v40[1](v12, v10);
  v21 = sub_23BB41A74();
  v60 = WitnessTable;
  v61 = v21;
  v35 = v13;
  v37 = swift_getWitnessTable();
  sub_23B9D2D88();
  v22 = *(v48 + 8);
  v36 = v48 + 8;
  v40 = v22;
  (v22)(v15, v13);
  v23 = v41;
  sub_23BB3E46C(1, 0, v39, v46);
  v24 = sub_23B97B518(&qword_27E1A1940, &qword_27E1A1930, &qword_23BBFED10, MEMORY[0x277CE0858]);
  v58 = v46;
  v59 = v24;
  v25 = v43;
  v26 = swift_getWitnessTable();
  v27 = v42;
  sub_23B9D2D88();
  v28 = v44;
  v29 = *(v44 + 8);
  v29(v23, v25);
  v30 = v47;
  v31 = v35;
  (*(v48 + 16))(v15, v47, v35);
  KeyPath = v15;
  (*(v28 + 16))(v23, v27, v25);
  v57 = v23;
  v55[0] = v31;
  v55[1] = v25;
  v53 = v37;
  v54 = v26;
  sub_23BB6739C(&KeyPath, 2, v55);
  v29(v27, v25);
  v32 = v40;
  (v40)(v30, v31);
  v29(v23, v25);
  return (v32)(v15, v31);
}

uint64_t sub_23BB3E38C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v3 + 8))(v5, a2);
}

double sub_23BB3E46C(char a1, char a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v10[0] = a1 & 1;
  v10[1] = a2;
  sub_23BB1106C(KeyPath, v10, a3, a4);

  return result;
}

uint64_t sub_23BB3E4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {

    sub_23BBDD5A8();
    v12 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a2, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(a2) = v17[15];
  }

  KeyPath = swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1948, &qword_23BBFEE78);
  (*(*(v14 - 8) + 16))(a4, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1950, &unk_23BBFEE80);
  v16 = a4 + *(result + 36);
  *v16 = KeyPath;
  *(v16 + 8) = 0;
  *(v16 + 9) = a2 & 1;
  return result;
}

uint64_t sub_23BB3E72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_23BBDDBB8();
  a4(v8, v6);
  return sub_23BBDDBF8();
}

double sub_23BB3E81C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_23BB3E840@<D0>(void *a1@<X8>)
{
  if (qword_27E197810 != -1)
  {
    swift_once();
  }

  *a1 = qword_27E1A13B0;

  return result;
}

uint64_t sub_23BB3E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BB40B28();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BB3E910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;

  return sub_23B9BDCD4(v7, v8, v9);
}

uint64_t sub_23BB3E988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BB365A0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BB3E9EC(uint64_t a1)
{
  sub_23BB3F77C();
  sub_23BBDA958();
  return v2;
}

uint64_t sub_23BB3EA68(uint64_t result)
{
  v1 = result;
  if (qword_27E1977E0 != -1)
  {
    result = swift_once();
  }

  if (byte_27E1A04D0 != 1)
  {
    if (byte_27E1A04D0 != 3 || (storekit_dyld_fall_2024_os_versions(), result = dyld_program_sdk_at_least(), (result & 1) == 0))
    {
      *v1 = 0;
    }
  }

  return result;
}

uint64_t sub_23BB3EAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1608, &qword_23BBFE6C0);
  (*(*(v9 - 8) + 16))(a4, a1, v9);
  v10 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1610, &qword_23BBFE6C8) + 36));
  *v10 = sub_23BB3EC04;
  v10[1] = v8;
}

uint64_t sub_23BB3EBCC()
{

  return swift_deallocObject();
}

unint64_t sub_23BB3EC4C()
{
  result = qword_27E1A1628;
  if (!qword_27E1A1628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E280, &qword_23BBF4A70);
    sub_23BB40BDC(&qword_27E1A1630, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section.Header, &protocol conformance descriptor for SubscriptionStoreControlStyleConfiguration.Section.Header);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1628);
  }

  return result;
}

unint64_t sub_23BB3ED00()
{
  result = qword_27E1A1638;
  if (!qword_27E1A1638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E288, &qword_23BC04490);
    sub_23BB40BDC(&qword_27E1A1640, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section.Footer, &protocol conformance descriptor for SubscriptionStoreControlStyleConfiguration.Section.Footer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1638);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{

  return swift_deallocObject();
}

unint64_t sub_23BB3EE74()
{
  result = qword_27E1A1688;
  if (!qword_27E1A1688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B148, &unk_23BBFE400);
    sub_23BB3EEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1688);
  }

  return result;
}

unint64_t sub_23BB3EEF8()
{
  result = qword_27E1A1690;
  if (!qword_27E1A1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1690);
  }

  return result;
}

uint64_t sub_23BB3EF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SubscriptionPickerVariadicContainer(0, *(v4 + 16), *(v4 + 24), a4);
  OUTLINED_FUNCTION_13_0(v5);
  return sub_23BB380E0();
}

uint64_t objectdestroy_62Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionPickerVariadicContainer(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_19_0();
  v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v8 + 16);
  if (v9 != 255)
  {
    sub_23B979A38(*v8, *(v8 + 8), v9 & 1);
  }

  v10 = type metadata accessor for SubscriptionPickerProperties(0);
  v11 = v10[5];
  sub_23BBDA988();
  OUTLINED_FUNCTION_12_1();
  (*(v12 + 8))(v8 + v11);

  v13 = v8 + v10[7];
  v14 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  if (!__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v15 + 8))(v13);
    v16 = *(type metadata accessor for SubscriptionStoreControlOption(0) + 20);
    v17 = sub_23BBDCC88();
    if (!OUTLINED_FUNCTION_38_4(v17))
    {
      OUTLINED_FUNCTION_1_4();
      (*(v18 + 8))(v13 + v16, v6);
    }

    if (*(v13 + *(v14 + 20)))
    {
    }
  }

  v19 = v8 + v10[8];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  if (!__swift_getEnumTagSinglePayload(v19, 1, v20))
  {

    v21 = v19 + *(v20 + 32);
    if (!__swift_getEnumTagSinglePayload(v21, 1, v14))
    {
      sub_23BBDCDB8();
      OUTLINED_FUNCTION_12_1();
      (*(v22 + 8))(v21);
      v23 = *(type metadata accessor for SubscriptionStoreControlOption(0) + 20);
      v24 = sub_23BBDCC88();
      if (!OUTLINED_FUNCTION_38_4(v24))
      {
        OUTLINED_FUNCTION_1_4();
        (*(v25 + 8))(v21 + v23, v20);
      }

      if (*(v21 + *(v14 + 20)))
      {
      }
    }
  }

  sub_23B97B450(*(v8 + *(v4 + 44)), *(v8 + *(v4 + 44) + 8));
  OUTLINED_FUNCTION_11_23(v8 + *(v4 + 48));

  return swift_deallocObject();
}

uint64_t sub_23BB3F2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SubscriptionPickerVariadicContainer(0, *(v4 + 16), *(v4 + 24), a4);
  OUTLINED_FUNCTION_13_0(v5);
  v7 = (v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));

  return sub_23BB3873C(v7);
}

void sub_23BB3F360(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = type metadata accessor for SubscriptionPickerVariadicContainer(0, v7, v8, a4);
  OUTLINED_FUNCTION_13_0(v9);
  v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  sub_23BB38958(a1, a2, v11, v7, v8);
}

uint64_t sub_23BB3F480(uint64_t result)
{
  if (result != 2)
  {
    return result & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BB3F49C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  sub_23B9A721C(a1, &v10 - v4, &qword_27E199760, &unk_23BBE9220);
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_9();
    return sub_23BB3F958(v8, v9);
  }

  return result;
}

double sub_23BB3F578(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_23BB3F5FC()
{
  result = qword_27E1A16B0;
  if (!qword_27E1A16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A16B0);
  }

  return result;
}

uint64_t sub_23BB3F65C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BA21030();
  *a1 = result;
  return result;
}

unint64_t sub_23BB3F68C()
{
  result = qword_27E1A16B8;
  if (!qword_27E1A16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A16B8);
  }

  return result;
}

uint64_t sub_23BB3F6E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB3F750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB3B058();
  *a1 = result;
  return result;
}

unint64_t sub_23BB3F77C()
{
  result = qword_27E1A16C8;
  if (!qword_27E1A16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A16C8);
  }

  return result;
}

uint64_t sub_23BB3F7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8, &qword_23BBFE2E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB3F848()
{

  return swift_deallocObject();
}

unint64_t sub_23BB3F8A8()
{
  result = qword_27E1A16D8;
  if (!qword_27E1A16D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A16D0, &unk_23BBFE7D0);
    sub_23B97B518(&qword_27E19E3E0, &qword_27E19E3E8, &unk_23BBF5000, MEMORY[0x277D83988]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A16D8);
  }

  return result;
}

uint64_t sub_23BB3F958(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23BB3F9B0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23BB3FA18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23BB3FA6C()
{
  result = qword_27E1A16E0;
  if (!qword_27E1A16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A16E0);
  }

  return result;
}

unint64_t sub_23BB3FAC0()
{
  result = qword_27E1A16E8[0];
  if (!qword_27E1A16E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A16E8);
  }

  return result;
}

uint64_t sub_23BB3FB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17_StoreKit_SwiftUI12SubscriptionV2IDOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BB3FBB0(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23BB3FC58(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v7 = *(*(v6 - 8) + 84);
  v8 = a3[3];
  v9 = a3[4];
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v7)
  {
    v12 = *(*(v6 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 80);
  v16 = *(*(v8 - 8) + 64);
  v17 = *(v13 + 80);
  if (v14 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(*(v6 - 8) + 64) + v15;
  v20 = a2 - v18;
  if (a2 <= v18)
  {
LABEL_28:
    if (v7 != v18)
    {
      a1 = ((a1 + v19) & ~v15);
      if (v11 == v18)
      {
        v7 = v11;
        v6 = v8;
      }

      else
      {
        a1 = ((a1 + v16 + v17) & ~v17);
        v7 = v14;
        v6 = v9;
      }
    }

    return __swift_getEnumTagSinglePayload(a1, v7, v6);
  }

  v21 = ((v16 + v17 + (v19 & ~v15)) & ~v17) + *(*(v9 - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((v20 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v24 < 2)
    {
LABEL_27:
      if (v18)
      {
        goto LABEL_28;
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_27;
  }

LABEL_17:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = ((v16 + v17 + (v19 & ~v15)) & ~v17) + *(*(v9 - 8) + 64);
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 2:
        v27 = *a1;
        break;
      case 3:
        v27 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v27 = *a1;
        break;
      default:
        v27 = *a1;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

  return v18 + (v27 | v25) + 1;
}

void sub_23BB3FECC(char *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[2];
  v8 = *(*(v7 - 8) + 84);
  v9 = a4[3];
  v10 = a4[4];
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  v13 = *(v10 - 8);
  if (v12 <= v8)
  {
    v14 = *(*(v7 - 8) + 84);
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(v13 + 84);
  if (v15 > v14)
  {
    v14 = *(v13 + 84);
  }

  v16 = *(v11 + 80);
  v17 = *(*(v7 - 8) + 64) + v16;
  v18 = *(*(v9 - 8) + 64);
  v19 = *(*(v10 - 8) + 80);
  v20 = (v18 + v19 + (v17 & ~v16)) & ~v19;
  v21 = *(v13 + 64);
  v22 = v20 + v21;
  v23 = 8 * (v20 + v21);
  v24 = a3 >= v14;
  v25 = a3 - v14;
  if (v25 != 0 && v24)
  {
    if (v22 <= 3)
    {
      v29 = ((v25 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v14 < a2)
  {
    v27 = ~v14 + a2;
    if (v22 < 4)
    {
      v28 = (v27 >> v23) + 1;
      if (v22)
      {
        v31 = v27 & ~(-1 << v23);
        bzero(a1, v22);
        if (v22 == 3)
        {
          *a1 = v31;
          a1[2] = BYTE2(v31);
        }

        else if (v22 == 2)
        {
          *a1 = v31;
        }

        else
        {
          *a1 = v27;
        }
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v27;
      v28 = 1;
    }

    switch(v26)
    {
      case 1:
        a1[v22] = v28;
        return;
      case 2:
        *&a1[v22] = v28;
        return;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v22] = v28;
        return;
      default:
        return;
    }
  }

  switch(v26)
  {
    case 1:
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_47:
      __break(1u);
      JUMPOUT(0x23BB401DCLL);
    case 4:
      *&a1[v22] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        if (v8 == v14)
        {
          v32 = a1;
        }

        else
        {
          v32 = (&a1[v17] & ~v16);
          if (v12 == v14)
          {
            v8 = v12;
            v7 = v9;
          }

          else
          {
            v32 = (&v32[v18 + v19] & ~v19);
            v8 = v15;
            v7 = v10;
          }
        }

        __swift_storeEnumTagSinglePayload(v32, a2, v8, v7);
      }

      return;
  }
}

unint64_t sub_23BB40208()
{
  result = qword_27E1A17F0;
  if (!qword_27E1A17F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1610, &qword_23BBFE6C8);
    sub_23B97B518(&qword_27E1A17F8, &qword_27E1A1608, &qword_23BBFE6C0, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E1A1800, &qword_27E1A1808, &qword_23BBFE9B8, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A17F0);
  }

  return result;
}

void sub_23BB402EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ValueMetadata *a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_61();
  v31 = *(v30 + 8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1618, &unk_23BBFE6D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E280, &qword_23BBF4A70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C6A0, &unk_23BBFE6E0);
  v32 = OUTLINED_FUNCTION_15_4();
  type metadata accessor for SubscriptionStorePickerOption(v32, v33, v31, v34);
  v35 = MEMORY[0x277D83980];
  sub_23B97B518(&qword_27E19C6A8, &qword_27E19C6A0, &unk_23BBFE6E0, MEMORY[0x277D83980]);
  sub_23BBDC1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E288, &qword_23BC04490);
  sub_23BBDC1C8();
  sub_23B97B518(&qword_27E1A1620, &qword_27E1A1618, &unk_23BBFE6D0, v35);
  sub_23BA94078();
  sub_23BBDC1A8();
  sub_23BB3EC4C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23BB3ED00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_60();
}

uint64_t sub_23BB404D8(uint64_t *a1, double a2)
{
  v45 = *a1;
  v47 = a1[1];
  v43 = sub_23BBDA988();
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  OUTLINED_FUNCTION_7_15();
  v49 = sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1650, &qword_23BBFE6F0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  v2 = sub_23BBDD648();
  v3 = sub_23BB40BDC(&qword_27E1A1658, MEMORY[0x277CE0070], MEMORY[0x277CE0078]);
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v51 = v5;
  v79 = WitnessTable;
  v80 = sub_23B97B518(v6, &qword_27E19A1E0, &qword_23BBF2AB0, v7);
  v77 = swift_getWitnessTable();
  v78 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650, &qword_23BBFE6F0, MEMORY[0x277CE04A0]);
  v76 = swift_getWitnessTable();
  v64 = v43;
  v65 = v2;
  v66 = v3;
  v67 = swift_getWitnessTable();
  v8 = type metadata accessor for SubscriptionStorePickerControlWrapper(255, &v64);
  sub_23BBDB038();
  OUTLINED_FUNCTION_4();
  v9 = sub_23BBDA358();
  OUTLINED_FUNCTION_18_1();
  v10 = sub_23BBDD648();
  v12 = type metadata accessor for SubscriptionPickerVariadicContainer.SetSelectionEnvironmentModifier(255, v45, v47, v11);
  v13 = swift_getWitnessTable();
  v14 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
  v74 = v47;
  v75 = v14;
  v73 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = sub_23BB40BDC(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v71 = v15;
  v72 = v16;
  OUTLINED_FUNCTION_6_9();
  v70 = swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_27();
  v17 = swift_getWitnessTable();
  v64 = v8;
  v65 = v10;
  v66 = v12;
  v67 = v13;
  v68 = v9;
  v69 = v17;
  type metadata accessor for SubscriptionStorePickerFeatureContainer(255, &v64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1668, &qword_23BBFE6F8);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1670, &qword_23BBFE700);
  OUTLINED_FUNCTION_4();
  v18 = sub_23BBDA358();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B148, &unk_23BBFE400);
  v60 = swift_getWitnessTable();
  v62 = sub_23B97B518(&qword_27E1A1678, &qword_27E1A1668, &qword_23BBFE6F8, MEMORY[0x277CE0800]);
  v57 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v55 = sub_23B97B518(&qword_27E1A1680, &qword_27E1A1670, &qword_23BBFE700, v51);
  v20 = swift_getWitnessTable();
  v21 = sub_23BB3EE74();
  v64 = v18;
  v65 = v19;
  v66 = v20;
  v67 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = OUTLINED_FUNCTION_39_4(OpaqueTypeMetadata2, v23, v24, v25, v26, v27, v28, v29, v41, v43, v45, v47, v49, v51, v53, v55, v57, v17, v60, v62, v18, v19, v66, v67);
  v64 = OpaqueTypeMetadata2;
  v65 = v19;
  v66 = v30;
  v67 = v21;
  v31 = swift_getOpaqueTypeMetadata2();
  v39 = OUTLINED_FUNCTION_39_4(v31, v32, v33, v34, v35, v36, v37, v38, v42, v44, v46, v48, v50, v52, v54, v56, v58, v59, v61, v63, OpaqueTypeMetadata2, v19, v66, v67);
  v64 = v31;
  v65 = MEMORY[0x277D839B0];
  v66 = v39;
  v67 = MEMORY[0x277D839C8];
  return swift_getOpaqueTypeConformance2();
}

double sub_23BB40A74@<D0>(uint64_t a1@<X8>)
{
  sub_23BB3AF24(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_23BB40B28()
{
  result = qword_27E1A1820;
  if (!qword_27E1A1820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A3C8, &unk_23BBE9EE0);
    sub_23BB40BDC(qword_27E1A1828, type metadata accessor for SubscriptionStoreCopyWriter, &unk_23BC0384C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1820);
  }

  return result;
}

uint64_t sub_23BB40BDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23BB40C34(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23BB417EC(319, &qword_27E197EF0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BB40CFC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  if (v11 < a2)
  {
    v13 = ((*(*(v7 - 8) + 64) + (v12 & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v14 = (a2 - v11 + 255) >> 8;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    switch(v17)
    {
      case 1:
        v18 = a1[v13];
        if (!a1[v13])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v18 = *&a1[v13];
        if (*&a1[v13])
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB40E9CLL);
      case 4:
        v18 = *&a1[v13];
        if (!v18)
        {
          goto LABEL_25;
        }

LABEL_21:
        v19 = (v18 - 1) << (8 * v13);
        if (v13 <= 3)
        {
          v20 = *a1;
        }

        else
        {
          v19 = 0;
          v20 = *a1;
        }

        return v11 + (v20 | v19) + 1;
      default:
LABEL_25:
        if (v11)
        {
          break;
        }

        return 0;
    }
  }

  if (v6 < v9)
  {
    a1 = (&a1[v12] & ~v10);
    v6 = v9;
    v5 = v7;
  }

  return __swift_getEnumTagSinglePayload(a1, v6, v5);
}

void sub_23BB40EB0(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = ((*(*(v9 - 8) + 64) + (v14 & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v12 >= a3)
  {
    v19 = 0;
  }

  else
  {
    v16 = (a3 - v12 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (v12 < a2)
  {
    v20 = ~v12 + a2;
    bzero(a1, v15);
    if (v15 <= 3)
    {
      v21 = (v20 >> 8) + 1;
    }

    else
    {
      v21 = 1;
    }

    if (v15 > 3)
    {
      *v6 = v20;
    }

    else
    {
      *v6 = v20;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        return;
      case 2:
        *&v6[v15] = v21;
        return;
      case 3:
        goto LABEL_40;
      case 4:
        *&v6[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_40:
      __break(1u);
      JUMPOUT(0x23BB410E8);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v8 < v11)
        {
          a1 = (&a1[v14] & ~v13);
          v8 = v11;
          v7 = v9;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
      }

      return;
  }
}

void sub_23BB41110(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_23BB417EC(319, &qword_27E197EF0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23BB417EC(319, &qword_27E1998F8, &type metadata for SubscriptionStoreControlPlacementKey, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23BB41230(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v7 = a3[3];
  v8 = a3[4];
  v9 = *(*(v6 - 8) + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v6 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v8 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(v10 + 80);
  v17 = *(*(v7 - 8) + 64);
  v18 = *(v13 + 80);
  if (v15 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(*(v6 - 8) + 64) + v16;
  v21 = *(*(v8 - 8) + 64) + 23;
  if (v19 < a2)
  {
    v22 = ((v21 + ((v17 + v18 + (v20 & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 41;
    v23 = (a2 - v19 + 255) >> 8;
    if (v22 <= 3)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      LODWORD(v25) = 4;
    }

    else
    {
      LODWORD(v25) = 2;
    }

    if (v24 < 0x100)
    {
      LODWORD(v25) = 1;
    }

    if (v24 >= 2)
    {
      v25 = v25;
    }

    else
    {
      v25 = 0;
    }

    switch(v25)
    {
      case 1:
        v26 = a1[v22];
        if (!a1[v22])
        {
          break;
        }

        goto LABEL_28;
      case 2:
        v26 = *&a1[v22];
        if (*&a1[v22])
        {
          goto LABEL_28;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB414A8);
      case 4:
        v26 = *&a1[v22];
        if (!v26)
        {
          break;
        }

LABEL_28:
        v28 = (v26 - 1) << (8 * v22);
        if (v22 <= 3)
        {
          v29 = *a1;
        }

        else
        {
          v28 = 0;
          v29 = *a1;
        }

        return v19 + (v29 | v28) + 1;
      default:
        break;
    }
  }

  if (v9 == v19)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    a1 = (&a1[v20] & ~v16);
    if (v11 == v19)
    {
      v6 = v7;
    }

    else
    {
      a1 = (&a1[v17 + v18] & ~v18);
      if (v14 != v19)
      {
        v30 = *((&a1[v21] & 0xFFFFFFFFFFFFFFF8) + 40);
        if (v30 > 1)
        {
          return (v30 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v11 = v14;
      v6 = v8;
    }
  }

  return __swift_getEnumTagSinglePayload(a1, v11, v6);
}

double sub_23BB414BC(char *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v6 = a1;
  v7 = a4[2];
  v8 = *(*(v7 - 8) + 84);
  v9 = a4[3];
  v10 = a4[4];
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v8)
  {
    v13 = *(*(v7 - 8) + 84);
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v10 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  if (v16 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v11 + 80);
  v19 = *(*(v7 - 8) + 64) + v18;
  v20 = *(*(v9 - 8) + 64);
  v21 = *(v14 + 80);
  v22 = (v20 + v21 + (v19 & ~v18)) & ~v21;
  v23 = *(*(v10 - 8) + 64) + 23;
  v24 = ((v23 + v22) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v17 >= a3)
  {
    v28 = 0;
  }

  else
  {
    v25 = (a3 - v17 + 255) >> 8;
    if (v24 <= 3)
    {
      v26 = v25 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }
  }

  if (v17 < a2)
  {
    v29 = ~v17 + a2;
    bzero(a1, ((v23 + v22) & 0xFFFFFFFFFFFFFFF8) + 41);
    if (v24 <= 3)
    {
      v31 = (v29 >> 8) + 1;
    }

    else
    {
      v31 = 1;
    }

    if (v24 > 3)
    {
      *v6 = v29;
    }

    else
    {
      *v6 = v29;
    }

    switch(v28)
    {
      case 1:
        v6[v24] = v31;
        return result;
      case 2:
        *&v6[v24] = v31;
        return result;
      case 3:
        goto LABEL_53;
      case 4:
        *&v6[v24] = v31;
        return result;
      default:
        return result;
    }
  }

  switch(v28)
  {
    case 1:
      a1[v24] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    case 2:
      *&a1[v24] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    case 3:
LABEL_53:
      __break(1u);
      JUMPOUT(0x23BB417C4);
    case 4:
      *&a1[v24] = 0;
      goto LABEL_36;
    default:
LABEL_36:
      if (!a2)
      {
        return result;
      }

LABEL_37:
      if (v8 == v17)
      {
        goto LABEL_46;
      }

      a1 = (&a1[v19] & ~v18);
      if (v12 == v17)
      {
        v8 = v12;
        v7 = v9;
      }

      else
      {
        a1 = (&a1[v20 + v21] & ~v21);
        if (v15 != v17)
        {
          v32 = &a1[v23] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            result = 0.0;
            *(v32 + 24) = 0u;
            *(v32 + 8) = 0u;
            *(v32 + 40) = 0;
            *v32 = (a2 - 255);
          }

          else
          {
            *(v32 + 40) = -a2;
          }

          return result;
        }

        v8 = v15;
        v7 = v10;
      }

LABEL_46:

      __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
      return result;
  }
}

void sub_23BB417EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_23BB4183C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionPickerVariadicContainer.SetSelectionEnvironmentModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_12_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1810, &qword_23BBFEB50);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v4, &qword_27E1A1810, &qword_23BBFEB50, v5);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_23BB41900()
{
  v0 = OUTLINED_FUNCTION_23_11();
  v2 = type metadata accessor for SubscriptionStorePickerFeatureContainer.PreferenceImplementation(v0, v1);
  v3 = OUTLINED_FUNCTION_23_11();
  v6[0] = &type metadata for StoreKitViewsFeature;
  v6[1] = v2;
  v6[2] = type metadata accessor for SubscriptionStorePickerFeatureContainer.TraitImplementation(v3, v4);
  v6[3] = sub_23B9C7F48();
  v6[4] = swift_getWitnessTable();
  v6[5] = swift_getWitnessTable();
  type metadata accessor for FeatureView(255, v6);
  return swift_getWitnessTable();
}

unint64_t sub_23BB41A74()
{
  result = qword_27E1A1938;
  if (!qword_27E1A1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionPickerContainerValues(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SubscriptionPickerContainerValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BB41C38);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BB41C80()
{
  OUTLINED_FUNCTION_23_9();
  sub_23BBDD648();
  OUTLINED_FUNCTION_15_4();
  swift_getTupleTypeMetadata3();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  OUTLINED_FUNCTION_23_9();
  sub_23BBDA358();
  OUTLINED_FUNCTION_23_9();
  v0 = sub_23BBDD648();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v1 = OUTLINED_FUNCTION_4();
  type metadata accessor for MagicPocketSetterModifier(v1, v0, v2, v3);
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23BB41DD4(void *a1)
{
  sub_23BBDC078();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1930, &qword_23BBFED10);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();

  return swift_getWitnessTable();
}

_BYTE *sub_23BB41E8C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BB41F58);
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

unint64_t sub_23BB41F94()
{
  result = qword_27E1A1958;
  if (!qword_27E1A1958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1950, &unk_23BBFEE80);
    sub_23B97B518(&qword_27E1A1960, &qword_27E1A1948, &qword_23BBFEE78, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E1A1940, &qword_27E1A1930, &qword_23BBFED10, MEMORY[0x277CE0858]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1958);
  }

  return result;
}

unint64_t sub_23BB4207C()
{
  result = qword_27E1A1968;
  if (!qword_27E1A1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1968);
  }

  return result;
}

double OUTLINED_FUNCTION_11_23@<D0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 33);
  v7 = *(a1 + 32);

  return sub_23BB32398(v2, v3, v4, v5, v7, v6, sub_23BA0D8E4);
}

uint64_t OUTLINED_FUNCTION_19_22(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_39_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23BB42258@<X0>(uint64_t a1@<X8>)
{
  result = sub_23BA166B8();
  *a1 = result;
  *(a1 + 2) = BYTE2(result);
  *(a1 + 3) = BYTE3(result);
  *(a1 + 4) = BYTE4(result);
  return result;
}

uint64_t sub_23BB422D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) != 0 && *(a1 + 16))
  {
    v4 = sub_23BBDCDB8();
    v5 = OUTLINED_FUNCTION_13_0(v4);
    MEMORY[0x23EEB50B0](v5);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_23BBD9848();

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

uint64_t sub_23BB42378(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 64);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[15];
  }

  return v8;
}

uint64_t sub_23BB424CC(uint64_t a1)
{
  type metadata accessor for StoreViewEventConfiguration(0);
  sub_23BBDBF58();
  return v2;
}

uint64_t sub_23BB42508(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1B30, &unk_23BBFF3A0);
  sub_23BBDBF68();
  return v2;
}

void *sub_23BB42560@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (v2 + *(a1 + 72)), sizeof(__dst));
  sub_23BA5DACC(__src);
  return memcpy(a2, __src, 0x51uLL);
}

uint64_t sub_23BB425B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 76);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  LODWORD(v9) = *(v9 + 40);
  v18 = v11;
  if (v9 == 1)
  {

    v15 = v18;
  }

  else
  {

    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v17 = sub_23B9AD3D4(v10, v18, *(&v18 + 1), v12, v13, 0);
    result = (*(v6 + 8))(v8, v5, v17);
    v10 = v19;
    v15 = v20;
    v12 = v21;
    v13 = v22;
  }

  *a2 = v10;
  *(a2 + 8) = v15;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  return result;
}

void StoreView.init<A>(ids:icon:placeholderIcon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_10_0();
  v24 = v23;
  v69 = v25;
  v70 = v26;
  v74 = v27;
  v72 = v28;
  v73 = v29;
  v68 = v30;
  v32 = v31;
  OUTLINED_FUNCTION_3_2();
  v34 = v33;
  v71 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_1();
  v39 = v38 - v37;
  v75[0] = v40;
  v75[1] = v41;
  v75[2] = v43;
  v75[3] = v42;
  v44 = type metadata accessor for StoreView(0, v75);
  v45 = v32 + v44[16];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  v46 = (v32 + v44[17]);
  v47 = type metadata accessor for StoreViewEventConfiguration(0);
  OUTLINED_FUNCTION_23_10(v47);
  v48 = sub_23B99BB9C();
  *v46 = sub_23BB424CC(v48);
  v46[1] = v49;
  v50 = v32 + v44[18];
  KeyPath = swift_getKeyPath();
  LOBYTE(v75[0]) = 0;
  v52 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v54 = swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_15();
  *v50 = KeyPath;
  *(v50 + 8) = v55;
  *(v50 + 16) = v52;
  *(v50 + 24) = v56;
  *(v50 + 32) = v53;
  *(v50 + 40) = v57;
  *(v50 + 48) = v54;
  *(v50 + 56) = 0;
  *(v50 + 64) = v58;
  *(v50 + 72) = v59;
  *(v50 + 80) = 0;
  *(v50 + 88) = 0;
  v60 = swift_getKeyPath();
  v61 = OUTLINED_FUNCTION_17_10(v60);
  (*(v34 + 16))(v39, v68, v24, v61);
  *v32 = sub_23BBDD2B8();
  *(v32 + 8) = 0;
  v62 = swift_allocObject();
  v62[2] = v69;
  v62[3] = v70;
  v62[4] = v24;
  v62[5] = a21;
  v62[6] = v71;
  v62[7] = a23;
  v62[8] = v72;
  v62[9] = v73;
  *(v32 + 16) = sub_23BB42DCC;
  *(v32 + 24) = v62;

  v74(v63);
  v64 = v69 != MEMORY[0x277CE1428];
  *(v32 + v44[15]) = v69 != MEMORY[0x277CE1428];
  v65 = sub_23BB42508(v44);
  v66 = v70 != &type metadata for AutomaticProductPlaceholderIcon && v64;
  *(v65 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyCustomPlaceholder) = v66;

  v67 = sub_23BB42508(v44);

  (*(v34 + 8))(v68, v24);
  *(v67 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_prefersPromotionalIcon) = 0;

  OUTLINED_FUNCTION_9_1();
}

void sub_23BB42AA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v34 = a8;
  v35 = a4;
  v36 = a5;
  v37 = a7;
  v32 = a3;
  v33 = a9;
  v31 = a10;
  v13 = sub_23BBDCDB8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v20 - 8);
  v38 = &v31 - v21;
  sub_23BBDCD58();
  v22 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v19, 1, v22) == 1)
  {
    sub_23B979910(v19, &qword_27E19C300, &qword_23BBFCF30);
    v23 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v23);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v22 - 8) + 8))(v19, v22);
  }

  (*(v14 + 16))(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v24 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v25 = swift_allocObject();
  v27 = v35;
  v26 = v36;
  *(v25 + 2) = v35;
  *(v25 + 3) = v26;
  v28 = v37;
  *(v25 + 4) = a6;
  *(v25 + 5) = v28;
  v29 = v34;
  v30 = v31;
  *(v25 + 6) = v34;
  *(v25 + 7) = v30;
  *(v25 + 8) = a2;
  *(v25 + 9) = v32;
  (*(v14 + 32))(&v25[v24], v16, v13);

  sub_23BBB10AC(v38, sub_23BB48CE0, v25, 0, 0, v27, v26, v28, v33, v29);
}

uint64_t sub_23BB42D94()
{

  return swift_deallocObject();
}

uint64_t sub_23BB42E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v19 = *v13;
  v15(v14, &v19, v10);
  sub_23B9D2D88();
  v16 = *(v6 + 8);
  v16(v8, a5);
  sub_23B9D2D88();
  return (v16)(v12, a5);
}

void sub_23BB430F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ValueMetadata *a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_10_0();
  v80 = v24;
  v81 = v23;
  v85 = v26;
  v86 = v25;
  v82 = v28;
  v83 = v27;
  v84 = v29;
  v31 = v30;
  v33 = v32;
  v79 = a22;
  v76 = a21;
  OUTLINED_FUNCTION_3_2();
  v35 = v34;
  v37 = *(v36 + 64);
  v78 = a23;
  MEMORY[0x28223BE20](v38);
  v77 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90[0] = v39;
  v90[1] = v40;
  v90[2] = v41;
  v90[3] = v42;
  v43 = type metadata accessor for StoreView(0, v90);
  v44 = v33 + v43[16];
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  v45 = (v33 + v43[17]);
  v46 = type metadata accessor for StoreViewEventConfiguration(0);
  OUTLINED_FUNCTION_23_10(v46);
  v47 = sub_23B99BB9C();
  *v45 = sub_23BB424CC(v47);
  v45[1] = v48;
  v49 = v33 + v43[18];
  KeyPath = swift_getKeyPath();
  LOBYTE(v90[0]) = 0;
  v51 = swift_getKeyPath();
  v89 = 0;
  v52 = swift_getKeyPath();
  v88 = 0;
  v53 = swift_getKeyPath();
  v87 = 0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_15();
  *v49 = KeyPath;
  *(v49 + 8) = v54;
  *(v49 + 16) = v51;
  *(v49 + 24) = v55;
  *(v49 + 32) = v52;
  *(v49 + 40) = v56;
  *(v49 + 48) = v53;
  *(v49 + 56) = 0;
  *(v49 + 64) = v57;
  *(v49 + 72) = v58;
  *(v49 + 80) = 0;
  *(v49 + 88) = 0;
  v59 = swift_getKeyPath();
  v60 = OUTLINED_FUNCTION_17_10(v59);
  v61 = v82;
  *v33 = v81;
  *(v33 + 8) = v31 & 1;
  v62 = v35;
  v63 = *(v35 + 16);
  v64 = v76;
  v65 = v77;
  v63(v77, v61, v76, v60);
  v66 = (*(v62 + 80) + 72) & ~*(v62 + 80);
  v67 = swift_allocObject();
  v68 = v79;
  *(v67 + 16) = v80;
  *(v67 + 24) = v64;
  v69 = v64;
  v70 = v78;
  *(v67 + 32) = v68;
  *(v67 + 40) = v70;
  *(v67 + 48) = v86;
  v71 = v84;
  *(v67 + 56) = v83;
  *(v67 + 64) = v71;
  v72 = v65;
  v73 = v69;
  (*(v62 + 32))(v67 + v66, v72);
  *(v33 + 16) = sub_23BB48BD0;
  *(v33 + 24) = v67;
  (v63)(v33 + v43[14], v61, v73);
  LOBYTE(v67) = v85;
  *(v33 + v43[15]) = v85;

  *(sub_23BB42508(v43) + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyCustomPlaceholder) = (v73 != &type metadata for AutomaticProductPlaceholderIcon) & v67;

  v74 = sub_23BB42508(v43);

  (*(v62 + 8))(v61, v73);
  *(v74 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_prefersPromotionalIcon) = v86;

  OUTLINED_FUNCTION_9_1();
}

void StoreView.init<A>(ids:prefersPromotionalIcon:icon:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v27 = v17;
  OUTLINED_FUNCTION_3_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v22 = OUTLINED_FUNCTION_20_16(v21);
  v24(v22, v16, v23);
  LOBYTE(v30) = v14;
  v25 = sub_23B9AD84C();
  StoreView.init<A>(ids:prefersPromotionalIcon:icon:placeholderIcon:)(v0, v14, v12, v10, sub_23BA35CB0, v29, v8, &type metadata for AutomaticProductPlaceholderIcon, v6, v4, v25, v2, v26, v27, v29[0], v29[1], v30, v31, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5]);
  (*(v19 + 8))(v16, v6);
  memcpy(v28, v32, 0xD1uLL);
  OUTLINED_FUNCTION_9_1();
}

void StoreView.init<A>(products:icon:)()
{
  OUTLINED_FUNCTION_10_0();
  v31 = v1;
  v32 = v0;
  v33 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v30 = v9;
  v11 = v10;
  OUTLINED_FUNCTION_3_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  *(v11 + 40) = swift_getKeyPath();
  *(v11 + 48) = 0;
  v18 = type metadata accessor for StoreViewEventConfiguration(0);
  OUTLINED_FUNCTION_23_10(v18);
  v19 = sub_23B99BB9C();
  *(v11 + 56) = sub_23BB424CC(v19);
  *(v11 + 64) = v20;
  KeyPath = swift_getKeyPath();
  LOBYTE(v34[0]) = 0;
  v22 = swift_getKeyPath();
  v38 = 0;
  v23 = swift_getKeyPath();
  v37 = 0;
  v24 = swift_getKeyPath();
  v36 = 0;
  v25 = swift_getKeyPath();
  v35 = 0;
  *(v11 + 72) = KeyPath;
  *(v11 + 80) = 0;
  *(v11 + 88) = v22;
  *(v11 + 96) = 0;
  *(v11 + 104) = v23;
  *(v11 + 112) = 0;
  *(v11 + 120) = v24;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 144) = v25;
  *(v11 + 152) = 0;
  *(v11 + 160) = 0;
  *(v11 + 168) = swift_getKeyPath();
  *(v11 + 176) = 0u;
  *(v11 + 192) = 0u;
  *(v11 + 208) = 0;
  (*(v13 + 16))(v17, v30, v4);
  sub_23BBDCDB8();
  *v11 = sub_23BBDD2B8();
  *(v11 + 8) = 1;
  v26 = swift_allocObject();
  v26[2] = v6;
  v26[3] = v4;
  v26[4] = v33;
  v26[5] = v31;
  v26[6] = v32;
  v26[7] = v8;
  *(v11 + 16) = sub_23BB43B34;
  *(v11 + 24) = v26;
  v27 = MEMORY[0x277CE1428];
  *(v11 + 32) = v6 != MEMORY[0x277CE1428];

  v34[0] = v6;
  v34[1] = v27;
  v34[2] = v33;
  v34[3] = MEMORY[0x277CE1410];
  v28 = type metadata accessor for StoreView(0, v34);
  *(sub_23BB42508(v28) + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyCustomPlaceholder) = 0;

  v29 = sub_23BB42508(v28);

  (*(v13 + 8))(v30, v4);
  *(v29 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_prefersPromotionalIcon) = 0;

  OUTLINED_FUNCTION_9_1();
}

void sub_23BB43820(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a2;
  v31 = a7;
  v33 = a4;
  v34 = a6;
  v29 = a5;
  v32 = a8;
  v10 = sub_23BBDCDB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  sub_23BBDCD58();
  v20 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
  {
    sub_23B979910(v16, &qword_27E19C300, &qword_23BBFCF30);
    v21 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v21);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v20 - 8) + 8))(v16, v20);
  }

  (*(v11 + 16))(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v22 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v23 = swift_allocObject();
  v25 = v33;
  v24 = v34;
  v26 = v29;
  *(v23 + 2) = v33;
  *(v23 + 3) = v26;
  v27 = v30;
  v28 = v31;
  *(v23 + 4) = v24;
  *(v23 + 5) = v28;
  *(v23 + 6) = v27;
  *(v23 + 7) = a3;
  (*(v11 + 32))(&v23[v22], v13, v10);

  sub_23BBB10AC(v19, sub_23BB48AA8, v23, 0, 0, v25, MEMORY[0x277CE1428], v24, v32, MEMORY[0x277CE1410]);
}

uint64_t sub_23BB43AFC()
{

  return swift_deallocObject();
}

uint64_t sub_23BB43B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v19 = *v13;
  v15(v14, &v19, v10);
  sub_23B9D2D88();
  v16 = *(v6 + 8);
  v16(v8, a5);
  sub_23B9D2D88();
  return (v16)(v12, a5);
}

void StoreView.init<A>(products:prefersPromotionalIcon:icon:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v25 = v14;
  OUTLINED_FUNCTION_3_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v19 = OUTLINED_FUNCTION_20_16(v18);
  v21(v19, v13, v20);
  sub_23BBDCDB8();
  v22 = sub_23BBDD2B8();
  v23 = (v11 & 1) != 0 && (OUTLINED_FUNCTION_25_10() & 1) != 0 || v5 != MEMORY[0x277CE1428];
  v24 = sub_23BB44084(v22, 1, v11 & 1, v9, v7, v23, v5, v1, v26);
  (*(v16 + 8))(v13, v3, v24);
  memcpy(v25, v26, 0xD1uLL);
  OUTLINED_FUNCTION_9_1();
}

double sub_23BB43E1C@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *(a7 + 40) = swift_getKeyPath();
  *(a7 + 48) = 0;
  type metadata accessor for StoreViewEventConfiguration(0);
  swift_allocObject();
  v21 = sub_23B99BB9C();
  sub_23BBDBF58();
  *(a7 + 56) = v22;
  *(a7 + 64) = v23;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  LOBYTE(v21) = 0;
  v13 = swift_getKeyPath();
  v27[0] = 0;
  v14 = swift_getKeyPath();
  v26[0] = 0;
  v15 = swift_getKeyPath();
  v25[0] = 0;
  *(a7 + 72) = KeyPath;
  *(a7 + 80) = 0;
  *(a7 + 81) = *v27;
  *(a7 + 84) = *&v27[3];
  *(a7 + 88) = v12;
  *(a7 + 96) = 0;
  *(a7 + 97) = *v26;
  *(a7 + 100) = *&v26[3];
  *(a7 + 104) = v13;
  *(a7 + 112) = 0;
  *(a7 + 113) = *v25;
  *(a7 + 116) = *&v25[3];
  *(a7 + 120) = v14;
  *(a7 + 128) = 0;
  *(a7 + 136) = 0;
  *(a7 + 140) = *&v24[3];
  *(a7 + 137) = *v24;
  *(a7 + 144) = v15;
  *(a7 + 152) = 0;
  *(a7 + 160) = 0;
  *(a7 + 168) = swift_getKeyPath();
  *(a7 + 176) = 0u;
  *(a7 + 192) = 0u;
  *(a7 + 208) = 0;
  *a7 = a1;
  *(a7 + 8) = a2 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(a7 + 16) = sub_23BB489A4;
  *(a7 + 24) = v16;
  *(a7 + 32) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1B30, &unk_23BBFF3A0);
  sub_23BBDBF68();
  *(v21 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyCustomPlaceholder) = 0;

  sub_23BBDBF68();

  *(v21 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_prefersPromotionalIcon) = a3;

  return result;
}

double sub_23BB44084@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 40) = swift_getKeyPath();
  *(a9 + 48) = 0;
  v15 = type metadata accessor for StoreViewEventConfiguration(0);
  OUTLINED_FUNCTION_23_10(v15);
  v16 = sub_23B99BB9C();
  *(a9 + 56) = sub_23BB424CC(v16);
  *(a9 + 64) = v17;
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v34 = 0;
  v20 = swift_getKeyPath();
  v33 = 0;
  v21 = swift_getKeyPath();
  v32 = 0;
  v22 = swift_getKeyPath();
  v31 = 0;
  *(a9 + 72) = KeyPath;
  *(a9 + 80) = 0;
  *(a9 + 88) = v19;
  *(a9 + 96) = 0;
  *(a9 + 104) = v20;
  *(a9 + 112) = 0;
  *(a9 + 120) = v21;
  *(a9 + 128) = 0;
  *(a9 + 136) = 0;
  *(a9 + 144) = v22;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 168) = swift_getKeyPath();
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0u;
  *(a9 + 208) = 0;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  *(v23 + 24) = a8;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;
  *(v23 + 48) = a5;
  *(a9 + 16) = sub_23BB489F0;
  *(a9 + 24) = v23;
  *(a9 + 32) = a6;

  v30[0] = a7;
  v30[1] = MEMORY[0x277CE1428];
  v30[2] = a8;
  v30[3] = MEMORY[0x277CE1410];
  v24 = type metadata accessor for StoreView(0, v30);
  *(sub_23BB42508(v24) + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyCustomPlaceholder) = 0;

  v25 = sub_23BB42508(v24);

  *(v25 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_prefersPromotionalIcon) = a3;

  return result;
}

void *StoreView.init<A>(ids:prefersPromotionalIcon:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  OUTLINED_FUNCTION_3_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v13 = OUTLINED_FUNCTION_23_12(v12);
  v14(v13, a1);
  v15 = sub_23BBDD2B8();
  v16 = sub_23BB43E1C(v15, 0, a2, nullsub_1, 0, a2, __src);
  (*(v10 + 8))(a1, a3, v16);
  return memcpy(a5, __src, 0xD1uLL);
}

void *StoreView.init<A>(products:prefersPromotionalIcon:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  OUTLINED_FUNCTION_3_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v13 = OUTLINED_FUNCTION_23_12(v12);
  v14(v13, a1);
  sub_23BBDCDB8();
  v15 = sub_23BBDD2B8();
  v16 = (a2 & 1) != 0 && (OUTLINED_FUNCTION_25_10() & 1) != 0;
  v17 = sub_23BB43E1C(v15, 1, a2 & 1, nullsub_1, 0, v16, __src);
  (*(v10 + 8))(a1, a3, v17);
  return memcpy(a5, __src, 0xD1uLL);
}

BOOL sub_23BB44514()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  OUTLINED_FUNCTION_13_0(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  sub_23BBDCD58();
  v4 = sub_23BBDCD48();
  v5 = __swift_getEnumTagSinglePayload(v3, 1, v4) != 1;
  v6 = OUTLINED_FUNCTION_29_5();
  sub_23B979910(v6, v7, &qword_23BBFCF30);
  return v5;
}

void sub_23BB445D4(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v31 = a7;
  v26 = a3;
  v27 = a4;
  v30 = a2;
  v29 = a8;
  v28 = a9;
  v12 = sub_23BBDD648();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_23BBDD648();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v26 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v26 - v22;
  sub_23BBDCD58();
  v24 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v20, 1, v24) == 1)
  {
    sub_23B979910(v20, &qword_27E19C300, &qword_23BBFCF30);
    v25 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v24 - 8) + 8))(v20, v24);
  }

  v26(a1);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, a5);
  (*(*(a6 - 8) + 16))(v14, v27, a6);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, a6);
  sub_23BBB1200(v30 & 1, v23, v17, v14, 0, 0, a5, a6, v29, v31, v28);
}

uint64_t sub_23BB448BC@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  sub_23BBDCD58();
  v14 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
  {
    sub_23B979910(v10, &qword_27E19C300, &qword_23BBFCF30);
    v15 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v14 - 8) + 8))(v10, v14);
  }

  a3(a1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C320, &qword_23BBFF3B0);
  v17 = v16[14];
  *(a4 + v17) = swift_getKeyPath();
  v18 = v16[15];
  *(a4 + v18) = swift_getKeyPath();
  v19 = a4 + v16[16];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a4 + v16[13];
  if (a2)
  {
    *v20 = 256;
    v21 = 1;
  }

  else
  {
    *v20 = 0;
    *(v20 + 8) = 0;
    v21 = 2;
  }

  *(v20 + 16) = v21;
  return sub_23B989918(v13, a4, &qword_27E19C308, &qword_23BBEEF90);
}

void sub_23BB44AFC(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v22 = a2;
  v23 = a6;
  v10 = sub_23BBDD648();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300, &qword_23BBFCF30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v21[-v17];
  sub_23BBDCD58();
  v19 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
  {
    sub_23B979910(v15, &qword_27E19C300, &qword_23BBFCF30);
    v20 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v20);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v19 - 8) + 8))(v15, v19);
  }

  a3(a1);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, a4);
  v24 = 1;
  sub_23BBB1200(v22 & 1, v18, v12, &v24, 0, 0, a4, MEMORY[0x277CE1428], v23, a5, MEMORY[0x277CE1410]);
}

void StoreView.body.getter()
{
  OUTLINED_FUNCTION_10_0();
  v178 = v0;
  v2 = v1;
  v174 = v3;
  OUTLINED_FUNCTION_7();
  v173 = v4;
  v181 = *(v5 + 64);
  MEMORY[0x28223BE20](v6);
  v180 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDB148();
  OUTLINED_FUNCTION_7();
  v171 = v9;
  v172 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v170 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199D08, &qword_23BBE8F80);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22_2();
  v169 = v14;
  v179 = v2;
  v15 = v2[3];
  v16 = v2[4];
  v17 = v2[5];
  v184 = v2[2];
  v185 = v16;
  v209 = v184;
  v210 = v15;
  v18 = v15;
  v182 = v17;
  v183 = v15;
  v211 = v16;
  v212 = v17;
  v19 = v17;
  v20 = OUTLINED_FUNCTION_14_1();
  v22 = type metadata accessor for PromotionalIconLoadingView(v20, v21);
  OUTLINED_FUNCTION_10_21();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for StoreStaticView(255, v22, WitnessTable, v24);
  v209 = v22;
  v210 = v18;
  v211 = WitnessTable;
  v212 = v19;
  v25 = OUTLINED_FUNCTION_14_1();
  type metadata accessor for StoreDynamicView(v25, v26);
  v27 = sub_23BBDACE8();
  OUTLINED_FUNCTION_9_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_34();
  v28 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_41(v28);
  v162 = v27;
  v161 = swift_getWitnessTable();
  v29 = sub_23BBDC098();
  OUTLINED_FUNCTION_7();
  v168 = v30;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v132 - v32;
  v134 = v29;
  v34 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v165 = v35;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_22_2();
  v156 = v37;
  v139 = v34;
  v38 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v163 = v39;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_22_2();
  v154 = v41;
  v137 = v38;
  v42 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v166 = v43;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22_2();
  v152 = v45;
  type metadata accessor for StorefrontLocaleViewModifier(255);
  OUTLINED_FUNCTION_26_11();
  v143 = v42;
  v46 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v164 = v47;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_22_2();
  v155 = v49;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  OUTLINED_FUNCTION_26_11();
  v142 = v46;
  v50 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v160 = v51;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_22_2();
  v149 = v53;
  OUTLINED_FUNCTION_11_7();
  v132 = swift_getWitnessTable();
  v207 = v132;
  v208 = MEMORY[0x277CDFC60];
  v54 = MEMORY[0x277CDFAD8];
  v55 = swift_getWitnessTable();
  v136 = v55;
  v56 = sub_23BB45B3C();
  v205 = v55;
  v206 = v56;
  v57 = swift_getWitnessTable();
  v135 = v57;
  v58 = sub_23BA3D7D0();
  v203 = v57;
  v204 = v58;
  v59 = swift_getWitnessTable();
  v141 = v59;
  OUTLINED_FUNCTION_7_37();
  v62 = sub_23BB4866C(v60, v61, &unk_23BBF53D0);
  v201 = v59;
  v202 = v62;
  v177 = v54;
  v63 = swift_getWitnessTable();
  v138 = v63;
  v167 = MEMORY[0x277CE0868];
  v64 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
  v199 = v63;
  v200 = v64;
  OUTLINED_FUNCTION_29_5();
  v65 = swift_getWitnessTable();
  v209 = v50;
  v210 = v65;
  v144 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_3_2();
  v145 = v66;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v67);
  v69 = &v132 - v68;
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_26_11();
  v70 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v146 = v71;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_22_2();
  v133 = v73;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1978, &qword_23BBFF040);
  OUTLINED_FUNCTION_26_11();
  v147 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v151 = v74;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_22_2();
  v175 = v76;
  v150 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v158 = v77;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_22_2();
  v176 = v79;
  v157 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v159 = v80;
  MEMORY[0x28223BE20](v81);
  v148 = &v132 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v153 = &v132 - v84;
  v186 = v184;
  v187 = v183;
  v188 = v185;
  v189 = v182;
  v85 = v178;
  v190 = v178;
  sub_23BBDC318();
  sub_23BBDC088();
  sub_23BBDC2F8();
  v86 = v134;
  v87 = v156;
  sub_23BBDBB18();
  (*(v168 + 8))(v33, v86);
  v88 = v154;
  v89 = v139;
  sub_23BB46188(v139, v136);
  (*(v165 + 8))(v87, v89);
  v90 = v152;
  v91 = v137;
  v92 = sub_23BA02F24(v137, v135);
  (*(v163 + 8))(v88, v91, v92);
  v93 = v169;
  sub_23BB422D4(*v85, *(v85 + 8), v169);
  v94 = sub_23BBD9848();
  LOBYTE(v33) = __swift_getEnumTagSinglePayload(v93, 1, v94) == 1;
  sub_23B979910(v93, qword_27E199D08, &qword_23BBE8F80);
  v95 = v155;
  v96 = v143;
  sub_23BA98F9C(v33, v143, v141);
  (*(v166 + 8))(v90, v96);
  v97 = v149;
  v98 = v142;
  v99 = sub_23BB1C698(1, v142, v138);
  (*(v164 + 8))(v95, v98, v99);
  v100 = v170;
  sub_23BBDB138();
  sub_23BBDB968();
  (*(v171 + 8))(v100, v172);
  (*(v160 + 8))(v97, v50);
  KeyPath = swift_getKeyPath();
  v209 = v50;
  v210 = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v103 = v133;
  v104 = OpaqueTypeMetadata2;
  sub_23B9968C4(KeyPath, OpaqueTypeMetadata2, OpaqueTypeConformance2);

  (*(v145 + 8))(v69, v104);
  v105 = v179;
  v106 = sub_23BB42508(v179);
  OUTLINED_FUNCTION_6_30();
  v109 = sub_23BB4866C(v107, v108, MEMORY[0x277CDE458]);
  v197 = OpaqueTypeConformance2;
  v198 = v109;
  v110 = swift_getWitnessTable();
  sub_23B99D254(v106, v70, v110);

  (*(v146 + 8))(v103, v70);
  v111 = v173;
  v172 = *(v173 + 16);
  v112 = v180;
  v172(v180, v85, v105);
  v113 = (*(v111 + 80) + 48) & ~*(v111 + 80);
  v114 = swift_allocObject();
  v115 = OUTLINED_FUNCTION_14_24(v114);
  v173 = *(v111 + 32);
  (v173)(v115 + v113, v112, v105);
  v116 = sub_23B97B518(qword_27E1A1980, &qword_27E1A1978, &qword_23BBFF040, v167);
  v195 = v110;
  v196 = v116;
  v117 = v147;
  v118 = swift_getWitnessTable();
  v119 = v175;
  sub_23BBDBBF8();

  (*(v151 + 8))(v119, v117);
  v121 = v179;
  v120 = v180;
  v172(v180, v178, v179);
  v122 = swift_allocObject();
  v123 = OUTLINED_FUNCTION_14_24(v122);
  (v173)(v123 + v113, v120, v121);
  v124 = MEMORY[0x277CE0790];
  v193 = v118;
  v194 = MEMORY[0x277CE0790];
  v125 = v150;
  v126 = swift_getWitnessTable();
  v127 = v148;
  v128 = v176;
  sub_23BBDB778();

  (*(v158 + 8))(v128, v125);
  v191 = v126;
  v192 = v124;
  v129 = v157;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v130 = *(v159 + 8);
  v130(v127, v129);
  OUTLINED_FUNCTION_29_5();
  sub_23B9D2D88();
  v131 = OUTLINED_FUNCTION_29_5();
  (v130)(v131);
  OUTLINED_FUNCTION_9_1();
}

unint64_t sub_23BB45B3C()
{
  result = qword_27E1A1970;
  if (!qword_27E1A1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1970);
  }

  return result;
}

uint64_t sub_23BB45B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v57 = a4;
  v46 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8;
  v60 = v8;
  v61 = v10;
  v50 = v11;
  v62 = v11;
  v63 = v12;
  v13 = type metadata accessor for PromotionalIconLoadingView(255, &v60);
  WitnessTable = swift_getWitnessTable();
  v60 = v13;
  v61 = a2;
  v62 = WitnessTable;
  v63 = a3;
  v53 = a3;
  v15 = type metadata accessor for StoreDynamicView(0, &v60);
  v48 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v47 = &v43 - v19;
  v51 = v13;
  v52 = WitnessTable;
  v21 = type metadata accessor for StoreStaticView(0, v13, WitnessTable, v20);
  v44 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - v25;
  v27 = sub_23BBDACE8();
  v55 = *(v27 - 8);
  v56 = v27;
  MEMORY[0x28223BE20](v27);
  v54 = &v43 - v28;
  v29 = *a1;
  LODWORD(v28) = *(a1 + 8);
  v30 = *(a1 + 24);
  v49 = *(a1 + 16);
  v60 = v9;
  v61 = a2;
  if (v28 == 1)
  {
    v62 = v50;
    v63 = v53;
    v31 = type metadata accessor for StoreView(0, &v60);
    sub_23BB0CDF8(v29, v49, v30, *(a1 + *(v31 + 60)), v51, v52, v23);
    swift_getWitnessTable();
    sub_23B9D2D88();
    v32 = *(v44 + 8);

    v32(v23, v21);
    sub_23B9D2D88();
    swift_getWitnessTable();
    v33 = v54;
    sub_23BA82D64();
    v32(v23, v21);
    v32(v26, v21);
  }

  else
  {
    v34 = v53;
    v62 = v50;
    v63 = v53;
    v35 = type metadata accessor for StoreView(0, &v60);
    v36 = v45;
    (*(v46 + 16))(v45, a1 + *(v35 + 56), a2);
    LOBYTE(v35) = *(a1 + *(v35 + 60));

    sub_23BA8BD64(v29, v49, v30, v36, v35, v51, a2, v52, v17, v34);
    swift_getWitnessTable();
    v37 = v47;
    sub_23B9D2D88();
    v38 = *(v48 + 8);
    v38(v17, v15);
    sub_23B9D2D88();
    swift_getWitnessTable();
    v33 = v54;
    sub_23BA82E14();
    v38(v17, v15);
    v38(v37, v15);
  }

  v39 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v58 = v39;
  v59 = v40;
  v41 = v56;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v55 + 8))(v33, v41);
}

uint64_t sub_23BB46188(uint64_t a1, uint64_t a2)
{
  sub_23BB47230(&v7);
  v13 = *&v8[24];
  v14 = v9;
  v12 = *&v8[8];
  v10 = *(&v7 + 1);
  v11 = v8[0];
  v6 = v9;
  v5[0] = v7;
  v5[1] = *v8;
  v5[2] = *&v8[16];
  MEMORY[0x23EEB43C0](v5, a1, &type metadata for MagicPocketApplierModifier, a2);
  sub_23B979910(&v10, &qword_27E1A1B00, &unk_23BBFF2F0);
  sub_23B979910(&v12, &qword_27E199078, &unk_23BBEF500);
  return sub_23B979910(&v13, &qword_27E1A0848, &qword_23BBFF300);
}

uint64_t sub_23BB4626C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v6 = type metadata accessor for StoreView(0, &v12);
  sub_23BB42508(v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  sub_23BB42560(v6, &v12);
  v9 = sub_23BB42378(v6);
  sub_23BB425B8(v6, v22);
  sub_23B99C4B8(v7, v8, &v12, v9, v22, *(a1 + *(v6 + 60)));

  v26 = v23;
  sub_23B979910(&v26, &qword_27E19FA80, &qword_23BBFD310);
  sub_23B979500(v12, v13);
  sub_23B979500(v14, v15);
  sub_23B979500(v16, v17);
  sub_23B979500(v18, v19);
  v24 = v20;
  v25 = v21;
  sub_23B979910(&v24, &qword_27E19B400, &qword_23BBFF360);

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v10, qword_27E1BFC88);
  sub_23BBDD5B8();
  return sub_23B9D395C();
}

double sub_23BB46430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v5 = type metadata accessor for StoreView(0, &v8);
  sub_23BB42508(v5);
  sub_23BB42560(v5, &v8);
  sub_23BB425B8(v5, v18);
  v6 = sub_23BB42378(v5);
  sub_23B99C72C(&v8, v18, v6);

  v22 = v19;
  sub_23B979910(&v22, &qword_27E19FA80, &qword_23BBFD310);
  sub_23B979500(v8, v9);
  sub_23B979500(v10, v11);
  sub_23B979500(v12, v13);
  sub_23B979500(v14, v15);
  v20 = v16;
  v21 = v17;
  sub_23B979910(&v20, &qword_27E19B400, &qword_23BBFF360);

  sub_23BB42508(v5);
  sub_23B99BE24();

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v9 = v11;
  v12 = v1;
  v2 = (type metadata accessor for StoreView(0, &v10) - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  (*(*(v9 - 8) + 8))(v3 + v2[16]);
  sub_23B97B5C0(*(v3 + v2[18]), *(v3 + v2[18] + 8));

  v4 = v3 + v2[20];
  j__swift_release(*v4);
  j__swift_release(*(v4 + 16));
  j__swift_release(*(v4 + 32));
  v6.n128_f64[0] = sub_23BA15630(*(v4 + 48), *(v4 + 56), *(v4 + 64), v5);
  sub_23BA15630(*(v4 + 72), *(v4 + 80), *(v4 + 88), v6);
  v7 = v3 + v2[21];
  sub_23B9AD3D4(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40));
  return swift_deallocObject();
}

uint64_t sub_23BB46700(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v11[0] = v1[2];
  v2 = v11[0];
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v6 = type metadata accessor for StoreView(0, v11);
  OUTLINED_FUNCTION_13_0(v6);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return a1(v8, v2, v3, v4, v5);
}

void sub_23BB467F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = v1;
  v2 = type metadata accessor for StoreView.Storage(319, &v14);
  if (v3 <= 0x3F)
  {
    v14 = v2;
    v4 = sub_23B975E04();
    if (v5 <= 0x3F)
    {
      *&v15 = v4;
      v6 = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        *(&v15 + 1) = v6;
        v16 = MEMORY[0x277D839B0];
        sub_23B9A389C(319, &qword_27E1991B8, MEMORY[0x277CDF388]);
        if (v9 <= 0x3F)
        {
          v17 = v8;
          sub_23BB46CEC(319);
          if (v11 <= 0x3F)
          {
            v18 = v10;
            v19 = &type metadata for EnvironmentPurchaseActions;
            sub_23B9A389C(319, &qword_27E1991A0, &type metadata for AnyProductViewStyle);
            if (v13 <= 0x3F)
            {
              v20 = v12;
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23BB46930(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
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

  if (v8 < a2)
  {
    v9 = ((((((v7 + 32) & ~v7) + *(*(v4 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 41;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v9);
        if (*(a1 + v9))
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB46A98);
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          break;
        }

LABEL_22:
        v16 = (v14 - 1) << (8 * (((((((v7 + 32) & ~v7) + *(*(v4 - 8) + 64)) & 0xF8) - 113) & 0xF8) + 41));
        if (v9 <= 3)
        {
          v17 = *a1;
        }

        else
        {
          v16 = 0;
          v17 = *a1;
        }

        return v8 + (v17 | v16) + 1;
      default:
        break;
    }
  }

  v18 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v6 & 0x80000000) != 0)
  {
    return __swift_getEnumTagSinglePayload((v18 + v7 + 32) & ~v7, v6, v4);
  }

  v19 = *(v18 + 16);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

void sub_23BB46AAC(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
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
  v11 = ((((((v10 + 32) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v17;
        return;
      case 2:
        *(a1 + v11) = v17;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v11) = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23BB46CACLL);
    case 4:
      *(a1 + v11) = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        v18 = a1 & 0xFFFFFFFFFFFFFFF8;
        if ((v8 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((v18 + v10 + 32) & ~v10, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v19 = a2 & 0x7FFFFFFF;
            *(v18 + 24) = 0;
          }

          else
          {
            v19 = (a2 - 1);
          }

          *(v18 + 16) = v19;
        }
      }

      return;
  }
}

void sub_23BB46CEC(uint64_t a1)
{
  if (!qword_27E1A1A08[0])
  {
    type metadata accessor for StoreViewEventConfiguration(255);
    v1 = sub_23BBDBF98();
    if (!v2)
    {
      atomic_store(v1, qword_27E1A1A08);
    }
  }
}

uint64_t sub_23BB46D44(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_14_1();
  v3 = type metadata accessor for PromotionalIconLoadingView(v1, v2);
  OUTLINED_FUNCTION_10_21();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for StoreStaticView(255, v3, WitnessTable, v5);
  v6 = OUTLINED_FUNCTION_14_1();
  type metadata accessor for StoreDynamicView(v6, v7);
  sub_23BBDACE8();
  OUTLINED_FUNCTION_9_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_34();
  v8 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_41(v8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC098();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  type metadata accessor for StorefrontLocaleViewModifier(255);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23BB45B3C();
  swift_getWitnessTable();
  sub_23BA3D7D0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_37();
  sub_23BB4866C(v9, v10, &unk_23BBF53D0);
  swift_getWitnessTable();
  v11 = MEMORY[0x277CE0868];
  sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1978, &qword_23BBFF040);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_30();
  sub_23BB4866C(v12, v13, MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  sub_23B97B518(qword_27E1A1980, &qword_27E1A1978, &qword_23BBFF040, v11);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23BB47110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BB4714C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_23BB471A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_23BB47230@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23BBDC2A8();
  KeyPath = swift_getKeyPath();
  sub_23BBDBF58();
  result = swift_getKeyPath();
  *a2 = v3 & 1;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_23BB472C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  sub_23BBDBF68();
  if (v18 == 1)
  {
    v8 = sub_23BBDC298();
    v9 = MEMORY[0x277CE1320];
    a1[3] = v8;
    a1[4] = v9;
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_23BBDC278();
  }

  else
  {
    v19 = *(v1 + 48);
    v11 = *(v1 + 40);
    v18 = *(v2 + 40);
    v12 = v19;

    if ((v12 & 1) == 0)
    {
      sub_23BBDD5A8();
      v13 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B979910(&v18, &qword_27E1A0848, &qword_23BBFF300);
      (*(v5 + 8))(v7, v4);
      v11 = v15;
    }

    if (v11)
    {
      *(&v16 + 1) = MEMORY[0x277CDF6A8];
      v17 = MEMORY[0x277CDF6A0];
      *&v15 = v11;
      return sub_23B98473C(&v15, a1);
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      result = sub_23BBDBD28();
      v14 = MEMORY[0x277CE0F60];
      a1[3] = MEMORY[0x277CE0F78];
      a1[4] = v14;
      *a1 = result;
      if (*(&v16 + 1))
      {
        return sub_23B979910(&v15, &qword_27E19FCC8, &qword_23BBFDE00);
      }
    }
  }

  return result;
}

uint64_t sub_23BB47500@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v33 = a1;
  v35 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1A90, &qword_23BBFF2B0);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = v32 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1A98, &qword_23BBFF2B8);
  MEMORY[0x28223BE20](v34);
  v7 = v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1AA0, &qword_23BBFF2C0);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - v10;
  if (*v2)
  {
    v32[1] = v8;
    MEMORY[0x28223BE20](v9);
    sub_23BBDAB48();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1AA8, &qword_23BBFF2C8);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1AB0, &qword_23BBFF2D0);
    v30 = sub_23B97B518(&qword_27E1A1AB8, &qword_27E1A1AA8, &qword_23BBFF2C8, MEMORY[0x277CE04B0]);
    v31 = sub_23BB484DC();
    sub_23BBDB798();
    v14 = v36;
    (*(v3 + 16))(v7, v5, v36);
    swift_storeEnumTagMultiPayload();
    sub_23BB486B4();
    v37 = v12;
    v38 = v13;
    v39 = v30;
    v40 = v31;
    swift_getOpaqueTypeConformance2();
    sub_23BBDACD8();
    return (*(v3 + 8))(v5, v14);
  }

  else
  {
    v16 = sub_23BBDAB48();
    v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1AE8, &qword_23BBFF2E0) + 36)];
    sub_23BB47AA4(v2, v17);
    v18 = sub_23BBD9D58();
    v19 = MEMORY[0x23EEB3BE0]((2 * v18));
    v20 = sub_23BBDA398();
    v21 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1AF8, &qword_23BBFF2E8) + 36);
    *v21 = v20;
    *(v21 + 8) = 0;
    *(v21 + 16) = 1;
    *(v21 + 17) = v19;
    *(v21 + 24) = v16;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1AA8, &qword_23BBFF2C8);
    (*(*(v22 - 8) + 16))(v11, v33, v22);
    sub_23BBDB3B8();
    v44 = *(v2 + 8);
    v45 = *(v2 + 16);
    v43 = *(v2 + 24);
    v41 = *(v2 + 40);
    v42 = *(v2 + 48);
    v23 = swift_allocObject();
    v24 = *(v2 + 16);
    *(v23 + 16) = *v2;
    *(v23 + 32) = v24;
    *(v23 + 48) = *(v2 + 32);
    *(v23 + 64) = *(v2 + 48);
    sub_23B989ECC(&v44, &v37, &qword_27E1A1B00, &unk_23BBFF2F0);
    sub_23B989ECC(&v43, &v37, &qword_27E199078, &unk_23BBEF500);
    sub_23B989ECC(&v41, &v37, &qword_27E1A0848, &qword_23BBFF300);
    sub_23BBDB398();
    sub_23BBDB3D8();
    sub_23BBDB3D8();
    sub_23BBDB3D8();
    v25 = sub_23BBDB3D8();
    v26 = &v11[*(v8 + 36)];
    *v26 = v25;
    *(v26 + 1) = sub_23BB48874;
    *(v26 + 2) = v23;
    sub_23B989ECC(v11, v7, &qword_27E1A1AA0, &qword_23BBFF2C0);
    swift_storeEnumTagMultiPayload();
    sub_23BB486B4();
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1AB0, &qword_23BBFF2D0);
    v28 = sub_23B97B518(&qword_27E1A1AB8, &qword_27E1A1AA8, &qword_23BBFF2C8, MEMORY[0x277CE04B0]);
    v29 = sub_23BB484DC();
    v37 = v22;
    v38 = v27;
    v39 = v28;
    v40 = v29;
    swift_getOpaqueTypeConformance2();
    sub_23BBDACD8();
    return sub_23B979910(v11, &qword_27E1A1AA0, &qword_23BBFF2C0);
  }
}

uint64_t sub_23BB47AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1B08, &qword_23BBFF308);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = sub_23BBDA928();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 16);
  v11 = *(a1 + 8);
  v30 = v11;
  if (v31 == 1)
  {
    v12 = v11;
  }

  else
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(&v30, &qword_27E1A1B00, &unk_23BBFF2F0);
    (*(v8 + 8))(v10, v7);
    v12 = v25;
  }

  if (v12 == 1)
  {
    v29 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E9B8, &qword_23BBFF310);
    sub_23BBDBF58();
    v14 = v25;
    v15 = v26;
    LOBYTE(v25) = 0;
    v26 = v14;
    v27 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1B10, &unk_23BBFF318);
    sub_23BB4887C();
    sub_23BBDBA68();

    sub_23BB472C8(&v25);
    v16 = __swift_project_boxed_opaque_existential_1(&v25, v28);
    v17 = MEMORY[0x28223BE20](v16);
    (*(v19 + 16))(&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    v20 = sub_23BBD9DF8();
    v21 = sub_23BBDB398();
    v22 = &v6[*(v4 + 36)];
    *v22 = v20;
    v22[8] = v21;
    __swift_destroy_boxed_opaque_existential_1(&v25);
    sub_23B989918(v6, a2, &qword_27E1A1B08, &qword_23BBFF308);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v23, 1, v4);
}

uint64_t sub_23BB47E08(uint64_t a1, uint64_t a2)
{
  sub_23BBDB3B8();
  sub_23BBDB3D8();
  sub_23BBDB3D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  return sub_23BBDBF78();
}

uint64_t sub_23BB47E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_23BBDAB38();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDB588();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = type metadata accessor for StoreKitProminentButtonStyle(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1AC8, &qword_23BBFF2D8);
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x28223BE20](v15);
  v46 = &v43 - v16;
  v17 = sub_23BBDA928();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(a1 + 16);
  v22 = *(a1 + 8);
  v59 = v22;
  if (v60 == 1)
  {
    v23 = v22;
  }

  else
  {
    v44 = v19;

    sub_23BBDD5A8();
    v24 = sub_23BBDB338();
    v45 = v14;
    v25 = v12;
    v26 = v11;
    v27 = v6;
    v28 = v24;
    sub_23BBD9978();

    v6 = v27;
    v11 = v26;
    v12 = v25;
    v14 = v45;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(&v59, &qword_27E1A1B00, &unk_23BBFF2F0);
    (*(v18 + 8))(v21, v44);
    v23 = v53;
  }

  if (v23 == 1)
  {
    v57 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E9B8, &qword_23BBFF310);
    sub_23BBDBF58();
    v30 = v53;
    v29 = v54;
    LOBYTE(v53) = 0;
    v54 = v30;
    v55 = v29;
    KeyPath = swift_getKeyPath();
    v58 = 0;
    *v14 = KeyPath;
    v14[73] = 0;
    (*(v6 + 104))(v11, *MEMORY[0x277CE0AC0], v5);
    if (qword_27E197708 != -1)
    {
      swift_once();
    }

    v57 = qword_27E1BFCB0;
    (*(v6 + 16))(v8, v11, v5);
    sub_23B974940();
    sub_23BBD9D18();
    (*(v6 + 8))(v11, v5);
    v14[*(v12 + 24)] = 0;
    v14[*(v12 + 28)] = 0;
    v32 = sub_23BB48618();
    v33 = sub_23BB4866C(&qword_27E198BD8, type metadata accessor for StoreKitProminentButtonStyle, &unk_23BC03CEC);
    v34 = v46;
    sub_23BBDB738();
    sub_23B9A1B00(v14, v35);

    v36 = v49;
    sub_23BBDAB28();
    v53 = &type metadata for RestorePurchasesButton;
    v54 = v12;
    v55 = v32;
    v56 = v33;
    swift_getOpaqueTypeConformance2();
    v37 = v52;
    v38 = v48;
    sub_23BBDB938();
    (*(v50 + 8))(v36, v51);
    (*(v47 + 8))(v34, v38);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1B28, &qword_23BBFF328);
    v40 = v37;
    v41 = 0;
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1B28, &qword_23BBFF328);
    v40 = v52;
    v41 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v40, v41, 1, v39);
}

unint64_t sub_23BB484DC()
{
  result = qword_27E1A1AC0;
  if (!qword_27E1A1AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1AB0, &qword_23BBFF2D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1AC8, &qword_23BBFF2D8);
    type metadata accessor for StoreKitProminentButtonStyle(255);
    sub_23BB48618();
    sub_23BB4866C(&qword_27E198BD8, type metadata accessor for StoreKitProminentButtonStyle, &unk_23BC03CEC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1AC0);
  }

  return result;
}

unint64_t sub_23BB48618()
{
  result = qword_27E1A1AD0;
  if (!qword_27E1A1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1AD0);
  }

  return result;
}

uint64_t sub_23BB4866C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BB486B4()
{
  result = qword_27E1A1AD8;
  if (!qword_27E1A1AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1AA0, &qword_23BBFF2C0);
    sub_23BB48740();
    sub_23B9C6B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1AD8);
  }

  return result;
}

unint64_t sub_23BB48740()
{
  result = qword_27E1A1AE0;
  if (!qword_27E1A1AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1AE8, &qword_23BBFF2E0);
    sub_23B97B518(&qword_27E1A1AB8, &qword_27E1A1AA8, &qword_23BBFF2C8, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E1A1AF0, &qword_27E1A1AF8, &qword_23BBFF2E8, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1AE0);
  }

  return result;
}

uint64_t sub_23BB48824()
{
  sub_23B97B5C0(*(v0 + 24), *(v0 + 32));

  j__swift_release(*(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_23BB4887C()
{
  result = qword_27E1A1B18;
  if (!qword_27E1A1B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1B10, &unk_23BBFF318);
    sub_23BB48618();
    sub_23BB48908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1B18);
  }

  return result;
}

unint64_t sub_23BB48908()
{
  result = qword_27E1A1B20;
  if (!qword_27E1A1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1B20);
  }

  return result;
}

uint64_t sub_23BB4896C()
{

  return swift_deallocObject();
}

uint64_t sub_23BB489B8()
{

  return swift_deallocObject();
}

uint64_t sub_23BB48A00()
{
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();

  v0 = OUTLINED_FUNCTION_19_23();
  v1(v0);
  OUTLINED_FUNCTION_18_19();

  return swift_deallocObject();
}

uint64_t sub_23BB48AA8()
{
  OUTLINED_FUNCTION_28_8();
  v0 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_13_0(v0);
  v1 = OUTLINED_FUNCTION_12_28();

  return sub_23BB43B44(v1, v2, v3, v4, v5);
}

uint64_t sub_23BB48B2C()
{
  OUTLINED_FUNCTION_3_2();

  v0 = OUTLINED_FUNCTION_19_23();
  v1(v0);
  OUTLINED_FUNCTION_18_19();

  return swift_deallocObject();
}

uint64_t sub_23BB48C38()
{
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();

  v0 = OUTLINED_FUNCTION_19_23();
  v1(v0);
  OUTLINED_FUNCTION_18_19();

  return swift_deallocObject();
}

uint64_t sub_23BB48CE0()
{
  OUTLINED_FUNCTION_28_8();
  v0 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_13_0(v0);
  v1 = OUTLINED_FUNCTION_12_28();
  return sub_23BB42E00(v1, v2, v3, v4, v5);
}

_BYTE *storeEnumTagSinglePayload for MagicPocketApplierModifier.Variant(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BB48E3CLL);
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

unint64_t sub_23BB48E78()
{
  result = qword_27E1A1B38;
  if (!qword_27E1A1B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1B40, qword_23BBFF428);
    sub_23BB486B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1AA8, &qword_23BBFF2C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1AB0, &qword_23BBFF2D0);
    sub_23B97B518(&qword_27E1A1AB8, &qword_27E1A1AA8, &qword_23BBFF2C8, MEMORY[0x277CE04B0]);
    sub_23BB484DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1B38);
  }

  return result;
}

unint64_t sub_23BB48FA4()
{
  result = qword_27E1A1B48;
  if (!qword_27E1A1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1B48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_41(uint64_t a1)
{
  *(v2 - 136) = v1;
  *(v2 - 128) = a1;
  return MEMORY[0x277CE0340];
}

void *OUTLINED_FUNCTION_14_24(void *result)
{
  v2 = v1[51];
  result[2] = v1[52];
  result[3] = v2;
  v3 = v1[50];
  result[4] = v1[53];
  result[5] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return MEMORY[0x2821FC098](v0, 0, v2, v1);
}

double sub_23BB491B0@<D0>(uint64_t a1@<X8>)
{
  sub_23BB4924C();
  sub_23BBDA958();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_23BB4924C()
{
  result = qword_27E1A1B50;
  if (!qword_27E1A1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1B50);
  }

  return result;
}

uint64_t sub_23BB492B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23BB49894(a1, &v9);
  sub_23BBDCE38();
  sub_23BBDBF58();
  v8[0] = v6;
  v8[1] = v7;
  MEMORY[0x23EEB43C0](v8, a2, &type metadata for GroupPickerSelectionViewModifier, a3);
  return sub_23BB49904(v8);
}

uint64_t sub_23BB4935C(uint64_t a1, uint64_t a2)
{
  sub_23B97933C(a1, &v5);
  sub_23BBDD718();
  v3 = sub_23B9F40C4(v6, a2);
  sub_23BAC5FF8(v6);
  return v3;
}

uint64_t sub_23BB493DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23BBDD9F8();
  v5 = sub_23B9F40C4(v7, a2);
  sub_23BAC5FF8(v7);
  return v5;
}

uint64_t sub_23BB49448(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = ~a3;
  sub_23B97933C(a4, v16);
  sub_23BBDD718();
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *v5;
    sub_23BBCC2C4(a1, a2, a3 & 1, v17, isUniquelyReferenced_nonNull_native);
    *v5 = v16[0];
  }

  else
  {
    v12 = sub_23BBCBBDC(v17);
    sub_23BA0D94C(v12, v13, v14);
  }

  sub_23BAC5FF8(a4);
  return sub_23BAC5FF8(v17);
}

uint64_t sub_23BB4951C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  KeyPath = swift_getKeyPath();
  sub_23BB49A20(v3, v12);
  v7 = swift_allocObject();
  v8 = v12[1];
  *(v7 + 16) = v12[0];
  *(v7 + 32) = v8;
  *(v7 + 48) = v12[2];
  *(v7 + 64) = v13;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1B58, &qword_23BBFF660);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1B60, &qword_23BBFF668);
  v11 = (a2 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = sub_23BB49AA8;
  v11[2] = v7;
  return result;
}

void sub_23BB49620(uint64_t a1, void *a2)
{
  sub_23BB49894((a2 + 2), &v9);
  if (*(&v10 + 1))
  {
    sub_23BA0D8E4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
    v12[0] = v9;
    v12[1] = v10;
    v13 = v11;
    v5 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1B68, &qword_23BBFF670);
    sub_23BBDBF88();
    v4 = sub_23B97933C(v12, &v9);
    MEMORY[0x28223BE20](v4);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1B70, &qword_23BBFF6B0);
    sub_23BBDC108();

    sub_23BAC5FF8(v12);

    *a1 = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
  }

  else
  {
    sub_23BB49AB0(&v9);
  }
}

uint64_t sub_23BB497A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_23BB4935C(a2, *a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_23BB497E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B97933C(a3, v7);
  v4 = *a1;
  v5 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 16);
  sub_23BA0DC14(v4, v5, a1);
  return sub_23BB49448(v4, v5, a1, v7);
}

double sub_23BB49850@<D0>(uint64_t a1@<X8>)
{
  sub_23BB3E81C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_23BB49894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197878, &qword_23BBE38D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23BB49960(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23BB499A0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23BB49A58()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_23BB49AB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197878, &qword_23BBE38D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_23BB49B68(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

unint64_t sub_23BB49B80()
{
  result = qword_27E1A1B78;
  if (!qword_27E1A1B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1B60, &qword_23BBFF668);
    sub_23B97B518(&qword_27E1A1B80, &qword_27E1A1B58, &qword_23BBFF660, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E1A1B88, &qword_27E1A1B90, qword_23BBFF6B8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1B78);
  }

  return result;
}

uint64_t sub_23BB49C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA18, qword_23BBF1050);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BB49D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA18, qword_23BBF1050);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for ConfigureSubscriptionOfferViewEnvironmentViewModifier(uint64_t a1)
{
  result = qword_27E1A1B98;
  if (!qword_27E1A1B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BB49E30(uint64_t a1)
{
  type metadata accessor for SubscriptionOfferViewStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_23BA3463C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BB49ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  v5 = sub_23BBDA438();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1BA8, &qword_23BBFF768);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v22 - v11;
  v13 = sub_23BAC80E0(v10);
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v13 & 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1BB0, &qword_23BBFF7A0);
  (*(*(v16 - 8) + 16))(v12, a1, v16);
  v17 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1BB8, &qword_23BBFF7A8) + 36)];
  *v17 = KeyPath;
  v17[1] = sub_23B989418;
  v17[2] = v15;
  v18 = swift_getKeyPath();
  v19 = &v12[*(v9 + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1BC0, &unk_23BC05AE0) + 28);
  type metadata accessor for ConfigureSubscriptionOfferViewEnvironmentViewModifier(0);
  sub_23B9B75DC();
  __swift_storeEnumTagSinglePayload(v19 + v20, 0, 1, v5);
  *v19 = v18;
  if (*(v3 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration(0) + 40) + 16) == 1)
  {
    v22[1] = MEMORY[0x277D84F90];
    sub_23B9E10FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E50, &unk_23BBE6CA0);
    sub_23B97B518(&qword_27E198E58, &qword_27E198E50, &unk_23BBE6CA0, MEMORY[0x277D83970]);
    sub_23BBDD6C8();
  }

  else
  {
    sub_23BBDA428();
  }

  sub_23BB4A204();
  sub_23BBDBC38();
  (*(v6 + 8))(v8, v5);
  return sub_23BB4A3A0(v12);
}

unint64_t sub_23BB4A204()
{
  result = qword_27E1A1BC8;
  if (!qword_27E1A1BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1BA8, &qword_23BBFF768);
    sub_23BB4A2BC();
    sub_23B97B518(&qword_27E1A1BE0, &qword_27E1A1BC0, &unk_23BC05AE0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1BC8);
  }

  return result;
}

unint64_t sub_23BB4A2BC()
{
  result = qword_27E1A1BD0;
  if (!qword_27E1A1BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1BB8, &qword_23BBFF7A8);
    sub_23B97B518(&qword_27E1A1BD8, &qword_27E1A1BB0, &qword_23BBFF7A0, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E198308, &qword_27E198310, &unk_23BBE5200, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1BD0);
  }

  return result;
}

uint64_t sub_23BB4A3A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1BA8, &qword_23BBFF768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB4A408()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1BA8, &qword_23BBFF768);
  sub_23BB4A204();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BB4A480(uint64_t a1, int a2, int *a3)
{
  if (a2 == 254)
  {
    return OUTLINED_FUNCTION_14_25();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE98, qword_23BBFF7E0);
  OUTLINED_FUNCTION_10_2();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
    OUTLINED_FUNCTION_10_2();
    if (*(v8 + 84) == a2)
    {
      v7 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB28, &unk_23BBF3C90);
      v7 = a3[7];
    }
  }

  v9 = OUTLINED_FUNCTION_15_0(v7);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

uint64_t sub_23BB4A5A8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE98, qword_23BBFF7E0);
    OUTLINED_FUNCTION_10_2();
    if (*(v7 + 84) == a3)
    {
      v8 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
      OUTLINED_FUNCTION_10_2();
      if (*(v9 + 84) == a3)
      {
        v8 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB28, &unk_23BBF3C90);
        v8 = a4[7];
      }
    }

    v10 = OUTLINED_FUNCTION_15_0(v8);

    return __swift_storeEnumTagSinglePayload(v10, v11, a2, v12);
  }

  return result;
}

void sub_23BB4A6E8(uint64_t a1)
{
  sub_23B9A389C(319, &qword_27E197E40, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_23BB4A808(319, &qword_27E197F08, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      sub_23BB4A808(319, &qword_27E198D30, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_23BB4A808(319, &qword_27E19AB48, MEMORY[0x277CDDBB8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23BB4A808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBD9C18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23BB4A874()
{
  result = qword_27E1A1C00;
  if (!qword_27E1A1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1C00);
  }

  return result;
}

uint64_t sub_23BB4A8C8(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    if (a2 != 1 || a1 != 2)
    {
      return 0;
    }
  }

  else if (a1 - 1 >= 2)
  {
    return 0;
  }

  return 1;
}

double sub_23BB4A90C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23BB4CB20(a1);
  sub_23BBDB748();

  return result;
}

uint64_t sub_23BB4A98C@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = sub_23BBDA1E8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_23BBDA928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for InAppStoreButtonStyle(0);
  if (!*(v2 + *(v10 + 32)))
  {
    v15[15] = a1 & 1;
    sub_23BB4D084();
    goto LABEL_10;
  }

  if (*(v2 + *(v10 + 32)) != 1)
  {
    v18 = sub_23BBDAF08();
    goto LABEL_10;
  }

  v11 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v11, 0);
    (*(v7 + 8))(v9, v6);
    if (v17 != 1)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_23BBDA1D8();
    goto LABEL_10;
  }

  if (v11)
  {
    goto LABEL_9;
  }

LABEL_5:
  v12 = [objc_opt_self() systemGray3Color];
  v16 = sub_23BBDBCA8();
LABEL_10:
  result = sub_23BBD9DF8();
  *a2 = result;
  return result;
}

void sub_23BB4ABFC(uint64_t *a1@<X8>)
{
  v3 = sub_23BBDA508();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  type metadata accessor for InAppStoreButtonStyle(0);
  sub_23B9B7604();
  sub_23BBDA4F8();
  sub_23BB4D03C(&qword_27E19ABF0, MEMORY[0x277CDDBB8], MEMORY[0x277CDDBC0]);
  v10 = sub_23BBDCF38();
  v11 = *(v4 + 8);
  v11(v6, v3);
  if (v10)
  {
    v11(v9, v3);
LABEL_4:
    a1[3] = sub_23BBDC148();
    a1[4] = sub_23BB4D03C(&qword_27E19D098, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v14 = *MEMORY[0x277CE0118];
    v15 = sub_23BBDAA88();
    (*(*(v15 - 8) + 104))(boxed_opaque_existential_1, v14, v15);
    return;
  }

  sub_23BBDA4E8();
  v12 = sub_23BBDCF38();
  v11(v6, v3);
  v11(v9, v3);
  if (v12)
  {
    goto LABEL_4;
  }

  a1[3] = v3;
  a1[4] = sub_23BB4D03C(&qword_27E1A1C28, MEMORY[0x277CDDBB8], MEMORY[0x277CDDB98]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_23B9B7604();
}

uint64_t sub_23BB4AEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v5 = type metadata accessor for PlainInAppStoreButton(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1C08, &qword_23BBFF910);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1C10, &qword_23BBFF918);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1C18, &qword_23BBFF920);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = *(v3 + *(type metadata accessor for InAppStoreButtonStyle(0) + 32));
  v21 = v6[11];
  sub_23BBDB098();
  OUTLINED_FUNCTION_4_1();
  v23 = *(v22 + 16);
  v57 = a1;
  v23(v9 + v21, a1);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v24 = v6[7];
  *(v9 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);
  swift_storeEnumTagMultiPayload();
  v25 = v6[8];
  *(v9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  v26 = v9 + v6[9];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = v9 + v6[10];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  *(v9 + v6[12]) = v20;
  if (OUTLINED_FUNCTION_5_35())
  {
    if (sub_23BBDC2A8())
    {
      v28 = 82.0;
    }

    else
    {
      v28 = 36.0;
    }
  }

  else
  {
    v28 = 36.0;
  }

  sub_23BB4CA14(v9, v13);
  *&v13[*(v10 + 36)] = v28;
  v29 = sub_23BBDB388();
  if ((OUTLINED_FUNCTION_5_35() & 1) == 0)
  {
    sub_23BBDC2A8();
  }

  sub_23BBD9B18();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_23B989918(v13, v16, &qword_27E1A1C08, &qword_23BBFF910);
  v38 = &v16[*(v55 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = sub_23BBDB088();
  sub_23BB4A98C(v39 & 1, &v61);
  v40 = v61;
  sub_23BB4ABFC(v59);
  __swift_project_boxed_opaque_existential_1(v59, v60);
  OUTLINED_FUNCTION_13_29();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_1();
  v43 = OUTLINED_FUNCTION_10_22(v42);
  v44(v43);
  v45 = sub_23BBDC218();
  sub_23B989918(v16, v19, &qword_27E1A1C10, &qword_23BBFF918);
  v46 = &v19[*(v56 + 36)];
  *v46 = v40;
  *(v46 + 1) = v45;
  *(v46 + 8) = 256;
  __swift_destroy_boxed_opaque_existential_1(v59);
  sub_23BB4ABFC(v59);
  __swift_project_boxed_opaque_existential_1(v59, v60);
  OUTLINED_FUNCTION_13_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_1();
  v49 = OUTLINED_FUNCTION_10_22(v48);
  v50(v49);
  v51 = sub_23BBDC218();
  v52 = v58;
  sub_23B989918(v19, v58, &qword_27E1A1C18, &qword_23BBFF920);
  v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1C20, &qword_23BBFFA18) + 36);
  *v53 = v51;
  *(v53 + 8) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_23BB4B3D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PlainInAppStoreButton(0);
  v7 = v6[9];
  sub_23BBDB098();
  OUTLINED_FUNCTION_4_1();
  (*(v8 + 16))(a3 + v7, a1);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v9 = v6[5];
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);
  swift_storeEnumTagMultiPayload();
  v10 = v6[6];
  *(a3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  v11 = a3 + v6[7];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a3 + v6[8];
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  *(a3 + v6[10]) = a2;
  return result;
}

uint64_t sub_23BB4B524(char a1)
{
  v2 = sub_23BBDB518();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (sub_23BBDC2A8())
    {
      sub_23BBDB528();
    }

    else
    {
      sub_23BBDB428();
    }

    goto LABEL_12;
  }

  if (a1 == 1)
  {
    if (sub_23BBDC2A8())
    {
      sub_23BBDB568();
    }

    else
    {
      sub_23BBDB558();
    }

LABEL_12:
    sub_23BBDB478();
    v8 = sub_23BBDB508();

    return v8;
  }

  if (qword_27E197768 != -1)
  {
    swift_once();
  }

  sub_23BBDB478();
  sub_23BBDB508();

  (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
  v6 = sub_23BBDB548();

  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_23BB4B6E4(uint64_t (*a1)(void))
{
  v2 = sub_23BBDA308();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_23BBDC2A8();
  a1(0);
  sub_23B9B70F0();
  if (v11)
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CDFA10], v2);
    v12 = sub_23BBDA2F8();
    v13 = *(v4 + 8);
    v13(v7, v2);
    v13(v10, v2);
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      sub_23B9B70F0();
      v14 = sub_23BBDA2E8();
      v13(v10, v2);
    }
  }

  else
  {
    v14 = sub_23BBDA2E8();
    (*(v4 + 8))(v10, v2);
  }

  return v14 & 1;
}

uint64_t sub_23BB4B8A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlainInAppStoreButton(0);
  if (*(v1 + *(v7 + 40)))
  {
    if (*(v1 + *(v7 + 40)) == 1)
    {
      v8 = *v1;
      if (*(v1 + 8) == 1)
      {
        if ((v8 & 1) == 0)
        {
LABEL_5:
          v21 = sub_23BBDBD38();
          goto LABEL_17;
        }
      }

      else
      {

        sub_23BBDD5A8();
        v12 = sub_23BBDB338();
        sub_23BBD9978();

        sub_23BBDA918();
        swift_getAtKeyPath();
        sub_23B97B450(v8, 0);
        (*(v4 + 8))(v6, v3);
        if (v21 != 1)
        {
          goto LABEL_5;
        }
      }

      v13 = sub_23BBD356C();
      v22[3] = sub_23BBDA1E8();
      v22[4] = MEMORY[0x277CDF8D0];
      __swift_allocate_boxed_opaque_existential_1(v22);
      sub_23BBDA1D8();
      v14 = sub_23BBDBCB8();
      v23 = 1;
      v22[5] = v14;
      v21 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FF0, &qword_23BBE7210);
      sub_23B97B518(&qword_27E1A1D50, &qword_27E198FF0, &qword_23BBE7210, &unk_23BC08110);
      goto LABEL_17;
    }

    v11 = sub_23BBDAEF8();
LABEL_10:
    LODWORD(v21) = v11;
    goto LABEL_17;
  }

  v9 = v7;
  v10 = *v1;
  if (*(v1 + 8) == 1)
  {
    if ((v10 & 1) == 0)
    {
LABEL_8:
      v11 = sub_23BBDAF18();
      goto LABEL_10;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v10, 0);
    (*(v4 + 8))(v6, v3);
    if (v21 != 1)
    {
      goto LABEL_8;
    }
  }

  v16 = v1 + *(v9 + 32);
  v17 = *v16;
  v18 = *(v16 + 8);

  if ((v18 & 1) == 0)
  {
    sub_23BBDD5A8();
    v19 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v17 = v21;
  }

  v21 = v17;
LABEL_17:
  result = sub_23BBD9DF8();
  *a1 = result;
  return result;
}

double sub_23BB4BC50()
{
  v1 = v0;
  v2 = sub_23BBDA928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + *(type metadata accessor for PlainInAppStoreButton(0) + 40));
  v7 = sub_23BBDB088();
  if (v6 == 1)
  {
    if (v7)
    {
      v8 = *v0;
      if (*(v1 + 8) == 1)
      {
        if (v8)
        {
          return 0.2;
        }
      }

      else
      {

        sub_23BBDD5A8();
        v12 = sub_23BBDB338();
        sub_23BBD9978();

        sub_23BBDA918();
        swift_getAtKeyPath();
        sub_23B97B450(v8, 0);
        (*(v3 + 8))(v5, v2);
        if (v13[14])
        {
          return 0.2;
        }
      }
    }

    return 1.0;
  }

  else if (v7)
  {
    return 0.2;
  }

  else
  {
    v10 = *v0;
    if (*(v1 + 8) != 1)
    {

      sub_23BBDD5A8();
      v11 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v10, 0);
      (*(v3 + 8))(v5, v2);
      LOBYTE(v10) = v13[15];
    }

    result = 0.2;
    if (v10)
    {
      return 1.0;
    }
  }

  return result;
}

uint64_t sub_23BB4BE98@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  sub_23BBDA328();
  OUTLINED_FUNCTION_7();
  v97 = v3;
  v98 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_13_3(v5 - v4);
  sub_23BBDA308();
  OUTLINED_FUNCTION_7();
  v99 = v6;
  v100 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_13_3(v9 - v8);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF70, &unk_23BBFFD50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = v82 - v11;
  v82[1] = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v82[0] = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1CD0, &qword_23BC03D70) - 8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  v18 = v82 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1CD8, &qword_23BBFFD60);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  v22 = v82 - v21;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1CE0, &qword_23BBFFD68);
  OUTLINED_FUNCTION_7();
  v89 = v23;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v25);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1CE8, &qword_23BBFFD70);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v27);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1CF0, &qword_23BBFFD78);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v29);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1CF8, &qword_23BBFFD80);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v31);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1D00, &qword_23BBFFD88);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v32);
  v34 = v82 - v33;
  v35 = type metadata accessor for PlainInAppStoreButton(0);
  v82[3] = v1 + *(v35 + 36);
  sub_23BBDB078();
  KeyPath = swift_getKeyPath();
  v37 = &v18[*(v15 + 44)];
  *v37 = KeyPath;
  *(v37 + 1) = 1;
  v37[16] = 0;
  v38 = sub_23BB4B6E4(type metadata accessor for PlainInAppStoreButton);
  v82[2] = v35;
  v39 = *(v35 + 28);
  v94 = v1;
  v40 = v1 + v39;
  v41 = *v40;
  v42 = *(v40 + 8);
  if ((v38 & 1) == 0)
  {
    if (!v42)
    {

      sub_23BBDD5A8();
      v49 = sub_23BBDB338();
      OUTLINED_FUNCTION_16_19(v49, &dword_23B970000, v50, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v51, v52, MEMORY[0x277D84F90]);

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v41, 0);
      v53 = OUTLINED_FUNCTION_8_37();
      v54(v53);
      LOBYTE(v41) = __src[0];
    }

    v55 = v41;
    goto LABEL_11;
  }

  if (!v42)
  {

    sub_23BBDD5A8();
    v43 = sub_23BBDB338();
    OUTLINED_FUNCTION_16_19(v43, &dword_23B970000, v44, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v45, v46, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v41, 0);
    v47 = OUTLINED_FUNCTION_8_37();
    v48(v47);
    LOBYTE(v41) = __src[0];
  }

  if (!v41)
  {
    v55 = 0;
LABEL_11:
    v56 = sub_23BB4B524(v55);
    goto LABEL_15;
  }

  if (v41 != 1)
  {
    if (qword_27E197760 != -1)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  sub_23BBDB568();
  while (1)
  {
    sub_23BBDB478();
    v56 = sub_23BBDB508();

LABEL_15:
    v57 = swift_getKeyPath();
    sub_23B989918(v18, v22, &qword_27E1A1CD0, &qword_23BC03D70);
    v58 = &v22[*(v19 + 36)];
    *v58 = v57;
    v58[1] = v56;
    v59 = sub_23BBDC2A8();
    v18 = v99;
    v60 = MEMORY[0x277CDF9D0];
    if ((v59 & 1) == 0)
    {
      v60 = MEMORY[0x277CDFA10];
    }

    (*(v100 + 104))(v12, *v60, v99);
    sub_23BB4D03C(&qword_27E198F50, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    if (sub_23BBDCF38())
    {
      break;
    }

    __break(1u);
LABEL_20:
    swift_once();
LABEL_13:
  }

  sub_23BB4D9F0();
  v61 = v100;
  sub_23B97B518(&qword_27E19AF80, &qword_27E19AF70, &unk_23BBFFD50, MEMORY[0x277D84470]);
  v62 = v82[4];
  sub_23BBDB898();
  sub_23B979910(v12, &qword_27E19AF70, &unk_23BBFFD50);
  sub_23B979910(v22, &qword_27E1A1CD8, &qword_23BBFFD60);
  v63 = v93;
  sub_23B9B70F0();
  v64 = sub_23BBDA2E8();
  (*(v61 + 8))(v63, v18);
  sub_23BA19A70(v64 & 1, __src);
  v102 = 0;
  v65 = sub_23BBDC318();
  v67 = v66;
  LOBYTE(v61) = v102;
  v68 = v88;
  (*(v89 + 32))(v88, v62, v90);
  v69 = v68 + *(v83 + 36);
  memcpy(v69, __src, 0x59uLL);
  *(v69 + 89) = v61;
  *(v69 + 90) = v103;
  *(v69 + 94) = v104;
  *(v69 + 96) = v65;
  *(v69 + 104) = v67;
  sub_23BB4B8A0(&v101);
  v70 = v101;
  v71 = v85;
  sub_23B989918(v68, v85, &qword_27E1A1CE8, &qword_23BBFFD70);
  *(v71 + *(v86 + 36)) = v70;
  v72 = sub_23BB4BC50();
  v73 = v71;
  v74 = v87;
  sub_23B989918(v73, v87, &qword_27E1A1CF0, &qword_23BBFFD78);
  *(v74 + *(v84 + 36)) = v72;
  v75 = sub_23BBDC368();
  LOBYTE(v67) = sub_23BBDB088();
  sub_23B989918(v74, v34, &qword_27E1A1CF8, &qword_23BBFFD80);
  v76 = &v34[*(v91 + 36)];
  *v76 = v75;
  v76[8] = v67 & 1;
  v77 = v95;
  sub_23BBDA548();
  sub_23BB4DB90();
  OUTLINED_FUNCTION_4_36();
  sub_23BB4D03C(v78, v79, MEMORY[0x277CDD9F0]);
  v80 = v98;
  sub_23BBDB758();
  (*(v97 + 8))(v77, v80);
  return sub_23BB4DEB4(v34);
}

uint64_t sub_23BB4C838()
{
  sub_23BB4D0D8();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB4C874@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB4C838();
  *a1 = result;
  return result;
}

uint64_t sub_23BB4C994@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB4C838();
  *a1 = result;
  return result;
}

uint64_t sub_23BB4C9E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B9F4134();
  *a1 = result;
  return result;
}

uint64_t sub_23BB4CA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlainInAppStoreButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB4CA78(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 != 1 || a2 != 2)
    {
      return 0;
    }
  }

  else if (a2 - 1 >= 2)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_23BB4CADC(uint64_t a1)
{
  v2 = *v1;
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](v2);
  return sub_23BBDDBF8();
}

uint64_t sub_23BB4CB20(unint64_t a1)
{
  if (a1 < 8)
  {
    return 0;
  }

  if (a1 < 0xD)
  {
    return 1;
  }

  if (a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 2;
  }

  v11[8] = v1;
  v11[9] = v2;
  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v4, qword_27E1BFC88);
  v11[1] = 0xE000000000000000;
  sub_23BBDD768();
  MEMORY[0x23EEB5890](0xD000000000000031, 0x800000023BBE2AF0);
  v5 = sub_23BBDDA38();
  MEMORY[0x23EEB5890](v5);

  v6 = sub_23BBDD598();

  v7 = sub_23BBD9988();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_23BA5AB90(0, 0xE000000000000000, v11);
    *(v8 + 12) = 2082;
    v10 = sub_23BA5AB90(0, 0xE000000000000000, v11);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_23B970000, v7, v6, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v9, -1, -1);
    MEMORY[0x23EEB6DC0](v8, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_23BB4CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_23BBDDBB8();
  a4(v8, v6);
  return sub_23BBDDBF8();
}

uint64_t sub_23BB4CDC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_23BBDC318();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1CB8, &qword_23BBFFD38);
  return sub_23BB4CE28(a1, a2 + *(v6 + 44));
}

uint64_t sub_23BB4CE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1CC0, &qword_23BBFFD40);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v16 - v5;
  sub_23BBDC318();
  sub_23BBD9DE8();
  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = v24;
  v16 = v25;
  v17 = v20;
  v11 = *(v4 + 16);
  v12 = v18;
  v11(v6, v19, v18);
  v13 = v16;
  *a2 = v17;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1CC8, &qword_23BBFFD48);
  v11((a2 + *(v14 + 48)), v6, v12);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_23BB4CFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BB4D970();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BB4D03C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BB4D084()
{
  result = qword_27E1A1C30;
  if (!qword_27E1A1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1C30);
  }

  return result;
}

unint64_t sub_23BB4D0D8()
{
  result = qword_27E1A1C38;
  if (!qword_27E1A1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1C38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProductButtonBackgroundStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BB4D208);
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

uint64_t sub_23BB4D274(uint64_t a1, int a2, int *a3)
{
  if (a2 == 254)
  {
    return OUTLINED_FUNCTION_14_25();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE98, qword_23BBFF7E0);
  OUTLINED_FUNCTION_10_2();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
    OUTLINED_FUNCTION_10_2();
    if (*(v8 + 84) == a2)
    {
      v7 = a3[6];
    }

    else
    {
      sub_23BBDB098();
      v7 = a3[9];
    }
  }

  v9 = OUTLINED_FUNCTION_15_0(v7);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

uint64_t sub_23BB4D390(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE98, qword_23BBFF7E0);
    OUTLINED_FUNCTION_10_2();
    if (*(v7 + 84) == a3)
    {
      v8 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
      OUTLINED_FUNCTION_10_2();
      if (*(v9 + 84) == a3)
      {
        v8 = a4[6];
      }

      else
      {
        sub_23BBDB098();
        v8 = a4[9];
      }
    }

    v10 = OUTLINED_FUNCTION_15_0(v8);

    return __swift_storeEnumTagSinglePayload(v10, v11, a2, v12);
  }

  return result;
}

void sub_23BB4D4A4(uint64_t a1)
{
  sub_23B9A389C(319, &qword_27E197E40, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_23BB4A808(319, &qword_27E197F08, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      sub_23BB4A808(319, &qword_27E198D30, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_23B9A389C(319, &qword_27E1A1C50, &type metadata for ProductButtonFontStyle);
        if (v4 <= 0x3F)
        {
          sub_23B9A389C(319, &qword_27E1A1C58, MEMORY[0x277CE0F78]);
          if (v5 <= 0x3F)
          {
            sub_23BBDB098();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_23BB4D60C()
{
  result = qword_27E1A1C60;
  if (!qword_27E1A1C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1C20, &qword_23BBFFA18);
    sub_23BB4D6C4();
    sub_23B97B518(&qword_27E1A1CA0, &qword_27E1A1CA8, &qword_23BBFFB20, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1C60);
  }

  return result;
}

unint64_t sub_23BB4D6C4()
{
  result = qword_27E1A1C68;
  if (!qword_27E1A1C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1C18, &qword_23BBFF920);
    sub_23BB4D77C();
    sub_23B97B518(&qword_27E1A1C90, &qword_27E1A1C98, &qword_23BBFFB18, MEMORY[0x277CE0710]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1C68);
  }

  return result;
}

unint64_t sub_23BB4D77C()
{
  result = qword_27E1A1C70;
  if (!qword_27E1A1C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1C10, &qword_23BBFF918);
    sub_23BB4D808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1C70);
  }

  return result;
}

unint64_t sub_23BB4D808()
{
  result = qword_27E1A1C78;
  if (!qword_27E1A1C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1C08, &qword_23BBFF910);
    sub_23BB4D03C(&qword_27E1A1C80, type metadata accessor for PlainInAppStoreButton, &unk_23BBFFB60);
    sub_23BB4D8C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1C78);
  }

  return result;
}

unint64_t sub_23BB4D8C4()
{
  result = qword_27E1A1C88;
  if (!qword_27E1A1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1C88);
  }

  return result;
}

unint64_t sub_23BB4D970()
{
  result = qword_27E1A1CB0;
  if (!qword_27E1A1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1CB0);
  }

  return result;
}

unint64_t sub_23BB4D9F0()
{
  result = qword_27E1A1D08;
  if (!qword_27E1A1D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1CD8, &qword_23BBFFD60);
    sub_23BB4DAA8();
    sub_23B97B518(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1D08);
  }

  return result;
}

unint64_t sub_23BB4DAA8()
{
  result = qword_27E1A1D10;
  if (!qword_27E1A1D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1CD0, &qword_23BC03D70);
    sub_23BB4D03C(&qword_27E197E58, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_23B97B518(&qword_27E19CF68, &qword_27E19CF70, &qword_23BBFFDF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1D10);
  }

  return result;
}

unint64_t sub_23BB4DB90()
{
  result = qword_27E1A1D18;
  if (!qword_27E1A1D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1D00, &qword_23BBFFD88);
    sub_23BB4DC48();
    sub_23B97B518(&qword_27E1A1D38, &qword_27E1A1D40, &qword_23BC040A0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1D18);
  }

  return result;
}

unint64_t sub_23BB4DC48()
{
  result = qword_27E1A1D20;
  if (!qword_27E1A1D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1CF8, &qword_23BBFFD80);
    sub_23BB4DCD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1D20);
  }

  return result;
}

unint64_t sub_23BB4DCD4()
{
  result = qword_27E1A1D28;
  if (!qword_27E1A1D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1CF0, &qword_23BBFFD78);
    sub_23BB4DD8C();
    sub_23B97B518(&qword_27E198C60, &qword_27E198C68, &qword_23BBE6A20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1D28);
  }

  return result;
}

unint64_t sub_23BB4DD8C()
{
  result = qword_27E1A1D30;
  if (!qword_27E1A1D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1CE8, &qword_23BBFFD70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1CD8, &qword_23BBFFD60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF70, &unk_23BBFFD50);
    sub_23BB4D9F0();
    sub_23B97B518(&qword_27E19AF80, &qword_27E19AF70, &unk_23BBFFD50, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_23B9A6A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1D30);
  }

  return result;
}

uint64_t sub_23BB4DEB4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1D00, &qword_23BBFFD88);
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(a1);
  return a1;
}

_BYTE *sub_23BB4DF14(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BB4DFE0);
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

uint64_t sub_23BB4E0A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1D00, &qword_23BBFFD88);
  sub_23BBDA328();
  sub_23BB4DB90();
  OUTLINED_FUNCTION_4_36();
  sub_23BB4D03C(v0, v1, MEMORY[0x277CDD9F0]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23BB4E190()
{
  result = qword_27E1A1D68;
  if (!qword_27E1A1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1D68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_35()
{

  return sub_23BB4B6E4(type metadata accessor for InAppStoreButtonStyle);
}

uint64_t OUTLINED_FUNCTION_14_25()
{
  v1 = *(v0 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_16_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_23BBD9978();
}

uint64_t sub_23BB4E2E8(uint64_t a1)
{
  v2 = sub_23BBDAE18();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1D70, &qword_23BBFFF10);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  KeyPath = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1D78, &qword_23BBFFF48);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = &v8[*(v6 + 36)];
  *v11 = KeyPath;
  v11[8] = 1;
  sub_23BBDAE08();
  sub_23BB4E4C0();
  sub_23BA17C2C();
  sub_23BBDB978();
  (*(v3 + 8))(v5, v2);
  return sub_23BB4E5A4(v8);
}

unint64_t sub_23BB4E4C0()
{
  result = qword_27E1A1D80;
  if (!qword_27E1A1D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1D70, &qword_23BBFFF10);
    sub_23B97B518(qword_27E1A1D88, &qword_27E1A1D78, &qword_23BBFFF48, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8, &qword_23BBE6C10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1D80);
  }

  return result;
}

uint64_t sub_23BB4E5A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1D70, &qword_23BBFFF10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB4E60C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1D70, &qword_23BBFFF10);
  sub_23BBDAE18();
  sub_23BB4E4C0();
  sub_23BA17C2C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BB4E690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDCDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  (*(v5 + 16))(v7, a1, v4, v9);
  sub_23BBA7878(v7, 0, 1, v11);
  v12 = type metadata accessor for Subscription(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_23BB4E950(v11);
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v13, qword_27E1BFC88);
    v14 = sub_23BBDD598();
    v15 = sub_23BBD9988();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v21);
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_23BA5AB90(0xD000000000000049, 0x800000023BBE0CB0, &v21);
      _os_log_impl(&dword_23B970000, v15, v14, "%{public}s%{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v17, -1, -1);
      MEMORY[0x23EEB6DC0](v16, -1, -1);
    }

    v18 = 1;
  }

  else
  {
    sub_23BA1D1B4(v11, a2);
    v18 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v18, 1, v12);
}

uint64_t sub_23BB4E950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB4E9B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  (*(v16 + 32))(a8);
  v17 = sub_23B9B4FB8();
  v21[0] = a4;
  v21[1] = MEMORY[0x277D84A98];
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = v17;
  v21[5] = a7;
  v18 = type metadata accessor for SubscriptionOptionSection(0, v21);
  result = (*(*(a5 - 8) + 32))(a8 + *(v18 + 68), a1, a5);
  v20 = (a8 + *(v18 + 72));
  *v20 = a2;
  v20[1] = a3;
  return result;
}

uint64_t SubscriptionOptionSection._identifiedContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v3 = *(a1 + 56);
  v11[0] = *(a1 + 16);
  v11[1] = v9;
  v11[2] = v10;
  v11[3] = v3;
  v4 = type metadata accessor for AccessoryMultiview(255, v11);
  OUTLINED_FUNCTION_0_50();
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for IdentifiedView(0, v4, WitnessTable, v6);
  OUTLINED_FUNCTION_1_54();
  swift_getWitnessTable();
  return sub_23BB6BAB8(sub_23BB4EF24, v7, a2);
}

uint64_t sub_23BB4EB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a7;
  v50 = a6;
  v51 = a8;
  v47 = a3;
  v49 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v48 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v17;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  v55 = v21;
  v22 = type metadata accessor for AccessoryMultiview(0, &v52);
  v45 = v22;
  MEMORY[0x28223BE20](v22);
  v42 = &v40 - v23;
  WitnessTable = swift_getWitnessTable();
  v25 = type metadata accessor for IdentifiedView(0, v22, WitnessTable, v24);
  v46 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v40 - v30;
  v32 = *(v14 + 16);
  v40 = a2;
  v32(v17, a1, a2, v29);
  v52 = a2;
  v53 = v47;
  v54 = a4;
  v55 = a5;
  v33 = a5;
  v34 = v43;
  v56 = v50;
  v57 = v43;
  v35 = type metadata accessor for SubscriptionOptionSection(0, &v52);
  v36 = v48;
  (*(v49 + 16))(v48, a1 + *(v35 + 68), a4);
  v37 = v42;
  sub_23BB4EF38(v41, v36, v40, a4, v33, v34, v42);
  sub_23BB4F000(v37, *(a1 + *(v35 + 72)), *(a1 + *(v35 + 72) + 8), v45, WitnessTable, v27);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v38 = *(v46 + 8);

  v38(v27, v25);
  sub_23B9D2D88();
  return (v38)(v31, v25);
}

uint64_t sub_23BB4EF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for AccessoryMultiview(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t sub_23BB4F000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for IdentifiedView(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t SubscriptionOptionSection<>.init(isIncluded:header:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v20 = a1;
  v21 = a2;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_4();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v17(v16);
  a3(v18);
  return sub_23BB4E9B8(v14, v20, v21, a4, a5, a7, a8, a6);
}

uint64_t SubscriptionOptionSection<>.init(_:isIncluded:footer:)@<X0>(uint64_t a3@<X4>, uint64_t a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  SubscriptionOptionSection<>.init(isIncluded:header:footer:)(a3, a4, a5, MEMORY[0x277CE0BD8], a7, a6, MEMORY[0x277CE0BC8], a8);
}

uint64_t sub_23BB4F284@<X0>(uint64_t a5@<X8>)
{

  result = sub_23BBDB648();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

uint64_t SubscriptionOptionSection<>.init<A>(_:isIncluded:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  SubscriptionOptionSection<>.init(isIncluded:header:footer:)(a2, a3, a4, MEMORY[0x277CE0BD8], a5, a8, MEMORY[0x277CE0BC8], a7);
  OUTLINED_FUNCTION_1_4();
  return (*(v10 + 8))(a1, a6);
}

uint64_t sub_23BB4F3DC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_23BBDB678();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

unint64_t sub_23BB4F510(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_23B975E04();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23BB4F5B4(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 32);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 < a2)
  {
    v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v16 = a2 - v12;
    v17 = v15 & 0xFFFFFFF8;
    if ((v15 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = v16 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = *(a1 + v15);
        if (!v21)
        {
          break;
        }

        goto LABEL_25;
      case 2:
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_25;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB4F778);
      case 4:
        v21 = *(a1 + v15);
        if (!v21)
        {
          break;
        }

LABEL_25:
        v23 = v21 - 1;
        if (v17)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      default:
        break;
    }
  }

  if (v6 == v12)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  a1 = ((a1 + v13) & ~v11);
  if (v9 == v12)
  {
    v6 = v9;
    v5 = v7;
    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v25 = *((a1 + v14) & 0xFFFFFFFFFFFFFFF8);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  return (v25 + 1);
}

void sub_23BB4F78C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 32);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = a3 - v12;
    if (((v16 + v15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (a2 > v12)
  {
    if (((v16 + v15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v12;
    }

    else
    {
      v22 = 1;
    }

    if (((v16 + v15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v12 + a2;
      bzero(a1, ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *v6 = v23;
    }

    switch(v21)
    {
      case 1:
        v6[v17] = v22;
        return;
      case 2:
        *&v6[v17] = v22;
        return;
      case 3:
        goto LABEL_47;
      case 4:
        *&v6[v17] = v22;
        return;
      default:
        return;
    }
  }

  switch(v21)
  {
    case 1:
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 2:
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 3:
LABEL_47:
      __break(1u);
      JUMPOUT(0x23BB4F9E4);
    case 4:
      *&a1[v17] = 0;
      goto LABEL_33;
    default:
LABEL_33:
      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v8 == v12)
      {
        goto LABEL_37;
      }

      a1 = (&a1[v14] & ~v13);
      if (v11 == v12)
      {
        v8 = v11;
        v7 = v9;
LABEL_37:

        __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
      }

      else
      {
        v24 = (&a1[v16] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v25 = a2 & 0x7FFFFFFF;
          v24[1] = 0;
        }

        else
        {
          v25 = (a2 - 1);
        }

        *v24 = v25;
      }

      return;
  }
}

uint64_t sub_23BB4FA24(uint64_t *a1)
{
  v1 = a1[5];
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = v1;
  type metadata accessor for AccessoryMultiview(255, &v7);
  OUTLINED_FUNCTION_0_50();
  swift_getWitnessTable();
  v2 = OUTLINED_FUNCTION_18_1();
  type metadata accessor for IdentifiedView(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1_54();
  return swift_getWitnessTable();
}

unint64_t sub_23BB4FA94(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_23B975E04();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB4FB1C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v8);
        if (v14)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB4FC58);
      case 4:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

LABEL_22:
        v16 = v14 - 1;
        if (v10)
        {
          v16 = 0;
          LODWORD(v10) = *a1;
        }

        return v7 + (v10 | v16) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_23BB4FC6C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        return;
      case 2:
        *&a1[v10] = v15;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23BB4FE3CLL);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v7 < 0x7FFFFFFF)
        {
          v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
            v17[1] = 0;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *v17 = v18;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_23BB4FE64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
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
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_23BB5003C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a2)
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        return;
      case 2:
        *&v6[v15] = v21;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BB502C8);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 < v11)
        {
          a1 = (&a1[v14] & ~v13);
          v9 = v11;
          v7 = v8;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
      }

      return;
  }
}

uint64_t sub_23BB50334@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v26 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1F10, &qword_23BC000A8);
  v3 = sub_23BBDA358();
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &WitnessTable - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v25 = &WitnessTable - v7;
  v8 = a1[2];
  v9 = sub_23BBDA358();
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &WitnessTable - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v29 = &WitnessTable - v13;
  v14 = a1[4];
  sub_23BAD3680(0, v8, v14);
  v15 = sub_23BB50C38(&qword_27E1A1F18, &qword_27E1A1F10, &qword_23BC000A8);
  v34[4] = v14;
  v34[5] = v15;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88();
  v24 = *(v30 + 8);
  v24(v11, v9);
  v16 = a1[5];
  sub_23BAD3680(1, v26, v16);
  v34[2] = v16;
  v34[3] = v15;
  v17 = swift_getWitnessTable();
  v18 = v25;
  sub_23B9D2D88();
  v19 = v27;
  v20 = *(v27 + 8);
  v20(v5, v3);
  (*(v30 + 16))(v11, v29, v9);
  v34[0] = v11;
  (*(v19 + 16))(v5, v18, v3);
  v34[1] = v5;
  v33[0] = v9;
  v33[1] = v3;
  v31 = WitnessTable;
  v32 = v17;
  sub_23BB6739C(v34, 2, v33);
  v20(v18, v3);
  v21 = v24;
  v24(v29, v9);
  v20(v5, v3);
  return v21(v11, v9);
}

uint64_t sub_23BB506B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995B0, &qword_23BBE8060);
  v34 = v12;
  v30 = *(a1 + 24);
  v13 = v30;
  v32 = sub_23B9B6090();
  v38 = v8;
  v39 = v12;
  v40 = v13;
  v41 = v32;
  v33 = sub_23BBDAEC8();
  v14 = sub_23BBDBE28();
  v35 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v31 = &v28 - v19;
  (*(v9 + 16))(v11, v2, v8, v18);
  v20 = type metadata accessor for SubscriptionOptionSectionAccessorySubview(0);
  (*(v4 + 16))(v6, v2, a1);
  v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v8;
  *(v22 + 24) = v23;
  (*(v4 + 32))(v22 + v21, v6, a1);
  v24 = sub_23BB50F44(&qword_27E1A1F20, type metadata accessor for SubscriptionOptionSectionAccessorySubview, &unk_23BBF98D4);
  sub_23BB78108(v29, sub_23BB50D7C, v22, v20, v8, v34, v24, v16, v23, v32);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v25 = v31;
  sub_23B9D2D88();
  v26 = *(v35 + 8);
  v26(v16, v14);
  sub_23B9D2D88();
  return (v26)(v25, v14);
}

uint64_t sub_23BB50A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1F28, &qword_23BC000B0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = sub_23BBDC318();
  v25 = v14;
  v26 = v13;
  KeyPath = swift_getKeyPath();
  v16 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995B0, &qword_23BBE8060) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995C8, &qword_23BBE8068) + 28);
  sub_23BB50E20(a1, v12);
  v19 = (a2 + *(type metadata accessor for IdentifiedView(0, a3, a4, v18) + 36));
  v20 = *v19;
  v21 = v19[1];
  sub_23BB50E90();

  sub_23BA22C80(v12, v20, v21, v10, v16 + v17);
  v22 = type metadata accessor for SubscriptionStoreContentConfiguration.Context(0);
  swift_storeEnumTagMultiPayload();
  result = __swift_storeEnumTagSinglePayload(v16 + v17, 0, 1, v22);
  *v16 = KeyPath;
  v24 = v25;
  *a5 = v26;
  a5[1] = v24;
  return result;
}

uint64_t sub_23BB50C38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23BB50C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for IdentifiedView(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 8))(v4 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_23BB50D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for IdentifiedView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_23BB50A68(a1, v9, v6, v7, a3);
}

uint64_t sub_23BB50E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1F28, &qword_23BC000B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BB50E90()
{
  result = qword_27E1A1F30;
  if (!qword_27E1A1F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1F28, &qword_23BC000B0);
    sub_23BB50F44(&qword_27E199628, MEMORY[0x277CE0150], MEMORY[0x277CE0168]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1F30);
  }

  return result;
}

uint64_t sub_23BB50F44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BB50F8C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1F10, &qword_23BC000A8);
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_18_1();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();

  return swift_getWitnessTable();
}

uint64_t sub_23BB51034(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995B0, &qword_23BBE8060);
  sub_23B9B6090();
  sub_23BBDAEC8();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDBE28();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t static ProductViewStyle<>.compact.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t CompactProductViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = type metadata accessor for ProductViewStyleConfiguration(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_23BBDA928();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *v3;
  if (*(v3 + 8) != 1)
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v14, 0);
    (*(v10 + 8))(v13, v9);
    LOBYTE(v14) = v26[15];
  }

  sub_23BA0EFA4(a1, v8, v11);
  sub_23B998028(v8, (v14 & 1) == 0, a2);
  v16 = *(a1 + *(v6 + 28));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0D30, &qword_23BBFD098);
  *(a2 + v17[9]) = v16;
  v18 = v17[10];
  *(a2 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  swift_storeEnumTagMultiPayload();
  v19 = v17[11];
  *(a2 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  v20 = a2 + v17[12];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = a2 + v17[13];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0D20, &qword_23BBFD090) + 36);
  sub_23BA0EFA4(a1, v22, v23);
  v24 = *(type metadata accessor for ConfigureProductViewEnvironmentViewModifier(0) + 20);
  *&v22[v24] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_23BB51490()
{
  result = qword_27E1A0D28;
  if (!qword_27E1A0D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0D30, &qword_23BBFD098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0D28);
  }

  return result;
}

uint64_t sub_23BB5150C(char a1, double a2)
{
  KeyPath = swift_getKeyPath();
  v10 = sub_23BBAF41C(a2, KeyPath, &unk_284E56E40, v4, v5, v6, v7, v8, v9);

  if (v10 == 8)
  {
    return 7;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_23BB51588()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199868, &qword_23BBE84A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  sub_23BB5198C();
  sub_23BBDA958();
  result = v5;
  if (v5 == 8)
  {
    sub_23BBDA768();
    return sub_23BB5173C(v2);
  }

  return result;
}

uint64_t sub_23BB51630(double a1)
{
  sub_23BB5198C();
  sub_23BBDA958();
  return v2;
}

uint64_t sub_23BB516A8(uint64_t a1)
{
  LODWORD(result) = sub_23BB5189C(a1);
  if (a1 >= 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = 0;
  }

  if (result == 8)
  {
    return v3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_23BB5173C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199868, &qword_23BBE84A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_23BBDAF68();
  if (__swift_getEnumTagSinglePayload(a1, 1, v5) != 1)
  {
    sub_23BB51A48(a1, v4);
    v7 = *(v5 - 8);
    v8 = (*(v7 + 88))(v4, v5);
    if (v8 == *MEMORY[0x277CE0558])
    {
      v6 = 1;
      goto LABEL_5;
    }

    if (v8 != *MEMORY[0x277CE0560])
    {
      (*(v7 + 8))(v4, v5);
    }
  }

  v6 = 3;
LABEL_5:
  sub_23BB519E0(a1);
  return v6;
}

uint64_t sub_23BB5189C(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_23BB518B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB5189C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BB518DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BB516E4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_23BB51960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB516A8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_23BB5198C()
{
  result = qword_27E1A1F38;
  if (!qword_27E1A1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1F38);
  }

  return result;
}

uint64_t sub_23BB519E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199868, &qword_23BBE84A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB51A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199868, &qword_23BBE84A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CommonUIHorizontalSizeClass(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BB51BC4);
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

unint64_t sub_23BB51C00()
{
  result = qword_27E1A1F40;
  if (!qword_27E1A1F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1F48, qword_23BC003B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1F40);
  }

  return result;
}

unint64_t sub_23BB51C64()
{
  result = qword_27E1A1F50;
  if (!qword_27E1A1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1F50);
  }

  return result;
}

uint64_t sub_23BB51CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BB51D2C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_23BB51D2C()
{
  result = qword_27E1A1F58;
  if (!qword_27E1A1F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1999B8, &unk_23BBE8650);
    sub_23BB51C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1F58);
  }

  return result;
}

uint64_t sub_23BB51DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 24)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_23BB51E84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

void sub_23BB51F54(uint64_t a1)
{
  sub_23BB52048(319, &qword_27E197B28, type metadata accessor for Subscription, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23BB52048(319, qword_27E19F6A0, MEMORY[0x277CDD258], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BB52048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_53_4();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_23BB520A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23BB520E8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_23BB5214C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_12_3();
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CA8, &unk_23BBE8F10);
    OUTLINED_FUNCTION_10_2();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v9 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1F88, qword_23BC00680);
      OUTLINED_FUNCTION_10_2();
      if (*(v13 + 84) != a2)
      {
        return OUTLINED_FUNCTION_18_0(*(v3 + a3[12] + 8));
      }

      v8 = v12;
      v9 = a3[11];
    }
  }

  return __swift_getEnumTagSinglePayload(v3 + v9, a2, v8);
}

void sub_23BB52298(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_12_3();
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CA8, &unk_23BBE8F10);
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1F88, qword_23BC00680);
      OUTLINED_FUNCTION_10_2();
      if (*(v15 + 84) != a3)
      {
        *(v4 + a4[12] + 8) = (a2 - 1);
        return;
      }

      v10 = v14;
      v11 = a4[11];
    }
  }

  __swift_storeEnumTagSinglePayload(v4 + v11, a2, a2, v10);
}

void sub_23BB523F8(uint64_t a1)
{
  sub_23BB526A8(319, &qword_27E197B20, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23BBDC5F8();
    if (v2 <= 0x3F)
    {
      sub_23BB526FC(319, &qword_27E199C80, &qword_27E199C88, qword_23BBEB260, type metadata accessor for EntitlementTaskState);
      if (v3 <= 0x3F)
      {
        sub_23BB526FC(319, &qword_27E1A1FA0, qword_27E199BF8, &qword_23BBE8DF0, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_23BB526FC(319, &qword_27E1A1FA8, &qword_27E1A1FB0, &qword_23BC006D8, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_23BB526FC(319, &qword_27E1A1FB8, &qword_27E1A1FC0, &qword_23BC006E0, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_23BB526FC(319, &qword_27E1A1FC8, &qword_27E1A1FD0, &qword_23BC006E8, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_23BB526FC(319, &qword_27E1A1FD8, &qword_27E1A1FE0, &unk_23BC006F0, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_23BB526A8(319, &qword_27E19E5E8, MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
                  {
                    sub_23BB526FC(319, &qword_27E19BE68, &qword_27E199218, &qword_23BBFA470, MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_23BB526A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23BB526FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v7 = OUTLINED_FUNCTION_53_4();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_23BB52778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  sub_23B9A721C(a3, v21 - v9, &qword_27E198320, &unk_23BBEEBC0);
  v11 = sub_23BBDD368();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v10, &qword_27E198320, &unk_23BBEEBC0);
  }

  else
  {
    sub_23BBDD358();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_23BBDD2D8();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_23BBDD048() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      OUTLINED_FUNCTION_38_5();
      v19 = swift_task_create();

      sub_23B9846E8(a3, &qword_27E198320, &unk_23BBEEBC0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B9846E8(a3, &qword_27E198320, &unk_23BBEEBC0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  OUTLINED_FUNCTION_38_5();
  return swift_task_create();
}

uint64_t sub_23BB529FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a7;
  v49 = a8;
  v50 = a6;
  v47 = a5;
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1FE0, &unk_23BC006F0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for SubscriptionEntitlementValidator(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v18);
  v20 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *a4;
  v23 = *(v22 + 20);
  LOBYTE(a4) = *(a4 + 8);
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_4_1();
  (*(v24 + 16))(v20 + v23, a3);
  sub_23B9A721C(v47, v20 + v17[7], &qword_27E199CA8, &unk_23BBE8F10);
  *v20 = v48;
  v20[1] = a2;
  v25 = v20 + v17[6];
  *v25 = v21;
  v25[8] = a4;
  v26 = v20 + v17[8];
  v52 = 0;
  LOBYTE(v53) = 2;

  sub_23B9CEC34(v21, a4);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1FB0, &qword_23BC006D8);
  OUTLINED_FUNCTION_43_6(v27);
  v28 = BYTE8(v56);
  v29 = v57;
  *v26 = v56;
  v26[8] = v28;
  *(v26 + 2) = v29;
  v30 = v20 + v17[9];
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1FC0, &qword_23BC006E0);
  OUTLINED_FUNCTION_43_6(v31);
  v32 = v57;
  v33 = v58;
  v34 = v59;
  *v30 = v56;
  *(v30 + 2) = v32;
  v30[24] = v33;
  *(v30 + 4) = v34;
  v35 = v20 + v17[10];
  v52 = 0;
  LOBYTE(v53) = 2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1FD0, &qword_23BC006E8);
  OUTLINED_FUNCTION_43_6(v36);
  v37 = BYTE8(v56);
  v38 = v57;
  *v35 = v56;
  v35[8] = v37;
  *(v35 + 2) = v38;
  swift_storeEnumTagMultiPayload();
  sub_23B9A721C(v16, v13, &qword_27E1A1FE0, &unk_23BC006F0);
  sub_23BBDBF58();
  sub_23B9846E8(v16, &qword_27E1A1FE0, &unk_23BC006F0);
  v39 = v17[12];
  if (qword_27E197818 != -1)
  {
    OUTLINED_FUNCTION_2_43(&qword_27E197818);
  }

  v40 = v20 + v39;
  v41 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v41, qword_27E1A1F60);
  sub_23B9EAEFC();
  v52 = v42;
  v53 = v43;
  sub_23BBDBF58();
  v44 = v57;
  *v40 = v56;
  *(v40 + 2) = v44;
  v45 = v20 + v17[13];
  *v45 = swift_getKeyPath();
  v45[8] = 0;
  MEMORY[0x23EEB43C0](v20, v50, v17, v51);
  return sub_23BB59378(v20, type metadata accessor for SubscriptionEntitlementValidator);
}

uint64_t sub_23BB52D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1FE0, &unk_23BC006F0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_23B9A721C(v2, &v10 - v5, &qword_27E1A1FE0, &unk_23BC006F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B9A71D0(v6, a1, qword_27E197A68, qword_23BBE3D90);
    v7 = 0;
  }

  else
  {
    sub_23B9846E8(v6, &qword_27E1A1FE0, &unk_23BC006F0);
    v7 = 1;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  return __swift_storeEnumTagSinglePayload(a1, v7, 1, v8);
}

uint64_t sub_23BB52E9C()
{
  v0 = type metadata accessor for SKLogger(0);
  __swift_allocate_value_buffer(v0, qword_27E1A1F60);
  __swift_project_value_buffer(v0, qword_27E1A1F60);
  return sub_23BBD9998();
}

uint64_t sub_23BB52F1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2038, &qword_23BC00808);
  MEMORY[0x28223BE20](v1 - 8);
  v66 = v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v65 = v59 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v64);
  v6 = v59 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8, &qword_23BBE8DF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v59 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1FE0, &unk_23BC006F0);
  MEMORY[0x28223BE20](v16);
  v62 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v59 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v59 - v22;
  v68 = type metadata accessor for SubscriptionEntitlementValidator(0);
  v24 = v0 + v68[8];
  v25 = *(v24 + 8);
  v26 = *(v24 + 16);
  *&v69 = *v24;
  BYTE8(v69) = v25;
  v70 = v26;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2040, &qword_23BC00810);
  sub_23BBDBF68();
  v67 = v0;
  if (v78 == 2 && !v77)
  {
    goto LABEL_11;
  }

  v61 = v9;
  sub_23BB586E0(v77, v78);
  v27 = (v0 + v68[9]);
  v28 = *(v27 + 2);
  v29 = *(v27 + 24);
  v30 = *(v27 + 4);
  v60 = v27;
  v69 = *v27;
  v70 = v28;
  v71 = v29;
  v72 = v30;
  v59[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2028, &qword_23BC00800);
  sub_23BBDBF68();
  if (v76 == 2 && !(v74 | v73 | v75))
  {
    goto LABEL_11;
  }

  sub_23BB586F0(v73, v74, v75, v76);
  v31 = v67;
  v32 = sub_23BB53664();
  if (v33)
  {
    v73 = v32;
    v74 = v33;
    sub_23BB53714(&v73, v31, &v69);
    v31 = v67;

    if (*(&v69 + 1))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1F88, qword_23BC00680);
      sub_23BBDBF68();
      sub_23B9A71D0(v23, v20, &qword_27E1A1FE0, &unk_23BC006F0);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_11:
        v37 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
        __swift_storeEnumTagSinglePayload(v15, 1, 1, v37);
        sub_23B9A721C(v15, v12, qword_27E199BF8, &qword_23BBE8DF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CA8, &unk_23BBE8F10);
        sub_23BBDC0F8();
        return sub_23B9846E8(v15, qword_27E199BF8, &qword_23BBE8DF0);
      }

      sub_23B9846E8(v20, &qword_27E1A1FE0, &unk_23BC006F0);
      v31 = v67;
    }
  }

  v34 = v31 + v68[10];
  v35 = *(v34 + 8);
  v36 = *(v34 + 16);
  *&v69 = *v34;
  BYTE8(v69) = v35;
  v70 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2018, &qword_23BC007F8);
  sub_23BBDBF68();
  if (v74 == 2 && !v73)
  {
    goto LABEL_11;
  }

  sub_23B9CEC50(v73, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1F88, qword_23BC00680);
  v39 = v62;
  sub_23BBDBF68();
  v40 = v65;
  sub_23BB52D78(v65);
  sub_23B9846E8(v39, &qword_27E1A1FE0, &unk_23BC006F0);
  v41 = v40;
  v42 = v66;
  sub_23B9A71D0(v41, v66, &qword_27E1A2038, &qword_23BC00808);
  if (__swift_getEnumTagSinglePayload(v42, 1, v64) == 1)
  {
    v43 = type metadata accessor for Subscription(0);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v43);
  }

  else
  {
    sub_23B9A71D0(v42, v6, qword_27E197A68, qword_23BBE3D90);
  }

  v44 = *(v24 + 8);
  v45 = *(v24 + 16);
  *&v69 = *v24;
  BYTE8(v69) = v44;
  v70 = v45;
  sub_23BBDBF68();
  v46 = v73;
  if (v74 != 1)
  {
    sub_23BB586E0(v73, v74);
    v46 = 0;
  }

  v47 = *(v34 + 8);
  v48 = *(v34 + 16);
  *&v69 = *v34;
  BYTE8(v69) = v47;
  v70 = v48;
  sub_23BBDBF68();
  v49 = v73;
  if (v74 != 1)
  {
    sub_23B9CEC50(v73, v74);
    v49 = MEMORY[0x277D84F90];
  }

  v50 = *(v60 + 2);
  v51 = *(v60 + 24);
  v52 = *(v60 + 4);
  v69 = *v60;
  v70 = v50;
  v71 = v51;
  v72 = v52;
  sub_23BBDBF68();
  v53 = v73;
  v54 = v74;
  v55 = v75;
  if (v76 != 1)
  {
    sub_23BB586F0(v73, v74, v75, v76);
    v53 = 0;
    v54 = 0;
    v55 = MEMORY[0x277D84F90];
  }

  v56 = v61;
  sub_23B9A71D0(v6, v61, qword_27E197A68, qword_23BBE3D90);
  v57 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  *(v56 + v57[5]) = v46 & 1;
  *(v56 + v57[6]) = v49;
  v58 = (v56 + v57[7]);
  *v58 = v53;
  v58[1] = v54;
  v58[2] = v55;
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
  sub_23B9A721C(v56, v15, qword_27E199BF8, &qword_23BBE8DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CA8, &unk_23BBE8F10);
  sub_23BBDC0F8();
  v15 = v56;
  return sub_23B9846E8(v15, qword_27E199BF8, &qword_23BBE8DF0);
}

void *sub_23BB53664()
{
  type metadata accessor for SubscriptionEntitlementValidator(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2028, &qword_23BC00800);
  sub_23BBDBF68();
  v0 = v2;
  if (v5 == 1)
  {
  }

  else
  {
    sub_23BB586F0(v2, v3, v4, v5);
    return 0;
  }

  return v0;
}

void sub_23BB53714(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = type metadata accessor for Subscription(0);
  v31 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v15 = *a1;
  v14 = a1[1];
  v16 = (a2 + *(type metadata accessor for SubscriptionEntitlementValidator(0) + 24));
  v17 = *v16;
  v18 = *(v16 + 8);
  if (v18 == 2 && v17 == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v33 = sub_23BB59BA4;
  v30 = a3;
  if (v18 == 1)
  {

    v33 = sub_23BB59BA4;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v21 = 0;
  v22 = *(v20 + 16);
  v32 = v20;
  while (1)
  {
    if (v21 == v22)
    {
      v23 = 1;
      v21 = v22;
      goto LABEL_14;
    }

    if (v21 >= *(v20 + 16))
    {
      break;
    }

    sub_23BB58DEC(v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21, v13);
    v23 = 0;
    ++v21;
LABEL_14:
    v24 = v35;
    __swift_storeEnumTagSinglePayload(v13, v23, 1, v35);
    sub_23B9A71D0(v13, v10, qword_27E197A68, qword_23BBE3D90);
    if (__swift_getEnumTagSinglePayload(v10, 1, v24) == 1)
    {

      v27 = v30;
      *v30 = v15;
      v27[1] = v14;

      return;
    }

    sub_23BB59320(v10, v7);
    (v33)(v34, v7);
    sub_23BB59378(v7, type metadata accessor for Subscription);
    if (v34[0] == v15 && v34[1] == v14)
    {

LABEL_23:

      v28 = v30;
      *v30 = 0;
      v28[1] = 0;
      return;
    }

    v26 = sub_23BBDDA88();

    v20 = v32;
    if (v26)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_23BB53A40@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v75 = a1;
  v85 = a2;
  v90 = sub_23BBDC5F8();
  OUTLINED_FUNCTION_7();
  v88 = v4;
  MEMORY[0x28223BE20](v5);
  v83 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for SubscriptionEntitlementValidator(0);
  OUTLINED_FUNCTION_7();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1FE8, &qword_23BC00778) - 8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1FF0, &qword_23BC00780);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  v87 = &v73 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1FF8, &qword_23BC00788);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v82 = &v73 - v19;
  v20 = v3[1];
  v74 = *v3;
  OUTLINED_FUNCTION_0_51();
  v78 = v3;
  sub_23BB58DEC(v3, &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v8 + 80);
  v22 = (v21 + 16) & ~v21;
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_1_55();
  sub_23BB59320(&v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22);
  v25 = &v15[*(v12 + 44)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E608, &qword_23BC007A0);

  v27 = v74;
  sub_23BBDD328();
  v28 = &v25[*(v26 + 40)];
  *v28 = v27;
  *(v28 + 1) = v20;
  *v25 = &unk_23BC00798;
  *(v25 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2000, &qword_23BC007A8);
  OUTLINED_FUNCTION_4_1();
  v30 = *(v29 + 16);
  v79 = v15;
  v30(v15, v75);
  v84 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v10;
  v81 = v22;
  v86 = v21;
  if (v20)
  {
    OUTLINED_FUNCTION_0_51();
    v31 = v78;
    sub_23BB58DEC(v78, &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_1_55();
    sub_23BB59320(&v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v22);
    v34 = sub_23BB58D28;
    v75 = v20;
    v35 = v27;
  }

  else
  {
    v34 = nullsub_1;
    v32 = 0;
    v35 = 0;
    v75 = 0xE000000000000000;
    v31 = v78;
  }

  OUTLINED_FUNCTION_155();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v32;
  v37 = *(v77 + 20);
  v38 = v87;
  v39 = v87 + *(v76 + 36);

  sub_23BBDD348();
  v40 = _s16TaskViewModifierVMa_0(0);
  v41 = *(v88 + 16);
  v41(v39 + v40[7], v31 + v37, v90);
  v42 = (v39 + v40[5]);
  v43 = v75;
  *v42 = v35;
  v42[1] = v43;
  v44 = (v39 + v40[6]);
  *v44 = &unk_23BC007B8;
  v44[1] = v36;
  v45 = v39 + v40[8];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  sub_23B9A71D0(v79, v38, &qword_27E1A1FE8, &qword_23BC00778);
  v46 = sub_23BB53664();
  v48 = v46;
  if (v47)
  {
    v91 = v46;
    v92 = v47;
    sub_23BB53714(&v91, v31, &v93);

    v48 = v93;
    v49 = v94;
  }

  else
  {
    v49 = 0;
  }

  v50 = v83;
  v41(v83, v31 + v37, v90);
  v51 = sub_23BB53664();
  v53 = v84;
  if (v52)
  {
    v91 = v51;
    v92 = v52;
    sub_23BB53714(&v91, v31, &v93);

    if (v94)
    {

      OUTLINED_FUNCTION_0_51();
      sub_23BB58DEC(v31, v53);
      v54 = v81;
      v55 = swift_allocObject();
      OUTLINED_FUNCTION_1_55();
      sub_23BB59320(v53, v56 + v54);
      v57 = sub_23BB58CD0;
      goto LABEL_13;
    }

    v57 = nullsub_1;
    v55 = 0;
  }

  else
  {
    v55 = 0;
    v57 = nullsub_1;
  }

  v54 = v81;
LABEL_13:
  if (v49)
  {
    v58 = v49;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  if (v49)
  {
    v59 = v48;
  }

  else
  {
    v59 = 0;
  }

  OUTLINED_FUNCTION_155();
  v60 = swift_allocObject();
  *(v60 + 16) = v57;
  *(v60 + 24) = v55;
  v61 = v82;
  v62 = &v82[*(v80 + 36)];
  sub_23BBDD348();
  v63 = _s16TaskViewModifierVMa(0);
  (*(v88 + 32))(&v62[v63[7]], v50, v90);
  v64 = &v62[v63[5]];
  *v64 = v59;
  *(v64 + 1) = v58;
  v65 = &v62[v63[6]];
  *v65 = &unk_23BC007C8;
  *(v65 + 1) = v60;
  v66 = &v62[v63[8]];
  *v66 = swift_getKeyPath();
  v66[8] = 0;
  sub_23B9A71D0(v87, v61, &qword_27E1A1FF0, &qword_23BC00780);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2008, &qword_23BC007D0);
  v68 = v85;
  v69 = (v85 + *(v67 + 36));
  sub_23BBDA008();
  sub_23BBDD318();
  OUTLINED_FUNCTION_0_51();
  sub_23BB58DEC(v31, v53);
  v70 = swift_allocObject();
  OUTLINED_FUNCTION_1_55();
  sub_23BB59320(v53, v71 + v54);
  *v69 = &unk_23BC007E0;
  v69[1] = v70;
  return sub_23B9A71D0(v61, v68, &qword_27E1A1FF8, &qword_23BC00788);
}

uint64_t sub_23BB54150()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23BA027BC;

  return sub_23BB541E0();
}

uint64_t sub_23BB541E0()
{
  v1[51] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A710, &qword_23BBEA740);
  v1[52] = swift_task_alloc();
  sub_23BBDCB18();
  v1[53] = swift_task_alloc();
  v1[54] = sub_23BBDCB28();
  v1[55] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0990, &unk_23BBFC0C0);
  v1[56] = v2;
  v1[57] = *(v2 - 8);
  v1[58] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A718, &qword_23BBEA748);
  v1[59] = v3;
  v1[60] = *(v3 - 8);
  v1[61] = swift_task_alloc();
  v4 = type metadata accessor for SubscriptionEntitlementValidator(0);
  v1[62] = v4;
  v5 = *(v4 - 8);
  v1[63] = v5;
  v1[64] = *(v5 + 64);
  v1[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  v1[66] = swift_task_alloc();
  v6 = sub_23BBDA928();
  v1[67] = v6;
  v1[68] = *(v6 - 8);
  v1[69] = swift_task_alloc();
  v1[70] = sub_23BBDD308();
  v1[71] = sub_23BBDD2F8();
  v8 = sub_23BBDD2D8();
  v1[72] = v8;
  v1[73] = v7;

  return MEMORY[0x2822009F8](sub_23BB544DC, v8, v7);
}

uint64_t sub_23BB544DC()
{
  v71 = v1;
  v4 = *(v1 + 408) + *(*(v1 + 496) + 52);
  v5 = *v4;
  if (*(v4 + 8) != 1)
  {
    v6 = *(v1 + 552);
    v7 = *(v1 + 544);
    v0 = *(v1 + 536);

    sub_23BBDD5A8();
    v2 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    OUTLINED_FUNCTION_17_0();
    swift_getAtKeyPath();
    sub_23B97B450(v5, 0);
    (*(v7 + 8))(v6, v0);
    LOBYTE(v5) = *(v1 + 337);
  }

  if (v5 != 2 && (v5 & 1) != 0)
  {

    if (qword_27E197818 != -1)
    {
      OUTLINED_FUNCTION_2_43(&qword_27E197818);
    }

    v8 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v8, qword_27E1A1F60);
    *(v1 + 232) = OUTLINED_FUNCTION_5_36();
    *(v1 + 248) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E628, &qword_23BBF5A50);
    sub_23BBDBF68();
    sub_23BBDD578();
    OUTLINED_FUNCTION_46_3();
    sub_23BBD9988();
    OUTLINED_FUNCTION_44_5();
    if (OUTLINED_FUNCTION_48_7())
    {
      OUTLINED_FUNCTION_34_5();
      OUTLINED_FUNCTION_22_17();
      OUTLINED_FUNCTION_8_38(4.8752e-34);
      OUTLINED_FUNCTION_23_13();
      OUTLINED_FUNCTION_45_4(v10, v11, v12, v13, v14, v15, v16, v17, v69, v70[0], v70[1], v70[2]);
      OUTLINED_FUNCTION_47_5();
      OUTLINED_FUNCTION_12_29();
      *(v2 + 14) = sub_23BA5AB90(0xD000000000000042, v3 | 0x8000000000000000, v70);
      OUTLINED_FUNCTION_11_24(&dword_23B970000, v18, v19, "%{public}s%{public}s");
      OUTLINED_FUNCTION_38_5();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_32_7();
    }

    v20 = *(v1 + 496);
    v21 = *(v1 + 408);
    v22 = sub_23BBDC608();
    v23 = sub_23BB59B4C(&qword_27E19BE90, MEMORY[0x277CDD0D0], MEMORY[0x277CDD0D8]);
    v24 = OUTLINED_FUNCTION_140(v22, v23);
    (*(*(v22 - 8) + 104))(v25, *MEMORY[0x277CDD0C0], v22);
    v26 = v21 + *(v20 + 32);
    v27 = *v26;
    v28 = *(v26 + 16);
    v29 = *(v26 + 8);
    *(v1 + 256) = *v26;
    *(v1 + 264) = v29;
    *(v1 + 272) = v28;
    *(v1 + 392) = v24;
    *(v1 + 400) = 0;
    sub_23BB59498(v27, v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2040, &qword_23BC00810);
    sub_23BBDBF78();
    sub_23BB586E0(*(v1 + 256), *(v1 + 264));

    sub_23BB52F1C();
    goto LABEL_19;
  }

  v30 = *(v1 + 408);
  *(v1 + 592) = *v30;
  v31 = v30[1];
  *(v1 + 600) = v31;
  if (!v31)
  {

    if (qword_27E197818 != -1)
    {
      OUTLINED_FUNCTION_2_43(&qword_27E197818);
    }

    v50 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v50, qword_27E1A1F60);
    *(v1 + 16) = OUTLINED_FUNCTION_5_36();
    *(v1 + 32) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E628, &qword_23BBF5A50);
    sub_23BBDBF68();
    sub_23BBDD578();
    OUTLINED_FUNCTION_46_3();
    sub_23BBD9988();
    OUTLINED_FUNCTION_44_5();
    if (OUTLINED_FUNCTION_48_7())
    {
      OUTLINED_FUNCTION_34_5();
      OUTLINED_FUNCTION_22_17();
      OUTLINED_FUNCTION_8_38(4.8752e-34);
      OUTLINED_FUNCTION_23_13();
      OUTLINED_FUNCTION_45_4(v52, v53, v54, v55, v56, v57, v58, v59, v69, v70[0], v70[1], v70[2]);
      OUTLINED_FUNCTION_47_5();
      OUTLINED_FUNCTION_12_29();
      *(v2 + 14) = sub_23BA5AB90(0xD000000000000044, v3 | 0x8000000000000000, v70);
      OUTLINED_FUNCTION_11_24(&dword_23B970000, v60, v61, "%{public}s%{public}s");
      OUTLINED_FUNCTION_38_5();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_32_7();
    }

LABEL_19:
    OUTLINED_FUNCTION_35_6();

    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_56_4();

    __asm { BRAA            X1, X16 }
  }

  v32 = *(*(v1 + 496) + 32);
  *(v1 + 340) = v32;
  v33 = v30 + v32;
  v34 = *v33;
  v35 = v33[8];
  v36 = *(v33 + 2);
  *(v1 + 40) = v34;
  *(v1 + 48) = v35;
  *(v1 + 56) = v36;
  *(v1 + 608) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2040, &qword_23BC00810);
  sub_23BBDBF68();
  v37 = *(v1 + 328);
  v38 = *(v1 + 336);
  if (v38 != 2 || v37)
  {
    sub_23BB586E0(v37, v38);
    v49 = 0;
  }

  else
  {
    v39 = *(v1 + 528);
    v40 = *(v1 + 520);
    v41 = *(v1 + 504);
    v42 = *(v1 + 408);
    sub_23BBDD318();
    v43 = sub_23BBDD368();
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v43);
    OUTLINED_FUNCTION_0_51();
    sub_23BB58DEC(v42, v40);
    v44 = sub_23BBDD2F8();
    v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v46 = swift_allocObject();
    v47 = MEMORY[0x277D85700];
    *(v46 + 16) = v44;
    *(v46 + 24) = v47;
    OUTLINED_FUNCTION_1_55();
    sub_23BB59320(v40, v48 + v45);
    v49 = sub_23BB52778(0, 0, v39, &unk_23BC00850, v46);
  }

  *(v1 + 616) = v49;
  if (qword_27E1977B8 != -1)
  {
    swift_once();
  }

  *(v1 + 624) = qword_27E1BFD68;
  OUTLINED_FUNCTION_56_4();

  return MEMORY[0x2822009F8](v64, v65, v66);
}