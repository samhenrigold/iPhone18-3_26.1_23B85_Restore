uint64_t sub_26764FFEC(uint64_t a1)
{
  OUTLINED_FUNCTION_92_0();
  sub_2676C9CCC();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_2();
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  if (swift_dynamicCast())
  {
    v4 = OUTLINED_FUNCTION_65_0();
    v5(v4);
    OUTLINED_FUNCTION_9_18();
    sub_26764AC08(0x9000000000000050);
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_79();
    v7 = swift_allocObject();
    swift_getErrorValue();
    *(v7 + 16) = sub_2676CC5FC();
    *(v7 + 24) = v8;
    OUTLINED_FUNCTION_9_18();
    sub_26764AC08(v7 | 0x8000000000000000);
    swift_endAccess();
  }
}

uint64_t sub_26765014C(uint64_t *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (*(*a1 + 16))
  {

    *a1 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_17_13();
  swift_beginAccess();
  if (*(v4 + 40) >> 60 != 3)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v15 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v15, qword_2801CDC90);
    v11 = sub_2676CBE2C();
    v12 = sub_2676CC23C();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_16;
    }

    v13 = OUTLINED_FUNCTION_17_3();
    *v13 = 0;
    v14 = "#ReadMailActingFlow: breaking out of readWindow loop";
    goto LABEL_15;
  }

  if ((a4 & 0x1FF) != 2)
  {
    return 0;
  }

  result = 0;
  if (a2 == 2 && !a3)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v10 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v10, qword_2801CDC90);
    v11 = sub_2676CBE2C();
    v12 = sub_2676CC23C();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_16;
    }

    v13 = OUTLINED_FUNCTION_17_3();
    *v13 = 0;
    v14 = "#ReadMailActingFlow: breaking out of readWindow loop to skip window";
LABEL_15:
    _os_log_impl(&dword_2675D4000, v11, v12, v14, v13, 2u);
    OUTLINED_FUNCTION_2_5();
LABEL_16:

    return 1;
  }

  return result;
}

void sub_2676502F8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v8 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v8, qword_2801CDC90);

  v9 = sub_2676CBE2C();
  v10 = sub_2676CC23C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109888;
    *(v11 + 4) = a1 & 1;
    *(v11 + 8) = 2048;
    *(v11 + 10) = *(v3 + 24);

    *(v11 + 18) = 2048;
    *(v11 + 20) = a2;
    *(v11 + 28) = 2048;
    *(v11 + 30) = a3;
    _os_log_impl(&dword_2675D4000, v9, v10, "#ReadMailActingFlow: readWindow onCompletion, break out: %{BOOL}d, index %ld, startIndex %ld, endIndex %ld", v11, 0x26u);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17_13();
  swift_beginAccess();
  if (*(v3 + 40) >> 60 == 3)
  {
    v12 = *(v3 + 24);
    OUTLINED_FUNCTION_17_13();
    swift_beginAccess();
    OUTLINED_FUNCTION_79_1();
    if (v12 == v13)
    {
      v14 = sub_2676CBE2C();
      v15 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_35_0(v15))
      {
        v16 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_45_3(v16);
        OUTLINED_FUNCTION_13_15();
        _os_log_impl(v17, v18, v19, v20, v21, 2u);
        OUTLINED_FUNCTION_30_6();
      }

      OUTLINED_FUNCTION_70(v4 + 40, v31);
      v22 = OUTLINED_FUNCTION_76_0();
LABEL_16:
      sub_26764AC08(v22);
      swift_endAccess();
      return;
    }

    if (v12 > a3 && (a1 & 1) == 0)
    {
      v23 = sub_2676CBE2C();
      v24 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_35_0(v24))
      {
        v25 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_45_3(v25);
        OUTLINED_FUNCTION_13_15();
        _os_log_impl(v26, v27, v28, v29, v30, 2u);
        OUTLINED_FUNCTION_30_6();
      }

      OUTLINED_FUNCTION_70(v4 + 40, v31);
      v22 = 0x9000000000000040;
      goto LABEL_16;
    }
  }
}

uint64_t sub_267650534(unint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  v6 = &v31[-v5 - 8];
  *(v1 + 48) = 1;
  v7 = *(v1 + 24);
  OUTLINED_FUNCTION_70(v1 + 32, v31);
  sub_267650870(v7, v6);
  swift_endAccess();

  sub_2676C8BFC();
  OUTLINED_FUNCTION_2_6();
  (*(v8 + 8))(v6);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v9 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v9, qword_2801CDC90);

  v10 = sub_2676CBE2C();
  v11 = sub_2676CC23C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = *(v1 + 24);

    _os_log_impl(&dword_2675D4000, v10, v11, "#SiriMail deleted message at index %ld", v12, 0xCu);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
  }

  if (*(v1 + 24) >= *(*(v1 + 32) + 16))
  {
    v20 = sub_2676CBE2C();
    v21 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v21))
    {
      v22 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_45_3(v22);
      OUTLINED_FUNCTION_13_15();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_30_6();
    }

    OUTLINED_FUNCTION_70(v2 + 40, v31);
    v28 = 0x9000000000000048;
    goto LABEL_17;
  }

  v13 = sub_2676CBE2C();
  v14 = sub_2676CC23C();
  v15 = OUTLINED_FUNCTION_5_7(v14);
  if (a1 >> 60 != 3)
  {
    if (v15)
    {
      v29 = OUTLINED_FUNCTION_17_3();
      *v29 = 0;
      _os_log_impl(&dword_2675D4000, v13, v14, "#SiriMail going to next state after deleting message", v29, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    OUTLINED_FUNCTION_70(v2 + 40, v31);
    v28 = OUTLINED_FUNCTION_81_1();
LABEL_17:
    sub_26764AC08(v28);
    return swift_endAccess();
  }

  if (v15)
  {
    v16 = OUTLINED_FUNCTION_17_3();
    *v16 = 0;
    _os_log_impl(&dword_2675D4000, v13, v14, "#SiriMail going back to .readWindow after deleting message", v16, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_79();
  v17 = swift_allocObject();
  *(v17 + 16) = *(v2 + 24);
  sub_267646858();
  *(v17 + 24) = v18;
  OUTLINED_FUNCTION_70(v2 + 40, v31);
  sub_26764AC08(v17 | 0x3000000000000000);
  swift_endAccess();
}

void sub_267650870(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2675E0980(v5);
    v5 = v10;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00) - 8);
    v8 = *(v7 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8 * a1;
    sub_26763DE18(v9, a2);
    sub_2676C2590(v9 + v8, v6 - 1 - a1, v9);
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t sub_26765096C(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v2);
  v4 = v26 - v3;
  result = 0x6867694864616572;
  switch(a1 >> 60)
  {
    case 1uLL:
      return 0x6C69614D746567;
    case 2uLL:
      return result;
    case 3uLL:
      v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      OUTLINED_FUNCTION_61_2();
      sub_2676CC3FC();

      OUTLINED_FUNCTION_82_1();
      v27[0] = v15 | 2;
      v27[1] = v14;
      v26[0] = v12;
      v16 = sub_2676CC56C();
      MEMORY[0x26D5FDD00](v16);

      MEMORY[0x26D5FDD00](0x203A646E65202CLL, 0xE700000000000000);
      v26[0] = v13;
      v17 = sub_2676CC56C();
      goto LABEL_10;
    case 4uLL:
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_61_2();
      sub_2676CC3FC();

      v27[0] = 0xD00000000000001ALL;
      v27[1] = 0x80000002676D7500;
      goto LABEL_9;
    case 5uLL:
      v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v21 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v27[0] = 0;
      v27[1] = 0xE000000000000000;

      sub_2676CC3FC();
      MEMORY[0x26D5FDD00](0x4D6F54796C706572, 0xEF28656761737365);
      v22 = sub_26765096C(v18);
      MEMORY[0x26D5FDD00](v22);

      OUTLINED_FUNCTION_61_1();
      MEMORY[0x26D5FDD00](0xD000000000000010);
      v26[0] = v19;
      v26[1] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
      v23 = sub_2676CBFBC();
      MEMORY[0x26D5FDD00](v23);

      OUTLINED_FUNCTION_61_1();
      MEMORY[0x26D5FDD00](0xD000000000000010);
      LOBYTE(v26[0]) = v21;
      sub_2676CC49C();
      goto LABEL_14;
    case 6uLL:
      OUTLINED_FUNCTION_61_1();
      return 0xD000000000000013;
    case 7uLL:
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_61_2();
      sub_2676CC3FC();

      strcpy(v27, "deleteMessage(");
      HIBYTE(v27[1]) = -18;
LABEL_9:
      v17 = sub_26765096C(v11);
LABEL_10:
      MEMORY[0x26D5FDD00](v17);

      goto LABEL_14;
    case 8uLL:
      v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v27[0] = 0x28726F727265;
      v27[1] = 0xE600000000000000;
      MEMORY[0x26D5FDD00](v24, v25);
LABEL_14:
      MEMORY[0x26D5FDD00](41, 0xE100000000000000);
      return v27[0];
    case 9uLL:
      result = 0x6E4964656B636F6CLL;
      switch(__ROR8__(a1 + 0x7000000000000000, 3))
      {
        case 1:
          OUTLINED_FUNCTION_61_1();
          result = 0xD000000000000016;
          break;
        case 2:
          result = 0x4365766C6F736572;
          break;
        case 3:
          result = 0x6C68676948746567;
          break;
        case 4:
          result = 0x6867696C68676968;
          break;
        case 5:
          result = 0x746C757365526F6ELL;
          break;
        case 6:
          result = 0x72746E4964616572;
          break;
        case 7:
          result = 0x676E695364616572;
          break;
        case 8:
          result = 0x436F54726566666FLL;
          break;
        case 9:
          result = 0x636E6F4364616572;
          break;
        case 0xALL:
          result = 0x656C6C65636E6163;
          break;
        case 0xBLL:
          result = 1701736292;
          break;
        default:
          return result;
      }

      return result;
    default:
      v27[0] = 0;
      v27[1] = 0xE000000000000000;

      sub_2676CC3FC();

      OUTLINED_FUNCTION_82_1();
      v27[0] = v7 | 0xE;
      v27[1] = v6;
      sub_2676CB35C();
      v8 = sub_2676CC2EC();
      v10 = v9;
      sub_2675EB7EC(v4, &qword_2801CBFD0, &qword_2676CDEA0);
      MEMORY[0x26D5FDD00](v8, v10);

      return v27[0];
  }
}

uint64_t sub_267650F20()
{

  sub_267614A2C(*(v0 + 40));
  v1 = OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow__readMessageTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEB0, &qword_2676D1360);
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 8))(v0 + v1);

  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedSender, &qword_2801CBFE8, &unk_2676CD9E0);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_linkServicesProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_responseFactory);

  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_resolvedDateTimeRange, &qword_2801CC380, &unk_2676CEF40);
  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeInput, &qword_2801CC1E8, &qword_2676CF570);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_dateTimeResolver);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_readingUtil);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal18ReadMailActingFlow_featureFlags);
  return v0;
}

uint64_t sub_267651078()
{
  sub_267650F20();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ReadMailActingFlow(uint64_t a1)
{
  result = qword_2801CCE50;
  if (!qword_2801CCE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267651124(uint64_t a1)
{
  sub_267651360(319, &qword_2801CCE60, &qword_2801CC430, &unk_2676D0440, MEMORY[0x277D5B9C8]);
  if (v1 <= 0x3F)
  {
    sub_2675F9EB0(319);
    if (v2 <= 0x3F)
    {
      sub_267651360(319, &qword_2801CC3B0, &qword_2801CC1F8, &qword_2676CEBA0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_267651360(319, &qword_2801CCE68, &qword_2801CC1F0, &unk_2676CE100, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_267651360(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal04ReadB10ActingFlowC5StateO(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 8)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 9;
  }
}

uint64_t sub_2676513E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x77 && *(a1 + 8))
    {
      v2 = *a1 + 118;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x76)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_267651428(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_267651488(unint64_t *result, uint64_t a2)
{
  if (a2 < 9)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    v2 = (8 * (a2 - 9)) | 0x9000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_267651508(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:

      break;
    default:
      return result;
  }

  return result;
}

void sub_267651540(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_2676078F0((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      sub_2676C8BFC();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_267651620(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_267607918((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

unint64_t sub_26765170C()
{
  result = qword_2801CCF40;
  if (!qword_2801CCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCF40);
  }

  return result;
}

unint64_t sub_267651760()
{
  result = qword_2801CCF48;
  if (!qword_2801CCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCF48);
  }

  return result;
}

uint64_t sub_2676517CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2676CC59C() & 1;
  }
}

unint64_t sub_267651810(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = sub_2676C8BFC();
    OUTLINED_FUNCTION_4_1(v5);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_2676518B4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2676519E4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26764CE54(v0 + v2, v3);
}

unint64_t sub_267651AA0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_267651508(result);
  }

  return result;
}

unint64_t sub_267651AB4()
{
  result = qword_2801CCFD0;
  if (!qword_2801CCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCFD0);
  }

  return result;
}

unint64_t sub_267651B18()
{
  result = qword_2801CCFE0;
  if (!qword_2801CCFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCFE0);
  }

  return result;
}

unint64_t sub_267651B74()
{
  result = qword_2801CCFF8;
  if (!qword_2801CCFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CCFF8);
  }

  return result;
}

unint64_t sub_267651BE0()
{
  result = qword_2801CD010;
  if (!qword_2801CD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD010);
  }

  return result;
}

uint64_t sub_267651C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267651CC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_267651D34(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_267651D40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_267651D60(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return v3;
}

unint64_t sub_267651D80()
{
  result = qword_2801CD060;
  if (!qword_2801CD060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD060);
  }

  return result;
}

unint64_t sub_267651DE4()
{
  result = qword_2801CD080;
  if (!qword_2801CD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD080);
  }

  return result;
}

unint64_t sub_267651E38(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_267614A2C(result);
  }

  return result;
}

unint64_t sub_267651E4C()
{
  result = qword_2801CD098;
  if (!qword_2801CD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD098);
  }

  return result;
}

unint64_t sub_267651EA8()
{
  result = qword_2801CD0E8;
  if (!qword_2801CD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD0E8);
  }

  return result;
}

uint64_t objectdestroy_102Tm(void (*a1)(void))
{

  a1(*(v1 + 24));
  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

unint64_t sub_267651F5C()
{
  result = qword_2801CD108;
  if (!qword_2801CD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD108);
  }

  return result;
}

uint64_t sub_267651FB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267652000()
{
  result = qword_2801CD118;
  if (!qword_2801CD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD118);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{

  sub_267614A2C(*(v0 + 24));
  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_19()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_9_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_28_5()
{
  __swift_destroy_boxed_opaque_existential_1(v0 - 208);

  return __swift_destroy_boxed_opaque_existential_1(v0 - 160);
}

void OUTLINED_FUNCTION_30_6()
{

  JUMPOUT(0x26D5FEA80);
}

uint64_t OUTLINED_FUNCTION_36_6(unint64_t *a1)
{
  v4 = MEMORY[0x277D5C1A8];

  return sub_2676148C4(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_53_4(uint64_t a1)
{
  *(v1 + 928) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 896));
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_59_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[116] = a2;
  v2[115] = v3;
  v2[112] = a1;

  return sub_2676C9F6C();
}

uint64_t OUTLINED_FUNCTION_70_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[116] = a2;
  v2[115] = v3;
  v2[112] = a1;
}

uint64_t OUTLINED_FUNCTION_71_1(uint64_t a1)
{

  return sub_2676C941C();
}

uint64_t OUTLINED_FUNCTION_74_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_77_0(void *result)
{
  result[2] = v1;
  result[3] = v3;
  result[4] = v2;
  return result;
}

void OUTLINED_FUNCTION_84_0()
{
  *(v0 + 920) = v1;
  *(v4 - 160) = v3;
  *(v4 - 152) = v2;
}

uint64_t OUTLINED_FUNCTION_94_1()
{
  *(v0 - 128) = 0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;

  return sub_2676C9B9C();
}

uint64_t OUTLINED_FUNCTION_95_1()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_98_0()
{
  __swift_project_boxed_opaque_existential_1((v0 - 144), *(v0 - 120));

  return sub_2676C9C3C();
}

uint64_t OUTLINED_FUNCTION_99_0()
{
  __swift_project_boxed_opaque_existential_1((v0 - 168), *(v0 - 144));

  return sub_2676C9C3C();
}

uint64_t type metadata accessor for ReadMailCATsSimple(uint64_t a1)
{
  result = qword_2801CD128;
  if (!qword_2801CD128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267652764()
{
  OUTLINED_FUNCTION_3_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v3);
  v1[4] = OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2676527E8()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_2676CDE20;
  *(v3 + 32) = 2036625250;
  *(v3 + 40) = 0xE400000000000000;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v4 = sub_2676CB3FC();
  if (OUTLINED_FUNCTION_9_19(v4) == 1)
  {
    sub_2675ED6C0(v0[4], &qword_2801CBFD0, &qword_2676CDEA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_11_3();
    v5();
  }

  OUTLINED_FUNCTION_1_21();
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_26765297C;
  OUTLINED_FUNCTION_34_6();

  return v9(v7, 0xED000079646F4223, v3);
}

uint64_t sub_26765297C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_0_9();

    return v11(v10);
  }
}

uint64_t sub_267652AAC()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_1_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_267652B50;
  v3 = OUTLINED_FUNCTION_25_9();

  return v4(v3);
}

uint64_t sub_267652B50()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_267652C44()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_1_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_267654A9C;
  v3 = OUTLINED_FUNCTION_15_15();

  return v5(v3);
}

uint64_t sub_267652CEC()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 91) = v3;
  *(v1 + 90) = v4;
  *(v1 + 89) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 88) = v8;
  *(v1 + 16) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v10);
  *(v1 + 56) = OUTLINED_FUNCTION_2_0();
  v11 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267652D88()
{
  OUTLINED_FUNCTION_16_2();
  v2 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v4 = v3;
  *(v1 + 64) = v3;
  *(v3 + 16) = xmmword_2676D15B0;
  *(v3 + 32) = 0x746E756F63;
  *(v3 + 40) = 0xE500000000000000;
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  else
  {
    v5 = *(v1 + 16);
    v6 = MEMORY[0x277D839F8];
  }

  v7 = *(v1 + 56);
  v8 = *(v1 + 24);
  *(v4 + 48) = v5;
  *(v4 + 72) = v6;
  *(v4 + 80) = 0xD000000000000010;
  *(v4 + 88) = 0x80000002676D76B0;
  sub_2675ED65C(v8, v7, &qword_2801CBFD0, &qword_2676CDEA0);
  v9 = sub_2676CB3FC();
  if (OUTLINED_FUNCTION_9_19(v9) == 1)
  {
    sub_2675ED6C0(*(v1 + 56), &qword_2801CBFD0, &qword_2676CDEA0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_11_3();
    v10();
  }

  v11 = *(v1 + 32);
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_11_20();
  *(v4 + 128) = v12;
  *(v4 + 136) = v13;
  if (v11)
  {
    sub_2676CB36C();
    v14 = v11;
  }

  else
  {
    v14 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  v15 = *(v1 + 40);
  *(v4 + 144) = v14;
  OUTLINED_FUNCTION_20_8();
  *(v4 + 168) = v16;
  *(v4 + 176) = 0xD000000000000011;
  *(v4 + 184) = v17;
  if (v15)
  {
    sub_2676CB28C();
  }

  else
  {
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  *(v4 + 192) = v15;
  OUTLINED_FUNCTION_35_5();
  *(v4 + 216) = v18;
  *(v4 + 224) = v19;
  *(v4 + 232) = 0xE800000000000000;
  *(v4 + 240) = v20;
  OUTLINED_FUNCTION_12_12();
  *(v4 + 264) = v22;
  *(v4 + 272) = v21;
  *(v4 + 280) = 0xE500000000000000;
  *(v4 + 288) = v23;
  OUTLINED_FUNCTION_32_5();
  *(v4 + 312) = v24;
  *(v4 + 320) = 0xD000000000000021;
  *(v4 + 328) = v25;
  *(v4 + 360) = v24;
  v30 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  *(v4 + 336) = v26;

  v27 = swift_task_alloc();
  *(v1 + 72) = v27;
  *v27 = v1;
  v27[1] = sub_267653048;
  OUTLINED_FUNCTION_34_6();

  return v30(v28, 0xEE006F72746E4923, v4);
}

uint64_t sub_267653048()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_0_9();

    return v11(v10);
  }
}

uint64_t sub_267653178(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return OUTLINED_FUNCTION_1_12();
}

uint64_t sub_267653194()
{
  OUTLINED_FUNCTION_16_2();
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_2676CDE10;
  OUTLINED_FUNCTION_20_8();
  *(v4 + 32) = 0xD000000000000014;
  *(v4 + 40) = v5;
  *(v4 + 48) = v2;
  OUTLINED_FUNCTION_32_5();
  *(v6 + 72) = v7;
  *(v6 + 80) = 0xD000000000000011;
  *(v6 + 88) = v8;
  *(v6 + 120) = v7;
  *(v6 + 96) = v1;
  v12 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 32) = v9;
  *v9 = v10;
  v9[1] = sub_2676532DC;

  return v12(0xD000000000000018, 0x80000002676D6620, v3);
}

uint64_t sub_2676532DC()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_9_8();

    return v11(v10);
  }
}

uint64_t sub_267653408()
{
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_267653464()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_1_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_267654A9C;
  v3 = OUTLINED_FUNCTION_15_15();

  return v5(v3);
}

uint64_t sub_26765350C()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 81) = v2;
  *(v1 + 80) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v7);
  *(v1 + 48) = OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26765359C()
{
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_2676D15C0;
  OUTLINED_FUNCTION_20_8();
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = v5;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v6 = sub_2676CB3FC();
  if (OUTLINED_FUNCTION_9_19(v6) == 1)
  {
    sub_2675ED6C0(v0[6], &qword_2801CBFD0, &qword_2676CDEA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_11_3();
    v7();
  }

  v8 = v0[3];
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_11_20();
  *(v3 + 80) = v9;
  *(v3 + 88) = v10;
  if (v8)
  {
    sub_2676CB36C();
    v11 = v8;
  }

  else
  {
    v11 = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  v12 = v0[4];
  *(v3 + 96) = v11;
  OUTLINED_FUNCTION_20_8();
  *(v3 + 120) = v13;
  *(v3 + 128) = 0xD000000000000011;
  *(v3 + 136) = v14;
  if (v12)
  {
    sub_2676CB28C();
  }

  else
  {
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  *(v3 + 144) = v12;
  OUTLINED_FUNCTION_12_12();
  *(v3 + 168) = v15;
  *(v3 + 176) = v16;
  *(v3 + 184) = 0xE500000000000000;
  *(v3 + 192) = v17;
  OUTLINED_FUNCTION_32_5();
  *(v3 + 216) = v18;
  *(v3 + 224) = 0xD000000000000014;
  *(v3 + 232) = v19;
  *(v3 + 264) = v18;
  *(v3 + 240) = v20;
  v24 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[8] = v21;
  *v21 = v22;
  v21[1] = sub_26765380C;

  return v24(0xD000000000000012, 0x80000002676D6FA0, v3);
}

uint64_t sub_26765380C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_0_9();

    return v11(v10);
  }
}

uint64_t sub_26765393C()
{
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2676539A0(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_1_12();
}

uint64_t sub_2676539B8()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2676CDE10;
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_11_20();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  if (v1)
  {
    sub_2676CB36C();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_32_5();
  *(v2 + 88) = v6;
  *(v2 + 120) = MEMORY[0x277D839B0];
  *(v2 + 96) = v7;
  OUTLINED_FUNCTION_1_21();
  *(v2 + 72) = v8;
  *(v2 + 80) = 0xD000000000000015;

  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[5] = v9;
  *v9 = v10;
  v9[1] = sub_267653B18;

  return v12(0xD00000000000001ALL, 0x80000002676D6FC0, v2);
}

uint64_t sub_267653B18()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_9_8();

    return v11(v10);
  }
}

