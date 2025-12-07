_BYTE *_s8OperatorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        JUMPOUT(0x19756CC40);
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t _s8OperatorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t get_enum_tag_for_layout_string_10TipKitCore0C4RuleC9PredicateC8ArgumentO17CommonKeyPathKindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10TipKitCore0C4RuleC9PredicateC8ArgumentO(uint64_t a1)
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

uint64_t *CoreRule.Predicate.init(argument:operation:value:queries:subpredicates:)(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = *a1;
  v14 = *(a1 + 16);
  v15 = *a2;
  v55 = *a1;
  v56 = ObjectType;
  v54 = a1[1];
  if (*(a1 + 16))
  {
    if (v14 != 1)
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      goto LABEL_7;
    }

    v16 = 0x286C617665;
    v17 = 0xE500000000000000;
  }

  else
  {
    v16 = 0x28746E756F63;
    v17 = 0xE600000000000000;
  }

  *&v60 = v16;
  *(&v60 + 1) = v17;
  MEMORY[0x19A8E2A50](v13);
  OUTLINED_FUNCTION_7_7();
  v19 = *(&v60 + 1);
  v18 = v60;
LABEL_7:
  v57 = v18;
  v58 = v19;
  v20 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x19A8E2A50](v20);
  LOBYTE(v60) = v15;
  v21 = CoreRule.Predicate.Operator.rawValue.getter();
  MEMORY[0x19A8E2A50](v21);

  v22 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x19A8E2A50](v22);
  sub_19755FA5C(a3, &v60, &qword_1EAF34340, &unk_19761C8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  v23 = sub_197616200();
  MEMORY[0x19A8E2A50](v23);

  if (a4 && *(a4 + 16))
  {
    *&v60 = 0x736569726575712ELL;
    *(&v60 + 1) = 0xE900000000000028;
    v30 = sub_1975CD944(a4, v24, v25, v26, v27, v28, v29);
    MEMORY[0x19A8E2A50](v30);

    OUTLINED_FUNCTION_7_7();
    v32 = *(&v60 + 1);
    v31 = v60;
  }

  else
  {
    v31 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = sub_19756D4A8(v31, v32, v57, v58);
  v35 = v34;

  if (a5)
  {
    v36 = 0xE000000000000000;
    if (*(a5 + 16))
    {
      *&v60 = 0;
      *(&v60 + 1) = 0xE000000000000000;
      sub_197616A20();

      *&v60 = 0x646572706275732ELL;
      *(&v60 + 1) = 0xEF28736574616369;
      v43 = sub_1975CFF48(a5, v37, v38, v39, v40, v41, v42);
      MEMORY[0x19A8E2A50](v43);

      OUTLINED_FUNCTION_7_7();
      v36 = *(&v60 + 1);
      v44 = v60;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
    v36 = 0xE000000000000000;
  }

  v45 = sub_19756D4A8(v44, v36, v33, v35);
  v47 = v46;

  v48 = &v6[OBJC_IVAR___Predicate_id];
  *v48 = v45;
  v48[1] = v47;
  v49 = &v6[OBJC_IVAR___Predicate_argument];
  *v49 = v55;
  *(v49 + 1) = v54;
  v49[16] = v14;
  *&v6[OBJC_IVAR___Predicate_rawdata] = xmmword_19761D220;
  v6[OBJC_IVAR___Predicate_operation] = v15;
  if (*(a3 + 24))
  {
    sub_19755FA5C(a3, &v57, &qword_1EAF34340, &unk_19761C8E0);
    sub_19756D528(&v57, &v60);
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  v50 = &v6[OBJC_IVAR___Predicate_value];
  v51 = v61;
  *v50 = v60;
  v50[1] = v51;
  *&v6[OBJC_IVAR___Predicate_queries] = a4;
  *&v6[OBJC_IVAR___Predicate_subpredicates] = a5;
  v59.receiver = v6;
  v59.super_class = v56;
  v52 = objc_msgSendSuper2(&v59, sel_init);
  sub_19755C404(a3, &qword_1EAF34340, &unk_19761C8E0);
  return v52;
}

uint64_t sub_19756D0F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CoreTip.status.getter@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_19756D0F0(&qword_1ED816CB8, type metadata accessor for CoreTip, &protocol conformance descriptor for CoreTip);
  sub_197615B20();

  *a1 = *(v1 + 96);
  return result;
}

uint64_t sub_19756D23C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35108, &qword_19761F2C8);
  }

  else
  {
    return OUTLINED_FUNCTION_1_27(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_19756D268()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35110, &qword_19761F2D0);
  }

  else
  {
    return OUTLINED_FUNCTION_1_27(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_19756D294()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35118, &qword_19761F2D8);
  }

  else
  {
    return OUTLINED_FUNCTION_1_27(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_19756D2C0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34990, &qword_19761B1D0);
  }

  else
  {
    return OUTLINED_FUNCTION_1_27(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_19756D2EC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35120, &qword_19761F2E0);
  }

  else
  {
    return OUTLINED_FUNCTION_1_27(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_19756D318()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35128, &qword_19761F2E8);
  }

  else
  {
    return OUTLINED_FUNCTION_1_27(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_19756D344()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35130, &qword_19761F2F0);
  }

  else
  {
    return OUTLINED_FUNCTION_1_27(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_19756D370@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (a2 == 10)
  {
    v3 = result;
  }

  else
  {
    v3 = 2;
  }

  *a3 = v3;
  a3[1] = a2;
  return result;
}

uint64_t CoreRule.Predicate.Operator.rawValue.getter()
{
  result = 15677;
  switch(*v0)
  {
    case 1:
      result = 15649;
      break;
    case 2:
      result = 60;
      break;
    case 3:
      result = 15676;
      break;
    case 4:
      result = 62;
      break;
    case 5:
      result = 15678;
      break;
    case 6:
      result = 28265;
      break;
    case 7:
      result = 6581857;
      break;
    case 8:
      result = 29295;
      break;
    case 9:
      result = 7889261;
      break;
    case 0xA:
      result = 7235949;
      break;
    case 0xB:
      result = 0x7461636964657270;
      break;
    case 0xC:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_19756D4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = sub_197616330();
  sub_1976162A0();
  return v5;
}

uint64_t sub_19756D528@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_19755FA5C(a1, &v7, &qword_1EAF34340, &unk_19761C8E0);
  if (v8)
  {
    v4 = swift_allocObject();
    sub_19756A94C(&v7, (v4 + 16));
    v5 = MEMORY[0x1E69E7CA0] + 8;
  }

  else
  {
    a2[1] = 0xE600000000000000;
    v4 = 0x3E6C6C756E3CLL;
    v5 = MEMORY[0x1E69E6158];
  }

  a2[3] = v5;
  *a2 = v4;
  return sub_19755C404(a1, &qword_1EAF34340, &unk_19761C8E0);
}

uint64_t sub_19756D5EC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19756D624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 10;
  }

  v4 = sub_19755C610(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 10;
  }
}

void static CoreRuleProtocol.makeIdentifier(prefix:predicate:subject:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  OUTLINED_FUNCTION_1_23();
  v6 = a4[3];
  v7 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm(a4, v6);
  sub_19756D844(v6, v7);
  v8 = 0xE800000000000000;
  v9 = 0x646E756F706D6F63;
  switch(v13)
  {
    case 1:
      break;
    case 2:
      v8 = 0xE500000000000000;
      v9 = 0x746E657665;
      break;
    case 3:
      v8 = 0xE500000000000000;
      v9 = 0x6574617473;
      break;
    case 4:
      v8 = 0xE900000000000072;
      v9 = OUTLINED_FUNCTION_2_18();
      break;
    case 5:
      v8 = 0xE600000000000000;
      v9 = 0x656369766564;
      break;
    default:
      v8 = 0xE700000000000000;
      v9 = OUTLINED_FUNCTION_3_22();
      break;
  }

  MEMORY[0x19A8E2A50](v9, v8);

  OUTLINED_FUNCTION_1_23();
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm(a4, v10);
  v12 = (*(v11 + 16))(v10, v11);
  MEMORY[0x19A8E2A50](v12);

  OUTLINED_FUNCTION_1_23();
  MEMORY[0x19A8E2A50](*(a3 + OBJC_IVAR___Predicate_id), *(a3 + OBJC_IVAR___Predicate_id + 8));
}

uint64_t sub_19756D878(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t sub_19756D974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v6 + 32))(&v15 - v10);
  v12 = swift_allocObject();
  (*(v6 + 16))(v9, v11, a3);
  v13 = sub_19756DAC0(v9, v12, a3, a4);
  (*(v6 + 8))(v11, a3);
  return v13;
}

uint64_t sub_19756DAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24[-1] - v9;
  v24[3] = a3;
  v24[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v12 = (a2 + OBJC_IVAR____TtC10TipKitCore7CoreTip__firstEligible);
  v13 = sub_197615A60();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v13);
  *v12 = 0;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34990, &qword_19761B1D0) + 28);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34998, &qword_19761B1D8);
  bzero(v12 + v14, *(*(v15 - 8) + 64));
  sub_19756E854(v10, v12 + v14);
  v16 = a2 + OBJC_IVAR____TtC10TipKitCore7CoreTip__constellationContent;
  *v16 = 0;
  *(v16 + 8) = 0;
  sub_197615B30();
  *(a2 + 16) = a4[4](a3, a4);
  *(a2 + 24) = v17;
  v18 = a2 + OBJC_IVAR____TtC10TipKitCore7CoreTip__activeViews;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(a2 + 88) = a4[5](a3, a4);
  swift_unownedRetain();

  v19 = a2 + OBJC_IVAR____TtC10TipKitCore7CoreTip__displayDuration;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(a2 + 100) = 0;
  *(a2 + 104) = 0;
  *(a2 + 108) = 0;
  *(a2 + 112) = 0;
  sub_19756E8C4(v24, &v23 + 6);
  *(a2 + 96) = HIWORD(v23);
  sub_19755A560(v24, a2 + 32);
  v20 = a4[6](a3, a4);
  *(a2 + 72) = String.init<A>(type:)(v20);
  *(a2 + 80) = v21;
  sub_19756ECE8(boxed_opaque_existential_0, a2, a3, a4);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  return a2;
}

uint64_t sub_19756DD68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34688, &qword_197619420);
  __swift_allocate_value_buffer(v0, qword_1ED816B80);
  __swift_project_value_buffer(v0, qword_1ED816B80);
  return sub_197615B60();
}

unint64_t sub_19756DDE4()
{
  result = qword_1ED816DB8;
  if (!qword_1ED816DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34688, &qword_197619420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816DB8);
  }

  return result;
}

uint64_t (*static CoreTip.tips.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = static CoreTip.tips.getter();
  return sub_19756EEFC;
}

uint64_t sub_19756DEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  (*(v9 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_dynamicCast();
  if (v10)
  {
    (*(v4 + 8))(v7, a3);
  }

  return v10;
}

__n128 __swift_memcpy47_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t static Bool.isRandomizedID(_:)()
{
  if (qword_1ED816B78 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34688, &qword_197619420);
  __swift_project_value_buffer(v0, qword_1ED816B80);
  sub_19756E0EC();
  sub_19756DDE4();
  return sub_197616160() & 1;
}

unint64_t sub_19756E0EC()
{
  result = qword_1ED816B68;
  if (!qword_1ED816B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B68);
  }

  return result;
}

uint64_t sub_19756E160()
{
  type metadata accessor for CoreTip(0);
  result = sub_1976160B0();
  dword_1ED816B20 = 0;
  qword_1ED816B28 = result;
  return result;
}

uint64_t Array.first<A>(of:)@<X0>(uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = sub_197616860();
  MEMORY[0x1EEE9AC00](v6);
  sub_197616530();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  sub_197616390();
  v7 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a4, v7 ^ 1u, 1, a3);
}

BOOL CoreParameter.hasLoaded.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  sub_19756E35C();
  v3 = sub_197615F50();
  v4 = __swift_getEnumTagSinglePayload(v2, 1, v3) != 1;
  sub_19756E748(v2);
  return v4;
}

uint64_t sub_19756E35C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  (*(*(v2 + 16) + 16))(v1);
  static CoreParameter.modelIdentifiers.getter();
  sub_19756E674();
}

uint64_t CoreParameter.setValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_unownedRetainStrong();

  sub_19755A560(v4 + 16, v15);
  (*(v9 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v11 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  sub_1975558C4(v15, (v12 + 40));
  (*(v9 + 32))(&v12[v11], &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_19756E7B0(&unk_19761C850, v12);
}

uint64_t sub_19756E5B8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19756E674()
{
  OUTLINED_FUNCTION_30_1();
  if (v4 && (v5 = v3, v6 = sub_19755C610(v1, v2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_197615F50();
    OUTLINED_FUNCTION_13();
    (*(v11 + 16))(v0, v9 + *(v11 + 72) * v8, v10);
    v12 = OUTLINED_FUNCTION_31_0();
    v14 = v10;
  }

  else
  {
    v14 = sub_197615F50();
    v12 = v0;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t sub_19756E748(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19756E7D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19756E808()
{
  sub_197615F50();
  result = sub_1976160B0();
  dword_1ED8167D0 = 0;
  qword_1ED8167D8 = result;
  return result;
}

uint64_t sub_19756E854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19756E8C4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_19_2();
  v5(v6);
  result = sub_19756D1E8(v16);
  if (v17 == 4)
  {
    v8 = OUTLINED_FUNCTION_19_2();
    v5(v8);
    result = sub_19756D1E8(v15);
    if (v15[43] == 1)
    {
      *a2 = 2561;
    }

    else
    {
      v9 = sub_19756E9F8();
      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      v10 = OUTLINED_FUNCTION_19_2();
      v12 = v11(v10);
      v14 = sub_19756D624(v12, v13, v9);

      return sub_19756D370(3, v14, a2);
    }
  }

  else
  {
    *a2 = v17;
    a2[1] = 10;
  }

  return result;
}

uint64_t sub_19756EA18()
{
  result = sub_1976160B0();
  dword_1ED816CC0 = 0;
  qword_1ED816CC8 = result;
  return result;
}

uint64_t static PredicateCoder.encode<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_197615870();
  OUTLINED_FUNCTION_14();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = a2;
  v11 = sub_197615AD0();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_19756EF78(a1, v11, WitnessTable);
  if (!v2)
  {
    return v13;
  }

  sub_19760E950(a2, a2);
  v14 = swift_getWitnessTable();
  v15 = sub_197584C64(a1, v10, v11, v14);
  (*(v7 + 8))(v10, v5);
  return v15;
}

id CoreRule.Predicate.init(id:predicateData:)()
{
  OUTLINED_FUNCTION_6_6();
  ObjectType = swift_getObjectType();
  v6 = &v1[OBJC_IVAR___Predicate_id];
  *v6 = v4;
  v6[1] = v3;
  v7 = &v1[OBJC_IVAR___Predicate_argument];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 2;
  v1[OBJC_IVAR___Predicate_operation] = 11;
  v8 = &v1[OBJC_IVAR___Predicate_rawdata];
  *v8 = v2;
  v8[1] = v0;
  v9 = &v1[OBJC_IVAR___Predicate_value];
  *v9 = 0u;
  v9[1] = 0u;
  *&v1[OBJC_IVAR___Predicate_queries] = 0;
  *&v1[OBJC_IVAR___Predicate_subpredicates] = 0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_19756ECE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  (*(a4 + 72))(v13, a3, a4);
  sub_19756D1E8(v13);
  if (v14 == 1)
  {
    swift_unownedRetainStrong();

    v8 = swift_allocObject();
    swift_weakInit();
    sub_19755A560(v12, v11);
    v9 = swift_allocObject();
    sub_19756EED8(v11, v9 + 16);
    *(v9 + 56) = v8;

    sub_19755A5C4(&unk_19761B1E0, v9);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

uint64_t sub_19756EE60()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19756EE98()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19756EF14(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t sub_19756EF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_197615570();
  OUTLINED_FUNCTION_1_43(v4);
  sub_197615560();
  sub_197615550();
  OUTLINED_FUNCTION_0_41();
  return v3;
}

uint64_t sub_19756F03C(uint64_t a1)
{
  type metadata accessor for MiniTipsDatastore(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19755CDC8;

  return sub_19756F0E0(a1);
}

uint64_t sub_19756F0E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19756F100, 0, 0);
}

uint64_t sub_19756F100()
{
  if (sub_19756F1CC())
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_19756F2FC;
    v2 = *(v0 + 16);

    return sub_19756FE38(v2);
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v4();
  }
}

uint64_t sub_19756F1CC()
{
  if (qword_1ED817358 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1ED817360 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);

  sub_197615CE0();
  if (v0)
  {
    sub_197615D40();
    sub_19756F2A4();
    v1 = sub_1976161A0();
  }

  else
  {

    v1 = 0;
  }

  return v1 & 1;
}

unint64_t sub_19756F2A4()
{
  result = qword_1ED816E38;
  if (!qword_1ED816E38)
  {
    sub_197615D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816E38);
  }

  return result;
}

uint64_t sub_19756F2FC()
{

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_19756F3EC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_19_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_19756F4D0()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 80);
  sub_197615C90();

  return MEMORY[0x1EEE6DFA0](sub_19756FB80, v1, 0);
}

uint64_t sub_19756F538(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_19756F580()
{
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED817569 == 1)
  {
    type metadata accessor for CoreTipRecord(0);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
    OUTLINED_FUNCTION_1_47(v1);
    sub_19755FFD0(&qword_1ED8170E0, type metadata accessor for CoreTipRecord, &protocol conformance descriptor for CoreTipRecord);
    sub_197615CB0();
    sub_19755C404(v0[14], &qword_1EAF346D8, &unk_197619120);
    type metadata accessor for CoreRuleRecord(0);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D20, &qword_19761C500);
    OUTLINED_FUNCTION_1_47(v2);
    v3 = sub_19755FFD0(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
    OUTLINED_FUNCTION_0_44(v3);
    sub_19755C404(v0[13], &qword_1EAF34D18, &unk_19761CC40);
    type metadata accessor for CoreParameterRecord(0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
    OUTLINED_FUNCTION_1_47(v4);
    v5 = sub_19755FFD0(&qword_1ED817148, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
    OUTLINED_FUNCTION_0_44(v5);
    sub_19755C404(v0[12], &qword_1EAF34BA0, &qword_19761BAC0);
    type metadata accessor for CoreEventRecord(0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
    OUTLINED_FUNCTION_1_47(v6);
    v7 = sub_19755FFD0(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
    OUTLINED_FUNCTION_0_44(v7);
    sub_19755C404(v0[11], &qword_1EAF34AC0, &qword_19761B6F0);
    type metadata accessor for CoreDonationRecord(0);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
    OUTLINED_FUNCTION_1_47(v14);
    v15 = sub_19755FFD0(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);
    OUTLINED_FUNCTION_0_44(v15);
    sub_19755C404(v0[10], &qword_1EAF34B08, &qword_19761B888);
    if (byte_1ED817580 == 1)
    {
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if ((byte_1ED8172A5 & 1) == 0)
      {
        if (qword_1ED816850 != -1)
        {
          swift_once();
        }

        if (qword_1ED81D1D0)
        {

          sub_1975EC9F0();
          sub_1975EC338();
        }
      }
    }

    if (sub_197592490())
    {
      v8 = [objc_opt_self() standardUserDefaults];
      v9 = sub_1976161B0();
      [v8 removeObjectForKey_];
    }

    if (qword_1ED8172A8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v10, qword_1ED8172B0);
    sub_197558864(0xD000000000000032, 0x80000001976265D0, v11);
  }

  OUTLINED_FUNCTION_3();

  return v12();
}

uint64_t sub_19756FB80()
{
  OUTLINED_FUNCTION_25();
  sub_19756FC64(v0[8], v0[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35610, &qword_197622548);
  sub_197616630();
  OUTLINED_FUNCTION_0_45();
  v0[16] = sub_19756F538(v1, 255, v2, &protocol conformance descriptor for MiniTipsDatastore.DatastoreQueue);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[17] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_48(v3);

  return MEMORY[0x1EEE6D9C8](v5);
}

uint64_t sub_19756FC64(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19756FC90@<X0>(uint64_t *a1@<X8>)
{
  sub_19756FD50();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35660, &qword_197622770);
  a1[4] = sub_19756FDD4();
  __swift_allocate_boxed_opaque_existential_0(a1);
  sub_197616820();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35668, &qword_197622778);
  sub_19756FFB4();
  return sub_197616E70();
}

uint64_t sub_19756FD50()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_1976161B0();
  v2 = sub_197616830();

  return v2;
}

unint64_t sub_19756FDD4()
{
  result = qword_1ED816F00;
  if (!qword_1ED816F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35660, &qword_197622770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816F00);
  }

  return result;
}

uint64_t sub_19756FE38(uint64_t a1)
{
  v1[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA0, &qword_19761BAC0);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D18, &unk_19761CC40);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19756F580, 0, 0);
}

unint64_t sub_19756FFB4()
{
  result = qword_1ED816F60;
  if (!qword_1ED816F60)
  {
    sub_197616820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816F60);
  }

  return result;
}

uint64_t sub_19757002C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a5;
  v17[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  swift_getAssociatedConformanceWitness();
  sub_1976170C0();
  sub_197616ED0();
  sub_197616720();
  v14 = *(v8 + 8);
  v14(v11, a2);
  v15 = sub_1976172E0();
  v14(v13, a2);
  return v15;
}

uint64_t sub_19757022C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[2];
  v0[18] = v1;
  if (v1)
  {
    v2 = v0[14];
    v0[19] = v0[3];
    v0[4] = v2;
    v6 = (v1 + *v1);
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_23_10(v3);

    return v6();
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    OUTLINED_FUNCTION_3();

    return v5();
  }
}

uint64_t sub_197570390()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_21_13();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_27(v3);

  return sub_197570528(v5, v6, v1);
}

