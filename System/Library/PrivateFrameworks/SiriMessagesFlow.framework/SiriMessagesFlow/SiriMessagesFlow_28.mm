uint64_t sub_267E10344(uint64_t result, void *a2, _BYTE *a3, uint64_t *a4)
{
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = *(sub_267EF6868() - 8);
    result = sub_267E17EC0(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a2, a3, a4);
  }

  while (!v4);
  return result;
}

uint64_t sub_267E1041C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_267EF57C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v19 = a1;
  v8 = *(a1 + 16);
  v18 = v4 + 16;
  while (1)
  {
    if (v8 == v7)
    {
      v13 = 1;
      v14 = v17;
      return __swift_storeEnumTagSinglePayload(v14, v13, 1, v3);
    }

    (*(v4 + 16))(v6, v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7, v3);
    v9 = sub_267EF57B8();
    if (!v10)
    {
      goto LABEL_9;
    }

    if (v9 == 0xD000000000000016 && v10 == 0x8000000267F0FDD0)
    {
      break;
    }

    v12 = sub_267EF9EA8();

    if (v12)
    {
      goto LABEL_12;
    }

LABEL_9:
    (*(v4 + 8))(v6, v3);
    ++v7;
  }

LABEL_12:
  v14 = v17;
  (*(v4 + 32))(v17, v6, v3);
  v13 = 0;
  return __swift_storeEnumTagSinglePayload(v14, v13, 1, v3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_267E1062C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_267E10680()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_28022C600);
  swift_endAccess();
  if (v1)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_267B9F98C(v6, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }
}

uint64_t sub_267E1076C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_267EF8FF8();
  }

  else
  {
    v3 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_28022C600, v3, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

id sub_267E107F8(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C608, &qword_267F0AC48);
  v71 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v73 = (&v66 - v6);
  v7 = sub_267EF5318();
  v79 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v66 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  if (sub_267E112A0())
  {
    v72 = v2;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v16 = sub_267EF8A08();
    __swift_project_value_buffer(v16, qword_280240FB0);
    v17 = v79;
    v18 = *(v79 + 16);
    v18(v15, a1, v7);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v71 = v21;
      v73 = swift_slowAlloc();
      *&v75[0] = v73;
      *v21 = 136315138;
      v18(v13, v15, v7);
      sub_267EF5458();
      LODWORD(v70) = v20;
      v77 = v7;
      v78 = sub_267E195CC(&qword_28022C3E0, MEMORY[0x277D5DB80], MEMORY[0x277D5DB70]);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v76);
      v18(boxed_opaque_existential_0, v13, v7);
      v23 = sub_267EF5448();
      v25 = v24;
      v26 = *(v17 + 8);
      v26(v13, v7);
      v26(v15, v7);
      __swift_destroy_boxed_opaque_existential_0(&v76);
      v27 = sub_267BA33E8(v23, v25, v75);

      v28 = v71;
      *(v71 + 1) = v27;
      v29 = v28;
      _os_log_impl(&dword_267B93000, v19, v70, "#SendMessageUserDialogActTransformer userDialogAct: %s is a confirmation act, returning default INSendMessageIntent", v28, 0xCu);
      v30 = v73;
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x26D60A7B0](v30, -1, -1);
      MEMORY[0x26D60A7B0](v29, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v15, v7);
    }

    return [objc_allocWithZone(MEMORY[0x277CD4078]) init];
  }

  else
  {
    v31 = sub_267EF52F8();
    if (sub_267BAF0DC(v31))
    {
      v70 = v5;
      sub_267BBD0EC(0, (v31 & 0xC000000000000001) == 0, v31);
      v69 = v13;
      if ((v31 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x26D609870](0, v31);
      }

      else
      {
        v32 = *(v31 + 32);
      }

      sub_267B9AFEC((v1 + 2), &v76);
      sub_267B9AFEC((v1 + 7), v75);
      sub_267B9AFEC((v1 + 12), v74);
      v33 = swift_allocObject();
      sub_267B9A5E8(&v76, v33 + 16);
      sub_267B9A5E8(v75, v33 + 56);
      sub_267B9A5E8(v74, v33 + 96);
      sub_267EF66D8();
      sub_267BB7170();
      sub_267EF7058();
      v34 = sub_267EF7068();
      *&v76 = v32;
      v34(v75, &v76);
      if (v2)
      {
        v68 = v32;
        v72 = v2;

        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v35 = sub_267EF8A08();
        __swift_project_value_buffer(v35, qword_280240FB0);
        v36 = v79;
        v3 = (v79 + 16);
        v37 = *(v79 + 16);
        v37(v10, a1, v7);
        v38 = sub_267EF89F8();
        v39 = sub_267EF95E8();
        v40 = os_log_type_enabled(v38, v39);
        v42 = v69;
        v41 = v70;
        if (v40)
        {
          v43 = swift_slowAlloc();
          v67 = v39;
          v44 = v43;
          v66 = swift_slowAlloc();
          *&v75[0] = v66;
          *v44 = 136315138;
          v37(v42, v10, v7);
          sub_267EF5458();
          v77 = v7;
          v78 = sub_267E195CC(&qword_28022C3E0, MEMORY[0x277D5DB80], MEMORY[0x277D5DB70]);
          v45 = __swift_allocate_boxed_opaque_existential_0(&v76);
          v37(v45, v42, v7);
          v46 = sub_267EF5448();
          v3 = v47;
          v48 = *(v36 + 8);
          v48(v42, v7);
          v48(v10, v7);
          __swift_destroy_boxed_opaque_existential_0(&v76);
          v49 = sub_267BA33E8(v46, v3, v75);

          *(v44 + 4) = v49;
          v41 = v70;
          _os_log_impl(&dword_267B93000, v38, v67, "#SendMessageUserDialogActTransformer error transforming %s to sendMessageIntent", v44, 0xCu);
          v50 = v66;
          __swift_destroy_boxed_opaque_existential_0(v66);
          MEMORY[0x26D60A7B0](v50, -1, -1);
          MEMORY[0x26D60A7B0](v44, -1, -1);
        }

        else
        {

          (*(v36 + 8))(v10, v7);
        }

        swift_willThrow();

        (*(v71 + 1))(v73, v41);
      }

      else
      {

        v57 = *&v75[0];
        __swift_project_boxed_opaque_existential_0(v1 + 17, v1[20]);
        v3 = v57;
        sub_267EF45B8();
        __swift_project_boxed_opaque_existential_0(&v76, v77);
        sub_267EF42B8();
        if (v58)
        {
          v59 = sub_267EF8FF8();
        }

        else
        {
          v59 = 0;
        }

        v60 = v70;
        __swift_destroy_boxed_opaque_existential_0(&v76);
        [v3 _setOriginatingDeviceIdsIdentifier_];

        v61 = [v3 _metadata];
        if (v61)
        {
          sub_267EF6FF8();
          v62 = sub_267EF6FC8();
          if (v62)
          {
            sub_267EF6F98();

            sub_267EF37B8();
            v64 = v63;

            if (v64)
            {
              v62 = sub_267EF8FF8();
            }

            else
            {
              v62 = 0;
            }
          }

          [v61 setIntentId_];
        }

        else
        {
        }

        (*(v71 + 1))(v73, v60);
      }
    }

    else
    {

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v51 = sub_267EF8A08();
      __swift_project_value_buffer(v51, qword_280240FB0);
      v52 = sub_267EF89F8();
      v53 = sub_267EF95E8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_267B93000, v52, v53, "#SendMessageUserDialogActTransformer UserStatedTask has no tasks -- this should not happen", v54, 2u);
        MEMORY[0x26D60A7B0](v54, -1, -1);
      }

      v55 = sub_267EF71B8();
      sub_267E195CC(&qword_2802299D8, MEMORY[0x277D61E08], MEMORY[0x277D61E10]);
      swift_allocError();
      *v56 = 0xD00000000000005ALL;
      v56[1] = 0x8000000267F1B2B0;
      (*(*(v55 - 8) + 104))(v56, *MEMORY[0x277D61E00], v55);
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_267E112A0()
{
  if (sub_267EF5258())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v0 = sub_267EF8A08();
    __swift_project_value_buffer(v0, qword_280240FB0);
    v1 = sub_267EF89F8();
    v2 = sub_267EF95D8();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_27;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "#SendMessageNLv4IntentConverter UserAccepted";
LABEL_26:
    _os_log_impl(&dword_267B93000, v1, v2, v4, v3, 2u);
    MEMORY[0x26D60A7B0](v3, -1, -1);
LABEL_27:

    return 1;
  }

  if (sub_267EF5268())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v5 = sub_267EF8A08();
    __swift_project_value_buffer(v5, qword_280240FB0);
    v1 = sub_267EF89F8();
    v2 = sub_267EF95D8();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_27;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "#SendMessageNLv4IntentConverter UserRejected";
    goto LABEL_26;
  }

  if (sub_267EF5278())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v1 = sub_267EF89F8();
    v2 = sub_267EF95D8();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_27;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "#SendMessageNLv4IntentConverter UserCancelled";
    goto LABEL_26;
  }

  if (sub_267EF52B8())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v7 = sub_267EF8A08();
    __swift_project_value_buffer(v7, qword_280240FB0);
    v1 = sub_267EF89F8();
    v2 = sub_267EF95D8();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_27;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "#SendMessageNLv4IntentConverter UserWantedToPause";
    goto LABEL_26;
  }

  if (sub_267EF52D8())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);
    v1 = sub_267EF89F8();
    v2 = sub_267EF95D8();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_27;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "#SendMessageNLv4IntentConverter UserWantedToProceed";
    goto LABEL_26;
  }

  return 0;
}

void sub_267E11614()
{
  OUTLINED_FUNCTION_11_22();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v30 = v7;
  sub_267B9AFEC(v8, v37);
  sub_267B9AFEC(v4, v36);
  v9 = v2[3];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v9);
  (*(v10 + 8))(v35, v9, v10);
  v11 = v2[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v11);
  (*(v12 + 24))(v34, v11, v12);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v37[3]);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14);
  v18 = sub_267EF68A8();
  v32 = v18;
  v33 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
  v20 = *(*(v18 - 8) + 32);
  v20(boxed_opaque_existential_0, v16, v18);
  type metadata accessor for SendMessageUserDialogActTransformer();
  inited = swift_initStackObject();
  __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v25 = v24 - v23;
  (*(v26 + 16))(v24 - v23);
  inited[5] = v18;
  inited[6] = &off_2878D54D8;
  v27 = __swift_allocate_boxed_opaque_existential_0(inited + 2);
  v20(v27, v25, v18);
  sub_267B9A5E8(v36, (inited + 7));
  sub_267B9A5E8(v35, (inited + 12));
  sub_267B9A5E8(v34, (inited + 17));
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v37);
  v28 = sub_267E107F8(v6);
  if (v0)
  {
    swift_setDeallocating();
    sub_267C4AB10();
    swift_deallocClassInstance();
  }

  else
  {
    v29 = v28;
    swift_setDeallocating();
    sub_267C4AB10();
    swift_deallocClassInstance();
    *v30 = v29;
  }

  OUTLINED_FUNCTION_10_4();
}

uint64_t sub_267E11904@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C610, &unk_267F0AC50);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  sub_267EF5CF8();
  if (v31)
  {
    sub_267C2FB6C(&v30, v29, &qword_28022AEF0, &qword_267EFCDE0);
    sub_267EF5F68();
    v14 = swift_dynamicCast();
    v27 = a5;
    if (v14)
    {
      goto LABEL_3;
    }

    sub_267EF5FE8();
    if (swift_dynamicCast())
    {
      v26 = a4;
      v19 = a3;

      sub_267EF6348();
      if (v32 && (v20 = sub_267EF5C58(), , v20))
      {

        a3 = v19;
      }

      else
      {
        sub_267EF6358();
        a3 = v19;
        if (v32)
        {

          sub_267EF6358();

          v15 = v32;
          a4 = v26;
LABEL_5:

          __swift_destroy_boxed_opaque_existential_0(v29);
          sub_267B9F98C(&v30, &qword_28022AEF0, &qword_267EFCDE0);
          sub_267B9AFEC(a2, &v30);
          sub_267B9AFEC(a4, v29);
          sub_267B9AFEC(a3, v28);
          v16 = swift_allocObject();
          sub_267B9A5E8(&v30, v16 + 16);
          sub_267B9A5E8(v29, v16 + 56);
          sub_267B9A5E8(v28, v16 + 96);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A880, &unk_267F01F80);
          sub_267BB7170();
          sub_267EF7058();
          v17 = sub_267EF7068();
          (*(v11 + 8))(v13, v10);
          *&v30 = v15;
          v17(v29, &v30);

          if (!v5)
          {
            *v27 = *&v29[0];
          }

          return result;
        }
      }

      a4 = v26;
      sub_267EF6348();
LABEL_4:

      v15 = v32;
      goto LABEL_5;
    }

    sub_267EF6128();
    if (swift_dynamicCast())
    {

      sub_267EF6348();
      goto LABEL_4;
    }

    sub_267EF5FF8();
    if (swift_dynamicCast())
    {
LABEL_3:

      sub_267EF5C38();
      goto LABEL_4;
    }

    sub_267EF6108();
    if (swift_dynamicCast())
    {

      sub_267EF54D8();
      goto LABEL_4;
    }

    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v21 = sub_267EF8A08();
  __swift_project_value_buffer(v21, qword_280240FB0);
  v22 = sub_267EF89F8();
  v23 = sub_267EF95C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_267B93000, v22, v23, "#SendMessageUserDialogActTransformer UsoTask was not a known common_Message sending task, returning empty INSendMessageIntent", v24, 2u);
    MEMORY[0x26D60A7B0](v24, -1, -1);
  }

  *a5 = [objc_allocWithZone(MEMORY[0x277CD4078]) init];
  return sub_267B9F98C(&v30, &qword_28022AEF0, &qword_267EFCDE0);
}

