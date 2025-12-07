uint64_t sub_2169D41F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLandingPageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169D4258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLandingPageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169D42BC()
{
  v1 = *(type metadata accessor for SearchLandingPageView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2169D34FC(v2);
}

unint64_t sub_2169D431C()
{
  result = qword_280E2A610[0];
  if (!qword_280E2A610[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF490, &qword_2170332F0);
    sub_2169D43A0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2A610);
  }

  return result;
}

unint64_t sub_2169D43A0()
{
  result = qword_280E2AB70;
  if (!qword_280E2AB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF4A0, &qword_217033308);
    sub_2169D442C();
    sub_2169D4504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB70);
  }

  return result;
}

unint64_t sub_2169D442C()
{
  result = qword_280E39E78;
  if (!qword_280E39E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF4A8, &qword_217033310);
    sub_2169D44B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E39E78);
  }

  return result;
}

unint64_t sub_2169D44B0()
{
  result = qword_280E39E80;
  if (!qword_280E39E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E39E80);
  }

  return result;
}

unint64_t sub_2169D4504()
{
  result = qword_280E2A9F8;
  if (!qword_280E2A9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF4B0, &qword_217033318);
    sub_2169D45BC();
    sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9F8);
  }

  return result;
}

unint64_t sub_2169D45BC()
{
  result = qword_280E2ABD0;
  if (!qword_280E2ABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF4B8, &unk_217033320);
    sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
    sub_2166D9530(&qword_280E2B938, &qword_27CABF4C0, &qword_217033330, &unk_217024E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABD0);
  }

  return result;
}

unint64_t sub_2169D46A0()
{
  result = qword_280E2A848;
  if (!qword_280E2A848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8600, &qword_217020AD0);
    sub_2169D4EA0(&qword_280E2A858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A848);
  }

  return result;
}

uint64_t sub_2169D4754(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27CAB6158 != -1)
    {
      swift_once();
    }

    v4 = sub_217007CA4();
    __swift_project_value_buffer(v4, qword_27CB22AC8);
    sub_21700DF14();
    v5 = sub_217007C84();
    v6 = sub_21700EDA4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = *(a1 + 16);

      _os_log_impl(&dword_216679000, v5, v6, "Recent search entries updated, new count: %{public}ld", v7, 0xCu);
      MEMORY[0x21CEA1440](v7, -1, -1);
    }

    else
    {
    }

    v8 = sub_21700DF14();
    v9 = sub_2169D48B4(v8);
    sub_2169D4CE0(v9, v10);
  }

  return result;
}

uint64_t sub_2169D48B4(uint64_t a1)
{
  v2 = sub_2170067A4();
  MEMORY[0x28223BE20](v2 - 8);
  v27 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RecentSearchLockup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170069F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  sub_21700F954();
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  __dst[0] = MEMORY[0x277D84F90];
  v28 = *(a1 + 16);
  v25[1] = v7 + 8;
  while (v28 != v13)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_15:
      swift_once();
      goto LABEL_10;
    }

    v15 = a1;
    v16 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13;
    v17 = *(v7 + 16);
    v17(v12, v16, v6);
    v17(v9, v12, v6);
    sub_216E41600(v9, v26);
    sub_2170069C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF930, &qword_217033480);
    swift_allocObject();
    sub_216DC47DC();
    sub_21700F354();
    v18 = (*(v7 + 8))(v12, v6);
    MEMORY[0x21CE9F610](v18);
    if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21700E874();
    }

    sub_21700E8C4();
    v14 = __dst[0];
    ++v13;
    a1 = v15;
  }

  if (sub_2166BF3C8(v14))
  {
    memcpy(__dst, __src, 0x48uLL);
    sub_21700F934();
    return v14;
  }

  if (qword_27CAB6158 != -1)
  {
    goto LABEL_15;
  }

LABEL_10:
  v19 = sub_217007CA4();
  __swift_project_value_buffer(v19, qword_27CB22AC8);
  v20 = sub_217007C84();
  v21 = sub_21700EDA4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    __dst[0] = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_2166A85FC(0xD000000000000012, 0x8000000217083C30, __dst);
    _os_log_impl(&dword_216679000, v20, v21, "Dropped %{public}s item collection, no items.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x21CEA1440](v23, -1, -1);
    MEMORY[0x21CEA1440](v22, -1, -1);
  }

  return 0;
}

uint64_t sub_2169D4CE0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecentSearchLockup(0);
  sub_2169D4EA0(qword_280E3E960, type metadata accessor for RecentSearchLockup, &unk_217025D44);
  sub_2169D4EA0(&qword_280E3E948, type metadata accessor for RecentSearchLockup, &unk_21702C08C);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_2169D4E0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216E411C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2169D4E38(void *a1)
{
  v1 = a1[1];
  v2 = sub_21700DF14();
  return sub_216E41464(v2, v1);
}

unint64_t sub_2169D4E84(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_2166E6B18(result, a2, a3);
  }

  return result;
}

uint64_t sub_2169D4EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169D4F3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21700DEE4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_21700DEC4();
}

uint64_t sub_2169D4F9C()
{
  v0 = sub_21700DEE4();
  __swift_allocate_value_buffer(v0, qword_280E73A08);
  __swift_project_value_buffer(v0, qword_280E73A08);
  return sub_21700DEC4();
}

uint64_t sub_2169D501C@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v2 = type metadata accessor for RecentSearchLockupView(0);
  OUTLINED_FUNCTION_1();
  v97 = v3;
  MEMORY[0x28223BE20](v4);
  v98 = v5;
  v99 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF518, &qword_217033538);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v7);
  v82 = sub_217008B44();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v10 - v9);
  v79 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v78 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = type metadata accessor for Card(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v20 = (v19 - v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF520, &qword_217033540);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - v23;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF528, &qword_217033548);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v26);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF530, &qword_217033550);
  OUTLINED_FUNCTION_1();
  v88 = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v29);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF538, &qword_217033558);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v31);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF540, &qword_217033560);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_105();
  v94 = v33;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF548, &unk_217033568);
  OUTLINED_FUNCTION_1();
  v93 = v34;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  v92 = v36;
  v37 = *v1;
  *v20 = *v1;
  *&v103 = 0x4045000000000000;
  sub_2167CD8D8();
  v84 = v37;

  sub_2170082B4();
  v38 = (v20 + *(v17 + 32));
  type metadata accessor for PlaybackPresenter(0);
  sub_2169D6590(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);
  *v38 = sub_217008CF4();
  v38[1] = v39;
  v40 = *(v2 + 24);
  v101 = v1;
  v41 = v1 + v40;
  v42 = *v41;
  if ((v41[8] & 1) == 0)
  {

    sub_21700ED94();
    v43 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v42, 0);
    (*(v78 + 8))(v15, v79);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  sub_2169D7E20();
  v44 = &v24[*(v21 + 36)];
  v45 = v104;
  *v44 = v103;
  *(v44 + 1) = v45;
  *(v44 + 2) = v105;
  if (qword_27CAB5B80 != -1)
  {
    swift_once();
  }

  v46 = qword_27CABF4F0;
  v79 = qword_27CABF4F0;
  v47 = sub_217009C84();
  v48 = v80;
  sub_2167A4788();
  v49 = v48 + *(v81 + 36);
  *v49 = v46;
  *(v49 + 8) = v47;
  v50 = *(v82 + 20);
  v51 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  v53 = v83;
  (*(v52 + 104))(v83 + v50, v51);
  __asm { FMOV            V0.2D, #14.0 }

  *v53 = _Q0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF550, &unk_217033578);
  v60 = v85;
  v61 = v85 + *(v59 + 36);
  sub_2169D7DB8();
  *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)) = 256;
  sub_2166A6EA4();
  v62 = v60 + *(v90 + 36);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8, &unk_21701F5E0);

  sub_217008C34();
  sub_2169D7DB8();
  *(v62 + *(v63 + 36)) = 0;
  sub_2169D7AD4();
  v64 = v87;
  sub_21700AB94();
  sub_216697664(v60, &qword_27CABF518, &qword_217033538);
  sub_2169D8054(v53, MEMORY[0x277CDFC08]);
  sub_216697664(v48, &qword_27CABF528, &qword_217033548);
  v102[3] = sub_2170067A4();
  v102[4] = sub_2169D6590(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1(v102);
  sub_216CCBC74();
  v65 = v91;
  v66 = (v91 + *(v86 + 36));
  sub_2167B7D58(v102, (v66 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2169D6590(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  *v66 = sub_217008CF4();
  v66[1] = v67;
  (*(v88 + 32))(v65, v64, v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v102);
  v68 = v94;
  v69 = v94 + *(v95 + 36);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90, &qword_21701ADD0);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v71 = sub_217008B34();
  __swift_project_value_buffer(v71, qword_280E73A88);
  sub_2169D7DB8();
  *(v69 + *(v70 + 36)) = 0;
  v72 = sub_21671F08C();
  v91 = &v78;
  MEMORY[0x28223BE20](v72);
  MEMORY[0x28223BE20](v101);
  sub_2169D7DB8();
  swift_allocObject();
  sub_2169D7E20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0, &qword_21701ADE0);
  type metadata accessor for ContextMenuPreview(0);
  sub_2169D7ED4();
  sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
  sub_2169D6590(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
  v73 = v92;
  sub_21700A394();

  sub_21671F278(v68);
  KeyPath = swift_getKeyPath();
  v75 = v100;
  (*(v93 + 32))(v100, v73, v96);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF590, &unk_2170335B8);
  v77 = v75 + *(result + 36);
  *v77 = KeyPath;
  *(v77 + 8) = 0;
  return result;
}

uint64_t sub_2169D5C0C@<X0>(uint64_t (**a1)()@<X8>)
{
  v28 = a1;
  v27 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v27);
  v2 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RecentSearchLockup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = type metadata accessor for MenuConfiguration(0);
  v26 = *(v9 - 8);
  v25[1] = *(v26 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v25[2] = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v25[0] = sub_2170067A4();
  v12 = *(v25[0] - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v25[0]);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  sub_216CCBC74();
  sub_216DE9CA8();
  sub_216DE9CA8();
  v18 = v5[114];
  sub_2169D8054(v5, type metadata accessor for RecentSearchLockup);
  *v2 = v18;
  swift_storeEnumTagMultiPayload();
  sub_2168A7698();
  sub_2169D8054(v2, type metadata accessor for MenuContext);
  sub_2169D8054(v8, type metadata accessor for RecentSearchLockup);
  v19 = *(v12 + 32);
  v20 = v25[0];
  v19(v14, v17, v25[0]);
  sub_2169D7E20();
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v19((v22 + v21), v14, v20);
  result = sub_2169D7E20();
  v24 = v28;
  *v28 = sub_21680CDC8;
  v24[1] = v22;
  return result;
}

uint64_t sub_2169D5F90()
{
  v0 = type metadata accessor for RecentSearchLockup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v3 = sub_2170067A4();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216CCBC74();
  sub_216DE9CA8();
  sub_2166A6EA4();
  sub_2169D8054(v2, type metadata accessor for RecentSearchLockup);
  return sub_2167BA710(v5, v8);
}

uint64_t sub_2169D60A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v3 = sub_2170075A4();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2170067A4();
  v6 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecentSearchLockup(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9CA8();
  sub_2166A6EA4();
  sub_2169D8054(v11, type metadata accessor for RecentSearchLockup);
  sub_216CCBC74();
  type metadata accessor for RecentSearchLockupView(0);
  v12 = sub_216C0C534(v30);
  sub_216C0C548(v12, v13, v14, v15, v16, v17, v18, v19, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v31[0], v31[1], v31[2]);
  sub_216DE9CA8();
  v20 = v11[114];
  sub_2169D8054(v11, type metadata accessor for RecentSearchLockup);
  *v2 = v20;
  v21 = type metadata accessor for MenuContext(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v21);
  sub_2167B9BDC(v31, v8, v30, v5, v2, v22, v23, v24, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v31[0], v31[1], v31[2]);
  sub_216697664(v2, &qword_27CAB6DE8, "dP\r");
  (*(v28 + 8))(v5, v29);
  sub_216697664(v30, &qword_27CAB7310, &unk_2170170F0);
  (*(v6 + 8))(v8, v27);
  return sub_216697664(v31, &qword_27CAB6DB0, &qword_217016C00);
}

uint64_t sub_2169D63CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for RecentSearchLockupView(0);
  sub_2167CD8D8();
  sub_2170082B4();
  v4 = a2 + v3[6];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v3[7];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[8];
  result = swift_getKeyPath();
  *v6 = result;
  v6[40] = 0;
  return result;
}

uint64_t sub_2169D64F8(uint64_t a1)
{
  result = sub_2169D6590(&qword_27CABF510, type metadata accessor for RecentSearchLockupView, &unk_217033430);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2169D6590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169D65D8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Card(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2167B5828();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF5C8, &qword_217033640);
  v4 = v3[11];
  v5 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  sub_2169D7DB8();
  v6 = swift_allocObject();
  sub_2169D7E20();
  v7 = v3[12];
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v8 = a1 + v3[13];
  result = swift_getKeyPath();
  *v8 = result;
  v8[40] = 0;
  a1[5] = sub_2169D8540;
  a1[6] = v6;
  a1[7] = 0;
  a1[8] = 0;
  return result;
}

uint64_t sub_2169D679C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF5D0, &qword_217033648);
  return sub_2169D67F4(a1, a2 + *(v4 + 44));
}

