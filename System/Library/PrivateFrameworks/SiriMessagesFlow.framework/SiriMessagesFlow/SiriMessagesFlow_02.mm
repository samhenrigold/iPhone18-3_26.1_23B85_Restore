uint64_t sub_267BC410C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267BC4154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267BC419C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_110_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267BC41E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267BC4228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267BC42D8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_267BA9F38(0, &qword_28022BB80, 0x277D473D0);
  v8 = a2;
  v9 = sub_267EF9768();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_94();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v8;
  sub_267BA9F38(0, &qword_280229FB8, 0x277D473D8);
  v11 = v8;

  sub_267EF4268();
}

uint64_t sub_267BC43F0()
{

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_267BC442C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_267BC452C(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[10] = v1;

  if (v1)
  {
    v4 = sub_267C10CCC;
  }

  else
  {

    v4 = sub_267BC4650;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_267BC4650(uint64_t a1)
{
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#CATLabels finished loading label CATs", v4, 2u);
    MEMORY[0x26D60A7B0](v4, -1, -1);
  }

  *(v1 + 88) = 10;
  sub_267EF7AF8();
  *(v1 + 89) = 13;
  sub_267EF7AF8();
  *(v1 + 90) = 1;
  sub_267EF7AF8();
  *(v1 + 91) = 2;
  sub_267EF7AF8();
  *(v1 + 92) = 4;
  sub_267EF7AF8();
  *(v1 + 93) = 0;
  sub_267EF7AF8();
  *(v1 + 94) = 9;
  sub_267EF7AF8();
  *(v1 + 95) = 14;
  sub_267EF7AF8();
  *(v1 + 96) = 3;
  sub_267EF7AF8();
  *(v1 + 97) = 8;
  sub_267EF7AF8();
  *(v1 + 98) = 5;
  sub_267EF7AF8();
  *(v1 + 99) = 12;
  sub_267EF7AF8();
  *(v1 + 100) = 11;
  sub_267EF7AF8();
  *(v1 + 101) = 7;
  sub_267EF7AF8();
  *(v1 + 102) = 6;
  sub_267EF7AF8();
  sub_267EF8258();

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_267BC4900@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267BC492C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267BC492C(char a1)
{
  result = 0x73654D6F69647561;
  switch(a1)
  {
    case 1:
      result = 0x6C65636E6163;
      break;
    case 2:
      result = 0x65676E616863;
      break;
    case 3:
      v3 = 0x65676E616863;
      goto LABEL_10;
    case 4:
      result = 1701736292;
      break;
    case 5:
      result = 0x617373654D77656ELL;
      break;
    case 6:
      result = 0x7373654D6E65706FLL;
      break;
    case 7:
      result = 0x5064616F6C796170;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 1684956531;
      break;
    case 11:
      result = 0x6F68576F74;
      break;
    case 12:
      v3 = 0x687469576F74;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
      break;
    case 13:
      result = 0x646E65536F646E75;
      break;
    case 14:
      result = 0x654D646165726E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267BC4B20()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 48) = v0;

  if (v0)
  {
    v5 = sub_267C2AF90;
  }

  else
  {
    v5 = sub_267BC4C28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267BC4C28()
{
  OUTLINED_FUNCTION_12();
  sub_267EF82B8();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267BC4C88()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

BOOL OUTLINED_FUNCTION_39_3(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_267C5E97C(a1, a2, a3);

  return os_log_type_enabled(v3, v4);
}

void *OUTLINED_FUNCTION_39_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_267BCDA64(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_39_6@<X0>(uint64_t a1@<X8>)
{

  return sub_267C12290(v2 + v3, v1 + a1);
}

uint64_t OUTLINED_FUNCTION_39_7()
{
}

void OUTLINED_FUNCTION_39_11(uint64_t a1, __n128 a2)
{

  sub_267BFEC0C(v3, v4, v2, v6);
}

uint64_t OUTLINED_FUNCTION_39_14()
{

  return sub_267BBD0EC(0, (v0 & 0xC000000000000001) == 0, v0);
}

id OUTLINED_FUNCTION_39_19()
{

  return sub_267BD346C(16);
}

uint64_t OUTLINED_FUNCTION_39_23()
{
  *(v1 - 96) = *(v0 + 864);

  return sub_267EF4648();
}

uint64_t OUTLINED_FUNCTION_39_25(float a1)
{
  *v1 = a1;

  return sub_267EF4938();
}

uint64_t OUTLINED_FUNCTION_39_26(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_27(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_267EF9128();
}

uint64_t OUTLINED_FUNCTION_103()
{
}

id OUTLINED_FUNCTION_103_1()
{

  return sub_267BEA714(v1, (v0 + 424));
}

uint64_t OUTLINED_FUNCTION_103_2@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[7] = a2;
  a1[8] = v6;
  a1[4] = v7;
  a1[5] = v8;

  return sub_267EF9058();
}

uint64_t OUTLINED_FUNCTION_103_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v18 + 256) = a18;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_103_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_267BC5184(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_58();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  OUTLINED_FUNCTION_74();
  v15();
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v9);
  a2(a7, v17);
}

uint64_t sub_267BC52BC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_267BAEBEC;

  return sub_267BC5358();
}

uint64_t sub_267BC5358()
{
  OUTLINED_FUNCTION_12();
  v1[254] = v0;
  v1[253] = v2;
  v3 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v3);
  v1[255] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF7008();
  v1[256] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[257] = v5;
  v1[258] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4C08();
  v1[259] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[260] = v7;
  v1[261] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF4BA8();
  v1[262] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[263] = v9;
  v1[264] = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v1[265] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[266] = v11;
  v1[267] = OUTLINED_FUNCTION_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFD0, &qword_267F0D0B0);
  OUTLINED_FUNCTION_18(v12);
  v1[268] = OUTLINED_FUNCTION_50();
  v1[269] = swift_task_alloc();
  v1[270] = swift_task_alloc();
  v1[271] = swift_task_alloc();
  v1[272] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267BC556C()
{
  v230 = v0;
  v228 = v0 + 128;
  v1 = v0 + 1888;
  v2 = *(v0 + 2032);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267BB5E24(v2 + 56, v0 + 184);
  v3 = *(v0 + 184);
  *(v0 + 2184) = v3;
  v4 = *(v0 + 224);
  *(v0 + 2192) = v4;
  switch(*(v0 + 232))
  {
    case 1:
      v70 = *(v0 + 208);
      *(v0 + 1712) = *(v0 + 192);
      *(v0 + 1728) = v70;
      *(v0 + 1744) = *(v0 + 224);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v71 = sub_267EF8A08();
      *(v0 + 2208) = OUTLINED_FUNCTION_30_1(v71, qword_280240FB0);

      v72 = sub_267EF89F8();
      v73 = sub_267EF95C8();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = OUTLINED_FUNCTION_48();
        v75 = OUTLINED_FUNCTION_52();
        v229[0] = v75;
        *v74 = 136446210;
        v76 = sub_267BE9D20(v75);
        v78 = v3;
        v79 = sub_267BA33E8(v76, v77, v229);

        *(v74 + 4) = v79;
        v3 = v78;
        _os_log_impl(&dword_267B93000, v72, v73, "#Gatekeeper Composing new message using %{public}s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      sub_267BF6CEC(v0 + 1712, v0 + 472, &unk_28022BBF0, &unk_267F01C60);
      if (*(v0 + 496))
      {
        v80 = *(v0 + 2112);
        v81 = *(v0 + 2104);
        v224 = *(v0 + 2096);
        v82 = *(v0 + 2088);
        v83 = *(v0 + 2032);
        sub_267B9A5E8((v0 + 472), v0 + 432);
        *(v0 + 976) = sub_267EF68A8();
        *(v0 + 984) = &off_2878D54D8;
        __swift_allocate_boxed_opaque_existential_0((v0 + 952));
        sub_267EF6898();
        v84 = sub_267EF8938();
        v85 = sub_267EF8928();
        *(v0 + 1016) = v84;
        *(v0 + 1024) = MEMORY[0x277D5FDD8];
        *(v0 + 992) = v85;
        v221 = v83;
        sub_267B9B050(v83 + 16, v0 + 1032);
        sub_267B9B050(v0 + 952, v0 + 1072);
        sub_267B9B050(v0 + 992, v0 + 1112);
        v86 = swift_allocObject();
        sub_267B9A5E8((v0 + 1032), v86 + 16);
        sub_267B9A5E8((v0 + 1072), v86 + 56);
        sub_267B9A5E8((v0 + 1112), v86 + 96);
        sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
        sub_267EF7058();
        __swift_destroy_boxed_opaque_existential_0((v0 + 992));
        __swift_destroy_boxed_opaque_existential_0((v0 + 952));
        v87 = sub_267EF7068();
        v89 = *(v0 + 456);
        v88 = *(v0 + 464);
        __swift_project_boxed_opaque_existential_0((v0 + 432), v89);
        (*(v88 + 8))(v89, v88);
        sub_267EF4B88();
        (*(v81 + 8))(v80, v224);
        v87(v229, v82);
        v178 = *(v0 + 2032);

        v179 = OUTLINED_FUNCTION_66();
        v180(v179);
        v181 = v229[0];
        *(v0 + 2216) = v229[0];
        v182 = *(v178 + 48);
        OUTLINED_FUNCTION_74_10((v221 + 16));
        v183 = *(v182 + 24);
        v184 = v181;
        v185 = OUTLINED_FUNCTION_44_0();
        v183(v185);
        OUTLINED_FUNCTION_117_8();
        v186 = OUTLINED_FUNCTION_10_3();
        v187(v186);
        __swift_project_boxed_opaque_existential_0((v0 + 1312), *(v0 + 1336));
        OUTLINED_FUNCTION_10_3();
        sub_267EF3C28();
        v188 = *(v178 + 40);
        v189 = *(v178 + 48);
        __swift_project_boxed_opaque_existential_0((v221 + 16), v188);
        v190 = OUTLINED_FUNCTION_25_0();
        v191(v190, v189);
        __swift_project_boxed_opaque_existential_0((v0 + 1352), *(v0 + 1376));
        OUTLINED_FUNCTION_25_0();
        sub_267EF3B78();
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 2224) = v192;
        *v192 = v193;
        v192[1] = sub_267E19B90;
        OUTLINED_FUNCTION_63_1();

        return sub_267E0BF50(v194, v195, v196, v197, v198);
      }

      v122 = *(v0 + 2032);
      sub_267B9FED8(v0 + 472, &unk_28022BBF0, &unk_267F01C60);
      v123 = objc_allocWithZone(MEMORY[0x277CD4078]);
      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_10_9();
      v132 = sub_267E8F82C(v124, v125, v126, v127, v128, v129, v130, v131, 0, 0, 0);
      v133 = *(v122 + 112);
      sub_267B9B050(v122 + 16, v0 + 512);
      v134 = type metadata accessor for SiriKitFlowFactoryImpl();
      v135 = OUTLINED_FUNCTION_49(v134);
      v136 = qword_2802286F0;

      v220 = v132;
      v227 = v133;

      if (v136 != -1)
      {
        OUTLINED_FUNCTION_4_0(&qword_2802286F0);
      }

      type metadata accessor for SendMessageCATs(0);
      sub_267EF7B68();
      v223 = sub_267EF78E8();
      __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
      v222 = sub_267BB4A3C();
      v137 = type metadata accessor for ShareSheetProvider();
      v138 = OUTLINED_FUNCTION_49(v137);
      *(v0 + 576) = v134;
      *(v0 + 584) = &off_2878CFE90;
      *(v0 + 552) = v135;
      *(v0 + 616) = v137;
      *(v0 + 624) = &off_2878D0D48;
      *(v0 + 592) = v138;
      *(v0 + 656) = &type metadata for MessagesFeatureFlagsImpl;
      *(v0 + 664) = off_2878D1228;
      type metadata accessor for SendMessageFlow(0);
      OUTLINED_FUNCTION_27_4();
      v139 = swift_allocObject();
      v140 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 552, v134);
      OUTLINED_FUNCTION_23();
      v142 = v141;
      v143 = OUTLINED_FUNCTION_2();
      (*(v142 + 16))(v143, v140, v134);
      v144 = *(v0 + 616);
      v145 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 592, v144);
      OUTLINED_FUNCTION_23();
      v147 = v146;
      v148 = OUTLINED_FUNCTION_2();
      (*(v147 + 16))(v148, v145, v144);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 632, *(v0 + 656));
      v149 = *v143;
      v150 = *v148;
      *(v0 + 696) = v134;
      *(v0 + 704) = &off_2878CFE90;
      *(v0 + 672) = v149;
      *(v0 + 736) = v137;
      *(v0 + 744) = &off_2878D0D48;
      *(v0 + 712) = v150;
      *(v0 + 776) = &type metadata for MessagesFeatureFlagsImpl;
      *(v0 + 784) = off_2878D1228;
      sub_267BCE788(v220);
      if (![v220 outgoingMessageType])
      {
        v151 = sub_267EF89F8();
        v152 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v152))
        {
          v153 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_4_2(v153);
          OUTLINED_FUNCTION_29_19(&dword_267B93000, v154, v152, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text");
          OUTLINED_FUNCTION_29_1();
        }

        *(v0 + 1808) = MEMORY[0x277D83B88];
        *(v0 + 1784) = 1;
        sub_267ECE290();
        sub_267B9FED8(v0 + 1784, &qword_28022AEF0, &qword_267EFCDE0);
      }

      if (*(v3 + 16) != 5)
      {
        v155 = sub_267EF89F8();
        v156 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v156))
        {
          v157 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_4_2(v157);
          OUTLINED_FUNCTION_29_19(&dword_267B93000, v158, v156, "#SendMessageFlow non-shim intent request, marking as app selected by user");
          OUTLINED_FUNCTION_29_1();
        }

        *(v3 + 96) = 1;
      }

      v159 = *(v0 + 544);
      OUTLINED_FUNCTION_74_10((v0 + 512));
      v160 = *(v159 + 24);
      v161 = v220;
      v162 = OUTLINED_FUNCTION_44_0();
      v160(v162);
      __swift_project_boxed_opaque_existential_0((v0 + 792), *(v0 + 816));
      OUTLINED_FUNCTION_10_3();
      sub_267EF45B8();
      __swift_project_boxed_opaque_existential_0((v0 + 832), *(v0 + 856));
      OUTLINED_FUNCTION_10_3();
      sub_267EF42B8();
      if (v163)
      {
        v164 = sub_267EF8FF8();
      }

      else
      {
        v164 = 0;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 832));
      __swift_destroy_boxed_opaque_existential_0((v0 + 792));
      [v161 _setOriginatingDeviceIdsIdentifier_];

      v212 = v139 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
      *v212 = v227;
      *(v212 + 8) = v161;
      *(v212 + 16) = v3;
      *(v212 + 40) = 1;
      type metadata accessor for SendMessageFlow.State(0);
      swift_storeEnumTagMultiPayload();
      sub_267B9A5E8((v0 + 672), v139 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
      *(v139 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v223;
      *(v139 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v222;
      sub_267B9A5E8((v0 + 752), v139 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
      sub_267B9A5E8((v0 + 712), v139 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
      sub_267B9A5E8((v0 + 512), v139 + 16);
      __swift_destroy_boxed_opaque_existential_0((v0 + 632));
      __swift_destroy_boxed_opaque_existential_0((v0 + 592));

      __swift_destroy_boxed_opaque_existential_0((v0 + 552));

      *(v0 + 2008) = v139;
      OUTLINED_FUNCTION_40_18();
      sub_267BC41E0(v213, v214, &unk_267F0A980);
      sub_267EF3FF8();

      sub_267B9FED8(v0 + 1712, &unk_28022BBF0, &unk_267F01C60);
      goto LABEL_93;
    case 2:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v43 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v43, qword_280240FB0);

      v44 = sub_267EF89F8();
      v45 = sub_267EF95C8();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_48();
        v47 = OUTLINED_FUNCTION_52();
        v229[0] = v47;
        *v46 = 136446210;
        v48 = sub_267BE9D20(v47);
        v50 = sub_267BA33E8(v48, v49, v229);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_267B93000, v44, v45, "Gatekeeper# Clarifying using %{public}s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_18_2();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 2240) = v51;
      *v51 = v52;
      OUTLINED_FUNCTION_8_49(v51);
      OUTLINED_FUNCTION_63_1();

      return sub_267BE9D64(v53, v54);
    case 3:
      v56 = *(v0 + 200);
      *(v0 + 1232) = *(v0 + 184);
      *(v0 + 1248) = v56;
      *(v0 + 1264) = *(v0 + 216);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v57 = *(v0 + 2032);
      v58 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v58, qword_280240FB0);

      v59 = sub_267EF89F8();
      v60 = sub_267EF95C8();

      if (os_log_type_enabled(v59, v60))
      {
        OUTLINED_FUNCTION_48();
        v61 = OUTLINED_FUNCTION_55_0();
        v229[0] = v61;
        *v57 = 136315138;
        v62 = sub_267BE9D20(v61);
        v64 = sub_267BA33E8(v62, v63, v229);

        *(v57 + 4) = v64;
        OUTLINED_FUNCTION_17_3(&dword_267B93000, v65, v66, "Gatekeeper# Calling using %s");
        OUTLINED_FUNCTION_26_4();
        OUTLINED_FUNCTION_29_1();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 2248) = v67;
      *v67 = v68;
      OUTLINED_FUNCTION_8_49(v67);
      OUTLINED_FUNCTION_63_1();

      return sub_267E1CD48();
    case 4:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v30 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v30, qword_280240FB0);
      v31 = sub_267EF89F8();
      v32 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_5_2(v32))
      {
        v33 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v33);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v34, v35, v36, v37, v38, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 2256) = v39;
      *v39 = v40;
      OUTLINED_FUNCTION_8_49(v39);
      OUTLINED_FUNCTION_63_1();

      return sub_267E1AE50();
    case 5:
      v91 = *(v0 + 208);
      v90 = *(v0 + 216);
      v92 = *(v0 + 192);
      v93 = *(v0 + 200);
      if (v4 | v3 | v90 | v91 | v93 | v92)
      {
        v94 = v90 | v4 | v91 | v93 | v92;
        if (v3 == 1 && !v94)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v95 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v95, qword_280240FB0);
          v96 = sub_267EF89F8();
          v97 = sub_267EF95C8();
          if (OUTLINED_FUNCTION_10_2(v97))
          {
            v98 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v98);
            OUTLINED_FUNCTION_3_0(&dword_267B93000, v99, v100, "Gatekeeper# Reading");
            OUTLINED_FUNCTION_26();
          }

          v101 = *(v0 + 2032);

          v102 = *(v101 + 112);

          v226 = sub_267BC73B4();
          sub_267B9B050(v101 + 16, v0 + 1192);
          sub_267B9B050(v101 + 272, v0 + 1152);
          if (qword_2802286F0 != -1)
          {
            OUTLINED_FUNCTION_4_0(&qword_2802286F0);
          }

          type metadata accessor for SearchForMessagesCATs(0);
          sub_267EF7B68();
          v225 = sub_267EF78E8();
          v103 = *(v0 + 1176);
          v104 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1152, v103);
          OUTLINED_FUNCTION_23();
          v106 = v105;
          v107 = OUTLINED_FUNCTION_2();
          (*(v106 + 16))(v107, v104, v103);
          v108 = *v107;
          v109 = type metadata accessor for SiriKitFlowFactoryImpl();
          *(v0 + 896) = v109;
          *(v0 + 904) = &off_2878CFE90;
          *(v0 + 872) = v108;
          type metadata accessor for SearchForMessagesFlow(0);
          OUTLINED_FUNCTION_27_4();
          v110 = swift_allocObject();
          v111 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 872, v109);
          OUTLINED_FUNCTION_23();
          v113 = v112;
          v114 = OUTLINED_FUNCTION_2();
          (*(v113 + 16))(v114, v111, v109);
          v115 = *v114;
          v116 = (v110 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_siriKitFlowFactory);
          v116[3] = v109;
          v116[4] = &off_2878CFE90;
          *v116 = v115;
          v117 = v110 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
          *v117 = v102;
          *(v117 + 8) = v226;
          *(v117 + 40) = 1;
          type metadata accessor for SearchForMessagesFlow.State(0);
          swift_storeEnumTagMultiPayload();
          v118 = v110 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_smsIntent;
          *v118 = 0u;
          *(v118 + 16) = 0u;
          *(v118 + 32) = 0;
          *(v110 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_searchForMessagesCATs) = v225;
          sub_267B9A5E8((v0 + 1192), v110 + 16);
          __swift_destroy_boxed_opaque_existential_0((v0 + 872));

          __swift_destroy_boxed_opaque_existential_0((v0 + 1152));

          *(v0 + 2016) = v110;
          sub_267BC41E0(&qword_280229470, type metadata accessor for SearchForMessagesFlow, &unk_267F0B7B0);
          sub_267EF3FF8();
LABEL_93:

LABEL_98:
          OUTLINED_FUNCTION_1_69();

          OUTLINED_FUNCTION_17();
          OUTLINED_FUNCTION_63_1();

          __asm { BRAA            X1, X16 }
        }

        if (v3 != 2 || v94)
        {
          if (v3 != 3 || v94)
          {
            sub_267EF4018();
            goto LABEL_98;
          }

          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v200 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v200, qword_280240FB0);
          v201 = sub_267EF89F8();
          v202 = sub_267EF95E8();
          if (OUTLINED_FUNCTION_10_2(v202))
          {
            v203 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v203);
            OUTLINED_FUNCTION_3_0(&dword_267B93000, v204, v205, "Gatekeeper# Returning error response");
            OUTLINED_FUNCTION_26();
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_25();
          *(v0 + 2272) = v206;
          *v206 = v207;
          OUTLINED_FUNCTION_8_49(v206);
          OUTLINED_FUNCTION_63_1();

          return sub_267E1E144();
        }

        else
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v168 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v168, qword_280240FB0);
          v169 = sub_267EF89F8();
          v170 = sub_267EF95C8();
          if (OUTLINED_FUNCTION_10_2(v170))
          {
            v171 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v171);
            OUTLINED_FUNCTION_3_0(&dword_267B93000, v172, v173, "Gatekeeper# Cancelling request");
            OUTLINED_FUNCTION_26();
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_25();
          *(v0 + 2264) = v174;
          *v174 = v175;
          OUTLINED_FUNCTION_8_49(v174);
          OUTLINED_FUNCTION_63_1();

          return sub_267E1D96C();
        }
      }

      else
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 2200) = v165;
        *v165 = v166;
        OUTLINED_FUNCTION_8_49(v165);
        OUTLINED_FUNCTION_63_1();

        return sub_267BC7000();
      }

    default:
      v5 = *(v0 + 192);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v6 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);

      v7 = sub_267EF89F8();
      v8 = sub_267EF95C8();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = OUTLINED_FUNCTION_48();
        v10 = v2;
        v11 = v3;
        v12 = OUTLINED_FUNCTION_52();
        v229[0] = v12;
        *v9 = 136446210;
        *(v9 + 4) = sub_267BA33E8(v11, v5, v229);
        _os_log_impl(&dword_267B93000, v7, v8, "Gatekeeper# Button %{public}s pressed", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        v2 = v10;
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v13 = *(v0 + 2168);
      sub_267EF8208();
      v14 = OUTLINED_FUNCTION_68_0();
      sub_267BF6CEC(v14, v15, v16, v17);
      v18 = sub_267EF8228();
      if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
      {
        goto LABEL_7;
      }

      v119 = *(v0 + 2160);
      sub_267BF6CEC(*(v0 + 2168), v119, &qword_28022BFD0, &qword_267F0D0B0);
      v120 = *(v18 - 8);
      v121 = (*(v120 + 88))(v119, v18);
      if (v121 == *MEMORY[0x277D5D4B8])
      {
        *(v0 + 312) = 0u;
        *(v0 + 328) = 0u;
        *(v0 + 296) = 0u;
        *(v0 + 344) = 3;
        v228 = v0 + 296;
      }

      else
      {
        if (v121 == *MEMORY[0x277D5D448])
        {
          *(v0 + 16) = 1;
          OUTLINED_FUNCTION_9_44();
          v1 = v0 + 1912;
          v177 = v0 + 16;
        }

        else
        {
          if (v121 != *MEMORY[0x277D5D458])
          {
            (*(v120 + 8))(*(v0 + 2160), v18);
LABEL_7:
            sub_267BF6CEC(*(v0 + 2176), *(v0 + 2152), &qword_28022BFD0, &qword_267F0D0B0);
            v19 = sub_267EF89F8();
            v20 = sub_267EF95E8();
            v21 = os_log_type_enabled(v19, v20);
            v22 = *(v0 + 2152);
            if (v21)
            {
              v23 = *(v0 + 2144);
              v24 = OUTLINED_FUNCTION_48();
              v25 = OUTLINED_FUNCTION_52();
              v229[0] = v25;
              *v24 = 136315138;
              sub_267BF6CEC(v22, v23, &qword_28022BFD0, &qword_267F0D0B0);
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v18);
              v27 = *(v0 + 2144);
              if (EnumTagSinglePayload == 1)
              {
                sub_267B9FED8(*(v0 + 2144), &qword_28022BFD0, &qword_267F0D0B0);
                v28 = 0xE300000000000000;
                v29 = 7104878;
              }

              else
              {
                v29 = sub_267EF8218();
                v28 = v209;
                OUTLINED_FUNCTION_5_0();
                (*(v210 + 8))(v27, v18);
              }

              sub_267B9FED8(*(v0 + 2152), &qword_28022BFD0, &qword_267F0D0B0);
              v211 = sub_267BA33E8(v29, v28, v229);

              *(v24 + 4) = v211;
              _os_log_impl(&dword_267B93000, v19, v20, "Gatekeeper# Unexpected direct button: %s", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v25);
              OUTLINED_FUNCTION_32_0();
              OUTLINED_FUNCTION_32_0();
            }

            else
            {

              sub_267B9FED8(v22, &qword_28022BFD0, &qword_267F0D0B0);
            }

            *(v0 + 128) = 3;
            OUTLINED_FUNCTION_53_17();
            *(v0 + 176) = 5;
            v1 = v0 + 1864;
            goto LABEL_97;
          }

          v215 = type metadata accessor for SendMessageState();
          OUTLINED_FUNCTION_89_1(v215);
          *(v0 + 72) = sub_267BC963C(2);
          *(v0 + 80) = 0u;
          *(v0 + 96) = 0u;
          *(v0 + 112) = 0;
          *(v0 + 120) = 1;
          v1 = v0 + 1960;
          v177 = v0 + 72;
        }

        v228 = v177;
      }

