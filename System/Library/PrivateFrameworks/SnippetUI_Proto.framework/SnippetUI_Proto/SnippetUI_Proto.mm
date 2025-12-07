uint64_t sub_26A929950()
{
  result = sub_26A930ADC();
  qword_2803D3418 = result;
  return result;
}

uint64_t static ProtoVisualResponseProvider.setPatternId(_:forViewId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2803D3200 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = qword_2803D3418;
  sub_26A92DBC0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  qword_2803D3418 = v10;
  return swift_endAccess();
}

uint64_t static ProtoVisualResponseProvider.preWarm(using:)(void *a1)
{
  v42 = a1;
  sub_26A930A0C();
  OUTLINED_FUNCTION_0();
  v47 = v2;
  v48 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v46 = v4 - v3;
  OUTLINED_FUNCTION_11();
  sub_26A930A3C();
  OUTLINED_FUNCTION_0();
  v44 = v6;
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v43 = v8 - v7;
  OUTLINED_FUNCTION_11();
  v40 = sub_26A930A1C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v41 = sub_26A9309CC();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17();
  v23 = v22;
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v24 = qword_2803D33E8;
  sub_26A9309BC();
  sub_26A930C1C();
  sub_26A9309AC();
  sub_26A92E37C(0, &qword_2803D3220, 0x277D85C78);
  v25 = v40;
  (*(v10 + 104))(v14, *MEMORY[0x277D851C0], v40);
  v26 = sub_26A930BFC();
  (*(v10 + 8))(v14, v25);
  v27 = v41;
  (*(v16 + 16))(&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v41);
  v28 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v29 = swift_allocObject();
  v30 = v42;
  *(v29 + 16) = v42;
  (*(v16 + 32))(v29 + v28, v21, v27);
  v53 = sub_26A92DDBC;
  v54 = v29;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(COERCE_DOUBLE(1107296256));
  v51 = v31;
  v52 = &block_descriptor;
  v32 = _Block_copy(aBlock);
  v33 = v30;
  v34 = v43;
  sub_26A930A2C();
  v49 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_8();
  sub_26A92E114(v35, v36, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3230, &qword_26A931550);
  sub_26A92DE7C();
  v37 = v46;
  v38 = v48;
  sub_26A930C7C();
  MEMORY[0x26D665B20](0, v34, v37, v32);
  _Block_release(v32);

  (*(v47 + 8))(v37, v38);
  (*(v44 + 8))(v34, v45);
  (*(v16 + 8))(v23, v27);
}

uint64_t sub_26A929F54(void *a1, uint64_t a2)
{
  v34 = a2;
  v36 = a1;
  v2 = sub_26A930A0C();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_26A930A3C();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26A9309CC();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = sub_26A93097C();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3308, &qword_26A9315F8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26A931530;
  v47 = MEMORY[0x277D837D0];
  v48 = MEMORY[0x277D63858];
  v44 = 2434083;
  v45 = 0xE300000000000000;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v11 = sub_26A9308FC();
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v12 = MEMORY[0x277D633D0];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  __swift_allocate_boxed_opaque_existential_1((v10 + 32));
  sub_26A9308EC();
  sub_26A93098C();
  sub_26A92E114(&qword_2803D3248, MEMORY[0x277D637F0], MEMORY[0x277D637E8]);
  v43 = v7;
  v13 = sub_26A9308CC();
  v15 = v14;
  v16 = v13;
  sub_26A92E37C(0, &qword_2803D3220, 0x277D85C78);
  v32 = sub_26A930BCC();
  v17 = v33;
  (*(v5 + 16))(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v33);
  v18 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v16;
  *(v19 + 3) = v15;
  v20 = v5;
  v21 = v16;
  v22 = v36;
  *(v19 + 4) = v36;
  (*(v20 + 32))(&v19[v18], &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v48 = sub_26A92EA3C;
  v49 = v19;
  v44 = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_26A92EAB0;
  v47 = &block_descriptor_40;
  v23 = _Block_copy(&v44);
  v24 = v21;
  sub_26A92DF88(v21, v15);
  v25 = v22;

  v26 = v35;
  sub_26A930A2C();
  v44 = MEMORY[0x277D84F90];
  sub_26A92E114(&qword_2803D3228, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3230, &qword_26A931550);
  sub_26A92DE7C();
  v27 = v38;
  v28 = v41;
  sub_26A930C7C();
  v29 = v32;
  MEMORY[0x26D665B20](0, v26, v27, v23);
  _Block_release(v23);

  sub_26A92E0AC(v24, v15);
  (*(v40 + 8))(v27, v28);
  (*(v37 + 8))(v26, v39);
  return (*(v42 + 8))(v9, v43);
}

void sub_26A92A520(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for ProtoVisualResponseProvider()) init];
  v8 = ProtoVisualResponseProvider.view(for:mode:overload:)(a1, a2, 1);

  if (v8)
  {
    [v8 setHidden_];
    [a3 addSubview_];
    [v8 removeFromSuperview];
    sub_26A930C0C();
    if (qword_2803D3210 != -1)
    {
      swift_once();
    }

    sub_26A9309AC();
  }
}

id ProtoVisualResponseProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ProtoVisualResponseProvider.view(for:mode:overload:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v3 = sub_26A930A5C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v30 = sub_26A9309CC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v19 = off_2803D3398;
  v18 = unk_2803D33A0;
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v20 = qword_2803D33E8;
  sub_26A9309BC();
  sub_26A930C1C();
  v28 = v18;
  v29 = v19;
  sub_26A9309AC();
  ProtoVisualResponseProvider.responseView(for:mode:)(v9, v25, v26, v27);
  (*(v5 + 32))(v11, v9, v3);
  v31[3] = v3;
  v31[4] = MEMORY[0x277D63B38];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(v5 + 16))(boxed_opaque_existential_1, v11, v3);
  v22 = objc_allocWithZone(sub_26A930A7C());
  v23 = sub_26A930A6C();
  (*(v5 + 8))(v11, v3);
  sub_26A930C0C();
  sub_26A9309AC();
  (*(v13 + 8))(v17, v30);
  return v23;
}

uint64_t sub_26A92A990(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void ProtoVisualResponseProvider.viewController(for:mode:)()
{
  v0 = sub_26A930B9C();
  LOBYTE(v1) = 2;
  j__OUTLINED_FUNCTION_6_0(v0, 0, "SnippetUI_Proto/ProtoVisualResponseProvider.swift", 49, 2, 70, "viewController(for:mode:)", 25, v1);
  OUTLINED_FUNCTION_10("Fatal error", "or:mode:)");
  __break(1u);
}

void (*ProtoVisualResponseProvider.responseView(for:mode:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4))(char *, uint64_t)
{
  v67 = a4;
  v65 = a1;
  v70 = sub_26A93097C();
  OUTLINED_FUNCTION_0();
  v64 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v63 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v59 = v13;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v66 = v14;
  OUTLINED_FUNCTION_11();
  v72 = sub_26A9309CC();
  OUTLINED_FUNCTION_0();
  v73 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3240, &qword_26A931558);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v60 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17();
  v61 = v25;
  v26 = off_2803D33B0;
  v27 = unk_2803D33B8;
  v71 = byte_2803D33C0;
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v28 = qword_2803D33E8;
  sub_26A9309BC();
  sub_26A930C1C();
  OUTLINED_FUNCTION_15();
  sub_26A9309AC();
  v57 = v27;
  v58 = v26;
  v68 = v21;
  sub_26A9309BC();
  sub_26A930C1C();
  OUTLINED_FUNCTION_15();
  sub_26A9309AC();
  sub_26A92DF88(a2, a3);
  OUTLINED_FUNCTION_7();
  sub_26A92E114(v29, v30, MEMORY[0x277D637E8]);
  v31 = v69;
  sub_26A9308DC();
  if (v31)
  {
    v32 = *(v73 + 8);
    v33 = v72;
    v32(v19, v72);
    v32(v68, v33);
  }

  else
  {
    sub_26A930C0C();
    OUTLINED_FUNCTION_15();
    sub_26A9309AC();
    v34 = *(v73 + 8);
    v73 += 8;
    v56 = v34;
    v34(v19, v72);
    v35 = v64;
    v55 = *(v64 + 32);
    v36 = v66;
    v69 = 0;
    v37 = v70;
    v55(v66, v12, v70);
    v38 = objc_allocWithZone(sub_26A930ACC());
    v39 = sub_26A930ABC();
    v54 = *(v35 + 16);
    v40 = v63;
    v54(v63, v36, v37);
    v41 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v67;
    *(v42 + 24) = v39;
    v55(v42 + v41, v40, v37);
    v43 = v39;
    sub_26A92EC64(sub_26A92DFE4, v42);

    v44 = v62;
    v45 = *(v62 + 48);
    v46 = v66;
    v54(v40, v66, v37);
    v47 = v43;
    v48 = v60;
    sub_26A930A4C();
    (*(v35 + 8))(v46, v37);
    *(v48 + v45) = v47;
    sub_26A930C0C();
    v49 = v68;
    sub_26A9309AC();
    v56(v49, v72);
    v50 = v61;
    sub_26A92DFFC(v48, v61);
    v32 = *(v50 + *(v44 + 48));
    sub_26A930A5C();
    OUTLINED_FUNCTION_9();
    (*(v51 + 32))(v65, v50);
  }

  return v32;
}

uint64_t sub_26A92B0D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_26A93097C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v7 + 32))(v10 + v9, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v11 = a2;
  v12 = sub_26A930B7C();
  sub_26A92F990(v12, sub_26A92E938, v10, 0, "SnippetUI_Proto/ProtoVisualResponseProvider.swift", 49, 2, 124, "responseView(for:mode:)", 23, 2u);
}

void ProtoVisualResponseProvider.viewController(for:mode:completion:)()
{
  v0 = sub_26A930B9C();
  LOBYTE(v1) = 2;
  j__OUTLINED_FUNCTION_6_0(v0, 0, "SnippetUI_Proto/ProtoVisualResponseProvider.swift", 49, 2, 134, "viewController(for:mode:completion:)", 36, v1);
  OUTLINED_FUNCTION_10("Fatal error", "or:mode:)");
  __break(1u);
}