uint64_t sub_2169D67F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v127 = sub_2170067A4();
  v130 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v116 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v110 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for RecentSearchLockup(0);
  MEMORY[0x28223BE20](v8);
  v125 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v123 = &v110 - v11;
  MEMORY[0x28223BE20](v12);
  v114 = &v110 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v110 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v110 - v18;
  v20 = type metadata accessor for ArtworkView(0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B88, &unk_21701AF70);
  MEMORY[0x28223BE20](v113);
  *&v129 = &v110 - v24;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B90, &qword_217033650);
  MEMORY[0x28223BE20](v117);
  v120 = &v110 - v25;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF5D8, &qword_217033658);
  MEMORY[0x28223BE20](v118);
  *&v128 = &v110 - v26;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF5E0, &unk_217033660);
  MEMORY[0x28223BE20](v121);
  v124 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v119 = &v110 - v29;
  MEMORY[0x28223BE20](v30);
  v122 = &v110 - v31;
  sub_216DE9CA8();
  sub_2166A6EA4();
  sub_2169D8054(v19, type metadata accessor for RecentSearchLockup);
  sub_216CCBC74();
  v112 = v6;
  v32 = sub_2168F9850(v6);
  v34 = v33;
  sub_216DE9CA8();
  v35 = v16[113];
  sub_2169D8054(v16, type metadata accessor for RecentSearchLockup);
  if (v35 >= 2)
  {
    v36 = 1.77777778;
  }

  else
  {
    v36 = 1.0;
  }

  v37 = type metadata accessor for Card(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  v38 = fmax(*v139, 42.0);
  sub_2167A4788();
  v39 = &v23[*(v21 + 28)];
  *v39 = v32;
  v39[1] = v34;
  v40 = &v23[*(v21 + 32)];
  *v40 = v38;
  v40[1] = v38 / v36;
  v41 = sub_21700B3B4();
  v111 = v42;
  v43 = *(a1 + *(v37 + 24));
  if (v43)
  {
    v44 = v41;

    v45 = v112;
    sub_216CCBC74();
    v46 = v130;
    v47 = v116;
    v48 = v127;
    (*(v130 + 16))(v116, v45, v127);
    v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v43;
    (*(v46 + 32))(v50 + v49, v47, v48);
    type metadata accessor for PlaybackPresenter(0);
    sub_2169D6590(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);

    v51 = sub_217008684();
    v53 = v52;
    v54 = *(v46 + 8);
    v130 = v46 + 8;
    v54(v45, v48);
    v55 = v129;
    sub_2169D7E20();
    v56 = v55 + *(v113 + 36);
    *v56 = sub_21680CE98;
    *(v56 + 8) = v50;
    *(v56 + 16) = 0;
    *(v56 + 24) = v51;
    *(v56 + 32) = v53;
    v57 = v111;
    *(v56 + 40) = v44;
    *(v56 + 48) = v57;
    v58 = v114;
    sub_216DE9CA8();
    v59 = *(v58 + 113);
    sub_2169D8054(v58, type metadata accessor for RecentSearchLockup);
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v60 = qword_280E73AA0;
    v61 = byte_280E73AA8;
    v62 = qword_280E73AB0;
    v63 = v120;
    sub_2167A4788();
    v64 = &v63[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BA8, &qword_21701AF90) + 36)];
    *v64 = v59;
    v129 = xmmword_217033420;
    *(v64 + 8) = xmmword_217033420;
    *(v64 + 12) = 256;
    KeyPath = swift_getKeyPath();
    v137 = v61;
    v134 = 0;
    v66 = &v63[*(v117 + 36)];
    *v66 = v60;
    v66[8] = v61;
    *(v66 + 9) = *v136;
    *(v66 + 3) = *&v136[3];
    *(v66 + 2) = v62;
    v66[24] = v59;
    *(v66 + 25) = *v135;
    *(v66 + 7) = *&v135[3];
    *(v66 + 2) = v129;
    *(v66 + 6) = KeyPath;
    v66[56] = 0;

    LOBYTE(v62) = sub_217009CB4();
    sub_217007F24();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = v128;
    sub_2167A4788();
    v76 = v75 + *(v118 + 36);
    *v76 = v62;
    *(v76 + 8) = v68;
    *(v76 + 16) = v70;
    *(v76 + 24) = v72;
    *(v76 + 32) = v74;
    *(v76 + 40) = 0;
    LOBYTE(v62) = sub_217009CE4();
    sub_217007F24();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = v119;
    sub_2167A4788();
    v86 = &v85[*(v121 + 36)];
    *v86 = v62;
    *(v86 + 1) = v78;
    *(v86 + 2) = v80;
    *(v86 + 3) = v82;
    *(v86 + 4) = v84;
    v86[40] = 0;
    v87 = v122;
    sub_2167A4788();
    sub_216DE9CA8();
    v88 = *(v58 + 88);
    *&v89 = *(v58 + 80);
    v129 = v89;
    sub_21700DF14();
    sub_2169D8054(v58, type metadata accessor for RecentSearchLockup);
    v90 = v123;
    sub_216DE9CA8();
    v91 = *(v90 + 104);
    *&v92 = *(v90 + 96);
    v128 = v92;
    sub_21700DF14();
    sub_2169D8054(v90, type metadata accessor for RecentSearchLockup);
    sub_216CCBC74();
    LOBYTE(v90) = sub_216EB939C();
    v54(v45, v127);
    v93 = v125;
    sub_216DE9CA8();
    v94 = *(v93 + 112);
    sub_2169D8054(v93, type metadata accessor for RecentSearchLockup);
    LOBYTE(v85) = sub_217009CD4();
    sub_217007F24();
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v102 = v101;
    LOBYTE(v139[0]) = 0;
    v103 = v90 & 1;
    v104 = v124;
    sub_2166A6EA4();
    v105 = v126;
    sub_2166A6EA4();
    v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF5E8, &qword_2170336A0) + 48);
    *&v107 = v129;
    *(&v107 + 1) = v88;
    v129 = v107;
    *&v108 = v128;
    *(&v108 + 1) = v91;
    v128 = v108;
    *&__src[16] = v108;
    *__src = v107;
    __src[32] = v103;
    __src[33] = v94;
    *&__src[34] = v132;
    *&__src[38] = v133;
    __src[40] = v85;
    *&__src[41] = *v131;
    *&__src[44] = *&v131[3];
    *&__src[48] = v96;
    *&__src[56] = v98;
    *&__src[64] = v100;
    *&__src[72] = v102;
    __src[80] = 0;
    memcpy((v105 + v106), __src, 0x51uLL);
    sub_2166A6EA4();
    sub_216697664(v87, &qword_27CABF5E0, &unk_217033660);
    v139[1] = v128;
    v139[0] = v129;
    v140 = v103;
    v141 = v94;
    v142 = v132;
    v143 = v133;
    v144 = v85;
    *v145 = *v131;
    *&v145[3] = *&v131[3];
    v146 = v96;
    v147 = v98;
    v148 = v100;
    v149 = v102;
    v150 = 0;
    sub_216697664(v139, &qword_27CABF5F0, &qword_2170336A8);
    return sub_216697664(v104, &qword_27CABF5E0, &unk_217033660);
  }

  else
  {
    type metadata accessor for PlaybackPresenter(0);
    sub_2169D6590(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

void *sub_2169D7458@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2170093C4();
  v9 = 1;
  sub_2169D7598(v3, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, 0xC9uLL);
  sub_2166A6EA4();
  sub_216697664(v12, &qword_27CABF600, &unk_217033738);
  memcpy(&v8[7], __dst, 0xC9uLL);
  LOBYTE(v3) = v9;
  sub_21700B3C4();
  sub_217008BB4();
  memcpy(&v10[7], __src, 0x70uLL);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  memcpy((a2 + 17), v8, 0xD0uLL);
  return memcpy((a2 + 225), v10, 0x77uLL);
}

uint64_t sub_2169D7598@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v57 = *a1;
  sub_2166A6EA4();
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_2169D6590(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter, &unk_21701ED38);
  v3 = sub_217008CF4();
  v31 = v4;
  v5 = *(&v57 + 1);
  if (!*(&v57 + 1))
  {

    v3 = 0;
    v31 = 0;
    v6 = 0;
LABEL_9:
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_12;
  }

  v6 = v57;
  v7 = HIBYTE(*(&v57 + 1)) & 0xFLL;
  if ((*(&v57 + 1) & 0x2000000000000000) == 0)
  {
    v7 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    sub_216697664(&v57, &qword_27CABAA40, &unk_217014260);

    v3 = 0;
    v31 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v8 = *(a1 + 33);
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = sub_217009154();
  }

  else
  {
    v10 = sub_2170091A4();
  }

  *__src = v3;
  *&__src[8] = v31;
  *&__src[16] = v57;
  __src[32] = v8;
  __src[33] = v9;
  *&__src[34] = v53;
  *&__src[38] = v54;
  *&__src[40] = 0;
  __src[48] = 0;
  *&__src[49] = *v52;
  *&__src[52] = *&v52[3];
  *&__src[56] = v10;
  v28 = *&__src[48];
  v29 = *&__src[32];
  v37 = v3;
  v38 = v31;
  v39 = v57;
  LOBYTE(v40) = v8;
  BYTE1(v40) = v9;
  HIWORD(v40) = v54;
  *(&v40 + 2) = v53;
  v41 = 0;
  LOBYTE(v42) = 0;
  HIDWORD(v42) = *&v52[3];
  *(&v42 + 1) = *v52;
  v30 = v10;
  v43 = v10;
  sub_21680DAEC(__src, v35);
  sub_21680DB48(&v37);
LABEL_12:
  if (qword_27CAB5B88 != -1)
  {
    swift_once();
  }

  v22 = v5;
  v11 = qword_27CABF4F8;
  KeyPath = swift_getKeyPath();
  v27 = v11;

  v25 = sub_21700AD14();
  v24 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v55 = 0;
  v56 = a1[1];
  v12 = v56;
  sub_2166A6EA4();
  if (qword_27CAB5B90 != -1)
  {
    swift_once();
  }

  if (*(&v12 + 1))
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = 0;
  }

  if (*(&v12 + 1))
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = qword_27CABF500;
  v16 = swift_getKeyPath();

  v17 = sub_21700AD34();
  v18 = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v51 = 0;
  *__src = v3;
  *&__src[8] = v31;
  *&__src[16] = v6;
  *&__src[24] = v22;
  *&__src[32] = v29;
  *&__src[40] = 0;
  *&__src[48] = v28;
  *&__src[56] = v30;
  *&__src[64] = KeyPath;
  *&__src[72] = v27;
  *&__src[80] = v24;
  *&__src[88] = v25;
  *&__src[96] = v21;
  *&__src[104] = 1;
  __src[112] = 0;
  memcpy(__dst, __src, 0x71uLL);
  v34[0] = v14;
  v34[1] = *(&v12 + 1);
  v34[2] = 0;
  v34[3] = v13;
  v34[4] = v16;
  v34[5] = v15;
  v34[6] = v18;
  v34[7] = v17;
  v34[8] = v19;
  v34[9] = 1;
  LOBYTE(v34[10]) = 0;
  memcpy(&__dst[120], v34, 0x51uLL);
  memcpy(a2, __dst, 0xC9uLL);
  v35[0] = v14;
  v35[1] = *(&v12 + 1);
  v35[2] = 0;
  v35[3] = v13;
  v35[4] = v16;
  v35[5] = v15;
  v35[6] = v18;
  v35[7] = v17;
  v35[8] = v19;
  v35[9] = 1;
  v36 = 0;
  sub_2166A6EA4();
  sub_2166A6EA4();
  sub_216697664(v35, &qword_27CABF610, &qword_2170337E0);
  v37 = v3;
  v38 = v31;
  *&v39 = v6;
  *(&v39 + 1) = v22;
  v40 = v29;
  v41 = 0;
  v42 = v28;
  v43 = v30;
  v44 = KeyPath;
  v45 = v27;
  v46 = v24;
  v47 = v25;
  v48 = v21;
  v49 = 1;
  v50 = 0;
  return sub_216697664(&v37, &qword_27CABF608, &unk_21705E0F0);
}

uint64_t sub_2169D7A94()
{
  v0 = [objc_opt_self() quaternarySystemFillColor];
  result = sub_21700AC44();
  qword_27CABF4F0 = result;
  return result;
}

unint64_t sub_2169D7AD4()
{
  result = qword_27CABF558;
  if (!qword_27CABF558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF518, &qword_217033538);
    sub_2169D7B8C();
    sub_2166D9530(&qword_280E2A808, &qword_27CAB72E8, &unk_21701F5E0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF558);
  }

  return result;
}

unint64_t sub_2169D7B8C()
{
  result = qword_27CABF560;
  if (!qword_27CABF560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF550, &unk_217033578);
    sub_2169D7C44();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF560);
  }

  return result;
}

unint64_t sub_2169D7C44()
{
  result = qword_27CABF568;
  if (!qword_27CABF568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF528, &qword_217033548);
    sub_2169D7CFC();
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8, &qword_217019E70, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF568);
  }

  return result;
}

unint64_t sub_2169D7CFC()
{
  result = qword_27CABF570;
  if (!qword_27CABF570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF520, &qword_217033540);
    sub_2169D6590(&qword_27CABF578, type metadata accessor for Card, &unk_2170335F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF570);
  }

  return result;
}

uint64_t sub_2169D7DB8()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_2169D7E20()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_2169D7E78()
{
  v0 = type metadata accessor for RecentSearchLockupView(0);
  OUTLINED_FUNCTION_36(v0);

  return sub_2169D60A8();
}

unint64_t sub_2169D7ED4()
{
  result = qword_27CABF580;
  if (!qword_27CABF580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF540, &qword_217033560);
    sub_2169D7F8C();
    sub_2166D9530(&qword_280E2A810, &qword_27CAB8A90, &qword_21701ADD0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF580);
  }

  return result;
}

unint64_t sub_2169D7F8C()
{
  result = qword_27CABF588;
  if (!qword_27CABF588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF538, &qword_217033558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF518, &qword_217033538);
    sub_2169D7AD4();
    swift_getOpaqueTypeConformance2();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF588);
  }

  return result;
}

