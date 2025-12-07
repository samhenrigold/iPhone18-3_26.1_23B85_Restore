uint64_t sub_264DE9A9C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = sub_264E23FA8();
  v2 = sub_264E252A8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[37];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v8 = v0[24];
  if (v3)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_264D7D000, v1, v2, "Failed to fetch hourly data - not updating model", v9, 2u);
    MEMORY[0x26674FCD0](v9, -1, -1);
  }

  sub_264DED9C0(v8, type metadata accessor for AllActivityView.Model);
  (*(v6 + 8))(v5, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_264DE9C20()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_calendar;
  v2 = sub_264E23C38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager__model;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28D8, &qword_264E28430);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager__navigationState;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28E0, &qword_264E28438);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_264D91628(*(v0 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchInitialData), *(v0 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchInitialData + 8));
  sub_264D91628(*(v0 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchRemainingData), *(v0 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchRemainingData + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_264DE9D94@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AllActivityView.Manager(0);
  result = sub_264E242E8();
  *a2 = result;
  return result;
}

double sub_264DE9DD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  return result;
}

uint64_t sub_264DE9E4C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2830, &qword_264E282B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_264D81744(a1, &v10 - v7, &qword_27FFB2830, &qword_264E282B0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D81744(v8, v5, &qword_27FFB2830, &qword_264E282B0);

  sub_264E24348();
  return sub_264D817BC(v8, &qword_27FFB2830, &qword_264E282B0);
}

uint64_t sub_264DE9FA4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_264DEA000(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_264DEA000(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_264DEA0CC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_264DED938(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_264DEA0CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_264DEA1D8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_264E253D8();
    a6 = v11;
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

void *sub_264DEA1D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_264DEA224(a1, a2);
  sub_264DEA354(&unk_2876A2C60);
  return v3;
}

void *sub_264DEA224(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_264DEA440(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_264E253D8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_264E25198();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_264DEA440(v10, 0);
        result = sub_264E25398();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_264DEA354(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_264DEA4B4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_264DEA440(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2870, &qword_264E28378);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_264DEA4B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2870, &qword_264E28378);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_264DEA5A8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_264DEA5B8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = a4;
  v80 = a2;
  v81 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = (v61 - v8);
  v66 = sub_264E238E8();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v71 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = v61 - v11;
  MEMORY[0x28223BE20](v12);
  v76 = v61 - v13;
  v83 = sub_264E23C38();
  v78 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_264E23AA8();
  v77 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v67 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = v61 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v61 - v19;
  v75 = type metadata accessor for ActivityNavigationState(0);
  MEMORY[0x28223BE20](v75);
  v69 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v74 = (v61 - v23);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28D8, &qword_264E28430);
  v24 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v26 = v61 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2830, &qword_264E282B0);
  MEMORY[0x28223BE20](v27);
  v29 = v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = v61 - v31;
  v84[3] = type metadata accessor for ModelProvider(0);
  v84[4] = &protocol witness table for ModelProvider;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
  sub_264DED774(a1, boxed_opaque_existential_1, type metadata accessor for ModelProvider);
  *(a5 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_userDeviceSinkCancellable) = 0;
  v34 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager__model;
  v35 = type metadata accessor for AllActivityView.Model(0);
  (*(*(v35 - 8) + 56))(v32, 1, 1, v35);
  sub_264D81744(v32, v29, &qword_27FFB2830, &qword_264E282B0);
  sub_264E242F8();
  sub_264D817BC(v32, &qword_27FFB2830, &qword_264E282B0);
  (*(v24 + 32))(a5 + v34, v26, v72);
  v36 = (a5 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchInitialData);
  *v36 = 0;
  v36[1] = 0;
  v37 = (a5 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchRemainingData);
  *v37 = 0;
  v37[1] = 0;
  v72 = a5;
  sub_264DED7DC(v84, a5 + 16);
  v38 = *(v77 + 16);
  v39 = v73;
  v61[2] = v77 + 16;
  v38(v20, v80);
  v63 = *(v78 + 16);
  v61[1] = v78 + 16;
  v63(v82, v79, v83);
  v40 = v65;
  v41 = v20;
  Calendar.weeksRoundedToDay(untilDateInLastDay:weekCount:)(v20, v81, v65);
  v42 = v40;
  v43 = v64;
  v44 = v66;
  if ((*(v64 + 48))(v42, 1) == 1)
  {
    sub_264D817BC(v42, &qword_27FFB1880, &qword_264E26220);
    result = sub_264E253E8();
    __break(1u);
  }

  else
  {
    v45 = v76;
    (*(v43 + 32))(v76, v42, v44);
    v46 = v68;
    v62 = v41;
    (v38)(v68, v41, v39);
    v65 = v38;
    v61[0] = *(v43 + 16);
    v47 = v70;
    (v61[0])(v70, v45, v44);
    v48 = v74;
    v49 = v75;
    v63(v74 + *(v75 + 24), v82, v83);
    *v48 = 1;
    v50 = v67;
    (v65)(v67, v46, v39);
    v51 = v71;
    (v61[0])(v71, v47, v44);
    sub_264D9173C(v50, v51, v48 + *(v49 + 20));
    v52 = *(v43 + 8);
    v52(v47, v44);
    v53 = *(v77 + 8);
    v54 = v73;
    v53(v46, v73);
    v52(v76, v44);
    v55 = v78;
    v56 = v83;
    (*(v78 + 8))(v82, v83);
    v53(v62, v54);
    v57 = v72;
    swift_beginAccess();
    v58 = v74;
    sub_264DED884(v74, v69, type metadata accessor for ActivityNavigationState);
    sub_264E242F8();
    sub_264DED9C0(v58, type metadata accessor for ActivityNavigationState);
    swift_endAccess();
    v53(v80, v54);
    v59 = __swift_destroy_boxed_opaque_existential_1Tm(v84);
    *(v57 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_numberOfWeeksToFetch) = v81;
    (*(v55 + 32))(v57 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_calendar, v79, v56, v59);
    return v57;
  }

  return result;
}

uint64_t sub_264DEAE90(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_264DEAF84;

  return v5(v2 + 32);
}

uint64_t sub_264DEAF84()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_264DEB098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F08, &qword_264E28600);
    v3 = sub_264E25448();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_264D9D57C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _s16ScreenTimeUICore15AllActivityViewV6BridgeC10UserDeviceV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_264E25478() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_264E25478() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_264DEB26C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_264E25448();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_264D81744(v16, v12, a2, v27);
      result = sub_264D9D6C8(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_264E238E8();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264DEB44C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C10, &qword_264E26688);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F28, &unk_264E26CD0);
    v7 = sub_264E25448();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_264D81744(v9, v5, &qword_27FFB1C10, &qword_264E26688);
      result = sub_264D9D5F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_264E23AA8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_264DEB634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_264DEB6A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2AB8, &qword_264E28668);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F18, qword_264E28670);
    v7 = sub_264E25448();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_264D81744(v9, v5, &qword_27FFB2AB8, &qword_264E28668);
      result = sub_264D9D6C8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_264E238E8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264DEB88C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2AB0, &unk_264E28658);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F00, &unk_264E26CB0);
    v7 = sub_264E25448();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_264D81744(v9, v5, &qword_27FFB2AB0, &unk_264E28658);
      result = sub_264D9D6C8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_264E238E8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264DEBA74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2AA0, &unk_264E28638);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F38, &qword_264E26CE0);
    v7 = sub_264E25448();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_264D81744(v9, v5, &qword_27FFB2AA0, &unk_264E28638);
      result = sub_264D9D5F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_264E23AA8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264DEBC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A98, &qword_264E28628);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F30, &qword_264E28630);
    v7 = sub_264E25448();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_264D81744(v9, v5, &qword_27FFB2A98, &qword_264E28628);
      result = sub_264D9D5F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_264E23AA8();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
      result = sub_264DED774(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for PickupsDetailLegendView.DayPickups);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264DEBEC0()
{
  result = qword_27FFB2750;
  if (!qword_27FFB2750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2748, &qword_264E280D0);
    sub_264D81DCC(&qword_27FFB2758, &qword_27FFB2760, &unk_264E280D8, MEMORY[0x277CE14C0]);
    sub_264D9CE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2750);
  }

  return result;
}

uint64_t sub_264DEBFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2790, qword_264E281D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_264DEC0AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2790, qword_264E281D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DEC15C(uint64_t a1)
{
  sub_264DEC228(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AllActivityView.Bridge(319);
    if (v2 <= 0x3F)
    {
      sub_264DECF7C(319, &qword_27FFB27B8, type metadata accessor for AllActivityView.UnitTestOverrides, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264DEC228(uint64_t a1)
{
  if (!qword_27FFB27A8)
  {
    type metadata accessor for AllActivityView.Manager(255);
    sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager, &unk_264E282F4);
    v1 = sub_264E24468();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB27A8);
    }
  }
}

uint64_t sub_264DEC2DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264DEC358(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_264E23C38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_34:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for UsageHeaderView.Model(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_33:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_34;
  }

  v16 = type metadata accessor for UsageOverviewTabView.Model(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_33;
  }

  v17 = type metadata accessor for UsageDetailTabView.Model(0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[9];
    goto LABEL_33;
  }

  v18 = type metadata accessor for CategoriesLegendView.Model(0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[10];
    goto LABEL_33;
  }

  v19 = type metadata accessor for UsageChartFooterView.Model(0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v14 = *(v19 - 8);
    v15 = a3[11];
    goto LABEL_33;
  }

  v20 = type metadata accessor for PickupsHeaderView.Model(0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v14 = *(v20 - 8);
    v15 = a3[14];
    goto LABEL_33;
  }

  v21 = type metadata accessor for PickupsOverviewTabView.Model(0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v14 = *(v21 - 8);
    v15 = a3[15];
    goto LABEL_33;
  }

  v22 = type metadata accessor for PickupsDetailTabView.Model(0);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v14 = *(v22 - 8);
    v15 = a3[16];
    goto LABEL_33;
  }

  v23 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v14 = *(v23 - 8);
    v15 = a3[17];
    goto LABEL_33;
  }

  v24 = type metadata accessor for PickupsDetailLegendView.Model(0);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v14 = *(v24 - 8);
    v15 = a3[18];
    goto LABEL_33;
  }

  v25 = type metadata accessor for NotificationsHeaderView.Model(0);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v14 = *(v25 - 8);
    v15 = a3[21];
    goto LABEL_33;
  }

  v26 = type metadata accessor for NotificationsOverviewTabView.Model(0);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v14 = *(v26 - 8);
    v15 = a3[22];
    goto LABEL_33;
  }

  v27 = type metadata accessor for NotificationsDetailTabView.Model(0);
  if (*(*(v27 - 8) + 84) == a2)
  {
    v8 = v27;
    v14 = *(v27 - 8);
    v15 = a3[23];
    goto LABEL_33;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v29 = *(*(v28 - 8) + 48);
  v30 = a1 + a3[26];

  return v29(v30, a2, v28);
}

uint64_t sub_264DEC84C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_264E23C38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_32:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for UsageHeaderView.Model(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_31:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_32;
  }

  v16 = type metadata accessor for UsageOverviewTabView.Model(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_31;
  }

  v17 = type metadata accessor for UsageDetailTabView.Model(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_31;
  }

  v18 = type metadata accessor for CategoriesLegendView.Model(0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[10];
    goto LABEL_31;
  }

  v19 = type metadata accessor for UsageChartFooterView.Model(0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[11];
    goto LABEL_31;
  }

  v20 = type metadata accessor for PickupsHeaderView.Model(0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[14];
    goto LABEL_31;
  }

  v21 = type metadata accessor for PickupsOverviewTabView.Model(0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[15];
    goto LABEL_31;
  }

  v22 = type metadata accessor for PickupsDetailTabView.Model(0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[16];
    goto LABEL_31;
  }

  v23 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[17];
    goto LABEL_31;
  }

  v24 = type metadata accessor for PickupsDetailLegendView.Model(0);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[18];
    goto LABEL_31;
  }

  v25 = type metadata accessor for NotificationsHeaderView.Model(0);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[21];
    goto LABEL_31;
  }

  v26 = type metadata accessor for NotificationsOverviewTabView.Model(0);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[22];
    goto LABEL_31;
  }

  v27 = type metadata accessor for NotificationsDetailTabView.Model(0);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[23];
    goto LABEL_31;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v29 = *(*(v28 - 8) + 56);
  v30 = a1 + a4[26];

  return v29(v30, a2, a2, v28);
}