uint64_t ProtoVisualResponseProvider.responseView(for:mode:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_26A930A0C();
  OUTLINED_FUNCTION_0();
  v37 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v36 = sub_26A930A3C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = sub_26A930A1C();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  sub_26A92E37C(0, &qword_2803D3220, 0x277D85C78);
  (*(v20 + 104))(v24, *MEMORY[0x277D851C0], v18);
  v25 = sub_26A930BFC();
  (*(v20 + 8))(v24, v18);
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = a2;
  v26[4] = a3;
  v26[5] = a4;
  v26[6] = a5;
  v41 = sub_26A92E104;
  v42 = v26;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(COERCE_DOUBLE(1107296256));
  v39 = v27;
  v40 = &block_descriptor_9;
  v28 = _Block_copy(aBlock);
  sub_26A92DF88(a1, a2);

  sub_26A930A2C();
  OUTLINED_FUNCTION_8();
  sub_26A92E114(v29, v30, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3230, &qword_26A931550);
  sub_26A92DE7C();
  sub_26A930C7C();
  MEMORY[0x26D665B20](0, v17, v11, v28);
  _Block_release(v28);

  (*(v37 + 8))(v11, v6);
  (*(v13 + 8))(v17, v36);
}

uint64_t sub_26A92B654(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v21 = a4;
  v19 = a2;
  v7 = sub_26A930A0C();
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x28223BE20](v7);
  v15[2] = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26A930A3C();
  v15[1] = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = sub_26A9309CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803D3210 != -1)
  {
    swift_once();
  }

  v13 = qword_2803D33E8;
  sub_26A9309BC();
  sub_26A930C1C();
  sub_26A9309AC();
  sub_26A92BAB8(a1, v19, v20, v21, a5);
  sub_26A930C0C();
  sub_26A9309AC();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_26A92BAB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a2;
  v42 = a5;
  v39 = a3;
  v40 = a4;
  v6 = sub_26A930A0C();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_26A930A3C();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_26A9309CC();
  v9 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_26A93097C();
  v41 = *(v54 - 8);
  v12 = *(v41 + 64);
  v13 = MEMORY[0x28223BE20](v54);
  v38 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v37 - v15;
  MEMORY[0x28223BE20](v14);
  v49 = v37 - v17;
  v18 = off_2803D3380;
  if (qword_2803D3210 != -1)
  {
    swift_once();
  }

  v19 = qword_2803D33E8;
  sub_26A9309BC();
  sub_26A930C1C();
  sub_26A9309AC();
  v37[1] = v18;
  sub_26A92DF88(a1, v51);
  sub_26A92E114(&qword_2803D3248, MEMORY[0x277D637F0], MEMORY[0x277D637E8]);
  v20 = v52;
  sub_26A9308DC();
  if (v20)
  {
    return (*(v9 + 8))(v11, v50);
  }

  sub_26A930C0C();
  sub_26A9309AC();
  (*(v9 + 8))(v11, v50);
  v22 = v41;
  v23 = *(v41 + 32);
  v24 = v49;
  v25 = v16;
  v26 = v54;
  v23(v49, v25, v54);
  sub_26A92E37C(0, &qword_2803D3220, 0x277D85C78);
  v52 = 0;
  v27 = sub_26A930BCC();
  v28 = v38;
  (*(v22 + 16))(v38, v24, v26);
  v29 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v39;
  v23((v30 + v29), v28, v26);
  v31 = (v30 + ((v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  v32 = v42;
  *v31 = v40;
  v31[1] = v32;
  aBlock[4] = sub_26A92E774;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A92EAB0;
  aBlock[3] = &block_descriptor_25;
  v33 = _Block_copy(aBlock);

  v34 = v43;
  sub_26A930A2C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26A92E114(&qword_2803D3228, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3230, &qword_26A931550);
  sub_26A92DE7C();
  v35 = v45;
  v36 = v48;
  sub_26A930C7C();
  MEMORY[0x26D665B20](0, v34, v35, v33);
  _Block_release(v33);

  (*(v47 + 8))(v35, v36);
  (*(v44 + 8))(v34, v46);
  return (*(v22 + 8))(v49, v26);
}

uint64_t sub_26A92C0E8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v33 = a4;
  v34 = a3;
  v28 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D32F8, &qword_26A9315E8);
  MEMORY[0x28223BE20](v32);
  v7 = &v27 - v6;
  v8 = sub_26A930A5C();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A93097C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(sub_26A930ACC());
  v15 = sub_26A930ABC();
  v16 = *(v11 + 16);
  v16(v13, a2, v10);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v15;
  (*(v11 + 32))(v18 + v17, v13, v10);
  v19 = v15;
  sub_26A92EC64(sub_26A92E808, v18);

  v16(v13, v28, v10);
  v20 = v19;
  v21 = v29;
  sub_26A930A4C();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3300, &qword_26A9315F0) + 48);
  v24 = v30;
  v23 = v31;
  (*(v30 + 16))(v7, v21, v31);
  *&v7[v22] = v20;
  swift_storeEnumTagMultiPayload();
  v25 = v20;
  v34(v7);

  sub_26A92E684(v7, &qword_2803D32F8, &qword_26A9315E8);
  return (*(v24 + 8))(v21, v23);
}

uint64_t sub_26A92C408(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_26A93097C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v7 + 32))(v10 + v9, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v11 = a2;
  v12 = sub_26A930B7C();
  sub_26A92F990(v12, sub_26A92EAC0, v10, 0, "SnippetUI_Proto/ProtoVisualResponseProvider.swift", 49, 2, 160, "responseView(for:mode:completion:)", 34, 2u);
}

unint64_t sub_26A92C58C(uint64_t a1)
{
  sub_26A930C9C();

  v1 = sub_26A930C2C();
  MEMORY[0x26D665A60](v1);

  MEMORY[0x26D665A60](0x3A6D6F696469202CLL, 0xE900000000000020);
  sub_26A930AAC();
  v2 = sub_26A930C4C();
  MEMORY[0x26D665A60](v2);

  MEMORY[0x26D665A60](0x6E6F70736572202CLL, 0xEC000000203A6573);
  v3 = sub_26A93094C();
  MEMORY[0x26D665A60](v3);

  return 0xD000000000000017;
}