uint64_t sub_2169D8054(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2169D80AC(uint64_t a1)
{
  result = sub_217009D44();
  qword_27CABF4F8 = result;
  return result;
}

uint64_t sub_2169D80CC(uint64_t a1)
{
  result = sub_217009E94();
  qword_27CABF500 = result;
  return result;
}

void sub_2169D8114(uint64_t a1)
{
  sub_2169D81B0(319);
  if (v1 <= 0x3F)
  {
    sub_2167D1C30(319);
    if (v2 <= 0x3F)
    {
      sub_2167B84AC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2169D81B0(uint64_t a1)
{
  if (!qword_27CABF5A8)
  {
    v4[0] = type metadata accessor for RecentSearchLockup(255);
    v4[1] = sub_2169D6590(qword_280E3E960, type metadata accessor for RecentSearchLockup, &unk_217025D44);
    v4[2] = &off_28293B240;
    v4[3] = sub_2169D6590(&qword_280E3E948, type metadata accessor for RecentSearchLockup, &unk_21702C08C);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_27CABF5A8);
    }
  }
}

void sub_2169D82B4(uint64_t a1)
{
  sub_2169D81B0(319);
  if (v1 <= 0x3F)
  {
    sub_2167D1C30(319);
    if (v2 <= 0x3F)
    {
      sub_2167B8000();
      if (v3 <= 0x3F)
      {
        sub_2167EE974(319);
        if (v4 <= 0x3F)
        {
          sub_21680D428(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2169D8380()
{
  result = qword_27CABF5C0;
  if (!qword_27CABF5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF590, &unk_2170335B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF540, &qword_217033560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0, &qword_21701ADE0);
    type metadata accessor for ContextMenuPreview(255);
    sub_2169D7ED4();
    sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
    sub_2169D6590(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF5C0);
  }

  return result;
}

uint64_t sub_2169D8540@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Card(0);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2169D679C(v5, a1);
}

unint64_t sub_2169D85D8()
{
  result = qword_27CABF618;
  if (!qword_27CABF618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF620, &qword_2170337E8);
    sub_2166D9530(&qword_27CABF628, &qword_27CABF630, &unk_2170337F0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF618);
  }

  return result;
}

uint64_t type metadata accessor for MusicVideoContextMenu(uint64_t a1)
{
  result = qword_280E46B80;
  if (!qword_280E46B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2169D8704(uint64_t a1)
{
  sub_21700BA44();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_2167EE974(319);
      if (v3 <= 0x3F)
      {
        sub_2167B83B4(319);
        if (v4 <= 0x3F)
        {
          sub_2167B84AC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2169D8994(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2169D89D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2169D8A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    type metadata accessor for AppDestinationPageProviderBox();

    sub_21700D444();
    v7 = sub_216E9C900(a2, v10);

    v8 = *(type metadata accessor for UnifiedMessagesSheetView.Content(0) + 28);
    *(a4 + v8) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
    swift_storeEnumTagMultiPayload();
    *a4 = a1;
    a4[1] = v7;
    type metadata accessor for UnifiedMessages.Coordinator(0);

    sub_21700D4B4();

    a4[2] = v10;
  }

  else
  {
    type metadata accessor for MusicStackAuthority(0);
    sub_2166B4BD0(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_2169D8BAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UnifiedMessagesSheetView.Content(0);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700D8E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_217007674();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_217007664();
  memset(v26, 0, sizeof(v26));
  sub_21700D894();
  sub_2166997CC(v26, &unk_27CABF7A0, &unk_217014D20);
  sub_2166B4BD0(&qword_280E485F0, MEMORY[0x277CEE7C8], MEMORY[0x277CEE7C0]);
  sub_21700A204();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF638, &qword_2170339C0);
  sub_2170077E4();
  v15 = (a1 + *(v14 + 56));
  *v15 = sub_2169D8F1C;
  v15[1] = 0;
  KeyPath = swift_getKeyPath();
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF640, &qword_2170339F0) + 36);
  *v17 = KeyPath;
  *(v17 + 8) = 0;
  v18 = v2;
  v19 = v24;
  sub_2169D9A98(v18, v24);
  v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v21 = swift_allocObject();
  sub_2169D9AFC(v19, v21 + v20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF648, &qword_2170339F8);
  v23 = (a1 + *(result + 36));
  *v23 = sub_2169D9B60;
  v23[1] = v21;
  v23[2] = 0;
  v23[3] = 0;
  return result;
}

void sub_2169D8F1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 255)
  {
    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v12 = sub_217007CA4();
    __swift_project_value_buffer(v12, qword_280E73D20);
    oslog = sub_217007C84();
    v13 = sub_21700ED84();
    if (!os_log_type_enabled(oslog, v13))
    {
      goto LABEL_16;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_216679000, oslog, v13, "💬 Empty Response without error", v14, 2u);
    v15 = v14;
  }

  else
  {
    v2 = *a1;
    if (v1)
    {
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v3 = sub_217007CA4();
      __swift_project_value_buffer(v3, qword_280E73D20);
      sub_21671A778(v2);
      v4 = sub_217007C84();
      v5 = sub_21700ED84();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v21 = v7;
        *v6 = 136446210;
        swift_getErrorValue();
        v8 = sub_21700F884();
        v10 = v9;
        sub_21671A784(v2, v1);
        v11 = sub_2166A85FC(v8, v10, &v21);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_216679000, v4, v5, "💬 Open UnifiedMessages Error: %{public}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x21CEA1440](v7, -1, -1);
        MEMORY[0x21CEA1440](v6, -1, -1);

        return;
      }

      goto LABEL_21;
    }

    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v16 = sub_217007CA4();
    __swift_project_value_buffer(v16, qword_280E73D20);
    sub_21671A778(v2);
    oslog = sub_217007C84();
    v17 = sub_21700EDA4();
    if (!os_log_type_enabled(oslog, v17))
    {

LABEL_21:

      sub_21671A784(v2, v1);
      return;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v2;
    *v19 = v2;
    _os_log_impl(&dword_216679000, oslog, v17, "💬 Result response: %{public}@", v18, 0xCu);
    sub_2166997CC(v19, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v19, -1, -1);
    v15 = v18;
  }

  MEMORY[0x21CEA1440](v15, -1, -1);
LABEL_16:
}

uint64_t sub_2169D92C4(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedMessagesSheetView.Content(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2169D9A98(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2169D9AFC(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_2170077C4();
  sub_2169D9A98(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  sub_2169D9AFC(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  return sub_2170077B4();
}

uint64_t sub_2169D9418(void *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = sub_217008424();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 identifier];
  v14 = sub_21700E514();

  if (sub_216A2B334(v14) != 4)
  {
    v15 = type metadata accessor for UnifiedMessagesSheetView.Content(0);
    sub_216C0C970(v15, v16, v17, v18, v19, v20, v21, v22, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10]);
    sub_217008414();
    (*(v9 + 8))(v12, v8);
  }

  if (*(a4 + 16))
  {
    v23 = sub_216A2AA3C(a1, *(a4 + 8), a2, a3) & 1;
  }

  else
  {
    v23 = 2;
  }

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E73D20);
  v25 = sub_217007C84();
  v26 = sub_21700EDA4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_2166A85FC(2036625250, 0xE400000000000000, v31);
    _os_log_impl(&dword_216679000, v25, v26, "💬 %s EngagementView finished handleDelegateAction", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x21CEA1440](v28, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  return (v23 == 2) | v23 & 1u;
}

uint64_t type metadata accessor for UnifiedMessagesSheetView.Content(uint64_t a1)
{
  result = qword_280E35E88;
  if (!qword_280E35E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2169D9904(uint64_t a1)
{
  sub_2170077F4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObjectGraph(319);
    if (v2 <= 0x3F)
    {
      sub_2169D9A18(319, &unk_280E41B80, type metadata accessor for UnifiedMessages.Coordinator, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2169D9A18(319, &qword_280E2B458, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2169D9A18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2169D9A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMessagesSheetView.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169D9AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMessagesSheetView.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169D9B78(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v7 = *(type metadata accessor for UnifiedMessagesSheetView.Content(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_2169D9418(a1, a2, a3, v8);
}

uint64_t sub_2169D9C18(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for UnifiedMessagesSheetView.Content(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2169D9C8C()
{
  result = qword_280E2B018;
  if (!qword_280E2B018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF648, &qword_2170339F8);
    sub_2169D9D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B018);
  }

  return result;
}

unint64_t sub_2169D9D18()
{
  result = qword_280E2B1F0;
  if (!qword_280E2B1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF640, &qword_2170339F0);
    sub_2166D9530(&qword_280E2AD30, &qword_27CABF638, &qword_2170339C0, MEMORY[0x277CDDB50]);
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1F0);
  }

  return result;
}

uint64_t sub_2169D9DFC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI25LibraryMenuActionProvider_actionDispatcher, v8, v3);
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700E094();

  *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryMenuActionProvider_subscriptionStatusCoordinator) = v10[1];
  return v1;
}

void sub_2169D9F30()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_12_38();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_25_1();
  v43 = MEMORY[0x277CD82B8];
  v44 = MEMORY[0x277D2B188];
  v42 = MEMORY[0x277CD82C8];
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_91_4();
  sub_2169DB544(v2, v3, v4, v5, v6, v7, v8, v9, v42, v43, v44, &qword_27CABF6E8, qword_217033AC0, &unk_2829219F0, sub_2169EFAC0, &unk_2829219C8, sub_2169EFAB0, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  OUTLINED_FUNCTION_44_17();
  v10 = OUTLINED_FUNCTION_30_17();
  sub_2166997CC(v10, v11, &unk_2170152D0);
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_91_4();
  sub_2169DDB0C(v12, v13, v14, v15, v16, v17, v18);
  v19 = sub_21678C1C4();
  OUTLINED_FUNCTION_20_28(v19);
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_91_4();
  sub_2169E34DC(v20, v21, v22, v23, v24, v25, v26);
  sub_21678C1C4();
  v27 = OUTLINED_FUNCTION_30_17();
  sub_2166997CC(v27, v28, &unk_2170152D0);
  sub_21700C184();

  v29 = type metadata accessor for MenuAction(0);
  v30 = OUTLINED_FUNCTION_16_33(v29);
  OUTLINED_FUNCTION_22_33();
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_91_4();
  sub_2169E8EAC(v31, v32, v33, v34, v35, v36, v37);
  v38 = sub_21678C1C4();
  OUTLINED_FUNCTION_22_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_9_45(inited, xmmword_217015240);
  v40[3].n128_u64[0] = v41;
  v40[3].n128_u64[1] = v30;
  v40[4].n128_u64[0] = v38;
  sub_2167A2998(v40);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2169DA130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v169 = a7;
  v162 = a6;
  v170 = a4;
  v157 = a3;
  v134 = a2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v125 = *(v132 - 8);
  v123 = *(v125 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v119 - v9;
  v10 = type metadata accessor for ProcessDeepLinkAction(0);
  v11 = *(v10 - 8);
  v120 = v10;
  v121 = v11;
  MEMORY[0x28223BE20](v10);
  v124 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v12;
  MEMORY[0x28223BE20](v13);
  v119 = &v119 - v14;
  v15 = sub_2170075A4();
  v135 = *(v15 - 8);
  v136 = v15;
  MEMORY[0x28223BE20](v15);
  v133 = v16;
  v152 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6C0, &qword_217033AA8);
  v18 = *(v17 - 8);
  v127 = v17;
  v128 = v18;
  MEMORY[0x28223BE20](v17);
  v129 = v19;
  v130 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v126 = &v119 - v21;
  v146 = type metadata accessor for OpenFinancePageAction.Kind(0);
  MEMORY[0x28223BE20](v146);
  v148 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21700DFD4();
  v149 = *(v23 - 8);
  v150 = v23;
  MEMORY[0x28223BE20](v23);
  v147 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for MenuActionType(0);
  MEMORY[0x28223BE20](v154);
  v151 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_21700BD94();
  v142 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v140 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7B0, &qword_217021070);
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v141 = &v119 - v27;
  v164 = sub_21700CFB4();
  v28 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_217005EF4();
  v153 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v139 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v137 = &v119 - v33;
  v160 = sub_21700D704();
  v158 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v119 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v119 - v42;
  v44 = sub_21700D284();
  v165 = *(v44 - 8);
  v166 = v44;
  MEMORY[0x28223BE20](v44);
  v171 = (&v119 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_217006B84();
  v47 = sub_2169EF640(&qword_27CAB6ED8, MEMORY[0x277D2A7C8], MEMORY[0x277D2A798]);
  v167 = a1;
  v161 = v46;
  v138 = v47;
  v155 = sub_21700B934();
  v156 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  v50 = 0xE500000000000000;
  *(inited + 32) = 0x6F54646461;
  *(inited + 40) = 0xE500000000000000;
  v51 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x7972617262694CLL;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 72) = v51;
  *(inited + 80) = 0x4E6E6F6974636573;
  *(inited + 88) = 0xEB00000000656D61;
  v52 = (v157 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v53 = v52[1];
  *(inited + 96) = *v52;
  *(inited + 104) = v53;
  *(inited + 120) = v51;
  *(inited + 128) = 1684957547;
  *(inited + 168) = v51;
  v54 = v170;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = v54;
  *(inited + 152) = a5;
  sub_21700DF14();
  sub_21700DF14();
  v55 = sub_21700E384();
  v170 = v30;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v30);
  sub_21700D6F4();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v174 = v55;
  sub_2166EF9C4(&v174, v173);
  v56 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v172 = v56;
  sub_2166EF9D4();
  v57 = v172;
  v175 = v51;
  *&v174 = 6579297;
  *(&v174 + 1) = 0xE300000000000000;
  sub_2166EF9C4(&v174, v173);
  swift_isUniquelyReferenced_nonNull_native();
  v172 = v57;
  sub_2166EF9D4();
  v58 = v172;
  v59 = 0x79726F7473;
  switch(v162)
  {
    case 1:
      break;
    case 2:
      v50 = 0xE400000000000000;
      v59 = 1701998445;
      break;
    case 3:
      v59 = 0x636972796CLL;
      break;
    case 4:
      v59 = 0xD000000000000010;
      v50 = 0x80000002170801D0;
      break;
    case 5:
      v50 = 0x80000002170801F0;
      v59 = 0xD000000000000012;
      break;
    case 6:
      v50 = 0xE900000000000075;
      v59 = 0x6E654D6570697773;
      break;
    case 7:
      v50 = 0x8000000217080210;
      v59 = 0xD000000000000015;
      break;
    default:
      v50 = 0xE800000000000000;
      v59 = 0x6472616F6279656BLL;
      break;
  }

  v175 = v51;
  *&v174 = v59;
  *(&v174 + 1) = v50;
  sub_2166EF9C4(&v174, v173);
  swift_isUniquelyReferenced_nonNull_native();
  v172 = v58;
  sub_2166EF9D4();
  v60 = v172;
  sub_2166A6E54(v43, v40, &qword_27CABA820, &unk_217018CE0);
  v61 = v170;
  if (__swift_getEnumTagSinglePayload(v40, 1, v170) == 1)
  {
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v62 = v153;
    v63 = v137;
    (*(v153 + 32))(v137, v40, v61);
    v64 = sub_217005DE4();
    v175 = v51;
    *&v174 = v64;
    *(&v174 + 1) = v65;
    sub_2166EF9C4(&v174, v173);
    swift_isUniquelyReferenced_nonNull_native();
    v172 = v60;
    sub_2166EF9D4();
    v60 = v172;
    (*(v62 + 8))(v63, v170);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v66 = sub_21700CF84();
  v67 = __swift_project_value_buffer(v66, qword_280E73DB0);
  v68 = v163;
  MEMORY[0x21CE9DD70](v155, v156, 0x6E6F74747562, 0xE600000000000000, v60, v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v69 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_217013DA0;
  v71 = v70 + v69;
  v72 = v164;
  (*(v28 + 16))(v71, v68, v164);
  v73 = v158;
  v74 = v160;
  (*(v158 + 16))(v159, v37, v160);
  sub_21700D244();
  (*(v28 + 8))(v68, v72);
  (*(v73 + 8))(v37, v74);
  sub_2166997CC(v43, &qword_27CABA820, &unk_217018CE0);
  v75 = v168;
  if (sub_216E3D990())
  {
    sub_21700BE44();
    sub_21700BE34();
    v76 = v140;
    sub_2170067E4();
    sub_2169EF640(&qword_27CABF6C8, MEMORY[0x277D2A7C8], MEMORY[0x277D2A7B8]);
    v77 = v141;
    v78 = v167;
    v79 = v161;
    v80 = v144;
    sub_21700BC04();

    (*(v142 + 8))(v76, v80);
    v81 = v143;
    v82 = v145;
    if ((*(v143 + 88))(v77, v145) != *MEMORY[0x277D2B048])
    {
      (*(v165 + 8))(v171, v166);
      (*(v81 + 8))(v77, v82);
      v101 = type metadata accessor for MenuAction(0);
      return __swift_storeEnumTagSinglePayload(v169, 1, 1, v101);
    }

    (*(v81 + 8))(v77, v82);
    v83 = v126;
    (*(*(v79 - 8) + 16))(v126, v78, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6D0, &qword_217033AB0);
    swift_storeEnumTagMultiPayload();
    (*(v165 + 32))(v83 + *(v127 + 44), v171, v166);
    v84 = v169;
    swift_storeEnumTagMultiPayload();
    v85 = v130;
    sub_21678818C(v83, v130, &qword_27CABF6C0, &qword_217033AA8);
    v86 = v135;
    v87 = v152;
    v88 = v136;
    (*(v135 + 16))(v152, v134, v136);
    v89 = (*(v128 + 80) + 24) & ~*(v128 + 80);
    v90 = (v129 + *(v86 + 80) + v89) & ~*(v86 + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = v75;
    sub_21678818C(v85, v91 + v89, &qword_27CABF6C0, &qword_217033AA8);
    (*(v86 + 32))(v91 + v90, v87, v88);
    v92 = type metadata accessor for MenuAction(0);
    v93 = (v84 + *(v92 + 20));
    *v93 = sub_2169EFABC;
    v93[1] = v91;
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v92);
  }

  else
  {
    v94 = v151;
    swift_storeEnumTagMultiPayload();
    v95 = OBJC_IVAR____TtC7MusicUI25LibraryMenuActionProvider_actionDispatcher;
    v96 = *(v75 + 16);
    sub_21700B934();

    type metadata accessor for ObjectGraph(0);
    v97 = v147;
    v98 = v150;
    v167 = v96;
    sub_21700E094();
    v99 = v148;
    *v148 = 0;
    swift_storeEnumTagMultiPayload();
    v100 = v139;
    sub_216B80558(v99, v97, v139);
    sub_2169EF598(v99, type metadata accessor for OpenFinancePageAction.Kind);
    v103 = v119;
    sub_21700D234();
    (*(v149 + 8))(v97, v98);
    (*(v165 + 8))(v171, v166);
    v104 = v120;
    (*(v153 + 32))(v103 + *(v120 + 20), v100, v170);
    v105 = *(v104 + 24);
    v106 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v103 + v105, 1, 1, v106);
    *(v103 + *(v104 + 28)) = 1;
    sub_2169EF534(v94, v169, type metadata accessor for MenuActionType);
    v107 = v125;
    (*(v125 + 16))(v131, v75 + v95, v132);
    v171 = type metadata accessor for ProcessDeepLinkAction;
    v108 = v124;
    sub_2169EF534(v103, v124, type metadata accessor for ProcessDeepLinkAction);
    v109 = v135;
    v110 = v136;
    (*(v135 + 16))(v152, v134, v136);
    v111 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v112 = (v123 + *(v121 + 80) + v111) & ~*(v121 + 80);
    v113 = (v122 + *(v109 + 80) + v112) & ~*(v109 + 80);
    v114 = (v133 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
    v115 = swift_allocObject();
    (*(v107 + 32))(v115 + v111, v131, v132);
    sub_2169EF534(v108, v115 + v112, v171);
    (*(v109 + 32))(v115 + v113, v152, v110);
    *(v115 + v114) = v167;
    v116 = type metadata accessor for MenuAction(0);
    v117 = v169;
    v118 = (v169 + *(v116 + 20));
    *v118 = sub_2169EFAB0;
    v118[1] = v115;
    __swift_storeEnumTagSinglePayload(v117, 0, 1, v116);
  }
}

void sub_2169DB544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_49();
  v31 = v30;
  v33 = v32;
  v249 = v29;
  v250 = v34;
  v244 = v35;
  v37 = v36;
  v251 = v38;
  v238 = v39;
  v216 = v40;
  v42 = v41;
  v199 = a29;
  v198 = a28;
  v210 = a27;
  v207 = a26;
  v206 = a25;
  v205 = a24;
  v231 = a23;
  v248 = a21;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v197 = v43;
  OUTLINED_FUNCTION_29();
  v196 = v44;
  MEMORY[0x28223BE20](v45);
  v211 = &v190 - v46;
  v47 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for ProcessDeepLinkAction(v47);
  OUTLINED_FUNCTION_1();
  v192 = v48;
  v193 = v49;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_103_2();
  v194 = v51;
  v195 = v50;
  MEMORY[0x28223BE20](v52);
  v191 = &v190 - v53;
  OUTLINED_FUNCTION_4_1();
  sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v214 = v55;
  v215 = v54;
  MEMORY[0x28223BE20](v54);
  v213 = v56;
  v235 = &v190 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = v33;
  v209 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(v33, v31);
  OUTLINED_FUNCTION_1();
  v201 = v57;
  v202 = v58;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_103_2();
  v203 = v60;
  v204 = v59;
  MEMORY[0x28223BE20](v61);
  v200 = &v190 - v62;
  v63 = OUTLINED_FUNCTION_4_1();
  v225 = type metadata accessor for OpenFinancePageAction.Kind(v63);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_0();
  v227 = v65;
  OUTLINED_FUNCTION_4_1();
  sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v228 = v67;
  v229 = v66;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_0();
  v226 = v68;
  v69 = OUTLINED_FUNCTION_4_1();
  v234 = type metadata accessor for MenuActionType(v69);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_0();
  v232 = v71;
  OUTLINED_FUNCTION_4_1();
  v223 = sub_21700BD94();
  OUTLINED_FUNCTION_1();
  v221 = v72;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_6_0();
  v219 = v74;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7B0, &qword_217021070);
  OUTLINED_FUNCTION_1();
  v222 = v75;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v76);
  v220 = &v190 - v77;
  OUTLINED_FUNCTION_4_1();
  v245 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v79 = v78;
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_6_0();
  v243 = v81;
  OUTLINED_FUNCTION_4_1();
  v82 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v233 = v83;
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_77();
  v218 = v85 - v86;
  MEMORY[0x28223BE20](v87);
  v217 = &v190 - v88;
  OUTLINED_FUNCTION_4_1();
  v241 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v239 = v89;
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_77();
  v240 = v91 - v92;
  MEMORY[0x28223BE20](v93);
  v95 = &v190 - v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v97 = OUTLINED_FUNCTION_36(v96);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_77();
  v100 = v98 - v99;
  MEMORY[0x28223BE20](v101);
  v103 = &v190 - v102;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v246 = v105;
  v247 = v104;
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_6_0();
  v252 = v106;
  v107 = OUTLINED_FUNCTION_4_1();
  v108 = v248(v107);
  v248 = v42;
  v242 = v108;
  v230 = a22;
  v236 = sub_21700B934();
  v237 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  v111 = 0xE500000000000000;
  *(inited + 32) = 0x6F54646461;
  *(inited + 40) = 0xE500000000000000;
  v112 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x7972617262694CLL;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 72) = v112;
  *(inited + 80) = 0x4E6E6F6974636573;
  *(inited + 88) = 0xEB00000000656D61;
  v113 = (v238 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v114 = v113[1];
  *(inited + 96) = *v113;
  *(inited + 104) = v114;
  *(inited + 120) = v112;
  *(inited + 128) = 1684957547;
  *(inited + 168) = v112;
  v115 = v251;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = v115;
  *(inited + 152) = v37;
  sub_21700DF14();
  sub_21700DF14();
  v116 = sub_21700E384();
  OUTLINED_FUNCTION_38_2();
  v251 = v82;
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v82);
  sub_21700D6F4();
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  v254 = v116;
  OUTLINED_FUNCTION_43_21();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_15_34();
  OUTLINED_FUNCTION_41_16();
  sub_2166EF9D4();
  v256 = v112;
  v254 = 6579297;
  v255 = 0xE300000000000000;
  OUTLINED_FUNCTION_43_21();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_15_34();
  OUTLINED_FUNCTION_41_16();
  sub_2166EF9D4();
  v120 = 0x79726F7473;
  switch(v244)
  {
    case 1:
      break;
    case 2:
      v111 = 0xE400000000000000;
      v120 = 1701998445;
      break;
    case 3:
      v120 = 0x636972796CLL;
      break;
    case 4:
      v120 = 0xD000000000000010;
      v111 = 0x80000002170801D0;
      break;
    case 5:
      v111 = 0x80000002170801F0;
      v120 = 0xD000000000000012;
      break;
    case 6:
      v111 = 0xE900000000000075;
      v120 = 0x6E654D6570697773;
      break;
    case 7:
      v111 = 0x8000000217080210;
      v120 = 0xD000000000000015;
      break;
    default:
      v111 = 0xE800000000000000;
      v120 = 0x6472616F6279656BLL;
      break;
  }

  v256 = v112;
  v254 = v120;
  v255 = v111;
  OUTLINED_FUNCTION_43_21();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_15_34();
  OUTLINED_FUNCTION_41_16();
  sub_2166EF9D4();
  v121 = v253;
  sub_2166A6E54(v103, v100, &qword_27CABA820, &unk_217018CE0);
  v122 = v251;
  if (__swift_getEnumTagSinglePayload(v100, 1, v251) == 1)
  {
    sub_2166997CC(v100, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v123 = v233;
    v124 = v217;
    (*(v233 + 32))(v217, v100, v122);
    v125 = sub_217005DE4();
    v256 = v112;
    v254 = v125;
    v255 = v126;
    OUTLINED_FUNCTION_43_21();
    swift_isUniquelyReferenced_nonNull_native();
    v253 = v121;
    OUTLINED_FUNCTION_41_16();
    sub_2166EF9D4();
    v121 = v253;
    (*(v123 + 8))(v124, v251);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v127 = sub_21700CF84();
  v128 = __swift_project_value_buffer(v127, qword_280E73DB0);
  v129 = v243;
  MEMORY[0x21CE9DD70](v236, v237, 0x6E6F74747562, 0xE600000000000000, v121, v128);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v130 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_217013DA0;
  v132 = v131 + v130;
  v133 = v245;
  (*(v79 + 16))(v132, v129, v245);
  v134 = v239;
  v135 = v241;
  (*(v239 + 16))(v240, v95, v241);
  sub_21700D244();
  (*(v79 + 8))(v129, v133);
  (*(v134 + 8))(v95, v135);
  sub_2166997CC(v103, &qword_27CABA820, &unk_217018CE0);
  v136 = v249;
  if ((sub_216E3D990() & 1) == 0)
  {
    v156 = v232;
    swift_storeEnumTagMultiPayload();
    v157 = OBJC_IVAR____TtC7MusicUI25LibraryMenuActionProvider_actionDispatcher;
    v158 = *(v136 + 16);
    sub_21700B934();

    type metadata accessor for ObjectGraph(0);
    v159 = v226;
    v248 = v158;
    sub_21700E094();
    v160 = v227;
    *v227 = 0;
    swift_storeEnumTagMultiPayload();
    v161 = v218;
    sub_216B80558(v160, v159, v218);
    sub_2169EF598(v160, type metadata accessor for OpenFinancePageAction.Kind);
    v168 = v191;
    sub_21700D234();
    v169 = OUTLINED_FUNCTION_37_24();
    v170(v169);
    v171 = OUTLINED_FUNCTION_33_20();
    v172(v171);
    v173 = v192;
    (*(v233 + 32))(v168 + *(v192 + 20), v161, v251);
    type metadata accessor for ReferrerInfo(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v174, v175, v176, v177);
    *(v168 + *(v173 + 28)) = 1;
    sub_2169EF534(v156, v250, type metadata accessor for MenuActionType);
    v178 = v197;
    (*(v197 + 16))(v211, v136 + v157, v212);
    v252 = type metadata accessor for ProcessDeepLinkAction;
    v179 = v195;
    sub_2169EF534(v168, v195, type metadata accessor for ProcessDeepLinkAction);
    v180 = v214;
    v181 = v215;
    (*(v214 + 16))(v235, v216, v215);
    v182 = (*(v178 + 80) + 16) & ~*(v178 + 80);
    v183 = (v196 + *(v193 + 80) + v182) & ~*(v193 + 80);
    v184 = (v194 + *(v180 + 80) + v183) & ~*(v180 + 80);
    v185 = (v213 + v184 + 7) & 0xFFFFFFFFFFFFFFF8;
    v186 = swift_allocObject();
    (*(v178 + 32))(v186 + v182, v211, v212);
    sub_2169EF534(v179, v186 + v183, v252);
    (*(v180 + 32))(v186 + v184, v235, v181);
    *(v186 + v185) = v248;
    type metadata accessor for MenuAction(0);
    v187 = OUTLINED_FUNCTION_36_20();
    *v188 = v199;
    v188[1] = v186;
    __swift_storeEnumTagSinglePayload(v187, 0, 1, v189);
    goto LABEL_19;
  }

  sub_21700BE44();
  sub_21700BE34();
  v137 = v219;
  sub_2170067E4();
  v138 = v220;
  v139 = v248;
  v140 = v242;
  v141 = v223;
  sub_21700BC04();

  (*(v221 + 8))(v137, v141);
  v142 = v222;
  v143 = v224;
  if ((*(v222 + 88))(v138, v224) == *MEMORY[0x277D2B048])
  {
    (*(v142 + 8))(v138, v143);
    v144 = v200;
    (*(*(v140 - 8) + 16))(v200, v139, v140);
    __swift_instantiateConcreteTypeFromMangledNameV2(v205, v206);
    swift_storeEnumTagMultiPayload();
    (*(v246 + 32))(v144 + *(v201 + 44), v252, v247);
    swift_storeEnumTagMultiPayload();
    v145 = v204;
    v146 = v208;
    v147 = v209;
    sub_21678818C(v144, v204, v208, v209);
    v149 = v214;
    v148 = v215;
    (*(v214 + 16))(v235, v216, v215);
    v150 = (*(v202 + 80) + 24) & ~*(v202 + 80);
    v151 = (v203 + *(v149 + 80) + v150) & ~*(v149 + 80);
    v152 = swift_allocObject();
    *(v152 + 16) = v136;
    sub_21678818C(v145, v152 + v150, v146, v147);
    (*(v149 + 32))(v152 + v151, v235, v148);
    type metadata accessor for MenuAction(0);
    v153 = OUTLINED_FUNCTION_36_20();
    *v154 = v210;
    v154[1] = v152;
    __swift_storeEnumTagSinglePayload(v153, 0, 1, v155);
LABEL_19:

    goto LABEL_20;
  }

  v162 = OUTLINED_FUNCTION_33_20();
  v163(v162);
  (*(v142 + 8))(v138, v143);
  type metadata accessor for MenuAction(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v164, v165, v166, v167);
LABEL_20:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2169DC6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v169 = a7;
  v162 = a6;
  v170 = a4;
  v157 = a3;
  v134 = a2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v125 = *(v132 - 8);
  v123 = *(v125 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v119 - v9;
  v10 = type metadata accessor for ProcessDeepLinkAction(0);
  v11 = *(v10 - 8);
  v120 = v10;
  v121 = v11;
  MEMORY[0x28223BE20](v10);
  v124 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v12;
  MEMORY[0x28223BE20](v13);
  v119 = &v119 - v14;
  v15 = sub_2170075A4();
  v135 = *(v15 - 8);
  v136 = v15;
  MEMORY[0x28223BE20](v15);
  v133 = v16;
  v152 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF650, &unk_217033A40);
  v18 = *(v17 - 8);
  v127 = v17;
  v128 = v18;
  MEMORY[0x28223BE20](v17);
  v129 = v19;
  v130 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v126 = &v119 - v21;
  v146 = type metadata accessor for OpenFinancePageAction.Kind(0);
  MEMORY[0x28223BE20](v146);
  v148 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21700DFD4();
  v149 = *(v23 - 8);
  v150 = v23;
  MEMORY[0x28223BE20](v23);
  v147 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for MenuActionType(0);
  MEMORY[0x28223BE20](v154);
  v151 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_21700BD94();
  v142 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v140 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7B0, &qword_217021070);
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v141 = &v119 - v27;
  v164 = sub_21700CFB4();
  v28 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_217005EF4();
  v153 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v139 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v137 = &v119 - v33;
  v160 = sub_21700D704();
  v158 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v119 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v119 - v42;
  v44 = sub_21700D284();
  v165 = *(v44 - 8);
  v166 = v44;
  MEMORY[0x28223BE20](v44);
  v171 = (&v119 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_2170073D4();
  v47 = sub_2169EF640(&qword_27CABF668, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADC8]);
  v167 = a1;
  v161 = v46;
  v138 = v47;
  v155 = sub_21700B934();
  v156 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  v50 = 0xE500000000000000;
  *(inited + 32) = 0x6F54646461;
  *(inited + 40) = 0xE500000000000000;
  v51 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x7972617262694CLL;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 72) = v51;
  *(inited + 80) = 0x4E6E6F6974636573;
  *(inited + 88) = 0xEB00000000656D61;
  v52 = (v157 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v53 = v52[1];
  *(inited + 96) = *v52;
  *(inited + 104) = v53;
  *(inited + 120) = v51;
  *(inited + 128) = 1684957547;
  *(inited + 168) = v51;
  v54 = v170;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = v54;
  *(inited + 152) = a5;
  sub_21700DF14();
  sub_21700DF14();
  v55 = sub_21700E384();
  v170 = v30;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v30);
  sub_21700D6F4();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v174 = v55;
  sub_2166EF9C4(&v174, v173);
  v56 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v172 = v56;
  sub_2166EF9D4();
  v57 = v172;
  v175 = v51;
  *&v174 = 6579297;
  *(&v174 + 1) = 0xE300000000000000;
  sub_2166EF9C4(&v174, v173);
  swift_isUniquelyReferenced_nonNull_native();
  v172 = v57;
  sub_2166EF9D4();
  v58 = v172;
  v59 = 0x79726F7473;
  switch(v162)
  {
    case 1:
      break;
    case 2:
      v50 = 0xE400000000000000;
      v59 = 1701998445;
      break;
    case 3:
      v59 = 0x636972796CLL;
      break;
    case 4:
      v59 = 0xD000000000000010;
      v50 = 0x80000002170801D0;
      break;
    case 5:
      v50 = 0x80000002170801F0;
      v59 = 0xD000000000000012;
      break;
    case 6:
      v50 = 0xE900000000000075;
      v59 = 0x6E654D6570697773;
      break;
    case 7:
      v50 = 0x8000000217080210;
      v59 = 0xD000000000000015;
      break;
    default:
      v50 = 0xE800000000000000;
      v59 = 0x6472616F6279656BLL;
      break;
  }

  v175 = v51;
  *&v174 = v59;
  *(&v174 + 1) = v50;
  sub_2166EF9C4(&v174, v173);
  swift_isUniquelyReferenced_nonNull_native();
  v172 = v58;
  sub_2166EF9D4();
  v60 = v172;
  sub_2166A6E54(v43, v40, &qword_27CABA820, &unk_217018CE0);
  v61 = v170;
  if (__swift_getEnumTagSinglePayload(v40, 1, v170) == 1)
  {
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v62 = v153;
    v63 = v137;
    (*(v153 + 32))(v137, v40, v61);
    v64 = sub_217005DE4();
    v175 = v51;
    *&v174 = v64;
    *(&v174 + 1) = v65;
    sub_2166EF9C4(&v174, v173);
    swift_isUniquelyReferenced_nonNull_native();
    v172 = v60;
    sub_2166EF9D4();
    v60 = v172;
    (*(v62 + 8))(v63, v170);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v66 = sub_21700CF84();
  v67 = __swift_project_value_buffer(v66, qword_280E73DB0);
  v68 = v163;
  MEMORY[0x21CE9DD70](v155, v156, 0x6E6F74747562, 0xE600000000000000, v60, v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v69 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_217013DA0;
  v71 = v70 + v69;
  v72 = v164;
  (*(v28 + 16))(v71, v68, v164);
  v73 = v158;
  v74 = v160;
  (*(v158 + 16))(v159, v37, v160);
  sub_21700D244();
  (*(v28 + 8))(v68, v72);
  (*(v73 + 8))(v37, v74);
  sub_2166997CC(v43, &qword_27CABA820, &unk_217018CE0);
  v75 = v168;
  if (sub_216E3D990())
  {
    sub_21700BE44();
    sub_21700BE34();
    v76 = v140;
    sub_2170067E4();
    sub_2169EF640(&qword_27CABF660, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADD8]);
    v77 = v141;
    v78 = v167;
    v79 = v161;
    v80 = v144;
    sub_21700BC04();

    (*(v142 + 8))(v76, v80);
    v81 = v143;
    v82 = v145;
    if ((*(v143 + 88))(v77, v145) != *MEMORY[0x277D2B048])
    {
      (*(v165 + 8))(v171, v166);
      (*(v81 + 8))(v77, v82);
      v101 = type metadata accessor for MenuAction(0);
      return __swift_storeEnumTagSinglePayload(v169, 1, 1, v101);
    }

    (*(v81 + 8))(v77, v82);
    v83 = v126;
    (*(*(v79 - 8) + 16))(v126, v78, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF670, &unk_217033A60);
    swift_storeEnumTagMultiPayload();
    (*(v165 + 32))(v83 + *(v127 + 44), v171, v166);
    v84 = v169;
    swift_storeEnumTagMultiPayload();
    v85 = v130;
    sub_21678818C(v83, v130, &qword_27CABF650, &unk_217033A40);
    v86 = v135;
    v87 = v152;
    v88 = v136;
    (*(v135 + 16))(v152, v134, v136);
    v89 = (*(v128 + 80) + 24) & ~*(v128 + 80);
    v90 = (v129 + *(v86 + 80) + v89) & ~*(v86 + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = v75;
    sub_21678818C(v85, v91 + v89, &qword_27CABF650, &unk_217033A40);
    (*(v86 + 32))(v91 + v90, v87, v88);
    v92 = type metadata accessor for MenuAction(0);
    v93 = (v84 + *(v92 + 20));
    *v93 = sub_2169EFAA8;
    v93[1] = v91;
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v92);
  }

  else
  {
    v94 = v151;
    swift_storeEnumTagMultiPayload();
    v95 = OBJC_IVAR____TtC7MusicUI25LibraryMenuActionProvider_actionDispatcher;
    v96 = *(v75 + 16);
    sub_21700B934();

    type metadata accessor for ObjectGraph(0);
    v97 = v147;
    v98 = v150;
    v167 = v96;
    sub_21700E094();
    v99 = v148;
    *v148 = 0;
    swift_storeEnumTagMultiPayload();
    v100 = v139;
    sub_216B80558(v99, v97, v139);
    sub_2169EF598(v99, type metadata accessor for OpenFinancePageAction.Kind);
    v103 = v119;
    sub_21700D234();
    (*(v149 + 8))(v97, v98);
    (*(v165 + 8))(v171, v166);
    v104 = v120;
    (*(v153 + 32))(v103 + *(v120 + 20), v100, v170);
    v105 = *(v104 + 24);
    v106 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v103 + v105, 1, 1, v106);
    *(v103 + *(v104 + 28)) = 1;
    sub_2169EF534(v94, v169, type metadata accessor for MenuActionType);
    v107 = v125;
    (*(v125 + 16))(v131, v75 + v95, v132);
    v171 = type metadata accessor for ProcessDeepLinkAction;
    v108 = v124;
    sub_2169EF534(v103, v124, type metadata accessor for ProcessDeepLinkAction);
    v109 = v135;
    v110 = v136;
    (*(v135 + 16))(v152, v134, v136);
    v111 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v112 = (v123 + *(v121 + 80) + v111) & ~*(v121 + 80);
    v113 = (v122 + *(v109 + 80) + v112) & ~*(v109 + 80);
    v114 = (v133 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
    v115 = swift_allocObject();
    (*(v107 + 32))(v115 + v111, v131, v132);
    sub_2169EF534(v108, v115 + v112, v171);
    (*(v109 + 32))(v115 + v113, v152, v110);
    *(v115 + v114) = v167;
    v116 = type metadata accessor for MenuAction(0);
    v117 = v169;
    v118 = (v169 + *(v116 + 20));
    *v118 = sub_2169EF594;
    v118[1] = v115;
    __swift_storeEnumTagSinglePayload(v117, 0, 1, v116);
  }
}

uint64_t sub_2169DDB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E0, &qword_217033AB8);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB34();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788, &qword_217021040);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v30 = sub_21700C1E4();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E8, qword_217033AC0);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType(0);
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF6E0, &qword_217033AB8);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF6E0, &qword_217033AB8);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EF6F8;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169DE9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6C0, &qword_217033AA8);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB34();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788, &qword_217021040);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v30 = sub_217006B84();
  sub_2169EF640(&qword_27CABF6C8, MEMORY[0x277D2A7C8], MEMORY[0x277D2A7B8]);
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    sub_2169EF640(&qword_27CAB6ED8, MEMORY[0x277D2A7C8], MEMORY[0x277D2A798]);
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6D0, &qword_217033AB0);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType(0);
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF6C0, &qword_217033AA8);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF6C0, &qword_217033AA8);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EF688;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169DF91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B0, &unk_217041EA0);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB34();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788, &qword_217021040);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v30 = sub_21700BA44();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B8, &qword_217033AA0);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType(0);
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF6B0, &unk_217041EA0);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF6B0, &unk_217041EA0);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EF624;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E07F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF698, &qword_217033A88);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB34();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788, &qword_217021040);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v30 = sub_21700C924();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6A0, &unk_217033A90);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType(0);
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF698, &qword_217033A88);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF698, &qword_217033A88);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EF608;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E16CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF688, &unk_217041EB0);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB34();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788, &qword_217021040);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v30 = sub_21700C084();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF690, &qword_217033A80);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType(0);
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF688, &unk_217041EB0);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF688, &unk_217041EB0);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EF5EC;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E25A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF650, &unk_217033A40);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB34();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788, &qword_217021040);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v30 = sub_2170073D4();
  sub_2169EF640(&qword_27CABF660, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADD8]);
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    sub_2169EF640(&qword_27CABF668, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADC8]);
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF670, &unk_217033A60);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType(0);
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF650, &unk_217033A40);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF650, &unk_217033A40);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EF518;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E34DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E0, &qword_217033AB8);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BCB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680, &unk_217033A70);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067D4();
  v30 = sub_21700C1E4();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E8, qword_217033AC0);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType(0);
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF6E0, &qword_217033AB8);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF6E0, &qword_217033AB8);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFAC0;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E43B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6C0, &qword_217033AA8);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BCB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680, &unk_217033A70);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067D4();
  v30 = sub_217006B84();
  sub_2169EF640(&qword_27CABF6C8, MEMORY[0x277D2A7C8], MEMORY[0x277D2A7B8]);
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    sub_2169EF640(&qword_27CAB6ED8, MEMORY[0x277D2A7C8], MEMORY[0x277D2A798]);
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6D0, &qword_217033AB0);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType(0);
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF6C0, &qword_217033AA8);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF6C0, &qword_217033AA8);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFABC;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E52EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B0, &unk_217041EA0);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BCB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680, &unk_217033A70);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067D4();
  v30 = sub_21700BA44();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B8, &qword_217033AA0);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType(0);
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF6B0, &unk_217041EA0);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF6B0, &unk_217041EA0);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFAB8;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E61C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF698, &qword_217033A88);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BCB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680, &unk_217033A70);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067D4();
  v30 = sub_21700C924();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6A0, &unk_217033A90);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType(0);
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF698, &qword_217033A88);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF698, &qword_217033A88);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFAB4;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E709C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF688, &unk_217041EB0);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BCB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680, &unk_217033A70);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067D4();
  v30 = sub_21700C084();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF690, &qword_217033A80);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType(0);
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF688, &unk_217041EB0);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF688, &unk_217041EB0);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFAAC;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E7F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF650, &unk_217033A40);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BCB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680, &unk_217033A70);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067D4();
  v30 = sub_2170073D4();
  sub_2169EF640(&qword_27CABF660, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADD8]);
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    sub_2169EF640(&qword_27CABF668, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADC8]);
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820, &unk_217018CE0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820, &unk_217018CE0);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF670, &unk_217033A60);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType(0);
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF650, &unk_217033A40);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF650, &unk_217033A40);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFAA8;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E8EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v89 = a6;
  v86 = a5;
  v85 = a4;
  v84 = a3;
  v105 = a2;
  v111 = a7;
  v108 = sub_2170075A4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = v8;
  v106 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E0, &qword_217033AB8);
  v101 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v103 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  MEMORY[0x28223BE20](v10);
  v99 = &v78 - v11;
  v98 = sub_21700CFB4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_217005EF4();
  v82 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21700D704();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v78 - v20;
  v93 = sub_21700D284();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658, &unk_217033A50);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v78 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006834();
  v30 = sub_21700C1E4();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v78 = a1;
    v79 = sub_21700B934();
    v80 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v34 = 0xE800000000000000;
    *(inited + 32) = 0x64616F6C6E776F64;
    *(inited + 40) = 0xE800000000000000;
    v35 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v35;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v36 = (v84 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    *(inited + 96) = *v36;
    *(inited + 104) = v37;
    *(inited + 120) = v35;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v35;
    v38 = v85;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v86;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v83;
    v41 = v87;
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v87);
    sub_21700D6F4();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v114 = v39;
    sub_2166EF9C4(&v114, &v113);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v42;
    sub_2166EF9D4();
    v43 = v112;
    v115 = v35;
    *&v114 = 0x64616F6C6E776F64;
    *(&v114 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v43;
    sub_2166EF9D4();
    v44 = v112;
    v45 = 0x6472616F6279656BLL;
    v46 = v40;
    switch(v89)
    {
      case 1:
        v34 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v45 = 1701998445;
        break;
      case 3:
        v34 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v34 = 0x80000002170801D0;
        break;
      case 5:
        v34 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v34 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v34 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v115 = v35;
    *&v114 = v45;
    *(&v114 + 1) = v34;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v44;
    sub_2166EF9D4();
    v49 = v112;
    v50 = v88;
    sub_2166A6E54(v40, v88, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v50, 1, v41) == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v51 = v82;
      v52 = v81;
      (*(v82 + 32))(v81, v50, v41);
      v53 = sub_217005DE4();
      v115 = v35;
      *&v114 = v53;
      *(&v114 + 1) = v54;
      sub_2166EF9C4(&v114, &v113);
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v49;
      sub_2166EF9D4();
      v49 = v112;
      (*(v51 + 8))(v52, v41);
    }

    v89 = v30;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v55 = sub_21700CF84();
    v56 = __swift_project_value_buffer(v55, qword_280E73DB0);
    v57 = v96;
    MEMORY[0x21CE9DD70](v79, v80, 0x6E6F74747562, 0xE600000000000000, v49, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v58 = v97;
    v59 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_217013DA0;
    v61 = v60 + v59;
    v62 = v98;
    (*(v58 + 16))(v61, v57, v98);
    v63 = v94;
    v64 = v110;
    v65 = v95;
    (*(v94 + 16))(v91, v110, v95);
    v66 = v90;
    sub_21700D244();
    (*(v58 + 8))(v57, v62);
    (*(v63 + 8))(v64, v65);
    sub_2166997CC(v46, &qword_27CABA820, &unk_217018CE0);
    v67 = v99;
    (*(*(v89 - 8) + 16))(v99, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E8, qword_217033AC0);
    swift_storeEnumTagMultiPayload();
    (*(v92 + 32))(v67 + *(v100 + 44), v66, v93);
    type metadata accessor for MenuActionType(0);
    v68 = v111;
    swift_storeEnumTagMultiPayload();
    v69 = v103;
    sub_21678818C(v67, v103, &qword_27CABF6E0, &qword_217033AB8);
    v70 = v107;
    v71 = v106;
    v72 = v108;
    (*(v107 + 16))(v106, v105, v108);
    v73 = (*(v101 + 80) + 24) & ~*(v101 + 80);
    v74 = (v102 + *(v70 + 80) + v73) & ~*(v70 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v109;
    sub_21678818C(v69, v75 + v73, &qword_27CABF6E0, &qword_217033AB8);
    (*(v70 + 32))(v75 + v74, v71, v72);
    v76 = type metadata accessor for MenuAction(0);
    v77 = (v68 + *(v76 + 20));
    *v77 = sub_2169EFAC0;
    v77[1] = v75;
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v76);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v111, 1, 1, v47);
  }
}