uint64_t sub_267E11E10@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, NSObject *a4@<X3>, NSObject **a5@<X8>)
{
  v674 = a4;
  v644 = a3;
  v631 = a5;
  v666 = sub_267EF5778();
  v8 = *(v666 - 8);
  MEMORY[0x28223BE20](v666);
  v652 = &v605 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v670 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF8, &qword_267F042B8);
  MEMORY[0x28223BE20](v670);
  v682 = &v605 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF00, &unk_267F042C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v657 = &v605 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v661 = &v605 - v15;
  MEMORY[0x28223BE20](v14);
  v662 = &v605 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  MEMORY[0x28223BE20](v17 - 8);
  v625 = (&v605 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8C0, &unk_267F0AC60);
  MEMORY[0x28223BE20](v19 - 8);
  v620 = &v605 - v20;
  *&v627 = sub_267EF5518();
  v624 = *(v627 - 8);
  v21 = MEMORY[0x28223BE20](v627);
  v617 = &v605 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v679 = &v605 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v615 = &v605 - v26;
  v616 = v27;
  MEMORY[0x28223BE20](v25);
  v622 = &v605 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C158, &unk_267F09680);
  MEMORY[0x28223BE20](v29 - 8);
  v632 = (&v605 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEE0, &qword_267F01FA0);
  MEMORY[0x28223BE20](v31 - 8);
  v633 = &v605 - v32;
  v671 = sub_267EF57C8();
  v639 = *(v671 - 8);
  v33 = MEMORY[0x28223BE20](v671);
  v681 = (&v605 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x28223BE20](v33);
  v626 = &v605 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v618 = &v605 - v38;
  v619 = v39;
  MEMORY[0x28223BE20](v37);
  v628 = &v605 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A898, &qword_267F01FA8);
  v637 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v640 = &v605 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v605 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  MEMORY[0x28223BE20](v46 - 8);
  v645 = &v605 - v47;
  v48 = sub_267EF6B18();
  v642 = *(v48 - 8);
  v643 = v48;
  MEMORY[0x28223BE20](v48);
  v676 = &v605 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_267EF2D28();
  v650 = *(v50 - 8);
  v651 = v50;
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &v605 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51);
  v629 = &v605 - v55;
  v630 = v56;
  MEMORY[0x28223BE20](v54);
  v57 = *a1;
  v59 = &v605 - v58;
  sub_267EF2D18();
  v60 = a2[3];
  v623 = a2;
  v680 = __swift_project_boxed_opaque_existential_0(a2, v60);
  v649 = v57;
  v673 = v5;
  v638 = v41;
  v634 = v53;
  v621 = v8;
  if (v57)
  {
    if (sub_267EF59F8())
    {
      sub_267EABD04();
      v62 = v61;
      v57 = v63;
    }

    else
    {
      v62 = 0;
      v57 = 0;
    }
  }

  else
  {
    v62 = 0;
  }

  v64 = sub_267BB7170();
  v65 = *(v650 + 16);
  v66 = v645;
  v647 = v59;
  v67 = v59;
  v68 = v651;
  v635 = v65;
  v636 = v650 + 16;
  v65(v645, v67, v651);
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v68);
  v69 = sub_267EF6C28();
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v69);
  sub_267EF6FF8();
  v70 = sub_267EF6FC8();
  sub_267DA7298(v62, v57, v64, v644, v70, 1, v66, v45, v676);

  sub_267B9F98C(v45, &qword_280229428, &unk_267F00E50);
  sub_267B9F98C(v66, &qword_280229430, &qword_267EFD2C0);
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8678();
  }

  v71 = v676;
  sub_267EF6B08();
  v72 = MEMORY[0x277D84F90];
  v698 = MEMORY[0x277D84F90];
  v696 = MEMORY[0x277D84F90];
  v697 = MEMORY[0x277D84F90];
  v694 = MEMORY[0x277D84F90];
  v695 = MEMORY[0x277D84F90];
  v692 = MEMORY[0x277D84F90];
  v693 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B0D8, &unk_267F0AC70);
  v641 = sub_267EF8F28();
  v691 = v641;
  v690 = 0;
  v73 = v673;
  v74 = v679;
  if (v649)
  {
    v75 = sub_267EF5CE8();
    if (v75)
    {
      v72 = v75;
      sub_267EF56B8();
      sub_267EF5C28();
      sub_267EF5E08();

      if (v686)
      {
        if (sub_267EAC378())
        {
          MEMORY[0x26D608F90]();
          v76 = v694;
        }

        else
        {
          MEMORY[0x26D608F90]();
          v76 = v697;
        }

        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_377;
        }

        goto LABEL_88;
      }
    }

    v77 = sub_267EF5C58();
    if (v77)
    {
      v78 = v77;
      v79 = sub_267BAF0DC(v77);
      if (!v79)
      {

        goto LABEL_90;
      }

      v80 = v79;
      sub_267EF5C28();
      if (v80 >= 1)
      {
        v70 = 0;
        v680 = (v78 & 0xC000000000000001);
        v664 = MEMORY[0x277D84F90];
        v648 = MEMORY[0x277D84F90];
        v646 = MEMORY[0x277D84F90];
        v678 = v80;
        while (1)
        {
          if (v680)
          {
            MEMORY[0x26D609870](v70, v78);
          }

          else
          {
          }

          sub_267EF5988();
          if (v685)
          {
            sub_267EF56B8();
          }

          sub_267EF5E08();

          if (!v686)
          {
            goto LABEL_29;
          }

          sub_267EF56B8();

          v81 = sub_267EF6768();

          v82 = *(v81 + 16);

          if (!v82)
          {
            break;
          }

          if (sub_267EAC378())
          {
            MEMORY[0x26D608F90]();
            v83 = v694;
          }

          else
          {
            MEMORY[0x26D608F90]();
            v83 = v697;
          }

          if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          sub_267EF9368();
LABEL_48:

LABEL_76:
          ++v70;
          v74 = v679;
          if (v80 == v70)
          {

            v73 = v673;
            goto LABEL_91;
          }
        }

LABEL_29:
        sub_267EF5988();
        if (v685)
        {
          sub_267EF56B8();
        }

        sub_267EF5BC8();
        sub_267EF5E08();

        if (v686)
        {
          if (sub_267EAC390())
          {
            MEMORY[0x26D608F90]();
            if (*((v693 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v693 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();

            v646 = v693;
          }

          else
          {
            MEMORY[0x26D608F90]();
            if (*((v695 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v695 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();

            v664 = v695;
          }

          goto LABEL_76;
        }

        if (!sub_267EF5978())
        {
LABEL_59:
          sub_267EF5988();
          if (v685)
          {
            sub_267EF56B8();
          }

          sub_267EF5B98();
          sub_267EF5E08();

          if (v686)
          {
            MEMORY[0x26D608F90](v90);
            if (*((v696 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v696 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();

            v648 = v696;
            goto LABEL_76;
          }

          goto LABEL_48;
        }

        v84 = sub_267EF59B8();
        if (!v85)
        {

          goto LABEL_59;
        }

        if (v84 == 0x7465536F54646461 && v85 == 0xE800000000000000)
        {
        }

        else
        {
          v87 = sub_267EF9EA8();

          if ((v87 & 1) == 0)
          {
LABEL_58:

            v80 = v678;
            goto LABEL_59;
          }
        }

        sub_267EF59C8();
        if (v686)
        {
          v88 = sub_267EF56B8();

          sub_267EF5E08();
          v677 = v88;
          if (v686)
          {

            if (sub_267EAC378())
            {
              MEMORY[0x26D608F90]();
              v89 = v694;
            }

            else
            {
              MEMORY[0x26D608F90]();
              v89 = v697;
            }

            if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();

LABEL_74:
          }

          else
          {
            sub_267EF5E08();
            if (v686)
            {

              if (sub_267EAC390())
              {
                MEMORY[0x26D608F90]();
                if (*((v693 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v693 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_267EF9328();
                }

                sub_267EF9368();

                v646 = v693;
              }

              else
              {
                MEMORY[0x26D608F90]();
                if (*((v695 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v695 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_267EF9328();
                }

                sub_267EF9368();

                v664 = v695;
              }
            }

            else
            {
              sub_267EF5B98();
              sub_267EF5E08();

              if (!v686)
              {

                goto LABEL_74;
              }

              MEMORY[0x26D608F90](v91);
              if (*((v696 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v696 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_267EF9328();
              }

              sub_267EF9368();

              v648 = v696;
            }
          }

          v80 = v678;
          goto LABEL_76;
        }

        goto LABEL_58;
      }

      __break(1u);
LABEL_379:
      swift_once();
LABEL_353:
      v523 = sub_267EF8A08();
      v524 = __swift_project_value_buffer(v523, qword_280240FB0);
      v525 = swift_allocObject();
      *(v525 + 16) = v72;
      v526 = v72;
      v682 = v524;
      v527 = sub_267EF89F8();
      v528 = sub_267EF95D8();
      v529 = swift_allocObject();
      *(v529 + 16) = 64;
      v530 = swift_allocObject();
      *(v530 + 16) = 8;
      v531 = swift_allocObject();
      *(v531 + 16) = sub_267E19664;
      *(v531 + 24) = v525;
      v532 = swift_allocObject();
      *(v532 + 16) = sub_267CD9BB8;
      *(v532 + 24) = v531;
      v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
      inited = swift_initStackObject();
      sub_267EF0E68(inited, 3);
      *v534 = sub_267CD9CCC;
      v534[1] = v529;
      v534[2] = sub_267CD9CCC;
      v534[3] = v530;
      v534[4] = sub_267CD9BC0;
      v534[5] = v532;

      if (os_log_type_enabled(v527, v528))
      {
        v535 = swift_slowAlloc();
        LODWORD(v675) = v528;
        v536 = v535;
        v537 = swift_slowAlloc();
        v680 = v527;
        v538 = v537;
        *v536 = 258;
        *(v536 + 2) = 64;

        *(v536 + 3) = 8;

        *(v536 + 4) = v526;
        *v538 = v526;

        _os_log_impl(&dword_267B93000, v680, v675, "#SendMessageNLv4IntentConverter transformed to: %@", v536, 0xCu);
        sub_267B9F98C(v538, &unk_280229E30, &unk_267EFC270);
        v539 = v538;
        v527 = v680;
        MEMORY[0x26D60A7B0](v539, -1, -1);
        MEMORY[0x26D60A7B0](v536, -1, -1);
      }

      else
      {
      }

      v540 = swift_allocObject();
      *(v540 + 16) = v526;
      v541 = v526;
      v542 = sub_267EF89F8();
      v543 = sub_267EF95D8();
      v544 = swift_allocObject();
      *(v544 + 16) = 32;
      v545 = swift_allocObject();
      *(v545 + 16) = 8;
      v546 = swift_allocObject();
      *(v546 + 16) = sub_267E193C4;
      *(v546 + 24) = v540;
      v547 = swift_allocObject();
      *(v547 + 16) = sub_267CD9CC4;
      *(v547 + 24) = v546;
      v548 = swift_initStackObject();
      sub_267EF0E68(v548, 3);
      *v549 = sub_267CD9CCC;
      v549[1] = v544;
      v549[2] = sub_267CD9CCC;
      v549[3] = v545;
      v549[4] = sub_267CD9CB4;
      v549[5] = v547;

      if (os_log_type_enabled(v542, v543))
      {
        v550 = swift_slowAlloc();
        v680 = v542;
        v551 = v550;
        v552 = swift_slowAlloc();
        LODWORD(v675) = v543;
        v553 = v552;
        v683[0] = v552;
        *v551 = 258;
        *(v551 + 2) = 32;

        *(v551 + 3) = 8;

        v555 = sub_267D2904C(v554);
        if (v556)
        {
          v557 = v556;
        }

        else
        {
          v555 = 7104878;
          v557 = 0xE300000000000000;
        }

        v558 = sub_267BA33E8(v555, v557, v683);

        *(v551 + 4) = v558;

        v559 = v680;
        _os_log_impl(&dword_267B93000, v680, v675, "#SendMessageNLv4IntentConverter group app bundle ID to: %s", v551, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v553);
        MEMORY[0x26D60A7B0](v553, -1, -1);
        MEMORY[0x26D60A7B0](v551, -1, -1);
      }

      else
      {
      }

      v560 = swift_allocObject();
      *(v560 + 16) = v541;
      v561 = v541;
      v562 = sub_267EF89F8();
      v563 = sub_267EF95D8();
      v564 = swift_allocObject();
      *(v564 + 16) = 32;
      v565 = swift_allocObject();
      *(v565 + 16) = 8;
      v566 = swift_allocObject();
      *(v566 + 16) = sub_267E193CC;
      *(v566 + 24) = v560;
      v567 = swift_allocObject();
      *(v567 + 16) = sub_267CD9CC4;
      *(v567 + 24) = v566;
      v568 = swift_initStackObject();
      sub_267EF0E68(v568, 3);
      *v569 = sub_267CD9CCC;
      v569[1] = v564;
      v569[2] = sub_267CD9CCC;
      v569[3] = v565;
      v569[4] = sub_267CD9CB4;
      v569[5] = v567;

      v570 = os_log_type_enabled(v562, v563);
      v680 = v561;
      if (v570)
      {
        LODWORD(v674) = v563;
        v675 = v562;
        v571 = swift_slowAlloc();
        v572 = swift_slowAlloc();
        v683[0] = v572;
        *v571 = 258;
        *(v571 + 2) = 32;

        *(v571 + 3) = 8;

        if (sub_267D29108(v573))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
          v574 = sub_267EF8F18();
          v576 = v575;
        }

        else
        {
          v576 = 0xE300000000000000;
          v574 = 7104878;
        }

        v577 = sub_267BA33E8(v574, v576, v683);

        *(v571 + 4) = v577;

        v562 = v675;
        _os_log_impl(&dword_267B93000, v675, v674, "#SendMessageNLv4IntentConverter recipients can be found in apps: %s", v571, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v572);
        MEMORY[0x26D60A7B0](v572, -1, -1);
        MEMORY[0x26D60A7B0](v571, -1, -1);
      }

      else
      {
      }

      v578 = v629;
      v579 = v651;
      v580 = v635;
      v635(v629, v647, v651);
      v580(v634, v578, v579);
      v581 = v650;
      v582 = (*(v650 + 80) + 16) & ~*(v650 + 80);
      v583 = swift_allocObject();
      (*(v581 + 32))(v583 + v582, v578, v579);
      v584 = swift_allocObject();
      *(v584 + 16) = sub_267E193D4;
      *(v584 + 24) = v583;

      v585 = sub_267EF89F8();
      LODWORD(v581) = sub_267EF95D8();
      v586 = swift_allocObject();
      *(v586 + 16) = 32;
      v587 = swift_allocObject();
      *(v587 + 16) = 8;
      v588 = swift_allocObject();
      *(v588 + 16) = sub_267E19444;
      *(v588 + 24) = v584;
      v589 = swift_allocObject();
      *(v589 + 16) = sub_267CD9CC4;
      *(v589 + 24) = v588;
      v590 = swift_allocObject();
      sub_267EF0E68(v590, 3);
      *v591 = sub_267CD9CCC;
      v591[1] = v586;
      v591[2] = sub_267CD9CCC;
      v591[3] = v587;
      v591[4] = sub_267CD9CB4;
      v591[5] = v589;

      LODWORD(v682) = v581;
      if (os_log_type_enabled(v585, v581))
      {
        v592 = swift_slowAlloc();
        v681 = v585;
        v593 = v592;
        v675 = swift_slowAlloc();
        v683[0] = v675;
        *v593 = 258;
        *(v593 + 2) = 32;

        *(v593 + 3) = 8;

        sub_267E195CC(&qword_28022C618, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v594 = v634;
        v595 = sub_267EF9E58();
        v597 = sub_267BA33E8(v595, v596, v683);

        *(v593 + 4) = v597;

        v598 = v651;
        v599 = *(v650 + 8);
        v599(v594, v651);
        v600 = v681;
        _os_log_impl(&dword_267B93000, v681, v682, "#SendMessageNLv4IntentConverter crrCommsAppSelectionJointId:%s", v593, 0xCu);
        v601 = v675;
        __swift_destroy_boxed_opaque_existential_0(v675);
        MEMORY[0x26D60A7B0](v601, -1, -1);
        MEMORY[0x26D60A7B0](v593, -1, -1);

        (*(v642 + 8))(v676, v643);
        v599(v647, v598);
      }

      else
      {

        v602 = v651;
        v603 = *(v650 + 8);
        v603(v634, v651);

        (*(v642 + 8))(v676, v643);
        v603(v647, v602);
      }

      *v631 = v680;
      (*(v637 + 8))(v640, v638);
    }

LABEL_90:
    v664 = MEMORY[0x277D84F90];
    v648 = MEMORY[0x277D84F90];
    v646 = MEMORY[0x277D84F90];
LABEL_91:
    v71 = v676;
  }

  else
  {
    v664 = v72;
    v648 = v72;
    v646 = v72;
  }

  v92 = v694;
  v93 = sub_267BAF0DC(v694);
  v672 = v92;
  v668 = v93;
  if (v93)
  {
    v95 = 0;
    v667 = v92 & 0xC000000000000001;
    v653 = v92 & 0xFFFFFFFFFFFFFF8;
    *&v94 = 136315138;
    v660 = v94;
    v654 = xmmword_267EFCE30;
    v656 = MEMORY[0x277D84F90];
    v669 = MEMORY[0x277D84F90];
    v96 = v92;
    while (1)
    {
      if (v667)
      {
        v97 = MEMORY[0x26D609870](v95, v96);
      }

      else
      {
        if (v95 >= *(v653 + 16))
        {
LABEL_373:
          __break(1u);
LABEL_374:
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:
          __break(1u);
LABEL_377:
          sub_267EF9328();
LABEL_88:
          sub_267EF9368();

          goto LABEL_90;
        }

        v97 = *(v96 + 8 * v95 + 32);
      }

      if (__OFADD__(v95, 1))
      {
        __break(1u);
LABEL_254:

        v73(v622, v70);
        v626 = 2;
        goto LABEL_255;
      }

      v677 = (&v95->isa + 1);
      v678 = v95;
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v98 = sub_267EF8A08();
      v99 = __swift_project_value_buffer(v98, qword_280240FB0);

      v675 = v99;
      v100 = sub_267EF89F8();
      v101 = sub_267EF95D8();

      v102 = os_log_type_enabled(v100, v101);
      v680 = v97;
      if (v102)
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v686 = v104;
        *v103 = v660;
        sub_267EF56B8();
        v105 = v73;
        v106 = sub_267EF6758();
        v108 = v107;

        v109 = v106;
        v73 = v105;
        v74 = v679;
        v110 = sub_267BA33E8(v109, v108, &v686);

        *(v103 + 4) = v110;
        _os_log_impl(&dword_267B93000, v100, v101, "#SendMessageNLv4IntentConverter calling SRR for common_Person: %s", v103, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v104);
        MEMORY[0x26D60A7B0](v104, -1, -1);
        v111 = v103;
        v71 = v676;
        MEMORY[0x26D60A7B0](v111, -1, -1);
      }

      v92 = sub_267EF56B8();

      v112 = sub_267D270C4(v92, v674);
      if (v73)
      {
LABEL_183:

        (*(v642 + 8))(v71, v643);
        (*(v650 + 8))(v647, v651);
      }

      v115 = v112;
      v70 = v113;
      v116 = v114;

      if (v115)
      {
        if (v115 == 1)
        {
          v117 = sub_267EF89F8();
          v118 = sub_267EF95D8();
          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            *v119 = 0;
            _os_log_impl(&dword_267B93000, v117, v118, "#SendMessageNLv4IntentConverter SRR did not resolve common_Person, will attempt to resolve with CRR", v119, 2u);
            MEMORY[0x26D60A7B0](v119, -1, -1);
          }

          v92 = &v697;
          MEMORY[0x26D608F90]();
          if (*((v697 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v697 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          sub_267EF9368();
          goto LABEL_137;
        }

        v133 = v115;
        MEMORY[0x26D608F90]();
        if (*((v698 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v698 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v134 = v698;
        v135 = v692;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v656 = v134;
        v665 = v116;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_267C71CDC();
          v135 = v185;
        }

        isa = v135[2].isa;
        v137 = v135[3].isa;
        v673 = 0;
        v663 = v70;
        if (isa >= v137 >> 1)
        {
          sub_267C71CDC();
          v135 = v186;
        }

        v135[2].isa = (isa + 1);
        *(&v135[4].isa + isa) = 11;
        v669 = v135;
        v692 = v135;
        v139 = swift_allocObject();
        *(v139 + 16) = v133;
        *&v659 = v133;
        v675 = sub_267EF89F8();
        v140 = sub_267EF95D8();
        v70 = swift_allocObject();
        *(v70 + 16) = 64;
        v141 = swift_allocObject();
        *(v141 + 16) = 8;
        v142 = swift_allocObject();
        *(v142 + 16) = sub_267CD9BB0;
        *(v142 + 24) = v139;
        v143 = swift_allocObject();
        *(v143 + 16) = sub_267E19660;
        *(v143 + 24) = v142;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
        v144 = swift_allocObject();
        *(v144 + 16) = v654;
        *(v144 + 32) = sub_267CD9CCC;
        *(v144 + 40) = v70;
        *(v144 + 48) = sub_267CD9CCC;
        *(v144 + 56) = v141;
        *(v144 + 64) = sub_267E19658;
        *(v144 + 72) = v143;
        swift_setDeallocating();
        v658 = v139;

        sub_267DB6FAC();
        LODWORD(v655) = v140;
        if (os_log_type_enabled(v675, v140))
        {
          v92 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v146 = v659;
          v147 = v145;
          *v92 = 258;
          *(v92 + 2) = 64;

          *(v92 + 3) = 8;

          *(v92 + 4) = v146;
          *v147 = v115;

          v148 = v675;
          _os_log_impl(&dword_267B93000, v675, v655, "#SendMessageNLv4IntentConverter SRR resolved common_Person to INPerson: %@", v92, 0xCu);
          sub_267B9F98C(v147, &unk_280229E30, &unk_267EFC270);
          MEMORY[0x26D60A7B0](v147, -1, -1);
          MEMORY[0x26D60A7B0](v92, -1, -1);
        }

        else
        {

          v92 = v659;
        }

        v73 = v673;
        goto LABEL_127;
      }

      if (v70)
      {
        v120 = swift_retain_n();
        MEMORY[0x26D608F90](v120);
        if (*((v697 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v697 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        swift_retain_n();
        v92 = v675;
        v121 = sub_267EF89F8();
        v122 = sub_267EF95D8();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v665 = v116;
          v125 = v124;
          v686 = v124;
          *v123 = v660;
          sub_267EF56B8();
          v126 = sub_267EF6758();
          v663 = v70;
          v70 = 0;
          v127 = v126;
          v129 = v128;

          v130 = v127;
          v73 = 0;
          v131 = sub_267BA33E8(v130, v129, &v686);
          v74 = v679;

          *(v123 + 4) = v131;
          v92 = v663;

          _os_log_impl(&dword_267B93000, v121, v122, "#SendMessageNLv4IntentConverter SRR resolved common_Person to common_Person: %s", v123, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v125);
          MEMORY[0x26D60A7B0](v125, -1, -1);
          v132 = v123;
          v71 = v676;
          MEMORY[0x26D60A7B0](v132, -1, -1);
        }

LABEL_136:

        goto LABEL_137;
      }

      if (!v116)
      {
        goto LABEL_136;
      }

      v149 = swift_retain_n();
      MEMORY[0x26D608F90](v149);
      if (*((v695 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v695 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v150 = v695;
      v151 = sub_267C8F28C(v695);
      v664 = v150;
      if (v151)
      {
        v665 = v116;
        v152 = sub_267EF5BB8();

        if (v152)
        {
          v153 = sub_267E0F940(v152, sub_267BAF0DC, MEMORY[0x277D5E850]);
          v154 = sub_267BAF0DC(v153);
          if (v154 == sub_267BAF0DC(v152))
          {

            sub_267C9B700(v153);
          }

          else
          {
            v155 = swift_allocObject();
            *(v155 + 16) = v153;
            v156 = v155;
            *&v659 = v155;
            v673 = swift_allocObject();
            *(v673 + 16) = v152;
            v614 = v153;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v663 = sub_267EF89F8();
            LODWORD(v655) = sub_267EF95E8();
            v609 = swift_allocObject();
            *(v609 + 16) = 0;
            v608 = swift_allocObject();
            *(v608 + 16) = 8;
            v157 = swift_allocObject();
            *(v157 + 16) = sub_267E195B0;
            *(v157 + 24) = v156;
            v158 = swift_allocObject();
            *(v158 + 16) = sub_267CD9B94;
            *(v158 + 24) = v157;
            v159 = swift_allocObject();
            *(v159 + 16) = 0;
            v160 = v159;
            v658 = v159;
            v606 = swift_allocObject();
            *(v606 + 16) = 8;
            v161 = swift_allocObject();
            v162 = v673;
            *(v161 + 16) = sub_267E19668;
            *(v161 + 24) = v162;
            v163 = swift_allocObject();
            *(v163 + 16) = sub_267E1966C;
            *(v163 + 24) = v161;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
            v164 = swift_allocObject();
            v607 = sub_267EF0E68(v164, 6);
            v166 = v608;
            v165 = v609;
            *v167 = sub_267CD9CCC;
            v167[1] = v165;
            v167[2] = sub_267CD9CCC;
            v167[3] = v166;
            v167[4] = sub_267CD9B9C;
            v167[5] = v158;
            v167[6] = sub_267CD9CCC;
            v167[7] = v160;
            v168 = v606;
            v167[8] = sub_267CD9CCC;
            v167[9] = v168;
            v167[10] = sub_267E1965C;
            v167[11] = v163;

            v612 = v157;

            v613 = v161;

            v611 = v158;

            v610 = v163;

            if (!os_log_type_enabled(v663, v655))
            {

              swift_bridgeObjectRelease_n();

              swift_bridgeObjectRelease_n();

              v116 = v665;
              goto LABEL_142;
            }

            v169 = swift_slowAlloc();
            *v169 = 512;
            *(v169 + 2) = 0;

            *(v169 + 3) = 8;

            v170 = sub_267BAF0DC(v614);

            *(v169 + 4) = v170;
            v73 = 0;

            *(v169 + 12) = 0;

            *(v169 + 13) = 8;

            v171 = sub_267BAF0DC(v152);

            *(v169 + 14) = v171;

            v172 = v663;
            _os_log_impl(&dword_267B93000, v663, v655, "#SendMessageNLv4IntentConverter unable to convert entity to common_Person, count mismatch: persons=%ld, groupMembers=%ld", v169, 0x16u);
            MEMORY[0x26D60A7B0](v169, -1, -1);
          }
        }

        v116 = v665;
      }

LABEL_142:
      swift_retain_n();
      v675 = sub_267EF89F8();
      v173 = sub_267EF95D8();
      v174 = swift_allocObject();
      *(v174 + 16) = 32;
      v70 = swift_allocObject();
      *(v70 + 16) = 8;
      v175 = swift_allocObject();
      *(v175 + 16) = sub_267CD9BEC;
      *(v175 + 24) = v116;
      v176 = swift_allocObject();
      *(v176 + 16) = sub_267CD9CC4;
      *(v176 + 24) = v175;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
      v177 = swift_allocObject();
      *(v177 + 16) = v654;
      *(v177 + 32) = sub_267CD9CCC;
      *(v177 + 40) = v174;
      *(v177 + 48) = sub_267CD9CCC;
      *(v177 + 56) = v70;
      *(v177 + 64) = sub_267CD9CB4;
      *(v177 + 72) = v176;
      swift_setDeallocating();

      sub_267DB6FAC();
      LODWORD(v663) = v173;
      v92 = v675;
      if (os_log_type_enabled(v675, v173))
      {
        v178 = swift_slowAlloc();
        v673 = v73;
        v179 = v178;
        v180 = swift_slowAlloc();
        v686 = v180;
        *v179 = 258;
        *(v179 + 2) = 32;

        *(v179 + 3) = 8;

        sub_267EF56B8();
        v181 = sub_267EF6758();
        v70 = v182;

        v183 = sub_267BA33E8(v181, v70, &v686);

        *(v179 + 4) = v183;

        v92 = v675;
        _os_log_impl(&dword_267B93000, v675, v663, "#SendMessageNLv4IntentConverter SRR resolved common_Person to common_Group: %s", v179, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v180);
        MEMORY[0x26D60A7B0](v180, -1, -1);
        v184 = v179;
        v73 = v673;
        MEMORY[0x26D60A7B0](v184, -1, -1);
      }

      else
      {
      }

LABEL_127:
      v71 = v676;
      v74 = v679;
LABEL_137:
      v95 = (&v678->isa + 1);
      v96 = v672;
      if (v677 == v668)
      {
        goto LABEL_148;
      }
    }
  }

  v656 = MEMORY[0x277D84F90];
  v669 = MEMORY[0x277D84F90];
LABEL_148:
  v187 = v693;
  v188 = sub_267BAF0DC(v693);
  v665 = v187;
  v668 = v188;
  if (v188)
  {
    v190 = 0;
    v667 = v187 & 0xC000000000000001;
    v658 = (v187 & 0xFFFFFFFFFFFFFF8);
    *&v189 = 136315138;
    v659 = v189;
    v655 = xmmword_267EFCE30;
    do
    {
      if (v667)
      {
        v74 = MEMORY[0x26D609870](v190, v187);
      }

      else
      {
        if (v190 >= v658[2].isa)
        {
          goto LABEL_374;
        }

        v74 = *(v187 + 8 * v190 + 32);
      }

      v70 = &v190->isa + 1;
      if (__OFADD__(v190, 1))
      {
        __break(1u);
        goto LABEL_373;
      }

      v678 = v190;
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v191 = sub_267EF8A08();
      v192 = __swift_project_value_buffer(v191, qword_280240FB0);

      v677 = v192;
      v193 = sub_267EF89F8();
      v194 = sub_267EF95D8();

      v195 = os_log_type_enabled(v193, v194);
      v680 = v74;
      if (v195)
      {
        v196 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        v686 = v197;
        *v196 = v659;
        sub_267EF56B8();
        v198 = sub_267EF6758();
        v675 = v70;
        v199 = v73;
        v201 = v200;

        v202 = v198;
        v71 = v676;
        v203 = sub_267BA33E8(v202, v201, &v686);
        v73 = v199;
        v70 = v675;

        *(v196 + 4) = v203;
        _os_log_impl(&dword_267B93000, v193, v194, "#SendMessageNLv4IntentConverter calling SRR for common_Group: %s", v196, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v197);
        MEMORY[0x26D60A7B0](v197, -1, -1);
        v204 = v196;
        v187 = v665;
        MEMORY[0x26D60A7B0](v204, -1, -1);
      }

      v205 = sub_267EF56B8();

      v206 = sub_267D270C4(v205, v674);
      if (v73)
      {
        goto LABEL_183;
      }

      v209 = v206;
      v210 = v207;
      v211 = v208;

      if (v209 == 1)
      {
        v212 = sub_267EF89F8();
        v213 = sub_267EF95D8();
        if (os_log_type_enabled(v212, v213))
        {
          v214 = swift_slowAlloc();
          *v214 = 0;
          _os_log_impl(&dword_267B93000, v212, v213, "#SendMessageNLv4IntentConverter SRR did not resolve common_Group, will treat as common_Group with no reference", v214, 2u);
          MEMORY[0x26D60A7B0](v214, -1, -1);
        }

        MEMORY[0x26D608F90]();
        v74 = v679;
        if (*((v695 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v695 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v664 = v695;
      }

      else if (v211)
      {
        *&v660 = v210;
        v215 = swift_retain_n();
        MEMORY[0x26D608F90](v215);
        if (*((v695 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v695 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v216 = v695;
        v669 = v692;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_267C71CDC();
          v669 = v236;
        }

        v218 = v669[2].isa;
        v217 = v669[3].isa;
        v664 = v216;
        v673 = 0;
        if (v218 >= v217 >> 1)
        {
          sub_267C71CDC();
          v669 = v237;
        }

        v219 = v669;
        v669[2].isa = (v218 + 1);
        *(&v219[4].isa + v218) = 11;
        v692 = v219;
        swift_retain_n();
        v677 = sub_267EF89F8();
        LODWORD(v663) = sub_267EF95D8();
        v220 = swift_allocObject();
        *(v220 + 16) = 32;
        v221 = swift_allocObject();
        *(v221 + 16) = 8;
        v222 = swift_allocObject();
        *(v222 + 16) = sub_267CD9CBC;
        *(v222 + 24) = v211;
        v223 = swift_allocObject();
        *(v223 + 16) = sub_267CD9CC4;
        *(v223 + 24) = v222;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
        v224 = swift_allocObject();
        *(v224 + 16) = v655;
        *(v224 + 32) = sub_267CD9CCC;
        *(v224 + 40) = v220;
        *(v224 + 48) = sub_267CD9CCC;
        *(v224 + 56) = v221;
        *(v224 + 64) = sub_267CD9CB4;
        *(v224 + 72) = v223;
        swift_setDeallocating();

        v675 = v220;

        sub_267DB6FAC();
        if (!os_log_type_enabled(v677, v663))
        {

          v71 = v676;
          v74 = v679;
          v187 = v665;
          v235 = v678;
          v73 = v673;
          goto LABEL_177;
        }

        v225 = swift_slowAlloc();
        v226 = swift_slowAlloc();
        v653 = v225;
        *&v654 = v226;
        v686 = v226;
        *v225 = 258;
        *(v225 + 2) = 32;

        *(v225 + 3) = 8;

        sub_267EF56B8();
        v227 = sub_267EF6758();
        v675 = v70;
        v229 = v228;

        v230 = sub_267BA33E8(v227, v229, &v686);
        v73 = v673;
        v70 = v675;

        v231 = v653;
        *(v653 + 4) = v230;

        v232 = v677;
        v233 = v231;
        _os_log_impl(&dword_267B93000, v677, v663, "#SendMessageNLv4IntentConverter SRR resolved common_Group to common_Group: %s", v231, 0xCu);
        v234 = v654;
        __swift_destroy_boxed_opaque_existential_0(v654);
        MEMORY[0x26D60A7B0](v234, -1, -1);
        MEMORY[0x26D60A7B0](v233, -1, -1);

        v71 = v676;
        v74 = v679;
        v187 = v665;
      }

      else
      {

        v74 = v679;
      }

      v235 = v678;
LABEL_177:
      v190 = (&v235->isa + 1);
    }

    while (v70 != v668);
  }

  v238 = v649;
  if (v649)
  {
    if (sub_267EF59F8())
    {
      sub_267EABD04();
      v238 = v239;
      v241 = v240;

      goto LABEL_186;
    }

    v238 = 0;
  }

  v241 = 0;
LABEL_186:
  v242 = swift_allocObject();
  *(v242 + 16) = v238;
  *(v242 + 24) = v241;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A8, &qword_267F01FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8B0, &unk_267F01FD0);
  v243 = v640;
  v244 = sub_267EF7048();
  v245 = v695;
  MEMORY[0x28223BE20](v244);
  v604[2] = v243;
  v246 = sub_267D2EA6C(sub_267E19374, v604, v245);
  if (v73)
  {

    (*(v642 + 8))(v676, v643);
    (*(v650 + 8))(v647, v651);

    (*(v637 + 8))(v243, v638);
    goto LABEL_188;
  }

  v248 = v246;
  v614 = v245;
  if (!sub_267C8F28C(v245))
  {
    v250 = v633;
    __swift_storeEnumTagSinglePayload(v633, 1, 1, v671);
    goto LABEL_200;
  }

  v249 = sub_267EF5688();

  v250 = v633;
  sub_267E1041C(v249, v633);

  v251 = v671;
  if (__swift_getEnumTagSinglePayload(v250, 1, v671) == 1)
  {
LABEL_200:
    sub_267B9F98C(v250, &qword_28022AEE0, &qword_267F01FA0);
    goto LABEL_201;
  }

  v673 = 0;
  v252 = v639;
  v253 = *(v639 + 32);
  v254 = v250;
  v255 = v628;
  v253(v628, v254, v251);
  v256 = sub_267EF57A8();
  v258 = v257;

  v259 = HIBYTE(v258) & 0xF;
  if ((v258 & 0x2000000000000000) == 0)
  {
    v259 = v256 & 0xFFFFFFFFFFFFLL;
  }

  if (v259)
  {
    v260 = v253;

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v261 = sub_267EF8A08();
    __swift_project_value_buffer(v261, qword_280240FB0);
    v262 = v639 + 16;
    v263 = *(v639 + 16);
    v264 = v618;
    v265 = v671;
    v263(v618, v628, v671);
    v263(v626, v264, v265);
    v266 = (*(v262 + 64) + 16) & ~*(v262 + 64);
    v267 = swift_allocObject();
    v260(v267 + v266, v264, v265);
    v268 = sub_267EF89F8();
    v269 = sub_267EF95D8();
    v270 = swift_allocObject();
    *(v270 + 16) = 32;
    v271 = swift_allocObject();
    *(v271 + 16) = 8;
    v272 = swift_allocObject();
    *(v272 + 16) = sub_267E19518;
    *(v272 + 24) = v267;
    v273 = swift_allocObject();
    *(v273 + 16) = sub_267CD9CC4;
    *(v273 + 24) = v272;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
    v274 = swift_allocObject();
    sub_267EF0E68(v274, 3);
    *v275 = sub_267CD9CCC;
    v275[1] = v270;
    v275[2] = sub_267CD9CCC;
    v275[3] = v271;
    v275[4] = sub_267CD9CB4;
    v275[5] = v273;

    if (os_log_type_enabled(v268, v269))
    {
      v276 = swift_slowAlloc();
      v277 = swift_slowAlloc();
      LODWORD(v680) = v269;
      v278 = v277;
      v686 = v277;
      *v276 = 258;
      *(v276 + 2) = 32;

      *(v276 + 3) = 8;

      v678 = v268;
      v279 = v626;
      v280 = sub_267EF57A8();
      v282 = sub_267BA33E8(v280, v281, &v686);

      *(v276 + 4) = v282;

      v283 = *(v639 + 8);
      v284 = v279;
      v285 = v671;
      v283(v284, v671);
      v286 = v678;
      _os_log_impl(&dword_267B93000, v678, v680, "#SendMessageNLv4IntentConverter setting conversationIdentifier: %s", v276, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v278);
      MEMORY[0x26D60A7B0](v278, -1, -1);
      MEMORY[0x26D60A7B0](v276, -1, -1);

      v265 = v285;
    }

    else
    {

      v283 = *(v639 + 8);
      v283(v626, v265);
    }

    v344 = v628;
    v623 = sub_267EF57A8();
    v618 = v345;
    v283(v344, v265);

    v619 = 0;
    v698 = MEMORY[0x277D84F90];
    v293 = v673;
    v342 = v651;
    v343 = v649;
LABEL_224:
    v74 = v679;
LABEL_225:
    v689 = 0;
    if (!v343)
    {
      v349 = sub_267EF5FA8();
      v350 = v632;
      __swift_storeEnumTagSinglePayload(v632, 1, 1, v349);
      sub_267B9F98C(v350, &qword_28022C158, &unk_267F09680);
      v628 = 0;
      v632 = 0;
      v622 = 0;
      v624 = 0;
      v626 = 0;
      v351 = v662;
      goto LABEL_301;
    }

    if (sub_267EF5CC8())
    {
      v346 = v632;
      sub_267EF5F98();

      v347 = sub_267EF5FA8();
      if (__swift_getEnumTagSinglePayload(v346, 1, v347) != 1)
      {
        v354 = *(v347 - 8);
        v626 = (*(v354 + 88))(v346, v347) == *MEMORY[0x277D5EAE0];
        (*(v354 + 8))(v346, v347);
LABEL_233:
        v355 = sub_267EF5C48();
        if (v355)
        {
          v356 = sub_267E0F940(v355, sub_267BAF0DC, MEMORY[0x277D5E390]);

          v358 = sub_267C8F28C(v357);
          if (v358)
          {
            v359 = v358;
            v628 = v356;
            v360 = v620;
            sub_267EF54F8();
            v361 = v627;
            if (__swift_getEnumTagSinglePayload(v360, 1, v627) == 1)
            {
              v356 = v628;

              sub_267B9F98C(v360, &qword_28022A8C0, &unk_267F0AC60);
            }

            else
            {
              v680 = v359;
              v673 = v293;
              v362 = v624;
              v363 = v622;
              v678 = *(v624 + 32);
              (v678)(v622, v360, v361);
              v364 = v361;
              if (qword_280228818 != -1)
              {
                swift_once();
              }

              v365 = sub_267EF8A08();
              v366 = __swift_project_value_buffer(v365, qword_280240FB0);
              v367 = (v362 + 16);
              v368 = *(v362 + 16);
              v369 = v615;
              (v368)(v615, v363, v364);
              v675 = v368;
              (v368)(v74, v369, v364);
              v677 = v367;
              v370 = (v367[64] + 16) & ~v367[64];
              v371 = swift_allocObject();
              (v678)(v371 + v370, v369, v364);
              v678 = v366;
              v372 = sub_267EF89F8();
              LODWORD(v370) = sub_267EF95D8();
              v373 = swift_allocObject();
              *(v373 + 16) = 32;
              v374 = swift_allocObject();
              *(v374 + 16) = 8;
              v375 = swift_allocObject();
              *(v375 + 16) = sub_267E19454;
              *(v375 + 24) = v371;
              v376 = swift_allocObject();
              v377 = v624;
              v378 = v376;
              *(v376 + 16) = sub_267CD9CC4;
              *(v376 + 24) = v375;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
              v379 = swift_allocObject();
              sub_267EF0E68(v379, 3);
              *v380 = sub_267CD9CCC;
              v380[1] = v373;
              v380[2] = sub_267CD9CCC;
              v380[3] = v374;
              v380[4] = sub_267CD9CB4;
              v380[5] = v378;

              LODWORD(v669) = v370;
              v674 = v372;
              v381 = os_log_type_enabled(v372, v370);
              v382 = v627;
              if (v381)
              {
                v383 = swift_slowAlloc();
                v384 = swift_slowAlloc();
                v686 = v384;
                *v383 = 258;
                *(v383 + 2) = 32;

                *(v383 + 3) = 8;

                v385 = v679;
                v386 = sub_267EF5508();
                v388 = sub_267BA33E8(v386, v387, &v686);

                *(v383 + 4) = v388;

                v389 = v624;
                v73 = *(v624 + 8);
                v73(v385, v627);
                v390 = v674;
                _os_log_impl(&dword_267B93000, v674, v669, "#SendMessageNLv4IntentConverter NLv4 message attribute is %s", v383, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v384);
                MEMORY[0x26D60A7B0](v384, -1, -1);
                v70 = v627;
                MEMORY[0x26D60A7B0](v383, -1, -1);

                v391 = v389;
              }

              else
              {

                v73 = *(v377 + 8);
                v73(v679, v382);
                v391 = v377;
                v70 = v382;
              }

              v392 = v617;
              (v675)(v617, v622, v70);
              v393 = (*(v391 + 88))(v392, v70);
              if (v393 == *MEMORY[0x277D5E368])
              {
                v92 = sub_267EF89F8();
                v394 = sub_267EF95D8();
                if (!os_log_type_enabled(v92, v394))
                {
                  goto LABEL_254;
                }

                v626 = 2;
                v395 = swift_slowAlloc();
                *v395 = 0;
                _os_log_impl(&dword_267B93000, v92, v394, "#SendMessageNLv4IntentConverter setting outgoingMessageType to audio", v395, 2u);
                MEMORY[0x26D60A7B0](v395, -1, -1);

                v73(v622, v70);
LABEL_255:
                v293 = v673;
              }

              else
              {
                v396 = v393;
                v397 = *MEMORY[0x277D5E360];
                v398 = sub_267EF89F8();
                v399 = sub_267EF95D8();
                v400 = os_log_type_enabled(v398, v399);
                if (v396 == v397)
                {
                  if (v400)
                  {
                    v401 = swift_slowAlloc();
                    *v401 = 0;
                    _os_log_impl(&dword_267B93000, v398, v399, "#SendMessageNLv4IntentConverter adding location attachment", v401, 2u);
                    MEMORY[0x26D60A7B0](v401, -1, -1);
                  }

                  v689 = MEMORY[0x277D84F90];
                  v402 = [objc_opt_self() attachmentWithCurrentLocation];
                  MEMORY[0x26D608F90]();
                  if (*((v689 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v689 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_267EF9328();
                  }

                  sub_267EF9368();

                  v73(v622, v70);
                }

                else
                {
                  if (v400)
                  {
                    v403 = swift_slowAlloc();
                    *v403 = 0;
                    _os_log_impl(&dword_267B93000, v398, v399, "#SendMessageNLv4IntentConverter not using messageAttribute in intent conversion", v403, 2u);
                    MEMORY[0x26D60A7B0](v403, -1, -1);
                  }

                  v73(v622, v70);
                  v73(v392, v70);
                }

                v293 = v673;
              }

              v356 = v628;
            }
          }

          else
          {
          }
        }

        else
        {
          v356 = 0;
        }

        v404 = sub_267EF5C68();
        v628 = v356;
        if (v404)
        {
          sub_267E0F940(v404, sub_267BAF0DC, MEMORY[0x277D5EA18]);

          sub_267E0FE8C();
          if (v405)
          {
            if (qword_280228818 != -1)
            {
              swift_once();
            }

            v406 = sub_267EF8A08();
            __swift_project_value_buffer(v406, qword_280240FB0);
            v407 = sub_267EF89F8();
            v408 = sub_267EF95D8();
            if (os_log_type_enabled(v407, v408))
            {
              v409 = swift_slowAlloc();
              *v409 = 0;
              _os_log_impl(&dword_267B93000, v407, v408, "#SendMessageNLv4IntentConverter setting outgoingMessageType to audio based on common_Attachment", v409, 2u);
              MEMORY[0x26D60A7B0](v409, -1, -1);
            }

            v626 = 2;
          }

          sub_267E0FE8C();
          v411 = v410;

          v673 = v293;
          if (v411)
          {
            if (qword_280228818 != -1)
            {
              swift_once();
            }

            v412 = sub_267EF8A08();
            __swift_project_value_buffer(v412, qword_280240FB0);
            v413 = sub_267EF89F8();
            v414 = sub_267EF95D8();
            if (os_log_type_enabled(v413, v414))
            {
              v415 = swift_slowAlloc();
              *v415 = 0;
              _os_log_impl(&dword_267B93000, v413, v414, "#SendMessageNLv4IntentConverter adding location attachment based on common_Attachment", v415, 2u);
              MEMORY[0x26D60A7B0](v415, -1, -1);
            }

            v416 = v689;
            if (!v689)
            {
              v416 = MEMORY[0x277D84F90];
            }

            v689 = v416;
            v417 = [objc_opt_self() attachmentWithCurrentLocation];
            MEMORY[0x26D608F90]();
            if (*((v689 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v689 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();
          }
        }

        else
        {
          v673 = v293;
        }

        v632 = sub_267EF5C88();
        v74 = v418;
        v419 = sub_267EF5CB8();
        v351 = v662;
        v624 = v419;
        if (!v419)
        {
          goto LABEL_298;
        }

        v420 = sub_267EF59B8();
        v422 = v421;

        if (!v422)
        {
          goto LABEL_298;
        }

        sub_267EF59C8();

        if (v687)
        {
          v679 = v687;
          v680 = v74;
          v675 = v686;
          if (qword_280228818 != -1)
          {
            swift_once();
          }

          v423 = sub_267EF8A08();
          v424 = __swift_project_value_buffer(v423, qword_280240FB0);
          v425 = swift_allocObject();
          *(v425 + 16) = v420;
          *(v425 + 24) = v422;
          swift_bridgeObjectRetain_n();
          v677 = v424;
          v426 = sub_267EF89F8();
          v427 = sub_267EF95D8();
          v428 = swift_allocObject();
          *(v428 + 16) = 32;
          v429 = swift_allocObject();
          v678 = v420;
          v430 = v429;
          *(v429 + 16) = 8;
          v431 = swift_allocObject();
          *(v431 + 16) = sub_267E1944C;
          *(v431 + 24) = v425;
          v432 = swift_allocObject();
          *(v432 + 16) = sub_267CD9CC4;
          *(v432 + 24) = v431;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
          v433 = swift_allocObject();
          sub_267EF0E68(v433, 3);
          *v434 = sub_267CD9CCC;
          v434[1] = v428;
          v434[2] = sub_267CD9CCC;
          v434[3] = v430;
          v434[4] = sub_267CD9CB4;
          v434[5] = v432;

          LODWORD(v674) = v427;
          if (os_log_type_enabled(v426, v427))
          {
            v435 = swift_slowAlloc();
            v669 = v426;
            v436 = v435;
            v437 = swift_slowAlloc();
            v686 = v437;
            *v436 = 258;
            *(v436 + 2) = 32;

            *(v436 + 3) = 8;

            v438 = v678;
            v439 = sub_267BA33E8(v678, v422, &v686);

            *(v436 + 4) = v439;

            v440 = v669;
            _os_log_impl(&dword_267B93000, v669, v674, "#SendMessageNLv4IntentConverter processing operator %s on stringContent", v436, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v437);
            MEMORY[0x26D60A7B0](v437, -1, -1);
            MEMORY[0x26D60A7B0](v436, -1, -1);

            v441 = v438;
          }

          else
          {

            v441 = v678;
          }

          v442 = v441 == 0x646E65707061 && v422 == 0xE600000000000000;
          v74 = v680;
          v443 = v679;
          if (v442)
          {
          }

          else
          {
            v444 = sub_267EF9EA8();

            if ((v444 & 1) == 0)
            {

              v445 = sub_267EF89F8();
              v446 = sub_267EF95D8();
              if (os_log_type_enabled(v445, v446))
              {
                v447 = swift_slowAlloc();
                *v447 = 0;
                _os_log_impl(&dword_267B93000, v445, v446, "#SendMessageNLv4IntentConverter unknown operand on stringContent, this should not happen", v447, 2u);
                MEMORY[0x26D60A7B0](v447, -1, -1);
              }

              goto LABEL_297;
            }
          }

          v449 = sub_267EF89F8();
          v450 = sub_267EF95D8();
          if (os_log_type_enabled(v449, v450))
          {
            v451 = swift_slowAlloc();
            *v451 = 0;
            _os_log_impl(&dword_267B93000, v449, v450, "#SendMessageNLv4IntentConverter append operand on stringContent, updating stringContent", v451, 2u);
            MEMORY[0x26D60A7B0](v451, -1, -1);
          }

          v293 = v673;
          v342 = v651;
          v448 = v675;
          goto LABEL_306;
        }

LABEL_297:
        v351 = v662;
LABEL_298:
        if (v74)
        {
          v448 = v632;
          v443 = v74;
          v293 = v673;
          v342 = v651;
LABEL_306:
          __swift_project_boxed_opaque_existential_0(v644, v644[3]);
          v74 = v625;
          sub_267EF3B68();
          v452 = sub_267EF2E38();
          __swift_storeEnumTagSinglePayload(v74, 0, 1, v452);
          v632 = sub_267D5EBA4(v74, v448, v443);
          v622 = v453;

          sub_267B9F98C(v74, &unk_28022AF10, &unk_267F001E0);
          v73 = v666;
          v351 = v662;
          goto LABEL_307;
        }

        v622 = 0;
        v293 = v673;
        v342 = v651;
LABEL_301:
        v73 = v666;
LABEL_307:
        v625 = v698;
        v633 = sub_267ECEE14(v698);
        if (sub_267E61530(v633))
        {

          *&v654 = 0;
          v454 = v293;
          goto LABEL_349;
        }

        v673 = v293;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
        v455 = sub_267EF8F28();
        v70 = v697;
        v656 = sub_267BAF0DC(v697);
        if (!v656)
        {
LABEL_348:
          *&v654 = v455;

          v454 = v673;
          v342 = v651;
LABEL_349:
          v511 = v633;
          v512 = sub_267E8D860(v633);
          v513 = v689;
          v514 = objc_allocWithZone(MEMORY[0x277CD4078]);

          v515 = v619;
          v516 = v619;
          v679 = v513;
          v517 = sub_267E8F82C(v512, v626, v632, v622, v515, v623, v618, 0, 0, 0, v513);
          v518 = v692;
          v72 = v517;
          sub_267C7A414(v518);

          v519 = sub_267E0F7D0(v511);

          sub_267D2952C(v519);

          sub_267D29264(v678);
          if (v515)
          {
            v520 = sub_267E10680();
          }

          else
          {
            v520 = 0;
            v521 = 0;
          }

          v677 = v516;
          v673 = v454;
          sub_267D294C0(v520, v521);
          sub_267D291CC(v654);
          v522 = v645;
          v635(v645, v647, v342);
          __swift_storeEnumTagSinglePayload(v522, 0, 1, v342);
          sub_267D295F8(v522);
          sub_267D295A8();
          if (qword_280228818 == -1)
          {
            goto LABEL_353;
          }

          goto LABEL_379;
        }

        v457 = 0;
        *&v655 = v70 & 0xC000000000000001;
        v644 = (v70 & 0xFFFFFFFFFFFFFF8);
        v641 = v70 + 32;
        v677 = (v639 + 16);
        LODWORD(v675) = *MEMORY[0x277D5E4B0];
        v674 = v621 + 13;
        *&v660 = v621 + 4;
        v668 = v621 + 1;
        v669 = (v639 + 8);
        v664 = "numberOfSendersMinusTwo";
        *&v456 = 136315394;
        v627 = v456;
        v458 = v671;
        v646 = v70;
        while (1)
        {
          if (v655)
          {
            v459 = MEMORY[0x26D609870](v457, v70);
          }

          else
          {
            if (v457 >= v644[2])
            {
              goto LABEL_376;
            }
          }

          v460 = __OFADD__(v457, 1);
          v461 = (&v457->isa + 1);
          if (v460)
          {
            goto LABEL_375;
          }

          v462 = v458;
          v663 = v461;
          v463 = v459;
          v464 = sub_267EF5C18();
          *&v659 = v465;
          if (!v465)
          {
            goto LABEL_339;
          }

          v658 = v464;
          v466 = sub_267EF5A38();
          if (!v466)
          {
            break;
          }

          v653 = v463;
          *&v654 = v455;
          v688 = MEMORY[0x277D84FA0];
          v467 = *(v466 + 16);
          v649 = v466;
          if (v467)
          {
            v468 = v466 + ((*(v639 + 80) + 32) & ~*(v639 + 80));
            v679 = *(v639 + 72);
            v678 = *(v639 + 16);
            v469 = v661;
            v458 = v462;
            while (1)
            {
              v680 = v467;
              (v678)(v681, v468, v458);
              sub_267EF5788();
              (v674->isa)(v469, v675, v73);
              __swift_storeEnumTagSinglePayload(v469, 0, 1, v73);
              v470 = *(v670 + 48);
              v471 = v682;
              sub_267C2FB6C(v351, v682, &qword_28022AF00, &unk_267F042C0);
              sub_267C2FB6C(v469, v471 + v470, &qword_28022AF00, &unk_267F042C0);
              if (__swift_getEnumTagSinglePayload(v471, 1, v73) == 1)
              {
                v472 = v469;
                sub_267B9F98C(v469, &qword_28022AF00, &unk_267F042C0);
                v473 = v351;
                sub_267B9F98C(v351, &qword_28022AF00, &unk_267F042C0);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v682 + v470, 1, v73);
                v458 = v671;
                if (EnumTagSinglePayload != 1)
                {
                  goto LABEL_325;
                }

                sub_267B9F98C(v682, &qword_28022AF00, &unk_267F042C0);
                v469 = v472;
              }

              else
              {
                v475 = v682;
                v476 = v657;
                sub_267C2FB6C(v682, v657, &qword_28022AF00, &unk_267F042C0);
                if (__swift_getEnumTagSinglePayload(v475 + v470, 1, v73) == 1)
                {
                  v472 = v661;
                  sub_267B9F98C(v661, &qword_28022AF00, &unk_267F042C0);
                  v477 = v662;
                  sub_267B9F98C(v662, &qword_28022AF00, &unk_267F042C0);
                  v478 = v476;
                  v473 = v477;
                  (v668->isa)(v478, v73);
                  v458 = v671;
LABEL_325:
                  sub_267B9F98C(v682, &qword_28022AEF8, &qword_267F042B8);
                  v351 = v473;
                  v469 = v472;
                  goto LABEL_335;
                }

                v479 = v652;
                (*v660)(v652, v682 + v470, v73);
                sub_267E195CC(&unk_28022AF20, MEMORY[0x277D5E4D8], MEMORY[0x277D5E4E0]);
                LODWORD(v667) = sub_267EF8FE8();
                v480 = v668->isa;
                (v668->isa)(v479, v666);
                v481 = v480;
                v482 = v661;
                sub_267B9F98C(v661, &qword_28022AF00, &unk_267F042C0);
                v351 = v662;
                sub_267B9F98C(v662, &qword_28022AF00, &unk_267F042C0);
                v483 = v476;
                v469 = v482;
                v481(v483, v666);
                v73 = v666;
                sub_267B9F98C(v682, &qword_28022AF00, &unk_267F042C0);
                v458 = v671;
                if ((v667 & 1) == 0)
                {
                  goto LABEL_335;
                }
              }

              if (sub_267EF5768() == 0x73746361746E6F43 && v484 == 0xE800000000000000)
              {

LABEL_334:
                swift_beginAccess();
                sub_267D302A8(v684, 0xD000000000000013, v664 | 0x8000000000000000);
                swift_endAccess();

LABEL_335:
                (v669->isa)(v681, v458);
                goto LABEL_336;
              }

              v486 = sub_267EF9EA8();

              if (v486)
              {
                goto LABEL_334;
              }

              v487 = v681;
              v488 = sub_267EF5768();
              v489 = v458;
              v491 = v490;
              swift_beginAccess();
              v73 = v666;
              sub_267D302A8(v684, v488, v491);
              swift_endAccess();

              v492 = v487;
              v458 = v489;
              v351 = v662;
              (v669->isa)(v492, v489);
LABEL_336:
              v468 += v679;
              v467 = (v680 - 1);
              if (v680 == 1)
              {
                goto LABEL_341;
              }
            }
          }

          v458 = v462;
LABEL_341:
          if (qword_280228818 != -1)
          {
            swift_once();
          }

          v493 = sub_267EF8A08();
          __swift_project_value_buffer(v493, qword_280240FB0);
          v494 = v659;
          swift_bridgeObjectRetain_n();
          v495 = sub_267EF89F8();
          v496 = sub_267EF95D8();
          v497 = os_log_type_enabled(v495, v496);
          v70 = v646;
          if (v497)
          {
            v498 = swift_slowAlloc();
            LODWORD(v679) = v496;
            v499 = v498;
            v680 = swift_slowAlloc();
            v683[0] = v680;
            *v499 = v627;

            v500 = sub_267BA33E8(v658, v494, v683);

            *(v499 + 4) = v500;
            swift_bridgeObjectRelease_n();
            *(v499 + 12) = 2080;
            swift_beginAccess();

            v501 = v70;
            v502 = sub_267EF94E8();
            v504 = v503;

            v505 = v502;
            v70 = v501;
            v506 = sub_267BA33E8(v505, v504, v683);

            *(v499 + 14) = v506;
            v458 = v671;
            v73 = v666;

            _os_log_impl(&dword_267B93000, v495, v679, "#SendMessageNLv4IntentConverter recipient %s can be found in apps: %s", v499, 0x16u);
            v507 = v680;
            swift_arrayDestroy();
            MEMORY[0x26D60A7B0](v507, -1, -1);
            MEMORY[0x26D60A7B0](v499, -1, -1);
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v74 = v658;
          swift_beginAccess();
          v508 = v688;

          v509 = v654;
          v510 = swift_isUniquelyReferenced_nonNull_native();
          v683[0] = v509;
          sub_267E870F8(v508, v74, v494, v510);

          v455 = v683[0];
          v457 = v663;
LABEL_347:
          if (v457 == v656)
          {
            goto LABEL_348;
          }
        }

LABEL_339:

        v457 = v663;
        v458 = v462;
        goto LABEL_347;
      }

      v348 = v346;
    }

    else
    {
      v352 = sub_267EF5FA8();
      v353 = v632;
      __swift_storeEnumTagSinglePayload(v632, 1, 1, v352);
      v348 = v353;
    }

    sub_267B9F98C(v348, &qword_28022C158, &unk_267F09680);
    v626 = 0;
    goto LABEL_233;
  }

  (*(v252 + 8))(v255, v251);
  v73 = v673;
  v74 = v679;
LABEL_201:
  v287 = sub_267C8F5C4(v248);

  if (v287 >= 2)
  {
    if (!sub_267EB8F8C())
    {
      v673 = v73;
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v317 = sub_267EF8A08();
      __swift_project_value_buffer(v317, qword_280240FB0);
      v318 = swift_allocObject();
      *(v318 + 16) = v287;
      sub_267E19480(v287);
      v678 = v287;
      v319 = sub_267EF89F8();
      v320 = sub_267EF95D8();
      v321 = swift_allocObject();
      *(v321 + 16) = 64;
      v322 = swift_allocObject();
      *(v322 + 16) = 8;
      v323 = swift_allocObject();
      *(v323 + 16) = sub_267E19664;
      *(v323 + 24) = v318;
      v324 = swift_allocObject();
      *(v324 + 16) = sub_267E19660;
      *(v324 + 24) = v323;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
      v325 = swift_allocObject();
      sub_267EF0E68(v325, 3);
      *v326 = sub_267CD9CCC;
      v326[1] = v321;
      v326[2] = sub_267CD9CCC;
      v326[3] = v322;
      v326[4] = sub_267E19658;
      v326[5] = v324;

      v680 = v319;
      v327 = os_log_type_enabled(v319, v320);
      v619 = v287;
      if (v327)
      {
        v328 = swift_slowAlloc();
        LODWORD(v677) = v320;
        v329 = v287;
        v330 = v328;
        v331 = swift_slowAlloc();
        *v330 = 258;
        *(v330 + 2) = 64;

        *(v330 + 3) = 8;

        v332 = v678;
        *(v330 + 4) = v678;
        *v331 = v329;
        v333 = v332;

        sub_267C77344(v329);
        v334 = v680;
        _os_log_impl(&dword_267B93000, v680, v677, "#SendMessageNLv4IntentConverter setting speakableGroupName=%@", v330, 0xCu);
        sub_267B9F98C(v331, &unk_280229E30, &unk_267EFC270);
        MEMORY[0x26D60A7B0](v331, -1, -1);
        MEMORY[0x26D60A7B0](v330, -1, -1);
      }

      else
      {

        sub_267C77344(v287);
      }

      v343 = v649;

      v623 = 0;
      v618 = 0;
      v698 = MEMORY[0x277D84F90];
      v293 = v673;
      v342 = v651;
      goto LABEL_224;
    }

    sub_267C77344(v287);
  }

  v288 = v697;
  v289 = v73;
  sub_267E0F5C4();
  v291 = v290;
  v292 = v696;
  sub_267E0F5C4();
  v293 = v289;
  sub_267E1062C(v291, v294, sub_267C9B718);

  v295 = sub_267E61574(v291);
  v648 = v292;
  if (v295)
  {

LABEL_219:
    v623 = 0;
    v618 = 0;
    v619 = 0;
    v342 = v651;
    v343 = v649;
    goto LABEL_225;
  }

  v680 = v288;
  v673 = v289;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v296 = sub_267EF8A08();
  __swift_project_value_buffer(v296, qword_280240FB0);
  v297 = swift_allocObject();
  v297[2].isa = v291;
  v298 = swift_allocObject();
  *(v298 + 16) = sub_267CD9BA4;
  *(v298 + 24) = v297;
  swift_bridgeObjectRetain_n();
  v678 = v297;

  v299 = sub_267EF89F8();
  v300 = sub_267EF95D8();
  v301 = swift_allocObject();
  *(v301 + 16) = 32;
  v302 = swift_allocObject();
  *(v302 + 16) = 8;
  v303 = swift_allocObject();
  *(v303 + 16) = sub_267E19394;
  *(v303 + 24) = v298;
  v304 = swift_allocObject();
  *(v304 + 16) = sub_267CD9B60;
  *(v304 + 24) = v303;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
  v305 = swift_initStackObject();
  sub_267EF0E68(v305, 3);
  *v306 = sub_267CD9B58;
  v306[1] = v301;
  v306[2] = sub_267CD9CCC;
  v306[3] = v302;
  v306[4] = sub_267CD9B68;
  v306[5] = v304;

  LODWORD(v677) = v300;
  if (os_log_type_enabled(v299, v300))
  {
    v307 = swift_slowAlloc();
    v675 = v299;
    v308 = v307;
    v309 = swift_slowAlloc();
    v686 = v309;
    *v308 = 258;
    *(v308 + 2) = 32;

    *(v308 + 3) = 8;

    v310 = sub_267EF6A08();

    v312 = MEMORY[0x26D608FD0](v311, v310);
    v314 = v313;

    v315 = sub_267BA33E8(v312, v314, &v686);

    *(v308 + 4) = v315;

    v316 = v675;
    _os_log_impl(&dword_267B93000, v675, v677, "#SendMessageNLv4IntentConverter calling CRR for recipients: %s", v308, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v309);
    MEMORY[0x26D60A7B0](v309, -1, -1);
    MEMORY[0x26D60A7B0](v308, -1, -1);
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_0(v623, v623[3]);
  v335 = v676;
  v336 = v673;
  v337 = sub_267EF6878();
  v338 = v640;
  v74 = v679;
  if (!v336)
  {
    v339 = v337;

    v340 = sub_267E0FAD0(v339);
    sub_267E10344(v340, &v698, &v690, &v691);
    v341 = sub_267E0F498(v340);
    v293 = 0;

    sub_267C9BB60(v341);
    goto LABEL_219;
  }

  (*(v642 + 8))(v335, v643);
  (*(v650 + 8))(v647, v651);

  (*(v637 + 8))(v338, v638);
LABEL_188:
}

uint64_t sub_267E17E10@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A898, &qword_267F01FA8);
  v7 = sub_267EF7068();
  v10 = v6;
  v7(&v9, &v10);

  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = v9;
  }

  return result;
}

uint64_t sub_267E17EC0(uint64_t a1, void *a2, _BYTE *a3, uint64_t *a4)
{
  v62 = a4;
  v63 = a3;
  v5 = sub_267EF6868();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v53 - v8;
  v9 = sub_267EF6A78();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  sub_267EF6858();
  MEMORY[0x26D608F90]();
  sub_267BDECD0();
  sub_267EF9368();
  v16 = sub_267EF6858();
  v17 = sub_267EF6828();
  sub_267DEB128(v17);

  if ((*v63 & 1) == 0)
  {
    sub_267EF6838();
    v18 = *(v10 + 104);
    v18(v13, *MEMORY[0x277D560A8], v9);
    v19 = sub_267C28FC8(v15, v13);
    v20 = *(v10 + 8);
    v20(v13, v9);
    v20(v15, v9);
    if (v19 & 1) != 0 || (sub_267EF6838(), v18(v13, *MEMORY[0x277D560B0], v9), v21 = sub_267C28FC8(v15, v13), v20(v13, v9), v20(v15, v9), (v21))
    {
      v57 = a1;
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v22 = sub_267EF8A08();
      __swift_project_value_buffer(v22, qword_280240FB0);
      v23 = v60;
      v24 = v61;
      v25 = *(v60 + 16);
      v26 = v57;
      v27 = v58;
      v25(v58, v57, v61);
      v28 = v59;
      v25(v59, v26, v24);
      v29 = sub_267EF89F8();
      v30 = sub_267EF95D8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v64 = v56;
        *v31 = 136315394;
        v55 = v30;
        v32 = sub_267EF6858();
        v54 = v29;
        v33 = v32;
        v34 = [v32 displayName];

        v35 = sub_267EF9028();
        v36 = v28;
        v38 = v37;

        v39 = *(v23 + 8);
        v39(v27, v24);
        v40 = sub_267BA33E8(v35, v38, &v64);

        *(v31 + 4) = v40;
        *(v31 + 12) = 2080;
        v41 = sub_267EF6858();
        v42 = sub_267BBDEAC();
        v44 = v43;

        v39(v36, v24);
        v45 = sub_267BA33E8(v42, v44, &v64);

        *(v31 + 14) = v45;
        v46 = v54;
        _os_log_impl(&dword_267B93000, v54, v55, "#SendMessageNLv4IntentConverter found at least one CRR recipient from 'random' force prompt - name:%s identifier:%s", v31, 0x16u);
        v47 = v56;
        swift_arrayDestroy();
        MEMORY[0x26D60A7B0](v47, -1, -1);
        MEMORY[0x26D60A7B0](v31, -1, -1);
      }

      else
      {

        v48 = *(v23 + 8);
        v48(v28, v24);
        v48(v27, v24);
      }

      *v63 = 1;
    }
  }

  result = sub_267EF6848();
  if (result)
  {
    v50 = result;
    v51 = v62;
    v52 = *v62;

    *v51 = sub_267E0FE08(v50, v52);
  }

  return result;
}

uint64_t sub_267E18470(uint64_t a1)
{
  result = sub_267D2904C(a1);
  if (!v2)
  {
    return 7104878;
  }

  return result;
}

uint64_t sub_267E184AC(uint64_t a1)
{
  if (!sub_267D29108(a1))
  {
    return 7104878;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
  v1 = sub_267EF8F18();

  return v1;
}

uint64_t sub_267E18538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_267EF2D28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_267E185A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_22();
  a19 = v21;
  a20 = v22;
  v94 = v23;
  v91 = v24;
  v26 = v25;
  v28 = v27;
  v29 = sub_267EF57C8();
  OUTLINED_FUNCTION_23();
  v31 = v30;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v79 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v79 - v39;
  if (!*v26 || (v41 = sub_267EF5BA8(), (v87 = v42) == 0))
  {
    v45 = 0;
    goto LABEL_59;
  }

  v43 = v41;
  v84 = v35;
  v88 = [objc_allocWithZone(MEMORY[0x277CD4338]) init];
  if (v88)
  {
    sub_267E192D4(v43, v87, v88);
  }

  v86 = v40;
  v85 = INIntentSlotValueTransformFromDataString();
  v83 = 0xD000000000000013;
  v80 = 0x8000000267F10280;
  if (!v94)
  {
    goto LABEL_13;
  }

  if (v91 == 0xD000000000000013 && 0x8000000267F10280 == v94)
  {
    v94 = 0xE800000000000000;
    v91 = 0x736567617373654DLL;
    goto LABEL_15;
  }

  if (sub_267EF9EA8())
  {
    v94 = 0xE800000000000000;
    v91 = 0x736567617373654DLL;
  }

  else
  {
LABEL_13:
  }

LABEL_15:
  v46 = sub_267EF5A38();
  if (!v46)
  {

LABEL_39:
    v45 = v85;
    goto LABEL_59;
  }

  v47 = v46;
  v81 = v28;
  v82 = v20;
  v48 = 0;
  v49 = *(v46 + 16);
  v90 = 0x8000000267F1B270;
  v50 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v50 = v91 & 0xFFFFFFFFFFFFLL;
  }

  v89 = v50;
  v92 = v31 + 16;
  v93 = (v31 + 8);
  while (1)
  {
    if (v49 == v48)
    {

      v28 = v81;
      goto LABEL_39;
    }

    if (v48 >= *(v47 + 16))
    {
      __break(1u);
      goto LABEL_61;
    }

    v35 = *(v31 + 16);
    v51 = v29;
    (v35)(v38, v47 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v48, v29);
    v52 = sub_267EF57B8();
    if (v53)
    {
      if (v52 == 0xD000000000000014 && v53 == v90)
      {
      }

      else
      {
        v55 = sub_267EF9EA8();

        if ((v55 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v56 = v94;
      if (!v94)
      {
        goto LABEL_44;
      }

      if (!v89)
      {
        break;
      }

      if (sub_267EF5768() == v91 && v56 == v57)
      {

        goto LABEL_45;
      }

      v59 = sub_267EF9EA8();

      if (v59)
      {
        break;
      }
    }

LABEL_36:
    v29 = v51;
    (*v93)(v38, v51);
    ++v48;
  }

LABEL_44:

LABEL_45:

  v49 = v86;
  v29 = v51;
  (*(v31 + 32))(v86, v38, v51);
  if (qword_280228818 == -1)
  {
    goto LABEL_46;
  }

LABEL_61:
  swift_once();
LABEL_46:
  v60 = sub_267EF8A08();
  __swift_project_value_buffer(v60, qword_280240FB0);
  (v35)(v84, v49, v29);
  v61 = sub_267EF89F8();
  v62 = sub_267EF95D8();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    a10 = v64;
    *v63 = 136315138;
    v65 = sub_267EF57A8();
    v67 = v66;
    v68 = OUTLINED_FUNCTION_6_44();
    (v35)(v68);
    v69 = sub_267BA33E8(v65, v67, &a10);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_267B93000, v61, v62, "#SendMessageNLv4IntentConverter adding vocabularyIdentifier: %s to INSpeakableString", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x26D60A7B0](v64, -1, -1);
    MEMORY[0x26D60A7B0](v63, -1, -1);
  }

  else
  {

    v70 = OUTLINED_FUNCTION_6_44();
    (v35)(v70);
  }

  v28 = v81;
  v45 = v85;
  if (v85)
  {
    v71 = v85;
    sub_267EF57A8();
    v72 = sub_267EF8FF8();

    v73 = sub_267EF8FF8();
    [v71 setValue:v72 forKey:v73];

    v74 = v71;
    if (sub_267EF5768() == 0x736567617373654DLL && v75 == 0xE800000000000000)
    {

      v78 = v80;
    }

    else
    {
      v77 = sub_267EF9EA8();

      v78 = v80;
      if ((v77 & 1) == 0)
      {
        v83 = sub_267EF5768();
      }
    }

    sub_267E1076C(v83, v78);

    (v35)(v86, v29);
  }

  else
  {
    (v35)(v86, v29);
  }

LABEL_59:
  *v28 = v45;
  OUTLINED_FUNCTION_10_4();
}

void sub_267E18C68()
{
  OUTLINED_FUNCTION_11_22();
  v1 = v0;
  v2 = sub_267EF57C8();
  OUTLINED_FUNCTION_23();
  v12 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v7 = v6 - v5;
  v8 = *v1;
  sub_267EF6058();
  swift_allocObject();
  v9 = sub_267EF6048();
  if (v8)
  {
    v10 = [v8 spokenPhrase];
    sub_267EF9028();

    sub_267EF6038();

    sub_267EB91D8(v8);
    if (v11)
    {
      if (sub_267EF6028())
      {
        sub_267EF5798();
        sub_267EF5668();

        (*(v12 + 8))(v7, v2);
      }

      else
      {
      }
    }
  }

  MEMORY[0x26D6059D0](v9);
  sub_267EF5BC8();
  sub_267EF5E08();

  OUTLINED_FUNCTION_10_4();
}

uint64_t sub_267E18E8C(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t (*a3)(void))
{
  a1(&v8);
  v4 = v8;
  v5 = a3(0);
  v6 = MEMORY[0x26D608FD0](v4, v5);

  return v6;
}

uint64_t sub_267E18F00(void (*a1)(uint64_t))
{
  v2 = sub_267EF2D28();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  sub_267E195CC(&qword_28022C618, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v7 = sub_267EF9E58();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_267E19028(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v66 = a5;
  v7 = a1;
  sub_267EDB728();
  v8 = v59;
  v9 = v61;
  v10 = v62;
  v48 = v63;
  v49 = v58;
  v50 = v64;
  v43 = v60;
  v11 = (v60 + 64) >> 6;
  v45 = v7;

  v44 = a3;

  v47 = v59;
  if (v62)
  {
    while (1)
    {
      HIDWORD(v51) = a4;
      v12 = v9;
LABEL_8:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v49 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v49 + 56) + 8 * v14);
      v55 = *v15;
      v56 = v16;
      v57 = v17;

      v48(&v52, &v55);

      v18 = v52;
      v19 = v53;
      v20 = v54;
      v21 = *v66;
      v29 = sub_267BA9948();
      v30 = v21[2];
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (v21[3] >= v32)
      {
        if ((v51 & 0x100000000) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A978, &unk_267F0AC90);
          sub_267EF9C78();
        }
      }

      else
      {
        sub_267CFA760(v32, BYTE4(v51) & 1, v23, v24, v25, v26, v27, v28, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
        v34 = sub_267BA9948();
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_24;
        }

        v29 = v34;
      }

      v10 &= v10 - 1;
      v36 = *v66;
      if (v33)
      {

        *(v36[7] + 8 * v29) = v20;
      }

      else
      {
        v36[(v29 >> 6) + 8] |= 1 << v29;
        v37 = (v36[6] + 16 * v29);
        *v37 = v18;
        v37[1] = v19;
        *(v36[7] + 8 * v29) = v20;
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_23;
        }

        v36[2] = v40;
      }

      a4 = 1;
      v9 = v12;
      v8 = v47;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_267C095D8(v49);
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        HIDWORD(v51) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

void sub_267E192D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setLocalizedValue_];
}

uint64_t sub_267E193D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_267EF2D28() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_267E18538(v4, a1);
}

id sub_267E19480(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_84Tm(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_22();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v1 + v4);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_267E195CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267E19614@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267EDB734(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

void sub_267E196CC(char *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = sub_267EF89F8();
  v6 = sub_267EF95C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    v9 = sub_267EF3438();
    v11 = sub_267BA33E8(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_267B93000, v5, v6, "#SendMessageUnlockCheckFlow pushing unlock flow completed with %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D60A7B0](v8, -1, -1);
    MEMORY[0x26D60A7B0](v7, -1, -1);
  }

  *(a2 + 56) = v3;
}

unsigned __int8 *getEnumTagSinglePayload for SendMessageUnlockCheckFlow.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SendMessageUnlockCheckFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_267E199F0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = sub_267EF93F8();
  OUTLINED_FUNCTION_79_5(v8, v10, v11, v9);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = &unk_267F0B0E0;
  v12[7] = v2;

  sub_267E8FA18();
}

uint64_t sub_267E19AF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267BC5358();
}

uint64_t sub_267E19B90()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[279] = v0;

  OUTLINED_FUNCTION_111_6();
  v7 = OUTLINED_FUNCTION_108();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_0(v3 + 159);
  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 169);
    __swift_destroy_boxed_opaque_existential_0(v3 + 164);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E19CE0()
{
  v1 = *(v0 + 2216);
  v2 = *(v0 + 2032);
  v3 = *(v2 + 112);
  sub_267B9B050(v2 + 16, v0 + 1472);
  v4 = type metadata accessor for SiriKitFlowFactoryImpl();
  v5 = OUTLINED_FUNCTION_49(v4);
  *(v0 + 1536) = v4;
  *(v0 + 1544) = &off_2878CFE90;
  *(v0 + 1512) = v5;
  v6 = qword_2802286F0;
  v7 = v1;
  v59 = v3;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  v56 = *(v0 + 2216);
  type metadata accessor for SendMessageCATs(0);
  sub_267EF7B68();
  v58 = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v57 = sub_267BB4A3C();
  v8 = type metadata accessor for ShareSheetProvider();
  v9 = OUTLINED_FUNCTION_49(v8);
  *(v0 + 1576) = v8;
  *(v0 + 1584) = &off_2878D0D48;
  *(v0 + 1552) = v9;
  v10 = *(v0 + 1536);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1512, v10);
  OUTLINED_FUNCTION_23();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_2();
  (*(v13 + 16))(v14, v11, v10);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1552, v8);
  OUTLINED_FUNCTION_23();
  v17 = v16;
  v18 = OUTLINED_FUNCTION_2();
  (*(v17 + 16))(v18, v15, v8);
  v19 = *v14;
  v20 = *v18;
  *(v0 + 1616) = v4;
  *(v0 + 1624) = &off_2878CFE90;
  *(v0 + 1592) = v19;
  *(v0 + 1656) = v8;
  *(v0 + 1664) = &off_2878D0D48;
  *(v0 + 1632) = v20;
  *(v0 + 1696) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 1704) = off_2878D1228;
  type metadata accessor for SendMessageFlow(0);
  OUTLINED_FUNCTION_27_4();
  v21 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 1592, v4);
  OUTLINED_FUNCTION_23();
  v22 = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_74();
  v23();
  v24 = *(v0 + 1656);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1632, v24);
  OUTLINED_FUNCTION_23();
  v27 = v26;
  v28 = OUTLINED_FUNCTION_2();
  (*(v27 + 16))(v28, v25, v24);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 1672, *(v0 + 1696));
  v29 = *v22;
  v30 = *v28;
  *(v0 + 416) = v4;
  *(v0 + 424) = &off_2878CFE90;
  *(v0 + 392) = v29;
  *(v0 + 1416) = v8;
  *(v0 + 1424) = &off_2878D0D48;
  *(v0 + 1392) = v30;
  *(v0 + 936) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 944) = off_2878D1228;
  sub_267BCE788(v56);
  if (![v56 outgoingMessageType])
  {
    v31 = sub_267EF89F8();
    v32 = sub_267EF95D8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v33);
      _os_log_impl(&dword_267B93000, v31, v32, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text", off_2878D1228, 2u);
      OUTLINED_FUNCTION_26();
    }

    *(v0 + 1776) = MEMORY[0x277D83B88];
    *(v0 + 1752) = 1;
    sub_267ECE290();
    sub_267B9FED8(v0 + 1752, &qword_28022AEF0, &qword_267EFCDE0);
  }

  if (*(*(v0 + 2184) + 16) != 5)
  {
    v34 = sub_267EF89F8();
    v35 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v35))
    {
      v36 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v36);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v37, v38, "#SendMessageFlow non-shim intent request, marking as app selected by user");
      OUTLINED_FUNCTION_26();
    }

    v39 = *(v0 + 2184);

    *(v39 + 96) = 1;
  }

  v40 = *(v0 + 2216);
  v41 = *(v0 + 1504);
  __swift_project_boxed_opaque_existential_0((v0 + 1472), *(v0 + 1496));
  v42 = *(v41 + 24);
  v43 = v40;
  v44 = OUTLINED_FUNCTION_26_0();
  v42(v44);
  __swift_project_boxed_opaque_existential_0((v0 + 352), *(v0 + 376));
  OUTLINED_FUNCTION_26_0();
  sub_267EF45B8();
  __swift_project_boxed_opaque_existential_0((v0 + 1432), *(v0 + 1456));
  OUTLINED_FUNCTION_26_0();
  sub_267EF42B8();
  if (v45)
  {
    v46 = sub_267EF8FF8();
  }

  else
  {
    v46 = 0;
  }

  v47 = *(v0 + 2216);
  v48 = *(v0 + 2184);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1432));
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  [v47 _setOriginatingDeviceIdsIdentifier_];

  v49 = v21 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  *v49 = v59;
  *(v49 + 8) = v47;
  *(v49 + 16) = v48;
  *(v49 + 40) = 1;
  type metadata accessor for SendMessageFlow.State(0);
  swift_storeEnumTagMultiPayload();
  sub_267B9A5E8((v0 + 392), v21 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
  *(v21 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v58;
  *(v21 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v57;
  sub_267B9A5E8((v0 + 912), v21 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
  sub_267B9A5E8((v0 + 1392), v21 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
  sub_267B9A5E8((v0 + 1472), v21 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1672));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1632));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1592));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1552));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1512));

  *(v0 + 1984) = v21;
  OUTLINED_FUNCTION_40_18();
  sub_267BC41E0(v50, v51, &unk_267F0A980);
  sub_267EF3FF8();

  v52 = OUTLINED_FUNCTION_66();
  v53(v52);
  sub_267B9FED8(v0 + 1712, &unk_28022BBF0, &unk_267F01C60);

  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  OUTLINED_FUNCTION_1_69();

  OUTLINED_FUNCTION_17();

  return v54();
}

uint64_t sub_267E1A440()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E1A524()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E1A608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  sub_267B9FED8(v12 + 1232, &qword_280229938, &unk_267EFEB90);
  OUTLINED_FUNCTION_1_69();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_267E1A6CC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E1A7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_1_69();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_267E1A85C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E1A940()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E1AA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_53();
  a18 = v20;
  v23 = v20[279];
  __swift_destroy_boxed_opaque_existential_0(v20 + 169);
  __swift_destroy_boxed_opaque_existential_0(v20 + 164);
  v24 = v23;
  v25 = sub_267EF89F8();
  v26 = sub_267EF95E8();

  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_69_11();
    *v23 = 136315138;
    swift_getErrorValue();
    v27 = sub_267EF9F68();
    v29 = sub_267BA33E8(v27, v28, &a9);

    *(v23 + 1) = v29;
    OUTLINED_FUNCTION_17_3(&dword_267B93000, v30, v31, "#Gatekeeper Failed to populate audio message data: %s");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v32 = v20[279];
  v33 = v20[277];
  v34 = v20[267];
  v35 = v20[266];
  v36 = v20[265];
  sub_267EF3FB8();

  (*(v35 + 8))(v34, v36);
  sub_267B9FED8((v20 + 214), &unk_28022BBF0, &unk_267F01C60);
  __swift_destroy_boxed_opaque_existential_0(v20 + 54);
  OUTLINED_FUNCTION_1_69();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_267E1ABF8()
{
  OUTLINED_FUNCTION_62();
  if ([*(v0 + 432) code] != 3 || (v1 = sub_267C86CD0(*(v0 + 432))) == 0)
  {
    v13 = *(v0 + 432);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();

    v16 = os_log_type_enabled(v14, v15);
    v3 = *(v0 + 432);
    if (!v16)
    {
      v2 = 0;
      goto LABEL_10;
    }

    v17 = OUTLINED_FUNCTION_48();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v3;
    *v18 = v3;
    v6 = v3;
    _os_log_impl(&dword_267B93000, v14, v15, "Gatekeeper# new message search failed: %@", v17, 0xCu);
    sub_267B9FED8(v18, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    v2 = 0;
    v3 = v14;
    goto LABEL_7;
  }

  v2 = sub_267BAF0DC(v1);

  v3 = sub_267EF89F8();
  v4 = sub_267EF95C8();
  v5 = OUTLINED_FUNCTION_5_2(v4);
  v6 = *(v0 + 432);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_48();
    *v7 = 134349056;
    *(v7 + 4) = v2;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
LABEL_7:
    OUTLINED_FUNCTION_29_1();
  }

  v14 = v6;
LABEL_10:

  v19 = *(v0 + 360);
  if ((*(v19 + 120) & 1) != 0 || v2 >= 1)
  {
    v21 = 2;
  }

  else
  {
    v20 = type metadata accessor for SendMessageState();
    OUTLINED_FUNCTION_89_1(v20);
    v2 = sub_267BC963C(2);
    OUTLINED_FUNCTION_53_17();
    v19 = *(v0 + 360);
    v21 = 1;
  }

  v22 = *(v0 + 416);
  *(v0 + 128) = v2;
  *(v0 + 176) = v21;
  OUTLINED_FUNCTION_66_3(v19 + 56, v0 + 288);
  sub_267BE9CA0(v0 + 128, v19 + 56);
  swift_endAccess();
  OUTLINED_FUNCTION_101_8();

  OUTLINED_FUNCTION_17();

  return v23();
}

uint64_t sub_267E1AE50()
{
  OUTLINED_FUNCTION_12();
  v1[29] = v2;
  v1[30] = v0;
  v1[28] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C630, &qword_267F0B0B0);
  OUTLINED_FUNCTION_18(v4);
  v1[31] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF3DE8();
  v1[32] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[33] = v6;
  v1[34] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E1AF24()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v14 = *(v4 + 168);
  sub_267B9B050(v4 + 16, v0 + 16);
  v5 = type metadata accessor for CommonTemplateProvider();
  v6 = OUTLINED_FUNCTION_49(v5);
  v7 = type metadata accessor for TCCTemplateProvider();
  v8 = OUTLINED_FUNCTION_49(v7);

  sub_267EF3DD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C638, &qword_267F0B0B8);
  v9 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v0 + 80) = v5;
  *(v0 + 88) = &off_2878D2530;
  *(v0 + 120) = v7;
  *(v0 + 128) = &off_2878D0E48;
  *(v0 + 96) = v8;
  *(v0 + 160) = v3;
  *(v0 + 168) = &off_2878D0D80;
  __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_74();
  v10();
  *(v0 + 200) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 208) = off_2878D1228;
  (*(v2 + 8))(v1, v3);
  *(v9 + 224) = 0;
  *(v9 + 56) = v14;
  sub_267B9A5E8((v0 + 56), v9 + 64);
  sub_267B9A5E8((v0 + 96), v9 + 104);
  sub_267B9A5E8((v0 + 136), v9 + 144);
  sub_267B9A5E8((v0 + 176), v9 + 184);
  sub_267B9A5E8((v0 + 16), v9 + 16);
  *(v0 + 216) = v9;
  sub_267BA9F38(0, &qword_28022C640, 0x277CD3D48);
  sub_267BC1E20(&qword_28022C648, &qword_28022C638, &qword_267F0B0B8, &unk_267F01168);
  v11 = sub_267EF35C8();
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  sub_267EF36C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C650, &qword_267F0B0C0);
  OUTLINED_FUNCTION_27_4();
  swift_allocObject();
  sub_267EF36D8();
  v11();

  sub_267EF3FD8();

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267E1B234(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_267EF44F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C658, &unk_267F0B0C8);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v14 = sub_267EF8A08();
  v15 = __swift_project_value_buffer(v14, qword_280240FB0);
  v16 = *(v9 + 16);
  v48 = a1;
  v46 = v16;
  v16(v13, a1, v8);
  v44 = v15;
  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = v3;
    v20 = v19;
    v39 = swift_slowAlloc();
    *&v49[0] = v39;
    *v20 = 136315138;
    sub_267BC1E20(&qword_28022C660, &qword_28022C658, &unk_267F0B0C8, MEMORY[0x277D5BC48]);
    v21 = sub_267EF9E58();
    v40 = v4;
    v23 = v22;
    v24 = *(v9 + 8);
    v24(v13, v8);
    v25 = sub_267BA33E8(v21, v23, v49);
    v4 = v40;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_267B93000, v17, v18, "Gatekeeper# Returned from TCC flow with %s", v20, 0xCu);
    v26 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x26D60A7B0](v26, -1, -1);
    v27 = v20;
    v3 = v41;
    MEMORY[0x26D60A7B0](v27, -1, -1);
  }

  else
  {

    v24 = *(v9 + 8);
    v24(v13, v8);
  }

  v28 = v47;
  v46(v47, v48, v8);
  if ((*(v9 + 88))(v28, v8) == *MEMORY[0x277D5BC38])
  {
    (*(v9 + 96))(v28, v8);
    v29 = v42;
    (*(v4 + 32))(v42, v28, v3);
    v30 = v43;
    (*(v4 + 104))(v43, *MEMORY[0x277D5BED8], v3);
    v31 = sub_267EF44E8();
    v32 = *(v4 + 8);
    v32(v30, v3);
    v32(v29, v3);
    if (v31)
    {
      memset(v49, 0, sizeof(v49));
      goto LABEL_13;
    }
  }

  else
  {
    v24(v28, v8);
  }

  v33 = sub_267EF89F8();
  v34 = sub_267EF95C8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_267B93000, v33, v34, "Gatekeeper# TCC was not confirmed, bye", v35, 2u);
    MEMORY[0x26D60A7B0](v35, -1, -1);
  }

  *&v49[0] = 4;
  memset(v49 + 8, 0, 40);