void sub_264DECD2C(uint64_t a1)
{
  sub_264E23C38();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ScreenTimeAppInfoCache();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ScreenTimeAppIconCache();
      if (v3 <= 0x3F)
      {
        type metadata accessor for UsageHeaderView.Model(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UsageOverviewTabView.Model(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for UsageDetailTabView.Model(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CategoriesLegendView.Model(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for UsageChartFooterView.Model(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for PickupsHeaderView.Model(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for PickupsOverviewTabView.Model(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for PickupsDetailTabView.Model(319);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for PickupsOverviewLegendView.Model(319);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for PickupsDetailLegendView.Model(319);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for NotificationsHeaderView.Model(319);
                            if (v14 <= 0x3F)
                            {
                              type metadata accessor for NotificationsOverviewTabView.Model(319);
                              if (v15 <= 0x3F)
                              {
                                type metadata accessor for NotificationsDetailTabView.Model(319);
                                if (v16 <= 0x3F)
                                {
                                  sub_264DECF7C(319, &qword_27FFB27D0, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
                                  if (v17 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_264DECF7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_264DECFE8(uint64_t a1)
{
  sub_264DED3D8(319, &qword_27FFB27E8, &qword_27FFB2788, &qword_264E28148);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_264DED194(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_264DED1F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_264DED25C(uint64_t a1)
{
  sub_264E23C38();
  if (v1 <= 0x3F)
  {
    sub_264DED3D8(319, &qword_27FFB2828, &qword_27FFB2830, &qword_264E282B0);
    if (v2 <= 0x3F)
    {
      sub_264DECF7C(319, &qword_27FFB2838, type metadata accessor for ActivityNavigationState, MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_264DED3D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_264E24358();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_264DED430()
{
  result = qword_27FFB2840;
  if (!qword_27FFB2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2768, &qword_264E280E8);
    sub_264D81DCC(&qword_27FFB2848, &qword_27FFB2850, &unk_264E282D0, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2840);
  }

  return result;
}

uint64_t sub_264DED4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_264DED5BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_264DED660(uint64_t a1)
{
  result = sub_264DED6E4();
  if (v2 <= 0x3F)
  {
    result = sub_264E23C38();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_264DED6E4()
{
  result = qword_27FFB2868;
  if (!qword_27FFB2868)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FFB2868);
  }

  return result;
}

uint64_t sub_264DED774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DED7DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_264DED884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_264DED938(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264DED9C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_264DEDA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_264DEDA68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264DEDAA4(uint64_t a1)
{
  sub_264E23AA8();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_264D9BB74;

  return sub_264DE7124(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_264DEDBCC()
{
  result = qword_27FFB28A0;
  if (!qword_27FFB28A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2788, &qword_264E28148);
    sub_264DEDC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB28A0);
  }

  return result;
}

unint64_t sub_264DEDC50()
{
  result = qword_27FFB28A8;
  if (!qword_27FFB28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB28A8);
  }

  return result;
}

unint64_t sub_264DEDCA4()
{
  result = qword_27FFB26C0;
  if (!qword_27FFB26C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFB26C0);
  }

  return result;
}

uint64_t sub_264DEDCF0()
{
  v1 = sub_264E23AA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_264DEDDB4(uint64_t *a1)
{
  v3 = *(sub_264E23AA8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_264DE7428(a1, v4, v5);
}

uint64_t objectdestroy_79Tm()
{
  v1 = sub_264E23AA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264DEDF04(uint64_t a1)
{
  sub_264E23AA8();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_264D9A59C;

  return sub_264DE78C4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264DEE02C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264DEE064(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D9BB74;

  return sub_264DEAE90(a1, v4);
}

uint64_t sub_264DEE11C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D9A59C;

  return sub_264DEAE90(a1, v4);
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for AllActivityView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_264DEBF7C(*(v0 + v4), *(v0 + v4 + 8));

  v5 = (v0 + v4 + v1[8]);
  v6 = type metadata accessor for AllActivityView.UnitTestOverrides(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v7 = *(v6 + 20);
    v8 = sub_264E23C38();
    (*(*(v8 - 8) + 8))(&v5[v7], v8);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_264DEE31C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AllActivityView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_264DEE390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28E8, &unk_264E28440);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F10, &unk_264E26CC0);
    v7 = sub_264E25448();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_264D81744(v9, v5, &qword_27FFB28E8, &unk_264E28440);
      result = sub_264D9D5F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_264E23AA8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_264DEE578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v3;
      a1[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        (*(v4 + 32))(v15);
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v3);
        }

        (*(v4 + 8))(v15, v2);
      }
    }
  }

  return result;
}

unint64_t sub_264DEE920()
{
  result = qword_27FFB2A40;
  if (!qword_27FFB2A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2A28, &qword_264E28570);
    sub_264DEE9A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2A40);
  }

  return result;
}

unint64_t sub_264DEE9A4()
{
  result = qword_27FFB2A48;
  if (!qword_27FFB2A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2A30, &qword_264E28578);
    sub_264D81DCC(&qword_27FFB1798, &qword_27FFB1768, &unk_264E298C0, MEMORY[0x277CDF028]);
    sub_264D81DCC(&qword_27FFB17F0, &qword_27FFB17F8, &qword_264E28590, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2A48);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id STCommunicationSafetyAnalyticsTipContentInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STCommunicationSafetyAnalyticsTipContentInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STCommunicationSafetyAnalyticsTipContentInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id STCommunicationSafetyAnalyticsTipContentInterface.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for STCommunicationSafetyAnalyticsTipContentInterface();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_264DEECD0(uint64_t a1)
{
  v2 = sub_264E24808();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_264E24628();
}

id sub_264DEED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CommunicationSafetyAnalyticsTipView(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1790, &qword_264E26110);
  swift_storeEnumTagMultiPayload();
  v12 = (v11 + *(v9 + 28));
  *v12 = a1;
  v12[1] = a2;
  v13 = (v11 + *(v9 + 32));
  *v13 = a3;
  v13[1] = a4;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2AC0, &qword_264E28720));

  v14 = sub_264E24848();
  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor_];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264DEEF68()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t PickupsOverviewLegendView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PickupsOverviewLegendView.Model(0) + 20);
  *(a2 + v4) = sub_264DEBA74(MEMORY[0x277D84F90]);
  v5 = sub_264E23C38();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t PickupsOverviewLegendView.init(model:dateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  sub_264DF1DF8(a1, a3);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  Calendar.startOfWeek(containing:)(v9, v12);
  (*(v7 + 8))(v9, v6);
  result = (*(v7 + 48))(v12, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = type metadata accessor for PickupsOverviewLegendView(0);
    v15 = (a3 + *(v14 + 24));
    v16 = sub_264E238E8();
    (*(*(v16 - 8) + 8))(a2, v16);
    sub_264DF1E7C(a1);
    result = (*(v7 + 32))(a3 + *(v14 + 20), v12, v6);
    v15[1] = 0;
    v15[2] = 0;
    *v15 = 0;
  }

  return result;
}

void sub_264DEF284(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v27 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v11);
  v29 = &v27 - v12;
  v13 = a1[2];
  if (v13)
  {
    v28 = a2;
    v14 = sub_264D8C3EC(v13, 0);
    v27 = v4;
    sub_264D8E568(&v33, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v13, a1);
    v16 = v15;
    v17 = v33;

    sub_264D8F07C(v17);
    if (v16 != v13)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v4 = v27;
    a2 = v28;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v33 = v14;
  sub_264DF088C(&v33);
  if (v33[2])
  {
    sub_264D81744(v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v10, &qword_27FFB1BB8, &unk_264E26640);

    v18 = v29;
    sub_264D90E64(v10, v29, &qword_27FFB1BB8, &unk_264E26640);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2B18, &qword_264E28850);
    v20 = *(v19 + 48);
    v21 = v30;
    sub_264D81744(v18, v30, &qword_27FFB1BB8, &unk_264E26640);
    v22 = sub_264E23AA8();
    v23 = *(v22 - 8);
    (*(v23 + 32))(a2, v21, v22);
    v24 = v32;
    sub_264D90E64(v18, v32, &qword_27FFB1BB8, &unk_264E26640);
    *(a2 + v20) = *(v24 + *(v31 + 48));
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
    (*(v23 + 8))(v24, v22);
  }

  else
  {

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2B18, &qword_264E28850);
    v26 = *(*(v25 - 8) + 56);

    v26(a2, 1, 1, v25);
  }
}

uint64_t sub_264DEF650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
    v12 = v10;
LABEL_10:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(a1 + 48);
    v16 = sub_264E23AA8();
    (*(*(v16 - 8) + 16))(v4, v15 + *(*(v16 - 8) + 72) * v14, v16);
    v17 = *(*(a1 + 56) + 8 * v14);
    *&v4[*(v2 + 48)] = v17;
    result = sub_264D817BC(v4, &qword_27FFB1BB8, &unk_264E26640);
    v18 = __OFADD__(v11, v17);
    v11 += v17;
    if (v18)
    {
      __break(1u);
LABEL_13:

      return v11;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_13;
    }

    v7 = *(a1 + 64 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

double PickupsOverviewLegendView.body.getter@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_264E24758();
  v29 = 0;
  sub_264DEF9A0(v3, &v15);
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v30 = v15;
  v31 = v16;
  v43[10] = v25;
  v43[11] = v26;
  v43[12] = v27;
  v43[6] = v21;
  v43[7] = v22;
  v43[8] = v23;
  v43[9] = v24;
  v43[2] = v17;
  v43[3] = v18;
  v43[4] = v19;
  v43[5] = v20;
  v43[0] = v15;
  v43[1] = v16;
  sub_264D81744(&v30, &v14, &qword_27FFB2AC8, &qword_264E28728);
  sub_264D817BC(v43, &qword_27FFB2AC8, &qword_264E28728);
  *&v28[151] = v39;
  *&v28[167] = v40;
  *&v28[183] = v41;
  *&v28[199] = v42;
  *&v28[87] = v35;
  *&v28[103] = v36;
  *&v28[119] = v37;
  *&v28[135] = v38;
  *&v28[23] = v31;
  *&v28[39] = v32;
  *&v28[55] = v33;
  *&v28[71] = v34;
  *&v28[7] = v30;
  v6 = *&v28[176];
  *(a2 + 177) = *&v28[160];
  *(a2 + 193) = v6;
  *(a2 + 209) = *&v28[192];
  v7 = *&v28[112];
  *(a2 + 113) = *&v28[96];
  *(a2 + 129) = v7;
  v8 = *&v28[144];
  *(a2 + 145) = *&v28[128];
  *(a2 + 161) = v8;
  v9 = *&v28[48];
  *(a2 + 49) = *&v28[32];
  *(a2 + 65) = v9;
  v10 = *&v28[80];
  *(a2 + 81) = *&v28[64];
  *(a2 + 97) = v10;
  result = *v28;
  v12 = *&v28[16];
  *(a2 + 17) = *v28;
  v13 = v29;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 224) = *&v28[207];
  *(a2 + 33) = v12;
  return result;
}

uint64_t sub_264DEF9A0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2B10, &qword_264E28848);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2B18, &qword_264E28850);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v14 = *(a1 + *(type metadata accessor for PickupsOverviewLegendView.Model(0) + 20));
  if (!*(v14 + 16) || (v15 = type metadata accessor for PickupsOverviewLegendView(0), v16 = sub_264D9D5F4(a1 + *(v15 + 20)), (v17 & 1) == 0) || (v18 = *(*(v14 + 56) + 8 * v16), , !v18))
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    v18 = 0;
    goto LABEL_7;
  }

  sub_264DEF284(v19, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_7:
    sub_264D817BC(v9, &qword_27FFB2B10, &qword_264E28848);
    v52 = 0;
    v53 = 0;
    v21 = 0;
    v43 = 0;
    v44 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    KeyPath = 0;
    v20 = 0;
    goto LABEL_8;
  }

  sub_264D90E64(v9, v13, &qword_27FFB2B18, &qword_264E28850);
  v53 = sub_264E24828();
  LOBYTE(v73[0]) = 0;
  sub_264DEFF1C(a1, v13, &v81);
  v43 = v81;
  v51 = v83;
  v52 = v82;
  v49 = v85;
  v50 = v84;
  v47 = v87;
  v48 = v86;
  v46 = v88;
  v20 = LOBYTE(v73[0]);
  v44 = sub_264E249E8();
  KeyPath = swift_getKeyPath();
  sub_264D817BC(v13, &qword_27FFB2B18, &qword_264E28850);
  v21 = 0x4014000000000000;
LABEL_8:
  v22 = sub_264E24828();
  LOBYTE(v81) = 0;
  sub_264DF04B4(v18, v62);

  *&v61[7] = v62[0];
  *&v61[23] = v62[1];
  *&v61[39] = v62[2];
  *&v61[55] = v62[3];
  v23 = v81;
  v24 = sub_264E249F8();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  v25 = sub_264E24A38();
  sub_264D817BC(v6, &qword_27FFB17B8, &qword_264E279E0);
  v26 = swift_getKeyPath();
  *&v63 = v53;
  *(&v63 + 1) = v21;
  v42 = v21;
  v27 = v20;
  *&v64 = v20;
  v28 = v43;
  *(&v64 + 1) = v43;
  *&v65 = v52;
  *(&v65 + 1) = v51;
  *&v66 = v50;
  *(&v66 + 1) = v49;
  *&v67 = v48;
  *(&v67 + 1) = v47;
  *&v68 = v46;
  *(&v68 + 1) = KeyPath;
  v58 = v67;
  v59 = v68;
  v54 = v63;
  v55 = v64;
  v56 = v65;
  v57 = v66;
  v29 = v22;
  *&v70 = v22;
  *(&v70 + 1) = 0x4014000000000000;
  LOBYTE(v71[0]) = v23;
  v30 = *&v61[16];
  *(v71 + 1) = *v61;
  *&v71[4] = *&v61[63];
  v31 = *&v61[32];
  *(&v71[3] + 1) = *&v61[48];
  *(&v71[2] + 1) = *&v61[32];
  v32 = *v61;
  *(&v71[1] + 1) = *&v61[16];
  *(&v71[4] + 1) = v26;
  *(&v60[2] + 8) = v71[1];
  *(&v60[1] + 8) = v71[0];
  *(v60 + 8) = v70;
  *(&v60[5] + 8) = v71[4];
  v33 = v27;
  v34 = v44;
  v69 = v44;
  *&v60[0] = v44;
  v72 = v25;
  *(&v60[6] + 1) = v25;
  *(&v60[4] + 8) = v71[3];
  *(&v60[3] + 8) = v71[2];
  v35 = v66;
  a2[2] = v65;
  a2[3] = v35;
  v36 = v55;
  *a2 = v54;
  a2[1] = v36;
  v37 = v60[1];
  a2[6] = v60[0];
  a2[7] = v37;
  v38 = v59;
  a2[4] = v58;
  a2[5] = v38;
  v39 = v60[6];
  a2[11] = v60[5];
  a2[12] = v39;
  v40 = v60[4];
  a2[9] = v60[3];
  a2[10] = v40;
  a2[8] = v60[2];
  v73[0] = v29;
  v73[1] = 0x4014000000000000;
  v74 = v23;
  v76 = v30;
  v77 = v31;
  *v78 = *&v61[48];
  v75 = v32;
  *&v78[15] = *&v61[63];
  v79 = v26;
  v80 = v25;
  sub_264D81744(&v63, &v81, &qword_27FFB2B20, &qword_264E28888);
  sub_264D81744(&v70, &v81, &qword_27FFB2B28, &unk_264E28890);
  sub_264D817BC(v73, &qword_27FFB2B28, &unk_264E28890);
  v81 = v53;
  v82 = v42;
  v83 = v33;
  v84 = v28;
  v85 = v52;
  v86 = v51;
  v87 = v50;
  v88 = v49;
  v89 = v48;
  v90 = v47;
  v91 = v46;
  v92 = KeyPath;
  v93 = v34;
  return sub_264D817BC(&v81, &qword_27FFB2B20, &qword_264E28888);
}

uint64_t sub_264DEFF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a1;
  v38 = sub_264E23C18();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264E247C8();
  MEMORY[0x28223BE20](v7 - 8);
  sub_264E247D8();
  v34 = objc_opt_self();
  v8 = [v34 bundle];
  v9 = sub_264E24AE8();
  v11 = v10;
  v13 = v12;
  LODWORD(v40) = sub_264E248D8();
  v14 = sub_264E24AC8();
  v16 = v15;
  HIDWORD(v33) = v17;
  v35 = v18;
  v19 = v11;
  v20 = v36;
  sub_264D817AC(v9, v19, v13 & 1);

  sub_264E247B8();
  sub_264E247A8();
  v21 = v38;
  (*(v4 + 104))(v6, *MEMORY[0x277CC99B8], v38);
  v22 = sub_264E23C28();
  result = (*(v4 + 8))(v6, v21);
  v24 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  result = sub_264E23B68();
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v24 < *(result + 16))
  {

    sub_264E24798();

    sub_264E247A8();
    v40 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2B18, &qword_264E28850) + 48));
    sub_264E24788();
    sub_264E247A8();
    sub_264E247E8();
    v25 = [v34 bundle];
    v26 = sub_264E24AE8();
    v28 = v27;
    v29 = BYTE4(v33) & 1;
    v39 = BYTE4(v33) & 1;
    LOBYTE(v40) = BYTE4(v33) & 1;
    v31 = v30 & 1;
    v41 = v30 & 1;
    *a3 = v14;
    *(a3 + 8) = v16;
    *(a3 + 16) = v29;
    *(a3 + 24) = v35;
    *(a3 + 32) = v26;
    *(a3 + 40) = v27;
    *(a3 + 48) = v30 & 1;
    *(a3 + 56) = v32;
    sub_264D80F20(v14, v16, v29);

    sub_264D80F20(v26, v28, v31);

    sub_264D817AC(v26, v28, v31);

    sub_264D817AC(v14, v16, v39);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t PickupsOverviewLegendView.Model.dayOfWeek(day:)(uint64_t a1)
{
  v1 = sub_264E23C18();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277CC99B8], v1, v3);
  v6 = sub_264E23C28();
  result = (*(v2 + 8))(v5, v1);
  v8 = __OFSUB__(v6, 1);
  v9 = v6 - 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = sub_264E23B68();
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < *(result + 16))
  {
    v10 = *(result + 16 * v9 + 32);

    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_264DF04B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_264E247D8();
  v3 = [objc_opt_self() bundle];
  v4 = sub_264E24AE8();
  v6 = v5;
  v8 = v7;
  sub_264E24C68();
  v9 = sub_264E24AC8();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_264D817AC(v4, v6, v8 & 1);

  if (a1)
  {
    sub_264DEF650(a1);
  }

  sub_264D908C4();
  sub_264E25348();
  sub_264D89EB8();
  v16 = sub_264E24AF8();
  v18 = v17;
  v19 = v13 & 1;
  v25 = v13 & 1;
  v21 = v20 & 1;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20 & 1;
  *(a2 + 56) = v22;
  sub_264D80F20(v9, v11, v19);

  sub_264D80F20(v16, v18, v21);

  sub_264D817AC(v16, v18, v21);

  sub_264D817AC(v9, v11, v25);
}

double sub_264DF06DC@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_264E24758();
  v29 = 0;
  sub_264DEF9A0(v3, &v15);
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v30 = v15;
  v31 = v16;
  v43[10] = v25;
  v43[11] = v26;
  v43[12] = v27;
  v43[6] = v21;
  v43[7] = v22;
  v43[8] = v23;
  v43[9] = v24;
  v43[2] = v17;
  v43[3] = v18;
  v43[4] = v19;
  v43[5] = v20;
  v43[0] = v15;
  v43[1] = v16;
  sub_264D81744(&v30, &v14, &qword_27FFB2AC8, &qword_264E28728);
  sub_264D817BC(v43, &qword_27FFB2AC8, &qword_264E28728);
  *&v28[151] = v39;
  *&v28[167] = v40;
  *&v28[183] = v41;
  *&v28[199] = v42;
  *&v28[87] = v35;
  *&v28[103] = v36;
  *&v28[119] = v37;
  *&v28[135] = v38;
  *&v28[23] = v31;
  *&v28[39] = v32;
  *&v28[55] = v33;
  *&v28[71] = v34;
  *&v28[7] = v30;
  v6 = *&v28[176];
  *(a2 + 177) = *&v28[160];
  *(a2 + 193) = v6;
  *(a2 + 209) = *&v28[192];
  v7 = *&v28[112];
  *(a2 + 113) = *&v28[96];
  *(a2 + 129) = v7;
  v8 = *&v28[144];
  *(a2 + 145) = *&v28[128];
  *(a2 + 161) = v8;
  v9 = *&v28[48];
  *(a2 + 49) = *&v28[32];
  *(a2 + 65) = v9;
  v10 = *&v28[80];
  *(a2 + 81) = *&v28[64];
  *(a2 + 97) = v10;
  result = *v28;
  v12 = *&v28[16];
  *(a2 + 17) = *v28;
  v13 = v29;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 224) = *&v28[207];
  *(a2 + 33) = v12;
  return result;
}

void sub_264DF088C(void *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_264DA4960(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_264DF0940(v5);
  *a1 = v3;
}

void sub_264DF0940(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_264E25458();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
        v6 = sub_264E251E8();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_264DF0CF8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_264DF0A84(0, v2, 1, a1);
  }
}

