SRDRequestDispatcherInternal *sub_223776EFC(SRDRequestDispatcherInternal *result, const char *a2, void *a3, SRDRequestDispatcherInternal *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *&a4->rdmbQueue[7];
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *&a4->afPreferences[7];
  if (v11 <= v12)
  {
    v13 = *&a4->afPreferences[7];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097970, &qword_2237B8310);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *&v14->afPreferences[7] = v12;
    *&v14->rdmbQueue[7] = 2 * ((v15 - 32) / 16);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || &a4->broker[16 * v12 + 7] <= &v14->broker[7])
    {
      memmove(&v14->broker[7], &a4->broker[7], 16 * v12);
    }

    *&a4->afPreferences[7] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097980, &qword_2237B8320);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_223777044(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

BOOL sub_22377708C(void *a1, uint64_t a2, SRDRequestDispatcherInternal *a3)
{
  v7 = *v3;
  sub_2237B634C();
  sub_2237B5E6C();
  v8 = sub_2237B636C();
  v15 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v16 = v8 & v15;
    v17 = (1 << (v8 & v15)) & *(v7 + 56 + (((v8 & v15) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v17)
    {
      break;
    }

    v18 = (*(v7 + 48) + 16 * v16);
    v19 = v18[1];
    v20 = *v18 == a2 && v19 == a3;
    if (v20 || (sub_2237B629C() & 1) != 0)
    {
      a3, v19, v9, v10, v11, v12, v13, v14;
      v21 = (*(v7 + 48) + 16 * v16);
      v22 = v21[1];
      *a1 = *v21;
      a1[1] = v22;

      return v17 == 0;
    }

    v8 = v16 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v3;

  sub_223777220(a2, a3, v16, isUniquelyReferenced_nonNull_native);
  *v3 = v25;
  *a1 = a2;
  a1[1] = a3;
  return v17 == 0;
}

void sub_223777220(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2237775D8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2237773A4(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2237B634C();
      sub_2237B5E6C();
      v16 = sub_2237B636C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_2237B629C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_2237829E0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_2237B62BC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_2237773A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097998, &qword_2237B8338);
  result = sub_2237B611C();
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
        sub_2237B634C();

        sub_2237B5E6C();
        result = sub_2237B636C();
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

uint64_t sub_2237775D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097998, &qword_2237B8338);
  result = sub_2237B611C();
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
      sub_22378297C(0, (v28 + 63) >> 6, v3 + 56);
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
    sub_2237B634C();
    sub_2237B5E6C();
    result = sub_2237B636C();
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

void sub_223777834()
{
  OUTLINED_FUNCTION_16_3();
  v5 = v1;
  v7 = v6;
  v108 = v8;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_168();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v13);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_113();
  v15 = type metadata accessor for RequestDispatcher.SessionContext(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_120();
  sub_22376F45C();
  if (v17)
  {
    v18 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    sub_22376F91C(v5 + v18, v4, &unk_27D097C80, &unk_2237B9260);
    OUTLINED_FUNCTION_312(v4, 1, v15);
    if (v19)
    {
      sub_2237710FC(v4, &unk_27D097C80, &unk_2237B9260);
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v20 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v20, qword_28131B550);

      v21 = sub_2237B5C8C();
      sub_2237B5FFC();
      v7, v22, v23, v24, v25, v26, v27, v28;
      v10, v29, v30, v31, v32, v33, v34, v35;
      if (OUTLINED_FUNCTION_318())
      {
        v36 = OUTLINED_FUNCTION_25_0();
        v110[0] = OUTLINED_FUNCTION_198();
        *v36 = 136315394;
        v37 = OUTLINED_FUNCTION_120();
        v40 = sub_223763694(v37, v38, v39);
        OUTLINED_FUNCTION_271(v40);
        *(v36 + 14) = sub_223763694(v108, v7, v110);
        OUTLINED_FUNCTION_157();
        _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_1();
        OUTLINED_FUNCTION_10();
      }

      goto LABEL_34;
    }

    v60 = sub_22376F978(v4, v2);
    MEMORY[0x28223BE20](v60);
    if (v61 == 1)
    {
      v62 = objc_allocWithZone(sub_2237B48BC());
      OUTLINED_FUNCTION_34_0();
      v63 = sub_2237B48AC();
      if (!v63)
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v64 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v64, qword_28131B550);

        v65 = sub_2237B5C8C();
        v66 = sub_2237B5FFC();
        v7, v67, v68, v69, v70, v71, v72, v73;
        if (!OUTLINED_FUNCTION_318())
        {
          goto LABEL_32;
        }

        v74 = OUTLINED_FUNCTION_20();
        v110[0] = OUTLINED_FUNCTION_19_0();
        *(v74 + 4) = OUTLINED_FUNCTION_359(4.8149e-34);
        v76 = "Failed to create RootRequestCompletedMessage for request Id: %s";
LABEL_31:
        OUTLINED_FUNCTION_239(&dword_22375F000, v75, v66, v76);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_13_1();
LABEL_32:

LABEL_33:

        sub_223771D44(v2);
        goto LABEL_34;
      }
    }

    else
    {
      v79 = objc_allocWithZone(sub_2237B450C());
      OUTLINED_FUNCTION_34_0();
      v63 = sub_2237B44FC();
      if (!v63)
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v98 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v98, qword_28131B550);

        v65 = sub_2237B5C8C();
        v66 = sub_2237B5FFC();
        v7, v99, v100, v101, v102, v103, v104, v105;
        if (!OUTLINED_FUNCTION_318())
        {
          goto LABEL_32;
        }

        v106 = OUTLINED_FUNCTION_20();
        v110[0] = OUTLINED_FUNCTION_19_0();
        *(v106 + 4) = OUTLINED_FUNCTION_359(4.8149e-34);
        v76 = "Failed to create RequestCompletedMessage for request Id: %s";
        goto LABEL_31;
      }
    }

    v80 = v63;
    v81 = *(v5 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    sub_2237654A4(v63);

    sub_22376F91C(v5 + OBJC_IVAR___SRDRequestDispatcherInternal_activeUserSessionObserver, v110, &qword_27D097C38, "&-");
    if (v111)
    {
      __swift_project_boxed_opaque_existential_1(v110, v111);
      OUTLINED_FUNCTION_20_1();
      v83 = v82;
      MEMORY[0x28223BE20](v84);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_299();
      (*(v83 + 16))(v81);
      sub_2237710FC(v110, &qword_27D097C38, "&-");
      v85 = OUTLINED_FUNCTION_171();
      v86(v85);
      v87 = OUTLINED_FUNCTION_193();
      v88(v87);
      sub_2237B551C();
      OUTLINED_FUNCTION_12_4();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
    }

    else
    {
      sub_2237710FC(v110, &qword_27D097C38, "&-");
      v93 = sub_2237B551C();
      OUTLINED_FUNCTION_2_1(v3, v94, v95, v93);
    }

    v96 = OUTLINED_FUNCTION_332();
    sub_223770A64(v96, v97, v7, 1);
    sub_2237710FC(v3, &unk_27D097A40, &unk_2237B8850);
    sub_22377831C();
    goto LABEL_33;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v46 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v46, qword_28131B550);

  v109 = sub_2237B5C8C();
  sub_2237B5FFC();
  v47 = OUTLINED_FUNCTION_121();
  v47, v48, v49, v50, v51, v52, v53, v54;
  if (os_log_type_enabled(v109, v0))
  {
    v55 = OUTLINED_FUNCTION_20();
    v56 = OUTLINED_FUNCTION_19_0();
    v110[0] = v56;
    *v55 = 136315138;
    v57 = OUTLINED_FUNCTION_120();
    *(v55 + 4) = sub_223763694(v57, v58, v59);
    OUTLINED_FUNCTION_360(&dword_22375F000, v109, v0, "No active session for assistantId: %s cannot post RequestCompleted message", v107);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_34:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_223777F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097988, &qword_2237B8328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_223777FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22376504C();
  OUTLINED_FUNCTION_5_7();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097978, &qword_2237B8318);
  if ((OUTLINED_FUNCTION_13_6(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = sub_22376504C();
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_2237B62CC();
    __break(1u);
    return;
  }

  v10 = v19;
LABEL_5:
  v20 = *v3;
  if (v11)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v10);
    *(v21 + 8 * v10) = a1;

    v22, v13, v14, v15, v20, v16, v17, v18;
  }

  else
  {
    sub_223766960(v10, a2, a3, a1, v20);
  }
}

void sub_2237780EC()
{
  OUTLINED_FUNCTION_16_3();
  v5 = v4;
  OUTLINED_FUNCTION_187(v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_122();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v13);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_113();
  v15 = *MEMORY[0x277D5CDC8];
  v16 = sub_2237B540C();
  OUTLINED_FUNCTION_4();
  (*(v17 + 104))(v3, v15, v16);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  v2(v3);

  v21 = OUTLINED_FUNCTION_120();
  v5(v21);
  v22 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  v23 = sub_2237B412C();
  OUTLINED_FUNCTION_4();
  (*(v24 + 16))(v1, v28 + v22, v23);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
  v29(v1);

  v30(v31, v0);
  OUTLINED_FUNCTION_14_2();
}

void sub_22377831C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D597B8]) init];
  if (v5)
  {
    v33 = v5;
    [v5 setExists:1];
    v6 = [objc_allocWithZone(MEMORY[0x277D597B0]) init];
    if (v6)
    {
      v7 = v6;
      OUTLINED_FUNCTION_19_3();
      OUTLINED_FUNCTION_14_3();
      v8 = sub_2237B583C();
      if (v8)
      {
        v9 = v8;
        [v7 setEnded_];
        [v9 setRequestContext_];
        [*(v0 + 16) emitMessage_];
        v10 = sub_2237B582C();
        if (v10)
        {
          v11 = v10;
          v12 = [v10 captureSnapshot];

          if (v12)
          {
            v13 = [objc_opt_self() context];
            if (v13)
            {
              v14 = v13;
              OUTLINED_FUNCTION_19_3();
              sub_2237B40EC();
              v15 = sub_2237B412C();
              v16 = 0;
              if (__swift_getEnumTagSinglePayload(v4, 1, v15) != 1)
              {
                v16 = sub_2237B410C();
                OUTLINED_FUNCTION_8_4();
                (*(v17 + 8))(v4, v15);
              }

              [v12 logWithEventContext:v14 requestIdentifier:v16];
            }

            else
            {
              __break(1u);
            }

            return;
          }
        }
      }

      else
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_4(&qword_28131AA10);
        }

        v27 = sub_2237B5C9C();
        v28 = OUTLINED_FUNCTION_9_4(v27, qword_28131B550);
        v29 = sub_2237B5FFC();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = OUTLINED_FUNCTION_7_3();
          *v30 = 0;
          _os_log_impl(&dword_22375F000, v28, v29, "The Orchestration SELF event wrapper failed to build", v30, 2u);
          OUTLINED_FUNCTION_8();
        }
      }
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_28131AA10);
      }

      v22 = sub_2237B5C9C();
      v7 = OUTLINED_FUNCTION_9_4(v22, qword_28131B550);
      v23 = sub_2237B5FFC();
      if (OUTLINED_FUNCTION_5(v23))
      {
        v24 = OUTLINED_FUNCTION_7_3();
        OUTLINED_FUNCTION_4_4(v24);
        OUTLINED_FUNCTION_2_4(&dword_22375F000, v25, v26, "Failed to create the RequestContext message for end of request");
        OUTLINED_FUNCTION_3_0();
      }
    }
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v18 = sub_2237B5C9C();
    v33 = OUTLINED_FUNCTION_9_4(v18, qword_28131B550);
    sub_2237B5FFC();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v33, v19))
    {
      *OUTLINED_FUNCTION_7_3() = 0;
      OUTLINED_FUNCTION_21_1(&dword_22375F000, v20, v21, "Failed to create the message for end of request");
      OUTLINED_FUNCTION_8();
    }
  }

  v31 = v33;
}

uint64_t sub_2237787CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_223778814()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_223778854()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22377889C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2237788D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2237B598C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_22377891C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2237B598C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

BOOL sub_22377896C(uint64_t a1, SRDRequestDispatcherInternal *a2)
{
  v3 = sub_2237B61CC();
  a2, v4, v5, v6, v7, v8, v9, v10;
  return v3 != 0;
}

uint64_t sub_2237789B8()
{
  v1 = sub_2237B56DC();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  *(v0 + 24), v8, v9, v10, v11, v12, v13, v14;
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_223778AE0@<X0>(uint64_t a1@<X0>, SRDRequestDispatcherInternal *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X2>, void *a5@<X3>, uint64_t a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_223778AC0(a1, a2, a4, a5, a6, a7, a8, a9);
  *a3 = result & 1;
  return result;
}

uint64_t sub_223778BC4()
{
  sub_2237B5C7C();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v4));
  *(v0 + v5), v7, v8, v9, v10, v11, v12, v13;

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v2 | 7);
}

uint64_t sub_223778D84()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_53_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_223778DB8(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 56), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 72), v23, v24, v25, v26, v27, v28, v29;

  return MEMORY[0x2821FE8E8](v8, 96, 7);
}

uint64_t sub_223778E18(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 56), v16, v17, v18, v19, v20, v21, v22;

  return MEMORY[0x2821FE8E8](v8, 80, 7);
}

unint64_t sub_223778E80(uint64_t a1, SRDRequestDispatcherInternal *a2)
{
  v3 = sub_2237B61CC();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_223778EEC(char a1)
{
  sub_2237B634C();
  sub_22376AC64(a1);
  v3 = v2;
  sub_2237B5E6C();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_2237B636C();
}

uint64_t sub_223778F50()
{
  sub_2237B634C();
  OUTLINED_FUNCTION_5_0();
  sub_2237B5E6C();
  return sub_2237B636C();
}

void sub_223778FB4(uint64_t a1, char a2)
{
  sub_22376AC64(a2);
  v3 = v2;
  sub_2237B5E6C();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_223779010(uint64_t a1, char a2)
{
  sub_2237B634C();
  sub_22376AC64(a2);
  v4 = v3;
  sub_2237B5E6C();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_2237B636C();
}

uint64_t sub_223779070(uint64_t a1)
{
  sub_2237B634C();
  OUTLINED_FUNCTION_5_0();
  sub_2237B5E6C();
  return sub_2237B636C();
}

unint64_t sub_2237790B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223778E80(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2237790E0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22376AC64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22377917C(uint64_t a1)
{
  v2 = sub_2237B5E1C();
  v3 = [v1 factorLevelsWithNamespaceName_];

  sub_223766240(0, &unk_28131A7E8, 0x277D73B08);
  v4 = sub_2237B5F2C();

  return v4;
}

uint64_t sub_2237791F4@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() clientWithIdentifier_];
  result = sub_223766240(0, &qword_28131A7B0, 0x277D73660);
  a1[3] = result;
  a1[4] = &off_2836D18E8;
  *a1 = v2;
  return result;
}

uint64_t sub_22377926C()
{

  sub_2237692F0(v0 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_currentSessionId, &qword_27D097A50, &unk_2237B7800);
  *(v0 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging), v1, v2, v3, v4, v5, v6, v7;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetSetObserverProvider));
  return v0;
}