LABEL_13:
  v50 = 5;
  v36 = v45;
  swift_beginAccess();
  sub_267BE9CA0(v49, v36 + 56);
  return swift_endAccess();
}

uint64_t sub_267E1B770()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E1B86C()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  sub_267EF3FB8();
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E1BBA4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E1BCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v14 = v12[18];
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

uint64_t sub_267E1BE94()
{
  OUTLINED_FUNCTION_62();
  v1 = OUTLINED_FUNCTION_57_15();
  v0(v1);
  v2 = OUTLINED_FUNCTION_66();
  v0(v2);
  OUTLINED_FUNCTION_49_19();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E1BF44()
{
  OUTLINED_FUNCTION_62();
  v1 = OUTLINED_FUNCTION_57_15();
  v0(v1);
  v2 = OUTLINED_FUNCTION_66();
  v0(v2);
  OUTLINED_FUNCTION_49_19();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E1BFF4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[23] = v1;
  v2[24] = v4;
  v2[25] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 408) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E1C110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v14 = v12[24];
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

uint64_t sub_267E1C2E4()
{
  OUTLINED_FUNCTION_62();
  v1 = OUTLINED_FUNCTION_57_15();
  v0(v1);
  v2 = OUTLINED_FUNCTION_66();
  v0(v2);
  OUTLINED_FUNCTION_49_19();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E1C394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 320);

  v12 = OUTLINED_FUNCTION_44_0();
  v13(v12);
  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_26_0();
  v14(v15);
  v16 = OUTLINED_FUNCTION_108();
  v14(v16);
  OUTLINED_FUNCTION_49_19();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_267E1C46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_267EF8228();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_267EF8168();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E1C5D4, 0, 0);
}

