void sub_26A322A0C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v45 = v7;
  v44 = type metadata accessor for TextElement(0);
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v40 = v9 - v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47();
  v41 = v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47();
  v39[1] = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  v17 = v39 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v39 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  v42 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  v43 = v39 - v24;
  v25 = 0;
  v26 = *(v2 + 16);
  while (v26 != v25)
  {
    OUTLINED_FUNCTION_166_0();
    sub_26A321058();
    OUTLINED_FUNCTION_246();
    sub_26A321058();
    v27 = *(v17 + 3);
    if (v27[2])
    {
    }

    else
    {
      v27 = &unk_287B02230;
    }

    sub_26A326630(v17, type metadata accessor for TextElement);
    sub_26A165034(v6, v4 & 1, v27);
    OUTLINED_FUNCTION_57_12();

    if (v0)
    {
      sub_26A3210AC();
      sub_26A3210AC();
      v29 = v45;
LABEL_20:
      sub_26A3210AC();
      v38 = 0;
      goto LABEL_21;
    }

    sub_26A326630(v20, type metadata accessor for TextElement);
    ++v25;
  }

  if (v26)
  {
    v28 = 0;
    OUTLINED_FUNCTION_166_0();
    v29 = v45;
    v31 = v40;
    v30 = v41;
    do
    {
      sub_26A321058();
      OUTLINED_FUNCTION_68_8();
      sub_26A321058();
      v32 = *(v31 + 24);
      if (v32[2])
      {
      }

      else
      {
        v32 = &unk_287B02260;
      }

      ++v28;
      OUTLINED_FUNCTION_25_23();
      sub_26A326630(v31, v33);
      v34 = v32[2] + 1;
      v35 = 4;
      while (--v34)
      {
        v36 = v32[v35];
        v35 += 2;
        if (!v36)
        {

          OUTLINED_FUNCTION_21_24();
          sub_26A3210AC();
          goto LABEL_20;
        }
      }

      OUTLINED_FUNCTION_25_23();
      sub_26A326630(v30, v37);
      v38 = 1;
    }

    while (v28 != v26);
  }

  else
  {
    v38 = 1;
    v29 = v45;
  }

LABEL_21:
  __swift_storeEnumTagSinglePayload(v29, v38, 1, v44);
  OUTLINED_FUNCTION_75();
}

uint64_t ActionElement.init(_:text:idioms:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ProtoActionElement(0);
  OUTLINED_FUNCTION_5_42();
  sub_26A326688(v4, v5, &protocol conformance descriptor for _ProtoActionElement);
  sub_26A4249C4();

  OUTLINED_FUNCTION_24_31();
  return sub_26A326630(a1, v6);
}

uint64_t sub_26A322E6C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TextElement(0);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for _ProtoTextElement(0) - 8;
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for _ProtoCommand(0);
  MEMORY[0x28223BE20](v7);
  sub_26A323174();
  v8 = *(type metadata accessor for _ProtoActionElement(0) + 28);
  sub_26A0E48F0(a1 + v8, &qword_28036C868, &qword_26A42D090);
  sub_26A3210AC();
  v19 = a1;
  __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v7);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v23 = MEMORY[0x277D84F90];
    sub_26A10CCD8(0, v9, 0);
    v10 = v23;
    v11 = a3 + 32;
    do
    {
      sub_26A32706C();
      v12 = v21;
      v13 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      (*(v13 + 8))(v12, v13);
      sub_26A3210AC();
      __swift_destroy_boxed_opaque_existential_1(v20);
      v23 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26A10CCD8(v14 > 1, v15 + 1, 1);
        v10 = v23;
      }

      *(v10 + 16) = v15 + 1;
      sub_26A3210AC();
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  *v19 = v10;

  v17 = sub_26A419264(v16);

  v19[1] = v17;
  return result;
}

void sub_26A323174()
{
  OUTLINED_FUNCTION_76();
  v162 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for AppPunchout(0);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v5 = type metadata accessor for Response(0);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  type metadata accessor for Command(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  OUTLINED_FUNCTION_3_47();
  sub_26A321058();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803728F0, &qword_26A43DA00);
      sub_26A3210AC();
      type metadata accessor for _ProtoResponse(0);
      sub_26A326688(&qword_28036F7A8, type metadata accessor for _ProtoResponse, &protocol conformance descriptor for _ProtoResponse);
      v69 = sub_26A424994();
      v71 = v70;
      type metadata accessor for _ProtoCommand(0);
      OUTLINED_FUNCTION_48_18();
      MEMORY[0x28223BE20](v72);
      OUTLINED_FUNCTION_1_51();
      sub_26A326688(v73, v74, &protocol conformance descriptor for _ProtoCommand);
      sub_26A4249C4();
      sub_26A0E4784(v69, v71);
      OUTLINED_FUNCTION_8_32();
      v68 = v1;
      goto LABEL_13;
    case 2u:
      v45 = *v0;
      v44 = v0[1];
      v46 = *(v0 + 16);
      v47 = type metadata accessor for _ProtoCommand(0);
      MEMORY[0x28223BE20](v47);
      OUTLINED_FUNCTION_13_27();
      *(v48 - 32) = v45;
      *(v48 - 24) = v44;
      *(v48 - 16) = v46;
      OUTLINED_FUNCTION_1_51();
      v53 = sub_26A326688(v49, v50, &protocol conformance descriptor for _ProtoCommand);
      v54 = sub_26A326FD8;
      goto LABEL_19;
    case 3u:
      v55 = type metadata accessor for _ProtoCommand(0);
      MEMORY[0x28223BE20](v55);
      OUTLINED_FUNCTION_1_51();
      v58 = sub_26A326688(v56, v57, &protocol conformance descriptor for _ProtoCommand);
      OUTLINED_FUNCTION_17_20(sub_26A326FBC, v59, v60, v58);

      goto LABEL_24;
    case 4u:
      v26 = *v0;
      v27 = *(v0 + 8);
      v28 = [objc_allocWithZone(MEMORY[0x277D4C740]) initWithFacade_];
      if (v28)
      {
        v29 = v28;
        v30 = sub_26A326718(v29);
        if (v31 >> 60 != 15)
        {
          v32 = v30;
          v33 = v31;
          type metadata accessor for _ProtoCommand(0);
          OUTLINED_FUNCTION_48_18();
          MEMORY[0x28223BE20](v34);
          OUTLINED_FUNCTION_13_27();
          *(v35 - 32) = v32;
          *(v35 - 24) = v33;
          *(v35 - 16) = v27;
          OUTLINED_FUNCTION_1_51();
          v40 = sub_26A326688(v36, v37, &protocol conformance descriptor for _ProtoCommand);
          v41 = sub_26A326F9C;
          goto LABEL_23;
        }
      }

      if (qword_28036C5A0 != -1)
      {
        OUTLINED_FUNCTION_0_34();
        swift_once();
      }

      v101 = sub_26A424AE4();
      __swift_project_value_buffer(v101, qword_2803A8950);
      v102 = sub_26A424AD4();
      v103 = sub_26A424E14();
      if (OUTLINED_FUNCTION_27_20(v103))
      {
        OUTLINED_FUNCTION_44_13();
        v104 = OUTLINED_FUNCTION_33_13();
        OUTLINED_FUNCTION_71_6(v104);
        *(v0 + 4) = OUTLINED_FUNCTION_60_11(4.8751e-34);
        OUTLINED_FUNCTION_14_23();
        _os_log_impl(v105, v106, v107, v108, v109, 0xCu);
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_32_16();
      }

      goto LABEL_34;
    case 5u:
      v8 = *v0;
      v75 = *(v0 + 8);
      v76 = [*v0 dictionary];
      if (!v76)
      {
        if (qword_28036C5A0 != -1)
        {
          OUTLINED_FUNCTION_0_34();
          swift_once();
        }

        v140 = sub_26A424AE4();
        __swift_project_value_buffer(v140, qword_2803A8950);
        v119 = sub_26A424AD4();
        v141 = sub_26A424E14();
        if (OUTLINED_FUNCTION_27_20(v141))
        {
          OUTLINED_FUNCTION_44_13();
          v142 = OUTLINED_FUNCTION_33_13();
          OUTLINED_FUNCTION_71_6(v142);
          *v0 = 136446210;
          *(v0 + 4) = sub_26A0E8788(0xD000000000000033, 0x800000026A44A380, &v160);
          OUTLINED_FUNCTION_14_23();
          _os_log_impl(v143, v144, v145, v146, v147, 0xCu);
          OUTLINED_FUNCTION_16_22();
          OUTLINED_FUNCTION_32_16();
        }

        goto LABEL_49;
      }

      v77 = v76;
      v78 = objc_opt_self();
      v160 = 0;
      v79 = OUTLINED_FUNCTION_73_9(v78, sel_dataWithPropertyList_format_options_error_);
      v80 = 0;
      if (v79)
      {
        v15 = sub_26A4246D4();
        v17 = v81;

        v82 = type metadata accessor for _ProtoCommand(0);
        MEMORY[0x28223BE20](v82);
        OUTLINED_FUNCTION_13_27();
        *(v83 - 32) = v15;
        *(v83 - 24) = v17;
        *(v83 - 16) = v75;
        OUTLINED_FUNCTION_1_51();
        v24 = sub_26A326688(v84, v85, &protocol conformance descriptor for _ProtoCommand);
        v25 = sub_26A326F7C;
        goto LABEL_17;
      }

      v148 = v80;
      sub_26A4245B4();

      swift_willThrow();
      if (qword_28036C5A0 != -1)
      {
        OUTLINED_FUNCTION_0_34();
        swift_once();
      }

      v149 = sub_26A424AE4();
      __swift_project_value_buffer(v149, qword_2803A8950);
      OUTLINED_FUNCTION_28_17();
      sub_26A424EF4();

      OUTLINED_FUNCTION_29_18();
      v160 = (v151 + 11);
      v161 = v150;
      swift_getErrorValue();
      v152 = sub_26A4254B4();
      MEMORY[0x26D65BA70](v152);

      v132 = sub_26A424AD4();
      sub_26A424E14();
      OUTLINED_FUNCTION_57_12();

      if (os_log_type_enabled(v132, v8))
      {
        v153 = OUTLINED_FUNCTION_44_13();
        v154 = OUTLINED_FUNCTION_43_10();
        v160 = v154;
        *v153 = 136446210;
        v155 = OUTLINED_FUNCTION_133();
        *(v153 + 4) = sub_26A0E8788(v155, v156, v157);
        OUTLINED_FUNCTION_39_15(&dword_26A0B8000, v158, v159, "%{public}s");
        __swift_destroy_boxed_opaque_existential_1(v154);
        OUTLINED_FUNCTION_1_21();
        OUTLINED_FUNCTION_1_21();
      }

      goto LABEL_54;
    case 6u:
      v87 = *v0;
      v86 = v0[1];
      v88 = *(v0 + 16);
      v89 = type metadata accessor for _ProtoCommand(0);
      MEMORY[0x28223BE20](v89);
      OUTLINED_FUNCTION_13_27();
      *(v90 - 32) = v87;
      *(v90 - 24) = v86;
      *(v90 - 16) = v88;
      OUTLINED_FUNCTION_1_51();
      v53 = sub_26A326688(v91, v92, &protocol conformance descriptor for _ProtoCommand);
      v54 = sub_26A326F60;
LABEL_19:
      OUTLINED_FUNCTION_17_20(v54, v51, v52, v53);

      goto LABEL_24;
    case 7u:
      sub_26A3210AC();
      v61 = type metadata accessor for _ProtoCommand(0);
      MEMORY[0x28223BE20](v61);
      OUTLINED_FUNCTION_1_51();
      v64 = sub_26A326688(v62, v63, &protocol conformance descriptor for _ProtoCommand);
      OUTLINED_FUNCTION_17_20(sub_26A326F44, v65, v66, v64);
      v67 = type metadata accessor for AppPunchout;
      v68 = v2;
LABEL_13:
      sub_26A326630(v68, v67);
      goto LABEL_24;
    case 8u:
      v26 = *v0;
      v93 = *(v0 + 8);
      v94 = [objc_allocWithZone(MEMORY[0x277D4C740]) initWithFacade_];
      if (v94)
      {
        v29 = v94;
        v95 = sub_26A326718(v29);
        if (v96 >> 60 != 15)
        {
          v32 = v95;
          v33 = v96;
          type metadata accessor for _ProtoCommand(0);
          OUTLINED_FUNCTION_48_18();
          MEMORY[0x28223BE20](v97);
          OUTLINED_FUNCTION_13_27();
          *(v98 - 32) = v32;
          *(v98 - 24) = v33;
          *(v98 - 16) = v93;
          OUTLINED_FUNCTION_1_51();
          v40 = sub_26A326688(v99, v100, &protocol conformance descriptor for _ProtoCommand);
          v41 = sub_26A326F24;
LABEL_23:
          OUTLINED_FUNCTION_17_20(v41, v38, v39, v40);
          sub_26A10E794(v32, v33);

          goto LABEL_24;
        }
      }

      if (qword_28036C5A0 != -1)
      {
        OUTLINED_FUNCTION_0_34();
        swift_once();
      }

      v110 = sub_26A424AE4();
      __swift_project_value_buffer(v110, qword_2803A8950);
      v102 = sub_26A424AD4();
      v111 = sub_26A424E14();
      if (OUTLINED_FUNCTION_27_20(v111))
      {
        OUTLINED_FUNCTION_44_13();
        v112 = OUTLINED_FUNCTION_33_13();
        OUTLINED_FUNCTION_71_6(v112);
        *(v0 + 4) = OUTLINED_FUNCTION_60_11(4.8751e-34);
        OUTLINED_FUNCTION_14_23();
        _os_log_impl(v113, v114, v115, v116, v117, 0xCu);
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_32_16();
      }

LABEL_34:

      OUTLINED_FUNCTION_31_18();
      goto LABEL_55;
    case 9u:
      type metadata accessor for _ProtoCommand(0);
      OUTLINED_FUNCTION_1_51();
      sub_26A326688(v42, v43, &protocol conformance descriptor for _ProtoCommand);
      sub_26A4249C4();
      goto LABEL_24;
    default:
      v8 = *v0;
      v9 = *(v0 + 8);
      v10 = [*v0 dictionary];
      if (!v10)
      {
        if (qword_28036C5A0 != -1)
        {
          OUTLINED_FUNCTION_0_34();
          swift_once();
        }

        v118 = sub_26A424AE4();
        __swift_project_value_buffer(v118, qword_2803A8950);
        v119 = sub_26A424AD4();
        v120 = sub_26A424E14();
        if (OUTLINED_FUNCTION_27_20(v120))
        {
          OUTLINED_FUNCTION_44_13();
          v121 = OUTLINED_FUNCTION_33_13();
          OUTLINED_FUNCTION_71_6(v121);
          *v0 = 136446210;
          *(v0 + 4) = sub_26A0E8788(0xD000000000000029, 0x800000026A448850, &v160);
          OUTLINED_FUNCTION_14_23();
          _os_log_impl(v122, v123, v124, v125, v126, 0xCu);
          OUTLINED_FUNCTION_16_22();
          OUTLINED_FUNCTION_32_16();
        }

LABEL_49:

        OUTLINED_FUNCTION_31_18();
        OUTLINED_FUNCTION_66_7();
LABEL_56:
        sub_26A424FC4();
        __break(1u);
        return;
      }

      v11 = v10;
      v12 = objc_opt_self();
      v160 = 0;
      v13 = OUTLINED_FUNCTION_73_9(v12, sel_dataWithPropertyList_format_options_error_);
      v14 = 0;
      if (!v13)
      {
        v127 = v14;
        sub_26A4245B4();

        swift_willThrow();
        if (qword_28036C5A0 != -1)
        {
          OUTLINED_FUNCTION_0_34();
          swift_once();
        }

        v128 = sub_26A424AE4();
        __swift_project_value_buffer(v128, qword_2803A8950);
        OUTLINED_FUNCTION_28_17();
        sub_26A424EF4();

        OUTLINED_FUNCTION_29_18();
        v160 = (v130 + 1);
        v161 = v129;
        swift_getErrorValue();
        v131 = sub_26A4254B4();
        MEMORY[0x26D65BA70](v131);

        v132 = sub_26A424AD4();
        sub_26A424E14();
        OUTLINED_FUNCTION_57_12();

        if (os_log_type_enabled(v132, v8))
        {
          v133 = OUTLINED_FUNCTION_44_13();
          v134 = OUTLINED_FUNCTION_43_10();
          v160 = v134;
          *v133 = 136446210;
          v135 = OUTLINED_FUNCTION_133();
          *(v133 + 4) = sub_26A0E8788(v135, v136, v137);
          OUTLINED_FUNCTION_39_15(&dword_26A0B8000, v138, v139, "%{public}s");
          __swift_destroy_boxed_opaque_existential_1(v134);
          OUTLINED_FUNCTION_1_21();
          OUTLINED_FUNCTION_1_21();
        }

LABEL_54:

        OUTLINED_FUNCTION_31_18();
LABEL_55:
        OUTLINED_FUNCTION_66_7();
        goto LABEL_56;
      }

      v15 = sub_26A4246D4();
      v17 = v16;

      v18 = type metadata accessor for _ProtoCommand(0);
      MEMORY[0x28223BE20](v18);
      OUTLINED_FUNCTION_13_27();
      *(v19 - 32) = v15;
      *(v19 - 24) = v17;
      *(v19 - 16) = v9;
      OUTLINED_FUNCTION_1_51();
      v24 = sub_26A326688(v20, v21, &protocol conformance descriptor for _ProtoCommand);
      v25 = sub_26A327014;
LABEL_17:
      OUTLINED_FUNCTION_17_20(v25, v22, v23, v24);

      sub_26A0E4784(v15, v17);
LABEL_24:
      OUTLINED_FUNCTION_75();
      return;
  }
}

uint64_t Command.asActionElement()()
{
  v1 = type metadata accessor for Command(0);
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_3_47();
  sub_26A321058();
  sub_26A217578(&unk_287B02290);
  type metadata accessor for _ProtoActionElement(0);
  OUTLINED_FUNCTION_5_42();
  sub_26A326688(v3, v4, &protocol conformance descriptor for _ProtoActionElement);
  sub_26A4249C4();

  OUTLINED_FUNCTION_24_31();
  return sub_26A326630(v0, v5);
}