uint64_t sub_2169E9D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v90 = a6;
  v87 = a5;
  v86 = a4;
  v85 = a3;
  v106 = a2;
  v112 = a7;
  v109 = sub_2170075A4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = v8;
  v107 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6C0, &qword_217033AA8);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v104 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v9;
  MEMORY[0x28223BE20](v10);
  v100 = &v79 - v11;
  v99 = sub_21700CFB4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_217005EF4();
  v83 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_21700D704();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v111 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v89 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = &v79 - v20;
  v94 = sub_21700D284();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658, &unk_217033A50);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006834();
  v30 = sub_217006B84();
  sub_2169EF640(&qword_27CABF6C8, MEMORY[0x277D2A7C8], MEMORY[0x277D2A7B8]);
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    sub_2169EF640(&qword_27CAB6ED8, MEMORY[0x277D2A7C8], MEMORY[0x277D2A798]);
    v79 = a1;
    v80 = sub_21700B934();
    v81 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v34 = 0xE800000000000000;
    *(inited + 32) = 0x64616F6C6E776F64;
    *(inited + 40) = 0xE800000000000000;
    v35 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v35;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v36 = (v85 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    *(inited + 96) = *v36;
    *(inited + 104) = v37;
    *(inited + 120) = v35;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v35;
    v38 = v86;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v87;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v84;
    v41 = v88;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v88);
    sub_21700D6F4();
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v115 = v39;
    sub_2166EF9C4(&v115, &v114);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v113 = v42;
    sub_2166EF9D4();
    v43 = v113;
    v116 = v35;
    *&v115 = 0x64616F6C6E776F64;
    *(&v115 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v115, &v114);
    swift_isUniquelyReferenced_nonNull_native();
    v113 = v43;
    sub_2166EF9D4();
    v44 = v113;
    v45 = 0x6472616F6279656BLL;
    v46 = v40;
    switch(v90)
    {
      case 1:
        v34 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v45 = 1701998445;
        break;
      case 3:
        v34 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v34 = 0x80000002170801D0;
        break;
      case 5:
        v34 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v34 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v34 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v116 = v35;
    *&v115 = v45;
    *(&v115 + 1) = v34;
    sub_2166EF9C4(&v115, &v114);
    swift_isUniquelyReferenced_nonNull_native();
    v113 = v44;
    sub_2166EF9D4();
    v49 = v113;
    v50 = v89;
    sub_2166A6E54(v40, v89, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v50, 1, v41) == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v51 = v83;
      v52 = v82;
      (*(v83 + 32))(v82, v50, v41);
      v53 = sub_217005DE4();
      v116 = v35;
      *&v115 = v53;
      *(&v115 + 1) = v54;
      sub_2166EF9C4(&v115, &v114);
      swift_isUniquelyReferenced_nonNull_native();
      v113 = v49;
      sub_2166EF9D4();
      v49 = v113;
      (*(v51 + 8))(v52, v41);
    }

    v90 = v30;
    v55 = v46;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v97;
    MEMORY[0x21CE9DD70](v80, v81, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v98;
    v60 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v99;
    (*(v59 + 16))(v62, v58, v99);
    v64 = v95;
    v65 = v111;
    v66 = v96;
    (*(v95 + 16))(v92, v111, v96);
    v67 = v91;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v55, &qword_27CABA820, &unk_217018CE0);
    v68 = v100;
    (*(*(v90 - 8) + 16))(v100, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6D0, &qword_217033AB0);
    swift_storeEnumTagMultiPayload();
    (*(v93 + 32))(v68 + *(v101 + 44), v67, v94);
    type metadata accessor for MenuActionType(0);
    v69 = v112;
    swift_storeEnumTagMultiPayload();
    v70 = v104;
    sub_21678818C(v68, v104, &qword_27CABF6C0, &qword_217033AA8);
    v71 = v108;
    v72 = v107;
    v73 = v109;
    (*(v108 + 16))(v107, v106, v109);
    v74 = (*(v102 + 80) + 24) & ~*(v102 + 80);
    v75 = (v103 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v110;
    sub_21678818C(v70, v76 + v74, &qword_27CABF6C0, &qword_217033AA8);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFABC;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v112, 1, 1, v47);
  }
}

