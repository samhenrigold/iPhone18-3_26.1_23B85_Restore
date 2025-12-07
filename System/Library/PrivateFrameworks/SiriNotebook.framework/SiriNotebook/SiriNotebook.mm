void sub_2680EDCA8(uint64_t a2@<X8>)
{
  sub_2680EDCDC();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_2680EDCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotebookNLv3Intent(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_2683CB668();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2680EDDD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NotebookNLv3Intent(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = sub_2683CB668();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2680EDEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2683CB668();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2680EDF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2683CB668();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2680EE0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotebookNLv3Intent(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2680EE170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NotebookNLv3Intent(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

BOOL sub_2680EE40C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2680EE448()
{
  type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper(0);
  OUTLINED_FUNCTION_63();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_3_1(v7);
  v9 = *(v8 + 80);
  v10 = (v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  v13 = v1 + v4;
  sub_2683CE448();
  OUTLINED_FUNCTION_1();
  (*(v14 + 8))(v13);
  __swift_destroy_boxed_opaque_existential_0((v13 + *(v0 + 28)));
  __swift_destroy_boxed_opaque_existential_0((v13 + *(v0 + 32)));
  v15 = sub_2683CD358();
  if (!__swift_getEnumTagSinglePayload(v1 + v10, 1, v15))
  {
    OUTLINED_FUNCTION_23_0();
    (*(v16 + 8))(v1 + v10, v15);
  }

  return MEMORY[0x2821FE8E8](v1, ((v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v9 | 7);
}

uint64_t sub_2680EE5E8()
{
  type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper(0);
  OUTLINED_FUNCTION_63();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_3_1(v7);
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = (v4 + v6 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v3 | v12;
  v16 = v1 + v4;
  v17 = sub_2683CE448();
  OUTLINED_FUNCTION_1();
  v19 = *(v18 + 8);
  v19(v16, v17);
  __swift_destroy_boxed_opaque_existential_0((v16 + *(v0 + 28)));
  __swift_destroy_boxed_opaque_existential_0((v16 + *(v0 + 32)));
  v19(v1 + v13, v17);

  return MEMORY[0x2821FE8E8](v1, v13 + v14, v15 | 7);
}

uint64_t sub_2680EE760()
{
  if (*(v0 + 16) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2680EE7D8()
{
  OUTLINED_FUNCTION_14();
  sub_2683CFEA8();
  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2680EE838()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  if (*(v0 + 112) == 1)
  {
  }

  else if (!*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0((v0 + 200));

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_2680EE8BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680EE8F4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680EE998()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = (v5 + 24) & ~v5;
  v9 = (v7 + v5 + v8) & ~v5;

  v10 = v0 + v8;
  v11 = type metadata accessor for Snippet(0);
  v12 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v12, v13, v11))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v19 + 8))(v10);
        v20 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v20);
        goto LABEL_37;
      case 1u:
      case 9u:

        goto LABEL_37;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v58 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v59 = OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading(v59);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v111 + 8))(v1);
            break;
          case 1u:

            if (*(v1 + 96) != 255)
            {
              sub_26814304C(*(v1 + 80), *(v1 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v112 = *(v58 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v113 + 8))(v10 + v112);
        v105 = *(v58 + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_85;
      case 4u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v39 + 8))(v10);
        v40 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v40);

        OUTLINED_FUNCTION_11_5(v40[6]);

        OUTLINED_FUNCTION_11_5(v40[7]);

        v41 = v10 + v40[8];
        if (*(v41 + 24))
        {

          if (*(v41 + 96) != 255)
          {
            sub_26814304C(*(v41 + 80), *(v41 + 88));
          }
        }

        v42 = v40[9];
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v45 = *(v44 + 8);
        v7 = v44 + 8;
        v45(v10 + v42, v43);
        v46 = OUTLINED_FUNCTION_43_0(v40[10]);
        (v45)(v46);
        v47 = OUTLINED_FUNCTION_43_0(v40[11]);
        (v45)(v47);
        v48 = v10 + v40[12];
        v49 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v49))
        {

          v128 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v50 + 8))(v48 + v128);
          v45(v48 + *(v2 + 24), v43);
        }

        v51 = v40[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v52 + 8))(v10 + v51);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v53 = OUTLINED_FUNCTION_31_1();
        v54 = type metadata accessor for Snippet.Reminder.AppLink(v53);
        if (!OUTLINED_FUNCTION_16_4(v54))
        {
          OUTLINED_FUNCTION_19_2();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v51, *(v51 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v116 + 8))(v51);
          }
        }

        goto LABEL_99;
      case 5u:

        if (*(v10 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v61 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_72;
      case 6u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v80 + 8))(v10);
        v81 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v81);

        OUTLINED_FUNCTION_11_5(v81[6]);

        OUTLINED_FUNCTION_11_5(v81[7]);

        v82 = v10 + v81[8];
        if (*(v82 + 24))
        {

          if (*(v82 + 96) != 255)
          {
            sub_26814304C(*(v82 + 80), *(v82 + 88));
          }
        }

        v83 = v81[9];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v86 = *(v85 + 8);
        v7 = v85 + 8;
        v86(v10 + v83, v84);
        v87 = OUTLINED_FUNCTION_43_0(v81[10]);
        (v86)(v87);
        v88 = OUTLINED_FUNCTION_43_0(v81[11]);
        (v86)(v88);
        v89 = v10 + v81[12];
        v90 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v90))
        {

          v129 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v91 + 8))(v89 + v129);
          v86(v89 + *(v2 + 24), v84);
        }

        v92 = v81[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v93 + 8))(v10 + v92);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v94 = OUTLINED_FUNCTION_31_1();
        v95 = type metadata accessor for Snippet.Reminder.AppLink(v94);
        if (!OUTLINED_FUNCTION_16_4(v95))
        {
          OUTLINED_FUNCTION_19_2();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v92, *(v92 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v121 + 8))(v92);
          }
        }

        v122 = v10 + *(type metadata accessor for Snippet.SetTaskAttribute3p(0) + 20);

        v123 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v124 + 8))(v122 + v123);
LABEL_99:
        v9 = v132;
        break;
      case 7u:
LABEL_37:

        break;
      case 8u:

        v61 = *(type metadata accessor for Snippet.CreateNote3p(0) + 20);
        goto LABEL_72;
      case 0xAu:
        v100 = type metadata accessor for Snippet.SectionHeading(0);
        v101 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v101, v102, v100))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v126 + 8))(v10);
              break;
            case 1u:

              if (*(v10 + 96) != 255)
              {
                sub_26814304C(*(v10 + 80), *(v10 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v103 = type metadata accessor for Snippet.SearchResult3p(0);

        v61 = *(v103 + 32);
LABEL_72:
        v10 += v61;

        v105 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
LABEL_85:
        OUTLINED_FUNCTION_0_9();
        (*(v114 + 8))(v10 + v105);
        break;
      default:
        break;
    }
  }

  v14 = v0 + v9;
  v15 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v15, v16, v11))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v17 + 8))(v0 + v9);
        v18 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v18);
        goto LABEL_87;
      case 1u:
      case 9u:

        goto LABEL_87;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v56 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v57 = v14 + v56[5];
        type metadata accessor for Snippet.SectionHeading(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v106 + 8))(v57);
            break;
          case 1u:

            if (*(v57 + 96) != 255)
            {
              sub_26814304C(*(v57 + 80), *(v57 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v107 = v56[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v108 + 8))(v14 + v107);
        v109 = v56[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9();
        (*(v110 + 8))(v14 + v109);
        break;
      case 4u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v21 + 8))(v0 + v9);
        v22 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v22);

        OUTLINED_FUNCTION_11_5(v22[6]);

        OUTLINED_FUNCTION_11_5(v22[7]);

        v23 = v14 + v22[8];
        if (*(v23 + 24))
        {

          if (*(v23 + 96) != 255)
          {
            sub_26814304C(*(v23 + 80), *(v23 + 88));
          }
        }

        v24 = v22[9];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v27 = *(v26 + 8);
        v27(v14 + v24, v25);
        v28 = OUTLINED_FUNCTION_44_0(v22[10]);
        (v27)(v28);
        v29 = OUTLINED_FUNCTION_44_0(v22[11]);
        (v27)(v29);
        v30 = OUTLINED_FUNCTION_31_1();
        v31 = type metadata accessor for Snippet.Reminder.LocationTrigger(v30);
        if (!OUTLINED_FUNCTION_16_4(v31))
        {

          v130 = v7;
          v32 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v34 = v24 + v32;
          v7 = v130;
          (*(v33 + 8))(v34);
          v27(v24 + *(v9 + 24), v25);
        }

        v35 = v22[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v36 + 8))(v14 + v35);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v37 = v14 + v22[16];
        v38 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v38))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v37, *(v37 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v115 + 8))(v37);
          }
        }

        goto LABEL_87;
      case 5u:

        if (*(v14 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v60 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_93;
      case 6u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v62 + 8))(v0 + v9);
        v63 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v63);

        OUTLINED_FUNCTION_11_5(v63[6]);

        OUTLINED_FUNCTION_11_5(v63[7]);

        v64 = v14 + v63[8];
        if (*(v64 + 24))
        {

          if (*(v64 + 96) != 255)
          {
            sub_26814304C(*(v64 + 80), *(v64 + 88));
          }
        }

        v65 = v63[9];
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v68 = *(v67 + 8);
        v68(v14 + v65, v66);
        v69 = OUTLINED_FUNCTION_44_0(v63[10]);
        (v68)(v69);
        v70 = OUTLINED_FUNCTION_44_0(v63[11]);
        (v68)(v70);
        v71 = OUTLINED_FUNCTION_31_1();
        v72 = type metadata accessor for Snippet.Reminder.LocationTrigger(v71);
        if (!OUTLINED_FUNCTION_16_4(v72))
        {

          v131 = v7;
          v73 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v75 = v65 + v73;
          v7 = v131;
          (*(v74 + 8))(v75);
          v68(v65 + *(v9 + 24), v66);
        }

        v76 = v63[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v77 + 8))(v14 + v76);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v78 = v14 + v63[16];
        v79 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v79))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v78, *(v78 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v117 + 8))(v78);
          }
        }

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p(0);
        goto LABEL_92;
      case 7u:
LABEL_87:

        break;
      case 8u:

        Note3p = type metadata accessor for Snippet.CreateNote3p(0);
LABEL_92:
        v60 = *(Note3p + 20);
        goto LABEL_93;
      case 0xAu:
        v96 = type metadata accessor for Snippet.SectionHeading(0);
        v97 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v97, v98, v96))
        {
          OUTLINED_FUNCTION_0_0();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v125 + 8))(v0 + v9);
              break;
            case 1u:

              if (*(v14 + 96) != 255)
              {
                sub_26814304C(*(v14 + 80), *(v14 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v99 = type metadata accessor for Snippet.SearchResult3p(0);

        v60 = *(v99 + 32);
LABEL_93:
        v118 = v14 + v60;

        v119 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v120 + 8))(v118 + v119);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v7, v5 | 7);
}

uint64_t sub_2680EFDFC()
{
  OUTLINED_FUNCTION_94();
  v0 = Snippet.Reminder.isComplete.getter();
  return OUTLINED_FUNCTION_68(v0);
}

uint64_t sub_2680EFE48()
{
  OUTLINED_FUNCTION_94();
  v0 = Snippet.Reminder.isCompletable.getter();
  return OUTLINED_FUNCTION_68(v0);
}

uint64_t sub_2680EFE94()
{
  OUTLINED_FUNCTION_94();
  v0 = Snippet.Reminder.isFlagged.getter();
  return OUTLINED_FUNCTION_68(v0);
}

uint64_t sub_2680EFF10()
{
  OUTLINED_FUNCTION_94();
  v0 = Snippet.Reminder.LocationTrigger.isCar.getter();
  return OUTLINED_FUNCTION_68(v0);
}

uint64_t sub_2680EFF84()
{
  OUTLINED_FUNCTION_94();
  v0 = Snippet.Reminder.TemporalTrigger.isAllDay.getter();
  return OUTLINED_FUNCTION_68(v0);
}

uint64_t sub_2680EFFD0(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_47_0();
  sub_2683CB598();
  OUTLINED_FUNCTION_29_2();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_88();
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_107(*(v3 + a3[6] + 8));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    OUTLINED_FUNCTION_29_2();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
      OUTLINED_FUNCTION_29_2();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[12];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_29_2();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[13];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
          v12 = a3[16];
        }
      }
    }

    v7 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void sub_2680F017C()
{
  OUTLINED_FUNCTION_45_0();
  sub_2683CB598();
  OUTLINED_FUNCTION_29_2();
  if (*(v4 + 84) != v3)
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 24) + 8) = (v0 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) != v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
      OUTLINED_FUNCTION_29_2();
      if (*(v6 + 84) != v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_29_2();
        if (*(v7 + 84) != v3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_2680F0328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_107(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  OUTLINED_FUNCTION_29_2();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_2680F03FC(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    }

    OUTLINED_FUNCTION_106();

    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  return result;
}

uint64_t sub_2680F04E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  OUTLINED_FUNCTION_29_2();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    v7 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

uint64_t sub_2680F058C()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) != v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_2680F0634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_4();
  sub_2683CB438();
  OUTLINED_FUNCTION_29_2();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20) + 8) >> 60;
    v10 = ((4 * v9) & 0xC) == 0;
    v11 = ((4 * v9) & 0xC | (v9 >> 2)) ^ 0xF;
    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

void sub_2680F06E4()
{
  OUTLINED_FUNCTION_45_0();
  sub_2683CB438();
  OUTLINED_FUNCTION_29_2();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_106();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    v9 = (v1 + *(v2 + 20));
    *v9 = 0;
    v9[1] = ((~v0 >> 2) & 3 | (4 * ~v0)) << 60;
  }
}

uint64_t sub_2680F0838@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2683CD438();
  *a1 = result;
  return result;
}

__n128 sub_2680F08F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2680F0A00()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 24) & ~v4;
  v8 = (v6 + v4 + v7) & ~v4;

  v9 = v0 + v7;
  v10 = type metadata accessor for Snippet(0);
  v11 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v11, v12, v10))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v18 + 8))(v9);
        v19 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v19);
        goto LABEL_37;
      case 1u:
      case 9u:

        goto LABEL_37;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v56)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v59 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v60 = OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading(v60);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v114 + 8))(v1);
            break;
          case 1u:

            if (*(v1 + 96) != 255)
            {
              sub_26814304C(*(v1 + 80), *(v1 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v115 = *(v59 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v116 + 8))(v9 + v115);
        v108 = *(v59 + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_85;
      case 4u:
        v135 = v8;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v38 + 8))(v9);
        v39 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v39);

        OUTLINED_FUNCTION_11_5(v39[6]);

        OUTLINED_FUNCTION_11_5(v39[7]);

        v40 = v9 + v39[8];
        if (*(v40 + 24))
        {

          if (*(v40 + 96) != 255)
          {
            sub_26814304C(*(v40 + 80), *(v40 + 88));
          }
        }

        v41 = v39[9];
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v44 = *(v43 + 8);
        v6 = v43 + 8;
        v44(v9 + v41, v42);
        v45 = OUTLINED_FUNCTION_43_0(v39[10]);
        (v44)(v45);
        v46 = OUTLINED_FUNCTION_43_0(v39[11]);
        (v44)(v46);
        v47 = v9 + v39[12];
        v48 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        v49 = OUTLINED_FUNCTION_27_2();
        if (!__swift_getEnumTagSinglePayload(v49, v50, v48))
        {

          v131 = *(v48 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v51 + 8))(v47 + v131);
          v44(v47 + *(v48 + 24), v42);
        }

        v52 = v39[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v53 + 8))(v9 + v52);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v54 = OUTLINED_FUNCTION_31_1();
        v55 = type metadata accessor for Snippet.Reminder.AppLink(v54);
        if (!OUTLINED_FUNCTION_16_4(v55))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v52, *(v52 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v119 + 8))(v52);
          }
        }

        goto LABEL_99;
      case 5u:

        if (*(v9 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v56)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v62 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_72;
      case 6u:
        v135 = v8;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v81 + 8))(v9);
        v82 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v82);

        OUTLINED_FUNCTION_11_5(v82[6]);

        OUTLINED_FUNCTION_11_5(v82[7]);

        v83 = v9 + v82[8];
        if (*(v83 + 24))
        {

          if (*(v83 + 96) != 255)
          {
            sub_26814304C(*(v83 + 80), *(v83 + 88));
          }
        }

        v84 = v82[9];
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v87 = *(v86 + 8);
        v6 = v86 + 8;
        v87(v9 + v84, v85);
        v88 = OUTLINED_FUNCTION_43_0(v82[10]);
        (v87)(v88);
        v89 = OUTLINED_FUNCTION_43_0(v82[11]);
        (v87)(v89);
        v90 = v9 + v82[12];
        v91 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        v92 = OUTLINED_FUNCTION_27_2();
        if (!__swift_getEnumTagSinglePayload(v92, v93, v91))
        {

          v132 = *(v91 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v94 + 8))(v90 + v132);
          v87(v90 + *(v91 + 24), v85);
        }

        v95 = v82[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v96 + 8))(v9 + v95);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v97 = OUTLINED_FUNCTION_31_1();
        v98 = type metadata accessor for Snippet.Reminder.AppLink(v97);
        if (!OUTLINED_FUNCTION_16_4(v98))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v95, *(v95 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v124 + 8))(v95);
          }
        }

        v125 = v9 + *(type metadata accessor for Snippet.SetTaskAttribute3p(0) + 20);

        v126 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v127 + 8))(v125 + v126);
LABEL_99:
        v8 = v135;
        break;
      case 7u:
LABEL_37:

        break;
      case 8u:

        v62 = *(type metadata accessor for Snippet.CreateNote3p(0) + 20);
        goto LABEL_72;
      case 0xAu:
        v103 = type metadata accessor for Snippet.SectionHeading(0);
        v104 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v104, v105, v103))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v129 + 8))(v9);
              break;
            case 1u:

              if (*(v9 + 96) != 255)
              {
                sub_26814304C(*(v9 + 80), *(v9 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v106 = type metadata accessor for Snippet.SearchResult3p(0);

        v62 = *(v106 + 32);
LABEL_72:
        v9 += v62;

        v108 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
LABEL_85:
        OUTLINED_FUNCTION_0_9();
        (*(v117 + 8))(v9 + v108);
        break;
      default:
        break;
    }
  }

  v13 = v0 + v8;
  v14 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v10))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v16 + 8))(v0 + v8);
        v17 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v17);
        goto LABEL_87;
      case 1u:
      case 9u:

        goto LABEL_87;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v56)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v57 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v58 = v13 + v57[5];
        type metadata accessor for Snippet.SectionHeading(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v109 + 8))(v58);
            break;
          case 1u:

            if (*(v58 + 96) != 255)
            {
              sub_26814304C(*(v58 + 80), *(v58 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v110 = v57[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v111 + 8))(v13 + v110);
        v112 = v57[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9();
        (*(v113 + 8))(v13 + v112);
        break;
      case 4u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v20 + 8))(v0 + v8);
        v21 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v21);

        OUTLINED_FUNCTION_11_5(v21[6]);

        OUTLINED_FUNCTION_11_5(v21[7]);

        v22 = v13 + v21[8];
        if (*(v22 + 24))
        {

          if (*(v22 + 96) != 255)
          {
            sub_26814304C(*(v22 + 80), *(v22 + 88));
          }
        }

        v23 = v21[9];
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v26 = *(v25 + 8);
        v26(v13 + v23, v24);
        v27 = OUTLINED_FUNCTION_44_0(v21[10]);
        (v26)(v27);
        v28 = OUTLINED_FUNCTION_44_0(v21[11]);
        (v26)(v28);
        v29 = OUTLINED_FUNCTION_31_1();
        v30 = type metadata accessor for Snippet.Reminder.LocationTrigger(v29);
        if (!OUTLINED_FUNCTION_16_4(v30))
        {

          v133 = v6;
          v31 = *(v8 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v33 = v23 + v31;
          v6 = v133;
          (*(v32 + 8))(v33);
          v26(v23 + *(v8 + 24), v24);
        }

        v34 = v21[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v35 + 8))(v13 + v34);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v36 = v13 + v21[16];
        v37 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v37))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v36, *(v36 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v118 + 8))(v36);
          }
        }

        goto LABEL_87;
      case 5u:

        if (*(v13 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v56)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v61 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_93;
      case 6u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v63 + 8))(v0 + v8);
        v64 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v64);

        OUTLINED_FUNCTION_11_5(v64[6]);

        OUTLINED_FUNCTION_11_5(v64[7]);

        v65 = v13 + v64[8];
        if (*(v65 + 24))
        {

          if (*(v65 + 96) != 255)
          {
            sub_26814304C(*(v65 + 80), *(v65 + 88));
          }
        }

        v66 = v64[9];
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v69 = *(v68 + 8);
        v69(v13 + v66, v67);
        v70 = OUTLINED_FUNCTION_44_0(v64[10]);
        (v69)(v70);
        v71 = OUTLINED_FUNCTION_44_0(v64[11]);
        (v69)(v71);
        v72 = OUTLINED_FUNCTION_31_1();
        v73 = type metadata accessor for Snippet.Reminder.LocationTrigger(v72);
        if (!OUTLINED_FUNCTION_16_4(v73))
        {

          v134 = v6;
          v74 = *(v8 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v76 = v66 + v74;
          v6 = v134;
          (*(v75 + 8))(v76);
          v69(v66 + *(v8 + 24), v67);
        }

        v77 = v64[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v78 + 8))(v13 + v77);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v79 = v13 + v64[16];
        v80 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v80))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v79, *(v79 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v120 + 8))(v79);
          }
        }

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p(0);
        goto LABEL_92;
      case 7u:
