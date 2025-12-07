uint64_t sub_2237A6320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_2237B551C();
  (*(*(v16 - 8) + 16))(v15, a2, v16);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  sub_2237B4CAC();

  sub_2237B4CBC();
  v17 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  v18 = sub_2237B412C();
  (*(*(v18 - 8) + 16))(v12, a5 + v17, v18);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
  sub_2237B4CDC();
  v19 = *MEMORY[0x277D5CDC8];
  v20 = sub_2237B540C();
  (*(*(v20 - 8) + 104))(v9, v19, v20);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v20);
  return sub_2237B4CCC();
}

void sub_2237A6598()
{
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v0 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v0, qword_28131B550);
  v17 = sub_2237B5C8C();
  v1 = sub_2237B5FFC();
  if (OUTLINED_FUNCTION_315(v1, v2, v3, v4, v5, v6, v7, v8, v15, v17))
  {
    *OUTLINED_FUNCTION_7_3() = 0;
    OUTLINED_FUNCTION_222(&dword_22375F000, v9, v10, "Operation not supported.", v11, v12, v13, v14, v16, v18);
    OUTLINED_FUNCTION_74();
  }
}

id RequestDispatcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2237A67E4()
{
  sub_2237B563C();
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2237A688C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

char *sub_2237A68B0(char *result, int64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097CC8, &qword_2237B9280);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 16);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = (a4 + 32);
  if (v9)
  {
    if (v14 != a4 || &v17[16 * v12] <= v16)
    {
      memmove(v16, v17, 16 * v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_2237A69B8(char *result, int64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097D18, &qword_2237B92D8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = (a4 + 32);
  if (v9)
  {
    if (v14 != a4 || &v17[v12] <= v16)
    {
      memmove(v16, v17, v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_2237A6AAC(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097D30, &qword_2237B92F0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || a4 + 32 + 40 * v12 <= (v14 + 4))
    {
      memmove(v14 + 4, (a4 + 32), 40 * v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097D38, &unk_2237B92F8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_2237A6BE0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097CC8, &qword_2237B9280);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

char *sub_2237A6C5C(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_2237A6C84(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_150(a3, result);
  }

  return result;
}

char *sub_2237A6CA4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_150(a3, result);
  }

  return result;
}

void *sub_2237A6CCC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2237A6D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2237A6D98(uint64_t a1, uint64_t a2)
{
  sub_2237B563C();
  sub_223766F90(&qword_28131A898, MEMORY[0x277D5D268], MEMORY[0x277D5D270]);
  return sub_2237B5E0C() & 1;
}

BOOL sub_2237A6E28(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_2237B563C() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void sub_2237A6EFC(uint64_t a1, SRDRequestDispatcherInternal *a2, void *a3)
{
  v12 = sub_2237B5E1C();
  a2, v5, v6, v7, v8, v9, v10, v11;
  [a3 setAceId_];
}

void sub_2237A6F60()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_14_2();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_2237A70AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v125 = v26;
  OUTLINED_FUNCTION_174();
  v27 = sub_2237B5CCC();
  v28 = OUTLINED_FUNCTION_8_6(v27, &a16);
  v131 = v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v30);
  v120 = sub_2237B603C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v32);
  v33 = sub_2237B605C();
  v34 = OUTLINED_FUNCTION_8_6(v33, &a17);
  v36 = v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  v39 = v38 - v37;
  v40 = sub_2237B5D0C();
  v41 = OUTLINED_FUNCTION_8_6(v40, &a11);
  v127 = v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_17_4();
  v43 = sub_2237B5C7C();
  v44 = OUTLINED_FUNCTION_8_6(v43, &a13);
  v129 = v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_158(v48);
  OUTLINED_FUNCTION_204(v147);
  MEMORY[0x28223BE20](v49);
  v51 = v112 - v50;
  v147[0] = sub_2237B571C();
  v147[1] = MEMORY[0x277D60048];
  v121 = v147[0];
  v146[0] = v25;
  v52 = sub_223761B80();
  v126 = v51;
  v133 = v52;
  sub_2237B574C();
  v53 = qword_28131B3C0;
  v135 = v20;
  swift_unknownObjectRetain_n();
  if (v53 != -1)
  {
    swift_once();
  }

  v54 = qword_28131B5E0;
  v113 = qword_28131B5E0;

  LODWORD(v118) = AFDeviceSupportsSiriUOD();
  LODWORD(v117) = AFShouldRunAsrOnServerForUOD();
  v55 = type metadata accessor for UAFAssetSetObserverProvider();
  v56 = swift_allocObject();
  v138 = v55;
  v139 = &off_2836D3A40;
  *&v136 = v56;
  v57 = type metadata accessor for AssetInstrumentationLogger(0);
  v58 = OUTLINED_FUNCTION_369(v57);
  v112[3] = sub_223766240(0, &qword_28131A7D8, 0x277D85C78);
  sub_2237B5CDC();
  v115 = *MEMORY[0x277D85268];
  v59 = *(v36 + 104);
  v112[5] = v36 + 104;
  v114 = v59;
  v59(v39);
  *&v143 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_140();
  v112[2] = sub_223766F90(v60, v61, MEMORY[0x277D85238]);
  v112[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979A8, &qword_2237B8500);
  OUTLINED_FUNCTION_4_8();
  v122 = v62;
  v112[4] = sub_223766FD8(v63, &qword_27D0979A8, &qword_2237B8500, v64);
  sub_2237B60FC();
  *(v58 + 16) = sub_2237B608C();
  v65 = OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_currentSessionId;
  v66 = sub_2237B412C();
  OUTLINED_FUNCTION_2_1(v58 + v65, v67, v68, v66);
  *(v58 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging) = 0;
  *(v58 + 24) = v54;
  *(v58 + 32) = v118;
  *(v58 + 33) = v117;
  sub_2237709BC(&v136, v58 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetSetObserverProvider);
  sub_223781B5C(v146, &v136);
  v69 = objc_opt_self();
  v118 = [v69 sharedPreferences];
  v70 = [v69 sharedPreferences];
  OUTLINED_FUNCTION_297();
  v71 = sub_2237B58BC();
  v72 = OUTLINED_FUNCTION_369(v71);
  sub_2237B58CC();
  v73 = OUTLINED_FUNCTION_250();
  v117 = type metadata accessor for RequestDispatcher(v73);
  v74 = objc_allocWithZone(v117);
  v144 = v71;
  v145 = MEMORY[0x277D600A8];
  v116 = v72;
  *&v143 = v72;
  v75 = OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue;

  v119 = v21;
  sub_2237B5CFC();
  v114(v39, v115, v132);
  v142 = MEMORY[0x277D84F90];
  sub_2237B60FC();
  *&v74[v75] = sub_2237B608C();
  v76 = OBJC_IVAR___SRDRequestDispatcherInternal_aceCommandDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097D28, &qword_2237B92E8);
  *&v74[v76] = sub_2237B5DBC();
  v77 = &v74[OBJC_IVAR___SRDRequestDispatcherInternal_activeUserSessionObserver];
  *(v77 + 4) = 0;
  *v77 = 0u;
  *(v77 + 1) = 0u;
  v78 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
  v79 = type metadata accessor for RequestDispatcher.SessionContext(0);
  OUTLINED_FUNCTION_2_1(&v74[v78], v80, v81, v79);
  *&v74[OBJC_IVAR___SRDRequestDispatcherInternal_serviceHelper] = v135;
  *&v74[OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil] = v113;
  *&v74[OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger] = v58;
  v82 = *&v74[v75];
  type metadata accessor for Broker();
  swift_allocObject();
  swift_unknownObjectRetain();

  v83 = sub_223781FF0(v82);
  *&v74[OBJC_IVAR___SRDRequestDispatcherInternal_broker] = v83;
  type metadata accessor for MessagePublisher();
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *&v74[OBJC_IVAR___SRDRequestDispatcherInternal_messagePublisher] = v84;
  type metadata accessor for SessionsManager(0);
  v85 = *&v74[v75];
  swift_unownedRetain();
  v86 = v85;
  OUTLINED_FUNCTION_370();
  *&v74[OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager] = sub_2237B1F48(v85, v83);
  v87 = v118;
  *&v74[OBJC_IVAR___SRDRequestDispatcherInternal_afPreferences] = v118;
  sub_223781B5C(&v143, &v74[OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils]);
  sub_223781B5C(&v136, &v74[OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker]);
  v88 = v87;
  v74[OBJC_IVAR___SRDRequestDispatcherInternal_isMUXEnabled] = sub_2237B578C() & 1;
  v141.receiver = v74;
  v141.super_class = v117;
  v89 = objc_msgSendSuper2(&v141, sel_init);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(&v136);
  __swift_destroy_boxed_opaque_existential_0Tm(&v143);
  v90 = v89;
  v91 = v134;
  sub_2237B574C();
  v92 = *&v90[OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue];
  v132 = v90;
  v93 = v129;
  v94 = v124;
  v95 = v91;
  v96 = v130;
  (*(v129 + 16))(v124, v95, v130);
  sub_223781B5C(v146, &v143);
  v97 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v98 = (v123 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v98 + 47) & 0xFFFFFFFFFFFFFFF8;
  v100 = swift_allocObject();
  (*(v93 + 32))(v100 + v97, v94, v96);
  sub_2237709BC(&v143, v100 + v98);
  OUTLINED_FUNCTION_183();
  *(v100 + v99) = v101;
  *(v100 + ((v99 + 15) & 0xFFFFFFFFFFFFFFF8)) = v90;
  v139 = sub_2237A92B4;
  v140 = v100;
  *&v136 = MEMORY[0x277D85DD0];
  *(&v136 + 1) = 1107296256;
  v137 = sub_2237639EC;
  v138 = &block_descriptor_458;
  v102 = _Block_copy(&v136);
  v103 = v92;
  v104 = v119;
  sub_2237B5CEC();
  v142 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_5();
  sub_223766F90(v105, v106, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C90, qword_2237B7940);
  sub_223766FD8(&qword_28131A820, &unk_27D097C90, qword_2237B7940, v122);
  OUTLINED_FUNCTION_287();
  sub_2237B60FC();
  MEMORY[0x223DEACD0](0, v104, v94, v102);
  swift_unknownObjectRelease();
  _Block_release(v102);

  OUTLINED_FUNCTION_96();
  v107 = OUTLINED_FUNCTION_340();
  v108(v107);
  OUTLINED_FUNCTION_96();
  v109(v104, v128);
  v110 = *(v93 + 8);
  v111 = OUTLINED_FUNCTION_335();
  v110(v111);

  OUTLINED_FUNCTION_185(&a9);
  sub_2237B572C();
  swift_unknownObjectRelease();
  (v110)(v102, v96);
  __swift_destroy_boxed_opaque_existential_0Tm(v146);
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_14_2();
}

void sub_2237A80E0(uint64_t a1)
{
  sub_2237A8AD0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of RequestDispatcher.startTextRequest(withAssistantId:requestId:inputOrigin:utterance:requestContextData:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x238))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x240))();
}

uint64_t dispatch thunk of RequestDispatcher.updateVoiceCommandContext(withAssistantId:requestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:)()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x308);

  return v2();
}