uint64_t static ActionElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoCommand(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for Command(0);
  v13 = OUTLINED_FUNCTION_41(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  ActionElement.command.getter();
  ActionElement.command.getter();
  sub_26A323174();
  sub_26A323174();
  static _ProtoCommand.== infix(_:_:)();
  v21 = v20;
  sub_26A326630(v8, type metadata accessor for _ProtoCommand);
  sub_26A326630(v11, type metadata accessor for _ProtoCommand);
  sub_26A326630(v16, type metadata accessor for Command);
  sub_26A326630(v19, type metadata accessor for Command);
  if (v21)
  {
    if (*(*(a1 + 8) + 16))
    {
    }

    else
    {
      v22 = &unk_287B01470;
    }

    v24 = sub_26A10BE7C(v22);
    if (*(*(a2 + 8) + 16))
    {
    }

    else
    {
      v25 = &unk_287B01470;
    }

    v26 = sub_26A10BE7C(v25);
    v23 = sub_26A290AE0(v24, v26);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t static Command.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_16_11();
  v1 = type metadata accessor for _ProtoCommand(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  sub_26A323174();
  sub_26A323174();
  static _ProtoCommand.== infix(_:_:)();
  v10 = v9;
  sub_26A326630(v5, type metadata accessor for _ProtoCommand);
  sub_26A326630(v8, type metadata accessor for _ProtoCommand);
  return v10 & 1;
}

uint64_t ActionElement.hash(into:)()
{
  type metadata accessor for _ProtoActionElement(0);
  OUTLINED_FUNCTION_5_42();
  sub_26A326688(v0, v1, &protocol conformance descriptor for _ProtoActionElement);
  OUTLINED_FUNCTION_133();

  return sub_26A424B44();
}

uint64_t ActionElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoActionElement(0);
  OUTLINED_FUNCTION_5_42();
  sub_26A326688(v0, v1, &protocol conformance descriptor for _ProtoActionElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3245F4(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoActionElement(0);
  sub_26A326688(&qword_28036F530, type metadata accessor for _ProtoActionElement, &protocol conformance descriptor for _ProtoActionElement);
  sub_26A424B44();
  return sub_26A425554();
}

void Array<A>.element(for:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34 = v9;
  v33 = sub_26A424E44();
  OUTLINED_FUNCTION_24();
  v35 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v20 = *v8;
  v21 = *(v8 + 8);
  v32 = v6;
  v40 = v6;
  v36 = v4;
  v37 = v2;
  v38 = v20;
  v39 = v21;
  sub_26A424D94();
  swift_getWitnessTable();
  v22 = 0;
  sub_26A424D04();
  OUTLINED_FUNCTION_15(v17);
  if (!v23)
  {
    (*(v18 + 32))(v0, v17, v4);
    OUTLINED_FUNCTION_64_9();
    v27 = OUTLINED_FUNCTION_12_2();
    v28(v27);
    (*(v18 + 8))(v0, v4);
LABEL_6:
    v26 = 0;
    goto LABEL_7;
  }

  v24 = *(v35 + 8);
  v35 += 8;
  v25 = v24(v17, v33);
  v40 = v32;
  MEMORY[0x28223BE20](v25);
  *(&v32 - 2) = v4;
  *(&v32 - 1) = v2;
  sub_26A424D04();
  OUTLINED_FUNCTION_15(v14);
  if (!v23)
  {
    OUTLINED_FUNCTION_64_9();
    v29 = OUTLINED_FUNCTION_12_2();
    v30(v29);
    (*(v18 + 8))(v14, v4);
    goto LABEL_6;
  }

  v24(v14, v33);
  v26 = 1;
  v22 = v34;
LABEL_7:
  v31 = type metadata accessor for ActionElement(0);
  __swift_storeEnumTagSinglePayload(v22, v26, 1, v31);
  OUTLINED_FUNCTION_75();
}

{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v6 = v5;
  v23 = v7;
  v22 = sub_26A424E44();
  OUTLINED_FUNCTION_3_46();
  v24 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_3_46();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  sub_26A424D94();
  swift_getWitnessTable();
  v14 = 0;
  sub_26A424D04();
  OUTLINED_FUNCTION_15(v2);
  if (!v15)
  {
    (*(v12 + 32))(v0, v2, v6);
    OUTLINED_FUNCTION_64_9();
    v19(v6, v4);
    (*(v12 + 8))(v0, v6);
LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  v16 = *(v24 + 8);
  v17 = v16(v2, v22);
  MEMORY[0x28223BE20](v17);
  sub_26A424D04();
  OUTLINED_FUNCTION_15(v1);
  if (!v15)
  {
    OUTLINED_FUNCTION_64_9();
    v20(v6, v4);
    (*(v12 + 8))(v1, v6);
    goto LABEL_6;
  }

  v16(v1, v22);
  v18 = 1;
  v14 = v23;
LABEL_7:
  v21 = type metadata accessor for TextElement(0);
  __swift_storeEnumTagSinglePayload(v14, v18, 1, v21);
  OUTLINED_FUNCTION_75();
}

{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v31 = v9;
  v30 = sub_26A424E44();
  OUTLINED_FUNCTION_3_46();
  v32 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  OUTLINED_FUNCTION_3_46();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v20 = v19 - v18;
  v21 = *v8;
  LOBYTE(v19) = *(v8 + 8);
  v29 = v6;
  v37 = v6;
  v33 = v4;
  v34 = v2;
  v35 = v21;
  v36 = v19;
  sub_26A424D94();
  swift_getWitnessTable();
  v22 = 0;
  sub_26A424D04();
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    (*(v16 + 32))(v20, v14, v4);
    OUTLINED_FUNCTION_64_9();
    v26(v4, v2);
    (*(v16 + 8))(v20, v4);
LABEL_6:
    v25 = 0;
    goto LABEL_7;
  }

  v23 = *(v32 + 8);
  v32 += 8;
  v24 = v23(v14, v30);
  v37 = v29;
  MEMORY[0x28223BE20](v24);
  *(&v29 - 2) = v4;
  *(&v29 - 1) = v2;
  sub_26A424D04();
  if (__swift_getEnumTagSinglePayload(v0, 1, v4) != 1)
  {
    OUTLINED_FUNCTION_64_9();
    v27(v4, v2);
    (*(v16 + 8))(v0, v4);
    goto LABEL_6;
  }

  v23(v0, v30);
  v25 = 1;
  v22 = v31;
LABEL_7:
  v28 = type metadata accessor for VisualElement(0);
  __swift_storeEnumTagSinglePayload(v22, v25, 1, v28);
  OUTLINED_FUNCTION_75();
}

{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v30 = v10;
  v29 = sub_26A424E44();
  OUTLINED_FUNCTION_24();
  v31 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v18 = *v9;
  v19 = *(v9 + 8);
  v28 = v7;
  v36 = v7;
  v32 = v5;
  v33 = v3;
  v34 = v18;
  v35 = v19;
  sub_26A424D94();
  swift_getWitnessTable();
  v20 = 0;
  sub_26A424D04();
  OUTLINED_FUNCTION_15(v15);
  if (!v21)
  {
    (*(v16 + 32))(v0, v15, v5);
    OUTLINED_FUNCTION_64_9();
    v25(v5, v3);
    (*(v16 + 8))(v0, v5);
LABEL_6:
    v24 = 0;
    goto LABEL_7;
  }

  v22 = *(v31 + 8);
  v31 += 8;
  v23 = v22(v15, v29);
  v36 = v28;
  MEMORY[0x28223BE20](v23);
  *(&v28 - 2) = v5;
  *(&v28 - 1) = v3;
  sub_26A424D04();
  OUTLINED_FUNCTION_15(v1);
  if (!v21)
  {
    OUTLINED_FUNCTION_64_9();
    v26(v5, v3);
    (*(v16 + 8))(v1, v5);
    goto LABEL_6;
  }

  v22(v1, v29);
  v24 = 1;
  v20 = v30;
LABEL_7:
  v27 = type metadata accessor for Player(0);
  __swift_storeEnumTagSinglePayload(v20, v24, 1, v27);
  OUTLINED_FUNCTION_75();
}

BOOL sub_26A324970(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ActionElement(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 8))(a4, a5, v10);
  v13 = *(v12 + 1);
  if (v13[2])
  {
  }

  else
  {
    v13 = &unk_287B02320;
  }

  sub_26A326630(v12, type metadata accessor for ActionElement);
  v14 = sub_26A165034(a2, a3 & 1, v13);

  return v14;
}

BOOL sub_26A324A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ActionElement(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3, v6);
  v9 = *(v8 + 1);
  if (v9[2])
  {
  }

  else
  {
    v9 = &unk_287B02350;
  }

  sub_26A326630(v8, type metadata accessor for ActionElement);
  v10 = v9[2] + 1;
  v11 = 4;
  do
  {
    if (!--v10)
    {
      break;
    }

    v12 = v9[v11];
    v11 += 2;
  }

  while (v12);
  v13 = v10 != 0;

  return v13;
}

uint64_t sub_26A324B9C@<X0>(uint64_t *a1@<X8>)
{
  result = ActionElement.allTextElements.getter();
  *a1 = result;
  return result;
}

uint64_t static Command.directInvocation(identifier:payload:isNavigation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_26A326D34(0, &qword_2803728E8);

  v10 = sub_26A324CD0(a1, a2);
  sub_26A3267F4(a3, v10);
  v11 = objc_opt_self();
  v12 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v13 = [v11 runSiriKitExecutorCommandWithContext:v12 payload:v10];

  *a5 = v13;
  *(a5 + 8) = a4;
  type metadata accessor for Command(0);

  return swift_storeEnumTagMultiPayload();
}

id sub_26A324CD0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_26A424B74();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

uint64_t Command.aceCommand.getter()
{
  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_3_47();
  OUTLINED_FUNCTION_246();
  sub_26A321058();
  OUTLINED_FUNCTION_133();
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v0;
  }

  sub_26A326630(v0, type metadata accessor for Command);
  return 0;
}

uint64_t sub_26A324DDC(_BYTE *a1)
{
  sub_26A0E48F0(a1, &qword_28036C858, &dword_26A42D080);
  *a1 = 1;
  v2 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_26A324E58()
{
  OUTLINED_FUNCTION_45_8();
  sub_26A0E48F0(v4, &qword_28036C858, &dword_26A42D080);
  *v3 = v2;
  v3[1] = v1;
  v5 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  *(v3 + *(type metadata accessor for _ProtoCommand(0) + 20)) = v0;
  return sub_26A0E45C0(v2, v1);
}

uint64_t sub_26A324EF4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_26A0E48F0(a1, &qword_28036C858, &dword_26A42D080);
  *a1 = a2;
  a1[1] = a3;
  v8 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  *(a1 + *(type metadata accessor for _ProtoCommand(0) + 20)) = a4;
}

uint64_t sub_26A324F98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  MEMORY[0x28223BE20](v3);
  sub_26A326688(&qword_28036F570, type metadata accessor for _ProtoCommand.ChangeBackground, &protocol conformance descriptor for _ProtoCommand.ChangeBackground);
  sub_26A4249C4();
  sub_26A0E48F0(a1, &qword_28036C858, &dword_26A42D080);
  sub_26A3210AC();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_26A3250FC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundElement(0);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for _ProtoBackgroundElement(0) - 8;
  MEMORY[0x28223BE20](v5);
  v6 = *(a2 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_26A10D404(0, v6, 0);
    v7 = v17;
    v8 = a2 + 32;
    do
    {
      sub_26A32706C();
      v10 = v15;
      v9 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v9 + 8))(v10, v9);
      sub_26A3210AC();
      __swift_destroy_boxed_opaque_existential_1(v14);
      v17 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_26A10D404(v11 > 1, v12 + 1, 1);
        v7 = v17;
      }

      *(v7 + 16) = v12 + 1;
      sub_26A3210AC();
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  *a1 = v7;
  return result;
}

uint64_t sub_26A32532C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  MEMORY[0x28223BE20](v6);
  sub_26A326688(&qword_28036F558, type metadata accessor for _ProtoCommand.ResponseGroup, &protocol conformance descriptor for _ProtoCommand.ResponseGroup);
  sub_26A4249C4();
  sub_26A0E48F0(a1, &qword_28036C858, &dword_26A42D080);
  sub_26A3210AC();
  v7 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  result = type metadata accessor for _ProtoCommand(0);
  *(a1 + *(result + 20)) = a4;
  return result;
}

uint64_t sub_26A3254B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for _ProtoCommand.AppPunchout(0);
  MEMORY[0x28223BE20](v3);
  sub_26A326688(&qword_28036D350, type metadata accessor for _ProtoCommand.AppPunchout, &protocol conformance descriptor for _ProtoCommand.AppPunchout);
  sub_26A4249C4();
  sub_26A0E48F0(a1, &qword_28036C858, &dword_26A42D080);
  sub_26A3210AC();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_26A325614(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];

  *a1 = v5;
  a1[1] = v4;
  v7 = a2[2];
  v6 = a2[3];

  a1[2] = v7;
  a1[3] = v6;
  v9 = a2[4];
  v8 = a2[5];

  a1[4] = v9;
  a1[5] = v8;
  return result;
}

uint64_t sub_26A3256A4()
{
  OUTLINED_FUNCTION_45_8();
  sub_26A0E48F0(v5, &qword_28036C858, &dword_26A42D080);
  *v4 = v3;
  v4[1] = v2;
  v6 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoCommand(0);
  *(v4 + *(v10 + 20)) = v1;
  *(v4 + *(v10 + 24)) = v0;
  return sub_26A0E45C0(v3, v2);
}

BOOL Command.isNotNoOp.getter()
{
  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_3_47();
  OUTLINED_FUNCTION_246();
  sub_26A321058();
  OUTLINED_FUNCTION_133();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_26A326630(v0, type metadata accessor for Command);
  }

  return EnumCaseMultiPayload != 9;
}

uint64_t Command.isNavigation.getter()
{
  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_3_47();
  OUTLINED_FUNCTION_246();
  sub_26A321058();
  OUTLINED_FUNCTION_133();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
    case 8u:
      v2 = *(v0 + 8);

      break;
    case 1u:
      v2 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803728F0, &qword_26A43DA00) + 48));
      OUTLINED_FUNCTION_8_32();
      sub_26A326630(v0, v4);
      break;
    case 2u:
      v2 = *(v0 + 16);

      break;
    default:
      sub_26A326630(v0, type metadata accessor for Command);
      v2 = 0;
      break;
  }

  return v2;
}

BOOL Command.shouldUseSearchUIButton.getter()
{
  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  OUTLINED_FUNCTION_3_47();
  sub_26A321058();
  OUTLINED_FUNCTION_48_1();
  v2 = swift_getEnumCaseMultiPayload() == 8;
  sub_26A326630(v0, type metadata accessor for Command);
  return v2;
}

uint64_t Command.sfCommand.getter()
{
  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_3_47();
  OUTLINED_FUNCTION_246();
  sub_26A321058();
  OUTLINED_FUNCTION_133();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 4)
  {
    return *v0;
  }

  sub_26A326630(v0, type metadata accessor for Command);
  return 0;
}

uint64_t Command.description.getter()
{
  type metadata accessor for Command(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_3_47();
  OUTLINED_FUNCTION_48_1();
  sub_26A321058();
  OUTLINED_FUNCTION_175();
  v2 = 1884254062;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v6 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803728F0, &qword_26A43DA00) + 48));
      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

      OUTLINED_FUNCTION_10_44();
      v18 = v7 - 8;
      if (v6)
      {
        v8 = 1702195828;
      }

      else
      {
        v8 = 0x65736C6166;
      }

      if (v6)
      {
        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      MEMORY[0x26D65BA70](v8, v9);

      MEMORY[0x26D65BA70](41, 0xE100000000000000);
      v2 = v18;
      OUTLINED_FUNCTION_8_32();
      sub_26A326630(v0, v10);
      return v2;
    case 2u:
      LODWORD(v0) = *(v0 + 16);

      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

      goto LABEL_22;
    case 3u:
      sub_26A326630(v0, type metadata accessor for Command);
      return 0xD000000000000010;
    case 4u:
      OUTLINED_FUNCTION_74_8();
      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

      OUTLINED_FUNCTION_10_44();
      v4 = v16 - 7;
      goto LABEL_23;
    case 5u:
      OUTLINED_FUNCTION_74_8();
      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

LABEL_22:
      OUTLINED_FUNCTION_10_44();
      goto LABEL_23;
    case 6u:
      sub_26A326630(v0, type metadata accessor for Command);
      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

      OUTLINED_FUNCTION_10_44();
      v19 = v11 - 3;
      v12 = Command.isNavigation.getter();
      v13 = (v12 & 1) == 0;
      if (v12)
      {
        v14 = 1702195828;
      }

      else
      {
        v14 = 0x65736C6166;
      }

      if (v13)
      {
        v15 = 0xE500000000000000;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      goto LABEL_29;
    case 7u:
      sub_26A326630(v0, type metadata accessor for Command);
      return 0x68636E7550707061;
    case 8u:
      OUTLINED_FUNCTION_74_8();
      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

      OUTLINED_FUNCTION_10_44();
      v4 = v5 - 1;
      goto LABEL_23;
    case 9u:
      return v2;
    default:
      OUTLINED_FUNCTION_74_8();
      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

      OUTLINED_FUNCTION_10_44();
      v4 = v3 - 6;
LABEL_23:
      v19 = v4;
      if (v0)
      {
        v14 = 1702195828;
      }

      else
      {
        v14 = 0x65736C6166;
      }

      if (v0)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

LABEL_29:
      MEMORY[0x26D65BA70](v14, v15);

      MEMORY[0x26D65BA70](41, 0xE100000000000000);
      return v19;
  }
}

uint64_t Command.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  sub_26A323174();
  OUTLINED_FUNCTION_1_51();
  sub_26A326688(v3, v4, &protocol conformance descriptor for _ProtoCommand);
  sub_26A424B44();
  OUTLINED_FUNCTION_2_44();
  return sub_26A326630(v1, v5);
}

uint64_t Command.hashValue.getter()
{
  type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  sub_26A425504();
  sub_26A323174();
  OUTLINED_FUNCTION_1_51();
  sub_26A326688(v2, v3, &protocol conformance descriptor for _ProtoCommand);
  sub_26A424B44();
  OUTLINED_FUNCTION_2_44();
  sub_26A326630(v0, v4);
  return sub_26A425554();
}

uint64_t sub_26A325F0C(uint64_t a1)
{
  v1 = type metadata accessor for _ProtoCommand(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A425504();
  sub_26A323174();
  sub_26A326688(&qword_28036F508, type metadata accessor for _ProtoCommand, &protocol conformance descriptor for _ProtoCommand);
  sub_26A424B44();
  sub_26A326630(v3, type metadata accessor for _ProtoCommand);
  return sub_26A425554();
}

uint64_t sub_26A32600C(uint64_t a1)
{
  v2 = sub_26A326868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A326048(uint64_t a1)
{
  v2 = sub_26A326868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Command.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26[3] = a2;
  v4 = sub_26A4247F4();
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v26[5] = v7 - v6;
  v8 = type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_120();
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803728F8, &qword_26A43DA08);
  OUTLINED_FUNCTION_24();
  v26[4] = v13;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_163_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A326868();
  v15 = v30;
  sub_26A425574();
  if (v15)
  {
    v25 = a1;
  }

  else
  {
    v26[1] = v2;
    v26[2] = v8;
    v30 = a1;
    sub_26A0E718C();
    sub_26A425054();
    v16 = v27;
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_26A0E45C0(v16, *(&v16 + 1));
    sub_26A4247E4();
    OUTLINED_FUNCTION_1_51();
    sub_26A326688(v17, v18, &protocol conformance descriptor for _ProtoCommand);
    sub_26A424984();
    sub_26A321058();
    sub_26A3212CC();
    v20 = OUTLINED_FUNCTION_68_8();
    sub_26A0E4784(v20, v21);
    OUTLINED_FUNCTION_2_44();
    sub_26A326630(v12, v22);
    v23 = OUTLINED_FUNCTION_51_14();
    v24(v23);
    v25 = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t Command.encode(to:)()
{
  v3 = OUTLINED_FUNCTION_16_11();
  type metadata accessor for _ProtoCommand(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372908, &qword_26A43DA10);
  OUTLINED_FUNCTION_24();
  v7 = v6;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44_6();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_26A326868();
  sub_26A425594();
  sub_26A323174();
  OUTLINED_FUNCTION_1_51();
  sub_26A326688(v9, v10, &protocol conformance descriptor for _ProtoCommand);
  v11 = sub_26A424994();
  if (v17)
  {
    sub_26A326630(v2, type metadata accessor for _ProtoCommand);
  }

  else
  {
    v13 = v11;
    v14 = v12;
    OUTLINED_FUNCTION_2_44();
    sub_26A326630(v2, v15);
    sub_26A0E70D4();
    sub_26A425154();
    sub_26A0E4784(v13, v14);
  }

  return (*(v7 + 8))(v1, v5);
}

id sub_26A32659C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_26A4246B4();
    sub_26A10E794(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

uint64_t sub_26A326630(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A326688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A326718(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A4246D4();

  return v3;
}

id sub_26A326788(uint64_t a1, void *a2)
{
  v3 = sub_26A424B04();
  v4 = [a2 aceObjectWithDictionary_];

  return v4;
}

void sub_26A3267F4(uint64_t a1, void *a2)
{
  v3 = sub_26A424B04();
  [a2 setUserData_];
}

unint64_t sub_26A326868()
{
  result = qword_280372900;
  if (!qword_280372900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372900);
  }

  return result;
}

uint64_t sub_26A3269BC(uint64_t a1)
{
  result = type metadata accessor for _ProtoActionElement(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A326A3C(uint64_t a1)
{
  sub_26A326CC8(319, &qword_280372930, &qword_280372938, 0x277D471B0);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_26A326B94(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_26A326C00();
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_26A326C64(319);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_26A326CC8(319, &qword_280372958, &qword_280372960, 0x277D4C2A8);
        if (v11 > 0x3F)
        {
          return v10;
        }

        sub_26A326CC8(319, &qword_280372968, &qword_280372970, 0x277D47438);
        if (v12 > 0x3F)
        {
          return v8;
        }

        else
        {
          v2 = type metadata accessor for AppPunchout(319);
          if (v13 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_26A326B94(uint64_t a1)
{
  if (!qword_280372940)
  {
    type metadata accessor for Response(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280372940);
    }
  }
}

void sub_26A326C00()
{
  if (!qword_280372948)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280372948);
    }
  }
}

void sub_26A326C64(uint64_t a1)
{
  if (!qword_280372950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036CE10, &qword_26A426998);
    v1 = sub_26A424D94();
    if (!v2)
    {
      atomic_store(v1, &qword_280372950);
    }
  }
}

void sub_26A326CC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_26A326D34(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_26A326D34(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    OUTLINED_FUNCTION_90_5();
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, v2);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Command.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_26A326E20()
{
  result = qword_280372978;
  if (!qword_280372978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372978);
  }

  return result;
}

unint64_t sub_26A326E78()
{
  result = qword_280372980;
  if (!qword_280372980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372980);
  }

  return result;
}

unint64_t sub_26A326ED0()
{
  result = qword_280372988;
  if (!qword_280372988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372988);
  }

  return result;
}

uint64_t sub_26A32706C()
{
  OUTLINED_FUNCTION_90_5();
  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v1 + 32);
  (**(v2 - 8))(v0, v1);
  return v0;
}

uint64_t sub_26A3270CC()
{
  OUTLINED_FUNCTION_90_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

void OUTLINED_FUNCTION_16_22()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x26D65C950);
}

uint64_t OUTLINED_FUNCTION_17_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_26_26()
{
  v2 = *(v0 - 280);

  return sub_26A326630(v2, type metadata accessor for _ProtoCommand.ChangeBackground);
}

BOOL OUTLINED_FUNCTION_27_20(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_32_16()
{

  JUMPOUT(0x26D65C950);
}

uint64_t OUTLINED_FUNCTION_33_13()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_39_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_43_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58_15(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 - 264);

  return sub_26A326630(v4, a2);
}

id OUTLINED_FUNCTION_59_14(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

unint64_t OUTLINED_FUNCTION_60_11(float a1)
{
  *v1 = a1;

  return sub_26A0E8788(0xD000000000000025, v2 | 0x8000000000000000, (v3 - 104));
}

uint64_t OUTLINED_FUNCTION_63_10()
{

  return type metadata accessor for Command(0);
}

id OUTLINED_FUNCTION_73_9(id a1, SEL a2)
{

  return [a1 a2];
}

void OUTLINED_FUNCTION_74_8()
{
  v2 = *v0;
}

uint64_t SimpleItemVisual.thumbnails.getter()
{
  v1 = type metadata accessor for VisualProperty(0);
  v2 = OUTLINED_FUNCTION_79_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v3 = *v0;
  v4 = *(*v0 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    sub_26A10D994(0, v4, 0);
    v5 = v14;
    v6 = type metadata accessor for _ProtoVisualProperty(0);
    OUTLINED_FUNCTION_79_0(v6);
    v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v9 + 72);
    do
    {
      sub_26A329F0C();
      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_26A10D994(v11 > 1, v12 + 1, 1);
      }

      *(v14 + 16) = v12 + 1;
      sub_26A329F60();
      v8 += v10;
      --v4;
    }

    while (v4);
  }

  return v5;
}