LABEL_87:

        break;
      case 8u:

        Note3p = type metadata accessor for Snippet.CreateNote3p(0);
LABEL_92:
        v61 = *(Note3p + 20);
        goto LABEL_93;
      case 0xAu:
        v99 = type metadata accessor for Snippet.SectionHeading(0);
        v100 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v100, v101, v99))
        {
          OUTLINED_FUNCTION_0_0();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v128 + 8))(v0 + v8);
              break;
            case 1u:

              if (*(v13 + 96) != 255)
              {
                sub_26814304C(*(v13 + 80), *(v13 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v102 = type metadata accessor for Snippet.SearchResult3p(0);

        v61 = *(v102 + 32);
LABEL_93:
        v121 = v13 + v61;

        v122 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v123 + 8))(v121 + v122);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v6, v4 | 7);
}

uint64_t sub_2680F1CD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2681481AC(a2, a3);
  *a1 = result & 1;
  return result;
}

id sub_2680F1DAC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2680F1DC0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2680F2154()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F218C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  OUTLINED_FUNCTION_3_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v6 = *(v5 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v7 = sub_2683CF2A8();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_2680F22B8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F22EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  if (*(v0 + 200) == 1)
  {
  }

  else if (!*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));

  return MEMORY[0x2821FE8E8](v0, 296, 7);
}

uint64_t sub_2680F2388()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F2404()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2680F2454()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F2494()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2680F24F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F2528()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F25F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F262C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2680F267C()
{
  OUTLINED_FUNCTION_20_10();

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2680F26D8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  OUTLINED_FUNCTION_19_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F2714()
{
  sub_2683CBCE8();
  OUTLINED_FUNCTION_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2680F2794()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F27CC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  __swift_destroy_boxed_opaque_existential_0((v0 + 160));

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_2680F2838()
{
  OUTLINED_FUNCTION_20_10();

  if (*(v0 + 200) == 1)
  {
  }

  else if (!*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));

  return MEMORY[0x2821FE8E8](v0, 296, 7);
}

uint64_t sub_2680F28B8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  OUTLINED_FUNCTION_12_9();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F28FC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2680F297C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2680F29D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_2680F2A08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2680F2A48()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  }

  OUTLINED_FUNCTION_14_10();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F2A94()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2680F2AE4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2680F2B1C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  OUTLINED_FUNCTION_14_10();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F2B68()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v1 = v0[13];
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2680F2C10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F2C4C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2683CB668();
    v10 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_2680F2CE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_2683CB668();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2680F2D60()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  if (*(v0 + 112) == 1)
  {
  }

  else if (!*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_2680F2DDC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2680F2EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Snippet.Reminder(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for Snippet.Interaction(0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2680F2F60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Snippet.Reminder(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for Snippet.Interaction(0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2680F30D4()
{

  OUTLINED_FUNCTION_69_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2680F3110()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2680F3168()
{

  if (*(v0 + 32))
  {
  }

  sub_2681B4940(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2680F31CC()
{

  OUTLINED_FUNCTION_68_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2680F3200()
{

  OUTLINED_FUNCTION_37_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2680F3244()
{
  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2680F32C4()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2680F331C()
{

  OUTLINED_FUNCTION_69_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2680F3354()
{

  OUTLINED_FUNCTION_37_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2680F3398()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_113_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F34C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2683CB668();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2680F3550(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2683CB668();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2680F3630()
{
  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2680F36B0()
{

  OUTLINED_FUNCTION_37_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2680F36F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2680F3800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotebookNLv3Intent(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_2683CB668();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2680F38D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NotebookNLv3Intent(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = sub_2683CB668();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2680F39F4(uint64_t a1, int a2, uint64_t a3)
{
  type metadata accessor for LocationQuery.QueryType(0);
  OUTLINED_FUNCTION_29_2();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_5_15();

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }

  else
  {
    v11 = *(a1 + *(a3 + 24));
    if (v11 <= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = *(a1 + *(a3 + 24));
    }

    v13 = v12 - 2;
    if (v11 >= 2)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }
}

void sub_2680F3A9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for LocationQuery.QueryType(0);
  OUTLINED_FUNCTION_29_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 20);

    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }
}

uint64_t sub_2680F3B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CEBD8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2680F3B8C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2683CEBD8();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_2680F3BE8(uint64_t a1, int a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_29_2();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_5_15();

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }

  else
  {
    v11 = *(a1 + *(a3 + 32) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

void sub_2680F3C98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_29_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 20);

    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }
}

uint64_t sub_2680F3D9C()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = (v5 + 24) & ~v5;
  v9 = (v7 + v5 + v8) & ~v5;

  v10 = v0 + v8;
  v11 = type metadata accessor for Snippet(0);
  v12 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v12, v13, v11))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v19 + 8))(v10);
        v20 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v20);
        goto LABEL_37;
      case 1u:
      case 9u:

        goto LABEL_37;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v58 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v59 = OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading(v59);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v111 + 8))(v1);
            break;
          case 1u:

            if (*(v1 + 96) != 255)
            {
              sub_26814304C(*(v1 + 80), *(v1 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v112 = *(v58 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v113 + 8))(v10 + v112);
        v105 = *(v58 + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_85;
      case 4u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v39 + 8))(v10);
        v40 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v40);

        OUTLINED_FUNCTION_11_5(v40[6]);

        OUTLINED_FUNCTION_11_5(v40[7]);

        v41 = v10 + v40[8];
        if (*(v41 + 24))
        {

          if (*(v41 + 96) != 255)
          {
            sub_26814304C(*(v41 + 80), *(v41 + 88));
          }
        }

        v42 = v40[9];
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v45 = *(v44 + 8);
        v7 = v44 + 8;
        v45(v10 + v42, v43);
        v46 = OUTLINED_FUNCTION_43_0(v40[10]);
        (v45)(v46);
        v47 = OUTLINED_FUNCTION_43_0(v40[11]);
        (v45)(v47);
        v48 = v10 + v40[12];
        v49 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v49))
        {

          v128 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v50 + 8))(v48 + v128);
          v45(v48 + *(v2 + 24), v43);
        }

        v51 = v40[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v52 + 8))(v10 + v51);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v53 = OUTLINED_FUNCTION_31_1();
        v54 = type metadata accessor for Snippet.Reminder.AppLink(v53);
        if (!OUTLINED_FUNCTION_16_4(v54))
        {
          OUTLINED_FUNCTION_19_2();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v51, *(v51 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v116 + 8))(v51);
          }
        }

        goto LABEL_99;
      case 5u:

        if (*(v10 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v61 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_72;
      case 6u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v80 + 8))(v10);
        v81 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v81);

        OUTLINED_FUNCTION_11_5(v81[6]);

        OUTLINED_FUNCTION_11_5(v81[7]);

        v82 = v10 + v81[8];
        if (*(v82 + 24))
        {

          if (*(v82 + 96) != 255)
          {
            sub_26814304C(*(v82 + 80), *(v82 + 88));
          }
        }

        v83 = v81[9];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v86 = *(v85 + 8);
        v7 = v85 + 8;
        v86(v10 + v83, v84);
        v87 = OUTLINED_FUNCTION_43_0(v81[10]);
        (v86)(v87);
        v88 = OUTLINED_FUNCTION_43_0(v81[11]);
        (v86)(v88);
        v89 = v10 + v81[12];
        v90 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v90))
        {

          v129 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v91 + 8))(v89 + v129);
          v86(v89 + *(v2 + 24), v84);
        }

        v92 = v81[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v93 + 8))(v10 + v92);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v94 = OUTLINED_FUNCTION_31_1();
        v95 = type metadata accessor for Snippet.Reminder.AppLink(v94);
        if (!OUTLINED_FUNCTION_16_4(v95))
        {
          OUTLINED_FUNCTION_19_2();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v92, *(v92 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v121 + 8))(v92);
          }
        }

        v122 = v10 + *(type metadata accessor for Snippet.SetTaskAttribute3p(0) + 20);

        v123 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v124 + 8))(v122 + v123);
LABEL_99:
        v9 = v132;
        break;
      case 7u:
LABEL_37:

        break;
      case 8u:

        v61 = *(type metadata accessor for Snippet.CreateNote3p(0) + 20);
        goto LABEL_72;
      case 0xAu:
        v100 = type metadata accessor for Snippet.SectionHeading(0);
        v101 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v101, v102, v100))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v126 + 8))(v10);
              break;
            case 1u:

              if (*(v10 + 96) != 255)
              {
                sub_26814304C(*(v10 + 80), *(v10 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v103 = type metadata accessor for Snippet.SearchResult3p(0);

        v61 = *(v103 + 32);
LABEL_72:
        v10 += v61;

        v105 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
LABEL_85:
        OUTLINED_FUNCTION_0_9();
        (*(v114 + 8))(v10 + v105);
        break;
      default:
        break;
    }
  }

  v14 = v0 + v9;
  v15 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v15, v16, v11))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v17 + 8))(v0 + v9);
        v18 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v18);
        goto LABEL_87;
      case 1u:
      case 9u:

        goto LABEL_87;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v56 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v57 = v14 + v56[5];
        type metadata accessor for Snippet.SectionHeading(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v106 + 8))(v57);
            break;
          case 1u:

            if (*(v57 + 96) != 255)
            {
              sub_26814304C(*(v57 + 80), *(v57 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v107 = v56[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v108 + 8))(v14 + v107);
        v109 = v56[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9();
        (*(v110 + 8))(v14 + v109);
        break;
      case 4u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v21 + 8))(v0 + v9);
        v22 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v22);

        OUTLINED_FUNCTION_11_5(v22[6]);

        OUTLINED_FUNCTION_11_5(v22[7]);

        v23 = v14 + v22[8];
        if (*(v23 + 24))
        {

          if (*(v23 + 96) != 255)
          {
            sub_26814304C(*(v23 + 80), *(v23 + 88));
          }
        }

        v24 = v22[9];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v27 = *(v26 + 8);
        v27(v14 + v24, v25);
        v28 = OUTLINED_FUNCTION_44_0(v22[10]);
        (v27)(v28);
        v29 = OUTLINED_FUNCTION_44_0(v22[11]);
        (v27)(v29);
        v30 = OUTLINED_FUNCTION_31_1();
        v31 = type metadata accessor for Snippet.Reminder.LocationTrigger(v30);
        if (!OUTLINED_FUNCTION_16_4(v31))
        {

          v130 = v7;
          v32 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v34 = v24 + v32;
          v7 = v130;
          (*(v33 + 8))(v34);
          v27(v24 + *(v9 + 24), v25);
        }

        v35 = v22[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v36 + 8))(v14 + v35);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v37 = v14 + v22[16];
        v38 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v38))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v37, *(v37 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v115 + 8))(v37);
          }
        }

        goto LABEL_87;
      case 5u:

        if (*(v14 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v60 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_93;
      case 6u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v62 + 8))(v0 + v9);
        v63 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v63);

        OUTLINED_FUNCTION_11_5(v63[6]);

        OUTLINED_FUNCTION_11_5(v63[7]);

        v64 = v14 + v63[8];
        if (*(v64 + 24))
        {

          if (*(v64 + 96) != 255)
          {
            sub_26814304C(*(v64 + 80), *(v64 + 88));
          }
        }

        v65 = v63[9];
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v68 = *(v67 + 8);
        v68(v14 + v65, v66);
        v69 = OUTLINED_FUNCTION_44_0(v63[10]);
        (v68)(v69);
        v70 = OUTLINED_FUNCTION_44_0(v63[11]);
        (v68)(v70);
        v71 = OUTLINED_FUNCTION_31_1();
        v72 = type metadata accessor for Snippet.Reminder.LocationTrigger(v71);
        if (!OUTLINED_FUNCTION_16_4(v72))
        {

          v131 = v7;
          v73 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v75 = v65 + v73;
          v7 = v131;
          (*(v74 + 8))(v75);
          v68(v65 + *(v9 + 24), v66);
        }

        v76 = v63[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v77 + 8))(v14 + v76);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v78 = v14 + v63[16];
        v79 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v79))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v78, *(v78 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v117 + 8))(v78);
          }
        }

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p(0);
        goto LABEL_92;
      case 7u:
LABEL_87:

        break;
      case 8u:

        Note3p = type metadata accessor for Snippet.CreateNote3p(0);
LABEL_92:
        v60 = *(Note3p + 20);
        goto LABEL_93;
      case 0xAu:
        v96 = type metadata accessor for Snippet.SectionHeading(0);
        v97 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v97, v98, v96))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v125 + 8))(v0 + v9);
              break;
            case 1u:

              if (*(v14 + 96) != 255)
              {
                sub_26814304C(*(v14 + 80), *(v14 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v99 = type metadata accessor for Snippet.SearchResult3p(0);

        v60 = *(v99 + 32);
LABEL_93:
        v118 = v14 + v60;

        v119 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v120 + 8))(v118 + v119);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v7, v5 | 7);
}

uint64_t sub_2680F505C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2681D1A74(a2);

  *a1 = v4;
  return result;
}

uint64_t sub_2680F5098()
{
  if (*(v0 + 16) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2680F5110()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2680F5178()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2680F5228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for Snippet.Interaction(0);
    v8 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2680F5304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for Snippet.Interaction(0);
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2680F55B8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_19_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F55F4()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2680F5644()
{
  OUTLINED_FUNCTION_20_10();

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2680F567C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2680F56D4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F5708()
{

  OUTLINED_FUNCTION_37_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2680F5744()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_2680F579C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  OUTLINED_FUNCTION_19_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F57D8()
{
  OUTLINED_FUNCTION_20_10();

  if (*(v0 + 200) == 1)
  {
  }

  else if (!*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));

  return MEMORY[0x2821FE8E8](v0, 296, 7);
}

uint64_t sub_2680F5858()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2680F58EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2680F5940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2680F5998(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2683CB668();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2680F5A20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2683CB668();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2680F60C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);
  OUTLINED_FUNCTION_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2680F6180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2683CF158();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2680F61C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2683CB668();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_2683CE7F8();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2680F6290(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_2683CB668();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_2683CE7F8();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2680F63A0()
{
  v1 = type metadata accessor for InstalledAppProvider(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20);
  v7 = sub_2683CB668();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2680F647C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_2683CB668();
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_2680F6504(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_2683CB668();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2680F6628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2680EFC0C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2680F6750()
{

  OUTLINED_FUNCTION_68_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2680F6784()
{
  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2680F6804()
{
  sub_268143054(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2680F6864()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F6898()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_19_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F68D4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  OUTLINED_FUNCTION_19_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F6910()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  if (*(v0 + 200) == 1)
  {
  }

  else if (!*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));

  return MEMORY[0x2821FE8E8](v0, 296, 7);
}

uint64_t sub_2680F69AC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2680F6A44()
{
  sub_2683CAEA8();
  OUTLINED_FUNCTION_0_9();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2680F6AC0@<X0>(uint64_t *a1@<X8>)
{
  result = Snippet.Interaction.interaction.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2680F6AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2683CB828();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2680F6B84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_2683CB828();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2680F6D14()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = (v5 + 24) & ~v5;
  v9 = (v7 + v5 + v8) & ~v5;

  v10 = v0 + v8;
  v11 = type metadata accessor for Snippet(0);
  v12 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v12, v13, v11))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v19 + 8))(v10);
        v20 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v20);
        goto LABEL_37;
      case 1u:
      case 9u:

        goto LABEL_37;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v58 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v59 = OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading(v59);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v111 + 8))(v1);
            break;
          case 1u:

            if (*(v1 + 96) != 255)
            {
              sub_26814304C(*(v1 + 80), *(v1 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v112 = *(v58 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v113 + 8))(v10 + v112);
        v105 = *(v58 + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_85;
      case 4u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v39 + 8))(v10);
        v40 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v40);

        OUTLINED_FUNCTION_11_5(v40[6]);

        OUTLINED_FUNCTION_11_5(v40[7]);

        v41 = v10 + v40[8];
        if (*(v41 + 24))
        {

          if (*(v41 + 96) != 255)
          {
            sub_26814304C(*(v41 + 80), *(v41 + 88));
          }
        }

        v42 = v40[9];
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v45 = *(v44 + 8);
        v7 = v44 + 8;
        v45(v10 + v42, v43);
        v46 = OUTLINED_FUNCTION_43_0(v40[10]);
        (v45)(v46);
        v47 = OUTLINED_FUNCTION_43_0(v40[11]);
        (v45)(v47);
        v48 = v10 + v40[12];
        v49 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v49))
        {

          v128 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v50 + 8))(v48 + v128);
          v45(v48 + *(v2 + 24), v43);
        }

        v51 = v40[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v52 + 8))(v10 + v51);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v53 = OUTLINED_FUNCTION_31_1();
        v54 = type metadata accessor for Snippet.Reminder.AppLink(v53);
        if (!OUTLINED_FUNCTION_16_4(v54))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v51, *(v51 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v116 + 8))(v51);
          }
        }

        goto LABEL_99;
      case 5u:

        if (*(v10 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v61 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_72;
      case 6u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v80 + 8))(v10);
        v81 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v81);

        OUTLINED_FUNCTION_11_5(v81[6]);

        OUTLINED_FUNCTION_11_5(v81[7]);

        v82 = v10 + v81[8];
        if (*(v82 + 24))
        {

          if (*(v82 + 96) != 255)
          {
            sub_26814304C(*(v82 + 80), *(v82 + 88));
          }
        }

        v83 = v81[9];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v86 = *(v85 + 8);
        v7 = v85 + 8;
        v86(v10 + v83, v84);
        v87 = OUTLINED_FUNCTION_43_0(v81[10]);
        (v86)(v87);
        v88 = OUTLINED_FUNCTION_43_0(v81[11]);
        (v86)(v88);
        v89 = v10 + v81[12];
        v90 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v90))
        {

          v129 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v91 + 8))(v89 + v129);
          v86(v89 + *(v2 + 24), v84);
        }

        v92 = v81[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v93 + 8))(v10 + v92);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v94 = OUTLINED_FUNCTION_31_1();
        v95 = type metadata accessor for Snippet.Reminder.AppLink(v94);
        if (!OUTLINED_FUNCTION_16_4(v95))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v92, *(v92 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v121 + 8))(v92);
          }
        }

        v122 = v10 + *(type metadata accessor for Snippet.SetTaskAttribute3p(0) + 20);

        v123 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v124 + 8))(v122 + v123);