LABEL_97:
      OUTLINED_FUNCTION_66_3(v2 + 56, v1);
      sub_267BE9CA0(v228, v2 + 56);
      swift_endAccess();
      sub_267B9FED8(*(v0 + 2168), &qword_28022BFD0, &qword_267F0D0B0);
      sub_267EF3FB8();
      v216 = OUTLINED_FUNCTION_108();
      sub_267B9FED8(v216, v217, &qword_267F0D0B0);
      goto LABEL_98;
  }
}

uint64_t sub_267BC6FB8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_267BC7000()
{
  OUTLINED_FUNCTION_12();
  v1[44] = v2;
  v1[45] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABC0, &unk_267F030D0);
  OUTLINED_FUNCTION_18(v3);
  v1[46] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF43D8();
  v1[47] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[48] = v5;
  v1[49] = OUTLINED_FUNCTION_50();
  v1[50] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267BC70DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_53();
  a18 = v20;
  if (*(*(v20 + 360) + 121) == 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v23 = sub_267EF8A08();
    *(v20 + 408) = __swift_project_value_buffer(v23, qword_280240FB0);
    v24 = sub_267EF89F8();
    v25 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v25))
    {
      v26 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v26);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v27, v28, "Gatekeeper# Ready: Checking for new messages");
      OUTLINED_FUNCTION_26();
    }

    v29 = *(v20 + 360);

    *(v20 + 416) = sub_267BC73B4();
    __swift_project_boxed_opaque_existential_0((v29 + 192), *(v29 + 216));
    v30 = swift_task_alloc();
    *(v20 + 424) = v30;
    *v30 = v20;
    OUTLINED_FUNCTION_71_5(v30);
    OUTLINED_FUNCTION_46();

    return sub_267BC7610(v31, v32);
  }

  else
  {
    if (sub_267BB60E8())
    {
      v35 = v20 + 72;
      v36 = v20 + 264;
      v37 = *(v20 + 360);
      *(v20 + 72) = 0u;
      *(v20 + 88) = 0u;
      *(v20 + 104) = 0u;
      *(v20 + 120) = 3;
    }

    else
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v35 = v20 + 16;
      v36 = v20 + 240;
      v38 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);

      v39 = sub_267EF89F8();
      v40 = sub_267EF95E8();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_48();
        v42 = OUTLINED_FUNCTION_52();
        a10 = v42;
        *v41 = 136315138;
        v43 = sub_267BE9D20(v42);
        v45 = sub_267BA33E8(v43, v44, &a10);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_267B93000, v39, v40, "Gatekeeper# Direct invocation for app %s which is neither messaging nor calling", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v37 = *(v20 + 360);
      *(v20 + 16) = 3;
      OUTLINED_FUNCTION_9_44();
    }

    OUTLINED_FUNCTION_66_3(v37 + 56, v36);
    sub_267BE9CA0(v35, v37 + 56);
    swift_endAccess();
    OUTLINED_FUNCTION_101_8();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_46();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
  }
}

id sub_267BC73B4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD4048]);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_10_9();
  return sub_267BC7400(v1, v2, v3, v4, v5, v6, v7, v8, 0);
}

id sub_267BC7400(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a2;
  if (a1)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v16 = sub_267EF92D8();

    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = 0;
    if (a2)
    {
LABEL_3:
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v17 = sub_267EF92D8();

      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v17 = 0;
  if (a3)
  {
LABEL_4:
    sub_267EF92D8();
    OUTLINED_FUNCTION_102_0();
    if (a6)
    {
      goto LABEL_5;
    }

LABEL_10:
    v18 = 0;
    if (a7)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v15 = 0;
  if (!a6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v18 = sub_267EF92D8();

  if (a7)
  {
LABEL_6:
    v19 = sub_267EF92D8();

    goto LABEL_12;
  }

LABEL_11:
  v19 = 0;
LABEL_12:
  if (!a8)
  {
    v20 = 0;
    if (a9)
    {
      goto LABEL_14;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
  v20 = sub_267EF92D8();

  if (!a9)
  {
    goto LABEL_16;
  }

LABEL_14:
  v21 = sub_267EF92D8();

LABEL_17:
  v22 = [v9 initWithRecipients:v16 senders:v17 searchTerms:v15 attributes:a4 dateTimeRange:a5 identifiers:v18 notificationIdentifiers:v19 speakableGroupNames:v20 conversationIdentifiers:v21];

  return v22;
}

uint64_t sub_267BC7610(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267BC763C()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i64[0] = v1;
  OUTLINED_FUNCTION_10(&unk_267F00A80);
  v6 = v3;
  v4 = swift_task_alloc();
  v0[3].i64[0] = v4;
  *v4 = v0;
  v4[1] = sub_267BE9290;

  return v6(sub_267BC42CC, v2);
}

uint64_t sub_267BC7710(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267BC7724()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v2);
  sub_267BA9F38(0, &qword_280229680, 0x277CD4050);
  OUTLINED_FUNCTION_14_3();
  *v0 = v3;
  v0[1] = sub_267BE916C;
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_267BC77F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_267EF7C18();
  if (v10)
  {
    v11 = sub_267EF8FF8();
  }

  else
  {
    v11 = 0;
  }

  [a3 _setLaunchId_];

  sub_267BC42D8((a5 + 16), a3, sub_267BE9C54, v9);
}

uint64_t sub_267BC78CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_131_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267C26980(v4, v3 + a3, a1, a2);
}

char *sub_267BC7934(char *a1, int64_t a2, char a3)
{
  result = sub_267BC305C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_267BC7954(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v3 = OUTLINED_FUNCTION_37_1();
  sub_267BC7A94(v3, v4, a2);
  OUTLINED_FUNCTION_26_0();
  v5 = sub_267EF5658();
  sub_267BB8F30(v5, v6);
  v8 = v7;

  if (v8)
  {
    v9 = sub_267EF8F68();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_73_2();
  MEMORY[0x26D608E60](v9, v11);

  OUTLINED_FUNCTION_26_0();
  v12 = sub_267EF5658();
  OUTLINED_FUNCTION_96_1(v12, v13);
  sub_267BB9090();

  sub_267EF9188();

  return v15;
}

uint64_t sub_267BC7A94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_110_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_101_0()
{

  return sub_267EF4648();
}

uint64_t OUTLINED_FUNCTION_101_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_267EF2B88();
}

BOOL OUTLINED_FUNCTION_101_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_101_5()
{
}

uint64_t OUTLINED_FUNCTION_101_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_267BF3128(v4, v6 + v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_101_8()
{

  return sub_267EF3FB8();
}

uint64_t OUTLINED_FUNCTION_113_3@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{
  v6 = *(v4 - 88);

  return sub_267BC9B04(v3 + a1, v6, a2, a3);
}

uint64_t OUTLINED_FUNCTION_113_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = a2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_113_5()
{

  return sub_267D5D4BC(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_113_7(uint64_t a1)
{

  return sub_267EF9C68();
}

uint64_t sub_267BC7CF8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[20] = v1;
  v2[21] = v4;
  v2[22] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 384) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BC7E14()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267BC7F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v7 = sub_267EF53D8();
  OUTLINED_FUNCTION_23();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6();
  v54 = v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  v56 = &v49 - v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = v3[5];
  v18 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v17);
  (*(v18 + 8))(v59, v17, v18);
  sub_267EF4148();
  __swift_project_boxed_opaque_existential_0(v59, v60);
  sub_267EF3B98();
  sub_267EF4128();
  __swift_destroy_boxed_opaque_existential_0(v59);
  sub_267EF4098();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_267EFCC90;
  if (qword_2802288F8 != -1)
  {
    swift_once();
  }

  *(v19 + 32) = sub_267BC94E4();
  *(v19 + 40) = v20;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  *(v19 + 48) = sub_267BC9500();
  *(v19 + 56) = v21;
  sub_267EF4118();
  v22 = swift_allocObject();
  v55 = xmmword_267EFC020;
  *(v22 + 16) = xmmword_267EFC020;
  *(v22 + 32) = sub_267BB90E4(2);
  *(v22 + 40) = v23;
  sub_267EF4108();
  sub_267BC8490(a1, v4);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v24 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);
  v25 = *(v9 + 16);
  v26 = v56;
  v57 = v16;
  v25(v56, v16, v7);
  v27 = sub_267EF89F8();
  v28 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v28))
  {
    v29 = OUTLINED_FUNCTION_48();
    v51 = v29;
    v52 = OUTLINED_FUNCTION_52();
    v58 = v52;
    *v29 = 136315138;
    v30 = v54;
    v31 = OUTLINED_FUNCTION_61_4();
    (v25)(v31);
    sub_267EF5458();
    v50 = a3;
    v60 = v7;
    v61 = sub_267BC41E0(&qword_28022BAF0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
    v25(boxed_opaque_existential_0, v30, v7);
    sub_267EF5448();
    v53 = a3;
    v49 = v27;
    v33 = v25;
    v34 = *(v9 + 8);
    v35 = v9;
    v36 = v30;
    v37 = v33;
    v34(v36, v7);
    v34(v26, v7);
    __swift_destroy_boxed_opaque_existential_0(v59);
    v38 = OUTLINED_FUNCTION_65_5();
    v41 = sub_267BA33E8(v38, v39, v40);

    v42 = v51;
    *(v51 + 1) = v41;
    v43 = v49;
    _os_log_impl(&dword_267B93000, v49, v50, "#Gatekeeper submitTemplatingResultWithViews SDA: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v37 = v25;
    v34 = *(v9 + 8);
    v35 = v9;
    v34(v26, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v44 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v55;
  v46 = v45 + v44;
  v47 = v57;
  v37(v46, v57, v7);
  sub_267EF4088();
  return (v34)(v47, v7);
}

uint64_t sub_267BC8490(uint64_t a1, char a2)
{
  v9 = MEMORY[0x277D84F90];
  sub_267EF6448();
  OUTLINED_FUNCTION_27_4();
  swift_allocObject();
  sub_267EF6438();
  sub_267EF6268();
  OUTLINED_FUNCTION_27_4();
  swift_allocObject();
  sub_267EF6258();
  sub_267EF61F8();

  MEMORY[0x26D608F90](v4);
  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_267EF9328();
  }

  sub_267EF9368();
  if (a2 == 2 && !a1)
  {
    goto LABEL_8;
  }

  sub_267EF6428();
  OUTLINED_FUNCTION_27_4();
  swift_allocObject();
  sub_267EF6418();
  swift_allocObject();
  sub_267EF6258();
  sub_267EF63E8();

  MEMORY[0x26D608F90](v5);
  OUTLINED_FUNCTION_109_9();
  if (v6)
  {
    OUTLINED_FUNCTION_97_11();
  }

  OUTLINED_FUNCTION_44_0();
  sub_267EF9368();
  if (a2 != 1)
  {
LABEL_8:
    sub_267EF6508();
    OUTLINED_FUNCTION_27_4();
    swift_allocObject();
    sub_267EF64F8();
    sub_267EF63A8();
    OUTLINED_FUNCTION_27_4();
    swift_allocObject();
    sub_267EF6398();
    sub_267EF61F8();

    MEMORY[0x26D608F90](v7);
    OUTLINED_FUNCTION_109_9();
    if (v6)
    {
      OUTLINED_FUNCTION_97_11();
    }

    sub_267EF9368();
  }

  sub_267BC8938();
}

uint64_t sub_267BC86A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v14 = v12[21];
  v12[52] = v14;
  v15 = qword_280228818;
  v16 = v14;
  if (v15 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v17 = sub_267EF8A08();
  v12[53] = __swift_project_value_buffer(v17, qword_280240FB0);
  v18 = v16;
  v19 = sub_267EF89F8();
  sub_267EF95C8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    a10 = OUTLINED_FUNCTION_55_0();
    *v13 = 136446210;
    v20 = [v18 patternId];
    sub_267EF9028();

    v21 = OUTLINED_FUNCTION_61_4();
    sub_267BA33E8(v21, v22, v23);
    OUTLINED_FUNCTION_102_0();
    *(v13 + 4) = v20;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_60_12();
  OUTLINED_FUNCTION_10_39();
  sub_267EF47F8();
  sub_267EF4858();
  OUTLINED_FUNCTION_80_10();
  sub_267EF4158();
  OUTLINED_FUNCTION_94_9();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_267EF4818();
  sub_267EF4198();
  OUTLINED_FUNCTION_27_4();
  swift_allocObject();
  v12[54] = sub_267EF4188();
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v45 = v33;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v12[55] = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_3_65(v34);
  OUTLINED_FUNCTION_46();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, v45, a10, a11, a12);
}

uint64_t sub_267BC8878()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_3_85();
  sub_267BC88E0(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267BC88E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_267BC8938()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_267EF5408();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v58 = sub_267EF5318();
  OUTLINED_FUNCTION_58();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_60();
  v60 = v17 - v18;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  v22 = sub_267EF5198();
  v23 = OUTLINED_FUNCTION_18(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  v56 = v25 - v24;
  v59 = sub_267EF5378();
  OUTLINED_FUNCTION_58();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_60();
  v55 = v29 - v30;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v31);
  v33 = &v45 - v32;
  v57 = v1;
  v34 = sub_267BAF0DC(v1);
  v48 = v3;
  v49 = v4;
  v46 = v10;
  v47 = v6;
  v45 = v13;
  if (!v34)
  {
LABEL_12:
    v42 = v45;
    sub_267EF53F8();
    sub_267EF51C8();
    sub_267EF53C8();
    v43 = v47;
    v44 = v49;
    (*(v47 + 16))(v46, v42, v49);
    sub_267EF5388();
    (*(v43 + 8))(v42, v44);
    OUTLINED_FUNCTION_47();
    return;
  }

  if (v34 >= 1)
  {
    v35 = 0;
    v53 = (v27 + 16);
    v54 = v57 & 0xC000000000000001;
    v51 = v15 + 8;
    v52 = (v15 + 16);
    v50 = v15 + 32;
    v36 = MEMORY[0x277D84F90];
    do
    {
      v37 = v34;
      if (v54)
      {
        MEMORY[0x26D609870](v35, v57);
      }

      else
      {
      }

      sub_267EF5368();
      sub_267BC8EDC(0, 0, v56);
      sub_267EF5358();
      sub_267EF5308();
      (*v53)(v55, v33, v59);
      sub_267EF5298();
      (*v52)(v60, v21, v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267BC8E04();
        v36 = v40;
      }

      v38 = *(v36 + 16);
      if (v38 >= *(v36 + 24) >> 1)
      {
        sub_267BC8E04();
        v36 = v41;
      }

      ++v35;

      v39 = v58;
      (*(v15 + 8))(v21, v58);
      (*(v27 + 8))(v33, v59);
      *(v36 + 16) = v38 + 1;
      (*(v15 + 32))(v36 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v38, v60, v39);
      v34 = v37;
    }

    while (v37 != v35);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_145_2()
{
}

void sub_267BC8E04()
{
  OUTLINED_FUNCTION_5_18();
  if (v4)
  {
    OUTLINED_FUNCTION_4_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_23_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_39_5(v2, v5, &qword_280229AA8, &qword_267EFEF30);
  OUTLINED_FUNCTION_22_8();
  sub_267EF5318();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_20_4();
  if (v1)
  {
    OUTLINED_FUNCTION_17_7(v8, MEMORY[0x277D5DB80]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_13();
  }
}

uint64_t sub_267BC8EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v36 = a1;
  v39 = a3;
  sub_267EF6688();
  OUTLINED_FUNCTION_58();
  v37 = v7;
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CCA0, &qword_267F0D6C0);
  OUTLINED_FUNCTION_18(v11);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CCA8, &qword_267F0D6C8);
  OUTLINED_FUNCTION_18(v15);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  v35 = sub_267EF5738();
  OUTLINED_FUNCTION_58();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_0();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CCB0, &qword_267F0D6D0);
  OUTLINED_FUNCTION_18(v25);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v26);
  v28 = &v34 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_267EFCA40;
  *(v29 + 32) = v4;

  sub_267EF5A48();
  v30 = sub_267EF5A58();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v30);
  MEMORY[0x26D605630](v29, v28);

  sub_267BC947C(v28);
  if (a2)
  {
    v31 = sub_267EF56F8();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v31);
    v32 = sub_267EF6748();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B78, &qword_267EFF020);
    sub_267EF56E8();
    OUTLINED_FUNCTION_6_50();
    *(swift_allocObject() + 16) = xmmword_267EFC020;

    OUTLINED_FUNCTION_5_66();
    OUTLINED_FUNCTION_5_66();
    sub_267EF56C8();
    OUTLINED_FUNCTION_5_66();
    OUTLINED_FUNCTION_5_66();
    sub_267EF5718();
    sub_267EF6698();
    sub_267EF6678();
    (*(v37 + 8))(v10, v38);
    (*(v20 + 8))(v24, v35);
  }

  sub_267EF5498();
}

uint64_t sub_267BC947C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CCB0, &qword_267F0D6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double OUTLINED_FUNCTION_94_1@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double OUTLINED_FUNCTION_94_3()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_94_5()
{
  __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));

  return sub_267EF3B68();
}

uint64_t OUTLINED_FUNCTION_94_7()
{
}

uint64_t sub_267BC963C(int a1)
{
  *(v1 + 24) = xmmword_267EFCA40;
  *(v1 + 40) = 0;
  *(v1 + 42) = 2;
  sub_267BCA2C8();
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 80) = sub_267EF8F28();
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 104) = 0;
  *(v1 + 128) = 1;
  type metadata accessor for SendMessageSelfContext();
  swift_allocObject();
  *(v1 + 136) = sub_267BC977C();
  *(v1 + 144) = 0;
  *(v1 + 152) = v3;
  *(v1 + 160) = v3;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 192) = sub_267EF8F28();
  type metadata accessor for AutoSendPersonalizationDataRecorder();
  *(v1 + 200) = 0;
  *(v1 + 207) = 0;
  swift_allocObject();
  *(v1 + 216) = sub_267BC986C();
  *(v1 + 328) = 0;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 265) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0;
  *(v1 + 18) = BYTE2(a1);
  *(v1 + 16) = a1;
  return v1;
}