uint64_t sub_26A92C6A0(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D32F8, &qword_26A9315E8);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *(&v10 - v6) = a3;
  swift_storeEnumTagMultiPayload();
  v8 = a3;
  a1(v7);
  return sub_26A92E684(v7, &qword_2803D32F8, &qword_26A9315E8);
}

Swift::Void __swiftcall ProtoVisualResponseProvider.reset()()
{
  v0 = [objc_allocWithZone(sub_26A930A9C()) init];
  sub_26A930A8C();
}

void static ProtoVisualResponseProvider.transform(model:mode:currentIdiom:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v116 = a4;
  v127 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3250, &qword_26A931560);
  v7 = OUTLINED_FUNCTION_16(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v135 = v9;
  OUTLINED_FUNCTION_11();
  v141 = sub_26A9308BC();
  OUTLINED_FUNCTION_0();
  v126 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v104 - v13;
  v115 = sub_26A93087C();
  OUTLINED_FUNCTION_0();
  v132 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v114 = (v18 - v17);
  OUTLINED_FUNCTION_11();
  v19 = sub_26A93088C();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  v130 = sub_26A93093C();
  OUTLINED_FUNCTION_0();
  v129 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v29 = MEMORY[0x28223BE20](v28);
  v131 = &v104 - v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17();
  v134 = v32;
  OUTLINED_FUNCTION_11();
  v33 = sub_26A93097C();
  OUTLINED_FUNCTION_0();
  v112 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  v38 = &v104 - v37;
  sub_26A92DF88(a1, a2);
  OUTLINED_FUNCTION_7();
  v41 = sub_26A92E114(v39, v40, MEMORY[0x277D637E8]);
  v42 = v133;
  sub_26A9308DC();
  if (!v42)
  {
    v106 = v41;
    v109 = 0;
    v108 = v33;
    v107 = v38;
    v125 = *(sub_26A93096C() + 16);
    v43 = v129;
    v133 = v129 + 16;
    v123 = v21 + 8;
    v113 = v132 + 8;
    v117 = (v129 + 32);
    v128 = v129 + 8;
    v120 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18();
    v124 = v44;
LABEL_3:
    OUTLINED_FUNCTION_19();
LABEL_4:
    if (v46 != v125)
    {
      if (v46 < *(v45 + 16))
      {
        OUTLINED_FUNCTION_20();
        v122 = v47;
        v121 = *(v43 + 72);
        v50 = v49;
        (*(v43 + 16))(v134, v48 + v47 + v121 * v49, v33);
        v132 = v50 + 1;
        v38 = sub_26A93091C();
        sub_26A930C3C();
        v51 = 0;
        v52 = *(v38 + 2);
        while (v52 != v51)
        {
          v33 = v51 + 1;
          sub_26A92E114(&qword_2803D3258, MEMORY[0x277D62FA0], MEMORY[0x277D62FA8]);
          v53 = sub_26A930AEC();
          v51 = v33;
          if (v53)
          {

            OUTLINED_FUNCTION_12();
            v54(v25, v19);
            v38 = v114;
            sub_26A930C5C();
            v55 = v134;
            v33 = sub_26A93092C();
            OUTLINED_FUNCTION_12();
            v56(v38, v115);
            if (v33)
            {
              v59 = *v117;
              v33 = v110;
              (*v117)(v110, v55, v130);
              v60 = v120;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v139[0] = v60;
              v105 = v59;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_26A92E1A8(0, *(v60 + 16) + 1, 1);
                v60 = *&v139[0];
              }

              v63 = *(v60 + 16);
              v62 = *(v60 + 24);
              v38 = (v63 + 1);
              if (v63 >= v62 >> 1)
              {
                sub_26A92E1A8((v62 > 1), v63 + 1, 1);
                v60 = *&v139[0];
              }

              *(v60 + 16) = v38;
              v120 = v60;
              OUTLINED_FUNCTION_18();
              v105();
              v43 = v129;
              goto LABEL_3;
            }

LABEL_12:
            OUTLINED_FUNCTION_18();
            v43 = v129;
            OUTLINED_FUNCTION_19();
            OUTLINED_FUNCTION_12();
            v58(v134, v33);
            v45 = v124;
            v46 = v132;
            goto LABEL_4;
          }
        }

        OUTLINED_FUNCTION_12();
        v57(v25, v19);
        goto LABEL_12;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

    v125 = *(v120 + 16);
    if (v125)
    {
      v64 = 0;
      OUTLINED_FUNCTION_20();
      v123 = v66;
      v124 = v65 + v66;
      v67 = (v38 + 8);
      v68 = MEMORY[0x277D84F90];
      v69 = v141;
      while (v64 < *(v65 + 16))
      {
        v134 = v68;
        v70 = *(v43 + 72);
        v132 = v64;
        v127 = v70;
        v126 = *(v43 + 16);
        (v126)(v131, v124 + v70 * v64, v33);
        v71 = sub_26A93090C();
        v72 = v71;
        v73 = *(v71 + 16);
        if (v73)
        {
          v74 = 0;
          v75 = v71 + 32;
          while (v74 < *(v72 + 16))
          {
            sub_26A92E1C8(v75, &v136);
            __swift_project_boxed_opaque_existential_1(&v136, v137);
            v69 = v141;
            v33 = v135;
            sub_26A93099C();
            sub_26A9308AC();
            (*v67)(v14, v69);
            v76 = sub_26A93089C();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v76);
            sub_26A92E684(v33, &qword_2803D3250, &qword_26A931560);
            if (EnumTagSinglePayload != 1)
            {

              sub_26A92E3BC(&v136, v139);
              goto LABEL_28;
            }

            ++v74;
            __swift_destroy_boxed_opaque_existential_1(&v136);
            v75 += 40;
            if (v73 == v74)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
          goto LABEL_52;
        }

LABEL_26:

        v140 = 0;
        memset(v139, 0, sizeof(v139));
LABEL_28:
        sub_26A92E2E4(v139, &v136);
        v78 = v118;
        if (v137)
        {
          v33 = v138;
          __swift_project_boxed_opaque_existential_1(&v136, v137);
          sub_26A93099C();
          v79 = v119;
          sub_26A9308AC();
          (*v67)(v78, v69);
          sub_26A92E684(v79, &qword_2803D3250, &qword_26A931560);
          __swift_destroy_boxed_opaque_existential_1(&v136);
        }

        else
        {
          sub_26A92E684(&v136, &qword_2803D3260, &qword_26A931568);
          v80 = sub_26A93089C();
          v81 = v119;
          __swift_storeEnumTagSinglePayload(v119, 1, 1, v80);
          sub_26A92E684(v81, &qword_2803D3250, &qword_26A931560);
        }

        OUTLINED_FUNCTION_18();
        v126();
        v68 = v134;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_26A92D7D8(0, v68[2] + 1, 1, v68);
        }

        v83 = v68[2];
        v82 = v68[3];
        if (v83 >= v82 >> 1)
        {
          v68 = sub_26A92D7D8((v82 > 1), v83 + 1, 1, v68);
        }

        v64 = v132 + 1;
        sub_26A92E684(v139, &qword_2803D3260, &qword_26A931568);
        OUTLINED_FUNCTION_12();
        v84(v131, v33);
        v68[2] = v83 + 1;
        OUTLINED_FUNCTION_12();
        v85();
        v43 = v129;
        v65 = v120;
        if (v64 == v125)
        {

          goto LABEL_38;
        }
      }

      goto LABEL_53;
    }

    v68 = MEMORY[0x277D84F90];
LABEL_38:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3268, &qword_26A931570);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A931540;
    *(inited + 32) = 0;
    v87 = v68[2];
    v88 = v68;
    v89 = v108;
    v90 = v112;
    v91 = v107;
    v92 = MEMORY[0x277D84F90];
    v93 = v111;
    if (v87)
    {
      sub_26A93095C();
      v94 = v109;
      v95 = sub_26A9308CC();
      v109 = v94;
      if (v94)
      {
        v97 = *(v90 + 8);
        v97(v93, v89);
        v97(v91, v89);

        *(inited + 16) = 0;
        swift_setDeallocating();
        sub_26A92D778();
        return;
      }

      v99 = v95;
      v100 = v96;
      v134 = v88;
      sub_26A92E37C(0, &unk_2803D3270, 0x277D63FB8);
      (*(v90 + 8))(v93, v89);
      v98 = sub_26A92D658(v99, v100, 1);
    }

    else
    {
      v134 = v88;
      v98 = 0;
    }

    v101 = 0;
    *(inited + 40) = v98;
    *&v139[0] = v92;
    while (v101 != 2)
    {
      v102 = *(inited + 8 * v101++ + 32);
      if (v102)
      {
        v103 = v102;
        MEMORY[0x26D665A80]();
        if (*((*&v139[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v139[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26A930B5C();
        }

        sub_26A930B6C();
      }
    }

    swift_setDeallocating();
    sub_26A92D778();
    (*(v90 + 8))(v91, v89);
  }
}

id sub_26A92D658(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_26A93085C();
  v8 = [v6 initWithModel:v7 responseType:a3];

  sub_26A92E0AC(a1, a2);
  return v8;
}

id ProtoVisualResponseProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProtoVisualResponseProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26A92D778()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D32E8, &qword_26A9315D8);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_26A92D7D8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_26A92D8C4(v8, v7);
  v10 = *(sub_26A93093C() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_26A92D9C0(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_26A92D8C4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D32F0, &qword_26A9315E0);
  v4 = *(sub_26A93093C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A92D9C0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_26A93093C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_26A93093C();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_26A92DA94(uint64_t a1, uint64_t a2)
{
  sub_26A930D1C();
  sub_26A930B0C();
  v4 = sub_26A930D2C();

  return sub_26A92DB0C(a1, a2, v4);
}

unint64_t sub_26A92DB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26A930CEC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_26A92DBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_26A92DA94(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803D3310, &qword_26A931600);
  if ((sub_26A930CCC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_26A92DA94(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_26A930CFC();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_26A92E15C(v14, a3, a4, a1, a2, v18);
  }
}

uint64_t sub_26A92DD14()
{
  sub_26A9309CC();
  OUTLINED_FUNCTION_0();

  v1 = OUTLINED_FUNCTION_14();
  v2(v1);
  v3 = OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v3);
}

uint64_t sub_26A92DDBC()
{
  v1 = sub_26A9309CC();
  OUTLINED_FUNCTION_16(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_26A929F54(v3, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

unint64_t sub_26A92DE7C()
{
  result = qword_2803D3238;
  if (!qword_2803D3238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803D3230, &qword_26A931550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803D3238);
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

uint64_t sub_26A92DF88(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_26A92DFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3240, &qword_26A931558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A92E06C()
{
  sub_26A92E0AC(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26A92E0AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_26A92E114(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A92E15C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_26A92E1A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A92E484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A92E1C8(uint64_t a1, uint64_t a2)
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_26A92E2E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3260, &qword_26A931568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A92E37C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_26A92E3BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void type metadata accessor for VRXMode()
{
  if (!qword_2803D3280)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2803D3280);
    }
  }
}

uint64_t sub_26A92E448()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

void *sub_26A92E484(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D32F0, &qword_26A9315E0);
  v10 = *(sub_26A93093C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26A93093C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26A92D9C0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26A92E638()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26A92E684(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A92E6DC()
{
  sub_26A93097C();
  OUTLINED_FUNCTION_9();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26A92E774()
{
  v1 = *(sub_26A93097C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_26A92C0E8(v3, v0 + v2, v5, v6);
}

uint64_t sub_26A92E820(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = sub_26A93097C();
  OUTLINED_FUNCTION_16(v2);
  OUTLINED_FUNCTION_20();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return a1(v4, v5, v1 + v3);
}

uint64_t objectdestroy_2Tm()
{
  sub_26A93097C();
  OUTLINED_FUNCTION_0();

  v1 = OUTLINED_FUNCTION_14();
  v2(v1);
  v3 = OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v3);
}

unint64_t sub_26A92E93C()
{
  v1 = sub_26A93097C();
  OUTLINED_FUNCTION_16(v1);
  OUTLINED_FUNCTION_20();
  return sub_26A92C58C(*(v0 + 16));
}

uint64_t sub_26A92E98C()
{
  sub_26A9309CC();
  OUTLINED_FUNCTION_0();
  sub_26A92E0AC(*(v0 + 16), *(v0 + 24));

  v1 = OUTLINED_FUNCTION_14();
  v2(v1);
  v3 = OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v3);
}

void sub_26A92EA3C()
{
  v1 = sub_26A9309CC();
  OUTLINED_FUNCTION_16(v1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  sub_26A92A520(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return MEMORY[0x2821FD720](a1, 11, 2, 0xD000000000000084, a2 | 0x8000000000000000, v2, 49, 2);
}

uint64_t sub_26A92EC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A930A0C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26A930A3C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803D3208 != -1)
  {
    swift_once();
  }

  v18[1] = qword_2803D33E0;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_26A93040C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A92EAB0;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);

  sub_26A930A2C();
  v20 = MEMORY[0x277D84F90];
  sub_26A93044C(&qword_2803D3228, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3230, &qword_26A931550);
  sub_26A930494(&qword_2803D3238, &qword_2803D3230, &qword_26A931550);
  sub_26A930C7C();
  MEMORY[0x26D665B20](0, v14, v9, v16);
  _Block_release(v16);
  (*(v6 + 8))(v9, v4);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_26A92EF40()
{
  v7 = sub_26A930BBC();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26A930BAC();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26A930A3C();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_26A92E37C(0, &qword_2803D3220, 0x277D85C78);
  sub_26A930A2C();
  v8 = MEMORY[0x277D84F90];
  sub_26A93044C(&qword_2803D33F8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3400, qword_26A931620);
  sub_26A930494(&qword_2803D3408, &qword_2803D3400, qword_26A931620);
  sub_26A930C7C();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_26A930BEC();
  qword_2803D33E0 = result;
  return result;
}

void sub_26A92F1A0()
{
  OUTLINED_FUNCTION_3_0();
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2803D3210);
  }

  if (os_log_type_enabled(qword_2803D33E8, v2))
  {
    if (v0)
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2803D3218);
      }

      v29 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v29, qword_2803D3420);
      v30 = sub_26A9309DC();
      if (OUTLINED_FUNCTION_31(v30))
      {
        OUTLINED_FUNCTION_15_0();
        v31 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_23(v31);
        v32 = OUTLINED_FUNCTION_4_0(4.8755e-34);
        OUTLINED_FUNCTION_12_0(v32, v33);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_2_0();
        *(v0 + 22) = 2082;
        v34 = OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_12_0(v34, v35);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 24) = v3;
        *(v0 + 32) = 2080;
        OUTLINED_FUNCTION_7_0();
        sub_26A930C9C();

        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_10_0(v36, v55, v60, v1, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93);
        v13 = v80;
        sub_26A930D0C();
        OUTLINED_FUNCTION_33();

        OUTLINED_FUNCTION_9_0(v37, v38, v39, v40, v41, v42, v43, v44, v58, v63, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 34) = v3;
        v28 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2803D3218);
      }

      v5 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v5, qword_2803D3420);
      v6 = sub_26A9309DC();
      if (OUTLINED_FUNCTION_31(v6))
      {
        OUTLINED_FUNCTION_15_0();
        v7 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_23(v7);
        v8 = OUTLINED_FUNCTION_4_0(4.8755e-34);
        OUTLINED_FUNCTION_12_0(v8, v9);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_2_0();
        *(v0 + 22) = 2082;
        v10 = OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_12_0(v10, v11);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 24) = v3;
        *(v0 + 32) = 2082;
        OUTLINED_FUNCTION_7_0();
        sub_26A930C9C();

        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_11_0(v12, v55, v60, v1, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93);
        v13 = v67;
        sub_26A930D0C();
        OUTLINED_FUNCTION_33();

        OUTLINED_FUNCTION_9_0(v14, v15, v16, v17, v18, v19, v20, v21, v56, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 34) = v3;
        v28 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_14:
        OUTLINED_FUNCTION_20_0(&dword_26A928000, v22, v23, v28, v24, v25, v26, v27, v57);
        OUTLINED_FUNCTION_28(v45, v46, v47, v48, v49, v50, v51, v52, v59, v62);
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();

        OUTLINED_FUNCTION_17_0();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_17_0();
}

void sub_26A92F438(os_log_type_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2803D3210);
  }

  if (os_log_type_enabled(qword_2803D33E8, a1))
  {
    if (a2)
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2803D3218);
      }

      v19 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v19, qword_2803D3420);
      log = sub_26A9309DC();
      if (os_log_type_enabled(log, a1))
      {
        v12 = OUTLINED_FUNCTION_15_0();
        v27 = OUTLINED_FUNCTION_13_0();
        v20 = OUTLINED_FUNCTION_30(4.8755e-34);
        sub_26A92FDA4(v20, v21, &v27);

        OUTLINED_FUNCTION_26();
        *(v12 + 22) = 2082;
        v22 = sub_26A930CAC();
        v24 = sub_26A92FDA4(v22, v23, &v27);

        *(v12 + 24) = v24;
        *(v12 + 32) = 2080;
        *(v12 + 34) = OUTLINED_FUNCTION_19_0("iOS does not support vending viewControllers. This is done to prevent clients from mistakenly believing they will show on lockscreen", log);
        v18 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2803D3218);
      }

      v11 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v11, qword_2803D3420);
      log = sub_26A9309DC();
      if (os_log_type_enabled(log, a1))
      {
        v12 = OUTLINED_FUNCTION_15_0();
        v27 = OUTLINED_FUNCTION_13_0();
        v13 = OUTLINED_FUNCTION_30(4.8755e-34);
        sub_26A92FDA4(v13, v14, &v27);

        OUTLINED_FUNCTION_26();
        *(v12 + 22) = 2082;
        v15 = sub_26A930CAC();
        v17 = sub_26A92FDA4(v15, v16, &v27);

        *(v12 + 24) = v17;
        *(v12 + 32) = 2082;
        *(v12 + 34) = OUTLINED_FUNCTION_19_0("iOS does not support vending viewControllers. This is done to prevent clients from mistakenly believing they will show on lockscreen", log);
        v18 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_13:
        _os_log_impl(&dword_26A928000, loga, a1, v18, v12, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();

        return;
      }
    }
  }
}