LABEL_99:
        v9 = v132;
        break;
      case 7u:
LABEL_37:

        break;
      case 8u:

        v61 = *(type metadata accessor for Snippet.CreateNote3p(0) + 20);
        goto LABEL_72;
      case 0xAu:
        v100 = type metadata accessor for Snippet.SectionHeading(0);
        v101 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v101, v102, v100))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v126 + 8))(v10);
              break;
            case 1u:

              if (*(v10 + 96) != 255)
              {
                sub_26814304C(*(v10 + 80), *(v10 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v103 = type metadata accessor for Snippet.SearchResult3p(0);

        v61 = *(v103 + 32);
LABEL_72:
        v10 += v61;

        v105 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
LABEL_85:
        OUTLINED_FUNCTION_0_9();
        (*(v114 + 8))(v10 + v105);
        break;
      default:
        break;
    }
  }

  v14 = v0 + v9;
  v15 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v15, v16, v11))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v17 + 8))(v0 + v9);
        v18 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v18);
        goto LABEL_87;
      case 1u:
      case 9u:

        goto LABEL_87;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v56 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v57 = v14 + v56[5];
        type metadata accessor for Snippet.SectionHeading(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v106 + 8))(v57);
            break;
          case 1u:

            if (*(v57 + 96) != 255)
            {
              sub_26814304C(*(v57 + 80), *(v57 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v107 = v56[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v108 + 8))(v14 + v107);
        v109 = v56[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9();
        (*(v110 + 8))(v14 + v109);
        break;
      case 4u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v21 + 8))(v0 + v9);
        v22 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v22);

        OUTLINED_FUNCTION_11_5(v22[6]);

        OUTLINED_FUNCTION_11_5(v22[7]);

        v23 = v14 + v22[8];
        if (*(v23 + 24))
        {

          if (*(v23 + 96) != 255)
          {
            sub_26814304C(*(v23 + 80), *(v23 + 88));
          }
        }

        v24 = v22[9];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v27 = *(v26 + 8);
        v27(v14 + v24, v25);
        v28 = OUTLINED_FUNCTION_44_0(v22[10]);
        (v27)(v28);
        v29 = OUTLINED_FUNCTION_44_0(v22[11]);
        (v27)(v29);
        v30 = OUTLINED_FUNCTION_31_1();
        v31 = type metadata accessor for Snippet.Reminder.LocationTrigger(v30);
        if (!OUTLINED_FUNCTION_16_4(v31))
        {

          v130 = v7;
          v32 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v34 = v24 + v32;
          v7 = v130;
          (*(v33 + 8))(v34);
          v27(v24 + *(v9 + 24), v25);
        }

        v35 = v22[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v36 + 8))(v14 + v35);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v37 = v14 + v22[16];
        v38 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v38))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v37, *(v37 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v115 + 8))(v37);
          }
        }

        goto LABEL_87;
      case 5u:

        if (*(v14 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v60 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_93;
      case 6u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v62 + 8))(v0 + v9);
        v63 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v63);

        OUTLINED_FUNCTION_11_5(v63[6]);

        OUTLINED_FUNCTION_11_5(v63[7]);

        v64 = v14 + v63[8];
        if (*(v64 + 24))
        {

          if (*(v64 + 96) != 255)
          {
            sub_26814304C(*(v64 + 80), *(v64 + 88));
          }
        }

        v65 = v63[9];
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v68 = *(v67 + 8);
        v68(v14 + v65, v66);
        v69 = OUTLINED_FUNCTION_44_0(v63[10]);
        (v68)(v69);
        v70 = OUTLINED_FUNCTION_44_0(v63[11]);
        (v68)(v70);
        v71 = OUTLINED_FUNCTION_31_1();
        v72 = type metadata accessor for Snippet.Reminder.LocationTrigger(v71);
        if (!OUTLINED_FUNCTION_16_4(v72))
        {

          v131 = v7;
          v73 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v75 = v65 + v73;
          v7 = v131;
          (*(v74 + 8))(v75);
          v68(v65 + *(v9 + 24), v66);
        }

        v76 = v63[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v77 + 8))(v14 + v76);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v78 = v14 + v63[16];
        v79 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v79))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v78, *(v78 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v117 + 8))(v78);
          }
        }

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p(0);
        goto LABEL_92;
      case 7u:
LABEL_87:

        break;
      case 8u:

        Note3p = type metadata accessor for Snippet.CreateNote3p(0);
LABEL_92:
        v60 = *(Note3p + 20);
        goto LABEL_93;
      case 0xAu:
        v96 = type metadata accessor for Snippet.SectionHeading(0);
        v97 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v97, v98, v96))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v125 + 8))(v0 + v9);
              break;
            case 1u:

              if (*(v14 + 96) != 255)
              {
                sub_26814304C(*(v14 + 80), *(v14 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v99 = type metadata accessor for Snippet.SearchResult3p(0);

        v60 = *(v99 + 32);
LABEL_93:
        v118 = v14 + v60;

        v119 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v120 + 8))(v118 + v119);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v7, v5 | 7);
}

uint64_t sub_2680F7F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_47_0();
  v7 = type metadata accessor for NotebookNLv3Intent(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = sub_2683CB668();
    v9 = v3 + *(a3 + 36);
    goto LABEL_8;
  }

  v10 = *(v3 + *(a3 + 20) + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_2680F806C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_47_0();
  result = type metadata accessor for NotebookNLv3Intent(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v10 = sub_2683CB668();
    v11 = v4 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2680F8228()
{
  type metadata accessor for AddTasksNLv3IntentWrapper(0);
  OUTLINED_FUNCTION_63();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_3_1(v7);
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = (v4 + v6 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v3 | v12;
  v16 = v1 + v4;
  v17 = sub_2683CE448();
  OUTLINED_FUNCTION_1();
  v19 = *(v18 + 8);
  v19(v16, v17);
  __swift_destroy_boxed_opaque_existential_0((v16 + v0[7]));
  __swift_destroy_boxed_opaque_existential_0((v16 + v0[8]));
  __swift_destroy_boxed_opaque_existential_0((v16 + v0[9]));
  __swift_destroy_boxed_opaque_existential_0((v16 + v0[10]));
  v20 = v0[11];
  sub_2683CB668();
  OUTLINED_FUNCTION_1();
  (*(v21 + 8))(v16 + v20);
  v19(v1 + v13, v17);

  return MEMORY[0x2821FE8E8](v1, v13 + v14, v15 | 7);
}

uint64_t sub_2680F83D0()
{
  v2 = type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_3_1(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  type metadata accessor for AddTasksNLv3IntentWrapper(0);
  OUTLINED_FUNCTION_63();
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = (v5 + v7 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v4 | v12;
  v16 = sub_2683CE448();
  OUTLINED_FUNCTION_1();
  v18 = *(v17 + 8);
  v18(v1 + v5, v16);
  v18(v1 + v13, v16);
  __swift_destroy_boxed_opaque_existential_0((v1 + v13 + v0[7]));
  __swift_destroy_boxed_opaque_existential_0((v1 + v13 + v0[8]));
  __swift_destroy_boxed_opaque_existential_0((v1 + v13 + v0[9]));
  __swift_destroy_boxed_opaque_existential_0((v1 + v13 + v0[10]));
  v19 = v0[11];
  sub_2683CB668();
  OUTLINED_FUNCTION_1();
  (*(v20 + 8))(v1 + v13 + v19);

  return MEMORY[0x2821FE8E8](v1, v13 + v14, v15 | 7);
}

uint64_t sub_2680F8594()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = (v5 + 24) & ~v5;
  v9 = (v7 + v5 + v8) & ~v5;

  v10 = v0 + v8;
  v11 = type metadata accessor for Snippet(0);
  v12 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v12, v13, v11))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v19 + 8))(v10);
        v20 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v20);
        goto LABEL_37;
      case 1u:
      case 9u:

        goto LABEL_37;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v58 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v59 = OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading(v59);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v111 + 8))(v1);
            break;
          case 1u:

            if (*(v1 + 96) != 255)
            {
              sub_26814304C(*(v1 + 80), *(v1 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v112 = *(v58 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v113 + 8))(v10 + v112);
        v105 = *(v58 + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_85;
      case 4u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v39 + 8))(v10);
        v40 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v40);

        OUTLINED_FUNCTION_11_5(v40[6]);

        OUTLINED_FUNCTION_11_5(v40[7]);

        v41 = v10 + v40[8];
        if (*(v41 + 24))
        {

          if (*(v41 + 96) != 255)
          {
            sub_26814304C(*(v41 + 80), *(v41 + 88));
          }
        }

        v42 = v40[9];
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v45 = *(v44 + 8);
        v7 = v44 + 8;
        v45(v10 + v42, v43);
        v46 = OUTLINED_FUNCTION_43_0(v40[10]);
        (v45)(v46);
        v47 = OUTLINED_FUNCTION_43_0(v40[11]);
        (v45)(v47);
        v48 = v10 + v40[12];
        v49 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v49))
        {

          v128 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v50 + 8))(v48 + v128);
          v45(v48 + *(v2 + 24), v43);
        }

        v51 = v40[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v52 + 8))(v10 + v51);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v53 = OUTLINED_FUNCTION_31_1();
        v54 = type metadata accessor for Snippet.Reminder.AppLink(v53);
        if (!OUTLINED_FUNCTION_16_4(v54))
        {
          OUTLINED_FUNCTION_19_2();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v51, *(v51 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v116 + 8))(v51);
          }
        }

        goto LABEL_99;
      case 5u:

        if (*(v10 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v61 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_72;
      case 6u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v80 + 8))(v10);
        v81 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v81);

        OUTLINED_FUNCTION_11_5(v81[6]);

        OUTLINED_FUNCTION_11_5(v81[7]);

        v82 = v10 + v81[8];
        if (*(v82 + 24))
        {

          if (*(v82 + 96) != 255)
          {
            sub_26814304C(*(v82 + 80), *(v82 + 88));
          }
        }

        v83 = v81[9];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v86 = *(v85 + 8);
        v7 = v85 + 8;
        v86(v10 + v83, v84);
        v87 = OUTLINED_FUNCTION_43_0(v81[10]);
        (v86)(v87);
        v88 = OUTLINED_FUNCTION_43_0(v81[11]);
        (v86)(v88);
        v89 = v10 + v81[12];
        v90 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v90))
        {

          v129 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v91 + 8))(v89 + v129);
          v86(v89 + *(v2 + 24), v84);
        }

        v92 = v81[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v93 + 8))(v10 + v92);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v94 = OUTLINED_FUNCTION_31_1();
        v95 = type metadata accessor for Snippet.Reminder.AppLink(v94);
        if (!OUTLINED_FUNCTION_16_4(v95))
        {
          OUTLINED_FUNCTION_19_2();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v92, *(v92 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v121 + 8))(v92);
          }
        }

        v122 = v10 + *(type metadata accessor for Snippet.SetTaskAttribute3p(0) + 20);

        v123 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v124 + 8))(v122 + v123);