uint64_t sub_197570428()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_19757022C, v2, 0);
}

uint64_t sub_197570528(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 48) = v5;
  *v5 = v3;
  v5[1] = sub_197580FF0;

  return v7(v4);
}

void sub_19757063C()
{
  OUTLINED_FUNCTION_20();
  v33 = v1;
  v34 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v9 = OUTLINED_FUNCTION_5_2(v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v32 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v31 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v30 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreTip(0);
  v18 = *(v3 + 32);
  v28 = v7;
  v29 = v5;
  v18(v5, v3);
  static CoreTip.modelIdentifiers.getter();
  sub_19756E674();

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_19755C7C8(v13, &qword_1EAF34AB8, &qword_197622080);
    v19 = v28;
    v20 = v29;
    v21 = (v18)(v29, v3);
    sub_1975680C8(v21, v22, v19, v33, v20, v3);
  }

  else
  {
    v24 = v30;
    v23 = v31;
    (*(v31 + 32))(v30, v13, v14);
    v25 = v32;
    (*(v23 + 16))(v32, v24, v14);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_197619030;
    *(v26 + 32) = swift_getKeyPath();
    sub_19757450C();

    sub_19755C7C8(v25, &qword_1EAF34AB8, &qword_197622080);
    (*(v23 + 8))(v24, v14);
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1975709B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v4);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197570AFC, 0, 0);
}

uint64_t sub_197570A54(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19755CCE8;

  return sub_1975709B8(a1, v1 + 16, v4);
}

uint64_t sub_197570AFC()
{
  v1 = v0[12];
  v2 = v0[10];
  type metadata accessor for CoreTip(0);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  (*(v4 + 32))(v3, v4);
  static CoreTip.modelIdentifiers.getter();
  sub_19756E674();

  v5 = sub_197615F50();
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v1, 1, v5);
  sub_19755C7C8(v1, &qword_1EAF34AB8, &qword_197622080);
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_10(v0[11] + 16, (v0 + 2));
    swift_weakLoadStrong();
    swift_weakInit();

    sub_197616590();
    v0[13] = sub_197616580();
    OUTLINED_FUNCTION_42();
    v7 = sub_197616560();

    return MEMORY[0x1EEE6DFA0](sub_1975653E0, v7, v6);
  }

  else
  {
    OUTLINED_FUNCTION_10(v0[11] + 16, (v0 + 5));
    if (swift_weakLoadStrong())
    {
      sub_197580628(v0[9]);
    }

    OUTLINED_FUNCTION_3();

    return v8();
  }
}

uint64_t sub_197570CF4()
{
  sub_197615F50();
  result = sub_1976160B0();
  dword_1ED8169F8 = 0;
  qword_1ED816A00 = result;
  return result;
}

uint64_t sub_197570D40@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_0();
  v26 = v5;
  v27 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34710, &unk_197622260);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E8, &qword_1976192E0);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v24 - v20;
  sub_197559AAC(&qword_1ED816CE0, &qword_1EAF34710, &unk_197622260, MEMORY[0x1E6968DA8]);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v12 + 8))(v15, v10);
  v28 = v24;
  v29 = v25;
  sub_197615810();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35268, &unk_1976224A0);
  a4[4] = sub_1975710A4();
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_197559AAC(&qword_1ED816BF8, &qword_1EAF346E8, &qword_1976192E0, MEMORY[0x1E6968D58]);
  sub_197559AAC(&qword_1ED816D00, &qword_1EAF34AE8, &qword_19761B848, MEMORY[0x1E6968D20]);
  v22 = v26;
  sub_1976156F0();
  (*(v27 + 8))(v9, v22);
  return (*(v18 + 8))(v21, v16);
}

unint64_t sub_1975710A4()
{
  result = qword_1ED816C28;
  if (!qword_1ED816C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35268, &unk_1976224A0);
    sub_197571BA0();
    sub_197565874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816C28);
  }

  return result;
}

uint64_t CoreParameter.getValueData()()
{
  OUTLINED_FUNCTION_1();
  v1[2] = v0;
  v1[3] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1975711F0, 0, 0);
}

uint64_t sub_1975711F0()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v2 + 16), v3);
  OUTLINED_FUNCTION_0_14();
  v4(v3);
  static CoreParameter.modelIdentifiers.getter();
  sub_19756E674();

  v5 = sub_197615F50();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v5);
  sub_19756E748(v1);
  if (EnumTagSinglePayload == 1)
  {
    v7 = *(v0[2] + 56);
    swift_unownedRetainStrong();
    v0[5] = *(v7 + 64);

    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_19758FB54;

    return sub_19757139C();
  }

  else
  {
    sub_19758F7A0();

    v10 = OUTLINED_FUNCTION_4_13();

    return v11(v10);
  }
}

uint64_t sub_19757139C()
{
  OUTLINED_FUNCTION_1();
  *(v1 + 80) = v0;
  OUTLINED_FUNCTION_0_45();
  sub_19756F538(v2, 255, v3, &protocol conformance descriptor for MiniTipsDatastore.DatastoreQueue);
  if (v0)
  {
    swift_getObjectType();
    v4 = sub_197616560();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_19757144C, v4, v6);
}

uint64_t sub_19757144C()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_19758E680;
  v2 = swift_continuation_init();
  sub_1975714E0(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1975714E0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C70, &qword_19761BEF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v9[0] = &unk_197622680;
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C78, &qword_19761BF10);
  sub_197616600();
  return (*(v4 + 8))(v6, v3);
}

uint64_t default argument 1 of AsyncStream.init<A>(_:bufferingPolicy:observation:transform:)@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8650];
  sub_1976165F0();
  OUTLINED_FUNCTION_13();
  v6 = *(v5 + 104);

  return v6(a2, v3, v4);
}

uint64_t AsyncStream.init<A>(_:bufferingPolicy:observation:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22[0] = a9;
  v22[1] = a1;
  v16 = sub_1976165F0();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  (*(v18 + 16))(v22 - v20, a2, v16);
  v22[4] = a7;
  v22[5] = a8;
  v22[6] = a3;
  v22[7] = a4;
  v22[8] = a5;
  v22[9] = a6;
  sub_197616650();

  return (*(v18 + 8))(a2, v16);
}

uint64_t sub_197571818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  v23 = a2;
  v24 = a3;
  v11 = sub_197616620();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 20) = 1;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = v15;

  sub_1976165E0();
  (*(v12 + 16))(v14, a1, v11);
  v17 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a6;
  *(v18 + 3) = a7;
  v19 = v22;
  *(v18 + 4) = v15;
  *(v18 + 5) = v19;
  *(v18 + 6) = a5;
  (*(v12 + 32))(&v18[v17], v14, v11);
  swift_retain_n();

  withContinuousObservation<A>(_:continueObserving:didChange:)(v23, v24, sub_1975657D4, v15, sub_197566F4C, v18, a7);
}

uint64_t sub_197571A30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D8, &qword_197618BD0);
  sub_1975A351C(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E0, &qword_197618BD8);
  sub_1975A351C(v2);

  return MEMORY[0x1EEE6BDD0](v0, 21, 7);
}

uint64_t sub_197571AA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_197571ADC()
{
  v1 = sub_197616620();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

unint64_t sub_197571BA0()
{
  result = qword_1ED816C00;
  if (!qword_1ED816C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF346E8, &qword_1976192E0);
    sub_197559AAC(&qword_1ED816CE8, &qword_1EAF34710, &unk_197622260, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816C00);
  }

  return result;
}

unint64_t sub_197571C50()
{
  result = qword_1ED816268;
  if (!qword_1ED816268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816268);
  }

  return result;
}

_BYTE *sub_197571CC4(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x197571D60);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197571D88@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_197617230();
  if (!v2)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    if (sub_197616F70())
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      if (v6)
      {
        v7 = v6;
        v8 = sub_19755404C(0, &qword_1ED8164F8, 0x1E695DFB0);
        v9 = v7 & 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        v9 = 0x3E6C6C756E00;
        v5 = 0xE600000000000000;
        v8 = MEMORY[0x1E69E6158];
        LOBYTE(v7) = 60;
      }
    }

    else
    {
      v5 = v13;
      __swift_project_boxed_opaque_existential_1Tm(v11, v12);
      v9 = 0;
      LOBYTE(v7) = sub_197616F20() & 1;
      v8 = MEMORY[0x1E69E6370];
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    *a2 = v9 | v7;
    a2[1] = v5;
    a2[3] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t (*static CoreEvent.events.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = static CoreEvent.events.getter();
  return sub_1975725D0;
}

uint64_t sub_1975723F8()
{
  type metadata accessor for CoreEvent();
  result = sub_1976160B0();
  dword_1ED815FB8 = 0;
  qword_1ED815FC0 = result;
  return result;
}

uint64_t CoreEvent.init(_:datastore:)(void *a1, uint64_t a2)
{
  sub_19755A560(a1, v2 + 16);
  *(v2 + 56) = a2;
  sub_19755A560(a1, v7);
  v5 = swift_allocObject();
  sub_1975558C4(v7, v5 + 16);
  swift_unownedRetain();
  sub_19755A5C4(&unk_19761BE10, v5);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  return v2;
}

uint64_t sub_197572528()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t CoreEvent.__allocating_init(_:datastore:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CoreEvent.init(_:datastore:)(a1, a2);
  return v4;
}

uint64_t sub_1975725E8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t CoreEvent.donate(donationInfo:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t CoreEvent.donate()()
{
  OUTLINED_FUNCTION_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19755CCE8;

  return CoreEvent.donate(donationInfo:)(0);
}

uint64_t sub_1975726EC()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2[7];
  swift_unownedRetainStrong();
  v0[4] = *(v3 + 64);

  v4 = v2[5];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 2, v4);
  OUTLINED_FUNCTION_12_6();
  v6 = v5(v4);
  v8 = v7;
  OUTLINED_FUNCTION_11_6();
  v9 = swift_allocObject();
  v0[5] = v9;
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = v1;

  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_197598DAC;

  return sub_197572890();
}

unint64_t sub_197572838()
{
  result = qword_1ED8172C8;
  if (!qword_1ED8172C8)
  {
    type metadata accessor for MiniTipsDatastore.DatastoreQueue(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8172C8);
  }

  return result;
}

uint64_t sub_197572890()
{
  OUTLINED_FUNCTION_1();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  sub_197572838();
  if (v0)
  {
    swift_getObjectType();
    v4 = sub_197616560();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_197572920, v4, v6);
}

uint64_t sub_197572920()
{
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_19758E680;
  swift_continuation_init();
  OUTLINED_FUNCTION_13_4();
  sub_197572A14(v1, v2, v3, v4, 68, v5, v6);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1975729DC()
{

  OUTLINED_FUNCTION_11_6();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_197572A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C70, &qword_19761BEF8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - v13;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  OUTLINED_FUNCTION_11_6();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a3;
  v15[4] = a4;
  v17[0] = a7;
  v17[1] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C78, &qword_19761BF10);
  sub_197616600();
  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_197572B8C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = sub_1975737F0(a1, a2, a3, a7, a8, a9);
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = v14;
  sub_19755A560(a4, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35068, &qword_19761ED00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350A8, &qword_19761EFC8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_19755C404(v24, &qword_1EAF350B0, &qword_19761EFD0);
LABEL_7:
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_197616A20();

    v27 = 0xD00000000000002FLL;
    v28 = 0x8000000197624AE0;
    v20 = (*(a9 + 24))(a8, a9);
    MEMORY[0x19A8E2A50](v20);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v15 = v27;
    v21 = v28;
    sub_19759228C();
    swift_allocError();
    *v22 = v15;
    v22[1] = v21;
    swift_willThrow();
    return v15;
  }

  sub_1975558C4(v24, &v27);
  CoreRuleRecord.update(tip:parent:)(a5, a6);
  swift_getKeyPath();
  (*(a9 + 32))(v26, a8, a9);
  sub_197574C4C();

  swift_getKeyPath();
  (*(a9 + 56))(v26, a8, a9);
  sub_197574C4C();

  v16 = v29;
  v17 = v30;
  v18 = __swift_project_boxed_opaque_existential_1Tm(&v27, v29);
  type metadata accessor for CoreParameterRecord(0);
  v19 = v31;
  sub_197579304(v18, a7, v16, v17);
  if (v19)
  {
  }

  else
  {
    sub_19757AC54();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v27);
  return v15;
}

uint64_t sub_197572E6C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355A0, &qword_197622258);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D70, &unk_1976223F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355E0, &qword_197622430);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - v14;
  sub_197559AAC(&qword_1ED8166E8, &qword_1EAF34D70, &unk_1976223F0, MEMORY[0x1E6968DA8]);
  sub_197615820();
  v21 = type metadata accessor for CoreParameterRecord(0);
  v22 = sub_19755FF88(&qword_1ED817148, 255, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
  swift_getKeyPath();
  sub_197615700();

  (*(v9 + 8))(v11, v8);
  sub_197615F50();
  sub_197615810();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355E8, &qword_197622438);
  a3[4] = sub_19757AB48();
  __swift_allocate_boxed_opaque_existential_0(a3);
  sub_197559AAC(&qword_1ED8166A8, &qword_1EAF355E0, &qword_197622430, MEMORY[0x1E6968D58]);
  sub_197559AAC(&qword_1ED816D10, &qword_1EAF355A0, &qword_197622258, MEMORY[0x1E6968D20]);
  sub_19755FF88(&qword_1ED816C88, 255, MEMORY[0x1E697BC90], MEMORY[0x1E697BCA8]);
  v16 = v19;
  sub_1976156F0();
  (*(v20 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

double sub_197573320()
{
  OUTLINED_FUNCTION_30_1();
  if (v3 && (v4 = sub_19755C610(v1, v2), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_22_0(v4);
    sub_1975586C0(v6, v7);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

uint64_t sub_197573364(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v33 = a1;
  v8 = v7;
  v29 = a6;
  v30 = a7;
  v32 = a3;
  v31 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D18, &unk_19761CC40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D10, &unk_19761C4F0);
  v35 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v15 = &v28 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35078, &qword_19761EE50);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35070, &qword_19761ED58);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_197618C10;
  (*(v17 + 16))(v19 + v18, a4, v16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D20, &qword_19761C500);
  (*(*(v20 - 8) + 16))(v13, a5, v20);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v20);
  v21 = sub_197567FF0(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
  sub_197615D90();
  v42 = v8;
  v43 = v21;
  swift_getKeyPath();
  v44 = 1;
  v45 = 0;
  swift_setAtWritableKeyPath();

  v40 = v8;
  v41 = v21;
  swift_getKeyPath();
  LOBYTE(v44) = v31;
  swift_setAtWritableKeyPath();

  v38 = v8;
  v39 = v21;
  swift_getKeyPath();
  v44 = v32;

  swift_setAtWritableKeyPath();

  v36 = v8;
  v37 = v21;
  swift_getKeyPath();
  v44 = v19;

  swift_setAtWritableKeyPath();

  v22 = v34;
  v23 = sub_197615C80();
  if (!v22)
  {
    v24 = v23;
    v25 = v29;
    v34 = sub_197567E4C(v23);
    if (v34)
    {
      sub_1975692BC(0, (v24 & 0xC000000000000001) == 0, v24);
      if ((v24 & 0xC000000000000001) != 0)
      {
        a4 = MEMORY[0x19A8E31E0](0, v24);
      }

      else
      {
        a4 = *(v24 + 32);
      }
    }

    else
    {

      a4 = v25(v26);
      sub_197615CD0();
    }
  }

  (*(v35 + 8))(v15, v46);

  return a4;
}

uint64_t sub_1975737F0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v31 = a5;
  v33 = a3;
  v34 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D20, &qword_19761C500);
  v9 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35070, &qword_19761ED58);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19761ECF0;
  *(v16 + 32) = swift_getKeyPath();
  *(v16 + 40) = swift_getKeyPath();
  *(v16 + 48) = swift_getKeyPath();
  *(v16 + 56) = swift_getKeyPath();
  *(v16 + 64) = swift_getKeyPath();
  swift_getKeyPath();
  sub_197567FF0(&qword_1ED816CD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_197615640();
  v42 = a1;
  v43 = a2;
  v44 = v6;
  sub_197615AE0();
  v37 = v31;
  v38 = v32;
  v39 = a1;
  v40 = a2;
  v41 = v33;
  v34 = sub_197573364(v34, 0, v16, v15, v11, sub_1975D4E8C, v36);

  (*(v9 + 8))(v11, v35);
  (*(v13 + 8))(v15, v12);
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v17 = qword_1ED817570;
    v18 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      swift_once();
    }

    if (qword_1ED81D218)
    {
      v17 = qword_1ED81D210;
      v18 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v19 = sub_1975A5740();
      if (v20)
      {
        v17 = v19;
        v18 = v20;
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
      }
    }
  }

  if (v17 == 0xD000000000000010 && 0x8000000197623CB0 == v18)
  {
    goto LABEL_34;
  }

  v22 = sub_197616EF0();

  if (v22)
  {
    return v34;
  }

  if (qword_1ED817578)
  {
    v23 = qword_1ED817570;
    v24 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      swift_once();
    }

    if (qword_1ED81D218)
    {
      v23 = qword_1ED81D210;
      v24 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v25 = sub_1975A5740();
      if (v26)
      {
        v23 = v25;
        v24 = v26;
      }

      else
      {
        v23 = 0;
        v24 = 0xE000000000000000;
      }
    }
  }

  if (v23 == 0x6C7070612E6D6F63 && v24 == 0xEF64737069742E65)
  {
LABEL_34:

    return v34;
  }

  v28 = sub_197616EF0();

  if ((v28 & 1) == 0)
  {
    type metadata accessor for CoreRule();
    sub_197574E1C(a1, a2);
  }

  return v34;
}

uint64_t sub_197573DA8()
{
  sub_197573258();
  sub_197579604();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    result = swift_dynamicCast();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_1975D49D8(v2);
    return 0;
  }

  return result;
}

uint64_t sub_197573E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1975600FC(v3, v4, &protocol conformance descriptor for CoreRuleRecord);
  OUTLINED_FUNCTION_43_2();
  sub_197615B10();
}

void sub_197573F00()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_35_5(v2, v3, v4, v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA8, &qword_19761BAC8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA0, &qword_19761BAC0);
  v11 = OUTLINED_FUNCTION_5_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_52_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_68_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_45_0(v0);
  if (v16)
  {
    sub_19755C7C8(v0, &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_53_0();
    v18(v17);
    OUTLINED_FUNCTION_59_0();
    v21 = sub_19755FF88(v19, 255, v20, &protocol conformance descriptor for CoreParameterRecord);
    if (OUTLINED_FUNCTION_67(v21))
    {
      v30 = OUTLINED_FUNCTION_43();
      v31(v30);
    }

    else
    {
      OUTLINED_FUNCTION_106(0, v23, v24, v25, v26, v27, v28, v29, v57);
      MEMORY[0x1EEE9AC00](v32);
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_55(v33, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
      v35 = OUTLINED_FUNCTION_38_3();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
      v39 = OUTLINED_FUNCTION_29_5();
      sub_19755F9A0(v39, v40, v41, v42);
      v43 = OUTLINED_FUNCTION_74_0();
      MEMORY[0x1EEE9AC00](v43);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_21_12(v58);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v45);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_20_11(v59);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v46);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();

      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v48);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      v49 = OUTLINED_FUNCTION_73_0();
      if (v1)
      {

        v50 = OUTLINED_FUNCTION_15_15();
        v51(v50);
      }

      else
      {
        v54 = v49;
        v55 = OUTLINED_FUNCTION_15_15();
        v56(v55);
        sub_197578D68(v54);
        OUTLINED_FUNCTION_122();
      }

      sub_19755C7C8(&qword_1EAF34AB8, &qword_1EAF34BA0, &qword_19761BAC0);
      v52 = OUTLINED_FUNCTION_36_4();
      v53(v52);
      OUTLINED_FUNCTION_91();
    }
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_9();
}