void sub_26A92F704()
{
  OUTLINED_FUNCTION_3_0();
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2803D3210);
  }

  if (os_log_type_enabled(qword_2803D33E8, v2))
  {
    if (v0)
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2803D3218);
      }

      v29 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v29, qword_2803D3420);
      v30 = sub_26A9309DC();
      if (OUTLINED_FUNCTION_31(v30))
      {
        OUTLINED_FUNCTION_15_0();
        v31 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_23(v31);
        v32 = OUTLINED_FUNCTION_4_0(4.8755e-34);
        OUTLINED_FUNCTION_12_0(v32, v33);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_2_0();
        *(v0 + 22) = 2082;
        v34 = OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_12_0(v34, v35);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 24) = v3;
        *(v0 + 32) = 2080;
        OUTLINED_FUNCTION_7_0();
        sub_26A930C9C();

        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_10_0(v36, v55, v60, v1, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93);
        v13 = v80;
        sub_26A930D0C();
        OUTLINED_FUNCTION_33();

        OUTLINED_FUNCTION_9_0(v37, v38, v39, v40, v41, v42, v43, v44, v58, v63, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 34) = v3;
        v28 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2803D3218);
      }

      v5 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v5, qword_2803D3420);
      v6 = sub_26A9309DC();
      if (OUTLINED_FUNCTION_31(v6))
      {
        OUTLINED_FUNCTION_15_0();
        v7 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_23(v7);
        v8 = OUTLINED_FUNCTION_4_0(4.8755e-34);
        OUTLINED_FUNCTION_12_0(v8, v9);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_2_0();
        *(v0 + 22) = 2082;
        v10 = OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_12_0(v10, v11);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 24) = v3;
        *(v0 + 32) = 2082;
        OUTLINED_FUNCTION_7_0();
        sub_26A930C9C();

        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_11_0(v12, v55, v60, v1, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93);
        v13 = v67;
        sub_26A930D0C();
        OUTLINED_FUNCTION_33();

        OUTLINED_FUNCTION_9_0(v14, v15, v16, v17, v18, v19, v20, v21, v56, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 34) = v3;
        v28 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_14:
        OUTLINED_FUNCTION_20_0(&dword_26A928000, v22, v23, v28, v24, v25, v26, v27, v57);
        OUTLINED_FUNCTION_28(v45, v46, v47, v48, v49, v50, v51, v52, v59, v62);
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();

        OUTLINED_FUNCTION_17_0();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_17_0();
}