void sub_264DF0A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  MEMORY[0x28223BE20](v37);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v30 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v35 = v16;
    v29 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v33 = v18;
    v34 = a3;
    v31 = v21;
    v32 = v20;
    while (1)
    {
      sub_264D81744(v21, v15, &qword_27FFB1BB8, &unk_264E26640);
      sub_264D81744(v18, v11, &qword_27FFB1BB8, &unk_264E26640);
      v22 = *(v37 + 48);
      v23 = *&v15[v22];
      v24 = *&v11[v22];
      if (v23 == v24)
      {
        v25 = sub_264E23A58();
      }

      else
      {
        v25 = v24 < v23;
      }

      sub_264D817BC(v11, &qword_27FFB1BB8, &unk_264E26640);
      sub_264D817BC(v15, &qword_27FFB1BB8, &unk_264E26640);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v18 = v33 + v29;
        v20 = v32 - 1;
        v21 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      sub_264D90E64(v21, v36, &qword_27FFB1BB8, &unk_264E26640);
      swift_arrayInitWithTakeFrontToBack();
      sub_264D90E64(v26, v18, &qword_27FFB1BB8, &unk_264E26640);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_264DF0CF8(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v142 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v138 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v146 = &v127 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v127 - v13;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v143 = &v127 - v17;
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v130 = &v127 - v20;
  MEMORY[0x28223BE20](v21);
  v129 = &v127 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_104:
    v28 = *v133;
    if (!*v133)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v150 = v27;
      v122 = *(v27 + 16);
      if (v122 >= 2)
      {
        v123 = a3;
        while (*v123)
        {
          a3 = v27;
          v27 = v122 - 1;
          v124 = a3[2 * v122];
          v125 = a3[2 * v122 + 3];
          sub_264DF177C(*v123 + *(v142 + 72) * v124, *v123 + *(v142 + 72) * a3[2 * v122 + 2], *v123 + *(v142 + 72) * v125, v28);
          if (v5)
          {
            goto LABEL_115;
          }

          if (v125 < v124)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_264D9E01C(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_131;
          }

          v126 = &a3[2 * v122];
          *v126 = v124;
          v126[1] = v125;
          v150 = a3;
          sub_264D9DF90(v27);
          v27 = v150;
          v122 = v150[2];
          if (v122 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_141;
      }

LABEL_115:

      return;
    }

LABEL_137:
    v27 = sub_264D9E01C(v27);
    goto LABEL_106;
  }

  v147 = v23;
  v139 = v22;
  v128 = a4;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v135 = a3;
  v148 = v14;
  v149 = v8;
  while (1)
  {
    v28 = v26 + 1;
    if (v26 + 1 < v25)
    {
      v140 = v25;
      v29 = v26 + 1;
      v134 = v26;
      v30 = *a3;
      v31 = *(v142 + 72);
      v145 = v29;
      v32 = v129;
      sub_264D81744(v30 + v31 * v29, v129, &qword_27FFB1BB8, &unk_264E26640);
      v144 = v31;
      v33 = v130;
      sub_264D81744(v30 + v31 * v134, v130, &qword_27FFB1BB8, &unk_264E26640);
      v34 = *(v8 + 48);
      v35 = *(v32 + v34);
      v36 = *(v33 + v34);
      v132 = v5;
      if (v35 == v36)
      {
        v37 = sub_264E23A58();
        v33 = v130;
        LODWORD(v141) = v37;
      }

      else
      {
        LODWORD(v141) = v36 < v35;
      }

      v131 = v27;
      sub_264D817BC(v33, &qword_27FFB1BB8, &unk_264E26640);
      sub_264D817BC(v32, &qword_27FFB1BB8, &unk_264E26640);
      v38 = v134 + 2;
      v39 = v145;
      v40 = v144 * (v134 + 2);
      v41 = v30 + v40;
      v42 = v144 * v145;
      v28 = v30 + v144 * v145;
      do
      {
        v5 = v38;
        v27 = v39;
        a3 = v42;
        v45 = v40;
        if (v38 >= v140)
        {
          break;
        }

        v145 = v38;
        v46 = v139;
        sub_264D81744(v41, v139, &qword_27FFB1BB8, &unk_264E26640);
        v47 = v143;
        sub_264D81744(v28, v143, &qword_27FFB1BB8, &unk_264E26640);
        v48 = *(v8 + 48);
        v49 = *(v46 + v48);
        v50 = *(v47 + v48);
        if (v49 == v50)
        {
          v51 = sub_264E23A58();
          v47 = v143;
          v43 = v51;
        }

        else
        {
          v43 = v50 < v49;
        }

        sub_264D817BC(v47, &qword_27FFB1BB8, &unk_264E26640);
        sub_264D817BC(v46, &qword_27FFB1BB8, &unk_264E26640);
        v44 = v43;
        v5 = v145;
        v38 = v145 + 1;
        v41 += v144;
        v28 += v144;
        v39 = v27 + 1;
        v42 = a3 + v144;
        v40 = v45 + v144;
        v8 = v149;
      }

      while ((v141 & 1) == v44);
      if ((v141 & 1) == 0)
      {
        v28 = v5;
        v27 = v131;
        v5 = v132;
        a3 = v135;
LABEL_30:
        v26 = v134;
        goto LABEL_31;
      }

      v52 = v134;
      if (v5 < v134)
      {
        goto LABEL_134;
      }

      if (v134 < v5)
      {
        v53 = v134 * v144;
        do
        {
          if (v52 != v27)
          {
            v55 = *v135;
            if (!*v135)
            {
              goto LABEL_140;
            }

            sub_264D90E64(v55 + v53, v138, &qword_27FFB1BB8, &unk_264E26640);
            if (v53 < a3 || v55 + v53 >= v55 + v45)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v53 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_264D90E64(v138, a3 + v55, &qword_27FFB1BB8, &unk_264E26640);
          }

          ++v52;
          a3 = (a3 - v144);
          v45 -= v144;
          v53 += v144;
        }

        while (v52 < v27--);
        v28 = v5;
        v27 = v131;
        v5 = v132;
        a3 = v135;
        v8 = v149;
        goto LABEL_30;
      }

      v28 = v5;
      v27 = v131;
      v5 = v132;
      a3 = v135;
      v26 = v134;
    }

LABEL_31:
    v56 = a3[1];
    if (v28 < v56)
    {
      if (__OFSUB__(v28, v26))
      {
        goto LABEL_133;
      }

      if (v28 - v26 < v128)
      {
        break;
      }
    }

LABEL_53:
    if (v28 < v26)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v145 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_264D9E030(0, *(v27 + 16) + 1, 1, v27);
    }

    v75 = *(v27 + 16);
    v74 = *(v27 + 24);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      v27 = sub_264D9E030((v74 > 1), v75 + 1, 1, v27);
    }

    *(v27 + 16) = v76;
    v77 = v27 + 16 * v75;
    v78 = v145;
    *(v77 + 32) = v26;
    *(v77 + 40) = v78;
    v144 = *v133;
    if (!v144)
    {
      goto LABEL_142;
    }

    if (v75)
    {
      while (1)
      {
        v28 = v76 - 1;
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v79 = *(v27 + 32);
          v80 = *(v27 + 40);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_73:
          if (v82)
          {
            goto LABEL_121;
          }

          v95 = (v27 + 16 * v76);
          v97 = *v95;
          v96 = v95[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_124;
          }

          v101 = (v27 + 32 + 16 * v28);
          v103 = *v101;
          v102 = v101[1];
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_128;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              v28 = v76 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v105 = (v27 + 16 * v76);
        v107 = *v105;
        v106 = v105[1];
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_87:
        if (v100)
        {
          goto LABEL_123;
        }

        v108 = v27 + 16 * v28;
        v110 = *(v108 + 32);
        v109 = *(v108 + 40);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_126;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_94:
        v116 = v28 - 1;
        if (v28 - 1 >= v76)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v117 = *a3;
        if (!*a3)
        {
          goto LABEL_139;
        }

        v118 = a3;
        a3 = v27;
        v119 = v27 + 32;
        v27 = *(v27 + 32 + 16 * v116);
        v120 = *(v119 + 16 * v28 + 8);
        sub_264DF177C(v117 + *(v142 + 72) * v27, v117 + *(v142 + 72) * *(v119 + 16 * v28), v117 + *(v142 + 72) * v120, v144);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v120 < v27)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_264D9E01C(a3);
        }

        if (v116 >= a3[2])
        {
          goto LABEL_118;
        }

        v121 = &a3[2 * v116];
        v121[4] = v27;
        v121[5] = v120;
        v150 = a3;
        sub_264D9DF90(v28);
        v27 = v150;
        v76 = v150[2];
        v8 = v149;
        a3 = v118;
        if (v76 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = v27 + 32 + 16 * v76;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_119;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_120;
      }

      v90 = (v27 + 16 * v76);
      v92 = *v90;
      v91 = v90[1];
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_122;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_125;
      }

      if (v94 >= v86)
      {
        v112 = (v27 + 32 + 16 * v28);
        v114 = *v112;
        v113 = v112[1];
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_129;
        }

        if (v81 < v115)
        {
          v28 = v76 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v25 = a3[1];
    v26 = v145;
    if (v145 >= v25)
    {
      goto LABEL_104;
    }
  }

  if (__OFADD__(v26, v128))
  {
    goto LABEL_135;
  }

  if (v26 + v128 >= v56)
  {
    v57 = a3[1];
  }

  else
  {
    v57 = v26 + v128;
  }

  if (v57 < v26)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v28 == v57)
  {
    goto LABEL_53;
  }

  v131 = v27;
  v132 = v5;
  v58 = *a3;
  v59 = *(v142 + 72);
  v60 = *a3 + v59 * (v28 - 1);
  v61 = -v59;
  v134 = v26;
  v62 = v26 - v28;
  v145 = v28;
  v63 = v58;
  v136 = v59;
  v137 = v57;
  v64 = v58 + v28 * v59;