void SimpleItemVisual.text1.getter()
{
  OUTLINED_FUNCTION_76();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoSimpleItem_Visual(0);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_13_1();
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      *v5 = MEMORY[0x277D84F90];
      *(v5 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v13 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v10, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A329F60();
    }

    sub_26A329F60();
    v0 = 0;
  }

  v20 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v0, 1, v20);
  OUTLINED_FUNCTION_75();
}

void SimpleItemVisual.action.getter()
{
  OUTLINED_FUNCTION_76();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoSimpleItem_Visual(0);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_13_1();
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      *v5 = MEMORY[0x277D84F90];
      v5[1] = 0;
      v5[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A329F60();
    }

    sub_26A329F60();
    v0 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(&off_28036C7C0, v0, 1, v13);
  OUTLINED_FUNCTION_75();
}

void _ProtoSimpleItem_Visual.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v2 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v6 = (v4 - v5);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_48();
  v57 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v56 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_48();
  v60 = v14;
  v59 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  v55 = v17;
  v18 = type metadata accessor for _ProtoVisualProperty(0);
  v19 = OUTLINED_FUNCTION_79_0(v18);
  v21 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_93_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v27 = OUTLINED_FUNCTION_41(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17();
  v54 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  v58 = v31;
  OUTLINED_FUNCTION_1_52();
  sub_26A329F0C();
  v32 = *v1;
  v33 = *(*v1 + 16);
  if (v33)
  {
    v52 = v6;
    v53 = v2;
    v61 = MEMORY[0x277D84F90];
    sub_26A10D2B0(0, v33, 0);
    v34 = v61;
    v35 = v32 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v36 = *(v21 + 72);
    do
    {
      sub_26A329F0C();
      _ProtoVisualProperty.redactedProto.getter();
      sub_26A329FB4(v24, type metadata accessor for _ProtoVisualProperty);
      v38 = *(v61 + 16);
      v37 = *(v61 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_26A10D2B0(v37 > 1, v38 + 1, 1);
      }

      *(v61 + 16) = v38 + 1;
      sub_26A329F60();
      v35 += v36;
      --v33;
    }

    while (v33);

    v2 = v53;
    v6 = v52;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  *v1 = v34;
  v39 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  v40 = *(v39 + 36);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v59);
  sub_26A0E48F0(v58, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v54, 1, v59) == 1)
    {
      v42 = v55;
      *v55 = MEMORY[0x277D84F90];
      *(v55 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v2);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v2);
      if (__swift_getEnumTagSinglePayload(v54, 1, v59) != 1)
      {
        sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v42 = v55;
      sub_26A329F60();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A329FB4(v42, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(v1 + v40, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A329F60();
    __swift_storeEnumTagSinglePayload(v1 + v40, 0, 1, v59);
  }

  v49 = *(v39 + 32);
  sub_26A10FD9C();
  v50 = __swift_getEnumTagSinglePayload(v60, 1, v2);
  sub_26A0E48F0(v60, &off_28036C7C0, &off_26A427400);
  if (v50 != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v56, 1, v2) == 1)
    {
      v51 = v57;
      *v57 = MEMORY[0x277D84F90];
      v57[1] = 0;
      v57[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v56, 1, v2) != 1)
      {
        sub_26A0E48F0(v56, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v51 = v57;
      sub_26A329F60();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v6);
    sub_26A329FB4(v51, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(v1 + v49, &off_28036C7C0, &off_26A427400);
    sub_26A329F60();
    __swift_storeEnumTagSinglePayload(v1 + v49, 0, 1, v2);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemVisual.init<A>(_:text1:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for _ProtoSimpleItem_Visual(0);
  OUTLINED_FUNCTION_0_61();
  sub_26A32A00C(v13, v14, &protocol conformance descriptor for _ProtoSimpleItem_Visual);
  sub_26A4249C4();

  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return (*(*(a8 - 8) + 8))(a1, a8);
}

uint64_t sub_26A328358(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a8;
  v43 = a7;
  v50 = a5;
  v51 = a6;
  v46 = a3;
  v47 = a4;
  v52 = a1;
  v9 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v9 - 8);
  v42[3] = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = v42 - v12;
  v49 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v49);
  v42[1] = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v14 - 8);
  v42[2] = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v16 - 8);
  v17 = type metadata accessor for _ProtoVisualProperty(0) - 8;
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v18 - 8);
  v44 = v42 - v19;
  v45 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v45);
  v42[0] = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 16);
  v57 = MEMORY[0x277D84F90];
  sub_26A10D2B0(0, v21, 0);
  v22 = v57;
  if (v21)
  {
    v23 = a2 + 32;
    do
    {
      sub_26A0E5D68(v23, v54);
      v25 = v55;
      v24 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      (*(v24 + 8))(v25, v24);
      sub_26A329F60();
      __swift_destroy_boxed_opaque_existential_1(v54);
      v57 = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_26A10D2B0(v26 > 1, v27 + 1, 1);
        v22 = v57;
      }

      *(v22 + 16) = v27 + 1;
      sub_26A329F60();
      v23 += 40;
      --v21;
    }

    while (v21);
  }

  v28 = v52;

  *v28 = v22;
  sub_26A10FD9C();
  v29 = v55;
  if (v55)
  {
    v30 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    (*(v30 + 8))(v29, v30);
    v31 = v44;
    sub_26A329F60();
    v32 = v45;
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v45);
    __swift_destroy_boxed_opaque_existential_1(v54);
    if (__swift_getEnumTagSinglePayload(v31, 1, v32) != 1)
    {
      sub_26A329F60();
      v33 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 36);
      sub_26A0E48F0(v28 + v33, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A329F60();
      __swift_storeEnumTagSinglePayload(v28 + v33, 0, 1, v32);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v54, &qword_28036CB08, &unk_26A428720);
    v31 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v45);
  }

  sub_26A0E48F0(v31, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v34 = v55;
  if (v55)
  {
    v35 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    (*(v35 + 8))(v34, v35);
    v36 = v48;
    sub_26A329F60();
    v37 = v49;
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v49);
    __swift_destroy_boxed_opaque_existential_1(v54);
    if (__swift_getEnumTagSinglePayload(v36, 1, v37) != 1)
    {
      sub_26A329F60();
      v38 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 32);
      sub_26A0E48F0(v28 + v38, &off_28036C7C0, &off_26A427400);
      sub_26A329F60();
      __swift_storeEnumTagSinglePayload(v28 + v38, 0, 1, v37);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v54, &qword_28036CAF8, &unk_26A426D30);
    v36 = v48;
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v49);
  }

  sub_26A0E48F0(v36, &off_28036C7C0, &off_26A427400);
LABEL_16:
  v39 = v51;

  v28[1] = v50;
  v28[2] = v39;
  v41 = v53;
  if (v53)
  {

    v28[3] = v43;
    v28[4] = v41;
  }

  return result;
}

uint64_t sub_26A328A84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a2;
  v51 = a8;
  v41 = a7;
  v46 = a5;
  v47 = a6;
  v11 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v11 - 8);
  v40[3] = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v13 - 8);
  v44 = v40 - v14;
  v45 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v45);
  v40[2] = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v40[1] = v40 - v17;
  v18 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v18 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v40 - v20;
  v22 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v22);
  v40[0] = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v25 = type metadata accessor for _ProtoVisualProperty(0);
  v26 = v43;
  v28 = sub_26A409784(sub_26A329094, 0, a9, v25, MEMORY[0x277D84A98], a10, MEMORY[0x277D84AC0], v27);
  v43 = v26;

  *a1 = v28;
  sub_26A10FD9C();
  v29 = v49;
  if (v49)
  {
    v30 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    (*(v30 + 8))(v29, v30);
    sub_26A329F60();
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
    __swift_destroy_boxed_opaque_existential_1(v48);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
    {
      sub_26A329F60();
      sub_26A329F60();
      v31 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 36);
      sub_26A0E48F0(a1 + v31, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A329F60();
      __swift_storeEnumTagSinglePayload(a1 + v31, 0, 1, v22);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v48, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  }

  sub_26A0E48F0(v21, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v32 = v49;
  if (v49)
  {
    v33 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    (*(v33 + 8))(v32, v33);
    v34 = v44;
    sub_26A329F60();
    v35 = v45;
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v45);
    __swift_destroy_boxed_opaque_existential_1(v48);
    if (__swift_getEnumTagSinglePayload(v34, 1, v35) != 1)
    {
      sub_26A329F60();
      sub_26A329F60();
      v36 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 32);
      sub_26A0E48F0(a1 + v36, &off_28036C7C0, &off_26A427400);
      sub_26A329F60();
      __swift_storeEnumTagSinglePayload(a1 + v36, 0, 1, v35);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v48, &qword_28036CAF8, &unk_26A426D30);
    v34 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v45);
  }

  sub_26A0E48F0(v34, &off_28036C7C0, &off_26A427400);
LABEL_11:
  v37 = v47;

  a1[1] = v46;
  a1[2] = v37;
  v39 = v51;
  if (v51)
  {

    a1[3] = v41;
    a1[4] = v39;
  }

  return result;
}

uint64_t sub_26A329094(void *a1)
{
  v3 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(v4, v5);
  return sub_26A329F60();
}

uint64_t SimpleItemVisual.init(_:text1:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSimpleItem_Visual(0);
  OUTLINED_FUNCTION_0_61();
  sub_26A32A00C(v9, v10, &protocol conformance descriptor for _ProtoSimpleItem_Visual);
  sub_26A4249C4();

  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(v12, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v13, &qword_28036CB08, &unk_26A428720);
}

void SimpleItemVisual.init<A>(_:text1:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v17 = v4;
  v18 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v2 - 8);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v15 = v14 - v13;
  (*(v12 + 16))(v14 - v13, v11, v16);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_26_27();
  SimpleItemVisual.init<A>(_:text1:action:componentName:linkIdentifier:)(v15, &v20, &v19, v17, v18, 0, 0, v3, v1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v9, &qword_28036CB08, &unk_26A428720);
  (*(v12 + 8))(v11, v3);
  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemVisual.init(_:text1:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_24_32();
  OUTLINED_FUNCTION_22_20();
  OUTLINED_FUNCTION_21_25();
  type metadata accessor for _ProtoSimpleItem_Visual(0);
  OUTLINED_FUNCTION_0_61();
  sub_26A32A00C(v7, v8, &protocol conformance descriptor for _ProtoSimpleItem_Visual);
  sub_26A4249C4();

  OUTLINED_FUNCTION_40_11(a3);
  OUTLINED_FUNCTION_27_2(a2);
  OUTLINED_FUNCTION_40_11(v12);
  OUTLINED_FUNCTION_27_2(v13);
  OUTLINED_FUNCTION_40_11(v10);
  OUTLINED_FUNCTION_27_2(v11);
}

void SimpleItemVisual.init<A>(_:text1:action:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  (*(v8 + 16))(v10 - v9, v7, v11);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_26_27();
  SimpleItemVisual.init<A>(_:text1:action:componentName:)();
  sub_26A0E48F0(v3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v5, &qword_28036CB08, &unk_26A428720);
  (*(v8 + 8))(v7, v1);
  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemVisual.init(_:text1:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_24_32();
  OUTLINED_FUNCTION_22_20();
  OUTLINED_FUNCTION_21_25();
  type metadata accessor for _ProtoSimpleItem_Visual(0);
  OUTLINED_FUNCTION_0_61();
  sub_26A32A00C(v5, v6, &protocol conformance descriptor for _ProtoSimpleItem_Visual);
  sub_26A4249C4();
  OUTLINED_FUNCTION_40_11(a3);
  OUTLINED_FUNCTION_27_2(a2);
  OUTLINED_FUNCTION_40_11(v10);
  OUTLINED_FUNCTION_27_2(v11);
  OUTLINED_FUNCTION_40_11(v8);
  OUTLINED_FUNCTION_27_2(v9);
}

Swift::String __swiftcall SimpleItemVisual.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for SimpleItemVisual(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE8, &qword_26A426970);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  OUTLINED_FUNCTION_5_43();
  sub_26A329F0C();
  if (redacted)
  {
    _ProtoSimpleItem_Visual.redactedProto.getter();
  }

  else
  {
    sub_26A329F0C();
  }

  sub_26A329F60();
  v18[*(v15 + 32)] = redacted;
  sub_26A329FB4(v14, type metadata accessor for SimpleItemVisual);
  *&v18[*(v15 + 28)] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  sub_26A0F71C0(KeyPath, 0x69616E626D756874, 0xEA0000000000736CLL, v20, v21, v22, v23, v24, v45, v46, v47, v48, v49, v50);

  SimpleItemVisual.text1.getter();
  sub_26A1069D4(v9);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  SimpleItemVisual.action.getter();
  sub_26A1068D0();
  sub_26A0E48F0(v5, &qword_28036CB18, &unk_26A427670);
  v25 = swift_getKeyPath();
  sub_26A0F7B10(v25, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v26, v27, v28, v29, v45, v46);

  v30 = swift_getKeyPath();
  sub_26A0F84A4(v30, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v31, v32, v33, v34, v45, v46);

  sub_26A0FD5B8(v35, v36, v37, v38, v39, v40, v41);
  sub_26A0E48F0(v18, &qword_28036CDE8, &qword_26A426970);
  v42 = OUTLINED_FUNCTION_175();
  result._object = v43;
  result._countAndFlagsBits = v42;
  return result;
}

uint64_t SimpleItemVisual.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1_52();
  sub_26A329F0C();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_6_32();
  sub_26A329F60();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t SimpleItemVisual.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SimpleItemVisual(0);
  *(inited + 64) = &protocol witness table for SimpleItemVisual;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_5_43();
  sub_26A329F0C();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A32A00C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for SimpleItemVisual(uint64_t a1)
{
  result = qword_280372990;
  if (!qword_280372990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A329F0C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A329F60()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A329FB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A32A00C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A32A0C4(uint64_t a1)
{
  result = type metadata accessor for _ProtoSimpleItem_Visual(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_25()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_22_20()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_23_30()
{

  return type metadata accessor for _ProtoSimpleItem_Visual(0);
}

uint64_t OUTLINED_FUNCTION_24_32()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_25_24()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_26_27()
{

  return sub_26A10FD9C();
}

Swift::String __swiftcall TextElement.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v70 = &v67 - v4;
  v69 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v67 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v68 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B0, &qword_26A43E300);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - v18;
  v20 = type metadata accessor for TextElement(0);
  v21 = OUTLINED_FUNCTION_41(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE0, &qword_26A43DEA0);
  OUTLINED_FUNCTION_41(v22);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  v25 = &v67 - v24;
  OUTLINED_FUNCTION_13_28();
  OUTLINED_FUNCTION_45_9();
  sub_26A32EE30();
  sub_26A39FA98();
  v26 = *(v25 + 1);
  v27 = v25[16];
  v71[0] = *v25;
  v71[1] = v26;
  v72 = v27;
  sub_26A148B68(v71[0], v26, v27);
  TextElement.Value.init(proto:)(v71, &v73);
  v28 = v74;
  v29 = OUTLINED_FUNCTION_45_9();
  sub_26A146ED4(v29, v30, v28);
  v31 = OUTLINED_FUNCTION_45_9();
  sub_26A0D6740(v31, v32);
  type metadata accessor for _ProtoTextElement(0);
  sub_26A32EF10();
  v33 = type metadata accessor for _ProtoTextElement.Font(0);
  v34 = 1;
  LODWORD(v28) = __swift_getEnumTagSinglePayload(v19, 1, v33);
  sub_26A0E48F0(v19, &qword_2803729B0, &qword_26A43E300);
  if (v28 == 1)
  {
    v35 = 0;
    v36 = 0uLL;
    v37 = 0uLL;
  }

  else
  {
    _ProtoTextElement.font.getter();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v33);
    TextElement.Font.init(_:)(v1, &v73);
    v36 = v73;
    v37 = v74;
    v35 = v75;
    v34 = v76;
  }

  v73 = v36;
  v74 = v37;
  v75 = v35;
  v76 = v34;
  sub_26A146E00(&v73);
  sub_26A32EF10();
  v41 = v69;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v69);
  sub_26A0E48F0(v14, &qword_2803729A8, &qword_26A43DE90);
  if (EnumTagSinglePayload == 1)
  {
    v43 = 0;
    v44 = 0;
  }

  else
  {
    v45 = v68;
    sub_26A32EF10();
    v46 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_37(v46, v47, v41);
    if (v48)
    {
      v51 = v67;
      *v67 = 0;
      *(v51 + 8) = 1;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v49 = OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_37(v49, v50, v41);
      if (!v48)
      {
        sub_26A0E48F0(v45, &qword_2803729A8, &qword_26A43DE90);
      }
    }

    else
    {
      v51 = v67;
      sub_26A32F3AC();
    }

    v43 = *v51;
    v44 = *(v51 + 8);
    OUTLINED_FUNCTION_1_53();
    sub_26A32F354(v51, v52);
  }

  sub_26A146D48(v43, v44 | ((EnumTagSinglePayload == 1) << 8), 0x67696557746E6F66, 0xEA00000000007468, 0);
  v53 = v70;
  TextElement.fontColor.getter();
  sub_26A109EDC();
  sub_26A0E48F0(v53, &qword_28036CBA0, &qword_26A4265B0);
  TextElement.italic.getter();
  sub_26A146CAC(v54, 0x63696C617469, 0xE600000000000000, 0);
  TextElement.bold.getter();
  sub_26A146CAC(v55, 1684828002, 0xE400000000000000, 0);
  sub_26A146C04(*(v25 + 8) & ~(*(v25 + 8) >> 31), *(v25 + 8) < 1, 0x696D694C656E696CLL, 0xE900000000000074, 0);
  KeyPath = swift_getKeyPath();
  sub_26A28FDB0(KeyPath, 0x736D6F696469, 0xE600000000000000);

  sub_26A101E58(v57, v58, v59, v60, v61, v62, v63);
  sub_26A0E48F0(v25, &qword_28036CDE0, &qword_26A43DEA0);
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_75();
  result._object = v65;
  result._countAndFlagsBits = v64;
  return result;
}

double sub_26A32AC1C@<D0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_14_24();
  sub_26A32EE30();
  v4 = *(a2 + 16);
  if (v4 != 255)
  {
    sub_26A0D6768(*a2, *(a2 + 8), *(a2 + 16));
    result = 9.79844756e25;
    *a2 = xmmword_26A42D990;
    *(a2 + 16) = v4 & 1;
  }

  return result;
}