uint64_t sub_1975743D4(char a1)
{
  v13 = MEMORY[0x1E69E6370];
  LOBYTE(v12) = a1;
  v1 = sub_197573258();
  sub_19756A94C(&v12, &v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v1;
  v3 = __swift_mutable_project_boxed_opaque_existential_1(&v10, v11);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v6 = (v5 - v4);
  (*(v7 + 16))(v5 - v4);
  sub_19757960C(*v6, 0xD000000000000010, 0x8000000197624770, isUniquelyReferenced_nonNull_native, &v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v10);
  return sub_197574BA8(v9);
}

void sub_19757450C()
{
  OUTLINED_FUNCTION_20();
  v19 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_5();
  if (!v19(v15, v13, v11, v9 & 1, v7, v5, v3))
  {
    sub_197616A20();

    sub_19755F9FC(v15, v0, &qword_1EAF34AB8, &qword_197622080);
    v17 = sub_197616200();
    MEMORY[0x19A8E2A50](v17);

    sub_19759228C();
    swift_allocError();
    *v18 = 0xD000000000000026;
    v18[1] = 0x8000000197625400;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_19757467C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

uint64_t CoreRuleRecord.update(tip:parent:)(uint64_t result, uint64_t a2)
{
  if (result)
  {

    OUTLINED_FUNCTION_5_14();
    v3 = MEMORY[0x1E69E7D48];
    sub_1975747FC(v4, v5, v6, MEMORY[0x1E69E7D48]);
    OUTLINED_FUNCTION_4_22();
    result = sub_1975747FC(0, v7, v8, v3);
  }

  if (a2)
  {

    OUTLINED_FUNCTION_4_22();
    v9 = MEMORY[0x1E69E7D48];
    sub_1975747FC(v10, v11, v12, MEMORY[0x1E69E7D48]);
    OUTLINED_FUNCTION_5_14();
    return sub_1975747FC(0, v13, v14, v9);
  }

  return result;
}

void *sub_1975747B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197575854(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1975747FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1975600FC(v6, v7, &protocol conformance descriptor for CoreRuleRecord);
  sub_197615B10();

  return a4(a1);
}

uint64_t sub_1975749A0()
{
  v0 = CoreTipRecord.rules.getter();
  result = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    result = sub_197567E4C(v0);
    v2 = result;
    for (i = 0; ; ++i)
    {
      if (v2 == i)
      {

        return v4;
      }

      if ((v0 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x19A8E31E0](i, v0);
      }

      else
      {
        if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      type metadata accessor for CoreRuleRecord(0);
      sub_197560338(&qword_1ED817280, type metadata accessor for CoreRuleRecord);
      OUTLINED_FUNCTION_60();
      if (sub_197615E90())
      {
      }

      else
      {
        sub_197616AD0();
        sub_197616B10();
        sub_197616B20();
        result = sub_197616AE0();
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_197574B08(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
  sub_197615DF0();
}

uint64_t sub_197574BA8(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1975600FC(v3, v4, &protocol conformance descriptor for CoreRuleRecord);
  OUTLINED_FUNCTION_15_5(v5, v6, v7, v8, v9, v5, v10, v11, v13, v14, v1, a1, v15, v16);
}

uint64_t sub_197574C4C()
{
  OUTLINED_FUNCTION_11_14();
  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_197574C94(uint64_t a1, __int16 a2, uint64_t a3)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1975600FC(v3, v4, &protocol conformance descriptor for CoreRuleRecord);
  sub_197615E70();
}

uint64_t sub_197574D84(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1975600FC(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
  sub_197615E80();
}

void sub_197574E1C(unint64_t a1, unint64_t a2)
{

  v4 = sub_19757536C();
  sub_197575220(&v5, a1, a2);

  sub_19757AAD8(v4);
}

uint64_t sub_197574E84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF357B0, &qword_1976230E8);
  result = sub_1976169F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_197617190();

        sub_197616260();
        result = sub_1976171F0();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1975750B8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1976143E8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_197574E84(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_197617190();
      sub_197616260();
      result = sub_1976171F0();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_197616EF0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_197614644();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1976170E0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

BOOL sub_197575220(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_197617190();
  sub_197616260();
  v8 = sub_1976171F0();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_197616EF0() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1975750B8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_19757536C()
{
  if (qword_1ED816AC0 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_1ED816AC0);
  }

  os_unfair_lock_lock(&dword_1ED816AC8);
  v0 = qword_1ED816AD0;

  os_unfair_lock_unlock(&dword_1ED816AC8);
  return v0;
}

uint64_t sub_1975753D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_197575EE4(a1, &v35);
  if (!v36)
  {
    sub_1975758B8(a1);
    result = sub_1975758B8(&v35);
    goto LABEL_27;
  }

  sub_1975558C4(&v35, v37);
  v4 = v38;
  v5 = v39;
  v6 = __swift_project_boxed_opaque_existential_1Tm(v37, v38);
  v7 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_14();
  v10 = v8 - v9;
  (*(v7 + 16))(v8 - v9);
  OUTLINED_FUNCTION_1_18();
  if ((sub_197616900() & 1) == 0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_0_19();
  if (sub_1976168F0() <= 64)
  {
    goto LABEL_16;
  }

  *&v35 = 0x8000000000000000;
  OUTLINED_FUNCTION_1_18();
  if (sub_197616900())
  {
    OUTLINED_FUNCTION_0_19();
    v11 = sub_1976168F0();
    if (v11 < 64)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_18();
  v13 = sub_197616900();
  OUTLINED_FUNCTION_0_19();
  v11 = sub_1976168F0();
  if (v13)
  {
    if (v11 > 64)
    {
LABEL_10:
      v34 = v33;
      MEMORY[0x1EEE9AC00](v11);
      OUTLINED_FUNCTION_2_14();
      v16 = v14 - v15;
      sub_1975C98C8();
      sub_1976168B0();
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_3_17();
      result = v17(v16, v4);
      if ((v4 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v34 = *(*(v5 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v33[2] = v33;
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v33[0] = v33 - v19;
    swift_getAssociatedConformanceWitness();
    v20 = sub_1976170C0();
    v33[1] = v33;
    MEMORY[0x1EEE9AC00](v20);
    OUTLINED_FUNCTION_2_14();
    v23 = v21 - v22;
    sub_197616ED0();
    OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_3_17();
    result = v24(v23, v4);
    if (v4)
    {
      goto LABEL_29;
    }

LABEL_15:
    OUTLINED_FUNCTION_0_19();
    sub_1976168E0();
    goto LABEL_16;
  }

  if (v11 < 64)
  {
    goto LABEL_15;
  }

LABEL_16:
  OUTLINED_FUNCTION_0_19();
  if (sub_1976168F0() <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    *&v35 = 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_1_18();
    v25 = sub_197616900();
    OUTLINED_FUNCTION_0_19();
    v26 = sub_1976168F0();
    if ((v25 & 1) == 0)
    {
      break;
    }

    if (v26 < 65)
    {
      goto LABEL_25;
    }

LABEL_19:
    MEMORY[0x1EEE9AC00](v26);
    OUTLINED_FUNCTION_2_14();
    v29 = v27 - v28;
    sub_1975C98C8();
    sub_1976168B0();
    sub_197616180();
    OUTLINED_FUNCTION_3_17();
    v30(v29, v4);
    if (v4)
    {
      __break(1u);
LABEL_21:
      OUTLINED_FUNCTION_0_19();
      if (sub_1976168F0() == 64)
      {
        OUTLINED_FUNCTION_1_18();
        if ((sub_197616900() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_26;
  }

  if (v26 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  OUTLINED_FUNCTION_0_19();
  sub_1976168E0();
LABEL_26:
  OUTLINED_FUNCTION_0_19();
  v31 = sub_1976168E0();
  sub_1975758B8(a1);
  (*(v7 + 8))(v10, v4);
  CoreRule.Category.init(rawValue:)(v31, &v35);
  v32 = v35;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v37);
  if (v32 == 6)
  {
LABEL_27:
    LOBYTE(v32) = 6;
  }

  *a2 = v32;
  return result;
}

uint64_t sub_197575854@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1975759E8();
  v6 = MEMORY[0x1E69E7290];
  v7 = sub_197575F54();
  v5[0] = v2;
  result = sub_1975753D0(v5, &v8);
  v4 = v8;
  if (v8 == 6)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1975758B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D98, &qword_197620A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1975759F4()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_1975759E8();
  *v0 = result;
  return result;
}

unint64_t CoreRule.Category.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void sub_197575A60(uint64_t a1)
{
  sub_197575EE4(a1, &v33);
  if (!v34)
  {
    OUTLINED_FUNCTION_17_10(a1);
    OUTLINED_FUNCTION_17_10(&v33);
    return;
  }

  sub_1975558C4(&v33, v35);
  v3 = v36;
  v4 = v37;
  __swift_project_boxed_opaque_existential_1Tm(v35, v36);
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v9 = OUTLINED_FUNCTION_9_13(v8);
  v10(v9);
  OUTLINED_FUNCTION_1_24();
  if ((sub_197616900() & 1) == 0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_0_26();
  if (sub_1976168F0() <= 64)
  {
    goto LABEL_16;
  }

  *&v33 = 0x8000000000000000;
  v11 = v3;
  OUTLINED_FUNCTION_1_24();
  if (sub_197616900())
  {
    OUTLINED_FUNCTION_0_26();
    v12 = sub_1976168F0();
    if (v12 < 64)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v11 = v3;
  OUTLINED_FUNCTION_1_24();
  v13 = sub_197616900();
  OUTLINED_FUNCTION_0_26();
  v12 = sub_1976168F0();
  if (v13)
  {
    if (v12 > 64)
    {
LABEL_10:
      MEMORY[0x1EEE9AC00](v12);
      OUTLINED_FUNCTION_2_1();
      v16 = v14 - v15;
      v17 = sub_1975C98C8();
      OUTLINED_FUNCTION_7_15(&v33, MEMORY[0x1E69E6530], v17);
      OUTLINED_FUNCTION_5_19();
      sub_197616180();
      OUTLINED_FUNCTION_3_17();
      v18(v16, v3);
      if ((v11 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_27:
      __break(1u);
      return;
    }

    v19 = *(*(v4 + 24) + 16);
    v20 = OUTLINED_FUNCTION_14_7();
    v32[3] = v32;
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_11();
    MEMORY[0x1EEE9AC00](v21);
    swift_getAssociatedConformanceWitness();
    v22 = OUTLINED_FUNCTION_15_8(&unk_19761D080);
    v32[2] = v32;
    MEMORY[0x1EEE9AC00](v22);
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_5_19();
    sub_197616180();
    OUTLINED_FUNCTION_3_17();
    v23(v20, v3);
    OUTLINED_FUNCTION_13_13();
    if (v19)
    {
      goto LABEL_27;
    }

LABEL_15:
    OUTLINED_FUNCTION_0_26();
    sub_1976168E0();
    goto LABEL_16;
  }

  if (v12 < 64)
  {
    goto LABEL_15;
  }

LABEL_16:
  OUTLINED_FUNCTION_0_26();
  if (sub_1976168F0() <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    *&v33 = 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_1_24();
    v24 = sub_197616900();
    OUTLINED_FUNCTION_0_26();
    v25 = sub_1976168F0();
    if ((v24 & 1) == 0)
    {
      break;
    }

    if (v25 < 65)
    {
      goto LABEL_25;
    }

LABEL_19:
    MEMORY[0x1EEE9AC00](v25);
    OUTLINED_FUNCTION_2_1();
    v28 = v26 - v27;
    v29 = sub_1975C98C8();
    OUTLINED_FUNCTION_7_15(&v33, MEMORY[0x1E69E6530], v29);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_3_17();
    v30(v28, v3);
    if (v3)
    {
      __break(1u);
LABEL_21:
      OUTLINED_FUNCTION_0_26();
      if (sub_1976168F0() == 64)
      {
        OUTLINED_FUNCTION_1_24();
        if ((sub_197616900() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_26;
  }

  if (v25 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  OUTLINED_FUNCTION_0_26();
  sub_1976168E0();
LABEL_26:
  OUTLINED_FUNCTION_0_26();
  v31 = sub_1976168E0();
  sub_19755C7C8(a1, &qword_1EAF34D98, &qword_197620A90);
  (*(v6 + 8))(v1, v3);
  CoreTip.RecordStatus.init(rawValue:)(v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

uint64_t sub_197575E78()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_197575E6C();
  *v0 = result;
  return result;
}

unint64_t CoreTip.RecordStatus.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_197575EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D98, &qword_197620A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_197575F54()
{
  result = qword_1ED816B58;
  if (!qword_1ED816B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B58);
  }

  return result;
}

uint64_t CoreRuleRecord.status.getter()
{
  v0 = sub_1975769E8();
  v3 = MEMORY[0x1E69E7290];
  v4 = sub_197575F54();
  v2[0] = v0;
  LODWORD(result) = sub_197576000(v2);
  if (result == 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

unint64_t sub_197576000(uint64_t a1)
{
  sub_197575EE4(a1, &v30);
  if (!v31)
  {
    sub_1975758B8(a1);
    sub_1975758B8(&v30);
    return 3;
  }

  sub_1975558C4(&v30, v32);
  v2 = v33;
  v3 = v34;
  v4 = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
  v5 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v8 = v6 - v7;
  (*(v5 + 16))(v6 - v7);
  OUTLINED_FUNCTION_1_24();
  if ((sub_197616900() & 1) == 0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_0_26();
  if (sub_1976168F0() <= 64)
  {
    goto LABEL_16;
  }

  *&v30 = 0x8000000000000000;
  OUTLINED_FUNCTION_1_24();
  if (sub_197616900())
  {
    OUTLINED_FUNCTION_0_26();
    v9 = sub_1976168F0();
    if (v9 < 64)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_24();
  v10 = sub_197616900();
  OUTLINED_FUNCTION_0_26();
  v9 = sub_1976168F0();
  if (v10)
  {
    if (v9 > 64)
    {
LABEL_10:
      MEMORY[0x1EEE9AC00](v9);
      OUTLINED_FUNCTION_2_1();
      v13 = v11 - v12;
      sub_1975C98C8();
      sub_1976168B0();
      sub_197616180();
      OUTLINED_FUNCTION_3_17();
      result = v14(v13, v2);
      if ((v2 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_31:
      __break(1u);
      return result;
    }

    v29[1] = *(*(v3 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v29[3] = v29;
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v17 = sub_1976170C0();
    v29[2] = v29;
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_2_1();
    v20 = v18 - v19;
    sub_197616ED0();
    sub_197616180();
    OUTLINED_FUNCTION_3_17();
    result = v21(v20, v2);
    if (v2)
    {
      goto LABEL_31;
    }

LABEL_15:
    OUTLINED_FUNCTION_0_26();
    sub_1976168E0();
    goto LABEL_16;
  }

  if (v9 < 64)
  {
    goto LABEL_15;
  }

LABEL_16:
  OUTLINED_FUNCTION_0_26();
  if (sub_1976168F0() <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    *&v30 = 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_1_24();
    v22 = sub_197616900();
    OUTLINED_FUNCTION_0_26();
    v23 = sub_1976168F0();
    if ((v22 & 1) == 0)
    {
      break;
    }

    if (v23 < 65)
    {
      goto LABEL_25;
    }

LABEL_19:
    MEMORY[0x1EEE9AC00](v23);
    OUTLINED_FUNCTION_2_1();
    v26 = v24 - v25;
    sub_1975C98C8();
    sub_1976168B0();
    sub_197616180();
    OUTLINED_FUNCTION_3_17();
    v27(v26, v2);
    if (v2)
    {
      __break(1u);
LABEL_21:
      OUTLINED_FUNCTION_0_26();
      if (sub_1976168F0() == 64)
      {
        OUTLINED_FUNCTION_1_24();
        if ((sub_197616900() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_26;
  }

  if (v23 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  OUTLINED_FUNCTION_0_26();
  sub_1976168E0();
LABEL_26:
  OUTLINED_FUNCTION_0_26();
  v28 = sub_1976168E0();
  sub_1975758B8(a1);
  (*(v5 + 8))(v8, v2);
  if (v28 < 3)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    return v28;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  return 3;
}

uint64_t sub_1975764D8()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_19757649C();
  *v0 = result;
  return result;
}

uint64_t CoreRuleRecord.persistentBackingData.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_43_0(v1 + 24, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  sub_1975558C4(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_197576558(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_197567790(result, a2);
  }

  return result;
}

uint64_t sub_19757656C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_getKeyPath();
  v8 = sub_1975600FC(&qword_1ED817288, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
  OUTLINED_FUNCTION_29(v8, v9, v10, v11, v12, v13, v14, v15, v20, v4);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_25();
  sub_1975600FC(v16, type metadata accessor for CoreRuleRecord, v17);
  sub_1975600FC(a2, a3, a4);
  v18 = sub_197615E30();

  return v18;
}

uint64_t sub_197576674()
{
  result = sub_19757649C();
  if (!result)
  {
    result = sub_19757F8B8(0);
    if (result)
    {
      v1 = sub_197576674();

      return v1;
    }
  }

  return result;
}

uint64_t sub_1975766B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_197576710(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_197567E4C(a3);
  v7 = result;
  for (i = 0; v7 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x19A8E31E0](i, a3);
      v9 = result;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v10 = v9;
    a1(&v10);

    if (v3)
    {
      return result;
    }
  }

  return result;
}

void CoreRuleRecord.id.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_41_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_19();
  sub_1975600FC(v19, v18, &protocol conformance descriptor for CoreRuleRecord);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_25();
  sub_1975600FC(v20, v18, v21);
  OUTLINED_FUNCTION_40_1();
  sub_197615E50();

  OUTLINED_FUNCTION_38_1();
}

uint64_t sub_1975769BC()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreRuleRecord.predicate.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1975769F4()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_1975769E8();
  *v0 = result;
  return result;
}

unint64_t CoreRule.Predicate.Operator.evaluate<A>(value:predicateData:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v33 = a1;
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v13;
  v14 = sub_197615AD0();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  if (a3 >> 60 == 15)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD00000000000002DLL, 0x80000001976248F0);
    v20 = sub_197617320();
    MEMORY[0x19A8E2A50](v20);

    MEMORY[0x19A8E2A50](0xD00000000000001DLL, 0x8000000197624920);
    v21 = v34;
    v9 = v35;
    sub_19759228C();
    swift_allocError();
    *v22 = v21;
    v22[1] = v9;
    swift_willThrow();
  }

  else
  {
    v23 = OUTLINED_FUNCTION_12_8();
    sub_1975766B8(v23, v24);
    static PredicateCoder.decode<A>(_:from:)(a2, a3, a4, v19);
    if (v4)
    {
      v25 = OUTLINED_FUNCTION_12_8();
      sub_197576558(v25, v26);
    }

    else
    {
      v32 = v9;
      (*(v9 + 16))(v12, v33, a4);
      v34 = v12;
      LOBYTE(v9) = sub_197615AC0();
      (*(v16 + 8))(v19, v14);
      v28 = OUTLINED_FUNCTION_12_8();
      sub_197576558(v28, v29);
      v30 = OUTLINED_FUNCTION_11_8();
      v31(v30);
    }
  }

  return v9 & 1;
}

uint64_t sub_197576D20(uint64_t a1)
{
  sub_197577B38(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35068, &qword_19761ED00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350A8, &qword_19761EFC8);
    if (swift_dynamicCast())
    {
      if (*(&v21 + 1))
      {
        sub_1975558C4(&v20, &v23);
        v1 = v25;
        v2 = v26;
        v3 = __swift_project_boxed_opaque_existential_1Tm(&v23, v25);
        sub_1975775F8(v3, v1, v2);
        return __swift_destroy_boxed_opaque_existential_0Tm(&v23);
      }
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }
  }

  else
  {
    sub_19755C404(v17, &qword_1EAF350B8, &qword_19761F000);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
  }

  sub_19755C404(&v20, &qword_1EAF350B0, &qword_19761EFD0);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_197616A20();
  v5 = MEMORY[0x19A8E2A50](0xD000000000000031, 0x8000000197624B80);
  CoreRuleRecord.id.getter(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17[0], v17[1], v17[2], v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1));
  MEMORY[0x19A8E2A50]();

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  v13 = v23;
  v14 = v24;
  sub_19759228C();
  swift_allocError();
  *v15 = v13;
  v15[1] = v14;
  return swift_willThrow();
}

uint64_t sub_197576ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);
  sub_197577780(v9);
  return sub_197577AD0(v9);
}

uint64_t sub_197576F6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_19755A560(a2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35068, &qword_19761ED00);
  if (swift_dynamicCast())
  {
    v19 = v16;
    sub_197575854(v18);
    if (v18[0] == 1)
    {
      sub_1975EB408(a1, v17, a3, a4, a5, a6);
    }
  }

  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_project_boxed_opaque_existential_1Tm(a2, v13);
  type metadata accessor for CoreRuleRecord(0);
  return sub_197576ED4(a1, v15, a4, v13, v14);
}

void static PredicateCoder.decode<A>(_:from:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v37 = a4;
  sub_197615870();
  OUTLINED_FUNCTION_14();
  v34 = v8;
  v35 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v33 = a3;
  v40 = a3;
  v13 = sub_197615AD0();
  v14 = sub_197616860();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  OUTLINED_FUNCTION_14();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v32 - v23;
  WitnessTable = swift_getWitnessTable();
  v38 = a1;
  v39 = a2;
  v26 = v36;
  sub_197567980(v13, a1, a2, v13, WitnessTable);
  if (v26)
  {

    __swift_storeEnumTagSinglePayload(v19, 1, 1, v13);
    (*(v16 + 8))(v19, v14);
    v27 = v33;
    sub_19760E950(v33, v33);
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_50(v13, v38, v39);
    v28 = v35;
    v29 = *(v34 + 8);
    v29(v12, v35);
    v30 = v32;
    sub_19760EAD8(v27, v27);
    OUTLINED_FUNCTION_1_50(v13, v38, v39);
    v29(v30, v28);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v13);
    v31 = *(v21 + 32);
    v31(v24, v19, v13);
    v31(v37, v24, v13);
  }
}

uint64_t sub_197577430(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + OBJC_IVAR___Predicate_operation);
  if (v6 >= 0xB)
  {
    if (v6 == 11)
    {
      LOBYTE(v15[0]) = 11;
      v9 = *(v2 + OBJC_IVAR___Predicate_rawdata);
      v10 = *(v2 + OBJC_IVAR___Predicate_rawdata + 8);
      v7 = v15;
      v11 = CoreRule.Predicate.Operator.evaluate<A>(value:predicateData:)(a1, v9, v10, a2);
      if (!v3)
      {
        LOBYTE(v7) = v11;
      }
    }

    else
    {
      *&v15[0] = 0;
      *(&v15[0] + 1) = 0xE000000000000000;
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000039, 0x8000000197624830);
      v12 = sub_197617320();
      MEMORY[0x19A8E2A50](v12);

      LOBYTE(v7) = 0;
      sub_19759228C();
      swift_allocError();
      *v13 = v15[0];
      swift_willThrow();
    }
  }

  else
  {
    v16 = *(v2 + OBJC_IVAR___Predicate_operation);
    sub_19755FA5C(v2 + OBJC_IVAR___Predicate_value, v14, &qword_1EAF34930, &unk_19761DB90);
    if (v14[3])
    {
      sub_1975586C0(v14, v15);
      sub_19759425C(v14);
    }

    else
    {
      sub_19755C404(v14, &qword_1EAF34930, &unk_19761DB90);
      memset(v15, 0, sizeof(v15));
    }

    LOBYTE(v7) = CoreRule.Predicate.Operator.evaluate<A>(lhs:rhs:)(a1, v15, a2);
    sub_19755C404(v15, &qword_1EAF34340, &unk_19761C8E0);
  }

  return v7 & 1;
}

void sub_1975775F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v17 - v10;
  v18 = v3;
  v12 = CoreRuleRecord.predicate.getter(v9);
  if (v12)
  {
    v13 = v12;
    (*(a3 + 56))(a2, a3);
    v14 = sub_197577430(v11, AssociatedTypeWitness);
    if (v4)
    {
      (*(v8 + 8))(v11, AssociatedTypeWitness);
    }

    else
    {
      v15 = v14;
      (*(v8 + 8))(v11, AssociatedTypeWitness);
      if (v15)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      sub_197577DBC(v16);
    }
  }
}

uint64_t sub_197577780(uint64_t a1)
{
  result = sub_197576674();
  if (result)
  {
    if (CoreTipRecord.status.getter() != 2)
    {
      sub_197575854(v34 + 7);
      switch(HIBYTE(v34[0]))
      {
        case 1:
          v12 = CoreRuleRecord.status.getter();
          v13 = sub_1975D3C58(v12);
          v14 = MEMORY[0x1E69E7CC0];
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = MEMORY[0x1E69E7CC0];
          }

          v16 = sub_197568EEC(v15);
          if (v16)
          {
            v17 = v16;
            LODWORD(v34[0]) = v12;
            sub_1975D2044(0, v16 & ~(v16 >> 63), 0);
            if (v17 < 0)
            {
              __break(1u);
              JUMPOUT(0x197577A94);
            }

            v18 = 0;
            v19 = v14;
            v30 = v15 & 0xC000000000000001;
            v20 = v15;
            v21 = v17;
            do
            {
              if (v30)
              {
                MEMORY[0x19A8E31E0](v18, v15);
              }

              else
              {
              }

              v22 = CoreRuleRecord.status.getter();

              v24 = *(v14 + 16);
              v23 = *(v14 + 24);
              if (v24 >= v23 >> 1)
              {
                sub_1975D2044(v23 > 1, v24 + 1, 1);
              }

              ++v18;
              *(v14 + 16) = v24 + 1;
              *(v14 + v24 + 32) = v22;
              v15 = v20;
            }

            while (v21 != v18);

            v12 = LODWORD(v34[0]);
          }

          else
          {

            v19 = MEMORY[0x1E69E7CC0];
          }

          sub_1975D4F9C(v12, v19);

          break;
        case 2:
          v25 = sub_19759252C();
          sub_197592594(v25);

          break;
        case 4:
          sub_197576D20(a1);
          break;
        default:
          sub_197616A20();
          v3 = MEMORY[0x19A8E2A50](0xD00000000000001CLL, 0x8000000197624B30);
          CoreRuleRecord.id.getter(v3, v4, v5, v6, v7, v8, v9, v10, v26, v27, v28, v29, 0, 0xE000000000000000, v33, v34[0], v34[1], v34[2]);
          MEMORY[0x19A8E2A50]();

          MEMORY[0x19A8E2A50](0x6F6765746163202CLL, 0xEC000000203A7972);
          sub_197575854(v34 + 7);
          sub_1975D2EE0(SHIBYTE(v34[0]));
          MEMORY[0x19A8E2A50](41, 0xE100000000000000);
          sub_19759228C();
          swift_allocError();
          *v11 = v31;
          v11[1] = v32;
          swift_willThrow();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_197577AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350B8, &qword_19761F000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_197577B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350B8, &qword_19761F000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197577BA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a2;
  v31 = a4;
  v32 = a5;
  v33 = a3;
  v7 = *a1;
  result = (*(a6 + 64))(a5, a6);
  v9 = result;
  v10 = 0;
  v11 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v11 == v10)
    {

      v41 = 0u;
      v42 = 0u;
      v43 = 0;
      return sub_197577AD0(&v41);
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    sub_19755A560(i, &v34);
    v13 = v36;
    v14 = v37;
    __swift_project_boxed_opaque_existential_1Tm(&v34, v36);
    v15 = (*(v14 + 24))(v13, v14);
    v17 = v16;
    CoreRuleRecord.id.getter(v15, v16, v18, v19, v20, v21, v22, v23, v30, v31, v32, v33, v34, *(&v34 + 1), v35, v36, v37, v38[0]);
    if (v15 == v25 && v17 == v24)
    {

LABEL_12:

      sub_1975558C4(&v34, v38);
      v28 = v39;
      v29 = v40;
      __swift_project_boxed_opaque_existential_1Tm(v38, v39);
      (*(v29 + 40))(&v41, v28, v29);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      if (*(&v42 + 1))
      {
        sub_1975558C4(&v41, v44);
        sub_197576F6C(v7, v44, v30, v31, v32, a6);
        return __swift_destroy_boxed_opaque_existential_0Tm(v44);
      }

      return sub_197577AD0(&v41);
    }

    v27 = sub_197616EF0();

    if (v27)
    {
      goto LABEL_12;
    }

    result = __swift_destroy_boxed_opaque_existential_0Tm(&v34);
    ++v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_197577DBC(uint64_t a1)
{
  result = CoreRuleRecord.status.getter();
  if (result != a1)
  {
    KeyPath = swift_getKeyPath();
    sub_1975EAFDC(KeyPath, a1);

    if (!v1)
    {

      if (qword_1ED816C98 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v5, qword_1ED816CA0);
      sub_197616A20();
      v6 = MEMORY[0x19A8E2A50](0x3A646928656C7552, 0xE900000000000020);
      CoreRuleRecord.id.getter(v6, v7, v8, v9, v10, v11, v12, v13, 0, 0xE000000000000000, v17, *(&v17 + 1), v18, v19, v20, v21, v22, v23);
      MEMORY[0x19A8E2A50]();

      MEMORY[0x19A8E2A50](0xD000000000000015, 0x8000000197624B10);
      HIBYTE(v19) = a1;
      sub_197616BC0();
      sub_197558864(v16, *(&v16 + 1), v14);

      result = sub_19757F8B8(v15);
      if (result)
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        sub_197577780(&v16);
        sub_197577AD0(&v16);
      }
    }
  }

  return result;
}

void sub_197577F90()
{
  OUTLINED_FUNCTION_5_22();
  v3 = v2;
  v4 = CoreTipRecord.status.getter();
  v5 = sub_1975784A8();
  if (v0)
  {
  }

  else
  {
    v6 = v5;
    if (v4 != v5 || (v3 & 1) != 0)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_3_30();
      sub_1975EB024(v7, v8, v9, v10, v11);

      sub_19755FF40(&qword_1ED8170E0, type metadata accessor for CoreTipRecord, &protocol conformance descriptor for CoreTipRecord);
      if (sub_197615DD0())
      {
        if (sub_197615C20())
        {
          sub_197615C70();
        }
      }

      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
      }

      v12 = type metadata accessor for logger(0);
      v70 = __swift_project_value_buffer(v12, qword_1ED816CA0);
      sub_197616A20();
      OUTLINED_FUNCTION_4_32();
      CoreTipRecord.id.getter(v13, v14, v15, v16, v17, v18, v19, v20, v65, v70, 0, 0xE000000000000000, v83, v88, v97, v100, v103, v106);
      MEMORY[0x19A8E2A50]();

      OUTLINED_FUNCTION_13_12();
      v21 = MEMORY[0x19A8E2A50](0xD00000000000001CLL);
      OUTLINED_FUNCTION_9_18(v21, v22, v23, v24, v25, v26, v27, v28, v66, v71, v75, v79, v84, v89, v93, v95, v4);
      OUTLINED_FUNCTION_8_20();
      OUTLINED_FUNCTION_9_18(v29, v30, v31, v32, v33, v34, v35, v36, v67, v72, v76, v80, v85, v90, v94, v96, v6);
      sub_197558864(v77, v81, v37);

      v38 = type metadata accessor for CoreTip(0);
      CoreTipRecord.id.getter(v38, v39, v40, v41, v42, v43, v44, v45, v68, v73, v77, v81, v86, v91, v98, v101, v104, v107);
      v47 = v46;
      v49 = v48;
      v50 = CoreTipRecord.invalidationReason.getter();
      sub_19757EBE4(v47, v49, v6, v50);

      CoreTipRecord.id.getter(v51, v52, v53, v54, v55, v56, v57, v58, v69, v74, v78, v82, v87, v92, v99, v102, v105, v108);
      v60 = v59;
      v62 = v61;
      v63 = static CoreTip.tips.getter();
      v64 = sub_197580F6C(v60, v62, v63);

      if (v64)
      {
        sub_19757FF94();
      }

      sub_1975E698C(v1, v4, v6);
    }
  }
}

void sub_1975782A0()
{
  OUTLINED_FUNCTION_5_22();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  CoreTipRecord.status.getter();
  OUTLINED_FUNCTION_10_18();
  if (!v12)
  {
    v13 = sub_1975749A0();
    MEMORY[0x1EEE9AC00](v13);
    v35[2] = v5;
    v35[3] = v3;
    v35[4] = v9;
    v35[5] = v1;
    v35[6] = v7;
    sub_197576710(sub_197577AAC, v35, v13);

    if (!v0)
    {
      v36 = v7;
      HIDWORD(v37) = v11;
      v14 = type metadata accessor for CoreTip(0);
      CoreTipRecord.id.getter(v14, v15, v16, v17, v18, v19, v20, v21, v36, v37, v38[0], v38[1], v38[2], v38[3], *&v39, v40, v41, v42);
      v23 = v22;
      v25 = v24;
      v26 = static CoreTip.tips.getter();
      v27 = sub_197580F6C(v23, v25, v26);

      if (!v27 || (v29 = CoreTip.presentationStyle.getter(), v28 = , !v29))
      {
        v30 = sub_1975785C8(v28);
        if (v30 >= sub_19757F6B4(v30))
        {
          OUTLINED_FUNCTION_3_30();
          sub_1975E92FC(v34);
        }
      }

      (*(v3 + 72))(v38, v5, v3);
      v31 = sub_19756D1E8(v38);
      if ((v40 & 1) == 0)
      {
        v32 = v39;
        if (v32 < sub_19757F490(v31))
        {
          OUTLINED_FUNCTION_3_30();
          sub_1975E92FC(v33);
        }
      }

      OUTLINED_FUNCTION_3_30();
      sub_197577F90();
    }
  }
}

uint64_t sub_1975784A8()
{
  v0 = CoreTipRecord.status.getter();
  if (v0 == 2)
  {
    return 2;
  }

  if (sub_19757F9B4(v0))
  {
    return 0;
  }

  v2 = sub_1975749A0();
  result = sub_197567E4C(v2);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      v1 = 1;
LABEL_17:

      return v1;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x19A8E31E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v6 = CoreRuleRecord.status.getter();
    if (v6 != 2)
    {
      v7 = sub_19757F8B8(v6);

      if (!v7)
      {
        v1 = 0;
        goto LABEL_17;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1975785C8(uint64_t a1)
{
  sub_197568F10(a1);
  v1 = OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_73(v1 & 0xFFFFFFFFFFFFLL | 0x4379000000000000, 0xEC000000746E756FLL);

  if (v8)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (OUTLINED_FUNCTION_38_2(v2, v3, v2, MEMORY[0x1E69E6530], v4))
    {
      return v6;
    }
  }

  else
  {
    sub_1975E62E4(v7, &qword_1EAF34698);
  }

  return 0;
}

void *CoreParameterRecord.init(backingData:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D50, &qword_19761CA00);
  OUTLINED_FUNCTION_0_18();
  v13 = sub_19755FD88(v11, v12, &protocol conformance descriptor for CoreParameterRecord);
  *(v1 + 56) = OUTLINED_FUNCTION_15_3(v13);
  __swift_allocate_boxed_opaque_existential_0((v1 + 24));
  sub_197615DC0();
  v14 = OUTLINED_FUNCTION_16_5();
  sub_197578AEC(v14, 0xE000000000000000, v15, v16, v17);
  sub_197615A50();
  __swift_project_boxed_opaque_existential_1Tm((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_16();
  sub_19755FD88(v18, v19, MEMORY[0x1E6969538]);
  sub_197615BE0();

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_16_5();
  sub_197578A00(v20, v21);
  v22 = OUTLINED_FUNCTION_16_5();
  sub_197578AEC(v22, 0xE000000000000000, v23, v24, v25);
  sub_19757890C((v2 + 24), (v2 + 17));
  sub_197615B30();
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_43_0(v1 + 24, v27);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  sub_1975558C4(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_19757890C@<X0>(void *a2@<X1>, _BYTE *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CC8, &unk_19761C9F0);
  type metadata accessor for CoreRuleRecord(0);
  sub_197567D64();
  sub_197615BD0();

  *a3 = 0;
  return result;
}

uint64_t sub_1975789D4()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreParameterRecord.rules.getter();
  *v0 = result;
  return result;
}

uint64_t sub_197578A00@<X0>(void *a3@<X2>, _BYTE *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D48, &qword_19761C948);
  sub_197578BC8(&qword_1ED8166E0, sub_197580F18, MEMORY[0x1E69E7C70]);
  sub_197615BE0();

  v5 = OUTLINED_FUNCTION_22();
  result = sub_197576558(v5, v6);
  *a4 = 0;
  return result;
}

uint64_t sub_197578AEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  swift_getKeyPath();
  sub_197615BE0();
}

uint64_t CoreParameterRecord.__allocating_init(backingData:)(__int128 *a1)
{
  v2 = swift_allocObject();
  CoreParameterRecord.init(backingData:)(a1);
  return v2;
}

uint64_t sub_197578BC8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34D48, &qword_19761C948);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_33_1(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_197562EA4(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_33_3(uint64_t a1)
{

  return swift_getWitnessTable();
}

_OWORD *OUTLINED_FUNCTION_33_4()
{
  v3 = (*(v0 + 56) + 32 * v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v3);

  return sub_19756A94C((v2 - 96), v3);
}

uint64_t OUTLINED_FUNCTION_33_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_197616A20();
}

uint64_t OUTLINED_FUNCTION_93(uint64_t a1)
{

  return sub_197615CB0();
}

uint64_t sub_197578DAC(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    result = sub_197616C60();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_7;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = OUTLINED_FUNCTION_33_7();
    MEMORY[0x19A8E31E0](v5);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

LABEL_7:
  a2(0);
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t sub_197578E5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  sub_1975600FC(v9, v10, &protocol conformance descriptor for CoreRuleRecord);
  sub_1975600FC(a4, a5, a6);
  sub_197615E80();
}

uint64_t OUTLINED_FUNCTION_58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 56) = a2;
  *(v2 - 80) = a1;

  return sub_197568F10(a1);
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{

  return sub_197615C00();
}

uint64_t OUTLINED_FUNCTION_70()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_70_0(uint64_t a1)
{

  return sub_197615820();
}

uint64_t sub_197578FC0(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35670, &qword_197622780);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19757BC9C, 0, 0);
}

uint64_t CoreParameterRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v1 = OBJC_IVAR____TtC10TipKitCore19CoreParameterRecord___observationRegistrar;
  sub_197615B40();
  OUTLINED_FUNCTION_7_5();
  (*(v2 + 8))(&v0[v1]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_56()
{
  sub_19756A94C((v0 - 96), (v0 - 128));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t a1)
{

  return sub_197615700();
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1, uint64_t a2)
{

  return KeyPathAccessible.with<A>(_:_:)();
}

uint64_t OUTLINED_FUNCTION_57()
{
  v2 = *(v0 - 120);

  return sub_19757A368(v2);
}

void Dictionary.set(key:returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15_12();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = *(v29 + 24);
  OUTLINED_FUNCTION_30_8();
  v31 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_31_6();
  (*(v36 + 16))(v20, v26);
  OUTLINED_FUNCTION_18();
  v38 = *(v37 + 16);
  v38(v34, v24, v30);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v30);
  sub_197616130();
  v38(v28, v24, v30);
  OUTLINED_FUNCTION_14_9();
}

char *sub_197579304(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v35 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = sub_197615F50();
  OUTLINED_FUNCTION_0();
  v33 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v29 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreParameter();
  v31 = a3;
  v32 = a4;
  v16 = *(a4 + 16);
  v17 = *(v16 + 16);
  v30 = a1;
  v17(a3, v16);
  static CoreParameter.modelIdentifiers.getter();
  sub_19756E674();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_19756E748(v11);
    v18 = v30;
    v11 = v31;
    v19 = (v17)(v31, v16);
    v20 = v36;
    v22 = sub_197565C88(v19, v21, v18, v35, v11, v32);
    if (!v20)
    {
      v11 = v22;
    }
  }

  else
  {
    v23 = v33;
    v24 = v29;
    (*(v33 + 32))(v29, v11, v12);
    v25 = v34;
    (*(v23 + 16))(v34, v24, v12);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v12);
    v26 = v36;
    sub_1975748C0();
    if (!v26)
    {
      v11 = v27;
    }

    sub_19756E748(v25);
    (*(v23 + 8))(v24, v12);
  }

  return v11;
}

void sub_19757960C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_43_3();
  LOBYTE(v26[0]) = v5;
  v6 = MEMORY[0x1E69E6370];
  v26[3] = MEMORY[0x1E69E6370];
  v8 = OUTLINED_FUNCTION_23_5(v5, v7);
  sub_19755C610(v8, v9);
  OUTLINED_FUNCTION_30();
  if (v11)
  {
    __break(1u);
LABEL_10:
    sub_1976170F0();
    __break(1u);
    return;
  }

  v12 = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
  if (OUTLINED_FUNCTION_35_3(v13))
  {
    v14 = OUTLINED_FUNCTION_22_7();
    sub_19755C610(v14, v15);
    OUTLINED_FUNCTION_42_2();
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  if (v12)
  {
    OUTLINED_FUNCTION_33_4();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v26, v6);
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_14();
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_6_0();
    v19 = OUTLINED_FUNCTION_15_9(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_65();
    sub_1975E6508(v21, v22, v23, v24, v25);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_197579788(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1975798B8, 0, 0);
}

uint64_t sub_197579824()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1975831B8;

  return sub_197579788(v3, v0 + 16);
}

uint64_t sub_1975798B8()
{
  v1 = v0[3];
  v2 = v0[4];
  type metadata accessor for CoreParameter();
  v3 = v1[3];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  OUTLINED_FUNCTION_0_14();
  v4(v3);
  static CoreParameter.modelIdentifiers.getter();
  sub_19756E674();

  v5 = sub_197615F50();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v5);
  sub_19756E748(v2);
  if (EnumTagSinglePayload == 1)
  {
    v7 = v0[2];
    v9 = v1[3];
    v8 = v1[4];
    v10 = __swift_project_boxed_opaque_existential_1Tm(v0[3], v9);
    type metadata accessor for CoreParameterRecord(0);
    sub_197579304(v10, v7, v9, v8);
  }

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t sub_197579A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a2;
  v7 = *(a4 + 72);
  v7(&v86, a3, a4);
  sub_197579FB0(v86, *(&v86 + 1));
  v8 = OUTLINED_FUNCTION_2_29();
  (v7)(v8);
  sub_19756D1E8(v89);
  sub_19757A27C(v89[18]);
  sub_19757A548(0);
  v9 = OUTLINED_FUNCTION_2_29();
  (v7)(v9);
  sub_19756D1E8(v90);
  sub_19757A638(v90[44]);
  if (CoreTipRecord.status.getter() != 2)
  {
    CoreTipRecord.invalidationReason.setter();
  }

  v91 = v7;
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  v10 = &qword_1ED817518;
  swift_beginAccess();
  if (qword_1ED817578)
  {
    v11 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    LOBYTE(v10) = qword_1ED81D218;
    if (qword_1ED81D218)
    {
      v11 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      sub_1975A5740();
      if (v12)
      {
        v11 = v12;
      }

      else
      {
        v11 = 0xE000000000000000;
      }
    }
  }

  OUTLINED_FUNCTION_0_37();
  v17 = v17 && v11 == v16;
  if (v17)
  {

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_5_21(v13, v14, v15, v16);
  OUTLINED_FUNCTION_9_17();

  if (v10)
  {
LABEL_22:
    v18 = OUTLINED_FUNCTION_2_29();
    v20 = v19(v18);
    CoreTipRecord.content.setter(v20);
  }

  if (qword_1ED817578)
  {
    v21 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    LOBYTE(v10) = qword_1ED81D218;
    if (qword_1ED81D218)
    {
      v21 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      sub_1975A5740();
      if (v22)
      {
        v21 = v22;
      }

      else
      {
        v21 = 0xE000000000000000;
      }
    }
  }

  OUTLINED_FUNCTION_0_37();
  if (v17 && v21 == v26)
  {

    v29 = v91;
LABEL_41:
    v31 = OUTLINED_FUNCTION_2_29();
    v32 = v29(v31);
    OUTLINED_FUNCTION_6_16(v32, v33, v34, v35, v36, v37, v38, v39, v76, v77, v78, *(&v78 + 1), *&v79[0], *(&v79[0] + 1), *&v79[1], *(&v79[1] + 1), v80, v81[0], *&v81[1], SDWORD2(v81[1]), SWORD6(v81[1]), SBYTE14(v81[1]), v82, v83, v84, v85, v86, v87);
    sub_19757B3D0(*(&v87 + 1), v40, v41, v42, v43, v44);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_5_21(v23, v24, v25, v26);
  OUTLINED_FUNCTION_9_17();

  v29 = v91;
  if (v10)
  {
    goto LABEL_41;
  }

  v30 = sub_19757A894(v28);
  if ((v30 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (sub_19757A894(v30))
  {
    LOBYTE(v10) = a3;
    v45 = (v29)(&v80, a3, a4);
    OUTLINED_FUNCTION_6_16(v45, v46, v47, v48, v49, v50, v51, v52, v76, v77, v78, *(&v78 + 1), *&v79[0], *(&v79[0] + 1), *&v79[1], *(&v79[1] + 1), v80, v81[0], *&v81[1], SDWORD2(v81[1]), SWORD6(v81[1]), SBYTE14(v81[1]), v82, v83, v84, v85, v86, v87);
    if (*(&v87 + 1) != 0x7FFFFFFFFFFFFFFFLL)
    {
      (v29)(&v78, a3, a4);
      v80 = v78;
      v81[0] = v79[0];
      *(v81 + 15) = *(v79 + 15);
      sub_19756D1E8(&v80);
      sub_19757B3D0(*(&v81[0] + 1), v53, v54, v55, v56, v57);
    }
  }

  if (qword_1ED817578)
  {
    v58 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    LOBYTE(v10) = qword_1ED81D218;
    if (qword_1ED81D218)
    {
      v58 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      sub_1975A5740();
      if (v59)
      {
        v58 = v59;
      }

      else
      {
        v58 = 0xE000000000000000;
      }
    }
  }

  OUTLINED_FUNCTION_0_37();
  if (v17 && v58 == v63)
  {
  }

  else
  {
    OUTLINED_FUNCTION_5_21(v60, v61, v62, v63);
    OUTLINED_FUNCTION_9_17();

    if ((v10 & 1) == 0)
    {
      v65 = OUTLINED_FUNCTION_2_29();
      v10 = v91;
      v91(v65);
      sub_19756D1E8(&v80);
      sub_19757A938(LOBYTE(v81[0]));
      v66 = OUTLINED_FUNCTION_2_29();
      v10(v66);
      sub_19756D1E8(&v86);
      sub_19757AA08(v88);
    }
  }

  if (qword_1ED817578)
  {
    v67 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    LOBYTE(v10) = qword_1ED81D218;
    if (qword_1ED81D218)
    {
      v67 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      sub_1975A5740();
      if (v68)
      {
        v67 = v68;
      }

      else
      {
        v67 = 0xE000000000000000;
      }
    }
  }

  OUTLINED_FUNCTION_0_37();
  if (v17 && v67 == v72)
  {
  }

  else
  {
    OUTLINED_FUNCTION_5_21(v69, v70, v71, v72);
    OUTLINED_FUNCTION_9_17();

    if ((v10 & 1) == 0)
    {
      v75 = OUTLINED_FUNCTION_2_29();
      v91(v75);
      result = sub_19756D1E8(&v86);
      if (BYTE1(v87) == 1)
      {
        result = CoreTipRecord.status.getter();
        if (result == 2)
        {
          return sub_1975E9ADC(a1, v76, a3, a4);
        }
      }
    }
  }

  return result;
}

uint64_t sub_197579FB0(uint64_t a1, uint64_t a2)
{
  v11[7] = MEMORY[0x1E69E6158];
  v11[4] = a1;
  v11[5] = a2;
  sub_197568F10(a1);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_2_25(v5, v9);
  v7(v6);
  sub_19757A0A4(*v3, v3[1], 0x4449656C646E7562, 0xE800000000000000, v2, &v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return sub_19757A368(v10);
}

_OWORD *sub_19757A0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v9 = MEMORY[0x1E69E6158];
  v25 = MEMORY[0x1E69E6158];
  *&v24 = a1;
  *(&v24 + 1) = a2;
  v10 = *a6;
  v11 = sub_19755C610(a3, a4);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
  if ((sub_197616BF0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_19755C610(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_10:
    result = sub_1976170F0();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *a6;
  if (v14)
  {
    v18 = (v17[7] + 32 * v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return sub_19756A94C(&v24, v18);
  }

  else
  {
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v24, v9);
    MEMORY[0x1EEE9AC00](v20);
    v22 = (&v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    sub_1975E6610(v13, a3, a4, *v22, v22[1], v17);
    __swift_destroy_boxed_opaque_existential_0Tm(&v24);
  }
}

uint64_t sub_19757A27C(uint64_t a1)
{
  OUTLINED_FUNCTION_58(a1, MEMORY[0x1E69E6370]);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_5_20();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_2_25(v2, v11);
  v4(v3);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_48();
  sub_19757960C(v5, v6, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return OUTLINED_FUNCTION_57();
}

uint64_t sub_19757A368(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_0_35();
  v3 = sub_197560338(v1, v2);
  OUTLINED_FUNCTION_15_5(v3, v4, v5, v6, v7, v3, v8, v9, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_19757A448(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  sub_197615DF0();
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1, uint64_t a2)
{

  return sub_197615AE0();
}

uint64_t sub_19757A548(uint64_t a1)
{
  OUTLINED_FUNCTION_58(a1, MEMORY[0x1E69E6370]);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_2_25(v4, v8);
  v6(v5);
  sub_19757960C(*v2, 0x7669686372417369, 0xEA00000000006465, v1, &v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return sub_19757A368(v9);
}

uint64_t sub_19757A638(uint64_t a1)
{
  OUTLINED_FUNCTION_58(a1, MEMORY[0x1E69E6370]);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_5_20();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_2_25(v2, v11);
  v4(v3);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_48();
  sub_19757960C(v5, v6, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return OUTLINED_FUNCTION_57();
}

uint64_t sub_19757A708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_35();
  sub_197560338(v3, v4);
  OUTLINED_FUNCTION_43_2();
  sub_197615B10();
}

uint64_t sub_19757A7D8(uint64_t a1, __int16 a2, uint64_t a3)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_35();
  sub_197560338(v3, v4);
  sub_197615E70();
}

uint64_t sub_19757A894(uint64_t a1)
{
  sub_197568F10(a1);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_59();

  if (v12)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    result = OUTLINED_FUNCTION_31_5(v1, v2, v1, MEMORY[0x1E69E6370], v3, v4, v5, v6, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9), v11[0]);
    if (result)
    {
      return v10;
    }
  }

  else
  {
    sub_1975E62E4(v11, &qword_1EAF34698);
    return 0;
  }

  return result;
}

uint64_t sub_19757A938(uint64_t a1)
{
  OUTLINED_FUNCTION_58(a1, MEMORY[0x1E69E6370]);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_5_20();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_2_25(v2, v11);
  v4(v3);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_48();
  sub_19757960C(v5, v6, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return OUTLINED_FUNCTION_57();
}

uint64_t sub_19757AA08(uint64_t a1)
{
  OUTLINED_FUNCTION_58(a1, MEMORY[0x1E69E6370]);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_5_20();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_2_25(v2, v11);
  v4(v3);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_48();
  sub_19757960C(v5, v6, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return OUTLINED_FUNCTION_57();
}

void sub_19757AAD8(uint64_t a1)
{
  if (qword_1ED816AC0 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_1ED816AC0);
  }

  os_unfair_lock_lock(&dword_1ED816AC8);

  qword_1ED816AD0 = a1;

  os_unfair_lock_unlock(&dword_1ED816AC8);
}

unint64_t sub_19757AB48()
{
  result = qword_1ED8166B8;
  if (!qword_1ED8166B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355E8, &qword_197622438);
    sub_197603B4C();
    sub_197595A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8166B8);
  }

  return result;
}

uint64_t sub_19757ABD4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_19755FD88(&qword_1ED817148, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

uint64_t sub_19757AC88()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_1975D3B3C();
  *v0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_122()
{
}

uint64_t sub_19757AD60@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35080, &qword_19761EF78);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35088, &qword_19761EF80);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  sub_197559AAC(&qword_1ED816AD8, &qword_1EAF35080, &qword_19761EF78, MEMORY[0x1E6968DA8]);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  sub_197615810();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35090, &qword_19761EFB0);
  a4[4] = sub_19757B344();
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_197559AAC(&qword_1ED816AF8, &qword_1EAF35088, &qword_19761EF80, MEMORY[0x1E6968D58]);
  sub_197559AAC(&qword_1ED816D00, &qword_1EAF34AE8, &qword_19761B848, MEMORY[0x1E6968D20]);
  v17 = v21;
  sub_1976156F0();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_19757B0DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 32);
  v9(&v55, a5, a6);
  switch(v55)
  {
    case 1:
      v15 = OUTLINED_FUNCTION_1_26();
      v16(v15);
      v17 = OUTLINED_FUNCTION_2_20();
      v18(v17);
      v19 = OUTLINED_FUNCTION_0_28();
      v27 = sub_1975D4A84(v19, v20, v21, v22, v23, v24, v25, v26, v53);
      goto LABEL_6;
    case 2:
      v40 = OUTLINED_FUNCTION_1_26();
      v41(v40);
      v42 = OUTLINED_FUNCTION_2_20();
      v43(v42);
      v44 = OUTLINED_FUNCTION_0_28();
      v27 = sub_19758C6C8(v44, v45, v46, v47, v48, v49, v50, v51, v53);
      goto LABEL_6;
    case 4:
      v28 = OUTLINED_FUNCTION_1_26();
      v29(v28);
      v30 = OUTLINED_FUNCTION_2_20();
      v31(v30);
      v32 = OUTLINED_FUNCTION_0_28();
      v27 = sub_197572B8C(v32, v33, v34, v35, v36, v37, v38, v39, v53);
LABEL_6:
      if (!v6)
      {
        a1 = v27;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v54);

      break;
    default:
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000025, 0x8000000197624A50);
      v11 = OUTLINED_FUNCTION_1_26();
      v13 = v12(v11);
      MEMORY[0x19A8E2A50](v13);

      MEMORY[0x19A8E2A50](0x6F6765746163202CLL, 0xEC000000203A7972);
      v9(&v55, a5, a6);
      sub_1975D2EE0(v55);
      MEMORY[0x19A8E2A50](41, 0xE100000000000000);
      a1 = 0;
      sub_19759228C();
      swift_allocError();
      *v14 = 0;
      v14[1] = 0xE000000000000000;
      swift_willThrow();
      break;
  }

  return a1;
}

unint64_t sub_19757B344()
{
  result = qword_1ED816B10;
  if (!qword_1ED816B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35090, &qword_19761EFB0);
    sub_1975856E8();
    sub_197565874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B10);
  }

  return result;
}

void sub_19757B3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  v8 = v7;
  v10 = v9;
  v22 = MEMORY[0x1E69E6530];
  *&v21 = v11;
  v12 = sub_197568F10(v11);
  sub_19756A94C(&v21, &v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v12;
  __swift_mutable_project_boxed_opaque_existential_1(&v19, v20);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  v16 = OUTLINED_FUNCTION_15_9(v15);
  v17(v16);
  sub_19757B50C(*v6, v10, v8, isUniquelyReferenced_nonNull_native, &v18);
  __swift_destroy_boxed_opaque_existential_0Tm(&v19);
  sub_19757A368(v18);
  OUTLINED_FUNCTION_75();
}

void sub_19757B50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_43_3();
  v26[0] = v5;
  v6 = MEMORY[0x1E69E6530];
  v26[3] = MEMORY[0x1E69E6530];
  v8 = OUTLINED_FUNCTION_23_5(v5, v7);
  sub_19755C610(v8, v9);
  OUTLINED_FUNCTION_30();
  if (v11)
  {
    __break(1u);
LABEL_10:
    sub_1976170F0();
    __break(1u);
    return;
  }

  v12 = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
  if (OUTLINED_FUNCTION_35_3(v13))
  {
    v14 = OUTLINED_FUNCTION_22_7();
    sub_19755C610(v14, v15);
    OUTLINED_FUNCTION_42_2();
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  if (v12)
  {
    OUTLINED_FUNCTION_33_4();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v26, v6);
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_14();
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_6_0();
    v19 = OUTLINED_FUNCTION_15_9(v18);
    v20(v19);
    v21 = OUTLINED_FUNCTION_65();
    sub_1975E658C(v21, v22, v23, v24, v25);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  OUTLINED_FUNCTION_75();
}

unint64_t sub_19757B688(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34400, &qword_1976185C0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_19757B6F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34400, &qword_1976185C0);
    result = OUTLINED_FUNCTION_33_3(v3);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_19757B748(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34400, &qword_1976185C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19757B7B4()
{
  result = qword_1ED816CF8;
  if (!qword_1ED816CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34BB0, &qword_19761BAD0);
    sub_19757B688(&unk_1ED816C60);
    sub_19757B688(&unk_1ED816C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816CF8);
  }

  return result;
}

uint64_t CoreTipRecord.persistentBackingData.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_43_0(v1 + 24, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  sub_1975558C4(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_19757B8DC()
{
  OUTLINED_FUNCTION_25();
  sub_19756FC64(v0[18], v0[19]);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[17] = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_48(v1);

  return MEMORY[0x1EEE6D9C8](v3);
}

uint64_t sub_19757B964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13_19(a1, a2, a3);
  OUTLINED_FUNCTION_30();
  if (v6)
  {
    __break(1u);
LABEL_12:
    result = sub_1976170F0();
    __break(1u);
    return result;
  }

  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35580, &qword_197621F78);
  OUTLINED_FUNCTION_8_25();
  if (sub_197616BF0())
  {
    v8 = OUTLINED_FUNCTION_22();
    sub_19755C610(v8, v9);
    if ((v7 & 1) != (v10 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v7)
  {
    sub_197615F50();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_75();

    __asm { BRAA            X3, X16 }
  }

  v13 = OUTLINED_FUNCTION_12_8();
  sub_19757BBEC(v13, v14, a3, a1, v15);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_19757BAA0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_19_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_19757BB84()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 80);
  sub_197615C90();

  return MEMORY[0x1EEE6DFA0](sub_19757B8DC, v1, 0);
}

uint64_t sub_19757BBEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_197615F50();
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

uint64_t sub_19757BC9C()
{
  v1 = sub_197615580();
  if (!v1)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_7;
  }

  v2 = v1;
  strcpy((v0 + 88), "HistoryTokens");
  *(v0 + 102) = -4864;
  sub_1976169C0();
  sub_197586610(v2, (v0 + 56), v0 + 16);

  sub_197587DC0(v0 + 16);
  if (!*(v0 + 80))
  {
LABEL_7:
    v7 = &qword_1EAF34340;
    v8 = &unk_19761C8E0;
    v9 = v0 + 56;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35678, &qword_197622788);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    **(v0 + 112) = 0;
    goto LABEL_10;
  }

  v3 = *(v0 + 128);
  sub_197587E14(*(v0 + 104), v3);

  v4 = sub_197615F20();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  v6 = *(v0 + 128);
  if (EnumTagSinglePayload == 1)
  {
    v7 = &unk_1EAF35670;
    v8 = &unk_197622780;
    v9 = *(v0 + 128);
LABEL_8:
    sub_19755C404(v9, v7, v8);
    goto LABEL_9;
  }

  v12 = *(v0 + 112);
  *v12 = sub_197615F10();
  (*(*(v4 - 8) + 8))(v6, v4);
LABEL_10:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t CoreParameterRecord.valueData.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_13();
  v3 = sub_19755FD88(v2, v1, &protocol conformance descriptor for CoreParameterRecord);
  OUTLINED_FUNCTION_25_3(v3, v4, v5, v6, v7, v8, v9, v10, v0);

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_17();
  sub_19755FD88(v11, v1, v12);
  sub_197578BC8(&qword_1ED8166D8, sub_19756B608, MEMORY[0x1E69E7C88]);
  OUTLINED_FUNCTION_21_3();
  sub_197615E50();

  return v14;
}

uint64_t sub_19757BF8C()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreParameterRecord.valueData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_19757BFB8(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_13();
  v4 = sub_19755FD88(v3, v2, &protocol conformance descriptor for CoreParameterRecord);
  OUTLINED_FUNCTION_25_3(v4, v5, v6, v7, v8, v9, v10, v11, v1);

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_17();
  sub_19755FD88(v12, v2, v13);
  sub_197615E50();

  return v15;
}

uint64_t sub_19757C090()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreParameterRecord.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t CoreParameterRecord.valueData.setter(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  sub_19755FD88(v4, v5, &protocol conformance descriptor for CoreParameterRecord);
  sub_197615B10();
  sub_197576558(a1, a2);
}

uint64_t sub_19757C1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_19755FD88(&qword_1ED817148, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
  sub_197578BC8(&qword_1ED8166E0, sub_197580F18, MEMORY[0x1E69E7C70]);
  sub_197615E70();
}

uint64_t sub_19757C298()
{
  v0 = OUTLINED_FUNCTION_18_0();
  sub_19757C2FC(v0, v1);
  v2 = OUTLINED_FUNCTION_18_0();
  return CoreParameterRecord.valueData.setter(v2, v3);
}

uint64_t sub_19757C2D4()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreParameterRecord.valueData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_19757C2FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1975766B8(result, a2);
  }

  return result;
}

uint64_t sub_19757C310(uint64_t a1, uint64_t a2, unint64_t a3)
{

  sub_19757C2FC(a2, a3);
  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_19757C384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_23_5(a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  OUTLINED_FUNCTION_1_11();
  sub_1975D4F2C(a4);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_19757C4E8(uint64_t a1)
{
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D10, &unk_19761C4F0);
  OUTLINED_FUNCTION_0();
  v46 = v2;
  v47 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D18, &unk_19761CC40);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v43 - v8;
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v9 = qword_1ED817570;
    v10 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    if (qword_1ED81D218)
    {
      v9 = qword_1ED81D210;
      v10 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v11 = sub_1975A5740();
      if (v12)
      {
        v9 = v11;
      }

      else
      {
        v9 = 0;
      }

      if (v12)
      {
        v10 = v12;
      }

      else
      {
        v10 = 0xE000000000000000;
      }
    }
  }

  if (v9 == 0xD000000000000010 && 0x8000000197623CB0 == v10)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_21_3();
  v14 = sub_197616EF0();

  if (v14)
  {
    goto LABEL_46;
  }

  if (qword_1ED817578)
  {
    v15 = qword_1ED817570;
    v16 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    if (qword_1ED81D218)
    {
      v15 = qword_1ED81D210;
      v16 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v17 = sub_1975A5740();
      v15 = v18 ? v17 : 0;
      v16 = v18 ? v18 : 0xE000000000000000;
    }
  }

  if (v15 == 0x6C7070612E6D6F63 && v16 == 0xEF64737069742E65)
  {
LABEL_45:
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    v20 = sub_197616EF0();

    if (v20 & 1) == 0 && (sub_19756F1CC())
    {
      v21 = CoreParameterRecord.id.getter();
      v23 = v22;
      type metadata accessor for CoreRule();
      v24 = sub_19757536C();
      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v26 = *(v24 + 16);

        if (v26)
        {
          v27 = sub_19757536C();
          v43 = &v43;
          *(&v43 - 4) = MEMORY[0x1EEE9AC00](v27);
          *(&v43 - 3) = v21;
          *(&v43 - 2) = v23;
          v51 = type metadata accessor for CoreRuleRecord(0);
          v28 = v44;
          sub_197615AE0();

          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D20, &qword_19761C500);
          __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
          sub_19757D6D4(v28, v7);
          sub_19755FD88(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
          v30 = v45;
          v31 = sub_197615D90();
          MEMORY[0x1EEE9AC00](v31);
          OUTLINED_FUNCTION_3_1();
          swift_getKeyPath();
          v49 = 0;
          v50 = 1;
          OUTLINED_FUNCTION_14_1();

          MEMORY[0x1EEE9AC00](v32);
          OUTLINED_FUNCTION_3_1();
          swift_getKeyPath();
          v49 = 0;
          v50 = 1;
          OUTLINED_FUNCTION_14_1();

          OUTLINED_FUNCTION_21_0();
          MEMORY[0x1EEE9AC00](v33);
          OUTLINED_FUNCTION_3_1();
          swift_getKeyPath();
          LOBYTE(v49) = 0;
          OUTLINED_FUNCTION_14_1();

          OUTLINED_FUNCTION_21_0();
          MEMORY[0x1EEE9AC00](v34);
          OUTLINED_FUNCTION_3_1();
          KeyPath = swift_getKeyPath();
          OUTLINED_FUNCTION_8_8(KeyPath);

          OUTLINED_FUNCTION_21_0();
          MEMORY[0x1EEE9AC00](v36);
          OUTLINED_FUNCTION_3_1();
          v37 = swift_getKeyPath();
          OUTLINED_FUNCTION_8_8(v37);

          OUTLINED_FUNCTION_21_0();
          MEMORY[0x1EEE9AC00](v38);
          OUTLINED_FUNCTION_3_1();
          v39 = swift_getKeyPath();
          OUTLINED_FUNCTION_8_8(v39);

          v40 = sub_197615C80();
          (*(v46 + 8))(v30, v47);
          sub_19757DD14(v28);
          return v40;
        }
      }

      else
      {
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

LABEL_46:
  v41 = CoreParameterRecord.rules.getter();
  if (v41)
  {
    return v41;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

__n128 sub_19757CB6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19757CBC8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_27_3(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BB0, &qword_19761BAD0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350C0, &qword_19761F008);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350C8, &qword_19761F010);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350D0, &qword_19761F018);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35080, &qword_19761EF78);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35088, &qword_19761EF80);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346F0, &qword_1976192E8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350D8, &qword_19761F020);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_3(v11, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34730, &qword_197619350);
  OUTLINED_FUNCTION_32_3();
  sub_197615810();
  OUTLINED_FUNCTION_1_11();
  v13 = sub_1975D4F2C(v12);
  OUTLINED_FUNCTION_25_4(v13);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_20_6(KeyPath);

  v15 = OUTLINED_FUNCTION_16_8();
  v16(v15);
  OUTLINED_FUNCTION_3_21();
  sub_1975D4F2C(v17);
  OUTLINED_FUNCTION_7_12();
  sub_1975D4F2C(v18);
  OUTLINED_FUNCTION_5_15();
  sub_1975D4F2C(v19);
  OUTLINED_FUNCTION_9_11();
  v20 = OUTLINED_FUNCTION_24_5();
  v21(v20);
  v22 = OUTLINED_FUNCTION_22_6();
  v23(v22);
  OUTLINED_FUNCTION_26_5();
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_19_5(v24);

  v25 = OUTLINED_FUNCTION_17_7();
  v26(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D78, &qword_19761CE28);
  type metadata accessor for CoreParameterRecord(0);
  sub_1975D4F2C(&unk_1ED816118);
  v48 = sub_1975D4F2C(&qword_1ED8166F8);
  OUTLINED_FUNCTION_12_11(v48, v27, v28, v29, v30, v31, MEMORY[0x1E69E6158]);
  v32 = OUTLINED_FUNCTION_21_6();
  v33(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  OUTLINED_FUNCTION_32_3();
  sub_197615810();
  OUTLINED_FUNCTION_3_0();
  sub_1975D4F2C(v34);
  sub_1975D4F2C(&qword_1ED816CF0);
  v35 = OUTLINED_FUNCTION_10_12(&qword_1ED816C68);
  OUTLINED_FUNCTION_11_11(v35);
  v36 = OUTLINED_FUNCTION_29_3();
  v37(v36);
  v38 = OUTLINED_FUNCTION_28_3();
  v39(v38);
  v50[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF350E0, &qword_19761F078);
  v50[4] = sub_19757D928(&unk_1ED816148);
  __swift_allocate_boxed_opaque_existential_0(v50);
  OUTLINED_FUNCTION_4_24();
  sub_1975D4F2C(v40);
  OUTLINED_FUNCTION_3_23();
  v42 = sub_1975D4F2C(v41);
  OUTLINED_FUNCTION_13_10(v42);
  v43 = OUTLINED_FUNCTION_31_3();
  v44(v43);
  v45 = OUTLINED_FUNCTION_30_5();
  return v46(v45);
}

uint64_t sub_19757D2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v38 - v16;
  v18 = sub_197615F50();
  (*(*(v18 - 8) + 16))(v17, a1, v18);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  v39 = a4;
  sub_197573F00();
  v20 = v19;
  sub_19756E748(v17);
  if (v20)
  {
    v40 = a2;
    if (qword_1ED816C98 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v21, qword_1ED816CA0);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0x6574656D61726150, 0xEE00203A64692872);
    v22 = (*(*(a7 + 16) + 16))(a5);
    v38 = a7;
    MEMORY[0x19A8E2A50](v22);

    MEMORY[0x19A8E2A50](0x6974616470752029, 0xEF203A6F7420676ELL);
    v23 = v41;
    sub_197616EB0();
    sub_197558864(v42, v43, v24);

    KeyPath = swift_getKeyPath();
    v26 = v44;
    v27 = sub_19756EF78(a3, v23, a9);
    if (v26)
    {
    }

    else
    {
      v34 = v27;
      v35 = v28;
      v36 = v38;
      sub_19757C310(KeyPath, v27, v28);

      sub_197567790(v34, v35);
      v37 = sub_19757C4E8(v39);
      type metadata accessor for CoreRuleRecord(0);
      sub_19757DCCC(v37, v40, a5, v36);

      if (sub_197615C20())
      {
        sub_197615C70();
      }
    }
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_197616A20();

    v42 = 0xD00000000000002FLL;
    v43 = 0x8000000197624720;
    v29 = (*(*(a7 + 16) + 16))(a5);
    MEMORY[0x19A8E2A50](v29);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v30 = v42;
    v31 = v43;
    sub_19759228C();
    swift_allocError();
    *v32 = v30;
    v32[1] = v31;
    return swift_willThrow();
  }
}

uint64_t sub_19757D6D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D18, &unk_19761CC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19757D744(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_23_5(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    sub_19757B7B4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_19757D7C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    sub_197569AA4(&qword_1ED8164B8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_19757D854()
{
  result = qword_1ED816140;
  if (!qword_1ED816140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF350C8, &qword_19761F010);
    sub_1975D4E9C(&unk_1ED816120);
    sub_197565B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816140);
  }

  return result;
}

unint64_t sub_19757D928(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_23_5(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    sub_19757D9A4();
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_19757D9A4()
{
  result = qword_1ED816210;
  if (!qword_1ED816210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF350D8, &qword_19761F020);
    sub_19757DAB0();
    sub_1975D4E9C(&qword_1ED816B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816210);
  }

  return result;
}

unint64_t sub_19757DA48(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34730, &qword_197619350);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_19757DAB0()
{
  result = qword_1ED816290;
  if (!qword_1ED816290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF346F0, &qword_1976192E8);
    sub_19757DA48(&unk_1ED816220);
    sub_19757DA48(&unk_1ED816230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816290);
  }

  return result;
}

uint64_t sub_19757DB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_197576674();
  if (result)
  {
    if (CoreTipRecord.status.getter() != 2)
    {
      v9 = *(a4 + 16);
      v11[3] = a3;
      v11[4] = v9;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
      (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);
      sub_197576D20(v11);
      if (v4)
      {

        return sub_19755C404(v11, &qword_1EAF350B8, &qword_19761F000);
      }

      sub_19755C404(v11, &qword_1EAF350B8, &qword_19761F000);
      sub_197577F90();
    }
  }

  return result;
}

uint64_t sub_19757DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a2;
  return sub_197576710(sub_19757DCAC, v5, a1);
}

uint64_t sub_19757DD14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D18, &unk_19761CC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CoreTipRecord.id.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_41_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_27();
  sub_197560338(v19, v18);
  sub_197615B20();

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_33();
  sub_197560338(v20, v18);
  OUTLINED_FUNCTION_40_1();
  sub_197615E50();

  OUTLINED_FUNCTION_38_1();
}

void sub_19757DE80(uint64_t a1)
{
  sub_197575EE4(a1, &v33);
  if (!v34)
  {
    OUTLINED_FUNCTION_17_10(a1);
    OUTLINED_FUNCTION_17_10(&v33);
    return;
  }

  sub_1975558C4(&v33, v35);
  v3 = v36;
  v4 = v37;
  __swift_project_boxed_opaque_existential_1Tm(v35, v36);
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v9 = OUTLINED_FUNCTION_9_13(v8);
  v10(v9);
  OUTLINED_FUNCTION_1_24();
  if ((sub_197616900() & 1) == 0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_0_26();
  if (sub_1976168F0() <= 64)
  {
    goto LABEL_16;
  }

  *&v33 = 0x8000000000000000;
  v11 = v3;
  OUTLINED_FUNCTION_1_24();
  if (sub_197616900())
  {
    OUTLINED_FUNCTION_0_26();
    v12 = sub_1976168F0();
    if (v12 < 64)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v11 = v3;
  OUTLINED_FUNCTION_1_24();
  v13 = sub_197616900();
  OUTLINED_FUNCTION_0_26();
  v12 = sub_1976168F0();
  if (v13)
  {
    if (v12 > 64)
    {
LABEL_10:
      MEMORY[0x1EEE9AC00](v12);
      OUTLINED_FUNCTION_2_1();
      v16 = v14 - v15;
      v17 = sub_1975C98C8();
      OUTLINED_FUNCTION_7_15(&v33, MEMORY[0x1E69E6530], v17);
      OUTLINED_FUNCTION_5_19();
      sub_197616180();
      OUTLINED_FUNCTION_3_17();
      v18(v16, v3);
      if ((v11 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_27:
      __break(1u);
      return;
    }

    v19 = *(*(v4 + 24) + 16);
    v20 = OUTLINED_FUNCTION_14_7();
    v32[3] = v32;
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_11();
    MEMORY[0x1EEE9AC00](v21);
    swift_getAssociatedConformanceWitness();
    v22 = OUTLINED_FUNCTION_15_8(&unk_19761D080);
    v32[2] = v32;
    MEMORY[0x1EEE9AC00](v22);
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_5_19();
    sub_197616180();
    OUTLINED_FUNCTION_3_17();
    v23(v20, v3);
    OUTLINED_FUNCTION_13_13();
    if (v19)
    {
      goto LABEL_27;
    }

LABEL_15:
    OUTLINED_FUNCTION_0_26();
    sub_1976168E0();
    goto LABEL_16;
  }

  if (v12 < 64)
  {
    goto LABEL_15;
  }

LABEL_16:
  OUTLINED_FUNCTION_0_26();
  if (sub_1976168F0() <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    *&v33 = 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_1_24();
    v24 = sub_197616900();
    OUTLINED_FUNCTION_0_26();
    v25 = sub_1976168F0();
    if ((v24 & 1) == 0)
    {
      break;
    }

    if (v25 < 65)
    {
      goto LABEL_25;
    }

LABEL_19:
    MEMORY[0x1EEE9AC00](v25);
    OUTLINED_FUNCTION_2_1();
    v28 = v26 - v27;
    v29 = sub_1975C98C8();
    OUTLINED_FUNCTION_7_15(&v33, MEMORY[0x1E69E6530], v29);
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_3_17();
    v30(v28, v3);
    if (v3)
    {
      __break(1u);
LABEL_21:
      OUTLINED_FUNCTION_0_26();
      if (sub_1976168F0() == 64)
      {
        OUTLINED_FUNCTION_1_24();
        if ((sub_197616900() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_26;
  }

  if (v25 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  OUTLINED_FUNCTION_0_26();
  sub_1976168E0();
LABEL_26:
  OUTLINED_FUNCTION_0_26();
  v31 = sub_1976168E0();
  sub_19755C7C8(a1, &qword_1EAF34D98, &qword_197620A90);
  (*(v6 + 8))(v1, v3);
  CoreTip.InvalidationReason.init(rawValue:)(v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

uint64_t CoreTipRecord.invalidationReason.getter()
{
  v0 = sub_19757E2E4();
  v3 = MEMORY[0x1E69E7290];
  v4 = sub_197575F54();
  v2[0] = v0;
  sub_19757DE80(v2);
  if (result == 10)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_19757E2F0()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_19757E2E4();
  *v0 = result;
  return result;
}

uint64_t sub_19757E36C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v27 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = sub_197615A60();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_19757E800(v12);
  if (result)
  {
    sub_19757E684(v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      v16 = v9;
      return sub_19758BC6C(v16);
    }

    (*(v11 + 32))(v14, v9, v10);
    sub_1975E5C70(v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v10) != 1)
    {
      (*(v11 + 8))(v14, v10);
      v16 = v7;
      return sub_19758BC6C(v16);
    }

    sub_19758BC6C(v7);
    sub_197615A00();
    *&v18 = -v17;
    v27 = v18;
    v19 = Double.seconds.getter(*&v18);
    sub_1975877EC(v19);
    sub_197617290();
    sub_1976172B0();
    if (qword_1ED817510 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = sub_1976172A0();
    if ((v20 & 1) == 0)
    {
      v21 = sub_1975E5838(v20);
      sub_1975A4658(v0, v14, v21);
      _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v10);
      sub_1975E5DE4(v4, v22, v23, v24, v25, v26);
    }

    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_19757E684@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_41_2();
  sub_197568F10(v5);
  sub_197579604();

  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    v6 = sub_197615A60();
    v7 = OUTLINED_FUNCTION_44(v6);
    OUTLINED_FUNCTION_12_13(v1, v7 ^ 1u);
    if (!v8)
    {
      OUTLINED_FUNCTION_18();
      v9 = OUTLINED_FUNCTION_18_0();
      v10(v9);
      return OUTLINED_FUNCTION_70();
    }
  }

  else
  {
    sub_1975E62E4(v16, &qword_1EAF34698);
    v12 = sub_197615A60();
    OUTLINED_FUNCTION_36();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  }

  sub_197615A60();
  result = OUTLINED_FUNCTION_12_13(a1, 1);
  if (!v8)
  {
    return sub_1975E62E4(v1, &qword_1EAF34988);
  }

  return result;
}

uint64_t sub_19757E800(uint64_t a1)
{
  sub_197568F10(a1);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_59();

  if (v12)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (OUTLINED_FUNCTION_31_5(v1, v2, v1, MEMORY[0x1E69E6370], v3, v4, v5, v6, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9), v11[0]))
    {
      return v10;
    }
  }

  else
  {
    sub_1975E62E4(v11, &qword_1EAF34698);
  }

  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_1ED817581;
}

uint64_t OUTLINED_FUNCTION_61(uint64_t a1, uint64_t a2)
{

  return sub_197615AE0();
}

unint64_t sub_19757E914(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 2 * result) = a4;
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

uint64_t sub_19757EA44()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreTipRecord.rules.getter();
  *v0 = result;
  return result;
}

void sub_19757EA70()
{
  OUTLINED_FUNCTION_9_22();
  v2 = v1;
  OUTLINED_FUNCTION_13_19(v1, v3, v4);
  OUTLINED_FUNCTION_30();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_1976170F0();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35570, &unk_197621F60);
  OUTLINED_FUNCTION_8_25();
  if (sub_197616BF0())
  {
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_15_14();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  if (v9)
  {
    *(*(*v0 + 56) + 2 * v8) = v2;
    OUTLINED_FUNCTION_75();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_16_15();
    sub_19757E914(v12, v13, v14, v2, v15);
    OUTLINED_FUNCTION_75();
  }
}

uint64_t CoreTipRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v1 = OBJC_IVAR____TtC10TipKitCore13CoreTipRecord___observationRegistrar;
  sub_197615B40();
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(&v0[v1]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void sub_19757EBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v7 = sub_197559B4C(&qword_1ED816D40, &dword_1ED816B38, &qword_1ED816B40, sub_19758BCD4);
  swift_isUniquelyReferenced_nonNull_native();
  sub_19757EA70();
  sub_19755A4E0(v7, &qword_1ED816D40, &dword_1ED816B38, &qword_1ED816B40, sub_19758BCD4);
  v8 = sub_197559B4C(&qword_1ED816D38, &dword_1ED816CC0, &qword_1ED816CC8, sub_19756EA18);
  if (v6 == 1)
  {
    sub_19755C610(a1, a2);
    if (v9)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35280, &qword_1976204D8);
      sub_197616BF0();

      sub_197616C10();
    }
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1975FCBA0();
  }

  sub_19755A4E0(v8, &qword_1ED816D38, &dword_1ED816CC0, &qword_1ED816CC8, sub_19756EA18);
}

unint64_t CoreTip.InvalidationReason.init(rawValue:)(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

char *CoreTip.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  swift_unownedRelease();
  v1 = v0 + OBJC_IVAR____TtC10TipKitCore7CoreTip__firstEligible;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34990, &qword_19761B1D0);
  sub_19755C7C8(v1 + *(v2 + 28), &qword_1EAF34988, &qword_197620CA0);
  sub_19755C7C8(v0 + OBJC_IVAR____TtC10TipKitCore7CoreTip__constellationContent + 8, &qword_1EAF34728, &qword_197619348);
  v3 = OBJC_IVAR____TtC10TipKitCore7CoreTip___observationRegistrar;
  sub_197615B40();
  OUTLINED_FUNCTION_13();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

void sub_19757EEC4()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_50(v3, v4, v5, v6, v7, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27_8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  v12 = OUTLINED_FUNCTION_5_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_103();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_107();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30_0();
  sub_197615F50();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_11_20();
  v17 = OUTLINED_FUNCTION_29_5();
  sub_19755F9A0(v17, v18, &qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_45_0(v2);
  if (v19)
  {
    sub_19755C7C8(v2, &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_48_0();
    v21(v20);
    type metadata accessor for CoreTipRecord(0);
    OUTLINED_FUNCTION_8_26();
    sub_19755FF88(v22, 255, v23, &protocol conformance descriptor for CoreTipRecord);
    OUTLINED_FUNCTION_33_6();
    if (sub_197615C00())
    {
      v32 = OUTLINED_FUNCTION_25_9();
      v33(v32);
    }

    else
    {
      OUTLINED_FUNCTION_105(0, v25, v26, v27, v28, v29, v30, v31, v53);
      MEMORY[0x1EEE9AC00](v34);
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_61(v35, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
      v41 = sub_19755F9A0(v1, v0, &qword_1EAF346D8, &unk_197619120);
      OUTLINED_FUNCTION_88(v41, MEMORY[0x1E69E7CC0]);
      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v42);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v43);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_21_12(v54);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_20_11(v55);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v45);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v46);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();

      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_47_0();
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_3_1();
      swift_getKeyPath();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_33_6();
      v50 = sub_197615C80();
      v51 = OUTLINED_FUNCTION_15_15();
      v52(v51);
      sub_19758761C(v50);
      OUTLINED_FUNCTION_122();
      sub_19755C7C8(v1, &qword_1EAF346D8, &unk_197619120);
      v48 = OUTLINED_FUNCTION_25_9();
      v49(v48);
      OUTLINED_FUNCTION_94();
    }
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_9();
}

uint64_t sub_19757F3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 49);
  v10 = *(v4 + 56);
  v11 = *(v4 + 64);
  v12 = *(v4 + 72);
  if (sub_19757F524(a1, a2, v12) || sub_19757F524(a3, a4, v12))
  {
    return 1;
  }

  if (sub_19757F524(a1, a2, v10))
  {
    return 0;
  }

  v14 = sub_19757F524(a3, a4, v10);
  if (v9)
  {
    v15 = 0;
  }

  else
  {
    v15 = 4;
  }

  if (v11)
  {
    v15 = 1;
  }

  if (v14)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

double sub_19757F490(uint64_t a1)
{
  sub_197568F10(a1);
  v1 = OUTLINED_FUNCTION_28_5();
  v2 = OUTLINED_FUNCTION_45(v1);
  OUTLINED_FUNCTION_73(v2, v3);

  if (v10)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (OUTLINED_FUNCTION_38_2(v4, v5, v4, MEMORY[0x1E69E63B0], v6))
    {
      return v8;
    }
  }

  else
  {
    sub_1975E62E4(v9, &qword_1EAF34698);
  }

  return 0.0;
}

BOOL sub_19757F524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_197617190();
  sub_197616260();
  v6 = sub_1976171F0();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_197616EF0();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_44_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1976156F0();
}

uint64_t sub_19757F670()
{
  os_unfair_lock_lock((v0 + 120));
  v1 = *(v0 + 128);
  os_unfair_lock_unlock((v0 + 120));
  return v1;
}

uint64_t sub_19757F6B4(uint64_t a1)
{
  sub_197568F10(a1);
  OUTLINED_FUNCTION_73(0x6C7073694478616DLL, 0xEF746E756F437961);

  if (v7)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (OUTLINED_FUNCTION_38_2(v1, v2, v1, MEMORY[0x1E69E6530], v3))
    {
      return v5;
    }
  }

  else
  {
    sub_1975E62E4(v6, &qword_1EAF34698);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t CoreTip.debugOverrideStatus.getter()
{
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  OUTLINED_FUNCTION_10(&qword_1ED817518, v8);
  memcpy(__dst, &qword_1ED817518, 0x6AuLL);
  memcpy(__src, &qword_1ED817518, sizeof(__src));
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  v4 = v0[10];
  sub_19757FBA0(__dst, v10);
  v5 = sub_19757F3C4(v1, v2, v3, v4);
  memcpy(v10, __src, 0x6AuLL);
  sub_19757FB70(v10);
  return v5;
}

uint64_t sub_19757F834()
{
  v1 = v0;
  v2 = sub_197580E74();
  if (*(v2 + 16) && (v3 = sub_19755C610(*(v1 + 16), *(v1 + 24)), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 2 * v3);
  }

  else
  {
    v5 = 4;
  }

  return v5;
}

uint64_t sub_19757F988()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_19757F8B8(v1);
  *v0 = result;
  return result;
}

uint64_t sub_19757F9B4(uint64_t a1)
{
  sub_197568F10(a1);
  sub_197579604();

  if (v12)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    result = OUTLINED_FUNCTION_31_5(v1, v2, v1, MEMORY[0x1E69E6370], v3, v4, v5, v6, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9), v11[0]);
    if (result)
    {
      return v10;
    }
  }

  else
  {
    sub_1975E62E4(v11, &qword_1EAF34698);
    return 0;
  }

  return result;
}

double CoreTip.displayDuration.getter()
{
  OUTLINED_FUNCTION_13_11(OBJC_IVAR____TtC10TipKitCore7CoreTip__displayDuration);
  v1 = *(v0 + 8);
  os_unfair_lock_unlock(v0);
  return v1;
}

double OUTLINED_FUNCTION_59()
{

  return sub_197579604();
}

uint64_t OUTLINED_FUNCTION_125()
{
  *(v0 - 104) = *(v0 - 152);
}

uint64_t CoreTip.isHidden.getter()
{
  os_unfair_lock_lock((v0 + 108));
  v1 = *(v0 + 112);
  os_unfair_lock_unlock((v0 + 108));
  return v1;
}

void sub_19757FB1C(uint64_t a1, char a2)
{
  os_unfair_lock_lock((v2 + 120));
  *(v2 + 128) = a1;
  *(v2 + 136) = a2 & 1;

  os_unfair_lock_unlock((v2 + 120));
}

uint64_t sub_19757FBD8()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreParameterRecord.valueType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_19757FC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_22();
  return a5(v6);
}

uint64_t sub_19757FC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  sub_19755FD88(v4, v5, &protocol conformance descriptor for CoreParameterRecord);
  sub_197615B10();
}

uint64_t sub_19757FD24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_setAtReferenceWritableKeyPath();
}

uint64_t CoreTip.__deallocating_deinit()
{
  CoreTip.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_19757FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  sub_19755FD88(v4, v5, &protocol conformance descriptor for CoreParameterRecord);
  sub_197615E70();
}

uint64_t sub_19757FEE4(void *(*a1)(uint64_t *__return_ptr, uint64_t))
{
  a1(&v4, v1);
  if (v2)
  {
    return sub_197615C90();
  }

  sub_197615C90();
  return v4;
}

uint64_t sub_19757FF44()
{
  v0 = sub_197615A60();
  __swift_allocate_value_buffer(v0, qword_1ED816490);
  __swift_project_value_buffer(v0, qword_1ED816490);
  return sub_197615A10();
}

uint64_t sub_19757FF94()
{
  v1 = v0;
  v2 = sub_197615A60();
  OUTLINED_FUNCTION_14();
  v62 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v61 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35138, &qword_19761F2F8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v12 = OUTLINED_FUNCTION_5_2(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v59[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v59[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v59[-v20];
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  v65 = v2;
  OUTLINED_FUNCTION_10(&qword_1ED817518, v69);
  if (qword_1ED817578)
  {
    v22 = qword_1ED817570;
    v23 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    if (qword_1ED81D218)
    {
      v22 = qword_1ED81D210;
      v23 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v24 = sub_1975A5740();
      if (v25)
      {
        v22 = v24;
      }

      else
      {
        v22 = 0;
      }

      if (v25)
      {
        v23 = v25;
      }

      else
      {
        v23 = 0xE000000000000000;
      }
    }
  }

  OUTLINED_FUNCTION_3_24();
  if (v22 == v27 && v23 == v26)
  {
  }

  v29 = sub_197616EF0();

  if (v29)
  {
    return result;
  }

  v31 = v1[8];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v1[7]);
  v32 = OUTLINED_FUNCTION_42();
  v33(v32, v31);
  result = sub_19756D1E8(v68);
  if (v68[46] != 1)
  {
    return result;
  }

  sub_19758117C(v21);
  sub_19757E684(v19);
  v34 = *(v7 + 48);
  sub_19758110C(v21, v10);
  sub_19758110C(v19, &v10[v34]);
  v35 = v65;
  if (__swift_getEnumTagSinglePayload(v10, 1, v65) == 1)
  {
    OUTLINED_FUNCTION_14_4(v19);
    OUTLINED_FUNCTION_14_4(v21);
    if (__swift_getEnumTagSinglePayload(&v10[v34], 1, v35) == 1)
    {
      sub_19755C7C8(v10, &qword_1EAF34988, &qword_197620CA0);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v36 = v64;
  sub_19758110C(v10, v64);
  if (__swift_getEnumTagSinglePayload(&v10[v34], 1, v35) == 1)
  {
    OUTLINED_FUNCTION_14_4(v19);
    OUTLINED_FUNCTION_14_4(v21);
    (*(v62 + 8))(v36, v35);
LABEL_29:
    sub_19755C7C8(v10, &qword_1EAF35138, &qword_19761F2F8);
LABEL_30:
    v37 = v63;
    sub_19757E684(v63);
    sub_197587A7C(v37);
    goto LABEL_31;
  }

  v49 = v62;
  v50 = &v10[v34];
  v51 = v61;
  (*(v62 + 32))(v61, v50, v35);
  sub_19756D0F0(&qword_1ED8167B8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v60 = sub_1976161A0();
  v52 = *(v49 + 8);
  v52(v51, v35);
  sub_19755C7C8(v19, &qword_1EAF34988, &qword_197620CA0);
  sub_19755C7C8(v21, &qword_1EAF34988, &qword_197620CA0);
  v52(v64, v35);
  sub_19755C7C8(v10, &qword_1EAF34988, &qword_197620CA0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  v38 = sub_19757F670();
  v40 = v39;
  v41 = sub_1975785C8(v38);
  if ((v40 & 1) != 0 || v38 != v41)
  {
    v42 = sub_1975785C8(v41);
    sub_19757FB1C(v42, 0);
  }

  v43 = CoreTip.displayDuration.getter();
  if (v43 < sub_19757F490(v44))
  {
    v46 = sub_19757F490(v45);
    sub_1975D53DC(v46);
  }

  sub_197580A98(v66);
  v47 = LOBYTE(v66[0]);
  v48 = HIBYTE(v66[0]);
  result = CoreTip.status.getter(v66);
  if (v47 == LOBYTE(v66[0]))
  {
    if (v48 == 10)
    {
      if (HIBYTE(v66[0]) == 10)
      {
        return result;
      }
    }

    else if (HIBYTE(v66[0]) != 10 && v48 == HIBYTE(v66[0]))
    {
      return result;
    }
  }

  if (v47 == 1)
  {
    v54 = v1[8];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v1[7]);
    v55 = OUTLINED_FUNCTION_42();
    v56(v55, v54);
    sub_19756D1E8(v66);
    if (v67 == 1)
    {
      v57 = CoreTip.constellationContent.getter();
      if (v57)
      {
      }

      else
      {
        v58 = CoreTipRecord.content.getter();
        sub_1975D5390(v58);
      }
    }
  }

  result = CoreTip.status.getter(v66);
  if (v47 != LOBYTE(v66[0]))
  {
    LOBYTE(v66[0]) = v47;
    HIBYTE(v66[0]) = v48;
    return sub_197582FAC(v66);
  }

  return result;
}

uint64_t sub_197580628(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v4 = OUTLINED_FUNCTION_5_2(v3);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_197615F50();
  OUTLINED_FUNCTION_14();
  v31 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v15 = v14 - v13;
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  OUTLINED_FUNCTION_10(&qword_1ED817518, v35);
  if (qword_1ED817578)
  {
    v16 = qword_1ED817570;
    v17 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    if (qword_1ED81D218)
    {
      v16 = qword_1ED81D210;
      v17 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v18 = sub_1975A5740();
      if (v19)
      {
        v16 = v18;
      }

      else
      {
        v16 = 0;
      }

      if (v19)
      {
        v17 = v19;
      }

      else
      {
        v17 = 0xE000000000000000;
      }
    }
  }

  OUTLINED_FUNCTION_3_24();
  if (v16 == v21 && v17 == v20)
  {
  }

  else
  {
    v23 = sub_197616EF0();

    if ((v23 & 1) == 0)
    {
      v25 = v2[7];
      v26 = v2[8];
      __swift_project_boxed_opaque_existential_1Tm(v2 + 4, v25);
      (*(v26 + 72))(v33, v25, v26);
      result = sub_19756D1E8(v33);
      if (v34 == 1)
      {
        static CoreTip.modelIdentifiers.getter();
        sub_19756E674();

        if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
        {
          return sub_19755C7C8(v9, &qword_1EAF34AB8, &qword_197622080);
        }

        else
        {
          v27 = v31;
          (*(v31 + 32))(v15, v9, v10);
          (*(v27 + 16))(v7, v15, v10);
          __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
          sub_19757EEC4();
          v29 = v28;
          sub_19755C7C8(v7, &qword_1EAF34AB8, &qword_197622080);
          if (v29)
          {
            sub_19757FF94();
          }

          return (*(v27 + 8))(v15, v10);
        }
      }
    }
  }

  return result;
}

uint64_t sub_197580A80(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_197580A98@<X0>(char *a1@<X8>)
{
  result = sub_19757F834();
  if (result == 4)
  {
    v3 = 2563;
LABEL_8:
    *a1 = v3;
    return result;
  }

  v4 = result;
  if (CoreTip.isHidden.getter())
  {
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
    }

    v5 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v5, qword_1ED816CA0);
    OUTLINED_FUNCTION_5_17();
    sub_197616A20();

    v39 = 0x203A646928706954;
    v40 = 0xE800000000000000;
    OUTLINED_FUNCTION_28_4();
    v6 = 0x6469682073692029;
    v7 = 0xEB000000006E6564;
    goto LABEL_7;
  }

  v16 = CoreTip.debugOverrideStatus.getter();
  if (v16 == 4)
  {
    if (v4 == 1)
    {
      if (sub_1975DBACC() == 2)
      {
        if (sub_1975828F8() == 2)
        {
          if (sub_197582D64() != 2)
          {
            if (qword_1ED816C98 != -1)
            {
              OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
            }

            v26 = type metadata accessor for logger(0);
            __swift_project_value_buffer(v26, qword_1ED816CA0);
            OUTLINED_FUNCTION_5_17();
            sub_197616A20();
            OUTLINED_FUNCTION_14_5();
            OUTLINED_FUNCTION_2_22();
            OUTLINED_FUNCTION_29_4();
            OUTLINED_FUNCTION_28_4();
            OUTLINED_FUNCTION_17_8();
            v29 = MEMORY[0x19A8E2A50](v27 + 26, v28 | 0x8000000000000000);
            OUTLINED_FUNCTION_25_5(v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);

            v3 = 2050;
            goto LABEL_8;
          }

          goto LABEL_14;
        }

        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
        }

        v24 = type metadata accessor for logger(0);
        __swift_project_value_buffer(v24, qword_1ED816CA0);
        OUTLINED_FUNCTION_5_17();
        sub_197616A20();
        OUTLINED_FUNCTION_14_5();
        OUTLINED_FUNCTION_2_22();
        OUTLINED_FUNCTION_29_4();
        OUTLINED_FUNCTION_28_4();
        OUTLINED_FUNCTION_17_8();
        v6 = v25 + 22;
      }

      else
      {
        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
        }

        v21 = type metadata accessor for logger(0);
        __swift_project_value_buffer(v21, qword_1ED816CA0);
        OUTLINED_FUNCTION_5_17();
        sub_197616A20();
        OUTLINED_FUNCTION_14_5();
        OUTLINED_FUNCTION_2_22();
        OUTLINED_FUNCTION_29_4();
        OUTLINED_FUNCTION_28_4();
        OUTLINED_FUNCTION_17_8();
        v6 = v23 + 24;
      }

      v7 = v22 | 0x8000000000000000;
LABEL_7:
      v8 = MEMORY[0x19A8E2A50](v6, v7);
      OUTLINED_FUNCTION_25_5(v8, v9, v10, v11, v12, v13, v14, v15, v37, v38, v39, v40);

      v3 = 2560;
      goto LABEL_8;
    }

LABEL_14:
    v17 = sub_197580E94();

    return sub_19756D370(v4, v17, a1);
  }

  v18 = v16;
  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1ED816C98);
  }

  v19 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v19, qword_1ED816CA0);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x19A8E2A50](0xD000000000000017);
  sub_197616BC0();
  sub_197558864(v39, v40, v20);

  *a1 = v18;
  a1[1] = 10;
  return result;
}

uint64_t sub_197580E34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_197580E94()
{
  v1 = v0;
  v2 = sub_197580E74();
  if (*(v2 + 16) && (v3 = sub_19755C610(*(v1 + 16), *(v1 + 24)), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 2 * v3 + 1);
  }

  else
  {
    v5 = 10;
  }

  return v5;
}

unint64_t sub_197580F18()
{
  result = qword_1ED816B50;
  if (!qword_1ED816B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B50);
  }

  return result;
}

uint64_t sub_197580F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_19755C610(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t CoreTip.presentationStyle.getter()
{
  os_unfair_lock_lock((v0 + 100));
  v1 = *(v0 + 104);
  os_unfair_lock_unlock((v0 + 100));
  return v1;
}

uint64_t sub_197580FF0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197604DD8, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v7();
  }
}

uint64_t sub_19758110C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19758117C(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_15_7(OBJC_IVAR____TtC10TipKitCore7CoreTip__firstEligible);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34990, &qword_19761B1D0);
  sub_19758110C(v1 + *(v3 + 28), a1);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1975811E0(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);
  if (!v3)
  {
    return 2;
  }

  if (pthread_main_np() == 1 && _CFRunLoopCurrentIsMain())
  {
    v6 = sub_197616590();
    MEMORY[0x1EEE9AC00](v6);
    v11[2] = v2;
    v11[3] = a1;
    v11[4] = a2;
    v7 = sub_1975DE580(sub_1975DECF8, v11, "TipKitCore/MiniTipsDatastore+DatastoreQueue.swift", 49, 2, 19);
  }

  else
  {
    sub_197615CF0();
    v9 = *(v2 + 48);
    v8 = *(v2 + 56);

    sub_19755D67C(v3, 0, v9, v8);
    v7 = sub_19757FEE4(a1);
  }

  return v7;
}

uint64_t sub_197581350@<X0>(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v31 = a3;
  v4 = sub_197615A60();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for CoreTipRecord(0);
  _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
  if (qword_1ED817510 != -1)
  {
LABEL_23:
    swift_once();
  }

  swift_beginAccess();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (qword_1ED816488 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_1ED816490);
  v8 = v11;
  v14 = sub_197581650(v10, v13);
  v12(v10, v4);
  v4 = sub_197567E4C(v14);
  v10 = 0;
  v5 = v14 & 0xC000000000000001;
  while (v4 != v10)
  {
    if (v5)
    {
      v15 = MEMORY[0x19A8E31E0](v10, v14);
      v8 = v15;
    }

    else
    {
      if (v10 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v8 = *(v14 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    CoreTipRecord.id.getter(v15, v16, v17, v18, v19, v20, v21, v22, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
    v11 = v23;
    if (v24 == *(a2 + 16) && v23 == *(a2 + 24))
    {
    }

    else
    {
      v26 = sub_197616EF0();

      if (v26)
      {
      }

      else
      {
        v28 = sub_1975E4620(v27);

        if ((v28 & 1) == 0)
        {
          break;
        }
      }
    }

    ++v10;
  }

  *v31 = v4 != v10;
  return result;
}

uint64_t sub_197581650(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - v13;
  v31 = a2;
  v32 = a1;
  v35 = v2;
  sub_197615AE0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  sub_197582820(v14, v12);
  v16 = sub_19755FEF8(&qword_1ED8170E0, type metadata accessor for CoreTipRecord, &protocol conformance descriptor for CoreTipRecord);
  v17 = MEMORY[0x1E69E7CC0];
  sub_197615D90();
  v29 = v2;
  v30 = v16;
  swift_getKeyPath();
  v33 = 0;
  LOBYTE(v34) = 1;
  OUTLINED_FUNCTION_1_34();

  v27 = v2;
  v28 = v16;
  swift_getKeyPath();
  v33 = 0;
  LOBYTE(v34) = 1;
  OUTLINED_FUNCTION_1_34();

  v25 = v2;
  v26 = v16;
  swift_getKeyPath();
  LOBYTE(v33) = 0;
  OUTLINED_FUNCTION_1_34();

  v23 = v2;
  v24 = v16;
  swift_getKeyPath();
  v33 = v17;
  OUTLINED_FUNCTION_1_34();

  v21 = v2;
  v22 = v16;
  swift_getKeyPath();
  v33 = v17;
  OUTLINED_FUNCTION_1_34();

  v20[0] = v2;
  v20[1] = v16;
  swift_getKeyPath();
  v33 = v17;
  OUTLINED_FUNCTION_1_34();

  v18 = sub_197615C80();
  (*(v6 + 8))(v8, v5);
  sub_197582890(v14);
  return v18;
}

__n128 sub_197581A94(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_197581AF8@<X0>(uint64_t *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v64 = a3;
  v58 = a2;
  v67 = a4;
  v63 = sub_1976157A0();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B20, &unk_19761E5E0);
  v68 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = v45 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35358, &qword_1976213E8);
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v52 = v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35360, &qword_1976213F0);
  v9 = *(v8 - 8);
  v65 = v8;
  v66 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v56 = v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35368, &qword_1976213F8);
  v12 = *(v11 - 8);
  v49 = v11;
  v50 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34710, &unk_197622260);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35370, &qword_197621400);
  v48 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35378, &qword_197621408);
  v23 = *(v22 - 8);
  v54 = v22;
  v55 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v51 = v45 - v24;
  v47 = *a1;
  sub_197559AAC(&qword_1ED816CE0, &qword_1EAF34710, &unk_197622260, MEMORY[0x1E6968DA8]);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  v25 = *(v16 + 8);
  v45[1] = v16 + 8;
  v46 = v25;
  v25(v18, v15);
  sub_197615A60();
  sub_197615770();
  sub_197559AAC(&qword_1ED815760, &qword_1EAF35370, &qword_197621400, MEMORY[0x1E6968D58]);
  sub_197559AAC(&qword_1ED815788, &qword_1EAF35368, &qword_1976213F8, MEMORY[0x1E6968B00]);
  sub_197582428();
  v26 = v49;
  sub_197615730();
  (*(v50 + 8))(v14, v26);
  v27 = *(v48 + 8);
  v27(v21, v19);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  v46(v18, v15);
  v28 = v53;
  sub_197615810();
  sub_197559AAC(&qword_1ED8164E0, &qword_1EAF34B20, &unk_19761E5E0, MEMORY[0x1E6968D20]);
  v29 = v52;
  v30 = v57;
  sub_197615790();
  v31 = *(v68 + 8);
  v68 += 8;
  v58 = v31;
  v31(v28, v30);
  v27(v21, v19);
  v32 = v28;
  sub_197615810();
  v33 = v61;
  v34 = v59;
  v35 = v63;
  (*(v61 + 104))(v59, *MEMORY[0x1E6968C38], v63);
  sub_197559AAC(&qword_1ED815770, &qword_1EAF35358, &qword_1976213E8, MEMORY[0x1E6968BA8]);
  sub_19755FEF8(&qword_1ED816CD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v36 = v56;
  v37 = v29;
  v38 = v60;
  sub_197615760();
  (*(v33 + 8))(v34, v35);
  v58(v32, v30);
  (*(v62 + 8))(v37, v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35380, &qword_197621438);
  v40 = v67;
  v67[3] = v39;
  v40[4] = sub_1975824DC();
  __swift_allocate_boxed_opaque_existential_0(v40);
  sub_197559AAC(&qword_1ED815750, &qword_1EAF35378, &qword_197621408, MEMORY[0x1E6968D90]);
  sub_197559AAC(&qword_1ED815798, &qword_1EAF35360, &qword_1976213F0, MEMORY[0x1E6968AF0]);
  v41 = v51;
  v42 = v54;
  v43 = v65;
  sub_197615780();
  (*(v66 + 8))(v36, v43);
  return (*(v55 + 8))(v41, v42);
}

unint64_t sub_197582428()
{
  result = qword_1ED815748;
  if (!qword_1ED815748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34988, &qword_197620CA0);
    sub_19755FEF8(&qword_1ED8167B8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815748);
  }

  return result;
}

unint64_t sub_1975824DC()
{
  result = qword_1ED815780;
  if (!qword_1ED815780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35380, &qword_197621438);
    sub_197582568();
    sub_1975E8F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815780);
  }

  return result;
}