LABEL_43:
  v140 = v64;
  v141 = v62;
  v144 = v60;
  while (1)
  {
    v65 = v147;
    sub_264D81744(v64, v147, &qword_27FFB1BB8, &unk_264E26640);
    v66 = v148;
    sub_264D81744(v60, v148, &qword_27FFB1BB8, &unk_264E26640);
    v67 = *(v8 + 48);
    v68 = *(v65 + v67);
    v69 = *(v66 + v67);
    if (v68 == v69)
    {
      v70 = sub_264E23A58();
    }

    else
    {
      v70 = v69 < v68;
    }

    sub_264D817BC(v66, &qword_27FFB1BB8, &unk_264E26640);
    sub_264D817BC(v65, &qword_27FFB1BB8, &unk_264E26640);
    if ((v70 & 1) == 0)
    {
      v8 = v149;
LABEL_42:
      v60 = v144 + v136;
      v62 = v141 - 1;
      v64 = v140 + v136;
      if (++v145 == v137)
      {
        v27 = v131;
        v5 = v132;
        v26 = v134;
        a3 = v135;
        v28 = v137;
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    if (!v63)
    {
      break;
    }

    v71 = v146;
    sub_264D90E64(v64, v146, &qword_27FFB1BB8, &unk_264E26640);
    v8 = v149;
    swift_arrayInitWithTakeFrontToBack();
    sub_264D90E64(v71, v60, &qword_27FFB1BB8, &unk_264E26640);
    v60 += v61;
    v64 += v61;
    if (__CFADD__(v62++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_264DF177C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v57 = a3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  MEMORY[0x28223BE20](v56);
  MEMORY[0x28223BE20](v9);
  v11 = v49 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v49 - v13;
  MEMORY[0x28223BE20](v15);
  v18 = v49 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_68;
  }

  v21 = v57 - a2;
  if (v57 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_69;
  }

  v22 = (a2 - a1) / v20;
  v60 = a1;
  v59 = a4;
  v49[1] = v5;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    v55 = v16;
    v53 = v11;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v20;
      v34 = v32;
      v51 = a4;
      v54 = -v20;
      while (2)
      {
        while (1)
        {
          v49[0] = v32;
          v35 = a2;
          a2 += v33;
          v52 = v35;
          while (1)
          {
            v38 = v57;
            if (v35 <= a1)
            {
              v60 = v35;
              v58 = v49[0];
              goto LABEL_66;
            }

            v50 = v32;
            v39 = v34 + v33;
            v40 = v53;
            sub_264D81744(v39, v53, &qword_27FFB1BB8, &unk_264E26640);
            v41 = v55;
            sub_264D81744(a2, v55, &qword_27FFB1BB8, &unk_264E26640);
            v42 = *(v56 + 48);
            v43 = *(v40 + v42);
            v44 = *(v41 + v42);
            if (v43 == v44)
            {
              v45 = sub_264E23A58();
              v46 = v55;
              v47 = v45;
            }

            else
            {
              v46 = v41;
              v47 = v44 < v43;
            }

            v57 = v38 + v54;
            sub_264D817BC(v46, &qword_27FFB1BB8, &unk_264E26640);
            sub_264D817BC(v40, &qword_27FFB1BB8, &unk_264E26640);
            if (v47)
            {
              break;
            }

            v32 = v39;
            if (v38 < v34 || v57 >= v34)
            {
              swift_arrayInitWithTakeFrontToBack();
              v36 = v51;
            }

            else
            {
              v36 = v51;
              if (v38 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v39;
            v37 = v39 > v36;
            v33 = v54;
            v35 = v52;
            if (!v37)
            {
              a2 = v52;
              goto LABEL_65;
            }
          }

          if (v38 < v52 || v57 >= v52)
          {
            break;
          }

          v33 = v54;
          v32 = v50;
          v48 = v51;
          if (v38 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= v48)
          {
            goto LABEL_65;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v33 = v54;
        v32 = v50;
        if (v34 > v51)
        {
          continue;
        }

        break;
      }
    }

LABEL_65:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && a2 < v57)
    {
      v54 = v20;
      do
      {
        sub_264D81744(a2, v18, &qword_27FFB1BB8, &unk_264E26640);
        sub_264D81744(a4, v14, &qword_27FFB1BB8, &unk_264E26640);
        v26 = *(v56 + 48);
        v27 = *&v18[v26];
        v28 = *&v14[v26];
        if (v27 == v28)
        {
          v29 = sub_264E23A58();
        }

        else
        {
          v29 = v28 < v27;
        }

        sub_264D817BC(v14, &qword_27FFB1BB8, &unk_264E26640);
        sub_264D817BC(v18, &qword_27FFB1BB8, &unk_264E26640);
        if (v29)
        {
          v30 = a2 + v20;
          if (a1 < a2 || a1 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v30;
        }

        else
        {
          v31 = a4 + v20;
          if (a1 < a4 || a1 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = v31;
          a4 = v31;
        }

        v20 = v54;
        a1 += v54;
        v60 = a1;
      }

      while (a4 < v55 && a2 < v57);
    }
  }

LABEL_66:
  sub_264DF1D08(&v60, &v59, &v58);
}

uint64_t sub_264DF1D08(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_264DF1DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DF1E7C(uint64_t a1)
{
  v2 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DF1F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264DF2038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_264E23AA8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DF2144(uint64_t a1)
{
  type metadata accessor for PickupsOverviewLegendView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264E23AA8();
    if (v2 <= 0x3F)
    {
      sub_264DF21E0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264DF21E0()
{
  if (!qword_27FFB2AE0)
  {
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2AE0);
    }
  }
}

uint64_t sub_264DF2244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23C38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264DF2314(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23C38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_264DF23CC(uint64_t a1)
{
  sub_264E23C38();
  if (v1 <= 0x3F)
  {
    sub_264DF2450(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264DF2450(uint64_t a1)
{
  if (!qword_27FFB2AF8)
  {
    sub_264E23AA8();
    sub_264DF24BC();
    v1 = sub_264E25028();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB2AF8);
    }
  }
}

unint64_t sub_264DF24BC()
{
  result = qword_27FFB19D0;
  if (!qword_27FFB19D0)
  {
    sub_264E23AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB19D0);
  }

  return result;
}

unint64_t sub_264DF2518()
{
  result = qword_27FFB2B00;
  if (!qword_27FFB2B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2B08, &qword_264E287D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2B00);
  }

  return result;
}

uint64_t sub_264DF258C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264DF25D4(uint64_t result, int a2, int a3)
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

uint64_t sub_264DF2630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_264E23AA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NotificationsOverviewChart.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for OverviewChart(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DF2948(v0, v9);
  v10 = type metadata accessor for NotificationsOverviewChart(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  sub_264E24E78();
  v11 = *(v0 + *(v10 + 24));
  v12 = sub_264E23AA8();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_264D93A14(v6, v3);

  sub_264E24D78();
  sub_264DF29CC(v6);
  v13 = v7[7];
  v14 = &v9[v7[8]];
  v20 = 0x4024000000000000;
  sub_264E24D78();
  v15 = v22;
  *v14 = v21;
  *(v14 + 1) = v15;
  v16 = &v9[v7[9]];
  v20 = 0;
  sub_264E24D78();
  v17 = v22;
  *v16 = v21;
  *(v16 + 1) = v17;
  v9[v7[10]] = 1;
  *&v9[v13] = v11;
  sub_264DF3344(&qword_27FFB2B30, type metadata accessor for OverviewChart, &protocol conformance descriptor for OverviewChart);
  sub_264E24C08();
  return sub_264DF2A34(v9);
}

uint64_t sub_264DF2948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewChart.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DF29CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DF2A34(uint64_t a1)
{
  v2 = type metadata accessor for OverviewChart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DF2AC4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for NotificationsOverviewChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for OverviewChart.Model(0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_264DF2C84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for NotificationsOverviewChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = type metadata accessor for OverviewChart.Model(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_264DF2E04(uint64_t a1)
{
  type metadata accessor for NotificationsOverviewChart.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264DF2F10(319, &qword_27FFB19F0, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_264DF2F10(319, &qword_27FFB22C0, &qword_27FFB22C8, &qword_264E27880, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for OverviewChart.Model(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_264DF2F10(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_264DF2F78()
{
  result = qword_27FFB2B48;
  if (!qword_27FFB2B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2B50, &qword_264E2AA70);
    sub_264DF3344(&qword_27FFB2B30, type metadata accessor for OverviewChart, &protocol conformance descriptor for OverviewChart);
    sub_264DF3344(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2B48);
  }

  return result;
}

uint64_t sub_264DF3078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OverviewChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_264E23AA8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264DF317C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OverviewChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_264E23AA8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_264DF3278(uint64_t a1)
{
  result = type metadata accessor for OverviewChart.Model(319);
  if (v2 <= 0x3F)
  {
    result = sub_264E23AA8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_264DF3344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264DF338C(uint64_t a1, uint64_t a2)
{
  if ((sub_264E23A78() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OverviewChart.Model(0);
  if ((sub_264D84128(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || (MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]) & 1) == 0 || (sub_264E24C48() & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  type metadata accessor for NotificationsOverviewChart.Model(0);

  return sub_264E23A78();
}

id STCommunicationSafetyContentInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STCommunicationSafetyContentInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STCommunicationSafetyContentInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id STCommunicationSafetyContentInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STCommunicationSafetyContentInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PickupsDetailLegendView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PickupsDetailLegendView.Model(0) + 20);
  *(a2 + v4) = sub_264DEBC5C(MEMORY[0x277D84F90]);
  v5 = sub_264E23C38();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t PickupsDetailLegendView.init(model:dateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a3 + *(type metadata accessor for PickupsDetailLegendView(0) + 24));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = 0;
  sub_264DF54C4(a1, a3, type metadata accessor for PickupsDetailLegendView.Model);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23AF8();
  v11 = sub_264E238E8();
  (*(*(v11 - 8) + 8))(a2, v11);
  sub_264DF552C(a1, type metadata accessor for PickupsDetailLegendView.Model);
  return (*(v7 + 8))(v9, v6);
}

void *PickupsDetailLegendView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_264E24818();
  v10 = 1;
  sub_264DF385C(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_264D81744(__dst, &v7, &qword_27FFB2B68, &qword_264E28A10);
  sub_264D817BC(v12, &qword_27FFB2B68, &qword_264E28A10);
  memcpy(&v9[7], __dst, 0x130uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x137uLL);
}

uint64_t sub_264DF385C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20A8, &qword_264E270C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + *(type metadata accessor for PickupsDetailLegendView.Model(0) + 20));
  if (*(v7 + 16) && (v8 = type metadata accessor for PickupsDetailLegendView(0), v9 = sub_264D9D5F4(a1 + *(v8 + 20)), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v7 + 56);
    v13 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
    v14 = *(v13 - 8);
    sub_264DF54C4(v12 + *(v14 + 72) * v11, v6, type metadata accessor for PickupsDetailLegendView.DayPickups);
    (*(v14 + 56))(v6, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  v16 = sub_264E24758();
  v23 = 0;
  sub_264DF3ABC(v6, a1, v21);
  memcpy(v24, v21, sizeof(v24));
  memcpy(v25, v21, sizeof(v25));
  sub_264D81744(v24, &v20, &qword_27FFB2BC0, &qword_264E28B10);
  sub_264D817BC(v25, &qword_27FFB2BC0, &qword_264E28B10);
  memcpy(&v22[7], v24, 0x118uLL);
  v17 = v23;
  *a2 = v16;
  *(a2 + 8) = 0;
  *(a2 + 16) = v17;
  memcpy((a2 + 17), v22, 0x11FuLL);
  return sub_264D817BC(v6, &qword_27FFB20A8, &qword_264E270C8);
}

uint64_t sub_264DF3ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_264E24828();
  LOBYTE(v32[0]) = 0;
  sub_264DF3E50(a1, a2, &v38);
  v21 = *&v39[112];
  v22 = *&v39[128];
  v17 = *&v39[48];
  v18 = *&v39[64];
  v19 = *&v39[80];
  v20 = *&v39[96];
  v13 = v38;
  v14 = *v39;
  v15 = *&v39[16];
  v16 = *&v39[32];
  v24[8] = *&v39[112];
  v24[9] = *&v39[128];
  v24[4] = *&v39[48];
  v24[5] = *&v39[64];
  v24[6] = *&v39[80];
  v24[7] = *&v39[96];
  v24[0] = v38;
  v24[1] = *v39;
  v23 = *&v39[144];
  v25 = *&v39[144];
  v24[2] = *&v39[16];
  v24[3] = *&v39[32];
  sub_264D81744(&v13, &v28, &qword_27FFB2BC8, &qword_264E28B18);
  sub_264D817BC(v24, &qword_27FFB2BC8, &qword_264E28B18);
  *&v12[119] = v20;
  *&v12[135] = v21;
  *&v12[151] = v22;
  *&v12[55] = v16;
  *&v12[71] = v17;
  *&v12[87] = v18;
  *&v12[103] = v19;
  *&v12[7] = v13;
  *&v12[23] = v14;
  *&v12[167] = v23;
  *&v12[39] = v15;
  v6 = v32[0];
  v7 = sub_264E24828();
  LOBYTE(v38) = 0;
  sub_264DF4894(a1, v26);
  *&v11[7] = v26[0];
  *&v11[23] = v26[1];
  *&v11[39] = v26[2];
  *&v11[55] = v27;
  LOBYTE(a1) = v38;
  *&v28 = v5;
  *(&v28 + 1) = 0x4014000000000000;
  v29[0] = v6;
  *&v29[1] = *v12;
  *&v29[17] = *&v12[16];
  *&v29[33] = *&v12[32];
  *&v29[97] = *&v12[96];
  *&v29[81] = *&v12[80];
  *&v29[65] = *&v12[64];
  *&v29[49] = *&v12[48];
  *&v29[160] = *&v12[159];
  *&v29[145] = *&v12[144];
  *&v29[129] = *&v12[128];
  *&v29[113] = *&v12[112];
  *&__src[128] = *&v29[112];
  *&__src[144] = *&v29[128];
  *&__src[160] = *&v29[144];
  *&__src[176] = *&v29[160];
  *&__src[64] = *&v29[48];
  *&__src[80] = *&v29[64];
  *&__src[96] = *&v29[80];
  *&__src[112] = *&v29[96];
  *__src = v28;
  *&__src[16] = *v29;
  *&__src[32] = *&v29[16];
  *&__src[48] = *&v29[32];
  *&v30 = v7;
  *(&v30 + 1) = 0x4014000000000000;
  v31[0] = v38;
  *&v31[1] = *v11;
  *&v31[17] = *&v11[16];
  *&v31[33] = *&v11[32];
  *&v31[49] = *&v11[48];
  *&v31[64] = *(&v27 + 1);
  *&__src[192] = v30;
  *&__src[208] = *v31;
  *&__src[272] = *(&v27 + 1);
  *&__src[240] = *&v31[32];
  *&__src[256] = *&v31[48];
  *&__src[224] = *&v31[16];
  memcpy(a3, __src, 0x118uLL);
  v32[0] = v7;
  v32[1] = 0x4014000000000000;
  v33 = a1;
  v35 = *&v11[16];
  v36 = *&v11[32];
  *v37 = *&v11[48];
  *&v37[15] = *&v11[63];
  v34 = *v11;
  sub_264D81744(&v28, &v38, &qword_27FFB2BD0, &qword_264E28B20);
  sub_264D81744(&v30, &v38, &qword_27FFB2BD8, &qword_264E28B28);
  sub_264D817BC(v32, &qword_27FFB2BD8, &qword_264E28B28);
  *&v39[113] = *&v12[112];
  *&v39[129] = *&v12[128];
  *&v39[145] = *&v12[144];
  *&v39[160] = *&v12[159];
  *&v39[49] = *&v12[48];
  *&v39[65] = *&v12[64];
  *&v39[81] = *&v12[80];
  *&v39[97] = *&v12[96];
  *&v39[1] = *v12;
  *&v39[17] = *&v12[16];
  *&v38 = v5;
  *(&v38 + 1) = 0x4014000000000000;
  v39[0] = v6;
  *&v39[33] = *&v12[32];
  return sub_264D817BC(&v38, &qword_27FFB2BD0, &qword_264E28B20);
}

__n128 sub_264DF3E50@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20A8, &qword_264E270C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41[-v9];
  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_264D81744(a1, v7, &qword_27FFB20A8, &qword_264E270C8);
  v15 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  if ((*(*(v15 - 8) + 48))(v7, 1, v15) == 1)
  {
    sub_264D817BC(v7, &qword_27FFB20A8, &qword_264E270C8);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  else
  {
    sub_264D81744(v7, v10, &qword_27FFB1860, &qword_264E267E0);
    sub_264DF552C(v7, type metadata accessor for PickupsDetailLegendView.DayPickups);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v46 = v11;
      v47 = v12;
      v16 = *(v12 + 32);
      v45 = v14;
      v16(v14, v10, v11);
      sub_264E247D8();
      v17 = [objc_opt_self() bundle];
      v18 = sub_264E24AE8();
      v20 = v19;
      v22 = v21;
      LODWORD(v91) = sub_264E248D8();
      v23 = sub_264E24AC8();
      v43 = v24;
      v44 = v25;
      v42 = v26;
      sub_264D817AC(v18, v20, v22 & 1);

      v27 = sub_264E24758();
      LOBYTE(v70[0]) = 0;
      sub_264DF4560(&v91);
      v54 = v94;
      v55 = v95;
      v51 = v91;
      v52 = v92;
      v53 = v93;
      v57[4] = v95;
      v57[5] = v96;
      v57[2] = v93;
      v57[3] = v94;
      v56 = v96;
      v57[0] = v91;
      v57[1] = v92;
      sub_264D81744(&v51, &v80, &qword_27FFB2BE0, &qword_264E28B30);
      sub_264D817BC(v57, &qword_27FFB2BE0, &qword_264E28B30);
      *(&v50[2] + 7) = v53;
      *(&v50[3] + 7) = v54;
      *(&v50[4] + 7) = v55;
      *(&v50[5] + 7) = v56;
      *(v50 + 7) = v51;
      *(&v50[1] + 7) = v52;
      v28 = v70[0];
      v29 = sub_264E249E8();
      KeyPath = swift_getKeyPath();
      *&v58 = v27;
      *(&v58 + 1) = 0x4000000000000000;
      LOBYTE(v59[0]) = v28;
      *(&v59[3] + 1) = v50[3];
      *(&v59[4] + 1) = v50[4];
      *(&v59[5] + 1) = v50[5];
      *(v59 + 1) = v50[0];
      *(&v59[1] + 1) = v50[1];
      *(&v59[2] + 1) = v50[2];
      *&v59[6] = *(&v50[5] + 15);
      *(&v59[6] + 1) = KeyPath;
      v62 = v59[0];
      v66 = v59[4];
      v67 = v59[5];
      v63 = v59[1];
      v64 = v59[2];
      v65 = v59[3];
      v61 = v58;
      v68 = v59[6];
      v75 = v50[3];
      v76 = v50[4];
      *v77 = v50[5];
      v72 = v50[0];
      v73 = v50[1];
      v31 = v42 & 1;
      v49 = v42 & 1;
      v60 = v29;
      v69 = v29;
      LODWORD(v48) = v42 & 1;
      v70[0] = v27;
      v70[1] = 0x4000000000000000;
      v71 = v28;
      v74 = v50[2];
      *&v77[15] = *(&v50[5] + 15);
      v78 = KeyPath;
      v79 = v29;
      v32 = v23;
      v33 = v23;
      v34 = v43;
      sub_264D80F20(v33, v43, v42 & 1);
      v35 = v44;

      sub_264D81744(&v58, &v91, &qword_27FFB2BE8, &qword_264E28B68);
      sub_264D817BC(v70, &qword_27FFB2BE8, &qword_264E28B68);
      sub_264D817AC(v32, v34, v31);

      *&v80 = v32;
      *(&v80 + 1) = v34;
      LOBYTE(v81) = v48;
      *(&v81 + 1) = v35;
      v88 = v67;
      v89 = v68;
      v90 = v69;
      v84 = v63;
      v85 = v64;
      v87 = v66;
      v86 = v65;
      v83 = v62;
      v82 = v61;
      nullsub_1();
      (*(v47 + 8))(v45, v46);
      v99 = v88;
      v100 = v89;
      v101 = v90;
      v95 = v84;
      v96 = v85;
      v97 = v86;
      v98 = v87;
      v91 = v80;
      v92 = v81;
      v93 = v82;
      v94 = v83;
      goto LABEL_6;
    }
  }

  sub_264D817BC(v10, &qword_27FFB1860, &qword_264E267E0);
  sub_264DF558C(&v91);
LABEL_6:
  v36 = v100;
  *(a3 + 128) = v99;
  *(a3 + 144) = v36;
  *(a3 + 160) = v101;
  v37 = v96;
  *(a3 + 64) = v95;
  *(a3 + 80) = v37;
  v38 = v98;
  *(a3 + 96) = v97;
  *(a3 + 112) = v38;
  v39 = v92;
  *a3 = v91;
  *(a3 + 16) = v39;
  result = v94;
  *(a3 + 32) = v93;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_264DF4560@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264E24D28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E24D18();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v28 = sub_264E24D48();

  (*(v3 + 8))(v5, v2);
  sub_264E24F58();
  sub_264E244B8();
  v6 = v30;
  LOBYTE(v5) = v31;
  v7 = v32;
  v8 = v33;
  v26 = v35;
  v27 = v34;
  LODWORD(v2) = sub_264E248D8();
  v37 = v5;
  v36 = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v9 setDateStyle_];
  [v9 setTimeStyle_];
  v10 = sub_264E250E8();
  [v9 setLocalizedDateFormatFromTemplate_];

  v11 = sub_264E23A38();
  v12 = [v9 stringFromDate_];

  v13 = sub_264E25108();
  v15 = v14;

  *&v41 = v13;
  *(&v41 + 1) = v15;
  sub_264D89EB8();
  v16 = sub_264E24AF8();
  v18 = v17;
  v19 = v16;
  *&v38 = v28;
  *(&v38 + 1) = v6;
  LOBYTE(v39) = v37;
  *(&v39 + 1) = v7;
  LOBYTE(v40[0]) = v36;
  *(&v40[0] + 1) = v27;
  *&v40[1] = v26;
  DWORD2(v40[1]) = v2;
  *(v43 + 12) = *(v40 + 12);
  v42 = v39;
  v43[0] = v40[0];
  v41 = v38;
  LOBYTE(v2) = v20 & 1;
  v29[64] = v20 & 1;
  v21 = v38;
  v22 = v39;
  v23 = v43[1];
  *(a1 + 32) = v40[0];
  *(a1 + 48) = v23;
  *a1 = v21;
  *(a1 + 16) = v22;
  *(a1 + 64) = v16;
  *(a1 + 72) = v17;
  *(a1 + 80) = v20 & 1;
  *(a1 + 88) = v24;
  sub_264D81744(&v38, v29, &qword_27FFB2BF0, &unk_264E28B70);
  sub_264D80F20(v19, v18, v2);

  sub_264D817AC(v19, v18, v2);
}

uint64_t sub_264DF4894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20A8, &qword_264E270C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  sub_264E247D8();
  v6 = [objc_opt_self() bundle];
  v7 = sub_264E24AE8();
  v9 = v8;
  v11 = v10;
  v33 = sub_264E24C68();
  v12 = sub_264E24AC8();
  v14 = v13;
  v30 = v15;
  v17 = v16;
  sub_264D817AC(v7, v9, v11 & 1);

  sub_264D81744(v31, v5, &qword_27FFB20A8, &qword_264E270C8);
  v18 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  if ((*(*(v18 - 8) + 48))(v5, 1, v18) == 1)
  {
    sub_264D817BC(v5, &qword_27FFB20A8, &qword_264E270C8);
    v19 = 0;
  }

  else
  {
    v19 = *&v5[*(v18 + 20)];
    sub_264DF552C(v5, type metadata accessor for PickupsDetailLegendView.DayPickups);
  }

  v35 = v19;
  sub_264D908C4();
  v33 = sub_264E25348();
  v34 = v20;
  sub_264D89EB8();
  v21 = sub_264E24AF8();
  v23 = v22;
  v24 = v30 & 1;
  v32 = v30 & 1;
  LOBYTE(v33) = v30 & 1;
  v26 = v25 & 1;
  LOBYTE(v35) = v25 & 1;
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v24;
  *(a2 + 24) = v17;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v25 & 1;
  *(a2 + 56) = v27;
  sub_264D80F20(v12, v14, v24);

  sub_264D80F20(v21, v23, v26);

  sub_264D817AC(v21, v23, v26);

  sub_264D817AC(v12, v14, v32);
}

void *sub_264DF4BB0@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_264E24818();
  v10 = 1;
  sub_264DF385C(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_264D81744(__dst, &v7, &qword_27FFB2B68, &qword_264E28A10);
  sub_264D817BC(v12, &qword_27FFB2B68, &qword_264E28A10);
  memcpy(&v9[7], __dst, 0x130uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x137uLL);
}

uint64_t sub_264DF4CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickupsDetailLegendView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264DF4E08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PickupsDetailLegendView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_264E23AA8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DF4F14(uint64_t a1)
{
  type metadata accessor for PickupsDetailLegendView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264E23AA8();
    if (v2 <= 0x3F)
    {
      sub_264DF4FB0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264DF4FB0()
{
  if (!qword_27FFB2B80)
  {
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2B80);
    }
  }
}

uint64_t sub_264DF5014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23C38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264DF50E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23C38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_264DF519C(uint64_t a1)
{
  sub_264E23C38();
  if (v1 <= 0x3F)
  {
    sub_264DF5220(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264DF5220(uint64_t a1)
{
  if (!qword_27FFB2B98)
  {
    sub_264E23AA8();
    type metadata accessor for PickupsDetailLegendView.DayPickups(255);
    sub_264DF24BC();
    v1 = sub_264E25028();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB2B98);
    }
  }
}

unint64_t sub_264DF52C0()
{
  result = qword_27FFB2BA0;
  if (!qword_27FFB2BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2BA8, &unk_264E28AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2BA0);
  }

  return result;
}

uint64_t sub_264DF5338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DF53C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_264DF5440(uint64_t a1)
{
  sub_264DDB89C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_264DF54C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DF552C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_264DF558C(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_264DF55B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264DF55D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_264DF562C(double a1, double a2, double a3, double a4)
{
  v4 = sub_264E24568();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2BF8, &qword_264E28C10);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  v11 = *(v5 + 28);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_264E247F8();
  (*(*(v13 - 8) + 104))(&v7[v11], v12, v13);
  __asm { FMOV            V0.2D, #10.0 }

  *v7 = _Q0;
  sub_264E24F58();
  sub_264E244B8();
  sub_264DF5924(v7, v10);
  v19 = &v10[*(v8 + 36)];
  v20 = v30;
  *v19 = v29;
  *(v19 + 1) = v20;
  *(v19 + 2) = v31;
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v21 setNumberStyle_];
  [v21 setMinimumIntegerDigits_];
  [v21 setMaximumIntegerDigits_];
  [v21 setMaximumFractionDigits_];
  v22 = sub_264E23C58();
  v23 = [v21 stringFromNumber_];

  if (v23)
  {
    v24 = sub_264E25108();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v28[0] = v24;
  v28[1] = v26;
  sub_264DF5988();
  sub_264D89EB8();
  sub_264E24BF8();

  return sub_264DF5A44(v10);
}

uint64_t sub_264DF5924(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E24568();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_264DF5988()
{
  result = qword_27FFB2C00;
  if (!qword_27FFB2C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2BF8, &qword_264E28C10);
    sub_264DF5B6C(&qword_27FFB2C08, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2C00);
  }

  return result;
}

uint64_t sub_264DF5A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2BF8, &qword_264E28C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264DF5AB0()
{
  result = qword_27FFB2C10;
  if (!qword_27FFB2C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2C18, &qword_264E28C18);
    sub_264DF5988();
    sub_264DF5B6C(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2C10);
  }

  return result;
}

uint64_t sub_264DF5B6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NotificationsOverviewTabView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for NotificationsOverviewTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  result = (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_264DF5C54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = v42 - v6;
  v7 = type metadata accessor for OverviewChart.Model(0);
  MEMORY[0x28223BE20](v7);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264E23C38();
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v51 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = v42 - v13;
  v14 = sub_264E23AA8();
  v54 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v49 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (v42 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2CB0, &unk_264E28D60);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v42 - v20;
  v47 = a2;
  v22 = *a2;
  v23 = a1;
  v55 = a1;
  v24 = v53;
  sub_264D93E08(sub_264DF7AE4, v22, v42 - v20);
  v25 = type metadata accessor for NotificationsOverviewChart.Model(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v45 = v26 + 48;
  v46 = v27;
  if (v27(v21, 1, v25) != 1)
  {
    return sub_264DF7B1C(v21, v56, type metadata accessor for NotificationsOverviewChart.Model);
  }

  v42[1] = v24;
  v43 = v9;
  v44 = v7;
  v53 = v10;
  v28 = *(v54 + 16);
  v28(v18, v23, v14);
  v29 = type metadata accessor for NotificationsOverviewTabView.Model(0);
  v30 = *(v52 + 16);
  v31 = v50;
  v30(v50, v47 + *(v29 + 20), v53);
  v28((v56 + *(v25 + 20)), v18, v14);
  v32 = v18;
  v33 = v49;
  v47 = v32;
  (v28)(v49);
  v30(v51, v31, v53);
  v34 = v48;
  v42[0] = sub_264E24C58();
  Calendar.startOfWeek(containing:)(v33, v34);
  result = (*(v54 + 48))(v34, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = v54;
    v37 = *(v54 + 8);
    v37(v49, v14);
    v38 = v52;
    v39 = v53;
    (*(v52 + 8))(v50, v53);
    v37(v47, v14);
    v40 = v43;
    (*(v36 + 32))(v43, v34, v14);
    v41 = v44;
    *(v40 + v44[5]) = MEMORY[0x277D84F90];
    (*(v38 + 32))(v40 + v41[6], v51, v39);
    *(v40 + v41[7]) = v42[0];
    *(v40 + v41[8]) = 1;
    sub_264DF7B1C(v40, v56, type metadata accessor for OverviewChart.Model);
    result = v46(v21, 1, v25);
    if (result != 1)
    {
      return sub_264D817BC(v21, &qword_27FFB2CB0, &unk_264E28D60);
    }
  }

  return result;
}

uint64_t NotificationsOverviewTabView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C20, &qword_264E28C20);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_264E24818();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C28, &qword_264E28C28);
  sub_264DF62B4(v0, &v3[*(v4 + 44)]);
  sub_264D81DCC(&qword_27FFB2C30, &qword_27FFB2C20, &qword_264E28C20, MEMORY[0x277CE1198]);
  sub_264E24C08();
  return sub_264DF6754(v3);
}

uint64_t sub_264DF62B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_264E24538();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_264E24558();
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FB8, &qword_264E26E20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C70, &qword_264E28CE8);
  v18 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v20 = &v27 - v19;
  type metadata accessor for NotificationsOverviewTabView(0);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v14, &qword_27FFB1F70, &qword_264E28470);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC8, &qword_264E274D0);
  (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  v35 = a1;
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C78, &qword_264E28D20);
  sub_264DF79CC(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_264DF7688();
  sub_264E24F48();
  sub_264E24528();
  v22 = v30;
  v23 = v31;
  (*(v30 + 16))(v29, v7, v31);
  sub_264E24548();
  (*(v22 + 8))(v7, v23);
  sub_264D81DCC(&qword_27FFB2C90, &qword_27FFB2C70, &qword_264E28CE8, MEMORY[0x277CDF0C8]);
  v24 = v28;
  v25 = v32;
  sub_264E24B68();
  (*(v33 + 8))(v11, v25);
  return (*(v18 + 8))(v20, v24);
}

uint64_t sub_264DF6754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C20, &qword_264E28C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DF67D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = type metadata accessor for NotificationsOverviewTabView(0);
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = v5;
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_264E23AA8();
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = sub_264E238E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActivityNavigationState(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x26674EFA0](v20);
  v21 = *(v17 + 28);
  v22 = v35;
  v23 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(v13 + 16))(v15, &v19[v21 + *(v23 + 20)], v12);
  sub_264DF7A84(v19, type metadata accessor for ActivityNavigationState);
  type metadata accessor for NotificationsOverviewTabView.Model(0);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  v24 = Calendar.startOfEachWeek(fromWeekContaining:throughWeekExcluding:)(v11, v8);
  v25 = *(v6 + 8);
  v25(v8, v22);
  v26 = (v25)(v11, v22);
  if (v24)
  {
    MEMORY[0x28223BE20](v26);
    v33 = a1;
    sub_264E0ADD4(sub_264DF773C, (&v34 - 4), v24);
    v28 = v27;

    (*(v13 + 8))(v15, v12);
    v40 = v28;
    v29 = v38;
    sub_264DF7A14(a1, v38, type metadata accessor for NotificationsOverviewTabView);
    v30 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v31 = swift_allocObject();
    sub_264DF7B1C(v29, v31 + v30, type metadata accessor for NotificationsOverviewTabView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C98, &qword_264E28D28);
    type metadata accessor for NotificationsOverviewChart(0);
    sub_264D81DCC(&qword_27FFB2CA0, &qword_27FFB2C98, &qword_264E28D28, MEMORY[0x277D83980]);
    sub_264DF79CC(&qword_27FFB2C88, type metadata accessor for NotificationsOverviewChart, &protocol conformance descriptor for NotificationsOverviewChart);
    v33 = sub_264DF79CC(&qword_27FFB2CA8, type metadata accessor for NotificationsOverviewChart.Model, &unk_264E28948);
    return sub_264E24EF8();
  }

  else
  {
    result = sub_264E253E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_264DF6D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for NotificationsOverviewChart.Model(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DF7A14(a1, v9, type metadata accessor for NotificationsOverviewChart.Model);
  type metadata accessor for NotificationsOverviewTabView(0);
  sub_264E24E78();
  swift_getKeyPath();
  v10 = type metadata accessor for NotificationsOverviewChart(0);
  sub_264E24E68();

  sub_264D817BC(v6, &qword_27FFB1F70, &qword_264E28470);
  *(a2 + *(v10 + 24)) = 0;
  sub_264DF7A14(v9, a2, type metadata accessor for NotificationsOverviewChart.Model);
  sub_264DF7A14(v9, a2 + *(v10 + 28), type metadata accessor for OverviewChart.Model);
  return sub_264DF7A84(v9, type metadata accessor for NotificationsOverviewChart.Model);
}

uint64_t sub_264DF6EDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C20, &qword_264E28C20);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_264E24818();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C28, &qword_264E28C28);
  sub_264DF62B4(v0, &v3[*(v4 + 44)]);
  sub_264D81DCC(&qword_27FFB2C30, &qword_27FFB2C20, &qword_264E28C20, MEMORY[0x277CE1198]);
  sub_264E24C08();
  return sub_264DF6754(v3);
}

uint64_t sub_264DF7010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationsOverviewTabView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264DF7120(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NotificationsOverviewTabView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264DF7248(uint64_t a1)
{
  type metadata accessor for NotificationsOverviewTabView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264DF7528(319, &qword_27FFB1F88, type metadata accessor for ActivityNavigationState, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264DF7310(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264DF73D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DF7474(uint64_t a1)
{
  sub_264DF7528(319, &qword_27FFB2C58, type metadata accessor for NotificationsOverviewChart.Model, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_264E23C38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264DF7528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_264DF7590()
{
  result = qword_27FFB2C60;
  if (!qword_27FFB2C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2C68, &unk_264E28CD8);
    sub_264D81DCC(&qword_27FFB2C30, &qword_27FFB2C20, &qword_264E28C20, MEMORY[0x277CE1198]);
    sub_264DF79CC(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2C60);
  }

  return result;
}

unint64_t sub_264DF7688()
{
  result = qword_27FFB2C80;
  if (!qword_27FFB2C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2C78, &qword_264E28D20);
    sub_264DF79CC(&qword_27FFB2C88, type metadata accessor for NotificationsOverviewChart, &protocol conformance descriptor for NotificationsOverviewChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2C80);
  }

  return result;
}

uint64_t sub_264DF775C()
{
  v1 = (type metadata accessor for NotificationsOverviewTabView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*v1 + 64);

  v4 = *(type metadata accessor for NotificationsOverviewTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3 + v4, v5);
  v7 = v0 + v3 + v1[7];

  v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470) + 32);
  v9 = type metadata accessor for ActivityNavigationState(0);
  v10 = v8 + *(v9 + 20);
  v11 = sub_264E23AA8();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = *(type metadata accessor for ActivityNavigationState.DateAndBounds(0) + 20);
  v13 = sub_264E238E8();
  (*(*(v13 - 8) + 8))(v10 + v12, v13);
  v6(v8 + *(v9 + 24), v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v15, v2 | 7);
}

uint64_t sub_264DF794C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for NotificationsOverviewTabView(0);

  return sub_264DF6D0C(a1, a2);
}

uint64_t sub_264DF79CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264DF7A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DF7A84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264DF7B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t NotificationsHeaderView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20B8, &qword_264E270F0) - 8;
  MEMORY[0x28223BE20](v47);
  v57 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v42 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = sub_264E23C38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v43 = sub_264DEB44C(MEMORY[0x277D84F90]);
  v51 = v15;
  v21 = *(v15 + 16);
  v54 = a1;
  v21(v20, a1, v14);
  v22 = sub_264E23AA8();
  v42 = *(v22 - 8);
  v23 = v42 + 56;
  v24 = *(v42 + 56);
  v24(v13, 1, 1, v22);
  v50 = v20;
  v21(v17, v20, v14);
  v53 = v13;
  sub_264D81744(v13, v10, &qword_27FFB1860, &qword_264E267E0);
  v25 = v57;
  v48 = v17;
  v44 = v14;
  v21(v57, v17, v14);
  v26 = v47;
  v27 = *(v47 + 44);
  sub_264DEB44C(MEMORY[0x277D84F90]);
  v46 = *(v26 + 52);
  v52 = v23;
  v49 = v24;
  v24(&v25[v46], 1, 1, v22);

  v25[*(v26 + 48)] = 1;
  *&v25[v27] = v43;
  v28 = v45;
  v29 = v10;
  v30 = v42;
  v31 = v29;
  v32 = v22;
  sub_264D81744(v29, v45, &qword_27FFB1860, &qword_264E267E0);
  v33 = *(v30 + 48);
  if (v33(v28, 1, v22) == 1)
  {
    v34 = v55;
    sub_264E23A98();
    v35 = *(v51 + 8);
    v36 = v44;
    v35(v54, v44);
    sub_264D817BC(v31, &qword_27FFB1860, &qword_264E267E0);
    v35(v48, v36);
    sub_264D817BC(v53, &qword_27FFB1860, &qword_264E267E0);
    v35(v50, v36);
    v37 = v34;
    if (v33(v28, 1, v32) != 1)
    {
      sub_264D817BC(v28, &qword_27FFB1860, &qword_264E267E0);
    }
  }

  else
  {
    v38 = *(v51 + 8);
    v39 = v44;
    v38(v54, v44);
    sub_264D817BC(v31, &qword_27FFB1860, &qword_264E267E0);
    v38(v48, v39);
    sub_264D817BC(v53, &qword_27FFB1860, &qword_264E267E0);
    v38(v50, v39);
    v37 = v55;
    (*(v30 + 32))(v55, v28, v22);
  }

  v49(v37, 0, 1, v32);
  v40 = v57;
  sub_264DEB634(v37, &v57[v46]);
  return sub_264DF876C(v40, v56);
}

uint64_t NotificationsHeaderView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationsHeaderView.Model(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2CB8, &qword_264E28D70);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  sub_264DF87FC(v1, v4);
  sub_264DF876C(v4, v7);
  v8 = type metadata accessor for NotificationsHeaderView(0);
  v9 = v8[6];
  v10 = *(v1 + v8[5]);
  v11 = v5[10];
  v12 = sub_264E238E8();
  (*(*(v12 - 8) + 16))(&v7[v11], v1 + v9, v12);
  v13 = *(v1 + v8[7]);
  *&v7[v5[9]] = v10;
  v14 = &v7[v5[11]];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v7[v5[12]] = v13;
  v15 = &v7[v5[13]];
  *v15 = sub_264DF82C0;
  *(v15 + 1) = 0;
  sub_264D81DCC(&qword_27FFB2CC0, &qword_27FFB2CB8, &qword_264E28D70, &protocol conformance descriptor for ChartHeaderView<A>);

  sub_264E24C08();
  return sub_264D817BC(v7, &qword_27FFB2CB8, &qword_264E28D70);
}

uint64_t sub_264DF82C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_264DF82CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  sub_264D89EB8();

  v4 = sub_264E24AF8();
  v6 = v5;
  v8 = v7;
  sub_264E249C8();
  v9 = sub_264E24AD8();
  v11 = v10;
  v16 = v12;
  v17 = v13;

  sub_264D817AC(v4, v6, v8 & 1);

  sub_264E24F58();
  sub_264E244B8();
  v14 = sub_264E24C58();
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v17;
  *(a3 + 32) = a1;
  *(a3 + 40) = v19;
  *(a3 + 48) = v20;
  *(a3 + 56) = v21;
  *(a3 + 64) = v22;
  *(a3 + 72) = v23;
  *(a3 + 80) = v14;
  sub_264D80F20(v9, v11, v16 & 1);

  sub_264D817AC(v9, v11, v16 & 1);
}

double sub_264DF8448@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = sub_264E24768();
  v19 = 0;
  sub_264DF82CC(v4, v5, &v12);
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v20 = v12;
  v21 = v13;
  v27 = v17;
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v26[0] = v12;
  v26[1] = v13;
  sub_264D81744(&v20, v11, &qword_27FFB2D08, &qword_264E28EA0);
  sub_264D817BC(v26, &qword_27FFB2D08, &qword_264E28EA0);
  *&v18[39] = v22;
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[7] = v20;
  *&v18[23] = v21;
  v7 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  *(a2 + 65) = v7;
  *(a2 + 81) = *&v18[64];
  *(a2 + 96) = *&v18[79];
  result = *&v18[16];
  v9 = *v18;
  *(a2 + 33) = *&v18[16];
  v10 = v19;
  *a2 = v6;
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = v10;
  *(a2 + 17) = v9;
  return result;
}

uint64_t sub_264DF8570(int *a1)
{
  v3 = v1;
  v4 = type metadata accessor for NotificationsHeaderView.Model(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2CB8, &qword_264E28D70);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  sub_264DF87FC(v3, v6);
  sub_264DF876C(v6, v9);
  v10 = a1[6];
  v11 = *(v3 + a1[5]);
  v12 = v7[10];
  v13 = sub_264E238E8();
  (*(*(v13 - 8) + 16))(&v9[v12], v3 + v10, v13);
  v14 = *(v3 + a1[7]);
  *&v9[v7[9]] = v11;
  v15 = &v9[v7[11]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v9[v7[12]] = v14;
  v16 = &v9[v7[13]];
  *v16 = sub_264DF82C0;
  *(v16 + 1) = 0;
  sub_264D81DCC(&qword_27FFB2CC0, &qword_27FFB2CB8, &qword_264E28D70, &protocol conformance descriptor for ChartHeaderView<A>);

  sub_264E24C08();
  return sub_264D817BC(v9, &qword_27FFB2CB8, &qword_264E28D70);
}

uint64_t sub_264DF876C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20B8, &qword_264E270F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DF87FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsHeaderView.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DF88B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationsHeaderView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_264E238E8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264DF89DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NotificationsHeaderView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_264E238E8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DF8AE4(uint64_t a1)
{
  type metadata accessor for NotificationsHeaderView.Model(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for STActivityMode(319);
    if (v2 <= 0x3F)
    {
      sub_264E238E8();
      if (v3 <= 0x3F)
      {
        sub_264DDB468(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_264DF8BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20B8, &qword_264E270F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DF8C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20B8, &qword_264E270F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_264DF8CB4(uint64_t a1)
{
  sub_264DF8D20(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_264DF8D20(uint64_t a1)
{
  if (!qword_27FFB2CE8)
  {
    v2 = sub_264DF8D7C();
    v4 = type metadata accessor for ChartHeaderView.Model(a1, &type metadata for NotificationsHeaderView.AverageView, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27FFB2CE8);
    }
  }
}

unint64_t sub_264DF8D7C()
{
  result = qword_27FFB2CF0;
  if (!qword_27FFB2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2CF0);
  }

  return result;
}

unint64_t sub_264DF8DD4()
{
  result = qword_27FFB2CF8;
  if (!qword_27FFB2CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2D00, &qword_264E28E18);
    sub_264D81DCC(&qword_27FFB2CC0, &qword_27FFB2CB8, &qword_264E28D70, &protocol conformance descriptor for ChartHeaderView<A>);
    sub_264DA89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2CF8);
  }

  return result;
}

uint64_t sub_264DF8EFC()
{
  result = sub_264E24F98();
  qword_27FFB6C38 = result;
  return result;
}

uint64_t sub_264DF8F4C(uint64_t a1, unint64_t a2)
{
  v40[0] = 32;
  v40[1] = 0xE100000000000000;
  v39[2] = v40;

  v8 = sub_264DF9690(0x7FFFFFFFFFFFFFFFLL, 1, sub_264DF9A50, v39, a1, a2, v7);
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    if (v10 >= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = *(v8 + 16);
    }

    v40[0] = MEMORY[0x277D84F90];
    sub_264D8D2E4(0, v12, 0);
    v11 = v40[0];
    v13 = v9[4];
    v14 = v9[5];
    v15 = v9[6];

    v16 = sub_264E25328();
    if (v17)
    {
      v18 = v14;
    }

    else
    {
      v18 = v16;
    }

    v19 = v18 >> 14;
    if (v18 >> 14 < v13 >> 14)
    {
      goto LABEL_19;
    }

    v13 = sub_264E25338();
    v14 = v20;
    v15 = v21;
    v2 = v22;

    v40[0] = v11;
    v4 = *(v11 + 16);
    v19 = *(v11 + 24);
    v3 = v4 + 1;
    if (v4 >= v19 >> 1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      *(v11 + 16) = v3;
      v23 = (v11 + 32 * v4);
      v23[4] = v13;
      v23[5] = v14;
      v23[6] = v15;
      v23[7] = v2;
      if (v10 == 1)
      {
        break;
      }

      v13 = v9[8];
      v14 = v9[9];
      v15 = v9[10];

      v24 = sub_264E25328();
      if (v25)
      {
        v26 = v14;
      }

      else
      {
        v26 = v24;
      }

      v19 = v26 >> 14;
      if (v26 >> 14 >= v13 >> 14)
      {
        v27 = sub_264E25338();
        v29 = v28;
        v31 = v30;
        v33 = v32;

        v40[0] = v11;
        v35 = *(v11 + 16);
        v34 = *(v11 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_264D8D2E4((v34 > 1), v35 + 1, 1);
          v11 = v40[0];
        }

        *(v11 + 16) = v35 + 1;
        v36 = (v11 + 32 * v35);
        v36[4] = v27;
        v36[5] = v29;
        v36[6] = v31;
        v36[7] = v33;
        break;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      sub_264D8D2E4((v19 > 1), v3, 1);
      v11 = v40[0];
    }
  }

  v40[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2D30, &qword_264E28F68);
  sub_264D81DCC(&qword_27FFB2D38, &qword_27FFB2D30, &qword_264E28F68, MEMORY[0x277D83970]);
  sub_264DF9AA8();
  sub_264E251D8();

  v37 = sub_264E25148();

  return v37;
}

uint64_t sub_264DF9244@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v35 = sub_264E24C68();
  sub_264E24F58();
  sub_264E244B8();
  *&v37[3] = *&v37[27];
  *&v37[11] = *&v37[35];
  *&v37[19] = *&v37[43];
  v39 = sub_264DF8F4C(a1, a2);
  *v40 = v10;
  sub_264D89EB8();
  v11 = sub_264E24AF8();
  v13 = v12;
  v15 = v14;
  sub_264E24CA8();
  v16 = sub_264E24AB8();
  v18 = v17;
  v20 = v19;
  v34 = v21;

  sub_264D817AC(v11, v13, v15 & 1);

  v22 = sub_264E249F8();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  sub_264E24A38();
  sub_264D817BC(v9, &qword_27FFB17B8, &qword_264E279E0);
  v23 = sub_264E24AD8();
  v25 = v24;
  LOBYTE(a2) = v26;
  v28 = v27;

  sub_264D817AC(v16, v18, v20 & 1);

  v29 = v35;
  *v38 = v35;
  *&v38[8] = 256;
  *&v38[10] = *v37;
  *&v38[26] = *&v37[8];
  *&v38[42] = *&v37[16];
  *&v38[56] = *&v37[23];
  v36 = a2 & 1;
  v30 = *v38;
  v31 = *&v38[16];
  v32 = *&v38[48];
  *(a3 + 32) = *&v38[32];
  *(a3 + 48) = v32;
  *a3 = v30;
  *(a3 + 16) = v31;
  *(a3 + 64) = v23;
  *(a3 + 72) = v25;
  *(a3 + 80) = a2 & 1;
  *(a3 + 88) = v28;
  sub_264D81744(v38, &v39, &qword_27FFB2D28, &qword_264E28F60);
  sub_264D80F20(v23, v25, a2 & 1);

  sub_264D817AC(v23, v25, a2 & 1);

  v39 = v29;
  *v40 = 256;
  *&v40[2] = *v37;
  v41 = *&v37[8];
  *v42 = *&v37[16];
  *&v42[14] = *&v37[23];
  return sub_264D817BC(&v39, &qword_27FFB2D28, &qword_264E28F60);
}

double sub_264DF95B4@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = sub_264E24F58();
  v8 = v7;
  sub_264DF9244(v4, v5, &v14);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  v26[2] = v16;
  v26[3] = v17;
  v26[4] = v18;
  v26[5] = v19;
  v26[0] = v14;
  v26[1] = v15;
  sub_264D81744(&v20, &v13, &qword_27FFB2D20, &unk_264E28F50);
  sub_264D817BC(v26, &qword_27FFB2D20, &unk_264E28F50);
  *a2 = v6;
  *(a2 + 8) = v8;
  v9 = v23;
  *(a2 + 48) = v22;
  *(a2 + 64) = v9;
  v10 = v25;
  *(a2 + 80) = v24;
  *(a2 + 96) = v10;
  result = *&v20;
  v12 = v21;
  *(a2 + 16) = v20;
  *(a2 + 32) = v12;
  return result;
}

unint64_t sub_264DF9690@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_264E251C8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_264DBC3B4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_264DBC3B4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_264E251B8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_264E25178();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_264E25178();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_264E251C8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_264DBC3B4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_264E251C8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_264DBC3B4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_264DBC3B4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_264E25178();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264DF9A50(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_264E25478() & 1;
  }
}

unint64_t sub_264DF9AA8()
{
  result = qword_27FFB2D40;
  if (!qword_27FFB2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2D40);
  }

  return result;
}

uint64_t PickupsOverviewTabView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for PickupsOverviewTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  result = (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_264DF9BE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = v42 - v6;
  v7 = type metadata accessor for OverviewChart.Model(0);
  MEMORY[0x28223BE20](v7);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264E23C38();
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v51 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = v42 - v13;
  v14 = sub_264E23AA8();
  v54 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v49 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (v42 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2DE8, &qword_264E290B8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v42 - v20;
  v47 = a2;
  v22 = *a2;
  v23 = a1;
  v55 = a1;
  v24 = v53;
  sub_264D93E70(sub_264DF7AE4, v22, v42 - v20);
  v25 = type metadata accessor for PickupsOverviewChart.Model(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v45 = v26 + 48;
  v46 = v27;
  if (v27(v21, 1, v25) != 1)
  {
    return sub_264DFBA70(v21, v56, type metadata accessor for PickupsOverviewChart.Model);
  }

  v42[1] = v24;
  v43 = v9;
  v44 = v7;
  v53 = v10;
  v28 = *(v54 + 16);
  v28(v18, v23, v14);
  v29 = type metadata accessor for PickupsOverviewTabView.Model(0);
  v30 = *(v52 + 16);
  v31 = v50;
  v30(v50, v47 + *(v29 + 20), v53);
  v28((v56 + *(v25 + 20)), v18, v14);
  v32 = v18;
  v33 = v49;
  v47 = v32;
  (v28)(v49);
  v30(v51, v31, v53);
  v34 = v48;
  v42[0] = sub_264E24C78();
  Calendar.startOfWeek(containing:)(v33, v34);
  result = (*(v54 + 48))(v34, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = v54;
    v37 = *(v54 + 8);
    v37(v49, v14);
    v38 = v52;
    v39 = v53;
    (*(v52 + 8))(v50, v53);
    v37(v47, v14);
    v40 = v43;
    (*(v36 + 32))(v43, v34, v14);
    v41 = v44;
    *(v40 + v44[5]) = MEMORY[0x277D84F90];
    (*(v38 + 32))(v40 + v41[6], v51, v39);
    *(v40 + v41[7]) = v42[0];
    *(v40 + v41[8]) = 1;
    sub_264DFBA70(v40, v56, type metadata accessor for OverviewChart.Model);
    result = v46(v21, 1, v25);
    if (result != 1)
    {
      return sub_264D817BC(v21, &qword_27FFB2DE8, &qword_264E290B8);
    }
  }

  return result;
}

uint64_t PickupsOverviewTabView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2D58, &qword_264E28F80);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_264E24818();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2D60, &qword_264E28F88);
  sub_264DFA240(v0, &v3[*(v4 + 44)]);
  sub_264D81DCC(&qword_27FFB2D68, &qword_27FFB2D58, &qword_264E28F80, MEMORY[0x277CE1198]);
  sub_264E24C08();
  return sub_264DFA6E0(v3);
}

uint64_t sub_264DFA240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_264E24538();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_264E24558();
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FB8, &qword_264E26E20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2DA8, &qword_264E29040);
  v18 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v20 = &v27 - v19;
  type metadata accessor for PickupsOverviewTabView(0);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v14, &qword_27FFB1F70, &qword_264E28470);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC8, &qword_264E274D0);
  (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  v35 = a1;
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2DB0, &qword_264E29078);
  sub_264DFB958(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_264DFB614();
  sub_264E24F48();
  sub_264E24528();
  v22 = v30;
  v23 = v31;
  (*(v30 + 16))(v29, v7, v31);
  sub_264E24548();
  (*(v22 + 8))(v7, v23);
  sub_264D81DCC(&qword_27FFB2DC8, &qword_27FFB2DA8, &qword_264E29040, MEMORY[0x277CDF0C8]);
  v24 = v28;
  v25 = v32;
  sub_264E24B68();
  (*(v33 + 8))(v11, v25);
  return (*(v18 + 8))(v20, v24);
}

uint64_t sub_264DFA6E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2D58, &qword_264E28F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DFA764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = type metadata accessor for PickupsOverviewTabView(0);
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = v5;
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_264E23AA8();
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = sub_264E238E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActivityNavigationState(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x26674EFA0](v20);
  v21 = *(v17 + 28);
  v22 = v35;
  v23 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(v13 + 16))(v15, &v19[v21 + *(v23 + 20)], v12);
  sub_264DFBA10(v19, type metadata accessor for ActivityNavigationState);
  type metadata accessor for PickupsOverviewTabView.Model(0);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  v24 = Calendar.startOfEachWeek(fromWeekContaining:throughWeekExcluding:)(v11, v8);
  v25 = *(v6 + 8);
  v25(v8, v22);
  v26 = (v25)(v11, v22);
  if (v24)
  {
    MEMORY[0x28223BE20](v26);
    v33 = a1;
    sub_264E0AE28(sub_264DFB6C8, (&v34 - 4), v24);
    v28 = v27;

    (*(v13 + 8))(v15, v12);
    v40 = v28;
    v29 = v38;
    sub_264DFB9A0(a1, v38, type metadata accessor for PickupsOverviewTabView);
    v30 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v31 = swift_allocObject();
    sub_264DFBA70(v29, v31 + v30, type metadata accessor for PickupsOverviewTabView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2DD0, &qword_264E29080);
    type metadata accessor for PickupsOverviewChart(0);
    sub_264D81DCC(&qword_27FFB2DD8, &qword_27FFB2DD0, &qword_264E29080, MEMORY[0x277D83980]);
    sub_264DFB958(&qword_27FFB2DC0, type metadata accessor for PickupsOverviewChart, &protocol conformance descriptor for PickupsOverviewChart);
    v33 = sub_264DFB958(&qword_27FFB2DE0, type metadata accessor for PickupsOverviewChart.Model, &unk_264E2AA80);
    return sub_264E24EF8();
  }

  else
  {
    result = sub_264E253E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_264DFAC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for PickupsOverviewChart.Model(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DFB9A0(a1, v9, type metadata accessor for PickupsOverviewChart.Model);
  type metadata accessor for PickupsOverviewTabView(0);
  sub_264E24E78();
  swift_getKeyPath();
  v10 = type metadata accessor for PickupsOverviewChart(0);
  sub_264E24E68();

  sub_264D817BC(v6, &qword_27FFB1F70, &qword_264E28470);
  v11 = *(v10 + 24);
  sub_264DFB9A0(v9, a2, type metadata accessor for PickupsOverviewChart.Model);
  sub_264DFB9A0(v9, a2 + *(v10 + 28), type metadata accessor for OverviewChart.Model);
  result = sub_264DFBA10(v9, type metadata accessor for PickupsOverviewChart.Model);
  *(a2 + v11) = 0;
  return result;
}

uint64_t sub_264DFAE68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2D58, &qword_264E28F80);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_264E24818();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2D60, &qword_264E28F88);
  sub_264DFA240(v0, &v3[*(v4 + 44)]);
  sub_264D81DCC(&qword_27FFB2D68, &qword_27FFB2D58, &qword_264E28F80, MEMORY[0x277CE1198]);
  sub_264E24C08();
  return sub_264DFA6E0(v3);
}