id sub_267BC977C()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  result = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (result)
  {
    v2 = result;
    *(v0 + 16) = result;
    v3 = objc_allocWithZone(MEMORY[0x277D576E0]);
    v4 = v2;
    v5 = [v3 init];
    [v4 setSmsContext_];

    v6 = [*(v0 + 16) smsContext];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(MEMORY[0x277D57660]) init];
      [v7 setTapback_];
    }

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267BC986C()
{
  type metadata accessor for AutoSendPersonalizationDataRecorder.AutoSendPersonalizationData();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 34) = 1;
  *(v1 + 40) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t type metadata accessor for SendMessageCATs(uint64_t a1)
{
  result = qword_28022C978;
  if (!qword_28022C978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267BC9990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_267EF7B88();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v30);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v31);
  sub_267BC9B04(v25, &a9 - v32, &qword_280229E20, &unk_267EFDCC0);
  (*(v27 + 16))(v29, v23, v26);
  sub_267EF78B8();
  (*(v27 + 8))(v23, v26);
  sub_267B9FED8(v25, &qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BC9B04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_107_1(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_107_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[36] = a3;
  v4[37] = v3;
  v4[34] = a1;
  v4[35] = a2;

  return sub_267EF89E8();
}

void OUTLINED_FUNCTION_107_5()
{
  *(v3 - 144) = *(v0 + 1280);
  *(v3 - 136) = v2;
  *(v3 - 128) = *(v0 + 1136);
}

uint64_t OUTLINED_FUNCTION_107_7()
{
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;

  return sub_267EF26D8();
}

uint64_t OUTLINED_FUNCTION_107_8(uint64_t a1, uint64_t a2)
{

  return sub_267BB170C(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_107_10()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_59_8()
{
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;

  sub_267ECE290();
}

uint64_t OUTLINED_FUNCTION_59_13(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_59_16()
{
  *(*(v0 + 824) + 32) = *(v0 + 888);
}

uint64_t OUTLINED_FUNCTION_59_17@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = 0xE900000000000074;
  return 0;
}

id OUTLINED_FUNCTION_59_19()
{
  *(v1 + 96) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_95_6(uint64_t a1)
{
  *(v2 - 96) = *(v1 + 1336);

  return sub_267EF7C18();
}

void OUTLINED_FUNCTION_95_7(uint64_t a1)
{

  sub_267C7220C(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_95_8()
{

  return type metadata accessor for TextComponent(0);
}

void OUTLINED_FUNCTION_95_9()
{
}

uint64_t OUTLINED_FUNCTION_84_0()
{
  sub_267B9A5E8((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_84_1()
{

  return __swift_destroy_boxed_opaque_existential_0((v0 - 136));
}

uint64_t OUTLINED_FUNCTION_84_6()
{

  return sub_267EF8358();
}

void OUTLINED_FUNCTION_84_7(uint64_t a1@<X8>)
{
  *(a1 + 16) = v3;
  v5 = a1 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void *OUTLINED_FUNCTION_84_8(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a1[1] = a2;
  v20 = a19;

  return __swift_project_boxed_opaque_existential_0(&a16, v20);
}

double OUTLINED_FUNCTION_84_10()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_84_12()
{

  return sub_267EF47D8();
}

void OUTLINED_FUNCTION_108_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_108_5()
{
  *(v4 - 136) = v3;
  *(v4 - 128) = v2;
  *(v4 - 120) = *(v0 + 1120);
}

uint64_t OUTLINED_FUNCTION_108_8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_108_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_86_2()
{
  v2 = *(v0 - 152);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 176, v2);
}

uint64_t OUTLINED_FUNCTION_86_6()
{
  v2 = *(*(v0 + 456) + 40);

  return sub_267BAF0DC(v2);
}

uint64_t OUTLINED_FUNCTION_86_11(uint64_t a1)
{

  return sub_267EF8FE8();
}

unint64_t sub_267BCA2C8()
{
  result = qword_28022BB60;
  if (!qword_28022BB60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022BB60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_105_3(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

unint64_t OUTLINED_FUNCTION_105_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return sub_267BA33E8(v17, v18, va);
}

uint64_t OUTLINED_FUNCTION_105_9()
{
  v3 = *(v1 + 24);
  *(v0 + 128) = *(v1 + 16);
  *(v0 + 136) = v3;
}

uint64_t OUTLINED_FUNCTION_105_10()
{

  return sub_267EF5E08();
}

uint64_t OUTLINED_FUNCTION_105_11()
{
}

uint64_t OUTLINED_FUNCTION_126_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 200) = a1;
  *(v2 - 192) = v1;

  return type metadata accessor for SendMessageFlow(0);
}

double OUTLINED_FUNCTION_126_2()
{
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_126_4()
{
  __swift_project_boxed_opaque_existential_0((v0 + 336), *(v0 + 360));

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_126_5(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;

  return sub_267EF9018();
}

uint64_t OUTLINED_FUNCTION_110_4()
{
}

uint64_t OUTLINED_FUNCTION_110_5()
{
  result = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_110_6()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
  v4 = v3 + *(v2 + 24);

  return sub_267BD3DDC(v1, v4);
}

uint64_t OUTLINED_FUNCTION_110_7()
{

  return sub_267B9AFEC(v1 - 128, v0 + 128);
}

uint64_t OUTLINED_FUNCTION_110_10()
{

  return sub_267EF4198();
}

void sub_267BCA638()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v4 = v3;
  v52 = type metadata accessor for SendMessageFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6();
  v50 = v6;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C580, &qword_267F0AA88);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_62();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v18 = sub_267EF8A08();
  v19 = __swift_project_value_buffer(v18, qword_280240FB0);
  (*(v16 + 16))(v1, v4, v14);
  v51 = v19;
  v20 = sub_267EF89F8();
  v21 = sub_267EF95C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_48();
    v49 = v9;
    v23 = v22;
    v48 = OUTLINED_FUNCTION_52();
    v54 = v48;
    *v23 = 136315138;
    sub_267B9DEEC(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v24 = sub_267EF9E58();
    v25 = v13;
    v26 = v2;
    v28 = v27;
    v30 = *(v16 + 8);
    v29 = v16 + 8;
    v30(v1, v14);
    v31 = sub_267BA33E8(v24, v28, &v54);
    v2 = v26;
    v13 = v25;

    *(v23 + 4) = v31;
    _os_log_impl(&dword_267B93000, v20, v21, "#SendMessageFlow received input %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    OUTLINED_FUNCTION_32_0();
    v9 = v49;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v32 = *(v16 + 8);
    v29 = v16 + 8;
    v32(v1, v14);
  }

  sub_267BCAAC4(v13);
  v33 = sub_267EF4AE8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v33);
  sub_267B9F98C(v13, &qword_28022C580, &qword_267F0AA88);
  if (EnumTagSinglePayload != 1)
  {
    v35 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_44_21();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v37);
      _os_log_impl(&dword_267B93000, v35, v29, "#SendMessageFlow is running with flexible endpointer enabled", v9, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }

  v38 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  swift_beginAccess();
  sub_267BCACA4(v2 + v38, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_267B9F118(v9);
  if (EnumCaseMultiPayload)
  {

    v40 = sub_267EF89F8();
    v41 = sub_267EF95D8();

    if (OUTLINED_FUNCTION_99())
    {
      v42 = OUTLINED_FUNCTION_48();
      v43 = OUTLINED_FUNCTION_52();
      v53 = v43;
      *v42 = 136315138;
      sub_267BCACA4(v2 + v38, v50);
      v44 = sub_267EF9098();
      v46 = sub_267BA33E8(v44, v45, &v53);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_267B93000, v40, v41, "#SendMessageFlow input received in state %s, ignoring", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BCAAC4@<X0>(uint64_t a1@<X8>)
{
  v10[3] = &type metadata for Features;
  v10[4] = sub_267BAFCAC();
  LOBYTE(v10[0]) = 5;
  v2 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v10);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C588, &qword_267F0AA90);
    v3 = sub_267EF4AE8();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_267EFCC90;
    sub_267EF4AD8();
    sub_267EF4AC8();
    v10[0] = v4;
    sub_267B9DEEC(&qword_28022C590, MEMORY[0x277D5C098], MEMORY[0x277D5C0A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C598, &qword_267F0AA98);
    sub_267BC1E20(&qword_28022C5A0, &qword_28022C598, &qword_267F0AA98, MEMORY[0x277D83970]);
    sub_267EF99C8();
    v5 = a1;
    v6 = 0;
    v7 = 1;
    v8 = v3;
  }

  else
  {
    sub_267EF4AE8();
    OUTLINED_FUNCTION_78();
  }

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_267BCACA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BCAD14(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_267BAEBEC;

  return sub_267BCADB0();
}

uint64_t sub_267BCADB0()
{
  OUTLINED_FUNCTION_12();
  v1[168] = v0;
  v1[167] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229978, &unk_267EFEBD0);
  v1[169] = v3;
  v1[170] = *(v3 - 8);
  v1[171] = swift_task_alloc();
  v1[172] = swift_task_alloc();
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v4 = type metadata accessor for SendMessageFlow.State(0);
  v1[175] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[176] = swift_task_alloc();
  v1[177] = swift_task_alloc();
  v1[178] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267BCAEDC()
{
  v285 = v0;
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1344);
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  swift_beginAccess();
  sub_267BCACA4(v3 + v4, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v5 = *(v0 + 1424);
      v6 = *(v5 + 25);
      v7 = v5[1];
      *(v0 + 400) = *v5;
      *(v0 + 416) = v7;
      *(v0 + 425) = v6;
      sub_267BCC8AC();
      v8 = v0 + 400;
      goto LABEL_81;
    case 1u:
      v37 = OUTLINED_FUNCTION_55_15();
      *(v0 + 16) = v39;
      *(v0 + 32) = v38;
      *(v0 + 41) = v37;
      sub_267BCCFA4(v0 + 16, v0 + 256);
      if ((*(v0 + 296) & 1) == 0)
      {
        sub_267B9A5E8((v0 + 256), v0 + 816);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v190 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v190, qword_280240FB0);
        v191 = sub_267EF89F8();
        v192 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_27(v192))
        {
          v193 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_4_2(v193);
          OUTLINED_FUNCTION_14_2();
          _os_log_impl(v194, v195, v196, v197, v198, 2u);
          OUTLINED_FUNCTION_29_1();
        }

        sub_267B9AFEC(v0 + 816, v0 + 1096);
        sub_267B9AFEC(v0 + 816, v0 + 696);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229210, &qword_267EFCB98);
        type metadata accessor for SmsNLv4Intent(0);
        if (swift_dynamicCast())
        {
        }

        v199 = *(v0 + 1344);
        sub_267E00EFC();
        v201 = v200;
        sub_267B9AFEC(v199 + 16, v0 + 656);
        type metadata accessor for RequestSupportCheckFlow();
        swift_allocObject();
        *(v0 + 1320) = sub_267E90F8C((v0 + 1096), v201, (v0 + 656));
        sub_267B9AFEC(v0 + 816, v0 + 616);
        OUTLINED_FUNCTION_46_19();
        v202 = swift_allocObject();
        *(v202 + 16) = v199;
        sub_267B9A5E8((v0 + 616), v202 + 24);
        sub_267B9DEEC(&qword_280229230, type metadata accessor for RequestSupportCheckFlow, &unk_267F0DCA8);

        sub_267EF3FC8();

        __swift_destroy_boxed_opaque_existential_0((v0 + 816));
LABEL_80:
        v8 = v0 + 16;
LABEL_81:
        sub_267BCDB80(v8);
LABEL_119:
        OUTLINED_FUNCTION_4_56();

        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_46_0();

        __asm { BRAA            X1, X16 }
      }

      sub_267BCDB80(v0 + 256);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v40 = sub_267EF8A08();
      __swift_project_value_buffer(v40, qword_280240FB0);
      v41 = sub_267EF89F8();
      v42 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_27(v42))
      {
        v43 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v43);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v44, v45, v46, v47, v48, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v49 = *(sub_267BEC254() + 312);

      if (v49)
      {

        v50 = sub_267EF89F8();
        v51 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_10_2(v51))
        {
          v52 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v52);
          OUTLINED_FUNCTION_21();
          _os_log_impl(v53, v54, v55, v56, v57, 2u);
          OUTLINED_FUNCTION_26();
        }

        v58 = *(v0 + 1344);

        sub_267B9AFEC(v58 + 16, v0 + 1056);
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0(&qword_2802286F0);
        }

        sub_267B9AFEC(qword_2802405A0, v0 + 976);
        __swift_mutable_project_boxed_opaque_existential_1(v0 + 976, *(v0 + 1000));
        v59 = OUTLINED_FUNCTION_26_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
        v61 = swift_allocObject();
        v62 = sub_267E09464((v0 + 1056), v61, type metadata accessor for SendMessageCATs, MEMORY[0x277D55BF8]);
        __swift_destroy_boxed_opaque_existential_0((v0 + 976));
        *(v0 + 1288) = v62;
        sub_267BC1E20(&qword_28022C578, &qword_28022C570, &unk_267F0AA68, &unk_267EFD0A8);
        sub_267EF3FF8();

        goto LABEL_80;
      }

      v259 = *(v0 + 1416);
      sub_267BCCFA4(v0 + 16, v259);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3(v3 + v4, v0 + 1160);
      sub_267B9DC10(v259, v3 + v4);
      swift_endAccess();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 1432) = v153;
      *v153 = v260;
      v155 = sub_267BF0D5C;
      goto LABEL_110;
    case 2u:
      v9 = OUTLINED_FUNCTION_55_15();
      *(v0 + 448) = v11;
      *(v0 + 464) = v10;
      *(v0 + 473) = v9;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v12 = sub_267EF8A08();
      __swift_project_value_buffer(v12, qword_280240FB0);
      v13 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_44_21();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v15);
        OUTLINED_FUNCTION_66_16(&dword_267B93000, v13, v1, "#SendMessageFlow request is supported");
        OUTLINED_FUNCTION_18_2();
      }

      v16 = *(v0 + 1416);

      sub_267BCCFA4(v0 + 448, v16);
      OUTLINED_FUNCTION_44_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3(v3 + v4, v0 + 1184);
      sub_267B9DC10(v16, v3 + v4);
      swift_endAccess();
      OUTLINED_FUNCTION_14_38();
      v17 = OUTLINED_FUNCTION_10_3();
      v18(v17);
      __swift_project_boxed_opaque_existential_0((v0 + 1016), *(v0 + 1040));
      OUTLINED_FUNCTION_10_3();
      v19 = sub_267EF3C58();
      __swift_destroy_boxed_opaque_existential_0((v0 + 1016));
      if (v19)
      {
        v20 = sub_267EF89F8();
        v21 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_27(v21))
        {
          v22 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_4_2(v22);
          OUTLINED_FUNCTION_14_2();
          _os_log_impl(v23, v24, v25, v26, v27, 2u);
          OUTLINED_FUNCTION_29_1();
        }

        v28 = type metadata accessor for MessagesPostPersonalDomainActivityNotificationFlowStrategy();
        v29 = OUTLINED_FUNCTION_49(v28);
        v284[3] = v28;
        v284[4] = sub_267B9DEEC(&qword_28022C568, type metadata accessor for MessagesPostPersonalDomainActivityNotificationFlowStrategy, &unk_267F0BF08);
        v284[0] = v29;
        sub_267EF33A8();
        OUTLINED_FUNCTION_27_4();
        swift_allocObject();
        *(v0 + 1280) = sub_267EF3398();
        sub_267EF3FE8();
        sub_267BCDB80(v0 + 448);

        goto LABEL_119;
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 1440) = v153;
      *v153 = v189;
      v155 = sub_267BF0818;
      goto LABEL_110;
    case 3u:
      v110 = OUTLINED_FUNCTION_55_15();
      *(v0 + 304) = v112;
      *(v0 + 320) = v111;
      *(v0 + 329) = v110;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v113 = sub_267EF8A08();
      __swift_project_value_buffer(v113, qword_280240FB0);
      v114 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_44_21();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v116);
        OUTLINED_FUNCTION_66_16(&dword_267B93000, v114, v1, "#SendMessageFlow ready to start");
        OUTLINED_FUNCTION_18_2();
      }

      sub_267BCCFA4(v0 + 304, v0 + 352);
      if (*(v0 + 392))
      {
        v117 = *(v0 + 1408);
        v118 = *(v0 + 360);

        sub_267BCCFA4(v0 + 304, v117);
        v119 = [v118 attachments];
        if (v119)
        {
          v120 = v119;
          sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
          v121 = sub_267EF92F8();
        }

        else
        {

          v121 = 0;
        }

        v261 = *(v0 + 1408);
        *(v261 + 48) = v121;
        *(v261 + 56) = 0u;
        *(v261 + 72) = 0u;
        *(v261 + 81) = 0u;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3(v3 + v4, v0 + 1208);
        sub_267B9DC10(v261, v3 + v4);
        swift_endAccess();
        goto LABEL_109;
      }

      sub_267B9A5E8((v0 + 352), v0 + 856);
      OUTLINED_FUNCTION_14_38();
      v203 = OUTLINED_FUNCTION_10_3();
      v204(v203);
      __swift_project_boxed_opaque_existential_0((v0 + 896), *(v0 + 920));
      OUTLINED_FUNCTION_72_12();
      if (sub_267DBF8D8())
      {
        OUTLINED_FUNCTION_76_10();
        v205 = OUTLINED_FUNCTION_10_3();
        v207 = v206(v205);
        __swift_destroy_boxed_opaque_existential_0((v0 + 896));
        if (v207)
        {
          OUTLINED_FUNCTION_14_38();
          v208 = OUTLINED_FUNCTION_10_3();
          v209(v208);
          v210 = *(v0 + 968);
          __swift_project_boxed_opaque_existential_0((v0 + 936), *(v0 + 960));
          v211 = OUTLINED_FUNCTION_72_12();
          v213 = sub_267BCD18C(v211, v212);
          __swift_destroy_boxed_opaque_existential_0((v0 + 936));
          if ((v213 & 1) == 0)
          {
            OUTLINED_FUNCTION_76_10();
            v275 = OUTLINED_FUNCTION_10_3();
            v277 = v276(v275);
            if (v277 == 28)
            {
              goto LABEL_123;
            }

            if (sub_267D6D160(v277) == 0x65726168736E75 && v281 == 0xE700000000000000)
            {

              goto LABEL_85;
            }

            v210 = sub_267EF9EA8();

            if ((v210 & 1) == 0)
            {
LABEL_123:
              v278 = sub_267EF89F8();
              v279 = sub_267EF95C8();
              if (os_log_type_enabled(v278, v279))
              {
                v280 = OUTLINED_FUNCTION_32();
                OUTLINED_FUNCTION_4_2(v280);
                _os_log_impl(&dword_267B93000, v278, v279, "#SendMessageFlow device is locked for ShareThisRequest, prompting for unlock", v210, 2u);
                OUTLINED_FUNCTION_29_1();
              }

              sub_267E01ED8();
              sub_267BCDB80(v0 + 304);
              v247 = (v0 + 856);
LABEL_99:
              __swift_destroy_boxed_opaque_existential_0(v247);
              goto LABEL_119;
            }
          }

LABEL_85:
          swift_task_alloc();
          OUTLINED_FUNCTION_25();
          *(v0 + 1448) = v214;
          *v214 = v215;
          v214[1] = sub_267E0152C;
          OUTLINED_FUNCTION_46_0();

          return sub_267E02428();
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + 896));
      }

      v248 = sub_267EF89F8();
      v249 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_27(v249))
      {
        v250 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v250);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v251, v252, v253, v254, v255, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v256 = *(v0 + 1416);

      v257 = OUTLINED_FUNCTION_26_0();
      sub_267BCCFA4(v257, v258);
      *(v256 + 48) = 0;
      sub_267B9AFEC(v0 + 856, v256 + 56);
      *(v256 + 96) = 0;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3(v3 + v4, v0 + 1136);
      sub_267B9DC10(v256, v3 + v4);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_0((v0 + 856));
LABEL_109:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 1456) = v153;
      *v153 = v262;
      v155 = sub_267BF0624;
LABEL_110:
      v153[1] = v155;
      OUTLINED_FUNCTION_46_0();

      return sub_267BCADB0();
    case 4u:
      v122 = *(v0 + 1424);
      v123 = *(v122 + 40);
      sub_267B9A5E8(v122, v0 + 736);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v124 = sub_267EF8A08();
      *(v0 + 1472) = OUTLINED_FUNCTION_30_1(v124, qword_280240FB0);
      v125 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_44_21();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v127);
        OUTLINED_FUNCTION_45_21(&dword_267B93000, v128, v129, "#SendMessageFlow presenting share sheet");
        OUTLINED_FUNCTION_18_2();
      }

      if (sub_267BAF0DC(v123))
      {
        sub_267BBD0EC(0, (v123 & 0xC000000000000001) == 0, v123);
        if ((v123 & 0xC000000000000001) != 0)
        {
          v130 = MEMORY[0x26D609870](0, v123);
        }

        else
        {
          v130 = *(v123 + 32);
        }

        v131 = v130;
        *(v0 + 1480) = v130;
        v132 = *(v0 + 1344);

        __swift_project_boxed_opaque_existential_0((v132 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider), *(v132 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider + 24));
        v133 = v132[6];
        __swift_project_boxed_opaque_existential_0(v132 + 2, v132[5]);
        v134 = *(v133 + 8);
        v135 = v131;
        v136 = OUTLINED_FUNCTION_44_0();
        v134(v136);
        v137 = swift_task_alloc();
        *(v0 + 1488) = v137;
        *v137 = v0;
        v137[1] = sub_267E0181C;
        OUTLINED_FUNCTION_46_0();

        return sub_267CACE24();
      }

      v239 = sub_267EF89F8();
      v240 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_10_2(v240))
      {
        v241 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v241);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v242, v243, v244, v245, v246, 2u);
        OUTLINED_FUNCTION_26();
      }

      sub_267EF4018();
      v247 = (v0 + 736);
      goto LABEL_99;
    case 5u:
      v30 = *(v0 + 1424);
      v31 = *(v30 + 25);
      v32 = v30[1];
      *(v0 + 208) = *v30;
      *(v0 + 224) = v32;
      *(v0 + 233) = v31;
      sub_267B9F98C(v30 + 56, &unk_28022BBF0, &unk_267F01C60);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v33 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
      v34 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_44_21();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v36);
        OUTLINED_FUNCTION_66_16(&dword_267B93000, v34, v1, "#SendMessageFlow pushing RCH Flow");
        OUTLINED_FUNCTION_18_2();
      }

      sub_267BEB588();

      v8 = v0 + 208;
      goto LABEL_81;
    case 6u:
      v63 = **(v0 + 1424);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v64 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v64, qword_280240FB0);
      v65 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_44_21();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v67);
        OUTLINED_FUNCTION_45_21(&dword_267B93000, v68, v69, "#SendMessageFlow request is not supported");
        OUTLINED_FUNCTION_18_2();
      }

      v70 = v63;
      v71 = sub_267EF89F8();
      sub_267EF95D8();

      if (!OUTLINED_FUNCTION_99())
      {
        goto LABEL_40;
      }

      v72 = OUTLINED_FUNCTION_48();
      v73 = OUTLINED_FUNCTION_52();
      v284[0] = v73;
      *v72 = 136315138;
      *(v0 + 1296) = v63;
      v74 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v75 = sub_267EF9098();
      v77 = sub_267BA33E8(v75, v76, v284);

      *(v72 + 4) = v77;
      goto LABEL_39;
    case 7u:
      v63 = **(v0 + 1424);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v78 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v78, qword_280240FB0);
      v79 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_44_21();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v81);
        OUTLINED_FUNCTION_45_21(&dword_267B93000, v82, v83, "#SendMessageFlow request check failed");
        OUTLINED_FUNCTION_18_2();
      }

      v84 = v63;
      v71 = sub_267EF89F8();
      sub_267EF95D8();

      if (!OUTLINED_FUNCTION_99())
      {
        goto LABEL_40;
      }

      v85 = OUTLINED_FUNCTION_48();
      v73 = OUTLINED_FUNCTION_52();
      v284[0] = v73;
      *v85 = 136315138;
      *(v0 + 1312) = v63;
      v86 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v87 = sub_267EF9098();
      v89 = sub_267BA33E8(v87, v88, v284);

      *(v85 + 4) = v89;
LABEL_39:
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v90, v91, v92, v93, v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_29_1();
LABEL_40:

      sub_267EF4018();
      goto LABEL_119;
    case 8u:
      v156 = *(v0 + 1424);
      v157 = (v156 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C538, &qword_267F0AA48) + 48));
      OUTLINED_FUNCTION_59_0();
      v158();
      v159 = *(v157 + 25);
      v160 = v157[1];
      *(v0 + 64) = *v157;
      *(v0 + 80) = v160;
      *(v0 + 89) = v159;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v161 = *(v0 + 1392);
      v162 = *(v0 + 1384);
      v163 = *(v0 + 1360);
      v164 = *(v0 + 1352);
      v165 = sub_267EF8A08();
      __swift_project_value_buffer(v165, qword_280240FB0);
      v166 = *(v163 + 16);
      v166(v162, v161, v164);
      v167 = sub_267EF89F8();
      v168 = sub_267EF95D8();
      v169 = OUTLINED_FUNCTION_27(v168);
      v170 = *(v0 + 1384);
      v283 = v166;
      if (v169)
      {
        v171 = *(v0 + 1376);
        v172 = *(v0 + 1360);
        v173 = *(v0 + 1352);
        v174 = OUTLINED_FUNCTION_48();
        v175 = OUTLINED_FUNCTION_52();
        v176 = v166;
        v177 = v175;
        v284[0] = v175;
        *v174 = 136315138;
        v176(v171, v170, v173);
        v178 = sub_267EF9098();
        v180 = v179;
        v181 = v173;
        v182 = *(v172 + 8);
        v182(v170, v181);
        v183 = sub_267BA33E8(v178, v180, v284);

        *(v174 + 4) = v183;
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v184, v185, v186, v187, v188, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v177);
        OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_29_1();
      }

      else
      {
        v217 = *(v0 + 1360);
        v218 = *(v0 + 1352);

        v182 = *(v217 + 8);
        v182(v170, v218);
      }

      sub_267C2FB6C(v0 + 64, v0 + 160, &qword_28022C4A8, &qword_267F0A8E0);
      if (*(v0 + 200) == 255)
      {
        sub_267B9F98C(v0 + 160, &qword_28022C4A8, &qword_267F0A8E0);
      }

      else
      {
        v219 = *(v0 + 1344);
        v220 = *(v0 + 176);
        *(v0 + 112) = *(v0 + 160);
        *(v0 + 128) = v220;
        *(v0 + 137) = *(v0 + 185);
        sub_267BEC254();
        OUTLINED_FUNCTION_14_38();
        v221 = OUTLINED_FUNCTION_10_3();
        v222(v221);
        v223 = sub_267D60DB0();

        __swift_destroy_boxed_opaque_existential_0((v0 + 496));
        if (v223)
        {
          v283(*(v0 + 1368), *(v0 + 1392), *(v0 + 1352));
          v224 = OUTLINED_FUNCTION_108();
          v226 = v225(v224);
          v227 = *(v0 + 1368);
          if (v226 == *MEMORY[0x277D5BCA0])
          {
            v228 = OUTLINED_FUNCTION_108();
            v229(v228);
            v230 = *(v227 + 16);

            if ([v230 code] == 3)
            {
              v231 = sub_267EF89F8();
              v232 = sub_267EF95C8();
              if (os_log_type_enabled(v231, v232))
              {
                v233 = OUTLINED_FUNCTION_32();
                *v233 = 0;
                _os_log_impl(&dword_267B93000, v231, v232, "#SendMessageFlow pushing SendMessageFollowupOfferFlow", v233, 2u);
                OUTLINED_FUNCTION_32_0();
              }

              v234 = *(v0 + 1392);
              v235 = *(v0 + 1352);

              sub_267B9AFEC(v219 + 16, v0 + 536);
              *(v0 + 600) = &type metadata for MessagesFeatureFlagsImpl;
              *(v0 + 608) = off_2878D1228;
              __swift_mutable_project_boxed_opaque_existential_1(v0 + 576, &type metadata for MessagesFeatureFlagsImpl);
              v236 = sub_267E093CC((v0 + 536));
              __swift_destroy_boxed_opaque_existential_0((v0 + 576));
              *(v0 + 1328) = v236;
              type metadata accessor for SendMessageFollowupOfferFlow();
              sub_267B9DEEC(&qword_28022C560, type metadata accessor for SendMessageFollowupOfferFlow, &unk_267F07E70);
              sub_267EF3FF8();

              sub_267BCDB80(v0 + 112);
              sub_267B9F98C(v0 + 64, &qword_28022C4A8, &qword_267F0A8E0);
              v237 = v234;
              v238 = v235;
LABEL_118:
              v182(v237, v238);
              goto LABEL_119;
            }

            sub_267BCDB80(v0 + 112);
          }

          else
          {
            sub_267BCDB80(v0 + 112);
            v264 = OUTLINED_FUNCTION_108();
            (v182)(v264);
          }
        }

        else
        {
          sub_267BCDB80(v0 + 112);
        }
      }

      v265 = sub_267EF89F8();
      v266 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v266))
      {
        v267 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v267);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v268, v269, v270, v271, v272, 2u);
        OUTLINED_FUNCTION_26();
      }

      sub_267EF4018();
      sub_267B9F98C(v0 + 64, &qword_28022C4A8, &qword_267F0A8E0);
      v237 = OUTLINED_FUNCTION_26_0();
      goto LABEL_118;
    case 0xAu:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v140 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v140, qword_280240FB0);
      v141 = sub_267EF89F8();
      v142 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_10_2(v142))
      {
        v143 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v143);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v144, v145, v146, v147, v148, 2u);
        OUTLINED_FUNCTION_26();
      }

      v149 = *(v0 + 1416);
      v150 = *(v0 + 1360);
      v151 = *(v0 + 1352);

      v152 = v149 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C538, &qword_267F0AA48) + 48);
      (*(v150 + 104))(v149, *MEMORY[0x277D5BCA8], v151);
      *(v152 + 32) = 0;
      *v152 = 0u;
      *(v152 + 16) = 0u;
      *(v152 + 40) = -1;
      OUTLINED_FUNCTION_26_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3(v3 + v4, v0 + 1232);
      sub_267B9DC10(v149, v3 + v4);
      swift_endAccess();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 1464) = v153;
      *v153 = v154;
      v155 = sub_267E016AC;
      goto LABEL_110;
    default:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v95 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v95, qword_280240FB0);

      v96 = sub_267EF89F8();
      v97 = sub_267EF95E8();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = *(v0 + 1416);
        v99 = OUTLINED_FUNCTION_48();
        v100 = OUTLINED_FUNCTION_52();
        v284[0] = v100;
        *v99 = 136315138;
        sub_267BCACA4(v3 + v4, v98);
        OUTLINED_FUNCTION_44_0();
        v101 = sub_267EF9098();
        v103 = sub_267BA33E8(v101, v102, v284);

        *(v99 + 4) = v103;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v100);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      v109 = *(v0 + 1424);
      sub_267EF4018();
      sub_267B9F118(v109);
      goto LABEL_119;
  }
}