void sub_2237A8AD0(uint64_t a1)
{
  if (!qword_28131B0A0[0])
  {
    type metadata accessor for RequestDispatcher.SessionContext(255);
    v1 = sub_2237B60AC();
    if (!v2)
    {
      atomic_store(v1, qword_28131B0A0);
    }
  }
}

uint64_t sub_2237A8B28(uint64_t a1)
{
  result = sub_2237B56DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroy_424Tm()
{
  v1 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t objectdestroy_362Tm()
{
  v1 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  *(v0 + v7 + 8), v8, v9, v10, v11, v12, v13, v14;

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

unint64_t sub_2237A9230()
{
  result = qword_28131AE70;
  if (!qword_28131AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131AE70);
  }

  return result;
}

void sub_2237A92B4()
{
  v1 = sub_2237B5C7C();
  OUTLINED_FUNCTION_270(v1);
  OUTLINED_FUNCTION_268();
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_22378F2E8(v0 + v2, (v0 + v3), v5, v6);
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 256) = a6;
  *(v6 - 304) = a5;
  *(v6 - 312) = a4;
  *(v6 - 320) = a3;

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_66()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x223DEB690);
}

void OUTLINED_FUNCTION_68(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  *(a5 - 256) = a4;
  *(v5 - 312) = a3;
  *(v5 - 320) = a2;
  *(v5 - 336) = a1;
}

uint64_t OUTLINED_FUNCTION_98()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_99()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_108()
{
  v1 = *(v0 - 312);
  *(v0 - 192) = *(v0 - 320);
  *(v0 - 184) = v1;
}

void OUTLINED_FUNCTION_109()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x223DEB690);
}

__n128 OUTLINED_FUNCTION_110@<Q0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = *(a1 - 256);
  result = *(v1 - 384);
  *(v1 - 184) = result;
  return result;
}

void OUTLINED_FUNCTION_116()
{

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_125()
{
}

void OUTLINED_FUNCTION_127()
{
  *(v2 - 152) = v0;
  *(v2 - 144) = v1;
  *(v2 - 184) = MEMORY[0x277D85DD0];
}

void OUTLINED_FUNCTION_135()
{

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_149()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_152(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 96);

  _os_log_impl(a1, v8, v4, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_164()
{

  return sub_2237B5C7C();
}

__n128 OUTLINED_FUNCTION_167@<Q0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  result = v2[1];
  v2[-24] = result;
  return result;
}

void OUTLINED_FUNCTION_173()
{

  JUMPOUT(0x223DEACD0);
}

uint64_t OUTLINED_FUNCTION_175()
{
}

uint64_t OUTLINED_FUNCTION_177(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 160) = a6;
  *(v9 - 152) = v8;
  *(v9 - 224) = a7;
  *(v9 - 216) = a8;
  *(v9 - 232) = a3;
  v11 = *(v9 + 24);
  *(v9 - 176) = *(v9 + 16);
  *(v9 - 168) = v11;

  return sub_2237B5CCC();
}

uint64_t OUTLINED_FUNCTION_178()
{

  return sub_2237B60FC();
}

void OUTLINED_FUNCTION_187(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  *(v5 - 96) = *(v5 + 24);
  *(v5 - 88) = a5;
  *(v5 - 112) = a4;
  *(v5 - 104) = v6;
}

void OUTLINED_FUNCTION_189(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 176) = v1;
  *(v2 - 168) = v3;
}

void OUTLINED_FUNCTION_190(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 208) = v1;
  *(v2 - 200) = v3;
}

uint64_t OUTLINED_FUNCTION_195()
{
}

uint64_t OUTLINED_FUNCTION_196(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 344) = a3;
  *(v3 - 360) = a2;
  *(v3 - 328) = *(v3 + 16);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_198()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 288) = a8;
  *(v8 - 312) = a7;
  *(v8 - 328) = a6;
}

BOOL OUTLINED_FUNCTION_218()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_219()
{
  *(v2 - 192) = v1;
  *(v2 - 184) = v0;

  sub_22378B3F0();
}

uint64_t OUTLINED_FUNCTION_220()
{
  *(v1 - 288) = v0;

  return sub_2237B549C();
}

uint64_t OUTLINED_FUNCTION_221()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_222(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t OUTLINED_FUNCTION_223(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a7 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_2237B573C(a1, a2, a3, a4, a5, a6, v9, v7);
}

uint64_t OUTLINED_FUNCTION_224()
{
  *(v5 - 144) = v2;
  *(v5 - 136) = v1;
  *(v5 - 128) = v0;
  *(v5 - 120) = v4;
  *(v5 - 112) = v3;
  *(v5 - 104) = *(v5 - 180);
  return 0;
}

uint64_t OUTLINED_FUNCTION_237(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 - 180) = a5;

  return sub_2237B563C();
}

void OUTLINED_FUNCTION_244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 312) = a7;
  *(v7 - 320) = a6;
  *(v7 - 328) = a5;
}

uint64_t OUTLINED_FUNCTION_252()
{
}

uint64_t OUTLINED_FUNCTION_253()
{
}

uint64_t OUTLINED_FUNCTION_260()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_280(uint64_t a1)
{

  return sub_2237B58AC();
}