uint64_t sub_2169EAC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v89 = a6;
  v86 = a5;
  v85 = a4;
  v84 = a3;
  v105 = a2;
  v111 = a7;
  v108 = sub_2170075A4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = v8;
  v106 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B0, &unk_217041EA0);
  v101 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v103 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  MEMORY[0x28223BE20](v10);
  v99 = &v78 - v11;
  v98 = sub_21700CFB4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_217005EF4();
  v82 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21700D704();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v78 - v20;
  v93 = sub_21700D284();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658, &unk_217033A50);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v78 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006834();
  v30 = sub_21700BA44();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v78 = a1;
    v79 = sub_21700B934();
    v80 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v34 = 0xE800000000000000;
    *(inited + 32) = 0x64616F6C6E776F64;
    *(inited + 40) = 0xE800000000000000;
    v35 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v35;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v36 = (v84 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    *(inited + 96) = *v36;
    *(inited + 104) = v37;
    *(inited + 120) = v35;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v35;
    v38 = v85;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v86;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v83;
    v41 = v87;
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v87);
    sub_21700D6F4();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v114 = v39;
    sub_2166EF9C4(&v114, &v113);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v42;
    sub_2166EF9D4();
    v43 = v112;
    v115 = v35;
    *&v114 = 0x64616F6C6E776F64;
    *(&v114 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v43;
    sub_2166EF9D4();
    v44 = v112;
    v45 = 0x6472616F6279656BLL;
    v46 = v40;
    switch(v89)
    {
      case 1:
        v34 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v45 = 1701998445;
        break;
      case 3:
        v34 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v34 = 0x80000002170801D0;
        break;
      case 5:
        v34 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v34 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v34 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v115 = v35;
    *&v114 = v45;
    *(&v114 + 1) = v34;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v44;
    sub_2166EF9D4();
    v49 = v112;
    v50 = v88;
    sub_2166A6E54(v40, v88, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v50, 1, v41) == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v51 = v82;
      v52 = v81;
      (*(v82 + 32))(v81, v50, v41);
      v53 = sub_217005DE4();
      v115 = v35;
      *&v114 = v53;
      *(&v114 + 1) = v54;
      sub_2166EF9C4(&v114, &v113);
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v49;
      sub_2166EF9D4();
      v49 = v112;
      (*(v51 + 8))(v52, v41);
    }

    v89 = v30;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v55 = sub_21700CF84();
    v56 = __swift_project_value_buffer(v55, qword_280E73DB0);
    v57 = v96;
    MEMORY[0x21CE9DD70](v79, v80, 0x6E6F74747562, 0xE600000000000000, v49, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v58 = v97;
    v59 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_217013DA0;
    v61 = v60 + v59;
    v62 = v98;
    (*(v58 + 16))(v61, v57, v98);
    v63 = v94;
    v64 = v110;
    v65 = v95;
    (*(v94 + 16))(v91, v110, v95);
    v66 = v90;
    sub_21700D244();
    (*(v58 + 8))(v57, v62);
    (*(v63 + 8))(v64, v65);
    sub_2166997CC(v46, &qword_27CABA820, &unk_217018CE0);
    v67 = v99;
    (*(*(v89 - 8) + 16))(v99, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B8, &qword_217033AA0);
    swift_storeEnumTagMultiPayload();
    (*(v92 + 32))(v67 + *(v100 + 44), v66, v93);
    type metadata accessor for MenuActionType(0);
    v68 = v111;
    swift_storeEnumTagMultiPayload();
    v69 = v103;
    sub_21678818C(v67, v103, &qword_27CABF6B0, &unk_217041EA0);
    v70 = v107;
    v71 = v106;
    v72 = v108;
    (*(v107 + 16))(v106, v105, v108);
    v73 = (*(v101 + 80) + 24) & ~*(v101 + 80);
    v74 = (v102 + *(v70 + 80) + v73) & ~*(v70 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v109;
    sub_21678818C(v69, v75 + v73, &qword_27CABF6B0, &unk_217041EA0);
    (*(v70 + 32))(v75 + v74, v71, v72);
    v76 = type metadata accessor for MenuAction(0);
    v77 = (v68 + *(v76 + 20));
    *v77 = sub_2169EFAB8;
    v77[1] = v75;
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v76);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v111, 1, 1, v47);
  }
}