void sub_267BCC8AC()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v4 = v3;
  type metadata accessor for SendMessageFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v37 = v7 - v6;
  OUTLINED_FUNCTION_26_2();
  v39 = sub_267EF3488();
  v8 = *(v39 - 8);
  v9 = v8;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_62();
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229218, &unk_267EFCBA0);
  v38 = *(v8 + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_267EFC020;
  sub_267EF3468();
  *(v10 + 16) = v11;
  v12 = (v10 + 16);
  if ((sub_267BCCEF4() & 1) == 0)
  {
    sub_267EF3458();
    sub_267BCCFDC();
    OUTLINED_FUNCTION_68_11();
    OUTLINED_FUNCTION_26_27();
    v14 = OUTLINED_FUNCTION_58_11(v13);
    v15(v14);
    *v12 = v11;
  }

  sub_267BCCFA4(v4, &v43);
  if (v44[24])
  {
    v16 = *(&v43 + 1);

    OUTLINED_FUNCTION_62_0();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v0;
    type metadata accessor for SendMessageUnlockCheckFlow();
    sub_267B9DEEC(&qword_28022AC80, type metadata accessor for SendMessageUnlockCheckFlow, &unk_267F0AD00);
    v18 = v16;

    sub_267EF3498();
    sub_267BCCFDC();
    OUTLINED_FUNCTION_68_11();

    OUTLINED_FUNCTION_26_27();
    v20 = OUTLINED_FUNCTION_58_11(v19);
    v21(v20);
    *v12 = v17;
  }

  else
  {
    sub_267BCDB80(&v43);
  }

  sub_267BCCFA4(v4, &v43);
  if (v44[24] == 1)
  {
    sub_267BCDB80(&v43);
    goto LABEL_22;
  }

  sub_267B9A5E8(&v43, v40);
  v22 = v41;
  v23 = v42;
  __swift_project_boxed_opaque_existential_0(v40, v41);
  v24 = (*(v23 + 440))(v22, v23);
  if (v24 == 17)
  {
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v40);
    goto LABEL_22;
  }

  v25 = 0xEA00000000006E6FLL;
  if (sub_267D6CFAC(v24) == 0x697461636F4C796DLL && v26 == 0xEA00000000006E6FLL)
  {
  }

  else
  {
    v28 = sub_267EF9EA8();

    if ((v28 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v29 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
  v30 = sub_267EF89F8();
  v31 = sub_267EF95C8();
  if (os_log_type_enabled(v30, v31))
  {
    v25 = OUTLINED_FUNCTION_32();
    *v25 = 0;
    _os_log_impl(&dword_267B93000, v30, v31, "#SendMessageFlow appending SiriiOSLocationAccessGuardFlow", v25, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF3828();
  sub_267EF3498();
  sub_267BCCFDC();
  OUTLINED_FUNCTION_68_11();
  OUTLINED_FUNCTION_26_27();
  (*(v9 + 32))(v32 + v25 * v38, v1, v39);
  *v12 = v30;
  __swift_destroy_boxed_opaque_existential_0(v40);
LABEL_22:

  v33 = sub_267EF2F28();

  swift_storeEnumTagMultiPayload();
  v34 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  OUTLINED_FUNCTION_66_3(v2 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state, &v43);
  sub_267B9DC10(v37, v2 + v34);
  swift_endAccess();
  v40[0] = v33;
  sub_267BCCFA4(v4, &v43);
  v35 = swift_allocObject();
  *(v35 + 16) = v10;
  *(v35 + 24) = v2;
  v36 = *v44;
  *(v35 + 32) = v43;
  *(v35 + 48) = v36;
  *(v35 + 57) = *&v44[9];
  sub_267EF3428();

  sub_267EF3FC8();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BCCE14()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267BCCE4C()
{

  if (*(v0 + 72))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_267BCCEB8()
{

  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_267BCCEF4()
{
  sub_267BCCFA4(v0, &v8);
  if (v9)
  {
    v1 = *(&v8 + 1);

    v2 = sub_267EF96E8();

    v3 = v2 ^ 1;
  }

  else
  {
    sub_267B9A5E8(&v8, v7);
    __swift_project_boxed_opaque_existential_0(v7, v7[3]);
    v4 = OUTLINED_FUNCTION_26_0();
    v3 = v5(v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v3 & 1;
}

uint64_t sub_267BCCFF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_267B9AFEC(a2 + 16, v7);
  type metadata accessor for SiriKitFlowFactoryImpl();
  v5 = swift_allocObject();
  result = sub_267BCD068(a1, v7, v5);
  *a3 = result;
  return result;
}

uint64_t sub_267BCD068(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = type metadata accessor for SiriKitFlowFactoryImpl();
  v15[3] = v6;
  v15[4] = &off_2878CFE90;
  v15[0] = a3;
  type metadata accessor for SendMessageUnlockCheckFlow();
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v15, v6);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v11 = (v10 - v9);
  (*(v12 + 16))(v10 - v9);
  v13 = *v11;
  *(v7 + 96) = v6;
  *(v7 + 104) = &off_2878CFE90;
  *(v7 + 56) = 2;
  *(v7 + 64) = a1;
  *(v7 + 72) = v13;
  sub_267B9A5E8(a2, v7 + 16);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v7;
}

uint64_t sub_267BCD18C(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF43F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267EF43E8();
  v6 = sub_267EF3BB8();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_267BCD274@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267BCD2A0();
  *a1 = result;
  return result;
}

uint64_t sub_267BCD2BC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SendMessageFlow.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);

    v11 = sub_267EF89F8();
    v12 = sub_267EF95D8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v41[0] = v14;
      *v13 = 136315138;
      swift_beginAccess();
      v15 = sub_267EF3488();

      v17 = MEMORY[0x26D608FD0](v16, v15);
      v19 = v18;

      v20 = sub_267BA33E8(v17, v19, v41);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_267B93000, v11, v12, "#SendMessageFlow Guard flows failed, request unsupported, guards=%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x26D60A7B0](v14, -1, -1);
      MEMORY[0x26D60A7B0](v13, -1, -1);
    }

    sub_267C266B0();
    v21 = swift_allocError();
    *v22 = 0xD000000000000012;
    v22[1] = 0x8000000267F1B020;
    *v9 = v21;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v23 = sub_267EF8A08();
    __swift_project_value_buffer(v23, qword_280240FB0);

    v24 = sub_267EF89F8();
    v25 = sub_267EF95D8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41[0] = v40;
      *v26 = 136315138;
      swift_beginAccess();
      v27 = a3;
      v28 = sub_267EF3488();

      v30 = MEMORY[0x26D608FD0](v29, v28);
      v31 = a4;
      v33 = v32;

      v34 = v30;
      a3 = v27;
      v35 = sub_267BA33E8(v34, v33, v41);
      a4 = v31;

      *(v26 + 4) = v35;
      _os_log_impl(&dword_267B93000, v24, v25, "#SendMessageFlow Guard flows passed, guards=%s", v26, 0xCu);
      v36 = v40;
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x26D60A7B0](v36, -1, -1);
      MEMORY[0x26D60A7B0](v26, -1, -1);
    }

    sub_267BCCFA4(a4, v9);
  }

  swift_storeEnumTagMultiPayload();
  v37 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  swift_beginAccess();
  sub_267B9DC10(v9, a3 + v37);
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_109_1()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 504));

  return __swift_destroy_boxed_opaque_existential_0((v0 + 544));
}

uint64_t OUTLINED_FUNCTION_109_2()
{
}

uint64_t OUTLINED_FUNCTION_109_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + 256) = a20;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_267C26980(v6, v5 + v4, a3, a4);
}

double OUTLINED_FUNCTION_128_0()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_128_2()
{

  return sub_267EF82C8();
}

uint64_t OUTLINED_FUNCTION_128_3()
{
}

void OUTLINED_FUNCTION_106_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_267BF4EE8();
}

uint64_t OUTLINED_FUNCTION_106_1()
{

  return sub_267BBF2B0(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_106_3@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 32);
  *(v1 + 176) = result;
  *(v1 + 184) = *(result + 16);
  return result;
}

void OUTLINED_FUNCTION_106_4()
{

  JUMPOUT(0x26D609870);
}

uint64_t OUTLINED_FUNCTION_106_6()
{
}

void sub_267BCD994(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_22(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_19();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_19();

    MEMORY[0x2821FE820](v9);
  }
}

void *sub_267BCDA64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_22_8();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_267BCDBB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BCE5E4;

  return sub_267BCDC4C(a1);
}

uint64_t sub_267BCDC4C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_267EF43F8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BCDD0C, 0, 0);
}

uint64_t sub_267BCDD0C(uint64_t a1)
{
  v23 = v1;
  v2 = *(v1 + 32);
  v3 = *(v2 + 56);
  if (v3 != 2)
  {
    if (v3 == 3)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v4 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);

      v5 = sub_267EF89F8();
      v6 = sub_267EF95E8();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v22 = v8;
        *v7 = 136315138;
        *(v1 + 64) = *(v2 + 56);
        v9 = sub_267EF9098();
        v11 = sub_267BA33E8(v9, v10, &v22);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_267B93000, v5, v6, "#SendMessageUnlockCheckFlow execute() called in an unexpected state: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }
    }

    goto LABEL_8;
  }

  if ((sub_267BCE0A0() & 1) == 0)
  {
    *(v2 + 56) = 0;
LABEL_8:
    sub_267EF4018();
    goto LABEL_9;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v14 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
  v15 = sub_267EF89F8();
  v16 = sub_267EF95C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_32();
    *v17 = 0;
    _os_log_impl(&dword_267B93000, v15, v16, "#SendMessageUnlockCheckFlow pushing unlock flow", v17, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v19 = *(v1 + 48);
  v18 = *(v1 + 56);
  v20 = *(v1 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229218, &unk_267EFCBA0);
  sub_267EF3488();
  *(swift_allocObject() + 16) = xmmword_267EFC020;
  sub_267EF43E8();
  sub_267EF3478();
  (*(v19 + 8))(v18, v20);
  v21 = sub_267EF2F28();

  *(v2 + 56) = 3;
  *(v1 + 16) = v21;
  sub_267EF3428();

  sub_267EF3FC8();

LABEL_9:

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_267BCE0A0()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  (*(v3 + 8))(v54, v2, v3);
  v4 = v55;
  v5 = v56;
  __swift_project_boxed_opaque_existential_0(v54, v55);
  LOBYTE(v4) = sub_267BCD18C(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v54);
  if ((v4 & 1) == 0)
  {
    v14 = v1[8];
    sub_267D28AC8();
    if (v15)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v16 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
      v7 = sub_267EF89F8();
      v17 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_78_7(v17))
      {
        v18 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_7_10(v18);
        v21 = "#SendMessageUnlockCheckFlow request to send location, require unlock";
LABEL_11:
        OUTLINED_FUNCTION_5_54(&dword_267B93000, v19, v20, v21);
        v13 = 1;
        goto LABEL_12;
      }

LABEL_54:
      v13 = 1;
      goto LABEL_55;
    }

    v22 = v1[5];
    v23 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v22);
    (*(v23 + 8))(v54, v22, v23);
    __swift_project_boxed_opaque_existential_0(v54, v55);
    v24 = sub_267EF3C58();
    __swift_destroy_boxed_opaque_existential_0(v54);
    if (v24)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v25 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
      v7 = sub_267EF89F8();
      v26 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_78_7(v26))
      {
        v27 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_7_10(v27);
        v12 = "#SendMessageUnlockCheckFlow request is from HomePod, don't require unlock";
        goto LABEL_5;
      }
    }

    else
    {
      v28 = [v14 recipients];
      if (v28)
      {
        v29 = v28;
        sub_267BCA2C8();
        v30 = sub_267EF92F8();

        if (sub_267BAF0DC(v30) >= 2)
        {
          v31 = sub_267BAF0DC(v30);
          v32 = 0;
          while (v31 != v32)
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v33 = MEMORY[0x26D609870](v32, v30);
            }

            else
            {
              if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_59;
              }

              v33 = *(v30 + 8 * v32 + 32);
            }

            v34 = v33;
            if (__OFADD__(v32, 1))
            {
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            v35 = sub_267DEAFF8();

            ++v32;
            if (v35)
            {

              if (qword_280228818 != -1)
              {
                OUTLINED_FUNCTION_0(&qword_280228818);
              }

              v50 = sub_267EF8A08();
              OUTLINED_FUNCTION_30_1(v50, qword_280240FB0);
              v7 = sub_267EF89F8();
              v51 = sub_267EF95C8();
              if (OUTLINED_FUNCTION_78_7(v51))
              {
                v52 = OUTLINED_FUNCTION_32();
                OUTLINED_FUNCTION_7_10(v52);
                v21 = "#SendMessageUnlockCheckFlow sending to multiple unresolved recipients, require unlock";
                goto LABEL_11;
              }

              goto LABEL_54;
            }
          }
        }
      }

      v36 = [v14 recipients];
      if (v36)
      {
        v37 = v36;
        sub_267BCA2C8();
        v38 = sub_267EF92F8();

        v39 = sub_267BAF0DC(v38);
        v40 = 0;
        do
        {
          if (v39 == v40)
          {

            goto LABEL_41;
          }

          if ((v38 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x26D609870](v40, v38);
          }

          else
          {
            if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v41 = *(v38 + 8 * v40 + 32);
          }

          if (__OFADD__(v40, 1))
          {
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v42 = v41;
          v43 = sub_267DE9BAC();

          ++v40;
        }

        while ((v43 & 1) == 0);

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v47 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
        v7 = sub_267EF89F8();
        v48 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_78_7(v48))
        {
          v49 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_7_10(v49);
          v21 = "#SendMessageUnlockCheckFlow sending to handle value only recipient, require unlock";
          goto LABEL_11;
        }

        goto LABEL_54;
      }

LABEL_41:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v44 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
      v7 = sub_267EF89F8();
      v45 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_78_7(v45))
      {
        v46 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_7_10(v46);
        v12 = "#SendMessageUnlockCheckFlow don't require unlock";
        goto LABEL_5;
      }
    }

LABEL_45:
    v13 = 0;
    goto LABEL_55;
  }

  if (qword_280228818 != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v6 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95C8();
  if (!OUTLINED_FUNCTION_78_7(v8))
  {
    goto LABEL_45;
  }

  v9 = OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_7_10(v9);
  v12 = "#SendMessageUnlockCheckFlow device is authenticated, don't require unlock";
LABEL_5:
  OUTLINED_FUNCTION_5_54(&dword_267B93000, v10, v11, v12);
  v13 = 0;
LABEL_12:
  OUTLINED_FUNCTION_32_0();
LABEL_55:

  return v13;
}

uint64_t sub_267BCE5E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id OUTLINED_FUNCTION_127()
{
  *(v1 + 1152) = v0;

  return v0;
}

double OUTLINED_FUNCTION_127_0()
{
  result = 0.0;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_127_2(uint64_t a1)
{

  return sub_267EF9098();
}

uint64_t OUTLINED_FUNCTION_127_4()
{
}

__n128 *OUTLINED_FUNCTION_127_5(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 + 128) = v3;
  return result;
}

uint64_t sub_267BCE788(void *a1)
{
  v2 = v1;
  result = sub_267BCEA0C(a1);
  if (result)
  {
    v4 = result;
    v5 = sub_267BAF0DC(result);
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v26 = v4 & 0xC000000000000001;
    v27 = v4;
    v25 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5 == v6)
      {
      }

      if (v7)
      {
        v9 = MEMORY[0x26D609870](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_24;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (sub_267DEAFF8())
      {
        [v10 mutableCopy];
        sub_267EF99B8();
        swift_unknownObjectRelease();
        sub_267BCA2C8();
        swift_dynamicCast();
        [v28 setAlternatives_];
        swift_beginAccess();
        v11 = v28;
        swift_isUniquelyReferenced_nonNull_native();
        v12 = *(v2 + 80);
        v28 = v12;
        v13 = v2;
        *(v2 + 80) = 0x8000000000000000;
        v14 = sub_267C94B6C(v6);
        if (__OFADD__(v12[2], (v15 & 1) == 0))
        {
          goto LABEL_25;
        }

        v16 = v14;
        v17 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B590, &unk_267F065E0);
        if (sub_267EF9C68())
        {
          v18 = sub_267C94B6C(v6);
          if ((v17 & 1) != (v19 & 1))
          {
            goto LABEL_27;
          }

          v16 = v18;
        }

        if (v17)
        {
          v20 = v12[7];
          v21 = *(v20 + 8 * v16);
          *(v20 + 8 * v16) = v11;
        }

        else
        {
          v12[(v16 >> 6) + 8] |= 1 << v16;
          *(v12[6] + 8 * v16) = v6;
          *(v12[7] + 8 * v16) = v11;
          v22 = v12[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_26;
          }

          v12[2] = v24;
        }

        v2 = v13;
        *(v13 + 80) = v12;
        swift_endAccess();

        v7 = v26;
        v4 = v27;
        v8 = v25;
      }

      else
      {
        v11 = v10;
      }

      ++v6;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_267EF9F28();
    __break(1u);
  }

  return result;
}

uint64_t sub_267BCEA0C(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267BCEA94()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 448) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267BCEBC8(uint64_t a1)
{
  v2 = sub_267EF89F8();
  v3 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#Gatekeeper returning output");
    OUTLINED_FUNCTION_26();
  }

  v8 = *(v1 + 328);
  v7 = *(v1 + 336);
  v9 = *(v1 + 312);
  v10 = *(v1 + 320);
  v11 = *(v1 + 224);

  v12 = OUTLINED_FUNCTION_68_0();
  v13(v12);
  sub_267B9A5E8((v1 + 96), v11);
  v14 = *(v10 + 8);
  v14(v8, v9);
  v14(v7, v9);

  OUTLINED_FUNCTION_17();

  return v15();
}

uint64_t sub_267BCED24()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BCEE20()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 240);
  sub_267B9A5E8((v0 + 112), v0 + 72);
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v2 = OUTLINED_FUNCTION_26_0();
  v3(v2);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  __swift_project_boxed_opaque_existential_0((v0 + 152), v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 264) = v6;
  *v6 = v7;
  v6[1] = sub_267E1B770;

  return MEMORY[0x2821BB5D0](v0 + 72, v4, v5);
}

uint64_t sub_267BCEF64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v2);
  v3 = sub_267EF3CF8();
  v4 = OUTLINED_FUNCTION_18(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  sub_267EF3CA8();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267BB93FC();
  sub_267EF4818();
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v6 = OUTLINED_FUNCTION_53_0();
  v7(v6, v5);
  OUTLINED_FUNCTION_131(v9);
  sub_267BCF0D8();
  sub_267EF4898();
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_267BCF0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v14 = *(v12 + 240);
  *(v12 + 312) = v14;
  v15 = v14;
  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v13 = 136315138;
    v18 = [v15 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    v19 = OUTLINED_FUNCTION_61_4();
    v22 = sub_267BA33E8(v19, v20, v21);

    *(v13 + 4) = v22;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_210_1();
  OUTLINED_FUNCTION_129_4();
  if (!v28)
  {

LABEL_13:
    if ((sub_267EF4878() & 1) == 0)
    {
      v46 = [*(v12 + 312) visual];
      if (v46)
      {
        OUTLINED_FUNCTION_263_1(v46);
        OUTLINED_FUNCTION_262_1();
        v47 = OUTLINED_FUNCTION_37_1();
        sub_267BBE0DC(v47, v48);
        v46 = sub_267EF47C8();
      }

      else
      {
        v49 = 0;
      }

      OUTLINED_FUNCTION_120_8(v46, v49);
    }

    v50 = OUTLINED_FUNCTION_260_1();
    OUTLINED_FUNCTION_97(v50);
    v51 = sub_267EF4188();
    v52 = OUTLINED_FUNCTION_28_37(v51);
    v53(v52);
    __swift_project_boxed_opaque_existential_0((v12 + 56), *(v12 + 80));
    OUTLINED_FUNCTION_7_1();
    sub_267EF3C48();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v12 + 360) = v54;
    *v54 = v55;
    OUTLINED_FUNCTION_8_61(v54);
    OUTLINED_FUNCTION_46();

    return sub_267BCF3A4(v56, v57, v58, v59, v60);
  }

  sub_267ED9A8C(v15);
  OUTLINED_FUNCTION_74_0();

  if (v17 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v29 = OUTLINED_FUNCTION_108();
  sub_267BBE0C8(v29, v30);
  *(v12 + 120) = &type metadata for Features;
  v31 = sub_267BAFCAC();
  OUTLINED_FUNCTION_303_0(v31);
  OUTLINED_FUNCTION_381();
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  v32 = *(v12 + 136);
  *(v12 + 328) = v32;
  if (!v32)
  {
    goto LABEL_13;
  }

  v32;
  v33 = sub_267EF89F8();
  v34 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v34))
  {
    v35 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v35);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v41 = swift_task_alloc();
  v42 = OUTLINED_FUNCTION_89_9(v41);
  *v42 = v43;
  OUTLINED_FUNCTION_26_38(v42);
  OUTLINED_FUNCTION_46();

  return sub_267CA9190();
}

uint64_t OUTLINED_FUNCTION_234_0(uint64_t a1, __n128 a2)
{
  *(v3 + 24) = v2;
  v2[1] = a2;
  v2[3].n128_u8[0] = 0;

  return swift_task_alloc();
}

uint64_t sub_267BCF3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v11 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  v9 = swift_task_alloc();
  *(v5 + 32) = v9;
  *v9 = v5;
  v9[1] = sub_267BF34C8;

  return v11(a1, a2, a3);
}

