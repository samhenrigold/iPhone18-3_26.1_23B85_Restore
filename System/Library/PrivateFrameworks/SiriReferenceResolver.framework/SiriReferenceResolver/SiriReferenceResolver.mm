uint64_t sub_268C958E0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_268C958F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268C95930()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268C95970()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_268C95A80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268CA7454();
  *a1 = result;
  return result;
}

uint64_t sub_268C95AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_268CB7750();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268C95AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_268CB7750();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_268C95C30()
{
  sub_268CB7930();
  OUTLINED_FUNCTION_2_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_268C95D68(void *a1)
{
  v2 = sub_268CB7840();
  v4 = sub_268C95E08(a1, v2, v3);

  v5 = sub_268C9F044(0, 0, 0, 0, v4, 0, 0, 0, 0xF000000000000000);

  return v5;
}

uint64_t sub_268C95E08(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268CB7160();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268CB7280();
  swift_allocObject();
  v10 = sub_268CB7270();
  sub_268C96094(a1);
  if (v11)
  {
    sub_268CB7260();
  }

  else
  {
    sub_268CB7260();
  }

  v12 = [a1 messageConversationIdentifier];
  sub_268CB7A10();

  sub_268CB7130();
  sub_268CB7090();
  (*(v7 + 8))(v9, v6);
  v13 = sub_268C960F8(a1);
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13;
  result = sub_268CAAE90();
  if (!result)
  {
LABEL_14:

LABEL_15:
    v20 = MEMORY[0x26D62AA30](v10);

    return v20;
  }

  v16 = result;
  if (result >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D62B570](i, v14);
      }

      else
      {
        v18 = *(v14 + 8 * i + 32);
      }

      v19 = v18;
      if (sub_268CB44B4(a2, a3, v18))
      {

        sub_268CB7250();
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_268C96094(void *a1)
{
  v1 = [a1 groupName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268CB7A10();

  return v3;
}

uint64_t sub_268C960F8(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_268C96158();
  v3 = sub_268CB7B50();

  return v3;
}

unint64_t sub_268C96158()
{
  result = qword_2802DA4B0;
  if (!qword_2802DA4B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802DA4B0);
  }

  return result;
}

uint64_t sub_268C961B0()
{
  type metadata accessor for BaseQueryMatcher(0);
  v0 = swift_allocObject();
  result = sub_268C97DE4();
  qword_28131ECD8 = v0;
  return result;
}

uint64_t sub_268C961F0()
{
  result = sub_268C96224(0x2E217D7B5D5B2928uLL, 0xE800000000000000);
  qword_2802DA630 = result;
  return result;
}

uint64_t sub_268C96224(unint64_t a1, unint64_t a2)
{
  v4 = sub_268CB7A70();
  v10 = MEMORY[0x26D62B450](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9[2] = a1;
  v9[3] = a2;
  v9[4] = 0;
  v9[5] = v5;
  while (1)
  {
    v6 = sub_268CB7AA0();
    if (!v7)
    {
      break;
    }

    sub_268C98E64(v9, v6, v7);
  }

  return v10;
}

uint64_t sub_268C962C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_268CB77B0();
  sub_268C96540(v5, a2, a3);
  v7 = v6;

  if (v7)
  {
LABEL_33:
    LOBYTE(a3) = 1;
    return a3 & 1;
  }

  v8 = sub_268CB77C0();
  if (!v8)
  {
LABEL_17:
    sub_268CB77B0();
    v19 = sub_268CB7670();
    v21 = v20;

    if (v19 == 0x505F6E6F6D6D6F63 && v21 == 0xED00006E6F737265)
    {
    }

    else
    {
      v23 = OUTLINED_FUNCTION_3(v19);

      if ((v23 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (sub_268CB7670() == 0xD000000000000012 && 0x8000000268CB95B0 == v24)
    {

      return a3 & 1;
    }

    v26 = sub_268CB7DC0();

    if (v26)
    {
      return a3 & 1;
    }

LABEL_29:
    LOBYTE(a3) = 0;
    return a3 & 1;
  }

  v9 = v8;
  result = sub_268CAAE90();
  v11 = result;
  v12 = 0;
  while (1)
  {
    if (v11 == v12)
    {

      goto LABEL_17;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D62B570](v12, v9);
    }

    else
    {
      if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }
    }

    if (__OFADD__(v12, 1))
    {
      break;
    }

    v13 = sub_268CB7670();
    v15 = v14;
    if (v13 == sub_268CB7670() && v15 == v16)
    {

LABEL_32:

      goto LABEL_33;
    }

    v18 = sub_268CB7DC0();

    ++v12;
    if (v18)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_268C96540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8();
  v20 = v3;
  v4 = sub_268CB7670();
  v6 = v5;
  v7 = sub_268CB7670();
  v9 = v8;
  v10 = v4 == 0x535F6E6F6D6D6F63 && v6 == 0xEE00676E69747465;
  if (!v10 && (sub_268CB7DC0() & 1) == 0 || (v7 == 0x535F6E6F6D6D6F63 ? (v11 = v9 == 0xEE00676E69747465) : (v11 = 0), !v11 && (sub_268CB7DC0() & 1) == 0))
  {
    v12 = v4 == v7 && v6 == v9;
    if (v12 || (sub_268CB7DC0() & 1) != 0 || (v4 == 0x6E456F4E5F6F7375 ? (v13 = v6 == 0xEC00000079746974) : (v13 = 0), v13 || (sub_268CB7DC0() & 1) != 0))
    {
    }

    else
    {
      v16 = sub_268CA63D0();
      v17 = v16;
      if (!v16)
      {
        goto LABEL_24;
      }

      v21[0] = v4;
      v21[1] = v6;
      MEMORY[0x28223BE20](v16);
      v19[2] = v21;
      v18 = sub_268C9B0B0(sub_268C9AE9C, v19, v17);

      if (!v18)
      {

        goto LABEL_25;
      }
    }

    v14 = sub_268CB7650();
    v15 = sub_268CB7650();
    sub_268C96794(v14, v15, v7, v9);

LABEL_24:

    goto LABEL_25;
  }

LABEL_25:
  OUTLINED_FUNCTION_7();
}

void sub_268C96794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8();
  v77 = v4;
  v80 = v6;
  v8 = v7;
  v75 = v9;
  OUTLINED_FUNCTION_9();
  v14 = v10 + 64;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v10 + 64);
  v69 = OBJC_IVAR____TtC21SiriReferenceResolver16BaseQueryMatcher_equivalentTypesForEntityType;
  v76 = OBJC_IVAR____TtC21SiriReferenceResolver16BaseQueryMatcher_logger;
  v18 = (v15 + 63) >> 6;
  v78 = v11;
  v79 = v12;
  v73 = 0x8000000268CB94D0;
  v20 = v11 == v13 && 0x8000000268CB94D0 == v12;
  v74 = v20;
  v71 = "common_PostalAddress";
  v72 = "licationQueryMatcher";

  v21 = 0;
  v68 = 0;
  while (v17)
  {
LABEL_15:
    OUTLINED_FUNCTION_16();
    v24 = v23 | (v21 << 6);
    v25 = (*(v8 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v8 + 56) + 8 * v24);

    if (sub_268CB7B00())
    {
    }

    else
    {
      if (v80)
      {
        v29 = v26 == v5 && v27 == 0xE500000000000000;
        if (v29 || (OUTLINED_FUNCTION_15(), (sub_268CB7DC0() & 1) != 0))
        {
          if (v74 || (sub_268CB7DC0() & 1) != 0 || (v36 = *(v77 + v69), *(v36 + 16)) && (v37 = sub_268CA5E3C(v78, v79), (v38 & 1) != 0) && (v70 = v8, v67 = v65, v39 = *(*(v36 + 56) + 8 * v37), v81[0] = 0xD000000000000015, v81[1] = v73, MEMORY[0x28223BE20](v37), *&v65[-16] = v81, , v40 = v5, v41 = v68, v66 = sub_268C9B0B0(sub_268C9AE30, &v65[-32], v39), v68 = v41, v5 = v40, , v8 = v70, v66))
          {

            v30 = sub_268CB7730();
            v31 = sub_268CB7BC0();
            if (!os_log_type_enabled(v30, v31))
            {
              goto LABEL_45;
            }

            v32 = swift_slowAlloc();
            *v32 = 0;
            v33 = v31;
            v34 = v30;
            v35 = "Disable label matching qualified";
            goto LABEL_44;
          }
        }
      }

      if (v26 != 1701869940 || v27 != 0xE400000000000000)
      {
        OUTLINED_FUNCTION_15();
        if ((sub_268CB7DC0() & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      if (qword_28131EA10 != -1)
      {
        swift_once();
      }

      v43 = qword_28131EC98 == v78 && unk_28131ECA0 == v79;
      if (v43 || (sub_268CB7DC0() & 1) != 0)
      {

        v30 = sub_268CB7730();
        v44 = sub_268CB7BC0();
        if (!os_log_type_enabled(v30, v44))
        {
          goto LABEL_45;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = v44;
        v34 = v30;
        v35 = "Skip matching common_Calendar.type.common_CalendarEventType";
LABEL_44:
        _os_log_impl(&dword_268C94000, v34, v33, v35, v32, 2u);
        MEMORY[0x26D62BBE0](v32, -1, -1);
LABEL_45:
      }

      else
      {
LABEL_46:
        v5 = v75;
        if (!*(v75 + 16) || (v45 = OUTLINED_FUNCTION_15(), sub_268CA5E3C(v45, v46), (v47 & 1) == 0))
        {

LABEL_77:

          goto LABEL_72;
        }

        v70 = v8;

        v49 = sub_268C96DFC(v48, v28, v78, v79, v26, v27, v80 & 1);

        if (v49)
        {

          v8 = v70;
          OUTLINED_FUNCTION_9();
        }

        else
        {
          if (v26 == 1701667182 && v27 == 0xE400000000000000)
          {

            v8 = v70;
          }

          else
          {
            v51 = OUTLINED_FUNCTION_15();
            v53 = OUTLINED_FUNCTION_17(v51, v52);

            v8 = v70;
            if ((v53 & 1) == 0)
            {
              goto LABEL_74;
            }
          }

          v54 = v75;
          if (!*(v75 + 16))
          {
            goto LABEL_76;
          }

          v5 = v75;
          v55 = sub_268CA5E3C(0xD000000000000018, v72 | 0x8000000000000000);
          if ((v56 & 1) == 0)
          {
            goto LABEL_76;
          }

          v57 = *(*(v54 + 56) + 8 * v55);
          if (v57 >> 62)
          {
            sub_268CB7D50();
          }

          OUTLINED_FUNCTION_9();
          if (!v58)
          {
            goto LABEL_74;
          }

          if ((v57 & 0xC000000000000001) != 0)
          {

            OUTLINED_FUNCTION_14();
          }

          else
          {
            if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_79;
            }
          }

          v59 = sub_268CB7620();

          if (!v59)
          {
LABEL_74:

LABEL_71:

LABEL_72:
            OUTLINED_FUNCTION_7();
            return;
          }

          v60 = sub_268CB7650();

          if (!*(v60 + 16) || (v61 = sub_268CA5E3C(v5, 0xE500000000000000), (v62 & 1) == 0))
          {

LABEL_76:

            goto LABEL_77;
          }

          v63 = *(*(v60 + 56) + 8 * v61);

          v64 = sub_268C96DFC(v63, v28, 0xD000000000000012, v71 | 0x8000000000000000, v5, 0xE500000000000000, v80 & 1);

          if ((v64 & 1) == 0)
          {
            goto LABEL_71;
          }
        }
      }
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
      goto LABEL_71;
    }

    v17 = *(v14 + 8 * v22);
    ++v21;
    if (v17)
    {
      v21 = v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
}

uint64_t sub_268C96DFC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_268CB7D50())
  {
    v11 = a1 >> 62 ? sub_268CB7D50() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 < i)
    {
      break;
    }

    v21 = MEMORY[0x277D84FA0];
    v12 = sub_268CAAE90();

    for (j = 0; ; ++j)
    {
      if (v12 == j)
      {

        return 1;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x26D62B570](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v14 = *(a2 + 8 * j + 32);
      }

      if (__OFADD__(j, 1))
      {
        break;
      }

      v15 = sub_268C96FD4(v14, a1, &v21, a3, a4, a5, a6, a7 & 1);

      if ((v15 & 1) == 0)
      {

        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

uint64_t sub_268C96FD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  result = sub_268CAAE90();
  v11 = result;
  v12 = 0;
  v13 = a2 & 0xC000000000000001;
  v14 = a2 & 0xFFFFFFFFFFFFFF8;
  v22 = a2;
  v15 = a2 + 32;
  while (1)
  {
    if (v12 == v11)
    {
      return v12 != v11;
    }

    if (v13)
    {
      result = MEMORY[0x26D62B570](v12, v22);
      v16 = result;
    }

    else
    {
      if (v12 >= *(v14 + 16))
      {
        goto LABEL_18;
      }

      v16 = *(v15 + 8 * v12);
    }

    if (__OFADD__(v12, 1))
    {
      break;
    }

    v17 = *a3;
    if (*(*a3 + 16))
    {
      v18 = sub_268CB7E40();
      v19 = ~(-1 << *(v17 + 32));
      while (1)
      {
        v20 = v18 & v19;
        if (((*(v17 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {
          break;
        }

        v18 = v20 + 1;
        if (*(*(v17 + 48) + 8 * v20) == v12)
        {
          goto LABEL_13;
        }
      }
    }

    sub_268C97144(v16, a1, a4, a5);
    if (v21)
    {
      sub_268C98FB0(&v26, v12);

      return v12 != v11;
    }

LABEL_13:

    ++v12;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_268C97144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8();
  v5 = v4;
  v7 = v6;
  v8 = sub_268CB75F0();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    type metadata accessor for BaseQueryMatcher(0);
    sub_268C97254(v7, v10, v11, v5);
  }

  else
  {
    v12 = sub_268CB7600();
    if (v13)
    {
      if (sub_268CB7620())
      {
        sub_268C977CC(v7);
      }

      else
      {
        v14 = sub_268CB7630();
        if (!v14)
        {
          goto LABEL_10;
        }

        sub_268C97834(v7, v14);
      }

      goto LABEL_10;
    }

    sub_268C97798(v7, v12);
  }

LABEL_10:
  OUTLINED_FUNCTION_7();
}

void sub_268C97254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_268CB75F0();
  if (!v12)
  {
    goto LABEL_57;
  }

  if (!v5)
  {
    goto LABEL_27;
  }

  v13 = v7 == 1701667182 && v5 == 0xE400000000000000;
  if (v13 || (OUTLINED_FUNCTION_17(v7, v5) & 1) != 0)
  {
    v14 = OUTLINED_FUNCTION_2();
    sub_268C97508(v14, v15, v16, v17);
LABEL_56:
    OUTLINED_FUNCTION_11();

    goto LABEL_57;
  }

  v18 = v7 == 0x6C6562616CLL && v5 == 0xE500000000000000;
  if (v18 || (sub_268CB7DC0() & 1) != 0)
  {
    if (!v9)
    {
      goto LABEL_58;
    }

    v19 = v11 == 0xD000000000000012 && 0x8000000268CB95B0 == v9;
    if (v19 || (OUTLINED_FUNCTION_10() & 1) != 0)
    {
      goto LABEL_55;
    }

    v20 = v11 == 0xD000000000000013 && 0x8000000268CB95D0 == v9;
    if (v20 || (sub_268CB7DC0() & 1) != 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
LABEL_27:
    if (!v9)
    {
      goto LABEL_58;
    }

    if (v11 == 0xD000000000000012 && 0x8000000268CB95B0 == v9)
    {
      if (!v5)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }
  }

  v22 = OUTLINED_FUNCTION_10();
  if (!v5 || (v22 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_36:
  v23 = v7 == 0x65756C6176 && v5 == 0xE500000000000000;
  if (v23 || (OUTLINED_FUNCTION_13() & 1) != 0)
  {
    v24 = OUTLINED_FUNCTION_2();
    sub_268C97598(v24, v25, v26, v27);
    goto LABEL_56;
  }

LABEL_42:
  if (v11 == 0xD000000000000014 && 0x8000000268CB9590 == v9)
  {
    if (!v5)
    {
      goto LABEL_58;
    }

LABEL_50:
    v30 = v7 == 0x65756C6176 && v5 == 0xE500000000000000;
    if (v30 || (OUTLINED_FUNCTION_13() & 1) != 0)
    {
LABEL_55:
      v31 = OUTLINED_FUNCTION_2();
      sub_268C976C0(v31, v32, v33, v34);
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v29 = sub_268CB7DC0();
  if (v5 && (v29 & 1) != 0)
  {
    goto LABEL_50;
  }

LABEL_58:
  v35 = sub_268CB7A30();
  v37 = v36;

  OUTLINED_FUNCTION_5();
  if (v35 != sub_268CB7A30() || v37 != v38)
  {
    sub_268CB7DC0();
  }

LABEL_57:
  OUTLINED_FUNCTION_7();
}

uint64_t sub_268C97508(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_268C979D8(a1, a2);
  v13 = sub_268C979D8(a3, a4);
  v6 = sub_268C98E10();
  OUTLINED_FUNCTION_1(v6, MEMORY[0x277D837D0], v7, v6, v8, v9, v10, v11, v13);
  LOBYTE(a3) = sub_268CB7C60();

  return a3 & 1;
}

uint64_t sub_268C97598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_268C9A88C();

  v8 = sub_268C97BD4(a1, a2);
  sub_268C9ADC0(v8);
  if (v9)
  {

    v10 = OUTLINED_FUNCTION_5();
    v12 = sub_268C97BD4(v10, v11);
    v13 = sub_268C9ADC0(v12);
    if (v14)
    {
      v34 = v13;
      v15 = sub_268C98E10();
      OUTLINED_FUNCTION_1(v15, MEMORY[0x277D837D0], v16, v15, v17, v18, v19, v20, v34);
      sub_268CB7C60();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      v27 = sub_268C98E10();
      OUTLINED_FUNCTION_1(v27, MEMORY[0x277D837D0], v28, v27, v29, v30, v31, v32, a3);
      sub_268CB7C60();
      OUTLINED_FUNCTION_11();
    }
  }

  else
  {
    v21 = sub_268C98E10();
    OUTLINED_FUNCTION_1(v21, MEMORY[0x277D837D0], v22, v21, v23, v24, v25, v26, a3);
    v7 = sub_268CB7C60();
  }

  return v7 & 1;
}

uint64_t sub_268C976C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_268C979D8(a1, a2);
  v7 = sub_268C979D8(a3, a4);
  v8 = sub_268C98E10();
  OUTLINED_FUNCTION_1(v8, MEMORY[0x277D837D0], v9, v10, v11, v12, v13, v14, v7);
  v15 = sub_268CB7C60();
  if (v15)
  {

    v22 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_1(v15, MEMORY[0x277D837D0], v16, v17, v18, v19, v20, v21, v6);
    v22 = sub_268CB7C60();
  }

  return v22 & 1;
}

uint64_t sub_268C977CC(uint64_t a1)
{
  result = sub_268CB7620();
  if (result)
  {
    v2 = OUTLINED_FUNCTION_5();
    v5 = sub_268C96540(v2, v3, v4);

    return v5 & 1;
  }

  return result;
}

uint64_t sub_268C97834(uint64_t a1, uint64_t a2)
{
  result = sub_268CB7630();
  if (result)
  {
    v3 = sub_268C9788C();

    return v3 & 1;
  }

  return result;
}

uint64_t sub_268C9788C()
{
  v0 = sub_268CB70D0();
  v2 = v1;
  v3 = sub_268CB70D0();
  if (!v2)
  {
    goto LABEL_12;
  }

  if (!v4)
  {

    return 0;
  }

  if (v0 == v3 && v2 == v4)
  {

LABEL_12:

    goto LABEL_13;
  }

  v6 = sub_268CB7DC0();

  result = 0;
  if (v6)
  {
LABEL_13:
    v8 = sub_268CB70C0();
    v9 = sub_268CB70C0();
    v10 = v9;
    if (!v8)
    {

      return 1;
    }

    if (v9)
    {

      v11 = sub_268C97144(v10, v8, 0, 0);

      return v11 & 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_268C979D8(uint64_t a1, unint64_t a2)
{

  while (1)
  {
    v2 = sub_268CB7AA0();
    if (!v3)
    {
      break;
    }

    v4 = v2;
    v5 = v3;
    if (qword_2802DA148 != -1)
    {
      swift_once();
    }

    v6 = qword_2802DA630;
    if (*(qword_2802DA630 + 16))
    {
      sub_268CB7E50();
      sub_268CB79E0();
      v7 = sub_268CB7E70();
      v8 = ~(-1 << *(v6 + 32));
      while (1)
      {
        v9 = v7 & v8;
        if (((*(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          break;
        }

        v10 = (*(v6 + 48) + 16 * v9);
        if (*v10 != v4 || v5 != v10[1])
        {
          v12 = sub_268CB7DC0();
          v7 = v9 + 1;
          if ((v12 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_15;
      }
    }

    v13 = OUTLINED_FUNCTION_5();
    MEMORY[0x26D62B320](v13);
LABEL_15:
  }

  sub_268C98E10();
  sub_268CB7C40();

  v14 = sub_268CB7A30();

  return v14;
}

id sub_268C97BD4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_268CB7A00();

  v4 = [v2 initWithStringValue_];

  return v4;
}

uint64_t sub_268C97C48()
{
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver16BaseQueryMatcher_logger;
  v2 = sub_268CB7750();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for BaseQueryMatcher(uint64_t a1)
{
  result = qword_28131EB30;
  if (!qword_28131EB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268C97D48(uint64_t a1)
{
  result = sub_268CB7750();
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

uint64_t sub_268C97DE4()
{
  type metadata accessor for BaseQueryMatcher(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3D0, &qword_268CB8768);
  sub_268CB7A20();
  sub_268CB7740();
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver16BaseQueryMatcher_equivalentTypesForEntityType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3D8, &qword_268CB8770);
  *(v0 + v1) = sub_268CB79C0();
  return v0;
}

void sub_268C97ED8()
{
  type metadata accessor for AttachmentQueryMatcher();
  v0 = swift_allocObject();
  sub_268C98318(v0, v1, v2, v3);
  qword_28131EC50 = v0;
}

uint64_t sub_268C97F14(uint64_t a1)
{
  v5 = v2;
  v6 = OUTLINED_FUNCTION_19(a1);
  v7 = sub_268C98144(v6);

  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = sub_268CB7670();
  v10 = v9;

  v11 = *(v5 + 16);

  v12 = sub_268CA3954(v8, v10, v11);
  v14 = v13;

  v15 = sub_268CB7670();
  if (v14)
  {
    if (v15 == v12 && v14 == v16)
    {
      goto LABEL_30;
    }

    v18 = OUTLINED_FUNCTION_3(v15);

    if (v18)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  sub_268CB7650();
  v19 = sub_268CA63D0();

  if (!v19)
  {
    goto LABEL_24;
  }

  if (!sub_268CAAE90())
  {

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_6();
  if ((v19 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_14();
  }

  else
  {
  }

  v20 = sub_268CB7620();

  if (!v20)
  {
LABEL_24:
    if (!v14)
    {
      return 1;
    }

    goto LABEL_25;
  }

  v21 = sub_268CB7670();
  v23 = v22;

  if (!v14)
  {
LABEL_25:

    goto LABEL_26;
  }

  if (v21 == v12 && v14 == v23)
  {
LABEL_30:

LABEL_31:

    return 1;
  }

  v25 = OUTLINED_FUNCTION_3(v21);

  if (v25)
  {
    return 1;
  }

LABEL_26:
  if (qword_28131EB40 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_28131EB40);
  }

  return sub_268C962C4(v4, v1, v3 & 1) & 1;
}

uint64_t sub_268C98144(uint64_t a1)
{
  sub_268CB7650();
  v1 = sub_268CA63D0();

  if (!v1)
  {
    return 0;
  }

  if (!sub_268CAAE90())
  {
    goto LABEL_11;
  }

  sub_268CAAE98();
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v1);
  }

  else
  {
  }

  v2 = sub_268CB7620();

  if (!v2)
  {
    return 0;
  }

  sub_268CB7650();
  v3 = sub_268CA63D0();

  if (!v3)
  {

    return 0;
  }

  if (!sub_268CAAE90())
  {

LABEL_11:

    return 0;
  }

  OUTLINED_FUNCTION_6();
  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_14();
  }

  else
  {
  }

  v4 = sub_268CB7620();

  return v4;
}

uint64_t sub_268C982BC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_268C98318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8();
  v33 = v4;
  sub_268CB73F0();
  OUTLINED_FUNCTION_12();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3E0, &qword_268CB8778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268CB8610;
  v17 = *(v7 + 104);
  v17(v15, *MEMORY[0x277D5EEF0], v5);
  v18 = sub_268CB73E0();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v15, v5);
  *(inited + 32) = v18;
  *(inited + 40) = v20;
  if (qword_28131E9F0 != -1)
  {
    swift_once();
  }

  v22 = unk_28131EC80;
  *(inited + 48) = qword_28131EC78;
  *(inited + 56) = v22;
  v17(v13, *MEMORY[0x277D5EF28], v5);

  v23 = sub_268CB73E0();
  v25 = v24;
  v21(v13, v5);
  *(inited + 64) = v23;
  *(inited + 72) = v25;
  if (qword_28131E9E8 != -1)
  {
    swift_once();
  }

  v26 = unk_28131EC70;
  *(inited + 80) = qword_28131EC68;
  *(inited + 88) = v26;
  v27 = v32;
  v17(v32, *MEMORY[0x277D5EF70], v5);

  v28 = sub_268CB73E0();
  v30 = v29;
  v21(v27, v5);
  *(inited + 96) = v28;
  *(inited + 104) = v30;
  if (qword_28131E9E0 != -1)
  {
    swift_once();
  }

  v31 = unk_28131EC60;
  *(inited + 112) = qword_28131EC58;
  *(inited + 120) = v31;

  *(v33 + 16) = sub_268CB79C0();
  OUTLINED_FUNCTION_7();
}

void sub_268C98630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19(v6);
  sub_268CB7650();

  v7 = sub_268CA63D0();

  if (!v7)
  {
    goto LABEL_10;
  }

  if (!sub_268CAAE90())
  {

LABEL_10:
    v10 = 0;
    v11 = 0;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6();
  if ((v7 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_14();
  }

  else
  {
  }

  v8 = sub_268CB7620();

  if (!v8)
  {
    goto LABEL_10;
  }

  if (qword_28131EB40 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_28131EB40);
  }

  sub_268CB77D0();
  swift_allocObject();

  v9 = sub_268CB77A0();
  v10 = sub_268C962C4(v9, v3, v4 & 1);

  type metadata accessor for PersonQueryMatcher();
  v11 = sub_268C9891C(v3, v8);

LABEL_11:
  sub_268CB7650();
  v12 = sub_268CA63D0();

  if (v12)
  {
    if (sub_268CAAE90())
    {
      OUTLINED_FUNCTION_6();
      if ((v12 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_14();
      }

      else
      {
      }

      v13 = sub_268CB7620();

      if (v13)
      {
        if (v11)
        {

          v11 = 1;
        }

        else
        {
          type metadata accessor for PersonQueryMatcher();
          v14 = sub_268CB77B0();
          v11 = sub_268C9891C(v14, v13);
        }
      }
    }

    else
    {
    }
  }

  type metadata accessor for PersonQueryMatcher();
  sub_268CB77B0();
  OUTLINED_FUNCTION_4();
  sub_268C98A8C(v15);
  v17 = v16;

  if (v17)
  {

    v18 = sub_268CB77B0();
    v21 = sub_268C989DC(v18, v3, v19, v20);

    if (v10 & 1 | (((v21 | v11) & 1) == 0))
    {
      goto LABEL_27;
    }
  }

  else if (v10)
  {
    goto LABEL_27;
  }

  if (qword_28131EB40 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_28131EB40);
  }

  sub_268C962C4(v5, v3, v4 & 1);
LABEL_27:
  OUTLINED_FUNCTION_7();
}

uint64_t sub_268C9891C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v4 = sub_268C98A8C(v3);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    sub_268C98A8C(a2);
    if (v8)
    {
      type metadata accessor for BaseQueryMatcher(0);
      v9 = OUTLINED_FUNCTION_5();
      v10 = v6;
      v12 = v11;
      sub_268C97508(v9, v13, v10, v7);
      OUTLINED_FUNCTION_11();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_268C989DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4();
  v5 = sub_268C98A8C(v4);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    OUTLINED_FUNCTION_4();
    sub_268C98A8C(v9);
    if (v10)
    {
      type metadata accessor for BaseQueryMatcher(0);
      v11 = OUTLINED_FUNCTION_5();
      v12 = v7;
      v14 = v13;
      sub_268C97508(v11, v15, v12, v8);
      OUTLINED_FUNCTION_11();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_268C98A8C(uint64_t a1)
{
  sub_268CB7650();
  v1 = sub_268CA63D0();

  if (v1)
  {
    if (sub_268CAAE90())
    {
      sub_268CAAE98();
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D62B570](0, v1);
      }

      else
      {
      }

      v1 = sub_268CB75F0();
    }

    else
    {

      return 0;
    }
  }

  return v1;
}

uint64_t sub_268C98BB0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_18(a1);
  v6 = v5;
  if (qword_2802DA198 != -1)
  {
    swift_once();
  }

  if (v4 == qword_2802DA680 && v6 == *algn_2802DA688)
  {

    return 1;
  }

  v8 = sub_268CB7DC0();

  if (v8)
  {
    return 1;
  }

  if (qword_28131EB40 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_28131EB40);
  }

  return sub_268C962C4(v2, v3, v1 & 1) & 1;
}

uint64_t sub_268C98CDC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_18(a1);
  v6 = v5;
  if (qword_28131EA30 != -1)
  {
    swift_once();
  }

  if (v4 == qword_28131ECC8 && v6 == unk_28131ECD0)
  {

    if (v1)
    {
      return 1;
    }
  }

  else
  {
    v8 = sub_268CB7DC0();

    if (v8 & 1) != 0 && (v1)
    {
      return 1;
    }
  }

  if (qword_28131EB40 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_28131EB40);
  }

  return sub_268C962C4(v2, v3, v1 & 1) & 1;
}

unint64_t sub_268C98E10()
{
  result = qword_28131E5F0;
  if (!qword_28131E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131E5F0);
  }

  return result;
}

BOOL sub_268C98E64(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_268CB7E50();
  sub_268CB79E0();
  v8 = sub_268CB7E70();
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
    if (v13 || (sub_268CB7DC0() & 1) != 0)
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

  sub_268C99AC4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_268C98FB0(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_268CB7E40();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_268C99C2C(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

void sub_268C99080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8();
  v7 = v6;
  v26 = v8;
  sub_268CB7790();
  OUTLINED_FUNCTION_12();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v14 = *v4;
  sub_268C9AE50(qword_28131E6C8, MEMORY[0x277D5FE20]);
  v31 = v7;
  v15 = sub_268CB79D0();
  v28 = v14;
  v29 = v14 + 56;
  v16 = ~(-1 << *(v14 + 32));
  v30 = v10 + 16;
  v27 = v10 + 8;
  while (1)
  {
    v17 = v15 & v16;
    if (((1 << (v15 & v16)) & *(v29 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v22 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v31;
      (*(v10 + 16))(v13, v31, v5);
      v32 = *v22;
      sub_268C99D30(v13, v17, isUniquelyReferenced_nonNull_native);
      *v22 = v32;
      (*(v10 + 32))(v26, v24, v5);
      goto LABEL_7;
    }

    v18 = *(v10 + 72) * v17;
    v19 = *(v10 + 16);
    v19(v13, *(v28 + 48) + v18, v5);
    sub_268C9AE50(&qword_2802DA3B8, MEMORY[0x277D5FE28]);
    v20 = sub_268CB79F0();
    v21 = *(v10 + 8);
    v21(v13, v5);
    if (v20)
    {
      break;
    }

    v15 = v17 + 1;
  }

  v21(v31, v5);
  v19(v26, *(v28 + 48) + v18, v5);
LABEL_7:
  OUTLINED_FUNCTION_7();
}

uint64_t sub_268C99300(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3A0, &qword_268CB8748);
  result = sub_268CB7CA0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_268C99F94(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_268CB7E50();
    sub_268CB79E0();
    result = sub_268CB7E70();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_268C9955C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3B0, &qword_268CB8750);
  result = sub_268CB7CA0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_268C99F94(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_268CB7E40();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_268C99780(uint64_t a1)
{
  v2 = v1;
  v36 = sub_268CB7790();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3C0, &qword_268CB8758);
  result = sub_268CB7CA0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_268C99F94(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_268C9AE50(qword_28131E6C8, MEMORY[0x277D5FE20]);
    result = sub_268CB79D0();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_268C99AC4(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_268C99300(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_268C9A610(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_268CB7E50();
      sub_268CB79E0();
      result = sub_268CB7E70();
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
        if (v18 || (sub_268CB7DC0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_268C99FF8();
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
    result = sub_268CB7DD0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_268C99C2C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_268C9955C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_268C9A8D0(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_268CB7E40();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_268C9A150();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_268CB7DD0();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_268C99D30(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_268CB7790();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_268C99780(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_268C9AABC(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_268C9AE50(qword_28131E6C8, MEMORY[0x277D5FE20]);
      v13 = sub_268CB79D0();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_268C9AE50(&qword_2802DA3B8, MEMORY[0x277D5FE28]);
        v15 = sub_268CB79F0();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_268C9A290();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_268CB7DD0();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_268C99F94(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_268CB8620;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_268C99FF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3A0, &qword_268CB8748);
  v2 = *v0;
  v3 = sub_268CB7C90();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void *sub_268C9A150()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3B0, &qword_268CB8750);
  v2 = *v0;
  v3 = sub_268CB7C90();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void *sub_268C9A290()
{
  v1 = v0;
  v2 = sub_268CB7790();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3C0, &qword_268CB8758);
  v6 = *v0;
  v7 = sub_268CB7C90();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_268C9A4C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3C8, &qword_268CB8760);
  v2 = *v0;
  v3 = sub_268CB7C90();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        OUTLINED_FUNCTION_16();
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

uint64_t sub_268C9A610(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3A0, &qword_268CB8748);
  result = sub_268CB7CA0();
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
        v17 = *v15;
        v16 = v15[1];
        sub_268CB7E50();
        sub_268CB79E0();
        result = sub_268CB7E70();
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
        *v26 = v17;
        v26[1] = v16;
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

unint64_t sub_268C9A88C()
{
  result = qword_2802DA3A8;
  if (!qword_2802DA3A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802DA3A8);
  }

  return result;
}

uint64_t sub_268C9A8D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3B0, &qword_268CB8750);
  result = sub_268CB7CA0();
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
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_268CB7E40();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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
          goto LABEL_23;
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
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_268C9AABC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_268CB7790();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3C0, &qword_268CB8758);
  v7 = sub_268CB7CA0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_268C9AE50(qword_28131E6C8, MEMORY[0x277D5FE20]);
        result = sub_268CB79D0();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_268C9ADC0(void *a1)
{
  v2 = [a1 unformattedInternationalStringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268CB7A10();

  return v3;
}

uint64_t sub_268C9AE50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268CB7790();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1)
{

  return sub_268CB7DC0();
}

uint64_t OUTLINED_FUNCTION_6()
{

  return sub_268CAAE98();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return sub_268CB7DC0();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return sub_268CB7DC0();
}

void OUTLINED_FUNCTION_14()
{

  JUMPOUT(0x26D62B570);
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2)
{

  return sub_268CB7DC0();
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1)
{

  return sub_268CB7670();
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1)
{

  return sub_268CB77B0();
}

BOOL sub_268C9B0B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

double sub_268C9B160@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_268C9EA64(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *sub_268C9B198()
{
  type metadata accessor for RRLinkMatcher(0);
  swift_allocObject();
  result = sub_268C9BBC4();
  qword_2802DA638 = result;
  return result;
}

void *sub_268C9B1D8()
{
  type metadata accessor for RRLinkMatcher(0);
  result = sub_268C9B20C();
  off_2802DA3E8 = result;
  return result;
}

uint64_t sub_268C9B20C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA468, &qword_268CB8978);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268CB8790;
  *(v0 + 56) = &type metadata for PersonStructuredDataHandler;
  *(v0 + 64) = &off_281F86948;
  *(v0 + 96) = &type metadata for TimerStructuredDataHandler;
  *(v0 + 104) = &off_281F86978;
  *(v0 + 136) = &type metadata for TaskStructuredDataHandler;
  *(v0 + 144) = &off_281F869A8;
  *(v0 + 176) = &type metadata for TaskListStructuredDataHandler;
  *(v0 + 184) = &off_281F869D8;
  *(v0 + 216) = type metadata accessor for MediaItemStructuredDataHandler(0);
  *(v0 + 224) = &off_281F86830;
  __swift_allocate_boxed_opaque_existential_1((v0 + 192));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA470, &qword_268CB8980);
  sub_268CB7A20();
  sub_268CB7740();
  *(v0 + 256) = &type metadata for MessageConversationStructuredDataHandler;
  *(v0 + 264) = &off_281F86418;
  *(v0 + 296) = &type metadata for ApplicationStructuredDataHandler;
  *(v0 + 304) = &off_281F86918;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 336) = &type metadata for EnvironmentStructuredDataHandler;
  *(v0 + 344) = &off_281F86640;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  return v0;
}

void *sub_268C9B370()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_268C9B3F4();
    *(v0 + 24) = v1;
  }

  return v1;
}

void *sub_268C9B3F4()
{
  if (qword_2802DA160 != -1)
  {
LABEL_20:
    swift_once();
  }

  v0 = off_2802DA3E8;
  v21 = *(off_2802DA3E8 + 2);
  if (v21)
  {
    v1 = off_2802DA3E8 + 32;

    v2 = 0;
    v3 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v2 >= v0[2])
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      sub_268C9EA64(v1, v23);
      v4 = v24;
      v5 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v6 = (*(v5 + 16))(v4, v5);
      v8 = v7;
      sub_268C9EA64(v23, v22);
      swift_isUniquelyReferenced_nonNull_native();
      v9 = sub_268CA5E3C(v6, v8);
      if (__OFADD__(v3[2], (v10 & 1) == 0))
      {
        goto LABEL_18;
      }

      v11 = v9;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA460, &qword_268CB8970);
      if (sub_268CB7D40())
      {
        v13 = sub_268CA5E3C(v6, v8);
        if ((v12 & 1) != (v14 & 1))
        {
          result = sub_268CB7DE0();
          __break(1u);
          return result;
        }

        v11 = v13;
      }

      if (v12)
      {

        v15 = v3[7] + 40 * v11;
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        sub_268C958E0(v22, v15);
      }

      else
      {
        v3[(v11 >> 6) + 8] |= 1 << v11;
        v16 = (v3[6] + 16 * v11);
        *v16 = v6;
        v16[1] = v8;
        sub_268C958E0(v22, v3[7] + 40 * v11);
        v17 = v3[2];
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          goto LABEL_19;
        }

        v3[2] = v19;
      }

      ++v2;
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      v1 += 40;
      if (v21 == v2)
      {

        return v3;
      }
    }
  }

  return MEMORY[0x277D84F98];
}

void *sub_268C9B650()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_268C9B6D4();
    *(v0 + 32) = v1;
  }

  return v1;
}

void *sub_268C9B6D4()
{
  if (qword_2802DA160 != -1)
  {
LABEL_21:
    swift_once();
  }

  v0 = off_2802DA3E8;
  v22 = *(off_2802DA3E8 + 2);
  if (v22)
  {
    v1 = off_2802DA3E8 + 32;

    v2 = 0;
    v3 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v2 >= v0[2])
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      sub_268C9EA64(v1, v24);
      v4 = v25;
      v5 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v6 = (*(v5 + 24))(v4, v5);
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        sub_268C9EA64(v24, v23);
        swift_isUniquelyReferenced_nonNull_native();
        v10 = sub_268CA5E3C(v8, v9);
        if (__OFADD__(v3[2], (v11 & 1) == 0))
        {
          goto LABEL_19;
        }

        v12 = v10;
        v13 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA460, &qword_268CB8970);
        if (sub_268CB7D40())
        {
          v14 = sub_268CA5E3C(v8, v9);
          if ((v13 & 1) != (v15 & 1))
          {
            result = sub_268CB7DE0();
            __break(1u);
            return result;
          }

          v12 = v14;
        }

        if (v13)
        {

          v16 = v3[7] + 40 * v12;
          __swift_destroy_boxed_opaque_existential_0Tm(v16);
          sub_268C958E0(v23, v16);
        }

        else
        {
          v3[(v12 >> 6) + 8] |= 1 << v12;
          v17 = (v3[6] + 16 * v12);
          *v17 = v8;
          v17[1] = v9;
          sub_268C958E0(v23, v3[7] + 40 * v12);
          v18 = v3[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_20;
          }

          v3[2] = v20;
        }
      }

      ++v2;
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v1 += 40;
      if (v22 == v2)
      {

        return v3;
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_268C9B934()
{
  result = sub_268C9B954();
  qword_2802DA640 = result;
  return result;
}

uint64_t sub_268C9B954()
{
  sub_268CB7280();
  swift_allocObject();
  sub_268CB7270();
  v0 = MEMORY[0x26D62AA30]();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  sub_268CB7340();
  swift_allocObject();
  sub_268CB7330();
  v2 = MEMORY[0x26D62AA30]();
  if (!v2)
  {

    goto LABEL_7;
  }

  sub_268CB7080();
  swift_allocObject();
  sub_268CB7070();
  v3 = MEMORY[0x26D62AA30]();
  if (!v3)
  {

LABEL_9:

    return 0;
  }

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA480, &qword_268CB8990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268CB87A0;
  strcpy((inited + 32), "common_Person");
  *(inited + 46) = -4864;
  *(inited + 48) = v1;
  strcpy((inited + 56), "common_Agent");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x8000000268CB9510;
  *(inited + 96) = v2;
  *(inited + 104) = 0xD000000000000014;
  *(inited + 112) = 0x8000000268CB9530;
  *(inited + 120) = v2;
  strcpy((inited + 128), "common_Setting");
  *(inited + 143) = -18;
  *(inited + 144) = v4;
  sub_268CB7680();
  swift_retain_n();
  v2 = sub_268CB79C0();

LABEL_7:

  return v2;
}

uint64_t sub_268C9BB8C()
{
  type metadata accessor for SiriReferenceResolverDefaults();
  result = sub_268CABCD8();
  byte_28131EC48 = result & 1;
  return result;
}

void *sub_268C9BBC4()
{
  v1 = MEMORY[0x277D84F98];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  type metadata accessor for RRLinkMatcher(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA488, qword_268CB8998);
  sub_268CB7A20();
  sub_268CB7740();
  return v0;
}

void *sub_268C9BC60(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_268CB7990();
  OUTLINED_FUNCTION_2_0();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v218 = (&v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v219 = &v209 - v14;
  v15 = swift_allocObject();
  v221 = v15;
  *(v15 + 16) = 0;
  v16 = v15 + 16;
  if (qword_28131EB70 != -1)
  {
    swift_once();
  }

  v17 = byte_28131EC48;
  v220 = OBJC_IVAR____TtC21SiriReferenceResolver13RRLinkMatcher_logger;
  v18 = sub_268CB7730();
  v19 = sub_268CB7BC0();
  v20 = os_log_type_enabled(v18, v19);
  if (v17 != 1)
  {
    if (!v20)
    {
LABEL_22:
      OUTLINED_FUNCTION_4_0();

      return 0;
    }

    v37 = OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_6_0(v37);
LABEL_21:
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v38, v39, v40, v41, v42, 2u);
    OUTLINED_FUNCTION_1_0();
    goto LABEL_22;
  }

  if (v20)
  {
    v21 = OUTLINED_FUNCTION_10_0();
    *v21 = 0;
    _os_log_impl(&dword_268C94000, v18, v19, "Link matching is on.", v21, 2u);
    OUTLINED_FUNCTION_5_0();
  }

  if (sub_268CB7670() == 0xD000000000000011 && 0x8000000268CB9A40 == v22)
  {

    if ((a3 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v24 = sub_268CB7DC0();

    if ((v24 & 1) == 0 || (a3 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  sub_268CB7810();
  v25 = sub_268CB7670();
  v27 = v26;

  v230[0] = v25;
  v230[1] = v27;
  MEMORY[0x28223BE20](v28);
  v207 = v230;
  v29 = OS_LOG_TYPE_DEFAULT;
  v30 = sub_268C9B0B0(sub_268C9AE9C, (&v209 - 4), &unk_287987670);

  if (v30)
  {
LABEL_39:
    v86 = OUTLINED_FUNCTION_0_0(v31);
    v87 = sub_268CB7BC0();
    if (OUTLINED_FUNCTION_3_0(v87))
    {
      v88 = OUTLINED_FUNCTION_10_0();
      *v88 = 0;
      _os_log_impl(&dword_268C94000, v86, v29, "Link query is common_Attachment, proposed entity was found by Marrs identifier, and entity type is acceptable. Returning entity without Structured Data Conversion and caching", v88, 2u);
      OUTLINED_FUNCTION_5_0();
    }

    OUTLINED_FUNCTION_4_0();

    v89 = a1;
    return a1;
  }

  v214 = 0;
  v217 = v10;
  v29 = v8;
  sub_268CB7810();
  v32 = sub_268CB7670();
  v34 = v33;

  if (v32 == 0x415F6E6F6D6D6F63 && v34 == 0xEA00000000007070)
  {

    goto LABEL_39;
  }

  v36 = sub_268CB7DC0();

  v10 = v217;
  v29 = v214;
  if (v36)
  {
    goto LABEL_39;
  }

LABEL_25:
  sub_268C9D8CC(&v227);
  if (!v228)
  {
    v57 = sub_268C9E984(&v227, &qword_2802DA408, &qword_268CB8918);
    v18 = OUTLINED_FUNCTION_0_0(v57);
    v58 = sub_268CB7BC0();
    if (!OUTLINED_FUNCTION_3_0(v58))
    {
      goto LABEL_22;
    }

    v59 = OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_6_0(v59);
    goto LABEL_21;
  }

  v217 = v10;
  sub_268C958E0(&v227, v230);
  v43 = sub_268C9EA64(v230, &v227);
  v44 = OUTLINED_FUNCTION_0_0(v43);
  v45 = sub_268CB7BD0();
  v46 = os_log_type_enabled(v44, v45);
  v216 = v16;
  v215 = a2;
  if (v46)
  {
    v47 = OUTLINED_FUNCTION_16_0();
    v48 = OUTLINED_FUNCTION_15_0();
    v214 = v8;
    v49 = v48;
    *&v225[0] = v48;
    *v47 = 136315138;
    OUTLINED_FUNCTION_11_0();
    v50 = OUTLINED_FUNCTION_11();
    *&v226[0] = v51(v50, v16);
    *(&v226[0] + 1) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA448, &qword_268CB8958);
    v53 = sub_268CB7A20();
    v55 = v54;
    __swift_destroy_boxed_opaque_existential_0Tm(&v227);
    v56 = sub_268CA5820(v53, v55, v225);

    *(v47 + 4) = v56;
    _os_log_impl(&dword_268C94000, v44, v45, "using handler for %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    v8 = v214;
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v227);
  }

  sub_268CB7810();
  v60 = sub_268CB7670();
  v62 = v61;

  *&v227 = v60;
  *(&v227 + 1) = v62;
  MEMORY[0x28223BE20](v63);
  v207 = &v227;
  LOBYTE(v60) = sub_268C9B0B0(sub_268C9AE30, (&v209 - 4), &unk_287987670);

  if ((v60 & 1) == 0)
  {
    v78 = OUTLINED_FUNCTION_0_0(v64);
    v79 = sub_268CB7BC0();
    if (OUTLINED_FUNCTION_3_0(v79))
    {
LABEL_37:
      v80 = OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_6_0(v80);
      OUTLINED_FUNCTION_8_0();
      _os_log_impl(v81, v82, v83, v84, v85, 2u);
      OUTLINED_FUNCTION_1_0();
    }

LABEL_84:

    __swift_destroy_boxed_opaque_existential_0Tm(v230);
    OUTLINED_FUNCTION_4_0();

    return 0;
  }

  v65 = sub_268CB7890();
  v67 = v66;
  v214 = sub_268CB7840();
  v69 = v68;
  sub_268C9EA64(v230, v226);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA418, &qword_268CB8E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA420, &qword_268CB8930);
  v71 = swift_dynamicCast();
  v213 = v65;
  if (v71)
  {
    sub_268C958E0(v225, &v227);
    v72 = *(v4 + 16);
    v73 = *(v72 + 16);

    if (v73 && (v74 = OUTLINED_FUNCTION_19_0(v65), (v75 & 1) != 0))
    {
      v76 = v67;
      v77 = *(*(v72 + 56) + 8 * v74);
    }

    else
    {
      type metadata accessor for CachedEntityInfo();
      v77 = swift_allocObject();

      v91 = MEMORY[0x277D84F98];
      v77[5] = v69;
      v77[6] = v91;
      v77[2] = v65;
      v77[3] = v67;
      v76 = v67;
      v77[4] = v214;
    }

    OUTLINED_FUNCTION_11_0();
    v92 = OUTLINED_FUNCTION_11();
    v94 = v93(v92, v67);
    v95 = sub_268CB7A10();
    v97 = v96;

    OUTLINED_FUNCTION_20((v77 + 6), v222);
    v98 = v77[6];

    v99 = sub_268CA3A14(v95, v97, v98);

    if (v99)
    {

      v101 = OUTLINED_FUNCTION_0_0(v100);
      v102 = sub_268CB7BD0();
      if (OUTLINED_FUNCTION_3_0(v102))
      {
        v103 = OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_6_0(v103);
        OUTLINED_FUNCTION_8_0();
        _os_log_impl(v104, v105, v106, v107, v108, 2u);
        OUTLINED_FUNCTION_1_0();
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v230);
      __swift_destroy_boxed_opaque_existential_0Tm(&v227);
      OUTLINED_FUNCTION_4_0();

      return v99;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v227);
    v67 = v76;
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    sub_268C9E984(v225, &qword_2802DA428, &qword_268CB8938);
  }

  sub_268C9EA64(v230, v226);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA430, &qword_268CB8940);
  if ((swift_dynamicCast() & 1) == 0)
  {

    OUTLINED_FUNCTION_9_0();
    sub_268C9E984(v225, &qword_2802DA438, &qword_268CB8948);
    goto LABEL_61;
  }

  v212 = v109;
  v110 = v70;
  sub_268C958E0(v225, &v227);
  OUTLINED_FUNCTION_11_0();
  v111 = OUTLINED_FUNCTION_11();
  v112(v111, v67);
  v113 = LNIntentsValueTypeIdentifierAsString();
  v210 = sub_268CB7A10();
  v115 = v114;

  v116 = *(v4 + 16);
  v117 = *(v116 + 16);

  if (v117 && (v118 = OUTLINED_FUNCTION_19_0(v213), (v119 & 1) != 0))
  {
    v120 = *(*(v116 + 56) + 8 * v118);
  }

  else
  {
    type metadata accessor for CachedEntityInfo();
    v120 = swift_allocObject();

    v121 = MEMORY[0x277D84F98];
    v120[5] = v69;
    v120[6] = v121;
    v120[2] = v213;
    v120[3] = v67;
    v120[4] = v214;
  }

  OUTLINED_FUNCTION_20((v120 + 6), v223);
  v122 = v120[6];

  v123 = sub_268CA3A14(v210, v115, v122);

  if (!v123)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v227);
    v70 = v110;
    v109 = v212;
LABEL_61:
    type metadata accessor for SiriReferenceResolverDefaults();
    v133 = sub_268CABE18();
    v211 = v70;
    if (v134)
    {
      v135 = v133;
      v136 = v134;
      v137 = OUTLINED_FUNCTION_0_0(v133);
      v138 = sub_268CB7BC0();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = OUTLINED_FUNCTION_16_0();
        v140 = OUTLINED_FUNCTION_15_0();
        *&v227 = v140;
        *v139 = 136315138;
        v141 = sub_268CA5820(v135, v136, &v227);

        *(v139 + 4) = v141;
        OUTLINED_FUNCTION_8_0();
        _os_log_impl(v142, v143, v144, v145, v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v140);
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_1_0();
      }

      else
      {
      }
    }

    else
    {
      v212 = v109;
      v147 = a1;
      v148 = OUTLINED_FUNCTION_0_0(v147);
      v149 = sub_268CB7BC0();

      if (os_log_type_enabled(v148, v149))
      {
        v150 = OUTLINED_FUNCTION_16_0();
        v151 = OUTLINED_FUNCTION_15_0();
        *&v227 = v151;
        *v150 = 136315138;
        v152 = sub_268CB7890();
        v154 = sub_268CA5820(v152, v153, &v227);

        *(v150 + 4) = v154;
        _os_log_impl(&dword_268C94000, v148, v149, "About to execute Link SPI for entity with id %s.", v150, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v151);
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_5_0();
      }
    }

    v155 = sub_268CB7810();
    v156 = sub_268C9CEFC(v155);
    v158 = v157;

    if (v158)
    {
      v213 = v156;
      v214 = v158;
      v160 = dispatch_semaphore_create(0);
      v161 = swift_allocObject();
      *(v161 + 16) = v221;
      *(v161 + 24) = v160;

      v162 = v160;
      v212 = sub_268CB7890();
      v164 = v163;
      v165 = sub_268CB7840();
      v167 = v166;
      sub_268C9EA64(v230, v226);
      swift_retain_n();
      if (swift_dynamicCast())
      {
        sub_268C958E0(v225, &v227);
        v168 = v164;
        v211 = v165;
        v169 = v228;
        v170 = v229;
        v210 = __swift_project_boxed_opaque_existential_1(&v227, v228);
        sub_268C9EA64(&v227, v226);
        v171 = swift_allocObject();
        v171[2] = v4;
        v171[3] = sub_268C9E9E0;
        v171[4] = v161;
        sub_268C958E0(v226, (v171 + 5));
        v171[10] = a1;
        v172 = a1;

        v207 = v169;
        v208 = v170;
        sub_268C9F830(v212, v168, v211, v167, v213, v214, sub_268C9EAC4);

        __swift_destroy_boxed_opaque_existential_0Tm(&v227);

        OUTLINED_FUNCTION_4_0();
      }

      else
      {

        OUTLINED_FUNCTION_9_0();
        sub_268C9E984(v225, &qword_2802DA438, &qword_268CB8948);
        swift_beginAccess();
        *(v221 + 16) = 0;
        sub_268CB7C00();
      }

      v174 = v215;
      v175 = v217;

      OUTLINED_FUNCTION_4_0();

      v176 = v218;
      sub_268CB7980();
      if (qword_2802DA178 != -1)
      {
        swift_once();
      }

      v177 = sub_268CB7970();
      v178 = __swift_project_value_buffer(v177, qword_2802DA650);
      v179 = v219;
      MEMORY[0x26D62B240](v176, v178);
      v180 = *(v175 + 8);
      v180(v176, v8);
      v218 = v162;
      v181 = sub_268CB7BF0();
      v182 = (v180)(v179, v8);
      if ((v181 & 1) == 0)
      {
        v191 = a1;

        v193 = OUTLINED_FUNCTION_0_0(v192);
        v194 = sub_268CB7BC0();

        if (os_log_type_enabled(v193, v194))
        {
          v195 = OUTLINED_FUNCTION_15_0();
          *&v226[0] = swift_slowAlloc();
          *v195 = 136315650;
          sub_268CB7810();
          v196 = sub_268CB7670();
          v198 = v197;

          v199 = sub_268CA5820(v196, v198, v226);

          *(v195 + 4) = v199;
          *(v195 + 12) = 2080;
          v200 = sub_268CB7670();
          sub_268CA5820(v200, v201, v226);
          OUTLINED_FUNCTION_11();

          *(v195 + 14) = v174;
          *(v195 + 22) = 2080;
          v202 = v216;
          OUTLINED_FUNCTION_20(v216, v225);
          v224 = *v202;
          v203 = v224;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA440, &qword_268CB8950);
          v204 = sub_268CB7A20();
          sub_268CA5820(v204, v205, v226);
          OUTLINED_FUNCTION_11();

          *(v195 + 24) = v174;
          _os_log_impl(&dword_268C94000, v193, v194, "linkEntity(%s, matches: %s) -> %s", v195, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_5_0();

          __swift_destroy_boxed_opaque_existential_0Tm(v230);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v230);
          v202 = v216;
        }

        OUTLINED_FUNCTION_20(v202, v226);
        a1 = *(v221 + 16);
        v206 = a1;

        return a1;
      }

      v78 = OUTLINED_FUNCTION_0_0(v182);
      v183 = sub_268CB7BE0();
      if (OUTLINED_FUNCTION_3_0(v183))
      {
        v184 = OUTLINED_FUNCTION_16_0();
        *v184 = 134217984;
        *(v184 + 4) = 1000;
        OUTLINED_FUNCTION_8_0();
        _os_log_impl(v185, v186, v187, v188, v189, 0xCu);
        OUTLINED_FUNCTION_1_0();
        v190 = v218;
      }

      else
      {
        v190 = v78;
        v78 = v218;
      }

      goto LABEL_84;
    }

    v78 = OUTLINED_FUNCTION_0_0(v159);
    v173 = sub_268CB7BC0();
    if (OUTLINED_FUNCTION_3_0(v173))
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

  v125 = OUTLINED_FUNCTION_0_0(v124);
  v126 = sub_268CB7BD0();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_6_0(v127);
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v128, v129, v130, v131, v132, 2u);
    OUTLINED_FUNCTION_1_0();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v230);
  __swift_destroy_boxed_opaque_existential_0Tm(&v227);
  OUTLINED_FUNCTION_4_0();

  return v123;
}

uint64_t sub_268C9CE9C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;

  return sub_268CB7C00();
}

uint64_t sub_268C9CEFC(uint64_t a1)
{
  sub_268CB71D0();
  sub_268C9E598(v16, v14);
  if (v15)
  {
    v2 = sub_268CB7060();
    if (OUTLINED_FUNCTION_14_0(v2, v3))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_268C9E984(v14, &qword_2802DA410, &unk_268CB8920);
  }

  sub_268C9E598(v16, v14);
  if (v15)
  {
    v4 = sub_268CB72F0();
    if (OUTLINED_FUNCTION_14_0(v4, v5))
    {
LABEL_7:

      v6 = sub_268C9D0D8();
      sub_268C9E984(v16, &qword_2802DA410, &unk_268CB8920);
      return v6;
    }
  }

  else
  {
    sub_268C9E984(v14, &qword_2802DA410, &unk_268CB8920);
  }

  v7 = sub_268CB7730();
  v8 = sub_268CB7BE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_16_0();
    v10 = OUTLINED_FUNCTION_15_0();
    v14[0] = v10;
    *v9 = 136315138;
    v11 = sub_268CB7670();
    sub_268CA5820(v11, v12, v14);
    OUTLINED_FUNCTION_11();

    *(v9 + 4) = a1;
    _os_log_impl(&dword_268C94000, v7, v8, "Pool entity %s wasn't convertible to supported entity types, returning nil", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  sub_268C9E984(v16, &qword_2802DA410, &unk_268CB8920);
  return 0;
}

uint64_t sub_268C9D0D8()
{
  v0 = sub_268CB7160();
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  result = sub_268CB7660();
  v10 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v19 = v8;
    v11 = 0;
    v12 = result + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    while (v11 < *(v10 + 16))
    {
      (*(v2 + 16))(v6, v12 + *(v2 + 72) * v11, v0);
      v13 = sub_268CB7150();
      if (v14)
      {
        if (v13 == 0x69746E655F707061 && v14 == 0xEF657079745F7974)
        {

LABEL_13:

          v18 = v19;
          (*(v2 + 32))(v19, v6, v0);
          v17 = sub_268CB7140();
          (*(v2 + 8))(v18, v0);
          return v17;
        }

        v16 = sub_268CB7DC0();

        if (v16)
        {
          goto LABEL_13;
        }
      }

      ++v11;
      result = (*(v2 + 8))(v6, v0);
      if (v20 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_268C9D304(void *a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6, uint64_t a7)
{
  v13 = sub_268CB7730();
  v14 = sub_268CB7BC0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = a4;
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_268C94000, v13, v14, "FetchStructuredData Link SPI completed", v16, 2u);
    v17 = v16;
    a4 = v15;
    MEMORY[0x26D62BBE0](v17, -1, -1);
  }

  if (a2)
  {
    v18 = a1;
    v19 = sub_268CB7730();
    v20 = sub_268CB7BE0();
    sub_268C9EADC(a1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v51[0] = v22;
      *v21 = 136315138;
      *&v50[0] = a1;
      v23 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA450, &qword_268CB8960);
      v24 = sub_268CB7A20();
      v26 = sub_268CA5820(v24, v25, v51);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_268C94000, v19, v20, "Error occured in fetchStructuredData: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x26D62BBE0](v22, -1, -1);
      v27 = v21;
LABEL_10:
      MEMORY[0x26D62BBE0](v27, -1, -1);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (!a1)
  {
    v19 = sub_268CB7730();
    v31 = sub_268CB7BE0();
    if (os_log_type_enabled(v19, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_268C94000, v19, v31, "Retrieved Link data is nil", v32, 2u);
      v27 = v32;
      goto LABEL_10;
    }

LABEL_11:

    return (a4)(0);
  }

  v49 = a4;
  v28 = [a1 value];
  sub_268CB7C70();
  swift_unknownObjectRelease();
  sub_268C9EAE8(v50, v51);
  v30 = a6[3];
  v29 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, v30);
  v34 = (*(*(v29 + 8) + 40))(v51, a7, MEMORY[0x277D84F70] + 8, v30);
  v35 = sub_268CB7730();
  v36 = sub_268CB7BD0();

  if (os_log_type_enabled(v35, v36))
  {
    v38 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v50[0] = v48;
    *v38 = 136315138;
    sub_268CB7810();
    v47 = v36;
    v39 = sub_268CB7670();
    v41 = v40;

    v42 = sub_268CA5820(v39, v41, v50);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_268C94000, v35, v47, "Returning and caching annotated %s entity", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x26D62BBE0](v48, -1, -1);
    MEMORY[0x26D62BBE0](v38, -1, -1);
  }

  v43 = a6[3];
  v44 = a6[4];
  v45 = __swift_project_boxed_opaque_existential_1(a6, v43);
  sub_268C9EAF8(v34, a7, v45, a3, v43, *(v44 + 8));
  v46 = v34;
  v49(v34);

  return __swift_destroy_boxed_opaque_existential_0Tm(v51);
}

double sub_268C9D8CC@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_268CB7670();
  v5 = v4;
  v6 = sub_268C9B370();
  sub_268CA3A10(&v11, v3, v5, v6);

  if (!v12)
  {
    sub_268C9E984(&v11, &qword_2802DA408, &qword_268CB8918);
    sub_268C9DA74(&v11);
    if (!v12)
    {
      sub_268C9E984(&v11, &qword_2802DA408, &qword_268CB8918);
      if (sub_268CB7670() == 0x6E456F4E5F6F7375 && v7 == 0xEC00000079746974)
      {
      }

      else
      {
        v9 = sub_268CB7DC0();

        if ((v9 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      sub_268CB7810();
      sub_268C9DA74(&v11);

      if (!v12)
      {
        sub_268C9E984(&v11, &qword_2802DA408, &qword_268CB8918);
LABEL_14:
        *(a2 + 32) = 0;
        result = 0.0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return result;
      }
    }
  }

  sub_268C958E0(&v11, v13);
  sub_268C958E0(v13, a2);
  return result;
}

uint64_t sub_268C9DA74@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v40 = 0;
  v2 = sub_268CB7160();
  OUTLINED_FUNCTION_2_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(sub_268CB7660() + 16);
  if (!v8)
  {

    v15 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_18_0();
  v10 = *(v4 + 16);
  v9 = v4 + 16;
  v11 = *(v9 + 64);
  v38[1] = v12;
  v13 = v12 + ((v11 + 32) & ~v11);
  v42 = *(v9 + 56);
  v43 = v10;
  v14 = (v9 - 8);
  v15 = MEMORY[0x277D84F90];
  v41 = v9;
  do
  {
    v43(v7, v13, v2);
    v16 = sub_268CB7150();
    if (!v17)
    {
LABEL_9:
      (*v14)(v7, v2);
      goto LABEL_16;
    }

    if (v16 == v1 && v17 == 0xE800000000000000)
    {
    }

    else
    {
      v19 = sub_268CB7DC0();

      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = sub_268CB7140();
    v22 = v21;
    (*v14)(v7, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268CA9410();
      v15 = v25;
    }

    v23 = v15[2];
    v1 = v23 + 1;
    if (v23 >= v15[3] >> 1)
    {
      sub_268CA9410();
      v15 = v26;
    }

    v15[2] = v1;
    v24 = &v15[2 * v23];
    v24[4] = v20;
    v24[5] = v22;
    OUTLINED_FUNCTION_18_0();
LABEL_16:
    v13 += v42;
    --v8;
  }

  while (v8);

LABEL_19:
  v28 = 0;
  v29 = v15[2];
  v30 = MEMORY[0x277D84F90];
  v31 = v15 + 5;
  v32 = v40;
  while (1)
  {
    if (v29 == v28)
    {

      sub_268C9B160(v30, v39);
    }

    if (v28 >= v15[2])
    {
      break;
    }

    v33 = *v31;
    v47[0] = *(v31 - 1);
    v47[1] = v33;

    sub_268C9DDF4(v47, &v44);

    if (v45)
    {
      sub_268C958E0(&v44, v46);
      sub_268C958E0(v46, &v44);
      v34 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268CA92F0();
        v30 = v36;
      }

      v35 = *(v30 + 16);
      if (v35 >= *(v30 + 24) >> 1)
      {
        sub_268CA92F0();
        v30 = v37;
      }

      *(v30 + 16) = v35 + 1;
      result = sub_268C958E0(&v44, v30 + 40 * v35 + 32);
      v32 = v34;
    }

    else
    {
      result = sub_268C9E984(&v44, &qword_2802DA408, &qword_268CB8918);
    }

    v31 += 2;
    ++v28;
  }

  __break(1u);
  return result;
}

void sub_268C9DDF4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_268C9B650();
  sub_268CA3A10(&v14, v3, v4, v5);

  if (v15)
  {
    sub_268C958E0(&v14, v16);

    v6 = sub_268CB7730();
    v7 = sub_268CB7BD0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v14 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_268CA5820(v3, v4, &v14);
      _os_log_impl(&dword_268C94000, v6, v7, "Chosen protocol for handler: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x26D62BBE0](v9, -1, -1);
      MEMORY[0x26D62BBE0](v8, -1, -1);
    }

    sub_268C958E0(v16, a2);
  }

  else
  {
    sub_268C9E984(&v14, &qword_2802DA408, &qword_268CB8918);

    v10 = sub_268CB7730();
    v11 = sub_268CB7BD0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v16[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_268CA5820(v3, v4, v16);
      _os_log_impl(&dword_268C94000, v10, v11, "Ignored protocol: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x26D62BBE0](v13, -1, -1);
      MEMORY[0x26D62BBE0](v12, -1, -1);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

char *sub_268C9E050()
{

  v1 = OBJC_IVAR____TtC21SiriReferenceResolver13RRLinkMatcher_logger;
  sub_268CB7750();
  OUTLINED_FUNCTION_17_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_268C9E0C4()
{
  sub_268C9E050();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RRLinkMatcher(uint64_t a1)
{
  result = qword_2802DA3F0;
  if (!qword_2802DA3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268C9E170(uint64_t a1)
{
  result = sub_268CB7750();
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

uint64_t sub_268C9E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_268CB7DC0(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_268CB7DC0();
    }
  }

  return result;
}

uint64_t sub_268C9E2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_268CB79E0();

  return sub_268CB79E0();
}

uint64_t sub_268C9E30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_268CB7E50();
  sub_268CB79E0();
  sub_268CB79E0();
  return sub_268CB7E70();
}

uint64_t sub_268C9E394(uint64_t a1)
{
  sub_268CB7E50();
  sub_268CB79E0();
  sub_268CB79E0();
  return sub_268CB7E70();
}

void *sub_268C9E414()
{

  return v0;
}

uint64_t sub_268C9E450()
{
  v0 = sub_268C9E414();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_268C9E4B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_268C9E4F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_268C9E544()
{
  result = qword_2802DA400;
  if (!qword_2802DA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA400);
  }

  return result;
}

uint64_t sub_268C9E598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA410, &unk_268CB8920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_268C9E654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_268CB7DC0() & 1;
  }
}

void sub_268C9E698(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_268CA5E3C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA458, &qword_268CB8968);
  if ((sub_268CB7D40() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_268CA5E3C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_268CB7DE0();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    sub_268C9E910(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_268C9E7D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_268CA5E3C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA478, &qword_268CB8988);
  if ((sub_268CB7D40() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_268CA5E3C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_268CB7DE0();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_268C9E910(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_268C9E910(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_268C9E984(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_17_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_268C9EA64(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_17_0();
  (*v3)(a2);
  return a2;
}

_OWORD *sub_268C9EAE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_268C9EAF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55[3] = a5;
  v55[4] = a6;
  __swift_allocate_boxed_opaque_existential_1(v55);
  OUTLINED_FUNCTION_17_0();
  (*(v8 + 16))();
  v9 = sub_268CB7890();
  v11 = v10;
  v12 = sub_268CB7840();
  v14 = v13;
  sub_268C9EA64(v55, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA418, &qword_268CB8E00);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA420, &qword_268CB8930);
  if (OUTLINED_FUNCTION_13_0(v15, v16, v17, v18, v19, v20, v21, v22, v49, *(&v49 + 1), v50, *(&v50 + 1), v51, v52[0]))
  {
    sub_268C958E0(&v49, v53);
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v23 = OUTLINED_FUNCTION_12_0();
    v25 = v24(v23);
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    sub_268C9E984(&v49, &qword_2802DA428, &qword_268CB8938);
    sub_268C9EA64(v55, v52);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA430, &qword_268CB8940);
    if ((OUTLINED_FUNCTION_13_0(v26, v27, v28, v29, v30, v31, v32, v33, v49, *(&v49 + 1), v50, *(&v50 + 1), v51, v52[0]) & 1) == 0)
    {

      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      sub_268C9E984(&v49, &qword_2802DA438, &qword_268CB8948);
      return __swift_destroy_boxed_opaque_existential_0Tm(v55);
    }

    sub_268C958E0(&v49, v53);
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v34 = OUTLINED_FUNCTION_12_0();
    v35(v34);
    v25 = LNIntentsValueTypeIdentifierAsString();
  }

  v36 = v25;
  v37 = sub_268CB7A10();
  v39 = v38;

  v40 = *(a4 + 16);
  v41 = *(v40 + 16);

  if (v41 && (v42 = sub_268CA5EB4(v9, v11, v12, v14), (v43 & 1) != 0))
  {
    v44 = *(*(v40 + 56) + 8 * v42);
  }

  else
  {
    type metadata accessor for CachedEntityInfo();
    v44 = swift_allocObject();

    v45 = MEMORY[0x277D84F98];
    v44[5] = v14;
    v44[6] = v45;
    v44[2] = v9;
    v44[3] = v11;
    v44[4] = v12;
  }

  swift_beginAccess();
  v46 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v49 = v44[6];
  sub_268C9E698(v46, v37, v39, isUniquelyReferenced_nonNull_native);
  v44[6] = v49;

  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  return __swift_destroy_boxed_opaque_existential_0Tm(v55);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return sub_268CB7730();
}

void OUTLINED_FUNCTION_1_0()
{

  JUMPOUT(0x26D62BBE0);
}

BOOL OUTLINED_FUNCTION_3_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_5_0()
{

  JUMPOUT(0x26D62BBE0);
}

double OUTLINED_FUNCTION_9_0()
{
  *(v0 - 224) = 0;
  result = 0.0;
  *(v0 - 256) = 0u;
  *(v0 - 240) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{
  v5 = *(v3 - 376);

  return sub_268CA5EB4(a1, v2, v5, v1);
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_268C9F044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4D8, &qword_268CB8A00);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v15);
  if (!a2)
  {
    sub_268CB7890();
  }

  if (!a4)
  {
    sub_268CB7840();
  }

  if (!a5)
  {
    sub_268CB7810();
  }

  if (!a7)
  {
    sub_268CB78F0();
  }

  if (a9 >> 60 == 15)
  {
    sub_268CB78A0();
  }

  sub_268CA1278(a8, a9);
  sub_268CB78B0();
  sub_268CB7900();
  sub_268CB78C0();
  sub_268CB7850();
  sub_268CB7830();
  sub_268CB78E0();
  v16 = objc_allocWithZone(sub_268CB7910());
  return sub_268CB7880();
}

id sub_268C9F2A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a2;
  v64 = a5;
  v58 = *(a5 + 8);
  v65 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_268CB7C20();
  OUTLINED_FUNCTION_2_1();
  v61 = v9;
  v62 = v8;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  OUTLINED_FUNCTION_2_1();
  v63 = v13;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v58 - v18;
  OUTLINED_FUNCTION_2_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
  v26 = *(v21 + 16);
  v26(boxed_opaque_existential_1, a1, a4);
  v26(v24, a1, a4);
  sub_268CA10D8(0, &qword_2802DA4C0, 0x277D23958);
  if (swift_dynamicCast())
  {
    v27 = *&v66[0];
    v28 = [*&v66[0] value];
    sub_268CB7C70();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(&v67);
    sub_268C9EAE8(v66, &v67);
  }

  sub_268CA1118(&v67, v66);
  v29 = swift_dynamicCast();
  v30 = v19;
  v31 = v69;
  v32 = v65;
  if (v29)
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, AssociatedTypeWitness);
    v33 = v63;
    (*(v63 + 32))(v30, v12, AssociatedTypeWitness);
    (*(v33 + 16))(v17, v30, AssociatedTypeWitness);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4D0, &qword_268CB89F8);
    if (swift_dynamicCast())
    {
      v34 = *&v66[0];
      ObjectType = swift_getObjectType();
      v31 = v34;
      v36 = v60;
      v37 = sub_268C9FF18(ObjectType);
      if (!v36)
      {
        v43 = v37;
        v44 = v38;
        v45 = v65;
        v46 = (*(v58 + 32))(v30, v59, v65);
        v47 = v30;
        v48 = v46;
        v62 = v47;
        v49 = (*(v64 + 24))(v45);
        v51 = v50;
        v52 = OUTLINED_FUNCTION_6_1();
        sub_268CA1220(v52, v53);
        v31 = sub_268C9F044(0, 0, 0, 0, 0, v49, v51, v43, v44);
        v54 = OUTLINED_FUNCTION_6_1();
        sub_268CA11C8(v54, v55);
        swift_unknownObjectRelease();

        v56 = OUTLINED_FUNCTION_6_1();
        sub_268CA11C8(v56, v57);
        (*(v33 + 8))(v62, AssociatedTypeWitness);
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_268CA1174();
      swift_allocError();
      *v41 = 1;
      swift_willThrow();
    }

    (*(v33 + 8))(v30, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, AssociatedTypeWitness);
    (*(v61 + 8))(v12, v62);
    (*(v64 + 24))(v32);
    if (v39)
    {

      sub_268CA1174();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
    }

    else
    {
      v31 = v59;
    }
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_0Tm(&v67);
  return v31;
}

void sub_268C9F830(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  type metadata accessor for SiriReferenceResolverDefaults();
  v10 = sub_268CABE18();
  if (v11)
  {
    v12 = sub_268C9F8F8(v10, v11, a3, a4, v10, v11);
    v14 = v13;

    (a7)(v12, v14 & 1);

    sub_268C9EADC(v12);
  }

  else
  {
    a7(0);
  }
}

unsigned __int8 *sub_268C9F8F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA490, &qword_268CB89E0);
  OUTLINED_FUNCTION_8_1();
  result = MEMORY[0x28223BE20](v10);
  v13 = &v61 - v12;
  v14 = HIBYTE(a6) & 0xF;
  v15 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v16 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_70;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {

    v18 = sub_268CA061C(a5, a6, 10);
    v36 = v35;

    if (v36)
    {
      goto LABEL_70;
    }

LABEL_72:
    v34 = 3;
    switch(v18)
    {
      case 0:
        v64 = MEMORY[0x277D837D0];
        v62 = a3;
        v63 = a4;
        v37 = objc_opt_self();

        v38 = [v37 applicationValueType];
        goto LABEL_76;
      case 2:
        v64 = MEMORY[0x277D837D0];
        v62 = 0x68636E6946;
        v63 = 0xE500000000000000;
        v38 = [objc_opt_self() environmentValueType];
LABEL_76:
        v49 = v38;
        v50 = objc_allocWithZone(MEMORY[0x277D23958]);
        v48 = OUTLINED_FUNCTION_5_1();
        if (!v48)
        {
          goto LABEL_77;
        }

        return v48;
      case 3:
        v39 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        v40 = sub_268CA016C(0xD000000000000013, 0x8000000268CB9A90, 1);
        v41 = sub_268CB7020();
        __swift_storeEnumTagSinglePayload(v13, 1, 1, v41);
        objc_allocWithZone(MEMORY[0x277CD3E90]);
        v42 = v40;
        v43 = sub_268CA01D8(v42, v13, 6644289, 0xE300000000000000, 0, 0, 0, 0, 0);
        v64 = sub_268CA10D8(0, &qword_2802DA4B0, 0x277CD3E90);
        v62 = v43;
        v44 = objc_opt_self();
        v45 = v43;
        v46 = [v44 personValueType];
        v47 = objc_allocWithZone(MEMORY[0x277D23958]);
        v48 = OUTLINED_FUNCTION_5_1();

        goto LABEL_82;
      case 9:
        v52 = objc_allocWithZone(MEMORY[0x277CD3DB8]);
        v53 = sub_268CA03D4(0xD000000000000024, 0x8000000268CB9A60, 0, 0xE000000000000000, 1, 0, 0, 0xE000000000000000);
        v64 = sub_268CA10D8(0, &qword_2802DA4A8, 0x277CD3DB8);
        v62 = v53;
        v54 = objc_opt_self();
        v42 = v53;
        v55 = [v54 mediaItemValueType];
        goto LABEL_81;
      case 11:
        v56 = objc_allocWithZone(MEMORY[0x277D23898]);
        v57 = sub_268CA04D0(875770417, 0xE400000000000000, 0x2079656B73696877, 0xEC00000062756C63, 0);
        v64 = sub_268CA10D8(0, &qword_2802DA4A0, 0x277D23898);
        v62 = v57;
        v58 = objc_opt_self();
        v42 = v57;
        v55 = [v58 messageConversationValueType];
LABEL_81:
        v59 = v55;
        v60 = objc_allocWithZone(MEMORY[0x277D23958]);
        v48 = OUTLINED_FUNCTION_5_1();
LABEL_82:

        if (v48)
        {
          return v48;
        }

LABEL_77:
        v34 = 3;
        break;
      default:
        goto LABEL_78;
    }

    goto LABEL_78;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v62 = a5;
    v63 = a6 & 0xFFFFFFFFFFFFFFLL;
    if (a5 == 43)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          OUTLINED_FUNCTION_7_0();
          while (1)
          {
            OUTLINED_FUNCTION_1_1();
            if (!v20 & v19)
            {
              break;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v20)
            {
              break;
            }

            v18 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            OUTLINED_FUNCTION_4_1();
            if (v20)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

LABEL_88:
      __break(1u);
      return result;
    }

    if (a5 != 45)
    {
      if (v14)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_1();
          if (!v20 & v19)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v20)
          {
            break;
          }

          v18 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          OUTLINED_FUNCTION_4_1();
          if (v20)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        OUTLINED_FUNCTION_7_0();
        while (1)
        {
          OUTLINED_FUNCTION_1_1();
          if (!v20 & v19)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v20)
          {
            break;
          }

          v18 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          OUTLINED_FUNCTION_4_1();
          if (v20)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_86;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_268CB7CF0();
  }

  v17 = *result;
  if (v17 == 43)
  {
    if (v15 >= 1)
    {
      if (v15 != 1)
      {
        v18 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_1();
            if (!v20 & v19)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v20)
            {
              goto LABEL_68;
            }

            v18 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_4_1();
            if (v20)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_59;
      }

      goto LABEL_68;
    }

    goto LABEL_87;
  }

  if (v17 == 45)
  {
    if (v15 >= 1)
    {
      if (v15 != 1)
      {
        v18 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_1();
            if (!v20 & v19)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v20)
            {
              goto LABEL_68;
            }

            v18 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_4_1();
            if (v20)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v23 = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v15)
  {
    v18 = 0;
    if (result)
    {
      while (1)
      {
        v30 = *result - 48;
        if (v30 > 9)
        {
          goto LABEL_68;
        }

        v31 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          goto LABEL_68;
        }

        v18 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          goto LABEL_68;
        }

        ++result;
        if (!--v15)
        {
          goto LABEL_59;
        }
      }
    }

    goto LABEL_59;
  }

LABEL_68:
  v18 = 0;
  v23 = 1;
LABEL_69:
  v65 = v23;
  if ((v23 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_70:
  v34 = 4;
LABEL_78:
  sub_268CA0BA4();
  v48 = swift_allocError();
  *v51 = v34;
  return v48;
}

unint64_t sub_268C9FF38(uint64_t a1, uint64_t a2)
{
  v2 = sub_268CB7D60();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_268C9FF84(char a1)
{
  if (!a1)
  {
    return 0x707954676E6F7277;
  }

  if (a1 == 1)
  {
    return 0x6169726553746F6ELL;
  }

  return 0xD000000000000012;
}

unint64_t sub_268CA0014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268C9FF38(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268CA0044@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268C9FF84(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_268CA016C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_268CB7A00();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_268CA01D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_268CB7020();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_268CB7010();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_268CB7A00();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_268CB7A00();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_268CB7A00();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

id sub_268CA035C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithValue:sub_268CB7DA0() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v5;
}

id sub_268CA03D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a2)
  {
    v14 = sub_268CB7A00();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = sub_268CB7A00();

  if (!a8)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = sub_268CB7A00();

LABEL_8:
  v17 = [v9 initWithIdentifier:v14 title:v15 type:a5 artwork:a6 artist:v16];

  return v17;
}

id sub_268CA04D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_268CB7A00();

  if (!a4)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_268CB7A00();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_268CA10D8(0, &qword_2802DA4B0, 0x277CD3E90);
  v10 = sub_268CB7B40();

LABEL_6:
  v11 = [v5 initWithMessageConversationIdentifier:v8 groupName:v9 recipients:v10];

  return v11;
}

void *sub_268CA05AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4B8, &unk_268CB89E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_268CA061C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_268CB7B10();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_268CA0C48(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_268CB7CF0();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_268CA0BA4()
{
  result = qword_2802DA498;
  if (!qword_2802DA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA498);
  }

  return result;
}

uint64_t sub_268CA0C48(uint64_t a1, unint64_t a2)
{
  v2 = sub_268CA0CB4(sub_268CA0CB0, 0, a1, a2);
  v6 = sub_268CA0CE8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_268CA0CE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_268CB7C30();
    if (!v9 || (v10 = v9, v11 = sub_268CA05AC(v9, 0), v12 = sub_268CA0E48(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_268CB7A50();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_268CB7A50();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_268CB7CF0();
LABEL_4:

  return sub_268CB7A50();
}

unint64_t sub_268CA0E48(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_268CA1058(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_268CB7AE0();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_268CB7CF0();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_268CA1058(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_268CB7AC0();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_268CA1058(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_268CB7AF0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D62B370](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_268CA10D8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_268CA1118(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_268CA1174()
{
  result = qword_2802DA4C8;
  if (!qword_2802DA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA4C8);
  }

  return result;
}

uint64_t sub_268CA11C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_268CA1220(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_268CA1278(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268CA1220(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StructuredDataHandlingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StructuredDataHandlingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268CA1410()
{
  result = qword_2802DA4E8;
  if (!qword_2802DA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA4E8);
  }

  return result;
}

id OUTLINED_FUNCTION_3_1@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{

  return sub_268C9F2A8(a1, a2, a3, a5, a4);
}

id OUTLINED_FUNCTION_5_1()
{

  return sub_268CA035C((v1 - 88), v0);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_268CA1510(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_268CA1564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

id sub_268CA1604(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268CB7160();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268CB71C0();
  swift_allocObject();

  v8 = sub_268CB71B0();

  sub_268CB7130();
  sub_268CB7090();
  (*(v5 + 8))(v7, v4);
  sub_268CB7080();
  swift_allocObject();
  v9 = sub_268CB7070();
  v13[3] = v8;
  sub_268CB7170();
  v10 = MEMORY[0x26D62AA30](v9);
  if (v10)
  {
    v11 = sub_268C9F044(0, 0, 0, 0, v10, 0, 0, 0, 0xF000000000000000);
  }

  else
  {
    v11 = a3;
  }

  return v11;
}

uint64_t sub_268CA1838()
{
  v1 = *v0;

  return v1;
}

Swift::String_optional __swiftcall CNContactStore.retriveContactName(identifier:)(Swift::String identifier)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = HIBYTE(identifier._object) & 0xF;
  if ((identifier._object & 0x2000000000000000) == 0)
  {
    v2 = identifier._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4F0, &unk_268CB8BB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268CB8BA0;
  *(v3 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v4 = sub_268CB7A00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4F8, &qword_268CB8BC0);
  v5 = sub_268CB7B40();

  v18[0] = 0;
  v6 = [v1 unifiedContactWithIdentifier:v4 keysToFetch:v5 error:v18];

  if (!v6)
  {
    v13 = v18[0];
    v14 = sub_268CB7030();

    swift_willThrow();
LABEL_9:
    v10 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v7 = v18[0];
  v8 = [v6 fullName];
  if (!v8)
  {

    goto LABEL_9;
  }

  v9 = v8;
  v10 = sub_268CB7A10();
  v12 = v11;

LABEL_10:
  v15 = v10;
  v16 = v12;
  result.value._object = v16;
  result.value._countAndFlagsBits = v15;
  return result;
}

uint64_t sub_268CA1ACC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4D8, &qword_268CB8A00);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA500, &qword_268CB8C18);
  MEMORY[0x28223BE20](v7 - 8);
  v86 = &v69 - v8;
  v9 = sub_268CA21B0(a1);
  v74 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger;
  v75 = v1;
  v10 = sub_268CB7730();
  v11 = sub_268CB7BC0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v89[0] = v13;
    *v12 = 136315138;
    v14 = sub_268CB7910();
    v15 = MEMORY[0x26D62B420](v9, v14);
    v17 = sub_268CA5820(v15, v16, v89);

    *(v12 + 4) = v17;
    OUTLINED_FUNCTION_1_2(&dword_268C94000, v18, v19, "[postResolveProcessing] pureMatchFilteredEntities: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  v20 = sub_268CB77B0();
  v21 = sub_268CA25BC(v9, v20);

  v22 = sub_268CB7730();
  v23 = sub_268CB7BC0();

  v24 = os_log_type_enabled(v22, v23);
  v73 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v89[0] = v26;
    *v25 = 136315138;
    v27 = sub_268CB7910();
    v28 = MEMORY[0x26D62B420](v21, v27);
    v30 = sub_268CA5820(v28, v29, v89);

    *(v25 + 4) = v30;
    v21 = v73;
    OUTLINED_FUNCTION_1_2(&dword_268C94000, v31, v32, "[postResolveProcessing] selectExactValueMatchedCandidatesFrom: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  v90 = MEMORY[0x277D84F90];
  result = sub_268CAAE90();
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  v35 = result;
  if (result >= 1)
  {
    v36 = 0;
    v85 = v21 & 0xC000000000000001;
    *&v34 = 136315138;
    v69 = v34;
    v70 = result;
    do
    {
      if (v85)
      {
        v37 = MEMORY[0x26D62B570](v36, v21);
      }

      else
      {
        v37 = *(v21 + 8 * v36 + 32);
      }

      v38 = v37;
      v89[0] = sub_268CB7890();
      v89[1] = v39;
      v87 = 0x776F646168532DLL;
      v88 = 0xE700000000000000;
      v40 = sub_268CB7050();
      v41 = v86;
      __swift_storeEnumTagSinglePayload(v86, 1, 1, v40);
      sub_268C98E10();
      sub_268CB7C50();
      v43 = v42;
      sub_268CA3600(v41);

      v44 = v38;
      if (v43)
      {
        MEMORY[0x26D62B3D0]();
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268CB7B70();
        }

        sub_268CB7BA0();

        v45 = v90;
      }

      else
      {
        v46 = sub_268CB7730();
        v47 = sub_268CB7BC0();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v89[0] = v49;
          *v48 = v69;
          v50 = sub_268CB7890();
          v52 = sub_268CA5820(v50, v51, v89);

          *(v48 + 4) = v52;
          _os_log_impl(&dword_268C94000, v46, v47, "[postResolveProcessing] Modifying entityId: %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v49);
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_5_0();
        }

        sub_268CB7890();
        v53 = sub_268CB7B20();
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v60 = MEMORY[0x26D62B2E0](v53, v55, v57, v59);
        v83 = v61;
        v84 = v60;

        v62 = sub_268CB7840();
        v81 = v63;
        v82 = v62;
        v80 = sub_268CB7810();
        v64 = sub_268CB78F0();
        v78 = v65;
        v79 = v64;
        v66 = sub_268CB78A0();
        v76 = v67;
        v77 = v66;
        sub_268CB78B0();
        sub_268CB7900();
        sub_268CB78C0();
        sub_268CB7850();
        sub_268CB7860();
        sub_268CB7830();
        sub_268CB78E0();
        v68 = objc_allocWithZone(sub_268CB7910());
        sub_268CB7880();
        MEMORY[0x26D62B3D0]();
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268CB7B70();
        }

        sub_268CB7BA0();
        v45 = v90;

        v21 = v73;
        v35 = v70;
      }

      ++v36;
    }

    while (v35 != v36);

    return v45;
  }

  __break(1u);
  return result;
}

id sub_268CA21B0(uint64_t a1)
{
  v2 = sub_268CB7160();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];
  result = sub_268CAAE90();
  v35 = result;
  v32 = a1;
  if (!result)
  {
    v33 = v6;
LABEL_33:
    v24 = v33;
    if (sub_268CAAE90())
    {
      v25 = sub_268CB7730();
      v26 = sub_268CB7BC0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_268C94000, v25, v26, "Filtered out flexible matched entities and only returning pure matches", v27, 2u);
        MEMORY[0x26D62BBE0](v27, -1, -1);
      }
    }

    else
    {
      v28 = v32;

      return v28;
    }

    return v24;
  }

  v8 = 0;
  v34 = a1 & 0xC000000000000001;
  v30 = a1 + 32;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v38 = 0x8000000268CB9B50;
  v39 = v3 + 16;
  v9 = (v3 + 8);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v34)
    {
      result = MEMORY[0x26D62B570](v8, v32);
    }

    else
    {
      if (v8 >= *(v31 + 16))
      {
        goto LABEL_41;
      }

      result = *(v30 + 8 * v8);
    }

    v10 = __OFADD__(v8, 1);
    v11 = (v8 + 1);
    if (v10)
    {
      goto LABEL_40;
    }

    v36 = result;
    v37 = v11;
    sub_268CB7810();
    v12 = sub_268CB7660();

    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

LABEL_25:

    MEMORY[0x26D62B3D0](v23);
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_268CB7B70();
    }

    result = sub_268CB7BA0();
    v33 = v40;
LABEL_30:
    v8 = v37;
    if (v37 == v35)
    {
      goto LABEL_33;
    }
  }

  v14 = 0;
  v15 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  while (v14 < *(v12 + 16))
  {
    (*(v3 + 16))(v5, v15 + *(v3 + 72) * v14, v2);
    v16 = sub_268CB7150();
    if (!v17)
    {
      goto LABEL_17;
    }

    if (v16 == 0xD000000000000013 && v17 == v38)
    {
    }

    else
    {
      v19 = sub_268CB7DC0();

      if ((v19 & 1) == 0)
      {
LABEL_17:
        result = (*v9)(v5, v2);
        goto LABEL_24;
      }
    }

    if (sub_268CB7140() == 0x65747265766E6F63 && v20 == 0xE900000000000064)
    {

      (*v9)(v5, v2);
LABEL_29:

      goto LABEL_30;
    }

    v22 = sub_268CB7DC0();

    result = (*v9)(v5, v2);
    if (v22)
    {
      goto LABEL_29;
    }

LABEL_24:
    if (v13 == ++v14)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_268CA25BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_268CA2C94(a2);
  v54 = v6;
  v55 = v7;
  if (!v5)
  {
    goto LABEL_84;
  }

  v8 = v4;
  v9 = v5;
  v10 = sub_268CB7730();
  v11 = sub_268CB7BC0();
  if (os_log_type_enabled(v10, v11))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_268C94000, v10, v11, "Try to filter for exact match candidates only", v2, 2u);
    MEMORY[0x26D62BBE0](v2, -1, -1);
  }

  v12 = v8 == 1701667182 && v9 == 0xE400000000000000;
  v13 = MEMORY[0x277D84F90];
  v53 = a1;
  if (!v12 && (sub_268CB7DC0() & 1) == 0)
  {
    v19 = v8 == 0x6C6562616CLL && v9 == 0xE500000000000000;
    if (v19 || (sub_268CB7DC0() & 1) != 0)
    {
      v57 = v13;
      v20 = sub_268CAAE90();
      v21 = 0;
      v11 = 0;
      v22 = a1 & 0xC000000000000001;
      v23 = a1 & 0xFFFFFFFFFFFFFF8;
      while (v20 != v21)
      {
        if (v22)
        {
          v24 = MEMORY[0x26D62B570](v21, a1);
        }

        else
        {
          if (v21 >= *(v23 + 16))
          {
            goto LABEL_90;
          }

          v24 = *(a1 + 8 * v21 + 32);
        }

        v2 = v24;
        if (__OFADD__(v21, 1))
        {
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        v56 = v24;
        if (sub_268CA33C8(&v56, v8, v9, v54, v55))
        {
          sub_268CB7D00();
          sub_268CB7D20();
          a1 = v53;
          sub_268CB7D30();
          sub_268CB7D10();
        }

        else
        {
        }

        ++v21;
      }

      goto LABEL_78;
    }

    v25 = v8 == 0x65756C6176 && v9 == 0xE500000000000000;
    if (!v25 && (sub_268CB7DC0() & 1) == 0)
    {

      v45 = MEMORY[0x277D84F90];
      goto LABEL_79;
    }

    v57 = v13;
    v26 = sub_268CAAE90();
    v27 = 0;
    v28 = a1 & 0xC000000000000001;
    v51 = v26;
    v52 = a1 & 0xFFFFFFFFFFFFFF8;
    v50 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v26 == v27)
      {
        goto LABEL_78;
      }

      if (v28)
      {
        v29 = MEMORY[0x26D62B570](v27, a1);
      }

      else
      {
        if (v27 >= *(v52 + 16))
        {
          goto LABEL_92;
        }

        v29 = *(a1 + 8 * v27 + 32);
      }

      v11 = v29;
      if (__OFADD__(v27, 1))
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);

        __break(1u);
        return result;
      }

      sub_268CB7810();
      v30 = sub_268CB7670();
      v32 = v31;

      if (v30 == 0xD000000000000014 && 0x8000000268CB9590 == v32)
      {
      }

      else
      {
        v2 = sub_268CB7DC0();

        if ((v2 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      sub_268CB7810();
      v2 = sub_268CB7650();

      a1 = v53;
      if (!*(v2 + 16) || (v34 = sub_268CA5E3C(0x65756C6176, 0xE500000000000000), (v35 & 1) == 0))
      {
LABEL_68:

        goto LABEL_73;
      }

      v36 = *(*(v2 + 56) + 8 * v34);

      if (v36 >> 62)
      {
        if (!sub_268CB7D50())
        {
          goto LABEL_68;
        }
      }

      else if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      if ((v36 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x26D62B570](0, v36);
      }

      else
      {
        if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v2 = *(v36 + 32);
      }

      v37 = sub_268CB75F0();
      v39 = v38;

      if (!v39)
      {

        a1 = v53;
        v28 = v50;
        v26 = v51;
        goto LABEL_73;
      }

      type metadata accessor for BaseQueryMatcher(0);
      v40 = sub_268C979D8(v37, v39);
      v2 = v41;

      if (v40 == sub_268C979D8(v54, v55) && v2 == v42)
      {

        v28 = v50;
        v26 = v51;
LABEL_71:
        sub_268CB7D00();
        v2 = *(v57 + 16);
        sub_268CB7D20();
        sub_268CB7D30();
        sub_268CB7D10();
        goto LABEL_72;
      }

      v44 = sub_268CB7DC0();

      v28 = v50;
      v26 = v51;
      if (v44)
      {
        goto LABEL_71;
      }

LABEL_52:

LABEL_72:
      a1 = v53;
LABEL_73:
      ++v27;
    }
  }

  v57 = v13;
  v14 = sub_268CAAE90();
  v15 = 0;
  v11 = 0;
  v16 = a1 & 0xC000000000000001;
  v17 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v14 != v15)
  {
    if (v16)
    {
      v18 = MEMORY[0x26D62B570](v15, a1);
    }

    else
    {
      if (v15 >= *(v17 + 16))
      {
        goto LABEL_88;
      }

      v18 = *(a1 + 8 * v15 + 32);
    }

    v2 = v18;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v56 = v18;
    if (sub_268CA3130(&v56, v8, v9, v54, v55))
    {
      sub_268CB7D00();
      sub_268CB7D20();
      a1 = v53;
      sub_268CB7D30();
      sub_268CB7D10();
    }

    else
    {
    }

    ++v15;
  }

LABEL_78:

  v45 = v57;
LABEL_79:
  if (sub_268CAAE90())
  {
    v46 = sub_268CB7730();
    v47 = sub_268CB7BC0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_268C94000, v46, v47, "We did filter to exact match candidates only", v48, 2u);
      MEMORY[0x26D62BBE0](v48, -1, -1);
    }

    return v45;
  }

LABEL_84:

  return a1;
}

uint64_t sub_268CA2C94(uint64_t a1)
{
  if (sub_268CB7670() != 0x505F6E6F6D6D6F63 || v1 != 0xED00006E6F737265)
  {
    v3 = sub_268CB7DC0();

    if (v3)
    {
      goto LABEL_18;
    }

    if (sub_268CB7670() != 0x525F6E6F6D6D6F63 || v4 != 0xEF7265646E696D65)
    {
      v6 = sub_268CB7DC0();

      if (v6)
      {
        goto LABEL_18;
      }

      if (sub_268CB7670() != 0xD000000000000013 || 0x8000000268CB9B30 != v7)
      {
        v9 = sub_268CB7DC0();

        if ((v9 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }
    }
  }

LABEL_18:
  v10 = 1701667182;
  sub_268CB7650();
  v11 = sub_268CA63D0();

  if (v11)
  {
    if (sub_268CAAE90())
    {
      sub_268CAAE98();
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D62B570](0, v11);
      }

      else
      {
      }

      sub_268CB75F0();
      v13 = v12;

      if (v13)
      {
        return v10;
      }
    }

    else
    {
    }
  }

LABEL_25:
  sub_268CB7650();
  v14 = sub_268CA63D0();

  if (!v14)
  {
    goto LABEL_39;
  }

  if (!sub_268CAAE90())
  {
    goto LABEL_38;
  }

  sub_268CAAE98();
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v14);
  }

  else
  {
  }

  v15 = sub_268CB7620();

  if (!v15)
  {
LABEL_39:
    if (sub_268CB7670() == 0xD000000000000014 && 0x8000000268CB9590 == v19)
    {
    }

    else
    {
      v21 = sub_268CB7DC0();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    v10 = 0x65756C6176;
    sub_268CB7650();
    v22 = sub_268CA63D0();

    if (v22)
    {
      if (sub_268CAAE90())
      {
        sub_268CAAE98();
        if ((v22 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D62B570](0, v22);
        }

        else
        {
        }

        sub_268CB75F0();
        v24 = v23;

        if (!v24)
        {
          return 0;
        }

        return v10;
      }
    }

    return 0;
  }

  v10 = 0x6C6562616CLL;
  sub_268CB7650();
  v16 = sub_268CA63D0();

  if (!v16)
  {

    goto LABEL_39;
  }

  if (!sub_268CAAE90())
  {

LABEL_38:

    goto LABEL_39;
  }

  sub_268CAAE98();
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v16);
  }

  else
  {
  }

  sub_268CB75F0();
  v18 = v17;

  if (!v18)
  {
    goto LABEL_39;
  }

  return v10;
}

uint64_t sub_268CA3130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_268CB7810();
  v7 = sub_268CB7670();
  v9 = v8;

  v10 = v7 == 0x505F6E6F6D6D6F63 && v9 == 0xED00006E6F737265;
  if (v10 || (sub_268CB7DC0() & 1) != 0 || (v7 == 0x525F6E6F6D6D6F63 ? (v11 = v9 == 0xEF7265646E696D65) : (v11 = 0), v11 || (sub_268CB7DC0() & 1) != 0 || (v7 == 0xD000000000000013 ? (v12 = 0x8000000268CB9B30 == v9) : (v12 = 0), v12)))
  {
  }

  else
  {
    v13 = sub_268CB7DC0();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  sub_268CB7810();
  sub_268CB7650();

  v14 = sub_268CA63D0();

  if (!v14)
  {
    return 0;
  }

  if (!sub_268CAAE90())
  {

    return 0;
  }

  sub_268CAAE98();
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v14);
  }

  else
  {
  }

  v15 = sub_268CB75F0();
  v17 = v16;

  if (!v17)
  {
    return 0;
  }

  type metadata accessor for BaseQueryMatcher(0);
  v18 = sub_268C979D8(v15, v17);
  v20 = v19;

  if (v18 == sub_268C979D8(a4, a5) && v20 == v21)
  {

    return 1;
  }

  else
  {
    v23 = sub_268CB7DC0();

    return v23 & 1;
  }
}

uint64_t sub_268CA33C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_268CB7810();
  sub_268CB7650();

  v7 = sub_268CA63D0();

  if (v7)
  {
    if (sub_268CAAE90())
    {
      sub_268CAAE98();
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D62B570](0, v7);
      }

      else
      {
      }

      v8 = sub_268CB7620();

      if (!v8)
      {
        goto LABEL_18;
      }

      sub_268CB7650();
      v7 = sub_268CA63D0();

      if (!v7)
      {
LABEL_22:

        return v7 & 1;
      }

      if (sub_268CAAE90())
      {
        sub_268CAAE98();
        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D62B570](0, v7);
        }

        else
        {
        }

        v9 = sub_268CB75F0();
        v11 = v10;

        if (v11)
        {
          type metadata accessor for BaseQueryMatcher(0);
          v12 = sub_268C979D8(v9, v11);
          v14 = v13;

          if (v12 == sub_268C979D8(a4, a5) && v14 == v15)
          {
            LOBYTE(v7) = 1;
          }

          else
          {
            LOBYTE(v7) = sub_268CB7DC0();
          }

          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

LABEL_18:
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t sub_268CA3600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA500, &qword_268CB8C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_268CA3688()
{

  return v0;
}

uint64_t sub_268CA36B0()
{
  sub_268CA3688();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for RRConstants(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for RRConstants(_BYTE *result, int a2, int a3)
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

uint64_t sub_268CA3810()
{
  v0 = sub_268CB7970();
  __swift_allocate_value_buffer(v0, qword_2802DA650);
  *__swift_project_value_buffer(v0, qword_2802DA650) = 1000;
  v1 = *(*(v0 - 8) + 104);

  return v1();
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

uint64_t sub_268CA3904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_268CA5E3C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268CA3954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268CA5E3C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

double sub_268CA39AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_268CA5E3C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_268CA1118(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_268CA3A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268CA5E3C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_268CA3A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_268CA5E3C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_268CA3AAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_268CA5E3C(a1, a2), (v7 & 1) != 0))
  {
    sub_268CA636C(*(a3 + 56) + 40 * v6, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_268CA3B04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_268CA5F54(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_268CB7160();
    (*(*(v8 - 8) + 16))(a2, v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = a2;
    v10 = 0;
    v11 = 1;
    v12 = v8;
  }

  else
  {
    sub_268CB7160();
    OUTLINED_FUNCTION_19_1();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_268CA3BC8()
{
  v0 = sub_268CB7750();
  __swift_allocate_value_buffer(v0, qword_28131ECF0);
  __swift_project_value_buffer(v0, qword_28131ECF0);
  type metadata accessor for RRResolver(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA538, &qword_268CB8D30);
  sub_268CB7A20();
  return sub_268CB7740();
}

uint64_t sub_268CA3C6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA540, &qword_268CB8D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268CB8CB0;
  if (qword_28131EA28 != -1)
  {
    swift_once();
  }

  v1 = unk_28131ECC0;
  *(inited + 32) = qword_28131ECB8;
  *(inited + 40) = v1;
  Matcher = type metadata accessor for PersonQueryMatcher();
  v3 = swift_initStaticObject();
  *(inited + 72) = Matcher;
  *(inited + 80) = &off_287987888;
  *(inited + 48) = v3;
  v4 = qword_28131EA00;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = unk_28131EC90;
  *(inited + 88) = qword_28131EC88;
  *(inited + 96) = v5;
  v6 = qword_28131E910;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_28131EC50;
  *(inited + 128) = type metadata accessor for AttachmentQueryMatcher();
  *(inited + 136) = &off_287987898;
  *(inited + 104) = v7;
  v8 = qword_28131EA10;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = unk_28131ECA0;
  *(inited + 144) = qword_28131EC98;
  *(inited + 152) = v9;
  v10 = type metadata accessor for CalendarEventQueryMatcher();
  v11 = swift_initStaticObject();
  *(inited + 184) = v10;
  *(inited + 192) = &off_287987878;
  *(inited + 160) = v11;
  v12 = qword_28131EA18;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = unk_28131ECB0;
  *(inited + 200) = qword_28131ECA8;
  *(inited + 208) = v13;
  v14 = type metadata accessor for ApplicationQueryMatcher();
  v15 = swift_initStaticObject();
  *(inited + 240) = v14;
  *(inited + 248) = &off_287987868;
  *(inited + 216) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA548, &qword_268CB8D40);
  result = sub_268CB79C0();
  qword_28131EB60 = result;
  return result;
}

void static RREntityMatcher.entity(_:matches:entityFoundByMarrsIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25();
  LODWORD(v119) = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4D8, &qword_268CB8A00);
  OUTLINED_FUNCTION_9_1(v8);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_1();
  v115[4] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  OUTLINED_FUNCTION_9_1(v11);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_1();
  v115[3] = v13;
  sub_268CB76E0();
  OUTLINED_FUNCTION_2_0();
  v115[5] = v14;
  MEMORY[0x28223BE20](v15);
  v16 = sub_268CB7750();
  OUTLINED_FUNCTION_2_0();
  v120 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_2();
  v116 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_16_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_16_1();
  MEMORY[0x28223BE20](v23);
  v25 = v115 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA510, &qword_268CB8CD0);
  v27 = OUTLINED_FUNCTION_9_1(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_16_1();
  MEMORY[0x28223BE20](v28);
  v30 = v115 - v29;
  v31 = sub_268CB7960();
  OUTLINED_FUNCTION_2_0();
  v118 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131EB70 != -1)
  {
    swift_once();
  }

  if (byte_28131EC48 == 1 && sub_268CA4B10(v7, v5, v119 & 1))
  {
    goto LABEL_72;
  }

  sub_268CB7820();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v31);
  v117 = v16;
  if (EnumTagSinglePayload != 1)
  {
    v37 = (*(v118 + 32))(v35, v30, v31);
    if (qword_28131EB50 != -1)
    {
      v37 = OUTLINED_FUNCTION_0_2(&qword_28131EB50);
    }

    OUTLINED_FUNCTION_3_2(v37, qword_28131ECF0);
    v38(v25);
    v39 = sub_268CB7730();
    v40 = sub_268CB7BD0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_10_0();
      *v41 = 0;
      _os_log_impl(&dword_268C94000, v39, v40, "rrEntity.typedValue conversion", v41, 2u);
      v16 = v117;
      OUTLINED_FUNCTION_5_0();
    }

    (*(v120 + 8))(v25, v16);
    sub_268CB7670();
    v42 = sub_268CB71E0();

    if (v42)
    {
      v122 = v31;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v121);
      (*(v118 + 16))(boxed_opaque_existential_1, v35, v31);
      sub_268CB76D0();
      sub_268CB76B0();
      sub_268CB76C0();
      v44 = OUTLINED_FUNCTION_24();
      v45(v44);
      __swift_destroy_boxed_opaque_existential_0Tm(&v121);
      sub_268C9E598(v123, &v121);
      if (!v122)
      {
        sub_268CA5D30(v123, &qword_2802DA410, &unk_268CB8920);
        v57 = OUTLINED_FUNCTION_6_2();
        v58(v57);
        sub_268CA5D30(&v121, &qword_2802DA410, &unk_268CB8920);
        goto LABEL_18;
      }

      sub_268CB70B0();
      if (swift_dynamicCast())
      {
        v120 = sub_268CB70A0();

        sub_268CB7890();
        v119 = sub_268CB7840();
        sub_268CB7820();
        sub_268CB7800();
        OUTLINED_FUNCTION_19_1();
        __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
        sub_268CB78C0();
        sub_268CB7040();
        OUTLINED_FUNCTION_19_1();
        __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
        sub_268CB7920();
        sub_268CB79C0();
        v54 = objc_allocWithZone(sub_268CB7910());
        OUTLINED_FUNCTION_17_1();
        sub_268CB7870();
        sub_268CA5D30(v123, &qword_2802DA410, &unk_268CB8920);
        v55 = OUTLINED_FUNCTION_6_2();
        v56(v55);
        goto LABEL_72;
      }

      sub_268CA5D30(v123, &qword_2802DA410, &unk_268CB8920);
    }

    v59 = OUTLINED_FUNCTION_6_2();
    v60(v59);
    goto LABEL_18;
  }

  sub_268CA5D30(v30, &qword_2802DA510, &qword_268CB8CD0);
LABEL_18:
  if (qword_28131EB58 != -1)
  {
    swift_once();
  }

  v61 = qword_28131EB60;
  v62 = sub_268CB7670();
  sub_268CA3AAC(v62, v63, v61, &v121);

  if (v122)
  {
    sub_268C958E0(&v121, v123);
  }

  else if (qword_28131EB40 == -1)
  {
    v64 = qword_28131ECD8;
    Matcher = type metadata accessor for BaseQueryMatcher(0);
    v125 = &off_2879878A8;
    v123[0] = v64;
  }

  else
  {
    OUTLINED_FUNCTION_0(&qword_28131EB40);
    v113 = v122;
    v114 = qword_28131ECD8;
    Matcher = type metadata accessor for BaseQueryMatcher(0);
    v125 = &off_2879878A8;
    v123[0] = v114;

    if (v113)
    {
      sub_268CA5D30(&v121, &qword_2802DA518, &unk_268CB8CD8);
    }
  }

  v65 = Matcher;
  v66 = v125;
  v67 = __swift_project_boxed_opaque_existential_1(v123, Matcher);
  sub_268CB77D0();
  swift_allocObject();

  v68 = sub_268CB77A0();
  v69 = sub_268CB7810();
  LOBYTE(v65) = (v66[1])(v68, v69, v119 & 1, v65, v66);

  if (v65)
  {
    sub_268CB7670();
    OUTLINED_FUNCTION_22();
    if (qword_28131EA28 != -1)
    {
      swift_once();
    }

    v71 = qword_28131ECB8;
    v72 = unk_28131ECC0;
    if (v67 == qword_28131ECB8 && v5 == unk_28131ECC0)
    {
    }

    else
    {
      v67 = OUTLINED_FUNCTION_2_2();

      if ((v67 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v81 = sub_268CB7810();
    sub_268CB7670();
    OUTLINED_FUNCTION_22();

    if (v67 == v71 && v81 == v72)
    {
    }

    else
    {
      v83 = OUTLINED_FUNCTION_2_2();

      if ((v83 & 1) == 0)
      {
        if (qword_28131EB50 != -1)
        {
          v84 = OUTLINED_FUNCTION_0_2(&qword_28131EB50);
        }

        OUTLINED_FUNCTION_3_2(v84, qword_28131ECF0);
        v85(v115[1]);
        v86 = sub_268CB7730();
        v87 = sub_268CB7BD0();
        if (OUTLINED_FUNCTION_21(v87))
        {
          *OUTLINED_FUNCTION_10_0() = 0;
          OUTLINED_FUNCTION_11_1(&dword_268C94000, v88, v89, "convertRREntityToPersonAnnotatedEntity conversion");
          OUTLINED_FUNCTION_5_0();
        }

        v90 = OUTLINED_FUNCTION_7_1();
        v91(v90);
        static RREntityMatcher.convertRREntityToPersonAnnotatedEntity(rrEntity:)(v7, v92, v93, v94);
        goto LABEL_69;
      }
    }

LABEL_50:
    sub_268CB7670();
    OUTLINED_FUNCTION_22();
    if (qword_28131EA10 != -1)
    {
      swift_once();
    }

    v95 = qword_28131EC98;
    v96 = unk_28131ECA0;
    if (v67 == qword_28131EC98 && v5 == unk_28131ECA0)
    {
    }

    else
    {
      v67 = OUTLINED_FUNCTION_2_2();

      if ((v67 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v98 = sub_268CB7810();
    sub_268CB7670();
    OUTLINED_FUNCTION_22();

    if (v67 == v95 && v98 == v96)
    {
    }

    else
    {
      v100 = OUTLINED_FUNCTION_2_2();

      if ((v100 & 1) == 0)
      {
        if (qword_28131EB50 != -1)
        {
          v101 = OUTLINED_FUNCTION_0_2(&qword_28131EB50);
        }

        OUTLINED_FUNCTION_3_2(v101, qword_28131ECF0);
        v102(v115[0]);
        v103 = sub_268CB7730();
        v104 = sub_268CB7BD0();
        if (OUTLINED_FUNCTION_21(v104))
        {
          *OUTLINED_FUNCTION_10_0() = 0;
          OUTLINED_FUNCTION_11_1(&dword_268C94000, v105, v106, "convertRREntityToCalendarEventAnnotatedEntity conversion");
          OUTLINED_FUNCTION_5_0();
        }

        v107 = OUTLINED_FUNCTION_7_1();
        v108(v107);
        static RREntityMatcher.convertRREntityToCalendarEventAnnotatedEntity(rrEntity:)(v7, v109, v110, v111);
LABEL_69:
        __swift_destroy_boxed_opaque_existential_0Tm(v123);
        goto LABEL_72;
      }
    }

LABEL_71:
    __swift_destroy_boxed_opaque_existential_0Tm(v123);
    v112 = v7;
    goto LABEL_72;
  }

  if (qword_28131EB50 != -1)
  {
    v70 = OUTLINED_FUNCTION_0_2(&qword_28131EB50);
  }

  OUTLINED_FUNCTION_3_2(v70, qword_28131ECF0);
  v74(v116);
  v75 = sub_268CB7730();
  v76 = sub_268CB7BD0();
  if (OUTLINED_FUNCTION_21(v76))
  {
    *OUTLINED_FUNCTION_10_0() = 0;
    OUTLINED_FUNCTION_11_1(&dword_268C94000, v77, v78, "queryMatcher.match returned nil");
    OUTLINED_FUNCTION_5_0();
  }

  v79 = OUTLINED_FUNCTION_7_1();
  v80(v79);
  __swift_destroy_boxed_opaque_existential_0Tm(v123);
LABEL_72:
  OUTLINED_FUNCTION_10_1();
}

void *sub_268CA4B10(void *a1, uint64_t a2, char a3)
{
  if (qword_2802DA180 != -1)
  {
    swift_once();
  }

  v6 = sub_268C9BC60(a1, a2, a3 & 1);

  if (!v6)
  {
    if (qword_2802DA168 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = qword_2802DA640;
    if (!qword_2802DA640)
    {
      swift_endAccess();
      return 0;
    }

    v8 = sub_268CB7670();
    v10 = sub_268CA3A5C(v8, v9, v7);
    swift_endAccess();

    if (!v10)
    {
      return 0;
    }

    v6 = sub_268C9BC60(a1, v10, 0);

    if (!v6)
    {
      return 0;
    }
  }

  return v6;
}

void static RREntityMatcher.convertRREntityToPersonAnnotatedEntity(rrEntity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_25();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4D8, &qword_268CB8A00);
  OUTLINED_FUNCTION_9_1(v6);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_1();
  v50 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  OUTLINED_FUNCTION_9_1(v9);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13_1();
  v49 = v11;
  v12 = sub_268CB7750();
  OUTLINED_FUNCTION_2_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_2();
  v52 = (v16 - v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  if (qword_28131EB50 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_28131EB50);
  }

  v21 = __swift_project_value_buffer(v12, qword_28131ECF0);
  v53 = *(v14 + 16);
  v53(v20, v21, v12);
  v22 = sub_268CB7730();
  v23 = sub_268CB7BC0();
  if (os_log_type_enabled(v22, v23))
  {
    *OUTLINED_FUNCTION_10_0() = 0;
    OUTLINED_FUNCTION_26(&dword_268C94000, v24, v25, "common_Person query matched with a basic contact address RREntity. Converting matched RREntity to common_Person");
    OUTLINED_FUNCTION_5_0();
  }

  v51 = *(v14 + 8);
  v51(v20, v12);
  if (qword_2802DA188 != -1)
  {
    swift_once();
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA520, &qword_268CB8CE8);
  __swift_project_value_buffer(v26, qword_2802DA668);
  OUTLINED_FUNCTION_23();
  v27 = sub_268CB76A0();
  v28 = sub_268CB7810();
  v29 = OUTLINED_FUNCTION_12_1(v28);
  v27(v29);
  if (v22)
  {

    v30 = v52;
    v53(v52, v21, v12);
    v53 = v5;
    v31 = sub_268CB7730();
    v32 = sub_268CB7BE0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v54[0] = v34;
      *v33 = 136315138;
      sub_268CB7810();
      v35 = sub_268CB7640();
      v37 = v36;

      v38 = sub_268CA5820(v35, v37, v54);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_268C94000, v31, v32, "Failed to transform the matched entity %s into common_Person. Returning orignal matched entity", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();

      v39 = v52;
    }

    else
    {

      v39 = v30;
    }

    v51(v39, v12);
    OUTLINED_FUNCTION_10_1();

    v48 = v46;
  }

  else
  {

    sub_268CB7890();
    v53 = sub_268CB7840();

    sub_268CB70A0();

    sub_268CB78B0();
    sub_268CB7900();
    sub_268CB78C0();
    sub_268CB7040();
    v40 = v50;
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    sub_268CB7830();
    v45 = objc_allocWithZone(sub_268CB7910());
    OUTLINED_FUNCTION_8_2();
    v52 = v40;
    v53 = 0;
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_17_1();
    sub_268CB7880();

    OUTLINED_FUNCTION_10_1();
  }
}

void static RREntityMatcher.convertRREntityToCalendarEventAnnotatedEntity(rrEntity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_25();
  v60 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4D8, &qword_268CB8A00);
  OUTLINED_FUNCTION_9_1(v5);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_1();
  v56 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  OUTLINED_FUNCTION_9_1(v8);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_1();
  v55[1] = v10;
  v11 = sub_268CB7750();
  OUTLINED_FUNCTION_2_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_2();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v55 - v19;
  if (qword_28131EB50 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_28131EB50);
  }

  v21 = __swift_project_value_buffer(v11, qword_28131ECF0);
  v22 = *(v13 + 16);
  v22(v20, v21, v11);
  v23 = sub_268CB7730();
  v24 = sub_268CB7BC0();
  if (os_log_type_enabled(v23, v24))
  {
    *OUTLINED_FUNCTION_10_0() = 0;
    OUTLINED_FUNCTION_26(&dword_268C94000, v25, v26, "common_CalendarEvent query matched with DateTimeRange entity. Converting matched RREntity to common_CalendarEvent");
    OUTLINED_FUNCTION_5_0();
  }

  v59 = v17;

  v57 = *(v13 + 8);
  v58 = v13 + 8;
  v57(v20, v11);
  if (qword_2802DA1A8 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA528, &qword_268CB8CF0);
  __swift_project_value_buffer(v27, qword_2802DA698);
  OUTLINED_FUNCTION_23();
  v28 = sub_268CB76A0();
  v29 = v60;
  v30 = sub_268CB7810();
  v31 = OUTLINED_FUNCTION_12_1(v30);
  v28(v31);
  if (v23)
  {

    v32 = v59;
    v22(v59, v21, v11);
    v60 = v29;
    v33 = v23;
    v34 = sub_268CB7730();
    v35 = sub_268CB7BE0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v61 = v38;
      *v36 = 136315394;
      sub_268CB7810();
      v39 = sub_268CB7640();
      v41 = v40;

      v42 = sub_268CA5820(v39, v41, &v61);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2112;
      v43 = v23;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v44;
      *v37 = v44;
      _os_log_impl(&dword_268C94000, v34, v35, "Failed to transform the matched entity %s into common_CalendarEvent, with error: %@ Returning original matched entity", v36, 0x16u);
      sub_268CA5D30(v37, &qword_2802DA530, qword_268CB8CF8);
      OUTLINED_FUNCTION_5_0();
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();

      v45 = v59;
    }

    else
    {

      v45 = v32;
    }

    v57(v45, v11);
    OUTLINED_FUNCTION_10_1();

    v54 = v52;
  }

  else
  {

    sub_268CB7890();
    v59 = sub_268CB7840();

    sub_268CB70A0();

    sub_268CB78B0();
    sub_268CB7900();
    sub_268CB78C0();
    sub_268CB7040();
    v46 = v56;
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    sub_268CB7830();
    v51 = objc_allocWithZone(sub_268CB7910());
    OUTLINED_FUNCTION_8_2();
    v57 = v46;
    v58 = 0;
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_17_1();
    sub_268CB7880();

    OUTLINED_FUNCTION_10_1();
  }
}

uint64_t static RREntityMatcher.entity(_:matches:lastProposedEntityType:)(uint64_t a1, uint64_t a2)
{
  if (qword_28131EB40 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_28131EB40);
  }

  sub_268C96540(a2, a1, 0);
  return v4 & 1;
}

uint64_t sub_268CA56EC()
{
  if (qword_2802DA158 != -1)
  {
    swift_once();
  }

  qword_2802DA508 = qword_2802DA638;
}

uint64_t sub_268CA5750(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_268CA57C4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_268CA5820(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_268CA5820(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_268CA58E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_268CA1118(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_268CA58E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_268CA59E4(a5, a6);
    *a1 = v9;
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
    result = sub_268CB7CF0();
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

void *sub_268CA59E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_268CA5A30(a1, a2);
  sub_268CA5B48(&unk_2879876B0);
  return v3;
}

void *sub_268CA5A30(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_268CB7AB0())
  {
    result = sub_268CA05AC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_268CB7CC0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_268CB7CF0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_268CA5B48(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_268CA5C2C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_268CA5C2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4B8, &unk_268CB89E8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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