uint64_t sub_264DFAF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickupsOverviewTabView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264DFB0AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PickupsOverviewTabView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264DFB1D4(uint64_t a1)
{
  type metadata accessor for PickupsOverviewTabView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264DFB4B4(319, &qword_27FFB1F88, type metadata accessor for ActivityNavigationState, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264DFB29C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264DFB35C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DFB400(uint64_t a1)
{
  sub_264DFB4B4(319, &qword_27FFB2D90, type metadata accessor for PickupsOverviewChart.Model, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_264E23C38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264DFB4B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_264DFB51C()
{
  result = qword_27FFB2D98;
  if (!qword_27FFB2D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2DA0, &unk_264E29030);
    sub_264D81DCC(&qword_27FFB2D68, &qword_27FFB2D58, &qword_264E28F80, MEMORY[0x277CE1198]);
    sub_264DFB958(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2D98);
  }

  return result;
}

unint64_t sub_264DFB614()
{
  result = qword_27FFB2DB8;
  if (!qword_27FFB2DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2DB0, &qword_264E29078);
    sub_264DFB958(&qword_27FFB2DC0, type metadata accessor for PickupsOverviewChart, &protocol conformance descriptor for PickupsOverviewChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2DB8);
  }

  return result;
}

uint64_t sub_264DFB6E8()
{
  v1 = (type metadata accessor for PickupsOverviewTabView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*v1 + 64);

  v4 = *(type metadata accessor for PickupsOverviewTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3 + v4, v5);
  v7 = v0 + v3 + v1[7];

  v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470) + 32);
  v9 = type metadata accessor for ActivityNavigationState(0);
  v10 = v8 + *(v9 + 20);
  v11 = sub_264E23AA8();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = *(type metadata accessor for ActivityNavigationState.DateAndBounds(0) + 20);
  v13 = sub_264E238E8();
  (*(*(v13 - 8) + 8))(v10 + v12, v13);
  v6(v8 + *(v9 + 24), v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v15, v2 | 7);
}