uint64_t sub_2237792D4()
{
  sub_22377926C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AssetInstrumentationLogger(uint64_t a1)
{
  result = qword_28131AE58;
  if (!qword_28131AE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_223779380(uint64_t a1)
{
  sub_22377944C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22377944C(uint64_t a1)
{
  if (!qword_28131B4C8)
  {
    sub_2237B412C();
    v1 = sub_2237B60AC();
    if (!v2)
    {
      atomic_store(v1, &qword_28131B4C8);
    }
  }
}

uint64_t sub_2237794A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2237A93E4(*a1, *v2);
  *a2 = result;
  return result;
}

void sub_223779500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a1;
  v85 = a2;

  v4 = sub_2237B5EDC();
  v12 = v4;
  v13 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v12 = sub_223779A78(v4, v5);
    v47 = v46;
    v13, v46, v48, v49, v50, v51, v52, v53;
    v13 = v47;
    if ((v47 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v12 & 0x1000000000000000) != 0)
    {
      v14 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v5 = v12 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = sub_2237B617C();
    }

    v15 = *v14;
    if (v15 == 43)
    {
      if (v5 >= 1)
      {
        v28 = v5 - 1;
        if (v5 != 1)
        {
          v29 = a3 + 48;
          v30 = a3 + 55;
          v31 = a3 + 87;
          if (a3 > 10)
          {
            v29 = 58;
          }

          else
          {
            v31 = 97;
            v30 = 65;
          }

          if (v14)
          {
            v32 = 0;
            v33 = v14 + 1;
            v22 = 1;
            do
            {
              v34 = *v33;
              if (v34 < 0x30 || v34 >= v29)
              {
                if (v34 < 0x41 || v34 >= v30)
                {
                  if (v34 < 0x61 || v34 >= v31)
                  {
                    goto LABEL_129;
                  }

                  v35 = -87;
                }

                else
                {
                  v35 = -55;
                }
              }

              else
              {
                v35 = -48;
              }

              v36 = v32 * a3;
              if ((v36 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v37 = v34 + v35;
              v27 = __CFADD__(v36, v37);
              v32 = v36 + v37;
              if (v27)
              {
                goto LABEL_128;
              }

              ++v33;
              --v28;
            }

            while (v28);
LABEL_47:
            v22 = 0;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v22 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v15 != 45)
    {
      if (v5)
      {
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        if (v14)
        {
          v41 = 0;
          v22 = 1;
          do
          {
            v42 = *v14;
            if (v42 < 0x30 || v42 >= v38)
            {
              if (v42 < 0x41 || v42 >= v39)
              {
                if (v42 < 0x61 || v42 >= v40)
                {
                  goto LABEL_129;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v41 * a3;
            if ((v44 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v45 = v42 + v43;
            v27 = __CFADD__(v44, v45);
            v41 = v44 + v45;
            if (v27)
            {
              goto LABEL_128;
            }

            ++v14;
            --v5;
          }

          while (v5);
          v22 = 0;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v5 >= 1)
    {
      v16 = v5 - 1;
      if (v5 != 1)
      {
        v17 = a3 + 48;
        v18 = a3 + 55;
        v19 = a3 + 87;
        if (a3 > 10)
        {
          v17 = 58;
        }

        else
        {
          v19 = 97;
          v18 = 65;
        }

        if (v14)
        {
          v20 = 0;
          v21 = v14 + 1;
          v22 = 1;
          while (1)
          {
            v23 = *v21;
            if (v23 < 0x30 || v23 >= v17)
            {
              if (v23 < 0x41 || v23 >= v18)
              {
                if (v23 < 0x61 || v23 >= v19)
                {
                  goto LABEL_129;
                }

                v24 = -87;
              }

              else
              {
                v24 = -55;
              }
            }

            else
            {
              v24 = -48;
            }

            v25 = v20 * a3;
            if ((v25 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v26 = v23 + v24;
            v27 = v25 >= v26;
            v20 = v25 - v26;
            if (!v27)
            {
              goto LABEL_128;
            }

            ++v21;
            if (!--v16)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v22 = 0;
LABEL_129:
        v13, v5, v6, v7, v8, v9, v10, v11;
        LOBYTE(v84) = v22;
        return;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v54 = HIBYTE(v13) & 0xF;
  v84 = v12;
  v85 = v13 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      if (v54)
      {
        v75 = 0;
        v76 = a3 + 48;
        v77 = a3 + 55;
        v78 = a3 + 87;
        if (a3 > 10)
        {
          v76 = 58;
        }

        else
        {
          v78 = 97;
          v77 = 65;
        }

        v79 = &v84;
        v22 = 1;
        while (1)
        {
          v80 = *v79;
          if (v80 < 0x30 || v80 >= v76)
          {
            if (v80 < 0x41 || v80 >= v77)
            {
              if (v80 < 0x61 || v80 >= v78)
              {
                goto LABEL_129;
              }

              v81 = -87;
            }

            else
            {
              v81 = -55;
            }
          }

          else
          {
            v81 = -48;
          }

          v82 = v75 * a3;
          if ((v82 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v83 = v80 + v81;
          v27 = __CFADD__(v82, v83);
          v75 = v82 + v83;
          if (v27)
          {
            goto LABEL_128;
          }

          v79 = (v79 + 1);
          if (!--v54)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v54)
    {
      v55 = v54 - 1;
      if (v55)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v84 + 1;
        v22 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_129;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v63 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v64 = v61 + v62;
          v27 = v63 >= v64;
          v56 = v63 - v64;
          if (!v27)
          {
            goto LABEL_128;
          }

          ++v60;
          if (!--v55)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v54)
  {
    v65 = v54 - 1;
    if (v65)
    {
      v66 = 0;
      v67 = a3 + 48;
      v68 = a3 + 55;
      v69 = a3 + 87;
      if (a3 > 10)
      {
        v67 = 58;
      }

      else
      {
        v69 = 97;
        v68 = 65;
      }

      v70 = &v84 + 1;
      v22 = 1;
      do
      {
        v71 = *v70;
        if (v71 < 0x30 || v71 >= v67)
        {
          if (v71 < 0x41 || v71 >= v68)
          {
            if (v71 < 0x61 || v71 >= v69)
            {
              goto LABEL_129;
            }

            v72 = -87;
          }

          else
          {
            v72 = -55;
          }
        }

        else
        {
          v72 = -48;
        }

        v73 = v66 * a3;
        if ((v73 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v74 = v71 + v72;
        v27 = __CFADD__(v73, v74);
        v66 = v73 + v74;
        if (v27)
        {
          goto LABEL_128;
        }

        ++v70;
        --v65;
      }

      while (v65);
LABEL_127:
      v22 = 0;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
}

uint64_t sub_223779A78(unint64_t a1, unint64_t a2)
{
  v2 = sub_223779AE4(sub_223779AE0, 0, a1, a2);
  v4 = v3;
  v7 = sub_223779B18(v2, v5, v6, v3);
  v4, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

uint64_t sub_223779AE4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_223779B18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2237B60BC();
    if (!v9 || (v10 = v9, v11 = sub_223767C18(v9, 0), v12 = sub_223779C78(v22, (v11 + 4), v10, a1, a2, a3, a4), v13 = v22[3], , v13, v14, v15, v16, v17, v18, v19, v20, v12 == v10))
    {
      v21 = sub_2237B5E5C();

      return v21;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22[0] = a3;
      v22[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2237B5E5C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2237B617C();
LABEL_4:

  return sub_2237B5E5C();
}

unint64_t sub_223779C78(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_223779E88(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2237B5EBC();
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
          result = sub_2237B617C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_223779E88(v12, a6, a7);
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

    result = sub_2237B5E9C();
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

unint64_t sub_223779E88(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2237B5ECC();
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
    v5 = MEMORY[0x223DEAB00](15, a1 >> 16);
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

char *sub_223779F04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223779F44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_223779F24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22377A078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_223779F44(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097328, &qword_2237B77E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_2237A6C5C(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, v8);
    goto LABEL_16;
  }

  __break(1u);
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

void *sub_22377A078(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097360, &qword_2237B7818);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_2237A6CA4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097368, &unk_2237B7820);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for TrialAssetNamespaces(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TrialAssetNamespaces(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22377A30C()
{
  result = qword_27D097370;
  if (!qword_27D097370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D097378, "f>");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097370);
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

unint64_t sub_22377A3BC()
{
  result = qword_27D097380;
  if (!qword_27D097380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097380);
  }

  return result;
}

uint64_t sub_22377A42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22377A554;

  return v9(a1, a2, a3);
}

uint64_t sub_22377A554(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22377A650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22377A798;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22377A798()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22377A88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v74 = a7;
  v78 = a4;
  v79 = a5;
  v76 = a2;
  v77 = a3;
  v75 = a8;
  v80[1] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097700, &qword_2237B7A18);
  OUTLINED_FUNCTION_1(v10);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v11);
  v73 = v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097708, &qword_2237B7A20);
  OUTLINED_FUNCTION_1(v13);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  v72 = v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097710, &qword_2237B7A28);
  OUTLINED_FUNCTION_1(v16);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v17);
  v19 = v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097718, &unk_2237B7A30);
  OUTLINED_FUNCTION_1(v20);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v21);
  v23 = v64 - v22;
  v24 = [a6 location];
  if (!v24)
  {
LABEL_9:
    v70 = 0xF000000000000000;
    v71 = 0;
    goto LABEL_10;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v80[0] = 0;
  v27 = [v26 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:v80];
  v28 = v80[0];
  if (!v27)
  {
    v31 = v28;
    v32 = sub_2237B406C();

    swift_willThrow();
    if (qword_27D0972A0 != -1)
    {
      swift_once();
    }

    v33 = sub_2237B5C9C();
    __swift_project_value_buffer(v33, qword_27D0999E8);
    v34 = v32;
    v35 = sub_2237B5C8C();
    v36 = sub_2237B5FFC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v23;
      v39 = swift_slowAlloc();
      *v37 = 138412290;
      v40 = v32;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_22375F000, v35, v36, "IntelligenceFlowProxy: failed to encode location via keyed archiver with error %@", v37, 0xCu);
      sub_22377AE40(v39);
      v42 = v39;
      v23 = v38;
      MEMORY[0x223DEB690](v42, -1, -1);
      MEMORY[0x223DEB690](v37, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

  v29 = sub_2237B408C();
  v70 = v30;
  v71 = v29;

LABEL_10:
  v43 = sub_2237B40FC();
  v67 = v44;
  v68 = v43;
  v45 = sub_22377ADDC(a6);
  v65 = v46;
  v66 = v45;
  v64[1] = [a6 isEyesFree];
  v47 = [a6 isVoiceTriggerEnabled];
  v69 = a1;
  v64[0] = v47;
  [a6 isTextToSpeechEnabled];
  [a6 isTriggerlessFollowup];
  v48 = [a6 deviceRestrictions];
  sub_2237B5F2C();

  v49 = [a6 bargeInModes];
  sub_2237B5F2C();

  v50 = sub_2237B58FC();
  OUTLINED_FUNCTION_2_1(v23, v51, v52, v50);
  v53 = sub_2237B58EC();
  OUTLINED_FUNCTION_2_1(v19, v54, v55, v53);
  v56 = sub_2237B590C();
  OUTLINED_FUNCTION_2_1(v72, v57, v58, v56);
  v59 = sub_2237B58DC();
  OUTLINED_FUNCTION_2_1(v73, v60, v61, v59);
  sub_2237B591C();

  v62 = sub_2237B412C();
  return (*(*(v62 - 8) + 8))(v69, v62);
}

uint64_t sub_22377ADDC(void *a1)
{
  v1 = [a1 responseMode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2237B5E2C();

  return v3;
}

uint64_t sub_22377AE40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097BE0, &qword_2237B88D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_22377AEC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22377AF04(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22377AF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097720, &qword_2237B7AF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_2237B420C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237B41FC();
  (*(v8 + 104))(v10, *MEMORY[0x277D1C6B8], v7);
  sub_2237B426C();
  v11 = sub_2237B592C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a3, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  sub_2237B425C();
  return (*(v12 + 8))(a3, v11);
}

uint64_t sub_22377B140(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22377B180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void PrescribedActionDescriptor.toolID.setter()
{
  OUTLINED_FUNCTION_11_0();
  *(v1 + 8), v3, v4, v5, v6, v7, v8, v9;
  *v1 = v2;
  *(v1 + 8) = v0;
}

uint64_t PrescribedActionDescriptor.parametersData.getter()
{
  v0 = OUTLINED_FUNCTION_1_1();
  sub_22377B28C(v0, v1);
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_22377B28C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22377B2A0(a1, a2);
  }

  return a1;
}

uint64_t sub_22377B2A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t PrescribedActionDescriptor.parametersData.setter()
{
  OUTLINED_FUNCTION_11_0();
  result = sub_22377B32C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_22377B32C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22377B340(a1, a2);
  }

  return a1;
}

uint64_t sub_22377B340(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t PrescribedActionDescriptor.additionalContentData.getter()
{
  v0 = OUTLINED_FUNCTION_1_1();
  sub_22377B28C(v0, v1);
  return OUTLINED_FUNCTION_1_1();
}

uint64_t PrescribedActionDescriptor.additionalContentData.setter()
{
  OUTLINED_FUNCTION_11_0();
  result = sub_22377B32C(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void PrescribedActionDescriptor.actionTraceID.setter()
{
  OUTLINED_FUNCTION_11_0();
  *(v1 + 56), v3, v4, v5, v6, v7, v8, v9;
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t PrescribedActionDescriptor.parameters.getter()
{
  if (*(v0 + 24) >> 60 == 15)
  {
    sub_2237B5CBC();

    return sub_2237B5DBC();
  }

  else
  {
    sub_2237B3FDC();
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_16();
    sub_22377B2A0(v2, v3);
    sub_2237B3FCC();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097730, &unk_2237B7BA0);
    v5 = sub_22377B6F4();
    OUTLINED_FUNCTION_8_0(v5);
    if (v4)
    {

      if (qword_27D0972A0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
        swift_once();
      }

      v6 = sub_2237B5C9C();
      __swift_project_value_buffer(v6, qword_27D0999E8);
      v7 = v4;
      v8 = sub_2237B5C8C();
      v9 = sub_2237B5FEC();

      if (os_log_type_enabled(v8, v9))
      {
        OUTLINED_FUNCTION_14_0();
        v10 = swift_slowAlloc();
        OUTLINED_FUNCTION_13_0();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        v12 = v4;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v13;
        *v11 = v13;
        OUTLINED_FUNCTION_19(&dword_22375F000, v14, v15, "JSON decoder failed to decode the parameters with error %@. Parameters will be passed as an empty collection to the tool and the tool is expected to properly generate a failing response.");
        sub_2237692F0(v11, &qword_27D097BE0, &qword_2237B88D0);
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x223DEB690]();
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x223DEB690]();
      }

      sub_2237B5CBC();
      v16 = sub_2237B5DBC();

      v17 = OUTLINED_FUNCTION_16();
      sub_22377B32C(v17, v18);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_16();
      sub_22377B32C(v19, v20);

      return v21;
    }

    return v16;
  }
}

unint64_t sub_22377B6F4()
{
  result = qword_27D097738;
  if (!qword_27D097738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D097730, &unk_2237B7BA0);
    sub_22377DAC4(&unk_27D097740, MEMORY[0x277D72E58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097738);
  }

  return result;
}

uint64_t PrescribedActionDescriptor.additionalContent.getter()
{
  if (*(v0 + 40) >> 60 == 15)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2237B3FDC();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_16();
  sub_22377B2A0(v1, v2);
  sub_2237B3FCC();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097750, &qword_2237B7BB0);
  v4 = sub_22377DB08(&qword_27D097758, &unk_27D097740, MEMORY[0x277D72E58], MEMORY[0x277D83978]);
  OUTLINED_FUNCTION_8_0(v4);
  if (v3)
  {

    if (qword_27D0972A0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v5 = sub_2237B5C9C();
    __swift_project_value_buffer(v5, qword_27D0999E8);
    v6 = v3;
    v7 = sub_2237B5C8C();
    v8 = sub_2237B5FEC();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_14_0();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_0();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v3;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      OUTLINED_FUNCTION_19(&dword_22375F000, v13, v14, "JSON decoder failed to decode additional content with error %@. No additional content will be passed to planner.");
      sub_2237692F0(v10, &qword_27D097BE0, &qword_2237B88D0);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x223DEB690]();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x223DEB690]();
    }

    v15 = OUTLINED_FUNCTION_16();
    sub_22377B32C(v15, v16);

    return MEMORY[0x277D84F90];
  }

  v18 = OUTLINED_FUNCTION_16();
  sub_22377B32C(v18, v19);

  return v20;
}

void PrescribedActionDescriptor.init(toolID:parameters:additionalContent:actionTraceID:)(uint64_t a1@<X0>, SRDRequestDispatcherInternal *a2@<X1>, SRDRequestDispatcherInternal *a3@<X2>, SRDRequestDispatcherInternal *a4@<X3>, uint64_t a5@<X4>, SRDRequestDispatcherInternal *a6@<X5>, void *a7@<X8>)
{
  sub_2237B400C();
  swift_allocObject();
  sub_2237B3FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097730, &unk_2237B7BA0);
  v14 = sub_22377DA1C();
  v22 = OUTLINED_FUNCTION_12_1(v14, v15, v16, v17, v18, v19, v20, v21, v89, v91, v93, v96, v99, a5, v104);
  if (v7)
  {
    a3, v23, v24, v25, v26, v27, v28, v29;
    a2, v30, v31, v32, v33, v34, v35, v36;
    a4, v37, v38, v39, v40, v41, v42, v43;
    a6, v44, v45, v46, v47, v48, v49, v50;
    if (qword_27D0972A0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v51 = sub_2237B5C9C();
    __swift_project_value_buffer(v51, qword_27D0999E8);
    v52 = v7;
    v53 = sub_2237B5C8C();
    v54 = sub_2237B5FFC();

    if (os_log_type_enabled(v53, v54))
    {
      OUTLINED_FUNCTION_14_0();
      v55 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_0();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      v57 = v7;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v58;
      *v56 = v58;
      OUTLINED_FUNCTION_20_2(&dword_22375F000, v59, v60, "JSON encoder failed to encode the parameters with error %@. This is a critical error.");
      sub_2237692F0(v56, &qword_27D097BE0, &qword_2237B88D0);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x223DEB690]();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x223DEB690]();
    }

    swift_willThrow();

    sub_22377B32C(0, 0xF000000000000000);
    v80 = OUTLINED_FUNCTION_6_0();
    sub_22377B32C(v80, v81);
  }

  else
  {
    v94 = a6;
    v97 = v23;
    v100 = v22;
    v61 = v103;
    a3, v23, v24, v25, v26, v27, v28, v29;
    v62 = OUTLINED_FUNCTION_6_0();
    sub_22377B32C(v62, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097750, &qword_2237B7BB0);
    v64 = sub_22377DB08(&qword_27D097770, &qword_27D097768, MEMORY[0x277D72E50], MEMORY[0x277D83948]);
    v72 = OUTLINED_FUNCTION_12_1(v64, v65, v66, v67, v68, v69, v70, v71, v90, a2, v94, v97, v100, v103, v105);
    v82 = v72;
    v83 = v73;
    a4, v73, v74, v75, v76, v77, v78, v79;

    v84 = OUTLINED_FUNCTION_6_0();
    sub_22377B32C(v84, v85);
    v86 = v95;
    if (v95)
    {
      v87 = v61;
      v88 = v92;
    }

    else
    {

      v87 = a1;
      v86 = v88;
    }

    *a7 = a1;
    a7[1] = v88;
    a7[2] = v101;
    a7[3] = v98;
    a7[4] = v82;
    a7[5] = v83;
    a7[6] = v87;
    a7[7] = v86;
  }
}

uint64_t sub_22377BD48(uint64_t a1, SRDRequestDispatcherInternal *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v10 = a1 == 0x44496C6F6F74 && a2 == 0xE600000000000000;
  if (v10 || (sub_2237B629C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEE00617461447372;
    v13 = a1 == 0x6574656D61726170 && a2 == 0xEE00617461447372;
    if (v13 || (sub_2237B629C() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x80000002237B9AC0;
      v15 = a1 == 0xD000000000000015 && 0x80000002237B9AC0 == a2;
      if (v15 || (sub_2237B629C() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x72546E6F69746361 && a2 == 0xED00004449656361)
      {
        a2, 0xED00004449656361, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v17 = sub_2237B629C();
        a2, v18, v19, v20, v21, v22, v23, v24;
        if (v17)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22377BEF4(unsigned __int8 a1)
{
  sub_2237B634C();
  MEMORY[0x223DEAFB0](a1);
  return sub_2237B636C();
}

unint64_t sub_22377BF48(char a1)
{
  result = 0x44496C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x6574656D61726170;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x72546E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22377C000(uint64_t a1)
{
  v2 = *v1;
  sub_2237B634C();
  MEMORY[0x223DEAFB0](v2);
  return sub_2237B636C();
}

uint64_t sub_22377C04C@<X0>(uint64_t a1@<X0>, SRDRequestDispatcherInternal *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X2>, void *a5@<X3>, uint64_t a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_22377BD48(a1, a2, a4, a5, a6, a7, a8, a9);
  *a3 = result;
  return result;
}

uint64_t sub_22377C094@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22377BEB4();
  *a1 = result;
  return result;
}

uint64_t sub_22377C0BC(uint64_t a1)
{
  v2 = sub_22377DB90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22377C0F8(uint64_t a1)
{
  v2 = sub_22377DB90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrescribedActionDescriptor.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097778, &qword_2237B7BB8);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v3);
  v15 = v1[3];
  v16 = v1[2];
  v13 = v1[5];
  v14 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22377DB90();
  sub_2237B63CC();
  sub_2237B625C();
  if (!v17)
  {
    sub_22377B28C(v16, v15);
    v4 = sub_22377DBE4();
    OUTLINED_FUNCTION_10_1(v4, v5, v6, MEMORY[0x277CC9318]);
    sub_22377B32C(v16, v15);
    v7 = sub_22377B28C(v14, v13);
    OUTLINED_FUNCTION_10_1(v7, v8, v9, MEMORY[0x277CC9318]);
    sub_22377B32C(v14, v13);
    sub_2237B625C();
  }

  v10 = OUTLINED_FUNCTION_16();
  return v11(v10);
}

uint64_t PrescribedActionDescriptor.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097790, &qword_2237B7BC0);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_22377DB90();
  sub_2237B63BC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    OUTLINED_FUNCTION_16_0();
    sub_22377B32C(v13, a2);
    return sub_22377B32C(v11, v12);
  }

  else
  {
    LOBYTE(v42) = 0;
    v14 = sub_2237B620C();
    v37 = v15;
    LOBYTE(v38) = 1;
    sub_22377DC38();
    OUTLINED_FUNCTION_9_0(MEMORY[0x277CC9318]);
    v35 = a2;
    v36 = v42;
    v16 = v43;
    v17 = OUTLINED_FUNCTION_6_0();
    sub_22377B32C(v17, v18);
    LOBYTE(v38) = 2;
    OUTLINED_FUNCTION_9_0(MEMORY[0x277CC9318]);
    v34 = v14;
    v19 = v42;
    v20 = v43;
    v21 = OUTLINED_FUNCTION_6_0();
    sub_22377B32C(v21, v22);
    v50 = 3;
    v23 = sub_2237B620C();
    v24 = v10;
    v26 = v25;
    (*(v7 + 8))(v24, v5);
    v27 = v35;
    v29 = v36;
    v28 = v37;
    *&v38 = v34;
    *(&v38 + 1) = v37;
    *&v39 = v36;
    *(&v39 + 1) = v16;
    *&v40 = v19;
    *(&v40 + 1) = v20;
    *&v41 = v23;
    *(&v41 + 1) = v26;
    v30 = v39;
    *v35 = v38;
    v27[1] = v30;
    v31 = v41;
    v27[2] = v40;
    v27[3] = v31;
    sub_22377DC8C(&v38, &v42);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v42 = v34;
    v43 = v28;
    v44 = v29;
    v45 = v16;
    v46 = v19;
    v47 = v20;
    v48 = v23;
    v49 = v26;
    return sub_22377DCC4(&v42);
  }
}

uint64_t sub_22377C638()
{
  OUTLINED_FUNCTION_17_2();

  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_22377C6A8()
{
  OUTLINED_FUNCTION_17_2();
  v0 = OUTLINED_FUNCTION_1_1();
  sub_22377B28C(v0, v1);
  return OUTLINED_FUNCTION_1_1();
}

id sub_22377C718(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_2237B407C();
    v5 = OUTLINED_FUNCTION_1_1();
    sub_22377B32C(v5, v6);
  }

  return v4;
}

uint64_t sub_22377C788()
{
  OUTLINED_FUNCTION_17_2();
  v0 = OUTLINED_FUNCTION_1_1();
  sub_22377B28C(v0, v1);
  return OUTLINED_FUNCTION_1_1();
}

void sub_22377C7D4(void *a1, uint64_t a2, void *a3, void (*a4)(void *, unint64_t))
{
  v5 = a3;
  if (a3)
  {
    v6 = a1;
    v7 = v5;
    v5 = sub_2237B408C();
    v9 = v8;
  }

  else
  {
    v10 = a1;
    v9 = 0xF000000000000000;
  }

  a4(v5, v9);
}

id sub_22377C888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v4 = v3;
  v5 = sub_2237B5E1C();
  v4, v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

uint64_t sub_22377C8D8()
{
  OUTLINED_FUNCTION_17_2();

  return OUTLINED_FUNCTION_1_1();
}

void sub_22377C924(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_2237B5E2C();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

unint64_t sub_22377C9B8(char a1)
{
  result = 0x44496C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x6574656D61726170;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x72546E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

id sub_22377CA54(uint64_t a1, SRDRequestDispatcherInternal *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, SRDRequestDispatcherInternal *a8)
{
  v13 = a2;
  v14 = a1;
  v15 = &v8[OBJC_IVAR___SRDPrescribedActionDescriptor_parametersData];
  *v15 = xmmword_2237B7B90;
  v16 = &v8[OBJC_IVAR___SRDPrescribedActionDescriptor_additionalContentData];
  *&v8[OBJC_IVAR___SRDPrescribedActionDescriptor_additionalContentData] = xmmword_2237B7B90;
  v17 = &v8[OBJC_IVAR___SRDPrescribedActionDescriptor_toolID];
  *v17 = a1;
  *(v17 + 1) = a2;
  v19 = *v15;
  v18 = *(v15 + 1);
  *v15 = a3;
  *(v15 + 1) = a4;

  sub_22377B28C(a3, a4);
  sub_22377B32C(v19, v18);
  v20 = *v16;
  v21 = v16[1];
  *v16 = a5;
  v16[1] = a6;
  sub_22377B28C(a5, a6);
  sub_22377B32C(v20, v21);
  if (a8)
  {
    v13, v22, v23, v24, v25, v26, v27, v28;
    v13 = a8;
    v14 = a7;
  }

  v29 = &v8[OBJC_IVAR___SRDPrescribedActionDescriptor_actionTraceID];
  *v29 = v14;
  v29[1] = v13;
  v34.receiver = v8;
  v34.super_class = SRDPrescribedActionDescriptor;
  v30 = objc_msgSendSuper2(&v34, sel_init, a7);
  sub_22377B32C(a5, a6);
  sub_22377B32C(a3, a4);
  return v30;
}

uint64_t sub_22377CC98()
{
  v1 = [v0 toolID];
  v2 = sub_2237B5E2C();
  v4 = v3;

  v5 = MEMORY[0x277D837D0];
  v19 = MEMORY[0x277D837D0];
  v17 = v2;
  v18 = v4;
  sub_22377CE44(&v17, 0);
  sub_2237692F0(&v17, &qword_27D097350, qword_2237B7EC0);
  v6 = sub_22377DD38(v0, &selRef_parametersData);
  if (v7 >> 60 == 15)
  {
    v6 = OUTLINED_FUNCTION_18_0();
  }

  else
  {
    v8 = MEMORY[0x277CC9318];
  }

  v17 = v6;
  v18 = v7;
  v19 = v8;
  sub_22377CE44(&v17, 1);
  sub_2237692F0(&v17, &qword_27D097350, qword_2237B7EC0);
  v9 = sub_22377DD38(v0, &selRef_additionalContentData);
  if (v10 >> 60 == 15)
  {
    v9 = OUTLINED_FUNCTION_18_0();
  }

  else
  {
    v11 = MEMORY[0x277CC9318];
  }

  v17 = v9;
  v18 = v10;
  v19 = v11;
  sub_22377CE44(&v17, 2);
  sub_2237692F0(&v17, &qword_27D097350, qword_2237B7EC0);
  v12 = [v0 actionTraceID];
  v13 = sub_2237B5E2C();
  v15 = v14;

  v19 = v5;
  v17 = v13;
  v18 = v15;
  sub_22377CE44(&v17, 3);
  return sub_2237692F0(&v17, &qword_27D097350, qword_2237B7EC0);
}

void sub_22377CE44(uint64_t a1, char a2)
{
  sub_223773DA0(a1, v19);
  v4 = v20;
  if (v20)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_2237B628C();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v10 = 0xEE00617461447372;
      break;
    case 2:
      v10 = 0x80000002237B9AC0;
      break;
    case 3:
      v10 = 0xED00004449656361;
      break;
    default:
      break;
  }

  v11 = sub_2237B5E1C();
  v10, v12, v13, v14, v15, v16, v17, v18;
  [v2 encodeObject:v9 forKey:v11];
  swift_unknownObjectRelease();
}

id SRDPrescribedActionDescriptor.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___SRDPrescribedActionDescriptor_parametersData];
  *&v2[OBJC_IVAR___SRDPrescribedActionDescriptor_parametersData] = xmmword_2237B7B90;
  v5 = &v2[OBJC_IVAR___SRDPrescribedActionDescriptor_additionalContentData];
  *&v2[OBJC_IVAR___SRDPrescribedActionDescriptor_additionalContentData] = xmmword_2237B7B90;
  v6 = sub_22377D240(0);
  if (!v7)
  {

LABEL_6:
    sub_22377B32C(*v4, *(v4 + 1));
    sub_22377B32C(*v5, *(v5 + 1));
    type metadata accessor for SRDPrescribedActionDescriptor();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v8 = v6;
  v9 = v7;
  v10 = sub_22377D240(3);
  if (!v11)
  {

    v9, v21, v22, v23, v24, v25, v26, v27;
    goto LABEL_6;
  }

  v12 = v10;
  v13 = v11;
  v14 = &v2[OBJC_IVAR___SRDPrescribedActionDescriptor_toolID];
  *v14 = v8;
  v14[1] = v9;
  sub_22377D3AC(1, &v30);
  v15 = *v4;
  v16 = *(v4 + 1);
  *v4 = v30;
  sub_22377B32C(v15, v16);
  sub_22377D3AC(2, &v30);
  v17 = *v5;
  v18 = *(v5 + 1);
  *v5 = v30;
  sub_22377B32C(v17, v18);
  v19 = &v2[OBJC_IVAR___SRDPrescribedActionDescriptor_actionTraceID];
  *v19 = v12;
  v19[1] = v13;
  v29.receiver = v2;
  v29.super_class = SRDPrescribedActionDescriptor;
  v20 = objc_msgSendSuper2(&v29, sel_init);

  return v20;
}

uint64_t sub_22377D240(char a1)
{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xEE00617461447372;
      break;
    case 2:
      v2 = 0x80000002237B9AC0;
      break;
    case 3:
      v2 = 0xED00004449656361;
      break;
    default:
      break;
  }

  v3 = sub_2237B5E1C();
  v2, v4, v5, v6, v7, v8, v9, v10;
  v11 = [v1 decodeObjectForKey_];

  if (v11)
  {
    sub_2237B60EC();
    swift_unknownObjectRelease();
    sub_223774DE4(&v13, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

double sub_22377D3AC@<D0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v3 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      v3 = 0xEE00617461447372;
      break;
    case 2:
      v3 = 0x80000002237B9AC0;
      break;
    case 3:
      v3 = 0xED00004449656361;
      break;
    default:
      break;
  }

  v5 = sub_2237B5E1C();
  v3, v6, v7, v8, v9, v10, v11, v12;
  v13 = [v2 decodeObjectForKey_];

  if (v13)
  {
    sub_2237B60EC();
    swift_unknownObjectRelease();
    sub_223774DE4(&v15, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *a2 = xmmword_2237B7B90;
  }

  return result;
}

id SRDPrescribedActionDescriptor.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t SRDPrescribedActionDescriptor.swiftDescriptor.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 toolID];
  v4 = sub_2237B5E2C();
  v6 = v5;

  v7 = sub_22377DD38(v1, &selRef_parametersData);
  v9 = v8;
  v10 = sub_22377DD38(v1, &selRef_additionalContentData);
  v12 = v11;
  v13 = [v1 actionTraceID];
  v14 = sub_2237B5E2C();
  v16 = v15;

  *a1 = v4;
  a1[1] = v6;
  v17 = OUTLINED_FUNCTION_6_0();
  sub_22377B32C(v17, v18);
  a1[2] = v7;
  a1[3] = v9;
  v19 = OUTLINED_FUNCTION_6_0();
  result = sub_22377B32C(v19, v20);
  a1[4] = v10;
  a1[5] = v12;
  a1[6] = v14;
  a1[7] = v16;
  return result;
}

id PrescribedActionDescriptor.objcDescriptor.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = objc_allocWithZone(SRDPrescribedActionDescriptor);

  sub_22377B28C(v3, v4);
  sub_22377B28C(v5, v6);

  return sub_22377D7CC(v1, v2, v3, v4, v5, v6, v8, v7);
}

id sub_22377D7CC(uint64_t a1, SRDRequestDispatcherInternal *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, SRDRequestDispatcherInternal *a8)
{
  v15 = sub_2237B5E1C();
  a2, v16, v17, v18, v19, v20, v21, v22;
  if (a4 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_2237B407C();
    sub_22377B32C(a3, a4);
  }

  if (a6 >> 60 != 15)
  {
    v24 = sub_2237B407C();
    sub_22377B32C(a5, a6);
    if (a8)
    {
      goto LABEL_6;
    }

LABEL_8:
    v25 = 0;
    goto LABEL_9;
  }

  v24 = 0;
  if (!a8)
  {
    goto LABEL_8;
  }

LABEL_6:
  v25 = sub_2237B5E1C();
  a8, v26, v27, v28, v29, v30, v31, v32;
LABEL_9:
  v33 = [v8 initWithToolID:v15 parametersData:v23 additionalContentData:v24 actionTraceID:v25];

  return v33;
}

uint64_t sub_22377D8F0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22377D93C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_22377D99C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_22377D9AC()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

unint64_t sub_22377DA1C()
{
  result = qword_27D097760;
  if (!qword_27D097760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D097730, &unk_2237B7BA0);
    sub_22377DAC4(&qword_27D097768, MEMORY[0x277D72E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097760);
  }

  return result;
}

uint64_t sub_22377DAC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2237B5CBC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22377DB08(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D097750, &qword_2237B7BB0);
    sub_22377DAC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22377DB90()
{
  result = qword_27D097780;
  if (!qword_27D097780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097780);
  }

  return result;
}

unint64_t sub_22377DBE4()
{
  result = qword_27D097788;
  if (!qword_27D097788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097788);
  }

  return result;
}

unint64_t sub_22377DC38()
{
  result = qword_27D097798;
  if (!qword_27D097798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097798);
  }

  return result;
}

unint64_t type metadata accessor for SRDPrescribedActionDescriptor()
{
  result = qword_27D0977C0;
  if (!qword_27D0977C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0977C0);
  }

  return result;
}

uint64_t sub_22377DD38(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_2237B408C();
  }

  return OUTLINED_FUNCTION_1_1();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22377DDEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_22377DE2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrescribedActionDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PrescribedActionDescriptor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22377DFF4()
{
  result = qword_27D0977C8;
  if (!qword_27D0977C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0977C8);
  }

  return result;
}

unint64_t sub_22377E04C()
{
  result = qword_27D0977D0;
  if (!qword_27D0977D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0977D0);
  }

  return result;
}

unint64_t sub_22377E0A4()
{
  result = qword_27D0977D8;
  if (!qword_27D0977D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0977D8);
  }

  return result;
}

uint64_t sub_22377E0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22377A798;

  return v9(a1, a2, a3);
}

uint64_t sub_22377E220(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_2237B42AC();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v4 = sub_2237B431C();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22377E348, v1, 0);
}

uint64_t sub_22377E348()
{
  v35 = v0;
  if (qword_27D0972A0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_2237B5C9C();
  __swift_project_value_buffer(v5, qword_27D0999E8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2237B5C8C();
  v8 = sub_2237B5FEC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_2237B5E3C();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_223763694(v15, v17, &v34);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v14 + 4) = v18;
    _os_log_impl(&dword_22375F000, v7, v8, "IntelligenceFlowOutputHandler: received message from IF: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x223DEB690](v33, -1, -1);
    MEMORY[0x223DEB690](v14, -1, -1);
  }

  else
  {
    v26 = v0[6];
    v27 = v0[7];

    (*(v27 + 8))(v10, v26);
  }

  v29 = v0[4];
  v28 = v0[5];
  v30 = v0[3];
  sub_2237B430C();
  (*(v29 + 88))(v28, v30);
  (*(v29 + 8))(v28, v30);

  v31 = v0[1];

  return v31();
}

uint64_t sub_22377E5CC()
{
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22377E628(uint64_t a1)
{
  result = sub_22377E650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22377E650()
{
  result = qword_27D0977E8;
  if (!qword_27D0977E8)
  {
    type metadata accessor for IntelligenceFlowOutputHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0977E8);
  }

  return result;
}

uint64_t sub_22377E6D0(uint64_t a1)
{
  result = sub_2237B56DC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_22377E7A0()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27D0972A0);
  }

  v3 = sub_2237B5C9C();
  __swift_project_value_buffer(v3, qword_27D0999E8);
  v4 = sub_2237B5C8C();
  v5 = sub_2237B5FEC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22375F000, v4, v5, "Ending the session with deinit", v6, 2u);
    OUTLINED_FUNCTION_10();
  }

  v7 = *(v1 + 15);
  v8 = *(v1 + 17);
  v9 = *(v1 + 18);
  v10 = swift_allocObject();
  v10[2] = *(v2 + 80);
  v10[3] = *(v2 + 88);
  v10[4] = v7;
  v10[5] = v8;
  v10[6] = v9;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  sub_2237B587C();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v11 = qword_27D0999D0;
  sub_2237B56DC();
  OUTLINED_FUNCTION_25();
  (*(v12 + 8))(&v1[v11]);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_22377E98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[5] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[6] = AssociatedConformanceWitness;
  v8 = swift_task_alloc();
  v5[7] = v8;
  *v8 = v5;
  v8[1] = sub_22377EA9C;

  return MEMORY[0x2821A9F40](AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_22377EA9C()
{
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_14_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v4 = sub_2237B5F6C();

  return MEMORY[0x2822009F8](sub_22377EBE0, v4, v3);
}

uint64_t sub_22377EBE0()
{
  OUTLINED_FUNCTION_6_1();
  sub_2237B5A0C();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22377EC44()
{
  OUTLINED_FUNCTION_6_1();
  v1 = *(v0 + 32);
  sub_2237B586C();
  if (v1)
  {
    sub_2237B5FBC();
  }

  OUTLINED_FUNCTION_3_3();

  return v2();
}

uint64_t sub_22377ECC4()
{
  sub_22377E7A0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22377EDA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_22377EDF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_2237B56DC();
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2237B5C9C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097908, &qword_2237B8180);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32 - v17;
  swift_defaultActor_initialize();
  sub_2237B589C();
  sub_2237B5F8C();
  v19 = sub_2237B5FAC();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
  if (qword_27D0972A0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v12, qword_27D0999E8);
  (*(v13 + 16))(v15, v20, v12);
  v5[17] = sub_2237B588C();
  v5[18] = 0;
  v22 = v33;
  v21 = v34;
  v5[14] = a1;
  v5[15] = v22;
  v5[16] = v21;
  swift_unknownObjectRetain();

  v23 = v35;
  v24 = [v35 sharedUserId];
  if (v24)
  {
    v25 = v24;
    sub_2237B5E2C();

    sub_2237B56AC();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    v27 = v36;
    v26 = v37;
    (*(v37 + 32))(v36, v9, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    v27 = v36;
    sub_2237B56CC();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
    v26 = v37;
    if (EnumTagSinglePayload != 1)
    {
      sub_223781CE0(v9, &qword_27D097900, &qword_2237B8860);
    }
  }

  (*(v26 + 32))(v5 + qword_27D0999D0, v27, v10);
  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  *(v29 + 24) = v5;

  v30 = v23;

  sub_2237B587C();
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_22377F230(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_2237B59CC();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for IntelligenceFlowProxyConversationSessionInfo(0);
  v2[13] = swift_task_alloc();
  v4 = sub_2237B56DC();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_2237B598C();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = sub_2237B412C();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22377F440, 0, 0);
}

uint64_t sub_22377F440(uint64_t a1)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v5 = *(v1 + 160);
  v4 = *(v1 + 168);
  v6 = *(v1 + 144);
  v7 = *(v1 + 128);
  v8 = *(v1 + 120);
  v19 = *(v1 + 112);
  v20 = *(v1 + 152);
  v21 = *(v1 + 104);
  v22 = *(v1 + 96);
  v23 = *(v1 + 136);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  sub_2237B411C();
  (*(v4 + 16))(v2, v3, v5);
  v11 = [v10 languageCode];
  sub_2237B5E2C();

  v12 = qword_27D0999D0;
  *(v1 + 192) = qword_27D0999D0;
  (*(v8 + 16))(v7, v9 + v12, v19);
  [v10 clientAuditToken];
  *(v1 + 256) = v24;
  *(v1 + 272) = v25;
  *(v1 + 288) = 0;
  sub_2237B597C();
  (*(v6 + 16))(v21, v20, v23);
  *(v1 + 200) = *(v9 + 120);
  *(v1 + 40) = v22;
  *(v1 + 48) = sub_22377EDA8(&qword_27D097910, type metadata accessor for IntelligenceFlowProxyConversationSessionInfo, &unk_2237B822C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 16));
  sub_223781874(v21, boxed_opaque_existential_1);
  *(v1 + 208) = sub_2237B59EC();
  OUTLINED_FUNCTION_1_3();
  sub_22377EDA8(v14, v15, MEMORY[0x277D46B50]);
  v17 = sub_2237B5F6C();
  *(v1 + 216) = v17;
  *(v1 + 224) = v16;

  return MEMORY[0x2822009F8](sub_22377F664, v17, v16);
}

uint64_t sub_22377F664()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_3();
  v0[29] = sub_22377EDA8(v1, v2, MEMORY[0x277D46B40]);
  sub_2237B5A1C();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = v0[27];
  v4 = v0[28];

  return MEMORY[0x2822009F8](sub_22377F700, v3, v4);
}

uint64_t sub_22377F700()
{
  OUTLINED_FUNCTION_11_1();
  sub_2237B5A3C();
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_22377F7F0;

  return sub_22377FD40();
}

uint64_t sub_22377F7F0()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 248) = v0;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22377F8F0()
{
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  OUTLINED_FUNCTION_7_1();
  sub_22377EDA8(v7, v8, MEMORY[0x277D46B38]);
  v9 = swift_allocError();
  (*(v5 + 32))(v10, v4, v6);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v5 + 32, v1);
  (*(v2 + 8))(v4, v6);
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27D0972A0);
  }

  v11 = sub_2237B5C9C();
  OUTLINED_FUNCTION_24(v11, qword_27D0999E8);
  v12 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_20();
    v13 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_27(5.7779e-34);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_23(v14);
    OUTLINED_FUNCTION_8_1(&dword_22375F000, v15, v16, "IntelligenceFlowProxy: Starting intelligence flow session failed with error %@");
    sub_223781CE0(v13, &qword_27D097BE0, &qword_2237B88D0);
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_1();

  OUTLINED_FUNCTION_3_3();

  return v17();
}

uint64_t sub_22377FADC()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  sub_2237818D8(v0[13]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_9_1();

  OUTLINED_FUNCTION_3_3();

  return v7();
}

uint64_t sub_22377FBB0()
{
  v7 = *(v2 + 248);
  OUTLINED_FUNCTION_21();
  (*(v6 + 8))(v3, v4);
  (*(v5 + 8))(v0, v1);
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27D0972A0);
  }

  v8 = sub_2237B5C9C();
  OUTLINED_FUNCTION_24(v8, qword_27D0999E8);
  v9 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_20();
    v10 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_27(5.7779e-34);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_23(v11);
    OUTLINED_FUNCTION_8_1(&dword_22375F000, v12, v13, "IntelligenceFlowProxy: Starting intelligence flow session failed with error %@");
    sub_223781CE0(v10, &qword_27D097BE0, &qword_2237B88D0);
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_1();

  OUTLINED_FUNCTION_3_3();

  return v14();
}

uint64_t sub_22377FD40()
{
  v1[17] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097908, &qword_2237B8180);
  v1[18] = swift_task_alloc();
  v2 = sub_2237B59CC();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22377FE38, v0, 0);
}

uint64_t sub_22377FE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_30();
  a15 = v17;
  a16 = v18;
  OUTLINED_FUNCTION_12_2();
  a14 = v16;
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27D0972A0);
  }

  v19 = sub_2237B5C9C();
  __swift_project_value_buffer(v19, qword_27D0999E8);
  v20 = sub_2237B5C8C();
  v21 = sub_2237B5FEC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_20();
    v23 = swift_slowAlloc();
    a9 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_223763694(0xD000000000000013, 0x80000002237B9C00, &a9);
    _os_log_impl(&dword_22375F000, v20, v21, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10();
  }

  if (*(v16[17] + 144))
  {
    v24 = sub_2237B5C8C();
    v25 = sub_2237B5FEC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22375F000, v24, v25, "Subscription task was already set up, ignoring the call.", v26, 2u);
      MEMORY[0x223DEB690](v26, -1, -1);
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_26();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    sub_2237B59EC();
    OUTLINED_FUNCTION_1_3();
    sub_22377EDA8(v36, v37, MEMORY[0x277D46B40]);
    swift_task_alloc();
    OUTLINED_FUNCTION_15_0();
    v16[22] = v38;
    *v38 = v39;
    v38[1] = sub_2237800B4;
    OUTLINED_FUNCTION_26();

    return MEMORY[0x2821A9F50](v40, v41, v42, v43, v44, v45, v46, v47);
  }
}