uint64_t sub_267653C44()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_1_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_267654A9C;
  v3 = OUTLINED_FUNCTION_25_9();

  return v4(v3);
}

uint64_t sub_267653CE8()
{
  OUTLINED_FUNCTION_3_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v3);
  v1[4] = OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267653D6C()
{
  OUTLINED_FUNCTION_16_2();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_2676CDE20;
  *(v3 + 32) = 0x6D614E7972657571;
  *(v3 + 40) = 0xE900000000000065;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v4 = sub_2676CB3FC();
  if (OUTLINED_FUNCTION_9_19(v4) == 1)
  {
    sub_2675ED6C0(v0[4], &qword_2801CBFD0, &qword_2676CDEA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_11_3();
    v5();
  }

  OUTLINED_FUNCTION_1_21();
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2675ED1C8;
  v7 = OUTLINED_FUNCTION_15_15();

  return v9(v7);
}

uint64_t sub_267653F00()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 40) = v16;
  *(v1 + 48) = v0;
  *(v1 + 92) = v2;
  *(v1 + 91) = v3;
  *(v1 + 90) = v4;
  OUTLINED_FUNCTION_36_7(v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v10);
  *(v1 + 56) = OUTLINED_FUNCTION_2_0();
  v11 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267653F9C()
{
  v4 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v5 = swift_allocObject();
  *(v1 + 64) = v5;
  v6 = OUTLINED_FUNCTION_10_14(v5, xmmword_2676D15D0);
  if (v4)
  {
    type metadata accessor for MailMessageConcept(v6);
  }

  else
  {
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  v7 = *(v1 + 24);
  *(v5 + 48) = v4;
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_17_14(v8, v9);
  if (v7)
  {
    sub_2676CB36C();
  }

  else
  {
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_20_8();
  v12 = OUTLINED_FUNCTION_29_8(v10, v11);
  if (v4)
  {
    v12 = sub_2676CB28C();
  }

  else
  {
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  v13 = *(v1 + 56);
  v14 = *(v1 + 91);
  v15 = *(v1 + 90);
  v16 = *(v1 + 89);
  v17 = *(v1 + 88);
  *(v5 + 144) = v4;
  *(v5 + 168) = v12;
  *(v5 + 176) = 0x646165726E557369;
  *(v5 + 184) = 0xE800000000000000;
  v18 = MEMORY[0x277D839B0];
  *(v5 + 192) = v17;
  *(v5 + 216) = v18;
  *(v5 + 224) = 0x656C676E69537369;
  *(v5 + 232) = 0xEF6567617373654DLL;
  *(v5 + 240) = v16;
  *(v5 + 264) = v18;
  *(v5 + 272) = 0x4974737269467369;
  *(v5 + 280) = 0xEB000000006D6574;
  *(v5 + 288) = v15;
  *(v5 + 312) = v18;
  *(v5 + 320) = 0x74497473614C7369;
  *(v5 + 328) = 0xEA00000000006D65;
  *(v5 + 336) = v14;
  OUTLINED_FUNCTION_12_12();
  *(v5 + 360) = v20;
  *(v5 + 368) = v19;
  *(v5 + 376) = 0xE500000000000000;
  *(v5 + 384) = v21;
  *(v5 + 408) = v20;
  *(v5 + 416) = v3;
  *(v5 + 424) = 0x80000002676D7610;
  sub_2675ED65C(v22, v13, &qword_2801CBFD0, &qword_2676CDEA0);
  v23 = sub_2676CB3FC();
  OUTLINED_FUNCTION_27_7(v23);
  if (v24)
  {

    sub_2675ED6C0(v0, &qword_2801CBFD0, &qword_2676CDEA0);
    *(v5 + 432) = 0u;
    *(v5 + 448) = 0u;
  }

  else
  {
    *(v5 + 456) = v2;
    __swift_allocate_boxed_opaque_existential_1((v5 + 432));
    OUTLINED_FUNCTION_14_2();
    (*(v25 + 32))();
  }

  OUTLINED_FUNCTION_1_21();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v1 + 72) = v26;
  *v26 = v27;
  v26[1] = sub_267653048;
  OUTLINED_FUNCTION_37_6();

  return v28();
}

uint64_t sub_267654290()
{
  OUTLINED_FUNCTION_3_0();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_36_7(v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v8);
  v1[7] = OUTLINED_FUNCTION_2_0();
  v9 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267654318()
{
  v4 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v5 = swift_allocObject();
  v1[8] = v5;
  v6 = OUTLINED_FUNCTION_10_14(v5, xmmword_2676D15E0);
  if (v4)
  {
    type metadata accessor for MailMessageConcept(v6);
  }

  else
  {
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  v7 = v1[3];
  *(v5 + 48) = v4;
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_17_14(v8, v9);
  if (v7)
  {
    sub_2676CB36C();
  }

  else
  {
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_20_8();
  OUTLINED_FUNCTION_29_8(v10, v11);
  if (v4)
  {
    sub_2676CB28C();
  }

  else
  {
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  v12 = v1[7];
  *(v5 + 144) = v4;
  OUTLINED_FUNCTION_35_5();
  *(v5 + 168) = v13;
  *(v5 + 176) = v14;
  *(v5 + 184) = 0xE800000000000000;
  *(v5 + 192) = v15;
  OUTLINED_FUNCTION_12_12();
  *(v5 + 216) = v17;
  *(v5 + 224) = v16;
  *(v5 + 232) = 0xE500000000000000;
  *(v5 + 240) = v18;
  *(v5 + 264) = v17;
  *(v5 + 272) = v3;
  *(v5 + 280) = 0x80000002676D7610;
  sub_2675ED65C(v19, v12, &qword_2801CBFD0, &qword_2676CDEA0);
  v20 = sub_2676CB3FC();
  OUTLINED_FUNCTION_27_7(v20);
  if (v21)
  {

    sub_2675ED6C0(v0, &qword_2801CBFD0, &qword_2676CDEA0);
    *(v5 + 288) = 0u;
    *(v5 + 304) = 0u;
  }

  else
  {
    *(v5 + 312) = v2;
    __swift_allocate_boxed_opaque_existential_1((v5 + 288));
    OUTLINED_FUNCTION_14_2();
    (*(v22 + 32))();
  }

  OUTLINED_FUNCTION_1_21();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v1[9] = v23;
  *v23 = v24;
  v23[1] = sub_26765457C;
  OUTLINED_FUNCTION_37_6();

  return v25();
}

uint64_t sub_26765457C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_0_9();

    return v11(v10);
  }
}

uint64_t sub_2676546AC()
{
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_267654710()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_1_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_42(v0);
  *v1 = v2;
  v1[1] = sub_267654A9C;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000023, 0x80000002676D75C0, v3);
}

uint64_t sub_2676547C4()
{
  swift_allocObject();
  OUTLINED_FUNCTION_11_3();
  return sub_267654814(v0, v1, v2);
}

uint64_t sub_267654814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2676CB48C();
  OUTLINED_FUNCTION_8_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  MEMORY[0x28223BE20](v12);
  sub_2675ED65C(a1, &v16 - v13, &unk_2801CDAC0, &unk_2676CF3A0);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_2676CB40C();
  (*(v7 + 8))(a2, v3);
  sub_2675ED6C0(a1, &unk_2801CDAC0, &unk_2676CF3A0);
  return v14;
}

uint64_t sub_26765498C(uint64_t a1, uint64_t a2)
{
  sub_2676CB48C();
  OUTLINED_FUNCTION_8_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2676CB41C();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_10_14(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x7373654D6C69616DLL;
  a1[2].n128_u64[1] = 0xEB00000000656761;
  return 0;
}

uint64_t OUTLINED_FUNCTION_17_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[9] = a1;
  v2[10] = a2;
  v2[11] = 0xEF7265646E655364;
  return 0;
}

uint64_t OUTLINED_FUNCTION_29_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[15] = a1;
  v2[16] = v3 | 1;
  v2[17] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 89) = a5;
  *(v5 + 88) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = result;
  return result;
}

uint64_t type metadata accessor for ReadSingleMessage(uint64_t a1)
{
  result = qword_2801CD138;
  if (!qword_2801CD138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267654CC8(uint64_t a1)
{
  sub_267654DA4(319);
  if (v1 <= 0x3F)
  {
    sub_2675F9EB0(319);
    if (v2 <= 0x3F)
    {
      sub_2675F9F5C(319, &qword_2801CC420, &protocol descriptor for ResponseProviding);
      if (v3 <= 0x3F)
      {
        sub_2675F9F5C(319, &qword_2801CCC70, &protocol descriptor for ReadingUtilProviding);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_267654DA4(uint64_t a1)
{
  if (!qword_2801CD148)
  {
    sub_2676C8BFC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC9B0, &unk_2676CFE50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2801CD148);
    }
  }
}

uint64_t sub_267654E24()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_267656980;

  return sub_267654EB8(v2);
}

uint64_t sub_267654EB8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2676C90FC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  v2[7] = swift_task_alloc();
  sub_2676CAF8C();
  v2[8] = swift_task_alloc();
  v4 = sub_2676C99CC();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_2676C9DDC();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v2[17] = swift_task_alloc();
  sub_2676CB48C();
  v2[18] = swift_task_alloc();
  v6 = sub_2676C8EBC();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  v2[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  v8 = sub_2676C8BFC();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2676552E4, 0, 0);
}

uint64_t sub_2676552E4()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[3];
  OUTLINED_FUNCTION_5_18();

  (*(v2 + 32))(v1, v4, v3);
  OUTLINED_FUNCTION_5_18();
  v7 = (v4 + *(v5 + 48));
  v0[32] = *v7;
  v0[33] = v7[1];
  v8 = *(v2 + 8);
  v0[34] = v8;
  v0[35] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v3);
  SingleMessage = type metadata accessor for ReadSingleMessage(0);
  v10 = 0;
  v0[36] = SingleMessage;
  v11 = *(v6 + *(SingleMessage + 20));
  v0[37] = v11;
  if ((v11 & 0x20) != 0)
  {
    v12 = v0[25];
    sub_2676CB28C();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    v14 = *(v13 + 48);
    sub_2676C8A7C();
    v15 = sub_2676C90CC();
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v15);
    __swift_storeEnumTagSinglePayload(v12 + v14, 1, 1, v15);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
    v10 = sub_2675FFBC4(v12);
    sub_2675E35CC(v12, &qword_2801CC380, &unk_2676CEF40);
  }

  v0[38] = v10;
  v16 = v0[24];
  v17 = (v0[3] + *(SingleMessage + 32));
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_267641F70(v16);
  v18 = v0[23];
  v19 = v0[19];
  sub_267607B28(v0[24], v18, &qword_2801CBFE0, &qword_2676D1070);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_2675E35CC(v0[23], &qword_2801CBFE0, &qword_2676D1070);
  }

  else
  {
    v20 = v0[22];
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    (*(v22 + 32))(v21, v0[23], v23);
    (*(v22 + 16))(v20, v21, v23);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v23);
    sub_2676C8B0C();
    (*(v22 + 8))(v21, v23);
  }

  v24 = swift_task_alloc();
  v0[39] = v24;
  *v24 = v0;
  v24[1] = sub_26765562C;

  return sub_2676569FC();
}

uint64_t sub_26765562C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = *v1;
  *(v2 + 320) = v3;
  *(v2 + 328) = v0;

  if (v0)
  {

    v4 = sub_2676561D0;
  }

  else
  {
    v4 = sub_267655744;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_267655744()
{
  v1 = v0[36];
  v2 = v0[17];
  v3 = v0[3];
  type metadata accessor for ReadMailCATsSimple(0);
  sub_2676CB47C();
  v0[42] = sub_2676CB42C();
  sub_267607B28(v3 + *(v1 + 24), v2, &qword_2801CBFE8, &unk_2676CD9E0);
  v4 = sub_2676C8C8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v4);

  v6 = v0[17];
  if (EnumTagSinglePayload == 1)
  {
    sub_2675E35CC(v0[17], &qword_2801CBFE8, &unk_2676CD9E0);
    v7 = 0;
  }

  else
  {
    v7 = sub_267626550();
    (*(*(v4 - 8) + 8))(v6, v4);
  }

  v0[43] = v7;
  if ((v0[37] & 0x40) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[38];
  }

  v0[44] = v8;
  if (v0[33])
  {

    sub_2676CBFEC();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v0[16];
  v11 = sub_2676CB3FC();
  __swift_storeEnumTagSinglePayload(v10, v9, 1, v11);
  v12 = swift_task_alloc();
  v0[45] = v12;
  *v12 = v0;
  v12[1] = sub_267655984;

  return sub_267654290();
}

uint64_t sub_267655984()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;
  v5 = *(v2 + 128);
  *(v3 + 368) = v6;
  *(v3 + 376) = v0;

  sub_2675E35CC(v5, &qword_2801CBFD0, &qword_2676CDEA0);

  if (v0)
  {

    v7 = sub_2676562F4;
  }

  else
  {

    v7 = sub_267655B64;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_267655B64()
{
  v1 = [*(v0 + 368) dialog];
  sub_2675E16F4();
  v2 = sub_2676CC0FC();

  v3 = sub_267630B8C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v22 = *(v0 + 256);
      v23 = *(v0 + 264);
      v24 = *(v0 + 216);
      v7 = *(v0 + 120);
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v10 = *(v0 + 72);
      v11 = *(v0 + 80);
      v12 = *(v0 + 64);
      v13 = *(v0 + 40);
      v14 = *(v0 + 48);
      v19 = *(v0 + 56);
      v20 = *(v0 + 32);
      v21 = *(v0 + 24);

      sub_2676C999C();
      (*(v11 + 16))(v9, v8, v10);
      sub_2676C9D2C();
      sub_2676C9D6C();
      sub_26762D4C8(v12);
      sub_2676C9D3C();
      sub_2676C9D7C();
      sub_2676C9DBC();
      sub_2676C9DAC();
      v15 = sub_2676C9B3C();
      __swift_storeEnumTagSinglePayload(v19, 1, 1, v15);
      sub_2676C9D8C();
      sub_2676C9D9C();
      sub_2676C90EC();
      sub_2676C90DC();
      (*(v13 + 8))(v14, v20);
      sub_2676C9D5C();
      sub_267656420(v7, v22, v23, v21);

      (*(v11 + 8))(v8, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC528, &qword_2676CF290);
      v16 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v17 = swift_allocObject();
      *(v0 + 384) = v17;
      *(v17 + 16) = xmmword_2676CDE20;
      sub_267607B28(v21, v17 + v16, &qword_2801CC3D8, &unk_2676CEC00);
      v18 = swift_task_alloc();
      *(v0 + 392) = v18;
      *v18 = v0;
      v18[1] = sub_267655F18;

      JUMPOUT(0x26763CA8CLL);
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5FE0E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v5 setSpokenOnly_];
    [v6 setSpokenOnlyDefined_];
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_267655F18()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_267656024, 0, 0);
}

uint64_t sub_267656024()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 192);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);

  (*(v6 + 8))(v5, v7);
  sub_2675E35CC(v4, &qword_2801CBFE0, &qword_2676D1070);
  v1(v2, v3);

  OUTLINED_FUNCTION_15_0();

  return v8();
}

uint64_t sub_2676561D0()
{
  OUTLINED_FUNCTION_0_19();
  sub_2675E35CC(v1, &qword_2801CBFE0, &qword_2676D1070);
  v2(v3, v0);

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_2676562F4()
{

  OUTLINED_FUNCTION_0_19();
  sub_2675E35CC(v1, &qword_2801CBFE0, &qword_2676D1070);
  v2(v3, v0);

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_267656550()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2676565E8;

  return sub_267654E24();
}

uint64_t sub_2676565E8()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_2676566CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267656980;

  return sub_267654E24();
}

uint64_t sub_267656764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267656980;

  return MEMORY[0x2821BB1F8](a1, a2, a3);
}

uint64_t sub_267656818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267656980;

  return MEMORY[0x2821BB1E8](a1, a2, a3);
}

uint64_t sub_2676568CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267656980;

  return MEMORY[0x2821BB1F0](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_0_19()
{
}

uint64_t OUTLINED_FUNCTION_5_18()
{

  return sub_267607B28(v0, v1, v2, v3);
}

uint64_t sub_2676569FC()
{
  OUTLINED_FUNCTION_3_0();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_2676C8C8C();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v4);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = sub_2676C8E9C();
  v1[19] = v5;
  OUTLINED_FUNCTION_4_1(v5);
  v1[20] = swift_task_alloc();
  v6 = sub_2676C8EBC();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_4_1(v7);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267656BD8, 0, 0);
}

uint64_t sub_267656BD8(uint64_t a1)
{
  v2 = v1[26];
  sub_2676C8AFC();
  v3 = OUTLINED_FUNCTION_17_15(v2);
  v4 = v1[26];
  if (v3)
  {
    sub_2675EB7EC(v1[26], &qword_2801CBFE0, &qword_2676D1070);
    v5 = 0;
  }

  else
  {
    v6 = v1[24];
    v7 = v1[21];
    v8 = v1[22];
    (*(v8 + 16))(v6, v1[26], v7);
    sub_2675EB7EC(v4, &qword_2801CBFE0, &qword_2676D1070);
    sub_2676C8E8C();
    sub_2675E362C();
    sub_2676CC08C();
    v5 = v9;
    (*(v8 + 8))(v6, v7);
  }

  v10 = v1[25];
  sub_2675F95E4(v1[11], v10, &qword_2801CBFE0, &qword_2676D1070);
  v11 = OUTLINED_FUNCTION_17_15(v10);
  v12 = v1[25];
  if (v11 == 1)
  {
    sub_2675EB7EC(v1[25], &qword_2801CBFE0, &qword_2676D1070);
  }

  else
  {
    v14 = v1[22];
    v13 = v1[23];
    v15 = v1[21];

    (*(v14 + 32))(v13, v12, v15);
    sub_2676C8E8C();
    sub_2675E362C();
    sub_2676CC08C();
    v5 = v16;
    (*(v14 + 8))(v13, v15);
  }

  type metadata accessor for MailMessageConcept.Builder(0);
  swift_allocObject();
  v17 = sub_26761A7EC();
  if (v5)
  {
    sub_2676CBFEC();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v1[17];
  v20 = v1[18];
  v22 = v1[14];
  v21 = v1[15];
  v55 = v1[13];
  v23 = sub_2676CB3FC();
  __swift_storeEnumTagSinglePayload(v20, v18, 1, v23);
  v24 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_body;
  swift_beginAccess();
  sub_267646164(v20, v17 + v24);
  swift_endAccess();
  v25 = OUTLINED_FUNCTION_14_14();
  sub_2675EB7EC(v25, v26, &qword_2676CDEA0);
  sub_2676CBFEC();
  OUTLINED_FUNCTION_17_2();
  v54 = v23;
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  v30 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_type;
  swift_beginAccess();
  sub_267646164(v19, v17 + v30);
  swift_endAccess();
  v31 = OUTLINED_FUNCTION_11_16();
  sub_2675EB7EC(v31, v32, &qword_2676CDEA0);
  sub_2676C8B3C();
  v33 = sub_267626550();
  v34 = *(v22 + 8);
  v34(v21, v55);
  sub_26761A870(v33);

  v35 = sub_2676C8ACC();
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = v1[14];
    v56 = MEMORY[0x277D84F90];
    sub_2676CC46C();
    v39 = *(v37 + 16);
    v37 += 16;
    v38 = v39;
    v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v41 = *(v37 + 56);
    do
    {
      v42 = v1[15];
      v43 = v1[13];
      v44 = OUTLINED_FUNCTION_11_16();
      v38(v44);
      sub_267626550();
      v34(v42, v43);
      sub_2676CC44C();
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v40 += v41;
      --v36;
    }

    while (v36);

    v45 = v56;
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  v46 = sub_26761A8BC(v45);

  sub_2676C8BAC();
  if (v47)
  {
    sub_2676CBFEC();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = v1[16];
  __swift_storeEnumTagSinglePayload(v49, v48, 1, v54);
  v50 = OBJC_IVAR____TtCC16SiriMailInternal18MailMessageConcept7Builder_subject;
  swift_beginAccess();
  sub_267646164(v49, v46 + v50);
  swift_endAccess();
  sub_2675EB7EC(v49, &qword_2801CBFD0, &qword_2676CDEA0);
  type metadata accessor for MailMessageConcept(0);
  swift_allocObject();
  v51 = sub_26761A9A4(v46);

  v52 = v1[1];

  return v52(v51);
}

uint64_t sub_26765719C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_26761F624;

  return sub_267657234(v2, 0);
}

uint64_t sub_267657234(uint64_t a1, char a2)
{
  *(v3 + 384) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_2676C90FC();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  *(v3 + 96) = swift_task_alloc();
  sub_2676CAF8C();
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_2676C99CC();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  v6 = sub_2676C9DDC();
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  sub_2676CB48C();
  *(v3 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  *(v3 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  *(v3 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26765758C, 0, 0);
}

uint64_t sub_26765758C()
{
  v1 = v0[8];
  SubjectLine = type metadata accessor for ReadSubjectLine(0);
  v0[31] = SubjectLine;
  v3 = *(v1 + *(SubjectLine + 24));
  v0[32] = v3;
  if ((v3 & 0x20) != 0)
  {
    v6 = v0[29];
    v5 = v0[30];
    sub_2676CB28C();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    sub_2675F95E4(v1, v6, &qword_2801CC3D8, &unk_2676CEC00);

    sub_2676C8A7C();
    sub_2676C8BFC();
    OUTLINED_FUNCTION_2_6();
    (*(v8 + 8))(v6);
    v9 = sub_2676C90CC();
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v7);
    v4 = sub_2675FFBC4(v5);
    sub_2675EB7EC(v5, &qword_2801CC380, &unk_2676CEF40);
  }

  else
  {
    v4 = 0;
  }

  v0[33] = v4;
  v19 = OUTLINED_FUNCTION_11_16();
  sub_2675F95E4(v19, v20, v21, v22);

  sub_2676C8EBC();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = swift_task_alloc();
  v0[34] = v27;
  *v27 = v0;
  v27[1] = sub_2676577B0;

  return sub_2676569FC();
}

uint64_t sub_2676577B0()
{
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  v4 = v2[25];
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  v3[35] = v7;
  v3[36] = v0;

  sub_2675EB7EC(v4, &qword_2801CBFE0, &qword_2676D1070);
  if (v0)
  {
    v8 = sub_26765840C;
  }

  else
  {
    v9 = v3[28];
    v3[37] = sub_2676C8BFC();
    OUTLINED_FUNCTION_2_6();
    v11 = *(v10 + 8);
    v3[38] = v11;
    v3[39] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v9);
    v8 = sub_267657934;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267657934()
{
  v1 = v0[24];
  sub_2675F95E4(v0[8] + *(v0[31] + 28), v1, &qword_2801CBFE8, &unk_2676CD9E0);
  v2 = sub_2676C8C8C();
  v3 = OUTLINED_FUNCTION_17_15(v1);
  v4 = v0[24];
  if (v3 == 1)
  {
    sub_2675EB7EC(v0[24], &qword_2801CBFE8, &unk_2676CD9E0);
    v5 = 0;
  }

  else
  {
    v5 = sub_267626550();
    OUTLINED_FUNCTION_14_2();
    (*(v6 + 8))(v4, v2);
  }

  v0[40] = v5;
  v7 = v0[32];
  type metadata accessor for ReadMailCATsSimple(0);
  sub_2676CB47C();
  v8 = 0;
  v0[41] = sub_2676CB42C();
  if ((v7 & 0x40) == 0)
  {
    v8 = v0[33];
  }

  v0[42] = v8;
  v9 = v0[26];
  v10 = v0[27];
  sub_2675F95E4(v0[8], v10, &qword_2801CC3D8, &unk_2676CEC00);
  v11 = *(v10 + *(v9 + 48) + 8);
  v12 = v0[38];
  v13 = v0[37];
  v14 = v0[27];

  if (v11)
  {
    sub_2676CBFEC();

    sub_2676CB3FC();
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v12(v14, v13);
  }

  else
  {
    v12(v14, v13);
    sub_2676CB3FC();
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }

  v23 = swift_task_alloc();
  v0[43] = v23;
  *v23 = v0;
  v23[1] = sub_267657BD0;

  return sub_267653F00();
}

uint64_t sub_267657BD0()
{
  OUTLINED_FUNCTION_9_3();
  v3 = *(v2 + 176);
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;
  *(v7 + 352) = v6;
  *(v7 + 360) = v0;

  sub_2675EB7EC(v3, &qword_2801CBFD0, &qword_2676CDEA0);

  if (v0)
  {
    v8 = sub_26765852C;
  }

  else
  {
    v8 = sub_267657D6C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_267657D6C()
{
  v1 = [*(v0 + 352) dialog];
  sub_2675E16F4();
  v2 = sub_2676CC0FC();

  v3 = sub_267630B8C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v34 = *(v0 + 320);
      v33 = *(v0 + 248);
      v7 = *(v0 + 160);
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      v11 = *(v0 + 112);
      v10 = *(v0 + 120);
      v12 = *(v0 + 104);
      v13 = *(v0 + 88);
      v30 = *(v0 + 80);
      v14 = *(v0 + 64);
      v31 = *(v0 + 72);
      v32 = *(v0 + 384);

      sub_2676C999C();
      (*(v10 + 16))(v9, v8, v11);
      sub_2676C9D2C();
      sub_2676C9D6C();
      sub_26762D4C8(v12);
      sub_2676C9D3C();
      sub_2676C9D7C();
      sub_2676C9DBC();
      sub_2676C9DAC();
      sub_2676C9B3C();
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
      sub_2676C9D8C();
      sub_2676C9D9C();
      sub_2676C90EC();
      sub_2676C90DC();
      (*(v30 + 8))(v13, v31);
      sub_2676C9D5C();
      sub_2676587E0(v7, v32, v14);
      (*(v10 + 8))(v8, v11);
      sub_2675E5D38(v14 + *(v33 + 32), v0 + 16);
      if (v34)
      {
        v19 = *(v0 + 168);

        sub_2676CB34C();

        v20 = sub_2676CB3FC();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
        v22 = *(v0 + 168);
        if (EnumTagSinglePayload == 1)
        {
          sub_2675EB7EC(*(v0 + 168), &qword_2801CBFD0, &qword_2676CDEA0);
        }

        else
        {
          sub_2676CB3EC();
          OUTLINED_FUNCTION_14_2();
          (*(v23 + 8))(v22, v20);
        }
      }

      v24 = OUTLINED_FUNCTION_14_14();
      sub_267658A38(v24, v25);
      *(v0 + 368) = v26;

      v27 = swift_task_alloc();
      *(v0 + 376) = v27;
      *v27 = v0;
      v27[1] = sub_267658188;
      OUTLINED_FUNCTION_5_8();

      __asm { BR              X8 }
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5FE0E0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v5 setSpokenOnly_];
    [v6 setSpokenOnlyDefined_];
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_267658188()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);

  return MEMORY[0x2822009F8](sub_267658298, 0, 0);
}

uint64_t sub_267658298()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_15_0();

  return v4();
}

void sub_26765840C()
{
  v1 = *(v0 + 224);

  sub_2676C8BFC();
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 8))(v1);
  OUTLINED_FUNCTION_2_23();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_5_8();

  __asm { BRAA            X1, X16 }
}