uint64_t sub_267E1C5D4()
{
  v0[7] = v0[10];
  v1 = v0[19];
  sub_267EF9E58();
  sub_267EF8158();
  OUTLINED_FUNCTION_112_7();
  if (v1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
  }

  else
  {
    v2 = v0[21];
    v3 = v0[16];
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[11];
    v7 = v0[9];
    (*(v0[18] + 8))(v0[19], v0[17]);
    sub_267EF79B8();
    OUTLINED_FUNCTION_9();
    v37 = v8;
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
    v36 = type metadata accessor for GatekeeperReadSendCallParameters(0);
    sub_267BD3DDC(v2, v7 + v36[7]);
    (*(v4 + 104))(v3, *MEMORY[0x277D5D448], v5);
    v13 = v6[5];
    v12 = v6[6];
    __swift_project_boxed_opaque_existential_0(v6 + 2, v13);
    OUTLINED_FUNCTION_14_4();
    v14(v13, v12);
    v15 = sub_267BEA714(v3, v0 + 2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v16 = OUTLINED_FUNCTION_61_4();
    v17(v16);
    v0[8] = v15;
    sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    sub_267EF8348();
    v20 = v0[20];
    v21 = v0[12];
    v35 = v0[13];
    v22 = v0[9];

    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v37);
    sub_267BD3DDC(v20, v22 + v36[8]);
    v26 = v36[5];
    sub_267B9FED8(v22 + v26, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_5_0();
    v28 = *(v27 + 16);
    v28(v22 + v26, v21, v37);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v37);
    sub_267B9FED8(v22, &unk_28022AE30, &qword_267EFC0B0);
    v28(v22, v35, v37);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v37);
  }

  OUTLINED_FUNCTION_17();

  return v18();
}