LABEL_99:
        v9 = v132;
        break;
      case 7u:
LABEL_37:

        break;
      case 8u:

        v61 = *(type metadata accessor for Snippet.CreateNote3p(0) + 20);
        goto LABEL_72;
      case 0xAu:
        v100 = type metadata accessor for Snippet.SectionHeading(0);
        v101 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v101, v102, v100))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v126 + 8))(v10);
              break;
            case 1u:

              if (*(v10 + 96) != 255)
              {
                sub_26814304C(*(v10 + 80), *(v10 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v103 = type metadata accessor for Snippet.SearchResult3p(0);

        v61 = *(v103 + 32);
LABEL_72:
        v10 += v61;

        v105 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
LABEL_85:
        OUTLINED_FUNCTION_0_9();
        (*(v114 + 8))(v10 + v105);
        break;
      default:
        break;
    }
  }

  v14 = v0 + v9;
  v15 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v15, v16, v11))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v17 + 8))(v0 + v9);
        v18 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v18);
        goto LABEL_87;
      case 1u:
      case 9u:

        goto LABEL_87;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v56 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v57 = v14 + v56[5];
        type metadata accessor for Snippet.SectionHeading(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v106 + 8))(v57);
            break;
          case 1u:

            if (*(v57 + 96) != 255)
            {
              sub_26814304C(*(v57 + 80), *(v57 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v107 = v56[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v108 + 8))(v14 + v107);
        v109 = v56[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9();
        (*(v110 + 8))(v14 + v109);
        break;
      case 4u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v21 + 8))(v0 + v9);
        v22 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v22);

        OUTLINED_FUNCTION_11_5(v22[6]);

        OUTLINED_FUNCTION_11_5(v22[7]);

        v23 = v14 + v22[8];
        if (*(v23 + 24))
        {

          if (*(v23 + 96) != 255)
          {
            sub_26814304C(*(v23 + 80), *(v23 + 88));
          }
        }

        v24 = v22[9];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v27 = *(v26 + 8);
        v27(v14 + v24, v25);
        v28 = OUTLINED_FUNCTION_44_0(v22[10]);
        (v27)(v28);
        v29 = OUTLINED_FUNCTION_44_0(v22[11]);
        (v27)(v29);
        v30 = OUTLINED_FUNCTION_31_1();
        v31 = type metadata accessor for Snippet.Reminder.LocationTrigger(v30);
        if (!OUTLINED_FUNCTION_16_4(v31))
        {

          v130 = v7;
          v32 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v34 = v24 + v32;
          v7 = v130;
          (*(v33 + 8))(v34);
          v27(v24 + *(v9 + 24), v25);
        }

        v35 = v22[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v36 + 8))(v14 + v35);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v37 = v14 + v22[16];
        v38 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v38))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v37, *(v37 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v115 + 8))(v37);
          }
        }

        goto LABEL_87;
      case 5u:

        if (*(v14 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v60 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_93;
      case 6u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v62 + 8))(v0 + v9);
        v63 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v63);

        OUTLINED_FUNCTION_11_5(v63[6]);

        OUTLINED_FUNCTION_11_5(v63[7]);

        v64 = v14 + v63[8];
        if (*(v64 + 24))
        {

          if (*(v64 + 96) != 255)
          {
            sub_26814304C(*(v64 + 80), *(v64 + 88));
          }
        }

        v65 = v63[9];
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v68 = *(v67 + 8);
        v68(v14 + v65, v66);
        v69 = OUTLINED_FUNCTION_44_0(v63[10]);
        (v68)(v69);
        v70 = OUTLINED_FUNCTION_44_0(v63[11]);
        (v68)(v70);
        v71 = OUTLINED_FUNCTION_31_1();
        v72 = type metadata accessor for Snippet.Reminder.LocationTrigger(v71);
        if (!OUTLINED_FUNCTION_16_4(v72))
        {

          v131 = v7;
          v73 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v75 = v65 + v73;
          v7 = v131;
          (*(v74 + 8))(v75);
          v68(v65 + *(v9 + 24), v66);
        }

        v76 = v63[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v77 + 8))(v14 + v76);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v78 = v14 + v63[16];
        v79 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v79))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v78, *(v78 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v117 + 8))(v78);
          }
        }

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p(0);
        goto LABEL_92;
      case 7u:
LABEL_87:

        break;
      case 8u:

        Note3p = type metadata accessor for Snippet.CreateNote3p(0);
LABEL_92:
        v60 = *(Note3p + 20);
        goto LABEL_93;
      case 0xAu:
        v96 = type metadata accessor for Snippet.SectionHeading(0);
        v97 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v97, v98, v96))
        {
          OUTLINED_FUNCTION_0_0();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v125 + 8))(v0 + v9);
              break;
            case 1u:

              if (*(v14 + 96) != 255)
              {
                sub_26814304C(*(v14 + 80), *(v14 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v99 = type metadata accessor for Snippet.SearchResult3p(0);

        v60 = *(v99 + 32);
LABEL_93:
        v118 = v14 + v60;

        v119 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v120 + 8))(v118 + v119);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v7, v5 | 7);
}

uint64_t sub_2680F981C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F987C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2683CB668();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2680F9928(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2683CB668();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2680F9A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Snippet.Reminder(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2680F9AF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Snippet.Reminder(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2680F9C04()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2680F9CD0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2680F9D24()
{
  OUTLINED_FUNCTION_39_7();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2680F9DE8()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = (v5 + 24) & ~v5;
  v9 = (v7 + v5 + v8) & ~v5;

  v10 = v0 + v8;
  v11 = type metadata accessor for Snippet(0);
  v12 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v12, v13, v11))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v19 + 8))(v10);
        v20 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v20);
        goto LABEL_37;
      case 1u:
      case 9u:

        goto LABEL_37;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v58 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v59 = OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading(v59);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v111 + 8))(v1);
            break;
          case 1u:

            if (*(v1 + 96) != 255)
            {
              sub_26814304C(*(v1 + 80), *(v1 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v112 = *(v58 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v113 + 8))(v10 + v112);
        v105 = *(v58 + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_85;
      case 4u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v39 + 8))(v10);
        v40 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v40);

        OUTLINED_FUNCTION_11_5(v40[6]);

        OUTLINED_FUNCTION_11_5(v40[7]);

        v41 = v10 + v40[8];
        if (*(v41 + 24))
        {

          if (*(v41 + 96) != 255)
          {
            sub_26814304C(*(v41 + 80), *(v41 + 88));
          }
        }

        v42 = v40[9];
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v45 = *(v44 + 8);
        v7 = v44 + 8;
        v45(v10 + v42, v43);
        v46 = OUTLINED_FUNCTION_43_0(v40[10]);
        (v45)(v46);
        v47 = OUTLINED_FUNCTION_43_0(v40[11]);
        (v45)(v47);
        v48 = v10 + v40[12];
        v49 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v49))
        {

          v128 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v50 + 8))(v48 + v128);
          v45(v48 + *(v2 + 24), v43);
        }

        v51 = v40[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v52 + 8))(v10 + v51);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v53 = OUTLINED_FUNCTION_31_1();
        v54 = type metadata accessor for Snippet.Reminder.AppLink(v53);
        if (!OUTLINED_FUNCTION_16_4(v54))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v51, *(v51 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v116 + 8))(v51);
          }
        }

        goto LABEL_99;
      case 5u:

        if (*(v10 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v61 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_72;
      case 6u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v80 + 8))(v10);
        v81 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v81);

        OUTLINED_FUNCTION_11_5(v81[6]);

        OUTLINED_FUNCTION_11_5(v81[7]);

        v82 = v10 + v81[8];
        if (*(v82 + 24))
        {

          if (*(v82 + 96) != 255)
          {
            sub_26814304C(*(v82 + 80), *(v82 + 88));
          }
        }

        v83 = v81[9];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v86 = *(v85 + 8);
        v7 = v85 + 8;
        v86(v10 + v83, v84);
        v87 = OUTLINED_FUNCTION_43_0(v81[10]);
        (v86)(v87);
        v88 = OUTLINED_FUNCTION_43_0(v81[11]);
        (v86)(v88);
        v89 = v10 + v81[12];
        v90 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v90))
        {

          v129 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v91 + 8))(v89 + v129);
          v86(v89 + *(v2 + 24), v84);
        }

        v92 = v81[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v93 + 8))(v10 + v92);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v94 = OUTLINED_FUNCTION_31_1();
        v95 = type metadata accessor for Snippet.Reminder.AppLink(v94);
        if (!OUTLINED_FUNCTION_16_4(v95))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v92, *(v92 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v121 + 8))(v92);
          }
        }

        v122 = v10 + *(type metadata accessor for Snippet.SetTaskAttribute3p(0) + 20);

        v123 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v124 + 8))(v122 + v123);
LABEL_99:
        v9 = v132;
        break;
      case 7u:
LABEL_37:

        break;
      case 8u:

        v61 = *(type metadata accessor for Snippet.CreateNote3p(0) + 20);
        goto LABEL_72;
      case 0xAu:
        v100 = type metadata accessor for Snippet.SectionHeading(0);
        v101 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v101, v102, v100))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v126 + 8))(v10);
              break;
            case 1u:

              if (*(v10 + 96) != 255)
              {
                sub_26814304C(*(v10 + 80), *(v10 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v103 = type metadata accessor for Snippet.SearchResult3p(0);

        v61 = *(v103 + 32);
LABEL_72:
        v10 += v61;

        v105 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
LABEL_85:
        OUTLINED_FUNCTION_0_9();
        (*(v114 + 8))(v10 + v105);
        break;
      default:
        break;
    }
  }

  v14 = v0 + v9;
  v15 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v15, v16, v11))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v17 + 8))(v0 + v9);
        v18 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v18);
        goto LABEL_87;
      case 1u:
      case 9u:

        goto LABEL_87;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v56 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v57 = v14 + v56[5];
        type metadata accessor for Snippet.SectionHeading(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v106 + 8))(v57);
            break;
          case 1u:

            if (*(v57 + 96) != 255)
            {
              sub_26814304C(*(v57 + 80), *(v57 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v107 = v56[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v108 + 8))(v14 + v107);
        v109 = v56[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9();
        (*(v110 + 8))(v14 + v109);
        break;
      case 4u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v21 + 8))(v0 + v9);
        v22 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v22);

        OUTLINED_FUNCTION_11_5(v22[6]);

        OUTLINED_FUNCTION_11_5(v22[7]);

        v23 = v14 + v22[8];
        if (*(v23 + 24))
        {

          if (*(v23 + 96) != 255)
          {
            sub_26814304C(*(v23 + 80), *(v23 + 88));
          }
        }

        v24 = v22[9];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v27 = *(v26 + 8);
        v27(v14 + v24, v25);
        v28 = OUTLINED_FUNCTION_44_0(v22[10]);
        (v27)(v28);
        v29 = OUTLINED_FUNCTION_44_0(v22[11]);
        (v27)(v29);
        v30 = OUTLINED_FUNCTION_31_1();
        v31 = type metadata accessor for Snippet.Reminder.LocationTrigger(v30);
        if (!OUTLINED_FUNCTION_16_4(v31))
        {

          v130 = v7;
          v32 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v34 = v24 + v32;
          v7 = v130;
          (*(v33 + 8))(v34);
          v27(v24 + *(v9 + 24), v25);
        }

        v35 = v22[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v36 + 8))(v14 + v35);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v37 = v14 + v22[16];
        v38 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v38))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v37, *(v37 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v115 + 8))(v37);
          }
        }

        goto LABEL_87;
      case 5u:

        if (*(v14 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v60 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_93;
      case 6u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v62 + 8))(v0 + v9);
        v63 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v63);

        OUTLINED_FUNCTION_11_5(v63[6]);

        OUTLINED_FUNCTION_11_5(v63[7]);

        v64 = v14 + v63[8];
        if (*(v64 + 24))
        {

          if (*(v64 + 96) != 255)
          {
            sub_26814304C(*(v64 + 80), *(v64 + 88));
          }
        }

        v65 = v63[9];
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v68 = *(v67 + 8);
        v68(v14 + v65, v66);
        v69 = OUTLINED_FUNCTION_44_0(v63[10]);
        (v68)(v69);
        v70 = OUTLINED_FUNCTION_44_0(v63[11]);
        (v68)(v70);
        v71 = OUTLINED_FUNCTION_31_1();
        v72 = type metadata accessor for Snippet.Reminder.LocationTrigger(v71);
        if (!OUTLINED_FUNCTION_16_4(v72))
        {

          v131 = v7;
          v73 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v75 = v65 + v73;
          v7 = v131;
          (*(v74 + 8))(v75);
          v68(v65 + *(v9 + 24), v66);
        }

        v76 = v63[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v77 + 8))(v14 + v76);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v78 = v14 + v63[16];
        v79 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v79))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v78, *(v78 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v117 + 8))(v78);
          }
        }

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p(0);
        goto LABEL_92;
      case 7u:
LABEL_87:

        break;
      case 8u:

        Note3p = type metadata accessor for Snippet.CreateNote3p(0);
LABEL_92:
        v60 = *(Note3p + 20);
        goto LABEL_93;
      case 0xAu:
        v96 = type metadata accessor for Snippet.SectionHeading(0);
        v97 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v97, v98, v96))
        {
          OUTLINED_FUNCTION_0_0();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v125 + 8))(v0 + v9);
              break;
            case 1u:

              if (*(v14 + 96) != 255)
              {
                sub_26814304C(*(v14 + 80), *(v14 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v99 = type metadata accessor for Snippet.SearchResult3p(0);

        v60 = *(v99 + 32);
LABEL_93:
        v118 = v14 + v60;

        v119 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v120 + 8))(v118 + v119);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v7, v5 | 7);
}