uint64_t sub_2169EBB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v89 = a6;
  v86 = a5;
  v85 = a4;
  v84 = a3;
  v105 = a2;
  v111 = a7;
  v108 = sub_2170075A4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = v8;
  v106 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF698, &qword_217033A88);
  v101 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v103 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  MEMORY[0x28223BE20](v10);
  v99 = &v78 - v11;
  v98 = sub_21700CFB4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_217005EF4();
  v82 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21700D704();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v78 - v20;
  v93 = sub_21700D284();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658, &unk_217033A50);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v78 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006834();
  v30 = sub_21700C924();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v78 = a1;
    v79 = sub_21700B934();
    v80 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v34 = 0xE800000000000000;
    *(inited + 32) = 0x64616F6C6E776F64;
    *(inited + 40) = 0xE800000000000000;
    v35 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v35;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v36 = (v84 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    *(inited + 96) = *v36;
    *(inited + 104) = v37;
    *(inited + 120) = v35;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v35;
    v38 = v85;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v86;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v83;
    v41 = v87;
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v87);
    sub_21700D6F4();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v114 = v39;
    sub_2166EF9C4(&v114, &v113);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v42;
    sub_2166EF9D4();
    v43 = v112;
    v115 = v35;
    *&v114 = 0x64616F6C6E776F64;
    *(&v114 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v43;
    sub_2166EF9D4();
    v44 = v112;
    v45 = 0x6472616F6279656BLL;
    v46 = v40;
    switch(v89)
    {
      case 1:
        v34 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v45 = 1701998445;
        break;
      case 3:
        v34 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v34 = 0x80000002170801D0;
        break;
      case 5:
        v34 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v34 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v34 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v115 = v35;
    *&v114 = v45;
    *(&v114 + 1) = v34;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v44;
    sub_2166EF9D4();
    v49 = v112;
    v50 = v88;
    sub_2166A6E54(v40, v88, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v50, 1, v41) == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v51 = v82;
      v52 = v81;
      (*(v82 + 32))(v81, v50, v41);
      v53 = sub_217005DE4();
      v115 = v35;
      *&v114 = v53;
      *(&v114 + 1) = v54;
      sub_2166EF9C4(&v114, &v113);
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v49;
      sub_2166EF9D4();
      v49 = v112;
      (*(v51 + 8))(v52, v41);
    }

    v89 = v30;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v55 = sub_21700CF84();
    v56 = __swift_project_value_buffer(v55, qword_280E73DB0);
    v57 = v96;
    MEMORY[0x21CE9DD70](v79, v80, 0x6E6F74747562, 0xE600000000000000, v49, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v58 = v97;
    v59 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_217013DA0;
    v61 = v60 + v59;
    v62 = v98;
    (*(v58 + 16))(v61, v57, v98);
    v63 = v94;
    v64 = v110;
    v65 = v95;
    (*(v94 + 16))(v91, v110, v95);
    v66 = v90;
    sub_21700D244();
    (*(v58 + 8))(v57, v62);
    (*(v63 + 8))(v64, v65);
    sub_2166997CC(v46, &qword_27CABA820, &unk_217018CE0);
    v67 = v99;
    (*(*(v89 - 8) + 16))(v99, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6A0, &unk_217033A90);
    swift_storeEnumTagMultiPayload();
    (*(v92 + 32))(v67 + *(v100 + 44), v66, v93);
    type metadata accessor for MenuActionType(0);
    v68 = v111;
    swift_storeEnumTagMultiPayload();
    v69 = v103;
    sub_21678818C(v67, v103, &qword_27CABF698, &qword_217033A88);
    v70 = v107;
    v71 = v106;
    v72 = v108;
    (*(v107 + 16))(v106, v105, v108);
    v73 = (*(v101 + 80) + 24) & ~*(v101 + 80);
    v74 = (v102 + *(v70 + 80) + v73) & ~*(v70 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v109;
    sub_21678818C(v69, v75 + v73, &qword_27CABF698, &qword_217033A88);
    (*(v70 + 32))(v75 + v74, v71, v72);
    v76 = type metadata accessor for MenuAction(0);
    v77 = (v68 + *(v76 + 20));
    *v77 = sub_2169EFAB4;
    v77[1] = v75;
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v76);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v111, 1, 1, v47);
  }
}

uint64_t sub_2169ECA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v89 = a6;
  v86 = a5;
  v85 = a4;
  v84 = a3;
  v105 = a2;
  v111 = a7;
  v108 = sub_2170075A4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = v8;
  v106 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF688, &unk_217041EB0);
  v101 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v103 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  MEMORY[0x28223BE20](v10);
  v99 = &v78 - v11;
  v98 = sub_21700CFB4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_217005EF4();
  v82 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21700D704();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v78 - v20;
  v93 = sub_21700D284();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658, &unk_217033A50);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v78 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006834();
  v30 = sub_21700C084();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v78 = a1;
    v79 = sub_21700B934();
    v80 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v34 = 0xE800000000000000;
    *(inited + 32) = 0x64616F6C6E776F64;
    *(inited + 40) = 0xE800000000000000;
    v35 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v35;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v36 = (v84 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    *(inited + 96) = *v36;
    *(inited + 104) = v37;
    *(inited + 120) = v35;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v35;
    v38 = v85;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v86;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v83;
    v41 = v87;
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v87);
    sub_21700D6F4();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v114 = v39;
    sub_2166EF9C4(&v114, &v113);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v42;
    sub_2166EF9D4();
    v43 = v112;
    v115 = v35;
    *&v114 = 0x64616F6C6E776F64;
    *(&v114 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v43;
    sub_2166EF9D4();
    v44 = v112;
    v45 = 0x6472616F6279656BLL;
    v46 = v40;
    switch(v89)
    {
      case 1:
        v34 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v45 = 1701998445;
        break;
      case 3:
        v34 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v34 = 0x80000002170801D0;
        break;
      case 5:
        v34 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v34 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v34 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v115 = v35;
    *&v114 = v45;
    *(&v114 + 1) = v34;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v44;
    sub_2166EF9D4();
    v49 = v112;
    v50 = v88;
    sub_2166A6E54(v40, v88, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v50, 1, v41) == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v51 = v82;
      v52 = v81;
      (*(v82 + 32))(v81, v50, v41);
      v53 = sub_217005DE4();
      v115 = v35;
      *&v114 = v53;
      *(&v114 + 1) = v54;
      sub_2166EF9C4(&v114, &v113);
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v49;
      sub_2166EF9D4();
      v49 = v112;
      (*(v51 + 8))(v52, v41);
    }

    v89 = v30;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v55 = sub_21700CF84();
    v56 = __swift_project_value_buffer(v55, qword_280E73DB0);
    v57 = v96;
    MEMORY[0x21CE9DD70](v79, v80, 0x6E6F74747562, 0xE600000000000000, v49, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v58 = v97;
    v59 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_217013DA0;
    v61 = v60 + v59;
    v62 = v98;
    (*(v58 + 16))(v61, v57, v98);
    v63 = v94;
    v64 = v110;
    v65 = v95;
    (*(v94 + 16))(v91, v110, v95);
    v66 = v90;
    sub_21700D244();
    (*(v58 + 8))(v57, v62);
    (*(v63 + 8))(v64, v65);
    sub_2166997CC(v46, &qword_27CABA820, &unk_217018CE0);
    v67 = v99;
    (*(*(v89 - 8) + 16))(v99, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF690, &qword_217033A80);
    swift_storeEnumTagMultiPayload();
    (*(v92 + 32))(v67 + *(v100 + 44), v66, v93);
    type metadata accessor for MenuActionType(0);
    v68 = v111;
    swift_storeEnumTagMultiPayload();
    v69 = v103;
    sub_21678818C(v67, v103, &qword_27CABF688, &unk_217041EB0);
    v70 = v107;
    v71 = v106;
    v72 = v108;
    (*(v107 + 16))(v106, v105, v108);
    v73 = (*(v101 + 80) + 24) & ~*(v101 + 80);
    v74 = (v102 + *(v70 + 80) + v73) & ~*(v70 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v109;
    sub_21678818C(v69, v75 + v73, &qword_27CABF688, &unk_217041EB0);
    (*(v70 + 32))(v75 + v74, v71, v72);
    v76 = type metadata accessor for MenuAction(0);
    v77 = (v68 + *(v76 + 20));
    *v77 = sub_2169EFAAC;
    v77[1] = v75;
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v76);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v111, 1, 1, v47);
  }
}

uint64_t sub_2169ED8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v90 = a6;
  v87 = a5;
  v86 = a4;
  v85 = a3;
  v106 = a2;
  v112 = a7;
  v109 = sub_2170075A4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = v8;
  v107 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF650, &unk_217033A40);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v104 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v9;
  MEMORY[0x28223BE20](v10);
  v100 = &v79 - v11;
  v99 = sub_21700CFB4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_217005EF4();
  v83 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_21700D704();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v111 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v89 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = &v79 - v20;
  v94 = sub_21700D284();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658, &unk_217033A50);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006834();
  v30 = sub_2170073D4();
  sub_2169EF640(&qword_27CABF660, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADD8]);
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    sub_2169EF640(&qword_27CABF668, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADC8]);
    v79 = a1;
    v80 = sub_21700B934();
    v81 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v34 = 0xE800000000000000;
    *(inited + 32) = 0x64616F6C6E776F64;
    *(inited + 40) = 0xE800000000000000;
    v35 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v35;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v36 = (v85 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    *(inited + 96) = *v36;
    *(inited + 104) = v37;
    *(inited + 120) = v35;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v35;
    v38 = v86;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v87;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v84;
    v41 = v88;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v88);
    sub_21700D6F4();
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v115 = v39;
    sub_2166EF9C4(&v115, &v114);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v113 = v42;
    sub_2166EF9D4();
    v43 = v113;
    v116 = v35;
    *&v115 = 0x64616F6C6E776F64;
    *(&v115 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v115, &v114);
    swift_isUniquelyReferenced_nonNull_native();
    v113 = v43;
    sub_2166EF9D4();
    v44 = v113;
    v45 = 0x6472616F6279656BLL;
    v46 = v40;
    switch(v90)
    {
      case 1:
        v34 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v45 = 1701998445;
        break;
      case 3:
        v34 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v34 = 0x80000002170801D0;
        break;
      case 5:
        v34 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v34 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v34 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v116 = v35;
    *&v115 = v45;
    *(&v115 + 1) = v34;
    sub_2166EF9C4(&v115, &v114);
    swift_isUniquelyReferenced_nonNull_native();
    v113 = v44;
    sub_2166EF9D4();
    v49 = v113;
    v50 = v89;
    sub_2166A6E54(v40, v89, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v50, 1, v41) == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v51 = v83;
      v52 = v82;
      (*(v83 + 32))(v82, v50, v41);
      v53 = sub_217005DE4();
      v116 = v35;
      *&v115 = v53;
      *(&v115 + 1) = v54;
      sub_2166EF9C4(&v115, &v114);
      swift_isUniquelyReferenced_nonNull_native();
      v113 = v49;
      sub_2166EF9D4();
      v49 = v113;
      (*(v51 + 8))(v52, v41);
    }

    v90 = v30;
    v55 = v46;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v97;
    MEMORY[0x21CE9DD70](v80, v81, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v59 = v98;
    v60 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v99;
    (*(v59 + 16))(v62, v58, v99);
    v64 = v95;
    v65 = v111;
    v66 = v96;
    (*(v95 + 16))(v92, v111, v96);
    v67 = v91;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v55, &qword_27CABA820, &unk_217018CE0);
    v68 = v100;
    (*(*(v90 - 8) + 16))(v100, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF670, &unk_217033A60);
    swift_storeEnumTagMultiPayload();
    (*(v93 + 32))(v68 + *(v101 + 44), v67, v94);
    type metadata accessor for MenuActionType(0);
    v69 = v112;
    swift_storeEnumTagMultiPayload();
    v70 = v104;
    sub_21678818C(v68, v104, &qword_27CABF650, &unk_217033A40);
    v71 = v108;
    v72 = v107;
    v73 = v109;
    (*(v108 + 16))(v107, v106, v109);
    v74 = (*(v102 + 80) + 24) & ~*(v102 + 80);
    v75 = (v103 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v110;
    sub_21678818C(v70, v76 + v74, &qword_27CABF650, &unk_217033A40);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction(0);
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFAA8;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(v112, 1, 1, v47);
  }
}