void OUTLINED_FUNCTION_282(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{

  v8, a2, a3, a4, a5, a6, a7, a8;
}

uint64_t OUTLINED_FUNCTION_305()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_308(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_309()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_310()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_311()
{

  return swift_arrayDestroy();
}

unint64_t OUTLINED_FUNCTION_313()
{
  *(v2 - 176) = *(v2 - 256);
  *(v2 - 168) = v1;
  *(v2 - 160) = v0;

  return sub_223761B80();
}

uint64_t OUTLINED_FUNCTION_320(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a7 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_2237B573C(a1, a2, a3, a4, a5, a6, v9, v7);
}

void OUTLINED_FUNCTION_336(uint64_t a1@<X8>)
{
  *(v3 - 176) = v2;
  *(v3 - 168) = v1;
  *(v3 - 248) = (a1 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_359(float a1)
{
  *v2 = a1;

  return sub_223763694(v3, v1, (v4 - 144));
}

void OUTLINED_FUNCTION_360(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_361(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{

  v8, a2, a3, a4, a5, a6, a7, a8;
}

void OUTLINED_FUNCTION_362()
{
  v3 = *(v1 - 232);

  dispatch_sync(v3, v0);
}

uint64_t OUTLINED_FUNCTION_363(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a7 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_2237B573C(a1, a2, a3, a4, a5, a6, v9, v7);
}

uint64_t OUTLINED_FUNCTION_364(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a7 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_2237B573C(a1, a2, a3, a4, a5, a6, v9, v7);
}

BOOL OUTLINED_FUNCTION_365()
{

  return os_log_type_enabled(v0, v1);
}

double OUTLINED_FUNCTION_366()
{

  return result;
}

BOOL OUTLINED_FUNCTION_368()
{
  v3 = *(v1 - 96);

  return os_log_type_enabled(v3, v0);
}

uint64_t OUTLINED_FUNCTION_369(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_370()
{
}

uint64_t OUTLINED_FUNCTION_371(uint64_t a1, SRDRequestDispatcherInternal *a2)
{

  return sub_223763694(a1, a2, (v2 - 136));
}

uint64_t sub_2237AA494(char a1, char a2)
{
  v3 = sub_22376AC64(a1);
  v5 = v4;
  v6 = sub_22376AC64(a2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_2237B629C();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

uint64_t sub_2237AA520(uint64_t a1)
{
  result = sub_2237B412C();
  if (v2 <= 0x3F)
  {
    result = sub_2237B40DC();
    if (v3 <= 0x3F)
    {
      result = sub_2237B551C();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2237AA64C(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = v2;
  *(v3 + 72) = a2;
  *(v3 + 56) = a1;
  v4 = sub_2237B42CC();
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097720, &qword_2237B7AF0);
  *(v3 + 120) = swift_task_alloc();
  v5 = sub_2237B429C();
  *(v3 + 128) = v5;
  *(v3 + 136) = *(v5 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v6 = sub_2237B42AC();
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  sub_2237B412C();
  *(v3 + 192) = swift_task_alloc();
  v7 = sub_2237B592C();
  *(v3 + 200) = v7;
  *(v3 + 208) = *(v7 - 8);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = type metadata accessor for IntelligenceFlowProxyError(0);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = *(v2 + 16);
  *(v3 + 272) = *(v2 + 8);
  *(v3 + 280) = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_2237AA91C, 0, 0);
}

uint64_t sub_2237AA91C()
{
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27D0972A0);
  }

  v1 = sub_2237B5C9C();
  v0[37] = __swift_project_value_buffer(v1, qword_27D0999E8);
  v2 = sub_2237B5C8C();
  v3 = sub_2237B5FEC();
  if (OUTLINED_FUNCTION_261(v3))
  {
    v4 = v0[33];
    v5 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_28_2(4.8752e-34, v25, v6);
    OUTLINED_FUNCTION_73(v7);
    v8 = OUTLINED_FUNCTION_233();
    v11 = sub_223763694(v8, v9, v10);
    v4, v12, v13, v14, v15, v16, v17, v18;
    *(v5 + 14) = v11;
    OUTLINED_FUNCTION_71_0(&dword_22375F000, v19, v20, "%{public}s, requestId: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  v21 = OUTLINED_FUNCTION_15_6();
  v0[38] = v21;
  *v21 = v0;
  v21[1] = sub_2237AAAB4;
  v22 = OUTLINED_FUNCTION_30_2(v0[30]);

  return v24(v22);
}

uint64_t sub_2237AAAB4()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  OUTLINED_FUNCTION_11_7();
  *v4 = v3;
  *v4 = *v1;
  v3[39] = v5;

  if (v0)
  {
    sub_2237B1B44(v3[30], v3[31]);
  }

  else
  {
    v6 = v3[8];
    v3[40] = v6[6];
    v3[41] = v6[4];
    v3[42] = v6[5];
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2237AABDC()
{
  v52 = v0;
  v1 = v0[42];
  v36 = v0[41];
  v2 = v0[40];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[28];
  v6 = v0[26];
  v37 = v0[25];
  v38 = v0[27];
  v7 = v0[24];
  v43 = v0[21];
  v44 = v0[20];
  v45 = v0[22];
  v35 = v0[19];
  v8 = v0[17];
  v39 = v0[23];
  v40 = v0[18];
  v49 = v0[16];
  v41 = v0[15];
  v46 = v0[14];
  v48 = v0[13];
  v42 = v0[11];
  v47 = v0[10];
  sub_2237B595C();

  sub_22377A88C(v7, v3, v4, v36, v1, v2, 2, v5);
  sub_2237B428C();
  (*(v8 + 104))(v35, *MEMORY[0x277D1C8B0], v49);
  v9 = *(v6 + 16);
  v9(v38, v5, v37);

  sub_2237B424C();
  (*(v8 + 16))(v40, v35, v49);
  MEMORY[0x223DE8E80](v40);
  sub_2237B423C();
  v9(v41, v38, v37);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v37);
  sub_2237B421C();
  v10 = *(v6 + 8);
  v0[43] = v10;
  v0[44] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v38, v37);
  (*(v8 + 8))(v35, v49);
  (*(v43 + 104))(v39, *MEMORY[0x277D1C6E8], v44);
  sub_2237B595C();
  (*(v43 + 16))(v45, v39, v44);

  sub_2237B42BC();
  v12 = (v42 + 16);
  v11 = *(v42 + 16);
  v11(v48, v46, v47);
  v13 = sub_2237B5C8C();
  v14 = sub_2237B5FEC();
  v15 = OUTLINED_FUNCTION_261(v14);
  v16 = v0[13];
  if (v15)
  {
    v17 = v0[12];
    OUTLINED_FUNCTION_20();
    v50 = OUTLINED_FUNCTION_32();
    v51 = v50;
    *v39 = 136315138;
    v18 = OUTLINED_FUNCTION_233();
    (v11)(v18);
    sub_2237B5E3C();
    v19 = OUTLINED_FUNCTION_44_1();
    v12(v19);
    v20 = sub_223763694(v17, v11, &v51);
    v11, v21, v22, v23, v24, v25, v26, v27;
    *(v39 + 4) = v20;
    OUTLINED_FUNCTION_17_3(&dword_22375F000, v28, v29, "IntelligenceFlowProxy: sending message to IF: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    v30 = v0[10];
    v31 = v0[11];

    v12 = *(v31 + 8);
    (v12)(v16, v30);
  }

  v0[45] = v12;
  sub_2237B596C();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v32 = swift_task_alloc();
  v0[46] = v32;
  *v32 = v0;
  v32[1] = sub_2237AB148;
  v33 = OUTLINED_FUNCTION_17_5(v0[14]);

  return MEMORY[0x2821A9EF8](v33);
}

uint64_t sub_2237AB034()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  sub_2237B1B44(v0[31], v0[9]);
  v3, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v1, v19, v20, v21, v22, v23, v24, v25;

  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_7_6();

  return v26();
}

uint64_t sub_2237AB148()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_11_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2237AB244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_67_0();
  v29 = v28[45];
  v66 = v28[43];
  v67 = v28[44];
  v68 = v28[34];
  v69 = v28[33];
  v70 = v28[35];
  v71 = v28[31];
  v72 = v28[36];
  v30 = v28[28];
  v73 = v28[30];
  v74 = v28[27];
  v31 = v28[25];
  v32 = v28[23];
  v75 = v28[24];
  v76 = v28[22];
  v33 = v28[20];
  v34 = v28[21];
  v77 = v28[19];
  v78 = v28[18];
  v79 = v28[15];
  v80 = v28[13];
  v81 = v28[12];

  v35 = OUTLINED_FUNCTION_57_1();
  v29(v35);
  (*(v34 + 8))(v32, v33);
  v66(v30, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v28 + 2);
  v68, v36, v37, v38, v39, v40, v41, v42;
  v69, v43, v44, v45, v46, v47, v48, v49;
  v70, v50, v51, v52, v53, v54, v55, v56;

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_65_0();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, a26, a27, a28);
}

uint64_t sub_2237AB3D0(uint64_t a1)
{
  v35 = *(v1 + 344);
  v38 = *(v1 + 280);
  v39 = *(v1 + 288);
  v36 = *(v1 + 272);
  v37 = *(v1 + 264);
  v34 = *(v1 + 224);
  v32 = *(v1 + 360);
  v33 = *(v1 + 200);
  v2 = *(v1 + 184);
  v4 = *(v1 + 160);
  v3 = *(v1 + 168);
  v5 = *(v1 + 112);
  v6 = *(v1 + 80);
  **(v1 + 72) = *(v1 + 376);
  OUTLINED_FUNCTION_57_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_7();
  sub_2237B1BFC(v7, v8, &unk_2237B8254);
  OUTLINED_FUNCTION_57_1();
  swift_willThrowTypedImpl();

  v32(v5, v6);
  (*(v3 + 8))(v2, v4);
  v35(v34, v33);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  v36, v9, v10, v11, v12, v13, v14, v15;
  v37, v16, v17, v18, v19, v20, v21, v22;
  v38, v23, v24, v25, v26, v27, v28, v29;

  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_7_6();

  return v30();
}

uint64_t sub_2237AB5AC(uint64_t a1, uint64_t a2)
{
  v3[58] = v2;
  v3[59] = a2;
  v3[57] = a1;
  v4 = sub_2237B42CC();
  v3[60] = v4;
  v3[61] = *(v4 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097720, &qword_2237B7AF0);
  v3[67] = swift_task_alloc();
  v5 = sub_2237B429C();
  v3[68] = v5;
  v3[69] = *(v5 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v6 = sub_2237B42AC();
  v3[72] = v6;
  v3[73] = *(v6 - 8);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  sub_2237B412C();
  v3[77] = swift_task_alloc();
  v7 = sub_2237B592C();
  v3[78] = v7;
  v3[79] = *(v7 - 8);
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = type metadata accessor for IntelligenceFlowProxyError(0);
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v8 = v2[3];
  v3[85] = v2[2];
  v3[86] = v8;
  memcpy(v3 + 2, v2, 0x48uLL);

  return MEMORY[0x2822009F8](sub_2237AB8A0, 0, 0);
}

uint64_t sub_2237AB8A0()
{
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27D0972A0);
  }

  v1 = sub_2237B5C9C();
  v0[87] = __swift_project_value_buffer(v1, qword_27D0999E8);
  v2 = sub_2237B5C8C();
  v3 = sub_2237B5FEC();
  if (OUTLINED_FUNCTION_261(v3))
  {
    v4 = v0[86];
    v5 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_28_2(4.8752e-34, v25, v6);
    OUTLINED_FUNCTION_73(v7);
    v8 = OUTLINED_FUNCTION_233();
    v11 = sub_223763694(v8, v9, v10);
    v4, v12, v13, v14, v15, v16, v17, v18;
    *(v5 + 14) = v11;
    OUTLINED_FUNCTION_71_0(&dword_22375F000, v19, v20, "%{public}s, requestId: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  v21 = OUTLINED_FUNCTION_15_6();
  v0[88] = v21;
  *v21 = v0;
  v21[1] = sub_2237ABA3C;
  v22 = OUTLINED_FUNCTION_30_2(v0[83]);

  return v24(v22);
}

uint64_t sub_2237ABA3C()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  OUTLINED_FUNCTION_11_7();
  *v4 = v3;
  *v4 = *v1;
  v3[89] = v5;

  if (v0)
  {
    sub_2237B1B44(v3[83], v3[84]);
  }

  else
  {
    v6 = v3[58];
    v3[90] = v6[8];
    v3[91] = v6[4];
    v3[92] = v6[5];
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2237ABB68(uint64_t a1)
{
  v56 = v1;
  v2 = v1[92];
  v41 = v1[91];
  v39 = v1[90];
  v3 = v1[86];
  v4 = v1[85];
  v5 = v1[81];
  v6 = v1[79];
  v42 = v1[78];
  v43 = v1[80];
  v7 = v1[77];
  v48 = v1[73];
  v49 = v1[72];
  v50 = v1[75];
  v8 = v1[71];
  v44 = v1[76];
  v45 = v1[70];
  v9 = v1[69];
  v40 = v1[68];
  v46 = v1[67];
  v51 = v1[66];
  v53 = v1[65];
  v47 = v1[61];
  v52 = v1[60];
  sub_2237B595C();

  sub_22377A88C(v7, v4, v3, v41, v2, v39, 2, v5);
  sub_2237B427C();
  (*(v9 + 104))(v8, *MEMORY[0x277D1C8A0], v40);
  v10 = *(v6 + 16);
  v1[93] = v10;
  v1[94] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v43, v5, v42);

  sub_2237B424C();
  (*(v9 + 16))(v45, v8, v40);
  MEMORY[0x223DE8E80](v45);
  sub_2237B423C();
  v10(v46, v43, v42);
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v42);
  sub_2237B421C();
  v11 = *(v6 + 8);
  v1[95] = v11;
  v1[96] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v43, v42);
  (*(v9 + 8))(v8, v40);
  v12 = *MEMORY[0x277D1C6E8];
  v13 = *(v48 + 104);
  v1[97] = v13;
  v1[98] = (v48 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v13(v44, v12, v49);
  sub_2237B595C();
  v14 = *(v48 + 16);
  v1[99] = v14;
  v1[100] = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v50, v44, v49);

  sub_2237B42BC();
  v16 = (v47 + 16);
  v15 = *(v47 + 16);
  v1[101] = v15;
  v1[102] = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v53, v51, v52);
  v17 = sub_2237B5C8C();
  v18 = sub_2237B5FEC();
  v19 = OUTLINED_FUNCTION_261(v18);
  v20 = v1[65];
  if (v19)
  {
    v21 = v1[64];
    OUTLINED_FUNCTION_20();
    v54 = OUTLINED_FUNCTION_32();
    v55 = v54;
    *v42 = 136315138;
    v22 = OUTLINED_FUNCTION_233();
    (v15)(v22);
    sub_2237B5E3C();
    v23 = OUTLINED_FUNCTION_44_1();
    v16(v23);
    v24 = sub_223763694(v21, v15, &v55);
    v15, v25, v26, v27, v28, v29, v30, v31;
    *(v42 + 4) = v24;
    OUTLINED_FUNCTION_17_3(&dword_22375F000, v32, v33, "IntelligenceFlowProxy: sending UserTurnStarted message to IF: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    v34 = v1[60];
    v35 = v1[61];

    v16 = *(v35 + 8);
    (v16)(v20, v34);
  }

  v1[103] = v16;
  sub_2237B596C();
  __swift_project_boxed_opaque_existential_1(v1 + 47, v1[50]);
  v36 = swift_task_alloc();
  v1[104] = v36;
  *v36 = v1;
  v36[1] = sub_2237AC124;
  v37 = OUTLINED_FUNCTION_17_5(v1[66]);

  return MEMORY[0x2821A9EF8](v37);
}

uint64_t sub_2237AC030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_68_0();
  sub_2237B1B44(v18[84], v18[59]);
  OUTLINED_FUNCTION_75(v18 + 11);
  sub_2237B1BA8((v18 + 11));
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_66_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2237AC124()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  OUTLINED_FUNCTION_11_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v3[105] = v0;

  if (!v0)
  {
    v7 = v3[58];
    v3[106] = *(v7 + 48);
    v3[107] = *(v7 + 56);
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2237AC234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_67_0();
  a35 = v37;
  a36 = v38;
  a34 = v36;
  v39 = v36[107];
  v74 = v36[106];
  v81 = v36[101];
  v76 = v36[97];
  v40 = v36[93];
  v80 = v36[99];
  v41 = v36[81];
  v42 = v36[80];
  v43 = v36[78];
  v75 = v36[75];
  v44 = v36[74];
  v45 = v36[72];
  v77 = v36[63];
  v78 = v36[62];
  v79 = v36[60];
  __swift_destroy_boxed_opaque_existential_0Tm(v36 + 47);
  v40(v42, v41, v43);

  sub_22377AF60(v74, v39, v42);
  v76(v44, *MEMORY[0x277D1C890], v45);
  sub_2237B595C();
  v80(v75, v44, v45);

  sub_2237B42BC();
  v81(v78, v77, v79);
  v46 = sub_2237B5C8C();
  v47 = sub_2237B5FEC();
  v48 = OUTLINED_FUNCTION_261(v47);
  v49 = v36[103];
  if (v48)
  {
    v50 = v36[101];
    v51 = v36[62];
    v52 = v36[60];
    OUTLINED_FUNCTION_20();
    v53 = OUTLINED_FUNCTION_32();
    a25 = v53;
    *v77 = 136315138;
    v54 = OUTLINED_FUNCTION_45_1();
    v50(v54);
    v55 = sub_2237B5E3C();
    v57 = v56;
    v49(v51, v52);
    v58 = sub_223763694(v55, v57, &a25);
    v57, v59, v60, v61, v62, v63, v64, v65;
    *(v77 + 4) = v58;
    OUTLINED_FUNCTION_17_3(&dword_22375F000, v66, v67, "IntelligenceFlowProxy: sending Request message to IF: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    v68 = v36[62];
    v69 = v36[60];

    v49(v68, v69);
  }

  sub_2237B596C();
  __swift_project_boxed_opaque_existential_1(v36 + 52, v36[55]);
  v70 = swift_task_alloc();
  v36[108] = v70;
  *v70 = v36;
  v70[1] = sub_2237AC6EC;
  OUTLINED_FUNCTION_17_5(v36[63]);
  OUTLINED_FUNCTION_65_0();

  return MEMORY[0x2821A9EF8](v71);
}

uint64_t sub_2237AC52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_68_0();
  v37 = *(v18 + 760);
  v38 = *(v18 + 768);
  v36 = *(v18 + 648);
  v34 = *(v18 + 824);
  v35 = *(v18 + 624);
  v19 = *(v18 + 528);
  v20 = *(v18 + 480);
  **(v18 + 472) = *(v18 + 840);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_7();
  sub_2237B1BFC(v21, v22, &unk_2237B8254);
  swift_willThrowTypedImpl();

  v34(v19, v20);
  v23 = OUTLINED_FUNCTION_45_1();
  v24(v23);
  v37(v36, v35);
  __swift_destroy_boxed_opaque_existential_0Tm((v18 + 376));
  OUTLINED_FUNCTION_75((v18 + 160));
  sub_2237B1BA8(v18 + 160);
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_66_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v34, v35, v36, v37, v38, a16, a17, a18);
}

uint64_t sub_2237AC6EC()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_11_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 872) = v0;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2237AC7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_67_0();
  v29 = v28[103];
  v49 = v28[95];
  v50 = v28[96];
  v51 = v28[84];
  v52 = v28[83];
  v47 = v28[78];
  v48 = v28[81];
  v53 = v28[80];
  v54 = v28[77];
  v30 = v28[76];
  v31 = v28[74];
  v32 = v28[73];
  v33 = v28[72];
  v55 = v28[75];
  v56 = v28[71];
  v57 = v28[70];
  v58 = v28[67];
  v34 = v28[66];
  v35 = v28[63];
  v60 = v28[65];
  v61 = v28[64];
  v59 = v35;
  v62 = v28[62];
  v36 = v28[60];

  v29(v35, v36);
  v37 = *(v32 + 8);
  v37(v31, v33);
  v29(v34, v36);
  v37(v30, v33);
  v49(v48, v47);
  __swift_destroy_boxed_opaque_existential_0Tm(v28 + 52);
  OUTLINED_FUNCTION_75(v28 + 38);
  sub_2237B1BA8((v28 + 38));

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_65_0();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, a26, a27, a28);
}

uint64_t sub_2237AC9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_68_0();
  v19 = *(v18 + 824);
  v41 = *(v18 + 760);
  v42 = *(v18 + 768);
  v39 = *(v18 + 624);
  v40 = *(v18 + 648);
  v36 = *(v18 + 592);
  v20 = *(v18 + 584);
  v21 = *(v18 + 576);
  v37 = *(v18 + 528);
  v38 = *(v18 + 608);
  v22 = *(v18 + 504);
  v23 = *(v18 + 480);
  **(v18 + 472) = *(v18 + 872);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_7();
  sub_2237B1BFC(v24, v25, &unk_2237B8254);
  swift_willThrowTypedImpl();

  v19(v22, v23);
  v26 = *(v20 + 8);
  v26(v36, v21);
  v19(v37, v23);
  v26(v38, v21);
  v41(v40, v39);
  __swift_destroy_boxed_opaque_existential_0Tm((v18 + 416));
  OUTLINED_FUNCTION_75((v18 + 232));
  sub_2237B1BA8(v18 + 232);
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_66_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, v41, v42, a16, a17, a18);
}

uint64_t sub_2237ACBC0(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = a1;
  v3 = sub_2237B59CC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237ACC98, v1, 0);
}