uint64_t sub_2680FB064(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2683CB668();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2680FB0EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2683CB668();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2680FB1A8@<X0>(uint64_t *a1@<X8>)
{
  result = Common.Number.Operator.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268105BB0()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD80, &qword_2683DEB60);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_45_4();
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_268105DB8()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD80, &qword_2683DEB60);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_43_6();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_268106038()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE40, &qword_2683DEC20);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE70, &qword_2683DEC50);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2();
                if (*(v12 + 84) == v0)
                {
                  OUTLINED_FUNCTION_60_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v13 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_65_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_80_0();
                  }
                }
              }
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_268106318()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE40, &qword_2683DEC20);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE70, &qword_2683DEC50);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2();
                if (*(v8 + 84) == v0)
                {
                  OUTLINED_FUNCTION_59_2();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v9 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_64_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_79_0();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_268106650()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_45_4();
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_268106858()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_43_6();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_268106AA8()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF28, &qword_2683DED08);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_45_4();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_60_1();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2();
                if (*(v12 + 84) == v0)
                {
                  OUTLINED_FUNCTION_65_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                  OUTLINED_FUNCTION_73_1();
                }
              }
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_268106D40()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF28, &qword_2683DED08);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_6();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_59_2();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2();
                if (*(v8 + 84) == v0)
                {
                  OUTLINED_FUNCTION_64_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                  OUTLINED_FUNCTION_72_1();
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_268106FD8()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF50, &qword_2683DED30);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF60, &qword_2683DED40);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF78, &qword_2683DED58);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_45_4();
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_2681071E0()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF50, &qword_2683DED30);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF60, &qword_2683DED40);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF78, &qword_2683DED58);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_43_6();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_268107430()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA8, &qword_2683DED88);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB8, &qword_2683DED98);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD0, &qword_2683DEDB0);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_45_4();
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_268107638()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA8, &qword_2683DED88);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB8, &qword_2683DED98);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD0, &qword_2683DEDB0);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_43_6();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_2681078B0()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250020, &qword_2683DEE00);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_56_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_45_4();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_60_1();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2();
                if (*(v12 + 84) == v0)
                {
                  OUTLINED_FUNCTION_65_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250048, &qword_2683DEE28);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v13 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_80_0();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_73_1();
                  }
                }
              }
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_268107B90()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250020, &qword_2683DEE00);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_55_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_6();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_59_2();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2();
                if (*(v8 + 84) == v0)
                {
                  OUTLINED_FUNCTION_64_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250048, &qword_2683DEE28);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v9 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_79_0();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_72_1();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_268107E70()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250078, &qword_2683DEE58);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500B8, &qword_2683DEE98);
                OUTLINED_FUNCTION_29_2();
                if (*(v12 + 84) == v0)
                {
                  OUTLINED_FUNCTION_60_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v13 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_65_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                    OUTLINED_FUNCTION_29_2();
                    if (*(v14 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_80_0();
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                      OUTLINED_FUNCTION_29_2();
                      if (*(v15 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_73_1();
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                        OUTLINED_FUNCTION_92_1();
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

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_2681081E0()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250078, &qword_2683DEE58);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500B8, &qword_2683DEE98);
                OUTLINED_FUNCTION_29_2();
                if (*(v8 + 84) == v0)
                {
                  OUTLINED_FUNCTION_59_2();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v9 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_64_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                    OUTLINED_FUNCTION_29_2();
                    if (*(v10 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_79_0();
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                      OUTLINED_FUNCTION_29_2();
                      if (*(v11 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_72_1();
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                        OUTLINED_FUNCTION_91_1();
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

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_268108554()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500D0, &qword_2683DEEB0);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_54_3();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF10, &qword_2683DECF0);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_56_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_60_1();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_65_1();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2();
                if (*(v12 + 84) == v0)
                {
                  OUTLINED_FUNCTION_80_0();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v13 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_73_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_88_1();
                  }
                }
              }
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_268108834()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500D0, &qword_2683DEEB0);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_53_2();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF10, &qword_2683DECF0);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_55_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_59_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_64_1();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2();
                if (*(v8 + 84) == v0)
                {
                  OUTLINED_FUNCTION_79_0();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v9 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_72_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_87_1();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_268108B3C()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500E0, &qword_2683DEEC0);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500F8, &qword_2683DEED8);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
              OUTLINED_FUNCTION_45_4();
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_268108D44()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500E0, &qword_2683DEEC0);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500F8, &qword_2683DEED8);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
              OUTLINED_FUNCTION_43_6();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_268108F4C()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250110, &qword_2683DEEF0);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250120, &qword_2683DEF00);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_45_4();
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_268109154()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250110, &qword_2683DEEF0);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250120, &qword_2683DEF00);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_43_6();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_268109384()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250138, &qword_2683DEF18);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250150, &qword_2683DEF30);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250168, &qword_2683DEF48);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250178, &qword_2683DEF58);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250190, &qword_2683DEF70);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501A0, &qword_2683DEF80);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
                OUTLINED_FUNCTION_29_2();
                if (*(v12 + 84) == v0)
                {
                  OUTLINED_FUNCTION_60_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v13 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_65_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501B8, &qword_2683DEF98);
                    OUTLINED_FUNCTION_29_2();
                    if (*(v14 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_80_0();
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                      OUTLINED_FUNCTION_29_2();
                      if (*(v15 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_73_1();
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                        OUTLINED_FUNCTION_29_2();
                        if (*(v16 + 84) == v0)
                        {
                          OUTLINED_FUNCTION_88_1();
                        }

                        else
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                          OUTLINED_FUNCTION_29_2();
                          if (*(v17 + 84) == v0)
                          {
                            OUTLINED_FUNCTION_92_1();
                          }

                          else
                          {
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);
                            OUTLINED_FUNCTION_29_2();
                            if (*(v18 + 84) == v0)
                            {
                              OUTLINED_FUNCTION_948();
                            }

                            else
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                              OUTLINED_FUNCTION_590();
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

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_2681097CC()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250138, &qword_2683DEF18);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250150, &qword_2683DEF30);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250168, &qword_2683DEF48);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250178, &qword_2683DEF58);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250190, &qword_2683DEF70);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501A0, &qword_2683DEF80);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
                OUTLINED_FUNCTION_29_2();
                if (*(v8 + 84) == v0)
                {
                  OUTLINED_FUNCTION_59_2();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v9 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_64_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501B8, &qword_2683DEF98);
                    OUTLINED_FUNCTION_29_2();
                    if (*(v10 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_79_0();
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                      OUTLINED_FUNCTION_29_2();
                      if (*(v11 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_72_1();
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                        OUTLINED_FUNCTION_29_2();
                        if (*(v12 + 84) == v0)
                        {
                          OUTLINED_FUNCTION_87_1();
                        }

                        else
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                          OUTLINED_FUNCTION_29_2();
                          if (*(v13 + 84) == v0)
                          {
                            OUTLINED_FUNCTION_91_1();
                          }

                          else
                          {
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);
                            OUTLINED_FUNCTION_29_2();
                            if (*(v14 + 84) == v0)
                            {
                              OUTLINED_FUNCTION_947();
                            }

                            else
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                              OUTLINED_FUNCTION_589();
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

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_268109CAC()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501F8, &qword_2683DEFD8);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250208, &qword_2683DEFE8);
                OUTLINED_FUNCTION_29_2();
                if (*(v12 + 84) == v0)
                {
                  OUTLINED_FUNCTION_60_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                  OUTLINED_FUNCTION_65_1();
                }
              }
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_268109F44()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501F8, &qword_2683DEFD8);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250208, &qword_2683DEFE8);
                OUTLINED_FUNCTION_29_2();
                if (*(v8 + 84) == v0)
                {
                  OUTLINED_FUNCTION_59_2();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                  OUTLINED_FUNCTION_64_1();
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_26810A1DC()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250220, &qword_2683DF000);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_45_4();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_65_1();
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_26810A3E4()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250220, &qword_2683DF000);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_6();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_64_1();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_26810A614()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250230, &qword_2683DF010);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250240, &qword_2683DF020);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500E0, &qword_2683DEEC0);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                OUTLINED_FUNCTION_60_1();
              }
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_26810A864()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250230, &qword_2683DF010);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250240, &qword_2683DF020);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500E0, &qword_2683DEEC0);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                OUTLINED_FUNCTION_59_2();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_26810AADC()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250258, &qword_2683DF038);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250270, &qword_2683DF050);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250120, &qword_2683DEF00);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_56_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_45_4();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250288, &qword_2683DF068);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_60_1();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                OUTLINED_FUNCTION_65_1();
              }
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_26810AD2C()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250258, &qword_2683DF038);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250270, &qword_2683DF050);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250120, &qword_2683DEF00);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_55_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_6();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250288, &qword_2683DF068);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_59_2();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                OUTLINED_FUNCTION_64_1();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_26810AF7C()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802502A0, &qword_2683DF080);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_50_5();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_41_7();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_54_3();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802502B0, &qword_2683DF090);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_56_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_45_4();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_60_1();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                OUTLINED_FUNCTION_29_2();
                if (*(v12 + 84) == v0)
                {
                  OUTLINED_FUNCTION_65_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v13 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_80_0();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                    OUTLINED_FUNCTION_29_2();
                    if (*(v14 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_73_1();
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501B8, &qword_2683DEF98);
                      OUTLINED_FUNCTION_29_2();
                      if (*(v15 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_88_1();
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                        OUTLINED_FUNCTION_92_1();
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

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_26810B2EC()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802502A0, &qword_2683DF080);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_49_6();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_40_8();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_53_2();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802502B0, &qword_2683DF090);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_55_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_6();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_59_2();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                OUTLINED_FUNCTION_29_2();
                if (*(v8 + 84) == v0)
                {
                  OUTLINED_FUNCTION_64_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v9 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_79_0();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                    OUTLINED_FUNCTION_29_2();
                    if (*(v10 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_72_1();
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501B8, &qword_2683DEF98);
                      OUTLINED_FUNCTION_29_2();
                      if (*(v11 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_87_1();
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                        OUTLINED_FUNCTION_91_1();
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

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_26810B6AC()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802502E8, &qword_2683DF0C8);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802502F8, &qword_2683DF0D8);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501E0, &qword_2683DEFC0);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                OUTLINED_FUNCTION_60_1();
              }
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_26810B8FC()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802502E8, &qword_2683DF0C8);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802502F8, &qword_2683DF0D8);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501E0, &qword_2683DEFC0);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                OUTLINED_FUNCTION_59_2();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_26810BB4C()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_41_7();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_54_3();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_56_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250308, &qword_2683DF0E8);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_45_4();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_60_1();
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_26810BD54()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_40_8();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_53_2();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_55_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250308, &qword_2683DF0E8);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_6();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_59_2();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_26810BF5C()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250320, &qword_2683DF100);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE28, &qword_2683DEC08);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250330, &qword_2683DF110);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFE0, &qword_2683DEDC0);
                OUTLINED_FUNCTION_60_1();
              }
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_26810C1AC()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250320, &qword_2683DF100);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE28, &qword_2683DEC08);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250330, &qword_2683DF110);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFE0, &qword_2683DEDC0);
                OUTLINED_FUNCTION_59_2();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_26810C494()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250358, &qword_2683DF138);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_41_7();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_54_3();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250368, &qword_2683DF148);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_45_4();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_60_1();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_65_1();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2();
                if (*(v12 + 84) == v0)
                {
                  OUTLINED_FUNCTION_80_0();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500B8, &qword_2683DEE98);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v13 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_73_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_88_1();
                  }
                }
              }
            }
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_26810C774()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250358, &qword_2683DF138);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_40_8();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_53_2();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250368, &qword_2683DF148);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_43_6();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_59_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_64_1();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2();
                if (*(v8 + 84) == v0)
                {
                  OUTLINED_FUNCTION_79_0();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500B8, &qword_2683DEE98);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v9 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_72_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_87_1();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_26810CAC4()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250390, &qword_2683DF170);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802503A0, &qword_2683DF180);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF90, &qword_2683DED70);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
            OUTLINED_FUNCTION_29_2();
            if (*(v10 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
              OUTLINED_FUNCTION_29_2();
              if (*(v11 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
                OUTLINED_FUNCTION_29_2();
                if (*(v12 + 84) == v0)
                {
                  OUTLINED_FUNCTION_60_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501B8, &qword_2683DEF98);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v13 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_65_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                    OUTLINED_FUNCTION_29_2();
                    if (*(v14 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_73_1();
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                      OUTLINED_FUNCTION_29_2();
                      if (*(v15 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_88_1();
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                        OUTLINED_FUNCTION_29_2();
                        if (*(v16 + 84) == v0)
                        {
                          OUTLINED_FUNCTION_92_1();
                        }

                        else
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802503B8, &qword_2683DF198);
                          OUTLINED_FUNCTION_29_2();
                          if (*(v17 + 84) == v0)
                          {
                            OUTLINED_FUNCTION_948();
                          }

                          else
                          {
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                            OUTLINED_FUNCTION_590();
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

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_26810CEC4()
{
  OUTLINED_FUNCTION_45_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250390, &qword_2683DF170);
  OUTLINED_FUNCTION_29_2();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802503A0, &qword_2683DF180);
    OUTLINED_FUNCTION_29_2();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF90, &qword_2683DED70);
      OUTLINED_FUNCTION_29_2();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
        OUTLINED_FUNCTION_29_2();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
          OUTLINED_FUNCTION_29_2();
          if (*(v5 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
            OUTLINED_FUNCTION_29_2();
            if (*(v6 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
              OUTLINED_FUNCTION_29_2();
              if (*(v7 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
                OUTLINED_FUNCTION_29_2();
                if (*(v8 + 84) == v0)
                {
                  OUTLINED_FUNCTION_59_2();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501B8, &qword_2683DEF98);
                  OUTLINED_FUNCTION_29_2();
                  if (*(v9 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_64_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                    OUTLINED_FUNCTION_29_2();
                    if (*(v10 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_72_1();
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                      OUTLINED_FUNCTION_29_2();
                      if (*(v11 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_87_1();
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                        OUTLINED_FUNCTION_29_2();
                        if (*(v12 + 84) == v0)
                        {
                          OUTLINED_FUNCTION_91_1();
                        }

                        else
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802503B8, &qword_2683DF198);
                          OUTLINED_FUNCTION_29_2();
                          if (*(v13 + 84) == v0)
                          {
                            OUTLINED_FUNCTION_947();
                          }

                          else
                          {
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                            OUTLINED_FUNCTION_589();
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

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_26810D30C()
{
  OUTLINED_FUNCTION_11_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_29_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
    OUTLINED_FUNCTION_29_2();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_45_4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
      OUTLINED_FUNCTION_29_2();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_60_1();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
        OUTLINED_FUNCTION_29_2();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_65_1();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802503D0, &qword_2683DF1B0);
          OUTLINED_FUNCTION_29_2();
          if (*(v9 + 84) == v0)
          {
            OUTLINED_FUNCTION_80_0();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
            OUTLINED_FUNCTION_73_1();
          }
        }
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}