void *TextElement.value.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = v4;
  sub_26A148B68(v6[0], v3, v4);
  return TextElement.Value.init(proto:)(v6, a1);
}

uint64_t TextElement.Value.init(proto:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v10 = *(result + 16);
  if (v10 == 255)
  {
    v16[1] = v7;
    v16[2] = v6;
    v16[3] = v5;
    v16[4] = v4;
    v16[5] = v3;
    v16[6] = v2;
    v16[7] = v8;
    v16[8] = v9;
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v11 = sub_26A424AE4();
    __swift_project_value_buffer(v11, qword_2803A8950);
    v12 = sub_26A424AD4();
    v13 = sub_26A424E14();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_26A0E8788(0xD000000000000023, 0x800000026A44A470, v16);
      _os_log_impl(&dword_26A0B8000, v12, v13, "%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_1_21();
    }

    result = sub_26A424FC4();
    __break(1u);
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = v10 & 1;
  }

  return result;
}

void TextElement.font.getter()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_28();
  OUTLINED_FUNCTION_40_17();
  v9 = type metadata accessor for _ProtoTextElement.Font(0);
  v10 = 1;
  OUTLINED_FUNCTION_20_2();
  if (v1 == 1)
  {
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    _ProtoTextElement.font.getter();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
    TextElement.Font.init(_:)(v0, v17);
    v12 = v17[0];
    v13 = v17[1];
    v11 = v18;
    v10 = v19;
  }

  *v3 = v12;
  *(v3 + 16) = v13;
  *(v3 + 32) = v11;
  *(v3 + 34) = v10;
  OUTLINED_FUNCTION_75();
}

uint64_t TextElement.Font.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ProtoTextElement.Font.SystemFont(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B0, &qword_26A43E300);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  OUTLINED_FUNCTION_41(v13);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  sub_26A32EF10();
  type metadata accessor for _ProtoTextElement.Font(0);
  v17 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v17, v18, v19);
  if (v27)
  {
    sub_26A0E48F0(a1, &qword_2803729B0, &qword_26A43E300);
    sub_26A0E48F0(v12, &qword_2803729B0, &qword_26A43E300);
    type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
    v20 = OUTLINED_FUNCTION_71();
    result = __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
LABEL_7:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 34) = 1;
    return result;
  }

  sub_26A32EF10();
  sub_26A32F354(v12, type metadata accessor for _ProtoTextElement.Font);
  v24 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  v25 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v25, v26, v24);
  if (v27)
  {
LABEL_6:
    result = sub_26A0E48F0(a1, &qword_2803729B0, &qword_26A43E300);
    goto LABEL_7;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    v34 = *v16;
    if (v16[8] == 1)
    {
      result = sub_26A0E48F0(a1, &qword_2803729B0, &qword_26A43E300);
      switch(v34)
      {
        case 1:
          v39 = 1;
          goto LABEL_28;
        case 2:
          v39 = 2;
          goto LABEL_28;
        case 3:
          v39 = 3;
          goto LABEL_28;
        case 4:
          v39 = 4;
          goto LABEL_28;
        case 5:
          v39 = 5;
          goto LABEL_28;
        case 6:
          v39 = 6;
          goto LABEL_28;
        case 7:
          v39 = 7;
          goto LABEL_28;
        case 8:
          v39 = 8;
          goto LABEL_28;
        case 9:
          v39 = 9;
          goto LABEL_28;
        case 10:
          v39 = 10;
LABEL_28:
          *a2 = v39;
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          break;
        default:
          *a2 = 0u;
          *(a2 + 16) = 0u;
          break;
      }

      *(a2 + 32) = 256;
      goto LABEL_30;
    }

    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v35 = sub_26A424AE4();
    __swift_project_value_buffer(v35, qword_2803A8950);
    v36 = sub_26A424AD4();
    v37 = sub_26A424E04();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134349056;
      *(v38 + 4) = v34;
      _os_log_impl(&dword_26A0B8000, v36, v37, "Unrecognized named font value: %{public}ld", v38, 0xCu);
      OUTLINED_FUNCTION_1_21();
    }

    goto LABEL_6;
  }

  sub_26A0E48F0(a1, &qword_2803729B0, &qword_26A43E300);
  OUTLINED_FUNCTION_12_27();
  sub_26A32F3AC();
  v29 = *v8;
  v30 = *(v8 + 1);
  v31 = *(v8 + 16);
  v32 = *(v8 + 3);
  v33 = *(v8 + 32);
  result = sub_26A32F354(v8, type metadata accessor for _ProtoTextElement.Font.SystemFont);
  *a2 = v29;
  *(a2 + 8) = v30;
  *(a2 + 16) = v31;
  *(a2 + 24) = v32;
  *(a2 + 32) = v33;
LABEL_30:
  *(a2 + 34) = 0;
  return result;
}

void TextElement.fontWeight.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoTextElement(0);
  sub_26A32EF10();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v3);
  sub_26A0E48F0(v0, &qword_2803729A8, &qword_26A43DE90);
  if (EnumTagSinglePayload == 1)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    sub_26A32EF10();
    v17 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_37(v17, v18, v3);
    if (v19)
    {
      *v7 = 0;
      *(v7 + 8) = 1;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v20 = OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_37(v20, v21, v3);
      if (!v19)
      {
        sub_26A0E48F0(v12, &qword_2803729A8, &qword_26A43DE90);
      }
    }

    else
    {
      OUTLINED_FUNCTION_104();
      sub_26A32F3AC();
    }

    v15 = *v7;
    v16 = *(v7 + 8);
    OUTLINED_FUNCTION_1_53();
    sub_26A32F354(v7, v22);
  }

  *v2 = v15;
  *(v2 + 8) = v16;
  *(v2 + 9) = EnumTagSinglePayload == 1;
  OUTLINED_FUNCTION_75();
}

void TextElement.fontColor.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v22 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoTextElement(0);
  sub_26A32EF10();
  v13 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v3);
  sub_26A0E48F0(v0, &qword_28036CCD8, &unk_26A432950);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A32EF10();
    v15 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v15, v16, v3);
    if (v17)
    {
      v18 = type metadata accessor for _ProtoColor.OneOf_Value(0);
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v18);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v19 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v19, v20, v3);
      if (!v17)
      {
        sub_26A0E48F0(v11, &qword_28036CCD8, &unk_26A432950);
      }
    }

    else
    {
      sub_26A32F3AC();
    }

    sub_26A32F3AC();
    v13 = 0;
  }

  v21 = type metadata accessor for Color(0);
  __swift_storeEnumTagSinglePayload(v2, v13, 1, v21);
  OUTLINED_FUNCTION_75();
}

void TextElement.italic.getter()
{
  OUTLINED_FUNCTION_76();
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_28();
  OUTLINED_FUNCTION_40_17();
  OUTLINED_FUNCTION_20_2();
  if (v2 != 1)
  {
    sub_26A32EF10();
    OUTLINED_FUNCTION_15(v1);
    if (v9)
    {
      *v0 = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_15(v1);
      if (!v9)
      {
        sub_26A0E48F0(v1, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A32F3AC();
    }

    OUTLINED_FUNCTION_15_31();
  }

  OUTLINED_FUNCTION_75();
}

void TextElement.bold.getter()
{
  OUTLINED_FUNCTION_76();
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_28();
  OUTLINED_FUNCTION_40_17();
  OUTLINED_FUNCTION_20_2();
  if (v2 != 1)
  {
    sub_26A32EF10();
    OUTLINED_FUNCTION_15(v1);
    if (v9)
    {
      *v0 = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_15(v1);
      if (!v9)
      {
        sub_26A0E48F0(v1, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A32F3AC();
    }

    OUTLINED_FUNCTION_15_31();
  }

  OUTLINED_FUNCTION_75();
}

void *TextElement.idioms.getter()
{
  if (*(*(v0 + 24) + 16))
  {
  }

  else
  {
    return &unk_287B014A0;
  }
}

void sub_26A32BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, __int128 *a20, uint64_t a21, char a22, char a23, char *a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, __int128 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  OUTLINED_FUNCTION_51_15();
  a51 = v52;
  a52 = v53;
  v59 = v54;
  v56 = *(v55 + 16);
  a37 = *v55;
  a38 = v56;
  *(&a38 + 15) = *(v55 + 31);
  sub_26A32EF10();
  type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_0_62();
  sub_26A32F15C(v57, v58, &protocol conformance descriptor for _ProtoTextElement);
  sub_26A4249C4();

  sub_26A0E48F0(v59, &qword_2803729A0, &unk_26A43DE80);
  OUTLINED_FUNCTION_187_0(&a32);
  OUTLINED_FUNCTION_50_14();
}

uint64_t sub_26A32BC30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, char a10, uint64_t a11, char a12)
{
  v60 = a8;
  v59 = a7;
  v51 = a6;
  v56 = a2;
  v57 = a5;
  v58 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  MEMORY[0x28223BE20](v14 - 8);
  v63 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v51 - v17;
  v69 = type metadata accessor for _ProtoOptionalBool(0);
  MEMORY[0x28223BE20](v69);
  v52 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v62 = &v51 - v20;
  v55 = type metadata accessor for _ProtoColor(0);
  MEMORY[0x28223BE20](v55);
  v54 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Color(0);
  MEMORY[0x28223BE20](v22 - 8);
  v53 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v51 - v25;
  v27 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for _ProtoTextElement.Font(0);
  MEMORY[0x28223BE20](v30);
  v31 = *a1;
  v32 = *(a1 + 8);
  v33 = *(a1 + 16);

  sub_26A0D6768(v31, v32, v33);
  v34 = v57;
  *a1 = v56;
  *(a1 + 8) = a3;
  *(a1 + 16) = v58 & 1;
  if ((*(v34 + 34) & 1) == 0)
  {
    TextElement.Font.proto.getter();
    v35 = *(type metadata accessor for _ProtoTextElement(0) + 32);
    sub_26A0E48F0(a1 + v35, &qword_2803729B0, &qword_26A43E300);
    sub_26A32F3AC();
    __swift_storeEnumTagSinglePayload(a1 + v35, 0, 1, v30);
  }

  v36 = v69;
  v37 = v61;
  v38 = v59;
  if ((v59 & 0x100) == 0)
  {
    v39 = *(type metadata accessor for _ProtoTextElement(0) + 36);
    sub_26A32EF10();
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
    {
      *v29 = 0;
      v29[8] = 1;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v26, 1, v27) != 1)
      {
        sub_26A0E48F0(v26, &qword_2803729A8, &qword_26A43DE90);
      }
    }

    else
    {
      sub_26A32F3AC();
    }

    *v29 = v51;
    v29[8] = v38 & 1;
    sub_26A0E48F0(a1 + v39, &qword_2803729A8, &qword_26A43DE90);
    sub_26A32F3AC();
    __swift_storeEnumTagSinglePayload(a1 + v39, 0, 1, v27);
  }

  sub_26A32EF10();
  if (v65)
  {
    sub_26A0D671C(&v64, v66);
    v40 = v67;
    v41 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    (*(v41 + 8))(v40, v41);
    sub_26A32F3AC();
    v42 = *(type metadata accessor for _ProtoTextElement(0) + 40);
    sub_26A0E48F0(a1 + v42, &qword_28036CCD8, &unk_26A432950);
    sub_26A32F3AC();
    __swift_storeEnumTagSinglePayload(a1 + v42, 0, 1, v55);
    result = __swift_destroy_boxed_opaque_existential_1(v66);
  }

  else
  {
    result = sub_26A0E48F0(&v64, &qword_2803729A0, &unk_26A43DE80);
  }

  v44 = v62;
  v45 = v63;
  if (a9 != 2)
  {
    v46 = *(type metadata accessor for _ProtoTextElement(0) + 44);
    sub_26A32EF10();
    if (__swift_getEnumTagSinglePayload(v37, 1, v36) == 1)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v37, 1, v36) != 1)
      {
        sub_26A0E48F0(v37, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A32F3AC();
    }

    *v44 = a9 & 1;
    sub_26A0E48F0(a1 + v46, &qword_28036D198, &qword_26A432940);
    sub_26A32F3AC();
    result = __swift_storeEnumTagSinglePayload(a1 + v46, 0, 1, v36);
  }

  if (a10 != 2)
  {
    v47 = *(type metadata accessor for _ProtoTextElement(0) + 48);
    sub_26A32EF10();
    if (__swift_getEnumTagSinglePayload(v45, 1, v36) == 1)
    {
      v48 = v52;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v45, 1, v36) != 1)
      {
        sub_26A0E48F0(v45, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      v48 = v52;
      sub_26A32F3AC();
    }

    *v48 = a10 & 1;
    sub_26A0E48F0(a1 + v47, &qword_28036D198, &qword_26A432940);
    sub_26A32F3AC();
    result = __swift_storeEnumTagSinglePayload(a1 + v47, 0, 1, v36);
  }

  if (a12)
  {
    goto LABEL_28;
  }

  if (a11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a11 <= 0x7FFFFFFF)
  {
    *(a1 + 32) = a11;
LABEL_28:

    v50 = sub_26A419264(v49);

    *(a1 + 24) = v50;
    return result;
  }

  __break(1u);
  return result;
}

void TextElement.Font.proto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  type metadata accessor for _ProtoTextElement.Font.SystemFont(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = *v0;
  v5 = v0[1];
  v7 = v0[2];
  v6 = v0[3];
  v8 = *(v0 + 32);
  v9 = *(v0 + 33);
  v10 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  v11 = OUTLINED_FUNCTION_71();
  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  type metadata accessor for _ProtoTextElement.Font(0);
  v13 = _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  if (v9 != 1)
  {
    v24[0] = v24;
    MEMORY[0x28223BE20](v13);
    LODWORD(v24[-6]) = v4;
    v24[-5] = v5;
    LOBYTE(v24[-4]) = v7 & 1;
    v24[-3] = v6;
    LOBYTE(v24[-2]) = v8 & 1;
    sub_26A32F15C(&qword_2803729C0, type metadata accessor for _ProtoTextElement.Font.SystemFont, &protocol conformance descriptor for _ProtoTextElement.Font.SystemFont);
    sub_26A4249C4();
    sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
    OUTLINED_FUNCTION_12_27();
    sub_26A32F3AC();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    OUTLINED_FUNCTION_75();
    return;
  }

  if (!(v7 | v5 | v4 | v6) && !v8)
  {
    sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
    *v2 = 0;
LABEL_44:
    *(v2 + 8) = 1;
    goto LABEL_45;
  }

  v17 = v7 | v5 | v6;
  if (v8 || v4 != 1 || v17)
  {
    if (v8 || v4 != 2 || v17)
    {
      if (v8 || v4 != 3 || v17)
      {
        if (v8 || v4 != 4 || v17)
        {
          if (v8 || v4 != 5 || v17)
          {
            if (v8 || v4 != 6 || v17)
            {
              if (v8 || v4 != 7 || v17)
              {
                if (v8 || v4 != 8 || v17)
                {
                  if (v8 || v4 != 9 || v17)
                  {
                    sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
                    v18 = 10;
                  }

                  else
                  {
                    sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
                    v18 = 9;
                  }
                }

                else
                {
                  sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
                  v18 = 8;
                }
              }

              else
              {
                sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
                v18 = 7;
              }
            }

            else
            {
              sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
              v18 = 6;
            }
          }

          else
          {
            sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
            v18 = 5;
          }
        }

        else
        {
          sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
          v18 = 4;
        }
      }

      else
      {
        sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
        v18 = 3;
      }
    }

    else
    {
      sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
      v18 = 2;
    }

    *v2 = v18;
    goto LABEL_44;
  }

  sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
  *v2 = 1;
  *(v2 + 8) = 1;
LABEL_45:
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_75();

  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t TextElement.Value.text.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  sub_26A0D6660(v0, v1);
  return OUTLINED_FUNCTION_133();
}

void TextElement.Value.attributedText.getter()
{
  OUTLINED_FUNCTION_76();
  sub_26A424504();
  OUTLINED_FUNCTION_3_46();
  v25 = v3;
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  v7 = sub_26A424514();
  OUTLINED_FUNCTION_3_46();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = sub_26A424534();
  v15 = OUTLINED_FUNCTION_41(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  OUTLINED_FUNCTION_41(v16);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_113();
  v18 = sub_26A424574();
  v19 = OUTLINED_FUNCTION_41(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  if (*(v1 + 16))
  {
    v20 = sub_26A424614();
    __swift_storeEnumTagSinglePayload(v0, 1, 1, v20);
    (*(v9 + 104))(v13, *MEMORY[0x277CC8BB0], v7);
    (*(v25 + 104))(v6, *MEMORY[0x277CC8B98], v26);
    v21 = OUTLINED_FUNCTION_152();
    sub_26A0D6660(v21, v22);

    sub_26A424524();
    OUTLINED_FUNCTION_152();
    sub_26A424544();
    v23 = OUTLINED_FUNCTION_152();
    sub_26A0D6740(v23, v24);
  }

  else
  {

    sub_26A424564();
    OUTLINED_FUNCTION_152();
    sub_26A424554();
  }

  OUTLINED_FUNCTION_75();
}

unint64_t TextElement.Value.description.getter()
{
  if (*(v0 + 16))
  {
    sub_26A424EF4();

    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 34;
  }

  v1 = OUTLINED_FUNCTION_133();
  MEMORY[0x26D65BA70](v1);
  v2 = OUTLINED_FUNCTION_133();
  sub_26A0D6740(v2, v3);
  MEMORY[0x26D65BA70](34, 0xE100000000000000);
  return v5;
}

uint64_t static TextElement.Value.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v26 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_26A425354();
        v28 = OUTLINED_FUNCTION_125();
        v30 = OUTLINED_FUNCTION_9_31(v28, v29);
        v32 = OUTLINED_FUNCTION_9_31(v30, v31);
        sub_26A0D6740(v32, v33);
        v14 = OUTLINED_FUNCTION_125();
        goto LABEL_16;
      }

      v42 = OUTLINED_FUNCTION_9_31(v26, v2);
      v44 = OUTLINED_FUNCTION_9_31(v42, v43);
      sub_26A0D6740(v44, v45);
      sub_26A0D6740(v3, v2);
      return 1;
    }

LABEL_9:
    v16 = OUTLINED_FUNCTION_125();
    v18 = OUTLINED_FUNCTION_9_31(v16, v17);
    v20 = OUTLINED_FUNCTION_9_31(v18, v19);
    sub_26A0D6740(v20, v21);
    v22 = OUTLINED_FUNCTION_125();
    sub_26A0D6740(v22, v23);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v24 = 1;
    v34 = OUTLINED_FUNCTION_8_24();
    sub_26A0D6660(v34, v35);
    v36 = OUTLINED_FUNCTION_8_24();
    sub_26A0D6660(v36, v37);
    v38 = OUTLINED_FUNCTION_8_24();
    sub_26A0D6740(v38, v39);
    v40 = OUTLINED_FUNCTION_8_24();
    sub_26A0D6740(v40, v41);
    return v24;
  }

  v7 = sub_26A425354();
  v8 = OUTLINED_FUNCTION_125();
  sub_26A0D6660(v8, v9);
  v10 = OUTLINED_FUNCTION_8_24();
  sub_26A0D6660(v10, v11);
  v12 = OUTLINED_FUNCTION_8_24();
  sub_26A0D6740(v12, v13);
  v14 = OUTLINED_FUNCTION_125();
LABEL_16:
  sub_26A0D6740(v14, v15);
  return v7 & 1;
}

uint64_t TextElement.Value.hash(into:)()
{
  MEMORY[0x26D65C340](*(v0 + 16));
  OUTLINED_FUNCTION_133();

  return sub_26A424C04();
}

uint64_t TextElement.Value.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  OUTLINED_FUNCTION_35_1();
  sub_26A424C04();
  return sub_26A425554();
}

uint64_t sub_26A32CF70(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_26A425504();
  MEMORY[0x26D65C340](v2);
  sub_26A424C04();
  return sub_26A425554();
}