uint64_t sub_264DFB8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PickupsOverviewTabView(0);

  return sub_264DFAC98(a1, a2);
}

uint64_t sub_264DFB958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264DFB9A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DFBA10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264DFBA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DFBAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_264DFBB3C(a1);
  sub_264E24C08();
}

unint64_t sub_264DFBB3C(char a1)
{
  result = 0x567972616D6D7573;
  switch(a1)
  {
    case 1:
    case 43:
      result = 0xD000000000000019;
      break;
    case 2:
      return result;
    case 3:
    case 11:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6165486567617375;
      break;
    case 5:
    case 9:
    case 12:
    case 47:
    case 58:
      result = 0xD000000000000014;
      break;
    case 6:
    case 7:
    case 28:
    case 31:
    case 37:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x507370756B636970;
      break;
    case 10:
    case 23:
    case 25:
    case 42:
    case 69:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 16:
    case 24:
    case 48:
      result = 0xD00000000000001CLL;
      break;
    case 17:
    case 51:
    case 53:
      result = 0xD000000000000018;
      break;
    case 19:
    case 27:
    case 34:
    case 36:
    case 46:
      result = 0xD000000000000013;
      break;
    case 20:
    case 21:
      result = 0x655073746E756F63;
      break;
    case 22:
    case 32:
    case 38:
    case 40:
      result = 0xD000000000000015;
      break;
    case 26:
    case 30:
    case 61:
      result = 0xD000000000000010;
      break;
    case 29:
    case 33:
      result = 0x6465735574736F6DLL;
      break;
    case 35:
      result = 0xD000000000000017;
      break;
    case 39:
      result = 0xD00000000000001ELL;
      break;
    case 41:
      result = 0xD000000000000017;
      break;
    case 44:
      result = 0xD000000000000017;
      break;
    case 45:
    case 54:
      result = 0xD00000000000001BLL;
      break;
    case 49:
      result = 0xD000000000000017;
      break;
    case 50:
    case 52:
      result = 0xD00000000000001DLL;
      break;
    case 55:
      result = 0xD000000000000029;
      break;
    case 56:
      result = 0xD000000000000024;
      break;
    case 57:
      result = 0xD00000000000001FLL;
      break;
    case 60:
      result = 0x4C65676172657661;
      break;
    case 62:
      result = 0x5265676172657661;
      break;
    case 63:
    case 64:
    case 65:
    case 66:
      result = 0x62614C7369784179;
      break;
    case 68:
      result = 0xD000000000000017;
      break;
    case 70:
      result = 0x6562614C74736574;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

uint64_t CategoriesLegendView.init(model:dateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_264DFE834(a1, a3, type metadata accessor for CategoriesLegendView.Model);
  v5 = *(type metadata accessor for CategoriesLegendView(0) + 20);
  v6 = sub_264E238E8();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_264DFC320(double a1)
{
  v2 = v1;
  v4 = sub_264E238E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264E23AA8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  sub_264E23858();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 16))(v11, v14, v8);
  v15 = *v1;
  v16 = 0.0;
  if (*(*v2 + 16))
  {
    v17 = sub_264D9D5F4(v14);
    if (v18)
    {
      v16 = *(*(v15 + 56) + 8 * v17);
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v2;
  sub_264DCD340(v11, isUniquelyReferenced_nonNull_native, v16 + a1);
  v20 = *(v9 + 8);
  v20(v11, v8);
  result = (v20)(v14, v8);
  *v2 = v23;
  return result;
}

BOOL sub_264DFC554(uint64_t a1)
{
  v3 = type metadata accessor for CategoriesLegendView.Model(0);
  v4 = *(v1 + *(v3 + 36));
  if (v4 == 1)
  {
    v6 = *(v1 + 8);
    MEMORY[0x28223BE20](v3);
    v10[2] = a1;

    sub_264DFCBA4(sub_264DFF3CC, v10, v6);
    v8 = *(v7 + 16);

    return v8 != 0;
  }

  else if (v4 || !*(*(v1 + 8) + 16))
  {
    return 0;
  }

  else
  {
    sub_264D9D6C8(a1);
  }

  return v5;
}

double sub_264DFC630(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_264D9D57C(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_264D9E134(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_264D9D57C(a1, a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_264E25498();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_10:
    v21 = v11;
    sub_264DA0FDC();
    v11 = v21;
    *v5 = v10;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_6:
  *v5 = v10;
  if ((v4 & 1) == 0)
  {
LABEL_7:
    v18 = v11;
    sub_264DA0B08(v11, a1, a2, v10, 0.0);

    v11 = v18;
  }

LABEL_8:
  v19 = v10[7];
  result = *(v19 + 8 * v11) + a3;
  *(v19 + 8 * v11) = result;
  return result;
}

uint64_t sub_264DFC764(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v4 = sub_264D8C20C(*(a1 + 16), 0);
    v5 = sub_264D8E104(&v30, v4 + 4, v1, a1);
    v6 = v30;

    sub_264D8F07C(v6);
    if (v5 == v1)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = v2;
LABEL_5:
  v30 = v4;
  sub_264D8C4F4(&v30);
  v7 = v30;
  v8 = v30[2];
  if (v8)
  {
    if (v8 >= 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = v30[2];
    }

    v30 = v2;
    sub_264D8D348(0, v9, 0);
    v10 = v30;
    v12 = v7[4];
    v11 = v7[5];
    v13 = v7[6];
    v14 = v30[2];
    v15 = v30[3];

    if (v14 >= v15 >> 1)
    {
      sub_264D8D348((v15 > 1), v14 + 1, 1);
      v10 = v30;
    }

    *(v10 + 16) = v14 + 1;
    v16 = (v10 + 24 * v14);
    v16[4] = v12;
    v16[5] = v11;
    v16[6] = v13;
    if (v8 != 1)
    {
      v18 = v7[7];
      v17 = v7[8];
      v19 = v7[9];
      v30 = v10;
      v20 = *(v10 + 16);
      v21 = *(v10 + 24);

      if (v20 >= v21 >> 1)
      {
        sub_264D8D348((v21 > 1), v20 + 1, 1);
        v10 = v30;
      }

      *(v10 + 16) = v20 + 1;
      v22 = (v10 + 24 * v20);
      v22[4] = v18;
      v22[5] = v17;
      v22[6] = v19;
      if (v8 != 2)
      {
        v24 = v7[10];
        v23 = v7[11];
        v25 = v7[12];
        v30 = v10;
        v26 = *(v10 + 16);
        v27 = *(v10 + 24);

        if (v26 >= v27 >> 1)
        {
          sub_264D8D348((v27 > 1), v26 + 1, 1);
          v10 = v30;
        }

        *(v10 + 16) = v26 + 1;
        v28 = (v10 + 24 * v26);
        v28[4] = v24;
        v28[5] = v23;
        v28[6] = v25;
      }
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

uint64_t sub_264DFC9B4()
{
  v0 = sub_264E23AA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264DFF3EC(&qword_27FFB1BF0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v7 = sub_264E25048();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    sub_264E23888();
    sub_264E23888();
    v10 = sub_264E25048();
    v8(v3, v0);
    v8(v6, v0);
    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

void sub_264DFCBA4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a1;
  v46 = a2;
  v6 = sub_264E238E8();
  MEMORY[0x28223BE20](v6);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v49 = a3;
  v50 = &v39 - v13;
  v14 = 0;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v47 = v11;
  v48 = v11 + 32;
  v42 = (v11 + 8);
  v43 = v11 + 16;
  v40 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

    v23 = v4;
LABEL_10:
    v24 = *(v49 + 48);
    v25 = v47;
    v41 = *(v47 + 72);
    v26 = v44;
    (*(v47 + 16))(v44, v24 + v41 * (__clz(__rbit64(v20)) | (v14 << 6)), v6, v12);
    v27 = *(v25 + 32);
    v28 = v6;
    v29 = v50;
    v30 = v28;
    v27(v50, v26);
    v31 = v45(v29);
    v4 = v23;
    if (v23)
    {
      (*v42)(v50, v30);

      return;
    }

    v20 &= v20 - 1;
    if (v31)
    {
      v6 = v30;
      (v27)(v39, v50, v30);
      v32 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_264D8D190(0, *(v32 + 16) + 1, 1);
        v6 = v30;
        v32 = v51;
      }

      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v38 = v35 + 1;
        v40 = v35;
        sub_264D8D190((v34 > 1), v35 + 1, 1);
        v36 = v38;
        v35 = v40;
        v6 = v30;
        v32 = v51;
      }

      *(v32 + 16) = v36;
      v37 = *(v47 + 80);
      v40 = v32;
      (v27)(v32 + ((v37 + 32) & ~v37) + v35 * v41, v39, v6);
    }

    else
    {
      v6 = v30;
      (*v42)(v50, v30);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      v23 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_264DFCF14(uint64_t a1, char *a2)
{
  v29 = a2;
  v2 = sub_264E23C18();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_264E23AA8();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v25 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = sub_264E238E8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for CategoriesLegendView.Model(0) + 32);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9940], v2);
  v26 = v18;
  sub_264E23B08();
  (*(v3 + 8))(v5, v2);
  result = (*(v15 + 48))(v8, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = v28;
    v21 = *(v27 + 8);
    v21(v13, v28);
    (*(v15 + 32))(v17, v8, v14);
    v22 = v30;
    v23 = *v30;
    v24 = v25;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    sub_264DD26C0(v23, v24, v22 + v26, v29);
    v21(v24, v20);
    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_264DFD278(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v85 - v5;
  v7 = sub_264E23AD8();
  MEMORY[0x28223BE20](v7 - 8);
  v85[1] = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E250D8();
  MEMORY[0x28223BE20](v9 - 8);
  v85[0] = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E88, &qword_264E29278);
  MEMORY[0x28223BE20](v96);
  v95 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v94 = v85 - v13;
  MEMORY[0x28223BE20](v14);
  v93 = v85 - v15;
  v16 = *(v1 + 24);
  v88 = v1;
  v89 = v16;
  v86 = v6;
  if (v16)
  {
    v17 = v16;
    v18 = v16;
  }

  else
  {
    v19 = sub_264DFC554(a1);
    v20 = 16;
    if (v19)
    {
      v20 = 8;
    }

    v18 = *(v1 + v20);

    v17 = 0;
  }

  MEMORY[0x28223BE20](v17);
  v87 = a1;
  v85[-2] = a1;

  v21 = 0;
  v22 = sub_264DA22C4(sub_264DFF330, &v85[-4], v18);

  v23 = v22[2];
  if (v23)
  {
    v100 = MEMORY[0x277D84F90];
    sub_264D8D388(0, v23, 0);
    v24 = v100;
    v25 = (v22 + 8);
    v26 = sub_264E25368();
    v27 = 0;
    v90 = (v22 + 9);
    v91 = v23;
    v92 = (v22 + 8);
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v22 + 32))
    {
      v21 = v26 >> 6;
      if ((*&v25[8 * (v26 >> 6)] & (1 << v26)) == 0)
      {
        goto LABEL_62;
      }

      v30 = *(v22 + 9);
      v97 = v27;
      v98 = v30;
      v31 = v22[6];
      v32 = sub_264E238E8();
      v33 = *(v32 - 8);
      v34 = v93;
      (*(v33 + 16))(v93, v31 + *(v33 + 72) * v26, v32);
      v35 = *(v22[7] + 8 * v26);
      v36 = v94;
      (*(v33 + 32))(v94, v34, v32);
      v37 = v96;
      *&v36[*(v96 + 48)] = v35;
      v38 = v36;
      v23 = v95;
      sub_264DFF350(v38, v95);
      v99 = *(v23 + *(v37 + 48));
      v39 = v24;
      v40 = *(v33 + 8);

      v40(v23, v32);
      v24 = v39;
      v100 = v39;
      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_264D8D388((v41 > 1), v42 + 1, 1);
        v24 = v100;
      }

      *(v24 + 16) = v42 + 1;
      *(v24 + 8 * v42 + 32) = v99;
      v28 = 1 << *(v22 + 32);
      if (v26 >= v28)
      {
        goto LABEL_63;
      }

      v25 = v92;
      v43 = *&v92[8 * v21];
      if ((v43 & (1 << v26)) == 0)
      {
        goto LABEL_64;
      }

      if (v98 != *(v22 + 9))
      {
        goto LABEL_65;
      }

      v44 = v43 & (-2 << (v26 & 0x3F));
      if (v44)
      {
        v28 = __clz(__rbit64(v44)) | v26 & 0x7FFFFFFFFFFFFFC0;
        v23 = v91;
        v29 = v97;
      }

      else
      {
        v45 = v21 << 6;
        v46 = v21 + 1;
        v23 = v91;
        v47 = &v90[8 * v21];
        v29 = v97;
        while (v46 < (v28 + 63) >> 6)
        {
          v48 = *v47++;
          v21 = v48;
          v45 += 64;
          ++v46;
          if (v48)
          {
            sub_264DFF3C0(v26, v98, 0);
            v28 = __clz(__rbit64(v21)) + v45;
            goto LABEL_9;
          }
        }

        sub_264DFF3C0(v26, v98, 0);
      }

LABEL_9:
      v27 = v29 + 1;
      v26 = v28;
      if (v27 == v23)
      {

        goto LABEL_26;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_26:
  v49 = sub_264DEB098(MEMORY[0x277D84F90]);
  v21 = v49;
  v96 = *(v24 + 16);
  if (v96)
  {
    v50 = 0;
    v94 = v24;
    v95 = v24 + 32;
    while (v50 < *(v24 + 16))
    {
      v23 = *(v95 + 8 * v50);
      v99 = v50 + 1;
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = v21;
      v52 = -1 << *(v23 + 32);
      if (-v52 < 64)
      {
        v53 = ~(-1 << -v52);
      }

      else
      {
        v53 = -1;
      }

      v54 = v21;
      v21 = v53 & *(v23 + 64);
      v97 = -1 << *(v23 + 32);
      v55 = (63 - v52) >> 6;

      v56 = 0;
      v98 = v54;
      while (v21)
      {
        v24 = v56;
LABEL_42:
        v60 = __clz(__rbit64(v21)) | (v24 << 6);
        v61 = (*(v23 + 48) + 16 * v60);
        v63 = *v61;
        v62 = v61[1];
        v2 = *(*(v23 + 56) + 8 * v60);

        v64 = sub_264D9D57C(v63, v62);
        v66 = v54[2];
        v67 = (v65 & 1) == 0;
        v68 = __OFADD__(v66, v67);
        v69 = v66 + v67;
        if (v68)
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v70 = v65;
        if (v54[3] >= v69)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v75 = v64;
            sub_264DA0FDC();
            v64 = v75;
          }
        }

        else
        {
          sub_264D9E134(v69, isUniquelyReferenced_nonNull_native & 1);
          v64 = sub_264D9D57C(v63, v62);
          if ((v70 & 1) != (v71 & 1))
          {
            result = sub_264E25498();
            __break(1u);
            return result;
          }
        }

        v21 &= v21 - 1;
        v54 = v100;
        if (v70)
        {
          v57 = *(v100[7] + 8 * v64);
          v58 = v64;

          *(v54[7] + 8 * v58) = v2 + v57;
        }

        else
        {
          v100[(v64 >> 6) + 8] |= 1 << v64;
          v72 = (v54[6] + 16 * v64);
          *v72 = v63;
          v72[1] = v62;
          *(v54[7] + 8 * v64) = v2;
          v73 = v54[2];
          v68 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v68)
          {
            goto LABEL_60;
          }

          v54[2] = v74;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v56 = v24;
      }

      v59 = v56;
      while (1)
      {
        v24 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          __break(1u);
          goto LABEL_59;
        }

        if (v24 >= v55)
        {
          break;
        }

        v21 = *(v23 + 64 + 8 * v24);
        ++v59;
        if (v21)
        {
          goto LABEL_42;
        }
      }

      sub_264D8F07C(v23);

      swift_bridgeObjectRelease_n();
      v21 = v54;
      v50 = v99;
      v24 = v94;
      if (v99 == v96)
      {
        goto LABEL_52;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    v24 = sub_264DBC4C0(0, *(v24 + 16) + 1, 1, v24);
    goto LABEL_54;
  }

  v54 = v49;
LABEL_52:

  v24 = sub_264DFC764(v54);

  if (!v89)
  {
    return v24;
  }

  sub_264E25078();
  v76 = [objc_opt_self() bundle];
  sub_264E23AC8();
  v21 = sub_264E25138();
  v23 = v77;
  v78 = sub_264E23AA8();
  v79 = v86;
  (*(*(v78 - 8) + 56))(v86, 1, 1, v78);
  sub_264DFCF14(v87, v79);
  v2 = v80;
  sub_264D817BC(v79, &qword_27FFB1860, &qword_264E267E0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_54:
  v82 = *(v24 + 16);
  v81 = *(v24 + 24);
  if (v82 >= v81 >> 1)
  {
    v24 = sub_264DBC4C0((v81 > 1), v82 + 1, 1, v24);
  }

  *(v24 + 16) = v82 + 1;
  v83 = v24 + 24 * v82;
  *(v83 + 32) = v21;
  *(v83 + 40) = v23;
  *(v83 + 48) = v2;
  return v24;
}

uint64_t sub_264DFDBBC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E88, &qword_264E29278);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  v12 = *a2;
  v13 = sub_264E238E8();
  (*(*(v13 - 8) + 16))(v11, a1, v13);
  *&v11[*(v9 + 56)] = v12;

  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  LOBYTE(a1) = sub_264E238C8();
  v14 = *(v5 + 8);
  v14(v7, v4);
  if (a1)
  {
    sub_264E23888();
    v15 = sub_264E238C8();
    v14(v7, v4);
  }

  else
  {
    v15 = 0;
  }

  sub_264D817BC(v11, &qword_27FFB2E88, &qword_264E29278);
  return v15 & 1;
}

uint64_t CategoriesLegendView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CategoriesLegendView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264DFE04C();
  sub_264DFE4E0(v7);
  v9 = v8;

  *a1 = sub_264E24778();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2DF0, &qword_264E290C0);
  v17[1] = v9;
  swift_getKeyPath();
  sub_264DFE684(v1, v6);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_264DFE834(v6, v11 + v10, type metadata accessor for CategoriesLegendView);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_264DFE89C;
  *(v12 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2DF8, &qword_264E290E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E00, &qword_264E290F0);
  sub_264D81DCC(&qword_27FFB2E08, &qword_27FFB2DF8, &qword_264E290E8, MEMORY[0x277D83980]);
  sub_264D81DCC(&qword_27FFB2E10, &qword_27FFB2E00, &qword_264E290F0, MEMORY[0x277CE14C0]);
  sub_264E24EE8();
  v13 = sub_264E249E8();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E18, &qword_264E29128);
  v16 = (a1 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v13;
  return result;
}

uint64_t sub_264DFE04C()
{
  v1 = type metadata accessor for CategoriesLegendView(0);
  v2 = sub_264DFD278(v0 + *(v1 + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_264D8D3A8(0, v3, 0);
    v4 = v13;
    v5 = (v2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v13 + 16);
      v10 = *(v13 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_264D8D3A8((v10 > 1), v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      v11 = (v13 + 24 * v9);
      v11[4] = v7;
      v11[5] = v6;
      v11[6] = v8;
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_264DFE168@<X0>(unint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>, double a6@<D0>)
{
  v10 = sub_264E24828();
  sub_264DFE298(a3, a1, &v26, a6);
  v11 = v26;
  v12 = v27;
  v13 = v28;
  v14 = v29;
  v15 = *v30;
  *&v21 = v10;
  *(&v21 + 1) = 0x4014000000000000;
  LOBYTE(v22) = 0;
  *(&v22 + 1) = v26;
  *&v23 = v27;
  BYTE8(v23) = v28;
  v24 = v29;
  v25 = *v30;
  v16 = v22;
  *a5 = v21;
  *(a5 + 16) = v16;
  v17 = v24;
  v18 = v25;
  *(a5 + 32) = v23;
  *(a5 + 48) = v17;
  v20[80] = 1;
  *(a5 + 64) = v18;
  *(a5 + 80) = 0;
  *(a5 + 88) = 1;
  v26 = v10;
  v27 = 0x4014000000000000;
  v28 = 0;
  *&v29 = v11;
  *(&v29 + 1) = v12;
  v30[0] = v13;
  *&v30[8] = v14;
  v31 = v15;
  sub_264DFF2B8(&v21, v20);
  return sub_264D817BC(&v26, &qword_27FFB2E78, &qword_264E29230);
}

uint64_t sub_264DFE298@<X0>(uint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_264D89EB8();

  v11 = sub_264E24AF8();
  v13 = v12;
  v15 = v14;
  v16 = sub_264E17574(4, 1);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16[2] <= a3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  a2 = sub_264E24AB8();
  v10 = v17;
  v5 = v18;
  a3 = v19;
  sub_264D817AC(v11, v13, v15 & 1);

  if (qword_27FFB16A8 != -1)
  {
LABEL_7:
    swift_once();
  }

  v20 = qword_27FFB6C50;
  KeyPath = swift_getKeyPath();
  *a4 = a2;
  *(a4 + 8) = v10;
  *(a4 + 16) = v5 & 1;
  *(a4 + 24) = a3;
  *(a4 + 32) = a5;
  *(a4 + 40) = KeyPath;
  *(a4 + 48) = v20;

  sub_264D80F20(a2, v10, v5 & 1);

  sub_264D817AC(a2, v10, v5 & 1);
}

uint64_t sub_264DFE44C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264E246F8();
  *a1 = result;
  return result;
}

void sub_264DFE4E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (a1 + 48);
    while (1)
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      if (v4)
      {

        v10 = __OFSUB__(v4--, 1);
        if (v10)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v11 = v2[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E80, &unk_264E29268);
        v14 = swift_allocObject();
        v15 = _swift_stdlib_malloc_size(v14);
        v16 = v15 - 32;
        if (v15 < 32)
        {
          v16 = v15 - 1;
        }

        v17 = v16 >> 5;
        v14[2] = v13;
        v14[3] = 2 * (v16 >> 5);
        v18 = v14 + 4;
        v19 = v2[3] >> 1;
        v5 = &v14[4 * v19 + 4];
        v20 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        if (v2[2])
        {
          if (v14 != v2 || v18 >= &v2[4 * v19 + 4])
          {
            memmove(v18, v2 + 4, 32 * v19);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v14;
        v10 = __OFSUB__(v20, 1);
        v4 = v20 - 1;
        if (v10)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }
      }

      *v5 = v3;
      v5[1] = v8;
      v5[2] = v7;
      v5[3] = v9;
      v5 += 4;
      v6 += 3;
      if (v1 == ++v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v22 = v2[3];
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v10 = __OFSUB__(v23, v4);
    v24 = v23 - v4;
    if (v10)
    {
      goto LABEL_32;
    }

    v2[2] = v24;
  }
}

uint64_t sub_264DFE684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoriesLegendView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DFE6E8()
{
  v1 = (type metadata accessor for CategoriesLegendView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(type metadata accessor for CategoriesLegendView.Model(0) + 32);
  v6 = sub_264E23C38();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[7];
  v8 = sub_264E238E8();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264DFE834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DFE89C@<X0>(unint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  type metadata accessor for CategoriesLegendView(0);

  return sub_264DFE168(a1, a3, a4, a5);
}

uint64_t sub_264DFE944()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264DFE9B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264E246F8();
  *a1 = result;
  return result;
}

uint64_t sub_264DFEA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CategoriesLegendView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_264E238E8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264DFEB40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CategoriesLegendView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_264E238E8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_264DFEC3C(uint64_t a1)
{
  result = type metadata accessor for CategoriesLegendView.Model(319);
  if (v2 <= 0x3F)
  {
    result = sub_264E238E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_264DFECD4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_264DFED94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DFEE38(uint64_t a1)
{
  sub_264DDB800(319);
  if (v1 <= 0x3F)
  {
    sub_264DFEF04(319);
    if (v2 <= 0x3F)
    {
      sub_264DFEFA0(319);
      if (v3 <= 0x3F)
      {
        sub_264E23C38();
        if (v4 <= 0x3F)
        {
          type metadata accessor for STActivityMode(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_264DFEF04(uint64_t a1)
{
  if (!qword_27FFB2E40)
  {
    sub_264E238E8();
    sub_264DFF3EC(&qword_27FFB1ED8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
    v1 = sub_264E25028();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB2E40);
    }
  }
}

void sub_264DFEFA0(uint64_t a1)
{
  if (!qword_27FFB2E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2E50, &qword_264E291D0);
    v1 = sub_264E25318();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB2E48);
    }
  }
}

unint64_t sub_264DFF008()
{
  result = qword_27FFB2E58;
  if (!qword_27FFB2E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2E18, &qword_264E29128);
    sub_264D81DCC(&qword_27FFB2E60, &qword_27FFB2E68, &unk_264E291D8, MEMORY[0x277CE1138]);
    sub_264D81DCC(&qword_27FFB17F0, &qword_27FFB17F8, &qword_264E28590, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2E58);
  }

  return result;
}

void sub_264DFF110(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = 0;
    v7 = 0;
    v8 = (MEMORY[0x277D84F90] + 32);
    v9 = (a1 + 48);
    while (1)
    {
      v10 = *(v9 - 2);
      v12 = *(v9 - 1);
      v11 = *v9;
      if (v7)
      {

        v13 = __OFSUB__(v7--, 1);
        if (v13)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v14 = v4[3];
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v17 = swift_allocObject();
        v18 = _swift_stdlib_malloc_size(v17);
        v19 = v18 - 32;
        if (v18 < 32)
        {
          v19 = v18 - 1;
        }

        v20 = v19 >> 5;
        v17[2] = v16;
        v17[3] = 2 * (v19 >> 5);
        v21 = v17 + 4;
        v22 = v4[3] >> 1;
        v8 = &v17[4 * v22 + 4];
        v23 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v22;
        if (v4[2])
        {
          if (v17 != v4 || v21 >= &v4[4 * v22 + 4])
          {
            memmove(v21, v4 + 4, 32 * v22);
          }

          v4[2] = 0;
        }

        else
        {
        }

        v4 = v17;
        v13 = __OFSUB__(v23, 1);
        v7 = v23 - 1;
        if (v13)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }
      }

      *v8 = v6;
      v8[1] = v10;
      v8[2] = v12;
      v8[3] = v11;
      v8 += 4;
      v9 += 3;
      if (v3 == ++v6)
      {
        goto LABEL_26;
      }
    }
  }

  v7 = 0;
LABEL_26:
  v25 = v4[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v13 = __OFSUB__(v26, v7);
    v27 = v26 - v7;
    if (v13)
    {
      goto LABEL_32;
    }

    v4[2] = v27;
  }
}

uint64_t sub_264DFF2B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E78, &qword_264E29230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DFF350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E88, &qword_264E29278);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DFF3C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_264DFF3EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_264DFF458(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264DFF4A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264DFF524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264DFF56C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_264DFF5DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264DFF624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264DFF6A4(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_264DFF6F0()
{
  v1 = *v0;
  sub_264E254A8();
  MEMORY[0x26674F610](v1);
  return sub_264E254C8();
}

uint64_t sub_264DFF764(uint64_t a1)
{
  v2 = *v1;
  sub_264E254A8();
  MEMORY[0x26674F610](v2);
  return sub_264E254C8();
}

void *sub_264DFF7A8@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FF8, &qword_264E295E0);
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3000, &qword_264E295E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3008, &qword_264E295F0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v47 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = *(v1 + 16);
  v53 = *v1;
  v50 = *v1;

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3010, &qword_264E295F8);
  result = sub_264E24D88();
  if ((v49 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v41 = v12;
    v42 = v11;
    v43 = v3;
    v44 = v7;
    v45 = a1;
    v19 = *(v17 + 16);
    if (v19 >= v49)
    {
      v19 = v49;
    }

    v20 = 2 * v19;
    v21 = 1;
    *&v50 = v17;
    *(&v50 + 1) = v17 + 32;
    if (v49)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = 1;
    }

    v51 = 0;
    v52 = v22;
    v23 = swift_allocObject();
    v24 = *(v1 + 16);
    *(v23 + 16) = *v1;
    *(v23 + 32) = v24;
    *(v23 + 48) = *(v1 + 32);

    sub_264D81744(&v53, &v49, &qword_27FFB3010, &qword_264E295F8);
    v25 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3018, &qword_264E29600);
    sub_264D81DCC(&qword_27FFB3020, &qword_27FFB3018, &qword_264E29600, MEMORY[0x277D83FB8]);
    sub_264E02610();
    sub_264E02664();
    v26 = v16;
    sub_264E24EF8();
    v50 = v53;
    sub_264E24D88();
    if (v49 < *(v17 + 16))
    {
      v27 = sub_264E24778();
      v28 = v40;
      *v40 = v27;
      *(v28 + 8) = 0;
      *(v28 + 16) = 1;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3040, &unk_264E29610);
      sub_264DFFDA8(v1, v28 + *(v29 + 44));
      sub_264D90E64(v28, v10, &qword_27FFB2FF8, &qword_264E295E0);
      v21 = 0;
    }

    (*(v48 + 56))(v10, v21, 1, v43);
    v30 = v41;
    v31 = *(v41 + 16);
    v32 = v47;
    v33 = v25;
    v34 = v42;
    v31(v47, v26, v42);
    v35 = v44;
    sub_264D81744(v33, v44, &qword_27FFB3000, &qword_264E295E8);
    v36 = v45;
    v31(v45, v32, v34);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3038, &qword_264E29608);
    sub_264D81744(v35, &v36[*(v37 + 48)], &qword_27FFB3000, &qword_264E295E8);
    sub_264D817BC(v33, &qword_27FFB3000, &qword_264E295E8);
    v38 = *(v30 + 8);
    v38(v26, v34);
    sub_264D817BC(v35, &qword_27FFB3000, &qword_264E295E8);
    return (v38)(v32, v34);
  }

  return result;
}

__n128 sub_264DFFC98@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v12 = *a1;
  v13 = v4;
  *v14 = a1[2];
  *&v14[15] = *(a1 + 47);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  sub_264E02700(&v12, &v15);
  type metadata accessor for CGSize(0);
  sub_264E24D78();
  v7 = v15;
  v8 = v16;
  sub_264E24D78();
  v9 = v16;
  result = v15;
  v11 = v13;
  *v17 = *v14;
  *&v17[15] = *&v14[15];
  *a3 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = *v17;
  *(a3 + 48) = *&v17[16];
  *(a3 + 56) = v5;
  *(a3 + 64) = 0;
  *(a3 + 65) = v6;
  *(a3 + 70) = 0;
  *(a3 + 66) = 0;
  *(a3 + 72) = 0x4010000000000000;
  *(a3 + 80) = v7;
  *(a3 + 96) = v8;
  *(a3 + 104) = result;
  *(a3 + 120) = v9;
  return result;
}

double sub_264DFFDA8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1768, &unk_264E298C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3048, &unk_264E29620);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v14 = sub_264E24D08();
  sub_264E24F58();
  sub_264E244B8();
  v15 = v27;
  v25 = v28;
  v24 = v29;
  v23 = v30;
  v21 = v32;
  v22 = v31;
  v34 = *a1;
  v33 = *(a1 + 2);
  v16 = swift_allocObject();
  v17 = a1[1];
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a1 + 32);
  sub_264D81744(&v34, v26, &qword_27FFB3010, &qword_264E295F8);
  sub_264D81744(&v33, v26, &qword_27FFB3050, &qword_264E2A750);
  sub_264E24DD8();
  sub_264D81DCC(&qword_27FFB1798, &qword_27FFB1768, &unk_264E298C0, MEMORY[0x277CDF028]);
  sub_264E24C08();
  (*(v5 + 8))(v7, v4);
  sub_264D81744(v13, v10, &qword_27FFB3048, &unk_264E29620);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v25;
  *(a2 + 24) = v24;
  *(a2 + 32) = v23;
  v18 = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3058, &qword_264E29630);
  sub_264D81744(v10, a2 + *(v19 + 48), &qword_27FFB3048, &unk_264E29620);

  sub_264D817BC(v13, &qword_27FFB3048, &unk_264E29620);
  sub_264D817BC(v10, &qword_27FFB3048, &unk_264E29620);

  return result;
}