uint64_t sub_2237800B4()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *v5 = *v1;

  if (!v0)
  {
    *(v4 + 184) = v3;
  }

  OUTLINED_FUNCTION_26();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2237801D8()
{
  OUTLINED_FUNCTION_11_1();
  sub_2237B596C();

  v3 = OUTLINED_FUNCTION_19_1();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v2[10] = swift_getAssociatedTypeWitness();
  v2[11] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 7);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v2[24] = v6;
  *v6 = v7;
  v6[1] = sub_2237802EC;

  return MEMORY[0x2821A9F00](boxed_opaque_existential_1, v0, v1);
}

uint64_t sub_2237802EC()
{
  OUTLINED_FUNCTION_11_1();
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_2237805FC;
  }

  else
  {
    v4 = sub_2237804E4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_223780414()
{
  OUTLINED_FUNCTION_11_1();
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  OUTLINED_FUNCTION_7_1();
  sub_22377EDA8(v4, v5, MEMORY[0x277D46B38]);
  swift_allocError();
  (*(v2 + 32))(v6, v1, v3);

  OUTLINED_FUNCTION_5_1();

  return v7();
}

uint64_t sub_2237804E4()
{
  OUTLINED_FUNCTION_11_1();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v2 + 128);
  v4 = sub_2237B5FAC();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  sub_223781B5C(v0 + 56, v0 + 96);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  sub_2237709BC((v0 + 96), (v5 + 4));
  v5[9] = v3;

  *(v2 + 144) = sub_223780F04(0, 0, v1, &unk_2237B81B0, v5);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  OUTLINED_FUNCTION_3_3();

  return v6();
}