void sub_26765852C()
{

  OUTLINED_FUNCTION_2_23();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_5_8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267658630(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_267658650, 0, 0);
}

uint64_t sub_267658650()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[3];
  v2 = (*(v1 + *(type metadata accessor for ReadSubjectLine(0) + 24)) & 1) == 0;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_267658700;
  v4 = v0[2];

  return sub_267657234(v4, v2);
}

uint64_t sub_267658700()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_2676587E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2676CAF8C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  sub_2676C9DAC();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
  sub_2676CA3AC();
  sub_2676299B8(v11);
  (*(v9 + 8))(v11, v8);
  v16 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
  sub_2676C9D8C();
  result = type metadata accessor for ReadSubjectLine(0);
  if ((*(a3 + *(result + 24)) & 0x80) != 0)
  {
    sub_2676CAF6C();
    return sub_2676C9D3C();
  }

  return result;
}

uint64_t sub_267658A38(uint64_t a1, uint64_t a2)
{
  sub_2676C902C();
  OUTLINED_FUNCTION_3();
  v64 = v6;
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_5();
  v63 = v7;
  sub_2676C904C();
  OUTLINED_FUNCTION_3();
  v61 = v9;
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_5();
  v60 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v66 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC210, &qword_2676CEDC0);
  v18 = OUTLINED_FUNCTION_4_1(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v59 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD188, &unk_2676D19D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2676CDE30;
  SubjectLine = type metadata accessor for ReadSubjectLine(0);
  v25 = (v2 + *(SubjectLine + 44));
  v26 = v25[1];
  *(inited + 32) = *v25;
  *(inited + 40) = v26;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v27 = *(SubjectLine + 48);
  v67 = v2;
  sub_2675F95E4(v2 + v27, v16, &qword_2801CC380, &unk_2676CEF40);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
  OUTLINED_FUNCTION_9_15(v16);
  if (v46)
  {

    v29 = &qword_2801CC380;
    v30 = &unk_2676CEF40;
    v31 = v16;
LABEL_6:
    sub_2675EB7EC(v31, v29, v30);
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    goto LABEL_8;
  }

  v32 = *(v28 + 48);
  sub_2675F2D78(v16, v22);
  v33 = sub_2676C90CC();
  v34 = OUTLINED_FUNCTION_17_15(v22);

  if (v34 == 1)
  {
    sub_2675EB7EC(&v16[v32], &qword_2801CC210, &qword_2676CEDC0);
    v31 = v22;
    v29 = &qword_2801CC210;
    v30 = &qword_2676CEDC0;
    goto LABEL_6;
  }

  v35 = v60;
  sub_2676C903C();
  v36 = v63;
  sub_2676C901C();
  v37 = v32;
  v58 = sub_2676C90BC();
  v39 = v38;
  (*(v64 + 8))(v36, v65);
  (*(v61 + 8))(v35, v62);
  OUTLINED_FUNCTION_14_2();
  (*(v40 + 8))(v22, v33);
  sub_2675EB7EC(&v16[v37], &qword_2801CC210, &qword_2676CEDC0);
  *(inited + 64) = v58;
  *(inited + 72) = v39;
LABEL_8:
  v41 = v66;
  sub_2675F95E4(v67 + v27, v66, &qword_2801CC380, &unk_2676CEF40);
  OUTLINED_FUNCTION_9_15(v41);
  if (v46)
  {
    v42 = &qword_2801CC380;
    v43 = &unk_2676CEF40;
    v44 = v41;
LABEL_14:
    sub_2675EB7EC(v44, v42, v43);
    *(inited + 80) = 0;
    *(inited + 88) = 0;
    goto LABEL_15;
  }

  v45 = v59;
  sub_2675F2D78(v41 + *(v28 + 48), v59);
  sub_2676C90CC();
  OUTLINED_FUNCTION_9_15(v45);
  if (v46)
  {
    sub_2675EB7EC(v41, &qword_2801CC210, &qword_2676CEDC0);
    v44 = OUTLINED_FUNCTION_14_14();
    v43 = &qword_2676CEDC0;
    goto LABEL_14;
  }

  v47 = v60;
  sub_2676C903C();
  v48 = v63;
  sub_2676C901C();
  v49 = sub_2676C90BC();
  v51 = v50;
  (*(v64 + 8))(v48, v65);
  (*(v61 + 8))(v47, v62);
  OUTLINED_FUNCTION_14_2();
  v52 = OUTLINED_FUNCTION_14_14();
  v53(v52);
  sub_2675EB7EC(v41, &qword_2801CC210, &qword_2676CEDC0);
  *(inited + 80) = v49;
  *(inited + 88) = v51;
LABEL_15:
  v54 = 0;
  while (v54 != 64)
  {
    v55 = *(inited + v54 + 40);
    v54 += 16;
    if (v55)
    {

      break;
    }
  }

  return OUTLINED_FUNCTION_11_16();
}

uint64_t sub_267658F84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;

  return sub_26765719C();
}

uint64_t sub_26765901C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26761F624;

  return sub_267658630(a1);
}

uint64_t sub_2676590B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26761F624;

  return MEMORY[0x2821BB1F8](a1, a2, a3);
}

uint64_t sub_267659168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26761F624;

  return MEMORY[0x2821BB1E8](a1, a2, a3);
}

uint64_t sub_26765921C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26761F624;

  return MEMORY[0x2821BB1F0](a1, a2, a3);
}

uint64_t sub_2676592DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675E1B38(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_26765930C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675E1B10(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_26765933C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675E1B4C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_267659374@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2675E1B30(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2676593A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2675E1B28(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2676593F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2675E1B40(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ReadSubjectLine(uint64_t a1)
{
  result = qword_2801CD150;
  if (!qword_2801CD150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2676594C0(uint64_t a1)
{
  sub_267654DA4(319);
  if (v1 <= 0x3F)
  {
    sub_267659644(319, &qword_2801CD160, &qword_2801CC3D8, &unk_2676CEC00, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2675F9EB0(319);
      if (v3 <= 0x3F)
      {
        sub_2675F9F5C(319, &qword_2801CC420, &protocol descriptor for ResponseProviding);
        if (v4 <= 0x3F)
        {
          sub_2675F9F5C(319, &qword_2801CCC70, &protocol descriptor for ReadingUtilProviding);
          if (v5 <= 0x3F)
          {
            sub_2675FEE64();
            if (v6 <= 0x3F)
            {
              sub_267659644(319, &qword_2801CC3B0, &qword_2801CC1F8, &qword_2676CEBA0, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
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

void sub_267659644(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_2676596B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2675E1AB8();
  *a1 = result;
  return result;
}

unint64_t sub_2676596E4()
{
  result = qword_2801CD168;
  if (!qword_2801CD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD168);
  }

  return result;
}

unint64_t sub_26765973C()
{
  result = qword_2801CD170;
  if (!qword_2801CD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD170);
  }

  return result;
}

unint64_t sub_267659794()
{
  result = qword_2801CD178;
  if (!qword_2801CD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD178);
  }

  return result;
}

unint64_t sub_2676597EC()
{
  result = qword_2801CD180;
  if (!qword_2801CD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD180);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_23()
{
}

uint64_t OUTLINED_FUNCTION_17_15(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal24RecipientResolutionErrorO(uint64_t a1)
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

uint64_t sub_2676598DC()
{
  v36 = sub_2676CBECC();
  OUTLINED_FUNCTION_3();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_7();
  v32 = v3 - v4;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v5);
  v7 = v29 - v6;
  if (qword_2801CBAA0 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v8 = sub_2676CBE4C();
  __swift_project_value_buffer(v8, qword_2801CDC90);
  v9 = sub_2676CBE2C();
  v10 = sub_2676CC23C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2675D4000, v9, v10, "#ReferenceResolution calling SRR for resolving onscreen Mail app entity", v11, 2u);
    MEMORY[0x26D5FEA80](v11, -1, -1);
  }

  sub_2676CA37C();
  swift_allocObject();
  sub_2676CA36C();
  v12 = MEMORY[0x26D5FC240]();

  if (v12)
  {
    v29[1] = v12;
    v13 = sub_267659C68(v12);
    v14 = 0;
    v15 = *(v13 + 2);
    v34 = v1 + 16;
    v35 = v15;
    v31 = (v1 + 32);
    v33 = MEMORY[0x277D84F90];
    while (1)
    {
      while (1)
      {
        if (v35 == v14)
        {

          v27 = sub_267606828(v33);

          return v27;
        }

        if (v14 >= *(v13 + 2))
        {
          __break(1u);
          goto LABEL_24;
        }

        v16 = (*(v1 + 80) + 32) & ~*(v1 + 80);
        v17 = *(v1 + 72);
        (*(v1 + 16))(v7, &v13[v16 + v17 * v14], v36);
        if (sub_2676CBE9C() != 0xD000000000000014 || 0x80000002676D6080 != v18)
        {
          break;
        }

LABEL_15:
        v21 = *v31;
        (*v31)(v32, v7, v36);
        v22 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v22;
        v30 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_3_19();
          v22 = v37;
        }

        v25 = *(v22 + 16);
        v24 = *(v22 + 24);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v33 = v25 + 1;
          sub_2676C28F8((v24 > 1), v25 + 1, 1);
          v26 = v33;
          v22 = v37;
        }

        ++v14;
        *(v22 + 16) = v26;
        v33 = v22;
        v30(v22 + v16 + v25 * v17, v32, v36);
      }

      v20 = sub_2676CC59C();

      if (v20)
      {
        goto LABEL_15;
      }

      (*(v1 + 8))(v7, v36);
      ++v14;
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_267659C68(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD190, "Ԭ");
  MEMORY[0x28223BE20](v1 - 8);
  v187 = &v167 - v2;
  v188 = sub_2676CBECC();
  v179 = *(v188 - 8);
  v3 = MEMORY[0x28223BE20](v188);
  v178 = (&v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v182 = &v167 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v175 = &v167 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v180 = &v167 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v171 = &v167 - v12;
  MEMORY[0x28223BE20](v11);
  v186 = &v167 - v13;
  v189 = sub_2676CBE6C();
  v181 = *(v189 - 8);
  v14 = MEMORY[0x28223BE20](v189);
  *&v177 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v172 = &v167 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v190 = &v167 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v185 = &v167 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v183 = &v167 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v167 - v24;
  v26 = sub_2676CBEDC();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v169 = &v167 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v167 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v167 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD198, "Ԭ");
  v36 = MEMORY[0x28223BE20](v35);
  v38 = (&v167 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36);
  v40 = &v167 - v39;
  sub_2676CBE8C();
  swift_allocObject();

  sub_2676CBE7C();
  sub_2676CBDCC();

  v176 = v40;
  sub_267607B28(v40, v38, &qword_2801CD198, "Ԭ");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = *v38;
    if (qword_2801CBAA0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_81;
  }

  (*(v27 + 32))(v34, v38, v26);
  v52 = *(v27 + 16);
  v170 = v34;
  v52(v32, v34, v26);
  v53 = (*(v27 + 88))(v32, v26);
  v54 = *MEMORY[0x277D5FEC0];
  v55 = v32;
  v173 = v27;
  v174 = v26;
  if (v53 == v54)
  {
    (*(v27 + 96))(v32, v26);
    v56 = v181;
    v57 = v189;
    (*(v181 + 32))(v25, v32, v189);
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v58 = sub_2676CBE4C();
    __swift_project_value_buffer(v58, qword_2801CDC90);
    v59 = *(v56 + 16);
    v60 = v183;
    v190 = v25;
    v59(v183, v25, v57);
    v61 = sub_2676CBE2C();
    v62 = sub_2676CC23C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v56;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v192[0] = v65;
      *v64 = 136315138;
      sub_26765BD00(&qword_2801CD1A8, MEMORY[0x277D5FE08], MEMORY[0x277D5FE10]);
      v66 = sub_2676CC56C();
      v68 = v67;
      v69 = *(v63 + 8);
      v69(v60, v189);
      v70 = sub_2676B0B84(v66, v68, v192);
      v57 = v189;

      *(v64 + 4) = v70;
      _os_log_impl(&dword_2675D4000, v61, v62, "ReferenceResolution# Found a candidate %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x26D5FEA80](v65, -1, -1);
      MEMORY[0x26D5FEA80](v64, -1, -1);
    }

    else
    {

      v69 = *(v56 + 8);
      v69(v60, v57);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC548, &qword_2676CF2B0);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_2676CDE20;
    v107 = v190;
    sub_2676CBE5C();
    v69(v107, v57);
    v71 = v106;
    (*(v173 + 8))(v170, v174);
LABEL_33:
    sub_2675E35CC(v176, &qword_2801CD198, "Ԭ");
    return v71;
  }

  v72 = v189;
  if (v53 == *MEMORY[0x277D5FED0])
  {
    (*(v173 + 96))(v32, v174);
    v73 = *v32;
    v74 = v188;
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v75 = sub_2676CBE4C();
    v185 = __swift_project_value_buffer(v75, qword_2801CDC90);
    v76 = sub_2676CBE2C();
    v77 = sub_2676CC23C();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_2675D4000, v76, v77, "ReferenceResolution# Found ambiguous entities", v78, 2u);
      MEMORY[0x26D5FEA80](v78, -1, -1);
    }

    v41 = 0;
    v186 = *(v73 + 16);
    v79 = v181;
    v184 = v181 + 16;
    v178 = (v179 + 8);
    v168 = (v179 + 32);
    v169 = MEMORY[0x277D84F90];
    *&v80 = 136315138;
    v177 = v80;
    v183 = (v181 + 8);
    v182 = ((v181 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v81 = v172;
    while (1)
    {
      if (v186 == v41)
      {

        (*(v173 + 8))(v170, v174);
        sub_2675E35CC(v176, &qword_2801CD198, "Ԭ");
        return v169;
      }

      if (v41 >= *(v73 + 16))
      {
        break;
      }

      v82 = v73;
      v83 = *(v79 + 16);
      v84 = v190;
      v83(v190, v73 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v41, v72);
      v83(v81, v84, v72);
      v85 = v81;
      v86 = sub_2676CBE2C();
      v87 = sub_2676CC23C();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v192[0] = v89;
        *v88 = v177;
        v90 = v180;
        sub_2676CBE5C();
        v91 = sub_2676CBE9C();
        v93 = v92;
        (*v178)(v90, v188);
        v94 = *v183;
        (*v183)(v85, v189);
        v95 = sub_2676B0B84(v91, v93, v192);

        *(v88 + 4) = v95;
        _os_log_impl(&dword_2675D4000, v86, v87, "#ReferenceResolution entity appBundleId %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v89);
        v96 = v89;
        v79 = v181;
        MEMORY[0x26D5FEA80](v96, -1, -1);
        v97 = v88;
        v74 = v188;
        v72 = v189;
        MEMORY[0x26D5FEA80](v97, -1, -1);
      }

      else
      {

        v94 = *v183;
        (*v183)(v85, v72);
      }

      v81 = v85;
      v98 = v187;
      v99 = v190;
      sub_2676CBE5C();
      __swift_storeEnumTagSinglePayload(v98, 0, 1, v74);
      v94(v99, v72);
      v73 = v82;
      if (__swift_getEnumTagSinglePayload(v98, 1, v74) == 1)
      {
        sub_2675E35CC(v98, &qword_2801CD190, "Ԭ");
        ++v41;
      }

      else
      {
        v100 = *v168;
        v101 = v171;
        (*v168)(v171, v98, v74);
        v100(v175, v101, v74);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2676070D4();
          v169 = v104;
        }

        v102 = *(v169 + 2);
        if (v102 >= *(v169 + 3) >> 1)
        {
          sub_2676070D4();
          v169 = v105;
        }

        ++v41;
        v103 = v169;
        *(v169 + 2) = v102 + 1;
        v100(&v103[((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v102], v175, v74);
        v79 = v181;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    swift_once();
LABEL_3:
    v42 = sub_2676CBE4C();
    __swift_project_value_buffer(v42, qword_2801CDC90);
    v43 = v41;
    v44 = sub_2676CBE2C();
    v45 = sub_2676CC24C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v191 = v41;
      v192[0] = v47;
      *v46 = 136315138;
      v48 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
      v49 = sub_2676CBFBC();
      v51 = sub_2676B0B84(v49, v50, v192);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_2675D4000, v44, v45, "ReferenceResolution# Received a failure: %s -> nil", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x26D5FEA80](v47, -1, -1);
      MEMORY[0x26D5FEA80](v46, -1, -1);
    }

    else
    {
    }

    goto LABEL_11;
  }

  if (v53 == *MEMORY[0x277D5FEC8])
  {
    v108 = v173;
    (*(v173 + 96))(v32, v174);
    v109 = *v32;
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v110 = sub_2676CBE4C();
    __swift_project_value_buffer(v110, qword_2801CDC90);

    v111 = sub_2676CBE2C();
    v112 = sub_2676CC23C();
    v113 = os_log_type_enabled(v111, v112);
    v114 = v170;
    if (v113)
    {
      v115 = swift_slowAlloc();
      *v115 = 134217984;
      *(v115 + 4) = *(v109 + 2);

      _os_log_impl(&dword_2675D4000, v111, v112, "ReferenceResolution# Found %ld candidates", v115, 0xCu);
      MEMORY[0x26D5FEA80](v115, -1, -1);
    }

    else
    {
    }

    v138 = *(v109 + 2);
    if (v138)
    {
      v190 = *(v181 + 16);
      v139 = *(v181 + 80);
      v187 = v109;
      v140 = &v109[(v139 + 32) & ~v139];
      v141 = *(v181 + 72);
      v142 = (v181 + 8);
      v143 = MEMORY[0x277D84F90];
      do
      {
        v144 = v185;
        v145 = v189;
        (v190)(v185, v140, v189);
        sub_2676CBE5C();
        (*v142)(v144, v145);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2676070D4();
          v143 = v148;
        }

        v146 = *(v143 + 16);
        v147 = v143;
        if (v146 >= *(v143 + 24) >> 1)
        {
          sub_2676070D4();
          v147 = v149;
        }

        v143 = v147;
        *(v147 + 16) = v146 + 1;
        (*(v179 + 32))(v147 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v146, v186, v188);
        v140 += v141;
        --v138;
      }

      while (v138);

      v108 = v173;
      v114 = v170;
      v71 = v143;
    }

    else
    {

      v71 = MEMORY[0x277D84F90];
    }

    (*(v108 + 8))(v114, v174);
    goto LABEL_33;
  }

  v117 = v174;
  if (v53 == *MEMORY[0x277D5FED8])
  {
    (*(v173 + 96))(v32, v174);
    v41 = *v32;
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v118 = sub_2676CBE4C();
    __swift_project_value_buffer(v118, qword_2801CDC90);
    v119 = sub_2676CBE2C();
    v120 = sub_2676CC23C();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_2675D4000, v119, v120, "ReferenceResolution# Found plural ambiguous entities", v121, 2u);
      MEMORY[0x26D5FEA80](v121, -1, -1);
    }

    v122 = 0;
    v123 = *(v41 + 16);
    v124 = v181 + 16;
    v190 = (v181 + 8);
    v125 = (v179 + 32);
    v71 = MEMORY[0x277D84F90];
    while (v123 != v122)
    {
      if (v122 >= *(v41 + 16))
      {
        goto LABEL_80;
      }

      v126 = *(v41 + 8 * v122++ + 32);
      if (*(v126 + 16))
      {
        v127 = v71;
        v128 = v181;
        v129 = v177;
        v130 = v189;
        v131 = v124;
        (*(v181 + 16))(v177, v126 + ((*(v128 + 80) + 32) & ~*(v128 + 80)), v189);
        v132 = v178;
        sub_2676CBE5C();
        (*(v128 + 8))(v129, v130);
        v133 = *v125;
        (*v125)(v182, v132, v188);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2676070D4();
          v127 = v136;
        }

        v134 = *(v127 + 16);
        v135 = v127;
        if (v134 >= *(v127 + 24) >> 1)
        {
          sub_2676070D4();
          v135 = v137;
        }

        *(v135 + 16) = v134 + 1;
        v71 = v135;
        v133((v135 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v134), v182, v188);
        v117 = v174;
        v124 = v131;
      }
    }

    (*(v173 + 8))(v170, v117);
    goto LABEL_33;
  }

  if (v53 != *MEMORY[0x277D5FEE0])
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v154 = sub_2676CBE4C();
    __swift_project_value_buffer(v154, qword_2801CDC90);
    v155 = v169;
    v156 = v170;
    v52(v169, v170, v117);
    v157 = sub_2676CBE2C();
    v158 = sub_2676CC24C();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v192[0] = v160;
      *v159 = 136315138;
      sub_26765BD00(&qword_2801CD1A0, MEMORY[0x277D5FEE8], MEMORY[0x277D5FEF0]);
      v161 = sub_2676CC56C();
      v162 = v155;
      v164 = v163;
      v190 = v32;
      v165 = *(v173 + 8);
      v165(v162, v117);
      v166 = sub_2676B0B84(v161, v164, v192);

      *(v159 + 4) = v166;
      _os_log_impl(&dword_2675D4000, v157, v158, "ReferenceResolution# Received unknown result type %s", v159, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v160);
      MEMORY[0x26D5FEA80](v160, -1, -1);
      MEMORY[0x26D5FEA80](v159, -1, -1);

      v165(v170, v117);
      v55 = v190;
    }

    else
    {

      v165 = *(v173 + 8);
      v165(v155, v117);
      v165(v156, v117);
    }

    sub_2675E35CC(v176, &qword_2801CD198, "Ԭ");
    v165(v55, v117);
    return MEMORY[0x277D84F90];
  }

  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v150 = sub_2676CBE4C();
  __swift_project_value_buffer(v150, qword_2801CDC90);
  v151 = sub_2676CBE2C();
  v152 = sub_2676CC23C();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&dword_2675D4000, v151, v152, "ReferenceResolution# No matches found", v153, 2u);
    MEMORY[0x26D5FEA80](v153, -1, -1);
  }

  (*(v173 + 8))(v170, v117);
LABEL_11:
  sub_2675E35CC(v176, &qword_2801CD198, "Ԭ");
  return MEMORY[0x277D84F90];
}

uint64_t sub_26765B2C8()
{
  v0 = sub_2676CBECC();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_7();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v60 = &v56 - v8;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v9);
  v62 = &v56 - v10;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD190, "Ԭ");
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_1_7();
  v59 = v15 - v16;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  if (qword_2801CBAA0 != -1)
  {
LABEL_38:
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v20 = sub_2676CBE4C();
  __swift_project_value_buffer(v20, qword_2801CDC90);
  v21 = sub_2676CBE2C();
  v22 = sub_2676CC23C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2675D4000, v21, v22, "#ReferenceResolution calling SRR for resolving FormattedString entity", v23, 2u);
    MEMORY[0x26D5FEA80](v23, -1, -1);
  }

  sub_2676CA74C();
  swift_allocObject();
  sub_2676CA73C();
  v24 = MEMORY[0x26D5FC240]();

  if (v24)
  {
    v57 = v19;
    v58 = v6;
    v56 = v24;
    v25 = sub_267659C68(v24);
    v19 = 0;
    v26 = *(v25 + 2);
    v65 = "com.apple.intelligenceflowd";
    v66 = v26;
    v67 = v2 + 8;
    v68 = v2 + 16;
    v63 = (v2 + 32);
    v64 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v66 == v19)
      {

        v6 = 0;
        v13 = v64;
        v41 = *(v64 + 2);
        v19 = v57;
        v42 = v58;
        for (i = v60; ; v46(i, v0))
        {
          if (v41 == v6)
          {

            v47 = 1;
            goto LABEL_28;
          }

          if (v6 >= *(v13 + 2))
          {
            goto LABEL_37;
          }

          (*(v2 + 16))(i, &v13[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v6], v0);
          sub_2676CBEBC();
          v44 = sub_2676CA93C();

          v45 = *(v44 + 16);

          if (v45)
          {
            break;
          }

          ++v6;
          OUTLINED_FUNCTION_4_20();
        }

        (*v63)(v19, i, v0);
        v47 = 0;
LABEL_28:
        __swift_storeEnumTagSinglePayload(v19, v47, 1, v0);
        v48 = v59;
        sub_267607B28(v19, v59, &qword_2801CD190, "Ԭ");
        if (__swift_getEnumTagSinglePayload(v48, 1, v0) == 1)
        {
          sub_2675E35CC(v19, &qword_2801CD190, "Ԭ");

          return 0;
        }

        (*v63)(v42, v48, v0);
        sub_2676CBEBC();
        v49 = sub_2676CA6EC();
        OUTLINED_FUNCTION_6_17(v49);

        if (v69)
        {
          v50 = sub_2676CA6DC();
          v52 = v51;

          OUTLINED_FUNCTION_4_20();
          v53(v42, v0);
          sub_2675E35CC(v19, &qword_2801CD190, "Ԭ");
          if (v52)
          {
            return v50;
          }
        }

        else
        {

          OUTLINED_FUNCTION_4_20();
          v54(v42, v0);
          sub_2675E35CC(v19, &qword_2801CD190, "Ԭ");
        }

        return 0;
      }

      if (v19 >= *(v25 + 2))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v27 = *(v2 + 72);
      v28 = v0;
      (*(v2 + 16))(v13, &v25[v6 + v27 * v19], v0);
      if (sub_2676CBE9C() == 0xD00000000000001BLL && 0x80000002676D7760 == v29)
      {
        break;
      }

      v31 = sub_2676CC59C();

      if (v31 & 1) != 0 || (sub_2676CBE9C(), v32 = sub_2676CC05C(), , (v32))
      {
LABEL_16:
        v34 = *v63;
        (*v63)(v62, v13, v28);
        v35 = v64;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v35;
        v61 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_3_19();
          v35 = v69;
        }

        v38 = *(v35 + 2);
        v37 = *(v35 + 3);
        v39 = (v38 + 1);
        if (v38 >= v37 >> 1)
        {
          v64 = (v38 + 1);
          sub_2676C28F8((v37 > 1), v38 + 1, 1);
          v39 = v64;
          v35 = v69;
        }

        ++v19;
        *(v35 + 2) = v39;
        v64 = v35;
        v40 = &v35[v6 + v38 * v27];
        v0 = v28;
        v61(v40, v62, v28);
      }

      else
      {
        OUTLINED_FUNCTION_4_20();
        v0 = v28;
        v33(v13, v28);
        ++v19;
      }
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_26765B964()
{
  v0 = sub_2676CBECC();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD190, "Ԭ");
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_1_7();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v13 = sub_2676CBE4C();
  __swift_project_value_buffer(v13, qword_2801CDC90);
  v14 = sub_2676CBE2C();
  v15 = sub_2676CC23C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2675D4000, v14, v15, "#ReferenceResolution calling SRR for resolving SiriContentTopic entity", v16, 2u);
    MEMORY[0x26D5FEA80](v16, -1, -1);
  }

  sub_2676CA35C();
  swift_allocObject();
  sub_2676CA34C();
  v17 = MEMORY[0x26D5FC240]();

  if (!v17)
  {
    return 0;
  }

  v18 = sub_267659C68(v17);
  sub_267698FEC(v18);

  sub_267607B28(v12, v9, &qword_2801CD190, "Ԭ");
  if (__swift_getEnumTagSinglePayload(v9, 1, v0) == 1)
  {
    sub_2675E35CC(v12, &qword_2801CD190, "Ԭ");

    return 0;
  }

  (*(v2 + 32))(v5, v9, v0);
  sub_2676CBEBC();
  v19 = sub_2676CA32C();
  OUTLINED_FUNCTION_6_17(v19);

  if (!v24[1])
  {

    (*(v2 + 8))(v5, v0);
    sub_2675E35CC(v12, &qword_2801CD190, "Ԭ");
    return 0;
  }

  v20 = sub_2676CA31C();
  v22 = v21;

  (*(v2 + 8))(v5, v0);
  sub_2675E35CC(v12, &qword_2801CD190, "Ԭ");
  if (!v22)
  {
    return 0;
  }

  return v20;
}