BOOL static TextElement.Font.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *(a2 + 32);
  if (*(a1 + 33) != 1)
  {
    if ((*(a2 + 33) & 1) != 0 || *&v3 != *&v5)
    {
      return 0;
    }

    if (v8)
    {
      switch(v6)
      {
        case 1:
          if (v2 != 1)
          {
            return 0;
          }

          goto LABEL_39;
        case 2:
          if (v2 != 2)
          {
            return 0;
          }

          goto LABEL_39;
        case 3:
          if (v2 != 3)
          {
            return 0;
          }

          goto LABEL_39;
        case 4:
          if (v2 != 4)
          {
            return 0;
          }

          goto LABEL_39;
        case 5:
          if (v2 != 5)
          {
            return 0;
          }

          goto LABEL_39;
        case 6:
          if (v2 != 6)
          {
            return 0;
          }

          goto LABEL_39;
        case 7:
          if (v2 != 7)
          {
            return 0;
          }

          goto LABEL_39;
        case 8:
          if (v2 != 8)
          {
            return 0;
          }

          goto LABEL_39;
        default:
          if (!v2)
          {
            goto LABEL_39;
          }

          return 0;
      }
    }

    if (v2 != v6)
    {
      return 0;
    }

LABEL_39:
    if (v9)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          if (v4 == 1)
          {
            return 1;
          }
        }

        else if (v4 == 2)
        {
          return 1;
        }
      }

      else if (!v4)
      {
        return 1;
      }
    }

    else if (v4 == v7)
    {
      return 1;
    }

    return 0;
  }

  v10 = a1[2] | v2;
  if (!(v10 | v3 | v4) && !*(a1 + 32))
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v11 = v8 | v6;
    return !(v11 | v5 | v7) && !*(a2 + 32);
  }

  v12 = v10 | v4;
  if (!*(a1 + 32) && v3 == 1 && !v12)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v13 = v8 | v6;
    if (!(v13 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v14 = v13 | v7;
    return !*(a2 + 32) && v5 == 1 && !v14;
  }

  if (!*(a1 + 32) && v3 == 2 && !v12)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v15 = v8 | v6;
    if (!(v15 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v16 = v15 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v16)
    {
      return 0;
    }

    return !*(a2 + 32) && v5 == 2 && !v16;
  }

  if (!*(a1 + 32) && v3 == 3 && !v12)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v17 = v8 | v6;
    if (!(v17 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v18 = v17 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v18)
    {
      return 0;
    }

    return (*(a2 + 32) || v5 != 2 || v18) && !*(a2 + 32) && v5 == 3 && !v18;
  }

  if (!*(a1 + 32) && v3 == 4 && !v12)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v19 = v8 | v6;
    if (!(v19 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v20 = v19 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v20)
    {
      return 0;
    }

    return (*(a2 + 32) || v5 != 2 || v20) && (*(a2 + 32) || v5 != 3 || v20) && !*(a2 + 32) && v5 == 4 && !v20;
  }

  if (!*(a1 + 32) && v3 == 5 && !v12)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v21 = v8 | v6;
    if (!(v21 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v22 = v21 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v22)
    {
      return 0;
    }

    return (*(a2 + 32) || v5 != 2 || v22) && (*(a2 + 32) || v5 != 3 || v22) && (*(a2 + 32) || v5 != 4 || v22) && !*(a2 + 32) && v5 == 5 && !v22;
  }

  if (!*(a1 + 32) && v3 == 6 && !v12)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v24 = v8 | v6;
    if (!(v24 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v25 = v24 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v25)
    {
      return 0;
    }

    return (*(a2 + 32) || v5 != 2 || v25) && (*(a2 + 32) || v5 != 3 || v25) && (*(a2 + 32) || v5 != 4 || v25) && (*(a2 + 32) || v5 != 5 || v25) && !*(a2 + 32) && v5 == 6 && !v25;
  }

  if (!*(a1 + 32) && v3 == 7 && !v12)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v26 = v8 | v6;
    if (!(v26 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v27 = v26 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v27)
    {
      return 0;
    }

    return (*(a2 + 32) || v5 != 2 || v27) && (*(a2 + 32) || v5 != 3 || v27) && (*(a2 + 32) || v5 != 4 || v27) && (*(a2 + 32) || v5 != 5 || v27) && (*(a2 + 32) || v5 != 6 || v27) && !*(a2 + 32) && v5 == 7 && !v27;
  }

  if (!*(a1 + 32) && v3 == 8 && !v12)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v28 = v8 | v6;
    if (!(v28 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v29 = v28 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v29)
    {
      return 0;
    }

    return (*(a2 + 32) || v5 != 2 || v29) && (*(a2 + 32) || v5 != 3 || v29) && (*(a2 + 32) || v5 != 4 || v29) && (*(a2 + 32) || v5 != 5 || v29) && (*(a2 + 32) || v5 != 6 || v29) && (*(a2 + 32) || v5 != 7 || v29) && !*(a2 + 32) && v5 == 8 && !v29;
  }

  if (*(a1 + 32) || v3 != 9 || v12)
  {
    if ((*(a2 + 33) & 1) == 0)
    {
      return 0;
    }

    v34 = v8 | v6;
    if (!(v34 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v35 = v34 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v35)
    {
      return 0;
    }

    if (!*(a2 + 32) && v5 == 2 && !v35 || !*(a2 + 32) && v5 == 3 && !v35 || !*(a2 + 32) && v5 == 4 && !v35 || !*(a2 + 32) && v5 == 5 && !v35 || !*(a2 + 32) && v5 == 6 && !v35 || !*(a2 + 32) && v5 == 7 && !v35 || !*(a2 + 32) && v5 == 8 && !v35)
    {
      return 0;
    }

    return v5 != 9 || v35 != 0 || v9 != 0;
  }

  else
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v30 = v8 | v6;
    if (!(v30 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v31 = v30 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v31)
    {
      return 0;
    }

    if (!*(a2 + 32) && v5 == 2 && !v31 || !*(a2 + 32) && v5 == 3 && !v31 || !*(a2 + 32) && v5 == 4 && !v31 || !*(a2 + 32) && v5 == 5 && !v31 || !*(a2 + 32) && v5 == 6 && !v31 || !*(a2 + 32) && v5 == 7 && !v31 || !*(a2 + 32) && v5 == 8 && !v31)
    {
      return 0;
    }

    return v5 == 9 && v31 == 0 && v9 == 0;
  }
}

uint64_t TextElement.Font.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  if (*(v1 + 33) == 1)
  {
    if (v5 | v3 | v2 | v4 || *(v1 + 32))
    {
      v8 = v5 | v3 | v4;
      if (*(v1 + 32))
      {
        v9 = 0;
      }

      else
      {
        v9 = v2 == 1;
      }

      if (v9 && v8 == 0)
      {
        v6 = 1;
      }

      else if (*(v1 + 32) || v2 != 2 || v8)
      {
        if (*(v1 + 32) || v2 != 3 || v8)
        {
          if (*(v1 + 32) || v2 != 4 || v8)
          {
            if (*(v1 + 32) || v2 != 5 || v8)
            {
              if (*(v1 + 32) || v2 != 6 || v8)
              {
                if (*(v1 + 32) || v2 != 7 || v8)
                {
                  if (*(v1 + 32) || v2 != 8 || v8)
                  {
                    if (*(v1 + 32) || v2 != 9 || v8)
                    {
                      v6 = 10;
                    }

                    else
                    {
                      v6 = 9;
                    }
                  }

                  else
                  {
                    v6 = 8;
                  }
                }

                else
                {
                  v6 = 7;
                }
              }

              else
              {
                v6 = 6;
              }
            }

            else
            {
              v6 = 5;
            }
          }

          else
          {
            v6 = 4;
          }
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x26D65C340](v6);
  }

  else
  {
    MEMORY[0x26D65C340](11);
    sub_26A425534();
    sub_26A0E8D94();
    sub_26A424B44();
    sub_26A0E8D40();
    return sub_26A424B44();
  }
}

uint64_t TextElement.Font.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 33);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_26A425504();
  TextElement.Font.hash(into:)(v5);
  return sub_26A425554();
}

uint64_t sub_26A32D920(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  v4 = v1[1];
  v7 = *v1;
  v8 = v4;
  v9 = v2;
  v10 = v3;
  sub_26A425504();
  TextElement.Font.hash(into:)(v6);
  return sub_26A425554();
}

uint64_t TextElement.Font.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*(v0 + 33) == 1)
  {
    if (v3 | v2 | v1 | v4 || *(v0 + 32))
    {
      v6 = v3 | v2 | v4;
      if (!*(v0 + 32) && (v1 == 1 ? (v7 = v6 == 0) : (v7 = 0), v7))
      {
        return 0x656C746974;
      }

      else if (*(v0 + 32) || v1 != 2 || v6)
      {
        if (*(v0 + 32) || v1 != 3 || v6)
        {
          if (*(v0 + 32) || v1 != 4 || v6)
          {
            if (*(v0 + 32) || v1 != 5 || v6)
            {
              if (*(v0 + 32) || v1 != 6 || v6)
              {
                if (*(v0 + 32) || v1 != 7 || v6)
                {
                  if (*(v0 + 32) || v1 != 8 || v6)
                  {
                    v9 = v1 == 9 && v6 == 0;
                    if (*(v0 + 32) == 0 && v9)
                    {
                      return 0x6E6F6974706163;
                    }

                    else
                    {
                      return 0x326E6F6974706163;
                    }
                  }

                  else
                  {
                    return 0x65746F6E746F6F66;
                  }
                }

                else
                {
                  return 0x74756F6C6C6163;
                }
              }

              else
              {
                return 2036625250;
              }
            }

            else
            {
              return 0x6C64616568627573;
            }
          }

          else
          {
            return 0x656E696C64616568;
          }
        }

        else
        {
          return 0x33656C746974;
        }
      }

      else
      {
        return 0x32656C746974;
      }
    }

    else
    {
      return 0x746954656772616CLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_14();
    sub_26A424EF4();
    MEMORY[0x26D65BA70](0x73286D6574737973, 0xED0000203A657A69);
    sub_26A424DC4();
    MEMORY[0x26D65BA70](0x746867696577202CLL, 0xEA0000000000203ALL);
    _ProtoTextElement.Font.Weight.description.getter();
    OUTLINED_FUNCTION_53_13();

    MEMORY[0x26D65BA70](0x6E6769736564202CLL, 0xEA0000000000203ALL);
    _ProtoTextElement.Font.Design.description.getter();
    OUTLINED_FUNCTION_53_13();

    OUTLINED_FUNCTION_38_14();
    return v10;
  }
}

uint64_t _ProtoTextElement.Font.Weight.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    result = 0x6B63616C62;
    switch(*v0)
    {
      case 1:
        return result;
      case 2:
        result = 1684828002;
        break;
      case 3:
        result = 0x7976616568;
        break;
      case 4:
        result = 0x746867696CLL;
        break;
      case 5:
        result = 0x6D756964656DLL;
        break;
      case 6:
        result = 0x646C6F62696D6573;
        break;
      case 7:
        result = 1852401780;
        break;
      case 8:
        result = 0x67696C6172746C75;
        break;
      default:
        result = 0x72616C75676572;
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_14();
    sub_26A424EF4();

    OUTLINED_FUNCTION_17_21();
    sub_26A4251B4();
    OUTLINED_FUNCTION_53_13();

    OUTLINED_FUNCTION_38_14();
    return v2;
  }

  return result;
}

uint64_t _ProtoTextElement.Font.Design.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x636170736F6E6F6DLL;
    if (v1 == 1)
    {
      v2 = 0x6465646E756F72;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0x6669726573;
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_14();
    sub_26A424EF4();

    OUTLINED_FUNCTION_17_21();
    sub_26A4251B4();
    OUTLINED_FUNCTION_53_13();

    OUTLINED_FUNCTION_38_14();
    return v4;
  }
}

void static TextElement.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v147 = type metadata accessor for Color(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_49(v29 - v28);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D990, &qword_26A43DEE0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49(&v139 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v33 = OUTLINED_FUNCTION_41(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_49(&v139 - v36);
  v156 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_49(&v139 - v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
  v41 = OUTLINED_FUNCTION_41(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47();
  v155 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_49(&v139 - v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B0, &qword_26A43E300);
  v48 = OUTLINED_FUNCTION_41(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  v157 = v50;
  MEMORY[0x28223BE20](v51);
  v53 = &v139 - v52;
  v54 = *(v26 + 8);
  v55 = *(v26 + 16);
  *&v159 = *v26;
  *(&v159 + 1) = v54;
  LOBYTE(v160) = v55;
  sub_26A148B68(v159, v54, v55);
  TextElement.Value.init(proto:)(&v159, &v163);
  v159 = v163;
  LOBYTE(v160) = v164;
  v56 = *v24;
  v57 = *(v24 + 8);
  v158 = v24;
  v58 = *(v24 + 16);
  v167 = v56;
  v168 = v57;
  v169 = v58;
  sub_26A148B68(v56, v57, v58);
  TextElement.Value.init(proto:)(&v167, &v170);
  v60 = v170;
  v59 = v171;
  v167 = v170;
  v168 = v171;
  v169 = v172;
  v61 = static TextElement.Value.== infix(_:_:)(&v159, &v167);
  sub_26A0D6740(v60, v59);
  v62 = OUTLINED_FUNCTION_45_9();
  sub_26A0D6740(v62, v63);
  if ((v61 & 1) == 0)
  {
    goto LABEL_39;
  }

  type metadata accessor for _ProtoTextElement(0);
  sub_26A32EF10();
  v64 = type metadata accessor for _ProtoTextElement.Font(0);
  v65 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v64);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v67, v68, v69);
  if (EnumTagSinglePayload == 1)
  {
    v70 = v26;
    v71 = 0;
    v142 = 0u;
    v141 = 0u;
  }

  else
  {
    v72 = v157;
    v70 = v26;
    _ProtoTextElement.font.getter();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v64);
    TextElement.Font.init(_:)(v72, &v163);
    v141 = v164;
    v142 = v163;
    v71 = v165;
    v65 = v166;
  }

  v76 = v158;
  sub_26A32EF10();
  v77 = __swift_getEnumTagSinglePayload(v20, 1, v64);
  OUTLINED_FUNCTION_187_0(v20);
  if (v77 == 1)
  {
    if (v65)
    {
      goto LABEL_14;
    }

    LOBYTE(v78) = 0;
    v79 = 0;
    v80 = 0uLL;
    v81 = 1;
    v82 = 0uLL;
  }

  else
  {
    v83 = v157;
    _ProtoTextElement.font.getter();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v64);
    TextElement.Font.init(_:)(v83, &v163);
    v81 = v166;
    if (v65)
    {
      if ((v166 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_14;
    }

    v80 = v163;
    v82 = v164;
    v79 = v165;
    v78 = HIBYTE(v165) & 1;
  }

  v163 = v142;
  v164 = v141;
  v165 = v71;
  v166 = v65;
  if (v81)
  {
    goto LABEL_39;
  }

  v159 = v80;
  v160 = v82;
  v161 = v79;
  v162 = v78;
  if (!static TextElement.Font.== infix(_:_:)(&v163, &v159))
  {
    goto LABEL_39;
  }

LABEL_14:
  v87 = &qword_26A43DE90;
  v88 = v70;
  v89 = v154;
  sub_26A32EF10();
  v90 = v156;
  v91 = __swift_getEnumTagSinglePayload(v89, 1, v156);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v92, v93, v94);
  v140 = v88;
  if (v91 == 1)
  {
    v95 = 0;
    v96 = 0;
  }

  else
  {
    v97 = v149;
    sub_26A32EF10();
    v98 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v98, v99, v90);
    if (v123)
    {
      OUTLINED_FUNCTION_39_16(&a14);
      v100 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v100, v101, v90);
      if (!v123)
      {
        sub_26A0E48F0(v97, &qword_2803729A8, &qword_26A43DE90);
      }
    }

    else
    {
      v87 = v150;
      sub_26A32F3AC();
    }

    v95 = *v87;
    v96 = *(v87 + 8);
    OUTLINED_FUNCTION_1_53();
    sub_26A32F354(v87, v102);
  }

  v103 = &qword_26A43DE90;
  v104 = v155;
  sub_26A32EF10();
  v105 = __swift_getEnumTagSinglePayload(v104, 1, v90);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v106, v107, v108);
  if (v105 == 1)
  {
    if (v91 != 1)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v109 = v151;
    sub_26A32EF10();
    v110 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_37(v110, v111, v90);
    if (v123)
    {
      OUTLINED_FUNCTION_39_16(&a16);
      v112 = OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_37(v112, v113, v90);
      if (!v123)
      {
        sub_26A0E48F0(v109, &qword_2803729A8, &qword_26A43DE90);
      }
    }

    else
    {
      v103 = v152;
      sub_26A32F3AC();
    }

    v114 = *v103;
    OUTLINED_FUNCTION_1_53();
    sub_26A32F354(v103, v115);
    if (v91 == 1 || !sub_26A257DA8(v95, v96, v114))
    {
      goto LABEL_39;
    }
  }

  v116 = v146;
  TextElement.fontColor.getter();
  v117 = v153;
  TextElement.fontColor.getter();
  v118 = *(v145 + 48);
  v119 = v148;
  sub_26A32EF10();
  sub_26A32EF10();
  v120 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v120, v121, v147);
  if (!v123)
  {
    v122 = v144;
    sub_26A32EF10();
    OUTLINED_FUNCTION_15(v119 + v118);
    if (!v123)
    {
      v124 = v143;
      sub_26A32F3AC();
      v125 = static _ProtoColor.== infix(_:_:)();
      sub_26A32F354(v124, type metadata accessor for Color);
      sub_26A0E48F0(v153, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v116, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A32F354(v122, type metadata accessor for Color);
      sub_26A0E48F0(v119, &qword_28036CBA0, &qword_26A4265B0);
      if ((v125 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    OUTLINED_FUNCTION_187_0(v153);
    OUTLINED_FUNCTION_187_0(v116);
    sub_26A32F354(v122, type metadata accessor for Color);
LABEL_38:
    sub_26A0E48F0(v119, &qword_28036D990, &qword_26A43DEE0);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_187_0(v117);
  OUTLINED_FUNCTION_187_0(v116);
  OUTLINED_FUNCTION_15(v119 + v118);
  if (!v123)
  {
    goto LABEL_38;
  }

  sub_26A0E48F0(v119, &qword_28036CBA0, &qword_26A4265B0);
LABEL_41:
  v126 = v140;
  TextElement.bold.getter();
  v128 = v127;
  v129 = v127;
  TextElement.bold.getter();
  if (v129 == 2)
  {
    OUTLINED_FUNCTION_47_14();
    if (!v123)
    {
      goto LABEL_39;
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_14();
    if (v123 || ((v130 ^ v128) & 1) != 0)
    {
      goto LABEL_39;
    }
  }

  TextElement.italic.getter();
  v132 = v131;
  v133 = v131;
  TextElement.italic.getter();
  if (v133 == 2)
  {
    OUTLINED_FUNCTION_47_14();
    if (!v123)
    {
      goto LABEL_39;
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_14();
    if (v123 || ((v134 ^ v132) & 1) != 0)
    {
      goto LABEL_39;
    }
  }

  if (*(*(v126 + 24) + 16))
  {
  }

  else
  {
    v135 = &unk_287B014A0;
  }

  v136 = sub_26A10BE7C(v135);
  if (*(*(v76 + 24) + 16))
  {
  }

  else
  {
    v137 = &unk_287B014A0;
  }

  v138 = sub_26A10BE7C(v137);
  sub_26A290AE0(v136, v138);

LABEL_39:
  OUTLINED_FUNCTION_75();
}

uint64_t TextElement.hash(into:)()
{
  type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_0_62();
  sub_26A32F15C(v0, v1, &protocol conformance descriptor for _ProtoTextElement);
  OUTLINED_FUNCTION_133();

  return sub_26A424B44();
}

uint64_t TextElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_0_62();
  sub_26A32F15C(v0, v1, &protocol conformance descriptor for _ProtoTextElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A32EAE8(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoTextElement(0);
  sub_26A32F15C(&qword_2803729C8, type metadata accessor for _ProtoTextElement, &protocol conformance descriptor for _ProtoTextElement);
  sub_26A424B44();
  return sub_26A425554();
}

BOOL sub_26A32EB70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TextElement(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 8))(a4, a5, v10);
  v13 = *(v12 + 3);
  if (v13[2])
  {
  }

  else
  {
    v13 = &unk_287B02380;
  }

  sub_26A32F354(v12, type metadata accessor for TextElement);
  v14 = sub_26A165034(a2, a3 & 1, v13);

  return v14;
}

BOOL sub_26A32ECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TextElement(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3, v6);
  v9 = *(v8 + 3);
  if (v9[2])
  {
  }

  else
  {
    v9 = &unk_287B023B0;
  }

  sub_26A32F354(v8, type metadata accessor for TextElement);
  v10 = v9[2] + 1;
  v11 = 4;
  do
  {
    if (!--v10)
    {
      break;
    }

    v12 = v9[v11];
    v11 += 2;
  }

  while (v12);
  v13 = v10 != 0;

  return v13;
}

uint64_t type metadata accessor for TextElement(uint64_t a1)
{
  result = qword_2803729F8;
  if (!qword_2803729F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A32EE30()
{
  OUTLINED_FUNCTION_131_0();
  v2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 16))(v0, v1);
  return v0;
}

float sub_26A32EE88(uint64_t a1)
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_26A32EF10()
{
  OUTLINED_FUNCTION_131_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_12();
  (*(v4 + 16))(v0, v1);
  return v0;
}

unint64_t sub_26A32EFB4()
{
  result = qword_2803729D0;
  if (!qword_2803729D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803729D0);
  }

  return result;
}

unint64_t sub_26A32F00C()
{
  result = qword_2803729D8;
  if (!qword_2803729D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803729D8);
  }

  return result;
}

uint64_t sub_26A32F15C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A32F1CC(uint64_t a1)
{
  result = type metadata accessor for _ProtoTextElement(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TextElement.Font(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TextElement.Font(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 34))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextElement.Font(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
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

  *(result + 34) = v3;
  return result;
}

uint64_t sub_26A32F2EC(uint64_t a1)
{
  if (*(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A32F308(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    v2 = 1;
    *result = (a2 - 1);
    *(result + 8) = 0;
  }

  else
  {
    v2 = 0;
  }

  *(result + 33) = v2;
  return result;
}

uint64_t sub_26A32F354(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A32F3AC()
{
  OUTLINED_FUNCTION_131_0();
  v2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_15_31()
{

  return sub_26A32F354(v0, type metadata accessor for _ProtoOptionalBool);
}

double OUTLINED_FUNCTION_22_21()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 94) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_28()
{

  return type metadata accessor for _ProtoTextElement(0);
}

uint64_t OUTLINED_FUNCTION_35_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_38_14()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t OUTLINED_FUNCTION_39_16@<X0>(uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);
  *v4 = 0;
  *(v4 + 8) = v2;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_40_17()
{

  return sub_26A32EF10();
}

uint64_t OUTLINED_FUNCTION_52_17()
{

  return type metadata accessor for _ProtoTextElement(0);
}

void OUTLINED_FUNCTION_53_13()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t _ProtoTextElement.hasFont.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59_7();
  v4 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v4 + 32));
  OUTLINED_FUNCTION_76_8();
  v5 = type metadata accessor for _ProtoTextElement.Font(0);
  OUTLINED_FUNCTION_9_20(v5);
  return OUTLINED_FUNCTION_202_1();
}

uint64_t _ProtoTextElement.font.getter()
{
  v0 = OUTLINED_FUNCTION_115();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59_7();
  v4 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v4 + 32));
  OUTLINED_FUNCTION_75_9();
  type metadata accessor for _ProtoTextElement.Font(0);
  OUTLINED_FUNCTION_38_0();
  if (v5)
  {
    type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    v10 = __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_74_9(v10);
    result = OUTLINED_FUNCTION_38_0();
    if (!v5)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A32FA04();
  }

  return result;
}

uint64_t _ProtoTextElement.hasWeight.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59_7();
  v4 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v4 + 36));
  OUTLINED_FUNCTION_76_8();
  v5 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  OUTLINED_FUNCTION_9_20(v5);
  return OUTLINED_FUNCTION_202_1();
}