uint64_t sub_2237805FC()
{
  OUTLINED_FUNCTION_6_1();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  OUTLINED_FUNCTION_5_1();

  return v1();
}

uint64_t sub_223780674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_2237B431C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097930, &unk_2237B81D0);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22378076C, 0, 0);
}

uint64_t sub_22378076C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12_2();
  v1 = v0[8];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_20_1();
  v5 = v4;
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2237B5FCC();

  v7 = OUTLINED_FUNCTION_19_1();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v0[14] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_4_2(v9);
  OUTLINED_FUNCTION_26();

  return MEMORY[0x282200310](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_2237808D8()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2237809D4()
{
  OUTLINED_FUNCTION_6_1();
  v1 = v0[13];
  v2 = v0[10];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

    OUTLINED_FUNCTION_5_1();

    return v3();
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v1, v2);
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_223780C1C;
    v6 = v0[12];

    return sub_22377E220(v6);
  }
}

uint64_t sub_223780AE8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27D0972A0);
  }

  v2 = sub_2237B5C9C();
  OUTLINED_FUNCTION_24(v2, qword_27D0999E8);
  v3 = sub_2237B5C8C();
  sub_2237B5FEC();
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_20();
    v4 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_27(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_23(v5);
    OUTLINED_FUNCTION_8_1(&dword_22375F000, v6, v7, "IntelligenceFlowProxy: Subscription exited abnormally with error %@");
    sub_223781CE0(v4, &qword_27D097BE0, &qword_2237B88D0);
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_26();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_223780C1C()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 128) = v0;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_223780D1C()
{
  OUTLINED_FUNCTION_11_1();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = OUTLINED_FUNCTION_19_1();
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v0[14] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_4_2(v3);

  return MEMORY[0x282200310](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_223780DB8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12_2();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27D0972A0);
  }

  v2 = sub_2237B5C9C();
  OUTLINED_FUNCTION_24(v2, qword_27D0999E8);
  v3 = sub_2237B5C8C();
  sub_2237B5FEC();
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_20();
    v4 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_27(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_23(v5);
    OUTLINED_FUNCTION_8_1(&dword_22375F000, v6, v7, "IntelligenceFlowProxy: Subscription exited abnormally with error %@");
    sub_223781CE0(v4, &qword_27D097BE0, &qword_2237B88D0);
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_26();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_223780F04(uint64_t a1, SRDRequestDispatcherInternal *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097908, &qword_2237B8180);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v31 - v10;
  sub_223781C70(a3, v31 - v10);
  v12 = sub_2237B5FAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_223781CE0(v11, &qword_27D097908, &qword_2237B8180);
  }

  else
  {
    sub_2237B5F9C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2237B5F6C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2237B5E4C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v32[0] = 0;
        v32[1] = 0;
        v20 = v32;
        v32[2] = v15;
        v32[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v31[1] = 7;
      v31[2] = v20;
      v31[3] = v18;
      v22 = swift_task_create();

      sub_223781CE0(a3, &qword_27D097908, &qword_2237B8180);
      a2, v23, v24, v25, v26, v27, v28, v29;

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223781CE0(a3, &qword_27D097908, &qword_2237B8180);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v32[4] = 0;
    v32[5] = 0;
    v32[6] = v15;
    v32[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2237811D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2237B598C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *sub_223781240(uint64_t a1, void *a2)
{
  v26 = a1;
  v27 = a2;
  v2 = sub_2237B5C9C();
  OUTLINED_FUNCTION_20_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0978E0, &qword_2237B8168);
  OUTLINED_FUNCTION_20_1();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27D0972A0);
  }

  v17 = __swift_project_value_buffer(v2, qword_27D0999E8);
  v18 = *(v4 + 16);
  v18(v7, v17, v2);
  sub_2237B59BC();
  v24 = v2;
  sub_22377EDA8(&qword_27D0978E8, MEMORY[0x277D46B28], MEMORY[0x277D46B20]);
  sub_2237B59FC();
  sub_2237B5A6C();
  sub_2237B5A5C();
  sub_2237B59EC();
  v25 = v16;
  (*(v10 + 16))(v14, v16, v8);
  v18(v7, v17, v24);
  sub_22378161C();

  v19 = sub_2237B59DC();
  type metadata accessor for IntelligenceFlowOutputHandler();
  v20 = swift_allocObject();
  v21 = v26;
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  *(v20 + 112) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0978F8, &unk_2237B8170);
  swift_allocObject();
  v22 = sub_22377EDF0(v21, v19, v20, v27);

  (*(v10 + 8))(v25, v8);
  return v22;
}

uint64_t sub_22378156C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12_2();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_223781FD8;
  OUTLINED_FUNCTION_26();

  return sub_22377E98C(v2, v3, v4, v5, v6);
}

unint64_t sub_22378161C()
{
  result = qword_27D0978F0;
  if (!qword_27D0978F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0978E0, &qword_2237B8168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0978F0);
  }

  return result;
}

uint64_t sub_223781680()
{
  OUTLINED_FUNCTION_6_1();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_223781714;

  return sub_22377F230(v2, v3);
}

uint64_t sub_223781714()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
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

uint64_t sub_223781874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowProxyConversationSessionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2237818D8(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowProxyConversationSessionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223781934(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_223781A2C;

  return v6(a1);
}

uint64_t sub_223781A2C()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_3_3();

  return v3();
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x223DEB690);
  }

  return result;
}

uint64_t sub_223781B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_223781BC0()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_223781714;
  OUTLINED_FUNCTION_26();

  return sub_223780674(v3, v4, v5, v6, v7);
}

uint64_t sub_223781C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097908, &qword_2237B8180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223781CE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_25();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_223781D34()
{
  OUTLINED_FUNCTION_11_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return v4(v3);
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

uint64_t sub_223781E74(uint64_t a1)
{
  result = sub_2237B598C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_223781F08(uint64_t a1)
{
  result = sub_223781F7C();
  if (v2 <= 0x3F)
  {
    result = sub_2237B59CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_223781F7C()
{
  result = qword_27D097968;
  if (!qword_27D097968)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D097968);
  }

  return result;
}

uint64_t sub_223781FF0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097980, &qword_2237B8320);
  *(v1 + 24) = sub_2237B5DBC();
  *(v1 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979A0, qword_2237B8340);
  *(v1 + 40) = OUTLINED_FUNCTION_24_0();
  *(v1 + 48) = OUTLINED_FUNCTION_24_0();
  *(v1 + 16) = a1;
  return v1;
}

void sub_223782098()
{
  if (*(v0 + 32) == 1)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v1 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v1, qword_28131B550);
    oslog = sub_2237B5C8C();
    v2 = sub_2237B601C();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_22375F000, oslog, v2, "MessageBus was already started before", v3, 2u);
      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v4 = v0;
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v5 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v5, qword_28131B550);
    v6 = sub_2237B5C8C();
    v7 = sub_2237B601C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22375F000, v6, v7, "MessageBus was started", v8, 2u);
      OUTLINED_FUNCTION_8();
    }

    *(v4 + 32) = 1;
  }
}