uint64_t sub_26765BD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *OUTLINED_FUNCTION_3_19()
{
  v2 = *(v0 + 16) + 1;

  return sub_2676C28F8(0, v2, 1);
}

void *OUTLINED_FUNCTION_6_17(uint64_t a1)
{

  return sub_2676CA5AC();
}

uint64_t sub_26765BDBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC748, &unk_2676CF7E0);
  OUTLINED_FUNCTION_4_1(v2);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  sub_2675F95E4(a1, &v6 - v4, &qword_2801CC748, &unk_2676CF7E0);
  return sub_2676CBA3C();
}

uint64_t (*sub_26765BE74(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  v2[5] = v3;
  v2[6] = __swift_coroFrameAllocStub(*(v5 + 64));
  (*(v4 + 16))();
  v2[7] = sub_2676C978C();
  return sub_26765BF6C;
}

void sub_26765BF6C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_26765BFFC(void (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v1 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan__replyMessageTask, v3);
  a1(v3);
  return (*(v5 + 8))(v8, v3);
}

void sub_26765C0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v218 = v20;
  v22 = v21;
  v221 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3();
  v212 = v25;
  v213 = v24;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v27);
  sub_2676C9EAC();
  OUTLINED_FUNCTION_3();
  v216 = v29;
  v217 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_2();
  v215 = v31 - v30;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3();
  v201 = v32;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v34);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_3();
  v198 = v35;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v39 = OUTLINED_FUNCTION_4_1(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD290, &qword_2676D24C0);
  OUTLINED_FUNCTION_4_1(v44);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v46);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD298, &unk_2676D1FC0);
  OUTLINED_FUNCTION_3();
  v204 = v47;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC620, &unk_2676D0C30);
  OUTLINED_FUNCTION_4_1(v50);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v52);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3();
  v206 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v55);
  v57 = v194 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v58);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v59);
  v61 = v194 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  OUTLINED_FUNCTION_3();
  v210 = v63;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v65);
  v67 = v194 - v66;
  sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v223 = v69;
  KeyPath = v68;
  v70 = MEMORY[0x28223BE20](v68);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  v72 = MEMORY[0x28223BE20](v71);
  MEMORY[0x28223BE20](v72);
  v74 = v194 - v73;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v203 = v57;
  v214 = v67;
  v219 = v62;
  v75 = sub_2676CBE4C();
  v220 = __swift_project_value_buffer(v75, qword_2801CDC90);
  v76 = sub_2676CBE2C();
  v77 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v77))
  {
    v78 = OUTLINED_FUNCTION_17_3();
    *v78 = 0;
    _os_log_impl(&dword_2675D4000, v76, v77, "#ReplyMailPlan accept(input:)", v78, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  sub_2676C9E5C();
  v80 = v223;
  v79 = KeyPath;
  v81 = v223 + 88;
  v82 = *(v223 + 88);
  v83 = v82(v74, KeyPath);
  v222 = v22;
  v84 = *MEMORY[0x277D5C160];
  v85 = v74;
  v86 = *(v80 + 8);
  v86(v85, v79);
  if (v83 == v84)
  {
    sub_2676C9E5C();
    sub_2676371E0();
    if (v87)
    {
      v88 = sub_2676CA77C();

      sub_267698EA0(v88);
      v89 = KeyPath;

      v90 = OUTLINED_FUNCTION_14_3();
      (v86)(v90);
      v91 = OUTLINED_FUNCTION_26_2();
      v92 = v219;
      if (__swift_getEnumTagSinglePayload(v91, v93, v219) != 1)
      {
        OUTLINED_FUNCTION_60_0();
        v94 = v214;
        OUTLINED_FUNCTION_14_11();
        v95();
        v96 = v208;
        v195 = *(v89 + 16);
        v195(v208, v94, v92);
        sub_2676CBA6C();
        OUTLINED_FUNCTION_0_20();
        sub_267662E7C(v97, v98, MEMORY[0x277D5C810]);
        OUTLINED_FUNCTION_40_2();
        v194[1] = v99;
        sub_2676CA3FC();
        v100 = OUTLINED_FUNCTION_26_2();
        if (__swift_getEnumTagSinglePayload(v100, v101, v209) == 1)
        {
          sub_267662EC4(v61, &qword_2801CC620, &unk_2676D0C30);
          v195(v96, v214, v92);
          sub_2676CBADC();
          sub_267662E7C(&qword_2801CCA48, MEMORY[0x277D5C8A8], MEMORY[0x277D5C890]);
          OUTLINED_FUNCTION_40_2();
          sub_2676CA3FC();
          v102 = OUTLINED_FUNCTION_26_2();
          v103 = v207;
          if (__swift_getEnumTagSinglePayload(v102, v104, v207) == 1)
          {
            v105 = OUTLINED_FUNCTION_13_16();
            v106(v105, v219);
            sub_267662EC4(v61, &qword_2801CD290, &qword_2676D24C0);
            goto LABEL_13;
          }

          v152 = OUTLINED_FUNCTION_11_16();
          v153(v152);
          swift_getKeyPath();
          OUTLINED_FUNCTION_1_22();
          sub_267662E7C(v154, v155, MEMORY[0x277D5C780]);
          OUTLINED_FUNCTION_40_2();
          OUTLINED_FUNCTION_37_7();
          sub_2676CA3EC();

          v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
          v157 = OUTLINED_FUNCTION_26_2();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v157, v158, v156);
          sub_267662EC4(v61, &qword_2801CC428, &unk_2676CEDD0);
          if (EnumTagSinglePayload == 1)
          {
            v160 = v197;
            sub_26761D288();
            swift_getKeyPath();
            OUTLINED_FUNCTION_60_0();
            v161 = v199;
            sub_2676C97EC();

            OUTLINED_FUNCTION_27_5();
            v162(v160, v161);
            v163 = v202;
            sub_2676C983C();
            OUTLINED_FUNCTION_27_5();
            v164(v103, v163);
            swift_getKeyPath();
            v165 = sub_26765BE74(v225);
            v166 = sub_2676CA3DC();
            if (__swift_getEnumTagSinglePayload(v167, 1, v156))
            {
              v168 = OUTLINED_FUNCTION_29_9();
              v166(v168);

              v169 = OUTLINED_FUNCTION_30_8();
              (v165)(v169);
            }

            else
            {
              KeyPath = swift_getKeyPath();
              swift_getKeyPath();
              OUTLINED_FUNCTION_23_8();
              sub_2676CA3EC();

              if (__swift_getEnumTagSinglePayload(v225, 1, v156) == 1)
              {
                sub_267662EC4(v225, &qword_2801CC428, &unk_2676CEDD0);
              }

              else
              {
                swift_getKeyPath();
                sub_2676CA89C();

                OUTLINED_FUNCTION_14_2();
                v181 = OUTLINED_FUNCTION_54_4();
                v182(v181);
              }

              sub_2676CA8AC();
              v183 = OUTLINED_FUNCTION_29_9();
              v166(v183);

              v184 = OUTLINED_FUNCTION_30_8();
              (v165)(v184);
            }

            v185 = sub_2676CBE2C();
            v186 = sub_2676CC23C();
            v187 = OUTLINED_FUNCTION_5_5(v186);
            v188 = v219;
            v189 = v207;
            if (v187)
            {
              v190 = OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_9_4(v190);
              OUTLINED_FUNCTION_4_18(&dword_2675D4000, v191, v192, "#ReplyMailPlan accept(input:) processed generic update message task, returning .yes");
              OUTLINED_FUNCTION_4_6();
            }

            sub_2676C974C();
            OUTLINED_FUNCTION_27_5();
            v193(v205, v189);
            v149 = OUTLINED_FUNCTION_13_16();
            v151 = v188;
          }

          else
          {
            v170 = v220;
            v171 = sub_2676CBE2C();
            v172 = sub_2676CC23C();
            if (OUTLINED_FUNCTION_5_5(v172))
            {
              v173 = OUTLINED_FUNCTION_17_3();
              *v173 = 0;
              _os_log_impl(&dword_2675D4000, v171, v170, "#ReplyMailPlan accept(input:) processed update message task, returning .yes", v173, 2u);
              OUTLINED_FUNCTION_2_5();
            }

            swift_getKeyPath();
            OUTLINED_FUNCTION_51_2();
            sub_2676CA3EC();

            v174 = v200;
            v175 = OUTLINED_FUNCTION_26_2();
            __swift_storeEnumTagSinglePayload(v175, v176, 1, v156);
            v177 = v196;
            OUTLINED_FUNCTION_29_0();
            sub_2676CA3CC();
            OUTLINED_FUNCTION_40_2();
            sub_2676C9E5C();
            sub_26765D1FC();
            v86(v174, KeyPath);
            sub_2676C974C();
            OUTLINED_FUNCTION_27_5();
            v178(v177, v209);
            OUTLINED_FUNCTION_27_5();
            v179 = OUTLINED_FUNCTION_43_2();
            v180(v179);
            v149 = OUTLINED_FUNCTION_13_16();
            v151 = v219;
          }
        }

        else
        {
          OUTLINED_FUNCTION_23_8();
          v142 = v203;
          OUTLINED_FUNCTION_14_11();
          v143();
          OUTLINED_FUNCTION_40_2();
          sub_2676C9E5C();
          sub_26765D1FC();
          v86(v61, KeyPath);
          v144 = sub_2676CBE2C();
          v145 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v145))
          {
            v146 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v146);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v147, v148, "#ReplyMailPlan accept(input:) processed reply task, returning .yes");
            OUTLINED_FUNCTION_4_6();
          }

          sub_2676C974C();
          (*(v81 + 8))(v142, v209);
          v149 = OUTLINED_FUNCTION_13_16();
          v151 = v92;
        }

        v150(v149, v151);
        goto LABEL_32;
      }
    }

    else
    {
      v107 = OUTLINED_FUNCTION_14_3();
      (v86)(v107);
      v108 = OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v108, v109, 1, v219);
    }

    sub_267662EC4(v61, &qword_2801CC640, &unk_2676CF550);
  }

LABEL_13:
  sub_2676C9E5C();
  v110 = OUTLINED_FUNCTION_37_7();
  if ((v82)(v110) != *MEMORY[0x277D5C150])
  {
    v127 = OUTLINED_FUNCTION_37_7();
    (v86)(v127);
    goto LABEL_21;
  }

  v111 = OUTLINED_FUNCTION_37_7();
  v112(v111);
  v113 = OUTLINED_FUNCTION_54_4();
  v114(v113);
  v115 = sub_2676C9E8C();
  v117 = v116;
  v118 = sub_2676C96CC();
  v119 = [v118 identifier];

  v120 = sub_2676CBF6C();
  v122 = v121;

  if (v115 == v120 && v117 == v122)
  {
  }

  else
  {
    OUTLINED_FUNCTION_11_16();
    v124 = sub_2676CC59C();

    if ((v124 & 1) == 0)
    {
      v125 = OUTLINED_FUNCTION_14_3();
      v126(v125);
LABEL_21:
      v128 = sub_2676CBE2C();
      v129 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_5(v129))
      {
        v130 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v130);
        OUTLINED_FUNCTION_4_18(&dword_2675D4000, v131, v132, "#ReplyMailPlan accept(input:): got a non USO parse, rejecting parse");
        OUTLINED_FUNCTION_4_6();
      }

      sub_2676C973C();
      goto LABEL_32;
    }
  }

  v133 = sub_2676CBE2C();
  v134 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_5(v134))
  {
    v135 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_9_4(v135);
    OUTLINED_FUNCTION_4_18(&dword_2675D4000, v136, v137, "#ReplyMailPlan got confirm DI, accepting parse");
    OUTLINED_FUNCTION_4_6();
  }

  v138 = v211;
  sub_26761D2DC();
  LOBYTE(v225[0]) = 1;
  v139 = v213;
  sub_2676C984C();
  (*(v212 + 8))(v138, v139);
  sub_2676C974C();
  v140 = OUTLINED_FUNCTION_14_3();
  v141(v140);
LABEL_32:
  OUTLINED_FUNCTION_20_1();
}