uint64_t _ProtoTextElement.weight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_7();
  v6 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v6 + 36));
  OUTLINED_FUNCTION_75_9();
  type metadata accessor for _ProtoTextElement.FontWeight(0);
  v7 = OUTLINED_FUNCTION_38_0();
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    OUTLINED_FUNCTION_74_9(v7);
    result = OUTLINED_FUNCTION_38_0();
    if (!v8)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A32FA04();
  }

  return result;
}

uint64_t sub_26A32FA04()
{
  OUTLINED_FUNCTION_45_3();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t _ProtoTextElement.hasColor.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59_7();
  v4 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v4 + 40));
  OUTLINED_FUNCTION_76_8();
  v5 = type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_9_20(v5);
  return OUTLINED_FUNCTION_202_1();
}

uint64_t _ProtoTextElement.color.getter()
{
  v0 = OUTLINED_FUNCTION_115();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59_7();
  v4 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v4 + 40));
  OUTLINED_FUNCTION_75_9();
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_38_0();
  if (v5)
  {
    type metadata accessor for _ProtoColor.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    v10 = __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_74_9(v10);
    result = OUTLINED_FUNCTION_38_0();
    if (!v5)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A32FA04();
  }

  return result;
}

uint64_t _ProtoTextElement.hasIsItalic.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59_7();
  v4 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v4 + 44));
  OUTLINED_FUNCTION_76_8();
  v5 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_9_20(v5);
  return OUTLINED_FUNCTION_202_1();
}

uint64_t _ProtoTextElement.isItalic.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_7();
  v6 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v6 + 44));
  OUTLINED_FUNCTION_75_9();
  type metadata accessor for _ProtoOptionalBool(0);
  v7 = OUTLINED_FUNCTION_38_0();
  if (v8)
  {
    *a1 = 0;
    OUTLINED_FUNCTION_74_9(v7);
    result = OUTLINED_FUNCTION_38_0();
    if (!v8)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A32FA04();
  }

  return result;
}

uint64_t _ProtoTextElement.hasIsBold.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59_7();
  v4 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v4 + 48));
  OUTLINED_FUNCTION_76_8();
  v5 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_9_20(v5);
  return OUTLINED_FUNCTION_202_1();
}

uint64_t _ProtoTextElement.isBold.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_7();
  v6 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v6 + 48));
  OUTLINED_FUNCTION_75_9();
  type metadata accessor for _ProtoOptionalBool(0);
  v7 = OUTLINED_FUNCTION_38_0();
  if (v8)
  {
    *a1 = 0;
    OUTLINED_FUNCTION_74_9(v7);
    result = OUTLINED_FUNCTION_38_0();
    if (!v8)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A32FA04();
  }

  return result;
}

uint64_t _ProtoTextElement.font.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoTextElement(v0);
  sub_26A13440C();
  OUTLINED_FUNCTION_36_14();
  sub_26A32FA04();
  type metadata accessor for _ProtoTextElement.Font(0);
  v1 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoTextElement.weight.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoTextElement(v0);
  sub_26A13440C();
  sub_26A32FA04();
  type metadata accessor for _ProtoTextElement.FontWeight(0);
  v1 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoTextElement.color.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoTextElement(v0);
  sub_26A13440C();
  sub_26A32FA04();
  type metadata accessor for _ProtoColor(0);
  v1 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoTextElement.isItalic.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoTextElement(v0);
  sub_26A13440C();
  OUTLINED_FUNCTION_40_18();
  type metadata accessor for _ProtoOptionalBool(0);
  v1 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoTextElement.isBold.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoTextElement(v0);
  sub_26A13440C();
  OUTLINED_FUNCTION_40_18();
  type metadata accessor for _ProtoOptionalBool(0);
  v1 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoTextElement.Font.init()()
{
  type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  type metadata accessor for _ProtoTextElement.Font(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoTextElement.Font.named.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_26A13440C();
  *v1 = v2;
  *(v1 + 8) = v3;
  v4 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_246();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
}

uint64_t _ProtoTextElement.Font.system.setter()
{
  OUTLINED_FUNCTION_14_4();
  sub_26A13440C();
  OUTLINED_FUNCTION_39_17();
  OUTLINED_FUNCTION_175();
  sub_26A32FA04();
  v0 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_8_24();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v0);
}

uint64_t _ProtoTextElement.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_26A148B68(v2, v3, v4);
}

uint64_t _ProtoTextElement.value.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_26A0D6768(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t _ProtoTextElement.plain.getter()
{
  OUTLINED_FUNCTION_37_14();
  if (!v1 && (v0 & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_175();
    sub_26A28A784(v2, v3);
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A330328(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoTextElement.plain.setter(v1, v2);
}

void (*_ProtoTextElement.plain.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_37_14();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = OUTLINED_FUNCTION_125();
    sub_26A28A784(v7, v8);
  }

  *a1 = v5;
  a1[1] = v6;
  return sub_26A3303DC;
}

uint64_t _ProtoTextElement.attributed.getter()
{
  OUTLINED_FUNCTION_37_14();
  if (!v1 && (v0 & 1) != 0)
  {
    v2 = OUTLINED_FUNCTION_175();
    sub_26A28A784(v2, v3);
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A33042C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoTextElement.attributed.setter(v1, v2);
}

void (*_ProtoTextElement.attributed.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_37_14();
  if (v4 || (v3 & 1) == 0)
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v6 = *v1;
    v5 = v1[1];
    v7 = OUTLINED_FUNCTION_125();
    sub_26A28A784(v7, v8);
  }

  *a1 = v6;
  a1[1] = v5;
  return sub_26A3304E0;
}

void sub_26A3304E8()
{
  OUTLINED_FUNCTION_69_1();
  v1 = v0;
  v3 = v2[1];
  v4 = v2[2];
  v5 = *v2;
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  if (v9)
  {

    sub_26A0D6768(v6, v7, v8);
    *v4 = v5;
    *(v4 + 8) = v3;
    *(v4 + 16) = v1;
    OUTLINED_FUNCTION_67_1();
  }

  else
  {
    sub_26A0D6768(*v4, *(v4 + 8), *(v4 + 16));
    *v4 = v5;
    *(v4 + 8) = v3;
    *(v4 + 16) = v1;
    OUTLINED_FUNCTION_67_1();
  }
}

void _ProtoTextElement.font.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  *(v0 + 16) = type metadata accessor for _ProtoTextElement.Font(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_35_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_51_16(v12);
  OUTLINED_FUNCTION_41_10(*(v13 + 32));
  OUTLINED_FUNCTION_4_11();
  if (v14)
  {
    type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    v19 = __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_72_6(v19);
    OUTLINED_FUNCTION_4_11();
    if (!v14)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A32FA04();
  }

  OUTLINED_FUNCTION_67_1();
}

Swift::Void __swiftcall _ProtoTextElement.clearFont()()
{
  OUTLINED_FUNCTION_73_10();
  sub_26A13440C();
  type metadata accessor for _ProtoTextElement.Font(0);
  v0 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoTextElement.FontWeight.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for _ProtoTextElement.FontWeight(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void _ProtoTextElement.weight.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  *(v0 + 16) = type metadata accessor for _ProtoTextElement.FontWeight(v8);
  OUTLINED_FUNCTION_12();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_35_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_51_16(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 36));
  v15 = OUTLINED_FUNCTION_4_11();
  if (v16)
  {
    *v10 = 0;
    *(v10 + 8) = 1;
    OUTLINED_FUNCTION_72_6(v15);
    OUTLINED_FUNCTION_4_11();
    if (!v16)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A32FA04();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A3308EC()
{
  OUTLINED_FUNCTION_45_3();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A330944()
{
  v1 = OUTLINED_FUNCTION_11_3();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

Swift::Void __swiftcall _ProtoTextElement.clearWeight()()
{
  OUTLINED_FUNCTION_73_10();
  sub_26A13440C();
  type metadata accessor for _ProtoTextElement.FontWeight(0);
  v0 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void _ProtoTextElement.color.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  *(v0 + 16) = type metadata accessor for _ProtoColor(v8);
  OUTLINED_FUNCTION_12();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_35_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_51_16(v12);
  OUTLINED_FUNCTION_41_10(*(v13 + 40));
  OUTLINED_FUNCTION_4_11();
  if (v14)
  {
    type metadata accessor for _ProtoColor.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    v19 = __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_72_6(v19);
    OUTLINED_FUNCTION_4_11();
    if (!v14)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A32FA04();
  }

  OUTLINED_FUNCTION_67_1();
}

Swift::Void __swiftcall _ProtoTextElement.clearColor()()
{
  OUTLINED_FUNCTION_73_10();
  sub_26A13440C();
  type metadata accessor for _ProtoColor(0);
  v0 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void _ProtoTextElement.isItalic.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  *(v0 + 16) = type metadata accessor for _ProtoOptionalBool(v8);
  OUTLINED_FUNCTION_12();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_35_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_51_16(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 44));
  v15 = OUTLINED_FUNCTION_4_11();
  if (v16)
  {
    *v10 = 0;
    OUTLINED_FUNCTION_72_6(v15);
    OUTLINED_FUNCTION_4_11();
    if (!v16)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A32FA04();
  }

  OUTLINED_FUNCTION_67_1();
}

Swift::Void __swiftcall _ProtoTextElement.clearIsItalic()()
{
  OUTLINED_FUNCTION_73_10();
  sub_26A13440C();
  type metadata accessor for _ProtoOptionalBool(0);
  v0 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void _ProtoTextElement.isBold.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  *(v0 + 16) = type metadata accessor for _ProtoOptionalBool(v8);
  OUTLINED_FUNCTION_12();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_35_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_51_16(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 48));
  v15 = OUTLINED_FUNCTION_4_11();
  if (v16)
  {
    *v10 = 0;
    OUTLINED_FUNCTION_72_6(v15);
    OUTLINED_FUNCTION_4_11();
    if (!v16)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A32FA04();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A330E70(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    OUTLINED_FUNCTION_157();
    sub_26A3308EC();
    sub_26A13440C();
    sub_26A32FA04();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
    sub_26A330944();
  }

  else
  {
    sub_26A13440C();
    sub_26A32FA04();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

Swift::Void __swiftcall _ProtoTextElement.clearIsBold()()
{
  OUTLINED_FUNCTION_73_10();
  sub_26A13440C();
  type metadata accessor for _ProtoOptionalBool(0);
  v0 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoTextElement.idioms.setter()
{
  OUTLINED_FUNCTION_14_4();

  *(v1 + 24) = v0;
  return result;
}

uint64_t _ProtoTextElement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoTextElement(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t static _ProtoTextElement.OneOf_Value.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = a2[1];
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v26 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_26A425354();
        v28 = OUTLINED_FUNCTION_125();
        sub_26A28A784(v28, v29);
        v30 = OUTLINED_FUNCTION_246();
        sub_26A28A784(v30, v31);
        v32 = OUTLINED_FUNCTION_246();
        sub_26A0D6740(v32, v33);
        v14 = OUTLINED_FUNCTION_125();
        goto LABEL_16;
      }

      sub_26A28A784(v26, v2);
      v42 = OUTLINED_FUNCTION_246();
      sub_26A28A784(v42, v43);
      v44 = OUTLINED_FUNCTION_246();
      sub_26A0D6740(v44, v45);
      v46 = OUTLINED_FUNCTION_246();
      sub_26A0D6740(v46, v47);
      return 1;
    }

LABEL_9:
    v16 = OUTLINED_FUNCTION_125();
    sub_26A28A784(v16, v17);
    v18 = OUTLINED_FUNCTION_246();
    sub_26A28A784(v18, v19);
    v20 = OUTLINED_FUNCTION_246();
    sub_26A0D6740(v20, v21);
    v22 = OUTLINED_FUNCTION_125();
    sub_26A0D6740(v22, v23);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v24 = 1;
    v34 = OUTLINED_FUNCTION_8_24();
    sub_26A28A784(v34, v35);
    v36 = OUTLINED_FUNCTION_8_24();
    sub_26A28A784(v36, v37);
    v38 = OUTLINED_FUNCTION_8_24();
    sub_26A0D6740(v38, v39);
    v40 = OUTLINED_FUNCTION_8_24();
    sub_26A0D6740(v40, v41);
    return v24;
  }

  OUTLINED_FUNCTION_246();
  v7 = sub_26A425354();
  v8 = OUTLINED_FUNCTION_125();
  sub_26A28A784(v8, v9);
  v10 = OUTLINED_FUNCTION_8_24();
  sub_26A28A784(v10, v11);
  v12 = OUTLINED_FUNCTION_8_24();
  sub_26A0D6740(v12, v13);
  v14 = OUTLINED_FUNCTION_125();
LABEL_16:
  sub_26A0D6740(v14, v15);
  return v7 & 1;
}

uint64_t sub_26A331288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoTextElement.Font.named.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_25_12();
  v7 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_37(v1, 1, v7);
  if (v8)
  {
    result = sub_26A13440C();
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      v10 = *v1;
      v11 = *(v1 + 8);
      goto LABEL_8;
    }

    result = sub_26A330944();
  }

  v10 = 0;
  v11 = 1;
LABEL_8:
  *a1 = v10;
  *(a1 + 8) = v11;
  return result;
}

uint64_t sub_26A331418@<X0>(uint64_t a1@<X8>)
{
  result = _ProtoTextElement.Font.named.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_26A33145C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return _ProtoTextElement.Font.named.setter(&v3);
}

uint64_t _ProtoTextElement.Font.named.modify(void *a1)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[3] = v7;
  OUTLINED_FUNCTION_125();
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  v4[4] = v8;
  OUTLINED_FUNCTION_37(v7, 1, v8);
  if (v9)
  {
    sub_26A13440C();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      v11 = *v7;
      v12 = v7[8];
      goto LABEL_8;
    }

    sub_26A330944();
  }

  v11 = 0;
  v12 = 1;
LABEL_8:
  *v4 = v11;
  *(v4 + 8) = v12;
  return OUTLINED_FUNCTION_66_2();
}

void sub_26A3315D8(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = (*a1)[2];
  v5 = **a1;
  v6 = *(*a1 + 8);
  sub_26A13440C();
  *v4 = v5;
  *(v4 + 8) = v6;
  OUTLINED_FUNCTION_157();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  free(v3);

  free(v1);
}

uint64_t _ProtoTextElement.Font.system.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_25_12();
  v7 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_37(v1, 1, v7);
  if (v8)
  {
    sub_26A13440C();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A32FA04();
    }

    sub_26A330944();
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return OUTLINED_FUNCTION_70_7();
}

uint64_t sub_26A331780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_12_2();
  sub_26A3308EC();
  return a7(v7);
}

uint64_t _ProtoTextElement.Font.SystemFont.init()@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  return OUTLINED_FUNCTION_70_7();
}

void _ProtoTextElement.Font.system.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  type metadata accessor for _ProtoTextElement.Font.SystemFont(v7);
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 64);
  v0[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v0[3] = v10;
  OUTLINED_FUNCTION_103();
  sub_26A1E05A8();
  v0[4] = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_4_11();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    *v10 = 0;
    v10[1] = 0;
    *(v10 + 16) = 1;
    v10[3] = 0;
    *(v10 + 32) = 1;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A330944();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A32FA04();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

void sub_26A3319C0()
{
  OUTLINED_FUNCTION_69_1();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 8);
  v4 = *(*v0 + 16);
  if (v5)
  {
    sub_26A3308EC();
    sub_26A13440C();
    sub_26A32FA04();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
    sub_26A330944();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_39_17();
    sub_26A32FA04();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_67_1();

  free(v12);
}

uint64_t _ProtoTextElement.Font.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoTextElement.Font(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t static _ProtoTextElement.Font.OneOf_Value.== infix(_:_:)()
{
  v0 = type metadata accessor for _ProtoTextElement.Font.SystemFont(0);
  v1 = OUTLINED_FUNCTION_41(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v4 = (v3 - v2);
  type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372AF8, &qword_26A43E308);
  OUTLINED_FUNCTION_41(v12);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v16 = (&v19 + *(v15 + 56) - v14);
  sub_26A3308EC();
  sub_26A3308EC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26A3308EC();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v17 = sub_26A257DA8(*v11, v11[8], *v16);
      goto LABEL_6;
    }

LABEL_8:
    sub_26A13440C();
    v17 = 0;
    return v17 & 1;
  }

  OUTLINED_FUNCTION_133();
  sub_26A3308EC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26A330944();
    goto LABEL_8;
  }

  sub_26A32FA04();
  v17 = static _ProtoTextElement.Font.SystemFont.== infix(_:_:)(v8, v4);
  sub_26A330944();
  OUTLINED_FUNCTION_115();
  sub_26A330944();
LABEL_6:
  sub_26A330944();
  return v17 & 1;
}

uint64_t static _ProtoTextElement.Font.SystemFont.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_3();
  v5 = *(v4 + 8);
  v7 = *(v6 + 8);
  if (*(v6 + 16) == 1)
  {
    switch(v7)
    {
      case 1:
        if (v5 != 1)
        {
          return 0;
        }

        goto LABEL_7;
      case 2:
        if (v5 != 2)
        {
          return 0;
        }

        goto LABEL_7;
      case 3:
        if (v5 != 3)
        {
          return 0;
        }

        goto LABEL_7;
      case 4:
        if (v5 != 4)
        {
          return 0;
        }

        goto LABEL_7;
      case 5:
        if (v5 != 5)
        {
          return 0;
        }

        goto LABEL_7;
      case 6:
        if (v5 != 6)
        {
          return 0;
        }

        goto LABEL_7;
      case 7:
        if (v5 != 7)
        {
          return 0;
        }

        goto LABEL_7;
      case 8:
        if (v5 != 8)
        {
          return 0;
        }

        goto LABEL_7;
      default:
        if (!v5)
        {
          goto LABEL_7;
        }

        return 0;
    }
  }

  if (v5 != v7)
  {
    return 0;
  }