uint64_t sub_267BCF474(void *a1)
{
  v2 = [a1 messages];

  if (!v2)
  {
    return 0;
  }

  sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267BCF4EC()
{
  if ((sub_267BD1028() & 1) == 0)
  {
    return 0;
  }

  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FD8();

  v0 = sub_267EF7178();

  return v0 & 1;
}

void sub_267BCF554()
{
  v80 = v0;
  v1 = v0[18];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state;
  swift_beginAccess();
  sub_267BDA120(v2 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v0[19] = *v0[18];
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[20] = v5;
      *v5 = v6;
      v5[1] = sub_267C4B0B4;
LABEL_13:
      OUTLINED_FUNCTION_15();

      sub_267C4B56C();
      return;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v34 = sub_267EF8A08();
    __swift_project_value_buffer(v34, qword_280240FB0);

    v35 = sub_267EF89F8();
    v36 = sub_267EF95E8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v0[17];
      v38 = OUTLINED_FUNCTION_48();
      v39 = swift_slowAlloc();
      v79[0] = v39;
      *v38 = 136315138;
      sub_267BDA120(v2 + v3, v37);
      v40 = sub_267EF9098();
      v42 = sub_267BA33E8(v40, v41, v79);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_267B93000, v35, v36, "#SearchForMessagesHandleIntentFlow execute() called in an unexpected state: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v43 = v0[18];
    sub_267EF4018();
    sub_267C4BE04(v43);
    goto LABEL_33;
  }

  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[15];
  v78 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229698, &unk_267EFDF80);
  (*(v11 + 32))(v9, v7, v10);
  v12 = *(v11 + 16);
  v12(v8, v9, v10);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_267BDABD0(v8, v2 + v3);
  swift_endAccess();
  v12(v78, v9, v10);
  v13 = (*(v11 + 88))(v78, v10);
  if (v13 == *MEMORY[0x277D5B3E0])
  {
    v14 = OUTLINED_FUNCTION_9_8();
    v15(v14);
    v16 = *v78;
    v0[21] = *v78;
    v17 = *(v78 + 8);
    v0[22] = v17;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_267B93000, v19, v20, "#SearchForMessagesHandleIntentFlow handle intent flow completed", v21, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v22 = v0[10];

    sub_267BDA184(v16, v17, *(*(v22 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_searchForMessagesState) + 16));
    v0[23] = v23;
    if (v23)
    {
      v24 = v23;
      v25 = v23;
      v26 = sub_267EF89F8();
      v27 = sub_267EF95D8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = OUTLINED_FUNCTION_48();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        *(v28 + 4) = v25;
        *v29 = v24;
        v30 = v25;
        _os_log_impl(&dword_267B93000, v26, v27, "#SearchForMessagesHandleIntentFlow relaxing intent to: %@", v28, 0xCu);
        sub_267C142D4(v29);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[24] = v31;
      *v31 = v32;
      v31[1] = sub_267C4B220;
      goto LABEL_13;
    }

    v73 = v0[15];
    v74 = v0[11];
    v75 = v0[12];
    sub_267EF4018();

    (*(v75 + 8))(v73, v74);
LABEL_33:
    OUTLINED_FUNCTION_8_8();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_15();

    __asm { BRAA            X1, X16 }
  }

  if (v13 == *MEMORY[0x277D5B3D8])
  {
    v44 = OUTLINED_FUNCTION_9_8();
    v45(v44);
    v46 = *v78;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v47 = sub_267EF8A08();
    __swift_project_value_buffer(v47, qword_280240FB0);
    v48 = v46;
    v49 = sub_267EF89F8();
    v50 = sub_267EF95E8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_48();
      v52 = swift_slowAlloc();
      v79[0] = v52;
      *v51 = 136315138;
      v0[8] = v46;
      v53 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v54 = sub_267EF9098();
      v56 = sub_267BA33E8(v54, v55, v79);

      *(v51 + 4) = v56;
      OUTLINED_FUNCTION_29_2(&dword_267B93000, v57, v58, "#SearchForMessagesHandleIntentFlow handle intent flow failed: %s");
      __swift_destroy_boxed_opaque_existential_0(v52);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v59 = v0[15];
    v60 = v0[11];
    v61 = v0[12];
    sub_267EF4018();

    (*(v61 + 8))(v59, v60);
    goto LABEL_33;
  }

  v62 = v0[15];
  v63 = v0[13];
  v64 = v0[11];
  sub_267EF9B68();

  v79[0] = 0xD000000000000017;
  v79[1] = 0x8000000267F12D90;
  v12(v63, v62, v64);
  v65 = sub_267EF9098();
  MEMORY[0x26D608E60](v65);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v66 = sub_267EF8A08();
  __swift_project_value_buffer(v66, qword_280240FB0);

  v67 = sub_267EF89F8();
  v68 = sub_267EF95E8();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = OUTLINED_FUNCTION_48();
    v70 = swift_slowAlloc();
    v79[0] = v70;
    *v69 = 136315138;
    *(v69 + 4) = sub_267BA33E8(0xD000000000000017, 0x8000000267F12D90, v79);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v71, v72, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v70);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF9C98();
  OUTLINED_FUNCTION_15();
}

uint64_t sub_267BCFDD0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state;
  swift_beginAccess();
  sub_267BDA120(v1 + v6, v5);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229670, qword_267EFDED0);
    OUTLINED_FUNCTION_22();
    return (*(v7 + 32))(a1, v5);
  }

  else
  {
    sub_267C4BE60();
    v9 = swift_allocError();
    *v10 = 0;
    v10[1] = 0;
    *a1 = v9;
    *(a1 + 8) = 0;
    v11 = *MEMORY[0x277D5B3D8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229670, qword_267EFDED0);
    OUTLINED_FUNCTION_22();
    (*(v12 + 104))(a1, v11);
    return sub_267C4BE04(v5);
  }
}

uint64_t sub_267BCFF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 824) = a8;
  *(v8 + 816) = a6;
  *(v8 + 920) = a5;
  *(v8 + 808) = a4;
  *(v8 + 800) = a3;
  *(v8 + 792) = a2;
  *(v8 + 784) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  *(v8 + 832) = swift_task_alloc();
  v10 = sub_267EF2E38();
  *(v8 + 840) = v10;
  *(v8 + 848) = *(v10 - 8);
  *(v8 + 856) = swift_task_alloc();
  v11 = type metadata accessor for NetworkStatusProvider();
  *(v8 + 864) = v11;
  *(v8 + 136) = v11;
  *(v8 + 144) = &off_2878D2ED0;
  *(v8 + 112) = a7;

  return MEMORY[0x2822009F8](sub_267BD1550, 0, 0);
}

void sub_267BD0300(uint64_t a1, uint64_t *a2)
{
  v18[1] = a2;
  v18[0] = sub_267EF2D28();
  v3 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0]);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = MEMORY[0x277D84F90];
  v6 = sub_267BAF0DC(a1);
  v21 = a1;
  v22 = v6;
  v7 = 0;
  v19 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1 & 0xC000000000000001;
  v8 = (v3 + 8);
  while (1)
  {
    if (v22 == v7)
    {

      return;
    }

    if (v20)
    {
      v9 = MEMORY[0x26D609870](v7, v21);
    }

    else
    {
      if (v7 >= *(v19 + 16))
      {
        goto LABEL_15;
      }

      v9 = *(v21 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v11 = sub_267D606EC();
    if (v11 && (v12 = v11, v13 = [v11 messageID], v12, sub_267EF2D08(), v13, v14 = sub_267EF2CE8(), v16 = v15, v17 = (*v8)(v5, v18[0]), v23[0] = v14, v23[1] = v16, MEMORY[0x28223BE20](v17), v18[-2] = v23, , LOBYTE(v14) = sub_267BC2B54(), , , (v14 & 1) != 0))
    {
      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    else
    {
    }

    ++v7;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_267BD0594()
{
  v90 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 344);
  v5 = sub_267BD0F80();
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = OUTLINED_FUNCTION_26_0();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D5BCA0])
  {
    v10 = *(v0 + 408);
    (*(*(v0 + 384) + 96))(v10, *(v0 + 376));
    *(v0 + 416) = *v10;
    v11 = v10[1];
    *(v0 + 424) = v11;
    v12 = v10[2];
    *(v0 + 432) = v12;
    if ([v12 code] == 3)
    {
      sub_267BB170C(*(v0 + 352) + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_smsIntent, v0 + 56, &unk_28022BBF0, &unk_267F01C60);
      if (*(v0 + 80))
      {
        sub_267B9A5E8((v0 + 56), v0 + 16);
        v13 = *(v0 + 40);
        v14 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_0((v0 + 16), v13);
        if (sub_267E583B0(v13, v14))
        {
          if (sub_267DD3D30())
          {
            v15 = *(v0 + 368);
            v16 = *(v0 + 352);
            swift_storeEnumTagMultiPayload();
            v17 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
            OUTLINED_FUNCTION_66_3(v16 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state, v0 + 296);
            sub_267B9FF94(v15, v16 + v17);
            swift_endAccess();
            sub_267B9AFEC(v0 + 16, v0 + 176);
            v18 = sub_267D2D370();
            sub_267EF7958();
            OUTLINED_FUNCTION_43();

            v20 = sub_267E80518(v19);
            sub_267B9AFEC(v16 + 16, v0 + 216);
            if (qword_2802286F0 != -1)
            {
              OUTLINED_FUNCTION_4_0(&qword_2802286F0);
            }

            sub_267B9AFEC(qword_2802405A0, v0 + 256);
            __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, *(v0 + 280));
            v21 = sub_267E33CE4((v0 + 176), v18, v20, (v0 + 216));
            __swift_destroy_boxed_opaque_existential_0((v0 + 256));
            *(v0 + 320) = v21;
            type metadata accessor for ReportMessageCountFlow();
            sub_267BC1DB4(&qword_28022C830, type metadata accessor for ReportMessageCountFlow, &unk_267EFD4C0);
            sub_267EF3FF8();

            __swift_destroy_boxed_opaque_existential_0((v0 + 16));
            goto LABEL_27;
          }
        }

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        sub_267B9F98C(v0 + 56, &unk_28022BBF0, &unk_267F01C60);
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v73 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
      v74 = sub_267EF89F8();
      v75 = sub_267EF95C8();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = OUTLINED_FUNCTION_32();
        *v76 = 0;
        _os_log_impl(&dword_267B93000, v74, v75, "#SearchForMessagesFlow RCH successful, proceeding with reading", v76, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v77 = *(v0 + 352);

      sub_267B9AFEC(v77 + 16, v0 + 96);
      v78 = type metadata accessor for NetworkStatusProvider();
      v79 = OUTLINED_FUNCTION_49(v78);
      *(v0 + 160) = v78;
      *(v0 + 168) = &off_2878D2ED0;
      *(v0 + 136) = v79;
      type metadata accessor for SearchForMessagesFlowSource();
      swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v78);
      OUTLINED_FUNCTION_23();
      v81 = v80;
      *(v0 + 440) = OUTLINED_FUNCTION_2();
      (*(v81 + 16))();

      v82 = v11;
      v83 = v12;
      v84 = swift_task_alloc();
      *(v0 + 448) = v84;
      *v84 = v0;
      v84[1] = sub_267E31510;
      OUTLINED_FUNCTION_89();

      __asm { BR              X8 }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v42 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v42, qword_280240FB0);
    v43 = v12;
    v44 = sub_267EF89F8();
    v45 = sub_267EF95C8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_48();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v43;
      *v47 = v43;
      v48 = v43;
      _os_log_impl(&dword_267B93000, v44, v45, "#SearchForMessagesFlow RCHFlow completed but intent response was not successful: %@", v46, 0xCu);
      sub_267B9F98C(v47, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF4018();

LABEL_27:

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X1, X16 }
  }

  if (v9 == *MEMORY[0x277D5BC98])
  {
    v22 = *(*(v0 + 384) + 8);
    v22(*(v0 + 408), *(v0 + 376));
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v23 = *(v0 + 400);
    v24 = *(v0 + 376);
    v25 = *(v0 + 344);
    v26 = sub_267EF8A08();
    __swift_project_value_buffer(v26, qword_280240FB0);
    v6(v23, v25, v24);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95E8();
    v29 = OUTLINED_FUNCTION_10_2(v28);
    v30 = *(v0 + 400);
    if (v29)
    {
      v87 = v22;
      v31 = *(v0 + 392);
      v32 = *(v0 + 376);
      OUTLINED_FUNCTION_48();
      v88 = OUTLINED_FUNCTION_64_2();
      v89[0] = v88;
      *v25 = 136315138;
      v6(v31, v30, v32);
      v33 = sub_267EF9098();
      v35 = v34;
      v87(v30, v32);
      v36 = sub_267BA33E8(v33, v35, v89);

      *(v25 + 4) = v36;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v88);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    else
    {
      v58 = *(v0 + 376);

      v22(v30, v58);
    }

LABEL_26:
    sub_267EF4018();
    goto LABEL_27;
  }

  if (v9 == *MEMORY[0x277D5BCA8])
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v49 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v49, qword_280240FB0);
    v50 = sub_267EF89F8();
    v51 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v51))
    {
      v52 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v52);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v53, v54, v55, v56, v57, 2u);
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_26;
  }

  v61 = *(v0 + 392);
  v62 = *(v0 + 376);
  v63 = *(v0 + 344);
  sub_267EF9B68();

  v89[0] = 0xD00000000000002ELL;
  v89[1] = 0x8000000267F1B980;
  v6(v61, v63, v62);
  OUTLINED_FUNCTION_26_0();
  v64 = sub_267EF9098();
  MEMORY[0x26D608E60](v64);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v65 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v65, qword_280240FB0);

  v66 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v67 = OUTLINED_FUNCTION_55_0();
    v89[0] = v67;
    *v5 = 136315138;
    *(v5 + 4) = sub_267BA33E8(0xD00000000000002ELL, 0x8000000267F1B980, v89);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  sub_267EF9C98();
  OUTLINED_FUNCTION_89();
}

uint64_t sub_267BD0F80()
{
  sub_267BBF30C(v0, v8);
  if (v9)
  {
    sub_267BBF344(v8);
    return 0;
  }

  else
  {
    sub_267B9A5E8(v8, v5);
    v2 = v6;
    v3 = v7;
    __swift_project_boxed_opaque_existential_0(v5, v6);
    v1 = (*(v3 + 312))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return v1;
}

uint64_t sub_267BD1028()
{
  v0 = sub_267EF7198();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FD8();

  sub_267EF71A8();

  (*(v1 + 104))(v4, *MEMORY[0x277D61DD0], v0);
  v7 = sub_267EF7188();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v7 & 1;
    _os_log_impl(&dword_267B93000, v10, v11, "#NetworkStatusProvider: isOffline=%{BOOL}d", v12, 8u);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  return v7 & 1;
}

uint64_t sub_267BD1254(uint64_t a1)
{
  if (qword_280228818 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v2 = sub_267EF8A08();
    __swift_project_value_buffer(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_267B93000, v3, v4, "#SearchForMessagesFlowSource: In getReadableCheckInMessages", v5, 2u);
      MEMORY[0x26D60A7B0](v5, -1, -1);
    }

    v6 = sub_267BAF0DC(a1);
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
LABEL_16:
    v17 = sub_267BD009C(v16);
    v18 = v17;
    v35 = v7;
    v19 = v17 + 64;
    v20 = 1 << *(v17 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v17 + 64);
    v23 = (v20 + 63) >> 6;

    v24 = 0;
    while (v22)
    {
      v25 = v24;
LABEL_24:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v18 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(*(v18 + 56) + 8 * v27);

      sub_267D2D004(v29, v30, v31, &v35);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        sub_267BD0300(v32, &v35);
        v34 = v33;

        return v34;
      }

      v22 = *(v19 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v8 = v6;
  v35 = MEMORY[0x277D84F90];
  result = sub_267EF9BF8();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D609870](v10, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = sub_267D606EC();
      if (!v13 || (v14 = v13, v15 = [v13 outputToDictionary], v14, !v15))
      {
        sub_267D2D32C();
        sub_267EF95A8();
      }

      ++v10;
      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    while (v8 != v10);
    v16 = v35;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_267BD1550()
{
  v146 = v0;
  __swift_project_boxed_opaque_existential_0(v0 + 14, v0[108]);
  v133 = sub_267BCF4EC();
  if (v133)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v5);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  v11 = v0[99];
  v134 = sub_267EF97C8();
  v0[109] = v134;
  if (!v11)
  {

    goto LABEL_11;
  }

  v12 = v0[99];

  v13 = sub_267BCF474(v12);
  if (!v13)
  {
LABEL_11:

    v14 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v14 = v13;
LABEL_12:
  v143 = v0;
  v139 = v0 + 69;
  v140 = v0 + 97;
  *&v144[0] = MEMORY[0x277D84F90];
  v15 = sub_267BAF0DC(v14);
  v16 = 0;
  v17 = v14 & 0xFFFFFFFFFFFFFF8;
  v18 = &off_279C2E000;
  while (v15 != v16)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x26D609870](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_94;
      }

      v19 = *(v14 + 8 * v16 + 32);
    }

    v1 = v19;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:

      v52 = MEMORY[0x26D609870](0, v15);
      goto LABEL_44;
    }

    if ([v19 messageType] == 1000)
    {
    }

    else
    {
      sub_267EF9BD8();
      OUTLINED_FUNCTION_64_13();
      sub_267EF9C08();
      OUTLINED_FUNCTION_64_13();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    ++v16;
  }

  *v140 = *&v144[0];
  v20 = MEMORY[0x277D84F90];
  if (v11)
  {
    v21 = sub_267BCF474(v143[99]);
    if (v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = v20;
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  *&v144[0] = v20;
  v14 = sub_267BAF0DC(v15);
  v16 = 0;
  v17 = v15 & 0xC000000000000001;
  while (v14 != v16)
  {
    if (v17)
    {
      v22 = MEMORY[0x26D609870](v16, v15);
    }

    else
    {
      if (v16 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }

      v22 = *(v15 + 8 * v16 + 32);
    }

    v1 = v22;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_95;
    }

    if ([v22 messageType] == 1000 && (objc_msgSend(v143[98], sel_attributes) & 2) != 0)
    {
      sub_267EF9BD8();
      OUTLINED_FUNCTION_64_13();
      sub_267EF9C08();
      OUTLINED_FUNCTION_64_13();
      sub_267EF9C18();
      v20 = v144;
      sub_267EF9BE8();
    }

    else
    {
    }

    ++v16;
  }

  v18 = v143;
  v23 = v143[107];
  v24 = v143[106];
  v129 = v143[105];
  v25 = v143[102];
  v26 = v143[101];
  v132 = v26;
  v137 = v143[100];
  v27 = *(v143 + 920);
  v131 = *(v143 + 920);

  type metadata accessor for SearchForMessagesFlowSource();
  v28 = OUTLINED_FUNCTION_25_0();
  sub_267BD1254(v28);
  OUTLINED_FUNCTION_25_0();

  sub_267BD057C(v20);
  v29 = v143[97];
  v143[110] = v29;
  v30 = v25[4];
  __swift_project_boxed_opaque_existential_0(v25, v25[3]);
  v31 = OUTLINED_FUNCTION_25_0();
  v32(v31, v30);
  __swift_project_boxed_opaque_existential_0(v18 + 19, v18[22]);
  OUTLINED_FUNCTION_25_0();
  sub_267EF3B68();
  sub_267EF42D8();
  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FB8();

  sub_267EF42C8();

  v15 = sub_267BDD444(v29, v137, (v143 + 24), v26, v27, 0, 0, v23, 0, 0, 0);
  __swift_destroy_boxed_opaque_existential_0(v143 + 24);
  (*(v24 + 8))(v23, v129);
  __swift_destroy_boxed_opaque_existential_0(v143 + 19);
  sub_267B9AFEC(v25, (v143 + 29));

  v141 = v134;
  ConversationEventStore.init()((v143 + 2));
  v33 = type metadata accessor for AnnounceHintExperimentController();
  v34 = OUTLINED_FUNCTION_49(v33);
  v143[37] = v33;
  v143[38] = &off_2878CF3F8;
  v143[34] = v34;
  v130 = sub_267EF67F8();
  v135 = [objc_allocWithZone(v130) init];
  v35 = sub_267EF72E8();
  v36 = type metadata accessor for MessageSummaryProvider();
  v37 = OUTLINED_FUNCTION_49(v36);
  v143[42] = &type metadata for MessagesFeatureFlagsImpl;
  v143[43] = off_2878D1228;
  v143[47] = v130;
  v143[48] = &off_2878D78B8;
  v143[44] = v135;
  v143[52] = &type metadata for TTSUtil;
  v143[53] = &off_2878D0CB0;
  v143[49] = v35;
  v143[50] = &off_2878D0918;
  v143[57] = v36;
  v143[58] = &off_2878D8D98;
  v143[54] = v37;
  type metadata accessor for ConversationStateManager();
  v17 = swift_allocObject();
  v143[111] = v17;
  __swift_mutable_project_boxed_opaque_existential_1((v143 + 39), &type metadata for MessagesFeatureFlagsImpl);
  v38 = v143[47];
  v39 = __swift_mutable_project_boxed_opaque_existential_1((v18 + 44), v18[47]);
  OUTLINED_FUNCTION_23();
  v41 = v40;
  v42 = OUTLINED_FUNCTION_2();
  (*(v41 + 16))(v42, v39, v38);
  v43 = __swift_mutable_project_boxed_opaque_existential_1((v18 + 49), v18[52]);
  v44 = v143[57];
  v45 = __swift_mutable_project_boxed_opaque_existential_1((v18 + 54), v18[57]);
  OUTLINED_FUNCTION_23();
  v47 = v46;
  v48 = OUTLINED_FUNCTION_2();
  (*(v47 + 16))(v48, v45, v44);
  v49 = *v42;
  v50 = *v48;
  v51 = *v43;
  v143[62] = &type metadata for MessagesFeatureFlagsImpl;
  v143[63] = off_2878D1228;
  v143[67] = v130;
  v143[68] = &off_2878D78B8;
  v143[64] = v49;
  v143[72] = &type metadata for TTSUtil;
  v143[73] = &off_2878D0CB0;
  v1 = v139;
  *v139 = v51;
  v143[77] = v36;
  v143[78] = &off_2878D8D98;
  v143[74] = v50;
  v14 = v135;
  v52 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D837E0];
  OUTLINED_FUNCTION_66();
  *(v17 + 248) = sub_267EF8F28();
  OUTLINED_FUNCTION_66();
  *(v17 + 256) = sub_267EF8F28();
  OUTLINED_FUNCTION_66();
  *(v17 + 384) = sub_267EF8F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229120, &unk_267F0B820);
  OUTLINED_FUNCTION_66();
  v53 = sub_267EF8F28();
  v54 = MEMORY[0x277D84FA0];
  *(v17 + 392) = v53;
  *(v17 + 400) = v54;
  *(v17 + 416) = 0;
  *(v17 + 426) = 0;
  *(v17 + 80) = v131;
  *(v17 + 88) = 0;
  *(v17 + 96) = v137;
  *(v17 + 104) = 0;
  *(v17 + 112) = 0;
  *(v17 + 64) = v141;
  *(v17 + 72) = v132;
  *(v17 + 56) = v15;
  sub_267BEB520((v143 + 2), v17 + 152);
  sub_267BB170C((v143 + 34), v17 + 344, &qword_280229128, &unk_267EFC860);
  sub_267B9AFEC((v143 + 64), v17 + 304);
  sub_267B9AFEC(v139, v17 + 432);
  sub_267B9AFEC((v143 + 74), v17 + 472);
  v55 = sub_267BAF0DC(v15);
  v143[112] = v55;
  if (v55 < 0)
  {
    goto LABEL_97;
  }

  v1 = v55;
  if (v55)
  {
    sub_267BBD0EC(0, (v15 & 0xC000000000000001) == 0, v15);
    if ((v15 & 0xC000000000000001) != 0)
    {
      goto LABEL_98;
    }

    v52 = *(v15 + 32);

LABEL_44:
    *(v17 + 416) = v52;

    goto LABEL_46;
  }