uint64_t sub_267E1C908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_267EF8228();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_267EF8168();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E1CA6C, 0, 0);
}

void sub_267E1CA6C()
{
  v0[7] = v0[10];
  v1 = v0[18];
  sub_267EF9E58();
  sub_267EF8158();
  OUTLINED_FUNCTION_112_7();
  if (v1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
  }

  else
  {
    v2 = v0[20];
    v3 = v0[15];
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[11];
    v7 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    sub_267EF79B8();
    OUTLINED_FUNCTION_9();
    v32 = v8;
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
    Parameters = type metadata accessor for GatekeeperSendReadParameters(0);
    sub_267BD3DDC(v2, v7 + Parameters[7]);
    (*(v4 + 104))(v3, *MEMORY[0x277D5D448], v5);
    v13 = v6[5];
    v12 = v6[6];
    __swift_project_boxed_opaque_existential_0(v6 + 2, v13);
    OUTLINED_FUNCTION_14_4();
    v14(v13, v12);
    v15 = sub_267BEA714(v3, v0 + 2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v16 = OUTLINED_FUNCTION_61_4();
    v17(v16);
    v0[8] = v15;
    sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    sub_267EF8348();
    v20 = v0[19];
    v21 = v0[12];
    v22 = v0[9];

    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v32);
    sub_267BD3DDC(v20, v22 + Parameters[8]);
    v26 = Parameters[5];
    sub_267B9FED8(v22 + v26, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_5_0();
    (*(v27 + 16))(v22 + v26, v21, v32);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v32);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E1CD48()
{
  OUTLINED_FUNCTION_12();
  v1[102] = v0;
  v1[101] = v2;
  v1[100] = v3;
  v1[99] = v4;
  v5 = sub_267EF8428();
  v1[103] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[104] = v6;
  v1[105] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF4BE8();
  v1[106] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[107] = v8;
  v1[108] = OUTLINED_FUNCTION_50();
  v1[109] = swift_task_alloc();
  v9 = sub_267EF6718();
  v1[110] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[111] = v10;
  v1[112] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E1CE9C()
{
  v67 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF0, &qword_267F01650);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  *(inited + 32) = 0x6449707061;
  *(inited + 40) = 0xE500000000000000;
  result = sub_267EF7C18();
  if (!v3)
  {
    __break(1u);
    goto LABEL_41;
  }

  v4 = *(v0 + 808);
  v5 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = result;
  *(inited + 56) = v3;
  OUTLINED_FUNCTION_61_0();
  v6 = sub_267EF8F28();
  v7 = MEMORY[0x277CC9318];
  if (v4)
  {
    v8 = *(v0 + 808);
    v9 = [v8 typeName];
    v10 = sub_267EF9028();
    v12 = v11;

    *(v0 + 592) = v5;
    *(v0 + 568) = v10;
    *(v0 + 576) = v12;
    sub_267BA7F4C((v0 + 568), (v0 + 600));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_110_8();
    sub_267E8710C((v0 + 600), 0x7954746E65746E69, 0xEE00656D614E6570);
    v6 = v66;
    v13 = sub_267DEC238([v8 backingStore]);
    if (v14 >> 60 == 15)
    {
      v15 = sub_267BA9948();
      if (v16)
      {
        v17 = v15;
        swift_isUniquelyReferenced_nonNull_native();
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB98, &qword_267F09470);
        OUTLINED_FUNCTION_113_7(v18);

        sub_267BA7F4C((v66[7] + 32 * v17), (v0 + 664));
        sub_267EF9C88();
      }

      else
      {
        *(v0 + 664) = 0u;
        *(v0 + 680) = 0u;
      }

      sub_267B9FED8(v0 + 664, &qword_28022AEF0, &qword_267EFCDE0);
    }

    else
    {
      *(v0 + 656) = v7;
      *(v0 + 632) = v13;
      *(v0 + 640) = v14;
      sub_267BA7F4C((v0 + 632), (v0 + 696));
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_110_8();
      sub_267E8710C((v0 + 696), 0x6144746E65746E69, 0xEA00000000006174);

      v6 = v66;
    }
  }

  sub_267BF6CEC(*(v0 + 800), v0 + 208, &qword_280229938, &unk_267EFEB90);
  if (*(v0 + 232))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C628, &qword_267F0B070);
    type metadata accessor for PhoneCallNLv3Intent(0);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 888) + 16))(*(v0 + 896), *(v0 + 784) + OBJC_IVAR____TtC16SiriMessagesFlow19PhoneCallNLv3Intent_intent, *(v0 + 880));
      v19 = sub_267EF66F8();
      v21 = v20;
      v22 = OUTLINED_FUNCTION_108();
      v23(v22);
      *(v0 + 528) = v7;
      *(v0 + 504) = v19;
      *(v0 + 512) = v21;
      sub_267BA7F4C((v0 + 504), (v0 + 536));
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_110_8();
      sub_267E8710C((v0 + 536), 0x746E65746E496C6ELL, 0xE800000000000000);
LABEL_17:

      goto LABEL_28;
    }
  }

  else
  {
    sub_267B9FED8(v0 + 208, &qword_280229938, &unk_267EFEB90);
  }

  sub_267BF6CEC(*(v0 + 800), v0 + 248, &qword_280229938, &unk_267EFEB90);
  if (!*(v0 + 272))
  {
    sub_267B9FED8(v0 + 248, &qword_280229938, &unk_267EFEB90);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C628, &qword_267F0B070);
  type metadata accessor for PhoneCallNLv4Intent();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v25 = *(v0 + 800);
    v26 = sub_267EF8A08();
    __swift_project_value_buffer(v26, qword_280240FB0);
    sub_267BF6CEC(v25, v0 + 288, &qword_280229938, &unk_267EFEB90);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v28))
    {
      v29 = OUTLINED_FUNCTION_48();
      v66 = OUTLINED_FUNCTION_52();
      *v29 = 136315138;
      sub_267BF6CEC(v0 + 288, v0 + 368, &qword_280229938, &unk_267EFEB90);
      v30 = OUTLINED_FUNCTION_68_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
      v32 = sub_267EF9098();
      v34 = v33;
      sub_267B9FED8(v0 + 288, &qword_280229938, &unk_267EFEB90);
      v35 = sub_267BA33E8(v32, v34, &v66);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_267B93000, v27, v28, "#Gatekeeper Not supported NL intent: %s", v29, 0xCu);
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      sub_267B9FED8(v0 + 288, &qword_280229938, &unk_267EFEB90);
    }

    goto LABEL_28;
  }

  v24 = *(*(v0 + 776) + 16);
  if (v24)
  {
    *(v0 + 432) = swift_getObjectType();
    *(v0 + 408) = v24;
    sub_267BA7F4C((v0 + 408), (v0 + 472));
    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_110_8();
    sub_267E8710C((v0 + 472), 0x6C61694472657375, 0xED0000746341676FLL);
    goto LABEL_17;
  }

  *(v0 + 408) = 0u;
  *(v0 + 424) = 0u;
  sub_267B9FED8(v0 + 408, &qword_28022AEF0, &qword_267EFCDE0);
  v36 = sub_267BA9948();
  if (v37)
  {
    v38 = v36;
    swift_isUniquelyReferenced_nonNull_native();
    v66 = v6;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB98, &qword_267F09470);
    OUTLINED_FUNCTION_113_7(v39);

    sub_267BA7F4C((*(v6 + 56) + 32 * v38), (v0 + 440));
    sub_267EF9C88();
  }

  else
  {
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
  }

  sub_267B9FED8(v0 + 440, &qword_28022AEF0, &qword_267EFCDE0);

LABEL_28:
  (*(*(v0 + 832) + 104))(*(v0 + 840), *MEMORY[0x277D5D710], *(v0 + 824));
  sub_267EF8418();
  v40 = OUTLINED_FUNCTION_65_5();
  v41(v40);

  sub_267EF4BB8();
  if (!sub_267EF3808())
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v46 = sub_267EF8A08();
    v47 = __swift_project_value_buffer(v46, qword_280240FB0);
    v48 = OUTLINED_FUNCTION_61_0();
    v49(v48);
    v50 = sub_267EF89F8();
    v51 = sub_267EF95E8();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 856);
    if (v52)
    {
      OUTLINED_FUNCTION_48();
      v54 = OUTLINED_FUNCTION_55_0();
      v66 = v54;
      *v47 = 136315138;
      v65 = sub_267EF4BC8();
      v56 = v55;
      v45 = *(v53 + 8);
      v57 = OUTLINED_FUNCTION_100_0();
      v45(v57);
      v58 = sub_267BA33E8(v65, v56, &v66);

      *(v47 + 4) = v58;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v59, v60, "Gatekeeper# Phone flow not found for direct invocation %s");
      __swift_destroy_boxed_opaque_existential_0(v54);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v45 = *(v53 + 8);
      v61 = OUTLINED_FUNCTION_100_0();
      v45(v61);
    }

    v62 = *(v0 + 816);
    *(v0 + 96) = 3;
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0;
    *(v0 + 144) = 5;
    OUTLINED_FUNCTION_66_3(v62 + 56, v0 + 728);
    sub_267BE9CA0(v0 + 96, v62 + 56);
    swift_endAccess();
    OUTLINED_FUNCTION_101_8();
    goto LABEL_37;
  }

  sub_267B9B050(*(v0 + 816) + 352, v0 + 328);
  __swift_project_boxed_opaque_existential_0((v0 + 328), *(v0 + 352));
  sub_267BA9F38(0, &qword_28022C620, 0x277CD41A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (!v43)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v64 = *(v0 + 856);
  v44 = *(v0 + 816);

  sub_267EF3B18();

  LOBYTE(v66) = 0;
  sub_267EF3B08();
  OUTLINED_FUNCTION_74();
  sub_267EF3848();

  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  *(v0 + 152) = 4;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0;
  *(v0 + 200) = 5;
  OUTLINED_FUNCTION_66_3(v44 + 56, v0 + 752);
  sub_267BE9CA0(v0 + 152, v44 + 56);
  swift_endAccess();
  sub_267EF4008();

  v45 = *(v64 + 8);
LABEL_37:
  (v45)(*(v0 + 872), *(v0 + 848));

  OUTLINED_FUNCTION_17();

  return v63();
}

uint64_t sub_267E1D96C()
{
  OUTLINED_FUNCTION_12();
  v1[28] = v2;
  v1[29] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v1[30] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF4CC8();
  v1[31] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[32] = v5;
  v1[33] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4228();
  v1[34] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[35] = v7;
  v8 = OUTLINED_FUNCTION_2();
  v1[36] = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[37] = v9;
  *v9 = v10;
  v9[1] = sub_267E1DAC8;

  return MEMORY[0x2821BB3B0](v8);
}

uint64_t sub_267E1DAC8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E1DBC4()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  OUTLINED_FUNCTION_1_8();
  v5 = OUTLINED_FUNCTION_4_1();
  v6(v5);
  OUTLINED_FUNCTION_1_8();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  v9 = v0[10];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v9);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  sub_267EF4158();
  v10 = OUTLINED_FUNCTION_94_9();
  OUTLINED_FUNCTION_79_5(v10, v11, v12, v13);
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_62_10();
  sub_267EF3F48();
  sub_267B9FED8(v9, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  OUTLINED_FUNCTION_117_8();
  v14 = OUTLINED_FUNCTION_10_3();
  v15(v14);
  OUTLINED_FUNCTION_74_10(v0 + 17);
  v16 = MEMORY[0x277D5C1D8];
  v0[25] = v3;
  v0[26] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[39] = v18;
  *v18 = v19;
  v18[1] = sub_267E1DD78;
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821BB5D0](v20, v21, v22);
}

uint64_t sub_267E1DD78()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 176));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E1E144()
{
  OUTLINED_FUNCTION_12();
  v1[28] = v2;
  v1[29] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v1[30] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF4CC8();
  v1[31] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[32] = v5;
  v1[33] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4228();
  v1[34] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[35] = v7;
  v8 = OUTLINED_FUNCTION_2();
  v1[36] = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[37] = v9;
  *v9 = v10;
  v9[1] = sub_267E1E2A0;

  return MEMORY[0x2821BAEC8](v8);
}

uint64_t sub_267E1E2A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E1E39C()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  OUTLINED_FUNCTION_1_8();
  v5 = OUTLINED_FUNCTION_4_1();
  v6(v5);
  OUTLINED_FUNCTION_1_8();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  v9 = v0[10];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v9);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  sub_267EF4158();
  v10 = OUTLINED_FUNCTION_94_9();
  OUTLINED_FUNCTION_79_5(v10, v11, v12, v13);
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_62_10();
  sub_267EF3F98();
  sub_267B9FED8(v9, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  OUTLINED_FUNCTION_117_8();
  v14 = OUTLINED_FUNCTION_10_3();
  v15(v14);
  OUTLINED_FUNCTION_74_10(v0 + 17);
  v16 = MEMORY[0x277D5C1D8];
  v0[25] = v3;
  v0[26] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[39] = v18;
  *v18 = v19;
  v18[1] = sub_267E1E550;
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821BB5D0](v20, v21, v22);
}

uint64_t sub_267E1E550()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 176));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E1E79C()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_51_15();
  v2(v1);
  v3 = OUTLINED_FUNCTION_66();
  v4(v3);
  v5 = __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_31_22(v5);

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267E1E9BC(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267BB5E24(v2 + 56, &v26);
  if (v29 == 5)
  {
    v4 = vorrq_s8(v27, v28);
    if (!(*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *(&v26 + 1) | v26))
    {
      sub_267B9B9EC(&v26);
LABEL_17:
      v18 = 1;
      return v18 & 1;
    }
  }

  sub_267B9B9EC(&v26);
  sub_267BB5E24(v2 + 56, &v26);
  if (v29 != 2)
  {
    sub_267B9B9EC(&v26);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v9 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_36(v11))
    {
      goto LABEL_15;
    }

    v12 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v12);
    goto LABEL_14;
  }

  sub_267EBC978(a1, &v26);
  if (v27.i64[1])
  {
    sub_267B9A5E8(&v26, &v24);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v5 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v7))
    {
      v8 = OUTLINED_FUNCTION_32();
      *v8 = 0;
      _os_log_impl(&dword_267B93000, v6, v7, "Gatekeeper# User asked to call", v8, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    sub_267B9A5E8(&v24, &v26);
    v28.i64[1] = 0;
    v29 = 3;
    OUTLINED_FUNCTION_66_3(v2 + 56, &v23);
    sub_267BE9CA0(&v26, v2 + 56);
    swift_endAccess();
    goto LABEL_17;
  }

  sub_267B9FED8(&v26, &qword_280229938, &unk_267EFEB90);
  sub_267E57DFC(a1, &v24);
  if (v25)
  {
    sub_267B9A5E8(&v24, &v26);
    v18 = sub_267E1ECA8(&v26);
    __swift_destroy_boxed_opaque_existential_0(&v26);
    return v18 & 1;
  }

  sub_267B9FED8(&v24, &unk_28022BBF0, &unk_267F01C60);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v20 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
  v10 = sub_267EF89F8();
  v21 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v21))
  {
    v22 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v22);
LABEL_14:
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_26();
  }

LABEL_15:

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_267E1ECA8(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_4_39();
  if (v5(v4))
  {
    v6 = 1;
    v27 = 1;
    OUTLINED_FUNCTION_93_8();
LABEL_8:
    OUTLINED_FUNCTION_66_3(v2 + 56, v26);
    sub_267BE9CA0(&v27, v2 + 56);
    swift_endAccess();
    return v6;
  }

  OUTLINED_FUNCTION_95_11();
  v7 = OUTLINED_FUNCTION_4_39();
  if (v8(v7))
  {
    OUTLINED_FUNCTION_95_11();
    v9 = OUTLINED_FUNCTION_4_39();
    v11 = v10(v9);
    v12 = type metadata accessor for SendMessageState();
    OUTLINED_FUNCTION_89_1(v12);
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    v27 = sub_267BC963C(v13);
    sub_267B9B050(a1, v28);
    v6 = 1;
    v28[40] = 1;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_95_11();
  v15 = OUTLINED_FUNCTION_4_39();
  if (v16(v15))
  {
    v27 = 2;
    OUTLINED_FUNCTION_93_8();
    OUTLINED_FUNCTION_66_3(v1 + 56, v26);
    sub_267BE9CA0(&v27, v1 + 56);
    swift_endAccess();
    return 1;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v17 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v17, qword_280240FB0);
    v18 = sub_267EF89F8();
    v19 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_36(v19))
    {
      v20 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v20);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }
}

uint64_t sub_267E1EE84()
{
  sub_267B9B9EC(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  return OUTLINED_FUNCTION_67_11();
}

uint64_t sub_267E1EEF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarPlayClarificationFlow();

  return sub_267EF3748();
}

uint64_t sub_267E1EF28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267E1EF64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_267E1EFB4(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_267E1EFF4()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_60_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_71_5(v4);

  return sub_267E1C908(v6, v7, v1, v2);
}

uint64_t sub_267E1F090()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_60_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_71_5(v5);

  return sub_267E1C46C(v7, v8, v1, v3, v2);
}

uint64_t sub_267E1F140()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267E19AF4();
}

double sub_267E1F1E0@<D0>(_OWORD *a2@<X8>)
{
  sub_267EF5988();
  if (v4)
  {
    sub_267EF56B8();
    sub_267EF5DF8();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_267E1F24C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_267EF51F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267EF4C48();
  v8 = sub_267EF5488();
  (*(v5 + 8))(v7, v4);
  *(v2 + 16) = v8;
  sub_267CB79F8(&v31);
  if (v32)
  {
    sub_267C71FB8(&v31, v30);
    v9 = sub_267EF60E8();
    if (OUTLINED_FUNCTION_1_70(v9, v10, v11, v9))
    {

      sub_267EF5C38();
LABEL_7:

      sub_267EF4C68();
      OUTLINED_FUNCTION_0_9();
      (*(v18 + 8))(a1);
      *(v2 + 24) = v29;
      __swift_destroy_boxed_opaque_existential_0(v30);
      sub_267C0BFFC(&v31);
      return v2;
    }

    v12 = sub_267EF63D8();
    if (OUTLINED_FUNCTION_1_70(v12, v13, v14, v12) || (v15 = sub_267EF62B8(), OUTLINED_FUNCTION_1_70(v15, v16, v17, v15)))
    {

      sub_267EF6348();
      goto LABEL_7;
    }

    v19 = sub_267EF62A8();
    if (OUTLINED_FUNCTION_1_70(v19, v20, v21, v19))
    {

      sub_267EF54D8();
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v22 = sub_267EF8A08();
  __swift_project_value_buffer(v22, qword_280240FB0);
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();
  if (os_log_type_enabled(v23, v24))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_1_1(&dword_267B93000, v25, v26, "#PhoneCallNLv4Intent parse is not a phone call intent");
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF4C68();
  OUTLINED_FUNCTION_0_9();
  (*(v27 + 8))(a1);
  sub_267C0BFFC(&v31);
  swift_unknownObjectRelease();
  type metadata accessor for PhoneCallNLv4Intent();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_267E1F52C()
{
  if (*(v0 + 24) && (v1 = sub_267EF5E18()) != 0)
  {
    v2 = v1;
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  if (sub_267BAF0DC(v2) <= 1)
  {
    if (sub_267BAF0DC(v2))
    {
      sub_267BBD0EC(0, (v2 & 0xC000000000000001) == 0, v2);
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](0, v2);
      }

      else
      {
      }

      sub_267E1F1E0(&v23);
      if (v24)
      {
        sub_267EF5C28();
        if (swift_dynamicCast())
        {
          if (sub_267EAC378())
          {
            if (qword_280228818 != -1)
            {
              OUTLINED_FUNCTION_0(&qword_280228818);
            }

            v8 = sub_267EF8A08();
            __swift_project_value_buffer(v8, qword_280240FB0);
            v9 = sub_267EF89F8();
            v10 = sub_267EF95D8();
            if (os_log_type_enabled(v9, v10))
            {
              *OUTLINED_FUNCTION_32() = 0;
              OUTLINED_FUNCTION_1_1(&dword_267B93000, v11, v12, "#PhoneCallNLv4Intent a single specified recipient with a reference, a valid followup");
              OUTLINED_FUNCTION_32_0();
            }

            return 1;
          }
        }
      }

      else
      {
        sub_267C0BFFC(&v23);
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v19 = sub_267EF8A08();
      __swift_project_value_buffer(v19, qword_280240FB0);
      v20 = sub_267EF89F8();
      v21 = sub_267EF95D8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_32();
        *v22 = 0;
        _os_log_impl(&dword_267B93000, v20, v21, "#PhoneCallNLv4Intent a single specified recipient with no reference, not a valid followup", v22, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      return 0;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95D8();
    if (os_log_type_enabled(v14, v15))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v16, v17, "#PhoneCallNLv4Intent no recipients specified, a valid followup");
      OUTLINED_FUNCTION_32_0();
    }

    return 1;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v6, v7, "#PhoneCallNLv4Intent more than one recipient specified, not a valid followup");
    OUTLINED_FUNCTION_32_0();
  }

  return 0;
}

uint64_t sub_267E1F8A4()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_267E1F8CC()
{
  sub_267E1F8A4();

  return swift_deallocClassInstance();
}

uint64_t sub_267E1FB2C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1(&v187 - v6);
  v192 = sub_267EF8228();
  OUTLINED_FUNCTION_23();
  v194 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v11);
  v199 = sub_267EF4BE8();
  OUTLINED_FUNCTION_23();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v16);
  v203 = sub_267EF4C08();
  OUTLINED_FUNCTION_23();
  v205 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  v20 = MEMORY[0x28223BE20](v19);
  v201 = &v187 - v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_45_0();
  v202 = v22;
  v23 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6();
  v206 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_45_0();
  v208 = v27;
  v28 = sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_0();
  v34 = v33 - v32;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v35 = sub_267EF8A08();
  v36 = __swift_project_value_buffer(v35, qword_280240FB0);
  v37 = *(v30 + 16);
  v204 = a1;
  v37(v34, a1, v28);
  v38 = sub_267EF89F8();
  v39 = sub_267EF95C8();
  v40 = os_log_type_enabled(v38, v39);
  v198 = v13;
  if (v40)
  {
    v41 = OUTLINED_FUNCTION_48();
    v189 = OUTLINED_FUNCTION_52();
    v211[0] = v189;
    *v41 = 136315138;
    sub_267E282FC(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v42 = sub_267EF9E58();
    v207 = v36;
    v43 = v23;
    v44 = v2;
    v46 = v45;
    v47 = v30 + 8;
    v48 = OUTLINED_FUNCTION_5_29();
    v49(v48);
    v50 = sub_267BA33E8(v42, v46, v211);
    v2 = v44;
    v23 = v43;
    v36 = v207;

    *(v41 + 4) = v50;
    _os_log_impl(&dword_267B93000, v38, v39, "#SendMessageConfirmIntentFlow received input: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v189);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {

    v47 = v30 + 8;
    v51 = OUTLINED_FUNCTION_5_29();
    v52(v51);
  }

  v53 = OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state;
  swift_beginAccess();
  v54 = v208;
  sub_267E28344(v2 + v53, v208);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_71();
    sub_267E28EE0(v54, v55);

    v56 = sub_267EF89F8();
    v57 = sub_267EF95E8();

    if (!os_log_type_enabled(v56, v57))
    {
LABEL_10:

      return 0;
    }

    OUTLINED_FUNCTION_48();
    v58 = OUTLINED_FUNCTION_64_2();
    v211[0] = v58;
    *v47 = 136315138;
    sub_267E28344(v2 + v53, v206);
    OUTLINED_FUNCTION_44_0();
    v59 = sub_267EF9098();
    v61 = sub_267BA33E8(v59, v60, v211);

    *(v47 + 4) = v61;
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    OUTLINED_FUNCTION_32_0();
LABEL_9:
    OUTLINED_FUNCTION_26();
    goto LABEL_10;
  }

  v188 = v53;
  v207 = v36;
  v189 = v23;
  LODWORD(v208) = *v54;
  v69 = v202;
  sub_267EF4B88();
  v70 = v205;
  v71 = *(v205 + 88);
  v72 = v203;
  v73 = v71(v69, v203);
  v74 = *MEMORY[0x277D5C168];
  v75 = *(v70 + 8);
  v75(v69, v72);
  if (v73 != v74)
  {
    v86 = v201;
    sub_267EF4B88();
    v87 = OUTLINED_FUNCTION_5_29();
    if ((v71)(v87) == *MEMORY[0x277D5C150])
    {
      v88 = OUTLINED_FUNCTION_5_29();
      v89(v88);
      v90 = v198;
      v91 = v200;
      v92 = v199;
      (*(v198 + 32))(v200, v86, v199);
      v93 = v196;
      sub_267B9CC04(v91, v196);
      v94 = type metadata accessor for DirectInvocationUseCases(0);
      OUTLINED_FUNCTION_5_1(v93, 1, v94);
      if (v95)
      {
        sub_267B9F98C(v93, &unk_28022BBE0, qword_267EFD030);
        v96 = v197;
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v96 = v197;
        if (EnumCaseMultiPayload == 1)
        {
          v113 = v194;
          v114 = v193;
          v115 = v192;
          (*(v194 + 32))(v193, v93, v192);
          v116 = v191;
          OUTLINED_FUNCTION_92_10();
          v118 = v117;
          v117();
          v119 = (*(v113 + 88))(v116, v115);
          v120 = *MEMORY[0x277D5D508];
          v121 = *(v113 + 8);
          v194 = v113 + 8;
          v208 = v121;
          (v121)(v116, v115);
          if (v119 != v120)
          {
            v164 = v190;
            OUTLINED_FUNCTION_92_10();
            v118();
            v165 = sub_267EF89F8();
            v166 = sub_267EF95C8();
            if (os_log_type_enabled(v165, v166))
            {
              OUTLINED_FUNCTION_48();
              v167 = OUTLINED_FUNCTION_64_2();
              v168 = v208;
              v211[0] = v167;
              *v116 = 136446210;
              v169 = sub_267EF8218();
              v171 = v170;
              v168(v164, v115);
              v172 = sub_267BA33E8(v169, v171, v211);

              *(v116 + 4) = v172;
              OUTLINED_FUNCTION_121_0(&dword_267B93000, v173, v174, "#SendMessageConfirmIntentFlow Unsupported button %{public}s -> ignore");
              OUTLINED_FUNCTION_11_42();
              OUTLINED_FUNCTION_26();

              v168(v193, v115);
            }

            else
            {

              v177 = v208;
              (v208)(v164, v115);
              v177(v114, v115);
            }

            v175 = OUTLINED_FUNCTION_49_20();
            v176(v175);
            return 0;
          }

          v122 = v206;
          swift_storeEnumTagMultiPayload();
          v123 = v188;
          OUTLINED_FUNCTION_66_3(v2 + v188, v211);
          sub_267E283A8(v122, v2 + v123);
          swift_endAccess();
          v124 = sub_267EF89F8();
          v125 = sub_267EF95C8();
          if (OUTLINED_FUNCTION_36(v125))
          {
            v126 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v126);
            OUTLINED_FUNCTION_64_1();
            _os_log_impl(v127, v128, v129, v130, v131, 2u);
            OUTLINED_FUNCTION_26();
          }

          (v208)(v193, v192);
          v132 = OUTLINED_FUNCTION_49_20();
          v133(v132);
          return 1;
        }

        sub_267E28EE0(v93, type metadata accessor for DirectInvocationUseCases);
      }

      (*(v90 + 16))(v96, v91, v92);
      v153 = sub_267EF89F8();
      v154 = sub_267EF95C8();
      if (os_log_type_enabled(v153, v154))
      {
        OUTLINED_FUNCTION_48();
        v211[0] = OUTLINED_FUNCTION_64_2();
        *v91 = 136446210;
        v155 = sub_267EF4BC8();
        v156 = v90;
        v158 = v157;
        v159 = *(v156 + 8);
        v159(v96, v92);
        v160 = sub_267BA33E8(v155, v158, v211);

        *(v91 + 4) = v160;
        OUTLINED_FUNCTION_121_0(&dword_267B93000, v161, v162, "#SendMessageConfirmIntentFlow Unsupported direct invocation %{public}s -> ignore");
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_26();

        v159(v200, v92);
      }

      else
      {

        v163 = *(v90 + 8);
        v163(v96, v92);
        v163(v91, v92);
      }

      return 0;
    }

    v97 = OUTLINED_FUNCTION_5_29();
    (v75)(v97);
    v98 = v195;
    sub_267EF4B88();
    sub_267E57DFC(v98, &v209);
    v99 = OUTLINED_FUNCTION_5_29();
    (v75)(v99);
    if (!v210)
    {
      sub_267B9F98C(&v209, &unk_28022BBF0, &unk_267F01C60);
      v56 = sub_267EF89F8();
      v146 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_36(v146))
      {
        goto LABEL_10;
      }

      v147 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v147);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v148, v149, v150, v151, v152, 2u);
      goto LABEL_9;
    }

    sub_267B9A5E8(&v209, v211);
    OUTLINED_FUNCTION_88_5();
    v100 = OUTLINED_FUNCTION_38_0();
    if (v101(v100) & 1) != 0 && (__swift_project_boxed_opaque_existential_0(v211, v211[3]), v102 = OUTLINED_FUNCTION_61_0(), (sub_267E59B14(v102, v103)))
    {
      v104 = sub_267EF89F8();
      v105 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_36(v105))
      {
        v106 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v106);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v107, v108, v109, v110, v111, 2u);
        OUTLINED_FUNCTION_26();
      }
    }

    else
    {
      if (sub_267EF96E8() & 1) == 0 || (OUTLINED_FUNCTION_88_5(), v134 = OUTLINED_FUNCTION_38_0(), (v135(v134) & 1) == 0) || (OUTLINED_FUNCTION_88_5(), v136 = OUTLINED_FUNCTION_38_0(), (v137(v136)))
      {
        v138 = sub_267EF89F8();
        v139 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_36(v139))
        {
          v140 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v140);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v141, v142, v143, v144, v145, 2u);
          OUTLINED_FUNCTION_26();
        }

        __swift_destroy_boxed_opaque_existential_0(v211);
        return 0;
      }

      v104 = sub_267EF89F8();
      v178 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_36(v178))
      {
        v179 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v179);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v180, v181, v182, v183, v184, 2u);
        OUTLINED_FUNCTION_26();
      }
    }

    v185 = v206;
    swift_storeEnumTagMultiPayload();
    v186 = v188;
    OUTLINED_FUNCTION_66_3(v2 + v188, &v209);
    sub_267E283A8(v185, v2 + v186);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v211);
    return 1;
  }

  v76 = sub_267EF89F8();
  v77 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_36(v77))
  {
    v78 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v78);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v79, v80, v81, v82, v83, 2u);
    OUTLINED_FUNCTION_26();
  }

  v84 = v206;
  *v206 = v208;
  v67 = 1;
  swift_storeEnumTagMultiPayload();
  v85 = v188;
  OUTLINED_FUNCTION_66_3(v2 + v188, v211);
  sub_267E283A8(v84, v2 + v85);
  swift_endAccess();
  return v67;
}