void sub_26765D1FC()
{
  OUTLINED_FUNCTION_21_1();
  v140 = v0;
  v141 = v1;
  v132 = v2;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3();
  v125 = v3;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v5);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_3();
  v133 = v6;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_1();
  v131 = v8;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD280, &qword_2676D1EB8);
  OUTLINED_FUNCTION_3();
  v126 = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  v138 = v11;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3();
  v122 = v12;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v14);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v18);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v119 = v19;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_3();
  v135 = v23;
  v136 = v22;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  v134 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD288, &qword_2676D1EC0);
  OUTLINED_FUNCTION_3();
  v27 = v26;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_50_3();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD218, &unk_2676D1D90);
  OUTLINED_FUNCTION_3();
  v31 = v30;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  v34 = v118 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD210, &qword_2676D1D88);
  OUTLINED_FUNCTION_3();
  v127 = v36;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  v39 = v118 - v38;
  sub_2676CBA6C();
  OUTLINED_FUNCTION_0_20();
  v130 = sub_267662E7C(v40, v41, MEMORY[0x277D5C810]);
  sub_2676C98BC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_22();
  v44 = sub_267662E7C(v42, v43, MEMORY[0x277D5C780]);
  sub_2676C988C();
  v45 = v44;

  (*(v31 + 8))(v34, v29);
  KeyPath = swift_getKeyPath();
  v142 = v39;
  v143 = v35;
  sub_2676C989C();

  LOBYTE(v34) = sub_2676C987C();
  v47 = *(v27 + 8);
  v48 = OUTLINED_FUNCTION_54_4();
  v129 = v27 + 8;
  v47(v48);
  if (v34)
  {
    v118[0] = v47;
    v49 = v134;
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_51_2();
    v50 = v136;
    sub_2676C97EC();

    (*(v135 + 8))(v49, v50);
    v51 = v120;
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5();
    v52 = OUTLINED_FUNCTION_29_0();
    v53(v52);
    v54 = swift_getKeyPath();
    sub_26765BE74(v145);
    OUTLINED_FUNCTION_80_0();
    v55 = v45;
    v56 = OUTLINED_FUNCTION_65_3(v144, v54);
    v58 = v57;
    KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (OUTLINED_FUNCTION_64_2(v58))
    {
      v59 = OUTLINED_FUNCTION_29_9();
      v56(v59);

      v60 = OUTLINED_FUNCTION_30_8();
    }

    else
    {
      v119 = v58;
      v120 = v56;
      v118[3] = swift_getKeyPath();
      swift_getKeyPath();
      v61 = v118[1];
      sub_2676CA3EC();

      if (OUTLINED_FUNCTION_64_2(v61) == 1)
      {
        sub_267662EC4(v61, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2();
        v62 = OUTLINED_FUNCTION_43_2();
        v63(v62);
      }

      sub_2676CA8AC();
      v64 = OUTLINED_FUNCTION_29_9();
      v120(v64);

      v60 = OUTLINED_FUNCTION_30_8();
    }

    v51(v60);
    v45 = v55;
    v47 = v118[0];
  }

  swift_getKeyPath();
  sub_2676C989C();

  v65 = sub_2676C987C();
  v66 = OUTLINED_FUNCTION_54_4();
  v47(v66);
  v67 = v137;
  v68 = v126;
  v129 = v45;
  if (v65)
  {
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_0();
    sub_2676C97EC();

    v69 = OUTLINED_FUNCTION_65_0();
    v70(v69);
    v71 = v123;
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5();
    v72(KeyPath, v71);
    v73 = swift_getKeyPath();
    sub_26765BE74(v145);
    OUTLINED_FUNCTION_80_0();
    v74 = OUTLINED_FUNCTION_65_3(v144, v73);
    v76 = v75;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (OUTLINED_FUNCTION_64_2(v76))
    {
      v78 = OUTLINED_FUNCTION_29_9();
      v74(v78);

      v79 = OUTLINED_FUNCTION_30_8();
      v71(v79);
    }

    else
    {
      v122 = v74;
      v123 = v71;
      v121 = swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_36_5();
      sub_2676CA3EC();

      if (OUTLINED_FUNCTION_64_2(v144) == 1)
      {
        sub_267662EC4(v144, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2();
        (*(v80 + 8))(v144, v77);
      }

      v81 = v123;
      OUTLINED_FUNCTION_11_16();
      sub_2676CA8AC();
      v82 = OUTLINED_FUNCTION_29_9();
      v122(v82);

      v83 = OUTLINED_FUNCTION_30_8();
      v81(v83);
      v67 = v137;
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_8_20();
  sub_267662E7C(v84, v85, MEMORY[0x277D5C6A8]);
  sub_2676C98AC();

  v86 = OUTLINED_FUNCTION_39_4();
  v87 = *(v68 + 8);
  v88 = OUTLINED_FUNCTION_65_0();
  v87(v88);
  if (v86)
  {
    sub_26765F97C();
    v67 = v134;
    sub_26761D288();
    v89 = swift_getKeyPath();
    OUTLINED_FUNCTION_44_3(v89);

    v90 = OUTLINED_FUNCTION_36_8();
    v91(v90);
    sub_2676C983C();
    v92 = OUTLINED_FUNCTION_61_3();
    v93(v92);
  }

  v94 = swift_getKeyPath();
  OUTLINED_FUNCTION_51_4(v94);

  v95 = OUTLINED_FUNCTION_39_4();
  v96 = OUTLINED_FUNCTION_65_0();
  v87(v96);
  if (v95)
  {
    sub_26765F97C();
    v67 = v134;
    sub_26761D288();
    v97 = swift_getKeyPath();
    OUTLINED_FUNCTION_44_3(v97);

    v98 = OUTLINED_FUNCTION_36_8();
    v99(v98);
    sub_2676C983C();
    v100 = OUTLINED_FUNCTION_61_3();
    v101(v100);
  }

  v102 = swift_getKeyPath();
  OUTLINED_FUNCTION_51_4(v102);

  v103 = OUTLINED_FUNCTION_39_4();
  v104 = OUTLINED_FUNCTION_65_0();
  v87(v104);
  if (v103)
  {
    sub_26765F97C();
    v105 = v134;
    sub_26761D288();
    swift_getKeyPath();
    v106 = v136;
    sub_2676C97EC();

    (*(v135 + 8))(v105, v106);
    sub_2676C983C();
    v107 = OUTLINED_FUNCTION_37_7();
    v108(v107);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v109 = sub_2676CBE4C();
  __swift_project_value_buffer(v109, qword_2801CDC90);

  v110 = sub_2676CBE2C();
  v111 = sub_2676CC23C();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v145[0] = v141;
    *v112 = 136315138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_36_5();
    sub_26765BE5C();
    sub_2676CA3EC();

    OUTLINED_FUNCTION_27_5();
    v113(v67, v67);
    v114 = sub_2676CBFBC();
    v116 = sub_2676B0B84(v114, v115, v145);

    *(v112 + 4) = v116;
    _os_log_impl(&dword_2675D4000, v110, v111, "#ReplyMailPlan accept(input:) returning .yes() with updated target: %s", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v141);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_27_5();
  v117(v142, v143);
  OUTLINED_FUNCTION_20_1();
}

void sub_26765E10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD230, &unk_2676D4670);
  OUTLINED_FUNCTION_4_1(v23);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_3();
  v97 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_24_1();
  v95 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD200, &unk_2676D2120);
  OUTLINED_FUNCTION_3();
  v36 = v35;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_50_3();
  v38 = type metadata accessor for ResolveSendMailIntent(0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_2();
  v42 = v41 - v40;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD238, &qword_2676D1E50);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_1();
  v96 = v44;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD240, &qword_2676D1E58);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v46);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD248, &qword_2676D1E60);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD250, &qword_2676D1E68);
  OUTLINED_FUNCTION_3();
  v91 = v49;
  v92 = v50;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD258, &qword_2676D1E70);
  OUTLINED_FUNCTION_3();
  v93 = v53;
  v94 = v54;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD260, &unk_2676D1E78);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v58);
  sub_26765BFE4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_20();
  sub_267662E7C(v59, v60, MEMORY[0x277D5C810]);
  OUTLINED_FUNCTION_1_22();
  sub_267662E7C(v61, v62, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_14_11();
  sub_2676C9A2C();

  (*(v36 + 8))(v22, v34);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v63 = *(v97 + 8);
  v63(v95, v26);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v63(v21, v26);
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_66_3(KeyPath);

  v65 = OUTLINED_FUNCTION_43_2();
  (v63)(v65);
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v66 = swift_getKeyPath();
  OUTLINED_FUNCTION_66_3(v66);

  v67 = OUTLINED_FUNCTION_43_2();
  (v63)(v67);
  v87 = v63;
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v68 = swift_getKeyPath();
  OUTLINED_FUNCTION_66_3(v68);

  v69 = OUTLINED_FUNCTION_43_2();
  (v63)(v69);
  v70 = OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_inReplyTo;
  swift_beginAccess();
  sub_2675F95E4(v20 + v70, v42 + v38[11], &qword_2801CC3D0, &qword_2676D1D80);
  v71 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
  swift_beginAccess();
  sub_2675F95E4(v20 + v71, v42 + v38[12], &qword_2801CC6A8, &unk_2676CF5F0);
  v72 = v42 + v38[13];
  *(v72 + 32) = 0;
  *v72 = 0u;
  *(v72 + 16) = 0u;
  v73 = *(v20 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals);
  v74 = sub_2676C8D8C();
  v75 = v73;
  sub_2676C981C();
  *(v42 + v38[14]) = v75;
  OUTLINED_FUNCTION_40_2();
  sub_26761D2DC();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v76);
  sub_2676CBA6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_22_7();
  v79 = sub_267662E7C(v77, v78, &unk_2676D3820);
  sub_2676C955C();

  sub_267662EC4(v74, &qword_2801CD230, &unk_2676D4670);
  sub_267662C60(v42);
  sub_26761D288();
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_20_9();
  sub_267662E7C(v80, v81, MEMORY[0x277CBA358]);
  OUTLINED_FUNCTION_36_5();
  sub_2676C94EC();
  v87(v95, v26);
  OUTLINED_FUNCTION_27_5();
  v82(v96, v88);

  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_75_1();
  sub_2676C952C();

  OUTLINED_FUNCTION_27_5();
  v83(v79, v89);

  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_36_5();
  sub_2676C954C();

  OUTLINED_FUNCTION_27_5();
  v84(v95, v90);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_75_1();
  sub_2676C951C();
  (*(v92 + 8))(v79, v91);

  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_51_2();
  sub_2676C94FC();

  (*(v94 + 8))(v95, v93);
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_63_3();
  sub_2676C933C();
  v85 = OUTLINED_FUNCTION_29_0();
  v86(v85);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26765EC58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2676216AC;

  return sub_26761D754();
}

uint64_t sub_26765ED04(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_26761D3E0(&v3, 1);
}

id sub_26765ED48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_267662E60(v2, v3);
}

uint64_t sub_26765ED84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD278, &unk_2676D1EA8);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = sub_2676C9CCC();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = sub_2676CB0DC();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26765EF74, 0, 0);
}

uint64_t sub_26765EF74()
{
  v51 = v0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v49 = (v0 + 16);
  v1 = sub_2676CBE4C();
  __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC26C();
  if (OUTLINED_FUNCTION_5_7(v3))
  {
    v4 = OUTLINED_FUNCTION_17_3();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "#SendMailPlan handling cancelation", v4, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v48 = v0;
  v6 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[29];
  v10 = v0[30];
  v5 = v0 + 28;
  v12 = v0 + 26;
  v13 = *(v5 - 7);

  sub_26761D2A4();
  (*(v10 + 104))(v9, *MEMORY[0x277D5CA20], v11);
  sub_2676C984C();
  (*(v10 + 8))(v9, v11);
  (*(v6 + 8))(v7, v8);
  *(v5 - 12) = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  v15 = v49;
  if (swift_dynamicCast())
  {
    v16 = 27;
    v17 = v48;
LABEL_9:
    (*(v17[v16] + 8))(*v5, *v12);

    v20 = sub_2676CBE2C();
    v21 = sub_2676CC26C();
    if (OUTLINED_FUNCTION_5_7(v21))
    {
      v22 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v22);
      _os_log_impl(&dword_2675D4000, v20, v21, "#SendMailPlan user cancelled or rejected, returning IntentCancelled", v13, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    v23 = swift_task_alloc();
    v17[35] = v23;
    *v23 = v17;
    OUTLINED_FUNCTION_49_2(v23);
    OUTLINED_FUNCTION_5_8();

    return sub_26762E11C();
  }

  v17 = v48;
  v5 = v48 + 25;
  v15 = (v48 + 17);
  v13 = v48[23];
  v18 = v48[21];

  v48[17] = v18;
  v19 = v18;
  OUTLINED_FUNCTION_43_2();
  if (swift_dynamicCast())
  {
    v16 = 24;
    v12 = v48 + 23;
    goto LABEL_9;
  }

  v26 = v48[21];

  v48[18] = v26;
  v27 = v26;
  if (swift_dynamicCast())
  {
    v28 = v48[11];
    v29 = v48[12];
    v48[37] = v28;
    v48[38] = v29;
    v30 = *(v48 + 104);
    if (v30 == 1)
    {
      v31 = sub_2676CBE2C();
      v32 = sub_2676CC26C();
      if (OUTLINED_FUNCTION_5_7(v32))
      {
        v33 = OUTLINED_FUNCTION_17_3();
        *v33 = 0;
        _os_log_impl(&dword_2675D4000, v31, v32, "#SendMailPlan RecipientResolutionError.contactMatchWithoutEmailHandle, returning UnsupportedContactNoEmailAddress", v33, 2u);
        OUTLINED_FUNCTION_33_6();
      }

      v34 = v48[22];

      sub_2675E5D38(v34 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory, (v48 + 3));
      v48[2] = v28;
      sub_267651D60(v28, v29, 1);
      v35 = swift_task_alloc();
      v48[39] = v35;
      *v35 = v48;
      OUTLINED_FUNCTION_49_2(v35);
      OUTLINED_FUNCTION_5_8();

      return sub_2676BFAF0();
    }

    sub_267651D40(v28, v29, v30);
  }

  v37 = v48[21];

  v38 = v37;
  v39 = sub_2676CBE2C();
  v40 = sub_2676CC26C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50 = v42;
    *v41 = 136315138;
    swift_getErrorValue();
    v43 = sub_2676CC5FC();
    v45 = sub_2676B0B84(v43, v44, &v50);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_2675D4000, v39, v40, "#SendMailPlan error: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_2_5();
  }

  type metadata accessor for GenericError();
  v48[41] = swift_initStackObject();
  v46 = swift_task_alloc();
  v48[42] = v46;
  *v46 = v48;
  OUTLINED_FUNCTION_49_2(v46);
  OUTLINED_FUNCTION_5_8();

  return sub_2676C1B78();
}

uint64_t sub_26765F50C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26765F944, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_84_1();

    OUTLINED_FUNCTION_15_0();

    return v7();
  }
}

uint64_t sub_26765F64C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 320) = v0;

  sub_267662E0C(v3 + 16);
  if (v0)
  {
    v7 = sub_26765F928;
  }

  else
  {
    v7 = sub_26765F750;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26765F750()
{
  OUTLINED_FUNCTION_12_1();
  sub_267651D40(*(v0 + 296), *(v0 + 304), 1);

  OUTLINED_FUNCTION_15_0();

  return v1();
}

uint64_t sub_26765F7E8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26765F960, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_84_1();

    OUTLINED_FUNCTION_15_0();

    return v7();
  }
}

void sub_26765F97C()
{
  OUTLINED_FUNCTION_21_1();
  v188 = v0;
  v195 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v6);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  v9 = &v180 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v10);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v180 - v12;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  OUTLINED_FUNCTION_3();
  v187 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v194 = v16;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_24_1();
  v196 = v18;
  sub_2676CA43C();
  OUTLINED_FUNCTION_3();
  v191 = v20;
  v192 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_2();
  isa = v22 - v21;
  v24 = sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v26 = v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v180 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v180 - v31;
  v193 = v3;
  v33 = sub_26762F80C(v5);
  v189 = v5;
  if (v33)
  {
    if (qword_2801CBAA0 != -1)
    {
LABEL_102:
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v34 = sub_2676CBE4C();
    v35 = __swift_project_value_buffer(v34, qword_2801CDC90);
    v36 = *(v26 + 16);
    OUTLINED_FUNCTION_77_1();
    v36();
    OUTLINED_FUNCTION_77_1();
    v36();
    v190 = v35;
    v37 = sub_2676CBE2C();
    v38 = sub_2676CC23C();
    v39 = os_log_type_enabled(v37, v38);
    v195 = v13;
    if (v39)
    {
      LODWORD(v185) = v38;
      v40 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v198[0] = v183;
      *v40 = 136315650;
      v41 = v189;
      v186 = v37;
      v182 = v30;
      if (v189)
      {
        if (v189 == 1)
        {
          v42 = 17219;
        }

        else
        {
          v42 = 4408130;
        }

        if (v189 == 1)
        {
          v43 = 0xE200000000000000;
        }

        else
        {
          v43 = 0xE300000000000000;
        }
      }

      else
      {
        v43 = 0xE200000000000000;
        v42 = 20308;
      }

      v61 = sub_2676B0B84(v42, v43, v198);

      *(v40 + 4) = v61;
      *(v40 + 12) = 1024;
      v62 = *MEMORY[0x277D5E478];
      v63 = v191;
      v181 = v40;
      v184 = *(v191 + 104);
      v64 = v192;
      v184(isa, v62, v192);
      v65 = sub_2676308A4(v41);
      v180 = &v180;
      MEMORY[0x28223BE20](v65);
      OUTLINED_FUNCTION_81_2();
      v67 = sub_2676A2650(sub_267630B6C, v66, v65);

      v191 = *(v63 + 8);
      (v191)(isa, v64);
      LODWORD(v65) = v67 & 1;
      v180 = *(v26 + 8);
      v180(v32, v24);
      v68 = v181;
      *(v181 + 14) = v65;
      *(v68 + 18) = 1024;
      v184(isa, *MEMORY[0x277D5E470], v64);
      v30 = v182;
      v69 = sub_2676308A4(v189);
      MEMORY[0x28223BE20](v69);
      OUTLINED_FUNCTION_81_2();
      v71 = sub_2676A2650(sub_267630B90, v70, v69);
      v184 = 0;

      (v191)(isa, v192);
      v52 = v189;
      v180(v30, v24);
      *(v68 + 20) = v71 & 1;
      v72 = v186;
      _os_log_impl(&dword_2675D4000, v186, v185, "#ReplyMailPlan %s recipients has a list operation add recipients? %{BOOL}d, remove recipients? %{BOOL}d", v68, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v183);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_33_6();

      v13 = v195;
    }

    else
    {
      v51 = *(v26 + 8);
      v51(v30, v24);
      v51(v32, v24);

      v184 = 0;
      v52 = v189;
    }

    v73 = sub_26762F9DC(v52);
    v74 = v196;
    if (*(v73 + 16))
    {
      v75 = sub_2676CBE2C();
      v76 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_7(v76))
      {
        v77 = swift_slowAlloc();
        v198[0] = swift_slowAlloc();
        *v77 = 136315394;
        if (v52)
        {
          if (v52 == 1)
          {
            v78 = 17219;
          }

          else
          {
            v78 = 4408130;
          }

          if (v52 == 1)
          {
            v79 = 0xE200000000000000;
          }

          else
          {
            v79 = 0xE300000000000000;
          }
        }

        else
        {
          v79 = 0xE200000000000000;
          v78 = 20308;
        }

        v88 = sub_2676B0B84(v78, v79, v198);

        *(v77 + 4) = v88;
        *(v77 + 12) = 2080;
        v89 = MEMORY[0x26D5FDDD0](v73, v197);
        v91 = sub_2676B0B84(v89, v90, v198);

        *(v77 + 14) = v91;
        _os_log_impl(&dword_2675D4000, v75, v76, "#ReplyMailPlan Adding these %s recipients: %s", v77, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_33_6();
        OUTLINED_FUNCTION_4_6();
      }

      swift_getKeyPath();
      v92 = sub_26765BE74(v198);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
      OUTLINED_FUNCTION_0_20();
      v30 = sub_267662E7C(v93, v94, MEMORY[0x277D5C810]);
      OUTLINED_FUNCTION_1_22();
      sub_267662E7C(v95, v96, MEMORY[0x277D5C780]);
      v97 = sub_2676CA3DC();
      v99 = v98;
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      if (__swift_getEnumTagSinglePayload(v99, 1, v100))
      {

        v101 = OUTLINED_FUNCTION_29_9();
        v97(v101);

        v102 = OUTLINED_FUNCTION_30_8();
        (v92)(v102);
        v52 = v189;
      }

      else
      {
        v103 = v189;
        sub_2675DFEE4(v189, v73);

        v104 = OUTLINED_FUNCTION_29_9();
        v97(v104);
        v52 = v103;
        v74 = v196;

        v105 = OUTLINED_FUNCTION_30_8();
        (v92)(v105);
      }

      v13 = v195;
    }

    else
    {
    }

    v106 = sub_267630350(v52);
    if (v106[2].isa)
    {
      v107 = sub_2676CBE2C();
      v108 = sub_2676CC23C();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v198[0] = swift_slowAlloc();
        *v109 = 136315394;
        if (v52)
        {
          if (v52 == 1)
          {
            v110 = 0xE200000000000000;
            v111 = 17219;
          }

          else
          {
            v110 = 0xE300000000000000;
            v111 = 4408130;
          }
        }

        else
        {
          v110 = 0xE200000000000000;
          v111 = 20308;
        }

        v112 = sub_2676B0B84(v111, v110, v198);

        *(v109 + 4) = v112;
        *(v109 + 12) = 2080;
        v113 = MEMORY[0x26D5FDDD0](v106, v197);
        v30 = sub_2676B0B84(v113, v114, v198);

        *(v109 + 14) = v30;
        _os_log_impl(&dword_2675D4000, v107, v108, "#ReplyMailPlan Removing these %s recipients: %s", v109, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();

        v13 = v195;
      }

      else
      {
      }

      v32 = MEMORY[0x277D84F90];
      isa = v106[2].isa;
      v186 = v106;
      v185 = isa;
      if (isa)
      {
        v198[0] = MEMORY[0x277D84F90];
        sub_2676C2B08(0, isa, 0);
        OUTLINED_FUNCTION_57_5();
        v32 = v198[0];
        v30 = v106 + v115;
        v192 = *(v116 + 56);
        v193 = v117;
        v190 = v116;
        v191 = v116 - 8;
        v118 = v197;
        do
        {
          (v193)(v74, v30, v118);
          swift_getKeyPath();
          OUTLINED_FUNCTION_8_20();
          sub_267662E7C(&qword_2801CBF70, v119, MEMORY[0x277D5C6A8]);
          sub_267662E7C(&qword_2801CC2D0, MEMORY[0x277D5C640], MEMORY[0x277D5C618]);
          sub_2676CA87C();

          v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
          if (__swift_getEnumTagSinglePayload(v13, 1, v120) == 1)
          {
            (*v191)(v74, v118);
            sub_267662EC4(v13, &qword_2801CC068, &unk_2676D4E00);
            v121 = 0;
            v122 = 0;
          }

          else
          {
            swift_getKeyPath();
            v121 = sub_2676CA89C();
            v122 = v123;

            (*v191)(v74, v118);
            OUTLINED_FUNCTION_14_2();
            v124 = OUTLINED_FUNCTION_11_16();
            v125(v124);
          }

          v198[0] = v32;
          v127 = *(v32 + 2);
          v126 = *(v32 + 3);
          v24 = v127 + 1;
          if (v127 >= v126 >> 1)
          {
            v129 = OUTLINED_FUNCTION_23_1(v126);
            sub_2676C2B08(v129, v127 + 1, 1);
            v118 = v197;
            v32 = v198[0];
          }

          *(v32 + 2) = v24;
          v128 = &v32[16 * v127];
          *(v128 + 4) = v121;
          *(v128 + 5) = v122;
          v30 += v192;
          --isa;
          v13 = v195;
          v74 = v196;
        }

        while (isa);
        v106 = v186;
      }

      else
      {
        v24 = *(MEMORY[0x277D84F90] + 16);
      }

      v26 = 0;
      v130 = MEMORY[0x277D84F90];
      v131 = MEMORY[0x277D84F90];
LABEL_70:
      v132 = 16 * v26 + 40;
      while (v24 != v26)
      {
        if (v26 >= *(v32 + 2))
        {
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        ++v26;
        v133 = v132 + 16;
        v134 = *&v32[v132];
        v132 += 16;
        if (v134)
        {
          v30 = *&v32[v133 - 24];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_68_2();
            v131 = v137;
          }

          isa = *(v131 + 16);
          v135 = *(v131 + 24);
          v13 = (isa + 1);
          if (isa >= v135 >> 1)
          {
            v138 = OUTLINED_FUNCTION_23_1(v135);
            sub_26760719C(v138, isa + 1, 1, v131);
            v131 = v139;
          }

          *(v131 + 16) = v13;
          v136 = v131 + 16 * isa;
          *(v136 + 32) = v30;
          *(v136 + 40) = v134;
          v106 = v186;
          goto LABEL_70;
        }
      }

      v140 = sub_2676A1BFC(v131);
      v30 = v140;
      v26 = v185;
      if (v185)
      {
        v193 = v140;
        v198[0] = v130;
        sub_2676C2B08(0, v185, 0);
        v24 = v198[0];
        OUTLINED_FUNCTION_57_5();
        v142 = v106 + v141;
        v195 = *(v143 + 7);
        v196 = v144;
        v32 = v143;
        v145 = v143 - 8;
        v146 = v197;
        v147 = v26;
        do
        {
          v148 = v194;
          (v196)(v194, v142, v146);
          swift_getKeyPath();
          OUTLINED_FUNCTION_8_20();
          sub_267662E7C(&qword_2801CBF70, v149, MEMORY[0x277D5C6A8]);
          v150 = sub_2676CA89C();
          v146 = v197;
          v26 = v150;
          v152 = v151;

          (*v145)(v148, v146);
          v198[0] = v24;
          isa = *(v24 + 16);
          v153 = *(v24 + 24);
          if (isa >= v153 >> 1)
          {
            v155 = OUTLINED_FUNCTION_23_1(v153);
            sub_2676C2B08(v155, isa + 1, 1);
            v146 = v197;
            v24 = v198[0];
          }

          *(v24 + 16) = isa + 1;
          v154 = v24 + 16 * isa;
          *(v154 + 32) = v26;
          *(v154 + 40) = v152;
          v142 += v195;
          --v147;
        }

        while (v147);

        v30 = v193;
      }

      else
      {

        v24 = MEMORY[0x277D84F90];
      }

      v156 = 0;
      v13 = *(v24 + 16);
      v157 = MEMORY[0x277D84F90];
LABEL_87:
      v158 = 16 * v156 + 40;
      while (v13 != v156)
      {
        if (v156 >= *(v24 + 16))
        {
          goto LABEL_101;
        }

        ++v156;
        v159 = v158 + 16;
        v160 = *(v24 + v158);
        v158 += 16;
        if (v160)
        {
          v161 = *(v24 + v159 - 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_68_2();
            v157 = v164;
          }

          v26 = *(v157 + 16);
          v162 = *(v157 + 24);
          v32 = (v26 + 1);
          if (v26 >= v162 >> 1)
          {
            v165 = OUTLINED_FUNCTION_23_1(v162);
            sub_26760719C(v165, v26 + 1, 1, v157);
            v157 = v166;
          }

          *(v157 + 16) = v32;
          v163 = v157 + 16 * v26;
          *(v163 + 32) = v161;
          *(v163 + 40) = v160;
          goto LABEL_87;
        }
      }

      v167 = sub_2676A1BFC(v157);
      swift_getKeyPath();
      sub_26765BE74(v198);
      OUTLINED_FUNCTION_80_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
      OUTLINED_FUNCTION_0_20();
      sub_267662E7C(v168, v169, MEMORY[0x277D5C810]);
      OUTLINED_FUNCTION_1_22();
      sub_267662E7C(v170, v171, MEMORY[0x277D5C780]);
      v172 = sub_2676CA3DC();
      v174 = v173;
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v174, 1, v175);
      if (!EnumTagSinglePayload)
      {
        MEMORY[0x28223BE20](EnumTagSinglePayload);
        *(&v180 - 4) = v30;
        v177 = v189;
        *(&v180 - 24) = v189;
        *(&v180 - 2) = v167;
        sub_2675E0008(v177);
      }

      v178 = OUTLINED_FUNCTION_29_9();
      v172(v178);

      v179 = OUTLINED_FUNCTION_30_8();
      (v24)(v179);
    }

    else
    {
    }
  }

  else
  {
    swift_getKeyPath();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
    OUTLINED_FUNCTION_0_20();
    v47 = sub_267662E7C(v45, v46, MEMORY[0x277D5C810]);
    OUTLINED_FUNCTION_1_22();
    sub_267662E7C(v48, v49, MEMORY[0x277D5C780]);
    sub_2676CA3EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (OUTLINED_FUNCTION_64_2(v9) == 1)
    {
      sub_267662EC4(v9, &qword_2801CC428, &unk_2676CEDD0);
      v50 = MEMORY[0x277D84F90];
    }

    else
    {
      v50 = sub_2675DFE20(v5);
      OUTLINED_FUNCTION_14_2();
      v53 = OUTLINED_FUNCTION_37_7();
      v54(v53);
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v55 = sub_2676CBE4C();
    __swift_project_value_buffer(v55, qword_2801CDC90);

    v56 = sub_2676CBE2C();
    v57 = sub_2676CC23C();

    if (os_log_type_enabled(v56, v57))
    {
      v195 = v47;
      v58 = swift_slowAlloc();
      v198[0] = swift_slowAlloc();
      *v58 = 136315394;
      v196 = v44;
      if (v189)
      {
        if (v189 == 1)
        {
          v59 = 17219;
        }

        else
        {
          v59 = 4408130;
        }

        if (v189 == 1)
        {
          v60 = 0xE200000000000000;
        }

        else
        {
          v60 = 0xE300000000000000;
        }
      }

      else
      {
        v60 = 0xE200000000000000;
        v59 = 20308;
      }

      v80 = sub_2676B0B84(v59, v60, v198);

      *(v58 + 4) = v80;
      *(v58 + 12) = 2080;
      v81 = MEMORY[0x26D5FDDD0](v50, v197);
      v83 = sub_2676B0B84(v81, v82, v198);

      *(v58 + 14) = v83;
      _os_log_impl(&dword_2675D4000, v56, v57, "#ReplyMailPlan Replacing %s recipients with these recipients: %s", v58, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4_6();

      v44 = v196;
    }

    else
    {
    }

    swift_getKeyPath();
    v84 = sub_26765BE74(v198);
    OUTLINED_FUNCTION_77_1();
    sub_2676CA3DC();
    OUTLINED_FUNCTION_80_0();
    if (!OUTLINED_FUNCTION_64_2(v85))
    {
      sub_2675E025C(v189, v50);
    }

    v86 = OUTLINED_FUNCTION_29_9();
    v44(v86);

    v87 = OUTLINED_FUNCTION_30_8();
    (v84)(v87);
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_267660D1C(uint64_t a1, void *a2, int a3, void *a4)
{
  HIDWORD(v35) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  sub_267662E7C(&qword_2801CBF70, MEMORY[0x277D5C6D0], MEMORY[0x277D5C6A8]);
  sub_267662E7C(&qword_2801CC2D0, MEMORY[0x277D5C640], MEMORY[0x277D5C618]);
  sub_2676CA87C();

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_267662EC4(v8, &qword_2801CC068, &unk_2676D4E00);
    goto LABEL_16;
  }

  swift_getKeyPath();
  v10 = sub_2676CA89C();
  v12 = v11;

  (*(*(v9 - 8) + 8))(v8, v9);
  if (!v12)
  {
LABEL_16:
    swift_getKeyPath();
    v21 = sub_2676CA89C();
    v23 = v22;

    if (v23)
    {
      if (sub_2676A1CB8(v21, v23, a4))
      {
        if (qword_2801CBAA0 != -1)
        {
          swift_once();
        }

        v24 = sub_2676CBE4C();
        __swift_project_value_buffer(v24, qword_2801CDC90);

        v15 = sub_2676CBE2C();
        v25 = sub_2676CC23C();

        if (os_log_type_enabled(v15, v25))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v36 = v18;
          *v17 = 136315394;
          if (BYTE4(v35))
          {
            if (BYTE4(v35) == 1)
            {
              v26 = 17219;
            }

            else
            {
              v26 = 4408130;
            }

            if (BYTE4(v35) == 1)
            {
              v27 = 0xE200000000000000;
            }

            else
            {
              v27 = 0xE300000000000000;
            }
          }

          else
          {
            v27 = 0xE200000000000000;
            v26 = 20308;
          }

          v29 = sub_2676B0B84(v26, v27, &v36);

          *(v17 + 4) = v29;
          *(v17 + 12) = 2080;
          v30 = sub_2676B0B84(v21, v23, &v36);

          *(v17 + 14) = v30;
          v31 = "#ReplyMailPlan Removing %s recipient with name %s";
          v32 = v25;
LABEL_35:
          _os_log_impl(&dword_2675D4000, v15, v32, v31, v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5FEA80](v18, -1, -1);
          MEMORY[0x26D5FEA80](v17, -1, -1);
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    return 0;
  }

  if (!sub_2676A1CB8(v10, v12, a2))
  {

    goto LABEL_16;
  }

  v13 = v10;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v14 = sub_2676CBE4C();
  __swift_project_value_buffer(v14, qword_2801CDC90);

  v15 = sub_2676CBE2C();
  v16 = sub_2676CC23C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v18;
    *v17 = 136315394;
    if (BYTE4(v35))
    {
      if (BYTE4(v35) == 1)
      {
        v19 = 17219;
      }

      else
      {
        v19 = 4408130;
      }

      if (BYTE4(v35) == 1)
      {
        v20 = 0xE200000000000000;
      }

      else
      {
        v20 = 0xE300000000000000;
      }
    }

    else
    {
      v20 = 0xE200000000000000;
      v19 = 20308;
    }

    v33 = sub_2676B0B84(v19, v20, &v36);

    *(v17 + 4) = v33;
    *(v17 + 12) = 2080;
    v34 = sub_2676B0B84(v13, v12, &v36);

    *(v17 + 14) = v34;
    v31 = "#ReplyMailPlan Removing %s recipient with email %s";
    v32 = v16;
    goto LABEL_35;
  }

LABEL_30:

LABEL_36:

  return 1;
}

void sub_267661278()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v42 = v2;
  v3 = sub_2676CB48C();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v43 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD210, &qword_2676D1D88);
  OUTLINED_FUNCTION_4_1(v7);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_1();
  v44 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD218, &unk_2676D1D90);
  OUTLINED_FUNCTION_3();
  v41[0] = v11;
  v41[1] = v10;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_50_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v13);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  v45 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3();
  v18 = v17;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  v21 = v41 - v20;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v22 = sub_2676CBE4C();
  __swift_project_value_buffer(v22, qword_2801CDC90);
  v23 = sub_2676CBE2C();
  v24 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v24))
  {
    v25 = OUTLINED_FUNCTION_17_3();
    *v25 = 0;
    _os_log_impl(&dword_2675D4000, v23, v24, "#ReplyMailPlan making ConfirmationPrompt", v25, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  swift_getKeyPath();
  sub_26765BE5C();
  OUTLINED_FUNCTION_0_20();
  sub_267662E7C(v26, v27, MEMORY[0x277D5C810]);
  OUTLINED_FUNCTION_1_22();
  sub_267662E7C(v28, v29, MEMORY[0x277D5C780]);
  sub_2676CA3EC();

  (*(v18 + 8))(v21, v16);
  sub_2676CBA6C();
  sub_2676C98BC();
  swift_getKeyPath();
  sub_2676C988C();

  v30 = OUTLINED_FUNCTION_54_4();
  v31(v30);
  v32 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_confirmIntentOptions);
  v33 = type metadata accessor for ConfirmSendProducer(0);
  v49[3] = v33;
  v49[4] = sub_267662E7C(&qword_2801CD220, type metadata accessor for ConfirmSendProducer, &unk_2676CD948);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  v35 = *(v33 + 24);
  sub_2676C8D8C();
  OUTLINED_FUNCTION_2_6();
  (*(v36 + 16))(boxed_opaque_existential_1 + v35, v42);
  v37 = sub_267661728();
  type metadata accessor for SendMailCATsSimple(0);
  sub_2676CB47C();
  v38 = sub_2676CB42C();
  boxed_opaque_existential_1[1] = v32;
  *(boxed_opaque_existential_1 + *(v33 + 28)) = v37 & 1;
  *boxed_opaque_existential_1 = v38;
  v39 = sub_2676C9B9C();
  swift_allocObject();
  v40 = sub_2676C9B8C();
  v47 = v39;
  v48 = MEMORY[0x277D5BD58];
  v46 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD228, &unk_2676D1DA0);
  swift_allocObject();
  sub_2676C9BEC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_267661728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v7[-v4];
  sub_26761D2C0();
  sub_2676C97FC();
  (*(v2 + 8))(v5, v0);
  return v7[15] & 1;
}