LABEL_46:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229130, &qword_267F0B830);
  *&v144[0] = sub_267EF8F28();
  if (v1)
  {
    v56 = 0;
    v16 = v15 & 0xC000000000000001;
    do
    {
      if (v16)
      {
        v57 = MEMORY[0x26D609870](v56, v15);
      }

      else
      {
        v57 = *(v15 + 8 * v56 + 32);
      }

      v56 = v56 + 1;
      OUTLINED_FUNCTION_83(v57 + 24, (v18 + 94));

      sub_267BE5E38(v58);
    }

    while (v1 != v56);

    v52 = *&v144[0];
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }

  *(v17 + 144) = v52;
  sub_267EF6818();
  v59 = sub_267EF6808();

  sub_267B9EF14((v18 + 2));
  sub_267B9F98C((v18 + 34), &qword_280229128, &unk_267EFC860);
  __swift_destroy_boxed_opaque_existential_0(v18 + 74);
  __swift_destroy_boxed_opaque_existential_0(v139);
  __swift_destroy_boxed_opaque_existential_0(v18 + 64);
  *(v17 + 120) = 0xD000000000000012;
  *(v17 + 128) = 0x8000000267F11DE0;
  *(v17 + 136) = v59;
  sub_267B9A5E8((v18 + 59), v17 + 264);
  *(v17 + 408) = v133 & 1;
  *(v17 + 424) = 0;
  sub_267B9A5E8((v18 + 29), v17 + 16);
  __swift_destroy_boxed_opaque_existential_0(v18 + 54);

  __swift_destroy_boxed_opaque_existential_0(v18 + 49);
  __swift_destroy_boxed_opaque_existential_0(v18 + 44);

  __swift_destroy_boxed_opaque_existential_0(v18 + 39);
  v18[82] = &type metadata for Features;
  v60 = sub_267BAFCAC();
  v18[83] = v60;
  *(v18 + 632) = 12;
  v61 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v18 + 79);
  if (v61)
  {
    v18[87] = &type metadata for Features;
    v18[88] = v60;
    *(v18 + 672) = 13;
    v61 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(v18 + 84);
    if (v61)
    {
      v18[92] = &type metadata for Features;
      v18[93] = v60;
      *(v18 + 712) = 28;
      v62 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0(v18 + 89);
      if (v62)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v63 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v63, qword_280240FB0);
        v64 = sub_267EF89F8();
        v65 = sub_267EF95D8();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v66);
          _os_log_impl(&dword_267B93000, v64, v65, "#SearchForMessagesFlowSource creating a summary component for messages to be read.", &type metadata for Features, 2u);
          OUTLINED_FUNCTION_26();
        }

        sub_267EF7C18();
        v18[113] = v67;
        v68 = swift_task_alloc();
        v18[114] = v68;
        *v68 = v18;
        v68[1] = sub_267E3302C;
        v69 = OUTLINED_FUNCTION_66();

        return sub_267E2BBA0(v69, v70);
      }
    }
  }

  OUTLINED_FUNCTION_59_16();
  sub_267BE43E8(1);
  if (!v61)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v88 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v88, qword_280240FB0);
    v89 = sub_267EF89F8();
    v90 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v90))
    {
      v91 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v91);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v92, v93, v94, v95, v96, 2u);
      OUTLINED_FUNCTION_26();
    }

    v97 = v18[98];

    v98 = sub_267E2D6E4(v97);
    if (v98)
    {
      v99 = v98;
      if (sub_267BAF0DC(v98))
      {
        OUTLINED_FUNCTION_1_9();
        if (v97)
        {
          v100 = MEMORY[0x26D609870](0, v99);
        }

        else
        {
          v100 = *(v99 + 32);
        }

        v101 = v100;

        goto LABEL_88;
      }
    }

    v101 = 0;
LABEL_88:
    v138 = v18[109];
    v142 = v18[99];
    v109 = v18[98];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B10, &qword_267EFEFB0);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_267EFC020;
    [v109 attributes];
    sub_267EF7958();
    v136 = v101;

    sub_267E80518(v111);
    type metadata accessor for ReadingSummaryAction();
    memset(v144, 0, sizeof(v144));
    v145 = 0;
    swift_allocObject();

    v118 = OUTLINED_FUNCTION_49_21(v112, v113, v114, v115, v116, v117, v144);
    OUTLINED_FUNCTION_23_25();
    v121 = sub_267BC1DB4(v119, v120, &unk_267F09CD0);
    *(v110 + 32) = v118;
    *(v110 + 40) = v121;
    sub_267EF4548();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
    v126 = sub_267EF4338();
    OUTLINED_FUNCTION_97(v126);
    OUTLINED_FUNCTION_50_15();

    OUTLINED_FUNCTION_22_28();
    v104 = MEMORY[0x277D5BDC8];
    goto LABEL_89;
  }

  v72 = sub_267BE6268();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v73 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
  v74 = sub_267EF89F8();
  v75 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 67109120;
    v76[1] = v72 & 1;
    OUTLINED_FUNCTION_70_11(&dword_267B93000, v77, v78, "#SearchForMessagesFlowSource Initial group is summary? %{BOOL}d");
    OUTLINED_FUNCTION_29_1();
  }

  sub_267BE4AD0(v79);
  v80 = type metadata accessor for ConversationActionGroup(0);
  OUTLINED_FUNCTION_97(v80);

  v81 = OUTLINED_FUNCTION_66();
  v83 = sub_267BE6480(v81, v82, 1, 1);
  if ((v72 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_14();
    OUTLINED_FUNCTION_77_8();

    OUTLINED_FUNCTION_18_33();
    v104 = &unk_267F0D600;
LABEL_89:
    v108 = sub_267BC1DB4(v102, v103, v104);
    goto LABEL_90;
  }

  if ((*(v18[111] + 408) & 1) == 0)
  {

    goto LABEL_84;
  }

  v84 = sub_267BF42CC(v83);

  if (v84 == 1)
  {
LABEL_84:

    goto LABEL_85;
  }

  v85 = type metadata accessor for DeviceOfflineNotificationActionGroup(0);
  OUTLINED_FUNCTION_97(v85);

  v86 = OUTLINED_FUNCTION_66();
  sub_267E32D98(v86, v87);
LABEL_85:
  v105 = OUTLINED_FUNCTION_48_25();
  OUTLINED_FUNCTION_97(v105);
  OUTLINED_FUNCTION_72_13();

  OUTLINED_FUNCTION_77_8();

  OUTLINED_FUNCTION_24_30();
  v108 = sub_267BC1DB4(v106, v107, &unk_267F0D600);
LABEL_90:
  OUTLINED_FUNCTION_44_22(v108);

  v127 = v18[1];
  v128 = v18[103];

  return v127(v128);
}

void sub_267BD2558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    v3 = 0x280228000uLL;
    v4 = qword_280240FB0;
    v5 = 0x280228000;
    do
    {
      v7 = *(v2 - 1);
      v6 = *v2;
      v8 = *(v3 + 2072);

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = sub_267EF8A08();
      __swift_project_value_buffer(v9, v4);

      v10 = sub_267EF89F8();
      v11 = sub_267EF95D8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v4;
        v13 = v3;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_267BA33E8(v7, v6, &v19);
        _os_log_impl(&dword_267B93000, v10, v11, "#RecentInteractionUtils clearing: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x26D60A7B0](v15, -1, -1);
        v16 = v14;
        v3 = v13;
        v4 = v12;
        v5 = 0x280228000uLL;
        MEMORY[0x26D60A7B0](v16, -1, -1);
      }

      if (*(v5 + 1880) != -1)
      {
        swift_once();
      }

      v17 = qword_280240AE8;
      v18 = sub_267EF8FF8();

      [v17 removeObjectForKey_];

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

unint64_t sub_267BD2758()
{
  result = qword_28022AC00;
  if (!qword_28022AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AC00);
  }

  return result;
}

uint64_t sub_267BD27AC(uint64_t a1, unint64_t a2)
{
  if (qword_280228818 == -1)
  {
    goto LABEL_2;
  }

LABEL_26:
  OUTLINED_FUNCTION_0(&qword_280228818);
LABEL_2:
  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  OUTLINED_FUNCTION_98_1();

  v5 = sub_267EF89F8();
  v6 = sub_267EF95D8();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_48();
    v72[0] = OUTLINED_FUNCTION_5_4();
    *v2 = 136315138;
    v7 = a1;
    *(v2 + 4) = sub_267BA33E8(a1, a2, v72);
    OUTLINED_FUNCTION_30_11();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_18_2();
  }

  else
  {

    v7 = a1;
  }

  sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);

  v13 = sub_267BF952C(v7, a2);
  v14 = [v13 languageCode];

  v15 = sub_267EF9028();
  v17 = v16;

  v18 = sub_267EF89F8();
  sub_267EF95D8();

  v19 = v7;
  v65 = v17;
  if (OUTLINED_FUNCTION_81_4())
  {
    v20 = OUTLINED_FUNCTION_48();
    v21 = OUTLINED_FUNCTION_52();
    v72[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_267BA33E8(v15, v17, v72);
    OUTLINED_FUNCTION_34_7();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_11_11();
  }

  v27 = [objc_opt_self() availableLanguages];
  v28 = sub_267EF94B8();

  v29 = sub_267EF89F8();
  sub_267EF95D8();

  v67 = v15;
  v68 = v28;
  if (OUTLINED_FUNCTION_99())
  {
    v30 = OUTLINED_FUNCTION_48();
    v31 = OUTLINED_FUNCTION_52();
    v72[0] = v31;
    *v30 = 136315138;
    v32 = sub_267EF94C8();
    v34 = sub_267BA33E8(v32, v33, v72);

    *(v30 + 4) = v34;
    OUTLINED_FUNCTION_45();
    _os_log_impl(v35, v36, v37, v38, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_32_0();
    v28 = v68;
    OUTLINED_FUNCTION_32_0();
  }

  v39 = v17;
  v40 = v28 + 56;
  v41 = 1 << *(v28 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v2 = v42 & *(v28 + 56);
  v43 = (v41 + 63) >> 6;

  v44 = 0;
  for (i = MEMORY[0x277D84F90]; v2; v28 = v68)
  {
LABEL_16:
    v46 = (*(v28 + 48) + ((v44 << 10) | (16 * __clz(__rbit64(v2)))));
    v47 = v46[1];
    v72[0] = *v46;
    v72[1] = v47;

    v48 = a2;
    sub_267BF5414(v72, v67, v39, v19, a2, &v70);

    v49 = v71;
    if (v71)
    {
      v50 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_106_0(isUniquelyReferenced_nonNull_native, v52, v53, i);
        i = v56;
      }

      v54 = *(i + 16);
      if (v54 >= *(i + 24) >> 1)
      {
        sub_267BF4EE8();
        i = v57;
      }

      *(i + 16) = v54 + 1;
      v55 = i + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v49;
      v39 = v65;
      v19 = a1;
    }

    v2 &= v2 - 1;
    a2 = v48;
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v45 >= v43)
    {
      break;
    }

    v2 = *(v40 + 8 * v45);
    ++v44;
    if (v2)
    {
      v44 = v45;
      goto LABEL_16;
    }
  }

  v58 = sub_267EF72E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_267EFCA40;
  sub_267BA9F38(0, &unk_28022A2A0, 0x277D61490);
  *(v59 + 32) = sub_267EF95B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A0F0, &qword_267F00450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCC90;
  *(inited + 32) = 1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  *(inited + 40) = i;
  *(inited + 64) = v61;
  *(inited + 72) = 5;
  *(inited + 104) = MEMORY[0x277D839B0];
  *(inited + 80) = 1;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_26_11();
  sub_267BFEA98(v62, v63, &unk_267EFBE3C);
  sub_267EF8F28();
  sub_267EF72D8();
  OUTLINED_FUNCTION_91_3();

  return v58;
}

void OUTLINED_FUNCTION_91_4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_91_9()
{

  return sub_267B9F98C(v2 - 224, v0, v1);
}

uint64_t sub_267BD2E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_85_6();
  v13[66] = *(v14 + 56);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_84_5();
  if (v15)
  {

    OUTLINED_FUNCTION_26_0();
    v16 = sub_267BA9948();
    if (v17)
    {
      OUTLINED_FUNCTION_8_33(v16);

      OUTLINED_FUNCTION_53_10();

      OUTLINED_FUNCTION_10_28();
      OUTLINED_FUNCTION_40();

      return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
    }
  }

  if (OUTLINED_FUNCTION_86_6())
  {
    sub_267BBD0EC(0, (v12 & 0xC000000000000001) == 0, v12);
    if ((v12 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_111_3();
    }

    else
    {
      v27 = *(v12 + 32);
    }

    v28 = v27;
    v29 = [v27 sender];

    if (v29)
    {
      v30 = OUTLINED_FUNCTION_3_42();
      v31(v30);
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_21_16();

      v32 = OUTLINED_FUNCTION_43_15();
      v33(v32);
      __swift_destroy_boxed_opaque_existential_0(v13 + 2);
    }
  }

  OUTLINED_FUNCTION_22_18();
  v13[69] = *(v34 + 16);
  v13[70] = *(v34 + 24);
  v35 = OUTLINED_FUNCTION_7_31();
  v36(v35);
  OUTLINED_FUNCTION_17_18();
  v37 = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_47_12(v37);
  *v38 = v39;
  OUTLINED_FUNCTION_5_39(v38);
  OUTLINED_FUNCTION_40();

  return sub_267BD3004();
}

uint64_t sub_267BD3004()
{
  OUTLINED_FUNCTION_12();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v5 = sub_267EF2728();
  v0[10] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_2();
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_267BFD8B0;
  OUTLINED_FUNCTION_61_0();

  return sub_267BD30EC();
}

uint64_t sub_267BD30EC()
{
  OUTLINED_FUNCTION_12();
  v0[6] = v1;
  v0[7] = v2;
  v3 = sub_267EF2CC8();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267BD31A4()
{
  OUTLINED_FUNCTION_62();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = sub_267EF8A08();
  v2 = __swift_project_value_buffer(v1, qword_280240FB0);
  v0[11] = v2;
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    *v5 = 0;
    _os_log_impl(&dword_267B93000, v3, v4, "DataDetector beginning", v5, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  sub_267EF2CB8();
  sub_267EF2C88();
  v0[12] = v9;
  v10 = *(v7 + 8);
  v0[13] = v10;
  v0[14] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v11 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v12 = sub_267BD346C(2096);
  v23 = v12;
  if (!v12)
  {
    goto LABEL_6;
  }

  v24 = v0[7];
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v0[6] & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_6:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v26 = sub_267EF8FF8();
  v27 = [v23 matchesInString:v26 options:0 range:{0, sub_267EF9138()}];

  sub_267BFCDCC();
  v13 = sub_267EF92F8();

LABEL_7:
  v0[15] = v13;

  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v15))
  {
    v16 = OUTLINED_FUNCTION_48();
    *v16 = 134217984;
    *(v16 + 4) = sub_267BAF0DC(v13);

    _os_log_impl(&dword_267B93000, v14, v2, "DataDetector found %ld matches", v16, 0xCu);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v17 = swift_task_alloc();
  v0[16] = v17;
  *v17 = v0;
  v17[1] = sub_267BFD69C;
  OUTLINED_FUNCTION_30_2();

  return sub_267BFCE10(v18, v19, v20);
}

id sub_267BD346C(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_267EF2A78();

    swift_willThrow();
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_36_8(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_36_9()
{
}

uint64_t OUTLINED_FUNCTION_36_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

BOOL OUTLINED_FUNCTION_36_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_36_15()
{
}

uint64_t OUTLINED_FUNCTION_36_16()
{

  return sub_267EF8358();
}

__n128 OUTLINED_FUNCTION_36_17(uint64_t a1)
{
  *(v2 + 72) = a1;
  result = *(v2 + 56);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_18()
{
}

uint64_t OUTLINED_FUNCTION_36_20(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void *OUTLINED_FUNCTION_36_21()
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 37);
  __swift_destroy_boxed_opaque_existential_0(v1 + 32);
  __swift_destroy_boxed_opaque_existential_0(v1 + 27);
  return __swift_project_boxed_opaque_existential_0((v0 + 152), *(v0 + 176));
}

uint64_t OUTLINED_FUNCTION_36_22()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_23@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 120) = a2;
  strcpy((result + 128), "autoDownload");
  *(result + 141) = 0;
  *(result + 142) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_25()
{

  return sub_267EF9EA8();
}

void OUTLINED_FUNCTION_36_26(char a1@<W8>)
{
  *(v3 + 216) = v2;
  *(v3 + 224) = 0xD000000000000013;
  *(v3 + 232) = v1;
  *(v3 + 264) = v2;
  *(v3 + 240) = a1;
}

uint64_t OUTLINED_FUNCTION_36_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_134()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return sub_267C253C4();
}

uint64_t OUTLINED_FUNCTION_134_1()
{
  v0[157] = v1;
  v0[158] = v2;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  return sub_267EF7958();
}

uint64_t OUTLINED_FUNCTION_134_2()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_134_3()
{

  return sub_267EF8A08();
}

uint64_t OUTLINED_FUNCTION_147_2()
{
}

uint64_t OUTLINED_FUNCTION_64_6(uint64_t a1)
{

  return sub_267EF3848();
}

double OUTLINED_FUNCTION_64_10()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_64_14@<X0>(unint64_t a1@<X8>)
{

  return sub_267BE8B74((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_64_15()
{

  return sub_267EF4918();
}

uint64_t OUTLINED_FUNCTION_251()
{

  return sub_267EF8348();
}

uint64_t sub_267BD3A60(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AC08, &qword_267F03338);
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267BD2758();
  sub_267EFA088();
  v11 = v3[24];
  v31 = 0;
  OUTLINED_FUNCTION_0_25(v11, &v31);
  if (!v2)
  {
    v12 = v3[25];
    v30 = 1;
    OUTLINED_FUNCTION_0_25(v12, &v30);
    v13 = v3[26];
    v29 = 2;
    OUTLINED_FUNCTION_0_25(v13, &v29);
    v14 = v3[27];
    v28 = 3;
    OUTLINED_FUNCTION_0_25(v14, &v28);
    v15 = v3[28];
    v27 = 4;
    OUTLINED_FUNCTION_0_25(v15, &v27);
    v16 = v3[29];
    v26 = 5;
    OUTLINED_FUNCTION_0_25(v16, &v26);
    v17 = v3[30];
    v25 = 6;
    OUTLINED_FUNCTION_0_25(v17, &v25);
    v18 = v3[31];
    v24 = 7;
    OUTLINED_FUNCTION_0_25(v18, &v24);
    v19 = v3[32];
    HIBYTE(v23) = 8;
    OUTLINED_FUNCTION_0_25(v19, &v23 + 7);
    v20 = v3[33];
    BYTE6(v23) = 9;
    OUTLINED_FUNCTION_0_25(v20, &v23 + 6);
    v21 = v3[34];
    BYTE5(v23) = 10;
    OUTLINED_FUNCTION_0_25(v21, &v23 + 5);
  }

  return (*(v7 + 8))(v10, v5);
}

void *OUTLINED_FUNCTION_117_1(void *result)
{
  *(v1 + 320) = result;
  result[2] = v4;
  result[3] = v2;
  result[4] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_117_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 152) = v2;
  *(v3 - 144) = a2;
  *(v3 - 176) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_117_3()
{

  return sub_267BF8DEC(v1, v2 + v0);
}

double OUTLINED_FUNCTION_117_4()
{
  result = 0.0;
  *(v0 + 632) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_117_5()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
}

void *OUTLINED_FUNCTION_117_6@<X0>(unint64_t a1@<X8>)
{

  return sub_267BE8B74((a1 > 1), v1, 1);
}

void OUTLINED_FUNCTION_117_7()
{
  *(v3 + v0) = v2;
  v5 = v3 + *(v1 + 32);
  *v5 = v4;
  *(v5 + 8) = 0;
}

BOOL OUTLINED_FUNCTION_117_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_117_10()
{

  return __swift_project_boxed_opaque_existential_0((v1 + 16), v0);
}

uint64_t sub_267BD3DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BD3E4C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BD3F44()
{
  OUTLINED_FUNCTION_56();
  sub_267BD3FF4();
  OUTLINED_FUNCTION_131_1(v0);
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_135(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_55_2(v2);
  v4 = OUTLINED_FUNCTION_28_2(35);

  return v5(v4);
}

void sub_267BD3FF4()
{
  OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_243();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v9, v113);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_1(v11, v12, v13, v14, v15, v16, v17, v18, v114);
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_22(v20, v21, v22, v23, v24, v25, v26, v27, v115);
  v29 = MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_23(v29, v30, v31, v32, v33, v34, v35, v36, v116);
  v38 = MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_18_12(v38, v39, v40, v41, v42, v43, v44, v45, v117);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_77_0();
  v119 = v47;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_77_0();
  v118 = v49;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_142();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_267F052C0;
  *(v56 + 32) = 0x65646F4368747561;
  *(v56 + 40) = 0xE800000000000000;
  OUTLINED_FUNCTION_178();
  sub_267C2FB6C(v57, v58, v59, &qword_267EFC0B0);
  v60 = sub_267EF79B8();
  OUTLINED_FUNCTION_4_38();
  if (v61)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_294_0();
  }

  else
  {
    *(v56 + 72) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 48));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v62();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 80) = v63 + 1;
  *(v56 + 88) = v64;
  type metadata accessor for SearchForMessagesReadTextComponentParameters(0);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_50_5(v65, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v6);
  if (v61)
  {
    sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    *(v56 + 120) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 96));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v66();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 128) = 0xD000000000000011;
  *(v56 + 136) = v67;
  OUTLINED_FUNCTION_49_3(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v61)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    *(v56 + 168) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 144));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v68();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 176) = 0xD000000000000010;
  *(v56 + 184) = v69;
  v70 = *(v1 + 0x8000000);
  if (v70)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    v71 = v70;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v56 + 200) = 0;
    *(v56 + 208) = 0;
  }

  *(v56 + 192) = v71;
  OUTLINED_FUNCTION_119_3();
  *(v56 + 216) = v72;
  *(v56 + 224) = v73;
  *(v56 + 232) = 0xE700000000000000;
  OUTLINED_FUNCTION_48_4(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v4);
  if (v61)
  {

    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 240) = 0u;
    *(v56 + 256) = 0u;
  }

  else
  {
    *(v56 + 264) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 240));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v74();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 272) = 0xD000000000000013;
  *(v56 + 280) = v75;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, 0x8000000);
  OUTLINED_FUNCTION_7_0(v3);
  if (v61)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 288) = 0u;
    *(v56 + 304) = 0u;
  }

  else
  {
    *(v56 + 312) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 288));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v76();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 320) = 0xD000000000000013;
  *(v56 + 328) = v77;
  OUTLINED_FUNCTION_281(&unk_28022AE30, &qword_267EFC0B0, 8);
  OUTLINED_FUNCTION_7_0(v2);
  if (v61)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 336) = 0u;
    *(v56 + 352) = 0u;
  }

  else
  {
    *(v56 + 360) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 336));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_271();
    v78();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 368) = 0xD000000000000011;
  *(v56 + 376) = v79;
  OUTLINED_FUNCTION_35_6(0x8000000, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v61)
  {
    sub_267B9F98C(v118, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 384) = 0u;
    *(v56 + 400) = 0u;
  }

  else
  {
    *(v56 + 408) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 384));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v80();
  }

  OUTLINED_FUNCTION_20_13();
  *(v56 + 416) = v81;
  *(v56 + 424) = v82;
  v83 = *(v1 + 8);
  if (v83)
  {
    type metadata accessor for MessagesDialogContext();
    v84 = v83;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v56 + 440) = 0;
    *(v56 + 448) = 0;
  }

  *(v56 + 432) = v84;
  OUTLINED_FUNCTION_105_5();
  *(v56 + 456) = v85;
  *(v56 + 464) = v86;
  *(v56 + 472) = 0xE600000000000000;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, 0x8000000);
  OUTLINED_FUNCTION_7_0(v119);
  if (v61)
  {

    sub_267B9F98C(v119, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 480) = 0u;
    *(v56 + 496) = 0u;
  }

  else
  {
    *(v56 + 504) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 480));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v87();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 512) = 0xD000000000000017;
  v88 = MEMORY[0x277D839B0];
  *(v56 + 520) = v89;
  *(v56 + 552) = v88;
  *(v56 + 528) = 0;
  OUTLINED_FUNCTION_12_1();
  *(v56 + 560) = 0xD000000000000013;
  *(v56 + 568) = v90;
  LOBYTE(v90) = *v1;
  *(v56 + 600) = v88;
  *(v56 + 576) = v90;
  OUTLINED_FUNCTION_37_10();
  *(v56 + 608) = v91;
  OUTLINED_FUNCTION_36_13();
  *(v56 + 616) = v92;
  LOBYTE(v92) = *v1;
  *(v56 + 648) = v88;
  *(v56 + 624) = v92;
  OUTLINED_FUNCTION_38_13();
  *(v56 + 656) = v93;
  OUTLINED_FUNCTION_171_0();
  *(v56 + 664) = v94;
  LOBYTE(v94) = *(v1 + *"LocationInfo");
  *(v56 + 696) = v88;
  *(v56 + 672) = v94;
  OUTLINED_FUNCTION_304();
  *(v56 + 704) = v95;
  *(v56 + 712) = 0xEC00000064657461;
  *(v56 + 720) = *(v1 + *"tionInfo");
  *(v56 + 744) = v88;
  OUTLINED_FUNCTION_12_1();
  *(v56 + 752) = 0xD000000000000011;
  *(v56 + 760) = v96;
  OUTLINED_FUNCTION_240(&unk_28022AE30, &qword_267EFC0B0, *"Info");
  OUTLINED_FUNCTION_7_0(0xD000000000000011);
  if (v61)
  {
    sub_267B9F98C(0xD000000000000011, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 768) = 0u;
    *(v56 + 784) = 0u;
  }

  else
  {
    *(v56 + 792) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 768));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v97();
  }

  OUTLINED_FUNCTION_296();
  *(v56 + 800) = v98;
  *(v56 + 808) = 0xEB00000000746E65;
  LOBYTE(v98) = *(v1 + *"");
  *(v56 + 840) = v88;
  *(v56 + 816) = v98;
  OUTLINED_FUNCTION_12_1();
  *(v56 + 848) = 0xD000000000000017;
  *(v56 + 856) = v99;
  OUTLINED_FUNCTION_281(&unk_28022AE30, &qword_267EFC0B0, 0);
  OUTLINED_FUNCTION_7_0(v120);
  if (v61)
  {
    sub_267B9F98C(v120, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 864) = 0u;
    *(v56 + 880) = 0u;
  }

  else
  {
    *(v56 + 888) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 864));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_271();
    v100();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 896) = 0xD000000000000013;
  *(v56 + 904) = v101;
  OUTLINED_FUNCTION_35_6(0xFFFFFFFF80000000, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v61)
  {
    sub_267B9F98C(v121, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 912) = 0u;
    *(v56 + 928) = 0u;
  }

  else
  {
    *(v56 + 936) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 912));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v102();
  }

  OUTLINED_FUNCTION_61_10();
  *(v56 + 944) = v103;
  *(v56 + 952) = 0xE600000000000000;
  v104 = *(v1 + 88);
  if (v104)
  {
    v105 = sub_267EF77C8();
    v106 = v104;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  *(v56 + 960) = v106;
  *(v56 + 984) = v105;
  OUTLINED_FUNCTION_12_1();
  *(v56 + 992) = 0xD000000000000012;
  *(v56 + 1000) = v107;
  OUTLINED_FUNCTION_49_3(0, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v122);
  if (v61)
  {

    sub_267B9F98C(v122, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 1008) = 0u;
    *(v56 + 1024) = 0u;
  }

  else
  {
    *(v56 + 1032) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 1008));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v108();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 1040) = 0xD000000000000012;
  *(v56 + 1048) = v109;
  sub_267C2FB6C(v1, v123, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v123);
  if (v61)
  {
    sub_267B9F98C(v123, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 1056) = 0u;
    *(v56 + 1072) = 0u;
  }

  else
  {
    *(v56 + 1080) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 1056));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_271();
    v110();
  }

  OUTLINED_FUNCTION_35_14();
  *(v56 + 1088) = v111;
  OUTLINED_FUNCTION_34_12();
  *(v56 + 1096) = v112;
  LOBYTE(v112) = *(v1 + 0x8000000);
  *(v56 + 1128) = v88;
  *(v56 + 1104) = v112;
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_266_0()
{

  return sub_267EF4198();
}