uint64_t sub_267E20A10()
{
  OUTLINED_FUNCTION_12();
  v1[26] = v2;
  v1[27] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C750, qword_267F0B260);
  v1[28] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[29] = v4;
  v1[30] = OUTLINED_FUNCTION_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C778, &unk_267F0B310);
  v1[31] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[32] = v6;
  v1[33] = OUTLINED_FUNCTION_89_12();
  v1[34] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  OUTLINED_FUNCTION_18(v7);
  v1[35] = OUTLINED_FUNCTION_89_12();
  v1[36] = swift_task_alloc();
  v8 = sub_267EF70D8();
  v1[37] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[38] = v9;
  v1[39] = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB78, &unk_267F08340);
  v1[40] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[41] = OUTLINED_FUNCTION_89_12();
  v1[42] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_18(v11);
  v1[43] = OUTLINED_FUNCTION_89_12();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD40, &unk_267F003E0);
  OUTLINED_FUNCTION_18(v12);
  v1[49] = OUTLINED_FUNCTION_2();
  v13 = sub_267EF6EA8();
  v1[50] = v13;
  OUTLINED_FUNCTION_30_0(v13);
  v1[51] = v14;
  v1[52] = OUTLINED_FUNCTION_2();
  v15 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  v1[53] = v15;
  OUTLINED_FUNCTION_18(v15);
  v1[54] = OUTLINED_FUNCTION_89_12();
  v1[55] = swift_task_alloc();
  v16 = swift_task_alloc();
  v1[56] = v16;
  *v16 = v1;
  v16[1] = sub_267E20D28;

  return sub_267E23BC8();
}

uint64_t sub_267E20D28()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 456) = v0;

  if (v0)
  {
    v7 = sub_267E22A30;
  }

  else
  {
    v7 = sub_267E20E28;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E20E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_47_0();
  a27 = v31;
  a28 = v32;
  OUTLINED_FUNCTION_66_1();
  a26 = v29;
  *(v29 + 464) = *(v29 + 456);
  v33 = *(v29 + 440);
  v34 = *(v29 + 216);
  v35 = OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state;
  OUTLINED_FUNCTION_85_12(v34 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state);
  sub_267E28344(v34 + v35, v33);
  OUTLINED_FUNCTION_66();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v36 = **(v29 + 440);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v37 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v37, qword_280240FB0);
      v38 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_12_3();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_48();
        a17 = OUTLINED_FUNCTION_52();
        *v40 = 136446210;
        if (v36)
        {
          v41 = 0x74756F68746977;
        }

        else
        {
          v41 = 1752459639;
        }

        if (v36)
        {
          v42 = 0xE700000000000000;
        }

        else
        {
          v42 = 0xE400000000000000;
        }

        sub_267BA33E8(v41, v42, &a17);
        OUTLINED_FUNCTION_105_11();
        *(v40 + 4) = v30;
        OUTLINED_FUNCTION_87_3(&dword_267B93000, v43, v28, "#SendMessageConfirmIntentFlow empty input, pushing confirmation flow %{public}s prompt");
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_32_0();
      }

      v44 = *(*(v29 + 216) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
      *(v44 + 42) = 2;
      *(v44 + 72) = v36;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v29 + 512) = v45;
      *v45 = v46;
      OUTLINED_FUNCTION_30_29();
      goto LABEL_37;
    case 2u:
      (*(*(v29 + 256) + 32))(*(v29 + 272), *(v29 + 440), *(v29 + 248));
      v69 = OUTLINED_FUNCTION_61_0();
      a16 = v70;
      (v70)(v69);
      v71 = OUTLINED_FUNCTION_26_0();
      if (v72(v71) != *MEMORY[0x277D5BC38])
      {
        (*(*(v29 + 256) + 8))(*(v29 + 264), *(v29 + 248));
        goto LABEL_48;
      }

      v73 = *(v29 + 280);
      (*(*(v29 + 256) + 96))(*(v29 + 264), *(v29 + 248));
      v74 = OUTLINED_FUNCTION_19();
      v75(v74);
      sub_267EF4478();
      v76 = sub_267EF44F8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v76);
      v78 = *(v29 + 280);
      if (EnumTagSinglePayload == 1)
      {
        v79 = OUTLINED_FUNCTION_22_26();
        v80(v79);
        sub_267B9F98C(v78, &qword_280229310, &unk_267EFCF70);
LABEL_48:

        sub_267D0F73C();

        goto LABEL_49;
      }

      OUTLINED_FUNCTION_23();
      v128 = OUTLINED_FUNCTION_61_0();
      if (v129(v128) != *MEMORY[0x277D5BED8])
      {
        v137 = OUTLINED_FUNCTION_22_26();
        v138(v137);
        v139 = OUTLINED_FUNCTION_61_0();
        v140(v139);
        goto LABEL_48;
      }

      v130 = *(v29 + 216);
      v131 = OUTLINED_FUNCTION_61_0();
      v132(v131);
      __swift_project_boxed_opaque_existential_0((v130 + 16), *(v130 + 40));
      v133 = OUTLINED_FUNCTION_38_0();
      v134(v133);
      __swift_project_boxed_opaque_existential_0((v29 + 16), *(v29 + 40));
      OUTLINED_FUNCTION_66();
      v135 = OUTLINED_FUNCTION_28_3();
      __swift_destroy_boxed_opaque_existential_0((v29 + 16));
      if ((v135 & 1) == 0)
      {
        goto LABEL_88;
      }

      sub_267EF6FF8();
      if (sub_267EF6FC8())
      {
        sub_267EF6FA8();

        sub_267EF8698();

        v136 = 0;
      }

      else
      {
        v136 = 1;
      }

      v206 = *(v29 + 352);
      v205 = *(v29 + 360);
      v207 = *(v29 + 320);
      v208 = *(v29 + 328);
      v209 = *(v29 + 296);
      __swift_storeEnumTagSinglePayload(v205, v136, 1, v209);
      sub_267EF70C8();
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v210, v211, v212, v209);
      v213 = *(v207 + 48);
      sub_267BB170C(v205, v208, &qword_2802295B0, &unk_267EFDCA0);
      a15 = v213;
      v214 = v208 + v213;
      v215 = v208;
      sub_267BB170C(v206, v214, &qword_2802295B0, &unk_267EFDCA0);
      OUTLINED_FUNCTION_7_0(v208);
      if (v157)
      {
        v216 = *(v29 + 360);
        v217 = *(v29 + 296);
        sub_267B9F98C(*(v29 + 352), &qword_2802295B0, &unk_267EFDCA0);
        sub_267B9F98C(v216, &qword_2802295B0, &unk_267EFDCA0);
        OUTLINED_FUNCTION_5_1(v208 + a15, 1, v217);
        if (v157)
        {
          sub_267B9F98C(*(v29 + 328), &qword_2802295B0, &unk_267EFDCA0);
          goto LABEL_88;
        }

        goto LABEL_82;
      }

      v218 = *(v29 + 296);
      sub_267BB170C(*(v29 + 328), *(v29 + 344), &qword_2802295B0, &unk_267EFDCA0);
      v219 = __swift_getEnumTagSinglePayload(v208 + a15, 1, v218);
      a14 = *(v29 + 360);
      v220 = *(v29 + 344);
      if (v219 == 1)
      {
        v222 = *(v29 + 296);
        v221 = *(v29 + 304);
        OUTLINED_FUNCTION_288();
        sub_267B9F98C(v223, v224, v225);
        OUTLINED_FUNCTION_288();
        sub_267B9F98C(v226, v227, v228);
        (*(v221 + 8))(v220, v222);
LABEL_82:
        sub_267B9F98C(*(v29 + 328), &qword_28022BB78, &unk_267F08340);
        goto LABEL_83;
      }

      a12 = *(v29 + 352);
      a13 = *(v29 + 328);
      v240 = *(v29 + 304);
      v241 = *(v29 + 312);
      v242 = *(v29 + 296);
      (*(v240 + 32))(v241, v215 + a15, v242);
      OUTLINED_FUNCTION_2_57();
      sub_267E282FC(v243, v244, MEMORY[0x277D61CD8]);
      LODWORD(a15) = sub_267EF8FE8();
      v245 = *(v240 + 8);
      v245(v241, v242);
      OUTLINED_FUNCTION_136();
      sub_267B9F98C(v246, v247, v248);
      OUTLINED_FUNCTION_136();
      sub_267B9F98C(v249, v250, v251);
      v252 = OUTLINED_FUNCTION_89_0();
      (v245)(v252);
      OUTLINED_FUNCTION_136();
      sub_267B9F98C(v253, v254, v255);
      if (a15)
      {
        goto LABEL_88;
      }

LABEL_83:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v229 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v229, qword_280240FB0);
      v230 = sub_267EF89F8();
      v231 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v231))
      {
        v232 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v232);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v233, v234, v235, v236, v237, 2u);
        OUTLINED_FUNCTION_26();
      }

LABEL_88:
      v238 = OUTLINED_FUNCTION_22_26();
      v239(v238);
LABEL_49:
      v124 = *(v29 + 432);
      v125 = OUTLINED_FUNCTION_108();
      (a16)(v125);
      OUTLINED_FUNCTION_66();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3(v34 + v35, v29 + 160);
      sub_267E283A8(v124, v34 + v35);
      swift_endAccess();
      sub_267EF4018();
      v126 = OUTLINED_FUNCTION_37_1();
      v127(v126);
LABEL_69:
      v180 = OUTLINED_FUNCTION_4_57();
      OUTLINED_FUNCTION_61_14(v180);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_46_0();

      return v182(v181, v182, v183, v184, v185, v186, v187, v188, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    case 4u:
      if ((sub_267E242A8() & 1) == 0)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v106 = sub_267EF8A08();
        v107 = __swift_project_value_buffer(v106, qword_280240FB0);
        v108 = sub_267EF89F8();
        sub_267EF95C8();
        OUTLINED_FUNCTION_12_3();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_4_2(v110);
          OUTLINED_FUNCTION_14_2();
          _os_log_impl(v111, v112, v113, v114, v115, 2u);
          OUTLINED_FUNCTION_29_1();
        }

        v116 = *(v29 + 216);

        v117 = *(v116 + 48);
        OUTLINED_FUNCTION_69_12((v116 + 16));
        v118 = OUTLINED_FUNCTION_54();
        v119(v118, v117);
        v120 = *(v29 + 88);
        OUTLINED_FUNCTION_13_37((v29 + 56));
        v121 = OUTLINED_FUNCTION_28_3();
        __swift_destroy_boxed_opaque_existential_0((v29 + 56));
        if ((v121 & 1) == 0)
        {
          goto LABEL_68;
        }

        sub_267EF6FF8();
        v122 = sub_267EF6FC8();
        a16 = v107;
        if (v122)
        {
          sub_267EF6FA8();

          sub_267EF8698();

          v123 = 0;
        }

        else
        {
          v123 = 1;
        }

        v117 = *(v29 + 376);
        v121 = *(v29 + 336);
        v141 = *(v29 + 320);
        OUTLINED_FUNCTION_57_16(v122, v123);
        v142 = OUTLINED_FUNCTION_3_19();
        __swift_storeEnumTagSinglePayload(v142, v143, v144, v107);
        v116 = *(v141 + 48);
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_117_0();
        sub_267BB170C(v145, v146, v147, v148);
        OUTLINED_FUNCTION_117_0();
        sub_267BB170C(v149, v150, v151, v152);
        v153 = OUTLINED_FUNCTION_221();
        OUTLINED_FUNCTION_5_1(v153, v154, v107);
        if (v157)
        {
          v120 = *(v29 + 384);
          v117 = *(v29 + 296);
          v107 = &qword_2802295B0;
          sub_267B9F98C(*(v29 + 376), &qword_2802295B0, &unk_267EFDCA0);
          v155 = OUTLINED_FUNCTION_14_1();
          sub_267B9F98C(v155, v156, &unk_267EFDCA0);
          OUTLINED_FUNCTION_7_0(v121 + v116);
          if (v157)
          {
            sub_267B9F98C(*(v29 + 336), &qword_2802295B0, &unk_267EFDCA0);
LABEL_68:
            OUTLINED_FUNCTION_84_11();
            v173 = *MEMORY[0x277D5BED8];
            v174 = sub_267EF44F8();
            OUTLINED_FUNCTION_22();
            (*(v175 + 104))(v107, v173, v174);
            OUTLINED_FUNCTION_9();
            __swift_storeEnumTagSinglePayload(v176, v177, v178, v174);
            v179 = *(v120 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent);
            sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
            OUTLINED_FUNCTION_102_8(v179);
            (*(v121 + 104))(v116, *MEMORY[0x277D5BC38], v117);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_66_3(v34 + v35, v29 + 184);
            sub_267E283A8(v116, v34 + v35);
            swift_endAccess();
            sub_267EF4018();
            goto LABEL_69;
          }
        }

        else
        {
          v120 = *(v29 + 296);
          sub_267BB170C(*(v29 + 336), *(v29 + 368), &qword_2802295B0, &unk_267EFDCA0);
          OUTLINED_FUNCTION_107_9();
          if (!v157)
          {
            v189 = OUTLINED_FUNCTION_48_24();
            v190(v189);
            OUTLINED_FUNCTION_2_57();
            v193 = sub_267E282FC(v191, v192, MEMORY[0x277D61CD8]);
            OUTLINED_FUNCTION_86_11(v193);
            v194 = OUTLINED_FUNCTION_91_11();
            (v121)(v194);
            v116 = &unk_267EFDCA0;
            OUTLINED_FUNCTION_56_17();
            sub_267B9F98C(v195, v196, v197);
            OUTLINED_FUNCTION_56_17();
            sub_267B9F98C(v198, v199, v200);
            v201 = OUTLINED_FUNCTION_37_1();
            (v121)(v201);
            OUTLINED_FUNCTION_56_17();
            sub_267B9F98C(v202, v203, v204);
            v121 = v107;
            if (a13)
            {
              goto LABEL_68;
            }

LABEL_65:
            v121 = sub_267EF89F8();
            v166 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_10_2(v166))
            {
              v167 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v167);
              OUTLINED_FUNCTION_21();
              _os_log_impl(v168, v169, v170, v171, v172, 2u);
              OUTLINED_FUNCTION_26();
            }

            goto LABEL_68;
          }

          v158 = *(v29 + 304);
          v107 = &qword_2802295B0;
          v159 = OUTLINED_FUNCTION_76_11();
          sub_267B9F98C(v159, v160, v161);
          v162 = OUTLINED_FUNCTION_44_0();
          sub_267B9F98C(v162, v163, &unk_267EFDCA0);
          v116 = v158 + 8;
          v164 = OUTLINED_FUNCTION_19();
          v165(v164);
        }

        sub_267B9F98C(*(v29 + 336), &qword_28022BB78, &unk_267F08340);
        goto LABEL_65;
      }

      v65 = OUTLINED_FUNCTION_71_8(OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
      *(v29 + 536) = v65 & 1;
      if (v65)
      {
        sub_267C99228();
      }

      v66 = swift_task_alloc();
      *(v29 + 480) = v66;
      *v66 = v29;
      OUTLINED_FUNCTION_26_28(v66);
      OUTLINED_FUNCTION_46_0();

      return sub_267E25C70();
    case 5u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v81 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v81, qword_280240FB0);
      v82 = sub_267EF89F8();
      v83 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v83))
      {
        v84 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v84);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v85, v86, v87, v88, v89, 2u);
        OUTLINED_FUNCTION_26();
      }

      v90 = *(v29 + 216);

      *(*(v90 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState) + 42) = 1;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v29 + 520) = v91;
      *v91 = v92;
      OUTLINED_FUNCTION_31_23();
      goto LABEL_37;
    case 6u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v93 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v93, qword_280240FB0);
      v94 = sub_267EF89F8();
      v95 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v95))
      {
        v96 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v96);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v97, v98, v99, v100, v101, 2u);
        OUTLINED_FUNCTION_26();
      }

      v102 = *(v29 + 216);

      *(*(v102 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState) + 42) = 0;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v29 + 528) = v103;
      *v103 = v104;
      OUTLINED_FUNCTION_32_20();
LABEL_37:
      *(v47 + 8) = v48;
      OUTLINED_FUNCTION_74_11();
      OUTLINED_FUNCTION_46_0();

      return sub_267E24418();
    default:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v49 = *(v29 + 216);
      v50 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v50, qword_280240FB0);

      v51 = sub_267EF89F8();
      v52 = sub_267EF95E8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = *(v29 + 432);
        OUTLINED_FUNCTION_48();
        v54 = OUTLINED_FUNCTION_64_2();
        a17 = v54;
        *v49 = 136315138;
        sub_267E28344(v34 + v35, v53);
        OUTLINED_FUNCTION_44_0();
        v55 = sub_267EF9098();
        v57 = sub_267BA33E8(v55, v56, &a17);

        *(v49 + 4) = v57;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        OUTLINED_FUNCTION_45_2();
        OUTLINED_FUNCTION_26();
      }

      v63 = *(v29 + 440);
      sub_267EF4018();
      OUTLINED_FUNCTION_1_71();
      sub_267E28EE0(v63, v64);
      goto LABEL_69;
  }
}

uint64_t sub_267E21DCC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 537) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E21EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v22 = sub_267EF8A08();
  __swift_project_value_buffer(v22, qword_280240FB0);
  v23 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v21 + 537);
    v26 = swift_slowAlloc();
    *v26 = 67240192;
    *(v26 + 4) = v25;
    _os_log_impl(&dword_267B93000, v23, v20, "#SendMessageConfirmIntentFlow isAutoSendable=%{BOOL,public}d", v26, 8u);
    OUTLINED_FUNCTION_29_1();
  }

  v27 = *(v21 + 537);
  v28 = *(v21 + 536);
  v29 = *(v21 + 472);

  sub_267E27B5C(v28);
  *(*(*(v29 + 216) + 16) + 32) = (v27 ^ 1) & 1;
  if (v28 & 1) == 0 && ((v27 ^ 1) & 1) == 0 && (sub_267C9810C(*(v21 + 216) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_conversationEventStore, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39))
  {
    v40 = *(v21 + 464);
    sub_267EF6E98();
    if (v40)
    {
      v42 = *(v21 + 392);
      v41 = *(v21 + 400);

      __swift_storeEnumTagSinglePayload(v42, 1, 1, v41);
      sub_267B9F98C(v42, &unk_28022BD40, &unk_267F003E0);
      v43 = sub_267EF89F8();
      v44 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_10_2(v44))
      {
        v45 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v45);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v46, v47, v48, v49, v50, 2u);
        OUTLINED_FUNCTION_26();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v21 + 496) = v51;
      *v51 = v52;
      v53 = sub_267E224D4;
LABEL_12:
      v51[1] = v53;
      OUTLINED_FUNCTION_74_11();
      goto LABEL_20;
    }

    v54 = *(v21 + 400);
    v55 = *(v21 + 216);
    v56 = OUTLINED_FUNCTION_3_19();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v54);
    OUTLINED_FUNCTION_288();
    v59();
    v60 = *(v55 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent);
    if ((sub_267EF96E8() & 1) == 0)
    {
      v61 = [v60 content];
      if (v61)
      {
        v62 = v61;
        sub_267EF9028();

        v63 = OUTLINED_FUNCTION_37_1();
        sub_267C9DA84(v63, v64);
        v66 = v65;

        if (v66 >= 4.0)
        {
          v79 = sub_267EF89F8();
          v80 = sub_267EF95C8();
          if (OUTLINED_FUNCTION_10_2(v80))
          {
            v81 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v81);
            OUTLINED_FUNCTION_21();
            _os_log_impl(v82, v83, v84, v85, v86, 2u);
            OUTLINED_FUNCTION_26();
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_25();
          *(v21 + 488) = v51;
          *v51 = v87;
          v53 = sub_267E222F0;
          goto LABEL_12;
        }
      }
    }

    v67 = *(v21 + 416);
    v68 = *(v21 + 216);
    v69 = *(v68 + 48);
    OUTLINED_FUNCTION_69_12((v68 + 16));
    v70 = OUTLINED_FUNCTION_54();
    v71(v70, v69);
    v72 = sub_267E28B54((v21 + 96), v67);
    __swift_destroy_boxed_opaque_existential_0((v21 + 96));
    if (v72)
    {
      v73 = *(v21 + 472);
      sub_267C98ECC();
      v74 = OUTLINED_FUNCTION_66();
      v75(v74);
      *(v73 + 280) = 1;
    }

    else
    {
      (*(*(v21 + 408) + 8))(*(v21 + 416), *(v21 + 400));
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v21 + 504) = v76;
  *v76 = v77;
  v76[1] = sub_267E225B8;
LABEL_20:

  return sub_267E24418();
}