void *sub_264E0011C(__int128 *a1)
{
  v4 = *a1;
  v2[1] = *a1;
  v5 = *(&v4 + 1);
  sub_264D81744(&v5, v2, &qword_27FFB3060, &qword_264E29638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3010, &qword_264E295F8);
  result = sub_264E24D88();
  if (__OFADD__(v3, 8))
  {
    __break(1u);
  }

  else
  {
    v2[0] = v4;
    sub_264E24D98();
    return sub_264D817BC(&v4, &qword_27FFB3010, &qword_264E295F8);
  }

  return result;
}

uint64_t sub_264E001DC@<X0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  result = sub_264E24AE8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_264E002F8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264E23C38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = *(v2 + 40);
  if (!*(v2 + 65))
  {
    v20 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v20 setAllowedUnits_];
    [v20 setUnitsStyle_];
    [v20 setZeroFormattingBehavior_];
    if (v14 <= 3600.0)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    v32 = v21;
    [v20 setMaximumUnitCount_];
    v22 = [v20 stringFromTimeInterval_];
    if (v22)
    {
      v23 = v22;
      v33 = sub_264E25108();
      v17 = v24;
    }

    else
    {

      v33 = 0;
      v17 = 0xE000000000000000;
    }

    (*(v5 + 56))(v13, 1, 1, v4);
    v25 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v25 setAllowedUnits_];
    [v25 setUnitsStyle_];
    [v25 setZeroFormattingBehavior_];
    [v25 setMaximumUnitCount_];
    sub_264D81744(v13, v10, &qword_27FFB1C50, &unk_264E267D0);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      sub_264D817BC(v10, &qword_27FFB1C50, &unk_264E267D0);
    }

    else
    {
      (*(v5 + 32))(v7, v10, v4);
      v26 = sub_264E23BA8();
      [v25 setCalendar_];

      (*(v5 + 8))(v7, v4);
    }

    v27 = [v25 stringFromTimeInterval_];
    if (v27)
    {
      v28 = v27;
      v18 = sub_264E25108();
      v19 = v29;
    }

    else
    {

      v18 = 0;
      v19 = 0;
    }

    sub_264D817BC(v13, &qword_27FFB1C50, &unk_264E267D0);
    v15 = v33;
    goto LABEL_19;
  }

  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v14 < 9.22337204e18)
  {
    v34 = v14;
    sub_264D908C4();
    v15 = sub_264E25348();
    v17 = v16;
    v18 = 0;
    v19 = 0;
LABEL_19:
    *a1 = sub_264E24778();
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EA8, &qword_264E29450);
    sub_264E0077C(v2, v15, v17, v18, v19, (a1 + *(v30 + 44)));

    return;
  }