uint64_t sub_2237ACC98()
{
  v1 = v0[2];
  v2 = qword_27D0999D0;
  v3 = sub_2237B59EC();
  v4 = sub_2237B1BFC(&unk_27D097E60, MEMORY[0x277D46B48], MEMORY[0x277D46B40]);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_2237ACDA4;
  v10 = v0[7];

  return MEMORY[0x2821A9F50](v1 + v2, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2237ACDA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *v6 = *v2;

  v7 = *(v4 + 16);
  if (v1)
  {
    v8 = sub_2237ACF4C;
  }

  else
  {
    *(v5 + 80) = a1;
    v8 = sub_2237ACED4;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2237ACED4()
{
  OUTLINED_FUNCTION_6_1();

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_2237ACF4C()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v3 + 32);
  v7 = OUTLINED_FUNCTION_21_4();
  v6(v7);
  (v6)(v2, v1, v4);
  (*(v3 + 16))(v5, v2, v4);
  type metadata accessor for IntelligenceFlowProxyError(0);
  OUTLINED_FUNCTION_45_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_7();
  sub_2237B1BFC(v8, v9, &unk_2237B8254);
  OUTLINED_FUNCTION_45_1();
  swift_willThrowTypedImpl();
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_7_6();

  return v10();
}

uint64_t sub_2237AD08C(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  v15 = a1[2];
  v16 = *(a1 + 6);
  if (qword_27D0972A0 != -1)
  {
    swift_once();
  }

  v4 = sub_2237B5C9C();
  __swift_project_value_buffer(v4, qword_27D0999E8);
  v5 = sub_2237B5C8C();
  v6 = sub_2237B5FEC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_223763694(0xD000000000000010, 0x80000002237BB410, &v12);
    _os_log_impl(&dword_22375F000, v5, v6, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x223DEB690](v8, -1, -1);
    MEMORY[0x223DEB690](v7, -1, -1);
  }

  v9 = swift_allocObject();
  v10 = v14;
  *(v9 + 16) = v13;
  *(v9 + 32) = v10;
  *(v9 + 48) = v15;
  *(v9 + 64) = v16;
  *(v9 + 72) = v2;

  sub_2237B587C();
}

uint64_t sub_2237AD254(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_27D0972A0 != -1)
  {
    swift_once();
  }

  v3 = sub_2237B5C9C();
  __swift_project_value_buffer(v3, qword_27D0999E8);
  v4 = sub_2237B5C8C();
  v5 = sub_2237B5FEC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_223763694(0xD000000000000010, 0x80000002237BB410, &v10);
    _os_log_impl(&dword_22375F000, v4, v5, "%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x223DEB690](v7, -1, -1);
    MEMORY[0x223DEB690](v6, -1, -1);
  }

  v8 = swift_allocObject();
  memcpy((v8 + 16), __dst, 0x48uLL);
  *(v8 + 88) = v2;

  sub_2237B587C();
}

uint64_t sub_2237AD410(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v2[11] = type metadata accessor for IntelligenceFlowProxyError(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237AD4B0, 0, 0);
}

uint64_t sub_2237AD4B0()
{
  OUTLINED_FUNCTION_6_1();
  sub_2237B1CDC(v0[9], (v0 + 2));
  v1 = OUTLINED_FUNCTION_15_6();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_2237AD550;
  v2 = OUTLINED_FUNCTION_30_2(v0[10]);

  return v4(v2);
}

uint64_t sub_2237AD550()
{
  OUTLINED_FUNCTION_11_1();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    sub_2237B1B44(v6, v5);
    OUTLINED_FUNCTION_17();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = *(v3 + 8);

    return v10();
  }
}

uint64_t sub_2237AD6C4()
{
  OUTLINED_FUNCTION_11_1();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_0_7();
  v4 = sub_2237B1BFC(v2, v3, &unk_2237B8254);
  OUTLINED_FUNCTION_69_0(v4);
  sub_2237B1B44(v1, v5);

  OUTLINED_FUNCTION_5_1();

  return v6();
}

uint64_t sub_2237AD76C(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v2[13] = type metadata accessor for IntelligenceFlowProxyError(0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237AD80C, 0, 0);
}

uint64_t sub_2237AD80C()
{
  OUTLINED_FUNCTION_6_1();
  sub_2237B1AE8(v0[11], (v0 + 2));
  v1 = OUTLINED_FUNCTION_15_6();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_2237AD8AC;
  v2 = OUTLINED_FUNCTION_30_2(v0[12]);

  return v4(v2);
}

uint64_t sub_2237AD8AC()
{
  OUTLINED_FUNCTION_11_1();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    sub_2237B1B44(v6, v5);
    OUTLINED_FUNCTION_17();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = *(v3 + 8);

    return v10();
  }
}

uint64_t sub_2237ADA20()
{
  OUTLINED_FUNCTION_11_1();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_0_7();
  v4 = sub_2237B1BFC(v2, v3, &unk_2237B8254);
  OUTLINED_FUNCTION_69_0(v4);
  sub_2237B1B44(v1, v5);

  OUTLINED_FUNCTION_5_1();

  return v6();
}

id SRDRequestDispatcher.init(underlyingRequestDispatcher:requestDispatcherServiceHelper:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = [v2 initWithUnderlyingRequestDispatcher:sub_2237B628C() requestDispatcherServiceHelper:v0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v1);
  return v3;
}