unint64_t sub_197582568()
{
  result = qword_1ED815758;
  if (!qword_1ED815758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35378, &qword_197621408);
    sub_197582620();
    sub_197559AAC(&qword_1ED815790, &qword_1EAF35368, &qword_1976213F8, MEMORY[0x1E6968AF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815758);
  }

  return result;
}

unint64_t sub_197582620()
{
  result = qword_1ED815768;
  if (!qword_1ED815768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35370, &qword_197621400);
    sub_197559AAC(&qword_1ED816CE8, &qword_1EAF34710, &unk_197622260, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815768);
  }

  return result;
}

unint64_t sub_1975826D0()
{
  result = qword_1ED815778;
  if (!qword_1ED815778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35358, &qword_1976213E8);
    sub_197582620();
    sub_19758275C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815778);
  }

  return result;
}

unint64_t sub_19758275C()
{
  result = qword_1ED8164E8;
  if (!qword_1ED8164E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34B20, &unk_19761E5E0);
    sub_197567E98(&qword_1ED816BA0, MEMORY[0x1E6969558]);
    sub_197567E98(&qword_1ED816D90, MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8164E8);
  }

  return result;
}

uint64_t sub_197582820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197582890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1975828F8()
{
  if (qword_1ED816850 != -1)
  {
    swift_once();
  }

  if (!qword_1ED81D1D0)
  {
    return 2;
  }

  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 4, v1);
  v3 = *(v2 + 72);

  v3(v22, v1, v2);
  sub_19756D1E8(v22);
  if (v23 != 1)
  {
    goto LABEL_24;
  }

  KeyPath = swift_getKeyPath();
  v5 = sub_1975DB510(KeyPath);
  v7 = v6;

  if (!v7)
  {
LABEL_18:
    if (qword_1ED816C98 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v15, qword_1ED816CA0);
    sub_197616A20();
    MEMORY[0x19A8E2A50](0x203A646928706954, 0xE800000000000000);
    MEMORY[0x19A8E2A50](v0[2], v0[3]);
    MEMORY[0x19A8E2A50](0xD000000000000041, 0x8000000197624E80);
    v16 = swift_getKeyPath();
    v17 = sub_1975DB510(v16);
    v19 = v18;

    MEMORY[0x19A8E2A50](v17, v19);

    MEMORY[0x19A8E2A50](0x1000000000000022, 0x8000000197624ED0);
    if (qword_1ED815FF8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
    v20 = sub_197616200();
    MEMORY[0x19A8E2A50](v20);

    sub_197558864(0, 0xE000000000000000, v21);

    return 2;
  }

  if (qword_1ED815FF8 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED81D198;
  if (!qword_1ED81D198)
  {

    goto LABEL_18;
  }

  v9 = qword_1ED81D190;
  if (qword_1ED816C98 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v10, qword_1ED816CA0);
  sub_197616A20();
  MEMORY[0x19A8E2A50](0x203A646928706954, 0xE800000000000000);
  MEMORY[0x19A8E2A50](v0[2], v0[3]);
  MEMORY[0x19A8E2A50](0xD00000000000003BLL, 0x8000000197624F00);
  MEMORY[0x19A8E2A50](v5, v7);
  MEMORY[0x19A8E2A50](0x1000000000000022, 0x8000000197624ED0);
  MEMORY[0x19A8E2A50](v9, v8);
  sub_197558864(0, 0xE000000000000000, v11);

  if (v5 == v9 && v7 == v8)
  {

LABEL_24:

    return 2;
  }

  v13 = sub_197616EF0();

  if ((v13 & 1) == 0)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_197582D38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1975F0FE4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_197582D64()
{
  v1 = v0;
  v2 = sub_197615A60();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8174E0 != -1)
  {
    swift_once();
  }

  if (byte_1ED8174EA != 1)
  {
    return 2;
  }

  if (qword_1ED816850 != -1)
  {
    swift_once();
  }

  if (!qword_1ED81D1D0)
  {
    return 2;
  }

  swift_getKeyPath();
  v6 = sub_1975DB3F8();

  if (v6 != 2)
  {
    return 2;
  }

  v7 = v1[7];
  v8 = v1[8];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v7);
  (*(v8 + 72))(v15, v7, v8);
  sub_19756D1E8(v15);
  if (v16 != 1)
  {
    return 2;
  }

  v9 = v1[7];
  v10 = v1[8];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v9);
  (*(v10 + 72))(v13, v9, v10);
  sub_19756D1E8(v13);
  if (v14 != 1)
  {
    return 2;
  }

  if (sub_19757F834() == 1)
  {
    v11 = CoreTip.constellationContent.getter();
    if (v11)
    {

      _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
      sub_1975DEFAC(v5);
      (*(v3 + 8))(v5, v2);
    }
  }

  return 1;
}