uint64_t sub_267E222F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E223D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  (*(v20[51] + 8))(v20[52], v20[50]);
  v21 = OUTLINED_FUNCTION_4_57();
  OUTLINED_FUNCTION_62_11(v21);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E224D4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E225B8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E2269C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E22780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v20 = OUTLINED_FUNCTION_4_57();
  OUTLINED_FUNCTION_62_11(v20);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E22868()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E2294C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E22A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(uint64_t), uint64_t *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_47_0();
  a27 = v30;
  a28 = v31;
  OUTLINED_FUNCTION_66_1();
  a26 = v28;
  OUTLINED_FUNCTION_58_13();
  if (!v164)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v32 = *(v28 + 456);
  v33 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
  v34 = v32;
  v35 = sub_267EF89F8();
  v36 = sub_267EF95C8();

  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v28 + 456);
  if (v37)
  {
    v39 = OUTLINED_FUNCTION_48();
    v29 = swift_slowAlloc();
    *v39 = 138543362;
    v40 = v38;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v41;
    *v29 = v41;
    _os_log_impl(&dword_267B93000, v35, v36, "#SendMessageConfirmIntentFlow failed to cancel send on disappear command, possibly delayed action command was already cancelled: %{public}@", v39, 0xCu);
    sub_267B9F98C(v29, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  *(v28 + 464) = 0;
  v42 = *(v28 + 440);
  v43 = *(v28 + 424);
  v44 = *(v28 + 216);
  v45 = OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state;
  OUTLINED_FUNCTION_85_12(v44 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state);
  sub_267E28344(v44 + v45, v42);
  OUTLINED_FUNCTION_108();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = **(v28 + 440);
      OUTLINED_FUNCTION_58_13();
      if (!v164)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
      v47 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_12_3();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_48();
        a17 = OUTLINED_FUNCTION_52();
        *v49 = 136446210;
        if (v46)
        {
          v50 = 0x74756F68746977;
        }

        else
        {
          v50 = 1752459639;
        }

        if (v46)
        {
          v51 = 0xE700000000000000;
        }

        else
        {
          v51 = 0xE400000000000000;
        }

        sub_267BA33E8(v50, v51, &a17);
        OUTLINED_FUNCTION_105_11();
        *(v49 + 4) = v29;
        OUTLINED_FUNCTION_87_3(&dword_267B93000, v52, v43, "#SendMessageConfirmIntentFlow empty input, pushing confirmation flow %{public}s prompt");
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_32_0();
      }

      v53 = *(*(v28 + 216) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
      *(v53 + 42) = 2;
      *(v53 + 72) = v46;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v28 + 512) = v54;
      *v54 = v55;
      OUTLINED_FUNCTION_30_29();
      goto LABEL_42;
    case 2u:
      (*(*(v28 + 256) + 32))(*(v28 + 272), *(v28 + 440), *(v28 + 248));
      v77 = OUTLINED_FUNCTION_19();
      a15 = v79;
      a16 = v78;
      v79(v77);
      v80 = OUTLINED_FUNCTION_37_1();
      if (v81(v80) != *MEMORY[0x277D5BC38])
      {
        (*(*(v28 + 256) + 8))(*(v28 + 264), *(v28 + 248));
        goto LABEL_53;
      }

      v82 = *(v28 + 240);
      (*(*(v28 + 256) + 96))(*(v28 + 264), *(v28 + 248));
      OUTLINED_FUNCTION_182();
      v83();
      sub_267EF4478();
      sub_267EF44F8();
      v84 = OUTLINED_FUNCTION_54();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, 1, v82);
      v86 = *(v28 + 280);
      if (EnumTagSinglePayload == 1)
      {
        v87 = OUTLINED_FUNCTION_22_26();
        v88(v87);
        sub_267B9F98C(v86, &qword_280229310, &unk_267EFCF70);
LABEL_53:

        sub_267D0F73C();

        goto LABEL_54;
      }

      OUTLINED_FUNCTION_23();
      v133 = OUTLINED_FUNCTION_19();
      if (v134(v133) != *MEMORY[0x277D5BED8])
      {
        v144 = OUTLINED_FUNCTION_22_26();
        v145(v144);
        v146 = OUTLINED_FUNCTION_19();
        v147(v146);
        goto LABEL_53;
      }

      v135 = *(v28 + 216);
      v136 = OUTLINED_FUNCTION_19();
      v137(v136);
      v138 = *(v135 + 48);
      OUTLINED_FUNCTION_69_12((v135 + 16));
      v139 = OUTLINED_FUNCTION_54();
      v140(v139, v138);
      OUTLINED_FUNCTION_13_37((v28 + 16));
      v141 = OUTLINED_FUNCTION_28_3();
      __swift_destroy_boxed_opaque_existential_0((v28 + 16));
      if ((v141 & 1) == 0)
      {
        goto LABEL_93;
      }

      sub_267EF6FF8();
      v142 = sub_267EF6FC8();
      if (v142)
      {
        sub_267EF6FA8();

        sub_267EF8698();

        v143 = 0;
      }

      else
      {
        v143 = 1;
      }

      v212 = *(v28 + 352);
      v214 = *(v28 + 320);
      v213 = *(v28 + 328);
      OUTLINED_FUNCTION_57_16(v142, v143);
      v215 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v215, v216, v217, v135);
      v218 = *(v214 + 48);
      v219 = OUTLINED_FUNCTION_19();
      v221 = v220;
      sub_267BB170C(v219, v222, v220, v223);
      a14 = v218;
      sub_267BB170C(v212, v213 + v218, v221, &unk_267EFDCA0);
      v224 = OUTLINED_FUNCTION_221();
      OUTLINED_FUNCTION_5_1(v224, v225, v135);
      if (v164)
      {
        sub_267B9F98C(*(v28 + 352), &qword_2802295B0, &unk_267EFDCA0);
        v226 = OUTLINED_FUNCTION_14_1();
        sub_267B9F98C(v226, v227, &unk_267EFDCA0);
        OUTLINED_FUNCTION_7_0(v213 + v218);
        if (v164)
        {
          sub_267B9F98C(*(v28 + 328), &qword_2802295B0, &unk_267EFDCA0);
          goto LABEL_93;
        }

        goto LABEL_87;
      }

      v228 = *(v28 + 296);
      sub_267BB170C(*(v28 + 328), *(v28 + 344), &qword_2802295B0, &unk_267EFDCA0);
      v229 = __swift_getEnumTagSinglePayload(v213 + v218, 1, v228);
      a12 = *(v28 + 360);
      a13 = *(v28 + 344);
      if (v229 == 1)
      {
        v230 = *(v28 + 296);
        v231 = *(v28 + 304);
        sub_267B9F98C(*(v28 + 352), &qword_2802295B0, &unk_267EFDCA0);
        sub_267B9F98C(a12, &qword_2802295B0, &unk_267EFDCA0);
        (*(v231 + 8))(a13, v230);
LABEL_87:
        sub_267B9F98C(*(v28 + 328), &qword_28022BB78, &unk_267F08340);
        goto LABEL_88;
      }

      a10 = *(v28 + 352);
      a11 = *(v28 + 328);
      v242 = *(v28 + 304);
      v243 = *(v28 + 312);
      v244 = *(v28 + 296);
      (*(v242 + 32))(v243, v213 + v218, v244);
      OUTLINED_FUNCTION_2_57();
      sub_267E282FC(v245, v246, MEMORY[0x277D61CD8]);
      LODWORD(a14) = sub_267EF8FE8();
      v247 = *(v242 + 8);
      v247(v243, v244);
      OUTLINED_FUNCTION_182();
      sub_267B9F98C(v248, v249, v250);
      OUTLINED_FUNCTION_182();
      sub_267B9F98C(v251, v252, v253);
      v247(a13, v244);
      OUTLINED_FUNCTION_182();
      sub_267B9F98C(v254, v255, v256);
      if (a14)
      {
        goto LABEL_93;
      }

LABEL_88:
      OUTLINED_FUNCTION_58_13();
      if (!v164)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
      v232 = sub_267EF89F8();
      v233 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v233))
      {
        v234 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v234);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v235, v236, v237, v238, v239, 2u);
        OUTLINED_FUNCTION_26();
      }

LABEL_93:
      v240 = OUTLINED_FUNCTION_22_26();
      v241(v240);
LABEL_54:
      v129 = *(v28 + 432);
      v130 = OUTLINED_FUNCTION_108();
      a15(v130);
      OUTLINED_FUNCTION_66();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3(v44 + v45, v28 + 160);
      sub_267E283A8(v129, v44 + v45);
      swift_endAccess();
      sub_267EF4018();
      v131 = OUTLINED_FUNCTION_37_1();
      v132(v131);
LABEL_74:
      v187 = OUTLINED_FUNCTION_4_57();
      OUTLINED_FUNCTION_61_14(v187);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_46_0();

      return v189(v188, v189, v190, v191, v192, v193, v194, v195, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    case 4u:
      if ((sub_267E242A8() & 1) == 0)
      {
        OUTLINED_FUNCTION_58_13();
        if (!v164)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v112 = __swift_project_value_buffer(v33, qword_280240FB0);
        v113 = sub_267EF89F8();
        sub_267EF95C8();
        OUTLINED_FUNCTION_12_3();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_4_2(v115);
          OUTLINED_FUNCTION_14_2();
          _os_log_impl(v116, v117, v118, v119, v120, 2u);
          OUTLINED_FUNCTION_29_1();
        }

        v121 = *(v28 + 216);

        v122 = *(v121 + 48);
        OUTLINED_FUNCTION_69_12((v121 + 16));
        v123 = OUTLINED_FUNCTION_54();
        v124(v123, v122);
        v125 = *(v28 + 88);
        OUTLINED_FUNCTION_13_37((v28 + 56));
        v126 = OUTLINED_FUNCTION_28_3();
        __swift_destroy_boxed_opaque_existential_0((v28 + 56));
        if ((v126 & 1) == 0)
        {
          goto LABEL_73;
        }

        sub_267EF6FF8();
        v127 = sub_267EF6FC8();
        a16 = v112;
        if (v127)
        {
          sub_267EF6FA8();

          sub_267EF8698();

          v128 = 0;
        }

        else
        {
          v128 = 1;
        }

        v122 = *(v28 + 376);
        v126 = *(v28 + 336);
        v148 = *(v28 + 320);
        OUTLINED_FUNCTION_57_16(v127, v128);
        v149 = OUTLINED_FUNCTION_3_19();
        __swift_storeEnumTagSinglePayload(v149, v150, v151, v112);
        v121 = *(v148 + 48);
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_117_0();
        sub_267BB170C(v152, v153, v154, v155);
        OUTLINED_FUNCTION_117_0();
        sub_267BB170C(v156, v157, v158, v159);
        v160 = OUTLINED_FUNCTION_221();
        OUTLINED_FUNCTION_5_1(v160, v161, v112);
        if (v164)
        {
          v125 = *(v28 + 384);
          v122 = *(v28 + 296);
          v112 = &qword_2802295B0;
          sub_267B9F98C(*(v28 + 376), &qword_2802295B0, &unk_267EFDCA0);
          v162 = OUTLINED_FUNCTION_14_1();
          sub_267B9F98C(v162, v163, &unk_267EFDCA0);
          OUTLINED_FUNCTION_7_0(v126 + v121);
          if (v164)
          {
            sub_267B9F98C(*(v28 + 336), &qword_2802295B0, &unk_267EFDCA0);
LABEL_73:
            OUTLINED_FUNCTION_84_11();
            v180 = *MEMORY[0x277D5BED8];
            v181 = sub_267EF44F8();
            OUTLINED_FUNCTION_22();
            (*(v182 + 104))(v112, v180, v181);
            OUTLINED_FUNCTION_9();
            __swift_storeEnumTagSinglePayload(v183, v184, v185, v181);
            v186 = *(v125 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent);
            sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
            OUTLINED_FUNCTION_102_8(v186);
            (*(v126 + 104))(v121, *MEMORY[0x277D5BC38], v122);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_66_3(v44 + v45, v28 + 184);
            sub_267E283A8(v121, v44 + v45);
            swift_endAccess();
            sub_267EF4018();
            goto LABEL_74;
          }
        }

        else
        {
          v125 = *(v28 + 296);
          sub_267BB170C(*(v28 + 336), *(v28 + 368), &qword_2802295B0, &unk_267EFDCA0);
          OUTLINED_FUNCTION_107_9();
          if (!v164)
          {
            v196 = OUTLINED_FUNCTION_48_24();
            v197(v196);
            OUTLINED_FUNCTION_2_57();
            v200 = sub_267E282FC(v198, v199, MEMORY[0x277D61CD8]);
            OUTLINED_FUNCTION_86_11(v200);
            v201 = OUTLINED_FUNCTION_91_11();
            (v126)(v201);
            v121 = &unk_267EFDCA0;
            OUTLINED_FUNCTION_56_17();
            sub_267B9F98C(v202, v203, v204);
            OUTLINED_FUNCTION_56_17();
            sub_267B9F98C(v205, v206, v207);
            v208 = OUTLINED_FUNCTION_37_1();
            (v126)(v208);
            OUTLINED_FUNCTION_56_17();
            sub_267B9F98C(v209, v210, v211);
            v126 = v112;
            if (a13)
            {
              goto LABEL_73;
            }

LABEL_70:
            v126 = sub_267EF89F8();
            v173 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_10_2(v173))
            {
              v174 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v174);
              OUTLINED_FUNCTION_21();
              _os_log_impl(v175, v176, v177, v178, v179, 2u);
              OUTLINED_FUNCTION_26();
            }

            goto LABEL_73;
          }

          v165 = *(v28 + 304);
          v112 = &qword_2802295B0;
          v166 = OUTLINED_FUNCTION_76_11();
          sub_267B9F98C(v166, v167, v168);
          v169 = OUTLINED_FUNCTION_44_0();
          sub_267B9F98C(v169, v170, &unk_267EFDCA0);
          v121 = v165 + 8;
          v171 = OUTLINED_FUNCTION_19();
          v172(v171);
        }

        sub_267B9F98C(*(v28 + 336), &qword_28022BB78, &unk_267F08340);
        goto LABEL_70;
      }

      v73 = OUTLINED_FUNCTION_71_8(OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
      *(v28 + 536) = v73 & 1;
      if (v73)
      {
        sub_267C99228();
      }

      v74 = swift_task_alloc();
      *(v28 + 480) = v74;
      *v74 = v28;
      OUTLINED_FUNCTION_26_28(v74);
      OUTLINED_FUNCTION_46_0();

      return sub_267E25C70();
    case 5u:
      OUTLINED_FUNCTION_58_13();
      if (!v164)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
      v89 = sub_267EF89F8();
      v90 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v90))
      {
        v91 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v91);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v92, v93, v94, v95, v96, 2u);
        OUTLINED_FUNCTION_26();
      }

      v97 = *(v28 + 216);

      *(*(v97 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState) + 42) = 1;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v28 + 520) = v98;
      *v98 = v99;
      OUTLINED_FUNCTION_31_23();
      goto LABEL_42;
    case 6u:
      OUTLINED_FUNCTION_58_13();
      if (!v164)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
      v100 = sub_267EF89F8();
      v101 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v101))
      {
        v102 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v102);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v103, v104, v105, v106, v107, 2u);
        OUTLINED_FUNCTION_26();
      }

      v108 = *(v28 + 216);

      *(*(v108 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState) + 42) = 0;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v28 + 528) = v109;
      *v109 = v110;
      OUTLINED_FUNCTION_32_20();
LABEL_42:
      *(v56 + 8) = v57;
      OUTLINED_FUNCTION_74_11();
      OUTLINED_FUNCTION_46_0();

      return sub_267E24418();
    default:
      OUTLINED_FUNCTION_58_13();
      if (!v164)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v58 = *(v28 + 216);
      OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);

      v59 = sub_267EF89F8();
      v60 = sub_267EF95E8();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = *(v28 + 432);
        OUTLINED_FUNCTION_48();
        v62 = OUTLINED_FUNCTION_64_2();
        a17 = v62;
        *v58 = 136315138;
        sub_267E28344(v44 + v45, v61);
        OUTLINED_FUNCTION_44_0();
        v63 = sub_267EF9098();
        v65 = sub_267BA33E8(v63, v64, &a17);

        *(v58 + 4) = v65;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        OUTLINED_FUNCTION_45_2();
        OUTLINED_FUNCTION_26();
      }

      v71 = *(v28 + 440);
      sub_267EF4018();
      OUTLINED_FUNCTION_1_71();
      sub_267E28EE0(v71, v72);
      goto LABEL_74;
  }
}

uint64_t sub_267E23A58@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state;
  swift_beginAccess();
  sub_267E28344(v1 + v7, v6);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C778, &unk_267F0B310);
    OUTLINED_FUNCTION_22();
    v8 = OUTLINED_FUNCTION_26_0();
    return v9(v8);
  }

  else
  {
    sub_267C4BE60();
    v11 = swift_allocError();
    *v12 = 0;
    v12[1] = 0;
    *a1 = v11;
    *(a1 + 8) = 0;
    v13 = *MEMORY[0x277D5BC30];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C778, &unk_267F0B310);
    OUTLINED_FUNCTION_22();
    (*(v14 + 104))(a1, v13);
    OUTLINED_FUNCTION_1_71();
    return sub_267E28EE0(v6, v15);
  }
}

uint64_t sub_267E23BC8()
{
  *(v1 + 24) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267E23BF0()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
  v0[4] = v1;
  v2 = *(v1 + 328);
  v0[5] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[6] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC00, &unk_267F08390);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    *v3 = v0;
    v3[1] = sub_267E23DB4;
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 2, v2, v4, v5, v6);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v7 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v7, qword_280240FB0);
    v8 = sub_267EF89F8();
    v9 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v9))
    {
      v10 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v10);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_26();
    }

    v16 = v0[4];

    *(v16 + 328) = 0;

    OUTLINED_FUNCTION_17();

    return v17();
  }
}

uint64_t sub_267E23DB4()
{
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {
    v4 = sub_267E241C4;
  }

  else
  {
    v4 = sub_267E23EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_267E23EE4()
{
  v41 = v0;
  v1 = *(v0 + 16);
  if (!v1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v11 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v13))
    {
      v14 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v14);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      OUTLINED_FUNCTION_26();
    }

    v20 = *(v0 + 32);

    *(v20 + 328) = 0;

    goto LABEL_13;
  }

  *(*(v0 + 32) + 328) = 0;

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v5);
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_29_1();
    }

LABEL_13:
    OUTLINED_FUNCTION_17();
    goto LABEL_19;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v22 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
  v23 = v1;
  v24 = sub_267EF89F8();
  v25 = sub_267EF95E8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_48();
    v27 = OUTLINED_FUNCTION_52();
    v40 = v27;
    *v26 = 136315138;
    v28 = [v23 debugDescription];
    v29 = sub_267EF9028();
    v31 = v30;

    v32 = sub_267BA33E8(v29, v31, &v40);

    *(v26 + 4) = v32;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  sub_267C4BE60();
  swift_allocError();
  *v38 = 0;
  v38[1] = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_17();
LABEL_19:

  return v21();
}

uint64_t sub_267E242A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
  if (sub_267D60D40())
  {
    __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences), *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences + 24));
    v2 = OUTLINED_FUNCTION_16_1();
    if (v3(v2))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v4 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
      v5 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_12_3();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_13;
      }

      v7 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v7);
      v10 = "#SendMessageConfirmIntentFlow spoken message reply without confirmation";
LABEL_12:
      OUTLINED_FUNCTION_5_54(&dword_267B93000, v8, v9, v10);
      OUTLINED_FUNCTION_32_0();
LABEL_13:

      return 0;
    }
  }

  if (*(v1 + 41) == 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v11 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);
    v5 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_12_3();
    if (!os_log_type_enabled(v5, v12))
    {
      goto LABEL_13;
    }

    v13 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_10(v13);
    v10 = "#SendMessageConfirmIntentFlow message sent from snippet. Skip confirmation";
    goto LABEL_12;
  }

  return 1;
}

