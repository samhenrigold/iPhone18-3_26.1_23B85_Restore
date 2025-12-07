uint64_t sub_2702C81B8()
{
  v1 = *v0;
  sub_2702DA74C();
  MEMORY[0x27439D1C0](v1);
  return sub_2702DA76C();
}

uint64_t sub_2702C822C(uint64_t a1)
{
  v2 = *v1;
  sub_2702DA74C();
  MEMORY[0x27439D1C0](v2);
  return sub_2702DA76C();
}

uint64_t sub_2702C8270()
{
  if (*v0)
  {
    return 0x6F6C66664F746F6ELL;
  }

  else
  {
    return 0x6564616F6C66666FLL;
  }
}

unint64_t sub_2702C82B8(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v4 = v3;
  v76 = a3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD658, &qword_2702DAE40);
  v84 = *(v78 - 8);
  v7 = MEMORY[0x28223BE20](v78);
  v79 = &v71[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v77 = &v71[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v71[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD660, &qword_2702DAE48);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v71[-v16];
  v18 = type metadata accessor for PushHeuristics.COSEntry(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v71[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_2702DA4BC();
  v83 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = *a1;
  v85 = &v71[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2702DA4AC();
  v25 = *v4;
  v26 = *(*v4 + 16);
  v80 = v24;
  if (v26 && (v27 = sub_2702CE94C(v24), (v28 & 1) != 0))
  {
    v29 = *(*(v25 + 56) + 8 * v27);
  }

  else
  {
    v29 = sub_2702D7B80(MEMORY[0x277D84F90]);
  }

  v81 = v15;
  v82 = v4;
  v30 = *(v29 + 16);
  v72 = a2;
  if (v30 && (v31 = sub_2702CE94C(a2 & 1), (v32 & 1) != 0))
  {
    sub_2702D2F24(*(v29 + 56) + *(v19 + 72) * v31, v17, type metadata accessor for PushHeuristics.COSEntry);

    v33 = *(v19 + 56);
    v74 = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v75 = v33;
    v33(v17, 0, 1, v18);
    sub_2702D2F8C(v17, v21, type metadata accessor for PushHeuristics.COSEntry);
  }

  else
  {

    v34 = *(v19 + 56);
    v74 = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v75 = v34;
    v34(v17, 1, 1, v18);
    v35 = *(v18 + 20);
    sub_2702DA4AC();
    v36 = v83;
    (*(v83 + 16))(v21, &v21[v35], v22);
    type metadata accessor for RunningAverageEMA(0);
    v37 = swift_allocObject();
    *(v37 + 16) = 0x4000000000000000;
    *(v37 + 32) = 0;
    *(v37 + 40) = 1;
    v38 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_lastUpdateTime;
    v39 = *(v36 + 56);
    v39(v37 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_lastUpdateTime, 1, 1, v22);
    *(v37 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_useEventRateNormalization) = 0;
    *(v37 + 24) = 0x3FF0000000000000;
    *(v37 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_timeUnit) = 0x40AC200000000000;
    *(v37 + 32) = 0;
    *(v37 + 40) = 1;
    v40 = v73;
    v39(v73, 1, 1, v22);
    swift_beginAccess();
    sub_2702D37E0(v40, v37 + v38);
    swift_endAccess();
    *&v21[*(v18 + 24)] = v37;
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_2702D38B8(v17, &qword_2807CD660, &qword_2702DAE48);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD668, &unk_2702DAE50);
  v41 = (v84[80] + 32) & ~v84[80];
  v42 = swift_allocObject() + v41;
  v73 = v18;
  v43 = v78;
  v44 = *(v78 + 48);
  v45 = v83;
  v46 = *(v83 + 16);
  v84 = v21;
  v46(v42, v85, v22);
  *(v42 + v44) = v76;
  v47 = *(v43 + 48);
  v48 = &qword_2807CD658;
  v49 = v77;
  sub_2702D3850(v42, v77, &qword_2807CD658, &qword_2702DAE40);
  swift_setDeallocating();
  sub_2702D38B8(v42, &qword_2807CD658, &qword_2702DAE40);
  swift_deallocClassInstance();
  v50 = *&v49[v47];
  v51 = *(v43 + 48);
  v52 = v79;
  (*(v45 + 32))(v79, v49, v22);
  *(v52 + v51) = v50;
  sub_2702D3CA0(v52, v50);
  sub_2702D38B8(v52, &qword_2807CD658, &qword_2702DAE40);
  v53 = v73;
  (*(v45 + 24))(&v84[*(v73 + 5)], v85, v22);
  v54 = v81;
  sub_2702D2F24(v84, v81, type metadata accessor for PushHeuristics.COSEntry);
  v75(v54, 0, 1, v53);
  v55 = v82;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v55;
  v57 = v86;
  v58 = v80;
  v59 = sub_2702CE94C(v80);
  v61 = v57[2];
  v62 = (v60 & 1) == 0;
  v63 = __OFADD__(v61, v62);
  v64 = v61 + v62;
  if (v63)
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(v53) = v60;
  if (v57[3] < v64)
  {
    sub_2702CF034(v64, isUniquelyReferenced_nonNull_native, &qword_2807CD670, &unk_2702DB200);
    v57 = v86;
    v59 = sub_2702CE94C(v58);
    LOBYTE(v51) = v72;
    v48 = v83;
    if ((v53 & 1) == (v65 & 1))
    {
      goto LABEL_15;
    }

    v59 = sub_2702DA72C();
    __break(1u);
  }

  LOBYTE(v51) = v72;
  v48 = v83;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_20:
    v70 = v59;
    sub_2702D09B4(&qword_2807CD670, &unk_2702DB200);
    v59 = v70;
    v57 = v86;
    *v55 = v86;
    if (v53)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_15:
  *v55 = v57;
  if (v53)
  {
LABEL_18:
    sub_2702C8AC4(v54, v51 & 1);
    (v48[1])(v85, v22);
    return sub_2702D2FF4(v84, type metadata accessor for PushHeuristics.COSEntry);
  }

LABEL_16:
  v66 = v59;
  result = sub_2702D7B80(MEMORY[0x277D84F90]);
  v57[(v66 >> 6) + 8] |= 1 << v66;
  *(v57[6] + v66) = v58;
  *(v57[7] + 8 * v66) = result;
  v68 = v57[2];
  v63 = __OFADD__(v68, 1);
  v69 = v68 + 1;
  if (!v63)
  {
    v57[2] = v69;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_2702C8AC4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD660, &qword_2702DAE48);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for PushHeuristics.COSEntry(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2702D38B8(a1, &qword_2807CD660, &qword_2702DAE48);
    v13 = sub_2702CE94C(a2 & 1);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2702D0B00(type metadata accessor for PushHeuristics.COSEntry, &qword_2807CD678, &qword_2702DAE60, type metadata accessor for PushHeuristics.COSEntry);
        v17 = v21;
      }

      sub_2702D2F8C(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for PushHeuristics.COSEntry);
      sub_2702CFEC4(v15, v17, type metadata accessor for PushHeuristics.COSEntry);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2702D38B8(v8, &qword_2807CD660, &qword_2702DAE48);
  }

  else
  {
    sub_2702D2F8C(a1, v12, type metadata accessor for PushHeuristics.COSEntry);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_2702D009C(v12, a2 & 1, v18);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_2702C8D64(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD638, &qword_2702DAE20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2702D38B8(a1, &qword_2807CD638, &qword_2702DAE20);
    v13 = sub_2702CE94C(a2 & 1);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2702D0B00(type metadata accessor for PushHeuristics.DisconnectionInfo, &qword_2807CD688, &qword_2702DAE70, type metadata accessor for PushHeuristics.DisconnectionInfo);
        v17 = v21;
      }

      sub_2702D2F8C(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for PushHeuristics.DisconnectionInfo);
      sub_2702CFEC4(v15, v17, type metadata accessor for PushHeuristics.DisconnectionInfo);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2702D38B8(v8, &qword_2807CD638, &qword_2702DAE20);
  }

  else
  {
    sub_2702D2F8C(a1, v12, type metadata accessor for PushHeuristics.DisconnectionInfo);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_2702D0524(v12, a2 & 1, v18);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_2702C9004(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_2702DA4BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2702D38B8(a1, &qword_2807CD5C0, &unk_2702DACB0);
    v13 = sub_2702CE94C(a2 & 1);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2702D0E88();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_2702CFEC4(v15, v17, MEMORY[0x277CC9578]);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2702D38B8(v8, &qword_2807CD5C0, &unk_2702DACB0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_2702D06F0(v12, a2 & 1, v18);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_2702C9268(char *a1)
{
  v2 = v1;
  result = sub_2702CE94C(*a1);
  if (v4)
  {
    v5 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    v8 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2702D0858();
      v7 = v8;
    }

    result = sub_2702CFD30(v5, v7);
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2702C92EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_2702DA4BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 123;
  v17 = 0xE100000000000000;
  v8 = v0 + *(type metadata accessor for PushHeuristics.DisconnectionInfo(0) + 20);
  v9 = *(v8 + 8);
  if (v9 != 255)
  {
    v10 = *v8;
    sub_2702CE4D8(*v8, *(v8 + 8));
    sub_2702CE4EC(v10, v9);
    v11 = sub_2702C9560(v10, v9);
    MEMORY[0x27439D000](v11);

    sub_2702CE4FC(v10, v9);
  }

  sub_2702D3850(v0, v3, &qword_2807CD5C0, &unk_2702DACB0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2702D38B8(v3, &qword_2807CD5C0, &unk_2702DACB0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v14 = 32;
    v15 = 0xE100000000000000;
    sub_2702CE480();
    v12 = sub_2702DA6FC();
    MEMORY[0x27439D000](v12);

    MEMORY[0x27439D000](v14, v15);

    (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x27439D000](125, 0xE100000000000000);
  return v16;
}

uint64_t sub_2702C9560(void *a1, char a2)
{
  if (!a2)
  {
    v5 = 0;
    sub_2702DA68C();
    MEMORY[0x27439D000](0xD000000000000013, 0x80000002702DBB20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5F8, &qword_2702DADE0);
    sub_2702DA6AC();
    sub_2702CE510(a1, 0);
    return v5;
  }

  if (a2 == 1)
  {
    sub_2702DA68C();

    v5 = 0xD000000000000015;
    v3 = sub_2702DA6FC();
    MEMORY[0x27439D000](v3);

    return v5;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_2702C96A8()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = sub_2702D7D58(MEMORY[0x277D84F90]);
  *(v1 + 24) = sub_2702D7D6C(v2);
  *(v1 + 40) = 1;
  sub_2702DA4DC();
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_timeProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = sub_2702DA4CC();
  v4 = sub_2702DA5CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2702D949C(0x292874696E69, 0xE600000000000000, v15);
    _os_log_impl(&dword_2702C7000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x27439D570](v6, -1, -1);
    MEMORY[0x27439D570](v5, -1, -1);
  }

  v7 = MEMORY[0x277D84F90];
  *(v1 + 32) = sub_2702D7E7C(MEMORY[0x277D84F90]);
  *(v1 + 41) = *(v1 + 40);
  v8 = sub_2702D8054(v7);
  v9 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory;
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory) = v8;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v1 + v9);
  *(v1 + v9) = 0x8000000000000000;
  sub_2702D03B4(v7, 0, isUniquelyReferenced_nonNull_native);
  *(v1 + v9) = v13;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v1 + v9);
  *(v1 + v9) = 0x8000000000000000;
  sub_2702D03B4(v7, 1, v11);
  *(v1 + v9) = v14;
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_excessiveFailuresTimestamp) = sub_2702D8170(v7);
  return v1;
}

uint64_t sub_2702C98EC(unsigned __int8 *a1)
{
  v2 = v1;
  v80 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD600, &qword_2702DADE8);
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v66 = (&v61 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD608, &unk_2702DADF0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v61 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v61 - v13;
  v15 = sub_2702DA4BC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v76 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  v65 = *a1;
  v21 = v2 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_timeProvider;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(ObjectType, v22);
    swift_unknownObjectRelease();
    (*(v16 + 56))(v14, 0, 1, v15);
    (*(v16 + 32))(v20, v14, v15);
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    sub_2702DA4AC();
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_2702D38B8(v14, &qword_2807CD5C0, &unk_2702DACB0);
    }
  }

  v24 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory;
  swift_beginAccess();
  if (!*(*(v2 + v24) + 16))
  {
    return (*(v16 + 8))(v20, v15);
  }

  sub_2702CE94C(v65);
  if ((v25 & 1) == 0)
  {
    return (*(v16 + 8))(v20, v15);
  }

  v26 = *(v2 + v24);
  if (!*(v26 + 16))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v27 = sub_2702CE94C(v65);
  if ((v28 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v63 = v24;
  v74 = v15;
  v75 = v20;
  v62 = v2;
  v29 = *(*(v26 + 56) + 8 * v27);
  v24 = *(v29 + 16);
  v71 = (v73 + 48);
  v72 = (v73 + 56);
  v70 = (v16 + 16);
  v64 = v16;
  v68 = "hresholdOverMonitoredWindow(_:)";
  v69 = (v16 + 8);
  v67 = *MEMORY[0x277CBF028];

  v30 = 0;
  v20 = -1;
  v15 = v76;
  do
  {
    v73 = v20;
    if (v30 != v24)
    {
      if (v30 < *(v29 + 16))
      {
        v33 = *(type metadata accessor for PushTelemetry(0) - 8);
        v34 = v29 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v30;
        v35 = *(v4 + 48);
        v36 = v66;
        *v66 = v30;
        sub_2702D2F24(v34, v36 + v35, type metadata accessor for PushTelemetry);
        sub_2702CE9B4(v36, v9, &qword_2807CD600, &qword_2702DADE8);
        v32 = 0;
        ++v30;
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_42;
    }

    v32 = 1;
    v30 = v24;
LABEL_16:
    (*v72)(v9, v32, 1, v4);
    sub_2702CE9B4(v9, v11, &qword_2807CD608, &unk_2702DADF0);
    if ((*v71)(v11, 1, v4) == 1)
    {
      break;
    }

    v2 = v29;
    v37 = v9;
    v20 = *v11;
    v38 = v4;
    v39 = *(v4 + 48);
    v40 = v74;
    (*v70)(v15, v11 + v39, v74);
    sub_2702D2FF4(v11 + v39, type metadata accessor for PushTelemetry);
    sub_2702DA47C();
    v42 = v41;
    (*v69)(v15, v40);
    keyExistsAndHasValidFormat[0] = 0;
    v43 = sub_2702DA55C();
    AppIntegerValue = CFPreferencesGetAppIntegerValue(v43, v67, keyExistsAndHasValidFormat);

    v31 = keyExistsAndHasValidFormat[0] ? AppIntegerValue : 1800.0;
    v4 = v38;
    v9 = v37;
    v29 = v2;
  }

  while (v42 > v31);

  v4 = v62;
  v15 = v74;
  v20 = v75;
  v16 = v64;
  v45 = v63;
  v2 = v73;
  if (v73 < 0)
  {
    return (*(v16 + 8))(v20, v15);
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = *(v4 + v45);
  v47 = v77;
  *(v4 + v45) = 0x8000000000000000;
  v24 = sub_2702CE94C(v65);
  v49 = *(v47 + 16);
  v50 = (v48 & 1) == 0;
  v51 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  LOBYTE(v20) = v48;
  if (*(v47 + 24) < v51)
  {
    sub_2702CF034(v51, isUniquelyReferenced_nonNull_native, &qword_2807CD610, &qword_2702DB1F0);
    v52 = sub_2702CE94C(v65);
    if ((v20 & 1) != (v53 & 1))
    {
      result = sub_2702DA72C();
      __break(1u);
      return result;
    }

    v24 = v52;
    if (v20)
    {
      goto LABEL_27;
    }

LABEL_49:
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_48;
  }

  if ((v48 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_27:
  while (2)
  {
    v20 = v77;
    v54 = *(*(v77 + 56) + 8 * v24);
    v78 = v54;
    v55 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v56 = v54[2];
    if (v56 < v55)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (__OFSUB__(0, v55))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      sub_2702D09B4(&qword_2807CD610, &qword_2702DB1F0);
      if ((v20 & 1) == 0)
      {
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  v57 = v56 - v55;
  v58 = swift_isUniquelyReferenced_nonNull_native();
  if (v58 && v57 <= v54[3] >> 1)
  {
    sub_2702D2DB4(0, v55, 0);
    goto LABEL_37;
  }

  if (v56 <= v57)
  {
    v59 = v56 - v55;
  }

  else
  {
    v59 = v56;
  }

  v54 = sub_2702CE520(v58, v59, 1, v54);
  v78 = v54;
  sub_2702D2DB4(0, v55, 0);
  if (v54)
  {
LABEL_37:
    *(*(v20 + 56) + 8 * v24) = v54;
  }

  else
  {
    sub_2702CFD30(v24, v20);
  }

  v16 = v64;
  *(v4 + v63) = v20;
  swift_endAccess();
  v20 = v75;
  return (*(v16 + 8))(v20, v15);
}

uint64_t sub_2702CA148(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PushTelemetry(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v29[0] = *a1;
  sub_2702C98EC(v29);
  v11 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory;
  result = swift_beginAccess();
  if (!*(*(v3 + v11) + 16))
  {
    return result;
  }

  result = sub_2702CE94C(v10);
  if ((v13 & 1) == 0)
  {
    return result;
  }

  sub_2702D2F24(a2, v9, type metadata accessor for PushTelemetry);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v3 + v11);
  v15 = v28;
  *(v3 + v11) = 0x8000000000000000;
  v17 = sub_2702CE94C(v10);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
  }

  else
  {
    v21 = v16;
    if (v15[3] >= v20)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_2702D09B4(&qword_2807CD610, &qword_2702DB1F0);
        if ((v21 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_2702CF034(v20, isUniquelyReferenced_nonNull_native, &qword_2807CD610, &qword_2702DB1F0);
      v22 = sub_2702CE94C(v10);
      if ((v21 & 1) != (v23 & 1))
      {
LABEL_19:
        result = sub_2702DA72C();
        __break(1u);
        return result;
      }

      v17 = v22;
      if ((v21 & 1) == 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    v15 = *(v28[7] + 8 * v17);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_11;
    }
  }

  v15 = sub_2702CE520(0, v15[2] + 1, 1, v15);
LABEL_11:
  v25 = v15[2];
  v24 = v15[3];
  if (v25 >= v24 >> 1)
  {
    v15 = sub_2702CE520((v24 > 1), v25 + 1, 1, v15);
  }

  v15[2] = v25 + 1;
  sub_2702D2F8C(v9, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, type metadata accessor for PushTelemetry);
  v26 = v28;
  *(v28[7] + 8 * v17) = v15;
  *(v3 + v11) = v26;
  return swift_endAccess();
}

BOOL sub_2702CA408(unsigned __int8 *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v20[0] = *a1;
  sub_2702C98EC(v20);
  v3 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory;
  swift_beginAccess();
  if (!*(*(v1 + v3) + 16))
  {
    return 0;
  }

  sub_2702CE94C(v2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + v3);
  if (!*(v5 + 16))
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v6 = sub_2702CE94C(v2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_21;
  }

  v8 = *(*(*(v5 + 56) + 8 * v6) + 16);
  keyExistsAndHasValidFormat[0] = 0;
  v9 = sub_2702DA55C();
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v9, *MEMORY[0x277CBF028], keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat[0])
  {
    if ((AppIntegerValue & 0x8000000000000000) != 0)
    {
      __break(1u);
      return 0;
    }
  }

  else
  {
    AppIntegerValue = 4;
  }

  v12 = sub_2702DA4CC();
  v13 = sub_2702DA5DC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *keyExistsAndHasValidFormat = v15;
    *v14 = 136315906;
    if (v2)
    {
      v16 = 0x72666E4969666977;
    }

    else
    {
      v16 = 0x72616C756C6C6563;
    }

    if (v2)
    {
      v17 = 0xE900000000000061;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    v18 = sub_2702D949C(v16, v17, keyExistsAndHasValidFormat);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2702D949C(0xD00000000000002FLL, 0x80000002702DBB60, keyExistsAndHasValidFormat);
    *(v14 + 22) = 2048;
    *(v14 + 24) = v8;
    *(v14 + 32) = 2048;
    *(v14 + 34) = AppIntegerValue;
    _os_log_impl(&dword_2702C7000, v12, v13, "interface:%s %s failureCount:%ld threshold:%lu", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x27439D570](v15, -1, -1);
    MEMORY[0x27439D570](v14, -1, -1);
  }

  return v8 >= AppIntegerValue;
}

uint64_t sub_2702CA6A4(char *a1)
{
  v41 = type metadata accessor for PushTelemetry(0);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD600, &qword_2702DADE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v38 = (&v38 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD608, &unk_2702DADF0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v38 - v12);
  v14 = *a1;
  v49 = 0;
  v50 = 0xE000000000000000;
  v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v16 = sub_2702DA55C();
  v44 = v15;
  [v15 setDateFormat_];

  v17 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_failureEventHistory;
  result = swift_beginAccess();
  v19 = *(v1 + v17);
  if (!*(v19 + 16))
  {
    goto LABEL_16;
  }

  result = sub_2702CE94C(v14);
  if (v20)
  {
    v21 = *(*(v19 + 56) + 8 * result);
    v22 = *(v21 + 16);
    v42 = (v6 + 48);
    v43 = (v6 + 56);
    v40 = v21;

    v23 = 0;
    while (1)
    {
      if (v23 == v22)
      {
        v32 = 1;
        v23 = v22;
      }

      else
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
          break;
        }

        if (v23 >= *(v40 + 16))
        {
          goto LABEL_15;
        }

        v33 = v38;
        v34 = v40 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v23;
        v35 = *(v5 + 48);
        *v38 = v23;
        sub_2702D2F24(v34, v33 + v35, type metadata accessor for PushTelemetry);
        sub_2702CE9B4(v33, v11, &qword_2807CD600, &qword_2702DADE8);
        v32 = 0;
        ++v23;
      }

      (*v43)(v11, v32, 1, v5);
      sub_2702CE9B4(v11, v13, &qword_2807CD608, &unk_2702DADF0);
      if ((*v42)(v13, 1, v5) == 1)
      {

        return v49;
      }

      v36 = v11;
      v37 = *v13;
      sub_2702D2F8C(v13 + *(v5 + 48), v4, type metadata accessor for PushTelemetry);
      if (v37 >= 1)
      {
        MEMORY[0x27439D000](8236, 0xE200000000000000);
      }

      v24 = sub_2702DA48C();
      v25 = [v44 stringFromDate_];

      v26 = sub_2702DA56C();
      v28 = v27;

      v29 = &v4[*(v41 + 20)];
      v30 = *v29;
      LOBYTE(v29) = v29[8];
      v45 = v30;
      v46 = v29;
      v47 = PushTelemetryEvent.description.getter();
      v48 = v31;
      MEMORY[0x27439D000](0x2074612820, 0xE500000000000000);
      MEMORY[0x27439D000](v26, v28);

      MEMORY[0x27439D000](41, 0xE100000000000000);
      MEMORY[0x27439D000](v47, v48);

      result = sub_2702D2FF4(v4, type metadata accessor for PushTelemetry);
      v11 = v36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2702CAB50(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD638, &qword_2702DAE20);
  MEMORY[0x28223BE20](v6 - 8);
  v127 = v123 - v7;
  v126 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
  v8 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for PushTelemetry(0);
  v140 = *(v143 - 8);
  v10 = MEMORY[0x28223BE20](v143);
  v123[5] = v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v123 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v123[6] = v123 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v123 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v123 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v123 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v141 = v123 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = v123 - v28;
  v142 = *a1;
  v147 = a2;

  sub_2702D10F4(&v147);
  v30 = v147;
  v139 = *(v147 + 16);
  if (v139)
  {
    v134 = 0;
    v123[2] = v25;
    v123[4] = v22;
    v123[3] = v19;
    v123[1] = v14;
    v135 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_log;
    v129 = *(v140 + 80);
    v128 = (v129 + 32) & ~v129;
    v137 = v147 + v128;
    v31 = swift_beginAccess();
    v33 = 0;
    v34 = 0xE900000000000061;
    v35 = v142;
    if (v142)
    {
      v36 = 0x72666E4969666977;
    }

    else
    {
      v36 = 0x72616C756C6C6563;
    }

    if (!v142)
    {
      v34 = 0xE800000000000000;
    }

    v132 = v36;
    v133 = v34;
    v124 = (v8 + 56);
    *&v32 = 136315394;
    v131 = v32;
    v136 = v3;
    v37 = v141;
    v130 = v29;
    v138 = v30;
    while (1)
    {
      if (v33 >= *(v30 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      sub_2702D2F24(v137 + *(v140 + 72) * v33, v29, type metadata accessor for PushTelemetry);
      if (*(*(v3 + 24) + 16))
      {
        sub_2702CE94C(v35);
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v40 = &v29[*(v143 + 20)];
      if ((v40[8] & 0xC0) != 0x80)
      {
        sub_2702D2F24(v29, v37, type metadata accessor for PushTelemetry);
        v41 = sub_2702DA4CC();
        v42 = sub_2702DA5FC();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v146 = v44;
          *v43 = v131;
          v45 = sub_2702D949C(v132, v133, &v146);

          *(v43 + 4) = v45;
          *(v43 + 12) = 2080;
          v46 = v141 + *(v143 + 20);
          v144 = *v46;
          v145 = *(v46 + 8);
          sub_2702D3748(v144, v145);
          v47 = PushTelemetryEvent.description.getter();
          v49 = v48;
          sub_2702D3768(v144, v145);
          sub_2702D2FF4(v141, type metadata accessor for PushTelemetry);
          v50 = sub_2702D949C(v47, v49, &v146);
          v37 = v141;

          *(v43 + 14) = v50;
          _os_log_impl(&dword_2702C7000, v41, v42, "processing interface=%s %s", v43, 0x16u);
          swift_arrayDestroy();
          v51 = v44;
          v29 = v130;
          MEMORY[0x27439D570](v51, -1, -1);
          v52 = v43;
          v3 = v136;
          MEMORY[0x27439D570](v52, -1, -1);
        }

        else
        {

          sub_2702D2FF4(v37, type metadata accessor for PushTelemetry);
        }
      }

      v53 = *v40;
      v54 = v40[8];
      v55 = v54 >> 5;
      if (v54 >> 5 > 2)
      {
        if (v55 - 4 >= 2)
        {
          if (v55 != 3)
          {
            v35 = v142;
            sub_2702CC0A4(1, v3, v142);
            v30 = v138;
            LOBYTE(v144) = v35;
            sub_2702CBCAC(&v144, v3);
            if (v53 | v54 ^ 0xC0)
            {
              *(v3 + 41) = 1;
            }

            else
            {
              *(v3 + 41) = 0;
            }

            LOBYTE(v144) = v35;
            type metadata accessor for PushTelemetryHandler(0);
            swift_allocObject();
            v91 = sub_2702D669C(&v144);
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v146 = *(v3 + 24);
            *(v3 + 24) = 0x8000000000000000;
            sub_2702D0268(v91, v35, isUniquelyReferenced_nonNull_native);
            *(v3 + 24) = v146;
            swift_endAccess();

            v37 = v141;
            goto LABEL_10;
          }

          if ((v39 & 1) == 0)
          {

            v94 = v29;
            v95 = &v147;
LABEL_75:
            v98 = *(v95 - 32);
            sub_2702D2F24(v94, v98, type metadata accessor for PushTelemetry);

            v99 = sub_2702DA4CC();
            v100 = sub_2702DA5EC();

            if (!os_log_type_enabled(v99, v100))
            {
              goto LABEL_93;
            }

            v101 = swift_slowAlloc();
            v102 = v3;
            v103 = swift_slowAlloc();
            v146 = v103;
            *v101 = 136315650;
            v104 = sub_2702D949C(v132, v133, &v146);

            *(v101 + 4) = v104;
            *(v101 + 12) = 2080;
            if (*(v102 + 41))
            {
              v105 = 0x6F6C66664F746F6ELL;
            }

            else
            {
              v105 = 0x6564616F6C66666FLL;
            }

            if (*(v102 + 41))
            {
              v106 = 0xEC00000064656461;
            }

            else
            {
              v106 = 0xE900000000000064;
            }

            v107 = sub_2702D949C(v105, v106, &v146);

            *(v101 + 14) = v107;
            *(v101 + 22) = 2080;
            v108 = v98 + *(v143 + 20);
            v144 = *v108;
            v145 = *(v108 + 8);
            sub_2702D3748(v144, v145);
            v109 = PushTelemetryEvent.description.getter();
            v111 = v110;
            sub_2702D3768(v144, v145);
            sub_2702D2FF4(v98, type metadata accessor for PushTelemetry);
            v112 = sub_2702D949C(v109, v111, &v146);

            *(v101 + 24) = v112;
            _os_log_impl(&dword_2702C7000, v99, v100, "Telemetry handler does not exist for interface %s in %s state, discarding event: %s", v101, 0x20u);
LABEL_92:
            swift_arrayDestroy();
            MEMORY[0x27439D570](v103, -1, -1);
            MEMORY[0x27439D570](v101, -1, -1);

            return sub_2702D2FF4(v29, type metadata accessor for PushTelemetry);
          }

          v35 = v142;
          if (*(v3 + 41) == 1)
          {

            v96 = v29;
            v97 = &v151;
LABEL_84:
            v98 = *(v97 - 32);
            sub_2702D2F24(v96, v98, type metadata accessor for PushTelemetry);

            v99 = sub_2702DA4CC();
            v113 = sub_2702DA5EC();

            if (os_log_type_enabled(v99, v113))
            {
              v101 = swift_slowAlloc();
              v114 = v3;
              v103 = swift_slowAlloc();
              v146 = v103;
              *v101 = v131;
              v115 = v98 + *(v143 + 20);
              v144 = *v115;
              v145 = *(v115 + 8);
              sub_2702D3748(v144, v145);
              v116 = PushTelemetryEvent.description.getter();
              v118 = v117;
              sub_2702D3768(v144, v145);
              sub_2702D2FF4(v98, type metadata accessor for PushTelemetry);
              v119 = sub_2702D949C(v116, v118, &v146);

              *(v101 + 4) = v119;
              *(v101 + 12) = 2080;
              if (*(v114 + 41))
              {
                v120 = 0x6F6C66664F746F6ELL;
              }

              else
              {
                v120 = 0x6564616F6C66666FLL;
              }

              if (*(v114 + 41))
              {
                v121 = 0xEC00000064656461;
              }

              else
              {
                v121 = 0xE900000000000064;
              }

              v122 = sub_2702D949C(v120, v121, &v146);

              *(v101 + 14) = v122;
              _os_log_impl(&dword_2702C7000, v99, v113, "received %s in %s state, discarding event", v101, 0x16u);
              goto LABEL_92;
            }

LABEL_93:

            sub_2702D2FF4(v98, type metadata accessor for PushTelemetry);
            return sub_2702D2FF4(v29, type metadata accessor for PushTelemetry);
          }

          v65 = *(v3 + 24);
          if (*(v65 + 16))
          {
            goto LABEL_48;
          }

          goto LABEL_9;
        }

        if ((v39 & 1) == 0)
        {

          v94 = v29;
          v95 = &v150;
          goto LABEL_75;
        }
      }

      else
      {
        if (!v55)
        {
          if ((v39 & 1) == 0)
          {

            v94 = v29;
            v95 = &v148;
            goto LABEL_75;
          }

          v35 = v142;
          if ((*(v3 + 41) & 1) == 0)
          {
            LOBYTE(v144) = v142;
            sub_2702CA148(&v144, v29);
          }

          v66 = *(v3 + 24);
          if (*(v66 + 16))
          {
            v67 = sub_2702CE94C(v35);
            if (v68)
            {
              v69 = *(*(v66 + 56) + 8 * v67);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD618, &qword_2702DAE00);
              v70 = v128;
              v71 = swift_allocObject();
              sub_2702D2F24(v29, v71 + v70, type metadata accessor for PushTelemetry);

              v72 = v134;
              sub_2702D6DF0(v71 + v70, v69);
              v134 = v72;
              swift_setDeallocating();
              sub_2702D2FF4(v71 + v70, type metadata accessor for PushTelemetry);
              swift_deallocClassInstance();
              v37 = v141;
            }
          }

          sub_2702CC310(v3, v35);
          *(v3 + 41) = *(v3 + 40);
          goto LABEL_9;
        }

        if (v55 == 1)
        {
          if (v39)
          {
            v56 = v142;
            if (*(*(v136 + 24) + 16) && (sub_2702CE94C(v142), (v57 & 1) != 0))
            {
              LOBYTE(v146) = v56;
              v58 = *(v136 + 41);
              swift_beginAccess();
              sub_2702CE4EC(v53, v54 & 0x1F);
              sub_2702C82B8(&v146, v58, 0);
              swift_endAccess();
              swift_beginAccess();
              v59 = sub_2702CE94C(v56);
              if (v60)
              {
                v61 = v59;
                v62 = v136;
                v63 = swift_isUniquelyReferenced_nonNull_native();
                v64 = *(v62 + 24);
                v146 = v64;
                *(v62 + 24) = 0x8000000000000000;
                if (!v63)
                {
                  sub_2702D0858();
                  v64 = v146;
                }

                sub_2702CFD30(v61, v64);
                *(v62 + 24) = v64;
              }

              swift_endAccess();
              v37 = v141;
LABEL_54:
              v56 = v142;
            }

            else
            {
              sub_2702CE4EC(v53, v54 & 0x1F);
            }

            v79 = v136;
            if ((*(v136 + 41) & 1) == 0)
            {
              v80 = sub_2702DA4BC();
              v81 = *(v80 - 8);
              v82 = v125;
              (*(v81 + 16))(v125, v29, v80);
              (*(v81 + 56))(v82, 0, 1, v80);
              v83 = v126;
              v84 = v82 + *(v126 + 20);
              *v84 = v53;
              *(v84 + 8) = v54 & 0x1F;
              v85 = v127;
              sub_2702D2F24(v82, v127, type metadata accessor for PushHeuristics.DisconnectionInfo);
              (*v124)(v85, 0, 1, v83);
              swift_beginAccess();
              sub_2702CE4EC(v53, v54 & 0x1F);
              sub_2702C8D64(v85, v56);
              swift_endAccess();
              v144 = v53;
              v145 = v54 & 0x1F;
              if (sub_2702D3054(&v144))
              {
                LOBYTE(v144) = v56;
                sub_2702CA148(&v144, v29);
              }

              sub_2702D2FF4(v82, type metadata accessor for PushHeuristics.DisconnectionInfo);
              v37 = v141;
            }

            swift_beginAccess();
            v86 = sub_2702CE94C(v56);
            v3 = v79;
            v30 = v138;
            if (v87)
            {
              v88 = v86;
              v89 = swift_isUniquelyReferenced_nonNull_native();
              v90 = *(v3 + 24);
              v146 = v90;
              *(v3 + 24) = 0x8000000000000000;
              if (!v89)
              {
                sub_2702D0858();
                v90 = v146;
              }

              sub_2702CFD30(v88, v90);
              *(v3 + 24) = v90;
            }

            swift_endAccess();
            v35 = v142;
            sub_2702CC310(v3, v142);
            sub_2702D3768(v53, v54);
            *(v3 + 41) = *(v3 + 40);
            goto LABEL_10;
          }

          sub_2702CE4EC(*v40, v54 & 0x1F);
          goto LABEL_54;
        }

        if ((v39 & 1) == 0)
        {

          v94 = v29;
          v95 = &v149;
          goto LABEL_75;
        }

        if ((*(v3 + 41) & 1) == 0)
        {

          v96 = v29;
          v97 = &v152;
          goto LABEL_84;
        }
      }

      v65 = *(v3 + 24);
      if (*(v65 + 16))
      {
        v35 = v142;
LABEL_48:
        v73 = sub_2702CE94C(v35);
        if (v74)
        {
          v75 = *(*(v65 + 56) + 8 * v73);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD618, &qword_2702DAE00);
          v76 = v128;
          v77 = swift_allocObject();
          sub_2702D2F24(v29, v77 + v76, type metadata accessor for PushTelemetry);

          v78 = v134;
          sub_2702D6DF0(v77 + v76, v75);
          v134 = v78;
          swift_setDeallocating();
          sub_2702D2FF4(v77 + v76, type metadata accessor for PushTelemetry);
          swift_deallocClassInstance();
          v37 = v141;
        }

        goto LABEL_9;
      }

      v35 = v142;
LABEL_9:
      v30 = v138;
LABEL_10:
      ++v33;
      v31 = sub_2702D2FF4(v29, type metadata accessor for PushTelemetry);
      if (v139 == v33)
      {
      }
    }
  }
}

uint64_t sub_2702CBCAC(char *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD638, &qword_2702DAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_2702DA4BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
  v31 = *(v29 - 8);
  v13 = MEMORY[0x28223BE20](v29);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = *a1;
  keyExistsAndHasValidFormat[0] = 0;
  v19 = sub_2702DA55C();
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v19, *MEMORY[0x277CBF028], keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat[0])
  {
    v21 = AppIntegerValue;
  }

  else
  {
    v21 = 7200.0;
  }

  result = swift_beginAccess();
  v23 = *(a2 + 32);
  if (*(v23 + 16))
  {
    result = sub_2702CE94C(v18);
    if (v24)
    {
      sub_2702D2F24(*(v23 + 56) + *(v31 + 72) * result, v15, type metadata accessor for PushHeuristics.DisconnectionInfo);
      sub_2702D2F8C(v15, v17, type metadata accessor for PushHeuristics.DisconnectionInfo);
      sub_2702DA4AC();
      sub_2702D3850(v17, v8, &qword_2807CD5C0, &unk_2702DACB0);
      result = (*(v10 + 48))(v8, 1, v9);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        sub_2702DA47C();
        v26 = v25;
        v27 = *(v10 + 8);
        v27(v12, v9);
        v27(v8, v9);
        if (v21 < v26)
        {
          v28 = v30;
          (*(v31 + 56))(v30, 1, 1, v29);
          swift_beginAccess();
          sub_2702C8D64(v28, v18);
          swift_endAccess();
        }

        return sub_2702D2FF4(v17, type metadata accessor for PushHeuristics.DisconnectionInfo);
      }
    }
  }

  return result;
}

uint64_t sub_2702CC0A4(char a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  if (*(*(a2 + 24) + 16))
  {
    v7 = a3 & 1;
    result = sub_2702CE94C(a3 & 1);
    if (v8)
    {
      if (a1)
      {

        v9 = sub_2702DA4CC();
        v10 = sub_2702DA5EC();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v20[0] = v12;
          *v11 = 136315394;
          if (a3)
          {
            v13 = 0x72666E4969666977;
          }

          else
          {
            v13 = 0x72616C756C6C6563;
          }

          if (a3)
          {
            v14 = 0xE900000000000061;
          }

          else
          {
            v14 = 0xE800000000000000;
          }

          v15 = sub_2702D949C(v13, v14, v20);

          *(v11 + 4) = v15;
          *(v11 + 12) = 2080;
          if (*(a2 + 41))
          {
            v16 = 0x6F6C66664F746F6ELL;
          }

          else
          {
            v16 = 0x6564616F6C66666FLL;
          }

          if (*(a2 + 41))
          {
            v17 = 0xEC00000064656461;
          }

          else
          {
            v17 = 0xE900000000000064;
          }

          v18 = sub_2702D949C(v16, v17, v20);

          *(v11 + 14) = v18;
          _os_log_impl(&dword_2702C7000, v9, v10, "Error: Telemetry handler already exists for interface %s in %s state", v11, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x27439D570](v12, -1, -1);
          MEMORY[0x27439D570](v11, -1, -1);
        }
      }

      v21 = v7;
      v19 = *(a2 + 41);
      swift_beginAccess();
      sub_2702C82B8(&v21, v19, 0);
      swift_endAccess();
      v21 = v7;
      swift_beginAccess();
      sub_2702C9268(&v21);
      return swift_endAccess();
    }
  }

  return result;
}

void sub_2702CC310(uint64_t a1, char a2)
{
  v4 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v48 - v10;
  if (*(a1 + 41))
  {
    return;
  }

  v12 = v9;
  swift_beginAccess();
  v13 = *(a1 + 32);
  if (!*(v13 + 16))
  {
    goto LABEL_9;
  }

  v14 = sub_2702CE94C(a2 & 1);
  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2702D2F24(*(v13 + 56) + *(v5 + 72) * v14, v8, type metadata accessor for PushHeuristics.DisconnectionInfo);
  sub_2702D2F8C(v8, v11, type metadata accessor for PushHeuristics.DisconnectionInfo);
  v16 = &v11[*(v12 + 20)];
  if (v16[8])
  {
    sub_2702D2FF4(v11, type metadata accessor for PushHeuristics.DisconnectionInfo);
LABEL_9:
    v20 = 0;
    v21 = 0;
    v22 = 0xE000000000000000;
    v23 = 6;
    goto LABEL_10;
  }

  v51[0] = *v16;
  v17 = v51[0];
  LOBYTE(v51[1]) = 0;
  sub_2702CE4D8(v51[0], 0);
  v18 = sub_2702D336C(v51);
  if (v18 & 1) == 0 || (v19)
  {
    sub_2702D2FF4(v11, type metadata accessor for PushHeuristics.DisconnectionInfo);
    sub_2702CE4FC(v17, 0);
    goto LABEL_9;
  }

  v46 = HIDWORD(v18);
  strcpy(v51, "error code: ");
  BYTE5(v51[1]) = 0;
  HIWORD(v51[1]) = -5120;
  v50 = HIDWORD(v18);
  v47 = sub_2702DA6FC();
  MEMORY[0x27439D000](v47);

  sub_2702CE4FC(v17, 0);
  v21 = v51[0];
  v22 = v51[1];
  sub_2702D2FF4(v11, type metadata accessor for PushHeuristics.DisconnectionInfo);
  if (v46 > -69997)
  {
    switch(v46)
    {
      case 0xFFFEEE94:
        v20 = 1;
        v23 = 3;
        break;
      case 0xFFFEEE95:
        v20 = 1;
        v23 = 4;
        break;
      case 0xFFFEEE96:
        v20 = 1;
        v23 = 5;
        break;
      default:
        goto LABEL_59;
    }
  }

  else
  {
    switch(v46)
    {
      case 0xFFFEEE91:
        v23 = 0;
        v20 = 1;
        break;
      case 0xFFFEEE92:
        v23 = 1;
        v20 = 1;
        break;
      case 0xFFFEEE93:
        v20 = 1;
        v23 = 2;
        break;
      default:
        goto LABEL_59;
    }
  }

LABEL_10:
  LOBYTE(v51[0]) = a2 & 1;
  if (!sub_2702CA408(v51))
  {
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_59:

    return;
  }

  LOBYTE(v51[0]) = a2 & 1;
  v24 = sub_2702CA6A4(v51);
  v26 = v25;
  v51[0] = 0;
  v51[1] = 0xE000000000000000;
  sub_2702DA68C();

  v51[0] = 0xD00000000000001BLL;
  v51[1] = 0x80000002702DBD20;
  MEMORY[0x27439D000](v24, v26);

  MEMORY[0x27439D000](93, 0xE100000000000000);
  v21 = v51[0];
  v22 = v51[1];
  v23 = 6;
LABEL_13:

  v27 = sub_2702DA4CC();
  v28 = sub_2702DA5EC();

  if (os_log_type_enabled(v27, v28))
  {
    v49 = v21;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v51[0] = v30;
    *v29 = 136315650;
    if (a2)
    {
      v31 = 0x72666E4969666977;
    }

    else
    {
      v31 = 0x72616C756C6C6563;
    }

    if (a2)
    {
      v32 = 0xE900000000000061;
    }

    else
    {
      v32 = 0xE800000000000000;
    }

    v33 = sub_2702D949C(v31, v32, v51);

    *(v29 + 4) = v33;
    v34 = &unk_2702DB920;
    *(v29 + 12) = 2080;
    v35 = "RxPktDropExceeded";
    v36 = 0xD000000000000011;
    if (v23 == 5)
    {
      v37 = 0xD000000000000011;
    }

    else
    {
      v37 = 0xD000000000000018;
    }

    if (v23 != 5)
    {
      v35 = "TxPktDropExceeded";
    }

    v38 = "RxQueueDelayExceeded";
    v39 = 0xD000000000000014;
    if (v23 == 3)
    {
      v36 = 0xD000000000000014;
    }

    else
    {
      v38 = "TxQueueDelayExceeded";
    }

    if (v23 <= 4)
    {
      v35 = v38;
    }

    else
    {
      v36 = v37;
    }

    v40 = "IPv4FragmentationFailure";
    if (v23 == 1)
    {
      v39 = 0xD000000000000018;
    }

    else
    {
      v40 = "IPv6FragmentationFailure";
    }

    if (v23)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0xD000000000000018;
    }

    if (v23)
    {
      v34 = v40;
    }

    if (v23 <= 2)
    {
      v42 = v41;
    }

    else
    {
      v42 = v36;
    }

    if (v23 <= 2)
    {
      v43 = v34;
    }

    else
    {
      v43 = v35;
    }

    v44 = sub_2702D949C(v42, v43 | 0x8000000000000000, v51);

    *(v29 + 14) = v44;
    *(v29 + 22) = 2080;
    v45 = sub_2702D949C(v49, v22, v51);

    *(v29 + 24) = v45;
    _os_log_impl(&dword_2702C7000, v27, v28, "Reporting diagnostics for interface %s: %s due to %s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x27439D570](v30, -1, -1);
    MEMORY[0x27439D570](v29, -1, -1);
  }

  else
  {
  }

  if (qword_2807CD580 != -1)
  {
    swift_once();
  }

  sub_2702D5630(v23);
}

BOOL sub_2702CC944(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x27439D1A0](*(a2 + 40), a1, 4);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void sub_2702CC9F0(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v161 = a2;
  v170 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v159 = &v148[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v160 = &v148[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v153 = &v148[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v156 = &v148[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v148[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v148[-v17];
  v19 = sub_2702DA4BC();
  v20 = *(v19 - 8);
  v162 = v19;
  v163 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v155 = &v148[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v157 = &v148[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v148[-v26];
  MEMORY[0x28223BE20](v25);
  v154 = &v148[-v28];
  v29 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v148[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v158 = &v148[-v34];
  v164 = *a1;
  keyExistsAndHasValidFormat[0] = 0;
  v35 = sub_2702DA55C();
  v36 = *MEMORY[0x277CBF028];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v35, *MEMORY[0x277CBF028], keyExistsAndHasValidFormat);

  if (!keyExistsAndHasValidFormat[0] || AppBooleanValue)
  {
    keyExistsAndHasValidFormat[0] = 0;
    v38 = sub_2702DA55C();
    AppIntegerValue = CFPreferencesGetAppIntegerValue(v38, v36, keyExistsAndHasValidFormat);

    if (keyExistsAndHasValidFormat[0])
    {
      v40 = AppIntegerValue;
    }

    else
    {
      v40 = 7200.0;
    }

    swift_beginAccess();
    v41 = *(v3 + 32);
    if (!*(v41 + 16))
    {
      goto LABEL_31;
    }

    v42 = sub_2702CE94C(v164);
    if ((v43 & 1) == 0)
    {
      goto LABEL_31;
    }

    sub_2702D2F24(*(v41 + 56) + *(v30 + 72) * v42, v33, type metadata accessor for PushHeuristics.DisconnectionInfo);
    v44 = v158;
    sub_2702D2F8C(v33, v158, type metadata accessor for PushHeuristics.DisconnectionInfo);
    v45 = &v44[*(v29 + 20)];
    if (v45[8] == 255)
    {
      v61 = v44;
    }

    else
    {
      v152 = v45[8];
      v46 = *v45;
      sub_2702D3850(v44, v18, &qword_2807CD5C0, &unk_2702DACB0);
      v47 = v162;
      v48 = v163;
      v49 = *(v163 + 48);
      if (v49(v18, 1, v162) == 1)
      {
        sub_2702D2FF4(v44, type metadata accessor for PushHeuristics.DisconnectionInfo);
        sub_2702D38B8(v18, &qword_2807CD5C0, &unk_2702DACB0);
        goto LABEL_31;
      }

      v151 = *(v48 + 32);
      v151(v154, v18, v47);
      v167 = v46;
      v62 = v152;
      LOBYTE(v168) = v152;
      sub_2702CE4D8(v46, v152);
      v64 = sub_2702D336C(&v167);
      if (v64)
      {
        v149 = v63;
        v150 = v46;
        v65 = v3 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_timeProvider;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v66 = *(v65 + 8);
          ObjectType = swift_getObjectType();
          (*(v66 + 8))(ObjectType, v66);
          swift_unknownObjectRelease();
          v69 = v162;
          v68 = v163;
          (*(v163 + 56))(v16, 0, 1, v162);
          v151(v27, v16, v69);
          v70 = v68;
        }

        else
        {
          v69 = v162;
          v70 = v163;
          (*(v163 + 56))(v16, 1, 1, v162);
          sub_2702DA4AC();
          if (v49(v16, 1, v69) != 1)
          {
            sub_2702D38B8(v16, &qword_2807CD5C0, &unk_2702DACB0);
          }
        }

        v71 = v154;
        sub_2702DA47C();
        v73 = v72;
        v74 = *(v70 + 8);
        v74(v27, v69);
        if (v73 <= v40)
        {
          v167 = 0;
          v168 = 0xE000000000000000;
          sub_2702DA68C();
          MEMORY[0x27439D000](0xD000000000000027, 0x80000002702DBC80);
          if (v149)
          {
            v133 = -1;
          }

          else
          {
            v133 = HIDWORD(v64);
          }

          LODWORD(v165) = v133;
          v134 = sub_2702DA6FC();
          MEMORY[0x27439D000](v134);

          MEMORY[0x27439D000](0xD000000000000013, 0x80000002702DBCB0);
          sub_2702CE480();
          v135 = sub_2702DA6FC();
          MEMORY[0x27439D000](v135);

          v136 = v69;
          v137 = v71;
          v59 = v167;
          v58 = v168;
          v138 = sub_2702DA4CC();
          v139 = sub_2702DA5EC();
          if (os_log_type_enabled(v138, v139))
          {
            v140 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            v167 = v141;
            *v140 = 136315394;
            *(v140 + 4) = sub_2702D949C(0xD000000000000014, 0x80000002702DBBF0, &v167);
            *(v140 + 12) = 2080;
            if (v164)
            {
              v142 = 0x72666E4969666977;
            }

            else
            {
              v142 = 0x72616C756C6C6563;
            }

            if (v164)
            {
              v143 = 0xE900000000000061;
            }

            else
            {
              v143 = 0xE800000000000000;
            }

            v144 = sub_2702D949C(v142, v143, &v167);

            *(v140 + 14) = v144;
            _os_log_impl(&dword_2702C7000, v138, v139, "%s interface=%s regression", v140, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x27439D570](v141, -1, -1);
            MEMORY[0x27439D570](v140, -1, -1);
            sub_2702CE4FC(v150, v152);

            v145 = v154;
            v146 = v162;
          }

          else
          {
            sub_2702CE4FC(v150, v152);

            v145 = v137;
            v146 = v136;
          }

          v74(v145, v146);
          sub_2702D2FF4(v158, type metadata accessor for PushHeuristics.DisconnectionInfo);
          goto LABEL_84;
        }

        sub_2702CE4FC(v150, v152);
        v74(v71, v69);
      }

      else
      {
        sub_2702CE4FC(v46, v62);
        (*(v48 + 8))(v154, v162);
      }

      v61 = v158;
    }

    sub_2702D2FF4(v61, type metadata accessor for PushHeuristics.DisconnectionInfo);
LABEL_31:
    v75 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_excessiveFailuresTimestamp;
    swift_beginAccess();
    v76 = *(v3 + v75);
    v78 = v162;
    v77 = v163;
    LODWORD(v79) = v164;
    if (!*(v76 + 16) || (v80 = sub_2702CE94C(v164), (v81 & 1) == 0))
    {
LABEL_39:
      LOBYTE(v165) = v79;
      if (sub_2702CA408(&v165))
      {
        LOBYTE(v165) = v79;
        v94 = sub_2702CA6A4(&v165);
        v96 = v95;
        v97 = sub_2702DA4CC();
        v98 = sub_2702DA5EC();
        v99 = os_log_type_enabled(v97, v98);
        v158 = v94;
        if (v99)
        {
          v100 = swift_slowAlloc();
          v157 = v96;
          v101 = v94;
          v102 = v100;
          v103 = swift_slowAlloc();
          v165 = v103;
          *v102 = 136315650;
          *(v102 + 4) = sub_2702D949C(0xD000000000000014, 0x80000002702DBBF0, &v165);
          *(v102 + 12) = 2080;
          if (v79)
          {
            v104 = 0x72666E4969666977;
          }

          else
          {
            v104 = 0x72616C756C6C6563;
          }

          if (v79)
          {
            v79 = 0xE900000000000061;
          }

          else
          {
            v79 = 0xE800000000000000;
          }

          v105 = sub_2702D949C(v104, v79, &v165);
          LOBYTE(v79) = v164;

          *(v102 + 14) = v105;
          *(v102 + 22) = 2080;
          v106 = v101;
          v96 = v157;
          *(v102 + 24) = sub_2702D949C(v106, v157, &v165);
          _os_log_impl(&dword_2702C7000, v97, v98, "%s interface=%s had too-many failures: %s", v102, 0x20u);
          swift_arrayDestroy();
          v107 = v103;
          v78 = v162;
          MEMORY[0x27439D570](v107, -1, -1);
          MEMORY[0x27439D570](v102, -1, -1);
        }

        v108 = v160;
        v109 = v3 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_timeProvider;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v110 = *(v109 + 8);
          v111 = swift_getObjectType();
          v112 = v159;
          (*(v110 + 8))(v111, v110);
          swift_unknownObjectRelease();
          v113 = v163;
          v114 = *(v163 + 56);
          v114(v112, 0, 1, v78);
          (*(v113 + 32))(v108, v112, v78);
        }

        else
        {
          v122 = v163;
          v114 = *(v163 + 56);
          v123 = v159;
          v114(v159, 1, 1, v78);
          sub_2702DA4AC();
          if ((*(v122 + 48))(v123, 1, v78) != 1)
          {
            sub_2702D38B8(v123, &qword_2807CD5C0, &unk_2702DACB0);
          }
        }

        v57 = 1;
        v114(v108, 0, 1, v78);
        swift_beginAccess();
        sub_2702C9004(v108, v79);
        swift_endAccess();
        v165 = 0;
        v166 = 0xE000000000000000;
        sub_2702DA68C();

        v165 = 0xD00000000000001BLL;
        v166 = 0x80000002702DBC10;
        MEMORY[0x27439D000](v158, v96);

        MEMORY[0x27439D000](93, 0xE100000000000000);
        v59 = v165;
        v58 = v166;
        v60 = 2;
      }

      else
      {
        v115 = sub_2702DA4CC();
        v116 = sub_2702DA5FC();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v165 = v118;
          *v117 = 136315394;
          *(v117 + 4) = sub_2702D949C(0xD000000000000014, 0x80000002702DBBF0, &v165);
          *(v117 + 12) = 2080;
          if (v79)
          {
            v119 = 0x72666E4969666977;
          }

          else
          {
            v119 = 0x72616C756C6C6563;
          }

          if (v79)
          {
            v120 = 0xE900000000000061;
          }

          else
          {
            v120 = 0xE800000000000000;
          }

          v121 = sub_2702D949C(v119, v120, &v165);

          *(v117 + 14) = v121;
          _os_log_impl(&dword_2702C7000, v115, v116, "%s interface=%s offload-recommended", v117, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x27439D570](v118, -1, -1);
          MEMORY[0x27439D570](v117, -1, -1);
        }

        v57 = 0;
        v59 = 0;
        v60 = 3;
        v58 = 0xE000000000000000;
      }

      goto LABEL_85;
    }

    v82 = v157;
    (*(v77 + 16))(v157, *(v76 + 56) + *(v77 + 72) * v80, v78);
    v83 = v3 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_timeProvider;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v84 = *(v83 + 8);
      v85 = swift_getObjectType();
      v86 = v156;
      (*(v84 + 8))(v85, v84);
      swift_unknownObjectRelease();
      v87 = *(v77 + 56);
      v87(v86, 0, 1, v78);
      v88 = v155;
      (*(v77 + 32))(v155, v86, v78);
    }

    else
    {
      v87 = *(v77 + 56);
      v89 = v156;
      v87(v156, 1, 1, v78);
      v88 = v155;
      sub_2702DA4AC();
      if ((*(v77 + 48))(v89, 1, v78) != 1)
      {
        sub_2702D38B8(v89, &qword_2807CD5C0, &unk_2702DACB0);
      }
    }

    sub_2702DA47C();
    v91 = v90;
    v92 = *(v77 + 8);
    v92(v88, v78);
    if (v91 > v40)
    {
      v93 = v153;
      v87(v153, 1, 1, v78);
      swift_beginAccess();
      sub_2702C9004(v93, v79);
      swift_endAccess();
      v92(v82, v78);
      goto LABEL_39;
    }

    v165 = 0;
    v166 = 0xE000000000000000;
    sub_2702DA68C();
    MEMORY[0x27439D000](0xD000000000000040, 0x80000002702DBC30);
    sub_2702CE480();
    v124 = sub_2702DA6FC();
    MEMORY[0x27439D000](v124);

    v125 = v78;
    v59 = v165;
    v58 = v166;
    v126 = sub_2702DA4CC();
    v127 = sub_2702DA5EC();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v165 = v129;
      *v128 = 136315394;
      *(v128 + 4) = sub_2702D949C(0xD000000000000014, 0x80000002702DBBF0, &v165);
      *(v128 + 12) = 2080;
      if (v164)
      {
        v130 = 0x72666E4969666977;
      }

      else
      {
        v130 = 0x72616C756C6C6563;
      }

      if (v164)
      {
        v131 = 0xE900000000000061;
      }

      else
      {
        v131 = 0xE800000000000000;
      }

      v132 = sub_2702D949C(v130, v131, &v165);

      *(v128 + 14) = v132;
      _os_log_impl(&dword_2702C7000, v126, v127, "%s interface=%s excessive failures latched", v128, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x27439D570](v129, -1, -1);
      MEMORY[0x27439D570](v128, -1, -1);

      v92(v157, v162);
    }

    else
    {

      v92(v82, v125);
    }

LABEL_84:
    v57 = 1;
    v60 = 1;
    goto LABEL_85;
  }

  v50 = sub_2702DA4CC();
  v51 = sub_2702DA5FC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *keyExistsAndHasValidFormat = v53;
    *v52 = 136315394;
    *(v52 + 4) = sub_2702D949C(0xD000000000000014, 0x80000002702DBBF0, keyExistsAndHasValidFormat);
    *(v52 + 12) = 2080;
    if (v164)
    {
      v54 = 0x72666E4969666977;
    }

    else
    {
      v54 = 0x72616C756C6C6563;
    }

    if (v164)
    {
      v55 = 0xE900000000000061;
    }

    else
    {
      v55 = 0xE800000000000000;
    }

    v56 = sub_2702D949C(v54, v55, keyExistsAndHasValidFormat);

    *(v52 + 14) = v56;
    _os_log_impl(&dword_2702C7000, v50, v51, "%s interface=%s heuristics not enabled", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x27439D570](v53, -1, -1);
    MEMORY[0x27439D570](v52, -1, -1);
  }

  v57 = 0;
  v58 = 0x80000002702DBCD0;
  v59 = 0xD000000000000016;
  v60 = 3;
LABEL_85:
  v147 = v161;
  *v161 = v57;
  *(v147 + 1) = v59;
  *(v147 + 2) = v58;
  v147[24] = v60;
}

uint64_t sub_2702CDD7C()
{

  v1 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_log;
  v2 = sub_2702DA4EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2702D2EFC(v0 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14PushHeuristics_timeProvider);

  return swift_deallocClassInstance();
}

uint64_t sub_2702CDE88(uint64_t a1)
{
  result = sub_2702DA4EC();
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

uint64_t getEnumTagSinglePayload for PushHeuristics.OffloadState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PushHeuristics.OffloadState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2702CE0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 <= 2)
    {
      return 0;
    }

    else
    {
      return v10 ^ 0xFF;
    }
  }
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

uint64_t sub_2702CE1F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = ~a2;
  }

  return result;
}

void sub_2702CE2DC(uint64_t a1)
{
  sub_2702CE360(319);
  if (v1 <= 0x3F)
  {
    sub_2702CE3B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2702CE360(uint64_t a1)
{
  if (!qword_2807CD5D8)
  {
    sub_2702DA4BC();
    v1 = sub_2702DA60C();
    if (!v2)
    {
      atomic_store(v1, &qword_2807CD5D8);
    }
  }
}

void sub_2702CE3B8()
{
  if (!qword_2807CD5E0)
  {
    v0 = sub_2702DA60C();
    if (!v1)
    {
      atomic_store(v0, &qword_2807CD5E0);
    }
  }
}

unint64_t sub_2702CE42C()
{
  result = qword_2807CD5E8;
  if (!qword_2807CD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CD5E8);
  }

  return result;
}

unint64_t sub_2702CE480()
{
  result = qword_2807CD5F0;
  if (!qword_2807CD5F0)
  {
    sub_2702DA4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CD5F0);
  }

  return result;
}

void sub_2702CE4D8(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    sub_2702CE4EC(result, a2);
  }
}

void sub_2702CE4EC(uint64_t a1, char a2)
{
  if (!a2)
  {
    JUMPOUT(0x27439D480);
  }
}

void sub_2702CE4FC(id result, char a2)
{
  if (a2 != -1)
  {
    sub_2702CE510(result, a2);
  }
}

void sub_2702CE510(id a1, char a2)
{
  if (!a2)
  {
  }
}

void *sub_2702CE520(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD618, &qword_2702DAE00);
  v10 = *(type metadata accessor for PushTelemetry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PushTelemetry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2702CE6F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD650, &qword_2702DAE38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_2702CE814(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD690, &qword_2702DAE78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_2702CE918@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_2702CE94C(char a1)
{
  sub_2702DA74C();
  MEMORY[0x27439D1C0](a1 & 1);
  v2 = sub_2702DA76C();
  return sub_2702CEB44(a1 & 1, v2);
}

uint64_t sub_2702CE9B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2702CEA1C(uint64_t a1)
{
  v1 = a1;
  sub_2702DA74C();
  MEMORY[0x27439D1C0](v1);
  v2 = sub_2702DA76C();

  return sub_2702CEBB4(v1, v2);
}

unint64_t sub_2702CEA88(uint64_t a1)
{
  v2 = sub_2702DA62C();

  return sub_2702CEC24(a1, v2);
}

unint64_t sub_2702CEACC(uint64_t a1, uint64_t a2)
{
  sub_2702DA74C();
  sub_2702DA58C();
  v4 = sub_2702DA76C();

  return sub_2702CECEC(a1, a2, v4);
}

unint64_t sub_2702CEB44(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2702CEBB4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2702CEC24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2702D3980(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x27439D0A0](v9, a1);
      sub_2702D39DC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2702CECEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2702DA70C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2702CEDA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD640, &qword_2702DAE28);
  v30 = v4;
  result = sub_2702DA6CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_2702DA74C();
      MEMORY[0x27439D1C0](v20);
      result = sub_2702DA76C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2702CF034(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v32 = v6;
  result = sub_2702DA6CC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
      }

      sub_2702DA74C();
      MEMORY[0x27439D1C0](v22);
      result = sub_2702DA76C();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2702CF2BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v43 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v42 = &v39 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v41 = v10;
  result = sub_2702DA6CC();
  v15 = result;
  if (*(v13 + 16))
  {
    v39 = v6;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(*(v13 + 48) + v27);
      v29 = *(v40 + 72);
      v30 = *(v13 + 56) + v29 * v27;
      if (v41)
      {
        sub_2702D2F8C(v30, v42, v43);
      }

      else
      {
        sub_2702D2F24(v30, v42, v43);
      }

      sub_2702DA74C();
      MEMORY[0x27439D1C0](v28);
      result = sub_2702DA76C();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v15 + 48) + v23) = v28;
      result = sub_2702D2F8C(v42, *(v15 + 56) + v29 * v23, v43);
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v9 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v9 = v39;
    if (v38 >= 64)
    {
      bzero((v13 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

uint64_t sub_2702CF5E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD648, &qword_2702DAE30);
  v30 = v4;
  result = sub_2702DA6CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_2702DA74C();
      MEMORY[0x27439D1C0](v20);
      result = sub_2702DA76C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2702CF870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_2702DA4BC();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD630, &qword_2702DAE18);
  v39 = v4;
  result = sub_2702DA6CC();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_2702DA74C();
      MEMORY[0x27439D1C0](v24);
      result = sub_2702DA76C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2702CFBD4(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_2702D2F8C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
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

uint64_t sub_2702CFC80(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = sub_2702DA4BC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2702CFD30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2702DA61C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_2702DA74C();
      MEMORY[0x27439D1C0](v9);
      result = sub_2702DA76C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2702CFEC4(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_2702DA61C() + 1) & ~v6;
    while (1)
    {
      v11 = *(*(a2 + 48) + v7);
      sub_2702DA74C();
      MEMORY[0x27439D1C0](v11);
      result = sub_2702DA76C();
      v12 = result & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + v4);
      v15 = (v13 + v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2702D009C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2702CE94C(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for PushHeuristics.COSEntry(0);
        return sub_2702D3918(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for PushHeuristics.COSEntry);
      }

      return sub_2702CFBD4(v10, a2 & 1, a1, v16, type metadata accessor for PushHeuristics.COSEntry, type metadata accessor for PushHeuristics.COSEntry);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2702D0B00(type metadata accessor for PushHeuristics.COSEntry, &qword_2807CD678, &qword_2702DAE60, type metadata accessor for PushHeuristics.COSEntry);
      goto LABEL_7;
    }

    sub_2702CF2BC(v13, a3 & 1, type metadata accessor for PushHeuristics.COSEntry, &qword_2807CD678, &qword_2702DAE60, type metadata accessor for PushHeuristics.COSEntry);
    v20 = sub_2702CE94C(a2 & 1);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_2702CFBD4(v10, a2 & 1, a1, v16, type metadata accessor for PushHeuristics.COSEntry, type metadata accessor for PushHeuristics.COSEntry);
    }
  }

  result = sub_2702DA72C();
  __break(1u);
  return result;
}

unint64_t sub_2702D0268(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_2702CE94C(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2702CEDA4(v14, a3 & 1);
      result = sub_2702CE94C(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_2702DA72C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2702D0858();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_2702D03B4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_2702CE94C(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2702CF034(v14, a3 & 1, &qword_2807CD610, &qword_2702DB1F0);
      result = sub_2702CE94C(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_2702DA72C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2702D09B4(&qword_2807CD610, &qword_2702DB1F0);
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_2702D0524(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2702CE94C(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
        return sub_2702D3918(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for PushHeuristics.DisconnectionInfo);
      }

      return sub_2702CFBD4(v10, a2 & 1, a1, v16, type metadata accessor for PushHeuristics.DisconnectionInfo, type metadata accessor for PushHeuristics.DisconnectionInfo);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2702D0B00(type metadata accessor for PushHeuristics.DisconnectionInfo, &qword_2807CD688, &qword_2702DAE70, type metadata accessor for PushHeuristics.DisconnectionInfo);
      goto LABEL_7;
    }

    sub_2702CF2BC(v13, a3 & 1, type metadata accessor for PushHeuristics.DisconnectionInfo, &qword_2807CD688, &qword_2702DAE70, type metadata accessor for PushHeuristics.DisconnectionInfo);
    v20 = sub_2702CE94C(a2 & 1);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_2702CFBD4(v10, a2 & 1, a1, v16, type metadata accessor for PushHeuristics.DisconnectionInfo, type metadata accessor for PushHeuristics.DisconnectionInfo);
    }
  }

  result = sub_2702DA72C();
  __break(1u);
  return result;
}

uint64_t sub_2702D06F0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2702CE94C(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2702D0E88();
      goto LABEL_7;
    }

    sub_2702CF870(v13, a3 & 1);
    v24 = sub_2702CE94C(a2 & 1);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2702DA72C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_2702DA4BC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_2702CFC80(v10, a2 & 1, a1, v16);
}

void *sub_2702D0858()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD640, &qword_2702DAE28);
  v2 = *v0;
  v3 = sub_2702DA6BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_2702D09B4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2702DA6BC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2702D0B00(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v7 = v4;
  v8 = a1(0);
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v32 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_2702DA6BC();
  v12 = v11;
  if (*(v10 + 16))
  {
    v33 = v7;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = *(*(v10 + 48) + v26);
        v28 = v34;
        v29 = *(v35 + 72) * v26;
        v30 = v36;
        sub_2702D2F24(*(v10 + 56) + v29, v34, v36);
        v31 = v37;
        *(*(v37 + 48) + v26) = v27;
        result = sub_2702D2F8C(v28, *(v31 + 56) + v29, v30);
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v7 = v33;
        v12 = v37;
        goto LABEL_21;
      }

      v25 = *(v10 + 64 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void *sub_2702D0D2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD648, &qword_2702DAE30);
  v2 = *v0;
  v3 = sub_2702DA6BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_2702D0E88()
{
  v1 = v0;
  v29 = sub_2702DA4BC();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD630, &qword_2702DAE18);
  v3 = *v0;
  v4 = sub_2702DA6BC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_2702D10F4(uint64_t *a1)
{
  v2 = *(type metadata accessor for PushTelemetry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2702D2BC8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2702D119C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2702D119C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2702DA6EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PushTelemetry(0);
        v6 = sub_2702DA5BC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PushTelemetry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2702D1504(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2702D12C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2702D12C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for PushTelemetry(0);
  v8 = MEMORY[0x28223BE20](v34);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_2702D2F24(v23, v17, type metadata accessor for PushTelemetry);
      sub_2702D2F24(v20, v13, type metadata accessor for PushTelemetry);
      v24 = sub_2702DA49C();
      sub_2702D2FF4(v13, type metadata accessor for PushTelemetry);
      result = sub_2702D2FF4(v17, type metadata accessor for PushTelemetry);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_2702D2F8C(v23, v10, type metadata accessor for PushTelemetry);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2702D2F8C(v10, v20, type metadata accessor for PushTelemetry);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2702D1504(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v100 = a1;
  v112 = type metadata accessor for PushTelemetry(0);
  v108 = *(v112 - 8);
  v9 = MEMORY[0x28223BE20](v112);
  v102 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v111 = &v97 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v97 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v97 - v17;
  v110 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_2702D2368(a4);
    }

    v113 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v110)
      {
        v93 = *(result + 16 * a4);
        v94 = result;
        v95 = *(result + 16 * (a4 - 1) + 40);
        sub_2702D1DF0(*v110 + *(v108 + 72) * v93, *v110 + *(v108 + 72) * *(result + 16 * (a4 - 1) + 32), *v110 + *(v108 + 72) * v95, v5);
        if (v6)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_2702D2368(v94);
        }

        if (a4 - 2 >= *(v94 + 2))
        {
          goto LABEL_123;
        }

        v96 = &v94[16 * a4];
        *v96 = v93;
        *(v96 + 1) = v95;
        v113 = v94;
        sub_2702D22DC(a4 - 1);
        result = v113;
        a4 = *(v113 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v99 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v103 = v21;
    if (v23 >= v19)
    {
      v29 = v23;
    }

    else
    {
      v24 = *(v108 + 72);
      v5 = *v110 + v24 * v23;
      v106 = *v110;
      v25 = v106;
      sub_2702D2F24(v106 + v24 * v23, v18, type metadata accessor for PushTelemetry);
      sub_2702D2F24(v25 + v24 * v22, v15, type metadata accessor for PushTelemetry);
      LODWORD(v107) = sub_2702DA49C();
      sub_2702D2FF4(v15, type metadata accessor for PushTelemetry);
      result = sub_2702D2FF4(v18, type metadata accessor for PushTelemetry);
      v98 = v22;
      v26 = v22 + 2;
      v109 = v24;
      v27 = v106 + v24 * (v22 + 2);
      while (v19 != v26)
      {
        sub_2702D2F24(v27, v18, type metadata accessor for PushTelemetry);
        sub_2702D2F24(v5, v15, type metadata accessor for PushTelemetry);
        v28 = sub_2702DA49C() & 1;
        sub_2702D2FF4(v15, type metadata accessor for PushTelemetry);
        result = sub_2702D2FF4(v18, type metadata accessor for PushTelemetry);
        ++v26;
        v27 += v109;
        v5 += v109;
        if ((v107 & 1) != v28)
        {
          v29 = v26 - 1;
          goto LABEL_11;
        }
      }

      v29 = v19;
LABEL_11:
      v22 = v98;
      a4 = v99;
      if (v107)
      {
        if (v29 < v98)
        {
          goto LABEL_126;
        }

        if (v98 < v29)
        {
          v97 = v6;
          v30 = v109 * (v29 - 1);
          v31 = v29 * v109;
          v107 = v29;
          v32 = v29;
          v33 = v98;
          v34 = v98 * v109;
          do
          {
            if (v33 != --v32)
            {
              v35 = *v110;
              if (!*v110)
              {
                goto LABEL_132;
              }

              v5 = v35 + v34;
              sub_2702D2F8C(v35 + v34, v102, type metadata accessor for PushTelemetry);
              if (v34 < v30 || v5 >= v35 + v31)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v34 != v30)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2702D2F8C(v102, v35 + v30, type metadata accessor for PushTelemetry);
            }

            ++v33;
            v30 -= v109;
            v31 -= v109;
            v34 += v109;
          }

          while (v33 < v32);
          v6 = v97;
          v22 = v98;
          a4 = v99;
          v29 = v107;
        }
      }
    }

    v36 = v110[1];
    if (v29 < v36)
    {
      if (__OFSUB__(v29, v22))
      {
        goto LABEL_125;
      }

      if (v29 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v36)
        {
          v37 = v110[1];
        }

        else
        {
          v37 = v22 + a4;
        }

        if (v37 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v29 != v37)
        {
          break;
        }
      }
    }

    v38 = v29;
    if (v29 < v22)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v103;
    }

    else
    {
      result = sub_2702CE814(0, *(v103 + 2) + 1, 1, v103);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v39 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v39 >> 1)
    {
      result = sub_2702CE814((v39 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v40 = &v21[16 * a4];
    *(v40 + 4) = v22;
    *(v40 + 5) = v38;
    v41 = *v100;
    if (!*v100)
    {
      goto LABEL_134;
    }

    v104 = v38;
    if (a4)
    {
      while (1)
      {
        v42 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v43 = *(v21 + 4);
          v44 = *(v21 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_54:
          if (v46)
          {
            goto LABEL_113;
          }

          v59 = &v21[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_116;
          }

          v65 = &v21[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_120;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v69 = &v21[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_68:
        if (v64)
        {
          goto LABEL_115;
        }

        v72 = &v21[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_118;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v42 - 1;
        if (v42 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_128;
        }

        if (!*v110)
        {
          goto LABEL_131;
        }

        v80 = v21;
        v81 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v42 + 40];
        sub_2702D1DF0(*v110 + *(v108 + 72) * v81, *v110 + *(v108 + 72) * *&v21[16 * v42 + 32], *v110 + *(v108 + 72) * v5, v41);
        if (v6)
        {
        }

        if (v5 < v81)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_2702D2368(v80);
        }

        if (a4 >= *(v80 + 2))
        {
          goto LABEL_110;
        }

        v82 = &v80[16 * a4];
        *(v82 + 4) = v81;
        *(v82 + 5) = v5;
        v113 = v80;
        result = sub_2702D22DC(v42);
        v21 = v113;
        v5 = *(v113 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v21[16 * v5 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_111;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_112;
      }

      v54 = &v21[16 * v5];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_114;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_117;
      }

      if (v58 >= v50)
      {
        v76 = &v21[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_121;
        }

        if (v45 < v79)
        {
          v42 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v19 = v110[1];
    v20 = v104;
    a4 = v99;
    if (v104 >= v19)
    {
      goto LABEL_96;
    }
  }

  v97 = v6;
  v98 = v22;
  v83 = *v110;
  v84 = *(v108 + 72);
  v85 = *v110 + v84 * (v29 - 1);
  v86 = -v84;
  v87 = v22 - v29;
  v101 = v84;
  v5 = v83 + v29 * v84;
  v104 = v37;
LABEL_86:
  v106 = v87;
  v107 = v29;
  v105 = v5;
  v88 = v87;
  v109 = v85;
  v89 = v85;
  while (1)
  {
    a4 = type metadata accessor for PushTelemetry;
    sub_2702D2F24(v5, v18, type metadata accessor for PushTelemetry);
    sub_2702D2F24(v89, v15, type metadata accessor for PushTelemetry);
    v90 = sub_2702DA49C();
    sub_2702D2FF4(v15, type metadata accessor for PushTelemetry);
    result = sub_2702D2FF4(v18, type metadata accessor for PushTelemetry);
    if ((v90 & 1) == 0)
    {
LABEL_85:
      v29 = v107 + 1;
      v85 = v109 + v101;
      v87 = v106 - 1;
      v38 = v104;
      v5 = v105 + v101;
      if (v107 + 1 != v104)
      {
        goto LABEL_86;
      }

      v6 = v97;
      v22 = v98;
      if (v104 < v98)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v83)
    {
      break;
    }

    a4 = type metadata accessor for PushTelemetry;
    v91 = v111;
    sub_2702D2F8C(v5, v111, type metadata accessor for PushTelemetry);
    swift_arrayInitWithTakeFrontToBack();
    sub_2702D2F8C(v91, v89, type metadata accessor for PushTelemetry);
    v89 += v86;
    v5 += v86;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_2702D1DF0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v40 = type metadata accessor for PushTelemetry(0);
  v8 = MEMORY[0x28223BE20](v40);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v41 = &v34 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v45 = a1;
  v44 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v24 = a4 + v17;
    }

    else
    {
      v22 = -v13;
      v23 = a4 + v17;
      v24 = a4 + v17;
      v37 = a1;
      v38 = a4;
      v36 = -v13;
      do
      {
        v34 = v24;
        v25 = a2 + v22;
        v39 = a2;
        v40 = a2 + v22;
        while (1)
        {
          if (a2 <= a1)
          {
            v45 = a2;
            v43 = v34;
            goto LABEL_59;
          }

          v35 = v24;
          v27 = a3 + v22;
          v28 = v23 + v22;
          v29 = v41;
          sub_2702D2F24(v28, v41, type metadata accessor for PushTelemetry);
          v30 = v25;
          v31 = v42;
          sub_2702D2F24(v30, v42, type metadata accessor for PushTelemetry);
          v32 = sub_2702DA49C();
          sub_2702D2FF4(v31, type metadata accessor for PushTelemetry);
          sub_2702D2FF4(v29, type metadata accessor for PushTelemetry);
          if (v32)
          {
            break;
          }

          v24 = v28;
          if (a3 < v23 || v27 >= v23)
          {
            a3 = v27;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v37;
          }

          else
          {
            v33 = a3 == v23;
            a3 = v27;
            a1 = v37;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v28;
          a2 = v39;
          v26 = v28 > v38;
          v25 = v40;
          v22 = v36;
          if (!v26)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v39 || v27 >= v39)
        {
          a3 = v27;
          a2 = v40;
          swift_arrayInitWithTakeFrontToBack();
          v22 = v36;
          a1 = v37;
          v24 = v35;
        }

        else
        {
          v33 = a3 == v39;
          a3 = v27;
          a2 = v40;
          v22 = v36;
          a1 = v37;
          v24 = v35;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v23 > v38);
    }

LABEL_57:
    v45 = a2;
    v43 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v16;
    v43 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v41;
        sub_2702D2F24(a2, v41, type metadata accessor for PushTelemetry);
        v20 = v42;
        sub_2702D2F24(a4, v42, type metadata accessor for PushTelemetry);
        v21 = sub_2702DA49C();
        sub_2702D2FF4(v20, type metadata accessor for PushTelemetry);
        sub_2702D2FF4(v19, type metadata accessor for PushTelemetry);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v44 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v45 = a1;
      }

      while (a4 < v39 && a2 < a3);
    }
  }

LABEL_59:
  sub_2702D237C(&v45, &v44, &v43);
  return 1;
}

uint64_t sub_2702D22DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2702D2368(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2702D237C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PushTelemetry(0);
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

uint64_t sub_2702D2460(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x27439D1A0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2702D2770(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2702D2548(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD680, &qword_2702DAE68);
  result = sub_2702DA65C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = MEMORY[0x27439D1A0](*(v5 + 40), v17, 4);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2702D2770(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2702D2548(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2702D2894();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2702D29D4(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x27439D1A0](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2702DA71C();
  __break(1u);
  return result;
}

void *sub_2702D2894()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD680, &qword_2702DAE68);
  v2 = *v0;
  v3 = sub_2702DA64C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

uint64_t sub_2702D29D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD680, &qword_2702DAE68);
  result = sub_2702DA65C();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = MEMORY[0x27439D1A0](*(v5 + 40), v16, 4);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

void *sub_2702D2BDC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD618, &qword_2702DAE00);
  v10 = *(type metadata accessor for PushTelemetry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PushTelemetry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2702D2DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for PushTelemetry(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2702D2F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2702D2F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2702D2FF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_2702D3054(unint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 8);
  v8 = sub_2702D317C(&unk_28803C2B0, &qword_2807CD680, &qword_2702DAE68);
  LOBYTE(keyExistsAndHasValidFormat) = 0;
  v3 = sub_2702DA55C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);

  if (!keyExistsAndHasValidFormat || AppBooleanValue)
  {
    sub_2702D2460(&keyExistsAndHasValidFormat, 35);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (HIDWORD(v1))
      {
        __break(1u);
      }

      v5 = sub_2702CC944(v1, v8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

unint64_t sub_2702D317C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2702DA66C();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    v9 = *(v5 + 40);
    v10 = ~(-1 << *(v5 + 32));
    while (1)
    {
      v14 = *(v8 + 4 * v6);
      result = MEMORY[0x27439D1A0](v9, v14, 4);
      v16 = result & v10;
      v17 = (result & v10) >> 6;
      v18 = *(v7 + 8 * v17);
      v19 = 1 << (result & v10);
      v20 = *(v5 + 48);
      if ((v19 & v18) != 0)
      {
        while (*(v20 + 4 * v16) != v14)
        {
          v16 = (v16 + 1) & v10;
          v17 = v16 >> 6;
          v18 = *(v7 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if (((1 << v16) & v18) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v17) = v19 | v18;
        *(v20 + 4 * v16) = v14;
        v11 = *(v5 + 16);
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v13;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

BOOL sub_2702D329C(unsigned int a1)
{
  v2 = sub_2702D317C(&unk_28803C2E0, &qword_2807CD628, &qword_2702DAE10);
  if (*(v2 + 16) && (v3 = v2, v4 = MEMORY[0x27439D1A0](*(v2 + 40), a1, 4), v5 = v3, v6 = v3 + 56, v7 = -1 << *(v3 + 32), v8 = v4 & ~v7, ((*(v3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(v5 + 48) + 4 * v8);
      v11 = v10 == a1;
      if (v10 == a1)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_2702D336C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD620, &qword_2702DAE08);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v26 - v3;
  v5 = sub_2702DA50C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  if (*(a1 + 8))
  {
    goto LABEL_2;
  }

  v14 = *a1;
  v26[0] = v14;
  MEMORY[0x27439D480](v14);
  MEMORY[0x27439D480](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5F8, &qword_2702DADE0);
  v15 = swift_dynamicCast();
  v16 = *(v6 + 56);
  if (v15)
  {
    v16(v4, 0, 1, v5);
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277CD8FB0])
    {
      (*(v6 + 96))(v9, v5);
      v13 = sub_2702DA4FC();
      v12 = sub_2702D329C(v13);
      sub_2702CE510(v14, 0);
      (*(v6 + 8))(v11, v5);
      return v12 | (v13 << 32);
    }

    v17 = *(v6 + 8);
    v17(v11, v5);
    v17(v9, v5);
  }

  else
  {
    v16(v4, 1, 1, v5);
    sub_2702D38B8(v4, &qword_2807CD620, &qword_2702DAE08);
  }

  v18 = sub_2702DA46C();
  v19 = [v18 domain];
  v20 = sub_2702DA56C();
  v22 = v21;

  if (v20 == sub_2702DA56C() && v22 == v23)
  {
  }

  else
  {
    v24 = sub_2702DA70C();

    if ((v24 & 1) == 0)
    {

      sub_2702CE510(v14, 0);
LABEL_2:
      v12 = 0;
      v13 = 0;
      return v12 | (v13 << 32);
    }
  }

  result = [v18 code];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (result <= 0x7FFFFFFF)
    {
      v12 = sub_2702D329C(result);

      sub_2702CE510(v14, 0);
      return v12 | (v13 << 32);
    }
  }

  __break(1u);
  return result;
}

void sub_2702D3748(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >> 5 == 1)
  {
    sub_2702CE4EC(a1, a2 & 0x1F);
  }

  else if (!(a2 >> 5))
  {
    JUMPOUT(0x27439D480);
  }
}

void sub_2702D3768(id a1, unsigned __int8 a2)
{
  if (a2 >> 5 == 1)
  {
    sub_2702CE510(a1, a2 & 0x1F);
  }

  else if (!(a2 >> 5))
  {
  }
}

uint64_t sub_2702D37A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2702D37E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2702D3850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2702D38B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2702D3918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2702D3A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2702DA4BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2702D3B60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2702DA4BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2702D3C18(uint64_t a1)
{
  result = sub_2702DA4BC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RunningAverageEMA(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2702D3CA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_2702DA4BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v24[-v13];
  v15 = a2;
  if (*(v2 + 40) == 1)
  {
    *(v2 + 32) = v15;
    *(v2 + 40) = 0;
    (*(v6 + 16))(&v24[-v13], a1, v5);
    (*(v6 + 56))(v14, 0, 1, v5);
    v16 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_lastUpdateTime;
    swift_beginAccess();
    sub_2702D37E0(v14, v2 + v16);
    return swift_endAccess();
  }

  else
  {
    v18 = *(v2 + 32);
    v19 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_lastUpdateTime;
    swift_beginAccess();
    sub_2702D4158(v2 + v19, v12);
    if ((*(v6 + 48))(v12, 1, v5) == 1)
    {
      return sub_2702D41C8(v12);
    }

    else
    {
      (*(v6 + 32))(v8, v12, v5);
      sub_2702DA47C();
      v21 = v20 / *(v2 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_timeUnit);
      (*(v6 + 16))(v14, a1, v5);
      (*(v6 + 56))(v14, 0, 1, v5);
      swift_beginAccess();
      sub_2702D37E0(v14, v2 + v19);
      swift_endAccess();
      if (*(v2 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_useEventRateNormalization) == 1)
      {
        v22 = 1.0;
        if (v21 > 1.0)
        {
          v22 = v21;
        }

        v15 = v15 / v22;
      }

      v23 = pow(1.0 - *(v2 + 24), v21);
      result = (*(v6 + 8))(v8, v5);
      *(v2 + 32) = v15 * (1.0 - v23) + v18 * (1.0 - (1.0 - v23));
      *(v2 + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_2702D3FE8()
{
  sub_2702D41C8(v0 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_lastUpdateTime);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RunningAverageEMA(uint64_t a1)
{
  result = qword_2807CD6C0;
  if (!qword_2807CD6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2702D40A0(uint64_t a1)
{
  sub_2702CE360(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2702D4158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2702D41C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2702D4230()
{
  type metadata accessor for ULPNHeuristicsDiagnostics(0);
  swift_allocObject();
  result = sub_2702D4270();
  qword_2807CE1E0 = result;
  return result;
}

uint64_t sub_2702D4270()
{
  v1 = v0;
  v2 = sub_2702DA4EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSuccessfulReportTimestamp;
  v7 = sub_2702DA4BC();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v8(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSnapshotFailureTimestamp, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_minimumSuccessReportInterval) = 0x40AC200000000000;
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_minimumSnapshotFailureRetryInterval) = 0x4082C00000000000;
  v9 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_diagnosticReporter) = v9;
  *(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_isDiagnosticsEnabled) = 1;
  v10 = [objc_opt_self() processInfo];
  v11 = [v10 processName];

  v12 = sub_2702DA56C();
  v14 = v13;

  v16[0] = 0x6C7070612E6D6F63;
  v16[1] = 0xEA00000000002E65;
  MEMORY[0x27439D000](v12, v14);

  sub_2702DA4DC();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_log, v5, v2);
  sub_2702D5070();
  return v1;
}

uint64_t sub_2702D44D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD728, &unk_2702DAFC0);
    v2 = sub_2702DA6DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2702D660C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2702D6668(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2702D6668(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2702D6668(v31, v32);
    result = sub_2702DA62C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2702D6668(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_2702D47A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  if (a1)
  {
    v7 = sub_2702D4D04(a1);
    if (v7)
    {
      v8 = v7;
      v9 = sub_2702DA56C();
      if (*(v8 + 16))
      {
        v11 = sub_2702CEACC(v9, v10);
        v13 = v12;

        if (v13)
        {
          sub_2702D660C(*(v8 + 56) + 32 * v11, v42);

          if (swift_dynamicCast())
          {
            if (v41)
            {
              sub_2702DA4AC();
              v14 = sub_2702DA4BC();
              (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
              v15 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSuccessfulReportTimestamp;
              swift_beginAccess();
              sub_2702D37E0(v6, a2 + v15);
              swift_endAccess();

              v16 = sub_2702DA4CC();
              v17 = sub_2702DA5DC();

              if (os_log_type_enabled(v16, v17))
              {
                v18 = swift_slowAlloc();
                v40 = swift_slowAlloc();
                v42[0] = v40;
                *v18 = 136315138;
                sub_2702D4158(a2 + v15, v6);
                v19 = sub_2702D540C(v6);
                v21 = v20;
                sub_2702D38B8(v6, &qword_2807CD5C0, &unk_2702DACB0);
                v22 = sub_2702D949C(v19, v21, v42);

                *(v18 + 4) = v22;
                _os_log_impl(&dword_2702C7000, v16, v17, "Diagnostic response successful at %s", v18, 0xCu);
                v23 = v40;
                __swift_destroy_boxed_opaque_existential_0(v40);
                MEMORY[0x27439D570](v23, -1, -1);
                MEMORY[0x27439D570](v18, -1, -1);
              }
            }

            else
            {
              v35 = sub_2702DA4CC();
              v36 = sub_2702DA5EC();
              if (os_log_type_enabled(v35, v36))
              {
                v37 = swift_slowAlloc();
                *v37 = 0;
                _os_log_impl(&dword_2702C7000, v35, v36, "Diagnostic response indicated failure", v37, 2u);
                MEMORY[0x27439D570](v37, -1, -1);
              }

              sub_2702DA4AC();
              v38 = sub_2702DA4BC();
              (*(*(v38 - 8) + 56))(v6, 0, 1, v38);
              v39 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSnapshotFailureTimestamp;
              swift_beginAccess();
              sub_2702D37E0(v6, a2 + v39);
              swift_endAccess();
            }
          }

          goto LABEL_17;
        }
      }

      else
      {
      }
    }

LABEL_17:
    v27 = sub_2702DA54C();
    v29 = v28;
    v30 = sub_2702DA4CC();
    v31 = sub_2702DA5DC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42[0] = v33;
      *v32 = 136315138;
      v34 = sub_2702D949C(v27, v29, v42);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_2702C7000, v30, v31, "Diagnostic response received: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x27439D570](v33, -1, -1);
      MEMORY[0x27439D570](v32, -1, -1);
    }

    else
    {
    }

    return;
  }

  v40 = sub_2702DA4CC();
  v24 = sub_2702DA5DC();
  if (os_log_type_enabled(v40, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2702C7000, v40, v24, "Diagnostic snapshot completed with no response data", v25, 2u);
    MEMORY[0x27439D570](v25, -1, -1);
  }

  v26 = v40;
}

unint64_t sub_2702D4D04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD718, &qword_2702DAFB0);
    v2 = sub_2702DA6DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_2702D3980(*(a1 + 48) + 40 * v12, v27);
        sub_2702D660C(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_2702D3980(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2702D660C(v25 + 8, v20);
        sub_2702D38B8(v24, &qword_2807CD720, &qword_2702DAFB8);
        v21 = v18;
        sub_2702D6668(v20, v22);
        v13 = v21;
        sub_2702D6668(v22, v23);
        sub_2702D6668(v23, &v21);
        result = sub_2702CEACC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_2702D6668(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_2702D6668(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_2702D38B8(v24, &qword_2807CD720, &qword_2702DAFB8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2702D4FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_2702DA53C();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

void sub_2702D5070()
{
  v8 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  v1 = sub_2702DA55C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    *(v0 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_isDiagnosticsEnabled) = AppBooleanValue != 0;
    v3 = sub_2702DA4CC();
    v4 = sub_2702DA5DC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = AppBooleanValue != 0;
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v5;
      _os_log_impl(&dword_2702C7000, v3, v4, "Updated diagnostics enabled state from preferences: %{BOOL}d", v6, 8u);
      MEMORY[0x27439D570](v6, -1, -1);
    }
  }
}

uint64_t sub_2702D51B0()
{
  v1 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_log;
  v2 = sub_2702DA4EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2702D38B8(v0 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSuccessfulReportTimestamp, &qword_2807CD5C0, &unk_2702DACB0);
  sub_2702D38B8(v0 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSnapshotFailureTimestamp, &qword_2807CD5C0, &unk_2702DACB0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ULPNHeuristicsDiagnostics(uint64_t a1)
{
  result = qword_2807CD708;
  if (!qword_2807CD708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2702D52F8(uint64_t a1)
{
  sub_2702DA4EC();
  if (v1 <= 0x3F)
  {
    sub_2702CE360(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_2702D53EC(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_2702D540C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_2702DA4BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2702D4158(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2702D38B8(v4, &qword_2807CD5C0, &unk_2702DACB0);
    return 0x726576654ELL;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v10 setDateStyle_];
    [v10 setTimeStyle_];
    v11 = sub_2702DA48C();
    v12 = [v10 stringFromDate_];

    v13 = sub_2702DA56C();
    (*(v6 + 8))(v8, v5);
    return v13;
  }
}

void sub_2702D5630(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v105 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v105 - v11;
  v13 = sub_2702DA4BC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v105 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v105 - v21;
  if (*(v2 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_isDiagnosticsEnabled) != 1)
  {
    v108 = sub_2702DA4CC();
    v25 = sub_2702DA5DC();
    if (os_log_type_enabled(v108, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_2702D949C(0x6974736972756548, 0xEA00000000007363, aBlock);
      *(v26 + 12) = 2080;
      v28 = &unk_2702DB920;
      v29 = "RxPktDropExceeded";
      v30 = 0xD000000000000011;
      if (a1 == 5)
      {
        v31 = 0xD000000000000011;
      }

      else
      {
        v31 = 0xD000000000000018;
      }

      if (a1 != 5)
      {
        v29 = "TxPktDropExceeded";
      }

      v32 = "RxQueueDelayExceeded";
      v33 = 0xD000000000000014;
      if (a1 == 3)
      {
        v30 = 0xD000000000000014;
      }

      else
      {
        v32 = "TxQueueDelayExceeded";
      }

      if (a1 <= 4u)
      {
        v29 = v32;
      }

      else
      {
        v30 = v31;
      }

      v34 = "IPv4FragmentationFailure";
      if (a1 == 1)
      {
        v33 = 0xD000000000000018;
      }

      else
      {
        v34 = "IPv6FragmentationFailure";
      }

      if (a1)
      {
        v35 = v33;
      }

      else
      {
        v35 = 0xD000000000000018;
      }

      if (a1)
      {
        v28 = v34;
      }

      if (a1 <= 2u)
      {
        v36 = v35;
      }

      else
      {
        v36 = v30;
      }

      if (a1 <= 2u)
      {
        v37 = v28;
      }

      else
      {
        v37 = v29;
      }

      v38 = sub_2702D949C(v36, v37 | 0x8000000000000000, aBlock);

      *(v26 + 14) = v38;
      _os_log_impl(&dword_2702C7000, v108, v25, "Diagnostics disabled, not reporting event: %s/%s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x27439D570](v27, -1, -1);
      MEMORY[0x27439D570](v26, -1, -1);
    }

    else
    {
      v47 = v108;
    }

    return;
  }

  LODWORD(v108) = a1;
  v106 = v7;
  v23 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSuccessfulReportTimestamp;
  swift_beginAccess();
  sub_2702D4158(v2 + v23, v12);
  v24 = *(v14 + 48);
  if (v24(v12, 1, v13) == 1)
  {
    sub_2702D38B8(v12, &qword_2807CD5C0, &unk_2702DACB0);
    goto LABEL_41;
  }

  v107 = v2;
  (*(v14 + 32))(v22, v12, v13);
  sub_2702DA4AC();
  sub_2702DA47C();
  v40 = v39;
  v41 = v14;
  v42 = *(v14 + 8);
  v42(v20, v13);
  if (v40 < 3600.0)
  {
    v43 = v40 / 60.0;
    if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v43 > -9.22337204e18)
    {
      if (v43 < 9.22337204e18)
      {

        v44 = sub_2702DA4CC();
        v45 = sub_2702DA5DC();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 134218240;
          *(v46 + 4) = v43;
          *(v46 + 12) = 2048;
          *(v46 + 14) = 60;

          _os_log_impl(&dword_2702C7000, v44, v45, "Skipping diagnostic report - last successful report was %ld minutes ago (minimum interval: %ld minutes)", v46, 0x16u);
          MEMORY[0x27439D570](v46, -1, -1);
        }

        else
        {
        }

        v42(v22, v13);
        return;
      }

      goto LABEL_104;
    }

    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v42(v22, v13);
  v14 = v41;
  v2 = v107;
LABEL_41:
  v48 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_lastSnapshotFailureTimestamp;
  swift_beginAccess();
  v105[0] = v48;
  sub_2702D4158(v2 + v48, v10);
  if (v24(v10, 1, v13) == 1)
  {
    sub_2702D38B8(v10, &qword_2807CD5C0, &unk_2702DACB0);
    goto LABEL_50;
  }

  (*(v14 + 32))(v17, v10, v13);
  sub_2702DA4AC();
  sub_2702DA47C();
  v50 = v49;
  v51 = *(v14 + 8);
  v51(v20, v13);
  if (v50 < 600.0)
  {
    v52 = v50 / 60.0;
    if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v52 > -9.22337204e18)
      {
        if (v52 < 9.22337204e18)
        {

          v53 = sub_2702DA4CC();
          v54 = sub_2702DA5DC();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 134218240;
            *(v55 + 4) = v52;
            *(v55 + 12) = 2048;
            *(v55 + 14) = 10;

            _os_log_impl(&dword_2702C7000, v53, v54, "Skipping diagnostic report - last snapshot failure was %ld minutes ago (minimum retry interval: %ld minutes)", v55, 0x16u);
            MEMORY[0x27439D570](v55, -1, -1);
          }

          else
          {
          }

          v51(v17, v13);
          return;
        }

LABEL_107:
        __break(1u);
        return;
      }

LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v51(v17, v13);
LABEL_50:
  v105[1] = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_log;
  v56 = sub_2702DA4CC();
  v57 = sub_2702DA5DC();
  if (os_log_type_enabled(v56, v57))
  {
    v107 = v2;
    v58 = v13;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v59 = 136315394;
    *(v59 + 4) = sub_2702D949C(0x6974736972756548, 0xEA00000000007363, aBlock);
    *(v59 + 12) = 2080;
    v61 = &unk_2702DB920;
    v62 = "RxPktDropExceeded";
    v63 = 0xD000000000000011;
    if (v108 == 5)
    {
      v64 = 0xD000000000000011;
    }

    else
    {
      v64 = 0xD000000000000018;
    }

    if (v108 != 5)
    {
      v62 = "TxPktDropExceeded";
    }

    v65 = "RxQueueDelayExceeded";
    v66 = 0xD000000000000014;
    if (v108 == 3)
    {
      v63 = 0xD000000000000014;
    }

    else
    {
      v65 = "TxQueueDelayExceeded";
    }

    if (v108 <= 4u)
    {
      v62 = v65;
    }

    else
    {
      v63 = v64;
    }

    v67 = "IPv4FragmentationFailure";
    if (v108 == 1)
    {
      v66 = 0xD000000000000018;
    }

    else
    {
      v67 = "IPv6FragmentationFailure";
    }

    if (v108)
    {
      v68 = v66;
    }

    else
    {
      v68 = 0xD000000000000018;
    }

    if (v108)
    {
      v61 = v67;
    }

    if (v108 <= 2u)
    {
      v69 = v68;
    }

    else
    {
      v69 = v63;
    }

    if (v108 <= 2u)
    {
      v70 = v61;
    }

    else
    {
      v70 = v62;
    }

    v71 = sub_2702D949C(v69, v70 | 0x8000000000000000, aBlock);

    *(v59 + 14) = v71;
    _os_log_impl(&dword_2702C7000, v56, v57, "Reporting diagnostic event: %s/%s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x27439D570](v60, -1, -1);
    MEMORY[0x27439D570](v59, -1, -1);

    v13 = v58;
    v2 = v107;
  }

  else
  {
  }

  v72 = [objc_opt_self() processInfo];
  v73 = [v72 processName];

  if (!v73)
  {
    sub_2702DA56C();
    v73 = sub_2702DA55C();
  }

  v74 = *(v2 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework25ULPNHeuristicsDiagnostics_diagnosticReporter);
  v75 = sub_2702DA55C();
  v76 = sub_2702DA55C();
  v77 = sub_2702DA55C();

  v78 = [v74 signatureWithDomain:v75 type:v76 subType:v77 detectedProcess:v73 triggerThresholdValues:0];

  if (v78)
  {
    v107 = v13;
    v108 = v14;
    aBlock[0] = 0;
    v79 = v78;
    sub_2702DA52C();

    v80 = aBlock[0];
    if (!aBlock[0])
    {
      v87 = sub_2702DA4CC();
      v88 = sub_2702DA5EC();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        v90 = "failed to convert signature dictionary to Swift dictionary";
LABEL_95:
        _os_log_impl(&dword_2702C7000, v87, v88, v90, v89, 2u);
        MEMORY[0x27439D570](v89, -1, -1);
      }

LABEL_96:

      return;
    }

    v81 = sub_2702DA4CC();
    v82 = sub_2702DA5DC();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 134217984;
      *(v83 + 4) = *(v80 + 16);

      _os_log_impl(&dword_2702C7000, v81, v82, "Created signature dictionary with %ld entries", v83, 0xCu);
      MEMORY[0x27439D570](v83, -1, -1);
    }

    else
    {
    }

    v91 = v106;
    sub_2702D44D8(v80);

    v92 = sub_2702DA51C();

    aBlock[4] = sub_2702D65EC;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2702D4FE0;
    aBlock[3] = &block_descriptor;
    v93 = _Block_copy(aBlock);

    v94 = [v74 snapshotWithSignature:v92 duration:0 event:0 payload:v93 reply:0.0];
    _Block_release(v93);

    if (v94)
    {
      v87 = sub_2702DA4CC();
      v88 = sub_2702DA5DC();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        v90 = "Diagnostic snapshot request was successfully submitted";
        goto LABEL_95;
      }

      goto LABEL_96;
    }

    sub_2702DA4AC();
    (v108[7].isa)(v91, 0, 1, v107);
    v95 = v105[0];
    swift_beginAccess();
    sub_2702D37E0(v91, v2 + v95);
    swift_endAccess();

    v96 = sub_2702DA4CC();
    v97 = v2;
    v98 = sub_2702DA5EC();

    if (os_log_type_enabled(v96, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      aBlock[0] = v100;
      *v99 = 136315138;
      sub_2702D4158(v97 + v95, v91);
      v101 = sub_2702D540C(v91);
      v103 = v102;
      sub_2702D38B8(v91, &qword_2807CD5C0, &unk_2702DACB0);
      v104 = sub_2702D949C(v101, v103, aBlock);

      *(v99 + 4) = v104;
      _os_log_impl(&dword_2702C7000, v96, v98, "Failed to submit diagnostic snapshot request at %s", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x27439D570](v100, -1, -1);
      MEMORY[0x27439D570](v99, -1, -1);
    }
  }

  else
  {
    v84 = sub_2702DA4CC();
    v85 = sub_2702DA5EC();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_2702C7000, v84, v85, "failed to create signature dictionary", v86, 2u);
      MEMORY[0x27439D570](v86, -1, -1);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2702D660C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2702D6668(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2702D669C(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5C0, &unk_2702DACB0);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v60 - v4;
  v5 = *a1;
  v6 = MEMORY[0x277D84F90];
  *(v1 + 24) = sub_2702D834C(MEMORY[0x277D84F90]);
  v70 = (v1 + 24);
  *(v1 + 32) = v6;
  v7 = (v1 + 32);
  *(v1 + 40) = xmmword_2702DAFD0;
  sub_2702DA4DC();
  v8 = 0;
  v9 = 0;
  v61 = v1;
  *(v1 + 16) = v5;
  v65 = xmmword_2702DB020;
  v64 = xmmword_2702DB030;
  v67 = xmmword_2702DAFE0;
  v63 = xmmword_2702DB010;
  v62 = xmmword_2702DB000;
  v66 = xmmword_2702DAFF0;
  v68 = (v1 + 32);
  do
  {
    v10 = byte_28803C288[v9 + 32];
    if (byte_28803C288[v9 + 32] > 1u)
    {
      if (v10 != 2)
      {
        if (v10 == 3)
        {
          swift_beginAccess();
          v11 = *v7;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v7 = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v11 = sub_2702CE6F8(0, *(v11 + 2) + 1, 1, v11);
            *v7 = v11;
          }

          v14 = *(v11 + 2);
          v13 = *(v11 + 3);
          if (v14 >= v13 >> 1)
          {
            v11 = sub_2702CE6F8((v13 > 1), v14 + 1, 1, v11);
          }

          *(v11 + 2) = v14 + 1;
          v15 = &v11[40 * v14];
          v16 = 3;
        }

        else
        {
          swift_beginAccess();
          v11 = *v7;
          v28 = swift_isUniquelyReferenced_nonNull_native();
          *v7 = v11;
          if ((v28 & 1) == 0)
          {
            v11 = sub_2702CE6F8(0, *(v11 + 2) + 1, 1, v11);
            *v7 = v11;
          }

          v30 = *(v11 + 2);
          v29 = *(v11 + 3);
          if (v30 >= v29 >> 1)
          {
            v11 = sub_2702CE6F8((v29 > 1), v30 + 1, 1, v11);
          }

          *(v11 + 2) = v30 + 1;
          v15 = &v11[40 * v30];
          v16 = 4;
        }

        v15[32] = v16;
        v31 = v66;
        *(v15 + 40) = v67;
        *(v15 + 56) = v31;
        *v7 = v11;
        swift_endAccess();
        v19 = 1;
        v27 = 0x404E000000000000;
        goto LABEL_30;
      }

      v19 = v8;
      swift_beginAccess();
      v17 = *v7;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *v7 = v17;
      if ((v24 & 1) == 0)
      {
        v17 = sub_2702CE6F8(0, *(v17 + 2) + 1, 1, v17);
        *v7 = v17;
      }

      v26 = *(v17 + 2);
      v25 = *(v17 + 3);
      if (v26 >= v25 >> 1)
      {
        v17 = sub_2702CE6F8((v25 > 1), v26 + 1, 1, v17);
      }

      *(v17 + 2) = v26 + 1;
      v22 = &v17[40 * v26];
      v22[32] = 2;
      *(v22 + 40) = v67;
      v23 = v62;
LABEL_23:
      *(v22 + 56) = v23;
      *v7 = v17;
      swift_endAccess();
      v27 = 0x40AC200000000000;
LABEL_30:
      v32 = v27;
      goto LABEL_31;
    }

    if (!byte_28803C288[v9 + 32])
    {
      swift_beginAccess();
      v17 = *v7;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      *v7 = v17;
      if ((v18 & 1) == 0)
      {
        v17 = sub_2702CE6F8(0, *(v17 + 2) + 1, 1, v17);
        *v7 = v17;
      }

      v19 = v8;
      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        v17 = sub_2702CE6F8((v20 > 1), v21 + 1, 1, v17);
      }

      *(v17 + 2) = v21 + 1;
      v22 = &v17[40 * v21];
      v22[32] = 0;
      v23 = v64;
      *(v22 + 40) = v65;
      goto LABEL_23;
    }

    swift_beginAccess();
    v52 = *v7;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v52;
    if ((v53 & 1) == 0)
    {
      v52 = sub_2702CE6F8(0, *(v52 + 2) + 1, 1, v52);
      *v7 = v52;
    }

    v55 = *(v52 + 2);
    v54 = *(v52 + 3);
    if (v55 >= v54 >> 1)
    {
      v52 = sub_2702CE6F8((v54 > 1), v55 + 1, 1, v52);
    }

    *(v52 + 2) = v55 + 1;
    v56 = &v52[40 * v55];
    v56[32] = 1;
    *(v56 + 40) = v67;
    *(v56 + 56) = v63;
    *v7 = v52;
    swift_endAccess();
    v32 = 0x40AC200000000000;
    v19 = v8;
LABEL_31:
    type metadata accessor for RunningAverageEMA(0);
    v33 = swift_allocObject();
    *(v33 + 16) = 0x4000000000000000;
    *(v33 + 32) = 0;
    *(v33 + 40) = 1;
    v34 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_lastUpdateTime;
    v35 = sub_2702DA4BC();
    v36 = *(*(v35 - 8) + 56);
    v36(v33 + v34, 1, 1, v35);
    v8 = v19;
    *(v33 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_useEventRateNormalization) = v19 & 1;
    *(v33 + 24) = 0x3FF0000000000000;
    *(v33 + OBJC_IVAR____TtC29ULPNHeuristicsClientFramework17RunningAverageEMA_timeUnit) = v32;
    *(v33 + 32) = 0;
    *(v33 + 40) = 1;
    v37 = v69;
    v36(v69, 1, 1, v35);
    swift_beginAccess();
    sub_2702D37E0(v37, v33 + v34);
    swift_endAccess();
    v38 = v70;
    swift_beginAccess();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v71 = *v38;
    v40 = v71;
    *v38 = 0x8000000000000000;
    v41 = sub_2702CEA1C(v10);
    v43 = v40[2];
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v47 = v42;
    if (v40[3] >= v46)
    {
      if ((v39 & 1) == 0)
      {
        v57 = v41;
        sub_2702D0D2C();
        v41 = v57;
      }
    }

    else
    {
      sub_2702CF5E0(v46, v39);
      v41 = sub_2702CEA1C(v10);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_50;
      }
    }

    v7 = v68;
    v49 = v71;
    if (v47)
    {
      *(v71[7] + 8 * v41) = v33;
    }

    else
    {
      v71[(v41 >> 6) + 8] |= 1 << v41;
      *(v49[6] + v41) = v10;
      *(v49[7] + 8 * v41) = v33;
      v50 = v49[2];
      v45 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v45)
      {
        goto LABEL_48;
      }

      v49[2] = v51;
    }

    ++v9;
    *v70 = v49;
    swift_endAccess();
  }

  while (v9 != 5);
  v58 = *(*v70 + 16);
  swift_beginAccess();
  if (v58 == *(*v7 + 2))
  {
    return v61;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_2702DA72C();
  __break(1u);
  return result;
}

void sub_2702D6DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushTelemetry(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD658, &qword_2702DAE40);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v65 - v12;
  v14 = a1 + *(v4 + 20);
  v15 = *(v14 + 8) >> 5;
  if (v15 > 3)
  {
    v68 = *v14;
    if (v15 == 4)
    {
      swift_beginAccess();
      v48 = *(a2 + 24);
      if (*(v48 + 16))
      {
        v49 = sub_2702CEA1C(1);
        if (v50)
        {
          v67 = *(*(v48 + 56) + 8 * v49);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD668, &unk_2702DAE50);
          v51 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v52 = swift_allocObject() + v51;
          v65 = *(v7 + 48);
          v66 = sub_2702DA4BC();
          v53 = *(v66 - 8);
          (*(v53 + 16))(v52, a1, v66);
          *(v52 + v65) = 1;
          v65 = *(v7 + 48);
          sub_2702D3850(v52, v13, &qword_2807CD658, &qword_2702DAE40);
          swift_setDeallocating();

          sub_2702D851C(v52);
          swift_deallocClassInstance();
          v54 = *&v13[v65];
          v55 = *(v7 + 48);
          (*(v53 + 32))(v11, v13, v66);
          *&v11[v55] = v54;
          sub_2702D3CA0(v11, v54);

          sub_2702D851C(v11);
        }
      }

      if (v68 < 1)
      {
        return;
      }

      v35 = *(a2 + 24);
      if (!*(v35 + 16))
      {
        return;
      }

      v36 = sub_2702CEA1C(3);
      if ((v56 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v15 != 5)
      {
LABEL_15:
        sub_2702D845C(a1, v6);
        v38 = sub_2702DA4CC();
        v39 = sub_2702DA5CC();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v71 = v41;
          *v40 = 136315138;
          v42 = &v6[*(v4 + 20)];
          v43 = v42[8];
          v69 = *v42;
          v70 = v43;
          sub_2702D3748(v69, v43);
          v44 = PushTelemetryEvent.description.getter();
          v46 = v45;
          sub_2702D84C0(v6);
          sub_2702D3768(v69, v70);
          v47 = sub_2702D949C(v44, v46, &v71);

          *(v40 + 4) = v47;
          _os_log_impl(&dword_2702C7000, v38, v39, "Unhandled event: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x27439D570](v41, -1, -1);
          MEMORY[0x27439D570](v40, -1, -1);
        }

        else
        {

          sub_2702D84C0(v6);
        }

        return;
      }

      swift_beginAccess();
      v27 = *(a2 + 24);
      if (*(v27 + 16))
      {
        v28 = sub_2702CEA1C(2);
        if (v29)
        {
          v67 = *(*(v27 + 56) + 8 * v28);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD668, &unk_2702DAE50);
          v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v31 = swift_allocObject() + v30;
          v65 = *(v7 + 48);
          v66 = sub_2702DA4BC();
          v32 = *(v66 - 8);
          (*(v32 + 16))(v31, a1, v66);
          *(v31 + v65) = 1;
          v65 = *(v7 + 48);
          sub_2702D3850(v31, v13, &qword_2807CD658, &qword_2702DAE40);
          swift_setDeallocating();

          sub_2702D851C(v31);
          swift_deallocClassInstance();
          v33 = *&v13[v65];
          v34 = *(v7 + 48);
          (*(v32 + 32))(v11, v13, v66);
          *&v11[v34] = v33;
          sub_2702D3CA0(v11, v33);

          sub_2702D851C(v11);
        }
      }

      if (v68 < 1)
      {
        return;
      }

      v35 = *(a2 + 24);
      if (!*(v35 + 16))
      {
        return;
      }

      v36 = sub_2702CEA1C(4);
      if ((v37 & 1) == 0)
      {
        return;
      }
    }

    v67 = *(*(v35 + 56) + 8 * v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD668, &unk_2702DAE50);
    v57 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v58 = swift_allocObject() + v57;
    v59 = *(v7 + 48);
    v60 = sub_2702DA4BC();
    v61 = *(v60 - 8);
    (*(v61 + 16))(v58, a1, v60);
    *(v58 + v59) = v68;
    v62 = *(v7 + 48);
    sub_2702D3850(v58, v13, &qword_2807CD658, &qword_2702DAE40);
    swift_setDeallocating();

    sub_2702D851C(v58);
    swift_deallocClassInstance();
    v63 = *&v13[v62];
    v64 = *(v7 + 48);
    (*(v61 + 32))(v11, v13, v60);
    *&v11[v64] = v63;
    sub_2702D3CA0(v11, v63);
    goto LABEL_25;
  }

  if (v15 < 2)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v16 = *(a2 + 24);
  if (*(v16 + 16))
  {
    v17 = sub_2702CEA1C(0);
    if (v18)
    {
      v68 = *(*(v16 + 56) + 8 * v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD668, &unk_2702DAE50);
      v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v20 = swift_allocObject() + v19;
      v21 = *(v7 + 48);
      v22 = sub_2702DA4BC();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v20, a1, v22);
      *(v20 + v21) = 1;
      v24 = *(v7 + 48);
      sub_2702D3850(v20, v13, &qword_2807CD658, &qword_2702DAE40);
      swift_setDeallocating();

      sub_2702D851C(v20);
      swift_deallocClassInstance();
      v25 = *&v13[v24];
      v26 = *(v7 + 48);
      (*(v23 + 32))(v11, v13, v22);
      *&v11[v26] = v25;
      sub_2702D3CA0(v11, v25);
LABEL_25:

      sub_2702D851C(v11);
    }
  }
}

uint64_t sub_2702D7654()
{

  v1 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework20PushTelemetryHandler_log;
  v2 = sub_2702DA4EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PushTelemetryHandler(uint64_t a1)
{
  result = qword_2807CD738;
  if (!qword_2807CD738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2702D7754(uint64_t a1)
{
  result = sub_2702DA4EC();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WeightedSumScorer(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeightedSumScorer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2702D7880(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[40])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2702D78C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushEvents(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PushEvents(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2702D7A7C()
{
  result = qword_2807CD748;
  if (!qword_2807CD748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CD750, qword_2702DB128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CD748);
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

unint64_t sub_2702D7B2C()
{
  result = qword_2807CD758;
  if (!qword_2807CD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CD758);
  }

  return result;
}

unint64_t sub_2702D7B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD760, &unk_2702DB1D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD678, &qword_2702DAE60);
    v7 = sub_2702DA6DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_2702D3850(v9, v5, &qword_2807CD760, &unk_2702DB1D0);
      v11 = *v5;
      result = sub_2702D3C9C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for PushHeuristics.COSEntry(0);
      result = sub_2702D8584(&v5[v8], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for PushHeuristics.COSEntry);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

void *sub_2702D7D6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD640, &qword_2702DAE28);
  v3 = sub_2702DA6DC();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_2702D3C9C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_2702D3C9C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2702D7E7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD770, &qword_2702DB1F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD688, &qword_2702DAE70);
    v7 = sub_2702DA6DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_2702D3850(v9, v5, &qword_2807CD770, &qword_2702DB1F8);
      result = sub_2702D3C9C(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for PushHeuristics.DisconnectionInfo(0);
      result = sub_2702D8584(&v5[v8], v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for PushHeuristics.DisconnectionInfo);
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

void *sub_2702D8068(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_2702DA6DC();
  LOBYTE(v6) = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_2702D3C9C(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 8);
    v17 = *v12;

    v10 = sub_2702D3C9C(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2702D8170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD768, &unk_2702DB1E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD630, &qword_2702DAE18);
    v7 = sub_2702DA6DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_2702D3850(v9, v5, &qword_2807CD768, &unk_2702DB1E0);
      result = sub_2702D3C9C(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2702DA4BC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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

void *sub_2702D834C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD648, &qword_2702DAE30);
  v3 = sub_2702DA6DC();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_2702CEA1C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_2702CEA1C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2702D845C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushTelemetry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2702D84C0(uint64_t a1)
{
  v2 = type metadata accessor for PushTelemetry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2702D851C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD658, &qword_2702DAE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2702D8584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t PushTelemetryEvent.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 5;
  if (v2 >> 5 <= 2)
  {
    if (!v3)
    {
      v9 = 0xD000000000000019;
      if (v1)
      {
        MEMORY[0x27439D480](v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5F8, &qword_2702DADE0);
        sub_2702D88E8();
        if (swift_dynamicCast())
        {
          [v8 code];
          v6 = sub_2702DA6FC();
          MEMORY[0x27439D000](v6);

          MEMORY[0x27439D000](0x726F727265736E20, 0xEA0000000000203ALL);
        }
      }

      return v9;
    }

    if (v3 == 1)
    {
      sub_2702DA68C();

      v9 = 0xD000000000000017;
      v5 = PushDisconnectErrors.description.getter();
      MEMORY[0x27439D000](v5);

      MEMORY[0x27439D000](41, 0xE100000000000000);
      return v9;
    }

    result = 0xD00000000000001BLL;
    v9 = 0xD00000000000001BLL;
    if (v2)
    {
      return result;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD780, &unk_2702DB210);
    v7 = sub_2702DA57C();
    MEMORY[0x27439D000](v7);

    MEMORY[0x27439D000](32, 0xE100000000000000);

    return v9;
  }

  if (v2 >> 5 > 4)
  {
    if (v3 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001ALL;
    }
  }

  else
  {
    if (v3 == 3)
    {
      result = 0xD000000000000020;
      v9 = 0xD000000000000020;
      if (v2)
      {
        return result;
      }

      goto LABEL_16;
    }

    return 0xD000000000000010;
  }
}

unint64_t sub_2702D88E8()
{
  result = qword_2807CD788;
  if (!qword_2807CD788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807CD788);
  }

  return result;
}

__n128 OffloadAdviceResult.init(advice:reason:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u8[0];
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

uint64_t OffloadAdviceResult.reason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_2702D8C88(v2, v3, v4);
}

uint64_t InterfaceType.description.getter()
{
  if (*v0)
  {
    return 0x72666E4969666977;
  }

  else
  {
    return 0x72616C756C6C6563;
  }
}

ULPNHeuristicsClientFramework::InterfaceType_optional __swiftcall InterfaceType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_2702D89DC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2702D8A08()
{
  if (*v0)
  {
    return 0x72666E4969666977;
  }

  else
  {
    return 0x72616C756C6C6563;
  }
}

uint64_t sub_2702D8A68()
{
  sub_2702DA74C();
  MEMORY[0x27439D1C0](0);
  return sub_2702DA76C();
}

uint64_t sub_2702D8AD4(uint64_t a1)
{
  sub_2702DA74C();
  MEMORY[0x27439D1C0](0);
  return sub_2702DA76C();
}

uint64_t PushDisconnectErrors.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t PushDisconnectErrors.description.getter()
{
  if (!*(v0 + 8))
  {
    v3 = 0;
    sub_2702DA68C();
    MEMORY[0x27439D000](0xD000000000000013, 0x80000002702DBB20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5F8, &qword_2702DADE0);
    sub_2702DA6AC();
    return v3;
  }

  if (*(v0 + 8) == 1)
  {
    sub_2702DA68C();

    v3 = 0xD000000000000015;
    v1 = sub_2702DA6FC();
    MEMORY[0x27439D000](v1);

    return v3;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_2702D8C88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t PushTelemetry.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2702DA4BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void PushTelemetry.event.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PushTelemetry(0) + 20);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  sub_2702D3748(v4, v5);
}

uint64_t PushTelemetry.init(timestamp:event:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = sub_2702DA4BC();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  result = type metadata accessor for PushTelemetry(0);
  v9 = a3 + *(result + 20);
  *v9 = v5;
  *(v9 + 8) = v6;
  return result;
}

uint64_t PushTelemetry.description.getter()
{
  sub_2702DA68C();

  sub_2702DA4BC();
  sub_2702CE480();
  v0 = sub_2702DA6FC();
  MEMORY[0x27439D000](v0);

  MEMORY[0x27439D000](0x3A746E65766520, 0xE700000000000000);
  type metadata accessor for PushTelemetry(0);
  v1 = PushTelemetryEvent.description.getter();
  MEMORY[0x27439D000](v1);

  return 0x3A656D6974;
}

uint64_t sub_2702D8EF8()
{
  type metadata accessor for ULPNHeuristics(0);
  swift_allocObject();
  result = sub_2702D8F94();
  qword_2807CD778 = result;
  return result;
}

uint64_t static ULPNHeuristics.shared.getter()
{
  if (qword_2807CD588 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2702D8F94()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for PushHeuristics(0);
  swift_allocObject();
  *(v0 + 32) = sub_2702C96A8();
  sub_2702DA4DC();
  v2 = sub_2702DA4CC();
  v3 = sub_2702DA5CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2702D949C(0x292874696E69, 0xE600000000000000, &v7);
    _os_log_impl(&dword_2702C7000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x27439D570](v5, -1, -1);
    MEMORY[0x27439D570](v4, -1, -1);
  }

  return v1;
}