LABEL_22:
  __break(1u);
}

double sub_264E0077C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v41 = a4;
  v42 = a5;
  v39 = a2;
  v40 = a3;
  v46 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EB0, &qword_264E29458);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EB8, &qword_264E29460);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EC0, &qword_264E29468);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = *(a1 + 24);
  v43 = *(a1 + 16);
  v22 = *(a1 + 49);
  v23 = *(a1 + 32);

  v45 = v21;

  *v20 = sub_264E24828();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EC8, &qword_264E29470);
  sub_264E00BFC(a1, v39, v40, v41, v42, &v20[*(v24 + 44)]);
  if (v22)
  {
    v42 = sub_264E24D18();
    v25 = sub_264E248C8();
    v26 = &v9[*(v7 + 36)];
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EE0, &qword_264E29488) + 28);
    v28 = *MEMORY[0x277CE1050];
    v29 = sub_264E24D38();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    *v9 = v42;
    *(v9 + 2) = v25;
    sub_264E01F5C();
    sub_264E24C08();
    sub_264D817BC(v9, &qword_27FFB2EB0, &qword_264E29458);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2ED0, &qword_264E29478);
  (*(*(v31 - 8) + 56))(v14, v30, 1, v31);
  sub_264D81744(v20, v17, &qword_27FFB2EC0, &qword_264E29468);
  v32 = v44;
  sub_264D81744(v14, v44, &qword_27FFB2EB8, &qword_264E29460);
  v33 = v14;
  v35 = v45;
  v34 = v46;
  v36 = v43;
  *v46 = v23;
  v34[1] = v36;
  v34[2] = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2ED8, &qword_264E29480);
  sub_264D81744(v17, v34 + *(v37 + 48), &qword_27FFB2EC0, &qword_264E29468);
  sub_264D81744(v32, v34 + *(v37 + 64), &qword_27FFB2EB8, &qword_264E29460);

  sub_264D817BC(v33, &qword_27FFB2EB8, &qword_264E29460);
  sub_264D817BC(v20, &qword_27FFB2EC0, &qword_264E29468);
  sub_264D817BC(v32, &qword_27FFB2EB8, &qword_264E29460);
  sub_264D817BC(v17, &qword_27FFB2EC0, &qword_264E29468);

  return result;
}

uint64_t sub_264E00BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v49 = a4;
  v48 = a3;
  v47 = a2;
  v53 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F18, &qword_264E294D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F20, &qword_264E294D8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F28, &qword_264E294E0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v52 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v20);
  v51 = &v46 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F30, &qword_264E294E8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - v26;
  *v27 = sub_264E24778();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F38, &qword_264E294F0);
  sub_264E010AC(a1, &v27[*(v28 + 44)]);
  v29 = *(a1 + 72);
  *v9 = sub_264E24778();
  *(v9 + 1) = v29;
  v9[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F40, &qword_264E294F8);
  sub_264E01458(a1, v47, v48, v49, v50, &v9[*(v30 + 44)]);
  sub_264E24F68();
  sub_264E24588();
  sub_264D90E64(v9, v13, &qword_27FFB2F18, &qword_264E294D0);
  v31 = &v13[*(v11 + 44)];
  v32 = v65;
  *(v31 + 4) = v64;
  *(v31 + 5) = v32;
  *(v31 + 6) = v66;
  v33 = v61;
  *v31 = v60;
  *(v31 + 1) = v33;
  v34 = v63;
  *(v31 + 2) = v62;
  *(v31 + 3) = v34;
  v58 = *(a1 + 80);
  v59 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F48, &qword_264E29500);
  sub_264E24DA8();
  v35 = v54;
  v36 = v55;
  v37 = v56;
  v38 = v57;
  sub_264D90E64(v13, v19, &qword_27FFB2F20, &qword_264E294D8);
  v39 = &v19[*(v15 + 44)];
  *v39 = v35;
  *(v39 + 1) = v36;
  *(v39 + 2) = v37;
  *(v39 + 3) = v38;
  v40 = v19;
  v41 = v51;
  sub_264D90E64(v40, v51, &qword_27FFB2F28, &qword_264E294E0);
  sub_264D81744(v27, v24, &qword_27FFB2F30, &qword_264E294E8);
  v42 = v52;
  sub_264D81744(v41, v52, &qword_27FFB2F28, &qword_264E294E0);
  v43 = v53;
  sub_264D81744(v24, v53, &qword_27FFB2F30, &qword_264E294E8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F50, &qword_264E29508);
  sub_264D81744(v42, v43 + *(v44 + 48), &qword_27FFB2F28, &qword_264E294E0);
  sub_264D817BC(v41, &qword_27FFB2F28, &qword_264E294E0);
  sub_264D817BC(v27, &qword_27FFB2F30, &qword_264E294E8);
  sub_264D817BC(v42, &qword_27FFB2F28, &qword_264E294E0);
  return sub_264D817BC(v24, &qword_27FFB2F30, &qword_264E294E8);
}