void *SRDRequestDispatcher.init(underlyingRequestDispatcher:requestDispatcherServiceHelper:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy] = 0;
  v5 = &v2[OBJC_IVAR___SRDRequestDispatcher_featureChecker];
  v6 = sub_2237B571C();
  swift_allocObject();
  v7 = sub_2237B570C();
  v8 = MEMORY[0x277D60048];
  v5[3] = v6;
  v5[4] = v8;
  *v5 = v7;
  v9 = &v2[OBJC_IVAR___SRDRequestDispatcher_reportingProvider];
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  *&v2[OBJC_IVAR___SRDRequestDispatcher_requestDispatcherServiceHelper] = a2;
  sub_22376AEC8(a1, v15);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097DC0, &qword_2237B9350);
  swift_dynamicCast();
  *&v2[OBJC_IVAR___SRDRequestDispatcher_requestDispatcher] = v14[1];
  v10 = type metadata accessor for ReportingProvider();
  OUTLINED_FUNCTION_53_1();
  swift_allocObject();
  v11 = sub_223786A3C();
  v15[3] = v10;
  v15[4] = &off_2836D22B0;
  v15[0] = v11;
  swift_beginAccess();
  sub_2237ADE08(v15, v9);
  swift_endAccess();
  v14[0].receiver = v2;
  v14[0].super_class = SRDRequestDispatcher;
  v12 = [(objc_super *)v14 init];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t sub_2237ADE08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097DD0, &qword_2237B9358);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SRDRequestDispatcher.init(requestDispatcherServiceHelper:)()
{
  OUTLINED_FUNCTION_249();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequestDispatcherServiceHelper_];
  OUTLINED_FUNCTION_46_1();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SRDRequestDispatcher.init(requestDispatcherServiceHelper:)(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy] = 0;
  v4 = &v1[OBJC_IVAR___SRDRequestDispatcher_featureChecker];
  v5 = sub_2237B571C();
  swift_allocObject();
  v6 = sub_2237B570C();
  v7 = MEMORY[0x277D60048];
  v4[3] = v5;
  v4[4] = v7;
  *v4 = v6;
  OUTLINED_FUNCTION_60_0(OBJC_IVAR___SRDRequestDispatcher_reportingProvider);
  *&v1[OBJC_IVAR___SRDRequestDispatcher_requestDispatcherServiceHelper] = a1;
  v8 = objc_allocWithZone(type metadata accessor for RequestDispatcher(0));
  swift_allocObject();
  OUTLINED_FUNCTION_46_1();
  swift_unknownObjectRetain_n();
  v9 = sub_2237B570C();
  sub_2237A70AC(a1, MEMORY[0x277D84F90], v9, 1, v10, v11, v12, v13, v22.receiver, v22.super_class, v23[0], v23[1], v23[2], v23[3], v24[0], v24[1], v24[2], v25, v26, v27);
  v15 = v14;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v16 = &v2[OBJC_IVAR___SRDRequestDispatcher_requestDispatcher];
  *v16 = v15;
  *(v16 + 1) = &protocol witness table for RequestDispatcher;
  v17 = type metadata accessor for ReportingProvider();
  OUTLINED_FUNCTION_53_1();
  v18 = swift_allocObject();
  v25 = v17;
  v26 = &off_2836D22B0;
  v24[0] = sub_223786A3C();
  OUTLINED_FUNCTION_70(v24[0], v19, v20);
  sub_2237ADE08(v24, v4);
  swift_endAccess();
  v22.receiver = v2;
  v22.super_class = SRDRequestDispatcher;
  objc_msgSendSuper2(&v22, sel_init);
  OUTLINED_FUNCTION_46_1();
  swift_unknownObjectRelease();
  return v18;
}

id SRDRequestDispatcher.init(requestDispatcherServiceHelper:bridgeConnectionListeners:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_223766240(0, &qword_28131A7D0, 0x277CEF1B8);
  v3 = sub_2237B5F1C();
  v0, v4, v5, v6, v7, v8, v9, v10;
  v11 = [v2 initWithRequestDispatcherServiceHelper:v1 bridgeConnectionListeners:v3];
  swift_unknownObjectRelease();

  return v11;
}

uint64_t SRDRequestDispatcher.init(requestDispatcherServiceHelper:bridgeConnectionListeners:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy] = 0;
  v6 = &v2[OBJC_IVAR___SRDRequestDispatcher_featureChecker];
  v7 = sub_2237B571C();
  swift_allocObject();
  v8 = sub_2237B570C();
  v9 = MEMORY[0x277D60048];
  v6[3] = v7;
  v6[4] = v9;
  *v6 = v8;
  OUTLINED_FUNCTION_60_0(OBJC_IVAR___SRDRequestDispatcher_reportingProvider);
  *&v2[OBJC_IVAR___SRDRequestDispatcher_requestDispatcherServiceHelper] = a1;
  objc_allocWithZone(type metadata accessor for RequestDispatcher(0));
  swift_allocObject();
  OUTLINED_FUNCTION_46_1();
  swift_unknownObjectRetain_n();
  v10 = sub_2237B570C();
  sub_2237A70AC(a1, a2, v10, 1, v11, v12, v13, v14, v23.receiver, v23.super_class, v24[0], v24[1], v24[2], v24[3], v25[0], v25[1], v25[2], v26, v27, v28);
  v16 = v15;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v17 = &v3[OBJC_IVAR___SRDRequestDispatcher_requestDispatcher];
  *v17 = v16;
  *(v17 + 1) = &protocol witness table for RequestDispatcher;
  v18 = type metadata accessor for ReportingProvider();
  OUTLINED_FUNCTION_53_1();
  v19 = swift_allocObject();
  v26 = v18;
  v27 = &off_2836D22B0;
  v25[0] = sub_223786A3C();
  OUTLINED_FUNCTION_70(v25[0], v20, v21);
  sub_2237ADE08(v25, v6);
  swift_endAccess();
  v23.receiver = v3;
  v23.super_class = SRDRequestDispatcher;
  objc_msgSendSuper2(&v23, sel_init);
  OUTLINED_FUNCTION_46_1();
  swift_unknownObjectRelease();
  return v19;
}

uint64_t SRDRequestDispatcher.cancelRequest(withAssistantId:requestId:reason:)()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_50_1();
  v1 = *(v0 + 8);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_19_5();
  v1(v2);
  OUTLINED_FUNCTION_14_2();

  return swift_unknownObjectRelease();
}

void SRDRequestDispatcher.commands(forDomain:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_55_1();
  v3 = *(v2 + 16);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_21_4();
  v3(v4);
  OUTLINED_FUNCTION_249();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_61_0();
}

uint64_t SRDRequestDispatcher.domains()()
{
  v1 = OUTLINED_FUNCTION_18_4();
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  v2(v1, v0);
  OUTLINED_FUNCTION_249();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SRDRequestDispatcher.handle(_:executionContextInfo:reply:)()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_54_1();
  v1 = *(v0 + 32);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_5_6();
  v1(v2);
  OUTLINED_FUNCTION_14_2();

  return swift_unknownObjectRelease();
}

Swift::Bool __swiftcall SRDRequestDispatcher.implementsCommand(_:forDomain:)(Swift::String _, Swift::String forDomain)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_54_1();
  v3 = *(v2 + 40);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_5_6();
  v3(v4);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_2();
  return result;
}

Swift::Void __swiftcall SRDRequestDispatcher.requestCompleted(withAssistantId:requestId:)(Swift::String withAssistantId, Swift::String requestId)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_54_1();
  v3 = *(v2 + 48);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_5_6();
  v3(v4);
  OUTLINED_FUNCTION_14_2();

  swift_unknownObjectRelease();
}

Swift::Bool __swiftcall SRDRequestDispatcher.sessionExists(forAssistantId:)(Swift::String forAssistantId)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_55_1();
  v2 = *(v1 + 56);
  swift_unknownObjectRetain();
  v3 = OUTLINED_FUNCTION_21_4();
  v2(v3);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_61_0();
  return result;
}

void SRDRequestDispatcher.startSession(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_62_0();
  a17 = v22;
  a18 = v23;
  v24 = v18;
  v26 = v25;
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_55_1();
  v27 = *(v21 + 64);
  swift_unknownObjectRetain();
  v27(v26, v20, v19);
  swift_unknownObjectRelease();
  v28 = *(v18 + OBJC_IVAR___SRDRequestDispatcher_featureChecker + 24);
  v29 = __swift_project_boxed_opaque_existential_1((v18 + OBJC_IVAR___SRDRequestDispatcher_featureChecker), v28);
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &a9 - v31;
  (*(v30 + 16))(&a9 - v31);
  v33 = sub_2237B57DC();
  (*(v30 + 8))(v32, v28);
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0978F8, &unk_2237B8170);
    v34 = *(v24 + OBJC_IVAR___SRDRequestDispatcher_requestDispatcherServiceHelper);
    swift_unknownObjectRetain();
    *(v24 + OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy) = sub_223781240(v34, v26);
  }

  OUTLINED_FUNCTION_61_0();
}

uint64_t SRDRequestDispatcher.prewarm(withAssistantId:languageCode:prewarmOptions:sharedUserId:)()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_43_1();
  v1 = *(v0 + 72);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_2_7();
  v1(v2);
  OUTLINED_FUNCTION_25_3();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.endSession(withAssistantId:)(Swift::String withAssistantId)
{
  OUTLINED_FUNCTION_62_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v2 + OBJC_IVAR___SRDRequestDispatcher_requestDispatcher + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 80);
  swift_unknownObjectRetain();
  v9(v6, v4, 1, ObjectType, v7);
  swift_unknownObjectRelease();
  *(v2 + OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy) = 0;
  OUTLINED_FUNCTION_61_0();
}

uint64_t SRDRequestDispatcher.startSpeechRequest(withAssistantId:requestId:inputOrigin:location:asrOnServer:requestContextData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *a9)
{
  if (*(v9 + OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy))
  {
    *&v25 = a1;
    *(&v25 + 1) = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    v29 = a6;
    v30 = a9;

    v16 = a9;
    sub_2237AD08C(&v25);
    OUTLINED_FUNCTION_52();
  }

  else
  {
    v19 = *(v9 + OBJC_IVAR___SRDRequestDispatcher_requestDispatcher + 8);
    ObjectType = swift_getObjectType();
    v23 = *(v19 + 88);
    swift_unknownObjectRetain();
    v23(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, ObjectType, v19);
    OUTLINED_FUNCTION_52();

    return swift_unknownObjectRelease();
  }
}

uint64_t SRDRequestDispatcher.startLocalRequest(withAssistantId:requestId:inputOrigin:requestContextData:)()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_43_1();
  v1 = *(v0 + 96);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_2_7();
  v1(v2);
  OUTLINED_FUNCTION_25_3();

  return swift_unknownObjectRelease();
}

uint64_t SRDRequestDispatcher.startTestSpeechRequest(withAssistantId:requestId:enableASR:inputOrigin:location:jitContext:overrideModelPath:requestContextData:)()
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_51_1();
  v1 = *(v0 + 104);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_10_4();
  v1(v2);
  OUTLINED_FUNCTION_52();

  return swift_unknownObjectRelease();
}

uint64_t SRDRequestDispatcher.postTestResultCandidate(withAssistantId:requestId:rcId:recognitionSausage:)()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_43_1();
  v1 = *(v0 + 112);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_2_7();
  v1(v2);
  OUTLINED_FUNCTION_25_3();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.postTestResultSelected(withAssistantId:requestId:rcId:)(Swift::String withAssistantId, Swift::String requestId, Swift::String rcId)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_49_1();
  v4 = *(v3 + 120);
  swift_unknownObjectRetain();
  v5 = OUTLINED_FUNCTION_23_3();
  v4(v5);

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.startUnderstandingOnServerRequest(withAssistantId:requestId:inputOrigin:)(Swift::String withAssistantId, Swift::String requestId, Swift::String inputOrigin)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_49_1();
  v4 = *(v3 + 128);
  swift_unknownObjectRetain();
  v5 = OUTLINED_FUNCTION_23_3();
  v4(v5);

  swift_unknownObjectRelease();
}