uint64_t sub_2676617FC()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan__replyMessageTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_8_2();
  (*(v2 + 8))(v0 + v1);
  return sub_267662EC4(v0 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_inReplyTo, &qword_2801CC3D0, &qword_2676D1D80);
}

uint64_t sub_267661878()
{
  v0 = MailSendingPlan.deinit();
  v1 = OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan__replyMessageTask;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_8_2();
  (*(v2 + 8))(v0 + v1);
  sub_267662EC4(v0 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_inReplyTo, &qword_2801CC3D0, &qword_2676D1D80);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ReplyMailPlan(uint64_t a1)
{
  result = qword_2801CD1B8;
  if (!qword_2801CD1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26766199C(uint64_t a1)
{
  sub_267661A74(319);
  if (v1 <= 0x3F)
  {
    sub_267661AD8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_267661A74(uint64_t a1)
{
  if (!qword_2801CD1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC628, &unk_2676CF530);
    v1 = sub_2676C97CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2801CD1C8);
    }
  }
}

void sub_267661AD8(uint64_t a1)
{
  if (!qword_2801CD1D0)
  {
    sub_2676C8BFC();
    v1 = sub_2676CC2FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2801CD1D0);
    }
  }
}

uint64_t sub_267661C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ReplyMailPlan(0);

  return sub_2676C950C();
}

uint64_t sub_267661CE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

void sub_267661D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v143 = v22;
  v23 = type metadata accessor for MailStateChangeEventHandler(0);
  v24 = *(v23 - 8);
  v137 = (v23 - 8);
  v142 = v24;
  v141 = *(v24 + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v140 = v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_1();
  v150 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_3();
  v138 = v29;
  v139 = v28;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v31);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD200, &unk_2676D2120);
  OUTLINED_FUNCTION_3();
  v134 = v32;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v34);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3();
  v135 = v35;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_4_1(v38);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_1();
  v155 = v40;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3();
  v130 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4();
  v146 = v43;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_24_1();
  v154 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v148 = v47;
  v149 = v46;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_4();
  v144 = v48;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_24_1();
  v153 = v50;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_3();
  v147 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_4();
  v158 = v53;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10_4();
  v157 = v55;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_10_4();
  v156 = v57;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_10_4();
  v152 = v59;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_10_4();
  v151 = v61;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v62);
  v132 = v129 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_3();
  v66 = v65;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  v74 = MEMORY[0x28223BE20](v73);
  v76 = v129 - v75;
  v77 = MEMORY[0x28223BE20](v74);
  v79 = v129 - v78;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v80);
  v82 = v129 - v81;
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v83 = *(v66 + 8);
  v83(v82, v64);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v83(v21, v64);
  v84 = v20;
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v83(v79, v64);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v83(v76, v64);
  v85 = v129[1];
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v83(v85, v64);
  sub_26761D2A4();
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_69_1(KeyPath);

  v87 = OUTLINED_FUNCTION_55_2();
  (v83)(v87);
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v88 = swift_getKeyPath();
  OUTLINED_FUNCTION_69_1(v88);

  v89 = OUTLINED_FUNCTION_55_2();
  (v83)(v89);
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v90 = swift_getKeyPath();
  OUTLINED_FUNCTION_69_1(v90);

  v91 = OUTLINED_FUNCTION_55_2();
  (v83)(v91);
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v92 = swift_getKeyPath();
  v93 = v144;
  OUTLINED_FUNCTION_69_1(v92);

  v94 = OUTLINED_FUNCTION_55_2();
  (v83)(v94);
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v95 = swift_getKeyPath();
  OUTLINED_FUNCTION_69_1(v95);

  v96 = OUTLINED_FUNCTION_55_2();
  (v83)(v96);
  OUTLINED_FUNCTION_60_0();
  sub_26761D2C0();
  OUTLINED_FUNCTION_23_8();
  sub_26765BFE4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_20();
  sub_267662E7C(v97, v98, MEMORY[0x277D5C810]);
  OUTLINED_FUNCTION_1_22();
  sub_267662E7C(v99, v100, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_51_2();
  sub_2676C9A2C();

  OUTLINED_FUNCTION_27_5();
  v101 = OUTLINED_FUNCTION_65_0();
  v102(v101);
  v103 = *(v147 + 16);
  v104 = v150;
  v105 = v145;
  v103(v150, v156, v145);
  v106 = v137;
  v103(v104 + v137[7], v157, v105);
  v103(v104 + v106[8], v158, v105);
  v107 = OUTLINED_FUNCTION_73_1(v106[9]);
  v108(v107, v93);
  v109 = v130;
  v110 = OUTLINED_FUNCTION_73_1(v106[10]);
  v111 = v146;
  v112 = v131;
  v113(v110, v146, v131);
  OUTLINED_FUNCTION_73_1(v106[11]);
  OUTLINED_FUNCTION_77_1();
  v114();
  v115 = OUTLINED_FUNCTION_73_1(v106[12]);
  v116(v115, v84, v136);
  type metadata accessor for MetricsSnippetEventHandler(0);
  v117 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_2676C958C();
  v118 = OUTLINED_FUNCTION_29_0();
  v119(v118);
  v120 = OUTLINED_FUNCTION_37_7();
  v121(v120);
  (*(v109 + 8))(v111, v112);
  (*(v148 + 8))(v144, v149);
  v122 = *(v147 + 8);
  v123 = v145;
  v122(v158, v145);
  v122(v157, v123);
  v122(v156, v123);
  v124 = v140;
  sub_267662B28(v150, v140);
  v125 = (*(v142 + 80) + 16) & ~*(v142 + 80);
  v126 = (v141 + v125 + 7) & 0xFFFFFFFFFFFFFFF8;
  v127 = swift_allocObject();
  sub_267662B28(v124, v127 + v125);
  *(v127 + v126) = v117;
  sub_2676C916C();
  sub_2676CAFDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  sub_2676CB0DC();
  sub_267662E7C(&qword_2801CD1E0, MEMORY[0x277D5C900], MEMORY[0x277D5C8F0]);
  v128 = MEMORY[0x277D5C970];
  sub_267662E7C(&qword_2801CD1E8, MEMORY[0x277D5C970], MEMORY[0x277D5C980]);
  sub_267662E7C(&qword_2801CD1F0, v128, MEMORY[0x277D5C978]);
  sub_2676C9BAC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_267662B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailStateChangeEventHandler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_267662B8C(uint64_t a1)
{
  v3 = *(type metadata accessor for MailStateChangeEventHandler(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2676B2C44(a1, v1 + v4, v5);
}

uint64_t sub_267662C60(uint64_t a1)
{
  v2 = type metadata accessor for ResolveSendMailIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267662CBC()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;
  OUTLINED_FUNCTION_14_11();

  return sub_26765EC58();
}

uint64_t sub_267662D68()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;
  OUTLINED_FUNCTION_14_11();

  return sub_26765ED84(v2, v3, v4);
}

id sub_267662E60(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_267662E7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267662EC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_2();
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_33_6()
{

  JUMPOUT(0x26D5FEA80);
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return sub_2676C987C();
}

uint64_t OUTLINED_FUNCTION_44_3(uint64_t a1)
{

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_51_4(uint64_t a1)
{

  return sub_2676C98AC();
}

uint64_t OUTLINED_FUNCTION_62_2(uint64_t a1, ...)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_63_3()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_64_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_65_3(uint64_t a1, uint64_t a2)
{

  return sub_2676CA3DC();
}

uint64_t OUTLINED_FUNCTION_66_3(uint64_t a1)
{

  return sub_2676C97EC();
}

void OUTLINED_FUNCTION_68_2()
{
  v2 = *(v0 + 16) + 1;

  sub_26760719C(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1)
{

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_84_1()
{
}

BOOL sub_2676632C4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

void (*sub_267663304(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  v2[5] = v3;
  v2[6] = __swift_coroFrameAllocStub(*(v5 + 64));
  (*(v4 + 16))();
  v2[7] = sub_2676C978C();
  return sub_26765BF6C;
}

uint64_t sub_267663414(void (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v1 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan__replyMessageTask, v3);
  a1(v3);
  return (*(v5 + 8))(v8, v3);
}

void sub_267663510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v277 = v20;
  v25 = v24;
  v280 = v26;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3();
  v261 = v27;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v29);
  v269 = sub_2676CB0DC();
  OUTLINED_FUNCTION_3();
  v268 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_5(v33 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_74_1(v34);
  OUTLINED_FUNCTION_3();
  v266 = v35;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v37);
  v275 = sub_2676C9EAC();
  OUTLINED_FUNCTION_3();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_2();
  v43 = v42 - v41;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v248 = v44;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_3();
  v271 = v48;
  v272 = v47;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_9_1();
  v270 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v52 = OUTLINED_FUNCTION_4_1(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD290, &qword_2676D24C0);
  OUTLINED_FUNCTION_4_1(v57);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_54_5();
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD298, &unk_2676D1FC0);
  OUTLINED_FUNCTION_3();
  v254 = v59;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_50_3();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC620, &unk_2676D0C30);
  OUTLINED_FUNCTION_4_1(v61);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v62);
  v64 = &v240 - v63;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3();
  v255 = v65;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v69);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_9_1();
  v276 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  OUTLINED_FUNCTION_3();
  v260 = v73;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v76);
  sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  KeyPath = v78;
  v282 = v77;
  v79 = MEMORY[0x28223BE20](v77);
  v81 = &v240 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_80_1();
  MEMORY[0x28223BE20](v83);
  v85 = &v240 - v84;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v258 = v64;
  v253 = v21;
  v251 = v22;
  v278 = v72;
  v273 = v43;
  v274 = v39;
  v86 = sub_2676CBE4C();
  v279 = __swift_project_value_buffer(v86, qword_2801CDC90);
  v87 = sub_2676CBE2C();
  v88 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v88))
  {
    v89 = OUTLINED_FUNCTION_17_3();
    *v89 = 0;
    _os_log_impl(&dword_2675D4000, v87, v88, "#ReplyMailSceneHostPlan accept(input:)", v89, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  sub_2676C9E5C();
  v91 = KeyPath;
  v90 = v282;
  v92 = *(KeyPath + 88);
  v93 = v92(v85, v282);
  v94 = *MEMORY[0x277D5C160];
  v95 = v85;
  v96 = *(v91 + 8);
  v96(v95, v90);
  if (v93 != v94)
  {
    goto LABEL_15;
  }

  v242 = v25;
  sub_2676C9E5C();
  sub_2676371E0();
  if (!v97)
  {
    v96(v23, v90);
    v99 = v276;
    v114 = OUTLINED_FUNCTION_33_4();
    __swift_storeEnumTagSinglePayload(v114, v115, 1, v278);
    goto LABEL_14;
  }

  v98 = sub_2676CA77C();

  v99 = v276;
  sub_267698EA0(v98);
  v90 = v282;

  v96(v23, v90);
  v100 = OUTLINED_FUNCTION_33_4();
  v101 = v278;
  OUTLINED_FUNCTION_21_3(v100, v102, v278);
  if (v127)
  {
LABEL_14:
    sub_267662EC4(v99, &qword_2801CC640, &unk_2676CF550);
    goto LABEL_15;
  }

  v241 = v96;
  OUTLINED_FUNCTION_23_8();
  v104 = v263;
  (*(v103 + 32))(v263, v99, v101);
  v107 = *(v90 + 2);
  v105 = v90 + 16;
  v106 = v107;
  v108 = v257;
  v107(v257, v104, v101);
  sub_2676CBA6C();
  OUTLINED_FUNCTION_0_21();
  v111 = sub_26766B3A8(v109, v110, MEMORY[0x277D5C810]);
  v112 = v258;
  v276 = v111;
  sub_2676CA3FC();
  OUTLINED_FUNCTION_21_3(v112, 1, v259);
  if (!v127)
  {
    OUTLINED_FUNCTION_23_8();
    v161 = v252;
    v162 = OUTLINED_FUNCTION_53_0();
    v164 = v163(v162);
    OUTLINED_FUNCTION_65_4(v164);
    sub_267666C0C(v161, v81, v165, v166, v167, v168, v169, v170, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
    v171 = OUTLINED_FUNCTION_82_2();
    v172(v171);
    v173 = sub_2676CBE2C();
    v174 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v174))
    {
      v176 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v176);
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v177, v178, "#ReplyMailSceneHostPlan accept(input:) processed reply task, returning .yes");
      OUTLINED_FUNCTION_4_6();
    }

    sub_2676C974C();
    v179 = OUTLINED_FUNCTION_53_0();
    v180(v179);
    OUTLINED_FUNCTION_27_5();
    v182 = v263;
    v183 = v101;