uint64_t sub_223782228(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 32) == 1)
  {
    if (qword_28131AA10 != -1)
    {
LABEL_36:
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v3 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v3, qword_28131B550);
    v4 = sub_2237B5C8C();
    v5 = sub_2237B5FFC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22375F000, v4, v5, "Cannot register bridge after message bus was started", v6, 2u);
      OUTLINED_FUNCTION_8();
    }

    return 0;
  }

  v7 = v2;
  swift_getObjectType();
  sub_2237B568C();
  v11 = v10;
  OUTLINED_FUNCTION_17_0(v2 + 24, v153);
  v12 = *(v2 + 24);

  v13 = OUTLINED_FUNCTION_19_2();
  v15 = sub_2237725B0(v13, v14, v12);
  v11, v16, v17, v18, v19, v20, v21, v22;
  v12, v23, v24, v25, v26, v27, v28, v29;
  if (v15)
  {
    swift_unknownObjectRelease();
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v30 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v30, qword_28131B550);
    swift_unknownObjectRetain();
    v31 = sub_2237B5C8C();
    v32 = sub_2237B5FFC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v152[0] = v34;
      *v33 = 136315138;
      OUTLINED_FUNCTION_6_2();
      v35 = sub_2237B568C();
      v37 = v36;
      v38 = sub_223763694(v35, v36, v152);
      v37, v39, v40, v41, v42, v43, v44, v45;
      *(v33 + 4) = v38;
      _os_log_impl(&dword_22375F000, v31, v32, "Bridge: %s is already register message types, ignore this register", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }

    return 0;
  }

  OUTLINED_FUNCTION_6_2();
  v47 = sub_2237B565C();
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_28131AA10);
  }

  v48 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v48, qword_28131B550);
  swift_unknownObjectRetain();

  v49 = sub_2237B5C8C();
  v50 = sub_2237B5FEC();
  swift_unknownObjectRelease();
  v47, v51, v52, v53, v54, v55, v56, v57;
  v148 = v47;
  if (os_log_type_enabled(v49, v50))
  {
    v58 = v7;
    v59 = OUTLINED_FUNCTION_25_0();
    v152[0] = swift_slowAlloc();
    *v59 = 136315394;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097458, &qword_2237B7938);
    v61 = MEMORY[0x223DEAB90](v148, v60);
    v63 = v62;
    v64 = sub_223763694(v61, v62, v152);
    v63, v65, v66, v67, v68, v69, v70, v71;
    *(v59 + 4) = v64;
    *(v59 + 12) = 2080;
    OUTLINED_FUNCTION_6_2();
    v72 = sub_2237B568C();
    v74 = v73;
    v75 = sub_223763694(v72, v73, v152);
    v74, v76, v77, v78, v79, v80, v81, v82;
    *(v59 + 14) = v75;
    _os_log_impl(&dword_22375F000, v49, v50, "registering messages %s to consume by bridge %s", v59, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    v7 = v58;
    v47 = v148;
    OUTLINED_FUNCTION_8();
  }

  OUTLINED_FUNCTION_6_2();
  sub_2237B568C();
  v84 = v83;
  swift_beginAccess();
  swift_unknownObjectRetain();
  swift_isUniquelyReferenced_nonNull_native();
  v151 = *(v7 + 24);
  v147 = a1;
  sub_2237B282C();
  *(v7 + 24) = v151;
  v84, v85, v86, v87, v88, v89, v90, v91;
  swift_endAccess();
  v99 = *(v47 + 16);
  if (!v99)
  {
LABEL_33:
    v47, v92, v93, v94, v95, v96, v97, v98;
    return 1;
  }

  v146 = a2;
  OUTLINED_FUNCTION_17_0(v7 + 48, v152);
  v100 = 32;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097458, &qword_2237B7938);
    v101 = sub_2237B5E3C();
    v103 = v102;
    v104 = *(v7 + 48);
    v105 = *(v104 + 16);

    v149 = v103;
    if (v105 && (OUTLINED_FUNCTION_22(), v113 = sub_22376504C(), (v106 & 1) != 0))
    {
      v114 = *(*(v104 + 56) + 8 * v113);
    }

    else
    {
      v114 = MEMORY[0x277D84F90];
    }

    v104, v106, v107, v108, v109, v110, v111, v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097970, &qword_2237B8310);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2237B82B0;
    *(inited + 32) = v147;
    *(inited + 40) = v146;
    swift_unknownObjectRetain();
    sub_223782B38(inited);
    v116 = v114;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v117 = *(v7 + 48);
    v150 = v117;
    v118 = v7;
    *(v7 + 48) = 0x8000000000000000;
    v119 = v101;
    v120 = sub_22376504C();
    if (__OFADD__(v117[2], (v121 & 1) == 0))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v122 = v120;
    v123 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097978, &qword_2237B8318);
    if (sub_2237B618C())
    {
      break;
    }

    v131 = v149;
LABEL_28:
    if (v123)
    {
      v133 = v117[7];
      v134 = *(v133 + 8 * v122);
      *(v133 + 8 * v122) = v116;
      v131, v124, v125, v126, v127, v128, v129, v130;
      v134, v135, v136, v137, v138, v139, v140, v141;
    }

    else
    {
      v117[(v122 >> 6) + 8] |= 1 << v122;
      v142 = (v117[6] + 16 * v122);
      *v142 = v119;
      v142[1] = v131;
      *(v117[7] + 8 * v122) = v116;
      v143 = v117[2];
      v144 = __OFADD__(v143, 1);
      v145 = v143 + 1;
      if (v144)
      {
        goto LABEL_35;
      }

      v117[2] = v145;
    }

    v7 = v118;
    *(v118 + 48) = v150;
    swift_endAccess();
    v100 += 8;
    --v99;
    v47 = v148;
    if (!v99)
    {
      goto LABEL_33;
    }
  }

  v131 = v149;
  v132 = sub_22376504C();
  if ((v123 & 1) == (v124 & 1))
  {
    v122 = v132;
    goto LABEL_28;
  }

  result = sub_2237B62CC();
  __break(1u);
  return result;
}

uint64_t sub_2237828B0()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 48), v15, v16, v17, v18, v19, v20, v21;
  return v0;
}

uint64_t sub_2237828E8()
{
  sub_2237828B0();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_223782940(uint64_t (*a1)(void))
{
  a1();

  return sub_2237B63FC();
}

uint64_t sub_22378297C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2237B82C0;
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

void sub_2237829E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097998, &qword_2237B8338);
  v2 = *v0;
  v3 = sub_2237B610C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_223782B38(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2237A6CF0(v4 + v3, 1);
  v12 = *v1;
  if (!*(a1 + 16))
  {
    a1, v5, v6, v7, v8, v9, v10, v11;
    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v12 + 24) >> 1) - *(v12 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097980, &qword_2237B8320);
  swift_arrayInitWithCopy();
  a1, v13, v14, v15, v16, v17, v18, v19;
  if (!v3)
  {
LABEL_8:
    *v1 = v12;
    return;
  }

  v20 = *(v12 + 16);
  v21 = __OFADD__(v20, v3);
  v22 = v20 + v3;
  if (!v21)
  {
    *(v12 + 16) = v22;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_slowAlloc();
}

uint64_t sub_223782C28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979E8, &qword_2237B8530);
  OUTLINED_FUNCTION_10_2(sub_223785100, v1, v0, v2, v3, v4, v5, v6, v8);
  return v9;
}

void sub_223782CA0(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  sub_2237B2C14();
  v9 = v8;
  v6, v10, v11, v12, v13, v14, v15, v16;
  v7, v17, v18, v19, v20, v21, v22, v23;
  *a4 = v9;
}

void sub_223782D48()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v2;
  v5 = v4;
  v6 = sub_2237B56DC();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_2();
  v10 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  (*(v8 + 16))(v1, v3, v6);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  *(v12 + 24) = v5;
  (*(v8 + 32))(v12 + v11, v1, v6);
  OUTLINED_FUNCTION_5_3();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2237850A0;
  *(v13 + 24) = v12;
  v16[4] = sub_2237750B8;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v16[2] = v14;
  v16[3] = &block_descriptor_39;
  v15 = _Block_copy(v16);

  dispatch_sync(v10, v15);
  _Block_release(v15);
  LOBYTE(v5) = OUTLINED_FUNCTION_9_3(v13, "", 101, 91);

  if (v5)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223782F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_2237B303C();
  return swift_endAccess();
}

uint64_t sub_223782FA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979F0, &qword_2237B8538);
  OUTLINED_FUNCTION_10_2(sub_223785084, v1, v0, v2, v3, v4, v5, v6, v8);
  return v9;
}

void sub_22378301C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  v8 = sub_2237B38BC(a2, v7);
  v6, v9, v10, v11, v12, v13, v14, v15;
  v7, v16, v17, v18, v19, v20, v21, v22;
  *a3 = v8;
}

uint64_t sub_2237830BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979E8, &qword_2237B8530);
  OUTLINED_FUNCTION_10_2(sub_223785068, v1, v0, v2, v3, v4, v5, v6, v8);
  return v9;
}

void sub_223783130(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  sub_2237B39EC();
  v8 = v7;
  v5, v9, v10, v11, v12, v13, v14, v15;
  v6, v16, v17, v18, v19, v20, v21, v22;
  *a3 = v8;
}

uint64_t sub_2237831D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a1;
  v8[4] = a2;
  OUTLINED_FUNCTION_5_3();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_223784B60;
  *(v9 + 24) = v8;
  v12[4] = sub_2237750B8;
  v12[5] = v9;
  OUTLINED_FUNCTION_2_3();
  v12[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v12[2] = v10;
  v12[3] = &block_descriptor_29;
  _Block_copy(v12);
  OUTLINED_FUNCTION_8_3();

  dispatch_sync(v7, v3);
  _Block_release(v3);
  LOBYTE(v7) = OUTLINED_FUNCTION_9_3(v9, "", 101, 115);

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_22378330C(uint64_t a1, const char *a2, SRDRequestDispatcherInternal *a3)
{
  v6 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshots;
  swift_beginAccess();

  v10 = sub_223784B6C(v7, v8, a2, a3);
  v12 = v11;
  swift_endAccess();
  v19 = &unk_28131B000;
  v20 = 0x28131A000uLL;
  v21 = &off_2237B7000;
  if (v10)
  {
    sub_223785014(v10, v12, v13, v14, v15, v16, v17, v18);
    if (qword_28131AA10 != -1)
    {
LABEL_22:
      swift_once();
    }

    v22 = sub_2237B5C9C();
    __swift_project_value_buffer(v22, qword_28131B550);

    v23 = sub_2237B5C8C();
    v24 = sub_2237B5FFC();
    a3, v25, v26, v27, v28, v29, v30, v31;
    if (os_log_type_enabled(v23, v24))
    {
      v32 = a2;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v93[0] = v34;
      *v33 = *(v21 + 225);
      *(v33 + 4) = sub_223763694(v32, a3, v93);
      _os_log_impl(&dword_22375F000, v23, v24, "Overwrote snapshot %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x223DEB690](v34, -1, -1);
      a2 = v32;
      v20 = 0x28131A000uLL;
      MEMORY[0x223DEB690](v33, -1, -1);
    }

    v35 = v19[180];
    swift_beginAccess();

    sub_223784CB0((a1 + v35), a2, a3);
    v37 = *(*(a1 + v35) + 16);
    if (v37 < v36)
    {
      __break(1u);
      return;
    }

    sub_223784EE4(v36, v37);
    swift_endAccess();
  }

  v19 = v19[180];
  swift_beginAccess();

  sub_2237A685C();
  v38 = *(*(v19 + a1) + 16);
  sub_2237A6874(v38);
  v39 = *(v19 + a1);
  *(v39 + 16) = v38 + 1;
  v40 = v39 + 16 * v38;
  v41 = a2;
  *(v40 + 32) = a2;
  *(v40 + 40) = a3;
  *(v19 + a1) = v39;
  swift_endAccess();
  v91 = *(v21 + 225);
  while (*(*(v19 + a1) + 16) >= 6uLL)
  {
    if (*(v20 + 2576) != -1)
    {
      swift_once();
    }

    v42 = sub_2237B5C9C();
    __swift_project_value_buffer(v42, qword_28131B550);

    v43 = sub_2237B5C8C();
    v21 = sub_2237B5FEC();
    a3, v44, v45, v46, v47, v48, v49, v50;
    if (os_log_type_enabled(v43, v21))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v93[0] = v52;
      *v51 = v91;
      *(v51 + 4) = sub_223763694(v41, a3, v93);
      _os_log_impl(&dword_22375F000, v43, v21, "Reached max count, removing snapshot %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x223DEB690](v52, -1, -1);
      MEMORY[0x223DEB690](v51, -1, -1);
    }

    swift_beginAccess();
    v20 = *(v19 + a1);
    a2 = *(v20 + 16);
    if (!a2)
    {
      __break(1u);
      goto LABEL_22;
    }

    v53 = *(v20 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + a1) = v20;
    if (!isUniquelyReferenced_nonNull_native || (a2 - 1) > *(v20 + 24) >> 1)
    {
      v20 = sub_2237A68B0(isUniquelyReferenced_nonNull_native, a2, 1, v20, v55, v56, v57, v58);
      *(v19 + a1) = v20;
    }

    sub_223784FC0(v20 + 32);
    v59 = *(v20 + 16);
    memmove((v20 + 32), (v20 + 48), 16 * v59 - 16);
    *(v20 + 16) = v59 - 1;
    *(v19 + a1) = v20;
    swift_endAccess();
    swift_beginAccess();
    v60 = sub_22376504C();
    LOBYTE(v59) = v61;
    v53, v61, v62, v63, v64, v65, v66, v67;
    if (v59)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v92 = *(a1 + v9);
      *(a1 + v9) = 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979E0, &qword_2237B8528);
      sub_2237B618C();
      *(*(v92 + 48) + 16 * v60 + 8), v68, v69, v70, v71, v72, v73, v74;
      v75 = *(v92 + 56) + 16 * v60;
      v76 = *v75;
      *(v75 + 8), v77, v78, v79, v80, v81, v82, v83;
      v76, v84, v85, v86, v87, v88, v89, v90;
      sub_2237B619C();
      *(a1 + v9) = v92;
    }

    swift_endAccess();
    v20 = 0x28131A000;
  }
}

uint64_t sub_22378385C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a1;
  v8[4] = a2;
  OUTLINED_FUNCTION_5_3();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_223784B54;
  *(v9 + 24) = v8;
  v12[4] = sub_223761F48;
  v12[5] = v9;
  OUTLINED_FUNCTION_2_3();
  v12[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v12[2] = v10;
  v12[3] = &block_descriptor_1;
  _Block_copy(v12);
  OUTLINED_FUNCTION_8_3();

  dispatch_sync(v7, v3);
  _Block_release(v3);
  LOBYTE(v7) = OUTLINED_FUNCTION_9_3(v9, "", 101, 131);

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_223783998(uint64_t a1, uint64_t a2, SRDRequestDispatcherInternal *a3)
{
  v6 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshots;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_2237B1EE8(a2, a3, v7);
  v10 = v9;
  v7, v9, v11, v12, v13, v14, v15, v16;
  if (v8)
  {
    if (qword_28131AA10 != -1)
    {
      swift_once();
    }

    v17 = sub_2237B5C9C();
    __swift_project_value_buffer(v17, qword_28131B550);

    v18 = sub_2237B5C8C();
    v19 = sub_2237B5FEC();
    a3, v20, v21, v22, v23, v24, v25, v26;
    if (os_log_type_enabled(v18, v19))
    {
      v81 = v10;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v82[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_223763694(a2, a3, v82);
      _os_log_impl(&dword_22375F000, v18, v19, "Restoring to snapshot %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x223DEB690](v28, -1, -1);
      v29 = v27;
      v10 = v81;
      MEMORY[0x223DEB690](v29, -1, -1);
    }

    v30 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
    swift_beginAccess();
    v32 = *v30;
    v31 = v30[1];
    *v30 = v8;
    v30[1] = v10;
    v31, v33, v34, v35, v36, v37, v38, v39;
    v32, v40, v41, v42, v43, v44, v45, v46;
    v47 = sub_2237B5C8C();
    v48 = sub_2237B5FEC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_22375F000, v47, v48, "Clearing all existing snapshots.", v49, 2u);
      MEMORY[0x223DEB690](v49, -1, -1);
    }

    v50 = MEMORY[0x277D84F90];
    v51 = sub_2237B5DBC();
    v52 = *(a1 + v6);
    *(a1 + v6) = v51;
    v52, v53, v54, v55, v56, v57, v58, v59;
    v60 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshotRequestIds;
    swift_beginAccess();
    v61 = *(a1 + v60);
    *(a1 + v60) = v50;
    v61, v62, v63, v64, v65, v66, v67, v68;
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      swift_once();
    }

    v69 = sub_2237B5C9C();
    __swift_project_value_buffer(v69, qword_28131B550);

    v70 = sub_2237B5C8C();
    v71 = sub_2237B5FFC();
    a3, v72, v73, v74, v75, v76, v77, v78;
    if (os_log_type_enabled(v70, v71))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v82[0] = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_223763694(a2, a3, v82);
      _os_log_impl(&dword_22375F000, v70, v71, "Cannot restore. There is no snapshot %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      MEMORY[0x223DEB690](v80, -1, -1);
      MEMORY[0x223DEB690](v79, -1, -1);
    }
  }
}

double sub_223783DD0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_28131AA10 != -1)
  {
    swift_once();
  }

  v4 = sub_2237B5C9C();
  __swift_project_value_buffer(v4, qword_28131B550);
  v5 = sub_2237B5C8C();
  v6 = sub_2237B5FEC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22375F000, v5, v6, "Creating an immutable snapshot of ConversationSession", v7, 2u);
    MEMORY[0x223DEB690](v7, -1, -1);
  }

  v8 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v11 = type metadata accessor for ImmutableConversationSession();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  a2[3] = v11;
  a2[4] = sub_223766698(qword_28131AC50, v13, type metadata accessor for ImmutableConversationSession, &unk_2237B8410);
  *a2 = v12;

  return result;
}

uint64_t sub_223783F60(uint64_t a1)
{
  result = sub_2237B412C();
  if (v2 <= 0x3F)
  {
    result = sub_2237B563C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_223784070()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_assistantId);

  return v1;
}