LABEL_7:
  v8 = *(v3 + 24);
  v9 = *(v2 + 24);
  if (*(v2 + 32) != 1)
  {
    if (v8 != v9)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      if (v8 != 1)
      {
        return 0;
      }

LABEL_17:
      type metadata accessor for _ProtoTextElement.Font.SystemFont(0);
      sub_26A424794();
      OUTLINED_FUNCTION_0_63();
      sub_26A335AC4();
      return OUTLINED_FUNCTION_14_7() & 1;
    }

    if (v8 == 2)
    {
      goto LABEL_17;
    }
  }

  else if (!v8)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_26A331FC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A338238();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26A332040(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A336BF8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26A3320C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A336C4C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t _ProtoTextElement.Font.SystemFont.weight.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t _ProtoTextElement.Font.SystemFont.design.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_26A3321E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_26A332274()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t _ProtoTextElement.Font.SystemFont.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoTextElement.Font.SystemFont(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoTextElement.FontWeight.value.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_26A33237C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_26A332410()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t _ProtoTextElement.FontWeight.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoTextElement.FontWeight(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoTextElement.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  type metadata accessor for _ProtoTextElement(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoTextElement.Font(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for _ProtoTextElement.FontWeight(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
}

uint64_t static _ProtoTextElement.Font.NamedFont.allCases.modify()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  swift_beginAccess();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_26A332640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static _ProtoTextElement.Font.NamedFont.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t static _ProtoTextElement.Font.Weight.allCases.modify()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  swift_beginAccess();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_26A3326F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static _ProtoTextElement.Font.Weight.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26A332764()
{
  OUTLINED_FUNCTION_45_3();
  swift_beginAccess();
  *v0 = v1;
}

uint64_t static _ProtoTextElement.Font.Design.allCases.modify()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  swift_beginAccess();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_26A3327F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static _ProtoTextElement.Font.Design.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26A33283C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372A20);
  __swift_project_value_buffer(v0, qword_280372A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26A42B0D0;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "plain";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "attributed";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "font";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "weight";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "color";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "is_italic";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "is_bold";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "idioms";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "line_limit";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t _ProtoTextElement.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_6();
        v7 = 0;
        goto LABEL_11;
      case 2:
        v3 = OUTLINED_FUNCTION_5_6();
        v7 = 1;
LABEL_11:
        sub_26A2E7F54(v3, v4, v5, v6, v7);
        break;
      case 3:
        v12 = OUTLINED_FUNCTION_5_6();
        sub_26A332CC8(v12, v13, v14, v15);
        break;
      case 4:
        v16 = OUTLINED_FUNCTION_5_6();
        sub_26A332D7C(v16, v17, v18, v19);
        break;
      case 5:
        v8 = OUTLINED_FUNCTION_5_6();
        sub_26A332E30(v8, v9, v10, v11);
        break;
      case 6:
        v24 = OUTLINED_FUNCTION_5_6();
        sub_26A332EE4(v24, v25, v26, v27);
        break;
      case 7:
        v28 = OUTLINED_FUNCTION_5_6();
        sub_26A332F98(v28, v29, v30, v31);
        break;
      case 8:
        v20 = OUTLINED_FUNCTION_5_6();
        sub_26A33304C(v20, v21, v22, v23);
        break;
      case 9:
        OUTLINED_FUNCTION_12_7();
        sub_26A4248E4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A332CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTextElement(0);
  type metadata accessor for _ProtoTextElement.Font(0);
  sub_26A335AC4();
  return sub_26A424944();
}

uint64_t sub_26A332D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTextElement(0);
  type metadata accessor for _ProtoTextElement.FontWeight(0);
  sub_26A335AC4();
  return sub_26A424944();
}

uint64_t sub_26A332E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTextElement(0);
  type metadata accessor for _ProtoColor(0);
  sub_26A335AC4();
  return sub_26A424944();
}

uint64_t sub_26A332EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTextElement(0);
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A335AC4();
  return sub_26A424944();
}

uint64_t sub_26A332F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTextElement(0);
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A335AC4();
  return sub_26A424944();
}