uint64_t OUTLINED_FUNCTION_173_1()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_173_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t *OUTLINED_FUNCTION_159()
{
  *(v0 + 216) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 192));
}

uint64_t OUTLINED_FUNCTION_159_1(char a1)
{
  *(v1 + 1384) = a1 & 1;
}

double OUTLINED_FUNCTION_216()
{
  result = 0.0;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_267(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 368);
  *(v4 + 288) = a1;
  *(v4 + 296) = a2;
}

uint64_t *OUTLINED_FUNCTION_169()
{
  *(v0 + 504) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 480));
}

double OUTLINED_FUNCTION_169_0()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_169_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_169_2(uint64_t a1)
{
  *(v1 + 32) = *(a1 + 24);
  v4 = *v2;

  return sub_267BAF0DC(v4);
}

uint64_t OUTLINED_FUNCTION_287_0()
{

  return sub_267EF8348();
}

double OUTLINED_FUNCTION_166_0()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_166_1(uint64_t a1, uint64_t a2)
{

  return sub_267EF8588();
}

void *OUTLINED_FUNCTION_166_2()
{

  return sub_267BE8B74(0, v0, 0);
}

uint64_t *OUTLINED_FUNCTION_166_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[5] = a1;
  v2[6] = a2;

  return __swift_allocate_boxed_opaque_existential_0(v2 + 2);
}

double OUTLINED_FUNCTION_129_0()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_129_1(uint64_t a1)
{
  *(v1 + 1272) = a1;
  __swift_storeEnumTagSinglePayload(v2, 0, 1, a1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_129_2(uint64_t a1)
{

  return sub_267EF7C18();
}

void OUTLINED_FUNCTION_129_3()
{
  *(v1 + 16) = v2;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t sub_267BD4DF4()
{
  OUTLINED_FUNCTION_56();
  (*(v0[16] + 96))(v0[15]);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  (*(v2 + 40))(v1, v2);
  v3 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v3);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_267C376A8;
  v6 = v0[14];

  return MEMORY[0x2821BB5D0](v6, v3, v4);
}

uint64_t sub_267BD4F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return MEMORY[0x2822009F8](sub_267BD4DF4, 0, 0);
}

uint64_t sub_267BD4F28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8))();
  sub_267B9AFEC(v3 + 16, a2);
}

void OUTLINED_FUNCTION_156_0()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void sub_267BD5008(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v91 = sub_267EF6F58();
  OUTLINED_FUNCTION_58();
  v90 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v96 = v12 - v11;
  OUTLINED_FUNCTION_26_2();
  v97 = sub_267EF6D88();
  OUTLINED_FUNCTION_58();
  v95 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_45_0();
  v94 = v16;
  OUTLINED_FUNCTION_26_2();
  v102 = sub_267EF6CD8();
  OUTLINED_FUNCTION_58();
  v98 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  v101 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_45_0();
  v106 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD78, &qword_267F088D8);
  OUTLINED_FUNCTION_18(v22);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  v99 = v24;
  OUTLINED_FUNCTION_26_2();
  v25 = sub_267EF6F08();
  OUTLINED_FUNCTION_58();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_45_0();
  v93 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD40, &unk_267F003E0);
  v32 = OUTLINED_FUNCTION_18(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_33();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_45_0();
  v107 = v34;
  OUTLINED_FUNCTION_26_2();
  v35 = sub_267EF6EA8();
  OUTLINED_FUNCTION_58();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_0_0();
  v41 = v40 - v39;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v42 = sub_267EF8A08();
  __swift_project_value_buffer(v42, qword_280240FB0);
  v43 = sub_267EF89F8();
  v44 = sub_267EF95D8();
  v45 = OUTLINED_FUNCTION_13_0();
  v89 = v27;
  if (os_log_type_enabled(v45, v46))
  {
    OUTLINED_FUNCTION_14_0();
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_267B93000, v43, v44, "#RecentInteractionUtils Recording read interaction", v47, 2u);
    v8 = v6;
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  sub_267B9A598(a5, v7, &unk_28022BD40, &unk_267F003E0);
  OUTLINED_FUNCTION_18_25();
  if (v48)
  {
    sub_267EF6E98();
    v51 = v102;
    v52 = v106;
    if (v8)
    {

      v8 = 0;
      v49 = 1;
    }

    else
    {
      v49 = 0;
    }

    __swift_storeEnumTagSinglePayload(v107, v49, 1, v35);
    OUTLINED_FUNCTION_18_25();
    if (!v48)
    {
      sub_267B9F98C(v7, &unk_28022BD40, &unk_267F003E0);
    }

    v50 = v107;
  }

  else
  {
    v50 = v107;
    (*(v37 + 32))();
    __swift_storeEnumTagSinglePayload(v107, 0, 1, v35);
    v51 = v102;
    v52 = v106;
  }

  OUTLINED_FUNCTION_18_25();
  if (v48)
  {
    sub_267B9F98C(v50, &unk_28022BD40, &unk_267F003E0);
    v53 = sub_267EF89F8();
    sub_267EF95E8();
    v54 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_14_0();
      v56 = swift_slowAlloc();
      *v56 = 0;
      OUTLINED_FUNCTION_12_28();
      _os_log_impl(v57, v58, v59, v60, v56, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }
  }

  else
  {
    v108 = v41;
    (*(v37 + 32))(v41, v50, v35);
    sub_267EF6CC8();
    sub_267BBD380(a4);
    v85 = v37;
    if (!v61)
    {
      sub_267BBDEAC();
      v52 = v106;
    }

    sub_267EF6C88();

    v62 = *(v98 + 8);
    v62(v101, v51);
    sub_267EF6CB8();
    if (v8)
    {

      v62(v52, v51);
      __swift_storeEnumTagSinglePayload(v99, 1, 1, v25);
      goto LABEL_23;
    }

    v62(v52, v51);
    if (__swift_getEnumTagSinglePayload(v99, 1, v25) == 1)
    {
LABEL_23:
      sub_267B9F98C(v99, &qword_28022BD78, &qword_267F088D8);
      v63 = a4;
      v64 = sub_267EF89F8();
      v65 = sub_267EF95E8();

      if (os_log_type_enabled(v64, v65))
      {
        OUTLINED_FUNCTION_21_0();
        v66 = swift_slowAlloc();
        OUTLINED_FUNCTION_48_7();
        v67 = swift_slowAlloc();
        v109 = v67;
        *v66 = 136315138;
        v68 = sub_267BBD380(v63);
        if (!v69)
        {
          v68 = sub_267BBDEAC();
        }

        v70 = sub_267BA33E8(v68, v69, &v109);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_267B93000, v64, v65, "#RecentInteractionUtils Error finding entity %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();

        (*(v37 + 8))(v108, v35);
      }

      else
      {

        (*(v37 + 8))(v108, v35);
      }

      return;
    }

    (*(v89 + 32))(v93, v99, v25);
    sub_267DAB504(a1, a6);
    (*(v95 + 16))(v92, v94, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD60, &qword_267F088C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFC020;
    *(inited + 32) = 0x73746361746E6F63;
    *(inited + 40) = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD68, &qword_267F088D0);
    v72 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_267EFC020;
    v74 = *(v89 + 16);
    v74(v73 + v72, v93, v25);
    *(inited + 48) = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD70, &qword_267F00648);
    sub_267EF8F28();
    sub_267EF6F18();
    v74(v88, v93, v25);
    v75 = sub_267EF89F8();
    v76 = sub_267EF95D8();
    v77 = v41;
    if (os_log_type_enabled(v75, v76))
    {
      OUTLINED_FUNCTION_21_0();
      v78 = swift_slowAlloc();
      OUTLINED_FUNCTION_48_7();
      v105 = swift_slowAlloc();
      v109 = v105;
      *v78 = 136315138;
      v103 = sub_267EF6EC8();
      v80 = v79;
      v81 = *(v89 + 8);
      v81(v88, v25);
      v82 = v81;
      v83 = sub_267BA33E8(v103, v80, &v109);
      v77 = v108;

      *(v78 + 4) = v83;
      _os_log_impl(&dword_267B93000, v75, v76, "#RecentInteractionUtils donating : %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v105);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();

      v84 = v82;
    }

    else
    {

      v84 = *(v89 + 8);
      v84(v88, v25);
    }

    sub_267C167B0();
    (*(v90 + 8))(v96, v91);
    (*(v95 + 8))(v94, v97);
    v84(v93, v25);
    (*(v85 + 8))(v77, v35);
  }
}

id sub_267BD5AF0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_267EF8FF8();

  v4 = [v2 initWithLanguage_];

  return v4;
}

uint64_t sub_267BD5B64()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267BD5C84()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_60_9(*(v0 + 352));

  sub_267B9FF34(v1, &unk_28022AE30, &qword_267EFC0B0);

  v2 = OUTLINED_FUNCTION_18_7();

  return v3(v2);
}

uint64_t sub_267BD5D40()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_267BD5E30()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  *v4 = *v1;
  v3[152] = v5;
  v3[153] = v0;

  OUTLINED_FUNCTION_38_8();

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 38);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267BD5F58(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267BD5FB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267BD6008()
{
  v147 = v0;
  OUTLINED_FUNCTION_23_9();
  v1 = OUTLINED_FUNCTION_105_2();
  *(v0 + 760) = v2;
  v4 = *(v3(v1) + 416);

  if (!v4)
  {
    goto LABEL_20;
  }

  if (!*(v4 + 112))
  {

LABEL_20:
    v7 = *(v0 + 1224);
    goto LABEL_23;
  }

  v5 = *(*(v0 + 1192) + 24);
  if (!v5 || !*(v5 + 32))
  {
    v7 = *(v0 + 1224);
    goto LABEL_9;
  }

  v6 = sub_267BF4920();
  v7 = *(v0 + 1224);
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v8 = *(v0 + 1032);
  v9 = *(v0 + 1008);
  v10 = *(v0 + 992);
  (*(*(v0 + 1024) + 104))(v8, *MEMORY[0x277D5FFB8], *(v0 + 1016));
  sub_267EF6EA8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);

  sub_267EF2CB8();
  v15 = OUTLINED_FUNCTION_117();
  sub_267DA8A74(v15, v16, v17, v18, v8, v9, v10);
  if (v7)
  {
    v19 = *(v0 + 1024);
    v140 = *(v0 + 1016);
    v143 = *(v0 + 1032);
    v139 = *(v0 + 1008);
    v137 = *(v0 + 1216);
    v138 = *(v0 + 992);
    v20 = *(v0 + 976);
    v21 = *(v0 + 968);

    (*(v20 + 8))(v138, v21);
    sub_267BD6C8C(v139, &unk_28022BD40);
    (*(v19 + 8))(v143, v140);
LABEL_30:
    OUTLINED_FUNCTION_7_18();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_100_3();

    return v69();
  }

  v98 = *(v0 + 1024);
  v142 = *(v0 + 1016);
  v145 = *(v0 + 1032);
  v99 = *(v0 + 1008);

  v100 = OUTLINED_FUNCTION_65_2();
  v101(v100);
  sub_267BD6C8C(v99, &unk_28022BD40);
  (*(v98 + 8))(v145, v142);
  v7 = 0;
LABEL_10:
  OUTLINED_FUNCTION_26_10();
  if ((sub_267BD705C() & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  v22 = *(v0 + 408);
  v23 = *(v0 + 416);
  OUTLINED_FUNCTION_126_1((v0 + 384));
  OUTLINED_FUNCTION_42_7();
  v25 = v24(v22, v23);
  if (!sub_267BAF0DC(v25))
  {

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_97_3();
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x26D609870](0, v25);
  }

  else
  {
    v26 = *(v25 + 32);
  }

  v27 = v26;

  v28 = [v27 sender];

  if (!v28)
  {
    goto LABEL_22;
  }

  v29 = sub_267EF89F8();
  v30 = sub_267EF95D8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_32();
    *v31 = 0;
    _os_log_impl(&dword_267B93000, v29, v30, "#ReadComponentAction First message from sender, recording", v31, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v32 = *(v0 + 1000);
  v33 = *(v0 + 984);

  sub_267EF6EA8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  sub_267EF2CB8();
  v38 = OUTLINED_FUNCTION_117();
  sub_267BD5008(v38, v39, v40, v41, v32, v33);
  if (v7)
  {
    v42 = *(v0 + 1216);
    v141 = *(v0 + 984);
    v144 = *(v0 + 1000);
    v43 = *(v0 + 976);
    v44 = *(v0 + 968);

    (*(v43 + 8))(v141, v44);
    sub_267BD6C8C(v144, &unk_28022BD40);
    goto LABEL_30;
  }

  v102 = *(v0 + 1000);
  v103 = *(v0 + 984);
  v104 = *(v0 + 976);
  v105 = *(v0 + 968);

  (*(v104 + 8))(v103, v105);
  sub_267BD6C8C(v102, &unk_28022BD40);
  v7 = 0;
LABEL_23:
  v45 = *(v0 + 1216);
  v46 = sub_267EF89F8();
  v47 = sub_267EF95D8();

  if (OUTLINED_FUNCTION_116_0())
  {
    v48 = *(v0 + 1216);
    OUTLINED_FUNCTION_48();
    v146 = OUTLINED_FUNCTION_55_0();
    *v45 = 136315138;
    v49 = [v48 patternId];
    v50 = sub_267EF9028();
    v52 = v51;

    v53 = sub_267BA33E8(v50, v52, &v146);

    *(v45 + 1) = v53;
    _os_log_impl(&dword_267B93000, v46, v47, "#ReadComponentAction pattern %s successfully executed", v45, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_23_9();
  v54 = OUTLINED_FUNCTION_105_2();
  *(v0 + 768) = v55;
  v56(v54);

  v57 = &type metadata for Features;
  *(v0 + 368) = &type metadata for Features;
  v58 = sub_267BAFCAC();
  *(v0 + 376) = v58;
  *(v0 + 344) = 2;
  v59 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v0 + 344));
  if ((v59 & 1) == 0)
  {
    OUTLINED_FUNCTION_23_9();
    v60 = *(v0 + 840);
    *(v0 + 776) = *(v0 + 856);
    v61(v60);

    sub_267C907E8();
    ConversationEventStore.init()(v0 + 16);
    OUTLINED_FUNCTION_92_2();
    sub_267C917B0(v62, v63, v64, 0, v65, 1);

    sub_267B9EF14(v0 + 16);
  }

  v66 = MEMORY[0x277D84F90];
  *(v0 + 784) = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_0((v0 + 424), *(v0 + 448));
  OUTLINED_FUNCTION_63();
  if ((sub_267EF3C48() & 1) == 0)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_54_5();
  sub_267C92460(v67);
  if (v7)
  {
    v68 = *(v0 + 1216);

    goto LABEL_30;
  }

  v72 = v0 + 784;
  MEMORY[0x26D608F90]();
  v73 = *((*(v0 + 784) & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((*(v0 + 784) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v73 >> 1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    OUTLINED_FUNCTION_3();
    sub_267EF9368();
    v7 = 0;
    v66 = *v72;
LABEL_35:
    *(v0 + 1240) = v66;
    *(v0 + 1232) = v7;
    OUTLINED_FUNCTION_23_9();
    v74 = OUTLINED_FUNCTION_105_2();
    *(v0 + 824) = v75;
    v76(v74);

    *(v0 + 488) = v57;
    *(v0 + 496) = v58;
    *(v0 + 464) = 14;
    v77 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0((v0 + 464));
    v78 = sub_267EF89F8();
    v58 = sub_267EF95D8();
    if (os_log_type_enabled(v78, v58))
    {
      v79 = swift_slowAlloc();
      *v79 = 67109120;
      *(v79 + 4) = v77 & 1;
      _os_log_impl(&dword_267B93000, v78, v58, "#ReadComponentAction multilingualMessageReading feature enabled : %{BOOL}d", v79, 8u);
      OUTLINED_FUNCTION_18_2();
    }

    if (v77)
    {
      OUTLINED_FUNCTION_23_9();
      v80 = OUTLINED_FUNCTION_105_2();
      *(v0 + 808) = v81;
      v83 = *(v82(v80) + 425);

      if (v83 == 1)
      {
        OUTLINED_FUNCTION_26_10();
        if (sub_267C90620())
        {
          OUTLINED_FUNCTION_26_10();
          *(v0 + 1248) = sub_267C915F8();
          *(v0 + 1256) = v84;
          if (v84)
          {
            v85 = OUTLINED_FUNCTION_26_10();
            v86(v85);
            OUTLINED_FUNCTION_78_3();
            if (swift_dynamicCast())
            {
              v87 = OUTLINED_FUNCTION_57_0();
              __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
              OUTLINED_FUNCTION_61_0();
              sub_267C96464();
              v91 = sub_267EF72E8();
              sub_267BA9F38(0, &qword_28022A0A8, 0x277CE2028);
              v92 = sub_267EF9028();
              *(v0 + 1264) = sub_267BFEA28(v92, v93, &selRef_initWithBundleIdentifier_);
              ConversationEventStore.init()(v0 + 112);
              v94 = [v91 assistantVoiceMaps];
              v95 = sub_267EF72B8();

              *(v0 + 1272) = sub_267C90434(v95);
              v96 = swift_task_alloc();
              *(v0 + 1280) = v96;
              *v96 = v0;
              v96[1] = sub_267C909A4;
              v148 = &off_2878D0918;
              OUTLINED_FUNCTION_100_3();

              return sub_267C9C508();
            }

            v106 = *(v0 + 952);
            v58 = *(v0 + 944);

            OUTLINED_FUNCTION_78();
            __swift_storeEnumTagSinglePayload(v107, v108, v109, v106);
            sub_267BD6C8C(v58, &qword_28022A090);
          }
        }
      }
    }

    *(v0 + 792) = v66;
    v72 = sub_267BAF0DC(v66);
    if (!v72)
    {
      break;
    }

    v57 = (v66 + 32);
    while (!__OFSUB__(v72--, 1))
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        v111 = OUTLINED_FUNCTION_66();
        v112 = MEMORY[0x26D609870](v111);
      }

      else
      {
        if ((v72 & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v73 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v72 >= v73)
        {
          goto LABEL_69;
        }

        v112 = *(&v57->Kind + v72);
      }

      v58 = v112;
      objc_opt_self();
      swift_dynamicCastObjCClass();
      OUTLINED_FUNCTION_98_4();
      if (v0 != -792 || !v72)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    OUTLINED_FUNCTION_8_2(v73);
    sub_267EF9328();
  }

LABEL_58:
  v113 = *(v0 + 1232);
  v114 = swift_task_alloc();
  OUTLINED_FUNCTION_9_16(v114);
  OUTLINED_FUNCTION_119_1();

  if (v113)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_54_5();
      sub_267C93120();
    }
  }

  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_11_17();
  sub_267EF47F8();
  sub_267EF4858();
  v115 = OUTLINED_FUNCTION_56_4();
  v116 = *(MEMORY[0x277D47000](v115) + 88);

  if (!v116)
  {
    v117 = *(v0 + 416);
    __swift_project_boxed_opaque_existential_0((v0 + 384), *(v0 + 408));
    v118 = OUTLINED_FUNCTION_8_16();
    v119(v118);
    OUTLINED_FUNCTION_76();
    sub_267C904F0(v120);
    OUTLINED_FUNCTION_125_1();

    OUTLINED_FUNCTION_40_6();
    sub_267EF3B98();
    *(v0 + 528) = &type metadata for MessagesFeatureFlagsImpl;
    OUTLINED_FUNCTION_69_2(off_2878D1228);

    __swift_destroy_boxed_opaque_existential_0((v0 + 504));
    sub_267EF4158();
    v121 = OUTLINED_FUNCTION_3_19();
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v124);
    OUTLINED_FUNCTION_107_0();
    sub_267EF4818();
  }

  OUTLINED_FUNCTION_58_3();
  v125 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v125);
  v126 = sub_267EF4188();
  v127 = OUTLINED_FUNCTION_44_9(v126);
  OUTLINED_FUNCTION_70_4(v127);

  OUTLINED_FUNCTION_51_4();
  v128 = swift_task_alloc();
  v129 = OUTLINED_FUNCTION_83_2(v128);
  *v129 = v130;
  OUTLINED_FUNCTION_3_21(v129);
  OUTLINED_FUNCTION_100_3();

  return sub_267BCF3A4(v131, v132, v133, v134, v135);
}

uint64_t sub_267BD6C8C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_12(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_22();
  (*(v5 + 8))(v2);
  return v2;
}

uint64_t sub_267BD6CE0()
{
  OUTLINED_FUNCTION_89_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_22();
  v3 = OUTLINED_FUNCTION_61_0();
  v4(v3);
  return v0;
}

uint64_t sub_267BD6D38()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_97_7();
  sub_267BD6DA0(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267BD6DA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1, uint64_t a2)
{
  *v2 = v3;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_93_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = v5[29];
  v8 = v5[30];
  v9 = v5[27];
  v10 = v5[28];

  sub_267BFF0F4(v9, v10, v7, v8, a5);
}

void OUTLINED_FUNCTION_93_5()
{
  *(v3 - 112) = v0[160];
  v5 = v0[142];
  *(v3 - 136) = v2;
  *(v3 - 128) = v5;
  *(v3 - 144) = v0[87];
}

unint64_t OUTLINED_FUNCTION_93_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_267BA33E8(a18, v18, a3);
}

uint64_t OUTLINED_FUNCTION_93_7()
{

  return sub_267B9F98C(v2 - 176, v0, v1);
}