void sub_2237AF738(uint64_t a1)
{
  OUTLINED_FUNCTION_62_0();
  v2 = v1;
  v4 = v3;
  sub_2237B5E2C();
  v6 = v5;
  sub_2237B5E2C();
  v8 = v7;
  sub_2237B5E2C();
  v9 = v4;
  v10 = OUTLINED_FUNCTION_42_1();
  v2(v10);

  v6, v11, v12, v13, v14, v15, v16, v17;
  v8, v18, v19, v20, v21, v22, v23, v24;
  OUTLINED_FUNCTION_61_0();

  v25, v26, v27, v28, v29, v30, v31, v32;
}

uint64_t SRDRequestDispatcher.startUnderstandingOnServerTextRequest(withAssistantId:requestId:inputOrigin:utterance:requestContextData:)()
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_14_7();
  v1 = *(v0 + 136);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_10_4();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t SRDRequestDispatcher.startTextRequest(withAssistantId:requestId:inputOrigin:utterance:requestContextData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (*(v9 + OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy))
  {
    __src[0] = a1;
    __src[1] = a2;
    __src[2] = a3;
    __src[3] = a4;
    __src[4] = a5;
    __src[5] = a6;
    __src[6] = a7;
    __src[7] = a8;
    __src[8] = a9;

    v16 = a9;
    sub_2237AD254(__src);
    OUTLINED_FUNCTION_64_0();
  }

  else
  {
    v19 = *(v9 + OBJC_IVAR___SRDRequestDispatcher_requestDispatcher + 8);
    ObjectType = swift_getObjectType();
    v22 = *(v19 + 144);
    swift_unknownObjectRetain();
    v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, ObjectType, v19);
    OUTLINED_FUNCTION_64_0();

    return swift_unknownObjectRelease();
  }
}

void sub_2237AFA1C()
{
  OUTLINED_FUNCTION_26_1();
  v48 = v0;
  v2 = v1;
  v4 = v3;
  v47 = sub_2237B5E2C();
  v6 = v5;
  v7 = sub_2237B5E2C();
  v9 = v8;
  v10 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = v2;
  v17 = v4;
  v48(v47, v6, v7, v9, v10, v12, v13, v15);

  v6, v18, v19, v20, v21, v22, v23, v24;
  v9, v25, v26, v27, v28, v29, v30, v31;
  v12, v32, v33, v34, v35, v36, v37, v38;
  OUTLINED_FUNCTION_25_3();

  v39, v40, v41, v42, v43, v44, v45, v46;
}

uint64_t SRDRequestDispatcher.startDirectActionRequest(withAssistantId:requestId:inputOrigin:utterance:directAction:requestExecutionParameters:requestContextData:)()
{
  OUTLINED_FUNCTION_49_1();
  v1 = *(v0 + 160);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_233();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t SRDRequestDispatcher.startCorrectionSpeechRequest(withAssistantId:requestId:inputOrigin:utterance:previousUtterance:requestContextData:)()
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_14_7();
  v1 = *(v0 + 168);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_10_4();
  v1(v2);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.startSpeechDictationSession(withAssistantId:languageCode:recognitionOnDevice:)(Swift::String withAssistantId, Swift::String languageCode, Swift::Bool recognitionOnDevice)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_50_1();
  v4 = *(v3 + 176);
  swift_unknownObjectRetain();
  v5 = OUTLINED_FUNCTION_19_5();
  v4(v5);
  OUTLINED_FUNCTION_14_2();

  swift_unknownObjectRelease();
}

uint64_t SRDRequestDispatcher.startSpeechDictationRequest(withAssistantId:requestId:inputOrigin:dictationOptions:)()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_43_1();
  v1 = *(v0 + 184);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_2_7();
  v1(v2);
  OUTLINED_FUNCTION_25_3();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.startUnderstandingDictationSession(withAssistantId:languageCode:understandingOnDevice:)(Swift::String withAssistantId, Swift::String languageCode, Swift::Bool understandingOnDevice)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_50_1();
  v4 = *(v3 + 192);
  swift_unknownObjectRetain();
  v5 = OUTLINED_FUNCTION_19_5();
  v4(v5);
  OUTLINED_FUNCTION_14_2();

  swift_unknownObjectRelease();
}

void sub_2237B01A8(uint64_t a1)
{
  OUTLINED_FUNCTION_62_0();
  v2 = v1;
  v4 = v3;
  sub_2237B5E2C();
  v6 = v5;
  sub_2237B5E2C();
  v7 = v4;
  v8 = OUTLINED_FUNCTION_42_1();
  v2(v8);

  v6, v9, v10, v11, v12, v13, v14, v15;
  OUTLINED_FUNCTION_61_0();

  v16, v17, v18, v19, v20, v21, v22, v23;
}

uint64_t SRDRequestDispatcher.startUnderstandingDictationRequest(withAssistantId:requestId:inputOrigin:dictationOptions:)()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_43_1();
  v1 = *(v0 + 200);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_2_7();
  v1(v2);
  OUTLINED_FUNCTION_25_3();

  return swift_unknownObjectRelease();
}

void sub_2237B02C4()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_2237B5E2C();
  v7 = v6;
  sub_2237B5E2C();
  v9 = v8;
  sub_2237B5E2C();
  v10 = v3;
  v11 = v5;
  v12 = OUTLINED_FUNCTION_45_1();
  v1(v12);

  v7, v13, v14, v15, v16, v17, v18, v19;
  v9, v20, v21, v22, v23, v24, v25, v26;
  OUTLINED_FUNCTION_14_2();

  v27, v28, v29, v30, v31, v32, v33, v34;
}

Swift::Void __swiftcall SRDRequestDispatcher.endDictationSession(withAssistantId:)(Swift::String withAssistantId)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_55_1();
  v2 = *(v1 + 208);
  swift_unknownObjectRetain();
  v3 = OUTLINED_FUNCTION_21_4();
  v2(v3);
  OUTLINED_FUNCTION_61_0();

  swift_unknownObjectRelease();
}

void sub_2237B041C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, SRDRequestDispatcherInternal *))
{
  sub_2237B5E2C();
  v7 = v6;
  v8 = a1;
  v9 = OUTLINED_FUNCTION_58_0();
  a4(v9, v7);

  v7, v10, v11, v12, v13, v14, v15, v16;
}

Swift::Void __swiftcall SRDRequestDispatcher.pauseDictationRecognition(withAssistantId:requestId:)(Swift::String withAssistantId, Swift::String requestId)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_54_1();
  v3 = *(v2 + 216);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_5_6();
  v3(v4);
  OUTLINED_FUNCTION_14_2();

  swift_unknownObjectRelease();
}

void sub_2237B050C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_72(a1, a2, a3);
  v6 = v5;
  sub_2237B5E2C();
  v8 = v7;
  v9 = v4;
  v10 = OUTLINED_FUNCTION_59_0();
  v3(v10);

  v6, v11, v12, v13, v14, v15, v16, v17;

  v8, v18, v19, v20, v21, v22, v23, v24;
}

Swift::Void __swiftcall SRDRequestDispatcher.resumeDictationRecognition(withAssistantId:requestId:prefixText:postfixText:selectedText:)(Swift::String withAssistantId, Swift::String requestId, Swift::String prefixText, Swift::String postfixText, Swift::String selectedText)
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_51_1();
  v6 = *(v5 + 224);
  swift_unknownObjectRetain();
  v7 = OUTLINED_FUNCTION_10_4();
  v6(v7);

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.updateVoiceCommandContext(withAssistantId:requestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:)(Swift::String withAssistantId, Swift::String requestId, Swift::String_optional prefixText, Swift::String_optional postfixText, Swift::String_optional selectedText, NSNumber_optional disambiguationActive, NSNumber_optional cursorInVisibleText, NSNumber_optional favorCommandSuppression, NSNumber_optional abortCommandSuppression, NSNumber_optional undoEvent)
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_14_7();
  v11 = *(v10 + 232);
  swift_unknownObjectRetain();
  v12 = OUTLINED_FUNCTION_10_4();
  v11(v12);

  swift_unknownObjectRelease();
}

uint64_t SRDRequestDispatcher.announceNotificationHandlingStateUpdated(withAssistantId:to:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_62_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_51_1();
  v10 = *(v2 + 240);
  swift_unknownObjectRetain();
  v10(v8, v6, v4, v9, v2);
  OUTLINED_FUNCTION_61_0();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.updateConversationContextForRemoteResponse(withAssistantId:requestId:fullSpeak:redactedFullSpeak:fullPrint:redactedFullPrint:listenAfterSpeaking:)(Swift::String withAssistantId, Swift::String requestId, Swift::String_optional fullSpeak, Swift::String_optional redactedFullSpeak, Swift::String_optional fullPrint, Swift::String_optional redactedFullPrint, Swift::Bool listenAfterSpeaking)
{
  object = withAssistantId._object;
  countAndFlagsBits = withAssistantId._countAndFlagsBits;
  v10 = OUTLINED_FUNCTION_27_2();
  v11 = *(v7 + 248);
  swift_unknownObjectRetain();
  v11(countAndFlagsBits, object, requestId._countAndFlagsBits, requestId._object, fullSpeak.value._countAndFlagsBits, fullSpeak.value._object, redactedFullSpeak.value._countAndFlagsBits, redactedFullSpeak.value._object, fullPrint.value._countAndFlagsBits, fullPrint.value._object, redactedFullPrint.value._countAndFlagsBits, redactedFullPrint.value._object, listenAfterSpeaking, v10);

  swift_unknownObjectRelease();
}

void SRDRequestDispatcher.emitAIREventsForSiriRequest(withRequestId:missingAssets:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_62_0();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_2237B412C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237B40EC();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2237692F0(v9, &qword_27D097A50, &unk_2237B7800);
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v14 = sub_2237B5C9C();
    __swift_project_value_buffer(v14, qword_28131B550);

    v15 = sub_2237B5C8C();
    v16 = sub_2237B5FFC();
    v4, v17, v18, v19, v20, v21, v22, v23;
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_20();
      v24 = OUTLINED_FUNCTION_32();
      v35[0] = v24;
      *v13 = 136315138;
      *(v13 + 4) = sub_223763694(v6, v4, v35);
      _os_log_impl(&dword_22375F000, v15, v16, "Invalid UUID string for requestId: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_3_0();
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v25 = OBJC_IVAR___SRDRequestDispatcher_reportingProvider;
    swift_beginAccess();
    sub_2237B16AC(v2 + v25, &v33);
    if (v34)
    {
      sub_2237709BC(&v33, v35);
      __swift_project_boxed_opaque_existential_1(v35, v35[3]);
      v26 = OUTLINED_FUNCTION_57_1();
      sub_2237873F4(v26, v27);
      (*(v11 + 8))(v13, v10);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    else
    {
      sub_2237692F0(&v33, &unk_27D097DD0, &qword_2237B9358);
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_28131AA10);
      }

      v28 = sub_2237B5C9C();
      __swift_project_value_buffer(v28, qword_28131B550);
      v29 = sub_2237B5C8C();
      v30 = sub_2237B5FFC();
      if (OUTLINED_FUNCTION_261(v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_22375F000, v29, v30, "Failed to emit request events as reportingProvider is nil", v31, 2u);
        OUTLINED_FUNCTION_8();
      }

      (*(v11 + 8))(v13, v10);
    }
  }

  OUTLINED_FUNCTION_61_0();
}