double sub_2237841C4@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (*(v3 + 16) && (sub_223774D10(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 32 * v4;

    sub_22376AEC8(v6, a1);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_223784230(void *a1)
{
  v3 = v2;
  v24 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979D0, &qword_2237B8518);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = objc_opt_self();
  v12 = *(v1 + 24);
  v22 = *(v1 + 16);
  v23 = v12;

  v13 = sub_2237B62AC();
  v22 = 0;
  v14 = [v11 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v22];
  swift_unknownObjectRelease();
  v15 = v22;
  if (v14)
  {
    v16 = sub_2237B408C();
    v21 = v3;
    v18 = v17;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_223784A90();
    sub_2237B63CC();
    v22 = v16;
    v23 = v18;
    sub_22377DBE4();
    sub_2237B626C();
    (*(v7 + 8))(v10, v5);
    return sub_22377B340(v16, v18);
  }

  else
  {
    v20 = v15;
    sub_2237B406C();

    return swift_willThrow();
  }
}

uint64_t sub_223784454(void *a1)
{
  OUTLINED_FUNCTION_5_3();
  v2 = swift_allocObject();
  sub_2237844A0(a1);
  return v2;
}

uint64_t sub_2237844A0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979B0, &unk_2237B8508);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223784A90();
  sub_2237B63BC();
  if (!v2)
  {
    sub_22377DC38();
    sub_2237B621C();
    sub_223766240(0, &qword_27D0979C0, 0x277CCAAC8);
    OUTLINED_FUNCTION_13_3();
    sub_2237B602C();
    if (v16[3])
    {
      if (swift_dynamicCast())
      {
        v8 = OUTLINED_FUNCTION_13_3();
        sub_22377B340(v8, v9);
        v10 = OUTLINED_FUNCTION_6_3();
        v11(v10);
        *(v1 + 16) = v15;
        goto LABEL_4;
      }
    }

    else
    {
      sub_223774CA8(v16);
    }

    sub_223784AE4();
    swift_allocError();
    *v12 = 0xD000000000000023;
    v12[1] = 0x80000002237B9DF0;
    swift_willThrow();
    v13 = OUTLINED_FUNCTION_13_3();
    sub_22377B340(v13, v14);
    v5 = OUTLINED_FUNCTION_6_3();
    v6(v5);
  }

  type metadata accessor for ImmutableConversationSession();
  swift_deallocPartialClassInstance();
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

BOOL sub_223784748@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22377896C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22378477C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_223784718();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2237847A8@<W0>(uint64_t a1@<X0>, SRDRequestDispatcherInternal *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22377896C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2237847F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22377C9B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22378481C(uint64_t a1)
{
  v2 = sub_223784A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223784858(uint64_t a1)
{
  v2 = sub_223784A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223784894(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 16);
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;
  OUTLINED_FUNCTION_5_3();

  return MEMORY[0x2821FE8D8](v17, v18, v19);
}

uint64_t sub_2237849B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_223784454(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_223784A90()
{
  result = qword_27D0979B8;
  if (!qword_27D0979B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0979B8);
  }

  return result;
}

unint64_t sub_223784AE4()
{
  result = qword_27D0979C8;
  if (!qword_27D0979C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0979C8);
  }

  return result;
}

uint64_t sub_223784B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  v9 = sub_22376504C();
  if (__OFADD__(*(v17 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979E0, &qword_2237B8528);
  if (sub_2237B618C())
  {
    v13 = sub_22376504C();
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_2237B62CC();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v12)
  {
    v15 = (*(v17 + 56) + 16 * v11);
    result = *v15;
    *v15 = a1;
    v15[1] = a2;
  }

  else
  {
    sub_2237B2A8C(v11, a3, a4, a1, a2, v17);

    result = 0;
  }

  *v4 = v17;
  return result;
}

void sub_223784CB0(char **a1, const char *a2, SRDRequestDispatcherInternal *a3)
{
  v7 = *a1;

  v13 = sub_223784E40(v7, a2, a3, v8, v9, v10, v11, v12);
  v21 = v13;
  if (v3 || (v14 & 1) != 0)
  {
LABEL_20:
    a3, v14, v15, v16, v17, v18, v19, v20;
    return;
  }

  v22 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    v48 = a1;
    for (i = 16 * v13; ; i += 16)
    {
      v24 = *(v7 + 2);
      if (v22 == v24)
      {
        break;
      }

      if (v22 >= v24)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v25 = *&v7[i + 48];
      v26 = *&v7[i + 56];
      v27 = v25 == a2 && v26 == a3;
      if (!v27 && (sub_2237B629C() & 1) == 0)
      {
        if (v22 != v21)
        {
          if (v21 >= v24)
          {
            goto LABEL_22;
          }

          v28 = &v7[16 * v21 + 32];
          v29 = *(v28 + 1);
          v49 = *v28;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_223785054(v7, v30, v31, v32, v33, v34, v35, v36);
          }

          v37 = &v7[16 * v21];
          v38 = *(v37 + 5);
          *(v37 + 4) = v25;
          *(v37 + 5) = v26;
          v38, v30, v31, v32, v33, v34, v35, v36;
          if (v22 >= *(v7 + 2))
          {
            goto LABEL_23;
          }

          v46 = &v7[i];
          v47 = *&v7[i + 56];
          *(v46 + 6) = v49;
          *(v46 + 7) = v29;
          v47, v39, v40, v41, v42, v43, v44, v45;
          *v48 = v7;
        }

        ++v21;
      }

      ++v22;
    }

    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_223784E40(uint64_t a1, const char *a2, SRDRequestDispatcherInternal *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = a2;
  v10 = 0;
  v11 = *(a1 + 16);
  v12 = (a1 + 40);
  while (v11 != v10)
  {
    a2 = *v12;
    v13 = *(v12 - 1) == v9 && a2 == a3;
    if (v13 || (sub_2237B629C() & 1) != 0)
    {
      v14 = v10;
      goto LABEL_11;
    }

    ++v10;
    v12 += 2;
  }

  v14 = 0;
LABEL_11:
  a3, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_223784EE4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2237A6D08(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_2237A6C84((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_223785014(SRDRequestDispatcherInternal *result, char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if (result)
  {
    result, a2, a3, a4, a5, a6, a7, a8;

    a2, v9, v10, v11, v12, v13, v14, v15;
  }
}

uint64_t sub_2237850A0()
{
  v1 = sub_2237B56DC();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return sub_223782F3C(v3, v4, v5);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22378512C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22378516C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ImmutableConversationSession.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ImmutableConversationSession.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2237852C4()
{
  result = qword_27D0979F8;
  if (!qword_27D0979F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0979F8);
  }

  return result;
}

unint64_t sub_22378531C()
{
  result = qword_27D097A00;
  if (!qword_27D097A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097A00);
  }

  return result;
}

unint64_t sub_223785374()
{
  result = qword_27D097A08;
  if (!qword_27D097A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097A08);
  }

  return result;
}

void *sub_2237853F4(uint64_t a1, SEL *a2)
{
  v4 = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_2237B413C();
    [v6 *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_223785488(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v4 = sub_2237B415C();
  v29 = *(v4 - 8);
  v5 = v29;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v34 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A28, &unk_2237B8768);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v33 = sub_2237B42FC();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2();
  v30 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___SRDIntelligenceFlowAssetsStatusProvider_assetsClient] = 0;
  swift_unknownObjectWeakAssign();
  v35.receiver = v2;
  v35.super_class = SRDIntelligenceFlowAssetsStatusProvider;
  v20 = objc_msgSendSuper2(&v35, sel_init);
  sub_2237B42EC();
  v21 = *(v5 + 16);
  v27 = v4;
  v28 = a2;
  v21(v12, a2, v4);
  v21(v10, a2, v4);
  v21(v34, a2, v4);
  sub_2237B41DC();
  v22 = sub_2237B41EC();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
  sub_2237B42DC();
  sub_2237859BC();
  v23 = v31;
  v24 = v33;
  (*(v31 + 16))(v30, v19, v33);
  sub_2237B41BC();
  swift_allocObject();
  v25 = sub_2237B41CC();
  swift_unknownObjectRelease();
  (*(v29 + 8))(v28, v27);
  (*(v23 + 8))(v19, v24);
  *&v20[OBJC_IVAR___SRDIntelligenceFlowAssetsStatusProvider_assetsClient] = v25;

  return v20;
}

void __swiftcall SRDIntelligenceFlowAssetsStatusProvider.init()(SRDIntelligenceFlowAssetsStatusProvider *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for SRDIntelligenceFlowAssetsStatusProvider()
{
  result = qword_27D097A20;
  if (!qword_27D097A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D097A20);
  }

  return result;
}

unint64_t sub_2237859BC()
{
  result = qword_27D097A30;
  if (!qword_27D097A30)
  {
    type metadata accessor for SRDIntelligenceFlowAssetsStatusProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097A30);
  }

  return result;
}

uint64_t sub_223785A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_223785D1C();
  result = sub_2237B609C();
  *a4 = result;
  return result;
}

uint64_t sub_223785AF0()
{
  sub_223785D1C();
  result = sub_2237B609C();
  qword_27D0999D8 = result;
  return result;
}

uint64_t sub_223785B58()
{
  sub_223785D1C();
  result = sub_2237B609C();
  qword_27D0999E0 = result;
  return result;
}

uint64_t sub_223785C70(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_2237B5C9C();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_2237B5CAC();
}

unint64_t sub_223785D1C()
{
  result = qword_28131A7B8;
  if (!qword_28131A7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131A7B8);
  }

  return result;
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

uint64_t sub_223786160()
{
  type metadata accessor for MessageBusInstrumentationUtil();
  swift_allocObject();
  result = sub_22378619C();
  qword_28131B5E0 = result;
  return result;
}

uint64_t sub_22378619C()
{
  *(v0 + 16) = [objc_opt_self() sharedStream];
  sub_2237B585C();
  swift_allocObject();
  *(v0 + 24) = sub_2237B584C();
  return v0;
}

void sub_22378623C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, SEL *a6, const char *a7)
{
  v10 = [objc_allocWithZone(*a5) init];
  if (v10)
  {
    v23 = v10;
    [v10 setExists:1];
    v11 = sub_2237B583C();
    if (v11)
    {
      v12 = v11;
      [v11 *a6];
      [*(v7 + 16) emitMessage_];

      v13 = v12;
      goto LABEL_14;
    }

    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v17 = sub_2237B5C9C();
    v18 = OUTLINED_FUNCTION_9_4(v17, qword_28131B550);
    v19 = sub_2237B5FFC();
    if (OUTLINED_FUNCTION_5(v19))
    {
      v20 = OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_4_4(v20);
      OUTLINED_FUNCTION_2_4(&dword_22375F000, v21, v22, "The Orchestration SELF event wrapper failed to build");
      OUTLINED_FUNCTION_3_0();
    }
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v14 = sub_2237B5C9C();
    v23 = OUTLINED_FUNCTION_9_4(v14, qword_28131B550);
    v15 = sub_2237B5FFC();
    if (os_log_type_enabled(v23, v15))
    {
      v16 = OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_4_4(v16);
      OUTLINED_FUNCTION_10_3(&dword_22375F000, v23, v15, a7);
      OUTLINED_FUNCTION_3_0();
    }
  }

  v13 = v23;
LABEL_14:
}

void sub_223786408()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D597A8]) init];
  if (!v5)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v18 = sub_2237B5C9C();
    v30 = OUTLINED_FUNCTION_9_4(v18, qword_28131B550);
    sub_2237B5FFC();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v30, v19))
    {
      *OUTLINED_FUNCTION_7_3() = 0;
      OUTLINED_FUNCTION_21_1(&dword_22375F000, v20, v21, "The request canclled event wasn't created");
      OUTLINED_FUNCTION_8();
    }

    goto LABEL_21;
  }

  v30 = v5;
  [v5 setReason:2];
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_14_3();
  v6 = sub_2237B583C();
  if (!v6)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v23 = sub_2237B5C9C();
    v24 = OUTLINED_FUNCTION_9_4(v23, qword_28131B550);
    v25 = sub_2237B5FFC();
    if (OUTLINED_FUNCTION_5(v25))
    {
      v26 = OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_4_4(v26);
      OUTLINED_FUNCTION_2_4(&dword_22375F000, v27, v28, "The Orchestration SELF event wrapper failed to build");
      OUTLINED_FUNCTION_3_0();
    }

LABEL_21:
    v22 = v30;
    goto LABEL_22;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D597B0]) init];
  v9 = v8;
  v29 = v8;
  if (v8)
  {
    [v8 setCancelled:v30];
    v9 = v29;
  }

  [v7 setRequestContext_];
  [*(v0 + 16) emitMessage_];
  v10 = sub_2237B582C();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 captureSnapshot];

    if (v12)
    {
      v13 = [objc_opt_self() context];
      if (v13)
      {
        v14 = v13;
        OUTLINED_FUNCTION_19_3();
        sub_2237B40EC();
        v15 = sub_2237B412C();
        v16 = 0;
        if (__swift_getEnumTagSinglePayload(v4, 1, v15) != 1)
        {
          v16 = sub_2237B410C();
          OUTLINED_FUNCTION_8_4();
          (*(v17 + 8))(v4, v15);
        }

        [v12 logWithEventContext:v14 requestIdentifier:v16];
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  v22 = v29;
LABEL_22:
}

uint64_t sub_22378675C()
{
  v1 = v0;
  v2 = sub_2237B561C();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277D5D230])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x277D5D238])
  {
    return 2;
  }

  (*(v4 + 8))(v8, v2);
  return 0;
}

uint64_t sub_22378687C()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2237868A4()
{
  sub_22378687C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22378692C(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x5265747563657865;
  }
}

uint64_t sub_223786974()
{
  v0 = sub_2237B5C9C();
  __swift_allocate_value_buffer(v0, qword_27D097A58);
  v1 = __swift_project_value_buffer(v0, qword_27D097A58);
  if (qword_27D0972A8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27D099A00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_223786A3C()
{
  sub_2237B5C4C();
  v2 = sub_2237B5C3C();
  if (v1)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v0 + 16) = v2;
  }

  return v0;
}

uint64_t sub_223786AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[4] = a1;
  v43 = a2;
  v2 = sub_2237B412C();
  v38[6] = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38[5] = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2237B5BEC();
  v38[9] = *(v39 - 8);
  v4 = MEMORY[0x28223BE20](v39);
  v38[8] = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v38[10] = v38 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v40 = v38 - v9;
  MEMORY[0x28223BE20](v8);
  v38[3] = v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A80, &unk_2237B88D8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A70, &qword_2237B88C8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A88, &qword_2237B88E8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v38 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v38 - v27;
  v29 = sub_2237B5BAC();
  v44 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = v38 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v2);
  v42 = sub_2237B5C6C();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v42);
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v2);
  v38[7] = v2;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v2);
  sub_2237B5DBC();
  sub_2237B5BCC();
  v32 = sub_2237B5BDC();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v32);
  v33 = sub_2237B5BFC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v33);
  v34 = v44;
  sub_2237B5A8C();
  (*(v34 + 104))(v31, *MEMORY[0x277CEDFC0], v29);
  if (*(v41 + 16))
  {

    v35 = v43;
    sub_2237B5C1C();
    (*(v34 + 8))(v31, v29);

    v36 = 0;
  }

  else
  {
    (*(v34 + 8))(v31, v29);
    v36 = 1;
    v35 = v43;
  }

  return __swift_storeEnumTagSinglePayload(v35, v36, 1, v42);
}

uint64_t sub_2237873F4(uint64_t a1, char *a2)
{
  v117 = a2;
  v3 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v112 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v105 = v6 - v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v103 = v102 - v9;
  OUTLINED_FUNCTION_12();
  sub_2237B5BEC();
  OUTLINED_FUNCTION_0_2();
  v108 = v11;
  v109 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v106 = v12 - v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13_4();
  v107 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13_4();
  v110 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v104 = v102 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A80, &unk_2237B88D8);
  v21 = OUTLINED_FUNCTION_1(v20);
  MEMORY[0x28223BE20](v21);
  v116 = v102 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A70, &qword_2237B88C8);
  v24 = OUTLINED_FUNCTION_1(v23);
  MEMORY[0x28223BE20](v24);
  v26 = v102 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v28 = OUTLINED_FUNCTION_1(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v30 = MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  sub_2237B5BAC();
  OUTLINED_FUNCTION_0_2();
  v119 = v32;
  v120 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A88, &qword_2237B88E8);
  v37 = OUTLINED_FUNCTION_1(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3();
  v102[2] = v38 - v39;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_13_4();
  v113 = v41;
  OUTLINED_FUNCTION_7();
  v43 = MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v43);
  v45 = v102 - v44;
  v111 = a1;
  sub_223786AD0(a1, v102 - v44);
  v114 = "com.apple.siri.assistant";
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v3);
  sub_2237B5C6C();
  OUTLINED_FUNCTION_11_4();
  v102[1] = v49;
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v3);
  OUTLINED_FUNCTION_11_4();
  v118 = v3;
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v3);
  v66 = sub_223787F98(v117, v59, v60, v61, v62, v63, v64, v65);
  sub_223788134(v66);
  v66, v67, v68, v69, v70, v71, v72, v73;
  sub_2237B5DBC();
  OUTLINED_FUNCTION_6_4();
  sub_2237B5BCC();
  v74 = sub_2237B5BDC();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v74);
  sub_2237B5BFC();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  v79 = v119;
  sub_2237B5A8C();
  (*(v79 + 104))(v35, *MEMORY[0x277CEDFC0], v120);
  if (*(v115 + 16))
  {

    sub_2237B5C0C();

    (*(v79 + 8))(v35, v120);
    v100 = v45;
  }

  else
  {
    v80 = v103;
    v117 = v45;
    if (qword_27D0972B8 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_27D0972B8);
    }

    v81 = sub_2237B5C9C();
    __swift_project_value_buffer(v81, qword_27D097A58);
    v82 = v112;
    v83 = v118;
    (*(v112 + 16))(v80, v111, v118);
    v84 = sub_2237B5C8C();
    v85 = sub_2237B5FFC();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v121 = v87;
      *v86 = 136315138;
      v88 = sub_2237B40FC();
      v89 = v80;
      v91 = v90;
      (*(v82 + 8))(v89, v83);
      v92 = sub_223763694(v88, v91, &v121);
      v91, v93, v94, v95, v96, v97, v98, v99;
      *(v86 + 4) = v92;
      _os_log_impl(&dword_22375F000, v84, v85, "eventReporter is nil, NOT emitting AIR events for request start/end. requestID : %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v87);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }

    else
    {

      (*(v82 + 8))(v80, v83);
    }

    (*(v79 + 8))(v35, v120);
    v100 = v117;
  }

  return sub_2237692F0(v100, &qword_27D097A88, &qword_2237B88E8);
}