uint64_t sub_197582FAC(__int16 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  v5 = OUTLINED_FUNCTION_5_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = *a1;
  v9 = sub_1976165B0();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  sub_197616590();
  OUTLINED_FUNCTION_42();

  v10 = sub_197616580();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v8;
  *(v11 + 40) = v2;
  sub_1975DB7FC(0, 0, v7, &unk_19761F308, v11);
}

uint64_t sub_1975830B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t CoreParameterProtocol.valueType.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  return sub_197616200();
}

uint64_t sub_197583144()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreParameterRecord.valueType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void (*CoreTip.activeViews.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = CoreTip.activeViews.getter();
  return sub_197583BDC;
}

uint64_t sub_1975831B8()
{
  OUTLINED_FUNCTION_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t CoreParameterProtocol.value(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (a2 >> 60 == 15)
  {
    OUTLINED_FUNCTION_3_15();
    OUTLINED_FUNCTION_4_14();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    sub_1975766B8(a1, a2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_197567980(AssociatedTypeWitness, a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
    __swift_storeEnumTagSinglePayload(a5, 0, 1, AssociatedTypeWitness);
    OUTLINED_FUNCTION_4_14();

    return sub_197576558(v16, v17);
  }
}

uint64_t static CoreParameterProtocol.valuesNotEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1975674F0(a1, &v44);
  if (v47)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
    v12 = OUTLINED_FUNCTION_0_17(v4, v5, v6, v7, v8, v9, v10, v11, v44, v45, v46, v47, v48[0]);
    if (v12)
    {
      if (v49)
      {
        OUTLINED_FUNCTION_5_11(v12, v13, v14, v15, v16, v17, v18, v19);
        v20 = v51;
        v21 = v52;
        __swift_project_boxed_opaque_existential_1Tm(v50, v51);
        v22 = default argument 1 of Equatable.isNotEqual(_:checkReverse:)() & 1;
        v23 = a2;
        v24 = v20;
LABEL_11:
        v42 = Equatable.isNotEqual(_:checkReverse:)(v23, v22, v24, v21);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        return v42 & 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_16();
    }
  }

  else
  {
    sub_19755C404(&v44, &qword_1EAF34340, &unk_19761C8E0);
    OUTLINED_FUNCTION_2_12();
  }

  sub_19755C404(v48, &qword_1EAF34BE0, &qword_19761BB70);
  sub_1975674F0(a2, &v44);
  if (v47)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
    v33 = OUTLINED_FUNCTION_0_17(v25, v26, v27, v28, v29, v30, v31, v32, v44, v45, v46, v47, v48[0]);
    if (v33)
    {
      if (v49)
      {
        OUTLINED_FUNCTION_5_11(v33, v34, v35, v36, v37, v38, v39, v40);
        v41 = v51;
        v21 = v52;
        __swift_project_boxed_opaque_existential_1Tm(v50, v51);
        v22 = default argument 1 of Equatable.isNotEqual(_:checkReverse:)() & 1;
        v23 = a1;
        v24 = v41;
        goto LABEL_11;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_16();
    }
  }

  else
  {
    sub_19755C404(&v44, &qword_1EAF34340, &unk_19761C8E0);
    OUTLINED_FUNCTION_2_12();
  }

  sub_19755C404(v48, &qword_1EAF34BE0, &qword_19761BB70);
  v42 = *(a1 + 24) || *(a2 + 24);
  return v42 & 1;
}

uint64_t Equatable.isNotEqual(_:checkReverse:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_197616860();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-v9];
  OUTLINED_FUNCTION_14();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_41();
  sub_1975674F0(a1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  if (OUTLINED_FUNCTION_5_25(v15))
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, a3);
    v16 = OUTLINED_FUNCTION_3_33();
    v17(v16);
    OUTLINED_FUNCTION_9_20();
    sub_1976161A0();
    v18 = OUTLINED_FUNCTION_7_19();
    v19(v18);
    v20 = v4 ^ 1;
  }

  else
  {
    v20 = 1;
    v21 = OUTLINED_FUNCTION_8_23();
    v22(v21);
    if (a2)
    {
      sub_1975674F0(a1, v29);
      if (v30)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
        if (OUTLINED_FUNCTION_10_20())
        {
          if (v32)
          {
            v23 = OUTLINED_FUNCTION_2_34();
            (*(v12 + 16))(v23, v4, a3);
            v24 = OUTLINED_FUNCTION_4_37();
            v20 = Equatable.isNotEqual(_:checkReverse:)(v24, v25, v26, v27);
            sub_19755C404(v31, &qword_1EAF34340, &unk_19761C8E0);
            __swift_destroy_boxed_opaque_existential_0Tm(v34);
            return v20 & 1;
          }
        }

        else
        {
          v33 = 0;
          OUTLINED_FUNCTION_6_19();
        }
      }

      else
      {
        sub_19755C404(v29, &qword_1EAF34340, &unk_19761C8E0);
        OUTLINED_FUNCTION_6_19();
        v33 = 0;
      }

      sub_19755C404(v31, &qword_1EAF34BE0, &qword_19761BB70);
    }
  }

  return v20 & 1;
}