uint64_t sub_267E24418()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 2088) = v0;
  *(v1 + 2224) = v2;
  *(v1 + 2080) = v3;
  v4 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  *(v1 + 2096) = v4;
  OUTLINED_FUNCTION_18(v4);
  *(v1 + 2104) = swift_task_alloc();
  *(v1 + 2112) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  *(v1 + 2120) = v5;
  OUTLINED_FUNCTION_30_0(v5);
  *(v1 + 2128) = v6;
  *(v1 + 2136) = OUTLINED_FUNCTION_2();
  v7 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v7);
  *(v1 + 2144) = OUTLINED_FUNCTION_2();
  v8 = sub_267EF68A8();
  *(v1 + 2152) = v8;
  OUTLINED_FUNCTION_30_0(v8);
  *(v1 + 2160) = v9;
  *(v1 + 2168) = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  OUTLINED_FUNCTION_18(v10);
  *(v1 + 2176) = swift_task_alloc();
  *(v1 + 2184) = swift_task_alloc();
  *(v1 + 2192) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  *(v1 + 2200) = v11;
  OUTLINED_FUNCTION_30_0(v11);
  *(v1 + 2208) = v12;
  *(v1 + 2216) = OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267E24618()
{
  v145 = v0;
  v1 = *(v0 + 2216);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 2224);
  v4 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent);
  v5 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intentResponse);
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  sub_267BA9F38(0, &qword_280229718, 0x277CD4080);

  v6 = v4;
  v7 = v5;
  OUTLINED_FUNCTION_14_1();
  sub_267EF4658();
  v8 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
  v8[211] = v3;
  v9 = sub_267E27360();
  v8[212] = v9 & 1;
  v8[210] = v3 & v9;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);

  v11 = sub_267EF89F8();
  v12 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240704;
    *(v13 + 4) = v8[210];
    *(v13 + 8) = 1026;
    *(v13 + 10) = v8[211];
    *(v13 + 14) = 1026;
    *(v13 + 16) = v8[212];

    _os_log_impl(&dword_267B93000, v11, v1, "#SendMessageConfirmIntentFlow#pushConfirmIntentFlow shouldAutoSend=%{BOOL,public}d, isAutoSendHighConfidence=%{BOOL,public}d, autoSendEnabled=%{BOOL,public}d", v13, 0x14u);
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  v142 = (v0 + 808);

  v14 = *(v0 + 2120);
  v136 = *(v0 + 2088);
  sub_267B9AFEC(v136 + 16, v0 + 208);
  v15 = OUTLINED_FUNCTION_221();
  __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
  v17 = sub_267EF8938();

  v18 = sub_267EF8928();
  v127 = v17;
  *(v0 + 1392) = v17;
  *(v0 + 1400) = MEMORY[0x277D5FDD8];
  *(v0 + 1368) = v18;
  v133 = sub_267EF3AA8();
  sub_267EF3838();
  v19 = type metadata accessor for NetworkStatusProvider();
  v20 = swift_allocObject();
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00((v0 + 1968));
  sub_267EF8668();
  v21 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  *(v0 + 352) = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
  *(v0 + 360) = &off_2878CF540;
  *(v0 + 328) = v21;
  v22 = sub_267EF72E8();
  sub_267EF6898();
  ConversationEventStore.init()(v0 + 16);
  v140 = v8;
  if (qword_280228730 != -1)
  {
    swift_once();
  }

  v132 = *(v0 + 2192);
  v139 = *(v0 + 2184);
  v130 = *(v0 + 2176);
  v141 = *(v0 + 2160);
  v23 = *(v0 + 2152);
  v131 = *(v0 + 2120);
  v24 = qword_280240A10;
  *(v0 + 432) = type metadata accessor for EligibleAppFinder();
  *(v0 + 440) = sub_267E282FC(&qword_28022A688, type metadata accessor for EligibleAppFinder, &unk_267F014D4);
  *(v0 + 408) = v24;
  v25 = type metadata accessor for ShareSheetProvider();
  v26 = swift_allocObject();
  *(v0 + 472) = &type metadata for CATProvider;
  *(v0 + 480) = &off_2878CE7A0;
  *(v0 + 512) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 520) = off_2878D1228;
  *(v0 + 552) = v19;
  *(v0 + 560) = &off_2878D2ED0;
  *(v0 + 528) = v20;
  *(v0 + 592) = &type metadata for TTSUtil;
  *(v0 + 568) = v22;
  *(v0 + 600) = &off_2878D0CB0;
  *(v0 + 576) = &off_2878D0918;
  v138 = v23;
  *(v0 + 632) = v23;
  *(v0 + 640) = &off_2878D54D8;
  __swift_allocate_boxed_opaque_existential_0((v0 + 608));
  OUTLINED_FUNCTION_97_12();
  v27();
  *(v0 + 672) = v25;
  *(v0 + 680) = &off_2878D0D48;
  *(v0 + 648) = v26;
  v134 = type metadata accessor for SendMessageConfirmIntentFlowStrategy(0);
  v28 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 448, *(v0 + 472));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 488, *(v0 + 512));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 528, *(v0 + 552));
  OUTLINED_FUNCTION_23();
  v29 = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_136();
  v30();
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 568, *(v0 + 592));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 608, *(v0 + 632));
  OUTLINED_FUNCTION_23();
  v32 = v19;
  v129 = v19;
  v33 = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_92_10();
  v34();
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 648, v25);
  OUTLINED_FUNCTION_23();
  v37 = v36;
  v38 = OUTLINED_FUNCTION_2();
  (*(v37 + 16))(v38, v35, v25);
  v39 = *v29;
  v40 = *v38;
  v41 = *v31;
  *(v0 + 712) = &type metadata for CATProvider;
  *(v0 + 720) = &off_2878CE7A0;
  *(v0 + 752) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 760) = off_2878D1228;
  *(v0 + 792) = v32;
  *(v0 + 800) = &off_2878D2ED0;
  *(v0 + 768) = v39;
  *(v0 + 832) = &type metadata for TTSUtil;
  *(v0 + 840) = &off_2878D0CB0;
  *v142 = v41;
  *(v0 + 872) = v138;
  *(v0 + 880) = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 848));
  v128 = *(v141 + 32);
  (v128)(boxed_opaque_existential_0, v33, v138);
  *(v0 + 912) = v25;
  *(v0 + 920) = &off_2878D0D48;
  *(v0 + 888) = v40;
  *(v28 + OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_autoSendTimeout) = 0x4014000000000000;
  v43 = OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_confirmationResponse;
  v44 = sub_267EF44F8();
  __swift_storeEnumTagSinglePayload(v28 + v43, 1, 1, v44);
  *(v28 + OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_delayedActionCancelCommand) = 0;
  sub_267B9AFEC(v0 + 208, v0 + 928);
  sub_267B9AFEC(v0 + 688, v0 + 968);
  sub_267BB170C(v132, v139, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9AFEC(v0 + 728, v0 + 1008);
  sub_267B9AFEC(v0 + 1368, v0 + 1048);
  sub_267B9AFEC(v0 + 368, v0 + 1088);
  sub_267B9AFEC(v0 + 768, v0 + 1128);
  sub_267B9AFEC(v0 + 1968, v0 + 1168);
  sub_267B9AFEC(v0 + 288, v0 + 1208);
  sub_267B9AFEC(v0 + 328, v0 + 1248);
  sub_267B9AFEC(v142, v0 + 1288);
  sub_267B9AFEC(v0 + 848, v0 + 1328);
  sub_267BEB520(v0 + 16, v0 + 112);
  sub_267B9AFEC(v0 + 408, v0 + 1408);
  sub_267B9AFEC(v0 + 888, v0 + 1448);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 968, *(v0 + 992));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 1008, *(v0 + 1032));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 1128, *(v0 + 1152));
  OUTLINED_FUNCTION_23();
  v45 = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_288();
  v46();
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1288, *(v0 + 1312));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 1328, *(v0 + 1352));
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_97_12();
  v48();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 1448, *(v0 + 1472));
  OUTLINED_FUNCTION_23();
  v49 = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_92_10();
  v50();
  v51 = *v45;
  v52 = *v49;
  v53 = *v47;
  *(v0 + 1512) = &type metadata for CATProvider;
  *(v0 + 1520) = &off_2878CE7A0;
  *(v0 + 1552) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 1560) = off_2878D1228;
  *(v0 + 1592) = v129;
  *(v0 + 1600) = &off_2878D2ED0;
  *(v0 + 1568) = v51;
  *(v0 + 1632) = &type metadata for TTSUtil;
  *(v0 + 1640) = &off_2878D0CB0;
  *(v0 + 1608) = v53;
  *(v0 + 1672) = v138;
  *(v0 + 1680) = &off_2878D54D8;
  __swift_allocate_boxed_opaque_existential_0((v0 + 1648));
  OUTLINED_FUNCTION_56_17();
  v128();
  *(v0 + 1712) = v25;
  *(v0 + 1720) = &off_2878D0D48;
  *(v0 + 1688) = v52;
  v28[7] = v140;
  sub_267B9AFEC(v0 + 1488, (v28 + 8));
  type metadata accessor for SendMessageCATs(0);

  sub_267EF7B68();
  v28[13] = sub_267EF78E8();
  type metadata accessor for SendMessageCATsSimple(0);
  sub_267EF7B68();
  *(v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
  type metadata accessor for MessagesCATs(0);
  sub_267EF7B68();
  v28[15] = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0((v0 + 1488), *(v0 + 1512));
  v28[14] = sub_267BB4A3C();
  sub_267BB170C(v139, v130, &qword_2802299A8, &unk_267F00CF0);
  v54 = OUTLINED_FUNCTION_221();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, v55, v131);
  v57 = *(v0 + 2176);
  if (EnumTagSinglePayload == 1)
  {
    *(v0 + 1752) = *(v0 + 2152);
    *(v0 + 1760) = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0((v0 + 1728));
    sub_267EF6898();
    v58 = sub_267EF8928();
    *(v0 + 1792) = v127;
    *(v0 + 1800) = MEMORY[0x277D5FDD8];
    *(v0 + 1768) = v58;
    sub_267B9AFEC(v0 + 928, v0 + 1808);
    sub_267B9AFEC(v0 + 1728, v0 + 1848);
    sub_267B9AFEC(v0 + 1768, v0 + 1888);
    v59 = swift_allocObject();
    sub_267B9A5E8((v0 + 1808), v59 + 16);
    sub_267B9A5E8((v0 + 1848), v59 + 56);
    sub_267B9A5E8((v0 + 1888), v59 + 96);
    sub_267EF4C08();
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0((v0 + 1768));
    __swift_destroy_boxed_opaque_existential_0((v0 + 1728));
    OUTLINED_FUNCTION_7_0(v57);
    if (!v60)
    {
      sub_267B9F98C(*(v0 + 2176), &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    (*(*(v0 + 2128) + 32))(*(v0 + 2136), *(v0 + 2176), *(v0 + 2120));
  }

  v61 = *(v0 + 2184);
  v62 = *(v0 + 2168);
  v63 = *(v0 + 2160);
  v64 = *(v0 + 2152);
  v65 = *(v0 + 2088);
  (*(*(v0 + 2128) + 32))(v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, *(v0 + 2136), *(v0 + 2120));
  sub_267B9AFEC(v0 + 1528, v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
  sub_267B9AFEC(v0 + 1048, v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
  v66 = (v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  *v66 = v133;
  v66[1] = &off_2878D5360;
  sub_267B9AFEC(v0 + 1088, v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  sub_267B9AFEC(v0 + 1568, v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
  sub_267B9AFEC(v0 + 1168, v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
  v67 = type metadata accessor for SendMessageCATPatternsExecutor(0);
  sub_267EF7B68();
  v68 = sub_267EF78E8();
  v69 = (v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
  v69[3] = v67;
  v69[4] = &off_2878D1100;
  *v69 = v68;
  __swift_destroy_boxed_opaque_existential_0((v0 + 1168));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1088));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1048));
  sub_267B9F98C(v61, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9EF14(v0 + 16);
  (*(v63 + 8))(v62, v64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1968));
  __swift_destroy_boxed_opaque_existential_0((v0 + 368));
  v70 = OUTLINED_FUNCTION_61_0();
  sub_267B9F98C(v70, v71, &unk_267F00CF0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1368));
  __swift_destroy_boxed_opaque_existential_0((v0 + 888));
  __swift_destroy_boxed_opaque_existential_0((v0 + 848));
  __swift_destroy_boxed_opaque_existential_0(v142);
  __swift_destroy_boxed_opaque_existential_0((v0 + 768));
  __swift_destroy_boxed_opaque_existential_0((v0 + 728));
  __swift_destroy_boxed_opaque_existential_0((v0 + 688));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1568));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1528));
  sub_267B9A5E8((v0 + 1208), v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
  sub_267B9A5E8((v0 + 1248), v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
  sub_267B9A5E8((v0 + 1608), v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
  sub_267B9A5E8((v0 + 1648), v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  memcpy(v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, (v0 + 112), 0x60uLL);
  sub_267B9A5E8((v0 + 1408), v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
  sub_267B9A5E8((v0 + 1688), v28 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
  sub_267B9A5E8((v0 + 928), (v28 + 2));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1488));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1448));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1328));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1288));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1128));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1008));
  __swift_destroy_boxed_opaque_existential_0((v0 + 968));
  __swift_destroy_boxed_opaque_existential_0((v0 + 648));

  __swift_destroy_boxed_opaque_existential_0((v0 + 608));

  __swift_destroy_boxed_opaque_existential_0((v0 + 568));
  __swift_destroy_boxed_opaque_existential_0((v0 + 528));

  __swift_destroy_boxed_opaque_existential_0((v0 + 488));
  __swift_destroy_boxed_opaque_existential_0((v0 + 448));
  __swift_project_boxed_opaque_existential_0((v136 + 16), *(v65 + 40));
  v72 = OUTLINED_FUNCTION_38_0();
  v73(v72);
  LOBYTE(v63) = sub_267D60DB0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 1928));
  v74 = sub_267EF89F8();
  v75 = sub_267EF95C8();
  v76 = OUTLINED_FUNCTION_10_2(v75);
  if (v63)
  {
    if (v76)
    {
      v77 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v77);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v78, v79, v80, v81, v82, 2u);
      OUTLINED_FUNCTION_26();
    }

    v83 = *(v0 + 2088);

    v85 = *(v83 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_confirmIntentFlowHelper);
    v84 = *(v83 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_confirmIntentFlowHelper + 8);
    *(v0 + 2072) = v28;
    v86 = *(v84 + 16);
    OUTLINED_FUNCTION_37_20();
    v89 = sub_267E282FC(v87, v88, &unk_267F08208);
    v90 = v86(v0 + 2072, v134, v89, v85, v84);
  }

  else
  {
    if (v76)
    {
      v92 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v92);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v93, v94, v95, v96, v97, 2u);
      OUTLINED_FUNCTION_26();
    }

    v98 = *(v0 + 2088);

    v100 = *(v98 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_confirmIntentFlowHelper);
    v99 = *(v98 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_confirmIntentFlowHelper + 8);
    *(v0 + 2064) = v28;
    v101 = *(v99 + 8);
    OUTLINED_FUNCTION_37_20();
    v104 = sub_267E282FC(v102, v103, &unk_267F08208);
    v90 = v101(v0 + 2064, v134, v104, v100, v99);
  }

  v105 = v90;
  v106 = v91;
  v107 = *(v0 + 2216);
  v108 = *(*(v0 + 2088) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_childFlowFactory);

  v109 = v105(v108, v107);

  if (v140[210] == 1)
  {
    sub_267B9AFEC(*(v0 + 2088) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_siriKitEventSender, v0 + 248);
    v108 = *(v0 + 272);
    __swift_project_boxed_opaque_existential_0((v0 + 248), v108);
    swift_getObjCClassFromMetadata();
    OUTLINED_FUNCTION_54();

    result = sub_267BB41B0(v106);
    if (!v111)
    {
      __break(1u);
      return result;
    }

    sub_267EF3B18();
    v144 = 1;
    OUTLINED_FUNCTION_29_25();
    sub_267EF3B08();
    sub_267EF3848();

    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
    if (!v109)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (!v109)
    {
LABEL_22:
      v112 = sub_267EF89F8();
      v113 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_5_2(v113))
      {
        v114 = OUTLINED_FUNCTION_48();
        v115 = OUTLINED_FUNCTION_52();
        v143 = v115;
        *v114 = 136315138;
        *(v114 + 4) = sub_267BA33E8(0xD00000000000002BLL, 0x8000000267F19AF0, &v143);
        OUTLINED_FUNCTION_87_3(&dword_267B93000, v116, v113, "Fatal error: %s");
        __swift_destroy_boxed_opaque_existential_0(v115);
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_32_0();
      }

      return sub_267EF9C98();
    }
  }

  v117 = sub_267EF89F8();
  v118 = sub_267EF95C8();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v119);
    _os_log_impl(&dword_267B93000, v117, v118, "#SendMessageConfirmIntentFlow pushing confirm intent flow", v108, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v120 = *(v0 + 2208);
  v135 = *(v0 + 2200);
  v137 = *(v0 + 2216);
  v121 = *(v0 + 2112);
  v122 = *(v0 + 2104);
  v123 = *(v0 + 2088);

  v124 = OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state;
  swift_beginAccess();
  sub_267E28344(v123 + v124, v121);
  v125 = swift_getEnumCaseMultiPayload() != 4;
  sub_267E28EE0(v121, type metadata accessor for SendMessageConfirmIntentFlow.State);
  *v122 = v125;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3(v123 + v124, v0 + 2032);
  sub_267E283A8(v122, v123 + v124);
  swift_endAccess();
  *(v0 + 2056) = v109;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C768, &qword_267F0B308);
  sub_267E28414();
  OUTLINED_FUNCTION_117_0();
  sub_267EF3FA8();

  (*(v120 + 8))(v137, v135);

  OUTLINED_FUNCTION_17();

  return v126();
}

uint64_t sub_267E25B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C778, &unk_267F0B310);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  swift_storeEnumTagMultiPayload();
  v8 = OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state;
  swift_beginAccess();
  sub_267E283A8(v6, a2 + v8);
  return swift_endAccess();
}

uint64_t sub_267E25C70()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 192) = v0;
  *(v1 + 336) = v2;
  v3 = sub_267EF8B38();
  *(v1 + 200) = v3;
  OUTLINED_FUNCTION_30_0(v3);
  *(v1 + 208) = v4;
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E25D50()
{
  v123 = v0;
  v1 = *(v0[24] + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent);
  v2 = [v1 recipients];
  if (v2)
  {
    v3 = v2;
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v4 = sub_267EF92F8();

    sub_267DEC034(v4);
    LOBYTE(v3) = v5;

    if (v3)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v6 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);
      v7 = sub_267EF89F8();
      v8 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v8))
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  if (sub_267EF96E8())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v9 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
    v7 = sub_267EF89F8();
    v10 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_10_2(v10))
    {
      goto LABEL_55;
    }

    goto LABEL_11;
  }

  v17 = *(v0[24] + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
  v0[32] = v17;
  if (*(v17 + 144))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v18 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
    v7 = sub_267EF89F8();
    v19 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_10_2(v19))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (*(v17 + 16) == 5)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v20 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
    v7 = sub_267EF89F8();
    v21 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_10_2(v21))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (!sub_267D60D8C())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v32 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v32, qword_280240FB0);
    v7 = sub_267EF89F8();
    v33 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_10_2(v33))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v22 = [v1 content];
  if (!v22)
  {
    if (sub_267EF9718())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v34 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v34, qword_280240FB0);
      v7 = sub_267EF89F8();
      v35 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v35))
      {
        goto LABEL_55;
      }

LABEL_11:
      v11 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v11);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_26();
      goto LABEL_55;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v38 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
    v7 = sub_267EF89F8();
    v39 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_10_2(v39))
    {
      goto LABEL_55;
    }

LABEL_54:
    v40 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v40);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v41, v42, v43, v44, v45, 2u);
    OUTLINED_FUNCTION_26();
LABEL_55:

    goto LABEL_56;
  }

  if (*(v17 + 209) != 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v36 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v36, qword_280240FB0);
    v7 = sub_267EF89F8();
    v37 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_10_2(v37))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (!sub_267E241E8() && !sub_267E241F4())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v62 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v62, qword_280240FB0);
    v7 = sub_267EF89F8();
    v63 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_10_2(v63))
    {
      goto LABEL_55;
    }

    goto LABEL_11;
  }

  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v0 + 2);
  v23 = v0[5];
  v24 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v23);
  v25 = (*(v24 + 16))(0x7541737361707942, 0xEE00646E65536F74, v23, v24);
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v29 = v27 == 0xD000000000000010 && v28 == 0x8000000267F1B5B0;
    if (v29 || (OUTLINED_FUNCTION_61_0(), (sub_267EF9EA8() & 1) != 0))
    {

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v30 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v30, qword_280240FB0);
      v7 = sub_267EF89F8();
      v31 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v31))
      {
        goto LABEL_55;
      }

      goto LABEL_11;
    }

    if (v27 == 0x576D7269666E6F63 && v28 == 0xEF72657355687469)
    {

      goto LABEL_86;
    }

    OUTLINED_FUNCTION_61_0();
    v65 = sub_267EF9EA8();

    if (v65)
    {
LABEL_86:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v68 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v68, qword_280240FB0);
      v7 = sub_267EF89F8();
      v69 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v69))
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v48 = *(v17 + 112);
  v0[33] = v48;
  if (!v48)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v66 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v66, qword_280240FB0);
    v7 = sub_267EF89F8();
    v67 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_10_2(v67))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  sub_267EF6FF8();

  if (!sub_267EF6FC8())
  {
LABEL_96:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v78 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v78, qword_280240FB0);
    v79 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v81);
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v82, v83, v84, v85, v86, 2u);
      OUTLINED_FUNCTION_29_1();
    }

LABEL_56:

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X2, X16 }
  }

  v0[34] = sub_267EF6FA8();

  v49 = sub_267EF86A8();
  v0[35] = v49;
  if (!v49)
  {

    goto LABEL_96;
  }

  v50 = v49;
  v51 = sub_267EF8688();
  if (v51 == 2 || (v51 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v70 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v70, qword_280240FB0);
    v71 = sub_267EF89F8();
    v72 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v72))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_64_4();
      _os_log_impl(v73, v74, v75, v76, v77, 2u);
      OUTLINED_FUNCTION_45_2();
    }

    goto LABEL_56;
  }

  __swift_project_boxed_opaque_existential_0((v0[24] + 16), *(v0[24] + 40));
  v52 = OUTLINED_FUNCTION_10_0();
  v53(v52);
  __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_10_0();
  v54 = sub_267EF3B58();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (v54)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v55 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v55, qword_280240FB0);
    v7 = sub_267EF89F8();
    v56 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v56))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_64_4();
      _os_log_impl(v57, v58, v59, v60, v61, 2u);
      OUTLINED_FUNCTION_45_2();
    }

    goto LABEL_55;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v87 = sub_267EF8A08();
  v0[36] = OUTLINED_FUNCTION_30_1(v87, qword_280240FB0);

  v88 = sub_267EF89F8();
  v89 = sub_267EF95D8();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *v90 = 136315650;
    v0[20] = sub_267EF8678();
    v0[21] = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v92 = sub_267EF9098();
    sub_267BA33E8(v92, v93, &v122);
    OUTLINED_FUNCTION_94_10();

    *(v90 + 4) = v89;
    *(v90 + 12) = 2080;
    v0[22] = sub_267EF86C8();
    v0[23] = v94;
    v95 = sub_267EF9098();
    sub_267BA33E8(v95, v96, &v122);
    OUTLINED_FUNCTION_94_10();

    *(v90 + 14) = v89;
    *(v90 + 22) = 1024;
    *(v90 + 24) = 1;
    _os_log_impl(&dword_267B93000, v88, v89, "#SendMessageConfirmIntentFlow reqId: %s rcId: %s, asrOnDevice: %{BOOL}d", v90, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v97 = [v1 recipients];
  if (!v97)
  {
    goto LABEL_115;
  }

  v98 = v97;
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v99 = sub_267EF92F8();

  if (sub_267BAF0DC(v99) != 1)
  {

    goto LABEL_115;
  }

  v100 = sub_267C8F008(v99);

  if (!v100)
  {
LABEL_115:
    v106 = 0;
    goto LABEL_116;
  }

  v101 = sub_267DE9B04();
  v103 = v102;
  OUTLINED_FUNCTION_85_12(v17 + 192);
  v104 = *(v17 + 192);

  sub_267C8EB98(v101, v103, v104);
  v106 = v105;

  if (v106)
  {
  }

  swift_bridgeObjectRetain_n();
  v107 = sub_267EF89F8();
  v108 = sub_267EF95C8();

  v120 = v108;
  v121 = v107;
  if (os_log_type_enabled(v107, v108))
  {
    v109 = OUTLINED_FUNCTION_48();
    v119 = OUTLINED_FUNCTION_52();
    v122 = v119;
    *v109 = 136315138;
    if (!v106)
    {
      sub_267EF8F28();
    }

    v110 = sub_267EF8F08();
    v112 = v111;

    sub_267BA33E8(v110, v112, &v122);
    OUTLINED_FUNCTION_94_10();

    *(v109 + 4) = v110;
    _os_log_impl(&dword_267B93000, v121, v120, "#SendMessageConfirmIntentFlow: retrieved recipient CRR signals %s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

LABEL_116:
  v0[37] = v106;
  sub_267EF8678();
  v0[38] = v113;
  sub_267EF86C8();
  v0[39] = v114;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[40] = v115;
  *v115 = v116;
  v115[1] = sub_267E26BCC;
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_89();

  return sub_267DE7BE0();
}

uint64_t sub_267E26BCC()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (v0)
  {

    v7 = sub_267E271B4;
  }

  else
  {
    v7 = sub_267E26D30;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E26D30()
{
  v51 = v1;
  v2 = *(v1 + 336);
  (*(*(v1 + 208) + 32))(*(v1 + 248), *(v1 + 240), *(v1 + 200));
  if (v2 == 1)
  {
    *(*(*(*(v1 + 256) + 216) + 16) + 33) = 1;
  }

  v3 = *(v1 + 248);
  v4 = *(v1 + 232);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  *(*(v1 + 256) + 209) = 0;
  v7 = *(v6 + 16);
  v7(v4, v3, v5);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95C8();
  v10 = OUTLINED_FUNCTION_10_2(v9);
  v11 = *(v1 + 232);
  if (v10)
  {
    v13 = *(v1 + 200);
    v12 = *(v1 + 208);
    OUTLINED_FUNCTION_48();
    v48 = OUTLINED_FUNCTION_64_2();
    v50 = v48;
    *v0 = 136315138;
    v14 = OUTLINED_FUNCTION_76_11();
    (v7)(v14);
    v15 = sub_267EF9098();
    v49 = v7;
    v17 = v16;
    v18 = v13;
    v19 = *(v12 + 8);
    v19(v11, v18);
    v20 = sub_267BA33E8(v15, v17, &v50);
    v7 = v49;

    *(v0 + 4) = v20;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  else
  {
    v26 = *(v1 + 200);
    v27 = *(v1 + 208);

    v19 = *(v27 + 8);
    v19(v11, v26);
  }

  v7(*(v1 + 216), *(v1 + 248), *(v1 + 200));
  v28 = OUTLINED_FUNCTION_66();
  if (v29(v28) != *MEMORY[0x277D55960])
  {
    v37 = *(v1 + 216);
    v38 = *(v1 + 200);

    v19(v37, v38);
    if (sub_267E241F4())
    {
      v39 = sub_267EF89F8();
      v40 = sub_267EF95C8();
      v41 = OUTLINED_FUNCTION_5_2(v40);
      v42 = *(v1 + 280);
      if (v41)
      {
        v43 = OUTLINED_FUNCTION_32();
        *v43 = 0;
        _os_log_impl(&dword_267B93000, v39, v40, "#SendMessageConfirmIntentFlow shadowlogging locale is autosendable", v43, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      else
      {
      }

      v44 = OUTLINED_FUNCTION_26_0();
      (v19)(v44);
    }

    else
    {
      v45 = *(v1 + 280);
      v19(*(v1 + 248), *(v1 + 200));
    }

LABEL_15:

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X2, X16 }
  }

  v30 = *(v1 + 192);
  v19(*(v1 + 216), *(v1 + 200));
  sub_267B9AFEC(v30 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_siriKitEventSender, v1 + 96);
  __swift_project_boxed_opaque_existential_0((v1 + 96), *(v1 + 120));
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v33)
  {
    v34 = *(v1 + 280);
    v35 = *(v1 + 248);
    v36 = *(v1 + 200);

    sub_267EF3B18();
    OUTLINED_FUNCTION_29_25();
    sub_267EF3B08();
    sub_267EF3848();

    v19(v35, v36);
    __swift_destroy_boxed_opaque_existential_0((v1 + 96));
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_267E271B4()
{
  v1 = v0[41];
  v2 = v1;
  v3 = sub_267EF89F8();
  v4 = sub_267EF95E8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[41];
  v7 = v0[35];
  if (v5)
  {
    v8 = OUTLINED_FUNCTION_48();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_64_4();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_267B9F98C(v9, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_45_2();
  }

  else
  {
  }

  *(v0[32] + 209) = 0;

  OUTLINED_FUNCTION_4_3();

  return v17(1);
}

uint64_t sub_267E27360()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_28022C758, &qword_267F0EDF0);
  v3 = OUTLINED_FUNCTION_18(v2);
  MEMORY[0x28223BE20](v3);
  v5 = (&v74 - v4);
  v6 = sub_267EF7168();
  OUTLINED_FUNCTION_23();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v13);
  v15 = &v74 - v14;
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v16 = OUTLINED_FUNCTION_10_0();
  v17(v16);
  __swift_project_boxed_opaque_existential_0(v80, v81);
  if (sub_267DBF878())
  {
    __swift_destroy_boxed_opaque_existential_0(v80);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_9_45();
  v18 = OUTLINED_FUNCTION_10_0();
  v19(v18);
  __swift_project_boxed_opaque_existential_0(v78, v79);
  OUTLINED_FUNCTION_10_0();
  v20 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0(v78);
  __swift_destroy_boxed_opaque_existential_0(v80);
  if (v20)
  {
LABEL_5:
    OUTLINED_FUNCTION_9_45();
    v25 = OUTLINED_FUNCTION_10_0();
    v26(v25);
    __swift_project_boxed_opaque_existential_0(v80, v81);
    OUTLINED_FUNCTION_10_0();
    if (sub_267EF3B58())
    {
      __swift_destroy_boxed_opaque_existential_0(v80);
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_9_45();
    v27 = OUTLINED_FUNCTION_10_0();
    v28(v27);
    __swift_project_boxed_opaque_existential_0(v78, v79);
    OUTLINED_FUNCTION_10_0();
    v29 = sub_267EF3C28();
    __swift_destroy_boxed_opaque_existential_0(v78);
    __swift_destroy_boxed_opaque_existential_0(v80);
    if (v29)
    {
      goto LABEL_20;
    }

    sub_267EF6FF8();
    if (sub_267EF6FC8())
    {
      sub_267EF6FA8();
      OUTLINED_FUNCTION_94_10();

      sub_267EF86B8();

      OUTLINED_FUNCTION_5_1(v5, 1, v6);
      if (!v30)
      {
        OUTLINED_FUNCTION_97_12();
        v31();
        sub_267EF7128();
        v32 = sub_267EF7158();
        v5 = *(v8 + 8);
        v33 = OUTLINED_FUNCTION_89_0();
        v5(v33);
        if (v32 & 1) != 0 || (sub_267EF7138(), v34 = sub_267EF7158(), v35 = OUTLINED_FUNCTION_89_0(), v5(v35), (v34) || (sub_267EF7148(), v36 = sub_267EF7158(), v37 = OUTLINED_FUNCTION_89_0(), v5(v37), (v36))
        {
          v77 = v5;
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v38 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
          v39 = *(v8 + 16);
          (v39)(v12, v15, v6);
          v40 = sub_267EF89F8();
          v41 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_5_2(v41))
          {
            v42 = OUTLINED_FUNCTION_48();
            v76 = v41;
            v43 = v42;
            v75 = OUTLINED_FUNCTION_52();
            v80[0] = v75;
            *v43 = 136315138;
            OUTLINED_FUNCTION_288();
            v39();
            OUTLINED_FUNCTION_89_0();
            v44 = sub_267EF9098();
            v46 = v45;
            v5 = v77;
            (v77)(v12, v6);
            v47 = sub_267BA33E8(v44, v46, v80);

            *(v43 + 4) = v47;
            _os_log_impl(&dword_267B93000, v40, v76, "#SendMessageConfirmIntentFlow audio destination is %s", v43, 0xCu);
            OUTLINED_FUNCTION_11_42();
            OUTLINED_FUNCTION_32_0();
          }

          else
          {

            v5 = v77;
            (v77)(v12, v6);
          }

          v71 = (v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences);
          v72 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences + 24);
          v73 = v71[4];
          __swift_project_boxed_opaque_existential_0(v71, v72);
          v53 = (*(v73 + 32))(v72, v73);
          (v5)(v15, v6);
          goto LABEL_21;
        }

        (v5)(v15, v6);
LABEL_19:
        OUTLINED_FUNCTION_106_5((v1 + 16));
        v48 = OUTLINED_FUNCTION_16_1();
        v49(v48);
        v50 = v81;
        OUTLINED_FUNCTION_13_37(v80);
        sub_267DBF878();
        OUTLINED_FUNCTION_104_8();
        if ((v50 & 1) == 0)
        {
          OUTLINED_FUNCTION_106_5((v1 + 16));
          v60 = OUTLINED_FUNCTION_16_1();
          v61(v60);
          v6 = v81;
          __swift_project_boxed_opaque_existential_0(v80, v81);
          OUTLINED_FUNCTION_16_1();
          sub_267EF3C48();
          OUTLINED_FUNCTION_104_8();
          v53 = 0;
          goto LABEL_21;
        }

LABEL_20:
        v6 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences + 32);
        __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences), *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences + 24));
        v51 = OUTLINED_FUNCTION_38_0();
        v53 = v52(v51);
LABEL_21:
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v54 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);
        v55 = sub_267EF89F8();
        v56 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_5_2(v56))
        {
          OUTLINED_FUNCTION_48();
          v80[0] = OUTLINED_FUNCTION_64_2();
          *v6 = 136446210;
          if (v53)
          {
            v57 = 0x64656C62616E65;
          }

          else
          {
            v57 = 0x64656C6261736964;
          }

          if (v53)
          {
            v58 = 0xE700000000000000;
          }

          else
          {
            v58 = 0xE800000000000000;
          }

          sub_267BA33E8(v57, v58, v80);
          OUTLINED_FUNCTION_105_11();
          *(v6 + 4) = v5;
          _os_log_impl(&dword_267B93000, v55, v56, "#SendMessageConfirmIntentFlow AutoSend setting is %{public}s", v6, 0xCu);
          OUTLINED_FUNCTION_11_42();
          OUTLINED_FUNCTION_26();
        }

        return v53 & 1;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    }

    sub_267B9F98C(v5, &dword_28022C758, &qword_267F0EDF0);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_9_45();
  v21 = OUTLINED_FUNCTION_10_0();
  v22(v21);
  __swift_project_boxed_opaque_existential_0(v80, v81);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3C28();
  OUTLINED_FUNCTION_104_8();
  OUTLINED_FUNCTION_9_45();
  v23 = OUTLINED_FUNCTION_10_0();
  v24(v23);
  __swift_project_boxed_opaque_existential_0(v80, v81);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3B58();
  OUTLINED_FUNCTION_104_8();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v62 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v62, qword_280240FB0);
  v63 = sub_267EF89F8();
  v64 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_36(v64))
  {
    v65 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v65);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v66, v67, v68, v69, v70, 2u);
    OUTLINED_FUNCTION_26();
  }

  v53 = 0;
  return v53 & 1;
}