char *sub_223787F98(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if ((a1 & 1) == 0)
  {
    v9 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v9 = sub_2237A69B8(0, 1, 1, MEMORY[0x277D84F90], a5, a6, a7, a8);
  v14 = *(v9 + 3);
  if (*(v9 + 2) >= v14 >> 1)
  {
    v9 = OUTLINED_FUNCTION_5_4(v14, v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_14_4();
  *(v15 + 32) = 0;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_4_5(isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21, v22, v23);
    }

    OUTLINED_FUNCTION_9_5();
    if (v29)
    {
      v9 = OUTLINED_FUNCTION_5_4(v28, v24, v25, v26, v27);
    }

    OUTLINED_FUNCTION_14_4();
    *(v30 + 32) = 1;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    v31 = swift_isUniquelyReferenced_nonNull_native();
    if ((v31 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_4_5(v31, v32, v33, v34, v35, v36, v37, v38);
    }

    OUTLINED_FUNCTION_9_5();
    if (v29)
    {
      v9 = OUTLINED_FUNCTION_5_4(v43, v39, v40, v41, v42);
    }

    OUTLINED_FUNCTION_14_4();
    *(v44 + 32) = 2;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        return v9;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v45 = swift_isUniquelyReferenced_nonNull_native();
  if ((v45 & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_4_5(v45, v46, v47, v48, v49, v50, v51, v52);
  }

  OUTLINED_FUNCTION_9_5();
  if (v29)
  {
    v9 = OUTLINED_FUNCTION_5_4(v57, v53, v54, v55, v56);
  }

  OUTLINED_FUNCTION_14_4();
  *(v58 + 32) = 3;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    v59 = swift_isUniquelyReferenced_nonNull_native();
    if ((v59 & 1) == 0)
    {
      v9 = OUTLINED_FUNCTION_4_5(v59, v60, v61, v62, v63, v64, v65, v66);
    }

    v68 = *(v9 + 2);
    v67 = *(v9 + 3);
    if (v68 >= v67 >> 1)
    {
      v9 = sub_2237A69B8((v67 > 1), v68 + 1, 1, v9, v63, v64, v65, v66);
    }

    *(v9 + 2) = v68 + 1;
    v9[v68 + 32] = 4;
  }

  return v9;
}

uint64_t sub_223788134(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_223779F24(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_223779F24((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for SiriCapabilityError;
      v12 = sub_223788D2C();
      LOBYTE(v10) = v5;
      *(v2 + 16) = v8 + 1;
      sub_2237709BC(&v10, v2 + 40 * v8 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22378821C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7)
{
  v101 = a6;
  v93 = a7;
  LODWORD(v102) = a5;
  v98 = a3;
  v99 = a4;
  v96 = a1;
  v97 = a2;
  v89 = sub_2237B5BEC();
  OUTLINED_FUNCTION_0_2();
  v88 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v87 = v9 - v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_4();
  v90 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13_4();
  v91 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v86[1] = v86 - v16;
  OUTLINED_FUNCTION_12();
  sub_2237B5BAC();
  OUTLINED_FUNCTION_0_2();
  v103 = v17;
  v104 = v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v107 = v20 - v19;
  OUTLINED_FUNCTION_12();
  sub_2237B5A9C();
  OUTLINED_FUNCTION_0_2();
  v94 = v22;
  v95 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A70, &qword_2237B88C8);
  v27 = OUTLINED_FUNCTION_1(v26);
  MEMORY[0x28223BE20](v27);
  v29 = v86 - v28;
  v30 = sub_2237B5B0C();
  OUTLINED_FUNCTION_0_2();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v36 = v35 - v34;
  sub_2237B5B2C();
  OUTLINED_FUNCTION_0_2();
  v105 = v38;
  v106 = v37;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  v109 = v40 - v39;
  OUTLINED_FUNCTION_12();
  v110 = sub_2237B5AFC();
  OUTLINED_FUNCTION_0_2();
  v108 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  v111 = (v44 - v43);
  OUTLINED_FUNCTION_12();
  v45 = sub_2237B5ABC();
  v46 = OUTLINED_FUNCTION_1(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_0();
  v49 = v48 - v47;
  v50 = sub_2237B5ADC();
  OUTLINED_FUNCTION_0_2();
  v52 = v51;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = v86 - v58;
  if (v102)
  {
    v60 = MEMORY[0x277CEDF30];
  }

  else
  {
    if (v93 < 0)
    {
      goto LABEL_20;
    }

    sub_2237B5AAC();
    sub_2237B5ACC();
    v60 = MEMORY[0x277CEDF28];
  }

  (*(v52 + 104))(v59, *v60, v50);
  v93 = v52;
  v61 = *(v52 + 16);
  v92 = v59;
  v102 = v50;
  v61(v56, v59, v50);
  v59 = v111;
  sub_2237B5AEC();
  v62 = *(v32 + 104);
  v32 += 104;
  v62(v36, *MEMORY[0x277CEDF78], v30);
  sub_2237B5DBC();
  v49 = v104;
  if (HIDWORD(v101))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    OUTLINED_FUNCTION_1_5(&qword_27D0972B8);
    v68 = sub_2237B5C9C();
    __swift_project_value_buffer(v68, qword_27D097A58);
    v69 = v32;
    v70 = *(v32 + 16);
    v71 = v87;
    v70(v87, v50, v59);
    v72 = sub_2237B5C8C();
    LODWORD(v101) = sub_2237B5FFC();
    if (os_log_type_enabled(v72, v101))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      sub_223788C64();
      swift_allocError();
      v70(v75, v71, v59);
      v76 = _swift_stdlib_bridgeErrorToNSError();
      v77 = *(v69 + 8);
      v77(v71, v59);
      *(v73 + 4) = v76;
      *v74 = v76;
      v49 = v104;
      _os_log_impl(&dword_22375F000, v72, v101, "Failed to emit availability reporting event with error %@", v73, 0xCu);
      sub_2237692F0(v74, &qword_27D097BE0, &qword_2237B88D0);
      v25 = v103;
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();

      v77(v90, v59);
    }

    else
    {

      v84 = *(v69 + 8);
      v84(v71, v59);
      v84(v50, v59);
    }

    v65 = v106;
    v67 = v107;
    v66 = v105;
    goto LABEL_17;
  }

  v113 = 0;
  OUTLINED_FUNCTION_6_4();
  sub_2237B5BBC();
  v63 = sub_2237B5BDC();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v63);
  (*(v108 + 16))(v25, v59, v110);
  (*(v94 + 104))(v25, *MEMORY[0x277CEDF10], v95);
  v112 = 1;
  v64 = v109;
  sub_2237B5B1C();
  v66 = v105;
  v65 = v106;
  v67 = v107;
  (*(v105 + 16))(v107, v64, v106);
  v25 = v103;
  (*(v49 + 104))(v67, *MEMORY[0x277CEDFB0], v103);
  if (*(v100 + 16))
  {

    sub_2237B5C2C();

LABEL_17:
    v82 = v111;
    goto LABEL_18;
  }

  if (qword_27D0972B8 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_27D0972B8);
  }

  v78 = sub_2237B5C9C();
  __swift_project_value_buffer(v78, qword_27D097A58);
  v79 = sub_2237B5C8C();
  v80 = sub_2237B5FFC();
  v81 = os_log_type_enabled(v79, v80);
  v82 = v111;
  if (v81)
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_22375F000, v79, v80, "eventReporter is nil, NOT emitting AIR availability event", v83, 2u);
    OUTLINED_FUNCTION_8();
  }

LABEL_18:
  (*(v49 + 8))(v67, v25);
  (*(v66 + 8))(v109, v65);
  (*(v108 + 8))(v82, v110);
  return (*(v93 + 8))(v92, v102);
}

uint64_t sub_223788C08()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_223788C64()
{
  result = qword_27D097A78;
  if (!qword_27D097A78)
  {
    sub_2237B5BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097A78);
  }

  return result;
}

uint64_t sub_223788CBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A88, &qword_2237B88E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_223788D2C()
{
  result = qword_27D097A90;
  if (!qword_27D097A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097A90);
  }

  return result;
}

uint64_t sub_223788D80(uint64_t a1, SRDRequestDispatcherInternal *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = 0x80000002237BA130;
  v10 = a1 == 0xD000000000000013 && 0x80000002237BA130 == a2;
  if (v10 || (sub_2237B629C() & 1) != 0)
  {
    a2, v9, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEF7374657373414CLL;
    v14 = a1 == 0x4E676E697373696DLL && a2 == 0xEF7374657373414CLL;
    if (v14 || (sub_2237B629C() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v15 = 0x80000002237BA150;
      v16 = a1 == 0xD000000000000014 && 0x80000002237BA150 == a2;
      if (v16 || (sub_2237B629C() & 1) != 0)
      {
        a2, v15, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v17 = 0x80000002237BA170;
        v18 = a1 == 0xD000000000000016 && 0x80000002237BA170 == a2;
        if (v18 || (sub_2237B629C() & 1) != 0)
        {
          a2, v17, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0xD000000000000015 && 0x80000002237BA190 == a2)
        {
          a2, 0x80000002237BA190, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v20 = sub_2237B629C();
          a2, v21, v22, v23, v24, v25, v26, v27;
          if (v20)
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

unint64_t sub_223788F34(char a1)
{
  result = 0x4E676E697373696DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_22378900C@<X0>(uint64_t a1@<X0>, SRDRequestDispatcherInternal *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X2>, void *a5@<X3>, uint64_t a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_223788D80(a1, a2, a4, a5, a6, a7, a8, a9);
  *a3 = result;
  return result;
}

uint64_t sub_223789034@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223788F2C();
  *a1 = result;
  return result;
}

uint64_t sub_22378905C(uint64_t a1)
{
  v2 = sub_223789784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223789098(uint64_t a1)
{
  v2 = sub_223789784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2237890D8(uint64_t a1)
{
  v2 = sub_22378982C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223789114(uint64_t a1)
{
  v2 = sub_22378982C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223789150(uint64_t a1)
{
  v2 = sub_223789880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22378918C(uint64_t a1)
{
  v2 = sub_223789880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2237891C8(uint64_t a1)
{
  v2 = sub_2237898D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223789204(uint64_t a1)
{
  v2 = sub_2237898D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223789240(uint64_t a1)
{
  v2 = sub_2237897D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22378927C(uint64_t a1)
{
  v2 = sub_2237897D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2237892B8(uint64_t a1)
{
  v2 = sub_223789928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2237892F4(uint64_t a1)
{
  v2 = sub_223789928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriCapabilityError.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A98, &qword_2237B88F0);
  OUTLINED_FUNCTION_0_2();
  v49 = v4;
  v50 = v3;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_6();
  v48 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097AA0, &qword_2237B88F8);
  OUTLINED_FUNCTION_0_2();
  v46 = v8;
  v47 = v7;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_6();
  v45 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097AA8, &qword_2237B8900);
  OUTLINED_FUNCTION_0_2();
  v43 = v12;
  v44 = v11;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_6();
  v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097AB0, &qword_2237B8908);
  OUTLINED_FUNCTION_0_2();
  v40 = v16;
  v41 = v15;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_6();
  v39 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097AB8, &qword_2237B8910);
  OUTLINED_FUNCTION_0_2();
  v37 = v20;
  v38 = v19;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v36 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097AC0, &qword_2237B8918);
  OUTLINED_FUNCTION_0_2();
  v26 = v25;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v36 - v28;
  v30 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223789784();
  sub_2237B63CC();
  v31 = (v26 + 8);
  switch(v30)
  {
    case 1:
      v52 = 1;
      sub_2237898D4();
      v32 = v39;
      OUTLINED_FUNCTION_3_5(&type metadata for SiriCapabilityError.MissingNLAssetsCodingKeys, &v52);
      v34 = v40;
      v33 = v41;
      goto LABEL_7;
    case 2:
      v53 = 2;
      sub_223789880();
      v32 = v42;
      OUTLINED_FUNCTION_3_5(&type metadata for SiriCapabilityError.MissingMorphunAssetsCodingKeys, &v53);
      v34 = v43;
      v33 = v44;
      goto LABEL_7;
    case 3:
      v54 = 3;
      sub_22378982C();
      v32 = v45;
      OUTLINED_FUNCTION_3_5(&type metadata for SiriCapabilityError.MissingAttentionAssetsCodingKeys, &v54);
      v34 = v46;
      v33 = v47;
      goto LABEL_7;
    case 4:
      v55 = 4;
      sub_2237897D8();
      v32 = v48;
      OUTLINED_FUNCTION_3_5(&type metadata for SiriCapabilityError.MissingNLRouterAssetsCodingKeys, &v55);
      v34 = v49;
      v33 = v50;
LABEL_7:
      (*(v34 + 8))(v32, v33);
      break;
    default:
      v51 = 0;
      sub_223789928();
      sub_2237B623C();
      (*(v37 + 8))(v23, v38);
      break;
  }

  return (*v31)(v29, v24);
}

unint64_t sub_223789784()
{
  result = qword_27D097AC8;
  if (!qword_27D097AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AC8);
  }

  return result;
}

unint64_t sub_2237897D8()
{
  result = qword_27D097AD0;
  if (!qword_27D097AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AD0);
  }

  return result;
}

unint64_t sub_22378982C()
{
  result = qword_27D097AD8;
  if (!qword_27D097AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AD8);
  }

  return result;
}

unint64_t sub_223789880()
{
  result = qword_27D097AE0;
  if (!qword_27D097AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AE0);
  }

  return result;
}

unint64_t sub_2237898D4()
{
  result = qword_27D097AE8;
  if (!qword_27D097AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AE8);
  }

  return result;
}

unint64_t sub_223789928()
{
  result = qword_27D097AF0;
  if (!qword_27D097AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AF0);
  }

  return result;
}

uint64_t SiriCapabilityError.hashValue.getter()
{
  sub_2237B634C();
  sub_22378A10C();
  sub_2237B5DEC();
  return sub_2237B636C();
}

uint64_t SiriCapabilityError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v68 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B00, &qword_2237B8920);
  OUTLINED_FUNCTION_0_2();
  v65 = v3;
  v66 = v4;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_6();
  v71 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B08, &qword_2237B8928);
  OUTLINED_FUNCTION_0_2();
  v63 = v7;
  v64 = v8;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_6();
  v70 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B10, &qword_2237B8930);
  OUTLINED_FUNCTION_0_2();
  v61 = v12;
  v62 = v11;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_6();
  v67 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B18, &qword_2237B8938);
  OUTLINED_FUNCTION_0_2();
  v59 = v16;
  v60 = v15;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B20, &qword_2237B8940);
  OUTLINED_FUNCTION_0_2();
  v58 = v21;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B28, &qword_2237B8948);
  OUTLINED_FUNCTION_0_2();
  v69 = v26;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223789784();
  v30 = v72;
  sub_2237B63BC();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v56 = v20;
  v57 = v24;
  v72 = v19;
  v31 = v70;
  v32 = v71;
  v33 = v29;
  v34 = sub_2237B622C();
  result = sub_22378A5EC(v34, 0);
  if (v37 == v38 >> 1)
  {
    v39 = v69;
LABEL_9:
    v48 = sub_2237B616C();
    swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B30, &qword_2237B8950);
    *v50 = &type metadata for SiriCapabilityError;
    sub_2237B61EC();
    sub_2237B615C();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v39 + 8))(v33, v25);
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  if (v37 >= (v38 >> 1))
  {
    __break(1u);
  }

  else
  {
    v54 = *(v36 + v37);
    v40 = sub_22378A634(v37 + 1, v38 >> 1, result, v36, v37, v38);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    v55 = v40;
    if (v42 != v44 >> 1)
    {
      v39 = v69;
      v33 = v29;
      goto LABEL_9;
    }

    v45 = v68;
    v46 = v69;
    switch(v54)
    {
      case 1:
        v74 = 1;
        sub_2237898D4();
        v31 = v72;
        OUTLINED_FUNCTION_1_6(&type metadata for SiriCapabilityError.MissingNLAssetsCodingKeys, &v74);
        swift_unknownObjectRelease();
        v52 = v59;
        v51 = v60;
        goto LABEL_15;
      case 2:
        v75 = 2;
        sub_223789880();
        v31 = v67;
        OUTLINED_FUNCTION_1_6(&type metadata for SiriCapabilityError.MissingMorphunAssetsCodingKeys, &v75);
        swift_unknownObjectRelease();
        v52 = v61;
        v51 = v62;
        goto LABEL_15;
      case 3:
        v76[0] = 3;
        sub_22378982C();
        OUTLINED_FUNCTION_1_6(&type metadata for SiriCapabilityError.MissingAttentionAssetsCodingKeys, v76);
        swift_unknownObjectRelease();
        v51 = v63;
        v52 = v64;
LABEL_15:
        (*(v52 + 8))(v31, v51);
        break;
      case 4:
        v76[1] = 4;
        sub_2237897D8();
        v40 = v29;
        sub_2237B61DC();
        swift_unknownObjectRelease();
        (*(v66 + 8))(v32, v65);
        break;
      default:
        v73 = 0;
        sub_223789928();
        v47 = v57;
        OUTLINED_FUNCTION_1_6(&type metadata for SiriCapabilityError.MissingSpeechAssetsCodingKeys, &v73);
        swift_unknownObjectRelease();
        (*(v58 + 8))(v47, v56);
        break;
    }

    (*(v46 + 8))(v40, v25);
    *v45 = v54;
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return result;
}