void sub_2237B110C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_72(a1, a2, a3);
  v6 = v5;
  v7 = v4;
  v8 = OUTLINED_FUNCTION_59_0();
  v3(v8);

  v6, v9, v10, v11, v12, v13, v14, v15;
}

void SRDRequestDispatcher.emitAIREventForSiriAvailabilty(withLocale:countryCode:isAvailable:orchestrationMode:unavailabilityReasons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7)
{
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_28131AA10);
  }

  v14 = sub_2237B5C9C();
  __swift_project_value_buffer(v14, qword_28131B550);
  v15 = sub_2237B5C8C();
  v16 = sub_2237B5FFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22375F000, v15, v16, "Operation not supported.", v17, 2u);
    OUTLINED_FUNCTION_8();
  }

  v18 = OBJC_IVAR___SRDRequestDispatcher_reportingProvider;
  swift_beginAccess();
  sub_2237B16AC(v7 + v18, &v23);
  if (v24)
  {
    sub_2237709BC(&v23, v25);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_22378821C(a1, a2, a3, a4, a5 & 1, a6, a7);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {
    sub_2237692F0(&v23, &unk_27D097DD0, &qword_2237B9358);
    v19 = sub_2237B5C8C();
    v20 = sub_2237B5FFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22375F000, v19, v20, "Failed to emit request events as reportingProvider is nil", v21, 2u);
      OUTLINED_FUNCTION_3_0();
    }
  }

  OUTLINED_FUNCTION_64_0();
}

void __swiftcall SRDRequestDispatcher.init()(SRDRequestDispatcher *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_2237B1560(uint64_t ***a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t ***, uint64_t))
{
  v6 = a4(a1, a2);
  sub_223763694(v6, v7, a3);
  v8 = OUTLINED_FUNCTION_249();
  v8, v9, v10, v11, v12, v13, v14, v15;
  v16 = *a1;
  *v16 = a3;
  *a1 = v16 + 1;
}

char *sub_2237B15B8(char *result, int64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097338, &qword_2237B77F0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = (a4 + 32);
  if (v9)
  {
    if (v14 != a4 || &v17[v12] <= v16)
    {
      memmove(v16, v17, v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_2237B16AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097DD0, &qword_2237B9358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2237B1730(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_2237B17E4;

  return sub_2237AD410(v2 + 16, a2);
}

uint64_t sub_2237B17E4()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

uint64_t sub_2237B18C4(void *__src, uint64_t a2)
{
  memcpy((v2 + 16), __src, 0x48uLL);
  v4 = swift_task_alloc();
  *(v2 + 88) = v4;
  *v4 = v2;
  v4[1] = sub_2237B1970;

  return sub_2237AD76C(v2 + 16, a2);
}

uint64_t sub_2237B1970()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

uint64_t sub_2237B1A50()
{
  OUTLINED_FUNCTION_11_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_37_0(v1);

  return v3(v2);
}

uint64_t sub_2237B1B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowProxyError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2237B1BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2237B1C44()
{
  OUTLINED_FUNCTION_11_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_37_0(v1);

  return v3(v2);
}

uint64_t OUTLINED_FUNCTION_28_2(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = a1;

  return sub_223763694(0x286D726F66726570, 0xEC000000293A6E69, va);
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_69_0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_72(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2237B5E2C();
}

void *OUTLINED_FUNCTION_75(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x48uLL);
}

uint64_t sub_2237B1EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22376504C();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_2237B1F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2237B1FC0();
  v5 = sub_2237B212C();
  type metadata accessor for SessionsManager(0);
  v6 = swift_allocObject();
  sub_2237B22AC(a1, a2, v4, v5);
  return v6;
}

double sub_2237B1FC0()
{
  v0 = qword_28131B2B8;
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_2237B261C(0xD000000000000013, 0x80000002237BB520);
  if (v2)
  {
    v3 = v2;
    v4 = sub_2237B5E1C();
    v5 = OUTLINED_FUNCTION_15_7();

    if (v5 >= 1)
    {
      v6 = sub_2237B5E1C();
      v7 = OUTLINED_FUNCTION_15_7();

      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v8 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v8, qword_28131B550);
      v9 = sub_2237B5C8C();
      v10 = sub_2237B601C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_25_0();
        *v11 = 134218240;
        *(v11 + 4) = v0;
        *(v11 + 12) = 2048;
        *(v11 + 14) = v7;
        OUTLINED_FUNCTION_36(&dword_22375F000, v12, v13, "session expiration changed from default: %ld to: %ld seconds");
        OUTLINED_FUNCTION_8();
      }

      v0 = v7;
    }
  }

  return v0;
}

double sub_2237B212C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2237B261C(0xD000000000000013, 0x80000002237BB520);
  if (!v1)
  {
    return 15.0;
  }

  v2 = v1;
  v3 = sub_2237B5E1C();
  v4 = OUTLINED_FUNCTION_15_7();

  if (v4 < 1)
  {
    v13 = 15.0;
  }

  else
  {
    v5 = sub_2237B5E1C();
    v6 = OUTLINED_FUNCTION_15_7();

    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v7 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v7, qword_28131B550);
    v8 = sub_2237B5C8C();
    v9 = sub_2237B601C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_25_0();
      *v10 = 134218240;
      *(v10 + 4) = 15;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v6;
      OUTLINED_FUNCTION_36(&dword_22375F000, v11, v12, "session end expiration delay changed from default: %ld to: %ld seconds");
      OUTLINED_FUNCTION_8();
    }

    v13 = v6;
  }

  return v13;
}

uint64_t sub_2237B22AC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  type metadata accessor for Session(0);
  *(v4 + 40) = sub_2237B5DBC();
  sub_2237B412C();
  OUTLINED_FUNCTION_1_8();
  sub_2237651DC(v8, v9, MEMORY[0x277CC9600]);
  v10 = sub_2237B5DBC();
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = v10;
  v11 = OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck;
  v12 = sub_2237B40DC();
  __swift_storeEnumTagSinglePayload(v4 + v11, 1, 1, v12);
  *(v4 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_expirationScheduleTask) = 0;
  swift_weakInit();
  *(v4 + 32) = a1;
  swift_weakAssign();

  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return v4;
}

uint64_t sub_2237B23D4()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 64), v15, v16, v17, v18, v19, v20, v21;
  sub_2237B27C4(v0 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck);

  swift_weakDestroy();
  return v0;
}