uint64_t _ss17FixedWidthIntegerP10TipKitCoreE9decrement2byyx_tFfA__0(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v2);
  swift_getAssociatedConformanceWitness();
  sub_1976170C0();
  return sub_197616ED0();
}

uint64_t sub_197583A94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  (*(v10 + 32))(v13 - v12, v4, a2);
  a4(v14, a1, a2, *(*(*(a3 + 8) + 24) + 8));
  return (*(v10 + 8))(v14, a2);
}

void CoreTip.activeViews.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(OBJC_IVAR____TtC10TipKitCore7CoreTip__activeViews);
  *(v1 + 8) = a1;

  os_unfair_lock_unlock(v1);
}

uint64_t static CoreTip.setLastTipDisplayed(id:date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if ((byte_1ED817549 & 1) == 0 && !*(off_1ED817550 + 2) && (byte_1ED817558 & 1) == 0 && !((*(off_1ED817560 + 2) != 0) | byte_1ED817568 & 1))
  {
    if (byte_1ED817580 == 1)
    {
      if (qword_1ED816850 != -1)
      {
        swift_once();
      }

      if (qword_1ED81D1D0)
      {

        sub_1975EBF74(a1, a2, a3);
        sub_1975EC338();
      }
    }

    v10 = _s12DisplayEventVMa(0);
    v11 = *(v10 + 20);
    v12 = sub_197615A60();
    (*(*(v12 - 8) + 16))(&v8[v11], a3, v12);
    *v8 = a1;
    *(v8 + 1) = a2;
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);

    return sub_197583FF0(v8);
  }

  return result;
}