uint64_t sub_22378A060(uint64_t a1, uint64_t a2)
{
  v4 = sub_223788D2C();

  return MEMORY[0x282140208](a1, a2, v4);
}

uint64_t sub_22378A0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2237B634C();
  sub_2237B5DEC();
  return sub_2237B636C();
}

unint64_t sub_22378A10C()
{
  result = qword_27D097AF8;
  if (!qword_27D097AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AF8);
  }

  return result;
}

uint64_t sub_22378A160(uint64_t a1)
{
  v2 = sub_22378A7E4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22378A19C(uint64_t a1)
{
  v2 = sub_22378A7E4();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t SiriCapabilityError.descriptionWithoutUnderlying.getter()
{
  result = 0xD00000000000001FLL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriCapabilityError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDEE0];
  v3 = sub_2237B5A7C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22378A360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_223788D2C();

  return MEMORY[0x282140200](a1, a2, a3, v6);
}

uint64_t SiriCapabilityError.description.getter()
{
  v1 = *v0;
  sub_22378A5C8(MEMORY[0x277D84F90], v35);
  sub_22378A6B0(v35, &v33);
  if (v34)
  {
    sub_2237709BC(&v33, v32);
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    v2 = sub_2237B627C();
    v4 = v3;
    MEMORY[0x223DEAAD0](v2);
    v4, v5, v6, v7, v8, v9, v10, v11;
    v13 = 14906;
    v12 = 0xE200000000000000;
    sub_22378A720(v35);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
  }

  else
  {
    sub_22378A720(v35);
    v13 = 0;
    v12 = 0xE000000000000000;
  }

  v14 = "Siri NL assets are missing.";
  v15 = 0xD00000000000001FLL;
  switch(v1)
  {
    case 1:
      v14 = "ets are missing.";
      v15 = 0xD00000000000001BLL;
      break;
    case 2:
      v14 = "ssets are missing.";
      v15 = 0xD000000000000020;
      break;
    case 3:
      v14 = "sets are missing.";
      v15 = 0xD000000000000022;
      break;
    case 4:
      v14 = "f keys found, expected one.";
      v15 = 0xD000000000000021;
      break;
    default:
      break;
  }

  v16 = (v14 | 0x8000000000000000);
  v35[0] = v15;
  v35[1] = v14 | 0x8000000000000000;

  MEMORY[0x223DEAAD0](v13, v12);
  v16, v17, v18, v19, v20, v21, v22, v23;
  v12, v24, v25, v26, v27, v28, v29, v30;
  return v35[0];
}

void sub_22378A540()
{
  sub_223788D2C();

  JUMPOUT(0x223DEA7B0);
}

double sub_22378A5C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_223781B5C(a1 + 32, a2);
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

uint64_t sub_22378A5EC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_22378A634(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22378A6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B38, &qword_2237B8958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22378A720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B38, &qword_2237B8958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22378A78C()
{
  result = qword_27D097B40;
  if (!qword_27D097B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B40);
  }

  return result;
}

unint64_t sub_22378A7E4()
{
  result = qword_27D097B48;
  if (!qword_27D097B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B48);
  }

  return result;
}

unint64_t sub_22378A83C()
{
  result = qword_27D097B50;
  if (!qword_27D097B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B50);
  }

  return result;
}

unint64_t sub_22378A894()
{
  result = qword_27D097B58;
  if (!qword_27D097B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B58);
  }

  return result;
}

unint64_t sub_22378A8E8()
{
  result = qword_27D097B60;
  if (!qword_27D097B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B60);
  }

  return result;
}

uint64_t sub_22378A94C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_22378A9D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22378AB04()
{
  result = qword_27D097B68;
  if (!qword_27D097B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B68);
  }

  return result;
}

unint64_t sub_22378AB5C()
{
  result = qword_27D097B70;
  if (!qword_27D097B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B70);
  }

  return result;
}

unint64_t sub_22378ABB4()
{
  result = qword_27D097B78;
  if (!qword_27D097B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B78);
  }

  return result;
}

unint64_t sub_22378AC0C()
{
  result = qword_27D097B80;
  if (!qword_27D097B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B80);
  }

  return result;
}

unint64_t sub_22378AC64()
{
  result = qword_27D097B88;
  if (!qword_27D097B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B88);
  }

  return result;
}

unint64_t sub_22378ACBC()
{
  result = qword_27D097B90;
  if (!qword_27D097B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B90);
  }

  return result;
}

unint64_t sub_22378AD14()
{
  result = qword_27D097B98;
  if (!qword_27D097B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B98);
  }

  return result;
}

unint64_t sub_22378AD6C()
{
  result = qword_27D097BA0;
  if (!qword_27D097BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097BA0);
  }

  return result;
}

unint64_t sub_22378ADC4()
{
  result = qword_27D097BA8;
  if (!qword_27D097BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097BA8);
  }

  return result;
}

unint64_t sub_22378AE1C()
{
  result = qword_27D097BB0;
  if (!qword_27D097BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097BB0);
  }

  return result;
}

unint64_t sub_22378AE74()
{
  result = qword_27D097BB8;
  if (!qword_27D097BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097BB8);
  }

  return result;
}

unint64_t sub_22378AECC()
{
  result = qword_27D097BC0;
  if (!qword_27D097BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097BC0);
  }

  return result;
}

unint64_t sub_22378AF24()
{
  result = qword_27D097BC8;
  if (!qword_27D097BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097BC8);
  }

  return result;
}

uint64_t sub_22378AF9C()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_22378AFF8()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_6(v7, v62);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  v9 = OUTLINED_FUNCTION_1(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_5(v10, v63);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v12);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_4();
  v14 = objc_allocWithZone(sub_2237B452C());
  v15 = sub_2237B451C();
  v16 = v15;
  if (v15)
  {
    v17 = *(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    sub_2237654A4(v15);
    v18 = OUTLINED_FUNCTION_55(OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    OUTLINED_FUNCTION_4();
    (*(v19 + 16))(v4, v0, v18);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
    v64 = AFDeviceSupportsSiriUOD();
    v23 = OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils;
    sub_223781B5C(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils, v67);
    OUTLINED_FUNCTION_14_5(v67[4]);
    v24 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_31(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext);
    sub_22378EED8(v3 + v24, v5, &unk_27D097C80, &unk_2237B9260);
    if (OUTLINED_FUNCTION_21_2())
    {
      sub_2237710FC(v5, &unk_27D097C80, &unk_2237B9260);
      v2 = 0;
      v18 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_40();
      sub_2237710FC(v5, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_54();
      sub_223771D44(v17);
    }

    v39 = OUTLINED_FUNCTION_6_5();
    v42 = OUTLINED_FUNCTION_42(v39, v40, v41);
    OUTLINED_FUNCTION_58(v42, v43, v44, v45, v46, v47, v48, v49);
    sub_223781B5C(v3 + v23, &v66);
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_45(v3 + v24, v50, &unk_27D097C80, &unk_2237B9260);
    if (OUTLINED_FUNCTION_43())
    {
      sub_2237710FC(v18, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      OUTLINED_FUNCTION_27_0();
      sub_2237710FC(v18, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_28_0();
      sub_223771D44(v16);
    }

    v51 = OUTLINED_FUNCTION_4_7(1, v65);
    OUTLINED_FUNCTION_56(v51, v52, v53, v54, v55, v56, v57, v58);
    v59 = OUTLINED_FUNCTION_7_4();
    sub_223771484(v59, v65, v2, 2, v64, 0, v60, v61, OS_LOG_TYPE_DEFAULT);

    sub_2237710FC(v18, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_51();
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v25 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v25, qword_28131B550);

    v26 = sub_2237B5C8C();
    sub_2237B5FFC();
    v1, v27, v28, v29, v30, v31, v32, v33;
    if (OUTLINED_FUNCTION_57())
    {
      OUTLINED_FUNCTION_20();
      v34 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_50(v34);
      v35 = OUTLINED_FUNCTION_23_1(4.8149e-34);
      *(v0 + 4) = sub_223763694(v35, v1, v36);
      OUTLINED_FUNCTION_17_3(&dword_22375F000, v37, v38, "Failed to create StartTextRequestMessage for request Id: %s");
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_14_2();
}

void sub_22378B3F0()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for RequestDispatcher.SessionContext(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_6(v10, v60);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  v12 = OUTLINED_FUNCTION_1(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_5(v13, v61);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v15);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39();
  v17 = objc_allocWithZone(sub_2237B494C());
  v18 = sub_2237B48CC();
  if (v18)
  {
    v63 = v18;
    sub_2237654A4(v18);
    v19 = sub_2237B412C();
    OUTLINED_FUNCTION_4();
    (*(v20 + 16))(v1, v8, v19);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
    v62 = AFDeviceSupportsSiriUOD();
    v24 = OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils;
    sub_223781B5C(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils, v66);
    OUTLINED_FUNCTION_14_5(v66[4]);
    v25 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_31(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext);
    sub_22378EED8(v0 + v25, v2, &unk_27D097C80, &unk_2237B9260);
    if (OUTLINED_FUNCTION_21_2())
    {
      sub_2237710FC(v2, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      sub_22378ED08(v2, v64);
      sub_2237710FC(v2, &unk_27D097C80, &unk_2237B9260);
      v19 = *(v64 + *(v6 + 20) + 8);

      sub_223771D44(v64);
    }

    OUTLINED_FUNCTION_6_5();
    v40 = sub_2237B58AC();
    OUTLINED_FUNCTION_58(v40, v41, v42, v43, v44, v45, v46, v47);
    sub_223781B5C(v0 + v24, &v65);
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_45(v0 + v25, v48, &unk_27D097C80, &unk_2237B9260);
    if (OUTLINED_FUNCTION_43())
    {
      sub_2237710FC(v19, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      OUTLINED_FUNCTION_27_0();
      sub_2237710FC(v19, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_28_0();
      sub_223771D44(v25);
    }

    v49 = OUTLINED_FUNCTION_4_7(1, v6);
    OUTLINED_FUNCTION_56(v49, v50, v51, v52, v53, v54, v55, v56);
    v57 = OUTLINED_FUNCTION_7_4();
    sub_223771484(v57, v6, v24, 2, v62, 0, v58, v59, OS_LOG_TYPE_INFO);

    sub_2237710FC(v19, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_51();
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v26 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v26, qword_28131B550);

    v27 = sub_2237B5C8C();
    sub_2237B5FFC();
    v4, v28, v29, v30, v31, v32, v33, v34;
    if (OUTLINED_FUNCTION_57())
    {
      OUTLINED_FUNCTION_20();
      v35 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_50(v35);
      v36 = OUTLINED_FUNCTION_23_1(4.8149e-34);
      *(v1 + 4) = sub_223763694(v36, v4, v37);
      OUTLINED_FUNCTION_17_3(&dword_22375F000, v38, v39, "Failed to create StartRootTextRequestMessage for request Id: %s");
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22378B880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v31 = a7;
  v32 = a8;
  v29 = a4;
  v30 = a5;
  v33 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097BD0, &qword_2237B9120);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v28 - v19;
  v21 = *MEMORY[0x277D5CDC8];
  v22 = sub_2237B540C();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
  sub_2237B491C();

  sub_2237B48EC();
  v23 = sub_2237B412C();
  (*(*(v23 - 8) + 16))(v17, v29, v23);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v23);
  sub_2237B493C();

  sub_2237B492C();
  v24 = sub_2237B544C();
  (*(*(v24 - 8) + 16))(v14, v31, v24);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v24);
  sub_2237B48FC();
  v25 = v32;
  sub_2237B490C();
  v26 = sub_2237B549C();
  (*(*(v26 - 8) + 16))(v11, v33, v26);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v26);
  return sub_2237B48DC();
}

uint64_t sub_22378BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v22 = a5;
  v23 = a7;
  v21 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = *MEMORY[0x277D5CDC8];
  v16 = sub_2237B540C();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
  sub_2237B4E8C();

  sub_2237B4E6C();
  v17 = sub_2237B412C();
  (*(*(v17 - 8) + 16))(v11, v21, v17);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v17);
  sub_2237B4EAC();

  sub_2237B4E9C();
  sub_2237B4E5C();

  sub_2237B4EBC();
  v18 = a9;
  return sub_2237B4E7C();
}

BOOL sub_22378BE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_30_0();
  v7 = v6;
  swift_getObjectType();
  v8 = objc_allocWithZone(sub_2237B4DAC());
  v9 = sub_2237B4D1C();
  if (v9)
  {
    OUTLINED_FUNCTION_46();
    v10 = OUTLINED_FUNCTION_9_6();
    sub_223786220(v10, v11, v12, v13);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v14 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v14, qword_28131B550);

    v15 = sub_2237B5C8C();
    v16 = sub_2237B5FFC();
    OUTLINED_FUNCTION_48(v16, v17, v18, v19, v20, v21, v22, v23);
    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v30 = OUTLINED_FUNCTION_29_0();
      *v7 = 136315138;
      v24 = OUTLINED_FUNCTION_16_5();
      *(v7 + 4) = sub_223763694(v24, v25, v26);
      OUTLINED_FUNCTION_19(&dword_22375F000, v27, v28, "Failed to create MUXTextBasedResultSelectedMessage for request Id: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_8();
    }
  }

  return v9 != 0;
}

uint64_t sub_22378BFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a5;
  v22 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v21 - v15;
  v17 = *MEMORY[0x277D5CDC8];
  v18 = sub_2237B540C();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v18);
  sub_2237B4D7C();

  sub_2237B4D3C();
  v19 = sub_2237B412C();
  (*(*(v19 - 8) + 16))(v13, a4, v19);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v19);
  sub_2237B4D9C();

  sub_2237B4D8C();
  sub_2237B4D6C();
  sub_2237B4D4C();
  sub_2237B4D5C();
  sub_22378EED8(v22, v10, &qword_27D097900, &qword_2237B8860);
  return sub_2237B4D2C();
}

uint64_t sub_22378C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25[1] = a5;
  v26 = a7;
  v25[0] = a4;
  v27 = a11;
  v28 = a10;
  v29 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v25 - v18;
  v20 = *MEMORY[0x277D5CDC8];
  v21 = sub_2237B540C();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
  sub_2237B530C();

  sub_2237B52EC();
  v22 = sub_2237B412C();
  (*(*(v22 - 8) + 16))(v16, v25[0], v22);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v22);
  sub_2237B533C();

  sub_2237B532C();
  v23 = sub_2237B56DC();
  (*(*(v23 - 8) + 16))(v13, v26, v23);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v23);
  sub_2237B531C();

  sub_2237B534C();

  return sub_2237B52FC();
}

BOOL sub_22378C638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void), uint64_t a12, uint64_t (*a13)(uint64_t, void *))
{
  OUTLINED_FUNCTION_30_0();
  v40[2] = v13;
  v40[3] = v14;
  v40[4] = v15;
  v40[5] = v16;
  v40[6] = v17;
  v40[7] = v18;
  v40[8] = v19;
  v40[9] = v20;
  v40[10] = a9;
  v40[11] = a10;
  v21 = objc_allocWithZone(a11(0));
  v22 = a13(a12, v40);
  if (v22)
  {
    OUTLINED_FUNCTION_46();
    v23 = OUTLINED_FUNCTION_16_5();
    sub_223786204(v23, v24, a9, a10);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v25 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v25, qword_28131B550);

    v26 = sub_2237B5C8C();
    v27 = sub_2237B5FFC();
    OUTLINED_FUNCTION_48(v27, v28, v29, v30, v31, v32, v33, v34);
    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v35 = OUTLINED_FUNCTION_44();
      v40[13] = v35;
      *a9 = 136315138;
      v36 = OUTLINED_FUNCTION_16_5();
      *(a9 + 4) = sub_223763694(v36, v37, v38);
      OUTLINED_FUNCTION_24_1(&dword_22375F000);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_13_5();
    }
  }

  return v22 != 0;
}

uint64_t sub_22378C7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25[1] = a5;
  v26 = a7;
  v25[0] = a4;
  v27 = a11;
  v28 = a10;
  v29 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v25 - v18;
  v20 = *MEMORY[0x277D5CDC8];
  v21 = sub_2237B540C();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
  sub_2237B50DC();

  sub_2237B50BC();
  v22 = sub_2237B412C();
  (*(*(v22 - 8) + 16))(v16, v25[0], v22);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v22);
  sub_2237B510C();

  sub_2237B50FC();
  v23 = sub_2237B56DC();
  (*(*(v23 - 8) + 16))(v13, v26, v23);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v23);
  sub_2237B50EC();

  sub_2237B511C();

  return sub_2237B50CC();
}

BOOL sub_22378CAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_30_0();
  v9 = objc_allocWithZone(sub_2237B525C());
  v10 = sub_2237B51FC();
  v11 = v10;
  if (v10)
  {
    sub_2237654A4(v10);
    v12 = OUTLINED_FUNCTION_16_5();
    sub_223786220(v12, v13, a6, a7);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v14 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v14, qword_28131B550);

    v15 = sub_2237B5C8C();
    v16 = sub_2237B5FFC();
    OUTLINED_FUNCTION_48(v16, v17, v18, v19, v20, v21, v22, v23);
    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v30 = OUTLINED_FUNCTION_29_0();
      *a6 = 136315138;
      v24 = OUTLINED_FUNCTION_16_5();
      *(a6 + 4) = sub_223763694(v24, v25, v26);
      OUTLINED_FUNCTION_19(&dword_22375F000, v27, v28, "Failed to create StoppedListeningForTextContinuationForPlannerMessage for request Id: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_8();
    }
  }

  return v11 != 0;
}