LABEL_39:
    v181(v182, v183);
    goto LABEL_40;
  }

  sub_267662EC4(v112, &qword_2801CC620, &unk_2676D0C30);
  v106(v108, v263, v101);
  sub_2676CBADC();
  sub_26766B3A8(&qword_2801CCA48, MEMORY[0x277D5C8A8], MEMORY[0x277D5C890]);
  OUTLINED_FUNCTION_23_8();
  sub_2676CA3FC();
  OUTLINED_FUNCTION_21_3(v105, 1, v256);
  if (!v127)
  {
    v194 = OUTLINED_FUNCTION_45_4();
    v195(v194);
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_23();
    sub_26766B3A8(v196, v197, MEMORY[0x277D5C780]);
    OUTLINED_FUNCTION_23_8();
    OUTLINED_FUNCTION_42_3();
    sub_2676CA3EC();

    v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v105, 1, v198);
    sub_267662EC4(v105, &qword_2801CC428, &unk_2676CEDD0);
    if (EnumTagSinglePayload == 1)
    {
      sub_26761F9A8();
      swift_getKeyPath();
      OUTLINED_FUNCTION_43_3();
      v200 = v272;
      sub_2676C97EC();

      v201 = OUTLINED_FUNCTION_40_3();
      v202(v201, v200);
      v203 = v249;
      sub_2676C983C();
      OUTLINED_FUNCTION_27_5();
      v204(v108, v203);
      swift_getKeyPath();
      v205 = sub_267663304(&v283);
      v206 = sub_2676CA3DC();
      if (__swift_getEnumTagSinglePayload(v207, 1, v198))
      {
        v208 = OUTLINED_FUNCTION_29_9();
        v206(v208);

        v209 = OUTLINED_FUNCTION_30_8();
        v205(v209);
        v210 = v251;
      }

      else
      {
        v282 = v205;
        KeyPath = swift_getKeyPath();
        swift_getKeyPath();
        v228 = v243;
        OUTLINED_FUNCTION_42_3();
        v210 = v251;
        sub_2676CA3EC();

        OUTLINED_FUNCTION_21_3(v228, 1, v198);
        if (v127)
        {
          sub_267662EC4(v228, &qword_2801CC428, &unk_2676CEDD0);
        }

        else
        {
          swift_getKeyPath();
          sub_2676CA89C();

          OUTLINED_FUNCTION_14_2();
          (*(v229 + 8))(v228, v198);
        }

        sub_2676CA8AC();
        v230 = OUTLINED_FUNCTION_29_9();
        v206(v230);

        v231 = OUTLINED_FUNCTION_30_8();
        v282(v231);
      }

      v232 = sub_2676CBE2C();
      v233 = sub_2676CC23C();
      v234 = OUTLINED_FUNCTION_5_5(v233);
      v235 = v256;
      if (v234)
      {
        v236 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v236);
        OUTLINED_FUNCTION_4_18(&dword_2675D4000, v237, v238, "#ReplyMailSceneHostPlan accept(input:) processed generic update message task, returning .yes");
        OUTLINED_FUNCTION_4_6();
      }

      sub_2676C974C();
      OUTLINED_FUNCTION_27_5();
      v239(v210, v235);
      OUTLINED_FUNCTION_27_5();
      v182 = OUTLINED_FUNCTION_45_4();
    }

    else
    {
      v211 = sub_2676CBE2C();
      v212 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_7(v212))
      {
        v213 = OUTLINED_FUNCTION_17_3();
        *v213 = 0;
        _os_log_impl(&dword_2675D4000, v211, v212, "#ReplyMailSceneHostPlan accept(input:) processed update message task, returning .yes", v213, 2u);
        OUTLINED_FUNCTION_2_5();
      }

      swift_getKeyPath();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_42_3();
      sub_2676CA3EC();

      __swift_storeEnumTagSinglePayload(v246, 1, 1, v198);
      OUTLINED_FUNCTION_34_7();
      OUTLINED_FUNCTION_14_14();
      v214 = sub_2676CA3CC();
      OUTLINED_FUNCTION_65_4(v214);
      v215 = OUTLINED_FUNCTION_58_1();
      sub_267666C0C(v215, v216, v217, v218, v219, v220, v221, v222, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
      v223 = OUTLINED_FUNCTION_82_2();
      v224(v223);
      sub_2676C974C();
      OUTLINED_FUNCTION_27_5();
      v225(v198, v259);
      OUTLINED_FUNCTION_27_5();
      v226 = OUTLINED_FUNCTION_53_0();
      v227(v226);
      OUTLINED_FUNCTION_27_5();
      v182 = v263;
      v183 = v278;
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_27_5();
  v113(v263, v101);
  sub_267662EC4(v105, &qword_2801CD290, &qword_2676D24C0);
  v90 = v282;
  v96 = v241;
LABEL_15:
  sub_2676C9E5C();
  if (v92(v81, v90) != *MEMORY[0x277D5C150])
  {
    v96(v81, v90);
    goto LABEL_28;
  }

  (*(KeyPath + 96))(v81, v90);
  v117 = v273;
  v116 = v274;
  v118 = v275;
  (*(v274 + 32))(v273, v81, v275);
  v119 = sub_2676C9E8C();
  v121 = v120;
  v122 = sub_2676C96CC();
  v123 = [v122 identifier];

  v124 = sub_2676CBF6C();
  v126 = v125;

  v127 = v119 == v124 && v121 == v126;
  if (v127)
  {

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_11_16();
  v128 = sub_2676CC59C();

  if (v128)
  {
LABEL_32:
    v144 = sub_2676CBE2C();
    v145 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v145))
    {
      v146 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v146);
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v147, v148, "#ReplyMailSceneHostPlan got confirm DI, accepting parse");
      OUTLINED_FUNCTION_4_6();
    }

    v149 = v270;
    sub_26761F9A8();
    swift_getKeyPath();
    v150 = v264;
    v151 = v272;
    sub_2676C97EC();

    (*(v271 + 8))(v149, v151);
    OUTLINED_FUNCTION_23_8();
    v153 = v265;
    v154 = v269;
    (*(v152 + 104))(v265);
    v155 = v267;
    sub_2676C984C();
    (*(v151 + 8))(v153, v154);
    OUTLINED_FUNCTION_27_5();
    v156(v150, v155);
    OUTLINED_FUNCTION_23_8();
    sub_26761F98C();
    LOBYTE(v283) = 1;
    v157 = v262;
    sub_2676C984C();
    OUTLINED_FUNCTION_27_5();
    v159 = v151 + 8;
    v160 = v157;
    goto LABEL_35;
  }

  v129 = sub_2676C9E8C();
  v131 = v130;
  v132 = sub_2676C96BC();
  v133 = [v132 identifier];

  v134 = sub_2676CBF6C();
  v136 = v135;

  if (v129 == v134 && v131 == v136)
  {

    goto LABEL_42;
  }

  OUTLINED_FUNCTION_11_16();
  v138 = sub_2676CC59C();

  if (v138)
  {
LABEL_42:
    v184 = sub_2676CBE2C();
    v185 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v185))
    {
      v186 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v186);
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v187, v188, "#ReplyMailSceneHostPlan got reject DI, accepting parse");
      OUTLINED_FUNCTION_4_6();
    }

    v189 = v270;
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_0();
    v190 = v272;
    sub_2676C97EC();

    (*(v271 + 8))(v189, v190);
    OUTLINED_FUNCTION_34_7();
    v192 = v265;
    v193 = v269;
    (*(v191 + 104))(v265);
    sub_2676C984C();
    (*(v190 + 8))(v192, v193);
    OUTLINED_FUNCTION_27_5();
    v159 = OUTLINED_FUNCTION_45_4();
LABEL_35:
    v158(v159, v160);
    sub_2676C974C();
    (*(v116 + 8))(v117, v118);
    goto LABEL_40;
  }

  (*(v116 + 8))(v117, v118);
LABEL_28:
  v139 = sub_2676CBE2C();
  v140 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_5(v140))
  {
    v141 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_9_4(v141);
    OUTLINED_FUNCTION_4_18(&dword_2675D4000, v142, v143, "#ReplyMailSceneHostPlan accept(input:): got a non USO parse, rejecting parse");
    OUTLINED_FUNCTION_4_6();
  }

  sub_2676C973C();
LABEL_40:
  OUTLINED_FUNCTION_20_1();
}

void sub_2676649B4()
{
  OUTLINED_FUNCTION_21_1();
  v123 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD230, &unk_2676D4670);
  OUTLINED_FUNCTION_4_1(v2);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_3();
  v125 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v13);
  v15 = v105 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD200, &unk_2676D2120);
  OUTLINED_FUNCTION_3();
  v18 = v17;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  v21 = v105 - v20;
  v22 = type metadata accessor for ResolveSiriMailMessageIntent(0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_2();
  v26 = v25 - v24;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD2D8, &qword_2676D2460);
  OUTLINED_FUNCTION_3();
  v111 = v27;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  v124 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD2E0, &qword_2676D2468);
  OUTLINED_FUNCTION_74_1(v30);
  OUTLINED_FUNCTION_3();
  v114 = v31;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v33);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD2E8, &qword_2676D2470);
  OUTLINED_FUNCTION_3();
  v116 = v34;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD2F0, &qword_2676D2478);
  OUTLINED_FUNCTION_3();
  v117 = v37;
  v118 = v38;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD2F8, &qword_2676D2480);
  OUTLINED_FUNCTION_3();
  v119 = v41;
  v120 = v42;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD300, &unk_2676D2488);
  OUTLINED_FUNCTION_3();
  v121 = v45;
  v122 = v46;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v48);
  sub_2676633FC();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_0_21();
  v106 = sub_26766B3A8(v50, v51, MEMORY[0x277D5C810]);
  OUTLINED_FUNCTION_1_23();
  sub_26766B3A8(v52, v53, MEMORY[0x277D5C780]);
  sub_2676C9A2C();

  (*(v18 + 8))(v21, v16);
  sub_26761F9A8();
  swift_getKeyPath();
  v105[2] = v15;
  sub_2676C97EC();

  v55 = v125 + 8;
  v54 = *(v125 + 8);
  v56 = OUTLINED_FUNCTION_45_4();
  v54(v56);
  OUTLINED_FUNCTION_43_3();
  sub_26761F9A8();
  swift_getKeyPath();
  v57 = v5;
  sub_2676C97EC();

  (v54)(KeyPath, v5);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  (v54)(v5, v5);
  OUTLINED_FUNCTION_60_0();
  sub_26761F9A8();
  v58 = swift_getKeyPath();
  OUTLINED_FUNCTION_44_4(v58);

  v59 = OUTLINED_FUNCTION_78_2();
  v54(v59);
  OUTLINED_FUNCTION_60_0();
  sub_26761F9A8();
  v60 = swift_getKeyPath();
  OUTLINED_FUNCTION_44_4(v60);

  v61 = OUTLINED_FUNCTION_78_2();
  v54(v61);
  OUTLINED_FUNCTION_60_0();
  sub_26761F9A8();
  v62 = swift_getKeyPath();
  OUTLINED_FUNCTION_44_4(v62);

  v63 = OUTLINED_FUNCTION_78_2();
  v54(v63);
  v125 = v55;
  v105[0] = v54;
  OUTLINED_FUNCTION_60_0();
  sub_26761F9A8();
  v64 = swift_getKeyPath();
  OUTLINED_FUNCTION_44_4(v64);

  v65 = OUTLINED_FUNCTION_78_2();
  v54(v65);
  v66 = OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_inReplyTo;
  swift_beginAccess();
  sub_2675F95E4(v0 + v66, v26 + v22[12], &qword_2801CC3D0, &qword_2676D1D80);
  v67 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
  swift_beginAccess();
  v68 = v26;
  sub_2675F95E4(v0 + v67, v26 + v22[13], &qword_2801CC6A8, &unk_2676CF5F0);
  v69 = v26 + v22[14];
  *(v69 + 32) = 0;
  *v69 = 0u;
  *(v69 + 16) = 0u;
  v70 = *(v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals);
  v71 = v22;
  *(v68 + v22[15]) = v70;
  v72 = v70;
  v73 = v110;
  sub_26761F98C();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v74);
  v75 = sub_2676CBA6C();

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_28_6();
  v79 = sub_26766B3A8(v77, v78, &unk_2676D39F8);
  v80 = v106;
  sub_2676C955C();

  sub_267662EC4(v73, &qword_2801CD230, &unk_2676D4670);
  sub_26766B21C(v68);
  OUTLINED_FUNCTION_34_7();
  sub_26761F9A8();
  v126 = v71;
  v127 = v75;
  v128 = v76;
  v129 = v79;
  v130 = v80;
  OUTLINED_FUNCTION_21_8();
  v81 = OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_9_20();
  v84 = sub_26766B3A8(v82, v83, MEMORY[0x277D5CA90]);
  v85 = v107;
  v86 = v109;
  v87 = v124;
  sub_2676C94EC();
  (v105[0])(v68, v57);
  OUTLINED_FUNCTION_27_5();
  v88(v87, v86);

  v126 = v86;
  v127 = v81;
  v128 = v84;
  OUTLINED_FUNCTION_19_4();
  v89 = OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_60_0();
  v90 = v113;
  OUTLINED_FUNCTION_75_1();
  sub_2676C952C();

  OUTLINED_FUNCTION_27_5();
  v91(v85, v90);

  v126 = v90;
  v127 = &type metadata for SendMailResult;
  v128 = v89;
  OUTLINED_FUNCTION_27_8();
  v92 = OUTLINED_FUNCTION_63_3();
  v93 = v108;
  v94 = v115;
  sub_2676C954C();

  v95 = OUTLINED_FUNCTION_40_3();
  v96(v95, v94);
  v126 = v94;
  v127 = v92;
  OUTLINED_FUNCTION_26_7();
  v97 = OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_60_0();
  v98 = v117;
  OUTLINED_FUNCTION_75_1();
  sub_2676C951C();
  (*(v118 + 8))(v93, v98);

  v126 = v98;
  v127 = &type metadata for SendMailResult;
  v128 = v97;
  OUTLINED_FUNCTION_25_10();
  v99 = OUTLINED_FUNCTION_63_3();
  v100 = v112;
  v101 = v119;
  sub_2676C94FC();

  v102 = OUTLINED_FUNCTION_40_3();
  v103(v102, v101);
  v126 = v101;
  v127 = v99;
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_63_3();
  v104 = v121;
  sub_2676C933C();
  (*(v122 + 8))(v100, v104);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676655C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  v3[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_2676CB0DC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_2676CC1CC();
  v3[20] = sub_2676CC1BC();
  v9 = sub_2676CC18C();
  v3[21] = v9;
  v3[22] = v8;

  return MEMORY[0x2822009F8](sub_267665874, v9, v8);
}

uint64_t sub_267665874()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v38 = *(v0 + 64);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v8 = *(v3 + 8);
  v8(v1, v2);
  sub_2676C97FC();
  v9 = *(v6 + 8);
  v9(v4, v5);
  if (__swift_getEnumTagSinglePayload(v7, 1, v38) == 1)
  {
    sub_267662EC4(*(v0 + 88), &qword_2801CCA20, &qword_2676CFEB8);
  }

  else
  {
    v10 = *(v0 + 72);
    v11 = OUTLINED_FUNCTION_11_16();
    v13 = v12(v11);
    v14 = *MEMORY[0x277D5CA08];
    v15 = *(v10 + 8);
    v16 = OUTLINED_FUNCTION_11_16();
    v15(v16);
    if (v13 == v14)
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v36 = v8;
      v37 = v15;
      v39 = v9;
      v17 = sub_2676CBE4C();
      __swift_project_value_buffer(v17, qword_2801CDC90);
      v18 = sub_2676CBE2C();
      v19 = sub_2676CC26C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v20);
        _os_log_impl(&dword_2675D4000, v18, v19, "#ReplyMailSceneHostPlan confirmed via voice, updating state to .sent and isConfirmed to true", v13, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      v21 = *(v0 + 144);
      v22 = *(v0 + 128);
      v23 = *(v0 + 72);
      v24 = *(v0 + 80);
      v25 = *(v0 + 64);
      v35 = *(v0 + 48);
      v33 = *(v0 + 56);
      v34 = *(v0 + 40);

      sub_26761F9A8();
      swift_getKeyPath();
      sub_2676C97EC();

      v36(v21, v22);
      (*(v23 + 104))(v24, *MEMORY[0x277D5CA00], v25);
      sub_2676C984C();
      (v37)(v24, v25);
      v26 = OUTLINED_FUNCTION_58_1();
      v39(v26);
      sub_26761F98C();
      *(v0 + 192) = 1;
      sub_2676C984C();
      (*(v35 + 8))(v33, v34);
    }
  }

  sub_2676C8BFC();
  v27 = OUTLINED_FUNCTION_33_4();
  __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 184) = v30;
  *v30 = v31;
  v30[1] = sub_267665C10;

  return sub_26761FD10();
}

uint64_t sub_267665C10()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  sub_267662EC4(v2, &qword_2801CC3D0, &qword_2676D1D80);
  v5 = *(v1 + 176);
  v6 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_267665D58, v6, v5);
}

uint64_t sub_267665D58()
{

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_267665E24(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_26761FAAC(&v3, 1);
}

uint64_t sub_267665E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_2676CB0DC();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD310, &unk_2676D4F10);
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v8 = sub_2676C9CCC();
  v3[35] = v8;
  v3[36] = *(v8 - 8);
  v3[37] = swift_task_alloc();
  sub_2676CC1CC();
  v3[38] = sub_2676CC1BC();
  v10 = sub_2676CC18C();
  v3[39] = v10;
  v3[40] = v9;

  return MEMORY[0x2822009F8](sub_2676660F4, v10, v9);
}

uint64_t sub_2676660F4()
{
  v62 = v0;
  v1 = (v0 + 128);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v2 = sub_2676CBE4C();
  __swift_project_value_buffer(v2, qword_2801CDC90);
  v3 = sub_2676CBE2C();
  v4 = sub_2676CC26C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_17_3();
    *v5 = 0;
    _os_log_impl(&dword_2675D4000, v3, v4, "#ReplyMailSceneHostPlan handling error", v5, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v6 = *(v0 + 168);

  *(v0 + 128) = v6;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  if (OUTLINED_FUNCTION_66_4())
  {
    v8 = (v0 + 296);
    v9 = (v0 + 280);
    v10 = 288;
LABEL_9:
    (*(*(v0 + v10) + 8))(*v8, *v9);

    v13 = *(v0 + 224);
    v14 = *(v0 + 216);
    v15 = *(v0 + 192);
    v16 = *(v0 + 200);
    v57 = *(v0 + 184);
    v59 = *(v0 + 208);
    sub_26761F9A8();
    swift_getKeyPath();
    sub_2676C97EC();

    v17 = OUTLINED_FUNCTION_53_0();
    v18(v17);
    (*(v15 + 104))(v16, *MEMORY[0x277D5CA20], v57);
    sub_2676C984C();
    (*(v15 + 8))(v16, v57);
    (*(v14 + 8))(v13, v59);
    v19 = sub_2676CBE2C();
    v20 = sub_2676CC26C();
    if (OUTLINED_FUNCTION_5_7(v20))
    {
      v21 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v21);
      _os_log_impl(&dword_2675D4000, v19, v20, "#ReplyMailSceneHostPlan user cancelled or rejected, returning IntentCancelled", v13, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_15_3();
    *(v0 + 328) = v22;
    *v22 = v23;
    OUTLINED_FUNCTION_57_6(v22);
    OUTLINED_FUNCTION_87_2();

    return sub_26762E11C();
  }

  v1 = (v0 + 136);
  v11 = *(v0 + 168);

  *(v0 + 136) = v11;
  v12 = v11;
  if (OUTLINED_FUNCTION_66_4())
  {
    v8 = (v0 + 272);
    v9 = (v0 + 256);
    v10 = 264;
    goto LABEL_9;
  }

  v26 = *(v0 + 168);

  *(v0 + 144) = v26;
  v27 = v26;
  if (swift_dynamicCast())
  {
    v28 = *(v0 + 88);
    v29 = *(v0 + 96);
    *(v0 + 344) = v28;
    *(v0 + 352) = v29;
    v30 = *(v0 + 104);
    if (v30 == 1)
    {
      v31 = sub_2676CBE2C();
      v32 = sub_2676CC26C();
      if (OUTLINED_FUNCTION_5_7(v32))
      {
        v33 = OUTLINED_FUNCTION_17_3();
        *v33 = 0;
        _os_log_impl(&dword_2675D4000, v31, v32, "#ReplyMailSceneHostPlan RecipientResolutionError.contactMatchWithoutEmailHandle, returning UnsupportedContactNoEmailAddress", v33, 2u);
        OUTLINED_FUNCTION_33_6();
      }

      v34 = *(v0 + 176);

      sub_2675E5D38(v34 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory, v0 + 24);
      *(v0 + 16) = v28;
      sub_267651D60(v28, v29, 1);
      swift_task_alloc();
      OUTLINED_FUNCTION_15_3();
      *(v0 + 360) = v35;
      *v35 = v36;
      OUTLINED_FUNCTION_57_6(v35);
      OUTLINED_FUNCTION_87_2();

      return sub_2676BFAF0();
    }

    sub_267651D40(v28, v29, v30);
  }

  v39 = *(v0 + 240);
  v38 = *(v0 + 248);
  v40 = *(v0 + 224);
  v41 = *(v0 + 232);
  v42 = *(v0 + 216);
  v43 = *(v0 + 192);
  v44 = *(v0 + 200);
  v56 = *(v0 + 184);
  v58 = *(v0 + 208);
  v60 = *(v0 + 168);

  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  (*(v39 + 8))(v38, v41);
  (*(v43 + 104))(v44, *MEMORY[0x277D5CA10], v56);
  sub_2676C984C();
  (*(v43 + 8))(v44, v56);
  (*(v42 + 8))(v40, v58);
  v45 = v60;
  v46 = sub_2676CBE2C();
  v47 = sub_2676CC26C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v61 = v49;
    *v48 = 136315138;
    swift_getErrorValue();
    v50 = sub_2676CC5FC();
    v52 = sub_2676B0B84(v50, v51, &v61);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_2675D4000, v46, v47, "#ReplyMailSceneHostPlan error: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_4_6();
  }

  type metadata accessor for GenericError();
  *(v0 + 376) = swift_initStackObject();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 384) = v53;
  *v53 = v54;
  OUTLINED_FUNCTION_57_6(v53);
  OUTLINED_FUNCTION_87_2();

  return sub_2676C1B78();
}