uint64_t _s12DisplayEventVMa(uint64_t a1)
{
  result = qword_1ED816D50;
  if (!qword_1ED816D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_197583E64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_197615A60();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_197583EE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35270, &qword_1976204C8);
  __swift_allocate_value_buffer(v3, qword_1ED8160F0);
  v4 = __swift_project_value_buffer(v3, qword_1ED8160F0);
  v5 = _s12DisplayEventVMa(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
  *v4 = 0;
  v6 = *(v3 + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35278, &qword_1976204D0);
  bzero(v4 + v6, *(*(v7 - 8) + 64));
  return sub_197584098(v2, v4 + v6);
}

uint64_t sub_197583FF0(uint64_t a1)
{
  if (qword_1ED8160E8 != -1)
  {
    OUTLINED_FUNCTION_2_23(&qword_1ED8160E8);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35270, &qword_1976204C8);
  v3 = __swift_project_value_buffer(v2, qword_1ED8160F0);
  os_unfair_lock_lock(v3);
  v4 = *(v2 + 28);
  sub_197584108(v3 + v4);
  sub_197584170(a1, v3 + v4);
  os_unfair_lock_unlock(v3);

  return sub_197584108(a1);
}

uint64_t sub_197584098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_197584108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_197584170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975841F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_197615A60();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void sub_19758427C(char a1)
{
  os_unfair_lock_lock((v1 + 100));
  *(v1 + 104) = a1;

  os_unfair_lock_unlock((v1 + 100));
}

uint64_t sub_1975842BC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_13();
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_5_1(v4);
  *v5 = v6;
  v5[1] = sub_19755CDC8;

  return sub_197584374(v2, v0, v3);
}

