void sub_231DE92E8(double a1)
{
  if ([objc_opt_self() isInternalBuild] && (sub_231CC8B78() & 1) != 0)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    [v1 setDuration_];
  }
}

void sub_231DE93AC()
{
  OUTLINED_FUNCTION_4_28();
  if (!v5)
  {
    [v0 setUrgencyStatus_];
    if (!v3)
    {
      goto LABEL_28;
    }

    v11 = objc_opt_self();
    v12 = v3;
    if (![v11 isInternalBuild] || (sub_231CC8B78() & 1) == 0 || (swift_getErrorValue(), sub_231E121C0(), , OUTLINED_FUNCTION_6_24(), !v13))
    {
LABEL_27:
      v58 = OUTLINED_FUNCTION_1_32();
      sub_231D42D00(v58, v59, v60, 0);
      goto LABEL_28;
    }

    v14 = sub_231DE9A44(v0);
    if (v15)
    {
      OUTLINED_FUNCTION_0_38();
      if (v18)
      {
        OUTLINED_FUNCTION_15_19();
        MEMORY[0x23837CC20](0xD000000000000012, 0x8000000231E38B50);

        OUTLINED_FUNCTION_9_21(v19, v20, v21, v22, v23, v24, v25, v26, v61, v62, v63, v64);
        sub_231E121C0();
        v27 = OUTLINED_FUNCTION_13_19();
        MEMORY[0x23837CC20](0xD000000000000012, v4, v27);

LABEL_26:

        OUTLINED_FUNCTION_3_33();

        v55 = OUTLINED_FUNCTION_8_20(v47, v48, v49, v50, v51, v52, v53, v54, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
        sub_231DE9AA8(v55, v56, v57);
        goto LABEL_27;
      }
    }

    OUTLINED_FUNCTION_5_30(v14, v15, v16, v17);
    v46 = sub_231E121C0();
    v73 = 0xD000000000000012;
    MEMORY[0x23837CC20](v46);
    goto LABEL_26;
  }

  if (v5 == 1)
  {
    [v0 setUrgencyStatus_];
    if (v1 != 0xFF && [objc_opt_self() isInternalBuild] && (sub_231CC8B78() & 1) != 0)
    {
      sub_231DE9A44(v0);
      if (v6)
      {
        OUTLINED_FUNCTION_0_38();
        if (v7)
        {
          OUTLINED_FUNCTION_15_19();
          MEMORY[0x23837CC20](0xD000000000000017, 0x8000000231E38B30);

          v8 = OUTLINED_FUNCTION_1_32();
          sub_231CFF668(v8, v9, v10);
          OUTLINED_FUNCTION_14_16();
          MEMORY[0x23837CC20](v1, v2);

LABEL_21:

          OUTLINED_FUNCTION_3_33();

          OUTLINED_FUNCTION_8_20(v34, v35, v36, v37, v38, v39, v40, v41, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
          OUTLINED_FUNCTION_2_33();

          sub_231DE9AA8(v42, v43, v44);
          return;
        }
      }

      v31 = OUTLINED_FUNCTION_1_32();
      sub_231CFF668(v31, v32, v33);
      OUTLINED_FUNCTION_10_22();
      goto LABEL_21;
    }

LABEL_28:
    OUTLINED_FUNCTION_2_33();
    return;
  }

  OUTLINED_FUNCTION_2_33();

  [v28 v29];
}

void sub_231DE9728(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a1[1] == 1)
  {
    if (a4)
    {
      *&v16 = 0;
      *(&v16 + 1) = 0xE000000000000000;
      v8 = a4;
      sub_231E11D70();

      OUTLINED_FUNCTION_12_19();
      MEMORY[0x23837CC20](0x765F6C65646F6D5FLL, 0xEE006E6F69737265);
      v9 = sub_231E115F0();

      v10 = [v8 attributeForKey_];

      if (v10)
      {
        sub_231E11C80();
        swift_unknownObjectRelease();
        sub_231CE1044(&v16, &v17);
        __swift_project_boxed_opaque_existential_0(&v17, v18);
        v11 = sub_231E120F0();
        *&v16 = 0;
        *(&v16 + 1) = 0xE000000000000000;
        sub_231E11D70();

        OUTLINED_FUNCTION_12_19();
        OUTLINED_FUNCTION_7_25();
        MEMORY[0x23837CC20]();
        v12 = sub_231E115F0();

        [v5 setAttribute:v11 forKey:v12];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v17);
      }

      else
      {
      }

      return;
    }

    v14 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    OUTLINED_FUNCTION_11_21();

    *&v17 = 0x6C7070615F6D6F63;
    *(&v17 + 1) = 0xEA00000000005F65;
    MEMORY[0x23837CC20](a2, a3);
    MEMORY[0x23837CC20](0x765F6C65646F6D5FLL, 0xEE006E6F69737265);
    v15 = sub_231E115F0();

    [v4 setAttribute:v14 forKey:v15];
  }

  else
  {
    if (!a1[3])
    {
      return;
    }

    v13 = sub_231E115F0();
    OUTLINED_FUNCTION_11_21();

    *&v17 = 0x6C7070615F6D6F63;
    *(&v17 + 1) = 0xEA00000000005F65;
    MEMORY[0x23837CC20](a2, a3);
    OUTLINED_FUNCTION_7_25();
    MEMORY[0x23837CC20]();
    v15 = sub_231E115F0();

    [v4 setAttribute:v13 forKey:v15];
  }
}

uint64_t sub_231DE9A44(void *a1)
{
  v1 = [a1 information];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E11620();

  return v3;
}

void sub_231DE9AA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231E115F0();

  [a3 setInformation_];
}

void OUTLINED_FUNCTION_3_33()
{

  JUMPOUT(0x23837CC20);
}

void OUTLINED_FUNCTION_10_22()
{

  JUMPOUT(0x23837CC20);
}

void OUTLINED_FUNCTION_12_19()
{

  JUMPOUT(0x23837CC20);
}

double OUTLINED_FUNCTION_13_19()
{

  return result;
}

uint64_t sub_231DE9BCC@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 messageType];
  switch(v3)
  {
    case 6uLL:
      goto LABEL_7;
    case 7uLL:
      goto LABEL_2;
    case 8uLL:
      goto LABEL_12;
    case 9uLL:
      goto LABEL_15;
    case 0xAuLL:
      goto LABEL_18;
    case 0xBuLL:
      goto LABEL_20;
    default:
      if (v3 != 26)
      {
        goto LABEL_25;
      }

      v5 = [v1 reaction];
      if (!v5)
      {
        goto LABEL_25;
      }

      v6 = v5;
      v7 = [v5 reactionType];
      if (PSUINMessageReactionTypeTapbackLikedReaction() == v7)
      {

LABEL_7:
        v4 = MEMORY[0x277D422D0];
        goto LABEL_21;
      }

      if (PSUINMessageReactionTypeTapbackDislikedReaction() == v7)
      {

LABEL_2:
        v4 = MEMORY[0x277D422F8];
        goto LABEL_21;
      }

      if (PSUINMessageReactionTypeTapbackEmphasizedReaction() == v7)
      {

LABEL_12:
        v4 = MEMORY[0x277D42308];
        goto LABEL_21;
      }

      if (PSUINMessageReactionTypeTapbackLovedReaction() == v7)
      {

LABEL_15:
        v4 = MEMORY[0x277D422E8];
        goto LABEL_21;
      }

      if (PSUINMessageReactionTypeTapbackQuestionedReaction() == v7)
      {

LABEL_18:
        v4 = MEMORY[0x277D42310];
        goto LABEL_21;
      }

      v8 = PSUINMessageReactionTypeTapbackLaughedReaction();

      if (v8 == v7)
      {
LABEL_20:
        v4 = MEMORY[0x277D422F0];
LABEL_21:
        v9 = *v4;
        v10 = sub_231E10370();
        OUTLINED_FUNCTION_12();
        (*(v11 + 104))(a1, v9, v10);
        OUTLINED_FUNCTION_15_7();
        v15 = v10;
        goto LABEL_22;
      }

LABEL_25:
      sub_231E10370();
      v12 = OUTLINED_FUNCTION_9_22();
LABEL_22:

      return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_231DE9D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_18();
  *(v11 + 240) = a10;
  *(v11 + 248) = a11;
  *(v11 + 224) = a9;
  *(v11 + 208) = v12;
  *(v11 + 216) = v13;
  *(v11 + 192) = v14;
  *(v11 + 200) = v15;
  *(v11 + 176) = v16;
  *(v11 + 184) = v17;
  *(v11 + 160) = v18;
  *(v11 + 168) = v19;
  v20 = sub_231E106A0();
  *(v11 + 256) = v20;
  OUTLINED_FUNCTION_6(v20);
  *(v11 + 264) = v21;
  *(v11 + 272) = swift_task_alloc();
  OUTLINED_FUNCTION_31();
  return OUTLINED_FUNCTION_149_1(v22, v23, v24);
}

uint64_t sub_231DE9E40()
{
  v13 = v0[29];
  v1 = v0[26];
  v14 = v0[27];
  v15 = v0[31];
  v2 = v0[25];
  v3 = MEMORY[0x277D84F98];
  v0[18] = MEMORY[0x277D84F98];
  v4 = swift_allocObject();
  v0[35] = v4;
  *(v4 + 16) = v3;
  v5 = sub_231E0F8C0();
  v0[36] = v5;
  v6 = sub_231E115F0();
  v0[37] = v6;
  v7 = sub_231E115F0();
  v0[38] = v7;
  sub_231D6F8B8(v2, v1);
  v8 = sub_231E115F0();
  v0[39] = v8;

  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_231DEA020;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75938, &qword_231E23098);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231DEAA60;
  v0[13] = &block_descriptor_14;
  v0[14] = v9;
  [v13 recentMessagesSinceDate:v5 conversationIdentifier:v6 appBundleId:v7 incomingMessageID:v8 limit:v14 options:v15 completionHandler:v0 + 10];
  OUTLINED_FUNCTION_107_1();

  return MEMORY[0x282200938](v10);
}

uint64_t sub_231DEA020()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231DEA0F0()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 152);

  v63 = v4;
  result = sub_231CBA138(v4);
  v62 = result;
  if (result)
  {
    if (result < 1)
    {
LABEL_68:
      __break(1u);
      return result;
    }

    v6 = 0;
    v7 = MEMORY[0x277D84F98];
    v8 = &selRef_notificationSourceWithIdentifier_;
    while (1)
    {
      v9 = (v63 & 0xC000000000000001) != 0 ? MEMORY[0x23837D2A0](v6, v63) : *(v63 + 8 * v6 + 32);
      v10 = v9;
      v11 = [v9 v8[163]];
      v64 = sub_231E11620();
      v13 = v12;

      v14 = sub_231DF248C(v10, &selRef_attachmentFiles, &qword_2814CAEC0, 0x277CD3C08);
      if (v14)
      {
        v15 = v14 >> 62 ? sub_231E11ED0() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      else
      {
        v15 = 0;
      }

      v16 = [v10 numberOfAttachments];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 integerValue];
      }

      else
      {
        v18 = 0;
      }

      v19 = [v10 v8[163]];
      v20 = sub_231E11620();
      v22 = v21;

      if (!v7[2])
      {
        break;
      }

      v23 = sub_231CE0CA4(v20, v22);
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v18 <= v15)
      {
        v26 = v15;
      }

      else
      {
        v26 = v18;
      }

      if (*(v7[7] + 8 * v23) <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = *(v7[7] + 8 * v23);
      }

LABEL_27:
      v7 = *(*(v0 + 280) + 16);
      swift_isUniquelyReferenced_nonNull_native();
      result = sub_231CE0CA4(v64, v13);
      if (__OFADD__(v7[2], (v28 & 1) == 0))
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v29 = result;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75940, &qword_231E230A0);
      result = sub_231E11EA0();
      if (result)
      {
        result = sub_231CE0CA4(v64, v13);
        if ((v30 & 1) != (v31 & 1))
        {
          OUTLINED_FUNCTION_107_1();

          return sub_231E12160();
        }

        v29 = result;
      }

      if (v30)
      {
        *(v7[7] + 8 * v29) = v27;
      }

      else
      {
        v7[(v29 >> 6) + 8] |= 1 << v29;
        v32 = (v7[6] + 16 * v29);
        *v32 = v64;
        v32[1] = v13;
        *(v7[7] + 8 * v29) = v27;
        v33 = v7[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_67;
        }

        v7[2] = v35;
      }

      ++v6;

      *(*(v0 + 280) + 16) = v7;
      v8 = &selRef_notificationSourceWithIdentifier_;
      if (v62 == v6)
      {
        goto LABEL_38;
      }
    }

LABEL_24:
    if (v18 >= v15)
    {
      v27 = v18 & ~(v18 >> 63);
    }

    else
    {
      v27 = v15 & ~(v15 >> 63);
    }

    goto LABEL_27;
  }

LABEL_38:
  v36 = *(v0 + 264);
  v37 = *(v0 + 224);
  v39 = *(v0 + 184);
  v38 = *(v0 + 192);
  v41 = *(v0 + 168);
  v40 = *(v0 + 176);
  v42 = swift_task_alloc();
  v42[2] = v0 + 144;
  v42[3] = v37;
  v42[4] = v39;
  v42[5] = v38;
  v42[6] = v41;
  v42[7] = v40;
  v43 = sub_231DEB820(sub_231DF23D8, v42, v63);
  *(v0 + 320) = v43;

  v44 = *(v43 + 2);
  result = swift_retain_n();
  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  while (v44 != v45)
  {
    if (v45 >= *(v43 + 2))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v48 = *(v0 + 272);
    v47 = *(v0 + 280);
    v49 = *(v0 + 256);
    OUTLINED_FUNCTION_79();
    (*(v36 + 16))(v48, &v43[v50 + *(v36 + 72) * v45], v49);
    v51 = sub_231DEC274(v48, v47);
    result = (*(v36 + 8))(v48, v49);
    v52 = *(v51 + 16);
    v53 = *(v46 + 16);
    v54 = v53 + v52;
    if (__OFADD__(v53, v52))
    {
      goto LABEL_62;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v54 > *(v46 + 24) >> 1)
    {
      if (v53 <= v54)
      {
        v55 = v53 + v52;
      }

      else
      {
        v55 = v53;
      }

      result = sub_231CE0B9C(result, v55, 1, v46);
      v46 = result;
    }

    if (*(v51 + 16))
    {
      if ((*(v46 + 24) >> 1) - *(v46 + 16) < v52)
      {
        goto LABEL_64;
      }

      swift_arrayInitWithCopy();

      if (v52)
      {
        v56 = *(v46 + 16);
        v34 = __OFADD__(v56, v52);
        v57 = v56 + v52;
        if (v34)
        {
          goto LABEL_66;
        }

        *(v46 + 16) = v57;
      }
    }

    else
    {

      if (v52)
      {
        goto LABEL_63;
      }
    }

    ++v45;
  }

  v58 = sub_231D3FF4C(v46);
  *(v0 + 328) = sub_231DEC5AC(v58);
  v59 = swift_task_alloc();
  *(v0 + 336) = v59;
  *v59 = v0;
  v59[1] = sub_231DEA69C;
  OUTLINED_FUNCTION_107_1();

  return sub_231DFFDE8();
}

uint64_t sub_231DEA69C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 344) = v1;

  if (v1)
  {
  }

  else
  {

    *(v4 + 352) = a1;
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231DEA7E8()
{
  v8 = v0;
  v1 = v0[43];
  sub_231DEC63C(v0[44]);

  v2 = OUTLINED_FUNCTION_16_15();

  v7 = v2;

  sub_231DF0050(&v7);
  if (v1)
  {
  }

  else
  {
    v4 = v0[27];

    v5 = sub_231DED468(v4, v7);

    OUTLINED_FUNCTION_18_6();

    return v6(v5);
  }
}

uint64_t sub_231DEA920()
{
  v7 = v0;
  sub_231DEC63C(MEMORY[0x277D84F90]);

  v1 = OUTLINED_FUNCTION_16_15();

  v6 = v1;

  sub_231DF0050(&v6);
  v2 = *(v0 + 216);

  v3 = sub_231DED468(v2, v6);

  OUTLINED_FUNCTION_18_6();

  return v4(v3);
}

uint64_t sub_231DEAA60(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_231CC1784(0, &unk_2814CAE88, 0x277CD3DE0);
  v3 = sub_231E11870();

  return sub_231D5F3EC(v2, v3);
}

void sub_231DEAACC()
{
  OUTLINED_FUNCTION_118();
  v187 = v2;
  v188 = v1;
  v189 = v4;
  v190 = v3;
  v181 = v5;
  v182 = v6;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A80, &unk_231E230E0);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_1();
  v186 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  OUTLINED_FUNCTION_47(v14);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v185 = v16;
  OUTLINED_FUNCTION_3_0();
  v183 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v178 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_5();
  v195 = v20;
  OUTLINED_FUNCTION_3_0();
  v180 = sub_231E10760();
  OUTLINED_FUNCTION_24();
  v179 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_1();
  v192 = v24 - v23;
  OUTLINED_FUNCTION_3_0();
  v176 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_1();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  v32 = OUTLINED_FUNCTION_47(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_139();
  v184 = v33;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v34);
  v36 = v174 - v35;
  v197 = sub_231E10370();
  OUTLINED_FUNCTION_24();
  v193 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_41_14();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25_5();
  v196 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v42 = OUTLINED_FUNCTION_47(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = v174 - v47;
  v49 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v199 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_139();
  v194 = v52;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_10_0();
  v191 = v54;
  OUTLINED_FUNCTION_95();
  v56 = MEMORY[0x28223BE20](v55);
  v58 = v174 - v57;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_5();
  v198 = v59;
  v60 = *v8;
  v61 = [v60 sender];
  if (!v61)
  {
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v49);
    goto LABEL_22;
  }

  sub_231E08B20(v61, v48);
  OUTLINED_FUNCTION_8_17(v48, 1, v49);
  if (v62)
  {
LABEL_22:
    sub_231CC154C(v48, &dword_27DD73FA0, &dword_231E13460);
    v90 = sub_231E106A0();
    v91 = v10;
    v92 = 1;
    goto LABEL_23;
  }

  v63 = *(v199 + 32);
  v174[2] = v199 + 32;
  v174[1] = v63;
  v63(v198, v48, v49);
  sub_231DE9BCC(v36);
  v64 = v197;
  OUTLINED_FUNCTION_8_17(v36, 1, v197);
  v175 = v10;
  if (v62)
  {
    sub_231CC154C(v36, &qword_27DD74A88, &unk_231E231A0);
    v65 = sub_231DF248C(v60, &selRef_recipients, &qword_27DD75448, 0x277CD3E90);
    if (v65)
    {
      v66 = v65;
      v193 = v60;
      v67 = sub_231CBA138(v65);
      v68 = 0;
      v196 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v67 == v68)
        {

          v117 = v196;
          v64 = v197;
          v60 = v193;
          goto LABEL_32;
        }

        if ((v66 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x23837D2A0](v68, v66);
        }

        else
        {
          if (v68 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v69 = *(v66 + 8 * v68 + 32);
        }

        v70 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        sub_231E08B20(v69, v45);
        OUTLINED_FUNCTION_8_17(v45, 1, v49);
        if (v62)
        {
          sub_231CC154C(v45, &dword_27DD73FA0, &dword_231E13460);
          ++v68;
        }

        else
        {
          OUTLINED_FUNCTION_53_10();
          v71();
          v72 = v196;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_3_34();
            v79 = OUTLINED_FUNCTION_0_1();
            v72 = sub_231DEF7F0(v79, v80, v81, v72, &qword_27DD740A8, &unk_231E13540, v82, v83);
          }

          v74 = v72;
          v75 = v72[2];
          v196 = v74;
          v76 = *(v74 + 24);
          v77 = v75 + 1;
          if (v75 >= v76 >> 1)
          {
            v84 = OUTLINED_FUNCTION_2_12(v76);
            v192 = v85;
            v86 = sub_231DEF7F0(v84, v85, 1, v196, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
            v77 = v192;
            v196 = v86;
          }

          v196[2] = v77;
          OUTLINED_FUNCTION_11_22();
          OUTLINED_FUNCTION_53_10();
          v78();
          v68 = v70;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v117 = MEMORY[0x277D84F90];
LABEL_32:
    v118 = sub_231CC6C88(v182, v117);

    v119 = v60;
    v120 = [v60 identifier];
    v121 = sub_231E11620();
    v196 = v122;
    v197 = v121;

    v123 = sub_231CC33AC(v119, &selRef_conversationIdentifier);
    v192 = v124;
    v193 = v123;
    v125 = v119;
    v126 = [v119 dateSent];
    v127 = v195;
    if (v126)
    {
      v128 = v126;
      v129 = v177;
      sub_231E0F910();

      v130 = *(v178 + 32);
      v131 = v185;
      v132 = v129;
      v133 = v183;
      v130(v185, v132, v183);
      OUTLINED_FUNCTION_15_7();
      __swift_storeEnumTagSinglePayload(v134, v135, v136, v133);
      v130(v127, v131, v133);
    }

    else
    {
      v143 = v185;
      OUTLINED_FUNCTION_105();
      v144 = v183;
      __swift_storeEnumTagSinglePayload(v145, v146, v147, v183);
      sub_231E0F920();
      OUTLINED_FUNCTION_8_17(v143, 1, v144);
      if (!v62)
      {
        sub_231CC154C(v143, &dword_27DD74AD0, &qword_231E16C40);
      }
    }

    v148 = v198;
    v149 = v199;
    (*(v199 + 16))(v194, v198, v49);
    v150 = sub_231CC33AC(v125, &selRef_content);
    if (v151)
    {
      v152 = v150;
    }

    else
    {
      v152 = 0;
    }

    v191 = v152;
    v153 = 0xE000000000000000;
    if (v151)
    {
      v153 = v151;
    }

    v185 = v153;
    LODWORD(v183) = sub_231E103C0();
    LODWORD(v182) = *(v118 + 16) > 1uLL;
    v154 = OUTLINED_FUNCTION_9_22();
    __swift_storeEnumTagSinglePayload(v154, v155, v156, v64);
    sub_231E104A0();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
    sub_231CC33AC(v125, &selRef_serviceName);
    v161 = v189;
    swift_bridgeObjectRetain_n();

    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_58_11();
    v162 = v175;
    sub_231E10680(v197, v196, v193, v192, v190, v161, v195, v190, v161, v188);
    (*(v149 + 8))(v148, v49);
    v90 = sub_231E106A0();
    v91 = v162;
    v92 = 0;
LABEL_23:
    __swift_storeEnumTagSinglePayload(v91, v92, 1, v90);
LABEL_24:
    OUTLINED_FUNCTION_113();
    return;
  }

  v93 = v193;
  v94 = v196;
  v193[4](v196, v36, v64);
  v95 = [v60 referencedMessage];
  if (!v95)
  {
    v137 = sub_231CB4EEC();
    v138 = v176;
    (*(v26 + 16))(v30, v137, v176);
    v139 = sub_231E10E10();
    v140 = sub_231E11AD0();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_231CAE000, v139, v140, "Encountered tapback without a referenced message", v141, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v26 + 8))(v30, v138);
    (*(v93 + 8))(v196, v64);
    (*(v199 + 8))(v198, v49);
    v142 = 0;
    goto LABEL_50;
  }

  v96 = v95;
  v97 = v181;
  v98 = v64;
  v99 = [v95 identifier];

  v100 = sub_231E11620();
  v102 = v101;

  v103 = v98;
  v104 = v100;
  (*(v93 + 16))(v0, v94, v103);
  (*(v199 + 16))(v58, v198, v49);
  OUTLINED_FUNCTION_63_10();
  sub_231E10730();
  swift_isUniquelyReferenced_nonNull_native();
  v200 = *v97;
  v105 = v200;
  *v97 = 0x8000000000000000;
  v106 = OUTLINED_FUNCTION_59();
  v108 = sub_231CE0CA4(v106, v107);
  if (__OFADD__(v105[2], (v109 & 1) == 0))
  {
    goto LABEL_53;
  }

  v110 = v108;
  v111 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75958, &qword_231E23100);
  if ((sub_231E11EA0() & 1) == 0)
  {
    v116 = v193;
    goto LABEL_46;
  }

  v112 = OUTLINED_FUNCTION_59();
  v114 = sub_231CE0CA4(v112, v113);
  v116 = v193;
  if ((v111 & 1) == (v115 & 1))
  {
    v110 = v114;
LABEL_46:
    *v97 = v200;

    v163 = *v97;
    if (v111)
    {
    }

    else
    {
      sub_231DE32D4(v110, v104, v102, MEMORY[0x277D84F90], *v97);
    }

    v164 = v180;
    v165 = v179;
    v166 = v196;
    v167 = v163[7] + 8 * v110;
    sub_231DEF6F4();
    v168 = *(*v167 + 16);
    sub_231DEF778(v168);
    (*(v116 + 8))(v166, v197);
    (*(v199 + 8))(v198, v49);
    v169 = *v167;
    *(v169 + 16) = v168 + 1;
    (*(v165 + 32))(v169 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v168, v192, v164);
    v142 = sub_231DEB810;
LABEL_50:
    sub_231E106A0();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v170, v171, v172, v173);
    sub_231CB7448(v142, 0);
    goto LABEL_24;
  }

LABEL_54:
  sub_231E12160();
  __break(1u);
}

void *sub_231DEB820(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_231E106A0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v28 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v23 = &v22 - v13;
  result = sub_231CBA138(a3);
  v15 = 0;
  v30 = a3 & 0xC000000000000001;
  v31 = result;
  v29 = a3 & 0xFFFFFFFFFFFFFF8;
  v24 = v10;
  v27 = (v10 + 32);
  v16 = MEMORY[0x277D84F90];
  v25 = a1;
  v26 = a3;
  while (1)
  {
    if (v31 == v15)
    {
      return v16;
    }

    if (v30)
    {
      result = MEMORY[0x23837D2A0](v15, a3);
    }

    else
    {
      if (v15 >= *(v29 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v15 + 32);
    }

    v17 = result;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v32 = result;
    a1(&v32);
    if (v3)
    {

      return v16;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      result = sub_231CC154C(v8, &qword_27DD74510, &qword_231E1E2D0);
    }

    else
    {
      v18 = *v27;
      v19 = v23;
      (*v27)(v23, v8, v9);
      v18(v28, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_231DEF7F0(0, v16[2] + 1, 1, v16, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);
      }

      v21 = v16[2];
      v20 = v16[3];
      if (v21 >= v20 >> 1)
      {
        v16 = sub_231DEF7F0((v20 > 1), v21 + 1, 1, v16, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);
      }

      v16[2] = v21 + 1;
      result = (v18)(v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v28, v9);
      a1 = v25;
      a3 = v26;
    }

    ++v15;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

char *sub_231DEBB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a3;
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_231E106A0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v29 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v25 - v13;
  v14 = 0;
  v15 = *(a1 + 16);
  v30 = (v10 + 32);
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v14)
    {

      return v31;
    }

    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v17 = *(v10 + 72);
    sub_231DECA14();
    if (v35)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_231CC154C(v8, &qword_27DD74510, &qword_231E1E2D0);
      ++v14;
    }

    else
    {
      v27 = *v30;
      v27(v28, v8, v9);
      v27(v29, v28, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_231DEF7F0(0, *(v31 + 2) + 1, 1, v31, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);
      }

      v19 = *(v31 + 2);
      v18 = *(v31 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v25 = *(v31 + 2);
        v26 = v19 + 1;
        v22 = sub_231DEF7F0((v18 > 1), v19 + 1, 1, v31, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);
        v19 = v25;
        v20 = v26;
        v31 = v22;
      }

      ++v14;
      v21 = v31;
      *(v31 + 2) = v20;
      v27(&v21[v16 + v19 * v17], v29, v9);
    }
  }

  v23 = v31;

  return v23;
}

void *sub_231DEBEF8(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE0, &qword_231E1CC20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_231E10A30();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v28 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v23 = &v22 - v13;
  result = sub_231CBA138(a3);
  v15 = 0;
  v30 = a3 & 0xC000000000000001;
  v31 = result;
  v29 = a3 & 0xFFFFFFFFFFFFFF8;
  v24 = v10;
  v27 = (v10 + 32);
  v16 = MEMORY[0x277D84F90];
  v25 = a1;
  v26 = a3;
  while (1)
  {
    if (v31 == v15)
    {
      return v16;
    }

    if (v30)
    {
      result = MEMORY[0x23837D2A0](v15, a3);
    }

    else
    {
      if (v15 >= *(v29 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v15 + 32);
    }

    v17 = result;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v32 = result;
    a1(&v32);
    if (v3)
    {

      return v16;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      result = sub_231CC154C(v8, &qword_27DD74BE0, &qword_231E1CC20);
    }

    else
    {
      v18 = *v27;
      v19 = v23;
      (*v27)(v23, v8, v9);
      v18(v28, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_231DEF7F0(0, v16[2] + 1, 1, v16, &qword_27DD75108, &unk_231E1E570, MEMORY[0x277D42428], MEMORY[0x277D42428]);
      }

      v21 = v16[2];
      v20 = v16[3];
      if (v21 >= v20 >> 1)
      {
        v16 = sub_231DEF7F0((v20 > 1), v21 + 1, 1, v16, &qword_27DD75108, &unk_231E1E570, MEMORY[0x277D42428], MEMORY[0x277D42428]);
      }

      v16[2] = v21 + 1;
      result = (v18)(v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v28, v9);
      a1 = v25;
      a3 = v26;
    }

    ++v15;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_231DEC274(uint64_t a1, uint64_t a2)
{
  v4 = sub_231E10690();
  v6 = v5;
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (*(v7 + 16))
  {
    v8 = sub_231CE0CA4(v4, v6);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v8);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_6:
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v12 = swift_allocObject();
  v20 = xmmword_231E138E0;
  *(v12 + 16) = xmmword_231E138E0;
  *(v12 + 32) = sub_231E10690();
  *(v12 + 40) = v13;
  if (v11 > 0)
  {
    inited = swift_initStackObject();
    *(inited + 16) = v20;
    v22 = 0x5F305F7461;
    v23 = 0xE500000000000000;
    v15 = sub_231E10690();
    MEMORY[0x23837CC20](v15);

    *(inited + 32) = 0x5F305F7461;
    *(inited + 40) = 0xE500000000000000;
    v21 = v12;
    v16 = sub_231D90D14(inited);
    MEMORY[0x28223BE20](v16);
    v19[2] = a1;
    v17 = sub_231DEC42C(sub_231DF2664, v19, 1, v11);
    sub_231D90D14(v17);
    return v21;
  }

  return v12;
}

char *sub_231DEC42C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = MEMORY[0x277D84F90];
  if (v5 == -1)
  {
    return v7;
  }

  v8 = a3;
  v25 = MEMORY[0x277D84F90];
  result = sub_231CC686C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = 0;
    v7 = v25;
    while (v10 < v6)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_18;
      }

      if (v11)
      {
        goto LABEL_24;
      }

      v13 = v8;
      v22 = v8;
      result = a1(&v23, &v22);
      if (v4)
      {
        goto LABEL_23;
      }

      v15 = v23;
      v14 = v24;
      v25 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = v24;
        result = sub_231CC686C((v16 > 1), v17 + 1, 1);
        v14 = v19;
        v7 = v25;
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v11 = v13 == a4;
      if (v13 == a4)
      {
        v8 = 0;
      }

      else
      {
        v8 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_19;
        }
      }

      ++v10;
      if (v12 == v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
LABEL_23:

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_231DEC5AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_231DEF8FC(*(a1 + 16), 0);
  sub_231DF2500(&v7, v3 + 4, v2, a1);
  v5 = v4;
  sub_231DF265C(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_231DEC63C(uint64_t a1)
{
  v45 = sub_231E106A0();
  v2 = MEMORY[0x28223BE20](v45);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v44 = &v35 - v4;
  v5 = 0;
  v6 = MEMORY[0x277D84F98];
  v46 = MEMORY[0x277D84F98];
  v7 = *(a1 + 16);
  v41 = v8;
  v42 = v7;
  v40 = v8 + 16;
  v43 = (v8 + 32);
  v36 = xmmword_231E138E0;
  v38 = a1;
  while (1)
  {
    if (v42 == v5)
    {

      return v6;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v9 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v10 = *(v41 + 72);
    (*(v41 + 16))(v44, a1 + v9 + v10 * v5, v45);
    v11 = sub_231E10690();
    v13 = v12;
    v15 = sub_231CE0CA4(v11, v12);
    v16 = v6[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_19;
    }

    v19 = v14;
    if (v6[3] < v18)
    {
      sub_231DEFDAC(v18, 1);
      v6 = v46;
      v20 = sub_231CE0CA4(v11, v13);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_21;
      }

      v15 = v20;
    }

    if (v19)
    {

      v22 = v6[7];
      v23 = *v43;
      (*v43)(v39, v44, v45);
      v24 = *(v22 + 8 * v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v15) = v24;
      v37 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_231DEF7F0(0, *(v24 + 2) + 1, 1, v24, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);
        *(v22 + 8 * v15) = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_231DEF7F0((v26 > 1), v27 + 1, 1, v24, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);
        *(v22 + 8 * v15) = v24;
      }

      a1 = v38;
      v28 = v39;
      *(v24 + 2) = v27 + 1;
      v37(&v24[v9 + v27 * v10], v28, v45);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E30, &qword_231E1CB80);
      v29 = swift_allocObject();
      *(v29 + 16) = v36;
      (*v43)((v29 + v9), v44, v45);
      v6[(v15 >> 6) + 8] |= 1 << v15;
      v30 = (v6[6] + 16 * v15);
      *v30 = v11;
      v30[1] = v13;
      *(v6[7] + 8 * v15) = v29;
      v31 = v6[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_20;
      }

      v6[2] = v33;
      a1 = v38;
    }

    ++v5;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_231E12160();
  __break(1u);
  return result;
}

void sub_231DECA14()
{
  OUTLINED_FUNCTION_118();
  v145 = v0;
  v143 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_1();
  v132 = v13 - v12;
  OUTLINED_FUNCTION_3_0();
  v153 = sub_231E0FD90();
  OUTLINED_FUNCTION_24();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_139();
  v152 = v17;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_5();
  v151 = v19;
  OUTLINED_FUNCTION_3_0();
  v150 = sub_231E107F0();
  OUTLINED_FUNCTION_24();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_1();
  v149 = v24 - v23;
  OUTLINED_FUNCTION_3_0();
  sub_231E106A0();
  OUTLINED_FUNCTION_24();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  v33 = &v127 - v32;
  v34 = *(v26 + 16);
  v138 = v35;
  v137 = v26 + 16;
  v136 = v34;
  (v34)(&v127 - v32, v5);
  v144 = v5;
  v36 = v3(v5);
  v37 = *(v36 + 16);
  v139 = v26;
  v154 = v33;
  v142 = v37;
  if (!v37)
  {

LABEL_44:
    v107 = *(sub_231E104C0() + 16);

    v108 = v132;
    v109 = v139;
    if (!v107)
    {
      sub_231E10640();
      sub_231E116D0();
      v111 = v110;

      if (!v111)
      {
        v114 = sub_231CB4EEC();
        (*(v10 + 16))(v108, v114, v8);
        v115 = v128;
        v112 = v138;
        v136(v128, v144, v138);
        v116 = sub_231E10E10();
        v117 = v10;
        v118 = sub_231E11AD0();
        if (os_log_type_enabled(v116, v118))
        {
          v119 = v115;
          v120 = swift_slowAlloc();
          v157 = v120;
          v158 = swift_slowAlloc();
          v159 = v158;
          *v120 = 136315138;
          v156 = sub_231E10690();
          v122 = v121;
          v123 = *(v139 + 8);
          v123(v119, v112);
          v124 = sub_231CB5000(v156, v122, &v159);

          v125 = v157;
          *(v157 + 1) = v124;
          _os_log_impl(&dword_231CAE000, v116, v118, "A recent message with id %s has no content or attachments", v125, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v158);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();

          (*(v117 + 8))(v132, v8);
          v123(v154, v112);
        }

        else
        {

          v126 = *(v139 + 8);
          v126(v115, v112);
          (*(v117 + 8))(v108, v8);
          v126(v154, v112);
        }

        v113 = 1;
        goto LABEL_48;
      }
    }

    v112 = v138;
    (*(v109 + 32))(v7, v33, v138);
    v113 = 0;
LABEL_48:
    __swift_storeEnumTagSinglePayload(v7, v113, 1, v112);
    OUTLINED_FUNCTION_113();
    return;
  }

  v129 = v10;
  v130 = v8;
  v131 = v7;
  v141 = v36 + 32;
  v135 = v26 + 8;
  v38 = 0;
  v147 = (v15 + 8);
  v148 = v21 + 16;
  v146 = v21 + 8;
  v140 = v36;
  v39 = v149;
  while (v38 < *(v36 + 16))
  {
    v158 = v38;
    v40 = (v141 + 16 * v38);
    v42 = *v40;
    v41 = v40[1];
    v43 = *v143;
    v44 = *(*v143 + 16);

    if (v44 && (v45 = OUTLINED_FUNCTION_40_11(), v47 = sub_231CE0CA4(v45, v46), (v48 & 1) != 0))
    {
      v49 = *(*(v43 + 56) + 8 * v47);
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
    }

    v50 = v145;
    v51 = sub_231E105A0();
    sub_231DEFC74(v49);
    v52 = OUTLINED_FUNCTION_43_12();
    v51(v52);
    sub_231E10530();
    if (v53)
    {
    }

    else
    {
      if (*(v50 + 16))
      {
        v54 = OUTLINED_FUNCTION_40_11();
        v56 = sub_231CE0CA4(v54, v55);
        if (v57)
        {
          if (*(*(*(v50 + 56) + 8 * v56) + 16))
          {
            v58 = v139;
            OUTLINED_FUNCTION_42_13();
            v59 = v133;
            OUTLINED_FUNCTION_4_29();
            v60();
            sub_231E10530();
            v61 = v50;
            v50 = v145;
            (*(v58 + 8))(v59, v61);
          }
        }
      }

      sub_231E10540();
    }

    v159 = 0x5F305F7461;
    v160 = 0xE500000000000000;
    v62 = sub_231E10690();
    MEMORY[0x23837CC20](v62);

    if (v42 == v159 && v41 == v160)
    {
    }

    else
    {
      OUTLINED_FUNCTION_40_11();
      v64 = sub_231E12100();

      if ((v64 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    if (!*(v50 + 16))
    {
      goto LABEL_39;
    }

    v65 = OUTLINED_FUNCTION_40_11();
    v67 = sub_231CE0CA4(v65, v66);
    if ((v68 & 1) != 0 && *(*(*(v50 + 56) + 8 * v67) + 16))
    {
      OUTLINED_FUNCTION_42_13();
      OUTLINED_FUNCTION_4_29();
      v69();
      sub_231E10560();
      if (v70)
      {

        v71 = sub_231E104C0();
        v72 = 0;
        v156 = *(v71 + 16);
        v157 = v71;
        v155 = v42;
        while (1)
        {
          if (v156 == v72)
          {

            v90 = v134;
            v91 = sub_231E10640();
            v93 = v92;
            v94 = sub_231E10630();
            MEMORY[0x23837CC20](v91, v93);

            v95 = OUTLINED_FUNCTION_43_12();
            v94(v95);
            OUTLINED_FUNCTION_44_12();
            v87 = v90;
            v88 = v138;
            goto LABEL_33;
          }

          if (v72 >= *(v157 + 2))
          {
            break;
          }

          OUTLINED_FUNCTION_79();
          v75 = v150;
          (*(v21 + 16))(v39, v74 + v73 + *(v21 + 72) * v72++, v150);
          v76 = v21;
          v77 = v151;
          sub_231E10790();
          v78 = v41;
          v79 = v152;
          sub_231E0FD50();
          v80 = sub_231E0FD80();
          v81 = *v147;
          v82 = v79;
          v83 = v153;
          (*v147)(v82, v153);
          v84 = v77;
          v21 = v76;
          v85 = v83;
          v41 = v78;
          v81(v84, v85);
          v33 = v154;
          (*(v76 + 8))(v39, v75);
          if ((v80 & 1) == 0)
          {
            OUTLINED_FUNCTION_44_12();
            v86(v134, v138);

            goto LABEL_34;
          }
        }

        __break(1u);
        break;
      }

      OUTLINED_FUNCTION_44_12();
      v87 = OUTLINED_FUNCTION_48();
LABEL_33:
      v89(v87, v88);
LABEL_34:
      v50 = v145;
    }

LABEL_35:
    if (!*(v50 + 16))
    {
LABEL_39:

LABEL_40:
      v102 = MEMORY[0x277D84F90];
      goto LABEL_41;
    }

    v96 = OUTLINED_FUNCTION_40_11();
    v98 = sub_231CE0CA4(v96, v97);
    v100 = v99;

    if ((v100 & 1) == 0 || !*(*(*(v50 + 56) + 8 * v98) + 16))
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_42_13();
    OUTLINED_FUNCTION_4_29();
    v101();
    v102 = sub_231E104C0();
    v103 = OUTLINED_FUNCTION_48();
    v104(v103);
LABEL_41:
    v38 = v158 + 1;
    v105 = sub_231E104B0();
    sub_231DEFB3C(v102);
    v106 = OUTLINED_FUNCTION_43_12();
    v105(v106);
    v36 = v140;
    if (v38 == v142)
    {

      v7 = v131;
      v8 = v130;
      v10 = v129;
      goto LABEL_44;
    }
  }

  __break(1u);
}

void *sub_231DED468(uint64_t a1, uint64_t a2)
{
  v4 = sub_231E106A0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!a1)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v31 = MEMORY[0x277D84F90];
  sub_231D56E94(0, v8, 0);
  v9 = v31;
  v10 = *(a2 + 16);
  if (!v10)
  {

    return v9;
  }

  v11 = 0;
  v13 = *(v5 + 16);
  v12 = v5 + 16;
  v28 = v13;
  v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
  v24 = a2;
  v15 = a2 + v14;
  v16 = *(v12 + 56);
  v25 = (v12 + 24);
  v26 = (v12 + 16);
  do
  {
    v17 = v4;
    result = v28(v29, v15, v4);
    v18 = *(v9 + 16);
    if (v18 >= a1)
    {
      if (v11 >= v18)
      {
        __break(1u);
        goto LABEL_30;
      }

      v4 = v17;
      (*v25)(v9 + v14 + v16 * v11, v29, v17);
      if ((v11 + 1) < a1)
      {
        ++v11;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v27 = v11;
      v31 = v9;
      v19 = *(v9 + 24);
      if (v18 >= v19 >> 1)
      {
        sub_231D56E94((v19 > 1), v18 + 1, 1);
        v9 = v31;
      }

      *(v9 + 16) = v18 + 1;
      v20 = v9 + v14 + v18 * v16;
      v4 = v17;
      (*v26)(v20, v29, v17);
      v11 = v27;
    }

    v15 += v16;
    --v10;
  }

  while (v10);

  if (!v11)
  {
    return v9;
  }

  v21 = *(v9 + 16);
  v30 = MEMORY[0x277D84F90];
  result = sub_231D56E94(0, v21, 0);
  if (v21 >= v11)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

    v22 = *(v9 + 16);
    if (v22 >= v11 && v22 >= v21)
    {

      sub_231DF019C();
      sub_231DF019C();
      return v30;
    }

    goto LABEL_33;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_231DED7B8()
{
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_34_13(v1, v2, v3, v4, v5, v6, v7, v8);
  v0[29] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[30] = v10;
  v0[31] = swift_task_alloc();
  v11 = sub_231E106A0();
  v0[32] = v11;
  OUTLINED_FUNCTION_6(v11);
  v0[33] = v12;
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  OUTLINED_FUNCTION_31();
  return OUTLINED_FUNCTION_149_1(v13, v14, v15);
}

uint64_t sub_231DED8C0()
{
  OUTLINED_FUNCTION_25_10();
  sub_231D45FF4();
  v2[37] = v3;
  v4 = sub_231E0F8C0();
  v5 = OUTLINED_FUNCTION_72_6(v4);
  v2[40] = OUTLINED_FUNCTION_69_7(v5);
  v2[2] = v2;
  v2[7] = v0;
  v2[3] = sub_231DED9D8;
  swift_continuation_init();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75938, &qword_231E23098);
  OUTLINED_FUNCTION_17_11(v6);
  v2[11] = 1107296256;
  OUTLINED_FUNCTION_15_20();
  OUTLINED_FUNCTION_39_8(v7, sel_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler_, v8, v9, v10, v11, v12, v13, v15, v16, v17);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231DED9D8()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231DEDAA8()
{
  v73 = v3;
  OUTLINED_FUNCTION_26_12();

  v10 = swift_task_alloc();
  *(v10 + 2) = v8;
  *(v10 + 3) = v7;
  *(v10 + 4) = v1;
  *(v10 + 40) = v70;
  *(v10 + 56) = v68;
  *(v10 + 9) = v6;
  v11 = OUTLINED_FUNCTION_64_7();
  v14 = sub_231DEB820(v11, v12, v13);
  v63 = v2;

  v16 = 0;
  v69 = v14[2];
  v64 = (v9 + 32);
  v65 = MEMORY[0x277D84F90];
  v67 = v14;
  while (v69 != v16)
  {
    if (v16 >= v14[2])
    {
      __break(1u);
      return result;
    }

    v17 = v3[36];
    OUTLINED_FUNCTION_54_9();
    v71 = v16;
    v19 = v18 + v4 * v16;
    v21 = *(v20 + 16);
    v21(v17, v19);
    v22 = sub_231E10640();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    v26 = v3[36];
    v27 = v3[32];
    if (v25)
    {
      v10 = *v64;
      (*v64)(v3[34], v3[36], v3[32]);
      v51 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = OUTLINED_FUNCTION_47_8();
        sub_231D56E94(v52, v53, v54);
        v51 = v65;
      }

      v56 = *(v51 + 16);
      v55 = *(v51 + 24);
      if (v56 >= v55 >> 1)
      {
        v58 = OUTLINED_FUNCTION_2_12(v55);
        sub_231D56E94(v58, v56 + 1, 1);
      }

      v16 = v71 + 1;
      v57 = OUTLINED_FUNCTION_31_16();
      result = (v10)(v57);
    }

    else
    {
      v28 = v3[35];
      sub_231CB4EEC();
      v29 = OUTLINED_FUNCTION_51_9();
      v30(v29);
      (v21)(v28, v26, v27);
      v31 = sub_231E10E10();
      v10 = sub_231E11AD0();
      os_log_type_enabled(v31, v10);
      OUTLINED_FUNCTION_36_12();
      if (v32)
      {
        swift_slowAlloc();
        v33 = OUTLINED_FUNCTION_70_7();
        OUTLINED_FUNCTION_50_7(v33, v34, v35, v36, v37, v38, v39, v40, v41, v62, v63, v64, v65, v42);
        v66 = sub_231E10690();
        v44 = v43;
        v45 = OUTLINED_FUNCTION_7_26();
        (v0)(v45);
        v46 = sub_231CB5000(v66, v44, v72);

        *(v27 + 4) = v46;
        _os_log_impl(&dword_231CAE000, v31, v10, "A recent message with id %s has no content", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v4);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*(v0 + 8))();
      }

      else
      {

        v47 = OUTLINED_FUNCTION_7_26();
        (v0)(v47);
        v48 = OUTLINED_FUNCTION_62_7();
        v50(v48, v49);
      }

      result = (v0)(v3[36], v3[32]);
      v16 = v71 + 1;
      v14 = v67;
    }
  }

  v72[0] = v65;

  sub_231DF0050(v72);
  if (!v63)
  {
    OUTLINED_FUNCTION_56_13();
    sub_231DED468(v10, v72[0]);

    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_64();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_64();
}

void sub_231DEDE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_118();
  v155 = v22;
  v156 = v21;
  v159 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A80, &unk_231E230E0);
  OUTLINED_FUNCTION_47(v36);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_1();
  v151 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  OUTLINED_FUNCTION_47(v39);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_12_1();
  v150 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  OUTLINED_FUNCTION_47(v42);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12_1();
  v153 = v44;
  OUTLINED_FUNCTION_3_0();
  v152 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v149 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_139();
  v148 = v47;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_25_5();
  v158 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v51 = OUTLINED_FUNCTION_47(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3();
  v54 = v52 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = &v141 - v56;
  v58 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v161 = v59;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_139();
  v157 = v61;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_10_0();
  v154 = v63;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_25_5();
  v160 = v65;
  v66 = *v33;
  v67 = [v66 sender];
  if (!v67)
  {
    v76 = OUTLINED_FUNCTION_9_22();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v58);
    goto LABEL_18;
  }

  sub_231E08B20(v67, v57);
  OUTLINED_FUNCTION_8_17(v57, 1, v58);
  if (v70)
  {
LABEL_18:
    sub_231CC154C(v57, &dword_27DD73FA0, &dword_231E13460);
LABEL_21:
    v79 = 1;
LABEL_22:
    v80 = sub_231E106A0();
    __swift_storeEnumTagSinglePayload(v35, v79, 1, v80);
    OUTLINED_FUNCTION_113();
    return;
  }

  v145 = *(v161 + 32);
  v146 = v161 + 32;
  v145(v160, v57, v58);
  v147 = v66;
  v68 = sub_231CC33AC(v66, &selRef_content);
  if (v69)
  {
    v70 = v68 == v31 && v69 == v29;
    if (v70)
    {
    }

    else
    {
      v71 = sub_231E12100();

      if ((v71 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_20:
    (*(v161 + 8))(v160, v58);
    goto LABEL_21;
  }

LABEL_9:
  if (!sub_231D24924(v25, v159, v27))
  {
    goto LABEL_24;
  }

  v72 = sub_231CC33AC(v147, &selRef_conversationIdentifier);
  if (!v73)
  {
    goto LABEL_20;
  }

  if (v72 == v156 && v73 == v155)
  {

    goto LABEL_24;
  }

  v75 = sub_231E12100();

  if ((v75 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_24:
  v81 = v147;
  v82 = sub_231DF248C(v147, &selRef_recipients, &qword_27DD75448, 0x277CD3E90);
  v83 = MEMORY[0x277D84F90];
  v142 = v25;
  v143 = v35;
  if (!v82)
  {
LABEL_41:
    v105 = sub_231CC6C88(a21, v83);

    v106 = [v81 identifier];
    v154 = sub_231E11620();
    v146 = v107;

    v108 = sub_231CC33AC(v81, &selRef_conversationIdentifier);
    v144 = v109;
    v145 = v108;
    v110 = [v81 dateSent];
    if (v110)
    {
      v111 = v110;
      v112 = v148;
      sub_231E0F910();

      v113 = *(v149 + 32);
      v114 = v112;
      v115 = v152;
      v113(v153, v114, v152);
      OUTLINED_FUNCTION_15_7();
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v115);
      v119 = OUTLINED_FUNCTION_102_0();
      (v113)(v119);
    }

    else
    {
      v121 = v152;
      v120 = v153;
      v122 = OUTLINED_FUNCTION_9_22();
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v121);
      sub_231E0F920();
      OUTLINED_FUNCTION_8_17(v120, 1, v121);
      if (!v70)
      {
        sub_231CC154C(v120, &dword_27DD74AD0, &qword_231E16C40);
      }
    }

    v125 = v160;
    v126 = v161;
    (*(v161 + 16))(v157, v160, v58);
    v127 = v147;
    v128 = sub_231CC33AC(v147, &selRef_content);
    if (v129)
    {
      v130 = v128;
    }

    else
    {
      v130 = 0;
    }

    v131 = 0xE000000000000000;
    if (v129)
    {
      v131 = v129;
    }

    v152 = v131;
    v153 = v130;
    LODWORD(v149) = sub_231E103C0();
    sub_231E10370();
    v148 = v105;
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
    sub_231E104A0();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v139);
    sub_231CC33AC(v127, &selRef_serviceName);
    v140 = v159;
    swift_bridgeObjectRetain_n();

    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_58_11();
    v35 = v143;
    sub_231E10680(v154, v146, v145, v144, v142, v140, v158, v142, v140, v156);
    (*(v126 + 8))(v125, v58);
    v79 = 0;
    goto LABEL_22;
  }

  v84 = v82;
  v85 = sub_231CBA138(v82);
  v86 = 0;
  v144 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v85 == v86)
    {

      v81 = v147;
      v83 = v144;
      goto LABEL_41;
    }

    if ((v84 & 0xC000000000000001) != 0)
    {
      v87 = MEMORY[0x23837D2A0](v86, v84);
    }

    else
    {
      if (v86 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v87 = *(v84 + 8 * v86 + 32);
    }

    v88 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      break;
    }

    sub_231E08B20(v87, v54);
    OUTLINED_FUNCTION_8_17(v54, 1, v58);
    if (v70)
    {
      sub_231CC154C(v54, &dword_27DD73FA0, &dword_231E13460);
      ++v86;
    }

    else
    {
      v145(v154, v54, v58);
      v89 = v144;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_3_34();
        v97 = OUTLINED_FUNCTION_0_1();
        v89 = sub_231DEF7F0(v97, v98, v99, v89, &qword_27DD740A8, &unk_231E13540, v100, v101);
      }

      v91 = v89;
      v92 = v89[2];
      v144 = v91;
      v93 = *(v91 + 24);
      v94 = v92 + 1;
      if (v92 >= v93 >> 1)
      {
        v102 = OUTLINED_FUNCTION_2_12(v93);
        v141 = v103;
        v104 = sub_231DEF7F0(v102, v103, 1, v144, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
        v94 = v141;
        v144 = v104;
      }

      v144[2] = v94;
      OUTLINED_FUNCTION_11_22();
      v145(v95 + v96 * v92, v154, v58);
      v86 = v88;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_231DEE75C()
{
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_34_13(v1, v2, v3, v4, v5, v6, v7, v8);
  v0[29] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[30] = v10;
  v0[31] = swift_task_alloc();
  v11 = sub_231E10A30();
  v0[32] = v11;
  OUTLINED_FUNCTION_6(v11);
  v0[33] = v12;
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  OUTLINED_FUNCTION_31();
  return OUTLINED_FUNCTION_149_1(v13, v14, v15);
}

uint64_t sub_231DEE864()
{
  OUTLINED_FUNCTION_25_10();
  sub_231D45FF4();
  v2[37] = v3;
  v4 = sub_231E0F8C0();
  v5 = OUTLINED_FUNCTION_72_6(v4);
  v2[40] = OUTLINED_FUNCTION_69_7(v5);
  v2[2] = v2;
  v2[7] = v0;
  v2[3] = sub_231DEE97C;
  swift_continuation_init();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75938, &qword_231E23098);
  OUTLINED_FUNCTION_17_11(v6);
  v2[11] = 1107296256;
  OUTLINED_FUNCTION_15_20();
  OUTLINED_FUNCTION_39_8(v7, sel_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler_, v8, v9, v10, v11, v12, v13, v15, v16, v17);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231DEE97C()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231DEEA4C()
{
  v70 = v3;
  OUTLINED_FUNCTION_26_12();

  v10 = swift_task_alloc();
  v10[2] = 200;
  v10[3] = v8;
  v10[4] = v7;
  v10[5] = v1;
  *(v10 + 3) = v68;
  *(v10 + 4) = v67;
  v10[10] = v6;
  v11 = OUTLINED_FUNCTION_64_7();
  v14 = sub_231DEBEF8(v11, v12, v13);
  v61 = v2;

  v66 = v14[2];
  v62 = (v9 + 32);
  v16 = 0;
  v63 = MEMORY[0x277D84F90];
  v65 = v14;
  while (v66 != v16)
  {
    if (v16 >= v14[2])
    {
      __break(1u);
      return result;
    }

    v17 = v3[36];
    OUTLINED_FUNCTION_54_9();
    v20 = *(v19 + 16);
    v20(v17, v18 + v4 * v16);
    v21 = *(sub_231E10920() + 16);

    if (v21)
    {
LABEL_12:
      v10 = *v62;
      (*v62)(v3[34], v3[36], v3[32]);
      v49 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_47_8();
        sub_231D9FE04(v50, v51, v52);
        v49 = v63;
      }

      v54 = *(v49 + 16);
      v53 = *(v49 + 24);
      if (v54 >= v53 >> 1)
      {
        v56 = OUTLINED_FUNCTION_2_12(v53);
        sub_231D9FE04(v56, v54 + 1, 1);
      }

      ++v16;
      v55 = OUTLINED_FUNCTION_31_16();
      result = (v10)(v55);
    }

    else
    {
      sub_231E109B0();
      if (v22)
      {
        sub_231E116D0();
        v24 = v23;

        if (v24)
        {

          goto LABEL_12;
        }
      }

      v25 = v3[35];
      sub_231CB4EEC();
      v26 = OUTLINED_FUNCTION_51_9();
      v27(v26);
      v28 = OUTLINED_FUNCTION_102_0();
      (v20)(v28);
      v29 = sub_231E10E10();
      v10 = sub_231E11AD0();
      os_log_type_enabled(v29, v10);
      OUTLINED_FUNCTION_36_12();
      if (v30)
      {
        swift_slowAlloc();
        v31 = OUTLINED_FUNCTION_70_7();
        OUTLINED_FUNCTION_50_7(v31, v32, v33, v34, v35, v36, v37, v38, v39, v60, v61, v62, v63, v40);
        v64 = sub_231E10A20();
        v42 = v41;
        v43 = OUTLINED_FUNCTION_7_26();
        (v0)(v43);
        v44 = sub_231CB5000(v64, v42, v69);

        *(v25 + 4) = v44;
        _os_log_impl(&dword_231CAE000, v29, v10, "A recent message with id %s has no content or attachments", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v4);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*(v0 + 8))();
      }

      else
      {

        v45 = OUTLINED_FUNCTION_7_26();
        (v0)(v45);
        v46 = OUTLINED_FUNCTION_62_7();
        v48(v46, v47);
      }

      result = (v0)(v3[36], v3[32]);
      ++v16;
      v14 = v65;
    }
  }

  v69[0] = v63;

  sub_231DF00F4(v69);
  if (!v61)
  {
    OUTLINED_FUNCTION_56_13();
    sub_231D922EC(v10, v69[0]);

    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_64();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_64();
}

void sub_231DEEE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  OUTLINED_FUNCTION_118();
  v143 = v23;
  v144 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  OUTLINED_FUNCTION_47(v39);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_12_1();
  v141 = v41;
  OUTLINED_FUNCTION_3_0();
  sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v139 = v43;
  v140 = v42;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_139();
  v138 = v44;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25_5();
  v145 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v48 = OUTLINED_FUNCTION_47(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_41_14();
  MEMORY[0x28223BE20](v49);
  v51 = v132 - v50;
  v52 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v147 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_139();
  v142 = v55;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_5();
  v146 = v57;
  v148 = *v36;
  v58 = [v148 sender];
  if (!v58)
  {
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v52);
    goto LABEL_6;
  }

  sub_231E08B20(v58, v51);
  OUTLINED_FUNCTION_8_17(v51, 1, v52);
  if (v80)
  {
LABEL_6:
    sub_231CC154C(v51, &dword_27DD73FA0, &dword_231E13460);
LABEL_7:
    v71 = 1;
LABEL_8:
    v72 = sub_231E10A30();
    __swift_storeEnumTagSinglePayload(v38, v71, 1, v72);
    OUTLINED_FUNCTION_113();
    return;
  }

  v135 = v26;
  v136 = v28;
  v137 = v38;
  v133 = *(v147 + 32);
  v134 = v147 + 32;
  v133(v146, v51, v52);
  v59 = sub_231CC33AC(v148, &selRef_content);
  if (v60)
  {
    v61 = sub_231CEF250(v34, v59, v60);
    v63 = v62;
    v65 = v64;
    v67 = v66;
  }

  else
  {
    v61 = 0;
    v63 = 0;
    v65 = 0;
    v67 = 0;
  }

  v73 = sub_231CEF250(v34, v32, v30);
  if (v67)
  {
    v77 = sub_231DEF680(v61, v63, v65, v67, v73, v74, v75, v76);

    v38 = v137;
    if (v77)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v38 = v137;
  }

  if (sub_231D24924(v136, v135, v143))
  {
    v78 = sub_231CC33AC(v148, &selRef_conversationIdentifier);
    if (!v79)
    {
LABEL_21:
      (*(v147 + 8))(v146, v52);
      goto LABEL_7;
    }

    v80 = v78 == v144 && v79 == a21;
    if (v80)
    {
    }

    else
    {
      v81 = sub_231E12100();

      if ((v81 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  v82 = sub_231DF248C(v148, &selRef_recipients, &qword_27DD75448, 0x277CD3E90);
  v83 = MEMORY[0x277D84F90];
  v132[1] = a21;
  if (!v82)
  {
LABEL_40:
    sub_231CC6C88(a22, v83);

    v107 = v148;
    v108 = [v148 identifier];
    v109 = sub_231E11620();
    v142 = v110;
    v143 = v109;

    v111 = [v107 dateSent];
    v112 = v141;
    if (v111)
    {
      v113 = v111;
      v114 = v138;
      sub_231E0F910();

      v115 = *(v139 + 32);
      v116 = v114;
      v117 = v140;
      v115(v112, v116, v140);
      OUTLINED_FUNCTION_15_7();
      __swift_storeEnumTagSinglePayload(v118, v119, v120, v117);
      v121 = OUTLINED_FUNCTION_59();
      (v115)(v121);
    }

    else
    {
      v122 = OUTLINED_FUNCTION_9_22();
      v123 = v140;
      __swift_storeEnumTagSinglePayload(v122, v124, v125, v140);
      sub_231E0F920();
      OUTLINED_FUNCTION_8_17(v112, 1, v123);
      if (!v80)
      {
        sub_231CC154C(v112, &dword_27DD74AD0, &qword_231E16C40);
      }
    }

    v126 = v146;
    v127 = sub_231E103E0();
    v140 = v128;
    v141 = v127;
    sub_231CC33AC(v148, &selRef_content);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
    v129 = v147;
    v130 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_231E138E0;
    (*(v129 + 16))(v131 + v130, v126, v52);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v38 = v137;
    sub_231E10A10();
    (*(v129 + 8))(v126, v52);
    v71 = 0;
    goto LABEL_8;
  }

  v84 = v82;
  v85 = sub_231CBA138(v82);
  v86 = 0;
  v143 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v85 == v86)
    {

      v83 = v143;
      goto LABEL_40;
    }

    if ((v84 & 0xC000000000000001) != 0)
    {
      v87 = MEMORY[0x23837D2A0](v86, v84);
    }

    else
    {
      if (v86 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v87 = *(v84 + 8 * v86 + 32);
    }

    v88 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      break;
    }

    sub_231E08B20(v87, v22);
    OUTLINED_FUNCTION_8_17(v22, 1, v52);
    if (v80)
    {
      v89 = OUTLINED_FUNCTION_63_10();
      sub_231CC154C(v89, v90, &dword_231E13460);
      ++v86;
    }

    else
    {
      v133(v142, v22, v52);
      v91 = v143;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_3_34();
        v99 = OUTLINED_FUNCTION_0_1();
        v91 = sub_231DEF7F0(v99, v100, v101, v91, &qword_27DD740A8, &unk_231E13540, v102, v103);
      }

      v93 = v91;
      v94 = v91[2];
      v143 = v93;
      v95 = *(v93 + 24);
      v96 = v94 + 1;
      if (v94 >= v95 >> 1)
      {
        v104 = OUTLINED_FUNCTION_2_12(v95);
        v132[0] = v105;
        v106 = sub_231DEF7F0(v104, v105, 1, v143, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
        v96 = v132[0];
        v143 = v106;
      }

      v143[2] = v96;
      OUTLINED_FUNCTION_11_22();
      (v133)(v97 + v98 * v94);
      v86 = v88;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_231DEF680(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_231E120C0() & 1;
  }
}

void *sub_231DEF6F4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_231DEF7F0(result, *(v1 + 16) + 1, 1, v1, &qword_27DD75948, &qword_231E230F0, MEMORY[0x277D423C0], MEMORY[0x277D423C0]);
    *v0 = result;
  }

  return result;
}

void *sub_231DEF778(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_231DEF7F0((v2 > 1), result + 1, 1, *v1, &qword_27DD75948, &qword_231E230F0, MEMORY[0x277D423C0], MEMORY[0x277D423C0]);
    *v1 = result;
  }

  return result;
}

void *sub_231DEF7F0(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_231DEF978(v14, v13, a5, a6, a7);
  a8(0);
  OUTLINED_FUNCTION_79();
  if (v11)
  {
    sub_231DEFA6C(a4 + v16, v14, v15 + v16, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_231DEF8FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_231DEF978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = a5(0);
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_231DEFA6C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_12(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_102_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_102_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_231DEFB3C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_231DF2340(result, 1, &qword_27DD74BC0, &qword_231E1C578, MEMORY[0x277D423C8], MEMORY[0x277D423C8]);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_231E107F0();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_231DEFC74(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_231DF2340(result, 1, &qword_27DD75948, &qword_231E230F0, MEMORY[0x277D423C0], MEMORY[0x277D423C0]);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_231E10760();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_231DEFDAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75950, &qword_231E230F8);
  v34 = v4;
  result = sub_231E11EF0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
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
        goto LABEL_34;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_231CFD55C(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_231E12220();
    sub_231E116E0();
    result = sub_231E12250();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_231DF0050(uint64_t *a1)
{
  v2 = sub_231E106A0();
  OUTLINED_FUNCTION_47(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231DF0654(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  sub_231DF08C0(v8);
  *a1 = v5;
}

void sub_231DF00F4(uint64_t *a1)
{
  v2 = *(sub_231E10A30() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231DF06B4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_231DF0A88(v6);
  *a1 = v3;
}

void sub_231DF019C()
{
  OUTLINED_FUNCTION_118();
  v68 = v2;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  v11 = v10;
  v74 = v12;
  v14 = v13;
  v16 = v15(0);
  OUTLINED_FUNCTION_24();
  v79 = v17;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_1();
  v76 = v19;
  v81 = v6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  v21 = OUTLINED_FUNCTION_47(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_41_14();
  v23 = MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v26 = v67 - v25;
  v27 = v9 >> 1;
  v75 = v11;
  v28 = (v9 >> 1) - v11;
  if (__OFSUB__(v9 >> 1, v11))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v67[1] = v14;
  v29 = *v7;
  v30 = *(*v7 + 16);
  v31 = v30 + v28;
  if (__OFADD__(v30, v28))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v32 = v28;
  v77 = v27;
  v70 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v7;
  *v7 = v29;
  if (isUniquelyReferenced_nonNull_native)
  {
    v34 = *(v29 + 24) >> 1;
    v35 = v76;
    v36 = v68;
    if (v34 >= v31)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v35 = v76;
    v36 = v68;
  }

  v37 = v71;
  v36();
  v29 = *v37;
  v34 = *(v29 + 24) >> 1;
LABEL_8:
  v38 = v34 - *(v29 + 16);
  if (v77 != v75)
  {
    if (v38 >= v32)
    {
      v39 = v32;
      swift_arrayInitWithCopy();
      if (v32 <= 0)
      {
        v40 = v77;
        goto LABEL_16;
      }

      v41 = *(v29 + 16);
      v42 = __OFADD__(v41, v32);
      v43 = v41 + v32;
      v40 = v77;
      if (!v42)
      {
        *(v29 + 16) = v43;
        goto LABEL_16;
      }

LABEL_43:
      __break(1u);
      return;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v32 > 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v39 = 0;
  v40 = v75;
LABEL_16:
  if (v39 == v38)
  {
    v72 = v29;
    v44 = *(v29 + 16);
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v16);
    v48 = (v79 + 32);
    v73 = (v79 + 16);
    v69 = (v79 + 8);
    while (1)
    {
      v49 = v70;
      v50 = v81;
      sub_231D48134(v26, v70, v81, v4);
      OUTLINED_FUNCTION_8_17(v49, 1, v16);
      if (v51)
      {
        break;
      }

      v52 = OUTLINED_FUNCTION_102_0();
      sub_231CC154C(v52, v53, v4);
      v54 = *(v72 + 24);
      if (v44 + 1 > (v54 >> 1))
      {
        (v68)(v54 > 1);
      }

      v80 = *(*v71 + 24) >> 1;
      OUTLINED_FUNCTION_79();
      v72 = v55;
      v78 = v55 + v56;
      while (1)
      {
        v57 = v81;
        sub_231D48134(v26, v1, v81, v4);
        OUTLINED_FUNCTION_8_17(v1, 1, v16);
        if (v51)
        {
          sub_231CC154C(v1, v57, v4);
          goto LABEL_35;
        }

        v58 = v35;
        v59 = *v48;
        (*v48)(v58, v1, v16);
        if (v44 >= v80)
        {
          break;
        }

        v60 = v57;
        v61 = v4;
        sub_231CC154C(v26, v60, v4);
        v62 = *(v79 + 72);
        v59(v78 + v62 * v44, v58, v16);
        if (v40 == v77)
        {
          v63 = 1;
          v40 = v77;
        }

        else
        {
          if (v40 < v75 || v40 >= v77)
          {
            __break(1u);
            goto LABEL_39;
          }

          (*v73)(v26, v74 + v62 * v40, v16);
          v63 = 0;
          ++v40;
        }

        __swift_storeEnumTagSinglePayload(v26, v63, 1, v16);
        ++v44;
        v4 = v61;
        v35 = v76;
      }

      (*v69)(v58, v16);
      v35 = v58;
LABEL_35:
      *(v72 + 16) = v44;
    }

    sub_231CC154C(v26, v50, v4);
    swift_unknownObjectRelease();
    v65 = OUTLINED_FUNCTION_102_0();
    sub_231CC154C(v65, v66, v4);
    v29 = v72;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *v71 = v29;
  OUTLINED_FUNCTION_113();
}

void sub_231DF0714()
{
  OUTLINED_FUNCTION_118();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_6(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v7(0);
  OUTLINED_FUNCTION_79();
  if (v10)
  {
    sub_231DEFA6C(v8 + v24, v14, v21 + v24, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_113();
}

void sub_231DF08C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_231E120B0();
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
        sub_231E106A0();
        v6 = sub_231E118B0();
        *(v6 + 16) = v5;
      }

      v7 = sub_231E106A0();
      OUTLINED_FUNCTION_47(v7);
      OUTLINED_FUNCTION_79();
      v9[0] = (v6 + v8);
      v9[1] = v5;
      sub_231DF0FB8(v9, v10, a1, v4, MEMORY[0x277D42368], MEMORY[0x277D42348], MEMORY[0x277D42368], MEMORY[0x277D42368]);
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
    sub_231DF0C58(0, v2, 1, a1, MEMORY[0x277D42368], MEMORY[0x277D42348]);
  }
}

void sub_231DF0A88(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_231E120B0();
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
        sub_231E10A30();
        v6 = sub_231E118B0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_231E10A30() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_231DF0FB8(v8, v9, a1, v4, MEMORY[0x277D42428], MEMORY[0x277D42410], MEMORY[0x277D42428], MEMORY[0x277D42428]);
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
    sub_231DF0C58(0, v2, 1, a1, MEMORY[0x277D42428], MEMORY[0x277D42410]);
  }
}

void sub_231DF0C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v54 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_139();
  v53 = v14;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_5();
  v16 = OUTLINED_FUNCTION_3_0();
  v17 = a5(v16);
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_139();
  v47 = v19;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_0();
  v52 = v21;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_5();
  v51 = v24;
  if (a3 != a2)
  {
    v26 = *(v23 + 16);
    v25 = v23 + 16;
    v27 = *(v25 + 56);
    v49 = (v12 + 8);
    v50 = v26;
    v48 = (v25 - 8);
    v28 = *a4 + v27 * (a3 - 1);
    v44 = -v27;
    v45 = (v25 + 16);
    v29 = a1 - a3;
    v46 = *a4;
    v39 = v27;
    v30 = *a4 + v27 * a3;
    while (2)
    {
      v42 = v28;
      v43 = a3;
      v40 = v30;
      v41 = v29;
      v56 = v29;
      do
      {
        v50(v51, v30, v17);
        v31 = (v50)(v52, v28, v17);
        v32 = a6(v31);
        a6(v32);
        OUTLINED_FUNCTION_63_10();
        v57 = sub_231E0F8E0();
        v33 = *v49;
        (*v49)(v53, v54);
        v34 = OUTLINED_FUNCTION_63_10();
        v33(v34);
        v35 = *v48;
        (*v48)(v52, v17);
        v35(v51, v17);
        if ((v57 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        v36 = *v45;
        (*v45)(v47, v30, v17);
        swift_arrayInitWithTakeFrontToBack();
        v37 = OUTLINED_FUNCTION_40_11();
        v36(v37);
        v28 += v44;
        v30 += v44;
      }

      while (!__CFADD__(v56++, 1));
      a3 = v43 + 1;
      v28 = v42 + v39;
      v29 = v41 - 1;
      v30 = v40 + v39;
      if (v43 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_231DF0FB8(char **a1, uint64_t a2, char **a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t), void (*a8)(void))
{
  v162 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_139();
  v161 = v16;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_5();
  v160 = v18;
  v19 = OUTLINED_FUNCTION_3_0();
  v20 = a5(v19);
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_0();
  v151 = v23;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_0();
  v159 = v25;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_5();
  v158 = v28;
  v140 = v27;
  v141 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
    v32 = v8;
LABEL_100:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    v34 = v32;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v119 = v31 + 16;
      v120 = *(v31 + 2);
      v121 = v34;
      while (v120 >= 2)
      {
        if (!*v141)
        {
          goto LABEL_138;
        }

        v34 = v31;
        v122 = &v31[16 * v120];
        v31 = *v122;
        v123 = &v119[2 * v120];
        v124 = v123[1];
        OUTLINED_FUNCTION_71_6(&(*v141)[*(v140 + 72) * *v122], &(*v141)[*(v140 + 72) * *v123], &(*v141)[*(v140 + 72) * v124], v9, a7, a8);
        if (v121)
        {
          break;
        }

        if (v124 < v31)
        {
          goto LABEL_126;
        }

        if (v120 - 2 >= *v119)
        {
          goto LABEL_127;
        }

        *v122 = v31;
        *(v122 + 1) = v124;
        v125 = *v119 - v120;
        if (*v119 < v120)
        {
          goto LABEL_128;
        }

        v120 = *v119 - 1;
        memmove(v123, v123 + 2, 16 * v125);
        *v119 = v120;
        v31 = v34;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v31 = sub_231CF1D4C(v31);
    goto LABEL_102;
  }

  v126 = a4;
  v30 = 0;
  v156 = (v14 + 8);
  v154 = (v27 + 32);
  v155 = (v27 + 8);
  v31 = MEMORY[0x277D84F90];
  v157 = v20;
  v32 = v8;
  while (1)
  {
    v33 = v30;
    v34 = (v30 + 1);
    if ((v30 + 1) < v29)
    {
      v142 = v32;
      v144 = v30 + 1;
      v164 = *v141;
      v35 = *(v27 + 72);
      v36 = v30;
      v128 = v30;
      v37 = &(*v141)[v35 * v34];
      v38 = *(v27 + 16);
      v39 = OUTLINED_FUNCTION_45_6();
      v147 = v40;
      v38(v39);
      v9 = v159;
      v134 = v38;
      v41 = (v38)(v159, &v164[v35 * v36], v20);
      v31 = v160;
      v42 = a6(v41);
      a6(v42);
      v136 = sub_231E0F8E0();
      v43 = v20;
      v44 = *v156;
      (*v156)(v161, v162);
      v44(v160, v162);
      v45 = *(v140 + 8);
      v45(v159, v43);
      v45(v158, v43);
      v46 = v147;
      v47 = v128 + 2;
      v149 = v35;
      v48 = &v164[v35 * (v128 + 2)];
      while (1)
      {
        v49 = v47;
        if (++v144 >= v46)
        {
          break;
        }

        v9 = v158;
        v165 = v47;
        v134(v158, v48, v157);
        v50 = OUTLINED_FUNCTION_45_6();
        v51 = (v134)(v50);
        v52 = a6(v51);
        a6(v52);
        v152 = sub_231E0F8E0() & 1;
        v31 = v156;
        v44(v161, v162);
        v53 = OUTLINED_FUNCTION_59();
        (v44)(v53);
        v45(v159, v157);
        v45(v158, v157);
        v49 = v165;
        v46 = v147;
        v48 += v149;
        v37 += v149;
        v47 = v165 + 1;
        if ((v136 & 1) != v152)
        {
          goto LABEL_9;
        }
      }

      v144 = v46;
LABEL_9:
      if (v136)
      {
        v34 = v144;
        v33 = v128;
        v20 = v157;
        if (v144 < v128)
        {
          goto LABEL_132;
        }

        if (v128 >= v144)
        {
          OUTLINED_FUNCTION_57_8();
          goto LABEL_32;
        }

        if (v46 >= v49)
        {
          v54 = v49;
        }

        else
        {
          v54 = v46;
        }

        v55 = v149 * (v54 - 1);
        v56 = v149 * v54;
        v57 = v144;
        v31 = v128;
        v58 = v128 * v149;
        v59 = v142;
        do
        {
          if (v31 != --v57)
          {
            v9 = *v141;
            if (!*v141)
            {
              goto LABEL_139;
            }

            v60 = v59;
            v166 = *v154;
            (*v154)(v131, v9 + v58, v157);
            v61 = v58 < v55 || v9 + v58 >= v9 + v56;
            if (v61)
            {
              OUTLINED_FUNCTION_65_9();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != v55)
            {
              OUTLINED_FUNCTION_65_9();
              swift_arrayInitWithTakeBackToFront();
            }

            v166(v9 + v55, v131, v157);
            v59 = v60;
          }

          ++v31;
          v55 -= v149;
          v56 -= v149;
          v58 += v149;
        }

        while (v31 < v57);
        OUTLINED_FUNCTION_57_8();
      }

      else
      {
        OUTLINED_FUNCTION_57_8();
        v20 = v157;
      }

      v34 = v144;
      v33 = v128;
    }

LABEL_32:
    v62 = v141[1];
    if (v34 < v62)
    {
      if (__OFSUB__(v34, v33))
      {
        goto LABEL_131;
      }

      if (v34 - v33 < v126)
      {
        break;
      }
    }

LABEL_48:
    if (v34 < v33)
    {
      goto LABEL_130;
    }

    v143 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v115 = OUTLINED_FUNCTION_0_1();
      v31 = sub_231CF0DE4(v115, v116, v117, v31);
    }

    v74 = *(v31 + 2);
    v73 = *(v31 + 3);
    v75 = v74 + 1;
    v27 = v140;
    if (v74 >= v73 >> 1)
    {
      v118 = sub_231CF0DE4((v73 > 1), v74 + 1, 1, v31);
      v27 = v140;
      v31 = v118;
    }

    *(v31 + 2) = v75;
    v76 = v31 + 32;
    v77 = &v31[16 * v74 + 32];
    *v77 = v33;
    *(v77 + 1) = v34;
    v168 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    v146 = v34;
    if (v74)
    {
      while (1)
      {
        v78 = v75 - 1;
        v79 = &v76[16 * v75 - 16];
        v80 = &v31[16 * v75];
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v81 = *(v31 + 4);
          v82 = *(v31 + 5);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_68:
          if (v84)
          {
            goto LABEL_117;
          }

          v96 = *v80;
          v95 = *(v80 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_120;
          }

          v100 = *(v79 + 1);
          v101 = v100 - *v79;
          if (__OFSUB__(v100, *v79))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v98, v101))
          {
            goto LABEL_125;
          }

          if (v98 + v101 >= v83)
          {
            if (v83 < v101)
            {
              v78 = v75 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v75 < 2)
        {
          goto LABEL_119;
        }

        v103 = *v80;
        v102 = *(v80 + 1);
        v91 = __OFSUB__(v102, v103);
        v98 = v102 - v103;
        v99 = v91;
LABEL_83:
        if (v99)
        {
          goto LABEL_122;
        }

        v105 = *v79;
        v104 = *(v79 + 1);
        v91 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v106 < v98)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v78 - 1 >= v75)
        {
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
          goto LABEL_134;
        }

        if (!*v141)
        {
          goto LABEL_137;
        }

        v110 = &v76[16 * v78 - 16];
        v111 = *v110;
        v9 = v76;
        v112 = &v76[16 * v78];
        v113 = *(v112 + 1);
        OUTLINED_FUNCTION_71_6(&(*v141)[*(v27 + 72) * *v110], &(*v141)[*(v27 + 72) * *v112], &(*v141)[*(v27 + 72) * v113], v168, a7, a8);
        if (v143)
        {
          goto LABEL_110;
        }

        if (v113 < v111)
        {
          goto LABEL_112;
        }

        v34 = v31;
        v31 = *(v31 + 2);
        if (v78 > v31)
        {
          goto LABEL_113;
        }

        *v110 = v111;
        *(v110 + 1) = v113;
        if (v78 >= v31)
        {
          goto LABEL_114;
        }

        v143 = 0;
        v75 = (v31 - 1);
        memmove(v112, v112 + 16, 16 * &v31[-v78 - 1]);
        *(v34 + 16) = v31 - 1;
        v114 = v31 > 2;
        v31 = v34;
        v27 = v140;
        v76 = v9;
        if (!v114)
        {
          goto LABEL_97;
        }
      }

      v85 = &v76[16 * v75];
      v86 = *(v85 - 8);
      v87 = *(v85 - 7);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_115;
      }

      v90 = *(v85 - 6);
      v89 = *(v85 - 5);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_116;
      }

      v92 = *(v80 + 1);
      v93 = v92 - *v80;
      if (__OFSUB__(v92, *v80))
      {
        goto LABEL_118;
      }

      v91 = __OFADD__(v83, v93);
      v94 = v83 + v93;
      if (v91)
      {
        goto LABEL_121;
      }

      if (v94 >= v88)
      {
        v108 = *v79;
        v107 = *(v79 + 1);
        v91 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v91)
        {
          goto LABEL_129;
        }

        if (v83 < v109)
        {
          v78 = v75 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v32 = v143;
    v29 = v141[1];
    v30 = v146;
    if (v146 >= v29)
    {
      goto LABEL_100;
    }
  }

  v63 = (v33 + v126);
  if (__OFADD__(v33, v126))
  {
    goto LABEL_133;
  }

  if (v63 >= v62)
  {
    v63 = v141[1];
  }

  if (v63 < v33)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v34 == v63)
  {
    goto LABEL_48;
  }

  v64 = *(v27 + 72);
  v153 = *(v27 + 16);
  v65 = &(*v141)[v64 * (v34 - 1)];
  v148 = -v64;
  v129 = v33;
  v9 = v33 - v34;
  v150 = *v141;
  v130 = v64;
  v66 = &(*v141)[v34 * v64];
  v132 = v63;
LABEL_41:
  v145 = v34;
  v133 = v66;
  v135 = v9;
  v137 = v65;
  while (1)
  {
    v67 = OUTLINED_FUNCTION_45_6();
    v153(v67);
    v68 = (v153)(v159, v65, v20);
    v69 = a6(v68);
    a6(v69);
    v167 = sub_231E0F8E0();
    v70 = *v156;
    v31 = v162;
    (*v156)(v161, v162);
    v20 = v157;
    v70(v160, v162);
    v71 = *v155;
    (*v155)(v159, v157);
    v71(v158, v157);
    if ((v167 & 1) == 0)
    {
LABEL_46:
      v34 = v145 + 1;
      v65 = v137 + v130;
      v9 = v135 - 1;
      v66 = &v133[v130];
      if ((v145 + 1) == v132)
      {
        v34 = v132;
        OUTLINED_FUNCTION_57_8();
        v33 = v129;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v150)
    {
      break;
    }

    v72 = *v154;
    (*v154)(v151, v66, v157);
    swift_arrayInitWithTakeFrontToBack();
    v72(v65, v151, v157);
    v65 += v148;
    v66 += v148;
    v61 = __CFADD__(v9++, 1);
    if (v61)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_231DF1B98(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), void (*a6)(void), uint64_t (*a7)(uint64_t), void (*a8)(void))
{
  v82 = a8;
  v95 = a7;
  v94 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_139();
  v93 = v17;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_5();
  v92 = v19;
  v20 = OUTLINED_FUNCTION_3_0();
  v100 = a5(v20);
  v21 = MEMORY[0x28223BE20](v100);
  v91 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  v97 = v81 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v28 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v28)
  {
    goto LABEL_61;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_62;
  }

  v31 = a6;
  v32 = a2;
  v33 = (a2 - a1) / v27;
  v103 = a1;
  v102 = a4;
  v89 = (v15 + 8);
  v90 = (v24 + 16);
  v88 = (v24 + 8);
  v34 = v29 / v27;
  if (v33 >= v29 / v27)
  {
    v99 = a1;
    sub_231DEFA6C(a2, v29 / v27, a4, v31);
    v85 = a4;
    v58 = a4 + v34 * v27;
    v59 = -v27;
    v60 = v58;
    v61 = v95;
    v84 = -v27;
LABEL_37:
    v86 = v32 + v59;
    v81[0] = v60;
    v98 = v32;
    while (1)
    {
      if (v58 <= v85)
      {
        v103 = v32;
        v101 = v60;
        goto LABEL_59;
      }

      if (v32 <= v99)
      {
        break;
      }

      v83 = v60;
      v96 = a3 + v59;
      v62 = v58 + v59;
      v63 = v58;
      v64 = *v90;
      v65 = v61;
      v66 = v100;
      v87 = a3;
      v64(v97, v62, v100);
      v67 = v91;
      v68 = (v64)(v91, v86, v66);
      v69 = v92;
      v70 = v65(v68);
      v71 = v93;
      v65(v70);
      LOBYTE(v65) = sub_231E0F8E0();
      v72 = *v89;
      v73 = v71;
      v74 = v94;
      (*v89)(v73, v94);
      v72(v69, v74);
      v75 = *v88;
      (*v88)(v67, v66);
      v75(v97, v66);
      if (v65)
      {
        v58 = v63;
        a3 = v96;
        if (v87 < v98 || v96 >= v98)
        {
          v32 = v86;
          OUTLINED_FUNCTION_28_13();
          swift_arrayInitWithTakeFrontToBack();
          v60 = v83;
          v59 = v84;
          v61 = v95;
        }

        else
        {
          v79 = v83;
          v60 = v83;
          v80 = v86;
          v32 = v86;
          v61 = v95;
          v59 = v84;
          if (v87 != v98)
          {
            OUTLINED_FUNCTION_28_13();
            swift_arrayInitWithTakeBackToFront();
            v32 = v80;
            v60 = v79;
          }
        }

        goto LABEL_37;
      }

      v76 = v96;
      if (v87 < v63 || v96 >= v63)
      {
        OUTLINED_FUNCTION_28_13();
        swift_arrayInitWithTakeFrontToBack();
        a3 = v76;
        v58 = v62;
        v60 = v62;
        v61 = v95;
        v32 = v98;
        v59 = v84;
      }

      else
      {
        v60 = v62;
        v28 = v63 == v87;
        a3 = v96;
        v58 = v62;
        v61 = v95;
        v32 = v98;
        v59 = v84;
        if (!v28)
        {
          OUTLINED_FUNCTION_28_13();
          swift_arrayInitWithTakeBackToFront();
          a3 = v76;
          v58 = v62;
          v60 = v62;
        }
      }
    }

    v103 = v32;
    v101 = v81[0];
  }

  else
  {
    sub_231DEFA6C(a1, (a2 - a1) / v27, a4, v31);
    v86 = v27;
    v87 = a4 + v33 * v27;
    v101 = v87;
    v35 = a2;
    v96 = a3;
    while (a4 < v87 && v35 < a3)
    {
      v98 = v35;
      v99 = a1;
      v37 = *v90;
      v38 = v97;
      v39 = v100;
      (*v90)(v97, v35, v100);
      v40 = v91;
      v41 = (v37)(v91, a4, v39);
      v42 = v92;
      v43 = v95;
      v44 = v95(v41);
      v45 = v93;
      v43(v44);
      v46 = sub_231E0F8E0();
      v47 = *v89;
      v48 = v45;
      v49 = a4;
      v50 = v94;
      (*v89)(v48, v94);
      v47(v42, v50);
      v51 = *v88;
      (*v88)(v40, v39);
      v51(v38, v39);
      if (v46)
      {
        v52 = v86;
        v53 = v99;
        v54 = v98 + v86;
        v55 = v99 < v98 || v99 >= v54;
        a4 = v49;
        if (v55)
        {
          OUTLINED_FUNCTION_19_13();
          swift_arrayInitWithTakeFrontToBack();
          v35 = v54;
          a3 = v96;
        }

        else
        {
          a3 = v96;
          if (v99 != v98)
          {
            OUTLINED_FUNCTION_19_13();
            swift_arrayInitWithTakeBackToFront();
          }

          v35 = v54;
        }
      }

      else
      {
        v35 = v98;
        v53 = v99;
        v52 = v86;
        a4 = v49 + v86;
        v56 = v99 < v49 || v99 >= a4;
        v57 = v49;
        if (v56)
        {
          OUTLINED_FUNCTION_19_13();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v96;
        }

        else
        {
          a3 = v96;
          if (v99 != v57)
          {
            OUTLINED_FUNCTION_19_13();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v102 = a4;
      }

      a1 = v53 + v52;
      v103 = a1;
    }
  }

LABEL_59:
  sub_231DF21EC(&v103, &v102, &v101, v82);
  return 1;
}

void sub_231DF21EC(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {
    OUTLINED_FUNCTION_48();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_48();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_231DF22C0(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_231CE0B9C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_231DF2340(int64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(void))
{
  v13 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v13;
  if (!result || a1 > *(v13 + 24) >> 1)
  {
    if (*(v13 + 16) <= a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = *(v13 + 16);
    }

    result = sub_231DEF7F0(result, v15, a2 & 1, v13, a3, a4, a5, a6);
    *v6 = result;
  }

  return result;
}

uint64_t sub_231DF248C(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_231CC1784(0, a3, a4);
  v8 = sub_231E11870();

  return v8;
}

void sub_231DF2500(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
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
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
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

uint64_t sub_231DF2664@<X0>(void *a1@<X8>)
{
  v2 = sub_231E120D0();
  MEMORY[0x23837CC20](v2);

  MEMORY[0x23837CC20](47, 0xE100000000000000);
  v3 = sub_231E10690();
  MEMORY[0x23837CC20](v3);

  *a1 = 14960;
  a1[1] = v5;
  return result;
}

char *OUTLINED_FUNCTION_16_15()
{

  return sub_231DEBB9C(v0, sub_231DF2400, v1, v2 + 144, v3);
}

uint64_t OUTLINED_FUNCTION_17_11(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return type metadata accessor for AssetManager();
}

void OUTLINED_FUNCTION_26_12()
{
  v3 = *(v0 + 320);
  *(v1 - 128) = *(v0 + 176);
}

uint64_t OUTLINED_FUNCTION_34_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 + 24);
  v8[27] = *(v9 + 16);
  v8[28] = v11;
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[21] = a3;
  v8[22] = a4;
  v8[19] = a1;
  v8[20] = a2;

  return sub_231E10E30();
}

id OUTLINED_FUNCTION_39_8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{

  return [a10 a2];
}

__n128 OUTLINED_FUNCTION_50_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14)
{
  *(v15 - 96) = a1;
  result = a14;
  *v14 = a14.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_56_13()
{
}

uint64_t OUTLINED_FUNCTION_69_7(uint64_t a1)
{
  *(v1 + 312) = a1;

  return sub_231E115F0();
}

uint64_t OUTLINED_FUNCTION_70_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_71_6(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), void (*a6)(void))
{
  v8 = *(v6 - 272);
  v9 = *(v6 - 264);

  return sub_231DF1B98(a1, a2, a3, a4, a5, a6, v8, v9);
}

uint64_t OUTLINED_FUNCTION_72_6(uint64_t a1)
{
  *(v1 + 304) = a1;

  return sub_231E115F0();
}

uint64_t sub_231DF2ACC(uint64_t a1, uint64_t a2)
{
  v3 = sub_231E0F950();
  MEMORY[0x28223BE20](v3);
  sub_231E10980();
  sub_231E0F870();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8();
  v7(v6);
  sub_231E0F880();
  if (v8 - sub_231D11D54() <= v5)
  {
    sub_231E10910();
    if (v9)
    {
      v10 = sub_231E108E0();
      if (v10 == 2 || (v10 & 1) == 0)
      {
        type metadata accessor for AssetManager();
        sub_231D45A8C();
        v12 = v11;
        v13 = OUTLINED_FUNCTION_8();
        sub_231DAA834(v13, v14);
        v16 = sub_231DF2D54(v15, v12, sub_231D2D2D4, &type metadata for AppCategoryID, sub_231D2D328);

        if (v16)
        {

          return OUTLINED_FUNCTION_8();
        }

        sub_231D45D9C();
        v18 = v17;
        v19 = OUTLINED_FUNCTION_8();
        v21 = sub_231D24924(v19, v20, v18);

        if (v21)
        {
          return OUTLINED_FUNCTION_8();
        }
      }

      if (sub_231DF2D54(0, a2, sub_231D2D37C, &type metadata for SummarizationManager.Option, sub_231D2D3D0))
      {
        sub_231D70008();

        sub_231D70048();
      }
    }
  }

  return OUTLINED_FUNCTION_8();
}

BOOL sub_231DF2D54(char a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  a3();
  v7 = sub_231E11550();
  v8 = ~(-1 << *(a2 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a2 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    a5();
    v12 = sub_231E115D0();
    v7 = v9 + 1;
  }

  while ((v12 & 1) == 0);
  return v11;
}

uint64_t sub_231DF2E4C@<X0>(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v114 = a2;
  v117 = sub_231E107F0();
  OUTLINED_FUNCTION_24();
  v100 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  v116 = v11 - v10;
  v115 = sub_231E10EE0();
  OUTLINED_FUNCTION_24();
  v118 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v16 = v15 - v14;
  v17 = sub_231E0F950();
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_4_1();
  v105 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  MEMORY[0x28223BE20](v20 - 8);
  v103 = v98 - v21;
  v113 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v102 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_1();
  v101 = (v25 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74448, &unk_231E171C0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v99 = v98 - v31;
  MEMORY[0x28223BE20](v30);
  v108 = v98 - v32;
  v33 = sub_231E11090();
  OUTLINED_FUNCTION_24();
  v111 = v34;
  v36 = MEMORY[0x28223BE20](v35);
  v107 = v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = v98 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = v98 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = v98 - v44;
  v119[0] = 0;
  sub_231DF3B40(&qword_2814CAFF8, MEMORY[0x277D4AFF0]);
  v110 = v45;
  v112 = v33;
  sub_231E122B0();
  v46 = sub_231E10900();
  if (v46 != 2 && (v46 & 1) != 0)
  {
    sub_231E11080();
    OUTLINED_FUNCTION_4_30();
    v47 = OUTLINED_FUNCTION_2_34();
    v33(v47);
    v48 = v5;
    v5 = v4;
    (v33)(v43, v48);
  }

  v49 = sub_231E10950();
  if (v49 != 2 && (v49 & 1) != 0)
  {
    sub_231E11070();
    OUTLINED_FUNCTION_4_30();
    v50 = OUTLINED_FUNCTION_2_34();
    v33(v50);
    v51 = v5;
    v5 = v4;
    (v33)(v43, v51);
  }

  v52 = sub_231E108E0();
  v106 = a3;
  v109 = v29;
  v104 = v16;
  if (v52 != 2 && (v52 & 1) != 0 || (v53 = sub_231E10910(), v54) && (v55 = v53, v56 = v54, type metadata accessor for AssetManager(), , sub_231D46268(), v58 = v57, v119[0] = v55, v119[1] = v56, MEMORY[0x28223BE20](v57), v96 = v119, v59 = sub_231D162D0(sub_231D163AC, v95, v58), swift_bridgeObjectRelease_n(), , v59))
  {
    sub_231E11060();
    OUTLINED_FUNCTION_4_30();
    v60 = *(v111 + 8);
    v61 = v40;
    v62 = v112;
    v60(v61, v112);
    v60(v43, v62);
  }

  v63 = sub_231E113F0();
  v64 = v108;
  __swift_storeEnumTagSinglePayload(v108, 1, 1, v63);
  v65 = sub_231E10930();
  v66 = v103;
  sub_231D177B0(v65, v103);

  v67 = v113;
  if (__swift_getEnumTagSinglePayload(v66, 1, v113) == 1)
  {
    sub_231CC154C(v66, &dword_27DD73FA0, &dword_231E13460);
    v68 = v104;
    v69 = v114;
  }

  else
  {
    v70 = v102;
    v71 = *(v102 + 32);
    v98[1] = 0;
    v72 = v5;
    v73 = v101;
    v71(v101, v66, v67);
    v74 = v99;
    v75 = v114;
    (*(*a1 + 168))(v73, v114);
    v76 = v73;
    v5 = v72;
    (*(v70 + 8))(v76, v67);
    sub_231CC154C(v64, &qword_27DD74448, &unk_231E171C0);
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v63);
    v69 = v75;
    sub_231CE4738(v74, v64, &qword_27DD74448, &unk_231E171C0);
    v68 = v104;
  }

  v77 = sub_231E10A20();
  v102 = v78;
  v103 = v77;
  (*(v111 + 16))(v107, v110, v112);
  sub_231DF3AD0(v64, v109);
  v79 = sub_231E10970();
  MEMORY[0x28223BE20](v79);
  v96 = a1;
  v97 = v69;
  v101 = sub_231CD1BA8(sub_231CD1B30, v95, v79);

  v80 = sub_231E10920();
  v81 = *(v80 + 16);
  if (v81)
  {
    v99 = v5;
    v119[0] = MEMORY[0x277D84F90];
    sub_231CD25B8(0, v81, 0);
    v82 = v100 + 16;
    v114 = *(v100 + 16);
    v83 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v100 = v80;
    v84 = v80 + v83;
    v113 = *(v82 + 56);
    v85 = v119[0];
    do
    {
      v86 = v116;
      v87 = v117;
      v114(v116, v84, v117);
      sub_231DC4964();
      (*(v82 - 8))(v86, v87);
      v119[0] = v85;
      v89 = *(v85 + 16);
      v88 = *(v85 + 24);
      if (v89 >= v88 >> 1)
      {
        sub_231CD25B8((v88 > 1), v89 + 1, 1);
        v85 = v119[0];
      }

      *(v85 + 16) = v89 + 1;
      (*(v118 + 32))(v85 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v89, v68, v115);
      v84 += v113;
      --v81;
    }

    while (v81);
  }

  sub_231E10980();
  LODWORD(v117) = sub_231E10940();
  v118 = sub_231E10910();
  sub_231E10A00();
  sub_231E109C0();
  v90 = sub_231E109F0();
  v92 = v91;
  v96 = sub_231E109B0();
  v97 = v93;
  v95[0] = v90;
  v95[1] = v92;
  sub_231E110A0();
  sub_231CC154C(v108, &qword_27DD74448, &unk_231E171C0);
  return (*(v111 + 8))(v110, v112);
}

uint64_t sub_231DF37E8(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75960, &qword_231E23108);
  v5 = MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = sub_231E11090();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = *(v10 + 16);
  v25 = v2;
  v16(v13, v2, v9);
  v23 = sub_231DF3B40(&qword_27DD75968, MEMORY[0x277D4AFE8]);
  sub_231E11CA0();
  sub_231DF3B40(&qword_27DD75970, MEMORY[0x277D4AFE0]);
  v24 = a2;
  v17 = sub_231E115D0();
  v27 = v4;
  v18 = *(v4 + 48);
  *v8 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v10 + 32))(&v8[v18], v15, v9);
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v19 = v24;
    v16(&v8[v18], v24, v9);
    v16(v13, v19, v9);
    sub_231E11CB0();
  }

  v20 = v26;
  sub_231CE4738(v8, v26, &qword_27DD75960, &qword_231E23108);
  v21 = *v20;
  (*(v10 + 32))(v28, &v20[*(v27 + 48)], v9);
  return v21;
}

uint64_t sub_231DF3AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74448, &unk_231E171C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231DF3B40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_231E11090();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231DF3B84@<X0>(char a1@<W0>, void *a2@<X8>)
{
  switch(a1)
  {
    case 2:
    case 3:
      sub_231E11620();
      OUTLINED_FUNCTION_3_12();
      sub_231E11620();
      OUTLINED_FUNCTION_5_31();
      v7 = 0;
      v8 = 0xE000000000000000;
      break;
    default:
      sub_231E11620();
      OUTLINED_FUNCTION_3_12();
      sub_231E11620();
      OUTLINED_FUNCTION_5_31();
      v7 = sub_231E11620();
      v8 = v9;
      break;
  }

  result = sub_231E11620();
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = result;
  a2[7] = v11;
  return result;
}

void sub_231DF3D04(uint64_t a1, void *a2)
{
  v85 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  MEMORY[0x28223BE20](v4 - 8);
  v86 = &v73 - v5;
  v84 = sub_231E10400();
  v75 = *(v84 - 8);
  v6 = MEMORY[0x28223BE20](v84);
  v83 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v73 - v8;
  v9 = [v2 attributeSet];
  OUTLINED_FUNCTION_2_35();

  v10 = sub_231E115F0();

  v11 = OUTLINED_FUNCTION_7_27();
  v13 = [v11 v12];

  if (v13)
  {
    OUTLINED_FUNCTION_10_23();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
  }

  OUTLINED_FUNCTION_1_33();
  if (v14)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
    if (OUTLINED_FUNCTION_0_39(v15))
    {
      v16 = v97;
      goto LABEL_9;
    }
  }

  else
  {
    sub_231CE1118(v100, &dword_27DD741E0, &qword_231E15D70);
  }

  v16 = MEMORY[0x277D84F90];
LABEL_9:
  v17 = OUTLINED_FUNCTION_3_35(v16);
  OUTLINED_FUNCTION_2_35();

  v18 = sub_231E115F0();

  v19 = OUTLINED_FUNCTION_7_27();
  v21 = [v19 v20];

  if (v21)
  {
    OUTLINED_FUNCTION_10_23();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
  }

  OUTLINED_FUNCTION_1_33();
  if (v22)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
    if (OUTLINED_FUNCTION_0_39(v23))
    {
      v24 = v97;
      goto LABEL_17;
    }
  }

  else
  {
    sub_231CE1118(v100, &dword_27DD741E0, &qword_231E15D70);
  }

  v24 = MEMORY[0x277D84F90];
LABEL_17:
  v25 = OUTLINED_FUNCTION_3_35(v24);
  OUTLINED_FUNCTION_2_35();

  v26 = sub_231E115F0();

  v27 = OUTLINED_FUNCTION_7_27();
  v29 = [v27 v28];

  if (v29)
  {
    OUTLINED_FUNCTION_10_23();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
  }

  OUTLINED_FUNCTION_1_33();
  if (v30)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
    if (OUTLINED_FUNCTION_0_39(v31))
    {
      v32 = v97;
      goto LABEL_25;
    }
  }

  else
  {
    sub_231CE1118(v100, &dword_27DD741E0, &qword_231E15D70);
  }

  v32 = MEMORY[0x277D84F90];
LABEL_25:
  v33 = OUTLINED_FUNCTION_3_35(v32);
  OUTLINED_FUNCTION_2_35();

  v34 = sub_231E115F0();

  v35 = OUTLINED_FUNCTION_7_27();
  v37 = [v35 v36];

  if (v37)
  {
    OUTLINED_FUNCTION_10_23();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
  }

  v38 = v92;
  v39 = v91;
  OUTLINED_FUNCTION_1_33();
  if (!v40)
  {
    sub_231CE1118(v100, &dword_27DD741E0, &qword_231E15D70);
    goto LABEL_32;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
  if ((OUTLINED_FUNCTION_0_39(v41) & 1) == 0)
  {
LABEL_32:
    v42 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v42 = v97;
LABEL_33:
  v43 = *(v38 + 16);
  v44 = *(v76 + 16);
  v45 = *(v42 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74AB0, &unk_231E1C220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231E138E0;
  v87 = *(v39 + 16);
  *(inited + 32) = v87;
  v89 = v43;
  v88 = v44;
  v90 = v45;
  v47 = sub_231DF4754(v43, v44, v45, inited);
  swift_setDeallocating();
  if (v47 < 0)
  {
    goto LABEL_80;
  }

  if (!v47)
  {
LABEL_75:

    return;
  }

  v48 = 0;
  v49 = 0;
  v78 = *MEMORY[0x277CBD098];
  v77 = *MEMORY[0x277CBCFC0];
  v79 = (v75 + 32);
  v74 = (v75 + 16);
  v73 = v75 + 8;
  v50 = MEMORY[0x277D84F90];
  v81 = v42;
  v80 = v47;
  while (1)
  {
    OUTLINED_FUNCTION_9_23();
    if (!v65)
    {
      v52 = 0;
      v53 = 0;
      goto LABEL_40;
    }

    if (v49 >= *(v42 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_11_23();
    v52 = OUTLINED_FUNCTION_12_20();
    v53 = v51;

LABEL_40:
    OUTLINED_FUNCTION_9_23();
    v95 = v53;
    if (v65)
    {
      if (v49 >= *(v38 + 16))
      {
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_11_23();
      v96 = OUTLINED_FUNCTION_12_20();
      v42 = v54;
    }

    else
    {
      v96 = 0;
      v42 = 0;
    }

    OUTLINED_FUNCTION_9_23();
    v94 = v52;
    if (v65)
    {
      if (v49 >= *(v76 + 16))
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_11_23();
      v56 = OUTLINED_FUNCTION_12_20();
      v57 = v55;
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    OUTLINED_FUNCTION_9_23();
    v93 = v50;
    if (v65)
    {
      if (v49 >= *(v39 + 16))
      {
        goto LABEL_79;
      }

      OUTLINED_FUNCTION_11_23();
      v59 = OUTLINED_FUNCTION_12_20();
      v60 = v58;
    }

    else
    {
      v59 = 0;
      v60 = 0;
    }

    v62 = v85[3];
    v61 = v85[4];
    __swift_project_boxed_opaque_existential_0(v85, v62);
    v63 = (*(v61 + 56))(v62, v61);
    if (v64)
    {
      if (v42)
      {
        v65 = v63 == v96 && v64 == v42;
        if (!v65)
        {
          sub_231E12100();
        }
      }

      v66 = v86;

      if (v57)
      {
LABEL_63:

        goto LABEL_64;
      }
    }

    else
    {
      v66 = v86;
      if (v57)
      {
        goto LABEL_63;
      }
    }

    if (!v60)
    {
      goto LABEL_65;
    }

    v56 = v59;
    v57 = v60;
LABEL_64:
    v100[0] = v56;
    v100[1] = v57;
    v98 = 64;
    v99 = 0xE100000000000000;
    sub_231CE11D8();

    sub_231E11C60();

    sub_231E11620();
LABEL_65:
    v67 = v84;
    sub_231E103D0();
    if (__swift_getEnumTagSinglePayload(v66, 1, v67) == 1)
    {
      sub_231CE1118(v66, &dword_27DD73FA0, &dword_231E13460);
      OUTLINED_FUNCTION_8_21();
      v50 = v93;
    }

    else
    {
      v68 = *v79;
      v69 = v82;
      (*v79)(v82, v66, v67);
      (*v74)(v83, v69, v67);
      v50 = v93;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_231CFDF64(0, v50[2] + 1, 1, v50);
      }

      OUTLINED_FUNCTION_8_21();
      v71 = v50[2];
      v70 = v50[3];
      if (v71 >= v70 >> 1)
      {
        v50 = sub_231CFDF64((v70 > 1), v71 + 1, 1, v50);
      }

      v72 = v75;
      (*(v75 + 8))(v82, v67);
      v50[2] = v71 + 1;
      v68(v50 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v71, v83, v67);
    }

    ++v49;
    v48 += 16;
    v38 = v92;
    v39 = v91;
    if (v66 == v49)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

uint64_t sub_231DF4754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v4 <= a3)
  {
    result = a3;
  }

  else
  {
    result = v4;
  }

  v6 = *(a4 + 16);
  if (v6)
  {
    v7 = (a4 + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 > result)
      {
        result = v8;
      }

      --v6;
    }

    while (v6);
  }

  return result;
}

unint64_t sub_231DF478C()
{
  result = qword_27DD75978;
  if (!qword_27DD75978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75978);
  }

  return result;
}

_BYTE *_s11ContactKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 OUTLINED_FUNCTION_1_33()
{
  result = *(v0 - 176);
  *(v0 - 160) = *(v0 - 192);
  *(v0 - 144) = result;
  return result;
}

id OUTLINED_FUNCTION_3_35@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return [v2 (v3 + 116)];
}

uint64_t OUTLINED_FUNCTION_10_23()
{

  return sub_231E11C80();
}

uint64_t OUTLINED_FUNCTION_12_20()
{

  return sub_231E116D0();
}

uint64_t sub_231DF4938(uint64_t a1, uint64_t a2)
{
  v74 = sub_231E106A0();
  OUTLINED_FUNCTION_24();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v66 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v73 = &v66 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v66 - v17;
  v19 = sub_231E10370();
  OUTLINED_FUNCTION_24();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_1();
  v25 = v24 - v23;
  sub_231E104E0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v19);
  v71 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_231D6F4D8(v18);
  }

  else
  {
    (*(v21 + 32))(v25, v18, v19);
    v27 = sub_231E10480();
    if (v28)
    {
      MEMORY[0x28223BE20](v27);
      OUTLINED_FUNCTION_4_32();
      *(v29 - 16) = v25;
      *(v29 - 8) = a2;
      v31 = sub_231DF52C4(sub_231DF72F4, v30, a1);

      (*(v21 + 8))(v25, v19);
      goto LABEL_8;
    }

    (*(v21 + 8))(v25, v19);
  }

  v32 = sub_231E10560();
  if (!v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E30, &qword_231E1CB80);
    v37 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_231E138E0;
    v39 = v38 + v37;
    v36 = v74;
    (*(v5 + 16))(v39, a2, v74);
    v80[0] = a1;

    sub_231DF5480(v38, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);

    sub_231DF559C(v80);

    v31 = v80[0];
    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_32();
  *(v34 - 16) = a2;
  v31 = sub_231DF52C4(sub_231DF71D4, v35, a1);

LABEL_8:
  v36 = v74;
LABEL_10:
  v40 = *(v31 + 16);
  if (!v40)
  {
    goto LABEL_27;
  }

  v67 = v31;
  v68 = v5;
  v41 = v5 + 16;
  v42 = *(v5 + 16);
  v69 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v43 = v31 + v69;
  v77 = *(v41 + 56);
  v78 = v42;
  v79 = v41;
  v76 = (v41 - 8);
  v44 = MEMORY[0x277D84F90];
  v45 = v31 + v69;
  do
  {
    v78(v15, v45, v36);
    v46 = sub_231E10530();
    v48 = v47;
    v75 = *v76;
    v75(v15, v36);
    if (v48)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_231CE0B9C(0, *(v44 + 2) + 1, 1, v44);
      }

      v50 = *(v44 + 2);
      v49 = *(v44 + 3);
      if (v50 >= v49 >> 1)
      {
        v44 = sub_231CE0B9C((v49 > 1), v50 + 1, 1, v44);
      }

      *(v44 + 2) = v50 + 1;
      v51 = &v44[16 * v50];
      *(v51 + 4) = v46;
      *(v51 + 5) = v48;
      v36 = v74;
    }

    v45 += v77;
    --v40;
  }

  while (v40);
  v52 = *(v67 + 16);
  if (v52)
  {
    v70 = v44;
    v81 = MEMORY[0x277D84F90];
    sub_231D56E94(0, v52, 0);
    v53 = v81;
    v68 += 4;
    do
    {
      v54 = v71;
      v55 = v78;
      v78(v71, v43, v36);
      v56 = v72;
      v55(v72, v54, v36);
      v80[0] = sub_231E10690();
      v80[1] = v57;
      MEMORY[0x28223BE20](v80[0]);
      *(&v66 - 2) = v80;
      LOBYTE(v55) = sub_231D162D0(sub_231D163AC, (&v66 - 4), v70);

      if (v55)
      {
        sub_231E10690();
        sub_231E10540();
      }

      v58 = v54;
      v59 = v74;
      v75(v58, v74);
      v60 = *v68;
      v61 = v73;
      (*v68)(v73, v56, v59);
      v81 = v53;
      v63 = *(v53 + 16);
      v62 = *(v53 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_231D56E94((v62 > 1), v63 + 1, 1);
        v61 = v73;
        v53 = v81;
      }

      *(v53 + 16) = v63 + 1;
      v64 = v77;
      v60((v53 + v69 + v63 * v77), v61, v59);
      v43 += v64;
      --v52;
      v36 = v59;
    }

    while (v52);
  }

  else
  {
LABEL_27:

    return MEMORY[0x277D84F90];
  }

  return v53;
}

uint64_t sub_231DF502C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_231E10400();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_4_1();
  v11 = sub_231E10370();
  OUTLINED_FUNCTION_24();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_1();
  v17 = v16 - v15;
  v23[0] = a2;
  v23[1] = a3;
  v23[4] = sub_231E10690();
  v23[5] = v18;
  sub_231CE11D8();
  LOBYTE(a3) = sub_231E11C60();

  sub_231E106A0();
  OUTLINED_FUNCTION_12();
  result = (*(v19 + 16))(a5, a1);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75948, &qword_231E230F0);
    sub_231E10760();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_231E138E0;
    (*(v13 + 16))(v17, a4, v11);
    sub_231E104F0();
    sub_231E10730();
    v22 = sub_231E105A0();
    sub_231DF5480(v21, &qword_27DD75948, &qword_231E230F0, MEMORY[0x277D423C0], MEMORY[0x277D423C0]);
    return v22(v23, 0);
  }

  return result;
}

uint64_t sub_231DF52C4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_231E106A0();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x277D84F90];
  sub_231D56E94(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_231D56E94((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231DF5480(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t (*a5)(void))
{
  v7 = *(a1 + 16);
  v8 = *(*v5 + 16);
  result = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_231DF7140(result, 1, a2, a3, a4);
  v11 = *v5;
  if (!*(a1 + 16))
  {

    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = (*(v11 + 24) >> 1) - *(v11 + 16);
  result = a5(0);
  if (v12 < v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v7)
  {
LABEL_8:
    *v5 = v11;
    return result;
  }

  v13 = *(v11 + 16);
  v14 = __OFADD__(v13, v7);
  v15 = v13 + v7;
  if (!v14)
  {
    *(v11 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_231DF559C(uint64_t *a1)
{
  v2 = *(sub_231E106A0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231DF0654(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_231DF5910(v7);
  *a1 = v3;
  return result;
}

void *sub_231DF5644(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_231DF5754(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_231DF5850(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_231DF5754(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_231DF5850(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_12(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_58();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_58();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_231DF5910(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_231E120B0();
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
        sub_231E106A0();
        v6 = sub_231E118B0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_231E106A0() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_231DF5DD8(v8, v9, a1, v4);
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
    return sub_231DF5A40(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231DF5A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_231E0F950();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v41 - v11;
  v12 = sub_231E106A0();
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        v54(v56, v26, v12);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        sub_231E105C0();
        v32 = v59;
        sub_231E105C0();
        v62 = sub_231E0F8E0();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        result = v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return result;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        result = v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_231DF5DD8(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v157 = sub_231E0F950();
  v8 = *(v157 - 8);
  v9 = MEMORY[0x28223BE20](v157);
  v156 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v155 = &v130 - v11;
  v12 = sub_231E106A0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v136 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v147 = &v130 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v154 = &v130 - v19;
  result = MEMORY[0x28223BE20](v18);
  v158 = &v130 - v21;
  v142 = a3;
  v22 = a3[1];
  v137 = v13;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_101:
    v159 = *v133;
    if (!v159)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v123 = (v24 + 16);
      v124 = *(v24 + 16);
      while (v124 >= 2)
      {
        if (!*v142)
        {
          goto LABEL_139;
        }

        v125 = v24;
        v126 = (v24 + 16 * v124);
        v127 = *v126;
        v128 = &v123[2 * v124];
        v24 = v128[1];
        sub_231DF69CC(&(*v142)[*(v137 + 9) * *v126], &(*v142)[*(v137 + 9) * *v128], &(*v142)[*(v137 + 9) * v24], v159);
        if (v5)
        {
          break;
        }

        if (v24 < v127)
        {
          goto LABEL_127;
        }

        if (v124 - 2 >= *v123)
        {
          goto LABEL_128;
        }

        *v126 = v127;
        v126[1] = v24;
        v129 = *v123 - v124;
        if (*v123 < v124)
        {
          goto LABEL_129;
        }

        v124 = *v123 - 1;
        result = memmove(v128, v128 + 2, 16 * v129);
        *v123 = v124;
        v24 = v125;
      }
    }

LABEL_136:
    result = sub_231CF1D4C(v24);
    v24 = result;
    goto LABEL_103;
  }

  v131 = a4;
  v23 = 0;
  v151 = (v8 + 8);
  v152 = v13 + 16;
  v149 = (v13 + 32);
  v150 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v153 = v12;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v132 = v24;
      v27 = v23;
      v134 = v23;
      v143 = v5;
      v144 = v23 + 1;
      v28 = *v142;
      v159 = v28;
      v29 = v13;
      v30 = *(v13 + 9);
      v145 = v22;
      v146 = v30;
      v31 = v28 + v30 * v26;
      v32 = v12;
      v33 = *(v29 + 2);
      v33(v158, v31, v12);
      v34 = v154;
      v140 = v33;
      v33(v154, v28 + v30 * v27, v32);
      v5 = v155;
      v24 = v158;
      sub_231E105C0();
      v35 = v156;
      sub_231E105C0();
      LODWORD(v141) = sub_231E0F8E0();
      v36 = *v151;
      v37 = v157;
      (*v151)(v35, v157);
      v139 = v36;
      (v36)(v5, v37);
      v38 = *(v137 + 1);
      (v38)(v34, v32);
      v138 = v38;
      result = (v38)(v24, v32);
      v39 = v145;
      v40 = v134 + 2;
      v41 = v159 + v146 * (v134 + 2);
      while (1)
      {
        v42 = v40;
        if (++v144 >= v39)
        {
          break;
        }

        v5 = v158;
        v43 = v153;
        v44 = v140;
        v159 = v40;
        (v140)(v158, v41, v153);
        v24 = v154;
        v44(v154, v31, v43);
        v45 = v155;
        sub_231E105C0();
        v46 = v156;
        sub_231E105C0();
        LOBYTE(v148) = sub_231E0F8E0() & 1;
        LODWORD(v148) = v148;
        v47 = v46;
        v48 = v157;
        v49 = v139;
        (v139)(v47, v157);
        v49(v45, v48);
        v50 = v138;
        (v138)(v24, v43);
        result = (v50)(v5, v43);
        v42 = v159;
        v39 = v145;
        v41 += v146;
        v31 += v146;
        v40 = v159 + 1;
        if ((v141 & 1) != v148)
        {
          goto LABEL_9;
        }
      }

      v144 = v39;
LABEL_9:
      if (v141)
      {
        v26 = v144;
        v25 = v134;
        v12 = v153;
        if (v144 < v134)
        {
          goto LABEL_133;
        }

        if (v134 >= v144)
        {
          v5 = v143;
          v13 = v137;
          v24 = v132;
          goto LABEL_32;
        }

        if (v39 >= v42)
        {
          v51 = v42;
        }

        else
        {
          v51 = v39;
        }

        v52 = v146 * (v51 - 1);
        v53 = v146 * v51;
        v54 = v134;
        v55 = v134 * v146;
        v5 = v143;
        v13 = v137;
        do
        {
          if (v54 != --v26)
          {
            v56 = v5;
            v57 = *v142;
            if (!*v142)
            {
              goto LABEL_140;
            }

            v159 = *v149;
            (v159)(v136, &v57[v55], v12);
            v58 = v55 < v52 || &v57[v55] >= &v57[v53];
            if (v58)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v55 != v52)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v159)(&v57[v52], v136, v12);
            v5 = v56;
            v13 = v137;
          }

          ++v54;
          v52 -= v146;
          v53 -= v146;
          v55 += v146;
        }

        while (v54 < v26);
        v24 = v132;
      }

      else
      {
        v5 = v143;
        v13 = v137;
        v24 = v132;
        v12 = v153;
      }

      v26 = v144;
      v25 = v134;
    }

LABEL_32:
    v59 = v142[1];
    if (v26 < v59)
    {
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_132;
      }

      if (v26 - v25 < v131)
      {
        break;
      }
    }

LABEL_48:
    if (v26 < v25)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_231CF0DE4(0, *(v24 + 16) + 1, 1, v24);
      v24 = result;
    }

    v80 = *(v24 + 16);
    v79 = *(v24 + 24);
    v81 = v80 + 1;
    if (v80 >= v79 >> 1)
    {
      result = sub_231CF0DE4((v79 > 1), v80 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 16) = v81;
    v82 = (v24 + 32);
    v83 = (v24 + 32 + 16 * v80);
    *v83 = v25;
    v83[1] = v26;
    v159 = *v133;
    if (!v159)
    {
      goto LABEL_141;
    }

    v144 = v26;
    if (v80)
    {
      v148 = (v24 + 32);
      while (1)
      {
        v84 = v81 - 1;
        v85 = &v82[16 * v81 - 16];
        v86 = (v24 + 16 * v81);
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v24 + 32);
          v88 = *(v24 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_69:
          if (v90)
          {
            goto LABEL_118;
          }

          v102 = *v86;
          v101 = v86[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_121;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_126;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v81 < 2)
        {
          goto LABEL_120;
        }

        v109 = *v86;
        v108 = v86[1];
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_84:
        if (v105)
        {
          goto LABEL_123;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_125;
        }

        if (v112 < v104)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v84 - 1 >= v81)
        {
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
          goto LABEL_135;
        }

        if (!*v142)
        {
          goto LABEL_138;
        }

        v116 = &v82[16 * v84 - 16];
        v117 = *v116;
        v118 = v84;
        v119 = &v82[16 * v84];
        v120 = *(v119 + 1);
        sub_231DF69CC(&(*v142)[*(v13 + 9) * *v116], &(*v142)[*(v13 + 9) * *v119], &(*v142)[*(v13 + 9) * v120], v159);
        if (v5)
        {
        }

        if (v120 < v117)
        {
          goto LABEL_113;
        }

        v143 = 0;
        v5 = v13;
        v121 = v24;
        v24 = *(v24 + 16);
        if (v118 > v24)
        {
          goto LABEL_114;
        }

        *v116 = v117;
        *(v116 + 1) = v120;
        if (v118 >= v24)
        {
          goto LABEL_115;
        }

        v81 = v24 - 1;
        result = memmove(v119, v119 + 16, 16 * (v24 - 1 - v118));
        *(v121 + 16) = v24 - 1;
        v122 = v24 > 2;
        v24 = v121;
        v13 = v5;
        v5 = v143;
        v82 = v148;
        if (!v122)
        {
          goto LABEL_98;
        }
      }

      v91 = &v82[16 * v81];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_116;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_117;
      }

      v98 = v86[1];
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_119;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_122;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_130;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v142[1];
    v23 = v144;
    if (v144 >= v22)
    {
      goto LABEL_101;
    }
  }

  v60 = (v25 + v131);
  if (__OFADD__(v25, v131))
  {
    goto LABEL_134;
  }

  if (v60 >= v59)
  {
    v60 = v142[1];
  }

  if (v60 < v25)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v26 == v60)
  {
    goto LABEL_48;
  }

  v132 = v24;
  v143 = v5;
  v61 = *v142;
  v62 = *(v13 + 9);
  v148 = *(v13 + 2);
  v63 = &v61[v62 * (v26 - 1)];
  v145 = -v62;
  v134 = v25;
  v64 = (v25 - v26);
  v146 = v61;
  v135 = v62;
  v65 = &v61[v26 * v62];
  v138 = v60;
LABEL_41:
  v144 = v26;
  v139 = v65;
  v140 = v64;
  v141 = v63;
  v66 = v63;
  while (1)
  {
    v67 = v158;
    v68 = v148;
    (v148)(v158, v65, v12);
    v69 = v154;
    (v68)(v154, v66, v12);
    v70 = v155;
    sub_231E105C0();
    v71 = v156;
    sub_231E105C0();
    LODWORD(v159) = sub_231E0F8E0();
    v72 = *v151;
    v73 = v71;
    v74 = v157;
    (*v151)(v73, v157);
    v75 = v70;
    v12 = v153;
    v72(v75, v74);
    v76 = *v150;
    (*v150)(v69, v12);
    result = v76(v67, v12);
    if ((v159 & 1) == 0)
    {
LABEL_46:
      v26 = v144 + 1;
      v63 = &v141[v135];
      v64 = v140 - 1;
      v65 = &v139[v135];
      if ((v144 + 1) == v138)
      {
        v26 = v138;
        v5 = v143;
        v13 = v137;
        v24 = v132;
        v25 = v134;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v146)
    {
      break;
    }

    v77 = *v149;
    v78 = v147;
    (*v149)(v147, v65, v12);
    swift_arrayInitWithTakeFrontToBack();
    v77(v66, v78, v12);
    v66 += v145;
    v65 += v145;
    v58 = __CFADD__(v64++, 1);
    if (v58)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_231DF69CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v84 = a4;
  v79 = sub_231E0F950();
  v7 = *(v79 - 8);
  v8 = MEMORY[0x28223BE20](v79);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v67 - v10;
  v83 = sub_231E106A0();
  v11 = MEMORY[0x28223BE20](v83);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v81 = &v67 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v21 = (a2 - a1) / v17;
  v87 = a1;
  v86 = v84;
  v74 = (v7 + 8);
  v75 = (v14 + 16);
  v73 = (v14 + 8);
  v22 = v19 / v17;
  if (v21 >= v19 / v17)
  {
    v42 = v84;
    sub_231DF5850(a2, v19 / v17, v84, MEMORY[0x277D42368]);
    v43 = v42 + v22 * v17;
    v44 = -v17;
    v45 = v43;
    v82 = a1;
    v69 = v44;
LABEL_36:
    v46 = a2 + v44;
    v47 = a3;
    v67 = v45;
    v48 = v45;
    v70 = a2 + v44;
    v71 = a2;
    while (1)
    {
      if (v43 <= v84)
      {
        v87 = a2;
        v85 = v48;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v68 = v48;
      v80 = v47 + v44;
      v49 = v43 + v44;
      v50 = v43;
      v51 = *v75;
      v52 = v46;
      v53 = v83;
      v54 = v47;
      (*v75)(v81, v43 + v44, v83);
      v55 = v76;
      v51(v76, v52, v53);
      v56 = v77;
      sub_231E105C0();
      v57 = v78;
      sub_231E105C0();
      LODWORD(v72) = sub_231E0F8E0();
      v58 = *v74;
      v59 = v57;
      v60 = v79;
      (*v74)(v59, v79);
      v58(v56, v60);
      v61 = *v73;
      (*v73)(v55, v53);
      v61(v81, v53);
      if (v72)
      {
        v43 = v50;
        a3 = v80;
        if (v54 < v71 || v80 >= v71)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v68;
          v44 = v69;
          a1 = v82;
        }

        else
        {
          v65 = v68;
          v44 = v69;
          v45 = v68;
          v18 = v54 == v71;
          v66 = v70;
          a2 = v70;
          a1 = v82;
          if (!v18)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v66;
            v45 = v65;
          }
        }

        goto LABEL_36;
      }

      v62 = v80;
      if (v54 < v50 || v80 >= v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v47 = v62;
        v43 = v49;
        v48 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
      }

      else
      {
        v48 = v49;
        v18 = v50 == v54;
        v47 = v80;
        v43 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v47 = v62;
          v43 = v49;
          v48 = v49;
        }
      }
    }

    v87 = a2;
    v85 = v67;
  }

  else
  {
    v23 = v84;
    sub_231DF5850(a1, (a2 - a1) / v17, v84, MEMORY[0x277D42368]);
    v71 = v17;
    v72 = v23 + v21 * v17;
    v85 = v72;
    v80 = a3;
    while (v84 < v72 && a2 < a3)
    {
      v82 = a1;
      v25 = *v75;
      v26 = v81;
      v27 = v83;
      (*v75)(v81, a2, v83);
      v28 = v76;
      v25(v76, v84, v27);
      v29 = v77;
      sub_231E105C0();
      v30 = v78;
      sub_231E105C0();
      v31 = sub_231E0F8E0();
      v32 = a2;
      v33 = *v74;
      v34 = v30;
      v35 = v79;
      (*v74)(v34, v79);
      v33(v29, v35);
      v36 = *v73;
      (*v73)(v28, v27);
      v36(v26, v27);
      if (v31)
      {
        v37 = v71;
        a2 = v32 + v71;
        v38 = v82;
        if (v82 < v32 || v82 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
        }

        else
        {
          a3 = v80;
          if (v82 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v37 = v71;
        v40 = v84 + v71;
        v38 = v82;
        if (v82 < v84 || v82 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
          a2 = v32;
        }

        else
        {
          a3 = v80;
          a2 = v32;
          if (v82 != v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v86 = v40;
        v84 = v40;
      }

      a1 = v38 + v37;
      v87 = a1;
    }
  }

LABEL_58:
  sub_231DF7060(&v87, &v86, &v85);
  return 1;
}

uint64_t sub_231DF7060(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_231E106A0();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_231DF7140(int64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v11;
  if (!result || a1 > *(v11 + 24) >> 1)
  {
    if (*(v11 + 16) <= a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = *(v11 + 16);
    }

    result = sub_231DF5644(result, v13, a2 & 1, v11, a3, a4, a5, a5);
    *v5 = result;
  }

  return result;
}

uint64_t sub_231DF71D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v14[0] = *(v2 + 16);
  v14[1] = v5;
  v14[4] = sub_231E10690();
  v14[5] = v6;
  sub_231CE11D8();
  v7 = sub_231E11C60();

  sub_231E106A0();
  OUTLINED_FUNCTION_12();
  result = (*(v8 + 16))(a2, a1);
  if (v7)
  {
    v10 = sub_231E10640();
    v12 = v11;
    v13 = sub_231E10630();
    MEMORY[0x23837CC20](v10, v12);

    return v13(v14, 0);
  }

  return result;
}

BOOL sub_231DF7334(uint64_t a1, uint64_t a2)
{
  sub_231E11F20();
  OUTLINED_FUNCTION_10_1();
  return v2 != 0;
}

uint64_t sub_231DF7394()
{
  sub_231E12220();
  sub_231E116E0();
  return sub_231E12250();
}

uint64_t sub_231DF7410(uint64_t a1)
{
  sub_231E12220();
  sub_231E116E0();
  return sub_231E12250();
}

BOOL sub_231DF7464@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231DF7334(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_231DF7498@<X0>(void *a1@<X8>)
{
  result = sub_231DF7374();
  *a1 = 0xD00000000000001ELL;
  a1[1] = v3;
  return result;
}

uint64_t sub_231DF74E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ConversationDeletionInfo(0) + 20);
  sub_231E0F950();
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 32);

  return v8(&a4[v6], a3);
}

uint64_t sub_231DF7564()
{
  OUTLINED_FUNCTION_399();
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x80uLL);
  return v1;
}

uint64_t sub_231DF75A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF75C0()
{
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36_13(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_33(v1);

  return sub_231DF7654();
}

uint64_t sub_231DF7654()
{
  OUTLINED_FUNCTION_18();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = sub_231E10E30();
  v0[8] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[9] = v8;
  v0[10] = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231DF7700()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[2];
  v1 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v4 = OUTLINED_FUNCTION_123(v3);
  v0[11] = v4;
  OUTLINED_FUNCTION_88_9(v4, xmmword_231E138E0);
  v5 = sub_231E11620();
  v7 = OUTLINED_FUNCTION_49_11(v5, v6);
  v0[12] = v7;
  OUTLINED_FUNCTION_47_9(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  *(v17 + 32) = v2;
  *(v17 + 40) = v1;

  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_20_18(v18);
  OUTLINED_FUNCTION_117_7();

  return sub_231D5F05C(v19, v20, v21, v22, v23, v24);
}

uint64_t sub_231DF77F8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 112) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231DF7914()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    if (sub_231CBA138(*(v0 + 112)))
    {
      if ((*(v0 + 112) & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x23837D2A0](0, v1);
      }

      else
      {
        OUTLINED_FUNCTION_83_7();
        if (!v2)
        {
          __break(1u);
          return;
        }

        v3 = *(v1 + 32);
      }

      v4 = v3;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_231E11860();

        goto LABEL_10;
      }
    }
  }

LABEL_10:

  OUTLINED_FUNCTION_18_6();

  v5(0);
}

uint64_t sub_231DF7BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF7C08()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
  }

  else
  {
    v4 = v0[8];
    v1 = v4[7];
    v3 = v4[8];
    v2 = v4[9];
  }

  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v2;
  v3;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_6_25(v5);
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_97_3();

  return sub_231DF7654();
}

uint64_t sub_231DF7CDC()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 88);
  v5 = *(v3 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  OUTLINED_FUNCTION_18_6();

  return v8(v2);
}

uint64_t sub_231DF7E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF7E38()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
  }

  else
  {
    v4 = v0[8];
    v1 = v4[11];
    v3 = v4[12];
    v2 = v4[13];
  }

  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v2;
  v3;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_6_25(v5);
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_97_3();

  return sub_231DF7654();
}

uint64_t sub_231DF7F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF7F2C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
  }

  else
  {
    v4 = v0[8];
    v1 = v4[15];
    v3 = v4[16];
    v2 = v4[17];
  }

  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v2;
  v3;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_6_25(v5);
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_97_3();

  return sub_231DF7654();
}

uint64_t sub_231DF8000(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF8018()
{
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return sub_231DF80AC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_231DF80AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF80C8()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[2];
  v1 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v4 = OUTLINED_FUNCTION_123(v3);
  v5 = OUTLINED_FUNCTION_97_6(v4);
  OUTLINED_FUNCTION_88_9(v5, xmmword_231E138E0);
  v6 = sub_231E11620();
  v8 = OUTLINED_FUNCTION_49_11(v6, v7);
  v0[9] = v8;
  OUTLINED_FUNCTION_47_9(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
  *(v18 + 32) = v2;
  *(v18 + 40) = v1;

  v19 = swift_task_alloc();
  v0[10] = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_20_18(v19);
  OUTLINED_FUNCTION_117_7();

  return sub_231D5F05C(v20, v21, v22, v23, v24, v25);
}

uint64_t sub_231DF81BC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 88) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231DF82D8()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 88);
  if (v2)
  {
    if (sub_231CBA138(*(v1 + 88)))
    {
      if ((*(v1 + 88) & 0xC000000000000001) != 0)
      {
        MEMORY[0x23837D2A0](0, v2);
      }

      else
      {
        OUTLINED_FUNCTION_83_7();
        if (!v3)
        {
          __break(1u);
          return;
        }

        v4 = *(v2 + 32);
      }

      OUTLINED_FUNCTION_399();

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_231E11860();
      }
    }

    else
    {
    }

    LOBYTE(v2) = 0;
  }

  OUTLINED_FUNCTION_18_6();

  v5(v2 & 1);
}

uint64_t sub_231DF843C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF8454()
{
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return sub_231DF80AC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_231DF84E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF8500()
{
  OUTLINED_FUNCTION_47_0();
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v9 = swift_allocObject();
  v0[16] = v9;
  *(v9 + 16) = xmmword_231E1C950;
  *(v9 + 32) = sub_231E11620();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_231E11620();
  *(v9 + 56) = v11;
  v12 = OUTLINED_FUNCTION_123(v8);
  v0[17] = v12;
  *(v12 + 16) = xmmword_231E138E0;
  *(v12 + 32) = v3;
  *(v12 + 40) = v2;

  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_32(v13);

  return sub_231D5F05C(v9, v12, v5, v4, v6, v7);
}

uint64_t sub_231DF8654()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 152) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231DF8770()
{
  OUTLINED_FUNCTION_47_0();
  v2 = *(v1 + 152);
  if (v2)
  {
    if (sub_231CBA138(*(v1 + 152)))
    {
      if ((*(v1 + 152) & 0xC000000000000001) != 0)
      {
        MEMORY[0x23837D2A0](0, v2);
      }

      else
      {
        OUTLINED_FUNCTION_83_7();
        if (!v3)
        {
          __break(1u);
          return;
        }

        v4 = *(v2 + 32);
      }

      OUTLINED_FUNCTION_399();

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_231E11860();
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_18_6();

  v5();
}

double sub_231DF89F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_231CB51C4(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_231DF8A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  v6 = v5;
  if (v4)
  {
    sub_231E0822C(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_231DF8ABC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

double sub_231DF8B68@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_231CB51C4(a1 + 32 * v2, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_231DF8B88()
{
  OUTLINED_FUNCTION_18();
  v0[15] = v1;
  v0[16] = v2;
  v0[13] = v3;
  v0[14] = v4;
  v0[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  OUTLINED_FUNCTION_47(v6);
  v0[17] = OUTLINED_FUNCTION_55();
  v7 = sub_231E0F950();
  v0[18] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[19] = v8;
  v0[20] = OUTLINED_FUNCTION_55();
  v9 = type metadata accessor for ConversationDeletionInfo(0);
  v0[21] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[22] = v10;
  v0[23] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231DF8CAC()
{
  OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v1 = swift_allocObject();
  v0[24] = v1;
  *(v1 + 16) = xmmword_231E1C950;
  *(v1 + 32) = sub_231E11620();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_231E11620();
  *(v1 + 56) = v3;
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_231DF8DA4;
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];

  return sub_231D5F05C(v1, v9, v7, v8, v5, v6);
}

uint64_t sub_231DF8DA4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 208) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231DF8EA4()
{
  v39 = MEMORY[0x277D84F90];
  if (v0[26])
  {
    v1 = v0[26];
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = sub_231CBA138(v1);
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = OUTLINED_FUNCTION_59();
      v5 = MEMORY[0x23837D2A0](v7);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_98_3();
      v5 = v4;
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_231E11860();
    }
  }

  v8 = *(v39 + 16);
  if (v8)
  {
    v41 = v0[23];
    v40 = v0[21];
    v9 = (v39 + 32);
    v42 = (v0[19] + 32);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = *v9;
      v12 = *(*v9 + 16);
      if (v12)
      {
        sub_231CB51C4(v11 + 32, (v0 + 2));

        if (swift_dynamicCast())
        {
          if (v12 > *(v11 + 16))
          {
            goto LABEL_37;
          }

          v14 = v0[10];
          v13 = v0[11];
          sub_231CB51C4(v11 + 32 * v12, (v0 + 6));

          swift_dynamicCast();
          OUTLINED_FUNCTION_32_12();
          __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
          OUTLINED_FUNCTION_73_6();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, v20, v21);
          v24 = v0[17];
          v23 = v0[18];
          if (EnumTagSinglePayload == 1)
          {
            sub_231E0F890();
            OUTLINED_FUNCTION_8_17(v24, 1, v23);
            if (!v25)
            {
              sub_231CC154C(v0[17], &dword_27DD74AD0, &qword_231E16C40);
            }
          }

          else
          {
            (*v42)(v0[20], v0[17], v0[18]);
          }

          v26 = v0[23];
          v27 = v0[20];
          v28 = v0[18];
          *v26 = v14;
          *(v41 + 8) = v13;
          (*v42)(&v26[*(v40 + 20)], v27, v28);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = OUTLINED_FUNCTION_0_1();
            v10 = sub_231E01E40(v34, v35, v36, v10);
          }

          v30 = v10[2];
          v29 = v10[3];
          if (v30 >= v29 >> 1)
          {
            v37 = OUTLINED_FUNCTION_2_12(v29);
            v10 = sub_231E01E40(v37, v30 + 1, 1, v10);
          }

          v10[2] = v30 + 1;
          OUTLINED_FUNCTION_79();
          sub_231E07790(v33, v10 + v31 + *(v32 + 72) * v30, type metadata accessor for ConversationDeletionInfo);
        }

        else
        {
        }
      }

      ++v9;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_18_6();

  v38(v10);
}

void sub_231DF92AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35_1();
  a19 = v21;
  a20 = v22;
  v57 = v23;
  v25 = v24;
  v27 = v26;
  v65 = v28;
  v30 = v29;
  v61 = v31;
  v62 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_47(v33);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v34);
  v36 = &v57 - v35;
  v37 = v25(0);
  OUTLINED_FUNCTION_24();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_139();
  v64 = v41;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_25_5();
  v58 = v43;
  v44 = sub_231CBA138(v27);
  v45 = 0;
  v67 = v27 & 0xC000000000000001;
  v68 = v44;
  v66 = v27 & 0xFFFFFFFFFFFFFF8;
  v59 = v39;
  v63 = (v39 + 32);
  v46 = MEMORY[0x277D84F90];
  v60 = v27;
  while (1)
  {
    if (v68 == v45)
    {
      goto LABEL_18;
    }

    if (v67)
    {
      v47 = MEMORY[0x23837D2A0](v45, v27);
    }

    else
    {
      if (v45 >= *(v66 + 16))
      {
        goto LABEL_20;
      }

      v47 = *(v27 + 8 * v45 + 32);
    }

    v48 = v47;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    a10 = v47;
    v30(&a10);
    if (v20)
    {

LABEL_18:
      OUTLINED_FUNCTION_33_0();
      return;
    }

    if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
    {
      sub_231CC154C(v36, v61, v62);
    }

    else
    {
      v49 = v30;
      v50 = *v63;
      v51 = v58;
      v52 = OUTLINED_FUNCTION_86_8();
      v50(v52);
      (v50)(v64, v51, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = OUTLINED_FUNCTION_0_1();
        v46 = (v57)(v56);
      }

      v53 = *(v46 + 16);
      if (v53 >= *(v46 + 24) >> 1)
      {
        OUTLINED_FUNCTION_32_12();
        v46 = v57();
      }

      *(v46 + 16) = v53 + 1;
      OUTLINED_FUNCTION_79();
      (v50)(v46 + v54 + *(v55 + 72) * v53, v64, v37);
      v27 = v60;
      v30 = v49;
    }

    ++v45;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_231DF9584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DF959C()
{
  OUTLINED_FUNCTION_57_0();
  v3 = *(v1 + 40);
  v18 = *(v1 + 48);
  OUTLINED_FUNCTION_97_6([objc_allocWithZone(MEMORY[0x277CC34A0]) init]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231E1C950;
  *(v5 + 32) = sub_231E11620();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_231E11620();
  *(v5 + 56) = v7;
  sub_231E11850();
  OUTLINED_FUNCTION_141();

  OUTLINED_FUNCTION_110_7(v8, sel_setFetchAttributes_);

  v9 = OUTLINED_FUNCTION_123(v4);
  *(v9 + 16) = xmmword_231E138E0;
  *(v9 + 32) = sub_231DE8A04(0);
  *(v9 + 40) = v10;
  v11 = OUTLINED_FUNCTION_59_0();
  sub_231E076B0(v11, v12);
  OUTLINED_FUNCTION_113_4(30, 0x8000000231E38B90);
  OUTLINED_FUNCTION_27();
  v13 = swift_allocObject();
  *(v1 + 72) = v13;
  *(v13 + 16) = MEMORY[0x277D84F90];
  v14 = swift_task_alloc();
  *(v1 + 80) = v14;
  *(v14 + 16) = v3;
  *(v14 + 24) = v18;
  *(v14 + 40) = v0;
  *(v14 + 48) = v13;
  v15 = swift_task_alloc();
  *(v1 + 88) = v15;
  *v15 = v1;
  v15[1] = sub_231DF97AC;
  OUTLINED_FUNCTION_13_20();

  return MEMORY[0x2822008A0](v16);
}

uint64_t sub_231DF97AC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231DF98AC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_93_6();
  swift_beginAccess();
  v2 = *(v1 + 16);

  OUTLINED_FUNCTION_18_6();

  return v3(v2);
}

uint64_t sub_231DF9930()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v1();
}

void sub_231DF99A0()
{
  OUTLINED_FUNCTION_40_6();
  v25 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  OUTLINED_FUNCTION_24();
  v10 = v9;
  OUTLINED_FUNCTION_38_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_14();
  sub_231E11D70();
  v12 = sub_231E11620();
  MEMORY[0x23837CC20](v12);

  MEMORY[0x23837CC20](0x22203D3D20, 0xE500000000000000);
  MEMORY[0x23837CC20](v7, v5);
  OUTLINED_FUNCTION_106_7();
  v13 = sub_231E11620();
  MEMORY[0x23837CC20](v13);

  MEMORY[0x23837CC20](540884512, 0xE400000000000000);
  sub_231E0F870();
  sub_231E11A40();
  v14 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v15 = v3;
  v16 = sub_231E01CD0(v26, v27, v3);
  v30 = sub_231E08440;
  v31 = v25;
  OUTLINED_FUNCTION_3_36();
  v27 = 1107296256;
  v28 = sub_231DF9C78;
  v29 = &block_descriptor_109;
  v17 = _Block_copy(&v26);

  OUTLINED_FUNCTION_111_6(v18, sel_setFoundItemsHandler_);
  _Block_release(v17);
  v19 = OUTLINED_FUNCTION_63_11();
  v20(v19);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  (*(v10 + 32))(v22 + v21, v0, v8);
  v30 = sub_231E08748;
  v31 = v22;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_231DF9CEC;
  v29 = &block_descriptor_115;
  _Block_copy(&v26);
  OUTLINED_FUNCTION_109_7();
  v23 = OUTLINED_FUNCTION_82();
  [v23 v24];
  _Block_release(v8);
  [v16 start];

  OUTLINED_FUNCTION_39_5();
}

uint64_t sub_231DF9C78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_231E08180();
  v3 = sub_231E11870();

  v2(v3);
}

void sub_231DF9CEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_231DF9D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_50_0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = type metadata accessor for SummarizerResult(0);
  OUTLINED_FUNCTION_6(v23);
  v12[2] = v24;
  v12[3] = OUTLINED_FUNCTION_55();
  v25 = swift_task_alloc();
  v12[4] = v25;
  *v25 = v12;
  OUTLINED_FUNCTION_32(v25);

  return sub_231DFA158(v22, v20, v18, v16, v14);
}

uint64_t sub_231DF9E5C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 40) = v6;
  *(v3 + 48) = v0;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_231DF9F94()
{
  v1 = sub_231CBA138(*(v0 + 40));
  if (v1)
  {
    v2 = v1;
    v18 = MEMORY[0x277D84F90];
    sub_231E02F10(0, v1 & ~(v1 >> 63), 0);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = 0;
      v4 = *(v0 + 40);
      v5 = *(v0 + 16);
      v6 = v18;
      v7 = v4 & 0xC000000000000001;
      v17 = v4 & 0xFFFFFFFFFFFFFF8;
      v8 = v4 + 32;
      while (1)
      {
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v7)
        {
          v10 = MEMORY[0x23837D2A0](v3, *(v0 + 40));
        }

        else
        {
          if (v3 >= *(v17 + 16))
          {
            goto LABEL_18;
          }

          v10 = *(v8 + 8 * v3);
        }

        v11 = v10;
        sub_231DFA4CC();

        v13 = *(v18 + 16);
        v12 = *(v18 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_231E02F10(v12 > 1, v13 + 1, 1);
        }

        *(v18 + 16) = v13 + 1;
        OUTLINED_FUNCTION_79();
        sub_231E07790(v15, v18 + v14 + *(v5 + 72) * v13, type metadata accessor for SummarizerResult);
        ++v3;
        if (v9 == v2)
        {

          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_14:

    OUTLINED_FUNCTION_18_6();

    v16(v6);
  }
}

uint64_t sub_231DFA158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFA174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v14 = swift_allocObject();
  *(OUTLINED_FUNCTION_97_6(v14) + 16) = xmmword_231E20400;
  v12[4] = sub_231E11620();
  v12[5] = v15;
  v12[6] = sub_231E11620();
  v12[7] = v16;
  v12[8] = sub_231E11620();
  v12[9] = v17;
  v12[10] = sub_231E11620();
  v12[11] = v18;
  v12[12] = sub_231E11620();
  v12[13] = v19;
  v12[14] = sub_231E11620();
  v12[15] = v20;
  v12[16] = sub_231E11620();
  v12[17] = v21;
  v12[18] = sub_231E11620();
  v12[19] = v22;
  v12[20] = sub_231E11620();
  v12[21] = v23;
  v12[22] = sub_231E11620();
  v12[23] = v24;
  v25 = swift_task_alloc();
  *(v13 + 72) = v25;
  *v25 = v13;
  v25[1] = sub_231DFA308;

  return sub_231DFA704();
}

uint64_t sub_231DFA308()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231DFA410()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_18_6();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_231DFA470()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v0();
}

void sub_231DFA4CC()
{
  OUTLINED_FUNCTION_118();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  v5 = OUTLINED_FUNCTION_47(v4);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  v14 = *v1;
  v15 = [v14 attributeSet];
  v16 = [v15 summarizationContentTopic];

  if (v16)
  {
    sub_231E0F610();
    v17 = sub_231E0F5F0();
    v18 = 0;
  }

  else
  {
    v17 = sub_231E0F5F0();
    v18 = 1;
  }

  v19 = 1;
  __swift_storeEnumTagSinglePayload(v13, v18, 1, v17);
  v20 = [v14 attributeSet];
  v21 = [v20 summarizationContentTopLine];

  if (v21)
  {
    sub_231E0F610();
    v19 = 0;
  }

  sub_231E0F5F0();
  v22 = 1;
  OUTLINED_FUNCTION_107_9(v11, v19);
  v23 = [v14 attributeSet];
  v24 = [v23 summarizationContentSynopsis];

  if (v24)
  {
    sub_231E0F610();
    v22 = 0;
  }

  OUTLINED_FUNCTION_107_9(v8, v22);
  v25[0] = xmmword_231E13680;
  memset(&v25[1], 0, 80);
  sub_231D48A80(v13, v11, v8, 2, v25, 0, v3);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DFA704()
{
  OUTLINED_FUNCTION_18();
  v0[40] = v1;
  v0[41] = v2;
  v0[38] = v3;
  v0[39] = v4;
  v0[36] = v5;
  v0[37] = v6;
  v7 = sub_231E10E30();
  v0[42] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[43] = v8;
  v0[44] = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231DFA7B0()
{
  v37 = v0;
  v1 = v0[41];
  v2 = v0[40];
  sub_231CB4EEC();
  v3 = OUTLINED_FUNCTION_82();
  v4(v3);

  v5 = v2;
  v6 = v1;
  v7 = sub_231E10E10();
  v8 = sub_231E11AC0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[41];
    v34 = v0[42];
    v35 = v0[44];
    v11 = v0[39];
    v10 = v0[40];
    v32 = v0[38];
    v33 = v0[43];
    v12 = v0[36];
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = MEMORY[0x23837CD80](v12, MEMORY[0x277D837D0]);
    v16 = sub_231CB5000(v14, v15, &v36);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v0[28] = v32;
    v0[29] = v11;
    v0[30] = v10;
    v0[31] = v9;

    v17 = v10;
    v18 = v9;
    v19 = sub_231E11680();
    v21 = sub_231CB5000(v19, v20, &v36);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_231CAE000, v7, v8, "SpotlightReader: Searching spotlight for identifiers: %s index: %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v33 + 8))(v35, v34);
  }

  else
  {

    v22 = OUTLINED_FUNCTION_25();
    v23(v22);
  }

  v24 = swift_task_alloc();
  v0[45] = v24;
  *v24 = v0;
  v24[1] = sub_231DFAA4C;
  v25 = v0[40];
  v26 = v0[41];
  v27 = v0[38];
  v28 = v0[39];
  v29 = v0[36];
  v30 = v0[37];

  return sub_231D5F05C(v30, v29, v27, v28, v25, v26);
}

uint64_t sub_231DFAA4C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231DFAB34()
{
  if (!*(v0 + 368))
  {
    goto LABEL_43;
  }

  sub_231DFF9AC(*(v0 + 368));
  v2 = v1;

  if (!v2)
  {
    goto LABEL_43;
  }

  v51 = *(v2 + 16);
  if (!v51)
  {

LABEL_43:
    v43 = sub_231E077EC();
    v44 = OUTLINED_FUNCTION_7_5(&type metadata for SpotlightReaderError, v43);
    OUTLINED_FUNCTION_76_7(v44, v45);

    OUTLINED_FUNCTION_19();

    return v46();
  }

  v3 = 0;
  v49 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v55 = *(v0 + 296);
  v50 = v2;
  while (1)
  {
    v4 = v3;
LABEL_6:
    if (v4 == v51)
    {

      OUTLINED_FUNCTION_18_6();

      return v48(v49);
    }

    if (v4 >= *(v2 + 16))
    {
      break;
    }

    v52 = v4 + 1;

    v6 = 0;
    v7 = *(v5 + 16);
    v53 = v5 + 32;
    v54 = v5;
    v8 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v6 == v7)
      {
        v9 = 0;
        v10 = 0uLL;
        v6 = v7;
        v11 = 0uLL;
      }

      else
      {
        if (v6 >= *(v54 + 16))
        {
          goto LABEL_52;
        }

        *(v0 + 56) = v6;
        sub_231CB51C4(v53 + 32 * v6, v0 + 64);
        v10 = *(v0 + 56);
        v11 = *(v0 + 72);
        ++v6;
        v9 = *(v0 + 88);
      }

      *(v0 + 16) = v10;
      *(v0 + 32) = v11;
      *(v0 + 48) = v9;
      if (!v9)
      {
        break;
      }

      v56 = v10;
      sub_231CE1044((v0 + 24), (v0 + 160));
      if ((v56 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v56 >= *(v55 + 16))
      {
        goto LABEL_50;
      }

      v12 = (v55 + 32 + 16 * v56);
      v14 = *v12;
      v13 = v12[1];
      sub_231CB51C4(v0 + 160, v0 + 192);

      swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_231CE0CA4(v14, v13);
      if (__OFADD__(v8[2], (v16 & 1) == 0))
      {
        goto LABEL_51;
      }

      v17 = v15;
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74468, &qword_231E15D78);
      if (sub_231E11EA0())
      {
        v19 = sub_231CE0CA4(v14, v13);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_55;
        }

        v17 = v19;
      }

      if (v18)
      {

        v21 = (v8[7] + 32 * v17);
        __swift_destroy_boxed_opaque_existential_0(v21);
        sub_231CE1044((v0 + 192), v21);
        __swift_destroy_boxed_opaque_existential_0((v0 + 160));
      }

      else
      {
        v8[(v17 >> 6) + 8] |= 1 << v17;
        v22 = (v8[6] + 16 * v17);
        *v22 = v14;
        v22[1] = v13;
        sub_231CE1044((v0 + 192), (v8[7] + 32 * v17));
        __swift_destroy_boxed_opaque_existential_0((v0 + 160));
        v23 = v8[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_53;
        }

        v8[2] = v25;
      }
    }

    v26 = sub_231E11620();
    sub_231D1352C(v26, v27, v8, (v0 + 96));

    if (!*(v0 + 120))
    {
      sub_231CC154C(v0 + 96, &dword_27DD741E0, &qword_231E15D70);

      v2 = v50;
LABEL_35:
      v39 = 0;
      goto LABEL_38;
    }

    v2 = v50;
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_35;
    }

    v28 = *(v0 + 256);
    v29 = *(v0 + 264);
    sub_231DFFB24(v8);
    v31 = v30;
    v32 = objc_allocWithZone(MEMORY[0x277CC34B8]);
    v33 = sub_231E01D34(v31);
    v34 = sub_231E11620();
    sub_231D1352C(v34, v35, v8, (v0 + 128));

    if (*(v0 + 152))
    {
      v36 = swift_dynamicCast();
      if (v36)
      {
        v37 = *(v0 + 272);
      }

      else
      {
        v37 = 0;
      }

      if (v36)
      {
        v38 = *(v0 + 280);
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      sub_231CC154C(v0 + 128, &dword_27DD741E0, &qword_231E15D70);
      v37 = 0;
      v38 = 0;
    }

    v40 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v39 = sub_231CE0AF0(v28, v29, v37, v38, v33);

LABEL_38:
    v3 = v52;

    v4 = v52;
    if (!v39)
    {
      goto LABEL_6;
    }

    MEMORY[0x23837CD40](v41);
    v42 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v42 >> 1)
    {
      OUTLINED_FUNCTION_2_12(v42);
      sub_231E11890();
    }

    OUTLINED_FUNCTION_57();
    sub_231E118C0();
    v49 = v57;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_231E12160();
  __break(1u);
  return result;
}

uint64_t sub_231DFB0B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFB0C4()
{
  OUTLINED_FUNCTION_57_0();
  v3 = v0[5];
  v2 = v0[6];
  v4 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v6 = OUTLINED_FUNCTION_123(v5);
  OUTLINED_FUNCTION_88_9(v6, xmmword_231E138E0);
  v6[2].n128_u64[0] = sub_231E11620();
  v6[2].n128_u64[1] = v7;
  sub_231E11850();
  OUTLINED_FUNCTION_141();

  OUTLINED_FUNCTION_110_7(v8, sel_setFetchAttributes_);

  v9 = OUTLINED_FUNCTION_123(v5);
  OUTLINED_FUNCTION_47_9(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  v9[2].n128_u64[0] = sub_231DE8A04(1);
  v9[2].n128_u64[1] = v19;
  v20 = OUTLINED_FUNCTION_59_0();
  sub_231E076B0(v20, v21);
  OUTLINED_FUNCTION_113_4(31, 0x8000000231E38BF0);
  OUTLINED_FUNCTION_27();
  v22 = swift_allocObject();
  v0[8] = v22;
  *(v22 + 16) = MEMORY[0x277D84F90];
  v23 = swift_task_alloc();
  v0[9] = v23;
  v23[2] = v3;
  v23[3] = v2;
  v23[4] = v4;
  v23[5] = v22;
  v24 = swift_task_alloc();
  v0[10] = v24;
  *v24 = v0;
  v24[1] = sub_231DFB2A4;
  OUTLINED_FUNCTION_13_20();

  return MEMORY[0x2822008A0](v25);
}

uint64_t sub_231DFB2A4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231DFB3A4()
{
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_93_6();
  swift_beginAccess();
  v2 = *(v0 + 56);
  if (*(*(v1 + 16) + 16))
  {

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_117_7();

    __asm { BRAA            X3, X16 }
  }

  v5 = sub_231E077EC();
  v6 = OUTLINED_FUNCTION_7_5(&type metadata for SpotlightReaderError, v5);
  OUTLINED_FUNCTION_76_7(v6, v7);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_117_7();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231DFB4A0()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v1();
}

void sub_231DFB510()
{
  OUTLINED_FUNCTION_40_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_38_13();
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v26 = 0xD000000000000023;
  v27 = 0x8000000231E38DA0;
  MEMORY[0x23837CC20](v7, v5);
  MEMORY[0x23837CC20](34, 0xE100000000000000);
  v14 = v26;
  v15 = v27;
  objc_allocWithZone(MEMORY[0x277CC3498]);
  v16 = v3;
  v17 = sub_231E01CD0(v14, v15, v3);
  v30 = sub_231E082F0;
  v31 = v1;
  OUTLINED_FUNCTION_3_36();
  OUTLINED_FUNCTION_28_14();
  v28 = v18;
  v29 = &block_descriptor_100;
  v19 = _Block_copy(&v26);

  [v17 setFoundItemsHandler_];
  _Block_release(v19);
  OUTLINED_FUNCTION_96_5();
  v20(v13, v9, v10);
  v21 = swift_allocObject();
  v22 = OUTLINED_FUNCTION_65_10(v21);
  v23(v22);
  OUTLINED_FUNCTION_7_28();
  v28 = sub_231DF9CEC;
  v29 = &block_descriptor_106;
  _Block_copy(&v26);
  OUTLINED_FUNCTION_109_7();
  v24 = OUTLINED_FUNCTION_82();
  [v24 v25];
  _Block_release(v10);
  [v17 start];

  OUTLINED_FUNCTION_39_5();
}

uint64_t sub_231DFB754(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFB76C()
{
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return sub_231DFB8E8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_231DFB800()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  OUTLINED_FUNCTION_18_6();

  return v5(v2);
}

uint64_t sub_231DFB8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFB904()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[2];
  v1 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v4 = OUTLINED_FUNCTION_123(v3);
  v5 = OUTLINED_FUNCTION_97_6(v4);
  OUTLINED_FUNCTION_88_9(v5, xmmword_231E138E0);
  v6 = sub_231E11620();
  v8 = OUTLINED_FUNCTION_49_11(v6, v7);
  v0[9] = v8;
  OUTLINED_FUNCTION_47_9(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
  *(v18 + 32) = v2;
  *(v18 + 40) = v1;

  v19 = swift_task_alloc();
  v0[10] = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_20_18(v19);
  OUTLINED_FUNCTION_117_7();

  return sub_231D5F05C(v20, v21, v22, v23, v24, v25);
}

uint64_t sub_231DFB9F8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v6 + 88) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231DFBB14()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 88);
  if (v2)
  {
    if (sub_231CBA138(*(v1 + 88)))
    {
      if ((*(v1 + 88) & 0xC000000000000001) != 0)
      {
        MEMORY[0x23837D2A0](0, v2);
      }

      else
      {
        OUTLINED_FUNCTION_83_7();
        if (!v3)
        {
          __break(1u);
          return;
        }

        v4 = *(v2 + 32);
      }

      OUTLINED_FUNCTION_399();

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_231E11860();
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_18_6();

  v5();
}

uint64_t sub_231DFBC14()
{
  OUTLINED_FUNCTION_18();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75980, &qword_231E23290);
  OUTLINED_FUNCTION_47(v5);
  v0[9] = OUTLINED_FUNCTION_55();
  v6 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  v0[10] = v6;
  OUTLINED_FUNCTION_47(v6);
  v0[11] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231DFBCC0()
{
  OUTLINED_FUNCTION_57_0();
  v2 = v0[7];
  v3 = v0[8];
  v4 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[12] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231E1D9C0;
  *(v6 + 32) = sub_231E11620();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_231E11620();
  *(v6 + 56) = v8;
  *(v6 + 64) = sub_231E11620();
  *(v6 + 72) = v9;
  sub_231E11850();
  OUTLINED_FUNCTION_141();

  OUTLINED_FUNCTION_110_7(v10, sel_setFetchAttributes_);

  v11 = OUTLINED_FUNCTION_123(v5);
  *(v11 + 16) = xmmword_231E138E0;
  *(v11 + 32) = sub_231DE8A04(0);
  *(v11 + 40) = v12;
  v13 = OUTLINED_FUNCTION_59_0();
  sub_231E076B0(v13, v14);
  OUTLINED_FUNCTION_113_4(28, 0x8000000231E38C40);
  OUTLINED_FUNCTION_27();
  v15 = swift_allocObject();
  v0[13] = v15;
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = swift_task_alloc();
  v0[14] = v16;
  OUTLINED_FUNCTION_47_9(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v26[4] = v3;
  v26[5] = v4;
  v26[6] = v2;
  v26[7] = v15;
  v27 = swift_task_alloc();
  v0[15] = v27;
  *v27 = v0;
  v27[1] = sub_231DFBEE4;
  OUTLINED_FUNCTION_13_20();

  return MEMORY[0x2822008A0](v28);
}

uint64_t sub_231DFBEE4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231DFBFE4()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[16];
  v2 = v0[13];
  OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_45_5();
  swift_beginAccess();
  sub_231DFCA40((v2 + 16));
  swift_endAccess();
  if (v1)
  {
    OUTLINED_FUNCTION_97_3();
    return;
  }

  v3 = v0[9];
  v4 = v0[10];
  sub_231DF8A18(*(v0[13] + 16), v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    v5 = v0[12];
    sub_231CC154C(v0[9], &qword_27DD75980, &qword_231E23290);
    v6 = sub_231E077EC();
    v7 = OUTLINED_FUNCTION_7_5(&type metadata for SpotlightReaderError, v6);
    OUTLINED_FUNCTION_76_7(v7, v8);

LABEL_10:

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_97_3();

    v26(v25, v26, v27, v28, v29, v30, v31, v32);
    return;
  }

  v9 = v0[10];
  v10 = v0[11];
  OUTLINED_FUNCTION_30_14();
  sub_231E07790(v11, v10, v12);
  v13 = v0[12];
  v14 = v0[11];
  if (*(v10 + *(v9 + 24)) != 1)
  {
    v23 = sub_231E077EC();
    OUTLINED_FUNCTION_7_5(&type metadata for SpotlightReaderError, v23);
    *v24 = 1;
    swift_willThrow();

    sub_231E0787C(v14);

    goto LABEL_10;
  }

  sub_231E0787C(v14);

  OUTLINED_FUNCTION_97_3();

  v18(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_231DFC1DC()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v1();
}

void sub_231DFC260()
{
  OUTLINED_FUNCTION_40_6();
  v25 = v0;
  v26 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_38_13();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_14();
  sub_231E11D70();
  v10 = sub_231E11620();
  MEMORY[0x23837CC20](v10);

  MEMORY[0x23837CC20](0x2A22203D3D20, 0xE600000000000000);
  MEMORY[0x23837CC20](v7, v5);
  OUTLINED_FUNCTION_106_7();
  v11 = sub_231E11620();
  MEMORY[0x23837CC20](v11);

  MEMORY[0x23837CC20](540884512, 0xE400000000000000);
  sub_231E0F870();
  sub_231E11A40();
  v12 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v13 = v3;
  v14 = sub_231E01CD0(v27, v28, v3);
  v15 = swift_allocObject();
  *(v15 + 16) = v25;
  *(v15 + 24) = v26;
  v31 = sub_231E08290;
  v32 = v15;
  OUTLINED_FUNCTION_3_36();
  v28 = 1107296256;
  v29 = sub_231DF9C78;
  v30 = &block_descriptor_90;
  v16 = _Block_copy(&v27);

  OUTLINED_FUNCTION_111_6(v17, sel_setFoundItemsHandler_);
  _Block_release(v16);
  v18 = OUTLINED_FUNCTION_63_11();
  v19(v18);
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_65_10(v20);
  v22(v21);
  OUTLINED_FUNCTION_7_28();
  v29 = sub_231DF9CEC;
  v30 = &block_descriptor_96;
  _Block_copy(&v27);
  OUTLINED_FUNCTION_109_7();
  v23 = OUTLINED_FUNCTION_82();
  [v23 v24];
  _Block_release(v8);
  [v14 start];

  OUTLINED_FUNCTION_39_5();
}

void sub_231DFC534()
{
  OUTLINED_FUNCTION_35_1();
  v69 = v0;
  v79 = v1;
  v3 = v2;
  type metadata accessor for SpotlightReader.MessageWithDate(0);
  OUTLINED_FUNCTION_24();
  v72 = v5;
  v73 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  v71 = (v7 - v6);
  OUTLINED_FUNCTION_3_0();
  v8 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v16 = OUTLINED_FUNCTION_47(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_139();
  v70 = v17;
  OUTLINED_FUNCTION_95();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v65 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_5();
  v78 = v22;
  if (!(v3 >> 62))
  {
    v23 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_19:
    OUTLINED_FUNCTION_33_0();
    return;
  }

  OUTLINED_FUNCTION_62_8();
  v23 = sub_231E11ED0();
  if (!v23)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v23 >= 1)
  {
    v24 = 0;
    v75 = v3 & 0xC000000000000001;
    v76 = v23;
    v67 = (v10 + 16);
    v68 = v21;
    v65 = (v10 + 32);
    v66 = (v10 + 8);
    v77 = v3;
    do
    {
      if (v75)
      {
        v25 = OUTLINED_FUNCTION_59();
        v26 = MEMORY[0x23837D2A0](v25);
      }

      else
      {
        OUTLINED_FUNCTION_98_3();
        v26 = v27;
      }

      v28 = v26;
      v29 = [v26 uniqueIdentifier];
      v30 = sub_231E11620();
      v32 = v31;

      v80[0] = v30;
      v80[1] = v32;
      MEMORY[0x28223BE20](v33);
      *(&v65 - 2) = v80;
      LOBYTE(v30) = sub_231D162D0(sub_231D163AC, (&v65 - 4), v79);

      if (v30)
      {
        v34 = [v28 attributeSet];
        v35 = [v34 contentCreationDate];

        if (v35)
        {
          v36 = v68;
          sub_231E0F910();

          v37 = v70;
        }

        else
        {
          v37 = v70;
          v36 = v68;
        }

        v38 = v28;
        OUTLINED_FUNCTION_32_12();
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
        v43 = v36;
        v44 = v78;
        sub_231D26298(v43, v78);
        sub_231CFE0D8(v44, v37, &dword_27DD74AD0, &qword_231E16C40);
        OUTLINED_FUNCTION_73_6();
        if (__swift_getEnumTagSinglePayload(v45, v46, v47) == 1)
        {
          sub_231E0F920();
          OUTLINED_FUNCTION_73_6();
          v51 = v8;
          v52 = v14;
          if (__swift_getEnumTagSinglePayload(v48, v49, v50) != 1)
          {
            sub_231CC154C(v37, &dword_27DD74AD0, &qword_231E16C40);
          }
        }

        else
        {
          (*v65)(v14, v37, v8);
          v51 = v8;
          v52 = v14;
        }

        v53 = [v38 uniqueIdentifier];
        v54 = sub_231E11620();
        v74 = v55;

        v56 = v73;
        v57 = v71;
        (*v67)(v71 + *(v73 + 20), v52, v51);
        v58 = [v38 attributeSet];
        v59 = [v58 summarizationStatus];

        v60 = v74;
        *v57 = v54;
        v57[1] = v60;
        *(v57 + *(v56 + 24)) = v59 == 1;
        v61 = v69;
        OUTLINED_FUNCTION_45_5();
        swift_beginAccess();
        sub_231E01DB4();
        v62 = *(*v61 + 16);
        sub_231E01E00(v62);
        *(*v61 + 16) = v62 + 1;
        OUTLINED_FUNCTION_30_14();
        sub_231E07790(v57, v63, v64);
        swift_endAccess();

        (*v66)(v52, v51);
        sub_231CC154C(v78, &dword_27DD74AD0, &qword_231E16C40);
        v8 = v51;
        v14 = v52;
      }

      else
      {
      }

      ++v24;
    }

    while (v76 != v24);
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_231DFCA40(uint64_t *a1)
{
  v2 = *(type metadata accessor for SpotlightReader.MessageWithDate(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_231E07A1C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_231E03244(v6, type metadata accessor for SpotlightReader.MessageWithDate, sub_231E04220, sub_231E03900);
  *a1 = v3;
  return result;
}

uint64_t sub_231DFCB28(uint64_t *a1)
{
  v2 = *(sub_231E10BE0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_231E07A30(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_231E03244(v6, MEMORY[0x277D42490], sub_231E04A9C, sub_231E03B14);
  *a1 = v3;
  return result;
}

uint64_t sub_231DFCC10(uint64_t *a1)
{
  v2 = *(sub_231E10A30() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231DF06B4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_231E03390(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_231DFCCB8()
{
  OUTLINED_FUNCTION_18();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;
  v4 = sub_231E10E30();
  v0[8] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[9] = v5;
  v0[10] = OUTLINED_FUNCTION_55();
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231DFCD60()
{
  OUTLINED_FUNCTION_47_0();
  v3 = v0[6];
  v2 = v0[7];
  v4 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231E231D0;
  *(v6 + 32) = sub_231E11620();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_231E11620();
  *(v6 + 56) = v8;
  *(v6 + 64) = sub_231E11620();
  *(v6 + 72) = v9;
  *(v6 + 80) = sub_231E11620();
  *(v6 + 88) = v10;
  *(v6 + 96) = sub_231E11620();
  *(v6 + 104) = v11;
  *(v6 + 112) = sub_231E11620();
  *(v6 + 120) = v12;
  *(v6 + 128) = sub_231E11620();
  *(v6 + 136) = v13;
  sub_231E11850();
  OUTLINED_FUNCTION_141();

  OUTLINED_FUNCTION_110_7(v14, sel_setFetchAttributes_);

  v15 = OUTLINED_FUNCTION_123(v5);
  *(v15 + 16) = xmmword_231E138E0;
  v16 = sub_231CC78CC();
  v18 = *v16;
  v17 = v16[1];
  *(v15 + 32) = v18;
  *(v15 + 40) = v17;

  v19 = OUTLINED_FUNCTION_59_0();
  sub_231E076B0(v19, v20);
  OUTLINED_FUNCTION_113_4(33, 0x8000000231E38CC0);
  OUTLINED_FUNCTION_27();
  v21 = swift_allocObject();
  v0[12] = v21;
  *(v21 + 16) = MEMORY[0x277D84F90];
  v22 = swift_task_alloc();
  v0[13] = v22;
  v22[2] = v3;
  v22[3] = v2;
  v22[4] = v4;
  v22[5] = v21;
  v23 = swift_task_alloc();
  v0[14] = v23;
  *v23 = v0;
  v23[1] = sub_231DFCFCC;
  OUTLINED_FUNCTION_13_20();

  return MEMORY[0x2822008A0](v24);
}

uint64_t sub_231DFCFCC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231DFD0CC()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[15];
  v2 = v0[12];
  OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_45_5();
  swift_beginAccess();
  sub_231DFCB28((v2 + 16));
  result = swift_endAccess();
  if (!v1)
  {
    v4 = v0[11];
    sub_231DF8ABC(*(v0[12] + 16), MEMORY[0x277D42490], v0[5]);

    OUTLINED_FUNCTION_19();

    return v5();
  }

  return result;
}

uint64_t sub_231DFD198()
{
  v28 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);

  v5 = sub_231CB4EEC();
  (*(v4 + 16))(v2, v5, v3);

  v6 = v1;
  v7 = sub_231E10E10();
  v8 = sub_231E11AD0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 120);
  v12 = *(v0 + 72);
  v11 = *(v0 + 80);
  v13 = *(v0 + 64);
  if (v9)
  {
    v26 = *(v0 + 80);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    v25 = *(v0 + 64);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = OUTLINED_FUNCTION_67();
    v27 = v18;
    *v16 = 136643075;
    *(v16 + 4) = sub_231CB5000(v14, v15, &v27);
    *(v16 + 12) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v20;
    *v17 = v20;
    _os_log_impl(&dword_231CAE000, v7, v8, "Could not look up message notification stack for conversation: %{sensitive}s: %@", v16, 0x16u);
    sub_231CC154C(v17, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v12 + 8))(v26, v25);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = *(v0 + 40);
  v22 = sub_231E10BE0();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);

  OUTLINED_FUNCTION_19();

  return v23();
}

void sub_231DFD3DC()
{
  OUTLINED_FUNCTION_40_6();
  v32 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_38_13();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_14();
  sub_231E11D70();
  v8 = sub_231E11620();
  v10 = v9;

  v33[0] = v8;
  v33[1] = v10;
  MEMORY[0x23837CC20](0x22203D3D20, 0xE500000000000000);
  v11 = sub_231CC78C0();
  v12 = *v11;
  v13 = v11[1];

  MEMORY[0x23837CC20](v12, v13);

  MEMORY[0x23837CC20](0x2026262022, 0xE500000000000000);
  v14 = sub_231E11620();
  MEMORY[0x23837CC20](v14);

  MEMORY[0x23837CC20](0x22203D3D20, 0xE500000000000000);
  v15 = sub_231DE8A04(0);
  MEMORY[0x23837CC20](v15);

  MEMORY[0x23837CC20](0x2026262022, 0xE500000000000000);
  v16 = sub_231E11620();
  MEMORY[0x23837CC20](v16);

  MEMORY[0x23837CC20](0x22203D3D20, 0xE500000000000000);
  MEMORY[0x23837CC20](v6, v4);
  MEMORY[0x23837CC20](34, 0xE100000000000000);
  v17 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v18 = v2;
  v19 = sub_231E01CD0(v33[0], v10, v2);
  v20 = swift_allocObject();
  v20[2] = v32;
  v20[3] = v6;
  v20[4] = v4;
  v36 = sub_231E081C4;
  v37 = v20;
  OUTLINED_FUNCTION_3_36();
  OUTLINED_FUNCTION_28_14();
  v34 = v21;
  v35 = &block_descriptor_78;
  v22 = _Block_copy(v33);

  OUTLINED_FUNCTION_111_6(v23, sel_setFoundItemsHandler_);
  _Block_release(v22);
  v24 = OUTLINED_FUNCTION_63_11();
  v25(v24);
  v26 = swift_allocObject();
  v27 = OUTLINED_FUNCTION_65_10(v26);
  v28(v27);
  OUTLINED_FUNCTION_7_28();
  v34 = sub_231DF9CEC;
  v35 = &block_descriptor_84_0;
  _Block_copy(v33);
  OUTLINED_FUNCTION_109_7();
  v29 = OUTLINED_FUNCTION_82();
  [v29 v30];
  _Block_release(v31);
  [v19 start];

  OUTLINED_FUNCTION_39_5();
}

void sub_231DFD718()
{
  OUTLINED_FUNCTION_118();
  v71 = v1;
  v72 = v2;
  v73 = v3;
  v5 = v4;
  v70 = sub_231E10BE0();
  OUTLINED_FUNCTION_24();
  v74 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  v10 = v9 - v8;
  v11 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v19 = OUTLINED_FUNCTION_47(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_139();
  v69 = v20;
  OUTLINED_FUNCTION_95();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v55 - v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_126_2();
  if (!(v5 >> 62))
  {
    v25 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_3;
    }

LABEL_25:
    OUTLINED_FUNCTION_113();
    return;
  }

  v25 = sub_231E11ED0();
  if (!v25)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v25 >= 1)
  {
    v26 = 0;
    v61 = *MEMORY[0x277CC24A8];
    v60 = v5 & 0xC000000000000001;
    v56 = (v13 + 32);
    v59 = (v13 + 16);
    v58 = v74 + 32;
    v57 = (v13 + 8);
    v27 = &off_278947000;
    v67 = v10;
    v68 = v5;
    v63 = v0;
    v66 = v11;
    v65 = v17;
    v64 = v24;
    v62 = v25;
    do
    {
      if (v60)
      {
        v28 = MEMORY[0x23837D2A0](v26, v5);
      }

      else
      {
        v28 = *(v5 + 8 * v26 + 32);
      }

      v29 = v27[372];
      v78 = v28;
      v30 = [v28 v29];
      v31 = [v30 attributeForKey_];

      if (v31)
      {
        sub_231E11C80();
        swift_unknownObjectRelease();
      }

      else
      {
        v79 = 0u;
        v80 = 0u;
      }

      v81[0] = v79;
      v81[1] = v80;
      v32 = v78;
      if (*(&v80 + 1))
      {
        v33 = swift_dynamicCast() ^ 1;
        v34 = v0;
      }

      else
      {
        sub_231CC154C(v81, &dword_27DD741E0, &qword_231E15D70);
        v34 = v0;
        v33 = 1;
      }

      __swift_storeEnumTagSinglePayload(v34, v33, 1, v11);
      sub_231CFE0D8(v0, v24, &dword_27DD74AD0, &qword_231E16C40);
      OUTLINED_FUNCTION_8_17(v24, 1, v11);
      v77 = v26;
      if (v35)
      {
        sub_231E0F920();
        OUTLINED_FUNCTION_8_17(v24, 1, v11);
        if (!v35)
        {
          v36 = OUTLINED_FUNCTION_86_8();
          sub_231CC154C(v36, v37, &qword_231E16C40);
        }
      }

      else
      {
        (*v56)(v17, v24, v11);
      }

      sub_231E07948([v32 v27[372]]);
      v38 = [v32 uniqueIdentifier];
      v39 = sub_231E11620();
      v75 = v40;
      v76 = v39;

      sub_231DBAF78(v32, &selRef_domainIdentifier);
      sub_231CC78CC();
      v41 = v69;
      (*v59)(v69, v17, v11);
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v11);

      sub_231DE8A04(0);
      sub_231E079AC([v32 v27[372]]);

      v42 = v67;
      sub_231E10BB0();
      v43 = v73;
      OUTLINED_FUNCTION_45_5();
      swift_beginAccess();
      v44 = *v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v43 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = OUTLINED_FUNCTION_0_1();
        v44 = sub_231E021B8(v51, v52, v53, v44);
        *v73 = v44;
      }

      v46 = v77;
      v48 = v44[2];
      v47 = v44[3];
      v17 = v65;
      v24 = v64;
      v0 = v63;
      if (v48 >= v47 >> 1)
      {
        v54 = OUTLINED_FUNCTION_2_12(v47);
        v44 = sub_231E021B8(v54, v48 + 1, 1, v44);
        *v73 = v44;
      }

      v26 = v46 + 1;
      v44[2] = v48 + 1;
      OUTLINED_FUNCTION_79();
      (*(v50 + 32))(v44 + v49 + *(v50 + 72) * v48, v42, v70);
      swift_endAccess();

      v11 = v66;
      (*v57)(v17, v66);
      sub_231CC154C(v0, &dword_27DD74AD0, &qword_231E16C40);
      v5 = v68;
      v27 = &off_278947000;
    }

    while (v62 != v26);
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_231DFDD54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v2 = OUTLINED_FUNCTION_47(v1);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  sub_231E10B70();
  sub_231E0F950();
  v8 = OUTLINED_FUNCTION_141();
  result = OUTLINED_FUNCTION_8_17(v8, 1, v0);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_231E10B70();
    result = OUTLINED_FUNCTION_8_17(v5, 1, v0);
    if (!v10)
    {
      OUTLINED_FUNCTION_57();
      v11 = sub_231E0F8D0();
      v12 = *(*(v0 - 8) + 8);
      v12(v5, v0);
      v12(v7, v0);
      return v11 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231DFDE98()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_231E10E30();
  v1[7] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[8] = v7;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231DFDF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_57_0();
  v34 = v14;
  v15 = v14[8];
  v14[12] = sub_231CB4EEC();
  v14[13] = *(v15 + 16);
  v14[14] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16 = OUTLINED_FUNCTION_82();
  v17(v16);

  v18 = sub_231E10E10();
  v19 = sub_231E11AF0();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v14[8];
  if (v20)
  {
    v22 = v14[2];
    v23 = OUTLINED_FUNCTION_9_1();
    v24 = OUTLINED_FUNCTION_67();
    v33 = v24;
    *v23 = 136315138;
    v25 = MEMORY[0x23837CD80](v22, MEMORY[0x277D837D0]);
    v27 = sub_231CB5000(v25, v26, &v33);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_231CAE000, v18, v19, "Looking up notification entities for ids: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  v28 = *(v21 + 8);
  v29 = OUTLINED_FUNCTION_25();
  v28(v29);
  v14[15] = v28;
  v30 = swift_task_alloc();
  v14[16] = v30;
  *v30 = v14;
  v30[1] = sub_231DFE130;
  v31 = v14[2];

  return sub_231DFE62C(v31);
}

uint64_t sub_231DFE130()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v4;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231DFE230()
{
  OUTLINED_FUNCTION_57_0();
  v27 = v0;
  (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 56));

  v1 = sub_231E10E10();
  v2 = sub_231E11AF0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 136);
  v5 = *(v0 + 16);
  if (v3)
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = sub_231CBA138(v4);

    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v5 + 16);

    _os_log_impl(&dword_231CAE000, v1, v2, "Spotlight returned %ld searchable items; expected: %ld", v6, 0x16u);
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v24 = *(v0 + 24);
  (*(v0 + 120))(*(v0 + 80), *(v0 + 56));
  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_47_9(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  sub_231DF92AC(sub_231E078E4, v9, v7, &qword_27DD74BE0, &qword_231E1CC20, MEMORY[0x277D42428], sub_231E022DC, v19, v24, *(&v24 + 1), v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v27, v28, v29);
  OUTLINED_FUNCTION_10_1();

  v26[0] = v1;

  sub_231DFCC10(v26);
  if (v8)
  {
  }

  else
  {
    v21 = *(v0 + 40);

    v22 = sub_231D922EC(v21, v26[0]);

    OUTLINED_FUNCTION_18_6();

    return v23(v22);
  }
}

uint64_t sub_231DFE49C()
{
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 144);
  (*(v0 + 104))(*(v0 + 72), *(v0 + 96), *(v0 + 56));
  v2 = v1;
  v3 = sub_231E10E10();
  v4 = sub_231E11AD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = OUTLINED_FUNCTION_9_1();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_231CAE000, v3, v4, "Could not look up user notifications: %@", v6, 0xCu);
    sub_231CC154C(v7, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  v10 = *(v0 + 144);
  v11 = *(v0 + 120);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);

  v11(v12, v13);

  OUTLINED_FUNCTION_18_6();
  v15 = MEMORY[0x277D84F90];

  return v14(v15);
}

uint64_t sub_231DFE62C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFE640()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  *(v1 + 16) = xmmword_231E231E0;
  *(v1 + 32) = sub_231E11620();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_231E11620();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_231E11620();
  *(v1 + 72) = v4;
  *(v1 + 80) = sub_231E11620();
  *(v1 + 88) = v5;
  *(v1 + 96) = sub_231E11620();
  *(v1 + 104) = v6;
  *(v1 + 112) = sub_231E11620();
  *(v1 + 120) = v7;
  *(v1 + 128) = sub_231E11620();
  *(v1 + 136) = v8;
  *(v1 + 144) = sub_231E11620();
  *(v1 + 152) = v9;
  *(v1 + 160) = sub_231E11620();
  *(v1 + 168) = v10;
  *(v1 + 176) = sub_231E11620();
  *(v1 + 184) = v11;
  *(v1 + 192) = sub_231E11620();
  *(v1 + 200) = v12;
  *(v1 + 208) = sub_231E11620();
  *(v1 + 216) = v13;
  *(v1 + 224) = sub_231E11620();
  *(v1 + 232) = v14;
  *(v1 + 240) = sub_231E11620();
  *(v1 + 248) = v15;
  *(v1 + 256) = sub_231E11620();
  *(v1 + 264) = v16;
  *(v1 + 272) = sub_231E11620();
  *(v1 + 280) = v17;
  *(v1 + 288) = sub_231E11620();
  *(v1 + 296) = v18;
  *(v1 + 304) = sub_231E11620();
  *(v1 + 312) = v19;
  *(v1 + 320) = sub_231E11620();
  *(v1 + 328) = v20;
  *(v1 + 336) = sub_231E11620();
  *(v1 + 344) = v21;
  *(v1 + 352) = sub_231E11620();
  *(v1 + 360) = v22;
  *(v1 + 368) = sub_231E11620();
  *(v1 + 376) = v23;
  *(v1 + 384) = sub_231E11620();
  *(v1 + 392) = v24;
  *(v1 + 400) = sub_231E11620();
  *(v1 + 408) = v25;
  *(v1 + 416) = sub_231E11620();
  *(v1 + 424) = v26;
  *(v1 + 432) = sub_231E11620();
  *(v1 + 440) = v27;
  *(v1 + 448) = sub_231E11620();
  *(v1 + 456) = v28;
  *(v1 + 464) = sub_231E11620();
  *(v1 + 472) = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_36_13(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_10_24(v31);
  OUTLINED_FUNCTION_97_3();

  return sub_231DFA704();
}

uint64_t sub_231DFE938()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_37_13();

    return v11(v10);
  }
}

void sub_231DFEA64()
{
  OUTLINED_FUNCTION_118();
  v58 = v2;
  v59 = v1;
  v61 = v3;
  v4 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v57 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  v9 = v8 - v7;
  v10 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_139();
  v56 = v14;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE0, &qword_231E1CC20);
  OUTLINED_FUNCTION_47(v18);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - v20;
  v22 = sub_231E10A30();
  OUTLINED_FUNCTION_24();
  v60 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_139();
  v55 = v25;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_126_2();
  sub_231D1E298(v59, 1, v21);
  OUTLINED_FUNCTION_8_17(v21, 1, v22);
  if (v27)
  {
    sub_231CC154C(v21, &qword_27DD74BE0, &qword_231E1CC20);
    v28 = sub_231CB4EEC();
    (*(v12 + 16))(v17, v28, v10);
    v29 = sub_231E10E10();
    v30 = sub_231E11AD0();
    if (os_log_type_enabled(v29, v30))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_11();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_8_7();
    }

    (*(v12 + 8))(v17, v10);
    v36 = 1;
    v37 = v61;
    v38 = v22;
  }

  else
  {
    v39 = *(v60 + 32);
    v39(v0, v21, v22);
    sub_231E10980();
    sub_231DD19E0();
    v40 = sub_231E11590();
    (*(v57 + 8))(v9, v4);
    v38 = v22;
    if (v40)
    {
      v41 = sub_231CB4EEC();
      v42 = v56;
      (*(v12 + 16))(v56, v41, v10);
      v43 = v55;
      (*(v60 + 16))(v55, v0, v22);
      v44 = sub_231E10E10();
      v45 = sub_231E11AD0();
      if (os_log_type_enabled(v44, v45))
      {
        OUTLINED_FUNCTION_9_1();
        v59 = v22;
        v46 = OUTLINED_FUNCTION_6_1();
        v58 = v10;
        v47 = v46;
        v62 = v46;
        *v22 = 136315138;
        v48 = sub_231E10A20();
        v50 = v49;
        v51 = v43;
        v52 = *(v60 + 8);
        v52(v51, v59);
        v53 = sub_231CB5000(v48, v50, &v62);

        *(v22 + 4) = v53;
        _os_log_impl(&dword_231CAE000, v44, v45, "Date is too old during notification lookup for: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        OUTLINED_FUNCTION_30();
        v38 = v59;
        OUTLINED_FUNCTION_30();

        (*(v12 + 8))(v56, v58);
        v52(v0, v38);
      }

      else
      {

        v54 = *(v60 + 8);
        v54(v43, v22);
        (*(v12 + 8))(v42, v10);
        v54(v0, v22);
      }

      v36 = 1;
      v37 = v61;
    }

    else
    {
      v37 = v61;
      v39(v61, v0, v22);
      v36 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v37, v36, 1, v38);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DFEF7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFEF90()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  *(v1 + 16) = xmmword_231E20410;
  *(v1 + 32) = sub_231E11620();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_231E11620();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_231E11620();
  *(v1 + 72) = v4;
  *(v1 + 80) = sub_231E11620();
  *(v1 + 88) = v5;
  *(v1 + 96) = sub_231E11620();
  *(v1 + 104) = v6;
  *(v1 + 112) = sub_231E11620();
  *(v1 + 120) = v7;
  *(v1 + 128) = sub_231E11620();
  *(v1 + 136) = v8;
  *(v1 + 144) = sub_231E11620();
  *(v1 + 152) = v9;
  *(v1 + 160) = sub_231E11620();
  *(v1 + 168) = v10;
  *(v1 + 176) = sub_231E11620();
  *(v1 + 184) = v11;
  *(v1 + 192) = sub_231E11620();
  *(v1 + 200) = v12;
  *(v1 + 208) = sub_231E11620();
  *(v1 + 216) = v13;
  *(v1 + 224) = sub_231E11620();
  *(v1 + 232) = v14;
  *(v1 + 240) = sub_231E11620();
  *(v1 + 248) = v15;
  *(v1 + 256) = sub_231E11620();
  *(v1 + 264) = v16;
  *(v1 + 272) = sub_231E11620();
  *(v1 + 280) = v17;
  *(v1 + 288) = sub_231E11620();
  *(v1 + 296) = v18;
  *(v1 + 304) = sub_231E11620();
  *(v1 + 312) = v19;
  *(v1 + 320) = sub_231E11620();
  *(v1 + 328) = v20;
  *(v1 + 336) = sub_231E11620();
  *(v1 + 344) = v21;
  *(v1 + 352) = sub_231E11620();
  *(v1 + 360) = v22;
  *(v1 + 368) = sub_231E11620();
  *(v1 + 376) = v23;
  *(v1 + 384) = sub_231E11620();
  *(v1 + 392) = v24;
  *(v1 + 400) = sub_231E11620();
  *(v1 + 408) = v25;
  *(v1 + 416) = sub_231E11620();
  *(v1 + 424) = v26;
  *(v1 + 432) = sub_231E11620();
  *(v1 + 440) = v27;
  *(v1 + 448) = sub_231E11620();
  *(v1 + 456) = v28;
  *(v1 + 464) = sub_231E11620();
  *(v1 + 472) = v29;
  *(v1 + 480) = sub_231E11620();
  *(v1 + 488) = v30;
  *(v1 + 496) = sub_231E11620();
  *(v1 + 504) = v31;
  *(v1 + 512) = sub_231E11620();
  *(v1 + 520) = v32;
  *(v1 + 528) = sub_231E11620();
  *(v1 + 536) = v33;
  *(v1 + 544) = sub_231E11620();
  *(v1 + 552) = v34;
  *(v1 + 560) = sub_231E11620();
  *(v1 + 568) = v35;
  *(v1 + 576) = sub_231E11620();
  *(v1 + 584) = v36;
  *(v1 + 592) = sub_231E11620();
  *(v1 + 600) = v37;
  *(v1 + 608) = sub_231E11620();
  *(v1 + 616) = v38;
  *(v1 + 624) = sub_231E11620();
  *(v1 + 632) = v39;
  *(v1 + 640) = sub_231E11620();
  *(v1 + 648) = v40;
  *(v1 + 656) = 0xD00000000000001ELL;
  *(v1 + 664) = 0x8000000231E38B70;
  v41 = swift_task_alloc();
  v42 = OUTLINED_FUNCTION_36_13(v41);
  *v42 = v43;
  OUTLINED_FUNCTION_10_24(v42);
  OUTLINED_FUNCTION_97_3();

  return sub_231DFA704();
}

uint64_t sub_231DFF3A8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_37_13();

    return v11(v10);
  }
}

uint64_t sub_231DFF4D4()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_231DFF530(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DFF544()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  *(v1 + 16) = xmmword_231E231F0;
  *(v1 + 32) = sub_231E11620();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_231E11620();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_231E11620();
  *(v1 + 72) = v4;
  *(v1 + 80) = sub_231E11620();
  *(v1 + 88) = v5;
  *(v1 + 96) = sub_231E11620();
  *(v1 + 104) = v6;
  *(v1 + 112) = sub_231E11620();
  *(v1 + 120) = v7;
  *(v1 + 128) = sub_231E11620();
  *(v1 + 136) = v8;
  *(v1 + 144) = sub_231E11620();
  *(v1 + 152) = v9;
  *(v1 + 160) = sub_231E11620();
  *(v1 + 168) = v10;
  *(v1 + 176) = sub_231E11620();
  *(v1 + 184) = v11;
  *(v1 + 192) = sub_231E11620();
  *(v1 + 200) = v12;
  *(v1 + 208) = sub_231E11620();
  *(v1 + 216) = v13;
  *(v1 + 224) = sub_231E11620();
  *(v1 + 232) = v14;
  *(v1 + 240) = sub_231E11620();
  *(v1 + 248) = v15;
  *(v1 + 256) = sub_231E11620();
  *(v1 + 264) = v16;
  *(v1 + 272) = sub_231E11620();
  *(v1 + 280) = v17;
  *(v1 + 288) = sub_231E11620();
  *(v1 + 296) = v18;
  *(v1 + 304) = sub_231E11620();
  *(v1 + 312) = v19;
  *(v1 + 320) = sub_231E11620();
  *(v1 + 328) = v20;
  *(v1 + 336) = sub_231E11620();
  *(v1 + 344) = v21;
  *(v1 + 352) = sub_231E11620();
  *(v1 + 360) = v22;
  *(v1 + 368) = sub_231E11620();
  *(v1 + 376) = v23;
  *(v1 + 384) = sub_231E11620();
  *(v1 + 392) = v24;
  *(v1 + 400) = sub_231E11620();
  *(v1 + 408) = v25;
  *(v1 + 416) = sub_231E11620();
  *(v1 + 424) = v26;
  *(v1 + 432) = sub_231E11620();
  *(v1 + 440) = v27;
  *(v1 + 448) = sub_231E11620();
  *(v1 + 456) = v28;
  *(v1 + 464) = sub_231E11620();
  *(v1 + 472) = v29;
  *(v1 + 480) = sub_231E11620();
  *(v1 + 488) = v30;
  *(v1 + 496) = sub_231E11620();
  *(v1 + 504) = v31;
  *(v1 + 512) = sub_231E11620();
  *(v1 + 520) = v32;
  *(v1 + 528) = sub_231E11620();
  *(v1 + 536) = v33;
  *(v1 + 544) = sub_231E11620();
  *(v1 + 552) = v34;
  *(v1 + 560) = sub_231E11620();
  *(v1 + 568) = v35;
  *(v1 + 576) = sub_231E11620();
  *(v1 + 584) = v36;
  *(v1 + 592) = sub_231E11620();
  *(v1 + 600) = v37;
  *(v1 + 608) = 0xD000000000000028;
  OUTLINED_FUNCTION_171_0();
  *(v1 + 616) = v38;
  OUTLINED_FUNCTION_171_0();
  *(v1 + 624) = v39 + 10;
  *(v1 + 632) = v40;
  OUTLINED_FUNCTION_171_0();
  *(v1 + 640) = v41;
  *(v1 + 648) = v42;
  *(v1 + 656) = v41 | 5;
  OUTLINED_FUNCTION_171_0();
  *(v1 + 664) = v43;
  *(v1 + 672) = v44 + 6;
  *(v1 + 680) = 0x8000000231E32140;
  *(v1 + 688) = v44 | 1;
  OUTLINED_FUNCTION_171_0();
  *(v1 + 696) = v45;
  *(v1 + 704) = v46 + 7;
  *(v1 + 712) = 0x8000000231E321F0;
  v47 = swift_task_alloc();
  v48 = OUTLINED_FUNCTION_36_13(v47);
  *v48 = v49;
  OUTLINED_FUNCTION_10_24(v48);
  OUTLINED_FUNCTION_97_3();

  return sub_231DFA704();
}

void sub_231DFF9AC(unint64_t a1)
{
  v2 = sub_231CBA138(a1);
  sub_231E02EF0(0, v2 & ~(v2 >> 63), 0);
  if (sub_231CBA138(a1))
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x23837D2A0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v3 = *(a1 + 32);
    }

    v4 = v3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_231E11860();
    }

    else
    {
    }
  }
}

void sub_231DFFB24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD757F8, &qword_231E234E0);
    v2 = sub_231E11F00();
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

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_231CB51C4(*(a1 + 56) + 32 * v10, v35);
    *&v34 = v13;
    *(&v34 + 1) = v12;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_231CE1044(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_231CE1044(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_231CE1044(v31, v32);
    v14 = sub_231E11D00();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    sub_231CE1044(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_231DFFDE8()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v0[2] = v3;
  v4 = sub_231E106A0();
  OUTLINED_FUNCTION_6(v4);
  v0[3] = v5;
  v0[4] = OUTLINED_FUNCTION_55();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_36_13(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_32(v7);

  return sub_231DFF530(v2);
}

uint64_t sub_231DFFEBC()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 56) = v3;
    v11 = OUTLINED_FUNCTION_143_2();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231E0011C()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v0[2] = v3;
  v4 = sub_231E10340();
  OUTLINED_FUNCTION_6(v4);
  v0[3] = v5;
  v0[4] = OUTLINED_FUNCTION_55();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_36_13(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_32(v7);

  return sub_231DFEF7C(v2);
}

uint64_t sub_231E001F0()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 56) = v3;
    v11 = OUTLINED_FUNCTION_143_2();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

void sub_231E00450()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v4 = v3;
  v222 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v7);
  v198 = &v192[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A78, &unk_231E1E3E0);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v10);
  v205 = &v192[-v11];
  OUTLINED_FUNCTION_3_0();
  v197 = sub_231E10210();
  OUTLINED_FUNCTION_24();
  v196 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v204 = (v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  OUTLINED_FUNCTION_47(v16);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v17);
  v219 = &v192[-v18];
  OUTLINED_FUNCTION_3_0();
  v211 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v207 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_5();
  v206 = v22;
  OUTLINED_FUNCTION_3_0();
  v220 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v217 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_1();
  v216 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v28 = OUTLINED_FUNCTION_47(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v192[-v33];
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_25_5();
  v218 = v35;
  OUTLINED_FUNCTION_3_0();
  v36 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v221 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_139();
  v214 = v39;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_126_2();
  v44 = [*v4 attributeSet];
  sub_231DF3D04(0, v2);
  v46 = v45;
  sub_231DF3D04(1, v2);
  v48 = v47;
  sub_231DF3D04(2, v2);
  v50 = v49;
  sub_231DF3D04(3, v2);
  v52 = v51;
  v53 = sub_231DBAF78(v44, &selRef_uniqueIdentifier);
  if (!v54)
  {

    sub_231CB4EEC();
    OUTLINED_FUNCTION_96_5();
    v72(v0);
    v73 = sub_231E10E10();
    v74 = sub_231E11AD0();
    if (os_log_type_enabled(v73, v74))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_11();
      _os_log_impl(v75, v76, v77, v78, v79, 2u);
      OUTLINED_FUNCTION_8_7();
    }

    v80 = OUTLINED_FUNCTION_41_3();
    v81(v80);
    goto LABEL_27;
  }

  v55 = v54;
  v209 = v46;
  v215 = v52;
  v212 = v50;
  v213 = v48;
  v210 = v36;
  v194 = v53;
  v56 = [v44 mailDateReceived];
  if (v56)
  {
    v57 = v56;
    v58 = v216;
    sub_231E0F910();

    v59 = *(v217 + 32);
    (v59)(v34, v58, v220);
    OUTLINED_FUNCTION_32_12();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    v64 = v218;
    v65 = OUTLINED_FUNCTION_63_10();
    v59(v65);
    OUTLINED_FUNCTION_32_12();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    v70 = v55;
    v71 = v64;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v220);
    v82 = v44;
    v83 = [v44 contentCreationDate];
    v70 = v55;
    if (v83)
    {
      v84 = v83;
      v85 = v208;
      sub_231E0F910();

      v86 = v85;
      v71 = v218;
    }

    else
    {
      v71 = v218;
      v86 = v208;
    }

    OUTLINED_FUNCTION_32_12();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
    sub_231D26298(v86, v71);
    OUTLINED_FUNCTION_73_6();
    OUTLINED_FUNCTION_8_17(v91, v92, v93);
    v44 = v82;
    if (!v94)
    {
      sub_231CC154C(v34, &dword_27DD74AD0, &qword_231E16C40);
    }
  }

  OUTLINED_FUNCTION_73_6();
  OUTLINED_FUNCTION_8_17(v95, v96, v97);
  v98 = v219;
  if (v94)
  {

    sub_231CC154C(v71, &dword_27DD74AD0, &qword_231E16C40);
    v99 = sub_231CB4EEC();
    v100 = v221;
    v101 = v214;
    v102 = v210;
    (v221[2])(v214, v99, v210);

    v103 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_112_6();
    if (OUTLINED_FUNCTION_33_8())
    {
      OUTLINED_FUNCTION_9_1();
      v104 = v70;
      v105 = OUTLINED_FUNCTION_6_1();
      *&v225[0] = v105;
      v106 = OUTLINED_FUNCTION_21_12(4.8149e-34);
      v108 = sub_231CB5000(v106, v104, v107);

      *(v71 + 4) = v108;
      OUTLINED_FUNCTION_25_11();
      _os_log_impl(v109, v110, v111, v112, v113, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v105);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_8_7();
    }

    else
    {
    }

    (v100[1])(v101, v102);
    goto LABEL_27;
  }

  sub_231CC154C(v71, &dword_27DD74AD0, &qword_231E16C40);
  v114 = sub_231DBAF78(v44, &selRef_accountIdentifier);
  v116 = v210;
  if (!v115)
  {

    sub_231CB4EEC();
    OUTLINED_FUNCTION_99_6();
    v119 = v200;
    v122(v200);

    v121 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_112_6();
    if (OUTLINED_FUNCTION_33_8())
    {
LABEL_24:
      OUTLINED_FUNCTION_9_1();
      v123 = OUTLINED_FUNCTION_6_1();
      *&v225[0] = v123;
      v124 = OUTLINED_FUNCTION_21_12(4.8149e-34);
      sub_231CB5000(v124, v70, v125);
      OUTLINED_FUNCTION_75_6();
      *(v71 + 4) = v70;
      OUTLINED_FUNCTION_25_11();
      _os_log_impl(v126, v127, v128, v129, v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v123);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_8_7();

LABEL_26:
      (*(v98 + 8))(v119, v116);
LABEL_27:
      v131 = 1;
      v132 = v222;
      goto LABEL_28;
    }

LABEL_25:

    goto LABEL_26;
  }

  v117 = v114;
  v71 = v115;
  v218 = v70;
  sub_231DF8ABC(v209, MEMORY[0x277D42328], v98);

  v118 = v211;
  OUTLINED_FUNCTION_8_17(v98, 1, v211);
  if (v94)
  {

    sub_231CC154C(v98, &dword_27DD73FA0, &dword_231E13460);
    sub_231CB4EEC();
    OUTLINED_FUNCTION_99_6();
    v119 = v199;
    v120(v199);
    v70 = v218;

    v121 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_112_6();
    if (OUTLINED_FUNCTION_33_8())
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v216 = v117;
  v217 = v71;
  v134 = v207;
  v135 = v206;
  (*(v207 + 32))(v206, v98, v118);
  v136 = sub_231D2E5A0();
  v137 = sub_231DBAF78(v44, &selRef_contentSnippet);
  v139 = v118;
  v140 = v218;
  if (!v138)
  {

    sub_231CB4EEC();
    v155 = v221;
    OUTLINED_FUNCTION_96_5();
    v156 = v195;
    v157 = v210;
    v158(v195);

    v159 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_112_6();
    if (OUTLINED_FUNCTION_33_8())
    {
      OUTLINED_FUNCTION_9_1();
      v160 = OUTLINED_FUNCTION_6_1();
      *&v225[0] = v160;
      v161 = OUTLINED_FUNCTION_21_12(4.8149e-34);
      sub_231CB5000(v161, v140, v162);
      OUTLINED_FUNCTION_75_6();
      *(v156 + 4) = v140;
      OUTLINED_FUNCTION_25_11();
      _os_log_impl(v163, v164, v165, v166, v167, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v160);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_8_7();

      (v155[1])(v195, v157);
    }

    else
    {

      (v155[1])(v156, v157);
    }

    (*(v134 + 8))(v135, v211);
    goto LABEL_27;
  }

  v141 = v137;
  v142 = v138;
  v221 = v136;
  v219 = sub_231DBAF78(v44, &selRef_domainIdentifier);
  v214 = v143;
  v210 = sub_231DBAF78(v44, &selRef_bundleID);
  v209 = v144;
  v208 = sub_231CE122C(v44, &selRef_accountHandles);
  (*(v134 + 16))(v203, v135, v139);
  v145 = sub_231DBAF78(v44, &selRef_subject);
  if (v146)
  {
    v147 = v145;
  }

  else
  {
    v147 = 0;
  }

  v200 = v147;
  v148 = 0xE000000000000000;
  if (v146)
  {
    v148 = v146;
  }

  v199 = v148;
  v149 = v204;
  *v204 = v141;
  v149[1] = v142;
  (*(v196 + 104))();
  v150 = v44;
  v151 = [v44 isPartiallyDownloaded];
  if (v151)
  {
    v152 = v151;
    v153 = [v151 BOOLValue];

    v154 = v153 ^ 1;
  }

  else
  {
    v154 = 1;
  }

  LODWORD(v197) = v154;
  v168 = v202;
  v169 = v201;
  v170 = sub_231CE122C(v44, &selRef_mailboxIdentifiers);
  v171 = MEMORY[0x277D84F90];
  if (v170)
  {
    v171 = v170;
  }

  v220 = v171;
  v196 = sub_231DBAF78(v44, &selRef_mailConversationID);
  v195 = v172;
  v173 = [v44 contentCreationDate];
  if (v173)
  {
    v174 = v173;
    sub_231E0F910();

    v175 = 0;
  }

  else
  {
    v175 = 1;
  }

  v176 = 1;
  OUTLINED_FUNCTION_107_9(v169, v175);
  v177 = [v44 mailDateReceived];
  if (v177)
  {
    v178 = v177;
    sub_231E0F910();

    v176 = 0;
  }

  OUTLINED_FUNCTION_107_9(v168, v176);
  [v44 mailCategories];
  v179 = v205;
  sub_231E10060();
  v180 = sub_231E10070();
  __swift_storeEnumTagSinglePayload(v179, 0, 1, v180);
  v181 = [v44 isNew];
  if (v181)
  {
    v182 = v181;
    v193 = [v181 BOOLValue];
  }

  else
  {
    v193 = 2;
  }

  v183 = [v44 isTwoFactorCode];
  if (v183)
  {
    v184 = v183;
    [v183 BOOLValue];
  }

  v185 = [v44 isFromMe];
  if (v185)
  {
    OUTLINED_FUNCTION_82_4(v185);
  }

  OUTLINED_FUNCTION_82_4([v44 isLikelyJunk]);

  v186 = [v44 mailRead];
  if (v186)
  {
    OUTLINED_FUNCTION_82_4(v186);
  }

  v187 = [v44 mailVIP];
  if (v187)
  {
    OUTLINED_FUNCTION_82_4(v187);
  }

  v188 = [v44 mailFlagged];
  if (v188)
  {
    OUTLINED_FUNCTION_82_4(v188);
  }

  v189 = sub_231E115F0();
  v190 = [v150 attributeForKey_];

  if (v190)
  {
    sub_231E11C80();
    swift_unknownObjectRelease();
  }

  else
  {
    v223 = 0u;
    v224 = 0u;
  }

  v225[0] = v223;
  v225[1] = v224;
  if (*(&v224 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_231CC154C(v225, &dword_27DD741E0, &qword_231E15D70);
  }

  v191 = sub_231E10290();
  __swift_storeEnumTagSinglePayload(v198, 1, 1, v191);
  v132 = v222;
  sub_231E10310();

  (*(v207 + 8))(v206, v211);
  v131 = 0;
LABEL_28:
  v133 = sub_231E10340();
  __swift_storeEnumTagSinglePayload(v132, v131, 1, v133);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231E01644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231E0165C()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[7] = v3;
  OUTLINED_FUNCTION_47_9(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  *(v13 + 32) = v2;
  *(v13 + 40) = v1;
  v14 = swift_task_alloc();
  v0[8] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
  *v14 = v0;
  v14[1] = sub_231E01768;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_117_7();

  return MEMORY[0x2822008A0](v15);
}

uint64_t sub_231E01768()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231E01890()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v0();
}

void sub_231E018EC()
{
  OUTLINED_FUNCTION_40_6();
  v36 = v0;
  v37 = v1;
  v3 = v2;
  v35 = v4;
  v38 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75998, &unk_231E234B8);
  OUTLINED_FUNCTION_24();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  OUTLINED_FUNCTION_27();
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84FA0];
  v15 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v17 = OUTLINED_FUNCTION_123(v16);
  v34 = xmmword_231E138E0;
  *(v17 + 16) = xmmword_231E138E0;
  *(v17 + 32) = sub_231E11620();
  *(v17 + 40) = v18;
  v19 = sub_231E11850();

  [v15 setFetchAttributes_];

  v20 = OUTLINED_FUNCTION_123(v16);
  *(v20 + 16) = v34;
  *(v20 + 32) = v35;
  *(v20 + 40) = v3;

  v21 = OUTLINED_FUNCTION_63_10();
  sub_231E076B0(v21, v22);
  v39 = sub_231E11620();
  v40 = v23;
  MEMORY[0x23837CC20](540884256, 0xE400000000000000);
  MEMORY[0x23837CC20](v36, v37);
  v24 = v39;
  v25 = v40;
  v26 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v37 = v15;
  v27 = sub_231E01CD0(v24, v25, v15);
  v43 = sub_231E07F58;
  v44 = v14;
  v39 = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_231DF9C78;
  v42 = &block_descriptor_15;
  v28 = _Block_copy(&v39);

  [v27 setFoundItemsHandler_];
  _Block_release(v28);
  OUTLINED_FUNCTION_96_5();
  v29(v13, v38, v6);
  v30 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v31 = swift_allocObject();
  (*(v8 + 32))(v31 + v30, v13, v6);
  *(v31 + ((v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v43 = sub_231E08078;
  v44 = v31;
  v39 = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_231DF9CEC;
  v42 = &block_descriptor_72;
  v32 = _Block_copy(&v39);

  OUTLINED_FUNCTION_111_6(v33, sel_setCompletionHandler_);
  _Block_release(v32);
  [v27 start];

  OUTLINED_FUNCTION_39_5();
}

uint64_t sub_231E01C8C()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_231CE140C(v2);
  return swift_deallocClassInstance();
}

id sub_231E01CD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_231E115F0();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

id sub_231E01D34(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_231E11520();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithAttributes_];

  return v3;
}

void *sub_231E01DB4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_231E02094(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_231E01E00(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_231E02094((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void *sub_231E01E40(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231E02524(v9, a2, &qword_27DD759C8, &qword_231E23508, type metadata accessor for ConversationDeletionInfo);
  v11 = *(type metadata accessor for ConversationDeletionInfo(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231E02618(a4 + v12, v9, v10 + v12, type metadata accessor for ConversationDeletionInfo);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_231E01F64(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD759B0, &qword_231E234E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD759B8, &qword_231E234F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_231E02094(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231E02524(v9, a2, &qword_27DD759A8, &qword_231E234D8, type metadata accessor for SpotlightReader.MessageWithDate);
  v11 = *(type metadata accessor for SpotlightReader.MessageWithDate(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231E02618(a4 + v12, v9, v10 + v12, type metadata accessor for SpotlightReader.MessageWithDate);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_231E021B8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231E02524(v9, a2, &qword_27DD759A0, &qword_231E234C8, MEMORY[0x277D42490]);
  v11 = *(sub_231E10BE0() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231E02618(a4 + v12, v9, v10 + v12, MEMORY[0x277D42490]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_231E022DC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231E02524(v9, a2, &qword_27DD75108, &unk_231E1E570, MEMORY[0x277D42428]);
  v11 = *(sub_231E10A30() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231E02618(a4 + v12, v9, v10 + v12, MEMORY[0x277D42428]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_231E02400(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231E02524(v9, a2, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368]);
  v11 = *(sub_231E106A0() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231E02618(a4 + v12, v9, v10 + v12, MEMORY[0x277D42368]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_231E02524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = a5(0);
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_231E02618(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_12(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_58();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_58();

    swift_arrayInitWithTakeBackToFront();
  }
}

unint64_t *sub_231E026D8(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_231CFD55C(0, v6, v8);
    v9 = sub_231E02930(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_231E028A0(v11, v6, a2, a1);

    MEMORY[0x23837E1D0](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_231E028A0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_231E02930(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_231E02930(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_231E12220();

      sub_231E116E0();
      v40 = sub_231E12250();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_231E12100();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_231E02CD4(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_231E12220();

      sub_231E116E0();
      v18 = sub_231E12250();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_231E12100();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

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
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_231E02CD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75290, &qword_231E1C900);
  result = sub_231E11D50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_231E12220();

    sub_231E116E0();
    result = sub_231E12250();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_231E02EF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_231E02F68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_231E02F68(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD759B0, &qword_231E234E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD759B8, &qword_231E234F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_231E03098()
{
  OUTLINED_FUNCTION_118();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_6(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v7(0);
  OUTLINED_FUNCTION_79();
  if (v10)
  {
    sub_231E02618(v8 + v24, v14, v21 + v24, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231E03244(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_231E120B0();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_231E118B0();
        *(v12 + 16) = v11;
      }

      v13 = a2(0);
      OUTLINED_FUNCTION_47(v13);
      OUTLINED_FUNCTION_79();
      v15[0] = v12 + v14;
      v15[1] = v11;
      a3(v15, v16, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_231E03900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v32 = v21;
      v33 = a3;
      v30 = v24;
      v31 = v23;
      do
      {
        sub_231E0822C(v24, v18);
        sub_231E0822C(v21, v14);
        v25 = sub_231E0F8D0();
        sub_231E0787C(v14);
        result = sub_231E0787C(v18);
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return result;
        }

        sub_231E07790(v24, v11, type metadata accessor for SpotlightReader.MessageWithDate);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_231E07790(v11, v21, type metadata accessor for SpotlightReader.MessageWithDate);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v33 + 1;
      v21 = v32 + v28;
      v23 = v31 - 1;
      v24 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_231E03B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v59 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v43 - v11;
  v12 = sub_231E10BE0();
  v13 = MEMORY[0x28223BE20](v12);
  v53 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v43 - v19;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v56 = *(v20 + 16);
    v57 = v20 + 16;
    v23 = *(v20 + 72);
    v54 = (v20 + 8);
    v55 = &v43 - v19;
    v24 = v22 + v23 * (a3 - 1);
    v50 = -v23;
    v51 = (v20 + 32);
    v25 = a1 - a3;
    v52 = v22;
    v44 = v23;
    v26 = v22 + v23 * a3;
    while (2)
    {
      v48 = v24;
      v49 = a3;
      v46 = v26;
      v47 = v25;
      do
      {
        v58 = v25;
        v27 = v56;
        v56(v21, v26, v12);
        v27(v17, v24, v12);
        v28 = v60;
        sub_231E10B70();
        v29 = sub_231E0F950();
        result = __swift_getEnumTagSinglePayload(v28, 1, v29);
        if (result == 1)
        {
          __break(1u);
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return result;
        }

        v30 = v59;
        sub_231E10B70();
        result = __swift_getEnumTagSinglePayload(v30, 1, v29);
        if (result == 1)
        {
          goto LABEL_13;
        }

        v31 = v12;
        v32 = v60;
        v33 = v59;
        v34 = sub_231E0F8D0();
        v35 = v17;
        v36 = *(*(v29 - 8) + 8);
        v36(v33, v29);
        v37 = v32;
        v12 = v31;
        v36(v37, v29);
        v17 = v35;
        v38 = *v54;
        (*v54)(v35, v31);
        v21 = v55;
        result = v38(v55, v31);
        v39 = v58;
        if ((v34 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          goto LABEL_14;
        }

        v40 = *v51;
        v41 = v53;
        (*v51)(v53, v26, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = (v40)(v24, v41, v12);
        v24 += v50;
        v26 += v50;
        v42 = __CFADD__(v39, 1);
        v25 = v39 + 1;
      }

      while (!v42);
      a3 = v49 + 1;
      v24 = v48 + v44;
      v25 = v47 - 1;
      v26 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_231E03ECC()
{
  OUTLINED_FUNCTION_35_1();
  v54 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v53 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_139();
  v52 = v14;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_5();
  v16 = OUTLINED_FUNCTION_3_0();
  v17 = v2(v16);
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_139();
  v46 = v19;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_0();
  v51 = v21;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_5();
  v50 = v24;
  if (v6 != v8)
  {
    v26 = *(v23 + 16);
    v25 = v23 + 16;
    v27 = *(v25 + 56);
    v48 = (v12 + 8);
    v49 = v26;
    v47 = (v25 - 8);
    v28 = *v4 + v27 * (v6 - 1);
    v43 = -v27;
    v44 = (v25 + 16);
    v29 = v10 - v6;
    v45 = *v4;
    v38 = v27;
    v30 = *v4 + v27 * v6;
    while (2)
    {
      v41 = v28;
      v42 = v6;
      v39 = v30;
      v40 = v29;
      v55 = v29;
      do
      {
        v49(v50, v30, v17);
        v31 = (v49)(v51, v28, v17);
        v32 = v54(v31);
        v54(v32);
        OUTLINED_FUNCTION_63_10();
        v56 = sub_231E0F8E0();
        v33 = *v48;
        (*v48)(v52, v53);
        v34 = OUTLINED_FUNCTION_63_10();
        v33(v34);
        v35 = *v47;
        (*v47)(v51, v17);
        v35(v50, v17);
        if ((v56 & 1) == 0)
        {
          break;
        }

        if (!v45)
        {
          __break(1u);
          return;
        }

        v36 = *v44;
        (*v44)(v46, v30, v17);
        swift_arrayInitWithTakeFrontToBack();
        v36(v28, v46, v17);
        v28 += v43;
        v30 += v43;
      }

      while (!__CFADD__(v55++, 1));
      v6 = v42 + 1;
      v28 = v41 + v38;
      v29 = v40 - 1;
      v30 = v39 + v38;
      if (v42 + 1 != v8)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_231E04220(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v99 = a1;
  v8 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  v106 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v102 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v110 = &v96 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v111 = &v96 - v14;
  result = MEMORY[0x28223BE20](v13);
  v17 = &v96 - v16;
  v108 = a3;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_100:
    a3 = *v99;
    if (!*v99)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_102:
      v90 = (v20 + 16);
      v91 = *(v20 + 16);
      for (i = v20; v91 >= 2; v20 = i)
      {
        if (!*v108)
        {
          goto LABEL_138;
        }

        v92 = (v20 + 16 * v91);
        v20 = *v92;
        v93 = &v90[2 * v91];
        v94 = v93[1];
        sub_231E0634C(*v108 + *(v106 + 72) * *v92, *v108 + *(v106 + 72) * *v93, *v108 + *(v106 + 72) * v94, a3);
        if (v5)
        {
          break;
        }

        if (v94 < v20)
        {
          goto LABEL_126;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_127;
        }

        *v92 = v20;
        v92[1] = v94;
        v95 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_128;
        }

        v91 = *v90 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v90 = v91;
      }
    }

LABEL_135:
    result = sub_231CF1D4C(v20);
    v20 = result;
    goto LABEL_102;
  }

  v112 = result;
  v97 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v19 + 1;
    if (v19 + 1 < v18)
    {
      a3 = *v108;
      v22 = *(v106 + 72);
      v23 = *v108 + v22 * v21;
      i = v18;
      sub_231E0822C(v23, v17);
      v24 = v111;
      sub_231E0822C(a3 + v22 * v19, v111);
      LODWORD(v105) = sub_231E0F8D0();
      sub_231E0787C(v24);
      result = sub_231E0787C(v17);
      v25 = i;
      v98 = v19;
      v26 = v19 + 2;
      v107 = v22;
      v27 = a3 + v22 * (v19 + 2);
      while (1)
      {
        v28 = v26;
        if (++v21 >= v25)
        {
          break;
        }

        sub_231E0822C(v27, v17);
        v29 = v111;
        sub_231E0822C(v23, v111);
        a3 = sub_231E0F8D0() & 1;
        sub_231E0787C(v29);
        result = sub_231E0787C(v17);
        v27 += v107;
        v23 += v107;
        v26 = v28 + 1;
        v25 = i;
        if ((v105 & 1) != a3)
        {
          goto LABEL_9;
        }
      }

      v21 = v25;
LABEL_9:
      if (v105)
      {
        if (v21 < v98)
        {
          goto LABEL_132;
        }

        if (v98 >= v21)
        {
          v19 = v98;
        }

        else
        {
          i = v20;
          v96 = v5;
          if (v25 >= v28)
          {
            v30 = v28;
          }

          else
          {
            v30 = v25;
          }

          v31 = v107 * (v30 - 1);
          v32 = v107 * v30;
          v33 = v98 * v107;
          v34 = v21;
          v35 = v98;
          do
          {
            if (v35 != --v21)
            {
              a3 = *v108;
              if (!*v108)
              {
                goto LABEL_139;
              }

              sub_231E07790(a3 + v33, v102, type metadata accessor for SpotlightReader.MessageWithDate);
              v36 = v33 < v31 || a3 + v33 >= a3 + v32;
              if (v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v33 != v31)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_231E07790(v102, a3 + v31, type metadata accessor for SpotlightReader.MessageWithDate);
            }

            ++v35;
            v31 -= v107;
            v32 -= v107;
            v33 += v107;
          }

          while (v35 < v21);
          v5 = v96;
          v20 = i;
          v19 = v98;
          v21 = v34;
        }
      }

      else
      {
        v19 = v98;
      }
    }

    v37 = v108[1];
    if (v21 < v37)
    {
      if (__OFSUB__(v21, v19))
      {
        goto LABEL_131;
      }

      if (v21 - v19 < v97)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v19)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_231CF0DE4(0, *(v20 + 16) + 1, 1, v20);
      v20 = result;
    }

    a3 = *(v20 + 16);
    v48 = *(v20 + 24);
    v49 = a3 + 1;
    v107 = v21;
    if (a3 >= v48 >> 1)
    {
      result = sub_231CF0DE4((v48 > 1), a3 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 16) = v49;
    v50 = v20 + 32;
    v51 = (v20 + 32 + 16 * a3);
    v52 = v107;
    *v51 = v19;
    v51[1] = v52;
    v105 = *v99;
    if (!v105)
    {
      goto LABEL_140;
    }

    if (a3)
    {
      i = v20;
      while (1)
      {
        v53 = v49 - 1;
        v54 = (v50 + 16 * (v49 - 1));
        v55 = (v20 + 16 * v49);
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v56 = *(v20 + 32);
          v57 = *(v20 + 40);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_68:
          if (v59)
          {
            goto LABEL_117;
          }

          v71 = *v55;
          v70 = v55[1];
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_120;
          }

          v75 = v54[1];
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_125;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v49 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v49 < 2)
        {
          goto LABEL_119;
        }

        v78 = *v55;
        v77 = v55[1];
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_83:
        if (v74)
        {
          goto LABEL_122;
        }

        v80 = *v54;
        v79 = v54[1];
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_124;
        }

        if (v81 < v73)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v53 - 1 >= v49)
        {
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
          goto LABEL_134;
        }

        if (!*v108)
        {
          goto LABEL_137;
        }

        a3 = v17;
        v85 = (v50 + 16 * (v53 - 1));
        v86 = *v85;
        v87 = v53;
        v88 = (v50 + 16 * v53);
        v20 = v88[1];
        sub_231E0634C(*v108 + *(v106 + 72) * *v85, *v108 + *(v106 + 72) * *v88, *v108 + *(v106 + 72) * v20, v105);
        if (v5)
        {
        }

        if (v20 < v86)
        {
          goto LABEL_112;
        }

        v5 = *(i + 16);
        if (v87 > v5)
        {
          goto LABEL_113;
        }

        *v85 = v86;
        v85[1] = v20;
        if (v87 >= v5)
        {
          goto LABEL_114;
        }

        v49 = v5 - 1;
        result = memmove(v88, v88 + 2, 16 * (v5 - 1 - v87));
        v20 = i;
        *(i + 16) = v5 - 1;
        v89 = v5 > 2;
        v5 = 0;
        v17 = a3;
        if (!v89)
        {
          goto LABEL_97;
        }
      }

      v60 = v50 + 16 * v49;
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_115;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_116;
      }

      v67 = v55[1];
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_118;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_121;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = v54[1];
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_129;
        }

        if (v58 < v84)
        {
          v53 = v49 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v19 = v107;
    v18 = v108[1];
    if (v107 >= v18)
    {
      goto LABEL_100;
    }
  }

  v38 = v19 + v97;
  if (__OFADD__(v19, v97))
  {
    goto LABEL_133;
  }

  if (v38 >= v37)
  {
    v38 = v108[1];
  }

  if (v38 < v19)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v21 == v38)
  {
    goto LABEL_47;
  }

  i = v20;
  v96 = v5;
  a3 = *v108;
  v39 = *(v106 + 72);
  v40 = *v108 + v39 * (v21 - 1);
  v41 = -v39;
  v98 = v19;
  v42 = v19 - v21;
  v100 = v39;
  v101 = v38;
  v43 = a3 + v21 * v39;
LABEL_40:
  v107 = v21;
  v103 = v43;
  v104 = v42;
  v105 = v40;
  v44 = v40;
  while (1)
  {
    sub_231E0822C(v43, v17);
    v45 = v111;
    sub_231E0822C(v44, v111);
    v46 = sub_231E0F8D0();
    sub_231E0787C(v45);
    result = sub_231E0787C(v17);
    if ((v46 & 1) == 0)
    {
LABEL_45:
      v21 = v107 + 1;
      v40 = v105 + v100;
      v42 = v104 - 1;
      v43 = v103 + v100;
      if (v107 + 1 == v101)
      {
        v21 = v101;
        v5 = v96;
        v20 = i;
        v19 = v98;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!a3)
    {
      break;
    }

    v47 = v110;
    sub_231E07790(v43, v110, type metadata accessor for SpotlightReader.MessageWithDate);
    swift_arrayInitWithTakeFrontToBack();
    sub_231E07790(v47, v44, type metadata accessor for SpotlightReader.MessageWithDate);
    v44 += v41;
    v43 += v41;
    v36 = __CFADD__(v42++, 1);
    if (v36)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_231E04A9C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v142 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v163 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v170 = &v139 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v151 = &v139 - v12;
  MEMORY[0x28223BE20](v11);
  v157 = &v139 - v13;
  v14 = sub_231E10BE0();
  v15 = MEMORY[0x28223BE20](v14);
  v148 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v162 = &v139 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v139 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v169 = &v139 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v139 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v156 = &v139 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v141 = &v139 - v30;
  result = MEMORY[0x28223BE20](v29);
  v140 = &v139 - v33;
  v154 = v32;
  v155 = a3;
  v34 = *(a3 + 8);
  if (v34 >= 1)
  {
    v35 = 0;
    v166 = (v32 + 8);
    v167 = v32 + 16;
    v164 = (v32 + 32);
    v143 = MEMORY[0x277D84F90];
    v144 = a4;
    v168 = v14;
    v165 = v21;
    v149 = v26;
    while (1)
    {
      v36 = v35 + 1;
      v147 = v35;
      if (v35 + 1 < v34)
      {
        v37 = v35;
        v159 = v35 + 1;
        v160 = v34;
        v38 = *v155;
        v39 = *(v32 + 72);
        v40 = *v155 + v39 * v36;
        v41 = *(v32 + 16);
        v42 = v140;
        v41(v140, v40, v14);
        v161 = v38;
        v43 = v38 + v39 * v37;
        v44 = v141;
        v152 = v41;
        v41(v141, v43, v14);
        LODWORD(v153) = sub_231DFDD54();
        if (v158)
        {
          v138 = *v166;
          (*v166)(v44, v14);
          v138(v42, v14);
        }

        v45 = *v166;
        (*v166)(v44, v14);
        v150 = v45;
        result = (v45)(v42, v14);
        v46 = v37 + 2;
        v47 = v160;
        a3 = v161 + v39 * (v37 + 2);
        v36 = v159;
        v48 = v39;
        v161 = v39;
        while (1)
        {
          v49 = v46;
          if (v36 + 1 >= v47)
          {
            break;
          }

          v159 = v36;
          v50 = v152;
          (v152)(v156, a3, v14);
          v50(v26, v40, v14);
          v51 = v157;
          sub_231E10B70();
          v52 = sub_231E0F950();
          result = __swift_getEnumTagSinglePayload(v51, 1, v52);
          if (result == 1)
          {
            goto LABEL_147;
          }

          v53 = v49;
          v54 = v151;
          sub_231E10B70();
          result = __swift_getEnumTagSinglePayload(v54, 1, v52);
          if (result == 1)
          {
            goto LABEL_148;
          }

          v55 = v26;
          v56 = v157;
          v57 = sub_231E0F8D0() & 1;
          v58 = *(*(v52 - 8) + 8);
          v58(v54, v52);
          v58(v56, v52);
          v14 = v168;
          v59 = v150;
          v150(v55, v168);
          result = (v59)(v156, v14);
          v48 = v161;
          a3 += v161;
          v40 += v161;
          v36 = v159 + 1;
          v49 = v53;
          v46 = v53 + 1;
          v26 = v55;
          v47 = v160;
          if ((v153 & 1) != v57)
          {
            goto LABEL_12;
          }
        }

        v36 = v47;
LABEL_12:
        if ((v153 & 1) == 0)
        {
          a4 = v144;
LABEL_33:
          v21 = v165;
          goto LABEL_34;
        }

        v60 = v147;
        a4 = v144;
        if (v36 < v147)
        {
          goto LABEL_142;
        }

        if (v147 >= v36)
        {
          goto LABEL_33;
        }

        if (v47 >= v49)
        {
          v61 = v49;
        }

        else
        {
          v61 = v47;
        }

        v62 = v48 * (v61 - 1);
        v63 = v36;
        v64 = v48 * v61;
        v65 = v147 * v48;
        v159 = v63;
        do
        {
          if (v60 != --v63)
          {
            v66 = *v155;
            if (!*v155)
            {
              goto LABEL_151;
            }

            a3 = v66 + v65;
            v67 = *v164;
            v68 = v168;
            (*v164)(v148, v66 + v65, v168);
            v69 = v65 < v62 || a3 >= v66 + v64;
            if (v69)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v65 != v62)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v67)(v66 + v62, v148, v68);
            a4 = v144;
            v48 = v161;
          }

          ++v60;
          v62 -= v48;
          v64 -= v48;
          v65 += v48;
        }

        while (v60 < v63);
        v14 = v168;
        v21 = v165;
        v26 = v149;
        v36 = v159;
      }

LABEL_34:
      v70 = v155[1];
      if (v36 < v70)
      {
        if (__OFSUB__(v36, v147))
        {
          goto LABEL_139;
        }

        if (v36 - v147 < a4)
        {
          v71 = v147 + a4;
          if (__OFADD__(v147, a4))
          {
            goto LABEL_140;
          }

          if (v71 >= v70)
          {
            v71 = v155[1];
          }

          v72 = v163;
          if (v71 >= v147)
          {
            if (v36 == v71)
            {
              goto LABEL_54;
            }

            v73 = *v155;
            v74 = *(v154 + 72);
            v75 = *(v154 + 16);
            v76 = *v155 + v74 * (v36 - 1);
            v160 = -v74;
            v77 = (v147 - v36);
            v161 = v73;
            v145 = v74;
            a3 = v73 + v36 * v74;
            v146 = v71;
LABEL_43:
            v159 = v36;
            v150 = a3;
            v152 = v77;
            v153 = v76;
            while (1)
            {
              v75(v169, a3, v14);
              v75(v21, v76, v14);
              v78 = v170;
              sub_231E10B70();
              v79 = sub_231E0F950();
              result = __swift_getEnumTagSinglePayload(v78, 1, v79);
              if (result == 1)
              {
                goto LABEL_145;
              }

              sub_231E10B70();
              result = __swift_getEnumTagSinglePayload(v72, 1, v79);
              if (result == 1)
              {
                break;
              }

              v80 = v170;
              v81 = sub_231E0F8D0();
              v82 = *(*(v79 - 8) + 8);
              v82(v72, v79);
              v83 = v80;
              v21 = v165;
              v82(v83, v79);
              v84 = *v166;
              v14 = v168;
              (*v166)(v21, v168);
              result = (v84)(v169, v14);
              if ((v81 & 1) == 0)
              {
                v72 = v163;
LABEL_52:
                v36 = v159 + 1;
                v76 = v153 + v145;
                v77 = v152 - 1;
                a3 = v150 + v145;
                if (v159 + 1 == v146)
                {
                  v36 = v146;
                  v26 = v149;
                  goto LABEL_54;
                }

                goto LABEL_43;
              }

              if (!v161)
              {
                goto LABEL_146;
              }

              v85 = *v164;
              v86 = v162;
              (*v164)(v162, a3, v14);
              swift_arrayInitWithTakeFrontToBack();
              v85(v76, v86, v14);
              v76 += v160;
              a3 += v160;
              v69 = __CFADD__(v77++, 1);
              v72 = v163;
              if (v69)
              {
                goto LABEL_52;
              }
            }

            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          result = sub_231CF1D4C(v36);
          v36 = result;
LABEL_109:
          v129 = v36;
          v131 = *(v36 + 16);
          v36 += 16;
          for (i = v131; i >= 2; *v36 = i)
          {
            if (!*v155)
            {
              goto LABEL_150;
            }

            v132 = (v129 + 16 * i);
            v133 = *v132;
            v134 = (v36 + 16 * i);
            v135 = v134[1];
            v136 = v158;
            sub_231E067CC((*v155 + *(v154 + 72) * *v132), *v155 + *(v154 + 72) * *v134, (*v155 + *(v154 + 72) * v135), a3);
            v158 = v136;
            if (v136)
            {
              break;
            }

            if (v135 < v133)
            {
              goto LABEL_134;
            }

            if (i - 2 >= *v36)
            {
              goto LABEL_135;
            }

            *v132 = v133;
            v132[1] = v135;
            v137 = *v36 - i;
            if (*v36 < i)
            {
              goto LABEL_136;
            }

            i = *v36 - 1;
            result = memmove(v134, v134 + 2, 16 * v137);
          }
        }
      }

LABEL_54:
      v87 = v143;
      if (v36 < v147)
      {
        goto LABEL_138;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_231CF0DE4(0, *(v87 + 16) + 1, 1, v87);
        v87 = result;
      }

      a3 = *(v87 + 16);
      v88 = *(v87 + 24);
      v89 = a3 + 1;
      v159 = v36;
      if (a3 >= v88 >> 1)
      {
        result = sub_231CF0DE4((v88 > 1), a3 + 1, 1, v87);
        v87 = result;
      }

      *(v87 + 16) = v89;
      v36 = v87 + 32;
      v90 = (v87 + 32 + 16 * a3);
      v91 = v159;
      *v90 = v147;
      v90[1] = v91;
      v161 = *v142;
      if (!v161)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      if (a3)
      {
        while (1)
        {
          v92 = v89 - 1;
          v93 = (v36 + 16 * (v89 - 1));
          v94 = (v87 + 16 * v89);
          if (v89 >= 4)
          {
            break;
          }

          if (v89 == 3)
          {
            v95 = *(v87 + 32);
            v96 = *(v87 + 40);
            v105 = __OFSUB__(v96, v95);
            v97 = v96 - v95;
            v98 = v105;
LABEL_74:
            if (v98)
            {
              goto LABEL_125;
            }

            v110 = *v94;
            v109 = v94[1];
            v111 = __OFSUB__(v109, v110);
            v112 = v109 - v110;
            v113 = v111;
            if (v111)
            {
              goto LABEL_128;
            }

            v114 = v93[1];
            v115 = v114 - *v93;
            if (__OFSUB__(v114, *v93))
            {
              goto LABEL_131;
            }

            if (__OFADD__(v112, v115))
            {
              goto LABEL_133;
            }

            if (v112 + v115 >= v97)
            {
              if (v97 < v115)
              {
                v92 = v89 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          if (v89 < 2)
          {
            goto LABEL_127;
          }

          v117 = *v94;
          v116 = v94[1];
          v105 = __OFSUB__(v116, v117);
          v112 = v116 - v117;
          v113 = v105;
LABEL_89:
          if (v113)
          {
            goto LABEL_130;
          }

          v119 = *v93;
          v118 = v93[1];
          v105 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v105)
          {
            goto LABEL_132;
          }

          if (v120 < v112)
          {
            goto LABEL_103;
          }

LABEL_96:
          if (v92 - 1 >= v89)
          {
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
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          if (!*v155)
          {
            goto LABEL_149;
          }

          v124 = (v36 + 16 * (v92 - 1));
          v125 = *v124;
          a3 = v36 + 16 * v92;
          v126 = *(a3 + 8);
          v127 = v158;
          sub_231E067CC((*v155 + *(v154 + 72) * *v124), *v155 + *(v154 + 72) * *a3, (*v155 + *(v154 + 72) * v126), v161);
          v158 = v127;
          if (v127)
          {
          }

          if (v126 < v125)
          {
            goto LABEL_120;
          }

          v128 = *(v87 + 16);
          if (v92 > v128)
          {
            goto LABEL_121;
          }

          *v124 = v125;
          v124[1] = v126;
          if (v92 >= v128)
          {
            goto LABEL_122;
          }

          v89 = v128 - 1;
          result = memmove((v36 + 16 * v92), (a3 + 16), 16 * (v128 - 1 - v92));
          *(v87 + 16) = v128 - 1;
          v14 = v168;
          v21 = v165;
          v26 = v149;
          if (v128 <= 2)
          {
            goto LABEL_103;
          }
        }

        v99 = v36 + 16 * v89;
        v100 = *(v99 - 64);
        v101 = *(v99 - 56);
        v105 = __OFSUB__(v101, v100);
        v102 = v101 - v100;
        if (v105)
        {
          goto LABEL_123;
        }

        v104 = *(v99 - 48);
        v103 = *(v99 - 40);
        v105 = __OFSUB__(v103, v104);
        v97 = v103 - v104;
        v98 = v105;
        if (v105)
        {
          goto LABEL_124;
        }

        v106 = v94[1];
        v107 = v106 - *v94;
        if (__OFSUB__(v106, *v94))
        {
          goto LABEL_126;
        }

        v105 = __OFADD__(v97, v107);
        v108 = v97 + v107;
        if (v105)
        {
          goto LABEL_129;
        }

        if (v108 >= v102)
        {
          v122 = *v93;
          v121 = v93[1];
          v105 = __OFSUB__(v121, v122);
          v123 = v121 - v122;
          if (v105)
          {
            goto LABEL_137;
          }

          if (v97 < v123)
          {
            v92 = v89 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_74;
      }

LABEL_103:
      v143 = v87;
      v32 = v154;
      v34 = v155[1];
      v35 = v159;
      a4 = v144;
      if (v159 >= v34)
      {
        goto LABEL_107;
      }
    }
  }

  v143 = MEMORY[0x277D84F90];
LABEL_107:
  a3 = *v142;
  if (*v142)
  {
    v36 = v143;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_109;
    }

    goto LABEL_143;
  }

LABEL_153:
  __break(1u);
  return result;
}

void sub_231E05790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_35_1();
  v168 = v24;
  v169 = v25;
  v194 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v158 = v33;
  v167 = a22;
  v166 = a21;
  v193 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_139();
  v192 = v37;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_25_5();
  v191 = v39;
  v40 = OUTLINED_FUNCTION_3_0();
  v41 = v28(v40);
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_0();
  v182 = v44;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10_0();
  v190 = v46;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_25_5();
  v189 = v49;
  v170 = v48;
  v171 = v32;
  v50 = v32[1];
  if (v50 < 1)
  {
    v52 = MEMORY[0x277D84F90];
    v53 = v22;
LABEL_100:
    v23 = *v158;
    if (!*v158)
    {
      goto LABEL_141;
    }

    v55 = v53;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v149 = v52 + 16;
      v150 = *(v52 + 2);
      v151 = v55;
      while (v150 >= 2)
      {
        if (!*v171)
        {
          goto LABEL_138;
        }

        v55 = v52;
        v152 = &v52[16 * v150];
        v52 = *v152;
        v153 = &v149[2 * v150];
        v154 = v153[1];
        OUTLINED_FUNCTION_104_5(*v171 + *(v170 + 72) * *v152, *v171 + *(v170 + 72) * *v153, *v171 + *(v170 + 72) * v154, v23, v168, v169, v147, v148, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167);
        if (v151)
        {
          break;
        }

        if (v154 < v52)
        {
          goto LABEL_126;
        }

        if (v150 - 2 >= *v149)
        {
          goto LABEL_127;
        }

        *v152 = v52;
        *(v152 + 1) = v154;
        v155 = *v149 - v150;
        if (*v149 < v150)
        {
          goto LABEL_128;
        }

        v150 = *v149 - 1;
        memmove(v153, v153 + 2, 16 * v155);
        *v149 = v150;
        v52 = v55;
      }

LABEL_110:

      OUTLINED_FUNCTION_33_0();
      return;
    }

LABEL_135:
    v52 = sub_231CF1D4C(v52);
    goto LABEL_102;
  }

  v156 = v30;
  v51 = 0;
  v187 = (v35 + 8);
  v185 = (v48 + 32);
  v186 = (v48 + 8);
  v52 = MEMORY[0x277D84F90];
  v188 = v41;
  v53 = v22;
  while (1)
  {
    v54 = v51;
    v55 = v51 + 1;
    if (v51 + 1 < v50)
    {
      v157 = v52;
      v172 = v53;
      v175 = v51 + 1;
      v56 = *v171;
      v195 = *v171;
      v57 = *(v48 + 72);
      v58 = v51;
      v159 = v51;
      v59 = *v171 + v57 * v55;
      v60 = *(v48 + 16);
      v61 = OUTLINED_FUNCTION_45_6();
      v178 = v62;
      v60(v61);
      v23 = v190;
      v164 = v60;
      v63 = (v60)(v190, v56 + v57 * v58, v41);
      v52 = v191;
      v64 = v194(v63);
      v194(v64);
      LODWORD(v165) = sub_231E0F8E0();
      v65 = v41;
      v66 = *v187;
      (*v187)(v192, v193);
      v163 = v66;
      v66(v191, v193);
      v67 = *(v170 + 8);
      v67(v190, v65);
      v162 = v67;
      v67(v189, v65);
      v68 = v178;
      v69 = v159 + 2;
      v180 = v57;
      v70 = v195 + v57 * (v159 + 2);
      while (1)
      {
        v71 = v69;
        if (++v175 >= v68)
        {
          break;
        }

        v23 = v189;
        v196 = v69;
        v164(v189, v70, v188);
        v72 = OUTLINED_FUNCTION_45_6();
        v73 = (v164)(v72);
        v74 = v194(v73);
        v194(v74);
        v183 = sub_231E0F8E0() & 1;
        v52 = v187;
        v66(v192, v193);
        v75 = OUTLINED_FUNCTION_59();
        (v66)(v75);
        v67(v190, v188);
        v67(v189, v188);
        v71 = v196;
        v68 = v178;
        v70 += v180;
        v59 += v180;
        v69 = v196 + 1;
        if ((v165 & 1) != v183)
        {
          goto LABEL_9;
        }
      }

      v175 = v68;
LABEL_9:
      if (v165)
      {
        v55 = v175;
        v54 = v159;
        v41 = v188;
        if (v175 < v159)
        {
          goto LABEL_132;
        }

        if (v159 >= v175)
        {
          OUTLINED_FUNCTION_89_7();
          goto LABEL_32;
        }

        if (v68 >= v71)
        {
          v76 = v71;
        }

        else
        {
          v76 = v68;
        }

        v77 = v180 * (v76 - 1);
        v78 = v180 * v76;
        v79 = v175;
        v80 = v159;
        v81 = v159 * v180;
        v53 = v172;
        v48 = v170;
        do
        {
          if (v80 != --v79)
          {
            v23 = *v171;
            if (!*v171)
            {
              goto LABEL_139;
            }

            v82 = v53;
            v197 = *v185;
            (*v185)(v161, v23 + v81, v188);
            v83 = v81 < v77 || v23 + v81 >= (v23 + v78);
            if (v83)
            {
              OUTLINED_FUNCTION_65_9();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v81 != v77)
            {
              OUTLINED_FUNCTION_65_9();
              swift_arrayInitWithTakeBackToFront();
            }

            v197(v23 + v77, v161, v188);
            v53 = v82;
            v48 = v170;
          }

          ++v80;
          v77 -= v180;
          v78 -= v180;
          v81 += v180;
        }

        while (v80 < v79);
        v52 = v157;
      }

      else
      {
        OUTLINED_FUNCTION_89_7();
        v41 = v188;
      }

      v55 = v175;
      v54 = v159;
    }

LABEL_32:
    v84 = v171[1];
    if (v55 < v84)
    {
      if (__OFSUB__(v55, v54))
      {
        goto LABEL_131;
      }

      if (v55 - v54 < v156)
      {
        break;
      }
    }

LABEL_48:
    if (v55 < v54)
    {
      goto LABEL_130;
    }

    v174 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v139 = OUTLINED_FUNCTION_0_1();
      v52 = sub_231CF0DE4(v139, v140, v141, v52);
    }

    v98 = *(v52 + 2);
    v99 = v98 + 1;
    v48 = v170;
    if (v98 >= *(v52 + 3) >> 1)
    {
      OUTLINED_FUNCTION_32_12();
      v146 = sub_231CF0DE4(v142, v143, v144, v145);
      v48 = v170;
      v52 = v146;
    }

    *(v52 + 2) = v99;
    v100 = v52 + 32;
    v101 = &v52[16 * v98 + 32];
    *v101 = v54;
    *(v101 + 1) = v55;
    v199 = *v158;
    if (!*v158)
    {
      goto LABEL_140;
    }

    v177 = v55;
    if (v98)
    {
      while (1)
      {
        v102 = v99 - 1;
        v103 = &v100[16 * v99 - 16];
        v104 = &v52[16 * v99];
        if (v99 >= 4)
        {
          break;
        }

        if (v99 == 3)
        {
          v105 = *(v52 + 4);
          v106 = *(v52 + 5);
          v115 = __OFSUB__(v106, v105);
          v107 = v106 - v105;
          v108 = v115;
LABEL_68:
          if (v108)
          {
            goto LABEL_117;
          }

          v120 = *v104;
          v119 = *(v104 + 1);
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_120;
          }

          v124 = *(v103 + 1);
          v125 = v124 - *v103;
          if (__OFSUB__(v124, *v103))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v122, v125))
          {
            goto LABEL_125;
          }

          if (v122 + v125 >= v107)
          {
            if (v107 < v125)
            {
              v102 = v99 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v99 < 2)
        {
          goto LABEL_119;
        }

        v127 = *v104;
        v126 = *(v104 + 1);
        v115 = __OFSUB__(v126, v127);
        v122 = v126 - v127;
        v123 = v115;
LABEL_83:
        if (v123)
        {
          goto LABEL_122;
        }

        v129 = *v103;
        v128 = *(v103 + 1);
        v115 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v115)
        {
          goto LABEL_124;
        }

        if (v130 < v122)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v102 - 1 >= v99)
        {
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
          goto LABEL_134;
        }

        if (!*v171)
        {
          goto LABEL_137;
        }

        v134 = &v100[16 * v102 - 16];
        v135 = *v134;
        v23 = v100;
        v136 = &v100[16 * v102];
        v137 = *(v136 + 1);
        OUTLINED_FUNCTION_104_5(*v171 + *(v48 + 72) * *v134, *v171 + *(v48 + 72) * *v136, *v171 + *(v48 + 72) * v137, v199, v168, v169, v96, v97, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167);
        if (v174)
        {
          goto LABEL_110;
        }

        if (v137 < v135)
        {
          goto LABEL_112;
        }

        v55 = v52;
        v52 = *(v52 + 2);
        if (v102 > v52)
        {
          goto LABEL_113;
        }

        *v134 = v135;
        *(v134 + 1) = v137;
        if (v102 >= v52)
        {
          goto LABEL_114;
        }

        v174 = 0;
        v99 = (v52 - 1);
        memmove(v136, v136 + 16, 16 * &v52[-v102 - 1]);
        *(v55 + 16) = v52 - 1;
        v138 = v52 > 2;
        v52 = v55;
        v48 = v170;
        v100 = v23;
        if (!v138)
        {
          goto LABEL_97;
        }
      }

      v109 = &v100[16 * v99];
      v110 = *(v109 - 8);
      v111 = *(v109 - 7);
      v115 = __OFSUB__(v111, v110);
      v112 = v111 - v110;
      if (v115)
      {
        goto LABEL_115;
      }

      v114 = *(v109 - 6);
      v113 = *(v109 - 5);
      v115 = __OFSUB__(v113, v114);
      v107 = v113 - v114;
      v108 = v115;
      if (v115)
      {
        goto LABEL_116;
      }

      v116 = *(v104 + 1);
      v117 = v116 - *v104;
      if (__OFSUB__(v116, *v104))
      {
        goto LABEL_118;
      }

      v115 = __OFADD__(v107, v117);
      v118 = v107 + v117;
      if (v115)
      {
        goto LABEL_121;
      }

      if (v118 >= v112)
      {
        v132 = *v103;
        v131 = *(v103 + 1);
        v115 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v115)
        {
          goto LABEL_129;
        }

        if (v107 < v133)
        {
          v102 = v99 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v53 = v174;
    v50 = v171[1];
    v51 = v177;
    if (v177 >= v50)
    {
      goto LABEL_100;
    }
  }

  v85 = v54 + v156;
  if (__OFADD__(v54, v156))
  {
    goto LABEL_133;
  }

  if (v85 >= v84)
  {
    v85 = v171[1];
  }

  if (v85 < v54)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v55 == v85)
  {
    goto LABEL_48;
  }

  v157 = v52;
  v173 = v53;
  v86 = *(v48 + 72);
  v184 = *(v48 + 16);
  v87 = *v171 + v86 * (v55 - 1);
  v179 = -v86;
  v159 = v54;
  v23 = v54 - v55;
  v181 = *v171;
  v160 = v86;
  v88 = *v171 + v55 * v86;
  v162 = v85;
LABEL_41:
  v176 = v55;
  v163 = v88;
  v164 = v23;
  v165 = v87;
  while (1)
  {
    v89 = OUTLINED_FUNCTION_45_6();
    v184(v89);
    v90 = (v184)(v190, v87, v41);
    v91 = v194(v90);
    v194(v91);
    v198 = sub_231E0F8E0();
    v92 = *v187;
    (*v187)(v192, v193);
    v41 = v188;
    v92(v191, v193);
    v93 = *v186;
    v94 = OUTLINED_FUNCTION_86_8();
    v93(v94);
    (v93)(v189, v188);
    if ((v198 & 1) == 0)
    {
LABEL_46:
      v55 = v176 + 1;
      v87 = v165 + v160;
      v23 = v164 - 1;
      v88 = v163 + v160;
      if (v176 + 1 == v162)
      {
        v55 = v162;
        v53 = v173;
        v54 = v159;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v181)
    {
      break;
    }

    v95 = *v185;
    (*v185)(v182, v88, v188);
    OUTLINED_FUNCTION_41_3();
    swift_arrayInitWithTakeFrontToBack();
    v95(v87, v182, v188);
    v87 += v179;
    v88 += v179;
    v83 = __CFADD__(v23++, 1);
    if (v83)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_231E0634C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  v9 = MEMORY[0x28223BE20](v50);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = v44 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v53 = a1;
  v52 = a4;
  v20 = v18 / v16;
  v44[1] = v4;
  if ((a2 - a1) / v16 >= v18 / v16)
  {
    sub_231E02618(a2, v18 / v16, a4, type metadata accessor for SpotlightReader.MessageWithDate);
    v26 = a4 + v20 * v16;
    v27 = -v16;
    v28 = v26;
    v29 = a3;
    v47 = v27;
    v48 = a4;
    v46 = a1;
LABEL_37:
    v30 = a2 + v27;
    v31 = v29;
    v44[0] = v28;
    v32 = v27;
    v49 = a2 + v27;
    while (1)
    {
      if (v26 <= a4)
      {
        v53 = a2;
        v51 = v28;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v45 = v28;
      v33 = v31 + v32;
      v34 = v26 + v32;
      v35 = v30;
      v36 = v26;
      sub_231E0822C(v26 + v32, v14);
      sub_231E0822C(v35, v11);
      v37 = sub_231E0F8D0();
      v38 = v11;
      v39 = v37;
      v40 = v38;
      sub_231E0787C(v38);
      sub_231E0787C(v14);
      if (v39)
      {
        v44[0] = v36;
        v42 = v31 < a2 || v33 >= a2;
        v29 = v31 + v32;
        if (v42)
        {
          a2 = v49;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v45;
          a1 = v46;
          v11 = v40;
          v27 = v47;
          a4 = v48;
          v26 = v44[0];
        }

        else
        {
          a1 = v46;
          v28 = v45;
          v17 = v31 == a2;
          a2 = v49;
          v11 = v40;
          v27 = v47;
          a4 = v48;
          v26 = v44[0];
          if (!v17)
          {
            a2 = v49;
            v43 = v45;
            swift_arrayInitWithTakeBackToFront();
            v26 = v44[0];
            v28 = v43;
          }
        }

        goto LABEL_37;
      }

      if (v31 < v36 || v33 >= v36)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 += v32;
        v26 = v34;
        v28 = v34;
        v11 = v40;
        v32 = v47;
        a4 = v48;
        v30 = v49;
        a1 = v46;
      }

      else
      {
        v28 = v34;
        v17 = v36 == v31;
        v31 += v32;
        v26 = v34;
        v11 = v40;
        v32 = v47;
        a4 = v48;
        v30 = v49;
        a1 = v46;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v49;
          v31 = v33;
          v26 = v34;
          v28 = v34;
        }
      }
    }

    v53 = a2;
    v51 = v44[0];
  }

  else
  {
    sub_231E02618(a1, (a2 - a1) / v16, a4, type metadata accessor for SpotlightReader.MessageWithDate);
    v21 = a4 + (a2 - a1) / v16 * v16;
    v51 = v21;
    while (a4 < v21 && a2 < a3)
    {
      sub_231E0822C(a2, v14);
      sub_231E0822C(a4, v11);
      v23 = sub_231E0F8D0();
      sub_231E0787C(v11);
      sub_231E0787C(v14);
      if (v23)
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v52 = a4 + v16;
        a4 += v16;
      }

      a1 += v16;
      v53 = a1;
    }
  }

LABEL_59:
  sub_231E075D4(&v53, &v52, &v51, type metadata accessor for SpotlightReader.MessageWithDate);
  return 1;
}

uint64_t sub_231E067CC(char *a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v91 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = &v87 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v94 = &v87 - v14;
  MEMORY[0x28223BE20](v13);
  v100 = &v87 - v15;
  v101 = sub_231E10BE0();
  v16 = MEMORY[0x28223BE20](v101);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v92 = &v87 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v87 - v22;
  result = MEMORY[0x28223BE20](v21);
  v99 = &v87 - v26;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_64;
  }

  v30 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_65;
  }

  v95 = a3;
  v32 = a2;
  v33 = (a2 - a1) / v28;
  v104 = a1;
  v103 = a4;
  v97 = (v25 + 8);
  v98 = (v25 + 16);
  v34 = v30 / v28;
  if (v33 >= v30 / v28)
  {
    v94 = a1;
    sub_231E02618(v32, v30 / v28, a4, MEMORY[0x277D42490]);
    v57 = a4;
    v58 = (a4 + v34 * v28);
    v59 = v32;
    v60 = -v28;
    v61 = v58;
    v62 = v95;
    v63 = v18;
    v89 = a4;
    v100 = v60;
LABEL_38:
    v64 = v59 + v60;
    v65 = v62;
    v87 = v61;
    v66 = v61;
    v90 = v59 + v60;
    while (1)
    {
      if (v58 <= v57)
      {
        v104 = v59;
        v102 = v66;
        goto LABEL_62;
      }

      if (v59 <= v94)
      {
        break;
      }

      v67 = v65;
      v88 = v66;
      v99 = v58;
      v68 = *v98;
      v95 = &v58[v60];
      v69 = v101;
      v68(v92);
      (v68)(v63, v64, v69);
      v70 = v93;
      sub_231E10B70();
      v71 = v63;
      v72 = sub_231E0F950();
      result = __swift_getEnumTagSinglePayload(v70, 1, v72);
      if (result == 1)
      {
        goto LABEL_68;
      }

      v73 = v101;
      v74 = v59;
      v75 = v91;
      sub_231E10B70();
      result = __swift_getEnumTagSinglePayload(v75, 1, v72);
      if (result == 1)
      {
        goto LABEL_69;
      }

      v76 = v67;
      v62 = &v100[v67];
      v77 = v93;
      LODWORD(v96) = sub_231E0F8D0();
      v78 = *(*(v72 - 8) + 8);
      v78(v75, v72);
      v78(v77, v72);
      v79 = *v97;
      (*v97)(v71, v73);
      v79(v92, v73);
      v63 = v71;
      if (v96)
      {
        v83 = v74;
        v84 = v76 < v74 || v62 >= v74;
        v57 = v89;
        v85 = v90;
        v58 = v99;
        if (v84)
        {
          swift_arrayInitWithTakeFrontToBack();
          v59 = v85;
          v61 = v88;
          v60 = v100;
        }

        else
        {
          v86 = v88;
          v61 = v88;
          v59 = v90;
          v60 = v100;
          if (v76 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
            v59 = v85;
            v61 = v86;
          }
        }

        goto LABEL_38;
      }

      v80 = v76 < v99 || v62 >= v99;
      v57 = v89;
      v64 = v90;
      v59 = v74;
      if (v80)
      {
        v81 = v95;
        swift_arrayInitWithTakeFrontToBack();
        v65 = v62;
        v58 = v81;
        v66 = v81;
        v60 = v100;
      }

      else
      {
        v82 = v95;
        v66 = v95;
        v65 = v62;
        v58 = v95;
        v60 = v100;
        if (v99 != v76)
        {
          swift_arrayInitWithTakeBackToFront();
          v65 = v62;
          v58 = v82;
          v66 = v82;
        }
      }
    }

    v104 = v59;
    v102 = v87;
  }

  else
  {
    sub_231E02618(a1, v33, a4, MEMORY[0x277D42490]);
    v93 = (a4 + v33 * v28);
    v102 = v93;
    v35 = v32;
    v96 = v28;
    while (a4 < v93 && v35 < v95)
    {
      v37 = *v98;
      v38 = v35;
      v39 = v35;
      v40 = v101;
      (*v98)(v99, v39, v101);
      (v37)(v23, a4, v40);
      v41 = v100;
      sub_231E10B70();
      v42 = sub_231E0F950();
      result = __swift_getEnumTagSinglePayload(v41, 1, v42);
      if (result == 1)
      {
        goto LABEL_66;
      }

      v43 = a4;
      v44 = v94;
      sub_231E10B70();
      result = __swift_getEnumTagSinglePayload(v44, 1, v42);
      if (result == 1)
      {
        goto LABEL_67;
      }

      v45 = v100;
      v46 = sub_231E0F8D0();
      v47 = v44;
      v48 = *(*(v42 - 8) + 8);
      v48(v47, v42);
      v48(v45, v42);
      v49 = *v97;
      v50 = v23;
      v51 = v23;
      v52 = v101;
      (*v97)(v51, v101);
      v49(v99, v52);
      if (v46)
      {
        v53 = v38;
        v54 = v96;
        v35 = v53 + v96;
        v55 = a1 < v53 || a1 >= v35;
        a4 = v43;
        if (v55)
        {
          swift_arrayInitWithTakeFrontToBack();
          v23 = v50;
        }

        else
        {
          v23 = v50;
          if (a1 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a4 = v43 + v96;
        v56 = a1 < v43 || a1 >= a4;
        v35 = v38;
        if (v56)
        {
          swift_arrayInitWithTakeFrontToBack();
          v23 = v50;
        }

        else
        {
          v23 = v50;
          if (a1 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v103 = a4;
        v54 = v96;
      }

      a1 += v54;
      v104 = a1;
    }
  }

LABEL_62:
  sub_231E075D4(&v104, &v103, &v102, MEMORY[0x277D42490]);
  return 1;
}

void sub_231E06F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35_1();
  a19 = v21;
  a20 = v22;
  v108 = v23;
  v121 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v120 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_139();
  v119 = v40;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_25_5();
  v118 = v42;
  v43 = OUTLINED_FUNCTION_3_0();
  v126 = v28(v43);
  v44 = MEMORY[0x28223BE20](v126);
  v117 = v107 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v123 = v107 - v47;
  v49 = *(v48 + 72);
  if (!v49)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v50 = v34 - v36 == 0x8000000000000000 && v49 == -1;
  if (v50)
  {
    goto LABEL_61;
  }

  v51 = v32 - v34;
  if (v32 - v34 == 0x8000000000000000 && v49 == -1)
  {
    goto LABEL_62;
  }

  v53 = v26;
  v54 = v34;
  v107[1] = v20;
  v55 = (v34 - v36) / v49;
  a10 = v36;
  v128 = v30;
  v115 = (v38 + 8);
  v116 = (v46 + 16);
  v114 = (v46 + 8);
  v56 = v51 / v49;
  if (v55 >= v51 / v49)
  {
    v125 = v36;
    sub_231E02618(v34, v51 / v49, v30, v53);
    v111 = v30;
    v84 = v30 + v56 * v49;
    v85 = -v49;
    v86 = v84;
    v87 = v121;
    v110 = -v49;
LABEL_37:
    v112 = v54 + v85;
    v107[0] = v86;
    v124 = v54;
    while (1)
    {
      if (v84 <= v111)
      {
        a10 = v54;
        v127 = v86;
        goto LABEL_59;
      }

      if (v54 <= v125)
      {
        break;
      }

      v109 = v86;
      v122 = v32 + v85;
      v88 = v84 + v85;
      v89 = v84;
      v90 = *v116;
      v91 = v87;
      v92 = v126;
      v113 = v32;
      (v90)(v123, v88, v126);
      v93 = v117;
      v94 = (v90)(v117, v112, v92);
      v95 = v118;
      v96 = v91(v94);
      v97 = v119;
      v91(v96);
      LOBYTE(v91) = sub_231E0F8E0();
      v98 = *v115;
      v99 = v97;
      v100 = v120;
      (*v115)(v99, v120);
      v98(v95, v100);
      v101 = *v114;
      (*v114)(v93, v92);
      v101(v123, v92);
      if (v91)
      {
        v84 = v89;
        v32 = v122;
        if (v113 < v124 || v122 >= v124)
        {
          v54 = v112;
          OUTLINED_FUNCTION_28_13();
          swift_arrayInitWithTakeFrontToBack();
          v86 = v109;
          v85 = v110;
          v87 = v121;
        }

        else
        {
          v105 = v109;
          v86 = v109;
          v106 = v112;
          v54 = v112;
          v87 = v121;
          v85 = v110;
          if (v113 != v124)
          {
            OUTLINED_FUNCTION_28_13();
            swift_arrayInitWithTakeBackToFront();
            v54 = v106;
            v86 = v105;
          }
        }

        goto LABEL_37;
      }

      v102 = v122;
      if (v113 < v89 || v122 >= v89)
      {
        OUTLINED_FUNCTION_28_13();
        swift_arrayInitWithTakeFrontToBack();
        v32 = v102;
        v84 = v88;
        v86 = v88;
        v87 = v121;
        v54 = v124;
        v85 = v110;
      }

      else
      {
        v86 = v88;
        v50 = v89 == v113;
        v32 = v122;
        v84 = v88;
        v87 = v121;
        v54 = v124;
        v85 = v110;
        if (!v50)
        {
          OUTLINED_FUNCTION_28_13();
          swift_arrayInitWithTakeBackToFront();
          v32 = v102;
          v84 = v88;
          v86 = v88;
        }
      }
    }

    a10 = v54;
    v127 = v107[0];
  }

  else
  {
    v57 = OUTLINED_FUNCTION_41_3();
    sub_231E02618(v57, v58, v30, v59);
    v112 = v49;
    v113 = v30 + v55 * v49;
    v127 = v113;
    v60 = v34;
    v122 = v32;
    while (v30 < v113 && v60 < v32)
    {
      v124 = v60;
      v125 = v36;
      v62 = *v116;
      v63 = v123;
      v64 = OUTLINED_FUNCTION_41_3();
      v65 = v126;
      v62(v64);
      v66 = (v62)(v117, v30, v65);
      v67 = v118;
      v68 = v121;
      v69 = v121(v66);
      v70 = v119;
      v68(v69);
      v71 = sub_231E0F8E0();
      v72 = *v115;
      v73 = v70;
      v74 = v30;
      v75 = v120;
      (*v115)(v73, v120);
      v72(v67, v75);
      v76 = *v114;
      v77 = OUTLINED_FUNCTION_86_8();
      (v76)(v77);
      v76(v63, v65);
      if (v71)
      {
        v78 = v112;
        v79 = v125;
        v80 = v124 + v112;
        v81 = v125 < v124 || v125 >= v80;
        v30 = v74;
        if (v81)
        {
          OUTLINED_FUNCTION_19_13();
          swift_arrayInitWithTakeFrontToBack();
          v60 = v80;
          v32 = v122;
        }

        else
        {
          v32 = v122;
          if (v125 != v124)
          {
            OUTLINED_FUNCTION_19_13();
            swift_arrayInitWithTakeBackToFront();
          }

          v60 = v80;
        }
      }

      else
      {
        v60 = v124;
        v79 = v125;
        v78 = v112;
        v30 = v74 + v112;
        v82 = v125 < v74 || v125 >= v30;
        v83 = v74;
        if (v82)
        {
          OUTLINED_FUNCTION_19_13();
          swift_arrayInitWithTakeFrontToBack();
          v32 = v122;
        }

        else
        {
          v32 = v122;
          if (v125 != v83)
          {
            OUTLINED_FUNCTION_19_13();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v128 = v30;
      }

      v36 = v79 + v78;
      a10 = v36;
    }
  }

LABEL_59:
  sub_231E075D4(&a10, &v128, &v127, v108);
  OUTLINED_FUNCTION_33_0();
}

void sub_231E075D4(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_231E076B0(uint64_t a1, void *a2)
{
  v3 = sub_231E11850();

  [a2 setBundleIDs_];
}

void sub_231E0771C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231E115F0();

  [a3 setReason_];
}

uint64_t sub_231E07790(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_59_0();
  v5(v4);
  return a2;
}

unint64_t sub_231E077EC()
{
  result = qword_2814CB3F8[0];
  if (!qword_2814CB3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814CB3F8);
  }

  return result;
}

uint64_t sub_231E0787C(uint64_t a1)
{
  v2 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231E07948(void *a1)
{
  v2 = [a1 providerDataTypeIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11870();

  return v3;
}

uint64_t sub_231E079AC(void *a1)
{
  v2 = [a1 containerIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11620();

  return v3;
}

unint64_t sub_231E07AA8()
{
  result = qword_27DD75988;
  if (!qword_27DD75988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75988);
  }

  return result;
}

unint64_t sub_231E07B00()
{
  result = qword_27DD75990;
  if (!qword_27DD75990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75990);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpotlightPrivateKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SpotlightReaderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231E07D04(uint64_t a1)
{
  result = sub_231E0F950();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231E0F950();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231E0F950();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231E07ED4(uint64_t a1)
{
  result = sub_231E0F950();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_231E07F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_100_8();
  a25 = v26;
  a26 = v28;
  v29 = v27;
  if (!(v27 >> 62))
  {
    v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_9:
    OUTLINED_FUNCTION_102_6();
    return;
  }

  v30 = sub_231E11ED0();
  if (!v30)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v30 >= 1)
  {
    v31 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x23837D2A0](v31, v29);
      }

      else
      {
        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      ++v31;
      v34 = [v32 uniqueIdentifier];
      v35 = sub_231E11620();
      v37 = v36;

      OUTLINED_FUNCTION_45_5();
      swift_beginAccess();
      sub_231D42148(&a13, v35, v37);
      swift_endAccess();
    }

    while (v30 != v31);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231E08078(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75998, &unk_231E234B8);
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75998, &unk_231E234B8);
    return sub_231E11930();
  }

  else
  {
    swift_beginAccess();

    sub_231DEC5AC(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75998, &unk_231E234B8);
    return sub_231E11940();
  }
}

unint64_t sub_231E08180()
{
  result = qword_2814CAF28;
  if (!qword_2814CAF28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814CAF28);
  }

  return result;
}

void sub_231E081C4()
{
  v0 = objc_autoreleasePoolPush();
  sub_231DFD718();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_231E0822C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpotlightReader.MessageWithDate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_231E08290()
{
  v0 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_25();
  sub_231DFC534();

  objc_autoreleasePoolPop(v0);
}

void sub_231E082F0(uint64_t a1)
{
  OUTLINED_FUNCTION_100_8();
  v3 = v2;
  v23 = objc_autoreleasePoolPush();
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_15:
    objc_autoreleasePoolPop(v23);
    OUTLINED_FUNCTION_102_6();
    return;
  }

  OUTLINED_FUNCTION_62_8();
  v4 = sub_231E11ED0();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v24 = v3 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v6 = OUTLINED_FUNCTION_59();
        v7 = MEMORY[0x23837D2A0](v6);
      }

      else
      {
        OUTLINED_FUNCTION_98_3();
        v7 = v8;
      }

      v9 = v7;
      v10 = [v7 uniqueIdentifier];
      sub_231E11620();

      OUTLINED_FUNCTION_45_5();
      swift_beginAccess();
      v11 = *(v1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 16) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = OUTLINED_FUNCTION_0_1();
        v20 = sub_231CE0B9C(v17, v18, v19, v11);
        isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_95_7(v20);
      }

      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        v21 = OUTLINED_FUNCTION_2_12(v15);
        v22 = sub_231CE0B9C(v21, v16 + 1, 1, v11);
        isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_95_7(v22);
      }

      ++v5;
      OUTLINED_FUNCTION_105_7(isUniquelyReferenced_nonNull_native, v13, v14);
    }

    while (v4 != v5);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_231E08440(uint64_t a1)
{
  OUTLINED_FUNCTION_100_8();
  v3 = v2;
  v26 = objc_autoreleasePoolPush();
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_17:
    objc_autoreleasePoolPop(v26);
    OUTLINED_FUNCTION_102_6();
    return;
  }

  OUTLINED_FUNCTION_62_8();
  v4 = sub_231E11ED0();
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    do
    {
      if (v6)
      {
        v7 = OUTLINED_FUNCTION_59();
        v8 = MEMORY[0x23837D2A0](v7);
      }

      else
      {
        OUTLINED_FUNCTION_98_3();
        v8 = v9;
      }

      v10 = v8;
      v11 = [v8 attributeSet];
      v12 = [v11 summarizationStatus];

      if (v12)
      {
        v13 = [v10 uniqueIdentifier];
        sub_231E11620();

        OUTLINED_FUNCTION_45_5();
        swift_beginAccess();
        v14 = *(v1 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 16) = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = OUTLINED_FUNCTION_0_1();
          v23 = sub_231CE0B9C(v20, v21, v22, v14);
          isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_95_7(v23);
        }

        v19 = *(v14 + 16);
        v18 = *(v14 + 24);
        if (v19 >= v18 >> 1)
        {
          v24 = OUTLINED_FUNCTION_2_12(v18);
          v25 = sub_231CE0B9C(v24, v19 + 1, 1, v14);
          isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_95_7(v25);
        }

        OUTLINED_FUNCTION_105_7(isUniquelyReferenced_nonNull_native, v16, v17);
      }

      ++v5;
    }

    while (v4 != v5);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t objectdestroy_80Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_231E08644(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  if (!a1)
  {
    return sub_231E11940();
  }

  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  return sub_231E11930();
}

void OUTLINED_FUNCTION_7_28()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
  *(v2 - 144) = MEMORY[0x277D85DD0];
  *(v2 - 136) = v3;
}

__n128 OUTLINED_FUNCTION_47_9(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_11(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_62_8()
{
  if (v0 < 0)
  {
    return v0;
  }

  else
  {
    return v0 & 0xFFFFFFFFFFFFFF8;
  }
}

uint64_t OUTLINED_FUNCTION_75_6()
{
}

uint64_t OUTLINED_FUNCTION_76_7(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_82_4(void *a1)
{

  return [a1 (v1 + 1144)];
}

void OUTLINED_FUNCTION_104_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 272);
  v23 = *(v20 - 264);

  sub_231E06F9C(a1, a2, a3, a4, a5, a6, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_105_7(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  *(v6 + 16) = v7;
  v9 = v6 + 16 * v3;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;

  return swift_endAccess();
}

void OUTLINED_FUNCTION_106_7()
{

  JUMPOUT(0x23837CC20);
}

uint64_t OUTLINED_FUNCTION_107_9(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_109_7()
{
}

id OUTLINED_FUNCTION_110_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_111_6(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_112_6()
{
}

void OUTLINED_FUNCTION_113_4(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  sub_231E0771C(v4, a2, v2);
}

uint64_t sub_231E08B20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27[-v4];
  v6 = sub_231E10E30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [a1 personHandle];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 type];
    if (v12)
    {
      if (v12 == 2 || v12 == 1)
      {
        sub_231E11620();
      }

      else
      {
        v13 = sub_231CB4EEC();
        (*(v7 + 16))(v9, v13, v6);
        v14 = v11;
        v15 = sub_231E10E10();
        v28 = sub_231E11AE0();
        if (os_log_type_enabled(v15, v28))
        {
          v16 = swift_slowAlloc();
          v17 = v14;
          v18 = v16;
          *v16 = 134217984;
          v19 = v17;
          *(v16 + 4) = [v17 type];

          _os_log_impl(&dword_231CAE000, v15, v28, "Unhandled person handle type: %ld", v18, 0xCu);
          MEMORY[0x23837E1D0](v18, -1, -1);
        }

        else
        {

          v15 = v14;
        }

        (*(v7 + 8))(v9, v6);
      }
    }

    v20 = [v11 value];
    if (v20)
    {
      v21 = v20;
      sub_231E11620();
    }
  }

  v22 = [a1 displayName];
  sub_231E11620();

  sub_231E08EDC(a1);
  [a1 isMe];
  sub_231E103D0();

  v23 = sub_231E10400();
  if (__swift_getEnumTagSinglePayload(v5, 1, v23))
  {
    sub_231CC7038(v5);
    v24 = 1;
    v25 = v29;
  }

  else
  {
    v25 = v29;
    (*(*(v23 - 8) + 32))(v29, v5, v23);
    v24 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v25, v24, 1, v23);
}

uint64_t sub_231E08EDC(void *a1)
{
  v1 = [a1 contactIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231E08F74(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_231E09038(char a1)
{
  result = swift_beginAccess();
  *(v1 + 33) = a1;
  return result;
}

uint64_t sub_231E090CC(uint64_t a1)
{
  v1 = swift_allocObject();
  sub_231E0910C();
  return v1;
}

void sub_231E0910C()
{
  OUTLINED_FUNCTION_118();
  v2 = v0;
  v4 = v3;
  v46 = sub_231E10400();
  v5 = *(v46 - 8);
  v6 = MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  *(v2 + 32) = 0;
  v10 = *(v4 + 16);
  if (v10)
  {
    v38 = v7;
    v39 = v4;
    v40 = v2;
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = v4 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v44 = *(v11 + 56);
    v45 = v12;
    v43 = (v11 - 8);
    v14 = MEMORY[0x277D84F90];
    v15 = v13;
    v16 = v10;
    v41 = v11;
    do
    {
      v17 = v46;
      v45(v9, v15, v46);
      sub_231E103B0();
      OUTLINED_FUNCTION_192();
      v42 = *v43;
      v42(v9, v17);
      if (v1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = OUTLINED_FUNCTION_0_1();
          v14 = sub_231CE0B9C(v21, v22, v23, v14);
        }

        v19 = *(v14 + 2);
        v18 = *(v14 + 3);
        if (v19 >= v18 >> 1)
        {
          v14 = OUTLINED_FUNCTION_24_13(v18);
        }

        *(v14 + 2) = v19 + 1;
        v20 = &v14[16 * v19];
        *(v20 + 4) = v11;
        *(v20 + 5) = v1;
      }

      v15 += v44;
      --v16;
      v11 = v41;
    }

    while (v16);
    v24 = sub_231D3FF4C(v14);
    v2 = v40;
    *(v40 + 16) = v24;
    v25 = MEMORY[0x277D84F90];
    v26 = v38;
    do
    {
      v27 = v46;
      v45(v26, v13, v46);
      v28 = sub_231E103F0();
      v30 = v29;
      v42(v26, v27);
      if (v30)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = OUTLINED_FUNCTION_0_1();
          v25 = sub_231CE0B9C(v34, v35, v36, v25);
        }

        v32 = *(v25 + 2);
        v31 = *(v25 + 3);
        if (v32 >= v31 >> 1)
        {
          v25 = OUTLINED_FUNCTION_24_13(v31);
        }

        *(v25 + 2) = v32 + 1;
        v33 = &v25[16 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v30;
      }

      v13 += v44;
      --v10;
    }

    while (v10);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
    *(v2 + 16) = sub_231D3FF4C(MEMORY[0x277D84F90]);
  }

  *(v2 + 24) = sub_231D3FF4C(v25);
  OUTLINED_FUNCTION_113();
}

void sub_231E093D0()
{
  OUTLINED_FUNCTION_118();
  v3 = v1;
  v92 = v4;
  v93 = v5;
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_0_23();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74540, &qword_231E23510);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_1_34(v12, v83);
  v14 = MEMORY[0x28223BE20](v13);
  v89 = &v83 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v90 = &v83 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13_21();
  v18 = sub_231E113D0();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v18);
  v19 = sub_231E103F0();
  if (!v20)
  {
    goto LABEL_29;
  }

  v21 = v19;
  v22 = v20;
  v23 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v23 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

    goto LABEL_29;
  }

  v87 = v7;
  v88 = v1;
  sub_231E103A0();
  if (!v24 || (v25 = sub_231E116D0(), v27 = v26, , !v27))
  {
    v25 = 0x726568746FLL;

    v27 = 0xE500000000000000;
  }

  v28 = sub_231E11620();
  if (v28 == v25 && v29 == v27)
  {

    goto LABEL_26;
  }

  v86 = v0;
  v31 = OUTLINED_FUNCTION_23_13(v28, v29);

  if (v31)
  {
LABEL_26:
    sub_231E0AD54(v2);

    *v2 = v21;
    v2[1] = v22;
    v39 = MEMORY[0x277D4B3A8];
LABEL_27:
    v38 = *v39;
    goto LABEL_28;
  }

  v32 = sub_231E11620();
  if (v32 == v25 && v33 == v27)
  {

    goto LABEL_44;
  }

  v35 = OUTLINED_FUNCTION_23_13(v32, v33);

  if (v35)
  {
LABEL_44:
    sub_231E0AD54(v2);

    *v2 = v21;
    v2[1] = v22;
    v39 = MEMORY[0x277D4B3A0];
    goto LABEL_27;
  }

  v36 = v25 == 0x726568746FLL && v27 == 0xE500000000000000;
  v37 = MEMORY[0x277D4B3B0];
  if (v36 || (OUTLINED_FUNCTION_23_13(0x726568746FLL, 0xE500000000000000) & 1) != 0)
  {
    sub_231E0AD54(v2);

    *v2 = v21;
    v2[1] = v22;
    v38 = *v37;
LABEL_28:
    (*(*(v18 - 8) + 104))(v2, v38, v18);
    OUTLINED_FUNCTION_34_14();
    v3 = v88;
    goto LABEL_29;
  }

  v75 = sub_231CB4EEC();
  (*(v87 + 16))(v10, v75, v86);

  v76 = sub_231E10E10();
  v77 = sub_231E11AE0();

  v85 = v77;
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v84 = v76;
    v80 = v79;
    v94 = v79;
    *v78 = 136446210;
    v81 = sub_231CB5000(v25, v27, &v94);

    *(v78 + 4) = v81;
    v82 = v84;
    _os_log_impl(&dword_231CAE000, v84, v85, "Unknown handle type: %{public}s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v87 + 8))(v10, v86);
  sub_231E0AD54(v2);
  v3 = v88;
  *v2 = v21;
  v2[1] = v22;
  (*(*(v18 - 8) + 104))(v2, *MEMORY[0x277D4B3B0], v18);
  OUTLINED_FUNCTION_34_14();
LABEL_29:
  sub_231E103B0();
  if (!v40 || (sub_231E116D0(), v42 = v41, , !v42))
  {
LABEL_55:
    sub_231E103F0();
    if (!v58)
    {
      goto LABEL_72;
    }

    v59 = sub_231E116D0();
    v61 = v60;

    if (!v61)
    {
      goto LABEL_72;
    }

    v62 = sub_231E103E0();
    if (v63)
    {
      sub_231E116D0();
      v65 = v64;

      if (v65)
      {

        v66 = sub_231E103E0();
        if (!v67)
        {
LABEL_65:

          goto LABEL_72;
        }

        if (v66 == v59 && v67 == v61)
        {
        }

        else
        {
          v69 = sub_231E12100();

          if ((v69 & 1) == 0)
          {
            goto LABEL_65;
          }
        }
      }
    }

    if (((*(*v3 + 136))(v62) & 1) == 0)
    {
      (*(*v3 + 144))(1);

      sub_231DEC5AC(v70);
      sub_231E09C0C();
    }

    OUTLINED_FUNCTION_59();
    sub_231E0A19C();
    v72 = v71;

    if (v72)
    {
      sub_231E116D0();
      v74 = v73;

      if (v74)
      {
        sub_231E0ACE4(v2, v89);
LABEL_73:
        sub_231E103B0();
        sub_231E103C0();
        goto LABEL_74;
      }
    }

LABEL_72:
    sub_231E103E0();
    sub_231E0ACE4(v2, v91);
    goto LABEL_73;
  }

  v43 = v3;
  v44 = sub_231E103E0();
  if (!v45)
  {
    goto LABEL_47;
  }

  sub_231E116D0();
  v47 = v46;

  if (!v47)
  {
    goto LABEL_47;
  }

  v48 = sub_231E103E0();
  v50 = v49;
  v44 = sub_231E103F0();
  if (!v50)
  {
    if (!v51)
    {
      goto LABEL_47;
    }

LABEL_45:

    goto LABEL_53;
  }

  if (!v51)
  {
    goto LABEL_45;
  }

  if (v48 == v44 && v50 == v51)
  {
  }

  else
  {
    v53 = sub_231E12100();

    if ((v53 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

LABEL_47:
  v3 = v43;
  if (((*(*v43 + 112))(v44) & 1) == 0)
  {
    (*(*v43 + 120))(1);

    sub_231DEC5AC(v54);
    sub_231E09E68();
  }

  OUTLINED_FUNCTION_59();
  sub_231E0A4C0();
  if (!v55)
  {
    goto LABEL_54;
  }

  sub_231E116D0();
  v57 = v56;

  if (!v57)
  {
LABEL_53:
    v3 = v43;
LABEL_54:

    goto LABEL_55;
  }

  sub_231E0ACE4(v2, v90);
  sub_231E103C0();
LABEL_74:
  sub_231E113E0();
  sub_231E0AD54(v2);
  OUTLINED_FUNCTION_113();
}

void sub_231E09C0C()
{
  OUTLINED_FUNCTION_118();
  v3 = v2;
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_34();
  v5 = OUTLINED_FUNCTION_35_10();
  v6 = *(v27 + 16);
  if (v6 >= v5)
  {
    sub_231E0B1B8(v5, v6);
    if (!*(v27 + 16))
    {
LABEL_16:

LABEL_17:
      OUTLINED_FUNCTION_113();
      return;
    }

    v7 = objc_opt_self();
    v8 = sub_231E11850();
    v9 = [v7 predicateForContactsMatchingHandleStrings_];

    sub_231E0AA14(v9, v3);
    if (v0)
    {

      sub_231CB4EEC();
      v10 = OUTLINED_FUNCTION_18_13();
      v11(v10);
      v12 = sub_231E10E10();
      v13 = sub_231E11AD0();
      if (OUTLINED_FUNCTION_2_36(v13))
      {
        v14 = OUTLINED_FUNCTION_16_1();
        *v14 = 0;
        OUTLINED_FUNCTION_5_32();
        _os_log_impl(v15, v16, v17, v18, v14, 2u);
        OUTLINED_FUNCTION_30();
      }

      v19 = OUTLINED_FUNCTION_59();
      v20(v19);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_21_13();
    if (!v21)
    {

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_33_17();
    while (1)
    {
      if (v26 == v3)
      {
LABEL_15:

        goto LABEL_16;
      }

      if (v3 >= *(v27 + 16))
      {
        break;
      }

      v22 = v8[2];
      if (v3 == v22)
      {
        goto LABEL_15;
      }

      if (v3 >= v22)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_12_21();
      v23 = *(v1 + 40);
      v1 += 40;

      v24 = OUTLINED_FUNCTION_3_37();
      v23(v24);

      v3 = (v3 + 1);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

void sub_231E09E68()
{
  OUTLINED_FUNCTION_118();
  v3 = v2;
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_34();
  v5 = OUTLINED_FUNCTION_35_10();
  v6 = *(v27 + 16);
  if (v6 >= v5)
  {
    sub_231E0B1B8(v5, v6);
    if (!*(v27 + 16))
    {
LABEL_16:

LABEL_17:
      OUTLINED_FUNCTION_113();
      return;
    }

    v7 = objc_opt_self();
    v8 = sub_231E11850();
    v9 = [v7 predicateForContactsWithIdentifiers_];

    sub_231E0AA14(v9, v3);
    if (v0)
    {

      sub_231CB4EEC();
      v10 = OUTLINED_FUNCTION_18_13();
      v11(v10);
      v12 = sub_231E10E10();
      v13 = sub_231E11AD0();
      if (OUTLINED_FUNCTION_2_36(v13))
      {
        v14 = OUTLINED_FUNCTION_16_1();
        *v14 = 0;
        OUTLINED_FUNCTION_5_32();
        _os_log_impl(v15, v16, v17, v18, v14, 2u);
        OUTLINED_FUNCTION_30();
      }

      v19 = OUTLINED_FUNCTION_59();
      v20(v19);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_21_13();
    if (!v21)
    {

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_33_17();
    while (1)
    {
      if (v26 == v3)
      {
LABEL_15:

        goto LABEL_16;
      }

      if (v3 >= *(v27 + 16))
      {
        break;
      }

      v22 = v8[2];
      if (v3 == v22)
      {
        goto LABEL_15;
      }

      if (v3 >= v22)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_12_21();
      v23 = *(v1 + 48);
      v1 += 48;

      v24 = OUTLINED_FUNCTION_3_37();
      v23(v24);

      v3 = (v3 + 1);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

BOOL sub_231E0A0C4(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_26_13(a1, a2, a3);
  v4 = OUTLINED_FUNCTION_7_29();
  v5(v4);
  if (v3)
  {
  }

  else
  {
  }

  return v3 == 0;
}

BOOL sub_231E0A130(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_26_13(a1, a2, a3);
  v4 = OUTLINED_FUNCTION_7_29();
  v5(v4);
  if (v3)
  {
  }

  else
  {
  }

  return v3 == 0;
}

void sub_231E0A19C()
{
  OUTLINED_FUNCTION_118();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_0_23();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_34(v11, v53);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_31_17();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13_21();
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v14 = OUTLINED_FUNCTION_10_25();
  v15(v14);
  if (v1)
  {
    v16 = sub_231CB4EEC();
    v17 = OUTLINED_FUNCTION_6_26(v16);
    v18(v17);
    v19 = sub_231E10E10();
    v20 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_2_36(v20))
    {
      v21 = OUTLINED_FUNCTION_16_1();
      *v21 = 0;
      OUTLINED_FUNCTION_5_32();
      _os_log_impl(v22, v23, v24, v25, v21, 2u);
      OUTLINED_FUNCTION_30();
    }

    v26 = OUTLINED_FUNCTION_32_13();
    v27(v26);
    v28 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_37_14(v29, xmmword_231E138E0);
    v30 = sub_231E11850();

    v31 = [v28 predicateForContactsMatchingHandleStrings_];

    OUTLINED_FUNCTION_38_14();
    if (v29)
    {
      v32 = OUTLINED_FUNCTION_22_12();
      v33(v32);
      v34 = sub_231E10E10();
      v35 = sub_231E11AD0();
      if (OUTLINED_FUNCTION_2_36(v35))
      {
        v36 = OUTLINED_FUNCTION_16_1();
        OUTLINED_FUNCTION_27_13(v36);
        OUTLINED_FUNCTION_5_32();
        _os_log_impl(v37, v38, v39, v40, v7, 2u);
        OUTLINED_FUNCTION_81_6();
      }

      v41 = OUTLINED_FUNCTION_28_15();
      v54(v41);
    }

    else
    {
      OUTLINED_FUNCTION_192();
      v49 = OUTLINED_FUNCTION_28_15();
      __swift_project_boxed_opaque_existential_0(v49, v50);
      v51 = OUTLINED_FUNCTION_9_24();
      v52(v51);
    }
  }

  else
  {
    OUTLINED_FUNCTION_192();
    sub_231CB4EEC();
    v42 = OUTLINED_FUNCTION_17_12();
    v43(v42);
    v44 = sub_231E10E10();
    v45 = sub_231E11AF0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_27_13(v46);
      OUTLINED_FUNCTION_36_14(&dword_231CAE000, v47, v48, "Found resolved name for handle in cache");
      OUTLINED_FUNCTION_81_6();
    }

    (*(v9 + 8))(v2, v0);
  }

  OUTLINED_FUNCTION_113();
}

void sub_231E0A4C0()
{
  OUTLINED_FUNCTION_118();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_0_23();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_34(v11, v53);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_31_17();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13_21();
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v14 = OUTLINED_FUNCTION_10_25();
  v15(v14);
  if (v1)
  {
    v16 = sub_231CB4EEC();
    v17 = OUTLINED_FUNCTION_6_26(v16);
    v18(v17);
    v19 = sub_231E10E10();
    v20 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_2_36(v20))
    {
      v21 = OUTLINED_FUNCTION_16_1();
      *v21 = 0;
      OUTLINED_FUNCTION_5_32();
      _os_log_impl(v22, v23, v24, v25, v21, 2u);
      OUTLINED_FUNCTION_30();
    }

    v26 = OUTLINED_FUNCTION_32_13();
    v27(v26);
    v28 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_37_14(v29, xmmword_231E138E0);
    v30 = sub_231E11850();

    v31 = [v28 predicateForContactsWithIdentifiers_];

    OUTLINED_FUNCTION_38_14();
    if (v29)
    {
      v32 = OUTLINED_FUNCTION_22_12();
      v33(v32);
      v34 = sub_231E10E10();
      v35 = sub_231E11AD0();
      if (OUTLINED_FUNCTION_2_36(v35))
      {
        v36 = OUTLINED_FUNCTION_16_1();
        OUTLINED_FUNCTION_27_13(v36);
        OUTLINED_FUNCTION_5_32();
        _os_log_impl(v37, v38, v39, v40, v7, 2u);
        OUTLINED_FUNCTION_81_6();
      }

      v41 = OUTLINED_FUNCTION_28_15();
      v54(v41);
    }

    else
    {
      OUTLINED_FUNCTION_192();
      v49 = OUTLINED_FUNCTION_28_15();
      __swift_project_boxed_opaque_existential_0(v49, v50);
      v51 = OUTLINED_FUNCTION_9_24();
      v52(v51);
    }
  }

  else
  {
    OUTLINED_FUNCTION_192();
    sub_231CB4EEC();
    v42 = OUTLINED_FUNCTION_17_12();
    v43(v42);
    v44 = sub_231E10E10();
    v45 = sub_231E11AF0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_27_13(v46);
      OUTLINED_FUNCTION_36_14(&dword_231CAE000, v47, v48, "Found resolved name for identifier in cache");
      OUTLINED_FUNCTION_81_6();
    }

    (*(v9 + 8))(v2, v0);
  }

  OUTLINED_FUNCTION_113();
}

id sub_231E0A7E4(uint64_t a1, void *a2)
{
  v22 = objc_opt_self();
  v5 = [v22 descriptorForRequiredKeysForStyle_];
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_0(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_231E13420;
  *(v9 + 32) = v5;
  v10 = *(v7 + 16);
  swift_unknownObjectRetain();
  v11 = a1;
  v12 = v8;
  v13 = v10(v11, v9, v6, v7);
  if (v2)
  {
    swift_unknownObjectRelease();

    return v12;
  }

  v14 = v13;

  v15 = sub_231CBA138(v14);
  if (!v15)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v16 = v15;
  for (i = 0; ; ++i)
  {
    result = v5;
    if (v16 == i)
    {
      swift_unknownObjectRelease();

      return 0;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23837D2A0](i, v14);
    }

    else
    {
      if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      result = *(v14 + 8 * i + 32);
    }

    v19 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v20 = [v22 stringFromContact:result style:0];
    if (v20)
    {
      v21 = v20;

      v12 = sub_231E11620();

      swift_unknownObjectRelease();
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_231E0AA14(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 descriptorForRequiredKeysForStyle_];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_231E13420;
  *(v8 + 32) = v5;
  v9 = *(v7 + 16);
  swift_unknownObjectRetain();
  v10 = v9(a1, v8, v6, v7);

  if (v28)
  {
    swift_unknownObjectRelease();
    return v6;
  }

  result = sub_231CBA138(v10);
  if (!result)
  {

    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  if (result >= 1)
  {
    v12 = 0;
    v6 = MEMORY[0x277D84F90];
    v27 = result;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x23837D2A0](v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v4;
      v16 = [v4 stringFromContact:v13 style:0];
      if (v16)
      {
        v17 = v16;
        v18 = sub_231E11620();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = OUTLINED_FUNCTION_0_1();
        v6 = sub_231E0ADBC(v24, v25, v26, v6);
      }

      v22 = v6[2];
      v21 = v6[3];
      if (v22 >= v21 >> 1)
      {
        v6 = sub_231E0ADBC((v21 > 1), v22 + 1, 1, v6);
      }

      ++v12;

      v6[2] = v22 + 1;
      v23 = &v6[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      v4 = v15;
    }

    while (v27 != v12);
    swift_unknownObjectRelease();

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_231E0AC88()
{

  return v0;
}

uint64_t sub_231E0ACB0()
{
  sub_231E0AC88();

  return swift_deallocClassInstance();
}

uint64_t sub_231E0ACE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74540, &qword_231E23510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231E0AD54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74540, &qword_231E23510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_231E0ADBC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75610, &unk_231E205C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD752A0, &unk_231E1C920);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_231E0AF3C(uint64_t (*a1)(void *, __n128), uint64_t a2)
{
  v4 = a2;
  v6 = *v2;
  result = sub_231E0B0FC(a1, a2, *v2);
  if (!v3)
  {
    v28 = result;
    if (v8)
    {
      return *(v6 + 16);
    }

    else
    {
      v26 = a1;
      v24 = v2;
      v9 = v28 + 1;
      if (!__OFADD__(v28, 1))
      {
        for (i = 16 * v28; ; i += 16)
        {
          v11 = *(v6 + 16);
          if (v9 == v11)
          {
            return v28;
          }

          if (v9 >= v11)
          {
            break;
          }

          v12 = v6 + i;
          v13 = *(v6 + i + 56);
          v27[0] = *(v6 + i + 48);
          v27[1] = v13;

          v14 = v4;
          v15 = v26(v27);

          if ((v15 & 1) == 0)
          {
            v16 = v28;
            if (v9 != v28)
            {
              if ((v28 & 0x8000000000000000) != 0)
              {
                goto LABEL_22;
              }

              v17 = *(v6 + 16);
              if (v28 >= v17)
              {
                goto LABEL_23;
              }

              if (v9 >= v17)
              {
                goto LABEL_24;
              }

              v18 = (v6 + 32 + 16 * v28);
              v19 = v18[1];
              v25 = *v18;
              v20 = *(v12 + 48);
              v21 = *(v12 + 56);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_231E0B2A8(v6);
              }

              v22 = v6 + 16 * v28;
              *(v22 + 32) = v20;
              *(v22 + 40) = v21;

              if (v9 >= *(v6 + 16))
              {
                goto LABEL_25;
              }

              v23 = v6 + i;
              *(v23 + 48) = v25;
              *(v23 + 56) = v19;

              *v24 = v6;
              v16 = v28;
            }

            v28 = v16 + 1;
          }

          v4 = v14;
          ++v9;
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_231E0B0FC(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = (a3 + 40); ; i += 2)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = (a1)(v11);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

int64_t sub_231E0B1B8(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_231DF22C0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 16 * a2);
  if (v5 != a2 || v12 + 16 * v11 <= v9 + 16 * v5)
  {
    result = memmove((v9 + 16 * v5), v12, 16 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_26(uint64_t a1)
{
  result = v2;
  *(v3 - 144) = *(v1 + 16);
  *(v3 - 136) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_25()
{
  *(v2 - 104) = v1;
  *(v2 - 96) = v0;
  return v0;
}

void *OUTLINED_FUNCTION_12_21()
{
  *(v2 - 144) = *(v1 + v0 + 32);
  *(v2 - 136) = v0;
  return __swift_project_boxed_opaque_existential_0(*(v2 - 160), *(*(v2 - 160) + 24));
}

char *OUTLINED_FUNCTION_24_13@<X0>(unint64_t a1@<X8>)
{

  return sub_231CE0B9C((a1 > 1), v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return sub_231E10E30();
}

uint64_t OUTLINED_FUNCTION_32_13()
{
  result = v0;
  *(v2 - 128) = *(v1 + 8);
  *(v2 - 120) = v1 + 8;
  return result;
}

void OUTLINED_FUNCTION_33_17()
{
  *(v3 - 176) = v2;
  *(v3 - 168) = v1;
  *(v3 - 160) = v0;
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_35_10()
{

  return sub_231E0AF3C(v0, v1 - 128);
}

void OUTLINED_FUNCTION_36_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

double OUTLINED_FUNCTION_37_14(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 - 104);
  a1[2].n128_u64[0] = *(v2 - 96);
  a1[2].n128_u64[1] = v4;

  return result;
}

id OUTLINED_FUNCTION_38_14()
{

  return sub_231E0A7E4(v0, v1);
}

uint64_t sub_231E0B568(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

unint64_t sub_231E0B5B0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231DD7F7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_231E0B5EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  return result;
}

uint64_t sub_231E0B5FC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10;
  return result;
}

__n128 sub_231E0B650@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(a2 + 42) = result;
  return result;
}

double sub_231E0B66C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 768;
  return result;
}

uint64_t sub_231E0B688()
{
  OUTLINED_FUNCTION_10_26();
  swift_allocObject();
  swift_defaultActor_initialize();
  return OUTLINED_FUNCTION_1_35();
}

uint64_t sub_231E0B6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_231E0B6F8, v4, 0);
}

uint64_t sub_231E0B6F8(uint64_t a1)
{
  v2 = (v1 + 16);
  v3 = *(v1 + 72);
  sub_231E0F870();
  v5 = v4;
  v6 = *(v1 + 88);
  if (v3)
  {
    v7 = *(v6 + 176);
    v8 = *(v6 + 184);
    v9 = *(v6 + 185);
    if (v9 == 3 || (*(v6 + 168) & 1) != 0)
    {
      *&v10 = COERCE_DOUBLE(sub_231CC81C0());
      if (v11)
      {
        v12 = sub_231D12CD0();
      }

      else
      {
        v12 = *&v10;
      }

      if (v9 != 3 && (v8 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v12 = *(v6 + 160);
      if ((*(v6 + 184) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    *&v17 = COERCE_DOUBLE(sub_231CC81F0());
    if (v18)
    {
      v19 = sub_231D12B88();
LABEL_24:
      v7 = v19;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v7 = *(v6 + 144);
  v13 = *(v6 + 152);
  v14 = *(v6 + 185) << 8;
  if (v14 != 768 && (*(v6 + 136) & 1) == 0)
  {
    v12 = *(v6 + 128);
    if ((*(v6 + 152) & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_22:
    *&v17 = COERCE_DOUBLE(sub_231CC8190());
    if (v20)
    {
      v19 = sub_231D12AD8();
      goto LABEL_24;
    }

LABEL_25:
    v7 = *&v17;
    goto LABEL_26;
  }

  *&v15 = COERCE_DOUBLE(sub_231CC8068());
  if (v16)
  {
    v12 = sub_231D12C38();
  }

  else
  {
    v12 = *&v15;
  }

  if (v14 == 768 || (v13 & 1) != 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v21 = *(*(v1 + 88) + 186);
  sub_231D49CD8(*(v1 + 64));
  v22 = *(v1 + 24);
  if (v22 == 1)
  {

    v23 = 0.0;
    v2 = (v1 + 64);
    v24 = 0.0;
  }

  else
  {
    v24 = *(v1 + 40);
    v23 = *(v1 + 48);
    v21 = *(v1 + 32);
  }

  v25 = *(v1 + 56);
  v26 = v24 + (v5 - v23) / v7;
  if (v26 >= v12)
  {
    v26 = v12;
  }

  *v25 = *v2;
  *(v25 + 8) = v22;
  *(v25 + 16) = v21;
  *(v25 + 24) = v26;
  *(v25 + 32) = v5;
  v27 = *(v1 + 8);

  return v27();
}

uint64_t sub_231E0B8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[38] = a4;
  v5[39] = v4;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  v6 = sub_231E0F950();
  v5[40] = v6;
  v5[41] = *(v6 - 8);
  v5[42] = swift_task_alloc();
  v7 = sub_231E10E30();
  v5[43] = v7;
  v5[44] = *(v7 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231E0BA10, v4, 0);
}

uint64_t sub_231E0BA10()
{
  v67 = v0;

  if (sub_231CC8220())
  {
    v2 = v0[49];
    v3 = v0[36];
    sub_231CB4EEC();
    v4 = OUTLINED_FUNCTION_8_22();
    v5(v4);

    v6 = sub_231E10E10();
    v7 = sub_231E11AF0();

    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_6_27();
      v8 = OUTLINED_FUNCTION_12_22();
      *v3 = 136446466;
      v66 = v8;
      if (v2)
      {
        v9 = sub_231DDB1E8();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      v40 = v0[44];
      v62 = v0[43];
      v63 = v0[49];
      v41 = v0[35];
      v42 = v0[36];
      v43 = sub_231CB5000(v9, v11, &v66);

      *(v3 + 4) = v43;
      *(v3 + 12) = 2082;
      *(v3 + 14) = sub_231CB5000(v41, v42, &v66);
      OUTLINED_FUNCTION_4_35(&dword_231CAE000, v44, v45, "%{public}s PowerBudget: Policies are disabled. Returning eligible. bundleId: %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v40 + 8))(v63, v62);
    }

    else
    {
      v23 = v0[49];
      v24 = v0[43];
      v25 = v0[44];

      (*(v25 + 8))(v23, v24);
    }

LABEL_33:

    OUTLINED_FUNCTION_37();

    __asm { BRAA            X4, X16 }
  }

  v12 = *(v0[39] + 184);
  v13 = (v12 & 0xFF00) == 0x300 || v12 >> 8 == 2;
  if ((v13 || (v12 & 0x100) == 0) && IOPSDrawingUnlimitedPower())
  {
    v14 = v0[48];
    v15 = v0[36];
    sub_231CB4EEC();
    v16 = OUTLINED_FUNCTION_8_22();
    v17(v16);

    v18 = sub_231E10E10();
    v19 = sub_231E11AC0();

    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_6_27();
      v1 = OUTLINED_FUNCTION_12_22();
      v66 = v1;
      *v15 = 136446466;
      if (v14)
      {
        v20 = sub_231DDB1E8();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v46 = v0[44];
      v64 = v0[43];
      v65 = v0[48];
      v48 = v0[35];
      v47 = v0[36];
      v49 = sub_231CB5000(v20, v22, &v66);

      *(v15 + 4) = v49;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_231CB5000(v48, v47, &v66);
      OUTLINED_FUNCTION_4_35(&dword_231CAE000, v50, v51, "%{public}s PowerBudget: Eligible through global and app policies because device is on power so policies are disabled. bundleId: %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v46 + 8))(v65, v64);
    }

    else
    {
      v37 = v0[48];
      v38 = v0[43];
      v39 = v0[44];

      (*(v39 + 8))(v37, v38);
    }

    v0[55] = MEMORY[0x277D84F90];
    if ((sub_231CC82DC() & 1) != 0 || (v52 = *(v0[39] + 120), (v0[56] = v52) == 0))
    {
      v57 = v0[55];
      v58 = *(v57 + 16);
      if (v58)
      {
        v59 = v57 + 32;
        do
        {
          OUTLINED_FUNCTION_3_38();
          sub_231D4A1B8((v0 + 10));
          sub_231E0CC7C((v0 + 10));
          --v58;
        }

        while (v58);
        OUTLINED_FUNCTION_15_21();
        sub_231E0F8B0();
        sub_231D4A69C(0);

        (*(v1 + 8))(0, v59);
      }

      else
      {
      }

      goto LABEL_33;
    }

    OUTLINED_FUNCTION_37();

    return MEMORY[0x2822009F8](v53, v54, v55);
  }

  else
  {
    v26 = v0[35];
    v27 = v0[36];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD759D0, &qword_231E23578);
    inited = swift_initStackObject();
    v0[50] = inited;
    *(inited + 16) = xmmword_231E1C950;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v26;
    *(inited + 56) = v27;
    v29 = MEMORY[0x277D84F90];
    v0[51] = 0;
    v0[52] = v29;
    v0[53] = *(v0[50] + 40);

    v30 = swift_task_alloc();
    v0[54] = v30;
    *v30 = v0;
    OUTLINED_FUNCTION_0_40(v30);
    OUTLINED_FUNCTION_37();

    return sub_231E0B6D0(v31, v32, v33, v34);
  }
}

uint64_t sub_231E0BF58()
{
  v1 = *(*v0 + 312);

  return MEMORY[0x2822009F8](sub_231E0C068, v1, 0);
}

uint64_t sub_231E0C068()
{
  v82 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  if (v2 < 1.0)
  {
    v4 = *(v0 + 416);
    v5 = *(v0 + 368);
    v6 = *(v0 + 344);
    v7 = *(v0 + 352);
    swift_setDeallocating();
    sub_231E0CB20();

    v8 = sub_231CB4EEC();
    (*(v7 + 16))(v5, v8, v6);

    v9 = sub_231E10E10();
    v10 = sub_231E11AF0();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_6_27();
      v81 = OUTLINED_FUNCTION_12_22();
      *v4 = 136446466;
      if (v5)
      {
        v11 = sub_231DDB1E8();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      v29 = *(v0 + 352);
      v77 = *(v0 + 344);
      v80 = *(v0 + 368);
      v30 = sub_231CB5000(v11, v13, &v81);

      *(v4 + 4) = v30;
      *(v4 + 12) = 2082;
      v31 = *(v0 + 136);
      *(v0 + 160) = *(v0 + 120);
      *(v0 + 176) = v31;
      *(v0 + 192) = *(v0 + 152);
      v32 = sub_231E11680();
      v34 = sub_231CB5000(v32, v33, &v81);

      *(v4 + 14) = v34;
      OUTLINED_FUNCTION_4_35(&dword_231CAE000, v35, v36, "%{public}s PowerBudget: Failed policy: state: %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v29 + 8))(v80, v77);
    }

    else
    {
      v23 = *(v0 + 368);
      v24 = *(v0 + 344);
      v25 = *(v0 + 352);

      sub_231E0CC7C(v0 + 120);

      (*(v25 + 8))(v23, v24);
    }

    v37 = *(v0 + 424);
    sub_231E0CC7C(v0 + 120);
    if (v37)
    {
    }

LABEL_35:

    OUTLINED_FUNCTION_11_24();

    __asm { BRAA            X4, X16 }
  }

  v14 = *(v0 + 376);

  sub_231CB4EEC();
  v15 = OUTLINED_FUNCTION_8_22();
  v16(v15);
  v17 = sub_231E10E10();
  v18 = sub_231E11AC0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_6_27();
    *(v0 + 272) = swift_slowAlloc();
    *v19 = 136446466;
    v79 = v1;
    if (v14)
    {
      v20 = sub_231DDB1E8();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v38 = *(v0 + 352);
    v76 = *(v0 + 344);
    v78 = *(v0 + 376);
    v39 = sub_231CB5000(v20, v22, (v0 + 272));

    *(v19 + 4) = v39;
    *(v19 + 12) = 2082;
    v40 = *(v0 + 136);
    *(v0 + 200) = *(v0 + 120);
    *(v0 + 216) = v40;
    *(v0 + 232) = *(v0 + 152);

    v41 = sub_231E11680();
    v43 = sub_231CB5000(v41, v42, (v0 + 272));

    *(v19 + 14) = v43;
    _os_log_impl(&dword_231CAE000, v17, v18, "%{public}s PowerBudget: Passed policy: state: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v38 + 8))(v78, v76);
    v1 = v79;
  }

  else
  {
    v26 = *(v0 + 376);
    v27 = *(v0 + 344);
    v28 = *(v0 + 352);

    (*(v28 + 8))(v26, v27);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v0 + 416);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_231E0CB64(0, *(v45 + 2) + 1, 1, *(v0 + 416));
  }

  v47 = *(v45 + 2);
  v46 = *(v45 + 3);
  if (v47 >= v46 >> 1)
  {
    v45 = sub_231E0CB64((v46 > 1), v47 + 1, 1, v45);
  }

  v48 = *(v0 + 152);
  v49 = *(v0 + 136);
  *(v45 + 2) = v47 + 1;
  v50 = &v45[40 * v47];
  *(v50 + 4) = v1;
  *(v50 + 5) = v3;
  v50[48] = v49;
  *(v50 + 7) = v2 + -1.0;
  *(v50 + 8) = v48;
  sub_231E0CC7C(v0 + 120);
  v51 = *(v0 + 400);
  v52 = *(v0 + 408) + 1;
  *(v0 + 408) = v52;
  *(v0 + 416) = v45;
  if (v52 == 2)
  {
    swift_setDeallocating();
    sub_231E0CB20();
    *(v0 + 440) = v45;
    if ((sub_231CC82DC() & 1) != 0 || (v53 = *(*(v0 + 312) + 120), (*(v0 + 448) = v53) == 0))
    {
      v64 = *(v0 + 440);
      v65 = *(v64 + 16);
      if (v65)
      {
        v66 = (v64 + 32);
        do
        {
          v67 = *v66;
          v68 = v66[1];
          *(v0 + 112) = *(v66 + 4);
          *(v0 + 80) = v67;
          *(v0 + 96) = v68;
          v69 = *v66;
          v66 = (v66 + 40);
          *(v0 + 240) = v69;
          sub_231D52690(v0 + 240, v0 + 256);
          sub_231D4A1B8(v0 + 80);
          sub_231E0CC7C(v0 + 80);
          --v65;
        }

        while (v65);
        v71 = *(v0 + 328);
        v70 = *(v0 + 336);
        v72 = *(v0 + 320);

        sub_231E0F8B0();
        sub_231D4A69C(v70);

        (*(v71 + 8))(v70, v72);
      }

      else
      {
      }

      goto LABEL_35;
    }

    OUTLINED_FUNCTION_11_24();

    return MEMORY[0x2822009F8](v54, v55, v56);
  }

  else
  {
    *(v0 + 424) = *(v51 + 16 * v52 + 40);

    v58 = swift_task_alloc();
    *(v0 + 432) = v58;
    *v58 = v0;
    OUTLINED_FUNCTION_0_40(v58);
    OUTLINED_FUNCTION_11_24();

    return sub_231E0B6D0(v59, v60, v61, v62);
  }
}

uint64_t sub_231E0C704()
{
  v1 = *(v0 + 312);
  *(v0 + 456) = sub_231CE6E50();
  *(v0 + 464) = v2;
  *(v0 + 472) = v3;

  return MEMORY[0x2822009F8](sub_231E0C778, v1, 0);
}

uint64_t sub_231E0C778()
{
  v29 = v0;
  if (*(v0 + 472) == 255)
  {
    v14 = *(v0 + 440);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + 32;
      do
      {
        OUTLINED_FUNCTION_3_38();
        sub_231D4A1B8(v0 + 80);
        sub_231E0CC7C(v0 + 80);
        --v15;
      }

      while (v15);
      OUTLINED_FUNCTION_15_21();
      sub_231E0F8B0();
      sub_231D4A69C(0);

      (*(v1 + 8))(0, v16);
      v15 = 0;
    }

    else
    {
    }

    v20 = 0;
    v21 = 255;
  }

  else
  {
    v3 = *(v0 + 352);
    v2 = *(v0 + 360);
    v4 = *(v0 + 344);

    v5 = sub_231CB4EEC();
    (*(v3 + 16))(v2, v5, v4);
    v6 = sub_231E10E10();
    v7 = sub_231E11AF0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 304);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136446210;
      if (v8)
      {
        v11 = sub_231DDB1E8();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      v22 = *(v0 + 352);
      v27 = *(v0 + 360);
      v23 = *(v0 + 344);
      v24 = sub_231CB5000(v11, v13, &v28);

      *(v9 + 4) = v24;
      _os_log_impl(&dword_231CAE000, v6, v7, "%{public}s PowerBudget: Failed policy: PowerTracker", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v22 + 8))(v27, v23);
    }

    else
    {
      v18 = *(v0 + 352);
      v17 = *(v0 + 360);
      v19 = *(v0 + 344);

      (*(v18 + 8))(v17, v19);
    }

    v21 = *(v0 + 472);
    v15 = *(v0 + 456);
    v20 = *(v0 + 464);
  }

  v25 = *(v0 + 8);

  return v25(v15, v20, v21);
}

uint64_t sub_231E0CAA0()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_231E0CAD0()
{
  sub_231E0CAA0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231E0CB20()
{
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

char *sub_231E0CB64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD759F0, &qword_231E23778);
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
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_231E0CCB0()
{
  result = qword_27DD759D8;
  if (!qword_27DD759D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD759D8);
  }

  return result;
}

unint64_t sub_231E0CD08()
{
  result = qword_27DD759E0;
  if (!qword_27DD759E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD759E8, qword_231E23628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD759E0);
  }

  return result;
}

uint64_t sub_231E0CD90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231E0CDE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      return OUTLINED_FUNCTION_13_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_231E0CE30(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_231E0CE48(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_13_22(result, (a2 - 1));
  }

  return result;
}

_BYTE *sub_231E0CE70(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_231E0CF48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      return OUTLINED_FUNCTION_108(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_108(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_108(v4);
}

uint64_t sub_231E0CF98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_13_22(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_231E0D018(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
  }

  if (a2 >= 0xFD && *(a1 + 58))
  {
    return OUTLINED_FUNCTION_108(*a1 + 252);
  }

  v3 = *(a1 + 57);
  v4 = v3 >= 2 ? ((v3 + 2147483646) & 0x7FFFFFFF) - 1 : -2;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_108(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_108(-1);
  }
}

uint64_t sub_231E0D078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_231E0D0D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 58))
    {
      return OUTLINED_FUNCTION_108(*a1 + 253);
    }

    v3 = *(a1 + 57);
    if (v3 >= 2)
    {
      v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v4 = -2;
    }

    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_108(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_108(v4);
}

uint64_t sub_231E0D12C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_35()
{
  *(v1 + 112) = v4;
  *(v1 + 120) = v3;
  v5 = v2[1];
  *(v1 + 128) = *v2;
  *(v1 + 144) = v5;
  *(v1 + 160) = v2[2];
  *(v1 + 170) = *(v2 + 42);
  *(v1 + 186) = v0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_38()
{
  v3 = *v1;
  v4 = v1[1];
  *(v0 + 112) = *(v1 + 4);
  *(v0 + 80) = v3;
  *(v0 + 96) = v4;
  *(v0 + 240) = *v1;

  return sub_231D52690(v0 + 240, v0 + 256);
}

uint64_t OUTLINED_FUNCTION_6_27()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_12_22()
{

  return swift_slowAlloc();
}

void sub_231E0D814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PSUSummarizationLogging()
{
  if (PSUSummarizationLogging__pasOnceToken2 != -1)
  {
    dispatch_once(&PSUSummarizationLogging__pasOnceToken2, &__block_literal_global_38);
  }

  v1 = PSUSummarizationLogging__pasExprOnceResult;

  return v1;
}

void __PSUSummarizationLogging_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.suggestions", "summarization");
  v2 = PSUSummarizationLogging__pasExprOnceResult;
  PSUSummarizationLogging__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

Class __getDNDModeConfigurationServiceClass_block_invoke(uint64_t a1)
{
  if (!DoNotDisturbLibraryCore_frameworkLibrary)
  {
    DoNotDisturbLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("DNDModeConfigurationService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDNDModeConfigurationServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DoNotDisturbLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  DoNotDisturbLibraryCore_frameworkLibrary = result;
  return result;
}