uint64_t sub_267666764()
{
  OUTLINED_FUNCTION_12_1();
  v2 = *v1;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 336) = v0;

  v5 = *(v2 + 320);
  v6 = *(v2 + 312);
  if (v0)
  {
    v7 = sub_267666BD4;
  }

  else
  {
    v7 = sub_267666894;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_267666894()
{
  OUTLINED_FUNCTION_12_1();

  OUTLINED_FUNCTION_67_2();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_267666918()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  v3[46] = v0;

  sub_267662E0C((v3 + 2));
  v7 = v3[39];
  v8 = v3[40];
  if (v0)
  {
    v9 = sub_267666BB8;
  }

  else
  {
    v9 = sub_267666A1C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_267666A1C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  sub_267651D40(v1, v2, 1);

  OUTLINED_FUNCTION_67_2();

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_267666ABC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  v3[49] = v0;

  v7 = v3[39];
  v8 = v3[40];
  if (v0)
  {
    v9 = sub_267666BF0;
  }

  else
  {
    v9 = sub_26766B3F0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

void sub_267666C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v159 = v21;
  v160 = v20;
  v150 = v22;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3();
  v144 = v23;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v25);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_3();
  v148 = v26;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD280, &qword_2676D1EB8);
  OUTLINED_FUNCTION_3();
  v157 = v30;
  v158 = v29;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_1();
  v156 = v32;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v36);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v145 = v37;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_3();
  v154 = v41;
  v155 = v40;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_1();
  v153 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD288, &qword_2676D1EC0);
  OUTLINED_FUNCTION_3();
  v45 = v44;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_50_3();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD218, &unk_2676D1D90);
  OUTLINED_FUNCTION_3();
  v49 = v48;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v50);
  v52 = v138 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD210, &qword_2676D1D88);
  OUTLINED_FUNCTION_3();
  v147 = v54;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v55);
  v57 = v138 - v56;
  sub_2676CBA6C();
  OUTLINED_FUNCTION_0_21();
  v149 = sub_26766B3A8(v58, v59, MEMORY[0x277D5C810]);
  sub_2676C98BC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_23();
  sub_26766B3A8(v60, v61, MEMORY[0x277D5C780]);
  sub_2676C988C();

  (*(v49 + 8))(v52, v47);
  swift_getKeyPath();
  v161 = v57;
  v162 = v53;
  sub_2676C989C();

  LOBYTE(v52) = sub_2676C987C();
  v64 = *(v45 + 8);
  v63 = v45 + 8;
  v62 = v64;
  v65 = OUTLINED_FUNCTION_14_14();
  v64(v65);
  if (v52)
  {
    v140 = v63;
    v141 = v62;
    v66 = v153;
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_34_7();
    v67 = v155;
    sub_2676C97EC();

    (*(v154 + 8))(v66, v67);
    v68 = v146;
    sub_2676C983C();
    (*(v145 + 8))(v62, v68);
    KeyPath = swift_getKeyPath();
    v70 = sub_267663304(v163);
    v71 = sub_2676CA3DC();
    v73 = v72;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    v75 = OUTLINED_FUNCTION_33_4();
    if (__swift_getEnumTagSinglePayload(v75, v76, v74))
    {
      v77 = OUTLINED_FUNCTION_29_9();
      v71(v77);

      v78 = OUTLINED_FUNCTION_30_8();
      v70(v78);
      v62 = v141;
    }

    else
    {
      v138[2] = v73;
      v138[3] = KeyPath;
      v139 = v70;
      v138[1] = swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_34_7();
      sub_2676CA3EC();

      OUTLINED_FUNCTION_21_3(v70, 1, v74);
      if (v79)
      {
        sub_267662EC4(v70, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2();
        (*(v80 + 8))(v70, v74);
      }

      sub_2676CA8AC();
      v81 = OUTLINED_FUNCTION_29_9();
      v71(v81);

      v82 = OUTLINED_FUNCTION_30_8();
      v139(v82);
      v62 = v141;
    }
  }

  swift_getKeyPath();
  sub_2676C989C();

  v83 = sub_2676C987C();
  v84 = OUTLINED_FUNCTION_14_14();
  v62(v84);
  v85 = v157;
  if (v83)
  {
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_81_3();
    sub_2676C97EC();

    v86 = OUTLINED_FUNCTION_79_2();
    v87(v86);
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5();
    v88 = OUTLINED_FUNCTION_14_14();
    v89(v88);
    swift_getKeyPath();
    v90 = sub_267663304(v163);
    v91 = sub_2676CA3DC();
    v93 = v92;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (__swift_getEnumTagSinglePayload(v93, 1, v94))
    {
      v95 = OUTLINED_FUNCTION_29_9();
      v91(v95);

      v96 = OUTLINED_FUNCTION_30_8();
      v90(v96);
    }

    else
    {
      v146 = v90;
      v145 = swift_getKeyPath();
      swift_getKeyPath();
      v97 = v142;
      sub_2676CA3EC();

      OUTLINED_FUNCTION_21_3(v97, 1, v94);
      if (v79)
      {
        sub_267662EC4(v97, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2();
        (*(v98 + 8))(v97, v94);
      }

      v99 = v146;
      OUTLINED_FUNCTION_11_16();
      sub_2676CA8AC();
      v100 = OUTLINED_FUNCTION_29_9();
      v91(v100);

      v101 = OUTLINED_FUNCTION_30_8();
      v99(v101);
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_8_21();
  sub_26766B3A8(v102, v103, MEMORY[0x277D5C6A8]);
  OUTLINED_FUNCTION_42_3();
  sub_2676C98AC();

  OUTLINED_FUNCTION_81_3();
  v104 = sub_2676C987C();
  v105 = *(v85 + 8);
  v106 = OUTLINED_FUNCTION_79_2();
  v105(v106);
  v107 = v148;
  v157 = v85 + 8;
  if (v104)
  {
    OUTLINED_FUNCTION_69_2();
    v107 = v153;
    sub_26761F9A8();
    v108 = swift_getKeyPath();
    OUTLINED_FUNCTION_41_4(v108);

    v109 = OUTLINED_FUNCTION_51_5();
    v110(v109);
    sub_2676C983C();
    v111 = OUTLINED_FUNCTION_62_3();
    v112(v111);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_42_3();
  sub_2676C98AC();

  OUTLINED_FUNCTION_81_3();
  v113 = sub_2676C987C();
  v114 = OUTLINED_FUNCTION_79_2();
  v105(v114);
  if (v113)
  {
    OUTLINED_FUNCTION_69_2();
    v107 = v153;
    sub_26761F9A8();
    v115 = swift_getKeyPath();
    OUTLINED_FUNCTION_41_4(v115);

    v116 = OUTLINED_FUNCTION_51_5();
    v117(v116);
    sub_2676C983C();
    v118 = OUTLINED_FUNCTION_62_3();
    v119(v118);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_42_3();
  sub_2676C98AC();

  OUTLINED_FUNCTION_81_3();
  v120 = sub_2676C987C();
  v121 = OUTLINED_FUNCTION_79_2();
  v105(v121);
  if (v120)
  {
    OUTLINED_FUNCTION_69_2();
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_34_7();
    v122 = v155;
    sub_2676C97EC();

    v123 = OUTLINED_FUNCTION_40_3();
    v124(v123, v122);
    sub_2676C983C();
    v107 += 8;
    v125 = OUTLINED_FUNCTION_58_1();
    v126(v125);
  }

  v127 = v152;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v128 = sub_2676CBE4C();
  __swift_project_value_buffer(v128, qword_2801CDC90);

  v129 = sub_2676CBE2C();
  v130 = sub_2676CC23C();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v163[0] = v132;
    *v131 = 136315138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_43_3();
    sub_2676632EC();
    sub_2676CA3EC();

    OUTLINED_FUNCTION_27_5();
    v133(v107, v127);
    v134 = sub_2676CBFBC();
    v136 = sub_2676B0B84(v134, v135, v163);

    *(v131 + 4) = v136;
    _os_log_impl(&dword_2675D4000, v129, v130, "#ReplyMailSceneHostPlan accept(input:) returning .yes() with updated target: %s", v131, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v132);
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_27_5();
  v137(v161, v162);
  OUTLINED_FUNCTION_20_1();
}

void sub_267667B18()
{
  OUTLINED_FUNCTION_21_1();
  v192 = v0;
  v199 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v7);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_54_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v9);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v184 - v11;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  OUTLINED_FUNCTION_3();
  v191 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v198 = v15;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_1();
  v200 = v17;
  sub_2676CA43C();
  OUTLINED_FUNCTION_3();
  v195 = v19;
  v196 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_2();
  isa = v21 - v20;
  v23 = sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v25 = v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v184 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v184 - v30;
  v197 = v4;
  v32 = sub_26762F80C(v6);
  v193 = v6;
  if (v32)
  {
    if (qword_2801CBAA0 != -1)
    {
LABEL_102:
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v33 = sub_2676CBE4C();
    v34 = __swift_project_value_buffer(v33, qword_2801CDC90);
    v35 = *(v25 + 16);
    v36 = v197;
    v35(v31, v197, v23);
    v35(v29, v36, v23);
    v194 = v34;
    v37 = sub_2676CBE2C();
    v38 = sub_2676CC23C();
    v39 = os_log_type_enabled(v37, v38);
    v199 = v12;
    if (v39)
    {
      LODWORD(v189) = v38;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v202[0] = OUTLINED_FUNCTION_74_1(v41);
      *v40 = 136315650;
      v42 = v193;
      v190 = v37;
      v186 = v29;
      if (v193)
      {
        if (v193 == 1)
        {
          v43 = 17219;
        }

        else
        {
          v43 = 4408130;
        }

        if (v193 == 1)
        {
          v44 = 0xE200000000000000;
        }

        else
        {
          v44 = 0xE300000000000000;
        }
      }

      else
      {
        v44 = 0xE200000000000000;
        v43 = 20308;
      }

      v63 = sub_2676B0B84(v43, v44, v202);

      *(v40 + 4) = v63;
      *(v40 + 12) = 1024;
      v64 = *MEMORY[0x277D5E478];
      v65 = v195;
      v185 = v40;
      v188 = *(v195 + 104);
      v66 = v196;
      v188(isa, v64, v196);
      v67 = sub_2676308A4(v42);
      v184 = &v184;
      MEMORY[0x28223BE20](v67);
      OUTLINED_FUNCTION_81_2();
      v69 = sub_2676A2650(sub_267630B6C, v68, v67);

      v195 = *(v65 + 8);
      (v195)(isa, v66);
      LODWORD(v67) = v69 & 1;
      v184 = *(v25 + 8);
      v184(v31, v23);
      v70 = v185;
      *(v185 + 14) = v67;
      *(v70 + 18) = 1024;
      v188(isa, *MEMORY[0x277D5E470], v66);
      v29 = v186;
      v71 = sub_2676308A4(v193);
      MEMORY[0x28223BE20](v71);
      OUTLINED_FUNCTION_81_2();
      v73 = sub_2676A2650(sub_267630B90, v72, v71);
      v188 = 0;

      (v195)(isa, v196);
      v54 = v193;
      v184(v29, v23);
      *(v70 + 20) = v73 & 1;
      v74 = v190;
      _os_log_impl(&dword_2675D4000, v190, v189, "#ReplyMailSceneHostPlan %s recipients has a list operation add recipients? %{BOOL}d, remove recipients? %{BOOL}d", v70, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v187);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_33_6();

      v12 = v199;
    }

    else
    {
      v53 = *(v25 + 8);
      v53(v29, v23);
      v53(v31, v23);

      v188 = 0;
      v54 = v193;
    }

    v75 = sub_26762F9DC(v54);
    v76 = v200;
    if (*(v75 + 16))
    {
      v77 = sub_2676CBE2C();
      v78 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_7(v78))
      {
        v79 = swift_slowAlloc();
        v202[0] = swift_slowAlloc();
        *v79 = 136315394;
        if (v54)
        {
          if (v54 == 1)
          {
            v80 = 17219;
          }

          else
          {
            v80 = 4408130;
          }

          if (v54 == 1)
          {
            v81 = 0xE200000000000000;
          }

          else
          {
            v81 = 0xE300000000000000;
          }
        }

        else
        {
          v81 = 0xE200000000000000;
          v80 = 20308;
        }

        v91 = sub_2676B0B84(v80, v81, v202);

        *(v79 + 4) = v91;
        *(v79 + 12) = 2080;
        v92 = MEMORY[0x26D5FDDD0](v75, v201);
        v94 = sub_2676B0B84(v92, v93, v202);

        *(v79 + 14) = v94;
        _os_log_impl(&dword_2675D4000, v77, v78, "#ReplyMailSceneHostPlan Adding these %s recipients: %s", v79, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_33_6();
        OUTLINED_FUNCTION_4_6();
      }

      swift_getKeyPath();
      v95 = sub_267663304(v202);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
      OUTLINED_FUNCTION_0_21();
      v29 = sub_26766B3A8(v96, v97, MEMORY[0x277D5C810]);
      OUTLINED_FUNCTION_1_23();
      sub_26766B3A8(v98, v99, MEMORY[0x277D5C780]);
      v100 = sub_2676CA3DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      v101 = OUTLINED_FUNCTION_33_4();
      if (__swift_getEnumTagSinglePayload(v101, v102, v103))
      {

        v104 = OUTLINED_FUNCTION_29_9();
        v100(v104);

        v105 = OUTLINED_FUNCTION_30_8();
        v95(v105);
        v54 = v193;
      }

      else
      {
        v106 = v193;
        sub_2675DFEE4(v193, v75);

        v107 = OUTLINED_FUNCTION_29_9();
        v100(v107);
        v54 = v106;
        v76 = v200;

        v108 = OUTLINED_FUNCTION_30_8();
        v95(v108);
      }

      v12 = v199;
    }

    else
    {
    }

    v109 = sub_267630350(v54);
    if (v109[2].isa)
    {
      v110 = sub_2676CBE2C();
      v111 = sub_2676CC23C();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v202[0] = swift_slowAlloc();
        *v112 = 136315394;
        if (v54)
        {
          if (v54 == 1)
          {
            v113 = 0xE200000000000000;
            v114 = 17219;
          }

          else
          {
            v113 = 0xE300000000000000;
            v114 = 4408130;
          }
        }

        else
        {
          v113 = 0xE200000000000000;
          v114 = 20308;
        }

        v115 = sub_2676B0B84(v114, v113, v202);

        *(v112 + 4) = v115;
        *(v112 + 12) = 2080;
        v116 = MEMORY[0x26D5FDDD0](v109, v201);
        v29 = sub_2676B0B84(v116, v117, v202);

        *(v112 + 14) = v29;
        _os_log_impl(&dword_2675D4000, v110, v111, "#ReplyMailSceneHostPlan Removing these %s recipients: %s", v112, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();

        v12 = v199;
      }

      else
      {
      }

      v31 = MEMORY[0x277D84F90];
      isa = v109[2].isa;
      v190 = v109;
      v189 = isa;
      if (isa)
      {
        v202[0] = MEMORY[0x277D84F90];
        sub_2676C2B08(0, isa, 0);
        OUTLINED_FUNCTION_57_5();
        v31 = v202[0];
        v29 = v109 + v118;
        v196 = *(v119 + 56);
        v197 = v120;
        v194 = v119;
        v195 = v119 - 8;
        v121 = v201;
        do
        {
          (v197)(v76, v29, v121);
          swift_getKeyPath();
          OUTLINED_FUNCTION_8_21();
          sub_26766B3A8(&qword_2801CBF70, v122, MEMORY[0x277D5C6A8]);
          sub_26766B3A8(&qword_2801CC2D0, MEMORY[0x277D5C640], MEMORY[0x277D5C618]);
          sub_2676CA87C();

          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
          OUTLINED_FUNCTION_21_3(v12, 1, v123);
          if (v52)
          {
            (*v195)(v76, v121);
            sub_267662EC4(v12, &qword_2801CC068, &unk_2676D4E00);
            v124 = 0;
            v126 = 0;
          }

          else
          {
            swift_getKeyPath();
            v124 = sub_2676CA89C();
            v126 = v125;

            (*v195)(v76, v121);
            OUTLINED_FUNCTION_14_2();
            v127 = OUTLINED_FUNCTION_11_16();
            v128(v127);
          }

          v202[0] = v31;
          v130 = *(v31 + 2);
          v129 = *(v31 + 3);
          v23 = v130 + 1;
          if (v130 >= v129 >> 1)
          {
            v132 = OUTLINED_FUNCTION_23_1(v129);
            sub_2676C2B08(v132, v130 + 1, 1);
            v121 = v201;
            v31 = v202[0];
          }

          *(v31 + 2) = v23;
          v131 = &v31[16 * v130];
          *(v131 + 4) = v124;
          *(v131 + 5) = v126;
          v29 += v196;
          --isa;
          v12 = v199;
          v76 = v200;
        }

        while (isa);
        v109 = v190;
      }

      else
      {
        v23 = *(MEMORY[0x277D84F90] + 16);
      }

      v25 = 0;
      v133 = MEMORY[0x277D84F90];
      v134 = MEMORY[0x277D84F90];
LABEL_70:
      v135 = 16 * v25 + 40;
      while (v23 != v25)
      {
        if (v25 >= *(v31 + 2))
        {
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        ++v25;
        v136 = v135 + 16;
        v137 = *&v31[v135];
        v135 += 16;
        if (v137)
        {
          v29 = *&v31[v136 - 24];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_68_2();
            v134 = v140;
          }

          isa = *(v134 + 16);
          v138 = *(v134 + 24);
          v12 = (isa + 1);
          if (isa >= v138 >> 1)
          {
            v141 = OUTLINED_FUNCTION_23_1(v138);
            sub_26760719C(v141, isa + 1, 1, v134);
            v134 = v142;
          }

          *(v134 + 16) = v12;
          v139 = v134 + 16 * isa;
          *(v139 + 32) = v29;
          *(v139 + 40) = v137;
          v109 = v190;
          goto LABEL_70;
        }
      }

      v143 = sub_2676A1BFC(v134);
      v29 = v143;
      v25 = v189;
      if (v189)
      {
        v197 = v143;
        v202[0] = v133;
        sub_2676C2B08(0, v189, 0);
        v23 = v202[0];
        OUTLINED_FUNCTION_57_5();
        v145 = v109 + v144;
        v199 = *(v146 + 7);
        v200 = v147;
        v31 = v146;
        v148 = v146 - 8;
        v149 = v201;
        v150 = v25;
        do
        {
          v151 = v198;
          v200(v198, v145, v149);
          swift_getKeyPath();
          OUTLINED_FUNCTION_8_21();
          sub_26766B3A8(&qword_2801CBF70, v152, MEMORY[0x277D5C6A8]);
          v153 = sub_2676CA89C();
          v149 = v201;
          v25 = v153;
          v155 = v154;

          (*v148)(v151, v149);
          v202[0] = v23;
          isa = *(v23 + 16);
          v156 = *(v23 + 24);
          if (isa >= v156 >> 1)
          {
            v158 = OUTLINED_FUNCTION_23_1(v156);
            sub_2676C2B08(v158, isa + 1, 1);
            v149 = v201;
            v23 = v202[0];
          }

          *(v23 + 16) = isa + 1;
          v157 = v23 + 16 * isa;
          *(v157 + 32) = v25;
          *(v157 + 40) = v155;
          v145 += v199;
          --v150;
        }

        while (v150);

        v29 = v197;
      }

      else
      {

        v23 = MEMORY[0x277D84F90];
      }

      v159 = 0;
      v12 = *(v23 + 16);
      v160 = MEMORY[0x277D84F90];
LABEL_87:
      v161 = 16 * v159 + 40;
      while (v12 != v159)
      {
        if (v159 >= *(v23 + 16))
        {
          goto LABEL_101;
        }

        ++v159;
        v162 = v161 + 16;
        v163 = *(v23 + v161);
        v161 += 16;
        if (v163)
        {
          v164 = *(v23 + v162 - 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_68_2();
            v160 = v167;
          }

          v25 = *(v160 + 16);
          v165 = *(v160 + 24);
          v31 = (v25 + 1);
          if (v25 >= v165 >> 1)
          {
            v168 = OUTLINED_FUNCTION_23_1(v165);
            sub_26760719C(v168, v25 + 1, 1, v160);
            v160 = v169;
          }

          *(v160 + 16) = v31;
          v166 = v160 + 16 * v25;
          *(v166 + 32) = v164;
          *(v166 + 40) = v163;
          goto LABEL_87;
        }
      }

      v170 = sub_2676A1BFC(v160);
      swift_getKeyPath();
      v171 = sub_267663304(v202);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
      OUTLINED_FUNCTION_0_21();
      sub_26766B3A8(v172, v173, MEMORY[0x277D5C810]);
      OUTLINED_FUNCTION_1_23();
      sub_26766B3A8(v174, v175, MEMORY[0x277D5C780]);
      v176 = sub_2676CA3DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
      v177 = OUTLINED_FUNCTION_33_4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v177, v178, v179);
      if (!EnumTagSinglePayload)
      {
        MEMORY[0x28223BE20](EnumTagSinglePayload);
        *(&v184 - 4) = v29;
        v181 = v193;
        *(&v184 - 24) = v193;
        *(&v184 - 2) = v170;
        sub_2675E0008(v181);
      }

      v182 = OUTLINED_FUNCTION_29_9();
      v176(v182);

      v183 = OUTLINED_FUNCTION_30_8();
      v171(v183);
    }

    else
    {
    }
  }

  else
  {
    swift_getKeyPath();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
    OUTLINED_FUNCTION_0_21();
    v48 = sub_26766B3A8(v46, v47, MEMORY[0x277D5C810]);
    OUTLINED_FUNCTION_1_23();
    sub_26766B3A8(v49, v50, MEMORY[0x277D5C780]);
    sub_2676CA3EC();

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    OUTLINED_FUNCTION_21_3(v1, 1, v51);
    if (v52)
    {
      sub_267662EC4(v1, &qword_2801CC428, &unk_2676CEDD0);
      v55 = MEMORY[0x277D84F90];
    }

    else
    {
      v55 = sub_2675DFE20(v6);
      OUTLINED_FUNCTION_14_2();
      (*(v56 + 8))(v1, v51);
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v57 = sub_2676CBE4C();
    __swift_project_value_buffer(v57, qword_2801CDC90);

    v58 = sub_2676CBE2C();
    v59 = sub_2676CC23C();

    if (os_log_type_enabled(v58, v59))
    {
      v199 = v48;
      v60 = swift_slowAlloc();
      v202[0] = swift_slowAlloc();
      *v60 = 136315394;
      v200 = v45;
      if (v193)
      {
        if (v193 == 1)
        {
          v61 = 17219;
        }

        else
        {
          v61 = 4408130;
        }

        if (v193 == 1)
        {
          v62 = 0xE200000000000000;
        }

        else
        {
          v62 = 0xE300000000000000;
        }
      }

      else
      {
        v62 = 0xE200000000000000;
        v61 = 20308;
      }

      v82 = sub_2676B0B84(v61, v62, v202);

      *(v60 + 4) = v82;
      *(v60 + 12) = 2080;
      v83 = MEMORY[0x26D5FDDD0](v55, v201);
      v85 = sub_2676B0B84(v83, v84, v202);

      *(v60 + 14) = v85;
      _os_log_impl(&dword_2675D4000, v58, v59, "#ReplyMailSceneHostPlan Replacing %s recipients with these recipients: %s", v60, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4_6();
    }

    else
    {
    }

    swift_getKeyPath();
    v86 = sub_267663304(v202);
    v87 = sub_2676CA3DC();
    if (!__swift_getEnumTagSinglePayload(v88, 1, v51))
    {
      sub_2675E025C(v193, v55);
    }

    v89 = OUTLINED_FUNCTION_29_9();
    v87(v89);

    v90 = OUTLINED_FUNCTION_30_8();
    v86(v90);
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_267668EC4(uint64_t a1, void *a2, int a3, void *a4)
{
  HIDWORD(v35) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  sub_26766B3A8(&qword_2801CBF70, MEMORY[0x277D5C6D0], MEMORY[0x277D5C6A8]);
  sub_26766B3A8(&qword_2801CC2D0, MEMORY[0x277D5C640], MEMORY[0x277D5C618]);
  sub_2676CA87C();

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_267662EC4(v8, &qword_2801CC068, &unk_2676D4E00);
    goto LABEL_16;
  }

  swift_getKeyPath();
  v10 = sub_2676CA89C();
  v12 = v11;

  (*(*(v9 - 8) + 8))(v8, v9);
  if (!v12)
  {
LABEL_16:
    swift_getKeyPath();
    v21 = sub_2676CA89C();
    v23 = v22;

    if (v23)
    {
      if (sub_2676A1CB8(v21, v23, a4))
      {
        if (qword_2801CBAA0 != -1)
        {
          swift_once();
        }

        v24 = sub_2676CBE4C();
        __swift_project_value_buffer(v24, qword_2801CDC90);

        v15 = sub_2676CBE2C();
        v25 = sub_2676CC23C();

        if (os_log_type_enabled(v15, v25))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v36 = v18;
          *v17 = 136315394;
          if (BYTE4(v35))
          {
            if (BYTE4(v35) == 1)
            {
              v26 = 17219;
            }

            else
            {
              v26 = 4408130;
            }

            if (BYTE4(v35) == 1)
            {
              v27 = 0xE200000000000000;
            }

            else
            {
              v27 = 0xE300000000000000;
            }
          }

          else
          {
            v27 = 0xE200000000000000;
            v26 = 20308;
          }

          v29 = sub_2676B0B84(v26, v27, &v36);

          *(v17 + 4) = v29;
          *(v17 + 12) = 2080;
          v30 = sub_2676B0B84(v21, v23, &v36);

          *(v17 + 14) = v30;
          v31 = "#ReplyMailSceneHostPlan Removing %s recipient with name %s";
          v32 = v25;
LABEL_35:
          _os_log_impl(&dword_2675D4000, v15, v32, v31, v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5FEA80](v18, -1, -1);
          MEMORY[0x26D5FEA80](v17, -1, -1);
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    return 0;
  }

  if (!sub_2676A1CB8(v10, v12, a2))
  {

    goto LABEL_16;
  }

  v13 = v10;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v14 = sub_2676CBE4C();
  __swift_project_value_buffer(v14, qword_2801CDC90);

  v15 = sub_2676CBE2C();
  v16 = sub_2676CC23C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v18;
    *v17 = 136315394;
    if (BYTE4(v35))
    {
      if (BYTE4(v35) == 1)
      {
        v19 = 17219;
      }

      else
      {
        v19 = 4408130;
      }

      if (BYTE4(v35) == 1)
      {
        v20 = 0xE200000000000000;
      }

      else
      {
        v20 = 0xE300000000000000;
      }
    }

    else
    {
      v20 = 0xE200000000000000;
      v19 = 20308;
    }

    v33 = sub_2676B0B84(v19, v20, &v36);

    *(v17 + 4) = v33;
    *(v17 + 12) = 2080;
    v34 = sub_2676B0B84(v13, v12, &v36);

    *(v17 + 14) = v34;
    v31 = "#ReplyMailSceneHostPlan Removing %s recipient with email %s";
    v32 = v16;
    goto LABEL_35;
  }

LABEL_30:

LABEL_36:

  return 1;
}