uint64_t sub_267BD6EF0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 560) = v0;

  OUTLINED_FUNCTION_22_2();

  if (v0)
  {
    v7 = sub_267DDE1FC;
  }

  else
  {
    v7 = sub_267BD5C84;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267BD705C()
{
  OUTLINED_FUNCTION_16_9();
  *&v47 = v1;
  v4 = *(v3 + 8);
  v5 = *(v4 + 8);
  v5();
  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v6, v7);
  v8 = v52;
  OUTLINED_FUNCTION_126_1(&v50);
  v9 = OUTLINED_FUNCTION_75_2();
  v10(v9, v8);
  sub_267BD997C();

  __swift_destroy_boxed_opaque_existential_0(&v50);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
    }
  }

  else
  {
    sub_267BD6C8C(&v39, &qword_280229910);
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
  }

  v46[0] = v0;
  v11 = (v5)(v2, v4);
  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v12, v13);
  v14 = v49;
  OUTLINED_FUNCTION_126_1(&v47);
  v15 = OUTLINED_FUNCTION_75_2();
  v16(v15, v14);
  v17 = v11;
  sub_267BD9E24();

  __swift_destroy_boxed_opaque_existential_0(&v47);
  if (v40)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }
  }

  else
  {
    sub_267BD6C8C(&v39, &qword_280229910);
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
  }

  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v18, v19);
  __swift_project_boxed_opaque_existential_0(&v39, v40);
  v20 = OUTLINED_FUNCTION_8_16();
  v21(v20);
  OUTLINED_FUNCTION_76();
  if (sub_267BAF0DC(v22))
  {
    OUTLINED_FUNCTION_97_3();
    if ((v17 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](0, v17);
    }

    else
    {
      v23 = *(v17 + 32);
    }

    OUTLINED_FUNCTION_125_1();

    v24 = [v17 & 0xC000000000000001 sender];
  }

  else
  {

    v24 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(&v39);
  sub_267BD6CE0();
  v25 = v40;
  if (v40)
  {
    v26 = v41;
    OUTLINED_FUNCTION_126_1(&v39);
    OUTLINED_FUNCTION_42_7();
    v25 = v27(v25, v26);
    __swift_destroy_boxed_opaque_existential_0(&v39);
  }

  else
  {
    sub_267BD6C8C(&v39, &qword_280229CE0);
  }

  v45 = v0;
  (v5)(v2, v4);
  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v28, v29);
  __swift_project_boxed_opaque_existential_0(&v39, v40);
  v30 = OUTLINED_FUNCTION_6_17();
  v31(v30);
  sub_267BD997C();

  __swift_destroy_boxed_opaque_existential_0(&v39);
  if (v46[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      if (*(v43 + 16) == 1)
      {
        v38 = v44;
        if (v42)
        {
        }

        else
        {
          v37 = sub_267C904B4(v43);

          if (v37 != 1)
          {

            v25 = v37;
          }
        }
      }

      else
      {
        v32 = v44;
      }
    }
  }

  else
  {
    sub_267BD6C8C(v46, &qword_280229910);
  }

  if (!v25)
  {

LABEL_29:
    v35 = 1;
    goto LABEL_30;
  }

  if (!v24)
  {

    goto LABEL_29;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v33 = v24;
  v34 = sub_267EF9818();

  v35 = v34 ^ 1;
LABEL_30:
  sub_267BD6C8C(&v47, &qword_280229CE0);
  sub_267BD6C8C(&v50, &qword_280229CE0);
  return v35 & 1;
}

void OUTLINED_FUNCTION_146_0()
{
  *(v0 + v1[9]) = v4;
  *(v0 + v1[10]) = v3;
  *(v0 + v1[11]) = v2;
}

uint64_t OUTLINED_FUNCTION_146_2()
{

  return sub_267EF9918();
}

uint64_t sub_267BD7730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_267EF89E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = &type metadata for TTSUtil;
  v148 = &off_2878D0CB0;
  v146[0] = a4;
  v146[1] = a5;
  v139 = sub_267EF2D78();
  if (!v14)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v21 = sub_267EF8A08();
    __swift_project_value_buffer(v21, qword_280240FB0);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_267B93000, v22, v23, "#ContentProcessor.detectContentLanguage locale does not have a language code returning nil and skipping check", v24, 2u);
      MEMORY[0x26D60A7B0](v24, -1, -1);
    }

    v25 = 0;
    goto LABEL_81;
  }

  v15 = v14;
  v132 = a3;
  v136 = v10;
  v137 = v11;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v16 = sub_267EF8A08();
  __swift_project_value_buffer(v16, qword_280240FB0);

  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v140 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_267BA33E8(v139, v15, &v140);
    *(v19 + 12) = 2048;
    *(v19 + 14) = sub_267EF9138();

    _os_log_impl(&dword_267B93000, v17, v18, "#ContentProcessor.detectContentLanguage -- siriLanguageCode is: %s, running language detection for content of length: %ld", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x26D60A7B0](v20, -1, -1);
    MEMORY[0x26D60A7B0](v19, -1, -1);
  }

  else
  {
  }

  v26 = objc_allocWithZone(MEMORY[0x277CD89E0]);
  v27 = [v26 initWithUnit_];
  sub_267BFE9D0(a1, a2, v27);
  v135 = v27;
  v28 = sub_267EF9588();
  v29 = sub_267EF89F8();
  v30 = sub_267EF95D8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = *(v28 + 16);
    _os_log_impl(&dword_267B93000, v29, v30, "#ContentProcessor.detectContentLanguage tokens.count is %ld", v31, 0xCu);
    MEMORY[0x26D60A7B0](v31, -1, -1);
  }

  v133 = v28;

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v32 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  sub_267EF89B8();
  v33 = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
  v34 = sub_267EF8FF8();
  [v33 processString:v34];

  v134 = v33;
  v35 = sub_267EF9738();
  sub_267EF9688();
  sub_267EF89B8();

  v36 = sub_267EF89F8();
  v37 = sub_267EF95D8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v140 = v39;
    *v38 = 136315138;
    type metadata accessor for NLLanguage(0);
    sub_267BF911C();
    v40 = sub_267EF8F08();
    v42 = sub_267BA33E8(v40, v41, &v140);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_267B93000, v36, v37, "#ContentProcessor generated hypotheses list: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x26D60A7B0](v39, -1, -1);
    MEMORY[0x26D60A7B0](v38, -1, -1);
  }

  v43 = 1 << *(v35 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v35 + 64);
  if (v45)
  {
    v46 = 0;
    v47 = __clz(__rbit64(v45));
    v25 = (v45 - 1) & v45;
    v48 = (v43 + 63) >> 6;
  }

  else
  {
    v49 = 0;
    v48 = (v43 + 63) >> 6;
    do
    {
      v46 = v45 + 1;
      if (v45 + 1 >= v48)
      {

        v96 = sub_267EF89F8();
        v97 = sub_267EF95E8();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&dword_267B93000, v96, v97, "#ContentProcessor did not produce topHypothesis, this shouldn't happen", v98, 2u);
          MEMORY[0x26D60A7B0](v98, -1, -1);
        }

LABEL_71:
        goto LABEL_72;
      }

      v50 = *(v35 + 72 + 8 * v45);
      v49 += 64;
      ++v45;
    }

    while (!v50);
    v25 = (v50 - 1) & v50;
    v47 = __clz(__rbit64(v50)) + v49;
  }

  v51 = *(*(v35 + 48) + 8 * v47);
  v52 = *(*(v35 + 56) + 8 * v47);

  v53 = v51;
  while (v25)
  {
LABEL_32:
    v55 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v56 = v55 | (v46 << 6);
    v57 = *(*(v35 + 56) + 8 * v56);
    if (v52 < v57)
    {
      v37 = *(*(v35 + 48) + 8 * v56);

      v53 = v37;
      v52 = v57;
    }
  }

  while (1)
  {
    v54 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_103;
    }

    if (v54 >= v48)
    {
      break;
    }

    v25 = *(v35 + 64 + 8 * v54);
    ++v46;
    if (v25)
    {
      v46 = v54;
      goto LABEL_32;
    }
  }

  v58 = v53;
  v59 = sub_267EF89F8();
  v60 = sub_267EF95D8();

  v61 = os_log_type_enabled(v59, v60);
  v138 = v58;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v140 = v63;
    *v62 = 136315138;
    v64 = sub_267EF9028();
    v66 = sub_267BA33E8(v64, v65, &v140);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_267B93000, v59, v60, "#ContentProcessor topHypothesis.key is %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x26D60A7B0](v63, -1, -1);
    MEMORY[0x26D60A7B0](v62, -1, -1);
  }

  v140 = sub_267EF9028();
  v141 = v67;
  v144 = 45;
  v145 = 0xE100000000000000;
  sub_267BB5034();
  v68 = sub_267EF98C8();

  if (v68[2])
  {
    v25 = v68[4];
    v69 = v68[5];
  }

  else
  {

    v25 = sub_267EF9028();
    v69 = v70;
  }

  v71 = sub_267EF89F8();
  v72 = sub_267EF95D8();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v140 = v74;
    *v73 = 136315394;
    *(v73 + 4) = sub_267BA33E8(v25, v69, &v140);
    *(v73 + 12) = 2048;
    *(v73 + 14) = v52;
    _os_log_impl(&dword_267B93000, v71, v72, "#ContentProcessor topLanguage prediction is: %s with topScore %f", v73, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x26D60A7B0](v74, -1, -1);
    MEMORY[0x26D60A7B0](v73, -1, -1);
  }

  v75 = v139;
  sub_267BF9174(v35);
  v77 = v76;
  v78 = sub_267EF89F8();
  v79 = sub_267EF95D8();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 134217984;
    *(v80 + 4) = v77;
    _os_log_impl(&dword_267B93000, v78, v79, "#ContentProcessor zh score %f", v80, 0xCu);
    MEMORY[0x26D60A7B0](v80, -1, -1);
  }

  __swift_project_boxed_opaque_existential_0(v146, v147);
  v81 = sub_267BD27AC(v25, v69);
  v82 = v81;
  if (v81)
  {
  }

  v142 = &type metadata for Features;
  v143 = sub_267BAFCAC();
  LOBYTE(v140) = 14;
  v83 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(&v140);
  if (v82 && (v83 & 1) != 0 && v77 > 0.9)
  {
    v84 = v25 == v75 && v15 == v69;
    if (!v84 && (sub_267EF9EA8() & 1) == 0)
    {
      v85 = v75 == 6649209 && v15 == 0xE300000000000000;
      if (!v85 && (sub_267EF9EA8() & 1) == 0)
      {

        v37 = sub_267EF89F8();
        v106 = sub_267EF95D8();
        if (os_log_type_enabled(v37, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&dword_267B93000, v37, v106, "#ContentProcessor combined chinese scores are over 90%% and we have a high quality asset for chinese", v107, 2u);
          MEMORY[0x26D60A7B0](v107, -1, -1);
          v108 = v138;
          v109 = v137;
          v110 = v136;
          v111 = v135;
          v112 = v134;
LABEL_104:

          (*(v109 + 8))(v13, v110);
          goto LABEL_81;
        }

LABEL_103:
        v108 = v37;
        v37 = v135;
        v111 = v134;
        v112 = v138;
        v109 = v137;
        v110 = v136;
        goto LABEL_104;
      }
    }
  }

  if (v52 <= 0.95 || (v25 == v75 ? (v86 = v15 == v69) : (v86 = 0), v86 || (sub_267EF9EA8() & 1) != 0))
  {

    v87 = sub_267EF89F8();
    v88 = sub_267EF95D8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      v90 = "#ContentProcessor different language not detected with confidence, will treat content normally -- returning nil";
      goto LABEL_66;
    }

LABEL_77:
    v91 = v87;
    v87 = v135;
    v94 = v134;
    v95 = v138;
LABEL_78:
    v92 = v137;
    v93 = v136;
LABEL_79:

    (*(v92 + 8))(v13, v93);
    goto LABEL_80;
  }

  v99 = v133[2];

  if (!v82 && v99 <= 2)
  {

    v87 = sub_267EF89F8();
    v88 = sub_267EF95D8();
    if (!os_log_type_enabled(v87, v88))
    {
      goto LABEL_77;
    }

    v89 = swift_slowAlloc();
    *v89 = 0;
    v90 = "#ContentProcessor do not apply language treatment, less than 3 tokens, and there is no high quality asset downloaded for the expected language";
LABEL_66:
    _os_log_impl(&dword_267B93000, v87, v88, v90, v89, 2u);
    MEMORY[0x26D60A7B0](v89, -1, -1);
    v91 = v138;
LABEL_67:
    v92 = v137;
    v93 = v136;
    v94 = v135;
    v95 = v134;
    goto LABEL_79;
  }

  v140 = v75;
  v141 = v15;

  MEMORY[0x26D608E60](46, 0xE100000000000000);

  MEMORY[0x26D608E60](v25, v69);

  v101 = v140;
  v102 = v141;
  if (sub_267EF2D48() == 0x4E492D6E65 && v103 == 0xE500000000000000)
  {
  }

  else
  {
    v105 = sub_267EF9EA8();

    if ((v105 & 1) == 0)
    {
      goto LABEL_98;
    }
  }

  v113 = v25 == 26984 && v69 == 0xE200000000000000;
  if (v113 || (sub_267EF9EA8() & 1) != 0)
  {

    v87 = sub_267EF89F8();
    v114 = sub_267EF95D8();
    v115 = os_log_type_enabled(v87, v114);
    v95 = v138;
    if (!v115)
    {
      v91 = v87;
      v87 = v135;
      v94 = v134;
      goto LABEL_78;
    }

    v116 = swift_slowAlloc();
    *v116 = 0;
    _os_log_impl(&dword_267B93000, v87, v114, "#ContentProcessor do not apply language treatment, en-IN siri locale supports hindi", v116, 2u);
    MEMORY[0x26D60A7B0](v116, -1, -1);
    v91 = v95;
    goto LABEL_67;
  }

LABEL_98:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  inited = swift_initStackObject();
  v133 = &v132;
  *(inited + 32) = 0x687A2E657579;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0x64692E736DLL;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 16) = xmmword_267EFCC90;
  v140 = v101;
  v141 = v102;
  MEMORY[0x28223BE20](inited);
  *(&v132 - 2) = &v140;
  v118 = sub_267BC2B54();
  swift_setDeallocating();
  sub_267DB7080();

  if (v118)
  {

    v119 = sub_267EF89F8();
    v120 = sub_267EF95D8();

    v121 = os_log_type_enabled(v119, v120);
    v122 = v138;
    if (v121)
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v140 = v124;
      *v123 = 136315394;
      v125 = sub_267BA33E8(v139, v15, &v140);

      *(v123 + 4) = v125;
      *(v123 + 12) = 2080;
      v126 = sub_267BA33E8(v25, v69, &v140);

      *(v123 + 14) = v126;
      _os_log_impl(&dword_267B93000, v119, v120, "#ContentProcessor do not apply language treatment, mapping similar language %s to %s", v123, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v124, -1, -1);
      MEMORY[0x26D60A7B0](v123, -1, -1);

      goto LABEL_71;
    }

LABEL_72:
    (*(v137 + 8))(v13, v136);
LABEL_80:
    v25 = 0;
  }

  else
  {

    v127 = sub_267EF89F8();
    v128 = sub_267EF95D8();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v140 = v130;
      *v129 = 136315138;
      *(v129 + 4) = sub_267BA33E8(v25, v69, &v140);
      _os_log_impl(&dword_267B93000, v127, v128, "#ContentProcessor  very confident result for language %s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v130);
      MEMORY[0x26D60A7B0](v130, -1, -1);
      MEMORY[0x26D60A7B0](v129, -1, -1);

      v131 = &v149;
    }

    else
    {

      v131 = &v150;
    }

    (*(v137 + 8))(v13, v136);
  }

LABEL_81:
  __swift_destroy_boxed_opaque_existential_0(v146);
  return v25;
}

uint64_t sub_267BD8A98()
{
  OUTLINED_FUNCTION_120_4();
  if (*(v1 + 368))
  {
    v55 = 0;
    OUTLINED_FUNCTION_124_2();
    v5 = 1;
    v6 = *(v1 + 584);
  }

  else
  {
    v52 = *(v1 + 344);
    v53 = *(v1 + 336);
    v7 = qword_280228818;

    if (v7 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);
    v9 = sub_267EF89F8();
    v10 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v10))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v11, v12, "#SummarizableComponent running language detector");
      OUTLINED_FUNCTION_32_0();
    }

    v13 = *(v1 + 616);
    v14 = *(v1 + 560);
    v15 = *(v1 + 552);
    v16 = *(v1 + 512);
    v3 = *(v1 + 488);
    v17 = *(v1 + 432);

    v18 = v17[5];
    v19 = v17[6];
    __swift_project_boxed_opaque_existential_0(v17 + 2, v18);
    (*(v19 + 8))(v18, v19);
    __swift_project_boxed_opaque_existential_0((v1 + 96), *(v1 + 120));
    sub_267EF3B68();
    v4 = sub_267EF72E8();
    v55 = sub_267BD7730(v15, v14, v16, v4, &off_2878D0918);
    v5 = v20;
    v13(v16, v3);
    __swift_destroy_boxed_opaque_existential_0((v1 + 96));
    v21 = v17[5];
    v22 = v17[6];
    __swift_project_boxed_opaque_existential_0(v17 + 2, v21);
    (*(v22 + 8))(v21, v22);
    v2 = *(v1 + 168);
    __swift_project_boxed_opaque_existential_0((v1 + 136), *(v1 + 160));
    sub_267EF3B68();
    __swift_destroy_boxed_opaque_existential_0((v1 + 136));
    if (v5)
    {
      *(v1 + 280) = &type metadata for Features;
      *(v1 + 288) = sub_267BAFCAC();
      *(v1 + 256) = 14;

      v23 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0((v1 + 256));
      if (v23)
      {
        v3 = v5;
        v24 = *(v1 + 616);
        v25 = *(v1 + 504);
        v26 = *(v1 + 512);
        v27 = *(v1 + 488);
        v28 = *(v1 + 496);
        sub_267EF2D38();
        v29 = OUTLINED_FUNCTION_26_0();
        v24(v29);
        v30 = *(v28 + 32);
        v2 = v28 + 32;
        v30(v25, v26, v27);
      }

      else
      {
      }
    }

    v0 = sub_267BD90E8(v53, v52, *(v1 + 504));
    sub_267D5D300(v1 + 336);
    if (v0)
    {
      sub_267D5D300(v1 + 336);
      v31 = sub_267EF89F8();
      v32 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v32))
      {
        v33 = OUTLINED_FUNCTION_32();
        *v33 = 0;
        _os_log_impl(&dword_267B93000, v31, v32, "#SummarizableComponent Found unspeakable content", v33, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF96A8();
      if (qword_280228820 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_280228820);
      }

      v35 = *(v1 + 472);
      v34 = *(v1 + 480);
      v36 = *(v1 + 464);
      sub_267EF89D8();
      OUTLINED_FUNCTION_11_27();
      v0 = 2;
      sub_267EF89A8();
      (*(v35 + 8))(v34, v36);
      v6 = 0;
      v2 = 0;
      v4 = 0;
      v3 = 0;
    }

    else if (v5 < 2)
    {
      OUTLINED_FUNCTION_124_2();
      v6 = *(v1 + 584);
    }

    else
    {

      v37 = sub_267EF89F8();
      v38 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v38))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v39, v40, "#SummarizableComponent content was detected to be in a different language");
        OUTLINED_FUNCTION_32_0();
      }

      v41 = *(v1 + 448);

      sub_267D5D39C(v41, v1 + 216);
      if (*(v1 + 240))
      {
        sub_267B9A5E8((v1 + 216), v1 + 176);
      }

      else
      {
        *(v1 + 200) = &type metadata for TTSUtil;
        *(v1 + 208) = &off_2878D0CB0;
        *(v1 + 176) = v4;
        *(v1 + 184) = &off_2878D0918;
      }

      v42 = sub_267EF89F8();
      v43 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_5_2(v43))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v44, v45, "#TTSUtil userNotificationCenter or eventStore nil");
        OUTLINED_FUNCTION_32_0();
      }

      __swift_destroy_boxed_opaque_existential_0((v1 + 176));
      sub_267D5D300(v1 + 336);
      v4 = 0;
      v0 = 1;
      v3 = 0xE000000000000000;
      v6 = v55;
      v2 = v5;
    }

    (*(v1 + 616))(*(v1 + 504), *(v1 + 488));
  }

  v46 = *(v1 + 432);
  *(v1 + 296) = v6;
  *(v1 + 304) = v2;
  *(v1 + 312) = v4;
  *(v1 + 320) = v3;
  *(v1 + 328) = v0;
  v54 = v5;
  if (*(v46 + 416) && (*(v46 + 426) & 1) == 0)
  {

    sub_267C38238();

    v46 = *(v1 + 432);
  }

  v47 = *(v1 + 536);
  v48 = *(v1 + 528);
  swift_beginAccess();
  sub_267BB7AA0(v6, v2, v4, v3, v0);
  swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v46 + 248);
  sub_267E86ED4(v1 + 296, v48, v47);
  *(v46 + 248) = v56;
  swift_endAccess();

  sub_267D5D354(v55, v54);
  v49 = *(v1 + 424);

  *v49 = v6;
  *(v49 + 8) = v2;
  *(v49 + 16) = v4;
  *(v49 + 24) = v3;
  *(v49 + 32) = v0;
  OUTLINED_FUNCTION_1();

  return v50();
}

uint64_t sub_267BD90E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_267EF2728();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_267BD9420();
  sub_267BD9540(v9, v10);
  v12 = v11;
  if (v11[2] == 1)
  {
    v13 = v11[4];
    v14 = v11[5];
    v15 = v14 - v13;
    if (__OFSUB__(v14, v13))
    {
      __break(1u);
      goto LABEL_17;
    }

    v16 = sub_267EF9138();

    if (v15 == v16)
    {
      if (qword_280228818 == -1)
      {
LABEL_5:
        v17 = sub_267EF8A08();
        __swift_project_value_buffer(v17, qword_280240FB0);
        OUTLINED_FUNCTION_43();

        v18 = sub_267EF89F8();
        sub_267EF95D8();

        if (OUTLINED_FUNCTION_99())
        {
          v19 = OUTLINED_FUNCTION_48();
          v20 = OUTLINED_FUNCTION_52();
          v43[0] = v20;
          *v19 = 136315138;
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE20, &qword_267F08A48);
          v22 = MEMORY[0x26D608FD0](v12, v21);
          v24 = v23;

          v25 = sub_267BA33E8(v22, v24, v43);

          *(v19 + 4) = v25;
          OUTLINED_FUNCTION_20();
          _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v20);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }

        else
        {
        }

        v32 = 1;
        return v32 & 1;
      }

LABEL_17:
      OUTLINED_FUNCTION_0(&qword_280228818);
      goto LABEL_5;
    }
  }

  else
  {
  }

  v43[0] = a1;
  v43[1] = a2;
  sub_267DE9348(v8);
  sub_267BB5034();
  OUTLINED_FUNCTION_54_11();
  sub_267EF9908();
  v32 = v31;
  (*(v6 + 8))(v8, v5);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v33 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
  v34 = sub_267EF89F8();
  v35 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67109120;
    v36[1] = v32 & 1;
    OUTLINED_FUNCTION_20();
    _os_log_impl(v37, v38, v39, v40, v41, 8u);
    OUTLINED_FUNCTION_32_0();
  }

  return v32 & 1;
}

uint64_t sub_267BD9420()
{
  v0 = sub_267EF2728();
  OUTLINED_FUNCTION_58();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v6 = v5 - v4;
  sub_267EF26D8();
  sub_267BB5034();
  sub_267EF98B8();
  (*(v2 + 8))(v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  v7 = sub_267BF5748();
  v8 = OUTLINED_FUNCTION_11_28(v7);

  return v8;
}

void sub_267BD9540(uint64_t a1, uint64_t a2)
{
  sub_267BA9F38(0, &qword_28022AAA0, 0x277D79988);
  v2 = sub_267EF2D48();
  v4 = sub_267BD5AF0(v2, v3);
  v5 = sub_267EF8FF8();
  v6 = [v4 unspeakableRangeOfText_];

  sub_267BA9F38(0, &qword_28022AAA8, 0x277CCAE60);
  v7 = sub_267EF92F8();

  v8 = sub_267BAF0DC(v7);
  v9 = 0;
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 == v9)
    {

      return;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D609870](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = [v10 rangeValue];
    v15 = v14;
    v16 = sub_267EF2618();

    ++v9;
    if (v13 != v16)
    {
      v17 = &v13[v15];
      if (__OFADD__(v13, v15))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267C70730(0, *(v23 + 16) + 1, 1, v23);
        v23 = v21;
      }

      v19 = *(v23 + 16);
      v18 = *(v23 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_267C70730(v18 > 1, v19 + 1, 1, v23);
        v23 = v22;
      }

      *(v23 + 16) = v19 + 1;
      v20 = v23 + 16 * v19;
      *(v20 + 32) = v13;
      *(v20 + 40) = v17;
      v9 = v12;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_267BD974C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46_2();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if (swift_dynamicCast())
  {
    return sub_267B9A5E8(v17, a3);
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_267BD6C8C(v17, &qword_280229910);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v9 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95E8();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_48();
    *&v17[0] = OUTLINED_FUNCTION_64_2();
    *a2 = 136315138;
    *(a2 + 4) = sub_267BA33E8(0xD00000000000006DLL, 0x8000000267F14400, v17);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_26();
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}