uint64_t sub_197584374(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_19755CCE8;

  return v7(v4);
}

void sub_197584468()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_35_5(v2, v3, v4, v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  v11 = OUTLINED_FUNCTION_5_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_52_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_68_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_45_0(v0);
  if (v16)
  {
    sub_19755C7C8(v0, &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_53_0();
    v18(v17);
    OUTLINED_FUNCTION_8_26();
    v21 = sub_19755FF88(v19, 255, v20, &protocol conformance descriptor for CoreTipRecord);
    if (OUTLINED_FUNCTION_67(v21))
    {
      v30 = OUTLINED_FUNCTION_43();
      v31(v30);
    }

    else
    {
      OUTLINED_FUNCTION_106(0, v23, v24, v25, v26, v27, v28, v29, v57);
      MEMORY[0x1EEE9AC00](v32);
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_55(v33, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
      v35 = OUTLINED_FUNCTION_38_3();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
      v39 = OUTLINED_FUNCTION_29_5();
      sub_19755F9A0(v39, v40, v41, v42);
      v43 = OUTLINED_FUNCTION_74_0();
      MEMORY[0x1EEE9AC00](v43);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_21_12(v58);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v45);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_20_11(v59);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v46);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();

      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v48);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      v49 = OUTLINED_FUNCTION_73_0();
      if (v1)
      {

        v50 = OUTLINED_FUNCTION_15_15();
        v51(v50);
      }

      else
      {
        v54 = v49;
        v55 = OUTLINED_FUNCTION_15_15();
        v56(v55);
        sub_19758761C(v54);
        OUTLINED_FUNCTION_122();
      }

      sub_19755C7C8(&qword_1EAF34AB8, &qword_1EAF346D8, &unk_197619120);
      v52 = OUTLINED_FUNCTION_36_4();
      v53(v52);
      OUTLINED_FUNCTION_91();
    }
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_9();
}

uint64_t sub_19758493C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = sub_197615870();
  (*(*(v7 - 8) + 16))(a3, v4, v7);
  sub_197615860();
  sub_1975849D4(a1);
  return sub_197615860();
}

uint64_t sub_1975849D4(uint64_t a1)
{
  if (!swift_isOptionalType())
  {
    return a1;
  }

  result = sub_197615B70();
  if (!v3)
  {
    return a1;
  }

  if (v3 >= 1)
  {
    return *result;
  }

  __break(1u);
  return result;
}

uint64_t sub_197584A1C@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_197616BE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_197615870();
  (*(*(v9 - 8) + 16))(a2, v3, v9);
  v12 = a2;
  sub_197584B7C();
  sub_197616EA0();
  (*(v6 + 8))(v8, v5);
  sub_197615A60();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    return sub_19760EA00();
  }

  return result;
}

uint64_t sub_197584B7C()
{
  sub_197616BE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF35700, &qword_197622C50);
  sub_197584C00();
  return sub_197616950();
}

unint64_t sub_197584C00()
{
  result = qword_1EAF33EC8;
  if (!qword_1EAF33EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAF35700, &qword_197622C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33EC8);
  }

  return result;
}

uint64_t sub_197584C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_197615570();
  OUTLINED_FUNCTION_1_43(v5);
  sub_197615560();
  sub_197615540();
  OUTLINED_FUNCTION_0_41();
  return v4;
}

double static Double.unixTimestamp.getter()
{
  v0 = sub_197615A60();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
  sub_197615A20();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t CoreTip.options.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 4, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t CoreTip.activeViews.getter()
{
  OUTLINED_FUNCTION_13_11(OBJC_IVAR____TtC10TipKitCore7CoreTip__activeViews);
  v1 = *(v0 + 8);
  os_unfair_lock_unlock(v0);
  return v1;
}

uint64_t sub_197584E4C(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *__return_ptr, uint64_t))
{
  a3(&v7, a1);
  v4 = *a2;
  v5 = a2[1];
  *a2 = v7;

  return sub_197576558(v4, v5);
}

uint64_t sub_197584EFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_197615980();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_197584F28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DeviceProfile.ProfileContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_5_2(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v64 = v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v7 = OUTLINED_FUNCTION_5_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v65 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v62 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353E8, &qword_197621688);
  OUTLINED_FUNCTION_0();
  v66 = v14;
  v67 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v62 - v16;
  v18 = type metadata accessor for DeviceProfile.ProfileContent(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_0();
  v22 = (v21 - v20);
  v24 = *(v23 + 24);
  sub_197615A60();
  v69 = v24;
  OUTLINED_FUNCTION_4_36();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v72 = *(v18 + 32);
  OUTLINED_FUNCTION_4_36();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = *(v18 + 36);
  v34 = _s12DisplayEventVMa(0);
  v71 = v33;
  v75 = v22;
  __swift_storeEnumTagSinglePayload(&v22[v33], 1, 1, v34);
  v74 = sub_1976160B0();
  v70 = sub_1976160B0();
  v35 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v35);
  sub_19758BF10();
  v36 = v68;
  sub_197617240();
  if (v36)
  {
    v38 = v69;
    v40 = v71;
    v39 = v72;
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    v41 = v75;
    sub_19755C7C8(&v75[v38], &qword_1EAF34988, &qword_197620CA0);

    sub_19755C7C8(&v41[v39], &qword_1EAF34988, &qword_197620CA0);
    sub_19755C7C8(&v41[v40], &qword_1EAF35260, &qword_1976202C8);
  }

  else
  {
    v68 = v34;
    v37 = v18;
    v77 = 0;
    sub_19758BF64();
    OUTLINED_FUNCTION_23_7();
    sub_197616DC0();
    v42 = v75;
    *v75 = v76;
    LOBYTE(v76) = 1;
    v62[1] = v17;
    v43 = sub_197616DA0();
    v44 = v69;
    v42[1] = v43 & 1;
    LOBYTE(v76) = 2;
    OUTLINED_FUNCTION_0_40();
    sub_1975F2D90(v45, v46, MEMORY[0x1E6969558]);
    OUTLINED_FUNCTION_17_13();
    sub_197616D80();
    v47 = v71;
    sub_19758C390(v12, &v75[v44], &qword_1EAF34988, &qword_197620CA0);
    LOBYTE(v76) = 3;
    OUTLINED_FUNCTION_17_13();
    v48 = sub_197616D50();
    v49 = v37;
    v50 = &v75[v37[7]];
    *v50 = v48;
    v50[1] = v51;
    LOBYTE(v76) = 4;
    v52 = v65;
    OUTLINED_FUNCTION_17_13();
    sub_197616D80();
    sub_19758C390(v52, &v75[v72], &qword_1EAF34988, &qword_197620CA0);
    LOBYTE(v76) = 5;
    OUTLINED_FUNCTION_7_17();
    sub_1975F2D90(v53, v54, &unk_197620A28);
    v55 = v64;
    OUTLINED_FUNCTION_17_13();
    sub_197616D80();
    sub_19758C390(v55, &v75[v47], &qword_1EAF35260, &qword_1976202C8);
    v77 = 6;
    sub_19758C3E0();
    OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_17_13();
    sub_197616D80();
    v75[v49[10]] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34398, &qword_197618398);
    v77 = 7;
    sub_1975F2DD8(&qword_1ED816728, sub_19756BBB0);
    OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_17_13();
    sub_197616DC0();

    v56 = v49[11];
    v74 = v76;
    *&v75[v56] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353E0, &qword_197621680);
    v77 = 8;
    sub_1975F2CC8(&qword_1ED816238, sub_19758C610);
    OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_17_13();
    sub_197616DC0();
    v57 = v49[12];
    v58 = OUTLINED_FUNCTION_11_17();
    v59(v58);

    v60 = v75;
    *&v75[v57] = v76;
    sub_19758C664(v60, v63);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    return sub_1975F2E4C(v60, type metadata accessor for DeviceProfile.ProfileContent);
  }
}

unint64_t sub_1975856E8()
{
  result = qword_1ED816B00;
  if (!qword_1ED816B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35088, &qword_19761EF80);
    sub_197559AAC(&qword_1ED816AE0, &qword_1EAF35080, &qword_19761EF78, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B00);
  }

  return result;
}