void sub_26A92F990(os_log_type_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2803D3210);
  }

  if (os_log_type_enabled(qword_2803D33E8, a1))
  {
    if (a4)
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2803D3218);
      }

      v43 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v43, qword_2803D3420);

      oslog = sub_26A9309DC();

      if (os_log_type_enabled(oslog, a1))
      {
        v81 = a2;
        v16 = OUTLINED_FUNCTION_15_0();
        v91 = OUTLINED_FUNCTION_13_0();
        v44 = OUTLINED_FUNCTION_29(4.8755e-34);
        OUTLINED_FUNCTION_18_0(v44, v45, v46, v47, v48, v49, v50, v51, v69, v91, v81, oslog);
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_25();
        *(v16 + 22) = 2082;
        v52 = sub_26A930CAC();
        OUTLINED_FUNCTION_18_0(v52, v53, v54, v55, v56, v57, v58, v59, v72, v76, v82, oslogd);
        v60 = OUTLINED_FUNCTION_21();
        *(v16 + 24) = a5;
        *(v16 + 32) = 2080;
        v61 = v83(v60);
        OUTLINED_FUNCTION_18_0(v61, v62, v63, v64, v65, v66, v67, v68, v73, v77, v83, osloge);
        OUTLINED_FUNCTION_21();
        *(v16 + 34) = a5;
        v42 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2803D3218);
      }

      v15 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v15, qword_2803D3420);

      oslog = sub_26A9309DC();

      if (os_log_type_enabled(oslog, a1))
      {
        v78 = a2;
        v16 = OUTLINED_FUNCTION_15_0();
        v90 = OUTLINED_FUNCTION_13_0();
        v17 = OUTLINED_FUNCTION_29(4.8755e-34);
        OUTLINED_FUNCTION_18_0(v17, v18, v19, v20, v21, v22, v23, v24, v69, v90, v78, oslog);
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_25();
        *(v16 + 22) = 2082;
        v25 = sub_26A930CAC();
        OUTLINED_FUNCTION_18_0(v25, v26, v27, v28, v29, v30, v31, v32, v70, v74, v79, oslogb);
        v33 = OUTLINED_FUNCTION_21();
        *(v16 + 24) = a5;
        *(v16 + 32) = 2082;
        v34 = v80(v33);
        OUTLINED_FUNCTION_18_0(v34, v35, v36, v37, v38, v39, v40, v41, v71, v75, v80, oslogc);
        OUTLINED_FUNCTION_21();
        *(v16 + 34) = a5;
        v42 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_13:
        _os_log_impl(&dword_26A928000, osloga, a1, v42, v16, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();

        return;
      }
    }
  }
}