void sub_2169EE7DC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_12_38();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_50_2();
  sub_2169DA130(v2, v3, v4, v5, v6, v7, v8);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_50_2();
  sub_2169DE9E4(v9, v10, v11, v12, v13, v14, v15);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_50_2();
  sub_2169E43B4(v16, v17, v18, v19, v20, v21, v22);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  sub_217006B54();

  type metadata accessor for MenuAction(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_50_2();
  sub_2169E9D68(v28, v29, v30, v31, v32, v33, v34);
  v35 = sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  v37 = OUTLINED_FUNCTION_9_45(inited, xmmword_217015240);
  v37[3].n128_u64[0] = v38;
  v37[3].n128_u64[1] = v27;
  v37[4].n128_u64[0] = v35;
  sub_2167A2998(v37);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

void sub_2169EE970()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_12_38();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_25_1();
  v43 = MEMORY[0x277CD7E30];
  v44 = MEMORY[0x277D2AE70];
  v42 = MEMORY[0x277CD7E58];
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_48_2();
  sub_2169DB544(v2, v3, v4, v5, v6, v7, v8, v9, v42, v43, v44, &qword_27CABF6B8, &qword_217033AA0, &unk_282921860, sub_2169EFAB8, &unk_282921838, sub_2169EFAB0, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  OUTLINED_FUNCTION_44_17();
  v10 = OUTLINED_FUNCTION_30_17();
  sub_2166997CC(v10, v11, &unk_2170152D0);
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_48_2();
  sub_2169DF91C(v12, v13, v14, v15, v16, v17, v18);
  v19 = sub_21678C1C4();
  OUTLINED_FUNCTION_20_28(v19);
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_48_2();
  sub_2169E52EC(v20, v21, v22, v23, v24, v25, v26);
  sub_21678C1C4();
  v27 = OUTLINED_FUNCTION_30_17();
  sub_2166997CC(v27, v28, &unk_2170152D0);
  sub_21700BA14();

  v29 = type metadata accessor for MenuAction(0);
  v30 = OUTLINED_FUNCTION_16_33(v29);
  OUTLINED_FUNCTION_22_33();
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_48_2();
  sub_2169EAC88(v31, v32, v33, v34, v35, v36, v37);
  v38 = sub_21678C1C4();
  OUTLINED_FUNCTION_22_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_9_45(inited, xmmword_217015240);
  v40[3].n128_u64[0] = v41;
  v40[3].n128_u64[1] = v30;
  v40[4].n128_u64[0] = v38;
  sub_2167A2998(v40);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_2169EEB74()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_12_38();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_25_1();
  v43 = MEMORY[0x277CD85F0];
  v44 = MEMORY[0x277D2B2B0];
  v42 = MEMORY[0x277CD8608];
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_83();
  sub_2169DB544(v2, v3, v4, v5, v6, v7, v8, v9, v42, v43, v44, &qword_27CABF6A0, &unk_217033A90, &unk_282921798, sub_2169EFAB4, &unk_282921770, sub_2169EFAB0, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  OUTLINED_FUNCTION_44_17();
  v10 = OUTLINED_FUNCTION_30_17();
  sub_2166997CC(v10, v11, &unk_2170152D0);
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_83();
  sub_2169E07F4(v12, v13, v14, v15, v16, v17, v18);
  v19 = sub_21678C1C4();
  OUTLINED_FUNCTION_20_28(v19);
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_83();
  sub_2169E61C4(v20, v21, v22, v23, v24, v25, v26);
  sub_21678C1C4();
  v27 = OUTLINED_FUNCTION_30_17();
  sub_2166997CC(v27, v28, &unk_2170152D0);
  sub_21700C804();

  v29 = type metadata accessor for MenuAction(0);
  v30 = OUTLINED_FUNCTION_16_33(v29);
  OUTLINED_FUNCTION_22_33();
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_83();
  sub_2169EBB44(v31, v32, v33, v34, v35, v36, v37);
  v38 = sub_21678C1C4();
  OUTLINED_FUNCTION_22_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_9_45(inited, xmmword_217015240);
  v40[3].n128_u64[0] = v41;
  v40[3].n128_u64[1] = v30;
  v40[4].n128_u64[0] = v38;
  sub_2167A2998(v40);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_2169EED78()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_12_38();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_25_1();
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for MenuConfiguration(0) + 20);
  swift_storeEnumTagMultiPayload();
  sub_216B88F54(v0 + v7, v6);
  sub_2169EF598(v6, type metadata accessor for MenuContext);
  v44 = MEMORY[0x277CD8218];
  v45 = MEMORY[0x277D2B160];
  v43 = MEMORY[0x277CD8238];
  OUTLINED_FUNCTION_3_77();
  OUTLINED_FUNCTION_13_32();
  sub_2169DB544(v8, v9, v10, v11, v12, v13, v14, v15, v43, v44, v45, &qword_27CABF690, &qword_217033A80, &unk_2829216D0, sub_2169EFAAC, &unk_2829216A8, sub_2169EFAB0, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  v49 = OUTLINED_FUNCTION_44_17();
  sub_2166997CC(v1, &qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_3_77();
  OUTLINED_FUNCTION_13_32();
  sub_2169E16CC(v16, v17, v18, v19, v20, v21, v22);
  v48 = sub_21678C1C4();
  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_3_77();
  OUTLINED_FUNCTION_13_32();
  sub_2169E709C(v23, v24, v25, v26, v27, v28, v29);
  v47 = sub_21678C1C4();
  OUTLINED_FUNCTION_31_27();
  sub_21700C014();

  v30 = type metadata accessor for MenuAction(0);
  v31 = OUTLINED_FUNCTION_16_33(v30);
  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_3_77();
  OUTLINED_FUNCTION_13_32();
  sub_2169ECA00(v32, v33, v34, v35, v36, v37, v38);
  v39 = sub_21678C1C4();
  OUTLINED_FUNCTION_31_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  v41 = OUTLINED_FUNCTION_9_45(inited, xmmword_217015240);
  v41[3].n128_u64[0] = v42;
  v41[3].n128_u64[1] = v31;
  v41[4].n128_u64[0] = v39;
  sub_2167A2998(v41);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_2169EF010()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_12_38();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_26_27();
  sub_2169DC6F8(v2, v3, v4, v5, v6, v7, v8);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_26_27();
  sub_2169E25A4(v9, v10, v11, v12, v13, v14, v15);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_26_27();
  sub_2169E7F74(v16, v17, v18, v19, v20, v21, v22);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  sub_217007394();

  type metadata accessor for MenuAction(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_26_27();
  sub_2169ED8BC(v28, v29, v30, v31, v32, v33, v34);
  v35 = sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  v37 = OUTLINED_FUNCTION_9_45(inited, xmmword_217015240);
  v37[3].n128_u64[0] = v38;
  v37[3].n128_u64[1] = v27;
  v37[4].n128_u64[0] = v35;
  sub_2167A2998(v37);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2169EF1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12[4] = sub_2169EF6A4(a6, a4, a5);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_2166A6E54(a2, boxed_opaque_existential_1, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_2169EF27C()
{

  v1 = OBJC_IVAR____TtC7MusicUI25LibraryMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_2169EF2F4()
{
  sub_2169EF27C();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for LibraryMenuActionProvider(uint64_t a1)
{
  result = qword_280E357C0;
  if (!qword_280E357C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2169EF3A0(uint64_t a1)
{
  sub_216692BBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2169EF534(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2169EF598(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2169EF640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169EF6A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_11Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for ProcessDeepLinkAction(0) - 8);
  v8 = (v4 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v25 = *(*v7 + 64);
  v24 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v11 = *(v9 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v0 + v8);
  v13 = v7[7];
  v14 = sub_217005EF4();
  OUTLINED_FUNCTION_34();
  v16 = v0 + v8 + v13;
  v17 = *(v15 + 8);
  v17(v16, v14);
  v18 = v0 + v8 + v7[8];
  v19 = type metadata accessor for ReferrerInfo(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v19);
  v21 = v25;
  v22 = v24;
  if (!EnumTagSinglePayload)
  {
    if (!__swift_getEnumTagSinglePayload(v18, 1, v14))
    {
      v17(v18, v14);
    }

    v22 = v24;
    v21 = v25;
  }

  (*(v10 + 8))(v0 + ((v8 + v21 + v11) & ~v11), v22);

  return swift_deallocObject();
}

uint64_t sub_2169EF9D4(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2(v7);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v12);
  return sub_2169EF1A4(*(v3 + 16), v3 + v9, v3 + ((v9 + v11 + *(v13 + 80)) & ~*(v13 + 80)), a1, a2, a3);
}

unint64_t sub_2169EFAD8()
{
  result = qword_280E39410[0];
  if (!qword_280E39410[0])
  {
    type metadata accessor for HideAllPlaylistsAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E39410);
  }

  return result;
}

uint64_t sub_2169EFB30(uint64_t a1, uint64_t a2)
{
  v2 = sub_21700D2A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v6 = v9[1];
  sub_216CACD74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  v7 = sub_21700E1F4();

  return v7;
}

uint64_t type metadata accessor for MusicURLRequest(uint64_t a1)
{
  result = qword_280E47250;
  if (!qword_280E47250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2169EFCE0(uint64_t a1)
{
  sub_217006224();
  if (v1 <= 0x3F)
  {
    sub_2169EFDF4();
    if (v2 <= 0x3F)
    {
      sub_2169EFE38(319, &qword_280E2A248, MEMORY[0x277D21BD0]);
      if (v3 <= 0x3F)
      {
        sub_2169EFE38(319, &qword_280E4A4C0, MEMORY[0x277CC95F0]);
        if (v4 <= 0x3F)
        {
          sub_216688154();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2169EFDF4()
{
  result = qword_280E29D80;
  if (!qword_280E29D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D80);
  }

  return result;
}

void sub_2169EFE38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2169EFE90(uint64_t a1)
{
  sub_217006224();
  OUTLINED_FUNCTION_0_107();
  sub_2169F0044(v1, v2, MEMORY[0x277CC9600]);

  return sub_21700E434();
}

uint64_t sub_2169EFF04()
{
  sub_21700F8F4();
  sub_217006224();
  OUTLINED_FUNCTION_0_107();
  sub_2169F0044(v0, v1, MEMORY[0x277CC9600]);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_2169EFF84(uint64_t a1)
{
  sub_21700F8F4();
  sub_217006224();
  OUTLINED_FUNCTION_0_107();
  sub_2169F0044(v1, v2, MEMORY[0x277CC9600]);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_2169F0044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169F00B4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v99 = a3;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v93 = v5;
  v94 = v4;
  MEMORY[0x28223BE20](v4);
  v88 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  v87 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  v89 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  v91 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_4();
  v90 = v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  v23 = v85 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v85 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v85 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v85 - v31;
  v92 = a1;
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v35 = v34;
  v37 = *(v9 + 8);
  v36 = (v9 + 8);
  v38 = v32;
  v39 = v37;
  v96 = v7;
  v37(v38, v7);
  if (v35)
  {
    v85[1] = v12;
    v97 = v33;
    v98 = v35;
    v40 = v99;
    sub_21700F364();
    v41 = v92;
    sub_21700CE04();
    v42 = sub_21700CD44();
    v43 = v29;
    v44 = v96;
    v39(v43, v96);
    v40[40] = v42 & 1;
    sub_21700CE04();
    v45 = sub_21700CD44();
    v39(v26, v44);
    v40[41] = v45 & 1;
    OUTLINED_FUNCTION_1_94();
    sub_21700CE04();
    v46 = sub_21700CD44();
    v39(v23, v44);
    v40[42] = v46 & 1;
    OUTLINED_FUNCTION_1_94();
    v86 = v47;
    v48 = v90;
    sub_21700CE04();
    sub_21700CD44();
    v39(v48, v44);
    OUTLINED_FUNCTION_2_72();
    v40[43] = v49;
    v50 = 0x8000000217085240;
    v51 = v91;
    sub_21700CE04();
    v52 = sub_21700CDB4();
    v54 = v53;
    v39(v51, v44);
    v55 = v41;
    if (v54)
    {
      v56 = v99;
      *(v99 + 48) = v52;
      *(v56 + 56) = v54;
      v50 = 0x8000000217085260;
      v57 = v89;
      sub_21700CE04();
      v58 = sub_21700CDB4();
      v59 = v44;
      v61 = v60;
      v62 = v57;
      v63 = v59;
      v39(v62, v59);
      if (v61)
      {
        v64 = v99;
        *(v99 + 64) = v58;
        *(v64 + 72) = v61;
        v65 = v87;
        sub_21700CE04();
        sub_21700CD44();
        v39(v65, v63);
        OUTLINED_FUNCTION_2_72();
        *(v64 + 80) = v66;
        sub_21700D7A4();
        v91 = v36;
        OUTLINED_FUNCTION_1_94();
        sub_21700CE04();
        v67 = v93;
        v68 = v94;
        v69 = v95;
        (*(v93 + 16))(v88, v95, v94);
        type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0);
        sub_21700D734();
        (*(v67 + 8))(v69, v68);
        return (v39)(v55, v96);
      }

      v86 = 0xD00000000000001ALL;
    }

    else
    {
      v63 = v44;
    }

    v78 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_108();
    v81 = sub_2169F0890(v79, v80, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v81);
    v83 = v82;
    v84 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0);
    *v83 = v86;
    v83[1] = v50;
    v83[2] = v84;
    (*(*(v78 - 8) + 104))(v83, *MEMORY[0x277D22530], v78);
    swift_willThrow();
    (*(v93 + 8))(v95, v94);
    v39(v55, v63);
    result = sub_216788110(v99);
    if (v54)
    {
    }
  }

  else
  {
    v71 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_108();
    v74 = sub_2169F0890(v72, v73, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v74);
    v76 = v75;
    v77 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0);
    *v76 = 25705;
    v76[1] = 0xE200000000000000;
    v76[2] = v77;
    (*(*(v71 - 8) + 104))(v76, *MEMORY[0x277D22530], v71);
    swift_willThrow();
    (*(v93 + 8))(v95, v94);
    return (v39)(v92, v96);
  }

  return result;
}

uint64_t sub_2169F0890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2169F08D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_21700DF14();
  sub_21700E724();
  v5 = sub_21700E4D4();

  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_21700F1E4();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2169F0990(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2169F09D4(uint64_t a1, unint64_t a2, void *a3)
{
  v93 = a3;
  v88 = a2;
  v87 = sub_21700CA64();
  v4 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21700CA54();
  v6 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700E574();
  MEMORY[0x28223BE20](v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v94 = (v12 + 8);
  v83 = (v4 + 8);
  v82 = (v6 + 16);
  v81 = (v6 + 8);
  v13 = (a1 + 64);
  v89 = v14;
  v90 = v10;
  if (!v11)
  {
    return;
  }

  while (1)
  {
    v15 = *(v13 - 1);
    v16 = *v13;
    if (v15)
    {
      v17 = v16 == 2;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_7;
    }

    v18 = *(v13 - 2);
    v19 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v19 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = *(v13 - 3);
    v97 = *(v13 - 4);
    if (v16)
    {
      v18 = sub_21700E5A4();
      v22 = v21;
      v95 = v20;
      sub_21700DF14();
      sub_21700DF14();
      goto LABEL_21;
    }

    sub_21700DF14();
    sub_21700DF14();
    if (sub_21700E624() >= 10)
    {
      break;
    }

LABEL_23:

LABEL_7:
    v13 += 40;
    if (!--v11)
    {
      return;
    }
  }

  v23 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v24 = v96;
  v25 = sub_2169FAA38(17500, 0xE200000000000000, 0);
  v95 = v20;
  if (v24)
  {

    v96 = 0;
LABEL_18:
    sub_21700DF14();
    v22 = v15;
    goto LABEL_21;
  }

  v26 = v25;
  v96 = 0;
  if (!v25)
  {
    goto LABEL_18;
  }

  v27 = sub_21700E624();
  v28 = sub_21700E4D4();
  v29 = sub_21700E4D4();
  v30 = v27;
  v8 = v89;
  v31 = [v26 stringByReplacingMatchesInString:v28 options:0 range:0 withTemplate:{v30, v29}];

  v10 = v90;
  v18 = sub_21700E514();
  v22 = v32;

LABEL_21:
  sub_21700E564();
  v33 = sub_21700E524();
  v35 = v34;
  (*v94)(v10, v8);
  if (v35 >> 60 == 15)
  {

    goto LABEL_23;
  }

  sub_2169FB394(&qword_27CABF840, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  *(&v92 + 1) = v22;
  v36 = v86;
  v37 = v87;
  *&v92 = v18;
  sub_21700CA44();
  sub_21677A404(v33, v35);
  v91 = v33;
  v38 = v96;
  sub_2169FB01C(v33, v35);
  v96 = v38;
  sub_21677A510(v33, v35);
  v39 = v84;
  sub_21700CA34();
  (*v83)(v36, v37);
  v40 = v85;
  *(&v99 + 1) = v85;
  *&v100 = sub_2169FB394(&qword_27CABF848, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
  (*v82)(boxed_opaque_existential_1, v39, v40);
  __swift_project_boxed_opaque_existential_1(&v98, *(&v99 + 1));
  v42 = v96;
  sub_217005BD4();
  v96 = v42;
  v43 = v102;
  v44 = v103;
  __swift_destroy_boxed_opaque_existential_1Tm(&v98);
  (*v81)(v39, v40);
  sub_21677A510(v91, v35);

  v45 = v88;
  v49 = sub_216E1408C(v43, v44, v88, v46, v47, v48);
  v91 = v50;

  v51 = sub_216E144A0(v43, v44);
  v53 = v52;
  v54 = v43;
  v55 = v93;
  sub_21677A524(v54, v44);

  *(&v106 + 9) = *v112;
  HIDWORD(v106) = *&v112[3];
  LOBYTE(v102) = 0;
  *&v104 = v51;
  *(&v104 + 1) = v53;
  *&v105 = v49;
  *(&v105 + 1) = v91;
  *&v106 = v45;
  BYTE8(v106) = 0;
  v107 = v92;
  v108[0] = v51;
  v108[1] = v53;
  v108[2] = v49;
  v108[3] = v91;
  v108[4] = v45;
  v109 = 0;
  *v110 = *v112;
  *&v110[3] = *&v112[3];
  v111 = v92;
  sub_2169FB208(&v104, &v98);
  sub_2169FB240(v108);
  v56 = v95;
  sub_21700DF14();
  swift_isUniquelyReferenced_nonNull_native();
  v57 = *v55;
  v102 = v57;
  v58 = v56;
  v59 = sub_2166AF66C(v97, v56);
  if (!__OFADD__(v57[2], (v60 & 1) == 0))
  {
    v61 = v59;
    v62 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF850, &unk_217033DF0);
    if (sub_21700F554())
    {
      v63 = sub_2166AF66C(v97, v58);
      v10 = v90;
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_36;
      }

      v61 = v63;
      if ((v62 & 1) == 0)
      {
LABEL_28:
        v65 = v102;
        v102[(v61 >> 6) + 8] |= 1 << v61;
        v66 = (v65[6] + 16 * v61);
        *v66 = v97;
        v66[1] = v58;
        v67 = (v65[7] + (v61 << 6));
        v68 = v107;
        v69 = v106;
        v70 = v105;
        *v67 = v104;
        v67[1] = v70;
        v67[2] = v69;
        v67[3] = v68;
        v71 = v65[2];
        v72 = __OFADD__(v71, 1);
        v73 = v71 + 1;
        if (v72)
        {
          goto LABEL_35;
        }

        v65[2] = v73;
        goto LABEL_32;
      }
    }

    else
    {
      v10 = v90;
      if ((v62 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v65 = v102;
    v74 = (v102[7] + (v61 << 6));
    v75 = v74[2];
    v77 = *v74;
    v76 = v74[1];
    v101 = v74[3];
    v100 = v75;
    v98 = v77;
    v99 = v76;
    v78 = v104;
    v79 = v105;
    v80 = v107;
    v74[2] = v106;
    v74[3] = v80;
    *v74 = v78;
    v74[1] = v79;
    sub_2169FB240(&v98);

LABEL_32:
    *v93 = v65;

    v8 = v89;
    goto LABEL_7;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_21700F824();
  __break(1u);
}

void sub_2169F12B4(uint64_t a1, uint64_t a2)
{
  v31 = sub_217006224();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2166BF3C8(a1);
  v7 = 0;
  v34 = a1 & 0xC000000000000001;
  v35 = v6;
  v32 = a1 & 0xFFFFFFFFFFFFFF8;
  v33 = a1;
  v29 = (v4 + 8);
  while (v35 != v7)
  {
    if (v34)
    {
      v8 = MEMORY[0x21CEA0220](v7, v33);
    }

    else
    {
      if (v7 >= *(v32 + 16))
      {
        goto LABEL_11;
      }

      v8 = *(v33 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v10 = v30;
    sub_217006214();
    v37 = sub_2170061F4();
    v12 = v11;
    (*v29)(v10, v31);
    v13 = [v9 value];
    v14 = sub_21700E514();
    v16 = v15;

    v17 = type metadata accessor for SocialContactsCoordinator.Contact(0);
    sub_21700DF14();
    sub_2168A140C(v36, v14, v16, v18, v19, v20, v21, v22, v28, v29, v30, v31, v32, v33, v34, v35, v36[0], v36[1], v36[2], v37, v38, v39, v40, v41, v42, v43, v44, v45, vars0, vars8);

    v23 = *(v17 + 64);
    sub_216DF3B5C(v24);
    v25 = *(*(a2 + v23) + 16);
    sub_216DF3CC0(v25);
    v26 = *(a2 + v23);
    *(v26 + 16) = v25 + 1;
    v27 = v26 + 40 * v25;
    *(v27 + 32) = v37;
    *(v27 + 40) = v12;
    *(v27 + 48) = v14;
    *(v27 + 56) = v16;
    *(v27 + 64) = 1;

    ++v7;
  }
}

void sub_2169F14E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_2166BF3C8(a1);
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CEA0220](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v9 = v7;
    sub_2169F50D4(&v9, a2);

    if (v2)
    {
      return;
    }
  }
}

void sub_2169F15B8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  sub_217005EF4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_95();
  if (v2)
  {
    v7 = OUTLINED_FUNCTION_3_78();
    sub_216AB9904(v7, v8, v9);
    v10 = v17;
    v11 = *(v5 + 16);
    v12 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    do
    {
      v11(v1, v12, v0);
      OUTLINED_FUNCTION_86_0();
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_216AB9904(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_2166EF9C4(&v16, (v10 + 32 * v14 + 32));
      OUTLINED_FUNCTION_8_45();
    }

    while (!v15);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F172C()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for AppsWithAccessComponentModel(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_280E32798, type metadata accessor for AppsWithAccessComponentModel, &unk_2170612A8);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F18A4()
{
  OUTLINED_FUNCTION_49();
  v25 = v1;
  v26 = v2;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_20_29();
    v8 = sub_21700F2B4();
  }

  else
  {
    v8 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_14:
    OUTLINED_FUNCTION_26();
    return;
  }

  v30 = MEMORY[0x277D84F90];
  sub_216AB9A60(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v30;
    v24 = v7 & 0xC000000000000001;
    v11 = v7;
    do
    {
      if (v24)
      {
        v12 = MEMORY[0x21CEA0220](v9, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v9 + 32);
      }

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
      v28 = v13;
      v14 = sub_2166D9530(v25, v6, v4, v26);
      v29 = v14;
      v30 = v10;
      v27[0] = v12;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_216AB9A60(v15 > 1, v16 + 1, 1);
        v13 = v28;
        v17 = v29;
      }

      else
      {
        v17 = v14;
      }

      ++v9;
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v27, v13);
      v19 = MEMORY[0x28223BE20](v18);
      v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21, v19);
      sub_2169FB2FC(v16, v21, &v30, v13, v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v10 = v30;
      v7 = v11;
    }

    while (v8 != v9);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_2169F1B38()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for LinkComponentModel(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_280E3EC50, type metadata accessor for LinkComponentModel, &unk_21702DCA8);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F1D10()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for SearchLandingBrickLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E363D0, type metadata accessor for SearchLandingBrickLockup, &unk_21701D410);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F1EB8()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for ListLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_27CABF8A0, type metadata accessor for ListLockup, &unk_21702564C);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2030()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for SocialCardLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_280E407F0, type metadata accessor for SocialCardLockup, &unk_217027CE8);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2178()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for SocialOnboardingFindFriendsPageLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E2DC28, type metadata accessor for SocialOnboardingFindFriendsPageLockup, &unk_2170412C0);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2320()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for SocialProfileHorizontalLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_280E310E0, type metadata accessor for SocialProfileHorizontalLockup, &unk_217034930);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2468()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for SocialProfileFollowRequestLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_27CABF8A8, type metadata accessor for SocialProfileFollowRequestLockup, &unk_217043540);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F25E0()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for SuggestionItem(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E42A28, type metadata accessor for SuggestionItem, &unk_217045960);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2728()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for TextListComponentModel(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_280E38AD0, type metadata accessor for TextListComponentModel, &unk_21701BF50);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2900()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for AlbumTrackLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E41540, type metadata accessor for AlbumTrackLockup, &unk_217043794);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2A48()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for BubbleLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_280E44DC0, type metadata accessor for BubbleLockup, "-P\x1Bk");
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2B90()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for FlowcaseLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E43620, type metadata accessor for FlowcaseLockup, &unk_21702F2F8);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2CD8()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for HorizontalLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E410F0, type metadata accessor for HorizontalLockup, &unk_217015138);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2E20()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for HorizontalPosterLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E39370, type metadata accessor for HorizontalPosterLockup, &unk_217062870);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2F68()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for LiveRadioGridLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E3DB38, type metadata accessor for LiveRadioGridLockup, &unk_217070820);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F30B0()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for PlaylistTrackLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup, &unk_2170490C4);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F31F8()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for PosterLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E44990, type metadata accessor for PosterLockup, &unk_217028088);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F3340()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for RecentSearchLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E3E960, type metadata accessor for RecentSearchLockup, &unk_217025D44);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F3488()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  _s6LockupVMa(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_280E439E8, _s6LockupVMa, &unk_21701C598);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F35D0()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for SocialOnboardingSharedPlaylistLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_280E2DFF0, type metadata accessor for SocialOnboardingSharedPlaylistLockup, &unk_217047FE0);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F3718()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for SplitPosterLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E3F790, type metadata accessor for SplitPosterLockup, &unk_21701BC90);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F3860()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for SquareLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_280E445F0, type metadata accessor for SquareLockup, &unk_21704EAD0);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F39A8()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for TopSearchLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_280E41D00, type metadata accessor for TopSearchLockup, &unk_21703FEF0);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F3AF0()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for TrackLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_280E44FA0, type metadata accessor for TrackLockup, &unk_21705C688);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F3C38()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for VerticalVideoLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(&qword_280E3CD90, type metadata accessor for VerticalVideoLockup, &unk_2170548D8);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2169F3D80(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = MEMORY[0x277D84F90];
    sub_21700F494();
    v5 = a1 + 40;
    do
    {
      sub_21700DF14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF870, &unk_217033E10);
      swift_dynamicCast();
      sub_21700F464();
      sub_21700F4A4();
      sub_21700F4B4();
      sub_21700F474();
      v5 += 16;
      --v3;
    }

    while (v3);
    return v6;
  }

  return result;
}