uint64_t _ProtoTextElement.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_37_14();
  if (v2 || ((v3 = OUTLINED_FUNCTION_3_5(), (v7 & 1) == 0) ? (result = sub_26A2E80B0(v3, v4, v5, v6)) : (result = sub_26A2E80FC(v3, v4, v5, v6)), !v0))
  {
    v9 = OUTLINED_FUNCTION_3_5();
    result = sub_26A3331CC(v9, v10, v11, v12);
    if (!v0)
    {
      v13 = OUTLINED_FUNCTION_3_5();
      sub_26A3333AC(v13, v14, v15, v16);
      v17 = OUTLINED_FUNCTION_3_5();
      sub_26A33358C(v17, v18, v19, v20);
      v21 = OUTLINED_FUNCTION_3_5();
      sub_26A33376C(v21, v22, v23, v24);
      v25 = OUTLINED_FUNCTION_3_5();
      sub_26A33394C(v25, v26, v27, v28);
      if (*(*(v1 + 24) + 16))
      {
        sub_26A11EF50();
        OUTLINED_FUNCTION_48_8();
        sub_26A4249D4();
      }

      if (*(v1 + 32))
      {
        OUTLINED_FUNCTION_87();
        sub_26A424A34();
      }

      type metadata accessor for _ProtoTextElement(0);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t sub_26A3331CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B0, &qword_26A43E300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextElement.Font(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoTextElement(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A32FA04();
  sub_26A335AC4();
  sub_26A424A84();
  return sub_26A330944();
}

uint64_t sub_26A3333AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoTextElement(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A32FA04();
  sub_26A335AC4();
  sub_26A424A84();
  return sub_26A330944();
}

uint64_t sub_26A33358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoColor(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoTextElement(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A32FA04();
  sub_26A335AC4();
  sub_26A424A84();
  return sub_26A330944();
}

uint64_t sub_26A33376C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoOptionalBool(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoTextElement(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A32FA04();
  sub_26A335AC4();
  sub_26A424A84();
  return sub_26A330944();
}

uint64_t sub_26A33394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoOptionalBool(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoTextElement(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A32FA04();
  sub_26A335AC4();
  sub_26A424A84();
  return sub_26A330944();
}

uint64_t static _ProtoTextElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_110();
  v128 = type metadata accessor for _ProtoOptionalBool(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  v123 = &v119 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  v124 = &v119 - v12;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FBC8, &unk_26A42EA70);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  v126 = &v119 - v15;
  v132 = type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v125 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v19);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_42();
  v129 = v21;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370908, &qword_26A432968);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_42();
  v133 = v23;
  v137 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v130 = (v26 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
  OUTLINED_FUNCTION_41(v27);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_42();
  v134 = v29;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372B00, &qword_26A43E310);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_42();
  v138 = v31;
  v140 = type metadata accessor for _ProtoTextElement.Font(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18();
  v135 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B0, &qword_26A43E300);
  OUTLINED_FUNCTION_41(v35);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_42();
  v139 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372B08, &qword_26A43E318);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_141_0();
  v40 = *(v2 + 8);
  v41 = *(v2 + 16);
  v43 = *a2;
  v42 = *(a2 + 8);
  v44 = *(a2 + 16);
  if (v41 == 255)
  {
    v61 = OUTLINED_FUNCTION_41_15();
    sub_26A148B68(v61, v62, 255);
    if (v44 == 255)
    {
      v80 = OUTLINED_FUNCTION_106();
      sub_26A148B68(v80, v81, 255);
      v82 = OUTLINED_FUNCTION_41_15();
      sub_26A0D6768(v82, v83, 255);
      goto LABEL_10;
    }

    v63 = OUTLINED_FUNCTION_106();
    sub_26A148B68(v63, v64, v44);
LABEL_8:
    v75 = OUTLINED_FUNCTION_19_21();
    sub_26A0D6768(v75, v76, v77);
    v78 = OUTLINED_FUNCTION_106();
    sub_26A0D6768(v78, v79, v44);
    goto LABEL_34;
  }

  v143[0] = *v2;
  v143[1] = v40;
  v144 = v41;
  if (v44 == 255)
  {
    v65 = OUTLINED_FUNCTION_19_21();
    sub_26A148B68(v65, v66, v67);
    v68 = OUTLINED_FUNCTION_106();
    sub_26A148B68(v68, v69, 255);
    v70 = OUTLINED_FUNCTION_19_21();
    sub_26A148B68(v70, v71, v72);
    v73 = OUTLINED_FUNCTION_41_15();
    sub_26A0D6740(v73, v74);
    goto LABEL_8;
  }

  v141[0] = v43;
  v141[1] = v42;
  v120 = v2;
  v142 = v44 & 1;
  v45 = OUTLINED_FUNCTION_19_21();
  sub_26A148B68(v45, v46, v47);
  v48 = OUTLINED_FUNCTION_106();
  sub_26A148B68(v48, v49, v44);
  v50 = OUTLINED_FUNCTION_19_21();
  sub_26A148B68(v50, v51, v52);
  v53 = static _ProtoTextElement.OneOf_Value.== infix(_:_:)(v143, v141);
  v54 = OUTLINED_FUNCTION_106();
  v2 = v120;
  sub_26A0D6740(v54, v55);
  v56 = OUTLINED_FUNCTION_41_15();
  sub_26A0D6740(v56, v57);
  v58 = OUTLINED_FUNCTION_19_21();
  sub_26A0D6768(v58, v59, v60);
  if ((v53 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_10:
  type metadata accessor for _ProtoTextElement(0);
  v84 = *(v38 + 48);
  sub_26A1E05A8();
  sub_26A1E05A8();
  v85 = OUTLINED_FUNCTION_72();
  v86 = v140;
  OUTLINED_FUNCTION_37(v85, v87, v140);
  if (v89)
  {
    OUTLINED_FUNCTION_37(v3 + v84, 1, v86);
    if (!v89)
    {
      goto LABEL_33;
    }

    v88 = v2;
    sub_26A13440C();
  }

  else
  {
    sub_26A1E05A8();
    OUTLINED_FUNCTION_37(v3 + v84, 1, v86);
    if (v89)
    {
      sub_26A330944();
      goto LABEL_33;
    }

    v88 = v2;
    OUTLINED_FUNCTION_36_14();
    sub_26A32FA04();
    v90 = static _ProtoTextElement.Font.== infix(_:_:)();
    sub_26A330944();
    sub_26A330944();
    sub_26A13440C();
    if ((v90 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v91 = *(v136 + 48);
  v92 = v138;
  OUTLINED_FUNCTION_56_14();
  sub_26A1E05A8();
  v93 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_13_29(v93, v94);
  if (!v89)
  {
    v97 = v134;
    sub_26A1E05A8();
    OUTLINED_FUNCTION_13_29(v92 + v91, 1);
    if (v98)
    {
      sub_26A330944();
    }

    else
    {
      v101 = v130;
      sub_26A32FA04();
      if (sub_26A257DA8(*v97, *(v97 + 8), *v101))
      {
        sub_26A424794();
        OUTLINED_FUNCTION_0_63();
        sub_26A335AC4();
        v102 = sub_26A424B64();
        sub_26A330944();
        OUTLINED_FUNCTION_157();
        sub_26A330944();
        sub_26A13440C();
        if ((v102 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_25;
      }

      sub_26A330944();
      OUTLINED_FUNCTION_44();
      sub_26A330944();
    }

LABEL_33:
    sub_26A13440C();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_13_29(v92 + v91, 1);
  if (!v89)
  {
    goto LABEL_33;
  }

  sub_26A13440C();
LABEL_25:
  OUTLINED_FUNCTION_56_14();
  OUTLINED_FUNCTION_47_15();
  v95 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_13_29(v95, v96);
  if (v89)
  {
    OUTLINED_FUNCTION_11_31();
    if (!v89)
    {
      goto LABEL_33;
    }

    sub_26A13440C();
  }

  else
  {
    sub_26A1E05A8();
    OUTLINED_FUNCTION_11_31();
    if (v103)
    {
      sub_26A330944();
      goto LABEL_33;
    }

    sub_26A32FA04();
    v104 = static _ProtoColor.== infix(_:_:)();
    sub_26A330944();
    sub_26A330944();
    sub_26A13440C();
    if ((v104 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  OUTLINED_FUNCTION_56_14();
  OUTLINED_FUNCTION_47_15();
  v105 = OUTLINED_FUNCTION_72();
  v106 = v128;
  OUTLINED_FUNCTION_13_29(v105, v107);
  if (v89)
  {
    OUTLINED_FUNCTION_11_31();
    if (!v89)
    {
      goto LABEL_33;
    }

    sub_26A13440C();
  }

  else
  {
    v111 = v124;
    sub_26A1E05A8();
    OUTLINED_FUNCTION_11_31();
    if (v112)
    {
      goto LABEL_64;
    }

    v113 = v123;
    sub_26A32FA04();
    if (*v111 != *v113)
    {
LABEL_67:
      sub_26A330944();
      sub_26A330944();
      goto LABEL_33;
    }

    v114 = *(v106 + 20);
    sub_26A424794();
    OUTLINED_FUNCTION_0_63();
    sub_26A335AC4();
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_35_21();
    sub_26A330944();
    sub_26A330944();
    sub_26A13440C();
    if ((v114 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  OUTLINED_FUNCTION_56_14();
  OUTLINED_FUNCTION_47_15();
  v108 = OUTLINED_FUNCTION_72();
  v109 = v128;
  OUTLINED_FUNCTION_13_29(v108, v110);
  if (!v89)
  {
    v115 = v122;
    sub_26A1E05A8();
    OUTLINED_FUNCTION_11_31();
    if (!v116)
    {
      v117 = v121;
      sub_26A32FA04();
      if (*v115 != *v117)
      {
        goto LABEL_67;
      }

      v118 = *(v109 + 20);
      sub_26A424794();
      OUTLINED_FUNCTION_0_63();
      sub_26A335AC4();
      OUTLINED_FUNCTION_76_3();
      OUTLINED_FUNCTION_35_21();
      sub_26A330944();
      sub_26A330944();
      sub_26A13440C();
      if ((v118 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_55;
    }

LABEL_64:
    sub_26A330944();
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_11_31();
  if (!v89)
  {
    goto LABEL_33;
  }

  sub_26A13440C();
LABEL_55:
  if ((sub_26A0DB6A0(*(v88 + 24), *(a2 + 24)) & 1) != 0 && *(v88 + 32) == *(a2 + 32))
  {
    sub_26A424794();
    OUTLINED_FUNCTION_0_63();
    sub_26A335AC4();
    v99 = sub_26A424B64();
    return v99 & 1;
  }

LABEL_34:
  v99 = 0;
  return v99 & 1;
}

uint64_t sub_26A3348A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A335AC4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A334924(uint64_t a1)
{
  v2 = sub_26A335AC4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A334994(uint64_t a1, uint64_t a2)
{
  sub_26A335AC4();

  return sub_26A4249B4();
}

uint64_t sub_26A334A54()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372A48);
  __swift_project_value_buffer(v0, qword_280372A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "named";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "system";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTextElement.Font.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_175();
      OUTLINED_FUNCTION_87();
      sub_26A334E64(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_6();
      sub_26A334CA8(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_26A334CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v14 = 0;
  v15 = 256;
  sub_26A338238();
  result = sub_26A424884();
  if (!v4 && (v15 & 0x100) == 0)
  {
    v16 = v14;
    v13 = v15;
    sub_26A1E05A8();
    v10 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
    sub_26A13440C();
    if (EnumTagSinglePayload != 1)
    {
      sub_26A424844();
    }

    sub_26A13440C();
    *a2 = v16;
    *(a2 + 8) = v13 & 1;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_26A334E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoTextElement.Font.SystemFont(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372C88, &qword_26A43EE98);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A32FA04();
    sub_26A32FA04();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A32FA04();
      sub_26A32FA04();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A330944();
    }
  }

  sub_26A335AC4();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A32FA04();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A32FA04();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t _ProtoTextElement.Font.traverse<A>(visitor:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - v3;
  sub_26A1E05A8();
  v5 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    goto LABEL_2;
  }

  OUTLINED_FUNCTION_22_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_87();
    sub_26A335620(v7, v8, v9, v10);
    result = sub_26A330944();
    if (!v0)
    {
LABEL_2:
      type metadata accessor for _ProtoTextElement.Font(0);
      OUTLINED_FUNCTION_12_7();
      return sub_26A424774();
    }
  }

  else
  {
    OUTLINED_FUNCTION_87();
    result = sub_26A3354BC(v11, v12, v13, v14);
    if (!v0)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_26A3354BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_26A1E05A8();
  v7 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v8 = v6[8];
      v10 = *v6;
      v11 = v8;
      sub_26A338238();
      return sub_26A4249F4();
    }

    result = sub_26A330944();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A335620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoTextElement.Font.SystemFont(0);
  MEMORY[0x28223BE20](v7);
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A32FA04();
      sub_26A335AC4();
      sub_26A424A84();
      return sub_26A330944();
    }

    result = sub_26A330944();
  }

  __break(1u);
  return result;
}

uint64_t static _ProtoTextElement.Font.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  v1 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_141_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372B10, &qword_26A43E320);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_59_7();
  v10 = *(v9 + 56);
  sub_26A1E05A8();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_37(v0, 1, v1);
  if (v11)
  {
    OUTLINED_FUNCTION_37(v0 + v10, 1, v1);
    if (v11)
    {
      sub_26A13440C();
LABEL_12:
      type metadata accessor for _ProtoTextElement.Font(0);
      sub_26A424794();
      OUTLINED_FUNCTION_0_63();
      sub_26A335AC4();
      v12 = OUTLINED_FUNCTION_14_7();
      return v12 & 1;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_12_2();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_37(v0 + v10, 1, v1);
  if (v11)
  {
    sub_26A330944();
LABEL_9:
    sub_26A13440C();
    goto LABEL_10;
  }

  sub_26A32FA04();
  v13 = static _ProtoTextElement.Font.OneOf_Value.== infix(_:_:)();
  sub_26A330944();
  sub_26A330944();
  sub_26A13440C();
  if (v13)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = 0;
  return v12 & 1;
}

unint64_t sub_26A335AC4()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A335B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A335AC4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A335C10(uint64_t a1)
{
  v2 = sub_26A335AC4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A335C80(uint64_t a1, uint64_t a2)
{
  sub_26A335AC4();

  return sub_26A4249B4();
}

uint64_t sub_26A335D00()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372A60);
  __swift_project_value_buffer(v0, qword_280372A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26A42B070;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 0;
  *v4 = "LARGE_TITLE";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 1;
  *v8 = "TITLE";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "TITLE2";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "TITLE3";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "HEADLINE";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "SUBHEADLINE";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "BODY";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CALLOUT";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "FOOTNOTE";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CAPTION";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CAPTION2";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A336104()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372A78);
  __swift_project_value_buffer(v0, qword_280372A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A42B0D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REGULAR";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BLACK";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BOLD";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "HEAVY";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "LIGHT";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "MEDIUM";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SEMIBOLD";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "THIN";
  *(v22 + 1) = 4;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "ULTRALIGHT";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A336494()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372A90);
  __swift_project_value_buffer(v0, qword_280372A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SERIF";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ROUNDED";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MONOSPACED";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A3366C0()
{
  if (qword_28036C5C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280372A38;
  v2 = qword_280372A40;
  swift_bridgeObjectRetain_n();
  MEMORY[0x26D65BA70](0x466D65747379532ELL, 0xEB00000000746E6FLL);

  qword_280372AA8 = v1;
  unk_280372AB0 = v2;
  return result;
}

uint64_t sub_26A33678C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372AB8);
  __swift_project_value_buffer(v0, qword_280372AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "size";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "weight";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "design";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTextElement.Font.SystemFont.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v5 = OUTLINED_FUNCTION_5_6();
        sub_26A336A9C(v5, v6);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A336A34(v3, v4);
        break;
      case 1:
        OUTLINED_FUNCTION_12_7();
        sub_26A4248D4();
        break;
    }
  }

  return result;
}

uint64_t _ProtoTextElement.Font.SystemFont.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (*v1 == 0.0 || (v2 = v0, OUTLINED_FUNCTION_12_7(), result = sub_26A424A24(), !v0))
  {
    if (!*(v3 + 8) || (sub_26A336BF8(), OUTLINED_FUNCTION_48_8(), result = sub_26A4249F4(), !v2))
    {
      if (!*(v3 + 24) || (sub_26A336C4C(), OUTLINED_FUNCTION_48_8(), result = sub_26A4249F4(), !v2))
      {
        type metadata accessor for _ProtoTextElement.Font.SystemFont(0);
        return OUTLINED_FUNCTION_19_6();
      }
    }
  }

  return result;
}

unint64_t sub_26A336BF8()
{
  result = qword_280372B20;
  if (!qword_280372B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B20);
  }

  return result;
}

unint64_t sub_26A336C4C()
{
  result = qword_280372B28;
  if (!qword_280372B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B28);
  }

  return result;
}

uint64_t sub_26A336D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A335AC4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A336DA8(uint64_t a1)
{
  v2 = sub_26A335AC4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A336E18(uint64_t a1, uint64_t a2)
{
  sub_26A335AC4();

  return sub_26A4249B4();
}

uint64_t sub_26A336EC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D65BA70](a2, a3);
  *a4 = 0xD000000000000015;
  *a5 = 0x800000026A44A4C0;
  return result;
}

uint64_t sub_26A336F50()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372AE0);
  __swift_project_value_buffer(v0, qword_280372AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26A426410;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "value";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_26A424AA4();
}

uint64_t _ProtoTextElement.FontWeight.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_6();
      sub_26A33712C(v3, v4);
    }
  }

  return result;
}

uint64_t _ProtoTextElement.FontWeight.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (!*v0 || (sub_26A336BF8(), OUTLINED_FUNCTION_48_8(), result = sub_26A4249F4(), !v1))
  {
    type metadata accessor for _ProtoTextElement.FontWeight(0);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t static _ProtoTextElement.FontWeight.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v1 == 1)
        {
          goto LABEL_6;
        }

        return 0;
      case 2:
        if (v1 == 2)
        {
          goto LABEL_6;
        }

        return 0;
      case 3:
        if (v1 == 3)
        {
          goto LABEL_6;
        }

        return 0;
      case 4:
        if (v1 == 4)
        {
          goto LABEL_6;
        }

        return 0;
      case 5:
        if (v1 == 5)
        {
          goto LABEL_6;
        }

        return 0;
      case 6:
        if (v1 == 6)
        {
          goto LABEL_6;
        }

        return 0;
      case 7:
        if (v1 == 7)
        {
          goto LABEL_6;
        }

        return 0;
      case 8:
        if (v1 == 8)
        {
          goto LABEL_6;
        }

        return 0;
      default:
        if (v1)
        {
          return 0;
        }

        goto LABEL_6;
    }
  }

  if (v1 != v3)
  {
    return 0;
  }

LABEL_6:
  type metadata accessor for _ProtoTextElement.FontWeight(0);
  sub_26A424794();
  OUTLINED_FUNCTION_0_63();
  sub_26A335AC4();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t sub_26A33737C(uint64_t (*a1)(void))
{
  sub_26A425504();
  a1(0);
  OUTLINED_FUNCTION_125();
  sub_26A335AC4();
  sub_26A424B44();
  return sub_26A425554();
}

unint64_t sub_26A337408()
{
  result = qword_280372B40;
  if (!qword_280372B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B40);
  }

  return result;
}

unint64_t sub_26A337460()
{
  result = qword_280372B48;
  if (!qword_280372B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B48);
  }

  return result;
}

unint64_t sub_26A3374BC()
{
  result = qword_280372B50;
  if (!qword_280372B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B50);
  }

  return result;
}

unint64_t sub_26A337514()
{
  result = qword_280372B58;
  if (!qword_280372B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B58);
  }

  return result;
}

unint64_t sub_26A337570()
{
  result = qword_280372B60;
  if (!qword_280372B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B60);
  }

  return result;
}

unint64_t sub_26A3375C8()
{
  result = qword_280372B68;
  if (!qword_280372B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B68);
  }

  return result;
}

uint64_t sub_26A337A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A335AC4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A337BA4(uint64_t a1)
{
  v2 = sub_26A335AC4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A337C5C(uint64_t a1, uint64_t a2)
{
  sub_26A335AC4();

  return sub_26A4249B4();
}

void sub_26A337D04(uint64_t a1)
{
  sub_26A337EC0(319, &qword_280372C00, &type metadata for _ProtoTextElement.OneOf_Value, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A337EC0(319, &qword_28036D218, &type metadata for _ProtoIdiom, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_26A424794();
      if (v3 <= 0x3F)
      {
        sub_26A337F10(319, &qword_280372C08, type metadata accessor for _ProtoTextElement.Font);
        if (v4 <= 0x3F)
        {
          sub_26A337F10(319, &qword_280372C10, type metadata accessor for _ProtoTextElement.FontWeight);
          if (v5 <= 0x3F)
          {
            sub_26A337F10(319, qword_28157B5B8, type metadata accessor for _ProtoColor);
            if (v6 <= 0x3F)
            {
              sub_26A337F10(319, qword_2815799A8, type metadata accessor for _ProtoOptionalBool);
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

void sub_26A337EC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26A337F10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A337F9C(uint64_t a1)
{
  sub_26A337F10(319, &qword_280372C28, type metadata accessor for _ProtoTextElement.Font.OneOf_Value);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26A33803C(uint64_t a1)
{
  result = type metadata accessor for _ProtoTextElement.Font.SystemFont(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A338100(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3381BC(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26A338238()
{
  result = qword_280372C80;
  if (!qword_280372C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372C80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_40_18()
{

  return sub_26A32FA04();
}

uint64_t OUTLINED_FUNCTION_47_15()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_51_16(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for _ProtoTextElement(0);
}

uint64_t OUTLINED_FUNCTION_56_14()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_70_7()
{
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  type metadata accessor for _ProtoTextElement.Font.SystemFont(0);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_72_6(uint64_t a1)
{

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_73_10()
{

  return type metadata accessor for _ProtoTextElement(0);
}

uint64_t OUTLINED_FUNCTION_74_9(uint64_t a1)
{

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_75_9()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_76_8()
{

  return sub_26A1E05A8();
}

uint64_t sub_26A3384C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAtKeyPath();
  v6 = *(v17 + 16);
  if (v6 == 1)
  {
    v8 = 0xE100000000000000;
    v9 = 121;
  }

  else
  {
    if (!v6)
    {
    }

    v8 = 0xE300000000000000;
    v9 = 7562601;
  }

  v15 = sub_26A4251B4();
  v16 = v10;
  MEMORY[0x26D65BA70](0x72746E6520, 0xE500000000000000);
  MEMORY[0x26D65BA70](v9, v8);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDD8, &unk_26A426960) + 28);
  sub_26A10C56C();
  v12 = *(*(v3 + v11) + 16);
  sub_26A10C9A0(v12);

  v13 = *(v3 + v11);
  *(v13 + 16) = v12 + 1;
  v14 = (v13 + 32 * v12);
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = v15;
  v14[7] = v16;
  *(v3 + v11) = v13;
  return result;
}

uint64_t TextInput.labelText.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_22();
  sub_26A10FD9C();
  v13 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(v11);
    if (v15)
    {
      *v6 = MEMORY[0x277D84F90];
      *(v6 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v16 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
      OUTLINED_FUNCTION_23(v11);
      if (!v15)
      {
        sub_26A0E48F0(v11, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A33ABFC();
    }

    sub_26A33ABFC();
    v13 = 0;
  }

  v23 = type metadata accessor for TextProperty(0);
  return __swift_storeEnumTagSinglePayload(a1, v13, 1, v23);
}

void TextInput.validationMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t _ProtoTextInput.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_17_22();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v23 = (v22 - v21);
  if (*(v3 + 96))
  {
    return sub_26A33ABA8();
  }

  v44 = v17;
  v45 = v12;
  v46 = v9;
  v47 = a1;
  OUTLINED_FUNCTION_3_48();
  sub_26A33ABA8();
  OUTLINED_FUNCTION_15_32();
  v26 = 0x455443414445523CLL;
  if (v25)
  {
    v27 = 0x455443414445523CLL;
  }

  else
  {
    v27 = 0;
  }

  v28 = v5;
  if (v25)
  {
    v29 = 0xEA00000000003E44;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  v23[2] = v27;
  v23[3] = v29;
  OUTLINED_FUNCTION_15_32();
  if (v30)
  {
    v31 = 0xEA00000000003E44;
  }

  else
  {
    v26 = 0;
    v31 = 0xE000000000000000;
  }

  v23[4] = v26;
  v23[5] = v31;
  v32 = *(v19 + 48);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v28);
  sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    v34 = v44;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(v34);
    if (v35)
    {
      v43 = v45;
      *v45 = MEMORY[0x277D84F90];
      *(v43 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v36 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v36);
      OUTLINED_FUNCTION_23(v34);
      if (!v35)
      {
        sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v43 = v45;
      sub_26A33ABFC();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A33AC50(v43, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(v23 + v32, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A33ABFC();
    __swift_storeEnumTagSinglePayload(v23 + v32, 0, 1, v28);
  }

  sub_26A0E4784(v23[8], v23[9]);
  *(v23 + 4) = xmmword_26A426400;
  OUTLINED_FUNCTION_2_45();
  return sub_26A33ABFC();
}

uint64_t TextInput.invocationPayload.getter()
{
  v17[4] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_26A4246B4();
  v17[0] = 0;
  v2 = [v0 propertyListWithData:v1 options:0 format:0 error:v17];

  if (v2)
  {
    v3 = v17[0];
    sub_26A424E64();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FB50, &qword_26A43B4F0);
    if (swift_dynamicCast())
    {
      return v16;
    }
  }

  else
  {
    v5 = v17[0];
    v6 = sub_26A4245B4();

    swift_willThrow();
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v7 = sub_26A424AE4();
    __swift_project_value_buffer(v7, qword_2803A8950);
    v8 = v6;
    v9 = sub_26A424AD4();
    v10 = sub_26A424DF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = sub_26A4254B4();
      v15 = sub_26A0E8788(v13, v14, v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_26A0B8000, v9, v10, "Failed to deserialize invocationPayload data to dictionary: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x26D65C950](v12, -1, -1);
      MEMORY[0x26D65C950](v11, -1, -1);
    }

    else
    {
    }
  }

  return sub_26A424B24();
}

uint64_t TextInput.init(identifier:initialValue:placeholderText:labelText:validationMode:componentName:safeForLogging:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, char a11)
{
  type metadata accessor for _ProtoTextInput(0);
  OUTLINED_FUNCTION_0_64();
  sub_26A33ACA8(v12, v13, &protocol conformance descriptor for _ProtoTextInput);
  sub_26A4249C4();

  return sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);
}

uint64_t sub_26A3390D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v32 = a6;
  v33 = a8;
  v31 = a4;
  v38 = a13;
  v36 = a11;
  v37 = a12;
  v35 = a10;
  v34 = a9;
  v18 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v18 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v30 - v20;
  v22 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v22);
  v30 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);

  *a1 = a2;
  *(a1 + 8) = a3;

  *(a1 + 16) = v31;
  *(a1 + 24) = a5;

  *(a1 + 32) = v32;
  *(a1 + 40) = a7;
  sub_26A10FD9C();
  v25 = v40;
  if (!v40)
  {
    sub_26A0E48F0(v39, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
    goto LABEL_5;
  }

  v26 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v26 + 8))(v25, v26);
  sub_26A33ABFC();
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
  __swift_destroy_boxed_opaque_existential_1(v39);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
LABEL_5:
    sub_26A0E48F0(v21, &qword_28036C7B8, &unk_26A425BF0);
    goto LABEL_6;
  }

  sub_26A33ABFC();
  sub_26A33ABFC();
  v27 = *(type metadata accessor for _ProtoTextInput(0) + 48);
  sub_26A0E48F0(a1 + v27, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A33ABFC();
  __swift_storeEnumTagSinglePayload(a1 + v27, 0, 1, v22);
LABEL_6:
  *(a1 + 48) = v34;
  *(a1 + 56) = v35 & 1;
  v28 = v37;

  *(a1 + 80) = v36;
  *(a1 + 88) = v28;
  *(a1 + 96) = v38 & 1;
  return result;
}

uint64_t TextInput.init(identifier:initialValue:placeholderText:labelText:validationMode:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  sub_26A10FD9C();
  type metadata accessor for _ProtoTextInput(0);
  OUTLINED_FUNCTION_0_64();
  sub_26A33ACA8(v10, v11, &protocol conformance descriptor for _ProtoTextInput);
  sub_26A4249C4();

  sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);
  return sub_26A0E48F0(v14, &qword_28036CB08, &unk_26A428720);
}

uint64_t TextInput.init(identifier:initialValue:placeholderText:labelText:validationMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  sub_26A10FD9C();
  type metadata accessor for _ProtoTextInput(0);
  OUTLINED_FUNCTION_0_64();
  sub_26A33ACA8(v9, v10, &protocol conformance descriptor for _ProtoTextInput);
  sub_26A4249C4();

  sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);
  return sub_26A0E48F0(v12, &qword_28036CB08, &unk_26A428720);
}

uint64_t TextInput.init(identifier:initialValue:placeholderText:labelText:validationMode:invocationPayload:componentName:safeForLogging:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  type metadata accessor for _ProtoTextInput(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_0_64();
  sub_26A33ACA8(v14, v15, &protocol conformance descriptor for _ProtoTextInput);
  sub_26A4249C4();

  if (!v18)
  {
    sub_26A33ABFC();
  }

  return sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);
}

uint64_t sub_26A3398B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v39 = a4;
  v40 = a6;
  v41 = a8;
  v44 = a11;
  v43 = a10;
  v42 = a9;
  v48 = *MEMORY[0x277D85DE8];
  v19 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v19 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v38 - v21;
  v23 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v23);
  v38 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);

  *a1 = a2;
  *(a1 + 8) = a3;

  *(a1 + 16) = v39;
  *(a1 + 24) = a5;

  *(a1 + 32) = v40;
  *(a1 + 40) = a7;
  sub_26A10FD9C();
  v26 = v46;
  if (v46)
  {
    v27 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    (*(v27 + 8))(v26, v27);
    sub_26A33ABFC();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
    __swift_destroy_boxed_opaque_existential_1(v45);
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
    {
      sub_26A33ABFC();
      sub_26A33ABFC();
      v28 = *(type metadata accessor for _ProtoTextInput(0) + 48);
      sub_26A0E48F0(a1 + v28, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A33ABFC();
      __swift_storeEnumTagSinglePayload(a1 + v28, 0, 1, v23);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v45, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  }

  sub_26A0E48F0(v22, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  *(a1 + 48) = v42;
  *(a1 + 56) = v43 & 1;
  v29 = objc_opt_self();
  v30 = sub_26A424B04();
  v45[0] = 0;
  v31 = [v29 dataWithPropertyList:v30 format:200 options:0 error:v45];

  v32 = v45[0];
  if (v31)
  {
    v33 = sub_26A4246D4();
    v35 = v34;

    sub_26A0E4784(*(a1 + 64), *(a1 + 72));
    *(a1 + 64) = v33;
    *(a1 + 72) = v35;

    *(a1 + 80) = a12;
    *(a1 + 88) = a13;
    *(a1 + 96) = a14 & 1;
  }

  else
  {
    v37 = v32;
    sub_26A4245B4();

    return swift_willThrow();
  }

  return result;
}

uint64_t TextInput.init(identifier:initialValue:placeholderText:labelText:validationMode:invocationPayload:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for _ProtoTextInput(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_0_64();
  sub_26A33ACA8(v14, v15, &protocol conformance descriptor for _ProtoTextInput);
  sub_26A4249C4();
  sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);

  if (!v18)
  {
    sub_26A33ABFC();
  }

  return sub_26A0E48F0(v17, &qword_28036CB08, &unk_26A428720);
}

uint64_t TextInput.init(identifier:initialValue:placeholderText:labelText:validationMode:invocationPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a10)
{
  type metadata accessor for _ProtoTextInput(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_0_64();
  sub_26A33ACA8(v12, v13, &protocol conformance descriptor for _ProtoTextInput);
  sub_26A4249C4();
  sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);

  if (!v16)
  {
    sub_26A33ABFC();
  }

  return sub_26A0E48F0(v15, &qword_28036CB08, &unk_26A428720);
}

Swift::String __swiftcall TextInput.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v65 - v4;
  v6 = type metadata accessor for TextInput(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDD8, &unk_26A426960);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - v16;
  OUTLINED_FUNCTION_6_33();
  sub_26A33ABA8();
  v18 = *(v1 + 96) ^ 1;
  if (*(v1 + 96))
  {
    sub_26A33ABA8();
  }

  else
  {
    _ProtoTextInput.redactedProto.getter(v10);
  }

  sub_26A33ABFC();
  v17[*(v14 + 32)] = v18;
  sub_26A33AC50(v13, type metadata accessor for TextInput);
  v19 = *(v14 + 28);
  *&v17[v19] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  sub_26A0F7840(KeyPath, 0x696669746E656469, 0xEA00000000007265, 0, v21, v22, v23, v24, v65, v66);

  v25 = swift_getKeyPath();
  sub_26A0F7840(v25, 0x566C616974696E69, 0xEC00000065756C61, 1, v26, v27, v28, v29, v65, v66);

  v30 = swift_getKeyPath();
  sub_26A0F7840(v30, 0x6C6F686563616C70, 0xEF74786554726564, 1, v31, v32, v33, v34, v65, v66);

  TextInput.labelText.getter(v5);
  sub_26A105078(v5);
  sub_26A0E48F0(v5, &qword_28036CB30, &qword_26A426480);
  v67 = 0;
  v68 = 0xE000000000000000;
  v35 = v17[56];
  v65 = *(v17 + 6);
  LOBYTE(v66) = v35;
  sub_26A424FA4();
  v37 = v67;
  v36 = v68;
  v38 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v38 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v39 = *&v17[v19];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A1672B4(0, *(v39 + 16) + 1, 1, v39);
      v39 = v62;
    }

    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_26A1672B4(v40 > 1, v41 + 1, 1, v39);
      v39 = v63;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 32 * v41;
    *(v42 + 32) = xmmword_26A43EEA0;
    *(v42 + 48) = v37;
    *(v42 + 56) = v36;
    *&v17[v19] = v39;
  }

  else
  {
  }

  v43 = swift_getKeyPath();
  sub_26A3384C4(v43, 0xD000000000000011, 0x800000026A446EA0);

  v44 = swift_getKeyPath();
  sub_26A0F7840(v44, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v45, v46, v47, v48, v65, v66);

  sub_26A145F6C(v17[96], 0x4C726F4665666173, 0xEE00676E6967676FLL, 0);
  sub_26A0FB4F4(v49, v50, v51, v52, v53, v54, v55);
  v57 = v56;
  v59 = v58;
  sub_26A0E48F0(v17, &qword_28036CDD8, &unk_26A426960);
  v60 = v57;
  v61 = v59;
  result._object = v61;
  result._countAndFlagsBits = v60;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextInput.jsonString(redacted:)(Swift::Bool redacted)
{
  v3 = v2;
  v4 = type metadata accessor for _ProtoTextInput(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = sub_26A4247D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  if (*(v1 + 96) == 1)
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_64();
    sub_26A33ACA8(v17, v18, &protocol conformance descriptor for _ProtoTextInput);
    v19 = sub_26A424954();
    if (!v2)
    {
      v3 = v19;
      v4 = v20;
    }

    (*(v10 + 8))(v16, v9);
  }

  else
  {
    _ProtoTextInput.redactedProto.getter(v8);
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_64();
    sub_26A33ACA8(v21, v22, &protocol conformance descriptor for _ProtoTextInput);
    v23 = sub_26A424954();
    if (!v2)
    {
      v3 = v23;
      v4 = v24;
    }

    (*(v10 + 8))(v13, v9);
    OUTLINED_FUNCTION_7_27();
  }

  v25 = v3;
  v26 = v4;
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

uint64_t TextInput.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoTextInput(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_3_48();
  sub_26A33ABA8();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_2_45();
  sub_26A33ABFC();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t TextInput.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for TextInput(0);
  *(inited + 64) = &protocol witness table for TextInput;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_6_33();
  sub_26A33ABA8();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A33ACA8(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for TextInput(uint64_t a1)
{
  result = qword_280372C90;
  if (!qword_280372C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A33ABA8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A33ABFC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A33AC50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A33ACA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A33AD60(uint64_t a1)
{
  result = type metadata accessor for _ProtoTextInput(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return sub_26A33AC50(v0, type metadata accessor for _ProtoTextInput);
}

uint64_t OUTLINED_FUNCTION_16_23()
{

  return type metadata accessor for _ProtoTextInput(0);
}

uint64_t OUTLINED_FUNCTION_17_22()
{

  return type metadata accessor for _ProtoTextInput(0);
}

uint64_t _ProtoColorElement.color.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_8_33();
  sub_26A291178(v1 + *(v6 + 24), v2);
  v7 = type metadata accessor for _ProtoColor(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    return sub_26A33B040(v2, a1);
  }

  type metadata accessor for _ProtoColor.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result != 1)
  {
    return sub_26A13440C();
  }

  return result;
}