uint64_t sub_26A92FC70()
{
  sub_26A92E37C(0, &qword_2803D3410, 0x277D86200);
  result = sub_26A930C6C();
  qword_2803D33E8 = result;
  return result;
}

uint64_t sub_26A92FCE0()
{
  v0 = sub_26A9309EC();
  __swift_allocate_value_buffer(v0, qword_2803D3420);
  __swift_project_value_buffer(v0, qword_2803D3420);
  if (qword_2803D3210 != -1)
  {
    swift_once();
  }

  v1 = qword_2803D33E8;
  return sub_26A9309FC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_26A92FDA4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26A92FE68(v11, 0, 0, 1, a1, a2);
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
    sub_26A92FF68(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26A92FE68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26A92FFC4(a5, a6);
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
    result = sub_26A930CBC();
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

uint64_t sub_26A92FF68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26A92FFC4(uint64_t a1, unint64_t a2)
{
  v3 = sub_26A930010(a1, a2);
  sub_26A930128(&unk_287B2C400);
  return v3;
}

uint64_t sub_26A930010(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
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

  for (; v5; v5 = sub_26A930B2C())
  {
    result = sub_26A93020C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26A930C8C();
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

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26A930CBC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
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

uint64_t sub_26A930128(uint64_t result)
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

    result = sub_26A93027C(result, v7, 1, v3);
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

void *sub_26A93020C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D33F0, &qword_26A931618);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26A93027C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D33F0, &qword_26A931618);
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

uint64_t sub_26A9303D4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26A93044C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A930494(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_0()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
}

uint64_t OUTLINED_FUNCTION_4_0(float a1)
{
  *v1 = a1;

  return sub_26A930CAC();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return sub_26A930CAC();
}

unint64_t OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{

  return sub_26A92FDA4(a20, a21, (v21 - 88));
}

uint64_t OUTLINED_FUNCTION_10_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14)
{
  a13 = v14 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a14 = a1;

  return MEMORY[0x2821FE9C8](a4, &a12, &a9);
}

uint64_t OUTLINED_FUNCTION_11_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14)
{
  a13 = v14 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a14 = a1;

  return MEMORY[0x2821FE9C8](a4, &a8, &a5);
}

unint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, unint64_t a2)
{

  return sub_26A92FDA4(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x26D666060);
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_16_0()
{
}

unint64_t OUTLINED_FUNCTION_18_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_26A92FDA4(a1, a2, va);
}

unint64_t OUTLINED_FUNCTION_19_0@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_26A92FDA4(0xD000000000000084, (a1 - 32) | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_20_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v9, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_21()
{
}

void OUTLINED_FUNCTION_25()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v2;
}

void OUTLINED_FUNCTION_26()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
}

uint64_t OUTLINED_FUNCTION_28(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_29(float a1)
{
  *v1 = a1;

  return sub_26A930CAC();
}

uint64_t OUTLINED_FUNCTION_30(float a1)
{
  *v1 = a1;

  return sub_26A930CAC();
}

BOOL OUTLINED_FUNCTION_31(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_32()
{
}

void OUTLINED_FUNCTION_33()
{

  JUMPOUT(0x26D665A60);
}