void sub_2169F3E74()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v38 = v8;
  v10 = v9;
  v12 = v11;
  v13 = sub_21700DFD4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    goto LABEL_8;
  }

  if (byte_27CABF728 != 1)
  {
    byte_27CABF728 = 1;
LABEL_8:
    v36 = v5;
    type metadata accessor for SocialContactsCoordinator();
    v37 = sub_2169F5334(v12 & 1);
    (*(v14 + 16))(&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v13);
    v21 = *(v14 + 80);
    v34 = v3;
    v35 = v1;
    v22 = (v21 + 16) & ~v21;
    v23 = v22 + v15;
    v33 = v7;
    v24 = ((v23 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    (*(v14 + 32))(v25 + v22, v16, v13);
    *(v25 + v23) = v12 & 1;
    v26 = v25 + (v23 & 0xFFFFFFFFFFFFFFF8);
    v28 = v33;
    v27 = v34;
    *(v26 + 8) = v38;
    *(v26 + 16) = v28;
    v29 = (v25 + v24);
    v30 = v36;
    *v29 = v36;
    v29[1] = v27;
    *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;
    v39[4] = sub_2169F9C94;
    v39[5] = v25;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 1107296256;
    v39[2] = sub_2169F0990;
    v39[3] = &block_descriptor_13;
    v31 = _Block_copy(v39);
    sub_21700DF14();
    sub_2167759F4(v30, v27);

    v32 = v37;
    [v37 addOperationWithBlock_];
    _Block_release(v31);

    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_9:
    OUTLINED_FUNCTION_26();
    return;
  }

  sub_2169F9D40();
  v17 = swift_allocError();
  *v18 = 1;
  v5(1, 0, 0, v17);
  OUTLINED_FUNCTION_26();
}

void sub_2169F4138()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v66 = *MEMORY[0x277D85DE8];
  v4 = sub_21700E574();
  MEMORY[0x28223BE20](v4);
  v8 = *(v3 + 16);
  if (v8)
  {
    v57 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = v5;
    v59 = v1;
    v9 = (v3 + 32);
    v56 = (v6 + 8);
    v10 = MEMORY[0x277D84F90];
    v55 = "stringForDisplay";
    v11 = 0xEF6449656C69666FLL;
    do
    {
      v12 = *v9;
      v13 = *(*v9 + 16);
      sub_21700DF14();
      if (v13)
      {
        sub_2166AF66C(0x72506C6169636F73, v11);
        if (v14)
        {
          sub_2169FB3DC();
          sub_216697664(&v64, &qword_27CABEAD0, &unk_217033EA0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_22_34();
            v10 = v43;
          }

          v16 = *(v10 + 16);
          v15 = *(v10 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_216938A64(v15 > 1, v16 + 1, 1, v10);
            v10 = v44;
          }

          *(v10 + 16) = v16 + 1;
          *(v10 + 8 * v16 + 32) = v12;
          goto LABEL_31;
        }
      }

      v64 = 0uLL;
      *&v65 = 0;
      *(&v65 + 1) = 1;
      sub_216697664(&v64, &qword_27CABEAD0, &unk_217033EA0);
      if (*(v12 + 16))
      {
        v17 = sub_2166AF66C(0x49746361746E6F63, 0xE900000000000064);
        if (v18)
        {
          OUTLINED_FUNCTION_26_28(v17);
          sub_2169FB3DC();
          v64 = v62;
          v65 = v63;
          if (!*(&v63 + 1))
          {

            sub_216697664(&v64, &unk_27CABF7A0, &unk_217014D20);
            goto LABEL_31;
          }

          if (swift_dynamicCast())
          {
            v19 = v11;
            v20 = v61;
            if (!*(v12 + 16))
            {
              goto LABEL_34;
            }

            v21 = v60;
            v22 = sub_2166AF66C(0x64616F6C796170, 0xE700000000000000);
            if ((v23 & 1) == 0)
            {
              goto LABEL_34;
            }

            v54 = v21;
            OUTLINED_FUNCTION_26_28(v22);
            sub_2169FB3DC();

            v64 = v62;
            v65 = v63;
            if (!*(&v63 + 1))
            {

              sub_216697664(&v64, &unk_27CABF7A0, &unk_217014D20);
              goto LABEL_36;
            }

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_35;
            }

            v24 = v59;
            if (!*(v59 + 16))
            {
LABEL_34:

LABEL_35:

LABEL_36:
              v11 = v19;
              goto LABEL_31;
            }

            v52 = v60;
            v53 = v61;
            v25 = sub_2166AF66C(v54, v20);
            v26 = v20;
            v11 = v19;
            if ((v27 & 1) == 0)
            {

              goto LABEL_31;
            }

            v51 = v26;
            v28 = (*(v24 + 56) + (v25 << 6));
            v29 = v28[1];
            if (v29)
            {
              v50 = *v28;
              sub_21700DF14();
              v50 = sub_216E14580(v52, v53, v50, v29, 32);
              v52 = v30;

              v31 = v52;

              if (v31)
              {
                v32 = v57;
                sub_21700E564();
                v50 = sub_21700E524();
                v53 = v33;

                (*v56)(v32, v58);
                if (v53 >> 60 != 15)
                {
                  v52 = objc_opt_self();
                  v34 = sub_217005F94();
                  v60 = 0;
                  v35 = [v52 JSONObjectWithData:v34 options:0 error:&v60];

                  v36 = v60;
                  if (!v35)
                  {
                    v45 = v36;

                    v46 = sub_217005D34();

                    swift_willThrow();
                    sub_21677A510(v50, v53);

                    goto LABEL_31;
                  }

                  sub_21700F1E4();
                  swift_unknownObjectRelease();
                  sub_2166EF9C4(&v62, &v64);
                  sub_2166A6DF8(&v64, &v62);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF9E0, &qword_217029F30);
                  if (swift_dynamicCast())
                  {
                    v37 = v60;
                    *&v62 = v54;
                    *(&v62 + 1) = v51;
                    *(&v63 + 1) = MEMORY[0x277D837D0];
                    swift_isUniquelyReferenced_nonNull_native();
                    v60 = v37;
                    sub_21693A668();
                    v38 = v60;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v54 = v38;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      OUTLINED_FUNCTION_22_34();
                      v10 = v47;
                    }

                    v40 = v50;
                    v42 = *(v10 + 16);
                    v41 = *(v10 + 24);
                    if (v42 >= v41 >> 1)
                    {
                      sub_216938A64(v41 > 1, v42 + 1, 1, v10);
                      v40 = v50;
                      v10 = v48;
                    }

                    sub_21677A510(v40, v53);
                    __swift_destroy_boxed_opaque_existential_1Tm(&v64);
                    *(v10 + 16) = v42 + 1;
                    *(v10 + 8 * v42 + 32) = v54;
                    goto LABEL_31;
                  }

                  __swift_destroy_boxed_opaque_existential_1Tm(&v64);
                  sub_21677A510(v50, v53);
                }
              }
            }

            else
            {
            }
          }
        }
      }

LABEL_31:
      ++v9;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_26();
}