uint64_t sub_2237B243C()
{
  sub_2237B23D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SessionsManager(uint64_t a1)
{
  result = qword_28131B2A0;
  if (!qword_28131B2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2237B24E8(uint64_t a1)
{
  sub_2237B25C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2237B25C4(uint64_t a1)
{
  if (!qword_28131B4E8)
  {
    sub_2237B40DC();
    v1 = sub_2237B60AC();
    if (!v2)
    {
      atomic_store(v1, &qword_28131B4E8);
    }
  }
}

id sub_2237B261C(uint64_t a1, SRDRequestDispatcherInternal *a2)
{
  if (a2)
  {
    v4 = sub_2237B5E1C();
    a2, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4 = 0;
  }

  v12 = [v2 initWithSuiteName_];

  return v12;
}

void sub_2237B2680()
{
  sub_2237B56DC();
  sub_2237651DC(&qword_27D097EA0, MEMORY[0x277D5D298], MEMORY[0x277D5D2A8]);
  sub_2237B5DDC();
  sub_22376AD50();
}

uint64_t sub_2237B2754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E70, &qword_2237B9470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2237B27C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E70, &qword_2237B9470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2237B282C()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_31_2();
  sub_22376504C();
  OUTLINED_FUNCTION_5_7();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097CF0, &qword_2237B92A0);
  if ((sub_2237B618C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_22376504C();
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_2237B62CC();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v0;
  if (v11)
  {
    v15 = (*(v14 + 56) + 16 * v10);
    *v15 = v2;
    v15[1] = v1;
    OUTLINED_FUNCTION_14_2();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_2237B2A8C(v10, v6, v4, v2, v1, v14);
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237B2958()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_23_4();
  sub_2237B56DC();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_30_3();
  sub_2237B2680();
  OUTLINED_FUNCTION_5_7();
  if (v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v3;
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E98, &qword_2237B9498);
  if (OUTLINED_FUNCTION_13_6(v8))
  {
    sub_2237B2680();
    if ((v7 & 1) == (v10 & 1))
    {
      v6 = v9;
      goto LABEL_5;
    }

LABEL_10:
    sub_2237B62CC();
    __break(1u);
    return;
  }

LABEL_5:
  if (v7)
  {
    sub_223763314(v0, *(*v1 + 56) + 32 * v6, &qword_27D097350, qword_2237B7EC0);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_32_1();
    v12(v11);
    v13 = OUTLINED_FUNCTION_34_1();
    sub_2237B2AB0(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_14_2();
}

unint64_t sub_2237B2A8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_11_8(a1, a2, a3, a4, a5, a6);
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v8;
  }

  return result;
}

uint64_t sub_2237B2AB0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2237B56DC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 32 * a1);
  v12 = a3[1];
  *v11 = *a3;
  v11[1] = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_1(uint64_t a1)
{

  return sub_2237B5C8C();
}

uint64_t sub_2237B2B88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2237B2BC8(uint64_t result, int a2, int a3)
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

void sub_2237B2C14()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2237B560C();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v51 = (v10 - v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  v15 = *(v5 + 16);
  if (!v15)
  {
LABEL_23:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  v17 = *(v8 + 16);
  v16 = v8 + 16;
  v53 = v17;
  v18 = v5 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v19 = (v16 - 8);
  v20 = MEMORY[0x277D84F98];
  v21 = *(v16 + 56);
  v49 = v3;
  v50 = v21;
  v48 = v1;
  v52 = v16;
  while (1)
  {
    v53(v14, v18, v6);
    if (*(v3 + 16) && (sub_223774D10(), (v23 & 1) != 0))
    {
      sub_22376AEC8(*(v3 + 56) + 32 * v22, v56);
      v24 = OUTLINED_FUNCTION_15_8();
      sub_223774DE4(v24, v25);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v26 = sub_2237B5C9C();
      __swift_project_value_buffer(v26, qword_28131B550);
      v27 = sub_2237B5C8C();
      v28 = sub_2237B601C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_22375F000, v27, v28, "Could not find key in user-specific session data. Falling back to shared space", v29, 2u);
        v3 = v49;
        OUTLINED_FUNCTION_8();
      }

      if (!*(v1 + 16) || (sub_223774D10(), (v31 & 1) == 0))
      {
        (*v19)(v14, v6);
        memset(v55, 0, sizeof(v55));
        sub_223774CA8(v55);
        goto LABEL_22;
      }

      sub_22376AEC8(*(v1 + 56) + 32 * v30, v55);
    }

    sub_223774DE4(v55, v56);
    v53(v51, v14, v6);
    v32 = OUTLINED_FUNCTION_15_8();
    sub_22376AEC8(v32, v33);
    swift_isUniquelyReferenced_nonNull_native();
    v54 = v20;
    sub_223774D10();
    OUTLINED_FUNCTION_21_6();
    if (v36)
    {
      break;
    }

    v37 = v34;
    v38 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
    if (sub_2237B618C())
    {
      sub_223774D10();
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_26;
      }

      v37 = v39;
    }

    v20 = v54;
    if (v38)
    {
      v41 = (v54[7] + 32 * v37);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      sub_223774DE4(v55, v41);
      v42 = *v19;
      (*v19)(v51, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      v42(v14, v6);
      v1 = v48;
      v3 = v49;
    }

    else
    {
      OUTLINED_FUNCTION_4_10(&v54[v37 >> 6]);
      v43 = v51;
      v53((v20[6] + v37 * v50), v51, v6);
      sub_223774DE4(v55, (v20[7] + 32 * v37));
      v44 = *v19;
      (*v19)(v43, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      v44(v14, v6);
      v45 = v20[2];
      v36 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v36)
      {
        goto LABEL_25;
      }

      v20[2] = v46;
      v1 = v48;
      v3 = v49;
    }

LABEL_22:
    v18 += v50;
    if (!--v15)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2237B62CC();
  __break(1u);
}

void sub_2237B303C()
{
  OUTLINED_FUNCTION_16_3();
  v99 = v0;
  v2 = v1;
  v4 = v3;
  v103 = sub_2237B560C();
  OUTLINED_FUNCTION_0_2();
  v105 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v98 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB0, &qword_2237B94F8);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_3();
  v107 = v13 - v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_0();
  v102 = v16;
  v17 = sub_2237B56DC();
  OUTLINED_FUNCTION_0_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  if (qword_28131AA10 != -1)
  {
LABEL_34:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v24 = sub_2237B5C9C();
  __swift_project_value_buffer(v24, qword_28131B550);
  (v19[2])(v23, v2, v17);

  v25 = sub_2237B5C8C();
  v26 = sub_2237B5FEC();
  v4, v27, v28, v29, v30, v31, v32, v33;
  v34 = os_log_type_enabled(v25, v26);
  v35 = MEMORY[0x277D84F70];
  v104 = v4;
  v106 = v9;
  if (v34)
  {
    v36 = swift_slowAlloc();
    *&v111 = swift_slowAlloc();
    *v36 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
    OUTLINED_FUNCTION_0_8();
    sub_223774B1C(v37, v38, MEMORY[0x277D5D1F8]);
    v39 = sub_2237B5DCC();
    v41 = v40;
    v42 = sub_223763694(v39, v40, &v111);
    v41, v43, v44, v45, v46, v47, v48, v49;
    *(v36 + 4) = v42;
    *(v36 + 12) = 2080;
    OUTLINED_FUNCTION_5_8();
    sub_223774B1C(v50, v51, MEMORY[0x277D5D2C0]);
    v52 = sub_2237B627C();
    v54 = v53;
    (v19[1])(v23, v17);
    v55 = sub_223763694(v52, v54, &v111);
    v54, v56, v57, v58, v59, v60, v61, v62;
    *(v36 + 14) = v55;
    _os_log_impl(&dword_22375F000, v25, v26, "Updating values for keys: %s userId: %s", v36, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    v9 = v106;
    OUTLINED_FUNCTION_8();
  }

  else
  {

    (v19[1])(v23, v17);
  }

  v2 = v107;
  v63 = v4 + 8;
  OUTLINED_FUNCTION_8_9();
  v17 = v64 >> 6;
  v101 = (v105 + 8);

  v65 = 0;
  v19 = v99;
  v23 = v103;
  v100 = v4 + 8;
  v97 = v17;
  while (1)
  {
    while (1)
    {
      if (!v35)
      {
        while (1)
        {
          v67 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            break;
          }

          if (v67 >= v17)
          {
            v4 = &qword_27D097EB8;
            v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB8, &qword_2237B9500);
            __swift_storeEnumTagSinglePayload(v2, 1, 1, v96);
            v35 = 0;
            goto LABEL_13;
          }

          v35 = v63[v67];
          ++v65;
          if (v35)
          {
            v66 = v19;
            v65 = v67;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v66 = v19;
LABEL_12:
      OUTLINED_FUNCTION_19_7();
      v70 = v69 | (v68 << 6);
      (*(v105 + 16))(v98, v4[6] + *(v105 + 72) * v70, v23);
      sub_223773DA0(v4[7] + 32 * v70, &v111);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB8, &qword_2237B9500);
      v72 = (v107 + *(v71 + 48));
      v4 = &qword_27D097EB8;
      (*(v105 + 32))(v107, v98, v23);
      v73 = v112;
      *v72 = v111;
      v72[1] = v73;
      v2 = v107;
      __swift_storeEnumTagSinglePayload(v107, 0, 1, v71);
      v9 = v106;
      v19 = v66;
      v17 = v97;
LABEL_13:
      sub_223774B68(v2, v102);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB8, &qword_2237B9500);
      if (__swift_getEnumTagSinglePayload(v102, 1, v74) == 1)
      {

        OUTLINED_FUNCTION_14_2();
        return;
      }

      v75 = (v102 + *(v74 + 48));
      (*(v105 + 32))(v9, v102, v23);
      v76 = v75[1];
      v111 = *v75;
      v112 = v76;
      if (*(&v76 + 1))
      {
        break;
      }

      sub_223774CA8(&v111);
      sub_223774D10();
      v86 = v9;
      if (v87)
      {
        v88 = v85;
        swift_isUniquelyReferenced_nonNull_native();
        v109 = *v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
        OUTLINED_FUNCTION_17_6();
        v19 = v99;
        sub_2237B618C();
        v89 = *(v105 + 8);
        v23 = v103;
        v89(*(v109 + 48) + *(v105 + 72) * v88, v103);
        sub_223774DE4((*(v109 + 56) + 32 * v88), v110);
        OUTLINED_FUNCTION_0_8();
        sub_223774B1C(qword_28131A8A8, v90, MEMORY[0x277D5D1F8]);
        sub_2237B619C();
        v89(v86, v103);
        *v99 = v109;
      }

      else
      {
        v23 = v103;
        (*v101)(v9, v103);
        memset(v110, 0, sizeof(v110));
      }

      v9 = v86;
      v63 = v100;
      sub_223774CA8(v110);
      v2 = v107;
      v4 = v104;
    }

    sub_223774DE4(&v111, v110);
    swift_isUniquelyReferenced_nonNull_native();
    v2 = *v19;
    v108 = *v19;
    sub_223774D10();
    OUTLINED_FUNCTION_11_9();
    v19 = (v79 + v80);
    if (__OFADD__(v79, v80))
    {
      goto LABEL_32;
    }

    v81 = v77;
    v82 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
    OUTLINED_FUNCTION_17_6();
    if (sub_2237B618C())
    {
      break;
    }

    v19 = v99;
LABEL_22:
    v2 = v108;
    if (v82)
    {
      v91 = (v108[7] + 32 * v81);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      sub_223774DE4(v110, v91);
      v9 = v106;
      v23 = v103;
      (*v101)(v106, v103);
    }

    else
    {
      OUTLINED_FUNCTION_4_10(&v108[v81 >> 6]);
      v4 = v106;
      (*(v105 + 16))(v108[6] + *(v105 + 72) * v81, v106, v103);
      v92 = (v108[7] + 32 * v81);
      v23 = v103;
      sub_223774DE4(v110, v92);
      v9 = v106;
      (*(v105 + 8))(v106, v103);
      v93 = v108[2];
      v94 = __OFADD__(v93, 1);
      v95 = v93 + 1;
      if (v94)
      {
        goto LABEL_33;
      }

      v108[2] = v95;
    }

    *v19 = v108;
    v4 = v104;
    v2 = v107;
    v63 = v100;
  }

  sub_223774D10();
  v19 = v99;
  if ((v82 & 1) == (v84 & 1))
  {
    v81 = v83;
    goto LABEL_22;
  }

  sub_2237B62CC();
  __break(1u);
}

uint64_t sub_2237B38BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2237B56DC();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  sub_2237B56AC();
  if (*(a2 + 16) && (sub_223774D10(), (v11 & 1) != 0))
  {
    sub_22376AEC8(*(a2 + 56) + 32 * v10, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v12 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  sub_2237B2958();
  (*(v5 + 8))(v9, v3);
  return v12;
}

void sub_2237B39EC()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v3 = v2;
  v4 = sub_2237B560C();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v43 = (v8 - v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v40 - v11;
  OUTLINED_FUNCTION_0_8();
  sub_223774B1C(v13, v14, MEMORY[0x277D5D1F8]);
  v15 = sub_2237B5DBC();
  v16 = *(v3 + 16);
  if (!v16)
  {
LABEL_16:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  v19 = *(v6 + 16);
  v17 = v6 + 16;
  v18 = v19;
  v20 = v3 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
  v21 = *(v17 + 56);
  v22 = (v17 - 8);
  v40[0] = v1;
  v40[1] = v17;
  v41 = v21;
  v42 = v19;
  while (1)
  {
    v18(v12, v20, v4);
    if (!*(v1 + 16) || (sub_223774D10(), (v24 & 1) == 0))
    {
      (*v22)(v12, v4);
      goto LABEL_15;
    }

    sub_22376AEC8(*(v1 + 56) + 32 * v23, v46);
    v18(v43, v12, v4);
    v25 = OUTLINED_FUNCTION_15_8();
    sub_22376AEC8(v25, v26);
    swift_isUniquelyReferenced_nonNull_native();
    v44 = v15;
    sub_223774D10();
    OUTLINED_FUNCTION_21_6();
    if (v29)
    {
      break;
    }

    v30 = v27;
    v31 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
    if (sub_2237B618C())
    {
      sub_223774D10();
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v30 = v32;
    }

    v15 = v44;
    if (v31)
    {
      v34 = (v44[7] + 32 * v30);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      sub_223774DE4(v45, v34);
      v35 = *v22;
      (*v22)(v43, v4);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      v35(v12, v4);
      v1 = v40[0];
    }

    else
    {
      OUTLINED_FUNCTION_4_10(&v44[v30 >> 6]);
      v36 = v43;
      v42((v15[6] + v30 * v41), v43, v4);
      sub_223774DE4(v45, (v15[7] + 32 * v30));
      v37 = *v22;
      (*v22)(v36, v4);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      v37(v12, v4);
      v38 = v15[2];
      v29 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v29)
      {
        goto LABEL_18;
      }

      v15[2] = v39;
      v1 = v40[0];
    }

    v21 = v41;
    v18 = v42;
LABEL_15:
    v20 += v21;
    if (!--v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_2237B62CC();
  __break(1u);
}

uint64_t sub_2237B3DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[6] = a5;
  a7[7] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7 + 3);
  v10 = *(*(a5 - 8) + 32);

  return v10(boxed_opaque_existential_1, a4, a5);
}

uint64_t sub_2237B3E18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2237B3E58(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2237B3F48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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