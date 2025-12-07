id *sub_27596C710@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_27596BC34(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_27596C7F8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2[13] = swift_task_alloc();
  v3 = sub_2759B8C48();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27596C914, 0, 0);
}

uint64_t sub_27596C914()
{
  v69 = v0;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "AnalyticsAction: performing action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[12];

  v6 = *(v5 + 16);
  if (!v6)
  {
    v14 = sub_2759B8988();
    v15 = sub_2759BA648();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_275819000, v14, v15, "AnalyticsAction: missing analytics controller", v16, 2u);
      MEMORY[0x277C85860](v16, -1, -1);
    }

    goto LABEL_30;
  }

  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[12];
  v10 = *(v6 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController);
  v11 = OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_actionType;
  swift_beginAccess();
  v12 = *(v7 + 48);
  if (v12(v9 + v11, 1, v8))
  {
    v13 = v10;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v17 = v0[15];
    (*(v17 + 16))(v0[19], v9 + v11, v0[14]);
    v18 = v10;
    v35 = sub_2759B8C38();
    v37 = v36;
    (*(v17 + 8))(v0[19], v0[14]);
    v20 = v37;
    v19 = v35;
  }

  v21 = v0[14];
  v22 = v0[12];
  v65 = sub_2759364F0(v19, v20);
  v64 = v23;
  v24 = OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_targetViewID;
  swift_beginAccess();
  if (v12(v22 + v24, 1, v21))
  {
    goto LABEL_13;
  }

  (*(v0[15] + 16))(v0[18], v22 + v24, v0[14]);
  v25 = sub_2759B8C38();
  v39 = v38;
  (*(v0[15] + 8))(v0[18], v0[14]);
  if (v25 == 0x7453656E6F685069 && v39 == 0xED0000656761726FLL || (sub_2759BAAC8() & 1) != 0)
  {

    v26 = 10;
    v66 = 7;
    goto LABEL_14;
  }

  if (v25 != 0x656C694677656956 || v39 != 0xE900000000000073)
  {
    v62 = sub_2759BAAC8();

    if (v62)
    {
      goto LABEL_38;
    }

LABEL_13:
    v66 = 0;
    v26 = -1;
    goto LABEL_14;
  }

LABEL_38:
  v26 = 10;
  v66 = 11;
LABEL_14:
  v27 = v0[14];
  v28 = v0[12];
  v29 = OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_componentID;
  swift_beginAccess();
  if (v12(v28 + v29, 1, v27))
  {
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  else
  {
    v32 = v0[15];
    (*(v32 + 16))(v0[17], v28 + v29, v0[14]);
    v33 = sub_2759B8C38();
    v34 = (v32 + 8);
    v41 = v40;
    v42 = v33;
    (*v34)(v0[17], v0[14]);
    v30 = v42;
    v31 = v41;
  }

  v43 = v0[15];
  v44 = v0[16];
  v45 = v0[14];
  v46 = v0[12];
  ICSAnalyticsComponentID.init(rawValue:)(*&v30);
  v47 = v67[0];
  (*(v43 + 16))(v44, v46 + OBJC_IVAR____TtC14iCloudSettings24SendAnalyticsEventAction_event, v45);
  sub_2759B8C38();
  (*(v0[15] + 8))(v0[16], v0[14]);
  v48 = sub_2759BAA48();

  if (v48 <= 2)
  {
    if (*(v0[12] + 24))
    {
      v49 = v0[13];
      sub_275920694(v67);
      v50 = v67[0];
      v51 = v67[1];
      v63 = v47;
      v52 = v10;
      v53 = v68;
      sub_2759BA4D8();
      v54 = sub_2759BA518();
      (*(*(v54 - 8) + 56))(v49, 0, 1, v54);
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      *(v56 + 16) = 0;
      *(v56 + 24) = 0;
      *(v56 + 32) = v55;
      *(v56 + 40) = v50;
      *(v56 + 48) = v51;
      *(v56 + 56) = v53;
      *(v56 + 57) = v63;
      *(v56 + 58) = v48;
      *(v56 + 64) = v65;
      *(v56 + 72) = v64 & 1;
      *(v56 + 80) = v66;
      *(v56 + 88) = 0;
      *(v56 + 96) = v26;
      sub_27591E640(v50, v51, v53);
      sub_27596D15C(v66, 0, v26);
      sub_275931D20(0, 0, v49, &unk_2759C4530, v56);

      sub_27596D148(v66, 0, v26);
      sub_27589F7F0(v50, v51, v53);
      sub_27586BF04(v49, &unk_280A0E510, &qword_2759C33C0);
      goto LABEL_31;
    }

    sub_27596D148(v66, 0, v26);
    v14 = sub_2759B8988();
    v57 = sub_2759BA648();
    if (!os_log_type_enabled(v14, v57))
    {
      goto LABEL_29;
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "AnalyticsAction: unable to resolve viewID";
    goto LABEL_28;
  }

  sub_27596D148(v66, 0, v26);
  v14 = sub_2759B8988();
  v57 = sub_2759BA648();
  if (os_log_type_enabled(v14, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "AnalyticsAction: unable to resolve event";
LABEL_28:
    _os_log_impl(&dword_275819000, v14, v57, v59, v58, 2u);
    MEMORY[0x277C85860](v58, -1, -1);
  }

LABEL_29:

LABEL_30:
LABEL_31:

  v60 = v0[1];

  return v60();
}

double sub_27596D148(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_27589F7F0(a1, a2, a3);
  }

  return result;
}

uint64_t sub_27596D15C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_27591E640(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_27596D170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11E20;
  if (!qword_280A11E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E20);
  }

  return result;
}

uint64_t sub_27596D1C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27596D220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11E28;
  if (!qword_280A11E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E28);
  }

  return result;
}

unint64_t sub_27596D278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11E30;
  if (!qword_280A11E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E30);
  }

  return result;
}

unint64_t sub_27596D2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11E38;
  if (!qword_280A11E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E38);
  }

  return result;
}

unint64_t sub_27596D324(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_27596D370()
{

  return swift_deallocClassInstance();
}

void sub_27596D3E4(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v22[7] = a3;
  v7 = *(v4 + 24);
  sub_27586E058(a1, &v20);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      sub_27586E058(v10, &v18);
      __swift_project_boxed_opaque_existential_1(&v18, v19);
      sub_2759B8B28();
      if (v5)
      {
        break;
      }

      ++v9;
      __swift_destroy_boxed_opaque_existential_1(&v20);
      __swift_destroy_boxed_opaque_existential_1(&v18);
      sub_275827D1C(&v17, &v20);
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v20);

    v15 = &v18;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
LABEL_6:

    sub_275827D1C(&v20, v22);
    v11 = *(v16 + 32);
    sub_27586E058(v22, a4);
    v12 = *(v11 + 16);

    if (v12)
    {
      v13 = 0;
      v14 = v11 + 32;
      while (v13 < *(v11 + 16))
      {
        sub_27586E058(v14, &v20);
        __swift_project_boxed_opaque_existential_1(&v20, v21);
        sub_2759B8B28();
        if (v5)
        {

          __swift_destroy_boxed_opaque_existential_1(a4);
          __swift_destroy_boxed_opaque_existential_1(v22);
          v15 = &v20;
          goto LABEL_14;
        }

        ++v13;
        __swift_destroy_boxed_opaque_existential_1(a4);
        __swift_destroy_boxed_opaque_existential_1(&v20);
        sub_275827D1C(&v18, a4);
        v14 += 40;
        if (v12 == v13)
        {
          goto LABEL_11;
        }
      }

LABEL_16:
      __break(1u);
    }

    else
    {
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(v22);
    }
  }
}

uint64_t sub_27596D5F4(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_27596D618, 0, 0);
}

uint64_t sub_27596D618()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  v0[21] = __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Disabling Siri cloud sync.", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[20];

  v6 = *(v5 + 16);
  v0[2] = v0;
  v0[3] = sub_27596D7E4;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11E50, &unk_2759D0FD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_27596DB7C;
  v0[13] = &block_descriptor_16;
  v0[14] = v7;
  [v6 disableAndDeleteCloudSyncWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27596D7E4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_27596D9C4;
  }

  else
  {
    v2 = sub_27596D8F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27596D8F4()
{
  v1 = *(v0 + 176) != 0;

  sub_2759BA438();

  sub_27595211C(0, v1, sub_27594A594);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27596D9C4(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();
  v3 = v2;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_275819000, v4, v5, "Unable to disable siri: %@", v7, 0xCu);
    sub_275875554(v8);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v11 = *(v1 + 176);

  v12 = v11;
  v13 = *(v1 + 176) != 0;

  sub_2759BA438();

  sub_27595211C(v11, v13, sub_27594A594);

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_27596DB7C(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x282200958](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_27596DC28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F7272456E6FLL;
  }

  else
  {
    v3 = 0x656C706D6F436E6FLL;
  }

  if (v2)
  {
    v4 = 0xEC0000006E6F6974;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F7272456E6FLL;
  }

  else
  {
    v5 = 0x656C706D6F436E6FLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEC0000006E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2759BAAC8();
  }

  return v8 & 1;
}

uint64_t sub_27596DCD8()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_27596DD64(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_27596DDDC(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

void sub_27596DE64(char *a2@<X8>)
{
  v3 = sub_2759BAA48();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_27596DEC4(uint64_t *a1@<X8>)
{
  v2 = 0x656C706D6F436E6FLL;
  if (*v1)
  {
    v2 = 0x726F7272456E6FLL;
  }

  v3 = 0xEC0000006E6F6974;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_27596DF0C()
{
  if (*v0)
  {
    return 0x726F7272456E6FLL;
  }

  else
  {
    return 0x656C706D6F436E6FLL;
  }
}

void sub_27596DF50(char *a3@<X8>)
{
  v4 = sub_2759BAA48();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_27596DFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27596E888(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_27596DFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27596E888(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t *sub_27596E02C(void *a1)
{
  v2 = v1;
  v58 = *v1;
  v4 = sub_2759B8BD8();
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11E58, &unk_2759CDF90);
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v48 - v8;
  v1[2] = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27596E888(v10, v11, v12);
  v13 = v61;
  sub_2759BAC18();
  v14 = v13;
  if (v13)
  {

LABEL_4:
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v61 = v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v63) = 0;
  v16 = sub_2758C7304();
  sub_2759BAA68();
  v53 = v16;
  v54 = v15;
  v55 = v9;
  v18 = MEMORY[0x277D84F90];
  if (*&v62[0])
  {
    v19 = *&v62[0];
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v20 = *(v19 + 16);
  if (v20)
  {
    v49 = v7;
    v50 = 0;
    v51 = a1;
    v52 = v1;
    v63 = MEMORY[0x277D84F90];
    v21 = v19;
    sub_2759509B0(0, v20, 0);
    v22 = v63;
    v23 = *(v56 + 16);
    v24 = *(v56 + 80);
    v48[1] = v21;
    v25 = v21 + ((v24 + 32) & ~v24);
    v59 = *(v56 + 72);
    v60 = v23;
    v26 = (v56 + 8);
    do
    {
      v27 = v61;
      v60(v6, v25, v61);
      sub_2759B8BC8();
      (*v26)(v6, v27);
      v63 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2759509B0((v28 > 1), v29 + 1, 1);
        v22 = v63;
      }

      *(v22 + 16) = v29 + 1;
      sub_275827D1C(v62, v22 + 40 * v29 + 32);
      v25 += v59;
      --v20;
    }

    while (v20);

    a1 = v51;
    v2 = v52;
    v30 = v49;
    v14 = v50;
    v31 = v57;
    v18 = MEMORY[0x277D84F90];
  }

  else
  {

    v30 = v7;
    v22 = MEMORY[0x277D84F90];
    v31 = v57;
  }

  v2[3] = v22;
  LOBYTE(v63) = 1;
  v32 = v55;
  sub_2759BAA68();
  v33 = v30;
  if (v14)
  {
    (*(v31 + 8))(v32, v30);

    goto LABEL_4;
  }

  if (*&v62[0])
  {
    v34 = *&v62[0];
  }

  else
  {
    v34 = v18;
  }

  v35 = *(v34 + 16);
  if (v35)
  {
    v49 = v33;
    v50 = 0;
    v51 = a1;
    v52 = v2;
    v63 = v18;
    v36 = v34;
    sub_2759509B0(0, v35, 0);
    v37 = v63;
    v38 = v56 + 16;
    v39 = *(v56 + 16);
    v40 = *(v56 + 80);
    v58 = v36;
    v41 = v36 + ((v40 + 32) & ~v40);
    v59 = *(v56 + 72);
    v60 = v39;
    v42 = (v56 + 8);
    do
    {
      v43 = v61;
      v44 = v38;
      v60(v6, v41, v61);
      sub_2759B8BC8();
      (*v42)(v6, v43);
      v63 = v37;
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_2759509B0((v45 > 1), v46 + 1, 1);
        v37 = v63;
      }

      *(v37 + 16) = v46 + 1;
      sub_275827D1C(v62, v37 + 40 * v46 + 32);
      v41 += v59;
      --v35;
      v38 = v44;
    }

    while (v35);
    (*(v57 + 8))(v55, v49);

    a1 = v51;
    v2 = v52;
  }

  else
  {
    v47 = v33;

    (*(v31 + 8))(v32, v47);
    v37 = MEMORY[0x277D84F90];
  }

  v2[4] = v37;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_27596E5AC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_27596E618(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return sub_27596D5F4(a1, a2);
}

uint64_t *sub_27596E774@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_27596E02C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_27596E888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11E60;
  if (!qword_280A11E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E60);
  }

  return result;
}

uint64_t sub_27596E8DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27596E938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11E68;
  if (!qword_280A11E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E68);
  }

  return result;
}

unint64_t sub_27596E990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11E70;
  if (!qword_280A11E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E70);
  }

  return result;
}

unint64_t sub_27596E9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11E78;
  if (!qword_280A11E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E78);
  }

  return result;
}

uint64_t sub_27596EA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_27589F2D4(a1, a2, a3);

  result = sub_2759B99C8();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_27596EAD4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  return sub_2759B9DB8();
}

unint64_t sub_27596EBC8()
{
  result = qword_280A107A8;
  if (!qword_280A107A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10798, &qword_2759C7400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A107A8);
  }

  return result;
}

uint64_t sub_27596EC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27596ECA8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_27596ECA8()
{
  result = qword_280A11E80;
  if (!qword_280A11E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11E88, qword_2759CE200);
    sub_27596ED2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11E80);
  }

  return result;
}

unint64_t sub_27596ED2C()
{
  result = qword_280A11E90[0];
  if (!qword_280A11E90[0])
  {
    sub_27596ED84();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A11E90);
  }

  return result;
}

unint64_t sub_27596ED84()
{
  result = qword_280A0EFC8;
  if (!qword_280A0EFC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0EFC8);
  }

  return result;
}

uint64_t sub_27596EED4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 120) + **(a2 + 120));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585F7A0;

  return v7(a1, a2);
}

uint64_t sub_27596F000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2759B95D8();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_2759B95E8();
}

uint64_t sub_27596F0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2759B95D8();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_2759B95E8();
}

uint64_t sub_27596F1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2759B8E68();
  MEMORY[0x28223BE20](v16);
  (*(v13 + 16))(v15, v7, a3);
  sub_2759B8E78();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return sub_2759B8FF8();
}

id sub_27596F398()
{
  v0 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v1 = sub_2759BA258();
  v2 = [v0 initWithType_];

  return v2;
}

uint64_t sub_27596F404@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SixPackCard(0);
  sub_27586FBC8(v1 + *(v10 + 20), v9, &qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B8DA8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_27596F60C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SixPackCard(0);
  sub_27586FBC8(v1 + *(v10 + 28), v9, &qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B94D8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_27596F814@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v50 = sub_2759B8DA8();
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SixPackButtonStyle(0);
  MEMORY[0x28223BE20](v44);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SixPackCard(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = v7;
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12028, &qword_2759CE488);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12030, &qword_2759CE490);
  v14 = *(v13 - 8);
  v46 = v13;
  v47 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12038, &qword_2759CE498);
  MEMORY[0x28223BE20](v48);
  v43 = &v37 - v17;
  v38 = v1;
  v41 = type metadata accessor for SixPackCard;
  v42 = v8;
  sub_27597FCCC(v1, v8, type metadata accessor for SixPackCard);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_27597FC64(v8, v19 + v18, type metadata accessor for SixPackCard);
  v53 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12040, &qword_2759CE4A0);
  sub_27597E538();
  sub_2759B9DB8();
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  v20 = sub_27589B02C(&qword_280A120C0, &qword_280A12028, &qword_2759CE488, MEMORY[0x277CDF028]);
  v21 = sub_27597E8D8(&qword_280A120C8, type metadata accessor for SixPackButtonStyle, &unk_2759CE7D8);
  v22 = v39;
  v23 = v44;
  sub_2759B9A78();
  sub_27597E920(v4, type metadata accessor for SixPackButtonStyle);
  (*(v40 + 8))(v12, v22);
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  sub_2759BA8C8();

  strcpy(v54, "six-pack-card-");
  HIBYTE(v54[1]) = -18;
  v24 = v38;
  v25 = *(v38 + 8);
  ObjectType = swift_getObjectType();
  v27 = (*(v25 + 16))(ObjectType, v25);
  MEMORY[0x277C840E0](v27);

  v54[0] = v22;
  v54[1] = v23;
  v54[2] = v20;
  v54[3] = v21;
  swift_getOpaqueTypeConformance2();
  v28 = v43;
  v29 = v46;
  sub_2759B9B38();

  (*(v47 + 8))(v16, v29);
  v30 = v49;
  sub_27596F404(v49);
  v32 = v41;
  v31 = v42;
  sub_27597FCCC(v24, v42, v41);
  v33 = swift_allocObject();
  sub_27597FC64(v31, v33 + v18, v32);
  sub_27597EC6C();
  sub_27597E8D8(&qword_280A120D8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F8]);
  v34 = v30;
  v35 = v50;
  sub_2759B9B88();

  (*(v52 + 8))(v34, v35);
  return sub_27586BF04(v28, &qword_280A12038, &qword_2759CE498);
}

double sub_27596FEAC(uint64_t a1)
{
  v2 = type metadata accessor for SixPackCard(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2759BA518();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_27597FCCC(a1, v5, type metadata accessor for SixPackCard);
  sub_2759BA4C8();
  v10 = sub_2759BA4B8();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_27597FC64(v5, v12 + v11, type metadata accessor for SixPackCard);
  sub_27587D460(0, 0, v8, &unk_2759CE728, v12);

  return result;
}

uint64_t sub_275970080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2759BA4C8();
  v4[3] = sub_2759BA4B8();
  v6 = sub_2759BA468();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_275970118, v6, v5);
}

uint64_t sub_275970118()
{
  v1 = *(*(v0 + 16) + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 120) + **(v1 + 120));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_27597023C;

  return v5(ObjectType, v1);
}

uint64_t sub_27597023C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_27588B68C, v3, v2);
}

uint64_t sub_27597035C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12098, &qword_2759CE4C8);
  MEMORY[0x28223BE20](v73);
  v4 = &v69 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A120E0, &qword_2759CE4E0);
  MEMORY[0x28223BE20](v71);
  v72 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A120E8, &qword_2759CE4E8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v69 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v69 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12058, &qword_2759CE4A8);
  MEMORY[0x28223BE20](v70);
  v12 = &v69 - v11;
  v13 = sub_2759B94D8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v69 - v18;
  sub_27596F60C(&v69 - v18);
  (*(v14 + 104))(v17, *MEMORY[0x277CE0280], v13);
  v20 = sub_2758B2220(v19, v17);
  v21 = *(v14 + 8);
  v21(v17, v13);
  v21(v19, v13);
  if (v20)
  {
    *v12 = sub_2759B9418();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A120F8, &qword_2759CE4F8) + 44)];
    *v10 = sub_2759B94F8();
    *(v10 + 1) = 0x4000000000000000;
    v10[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12100, &qword_2759CE500);
    sub_275972458(a1, &v10[*(v23 + 44)]);
    v24 = v69;
    sub_27586FBC8(v10, v69, &qword_280A120E8, &qword_2759CE4E8);
    sub_27586FBC8(v24, v22, &qword_280A120E8, &qword_2759CE4E8);
    v25 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12108, &qword_2759CE508) + 48);
    *v25 = 0;
    *(v25 + 8) = 1;
    sub_27586BF04(v10, &qword_280A120E8, &qword_2759CE4E8);
    sub_27586BF04(v24, &qword_280A120E8, &qword_2759CE4E8);
    LOBYTE(v22) = sub_2759B9808();
    sub_2759B8D78();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12078, &qword_2759CE4B8) + 36)];
    *v34 = v22;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    LOBYTE(v22) = sub_2759B9818();
    sub_2759B8D78();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12068, &qword_2759CE4B0) + 36)];
    *v43 = v22;
    *(v43 + 1) = v36;
    *(v43 + 2) = v38;
    *(v43 + 3) = v40;
    *(v43 + 4) = v42;
    v43[40] = 0;
    LOBYTE(v22) = sub_2759B97F8();
    sub_2759B8D78();
    v44 = &v12[*(v70 + 36)];
    *v44 = v22;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    sub_27586FBC8(v12, v72, &qword_280A12058, &qword_2759CE4A8);
    swift_storeEnumTagMultiPayload();
    sub_27597E5C4();
    sub_27597E794();
    sub_2759B95E8();
    return sub_27586BF04(v12, &qword_280A12058, &qword_2759CE4A8);
  }

  else
  {
    v51 = v72;
    v50 = v73;
    if (qword_280A0E328 != -1)
    {
      swift_once();
    }

    *v4 = qword_280A23890;
    *(v4 + 1) = 0;
    v4[16] = 1;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A120F0, &qword_2759CE4F0);
    sub_275970A28(a1, &v4[*(v52 + 44)]);
    v53 = sub_2759B9808();
    sub_2759B8D78();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A120A8, &qword_2759CE4D0) + 36)];
    *v62 = v53;
    *(v62 + 1) = v55;
    *(v62 + 2) = v57;
    *(v62 + 3) = v59;
    *(v62 + 4) = v61;
    v62[40] = 0;
    v63 = sub_2759B9818();
    sub_2759B8D78();
    v64 = &v4[*(v50 + 36)];
    *v64 = v63;
    *(v64 + 1) = v65;
    *(v64 + 2) = v66;
    *(v64 + 3) = v67;
    *(v64 + 4) = v68;
    v64[40] = 0;
    sub_27586FBC8(v4, v51, &qword_280A12098, &qword_2759CE4C8);
    swift_storeEnumTagMultiPayload();
    sub_27597E5C4();
    sub_27597E794();
    sub_2759B95E8();
    return sub_27586BF04(v4, &qword_280A12098, &qword_2759CE4C8);
  }
}

uint64_t sub_2759709A0(void *a1)
{
  v1 = a1[1];
  ObjectType = swift_getObjectType();
  (*(v1 + 128))(ObjectType, v1);
  (*(v1 + 96))(0, ObjectType, v1);
  return (*(v1 + 112))(ObjectType, v1);
}

uint64_t sub_275970A28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12248, &qword_2759CE650);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v78 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = (&v63 - v6);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12250, &qword_2759CE658);
  MEMORY[0x28223BE20](v66);
  v67 = &v63 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12258, &qword_2759CE660);
  MEMORY[0x28223BE20](v74);
  v68 = &v63 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12260, &qword_2759CE668);
  MEMORY[0x28223BE20](v70);
  v69 = &v63 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12268, &qword_2759CE670);
  MEMORY[0x28223BE20](v71);
  v73 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12270, &qword_2759CE678);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12278, &qword_2759CE680);
  MEMORY[0x28223BE20](v72);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12148, &qword_2759CE560);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12280, &qword_2759CE688);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v76 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  v24 = a1;
  v25 = a1[1];
  ObjectType = swift_getObjectType();
  if ((*(v25 + 40))(ObjectType, v25))
  {
    sub_2759B8E88();
    v27 = sub_275971484();
    v28 = &v18[*(v16 + 36)];
    *v28 = v27;
    *(v28 + 1) = v29;
    *(v28 + 2) = 0xD000000000000010;
    *(v28 + 3) = 0x80000002759E2C50;
    v28[32] = 1;
    sub_27586FBC8(v18, v13, &qword_280A12148, &qword_2759CE560);
    swift_storeEnumTagMultiPayload();
    sub_27597F238();
    sub_27597F6A0();
    sub_2759B95E8();
    sub_27586FBC8(v15, v73, &qword_280A12278, &qword_2759CE680);
    swift_storeEnumTagMultiPayload();
    sub_27597F758();
    sub_27597F7E4();
    sub_2759B95E8();
    sub_27586BF04(v15, &qword_280A12278, &qword_2759CE680);
    sub_27586BF04(v18, &qword_280A12148, &qword_2759CE560);
    v30 = v24;
    v31 = v23;
  }

  else
  {
    v64 = v16;
    v65 = v23;
    v63 = v24;
    v32 = (*(v25 + 56))(ObjectType, v25);
    if (v32)
    {
      v33 = *(v25 + 64);
      v68 = v32;
      v33(ObjectType, v25);
      v34 = v69;
      sub_2759B8888();
      v30 = v63;
      v35 = sub_275971484();
      v36 = v34 + *(v70 + 36);
      *v36 = v35;
      *(v36 + 8) = v37;
      strcpy((v36 + 16), "six-pack-icon");
      *(v36 + 30) = -4864;
      *(v36 + 32) = 1;
      sub_27586FBC8(v34, v13, &qword_280A12260, &qword_2759CE668);
      swift_storeEnumTagMultiPayload();
      sub_27597F238();
      sub_27597F6A0();
      sub_2759B95E8();
      sub_27586FBC8(v15, v73, &qword_280A12278, &qword_2759CE680);
      swift_storeEnumTagMultiPayload();
      sub_27597F758();
      sub_27597F7E4();
      v31 = v65;
      sub_2759B95E8();

      sub_27586BF04(v15, &qword_280A12278, &qword_2759CE680);
      v38 = v34;
      v39 = &qword_280A12260;
      v40 = &qword_2759CE668;
    }

    else
    {
      v41 = (*(v25 + 88))(ObjectType, v25);
      if (v41)
      {
        v42 = *(v25 + 64);
        v43 = v41;
        v42(ObjectType, v25);
        v44 = v69;
        sub_2759B8888();
        v30 = v63;
        v45 = sub_275971484();
        v46 = v44 + *(v70 + 36);
        *v46 = v45;
        *(v46 + 8) = v47;
        strcpy((v46 + 16), "six-pack-icon");
        *(v46 + 30) = -4864;
        *(v46 + 32) = 1;
        sub_27586FBC8(v44, v67, &qword_280A12260, &qword_2759CE668);
        swift_storeEnumTagMultiPayload();
        sub_27597F6A0();
        sub_27597F238();
        v48 = v68;
        sub_2759B95E8();
        sub_27586FBC8(v48, v73, &qword_280A12258, &qword_2759CE660);
        swift_storeEnumTagMultiPayload();
        sub_27597F758();
        sub_27597F7E4();
        v31 = v65;
        sub_2759B95E8();

        sub_27586BF04(v48, &qword_280A12258, &qword_2759CE660);
        v38 = v44;
        v39 = &qword_280A12260;
        v40 = &qword_2759CE668;
      }

      else
      {
        v49 = v18;
        sub_2759B8E88();
        v30 = v63;
        v50 = sub_275971484();
        v51 = v49 + *(v64 + 36);
        *v51 = v50;
        *(v51 + 8) = v52;
        *(v51 + 16) = 0xD000000000000010;
        *(v51 + 24) = 0x80000002759E2C50;
        *(v51 + 32) = 1;
        sub_27586FBC8(v49, v67, &qword_280A12148, &qword_2759CE560);
        swift_storeEnumTagMultiPayload();
        sub_27597F6A0();
        sub_27597F238();
        v53 = v68;
        sub_2759B95E8();
        sub_27586FBC8(v53, v73, &qword_280A12258, &qword_2759CE660);
        swift_storeEnumTagMultiPayload();
        sub_27597F758();
        sub_27597F7E4();
        v31 = v65;
        sub_2759B95E8();
        sub_27586BF04(v53, &qword_280A12258, &qword_2759CE660);
        v38 = v49;
        v39 = &qword_280A12148;
        v40 = &qword_2759CE560;
      }
    }

    sub_27586BF04(v38, v39, v40);
  }

  v54 = sub_2759B94F8();
  v55 = v75;
  *v75 = v54;
  *(v55 + 8) = 0;
  *(v55 + 16) = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122A0, &qword_2759CE690);
  sub_2759716B4(v30, (v55 + *(v56 + 44)));
  v57 = v76;
  sub_27586FBC8(v31, v76, &qword_280A12280, &qword_2759CE688);
  v58 = v78;
  sub_27586FBC8(v55, v78, &qword_280A12248, &qword_2759CE650);
  v59 = v77;
  sub_27586FBC8(v57, v77, &qword_280A12280, &qword_2759CE688);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122A8, &qword_2759CE698);
  sub_27586FBC8(v58, v59 + *(v60 + 48), &qword_280A12248, &qword_2759CE650);
  v61 = v59 + *(v60 + 64);
  *v61 = 0;
  *(v61 + 8) = 0;
  sub_27586BF04(v55, &qword_280A12248, &qword_2759CE650);
  sub_27586BF04(v31, &qword_280A12280, &qword_2759CE688);
  sub_27586BF04(v58, &qword_280A12248, &qword_2759CE650);
  return sub_27586BF04(v57, &qword_280A12280, &qword_2759CE688);
}

double sub_275971484()
{
  v0 = sub_2759B94D8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  sub_27596F60C(&v13 - v5);
  v7 = *(v1 + 104);
  v7(v4, *MEMORY[0x277CE0288], v0);
  v8 = sub_2759B94C8();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);
  if (v8)
  {
    return 42.0;
  }

  sub_27596F60C(v6);
  v7(v4, *MEMORY[0x277CE0250], v0);
  v10 = sub_2759B94C8();
  v9(v4, v0);
  v9(v6, v0);
  if (v10)
  {
    return 42.0;
  }

  sub_27596F60C(v6);
  v7(v4, *MEMORY[0x277CE0258], v0);
  v12 = sub_2759B94C8();
  v9(v4, v0);
  v9(v6, v0);
  result = 42.0;
  if ((v12 & 1) == 0)
  {
    return 28.0;
  }

  return result;
}

uint64_t sub_2759716B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v149 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122B0, &qword_2759CE6A0);
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v142 = &v114 - v3;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122B8, &qword_2759CE6A8);
  MEMORY[0x28223BE20](v146);
  v144 = &v114 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122C0, &qword_2759CE6B0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v148 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v147 = &v114 - v8;
  v150 = sub_2759B98B8();
  v9 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v11 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10740, &qword_2759C72D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v114 - v13;
  v15 = sub_2759B9908();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122C8, &qword_2759CE6B8);
  v19 = MEMORY[0x28223BE20](v151);
  v140 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v117 = &v114 - v21;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122D0, &qword_2759CE6C0);
  v22 = MEMORY[0x28223BE20](v133);
  v141 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v116 = &v114 - v24;
  v26 = *a1;
  v25 = a1[1];
  ObjectType = swift_getObjectType();
  v28 = *(v25 + 16);
  v131 = v26;
  v129 = ObjectType;
  v132 = v25;
  v152 = v28(ObjectType, v25);
  v153 = v29;
  v130 = sub_27589F2D4(v152, v29, v30);
  v31 = sub_2759B99C8();
  v33 = v32;
  v35 = v34;
  v115 = v36;
  v37 = *(v16 + 104);
  v127 = *MEMORY[0x277CE0A58];
  v128 = v16 + 104;
  v126 = v37;
  v37(v18);
  v38 = sub_2759B9878();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v125 = v38;
  v124 = v40;
  v123 = v39 + 56;
  (v40)(v14, 1, 1);
  sub_2759B98A8();
  v137 = v14;
  sub_27586BF04(v14, &qword_280A10740, &qword_2759C72D0);
  v41 = *(v16 + 8);
  v134 = v18;
  v136 = v15;
  v135 = v16 + 8;
  v122 = v41;
  v41(v18, v15);
  v42 = *(v9 + 104);
  v120 = *MEMORY[0x277CE0A10];
  v43 = v150;
  v121 = v9 + 104;
  v119 = v42;
  v42(v11);
  sub_2759B98C8();

  v44 = *(v9 + 8);
  v138 = v11;
  v139 = v9 + 8;
  v118 = v44;
  v44(v11, v43);
  v45 = sub_2759B9988();
  v47 = v46;
  LOBYTE(v43) = v48;

  sub_27589F328(v31, v33, v35 & 1);

  sub_2759B9888();
  v49 = sub_2759B9948();
  v51 = v50;
  v53 = v52;
  sub_27589F328(v45, v47, v43 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v152 = qword_280A239B8;

  v54 = sub_2759B9958();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_27589F328(v49, v51, v53 & 1);

  KeyPath = swift_getKeyPath();
  v152 = v54;
  v153 = v56;
  v154 = v58 & 1;
  v155 = v60;
  v156 = KeyPath;
  v157 = 0x3FE8000000000000;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12178, &qword_2759CE5E0);
  v63 = sub_27597EEA0();
  v64 = v117;
  v115 = v62;
  v114 = v63;
  sub_2759B9BB8();
  sub_27589F328(v54, v56, v58 & 1);

  v65 = swift_getKeyPath();
  v66 = v64 + *(v151 + 36);
  *v66 = v65;
  *(v66 + 8) = 0;
  sub_27597F870();
  v67 = v116;
  sub_2759B9B38();
  sub_27586BF04(v64, &qword_280A122C8, &qword_2759CE6B8);
  *(v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122F0, &qword_2759CE700) + 36)) = 256;
  if (qword_280A0E328 != -1)
  {
    swift_once();
  }

  v68 = qword_280A23890;
  v69 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122F8, &qword_2759CE708) + 36));
  *v69 = v68;
  v69[1] = sub_2759803B0;
  v69[2] = 0;
  LOBYTE(v68) = sub_2759B97F8();
  sub_2759B8D78();
  v70 = v67 + *(v133 + 36);
  *v70 = v68;
  *(v70 + 8) = v71;
  *(v70 + 16) = v72;
  *(v70 + 24) = v73;
  *(v70 + 32) = v74;
  *(v70 + 40) = 0;
  v75 = (*(v132 + 24))(v129);
  if (v76)
  {
    v77 = v75;
  }

  else
  {
    v77 = 0;
  }

  v78 = 0xE000000000000000;
  if (v76)
  {
    v78 = v76;
  }

  v152 = v77;
  v153 = v78;
  v79 = sub_2759B99C8();
  v81 = v80;
  v83 = v82;
  v84 = v134;
  v85 = v136;
  v126(v134, v127, v136);
  v86 = v137;
  v124(v137, 1, 1, v125);
  sub_2759B98A8();
  sub_27586BF04(v86, &qword_280A10740, &qword_2759C72D0);
  v122(v84, v85);
  v87 = v138;
  v88 = v150;
  v119(v138, v120, v150);
  sub_2759B98C8();

  v118(v87, v88);
  v89 = sub_2759B9988();
  v91 = v90;
  v93 = v92;

  sub_27589F328(v79, v81, v83 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v152 = qword_280A239C0;

  v94 = sub_2759B9958();
  v96 = v95;
  v98 = v97;
  v100 = v99;
  sub_27589F328(v89, v91, v93 & 1);

  v101 = swift_getKeyPath();
  v152 = v94;
  v153 = v96;
  v154 = v98 & 1;
  v155 = v100;
  v156 = v101;
  v157 = 0x3FE8000000000000;
  v102 = v142;
  sub_2759B9BB8();
  sub_27589F328(v94, v96, v98 & 1);

  v103 = swift_getKeyPath();
  v104 = v140;
  (*(v143 + 32))(v140, v102, v145);
  v105 = v104 + *(v151 + 36);
  *v105 = v103;
  *(v105 + 8) = 0;
  v106 = v144;
  sub_275826024(v104, v144);
  *(v106 + *(v146 + 36)) = 256;
  sub_27597F964();
  v107 = v147;
  sub_2759B9B38();
  sub_27586BF04(v106, &qword_280A122B8, &qword_2759CE6A8);
  v108 = v141;
  sub_27586FBC8(v67, v141, &qword_280A122D0, &qword_2759CE6C0);
  v109 = v148;
  sub_27586FBC8(v107, v148, &qword_280A122C0, &qword_2759CE6B0);
  v110 = v149;
  *v149 = 0;
  *(v110 + 8) = 0;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12308, &unk_2759CE710);
  sub_27586FBC8(v108, v110 + v111[12], &qword_280A122D0, &qword_2759CE6C0);
  sub_27586FBC8(v109, v110 + v111[16], &qword_280A122C0, &qword_2759CE6B0);
  v112 = v110 + v111[20];
  *v112 = 0;
  v112[8] = 0;
  sub_27586BF04(v107, &qword_280A122C0, &qword_2759CE6B0);
  sub_27586BF04(v67, &qword_280A122D0, &qword_2759CE6C0);
  sub_27586BF04(v109, &qword_280A122C0, &qword_2759CE6B0);
  return sub_27586BF04(v108, &qword_280A122D0, &qword_2759CE6C0);
}

uint64_t sub_275972458@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12110, &unk_2759CE510);
  MEMORY[0x28223BE20](v3 - 8);
  v193 = v166 - v4;
  v202 = sub_2759B98B8();
  v207 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v201 = v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10740, &qword_2759C72D0);
  MEMORY[0x28223BE20](v6 - 8);
  v200 = v166 - v7;
  v199 = sub_2759B9908();
  v206 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v198 = v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12118, &qword_2759CE520);
  v9 = MEMORY[0x28223BE20](v203);
  v192 = v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v191 = v166 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v189 = v166 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v190 = v166 - v16;
  MEMORY[0x28223BE20](v15);
  v204 = v166 - v17;
  v18 = type metadata accessor for SixPackCard(0);
  v170 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v171 = v19;
  v172 = v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12120, &unk_2759CE528);
  MEMORY[0x28223BE20](v187);
  v173 = v166 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF88, qword_2759C5C20);
  v179 = *(v21 - 8);
  v180 = v21;
  MEMORY[0x28223BE20](v21);
  v178 = v166 - v22;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12128, &unk_2759CE538);
  MEMORY[0x28223BE20](v183);
  v181 = v166 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v169 = v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v174 = v166 - v27;
  v28 = sub_2759B8508();
  v176 = *(v28 - 8);
  v177 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v167 = v30;
  v168 = v166 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v175 = v166 - v31;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12130, &qword_2759CE548);
  MEMORY[0x28223BE20](v185);
  v186 = v166 - v32;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12138, &qword_2759CE550);
  MEMORY[0x28223BE20](v182);
  v34 = v166 - v33;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12140, &qword_2759CE558);
  MEMORY[0x28223BE20](v184);
  v36 = v166 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12148, &qword_2759CE560);
  MEMORY[0x28223BE20](v37);
  v39 = v166 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12150, &qword_2759CE568);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v188 = v166 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = v166 - v43;
  v45 = a1;
  v46 = *a1;
  v47 = a1[1];
  ObjectType = swift_getObjectType();
  v49 = (*(v47 + 40))(ObjectType, v47);
  v205 = v44;
  v196 = v47;
  v197 = v46;
  v195 = ObjectType;
  if (v49)
  {
    sub_2759B8E88();
    v50 = sub_275971484();
    v51 = &v39[*(v37 + 36)];
    *v51 = v50;
    *(v51 + 1) = v52;
    *(v51 + 2) = 0xD000000000000010;
    *(v51 + 3) = 0x80000002759E2C50;
    v51[32] = 0;
    sub_27586FBC8(v39, v34, &qword_280A12148, &qword_2759CE560);
    swift_storeEnumTagMultiPayload();
    sub_27597F238();
    sub_27597F344();
    sub_2759B95E8();
    sub_27586FBC8(v36, v186, &qword_280A12140, &qword_2759CE558);
    swift_storeEnumTagMultiPayload();
    sub_27597F1AC();
    sub_27597F42C();
    sub_2759B95E8();
    sub_27586BF04(v36, &qword_280A12140, &qword_2759CE558);
    sub_27586BF04(v39, &qword_280A12148, &qword_2759CE560);
  }

  else
  {
    v166[2] = v37;
    v53 = (*(v47 + 56))(ObjectType, v47);
    if (v53)
    {
      v54 = v47;
      v55 = *(v47 + 72);
      v56 = v53;
      v55(ObjectType, v54);
      v57 = v178;
      v58 = v56;
      sub_2759B8888();
      sub_27589B02C(&qword_280A0FF90, &qword_280A0FF88, qword_2759C5C20, MEMORY[0x277D7EA70]);
      v59 = v180;
      v60 = v181;
      sub_2759B9B38();
      (*(v179 + 8))(v57, v59);
      sub_27586FBC8(v60, v34, &qword_280A12128, &unk_2759CE538);
      swift_storeEnumTagMultiPayload();
      sub_27597F238();
      sub_27597F344();
      sub_2759B95E8();
      sub_27586FBC8(v36, v186, &qword_280A12140, &qword_2759CE558);
      swift_storeEnumTagMultiPayload();
      sub_27597F1AC();
      sub_27597F42C();
      v44 = v205;
      sub_2759B95E8();

      sub_27586BF04(v36, &qword_280A12140, &qword_2759CE558);
      sub_27586BF04(v60, &qword_280A12128, &unk_2759CE538);
    }

    else
    {
      v61 = v174;
      (*(v47 + 32))(ObjectType, v47);
      v63 = v176;
      v62 = v177;
      if (v176[6](v61, 1, v177) == 1)
      {
        sub_27586BF04(v61, &unk_280A0EB10, &qword_2759C0740);
        v64 = 1;
        v66 = v201;
        v65 = v202;
        v67 = v207;
        v68 = v200;
        v44 = v205;
        goto LABEL_9;
      }

      v183 = v63[4];
      v69 = v175;
      v183();
      v70 = v63[2];
      v71 = v169;
      v72 = v69;
      v73 = v69;
      v74 = v62;
      v70(v169, v73, v62);
      (v63[7])(v71, 0, 1, v62);
      v75 = v168;
      v70(v168, v72, v74);
      v166[1] = v45;
      v76 = v45;
      v77 = v172;
      sub_27597FCCC(v76, v172, type metadata accessor for SixPackCard);
      v78 = (*(v63 + 80) + 16) & ~*(v63 + 80);
      v79 = (v167 + *(v170 + 80) + v78) & ~*(v170 + 80);
      v80 = swift_allocObject();
      v81 = v75;
      v82 = v177;
      (v183)(v80 + v78, v81, v177);
      sub_27597FC64(v77, v80 + v79, type metadata accessor for SixPackCard);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A121A8, &qword_2759CE600);
      sub_27597F03C();
      v83 = v173;
      sub_2759B8D38();
      v84 = sub_275971484();
      v85 = v83 + *(v187 + 36);
      *v85 = v84;
      *(v85 + 8) = v86;
      strcpy((v85 + 16), "six-pack-icon");
      *(v85 + 30) = -4864;
      *(v85 + 32) = 0;
      sub_27586FBC8(v83, v186, &qword_280A12120, &unk_2759CE528);
      swift_storeEnumTagMultiPayload();
      sub_27597F1AC();
      sub_27597F42C();
      v44 = v205;
      sub_2759B95E8();
      sub_27586BF04(v83, &qword_280A12120, &unk_2759CE528);
      (v63[1])(v175, v82);
    }
  }

  v64 = 0;
  v66 = v201;
  v65 = v202;
  v67 = v207;
  v68 = v200;
LABEL_9:
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12158, &qword_2759CE570);
  (*(*(v87 - 8) + 56))(v44, v64, 1, v87);
  *&v220[0] = (*(v196 + 16))(v195);
  *(&v220[0] + 1) = v88;
  v187 = sub_27589F2D4(*&v220[0], v88, v89);
  v90 = sub_2759B99C8();
  v174 = v91;
  v175 = v90;
  v93 = v92;
  v173 = v94;
  v95 = v206;
  v96 = *(v206 + 104);
  v97 = v198;
  v98 = v199;
  LODWORD(v186) = *MEMORY[0x277CE0A58];
  v184 = v96;
  v185 = v206 + 104;
  v96(v198);
  v99 = sub_2759B9878();
  v100 = *(v99 - 8);
  v182 = *(v100 + 56);
  v183 = v99;
  v181 = (v100 + 56);
  v182(v68, 1, 1);
  sub_2759B98A8();
  sub_27586BF04(v68, &qword_280A10740, &qword_2759C72D0);
  v101 = *(v95 + 8);
  v206 = v95 + 8;
  v180 = v101;
  v101(v97, v98);
  v102 = *(v67 + 104);
  LODWORD(v179) = *MEMORY[0x277CE0A10];
  v177 = v102;
  v178 = (v67 + 104);
  v102(v66);
  sub_2759B98C8();

  v103 = *(v67 + 8);
  v207 = v67 + 8;
  v176 = v103;
  (v103)(v66, v65);
  v105 = v174;
  v104 = v175;
  v106 = sub_2759B9988();
  v108 = v107;
  v110 = v109;

  sub_27589F328(v104, v105, v93 & 1);

  sub_2759B9888();
  v111 = sub_2759B9948();
  v113 = v112;
  v115 = v114;
  sub_27589F328(v106, v108, v110 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  *&v220[0] = qword_280A239B8;

  v116 = sub_2759B9958();
  v118 = v117;
  v120 = v119;
  v122 = v121;
  sub_27589F328(v111, v113, v115 & 1);

  KeyPath = swift_getKeyPath();
  v124 = swift_getKeyPath();
  LOBYTE(v208) = v120 & 1;
  v219 = 0;
  *&v214 = v116;
  *(&v214 + 1) = v118;
  LOBYTE(v215) = v120 & 1;
  *(&v215 + 1) = v122;
  *&v216 = KeyPath;
  *(&v216 + 1) = 0x3FE999999999999ALL;
  *&v217 = v124;
  *(&v217 + 1) = 3;
  v218 = 0;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12160, &qword_2759CE5D8);
  v126 = sub_27597EDE8();
  v127 = v204;
  v174 = v126;
  v175 = v125;
  sub_2759B9B38();
  v220[2] = v216;
  v220[3] = v217;
  v221 = v218;
  v220[0] = v214;
  v220[1] = v215;
  sub_27586BF04(v220, &qword_280A12160, &qword_2759CE5D8);
  *(v127 + *(v203 + 36)) = 256;
  v128 = (*(v196 + 24))(v195);
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

  *&v214 = v130;
  *(&v214 + 1) = v131;
  v132 = sub_2759B99C8();
  v134 = v133;
  v136 = v135;
  v137 = v198;
  v138 = v199;
  v184(v198, v186, v199);
  v139 = v200;
  (v182)(v200, 1, 1, v183);
  sub_2759B98A8();
  sub_27586BF04(v139, &qword_280A10740, &qword_2759C72D0);
  v180(v137, v138);
  v141 = v201;
  v140 = v202;
  v177(v201, v179, v202);
  sub_2759B98C8();

  (v176)(v141, v140);
  v142 = sub_2759B9988();
  v144 = v143;
  v146 = v145;

  sub_27589F328(v132, v134, v136 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  *&v214 = qword_280A239C0;

  v147 = sub_2759B9958();
  v149 = v148;
  v151 = v150;
  v153 = v152;
  sub_27589F328(v142, v144, v146 & 1);

  v154 = swift_getKeyPath();
  v155 = swift_getKeyPath();
  v219 = v151 & 1;
  v213 = 0;
  *&v208 = v147;
  *(&v208 + 1) = v149;
  LOBYTE(v209) = v151 & 1;
  *(&v209 + 1) = v153;
  *&v210 = v154;
  *(&v210 + 1) = 0x3FE999999999999ALL;
  *&v211 = v155;
  *(&v211 + 1) = 3;
  v212 = 0;
  v156 = v193;
  sub_2759B9B38();
  v216 = v210;
  v217 = v211;
  v218 = v212;
  v214 = v208;
  v215 = v209;
  sub_27586BF04(&v214, &qword_280A12160, &qword_2759CE5D8);
  v157 = v189;
  sub_27589F26C(v156, v189, &qword_280A12110, &unk_2759CE510);
  *(v157 + *(v203 + 36)) = 256;
  v158 = v190;
  sub_27589F26C(v157, v190, &qword_280A12118, &qword_2759CE520);
  v159 = v188;
  sub_27586FBC8(v205, v188, &qword_280A12150, &qword_2759CE568);
  v160 = v204;
  v161 = v191;
  sub_27586FBC8(v204, v191, &qword_280A12118, &qword_2759CE520);
  v162 = v192;
  sub_27586FBC8(v158, v192, &qword_280A12118, &qword_2759CE520);
  v163 = v194;
  sub_27586FBC8(v159, v194, &qword_280A12150, &qword_2759CE568);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A121A0, &qword_2759CE5F8);
  sub_27586FBC8(v161, v163 + *(v164 + 48), &qword_280A12118, &qword_2759CE520);
  sub_27586FBC8(v162, v163 + *(v164 + 64), &qword_280A12118, &qword_2759CE520);
  sub_27586BF04(v158, &qword_280A12118, &qword_2759CE520);
  sub_27586BF04(v160, &qword_280A12118, &qword_2759CE520);
  sub_27586BF04(v205, &qword_280A12150, &qword_2759CE568);
  sub_27586BF04(v162, &qword_280A12118, &qword_2759CE520);
  sub_27586BF04(v161, &qword_280A12118, &qword_2759CE520);
  return sub_27586BF04(v159, &qword_280A12150, &qword_2759CE568);
}

uint64_t sub_2759739EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v48 = a2;
  v53 = a1;
  v58 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FD08, &qword_2759C56A0);
  v49 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v47 = v42 - v4;
  v5 = type metadata accessor for SixPackCard(0);
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = v6;
  v45 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = v42 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A121D0, &unk_2759CE610);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = v42 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12210, &qword_2759CE628);
  MEMORY[0x28223BE20](v55);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12218, &qword_2759CE630);
  MEMORY[0x28223BE20](v12);
  v14 = (v42 - v13);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A121C0, &qword_2759CE608);
  MEMORY[0x28223BE20](v57);
  v16 = v42 - v15;
  v17 = sub_2759B9CC8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2759B9098();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v53, v21);
  v25 = (*(v22 + 88))(v24, v21);
  if (v25 == *MEMORY[0x277CDD9C8])
  {
    (*(v22 + 96))(v24, v21);
    (*(v18 + 104))(v20, *MEMORY[0x277CE0FE0], v17);
    v26 = sub_2759B9D28();
    (*(v18 + 8))(v20, v17);
    *v14 = v26;
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A121C8, &qword_280A121D0, &unk_2759CE610, MEMORY[0x277CDD638]);
    swift_retain_n();
    sub_2759B95E8();
    sub_27586FBC8(v16, v11, &qword_280A121C0, &qword_2759CE608);
    swift_storeEnumTagMultiPayload();
    sub_27597F0F4();
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0, MEMORY[0x277CDD7F8]);
    sub_2759B95E8();

    return sub_27586BF04(v16, &qword_280A121C0, &qword_2759CE608);
  }

  else
  {
    v42[1] = v12;
    v53 = v16;
    v28 = v11;
    v29 = v54;
    if (v25 == *MEMORY[0x277CDD9C0])
    {
      (*(v22 + 8))(v24, v21);
      v30 = sub_2759B8508();
      v31 = *(v30 - 8);
      v32 = v46;
      (*(v31 + 16))(v46, v48, v30);
      (*(v31 + 56))(v32, 0, 1, v30);
      v33 = v45;
      sub_27597FCCC(v50, v45, type metadata accessor for SixPackCard);
      v34 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v35 = swift_allocObject();
      sub_27597FC64(v33, v35 + v34, type metadata accessor for SixPackCard);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12220, &qword_2759CE638);
      sub_27597F564();
      v36 = v51;
      sub_2759B8D38();
      v37 = v52;
      (*(v52 + 16))(v14, v36, v29);
      swift_storeEnumTagMultiPayload();
      sub_27589B02C(&qword_280A121C8, &qword_280A121D0, &unk_2759CE610, MEMORY[0x277CDD638]);
      v38 = v53;
      sub_2759B95E8();
      sub_27586FBC8(v38, v28, &qword_280A121C0, &qword_2759CE608);
      swift_storeEnumTagMultiPayload();
      sub_27597F0F4();
      sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0, MEMORY[0x277CDD7F8]);
      sub_2759B95E8();
      sub_27586BF04(v38, &qword_280A121C0, &qword_2759CE608);
      return (*(v37 + 8))(v36, v29);
    }

    else
    {
      v39 = v47;
      sub_2759B8E88();
      v40 = v49;
      v41 = v56;
      (*(v49 + 16))(v11, v39, v56);
      swift_storeEnumTagMultiPayload();
      sub_27597F0F4();
      sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0, MEMORY[0x277CDD7F8]);
      sub_2759B95E8();
      (*(v40 + 8))(v39, v41);
      return (*(v22 + 8))(v24, v21);
    }
  }
}

void sub_275974354(uint64_t a1, void *a2)
{
  v26 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF88, qword_2759C5C20);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v25 = &v25 - v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12238, &qword_2759CE640);
  MEMORY[0x28223BE20](v30);
  v28 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12240, &qword_2759CE648);
  MEMORY[0x28223BE20](v5);
  v7 = (&v25 - v6);
  v8 = sub_2759B9CC8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2759B9098();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  if ((*(v13 + 88))(v15, v12) == *MEMORY[0x277CDD9C8])
  {
    (*(v13 + 96))(v15, v12);
    (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
    v16 = sub_2759B9D28();
    (*(v9 + 8))(v11, v8);
    *v7 = v16;
    swift_storeEnumTagMultiPayload();
    sub_27597F5F0();
    swift_retain_n();
    sub_2759B95E8();
  }

  else
  {
    v17 = v26[1];
    ObjectType = swift_getObjectType();
    if ((*(v17 + 48))(ObjectType, v17))
    {
      (*(v17 + 72))(ObjectType, v17);
      v19 = v25;
      sub_2759B8888();
      v20 = v27;
      v21 = v28;
      v22 = v19;
      v23 = v29;
      (*(v27 + 32))(v28, v22, v29);
      v24 = 0;
    }

    else
    {
      v24 = 1;
      v21 = v28;
      v23 = v29;
      v20 = v27;
    }

    (*(v20 + 56))(v21, v24, 1, v23);
    sub_27586FBC8(v21, v7, &qword_280A12238, &qword_2759CE640);
    swift_storeEnumTagMultiPayload();
    sub_27597F5F0();
    sub_2759B95E8();
    sub_27586BF04(v21, &qword_280A12238, &qword_2759CE640);
    (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_275974844@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2759B93D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_27586FBC8(v2, &v14 - v9, &qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B94D8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_275974A48(uint64_t a1)
{
  sub_2759BA448();
  sub_2759BA448();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759BA3A8();

  v1 = sub_2759BA428();

  return v1;
}

uint64_t sub_275974B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v183 = *(a1 + 16);
  v3 = sub_2759BA448();
  v4 = sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F18, &qword_2759CE2B8);
  type metadata accessor for SixPackCard(255);
  WitnessTable = swift_getWitnessTable();
  v180 = a1;
  v184 = *(a1 + 24);
  v187 = sub_2759B9EF8();
  sub_2759B95F8();
  v5 = sub_27597DA50();
  v236 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  v181 = swift_getWitnessTable();
  v234 = v5;
  v235 = v181;
  v169 = MEMORY[0x277CE0340];
  swift_getWitnessTable();
  v6 = sub_2759B9F18();
  v7 = swift_getWitnessTable();
  v233 = v184;
  v168 = v3;
  v237 = v4;
  v238 = v3;
  v189 = v4;
  v239 = v6;
  v240 = v7;
  v170 = swift_getWitnessTable();
  v171 = v7;
  v241 = v170;
  v8 = v170;
  sub_2759B9EF8();
  v182 = MEMORY[0x277CDF0A0];
  v232 = swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = sub_2759B9928();
  v158 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v157 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v156 = &v153 - v12;
  v176 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  sub_2759B95F8();
  v175 = sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF500]);
  v13 = sub_2759B8FE8();
  v237 = v4;
  v14 = v168;
  v238 = v168;
  v239 = v13;
  v240 = v7;
  v241 = v8;
  v15 = sub_2759B9EF8();
  v16 = sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF510]);
  v174 = v16;
  v230 = sub_27597DC18();
  v231 = v181;
  v17 = swift_getWitnessTable();
  v228 = v16;
  v229 = v17;
  v173 = MEMORY[0x277CDF7A8];
  v227 = swift_getWitnessTable();
  v172 = v15;
  v18 = swift_getWitnessTable();
  v19 = sub_2759B9E38();
  v164 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v163 = &v153 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v162 = &v153 - v22;
  v179 = v23;
  v185 = v9;
  v188 = sub_2759B95F8();
  v167 = *(v188 - 8);
  v24 = MEMORY[0x28223BE20](v188);
  v166 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v165 = &v153 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  v237 = v14;
  v238 = v183;
  v239 = v27;
  v240 = WitnessTable;
  v241 = v184;
  sub_2759B9EF8();
  v226 = sub_27597DB08();
  v28 = swift_getWitnessTable();
  sub_2759B9F18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F90, &qword_2759CE2E8);
  sub_2759B95F8();
  v224 = sub_27597DD00();
  v225 = v28;
  swift_getWitnessTable();
  v29 = sub_2759B9F18();
  v237 = v189;
  v238 = v14;
  v239 = v29;
  v240 = v171;
  v241 = v170;
  sub_2759B9EF8();
  sub_2759B95F8();
  v30 = swift_getWitnessTable();
  v223 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v221 = v30;
  v222 = v31;
  swift_getWitnessTable();
  v32 = sub_2759B9928();
  v155 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v154 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v153 = &v153 - v35;
  sub_2759B8FE8();
  sub_2759B95F8();
  v219 = v174;
  v220 = v181;
  v217 = swift_getWitnessTable();
  v218 = v18;
  swift_getWitnessTable();
  v36 = sub_2759B9E38();
  v161 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36);
  v160 = &v153 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v159 = &v153 - v39;
  v187 = v40;
  v189 = v32;
  v41 = sub_2759B95F8();
  v169 = *(v41 - 8);
  v42 = MEMORY[0x28223BE20](v41);
  v173 = &v153 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v172 = &v153 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11FB0, &unk_2759CE2F8);
  v237 = v14;
  v238 = v183;
  v239 = v45;
  v240 = WitnessTable;
  v241 = v184;
  sub_2759B9EF8();
  v216 = sub_27589B02C(&qword_280A11FB8, &qword_280A11FB0, &unk_2759CE2F8, v182);
  swift_getWitnessTable();
  v46 = sub_2759B9928();
  v181 = v41;
  v47 = sub_2759B95F8();
  v175 = *(v47 - 8);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v153 - v49;
  v171 = *(v46 - 8);
  v51 = MEMORY[0x28223BE20](v48);
  v170 = &v153 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v176 = &v153 - v53;
  v54 = sub_2759B94D8();
  v55 = *(v54 - 8);
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v153 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v60 = &v153 - v59;
  WitnessTable = v47;
  v61 = sub_2759B95F8();
  v183 = *(v61 - 8);
  v184 = v61;
  MEMORY[0x28223BE20](v61);
  v182 = &v153 - v62;
  v63 = v177;
  sub_275974844(v60);
  (*(v55 + 104))(v58, *MEMORY[0x277CE0280], v54);
  LOBYTE(v47) = sub_2758B2220(v60, v58);
  v64 = *(v55 + 8);
  v64(v58, v54);
  v64(v60, v54);
  v174 = v50;
  if (v47)
  {
    v65 = v170;
    sub_275976178(v180);
    v177 = MEMORY[0x277CDE590];
    v66 = swift_getWitnessTable();
    sub_2758C832C();
    v180 = *(v171 + 8);
    (v180)(v65, v46);
    sub_2758C832C();
    v67 = swift_getWitnessTable();
    v68 = swift_getWitnessTable();
    v194 = v67;
    v195 = v68;
    v69 = v181;
    v70 = swift_getWitnessTable();
    sub_27596F000(v65, v46, v69, v66, v70);
    v192 = v66;
    v193 = v70;
    v71 = WitnessTable;
    v72 = swift_getWitnessTable();
    v73 = swift_getWitnessTable();
    v74 = swift_getWitnessTable();
    v190 = v73;
    v191 = v74;
    v75 = v188;
    v76 = swift_getWitnessTable();
    v77 = v182;
    v78 = v174;
    sub_27596F000(v174, v71, v75, v72, v76);
    (*(v175 + 8))(v78, v71);
    v79 = v180;
    (v180)(v65, v46);
    v79(v176, v46);
    v80 = v77;
  }

  else
  {
    v176 = v46;
    v81 = v179;
    v82 = *(v63 + *(v180 + 48));
    v83 = objc_opt_self();
    v84 = [v83 currentDevice];
    v85 = [v84 userInterfaceIdiom];

    if (v82 == 3)
    {
      v86 = v187;
      if (v85 == 1 || (v87 = [v83 currentDevice], v88 = objc_msgSend(v87, sel_userInterfaceIdiom), v87, v88 == 6))
      {
        v89 = v160;
        sub_2759762D0(v180);
        v90 = swift_getWitnessTable();
        v91 = v159;
        sub_2758C832C();
        v92 = *(v161 + 8);
        v92(v89, v86);
        sub_2758C832C();
        v93 = v189;
        v94 = swift_getWitnessTable();
        sub_27596F000(v89, v86, v93, v90, v94);
        v92(v89, v86);
        v95 = v91;
        v96 = v86;
      }

      else
      {
        v109 = v154;
        sub_275976600(v180);
        v110 = v189;
        v111 = swift_getWitnessTable();
        v112 = v153;
        sub_2758C832C();
        v92 = *(v155 + 8);
        v92(v109, v110);
        sub_2758C832C();
        v113 = swift_getWitnessTable();
        sub_27596F0F8(v109, v86, v110, v113, v111);
        v92(v109, v110);
        v95 = v112;
        v96 = v110;
      }

      v92(v95, v96);
      v114 = v181;
      v115 = swift_getWitnessTable();
      v116 = swift_getWitnessTable();
      v200 = v115;
      v201 = v116;
      v117 = swift_getWitnessTable();
      v118 = v173;
      sub_2758C832C();
      v119 = v176;
      v120 = swift_getWitnessTable();
      v121 = v174;
      sub_27596F0F8(v118, v119, v114, v120, v117);
      v198 = v120;
      v199 = v117;
      v122 = WitnessTable;
      v180 = swift_getWitnessTable();
      v123 = swift_getWitnessTable();
      v124 = swift_getWitnessTable();
      v196 = v123;
      v197 = v124;
      v125 = v188;
      v126 = swift_getWitnessTable();
      v80 = v182;
      sub_27596F000(v121, v122, v125, v180, v126);
      (*(v175 + 8))(v121, v122);
      v127 = *(v169 + 8);
      v127(v173, v114);
      v127(v172, v114);
    }

    else
    {
      v97 = v188;
      if (v85 == 1 || (v98 = [v83 currentDevice], v99 = objc_msgSend(v98, sel_userInterfaceIdiom), v98, v99 == 6))
      {
        v100 = v163;
        sub_275976890(v180);
        v101 = swift_getWitnessTable();
        v102 = v162;
        sub_2758C832C();
        v103 = *(v164 + 8);
        v103(v100, v81);
        sub_2758C832C();
        v104 = v185;
        v105 = swift_getWitnessTable();
        v106 = v165;
        sub_27596F000(v100, v81, v104, v101, v105);
        v103(v100, v81);
        v107 = v102;
        v108 = v81;
      }

      else
      {
        v128 = v157;
        sub_275976B64(v180);
        v129 = v185;
        v130 = swift_getWitnessTable();
        v131 = v156;
        sub_2758C832C();
        v103 = *(v158 + 8);
        v103(v128, v129);
        sub_2758C832C();
        v132 = swift_getWitnessTable();
        v106 = v165;
        sub_27596F0F8(v128, v81, v129, v132, v130);
        v103(v128, v129);
        v107 = v131;
        v108 = v129;
      }

      v103(v107, v108);
      v133 = swift_getWitnessTable();
      v134 = swift_getWitnessTable();
      v214 = v133;
      v215 = v134;
      v180 = swift_getWitnessTable();
      v135 = v166;
      sub_2758C832C();
      v136 = swift_getWitnessTable();
      v137 = swift_getWitnessTable();
      v138 = swift_getWitnessTable();
      v212 = v137;
      v213 = v138;
      v139 = swift_getWitnessTable();
      v210 = v136;
      v211 = v139;
      v140 = WitnessTable;
      v141 = swift_getWitnessTable();
      v80 = v182;
      sub_27596F0F8(v135, v140, v97, v141, v180);
      v142 = *(v167 + 8);
      v142(v135, v97);
      v142(v106, v97);
    }
  }

  v143 = swift_getWitnessTable();
  v144 = swift_getWitnessTable();
  v145 = swift_getWitnessTable();
  v208 = v144;
  v209 = v145;
  v146 = swift_getWitnessTable();
  v206 = v143;
  v207 = v146;
  v147 = swift_getWitnessTable();
  v148 = swift_getWitnessTable();
  v149 = swift_getWitnessTable();
  v204 = v148;
  v205 = v149;
  v150 = swift_getWitnessTable();
  v202 = v147;
  v203 = v150;
  v151 = v184;
  swift_getWitnessTable();
  sub_2758C832C();
  return (*(v183 + 8))(v80, v151);
}

uint64_t sub_275976178(uint64_t a1)
{
  sub_2759BA028();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11FB0, &unk_2759CE2F8);
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_27589B02C(&qword_280A11FB8, &qword_280A11FB0, &unk_2759CE2F8, MEMORY[0x277CDF0A0]);
  swift_getWitnessTable();
  return sub_2759B9918();
}

uint64_t sub_2759762D0(uint64_t a1)
{
  sub_2759B94E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  sub_2759BA448();
  type metadata accessor for SixPackCard(255);
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF500]);
  sub_2759B8FE8();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  sub_2759B95F8();
  sub_2759B8FE8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_2759B95F8();
  sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF510]);
  sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_27597DC18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2759B9E28();
}

uint64_t sub_275976600(uint64_t a1)
{
  sub_2759BA038();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_27597DB08();
  swift_getWitnessTable();
  sub_2759B9F18();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F90, &qword_2759CE2E8);
  sub_2759B95F8();
  sub_27597DD00();
  swift_getWitnessTable();
  sub_2759B9F18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_2759B95F8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2759B9918();
}

uint64_t sub_275976890(uint64_t a1)
{
  sub_2759B94E8();
  sub_2759BA448();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  type metadata accessor for SixPackCard(255);
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_2759B95F8();
  sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF500]);
  sub_2759B8FE8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF510]);
  sub_27597DC18();
  sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2759B9E28();
}

uint64_t sub_275976B64(uint64_t a1)
{
  sub_2759BA038();
  sub_2759BA448();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F18, &qword_2759CE2B8);
  type metadata accessor for SixPackCard(255);
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_2759B95F8();
  sub_27597DA50();
  sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9F18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9EF8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2759B9918();
}

uint64_t sub_275976DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a1;
  v81 = a5;
  v77 = a4;
  v7 = type metadata accessor for SixPackGrid(0, a2, a3, a4);
  v72 = *(v7 - 8);
  v70 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v71 = &v62 - v8;
  v9 = sub_2759BA448();
  v10 = sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F90, &qword_2759CE2E8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  WitnessTable = swift_getWitnessTable();
  v92 = v9;
  v93 = a2;
  v75 = a2;
  v94 = v11;
  v95 = WitnessTable;
  v96 = a3;
  sub_2759B9EF8();
  sub_2759B95F8();
  v13 = sub_27597DD00();
  v91 = sub_27597DB08();
  v14 = swift_getWitnessTable();
  v89 = v13;
  v90 = v14;
  swift_getWitnessTable();
  v15 = sub_2759B9F18();
  v16 = swift_getWitnessTable();
  v76 = a3;
  v88 = a3;
  v17 = swift_getWitnessTable();
  v73 = v10;
  v92 = v10;
  v93 = v9;
  v80 = v15;
  v94 = v15;
  v95 = v16;
  v67 = v16;
  v66 = v17;
  v96 = v17;
  v18 = sub_2759B9EF8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v68 = &v62 - v22;
  v65 = v14;
  v23 = sub_2759B9F18();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v62 - v28;
  v30 = sub_2759B95F8();
  v78 = *(v30 - 8);
  v79 = v30;
  MEMORY[0x28223BE20](v30);
  v82 = &v62 - v31;
  v32 = v7;
  v33 = v74;
  v34 = sub_275974A48(v7);
  if (v34 == 3)
  {
    MEMORY[0x28223BE20](3);
    v36 = v76;
    v35 = v77;
    *(&v62 - 4) = v75;
    *(&v62 - 3) = v36;
    v60 = v35;
    v61 = v33;
    sub_2759B9F08();
    v37 = swift_getWitnessTable();
    sub_2758C832C();
    v38 = *(v24 + 8);
    v38(v27, v23);
    sub_2758C832C();
    v83 = swift_getWitnessTable();
    v39 = swift_getWitnessTable();
    sub_27596F000(v27, v23, v18, v37, v39);
    v38(v27, v23);
    v38(v29, v23);
  }

  else
  {
    v40 = v33;
    v63 = *(v33 + *(v32 + 44));
    v92 = v63;
    MEMORY[0x28223BE20](v34);
    v41 = v75;
    v43 = v76;
    v42 = v77;
    *(&v62 - 4) = v75;
    *(&v62 - 3) = v43;
    v60 = v42;
    KeyPath = swift_getKeyPath();
    v44 = v72;
    v45 = *(v72 + 16);
    v65 = v19;
    v46 = v71;
    v45(v71, v40, v32);
    v47 = (*(v44 + 80) + 40) & ~*(v44 + 80);
    v48 = swift_allocObject();
    *(v48 + 2) = v41;
    *(v48 + 3) = v43;
    *(v48 + 4) = v42;
    (*(v44 + 32))(&v48[v47], v46, v32);

    v49 = swift_getWitnessTable();
    v60 = v49;
    v50 = v69;
    sub_2759B9ED8();
    v87 = v49;
    v51 = swift_getWitnessTable();
    v52 = v68;
    sub_2758C832C();
    v53 = *(v65 + 8);
    v53(v50, v18);
    sub_2758C832C();
    v54 = swift_getWitnessTable();
    sub_27596F0F8(v50, v23, v18, v54, v51);
    v53(v50, v18);
    v53(v52, v18);
  }

  v55 = swift_getWitnessTable();
  v86 = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  v84 = v55;
  v85 = v56;
  v57 = v79;
  swift_getWitnessTable();
  v58 = v82;
  sub_2758C832C();
  return (*(v78 + 8))(v58, v57);
}

uint64_t sub_27597764C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v9 = sub_2759BA448();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  WitnessTable = swift_getWitnessTable();
  v34 = v9;
  v35 = a2;
  v36 = v24;
  v37 = WitnessTable;
  v38 = a3;
  v10 = sub_2759B9EF8();
  v25 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v22 = &v21 - v14;
  v34 = *(a1 + *(type metadata accessor for SixPackGrid(0, a2, a3, a4) + 44));
  v30 = a2;
  v31 = a3;
  v32 = a4;
  sub_2759BA448();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = sub_2759BA3A8();

  v34 = v15;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v20 = sub_27597DB08();
  sub_2759B9ED8();
  v33 = v20;
  swift_getWitnessTable();
  v17 = v22;
  sub_2758C832C();
  v18 = *(v25 + 8);
  v18(v13, v10);
  sub_2758C832C();
  return (v18)(v17, v10);
}

uint64_t sub_275977958@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21[0] = a5;
  v21[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F90, &qword_2759CE2E8);
  v21[13] = sub_2759BA448();
  v21[14] = a3;
  v21[15] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  v21[16] = swift_getWitnessTable();
  v21[17] = a4;
  sub_2759B9EF8();
  sub_2759B95F8();
  v10 = sub_27597DD00();
  v21[12] = sub_27597DB08();
  v21[10] = v10;
  v21[11] = swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_2759B9F18();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v18 = *a1;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = v21[0];
  v21[7] = v18;
  v21[8] = a2;
  sub_2759B9F08();
  swift_getWitnessTable();
  sub_2758C832C();
  v19 = *(v12 + 8);
  v19(v15, v11);
  sub_2758C832C();
  return (v19)(v17, v11);
}

uint64_t sub_275977BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v93 = a5;
  v89 = a2;
  v97 = a6;
  v9 = sub_2759BA448();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  v84 = v9;
  v104 = v9;
  v105 = a3;
  v106 = v10;
  WitnessTable = swift_getWitnessTable();
  v81 = WitnessTable;
  v90 = a4;
  v108 = a4;
  v11 = sub_2759B9EF8();
  v87 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v86 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v85 = &v76 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FA8, &qword_2759CE2F0);
  MEMORY[0x28223BE20](v92);
  v88 = &v76 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FE0, &qword_2759CE3F8);
  MEMORY[0x28223BE20](v91);
  v17 = &v76 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F90, &qword_2759CE2E8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v76 - v20;
  v94 = v10;
  v22 = MEMORY[0x28223BE20](v19);
  v83 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v82 = &v76 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v76 - v27);
  MEMORY[0x28223BE20](v26);
  v30 = (&v76 - v29);
  v31 = sub_2759B95F8();
  v95 = *(v31 - 8);
  v96 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = &v76 - v32;
  v34 = sub_2759BA428();
  if (v34 == 1)
  {
    sub_2759BA458();
    v35 = v104;
    KeyPath = swift_getKeyPath();
    v37 = type metadata accessor for SixPackCard(0);
    *(v30 + v37[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
    swift_storeEnumTagMultiPayload();
    *(v30 + v37[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
    swift_storeEnumTagMultiPayload();
    *(v30 + v37[7]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
    swift_storeEnumTagMultiPayload();
    v38 = v93;
    v39 = v94;
    *v30 = v35;
    v30[1] = v38;
    v40 = v30 + *(v39 + 36);
    *v40 = 6;
    v40[8] = 0;
    sub_27586FBC8(v30, v17, &qword_280A11F30, &qword_2759CE2C0);
    swift_storeEnumTagMultiPayload();
    v41 = sub_27597DB08();
    sub_27589B02C(&qword_280A11FA0, &qword_280A11FA8, &qword_2759CE2F0, MEMORY[0x277CE14C0]);
    sub_2759B95E8();
    v42 = sub_27597DD00();
    v98 = v41;
    v43 = swift_getWitnessTable();
    sub_27596F000(v21, v18, v11, v42, v43);
    sub_27586BF04(v21, &qword_280A11F90, &qword_2759CE2E8);
    sub_27586BF04(v30, &qword_280A11F30, &qword_2759CE2C0);
  }

  else
  {
    v44 = v34;
    v76 = v17;
    v77 = v21;
    v79 = v18;
    v78 = v33;
    v80 = v11;
    v45 = v90;
    v46 = v93;
    v47 = type metadata accessor for SixPackGrid(0, a3, v90, v93);
    if (v44 == 2 && *(v89 + *(v47 + 48)) == 3)
    {
      sub_2759BA458();
      v90 = v104;
      v48 = swift_getKeyPath();
      v49 = type metadata accessor for SixPackCard(0);
      *(v30 + v49[5]) = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
      swift_storeEnumTagMultiPayload();
      *(v30 + v49[6]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
      swift_storeEnumTagMultiPayload();
      *(v30 + v49[7]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
      swift_storeEnumTagMultiPayload();
      *v30 = v90;
      v30[1] = v46;
      v50 = v94;
      v51 = v30 + *(v94 + 36);
      *v51 = 3;
      v51[8] = 0;
      sub_2759BA458();
      v52 = v104;
      *(v28 + v49[5]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v28 + v49[6]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v28 + v49[7]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *v28 = v52;
      v28[1] = v46;
      v53 = v28 + *(v50 + 36);
      *v53 = 3;
      v53[8] = 0;
      v54 = v82;
      sub_27586FBC8(v30, v82, &qword_280A11F30, &qword_2759CE2C0);
      v55 = v83;
      sub_27586FBC8(v28, v83, &qword_280A11F30, &qword_2759CE2C0);
      v56 = v88;
      sub_27586FBC8(v54, v88, &qword_280A11F30, &qword_2759CE2C0);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FE8, &qword_2759CE400);
      sub_27586FBC8(v55, v56 + *(v57 + 48), &qword_280A11F30, &qword_2759CE2C0);
      sub_27586BF04(v55, &qword_280A11F30, &qword_2759CE2C0);
      sub_27586BF04(v54, &qword_280A11F30, &qword_2759CE2C0);
      sub_27586FBC8(v56, v76, &qword_280A11FA8, &qword_2759CE2F0);
      swift_storeEnumTagMultiPayload();
      v58 = sub_27597DB08();
      sub_27589B02C(&qword_280A11FA0, &qword_280A11FA8, &qword_2759CE2F0, MEMORY[0x277CE14C0]);
      v59 = v77;
      sub_2759B95E8();
      v60 = sub_27597DD00();
      v99 = v58;
      v61 = v80;
      v62 = swift_getWitnessTable();
      v33 = v78;
      sub_27596F000(v59, v79, v61, v60, v62);
      sub_27586BF04(v59, &qword_280A11F90, &qword_2759CE2E8);
      sub_27586BF04(v56, &qword_280A11FA8, &qword_2759CE2F0);
      sub_27586BF04(v28, &qword_280A11F30, &qword_2759CE2C0);
      sub_27586BF04(v30, &qword_280A11F30, &qword_2759CE2C0);
    }

    else
    {
      v104 = a1;
      MEMORY[0x28223BE20](v47);
      *(&v76 - 4) = a3;
      *(&v76 - 3) = v45;
      swift_getKeyPath();
      v63 = swift_allocObject();
      v63[2] = a3;
      v63[3] = v45;
      v63[4] = v46;
      v64 = sub_27597DB08();

      v75 = v64;
      v65 = v86;
      sub_2759B9ED8();
      v103 = v64;
      v66 = v80;
      v67 = swift_getWitnessTable();
      v68 = v85;
      sub_2758C832C();
      v69 = *(v87 + 8);
      v69(v65, v66);
      sub_2758C832C();
      v70 = sub_27597DD00();
      v33 = v78;
      sub_27596F0F8(v65, v79, v66, v70, v67);
      v69(v65, v66);
      v69(v68, v66);
    }
  }

  v71 = sub_27597DD00();
  v102 = sub_27597DB08();
  v72 = swift_getWitnessTable();
  v100 = v71;
  v101 = v72;
  v73 = v96;
  swift_getWitnessTable();
  sub_2758C832C();
  return (*(v95 + 8))(v33, v73);
}

uint64_t sub_275978798@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for SixPackCard(0);
  *(a3 + v7[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  *a3 = v5;
  a3[1] = a2;
  v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F30, &qword_2759CE2C0) + 36);
  *v8 = 2;
  v8[8] = 0;

  return swift_unknownObjectRetain();
}

uint64_t sub_2759788C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a4;
  v46 = a5;
  v8 = type metadata accessor for SixPackGrid(0, a2, a3, a4);
  v44 = *(v8 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v43 = v35 - v9;
  v10 = sub_2759BA448();
  v11 = sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F18, &qword_2759CE2B8);
  v12 = type metadata accessor for SixPackCard(255);
  WitnessTable = swift_getWitnessTable();
  v55 = v10;
  v56 = a2;
  v57 = v12;
  v58 = WitnessTable;
  v59 = a3;
  sub_2759B9EF8();
  sub_2759B95F8();
  v14 = sub_27597DA50();
  v54 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  v42 = MEMORY[0x277CE1290];
  v15 = swift_getWitnessTable();
  v52 = v14;
  v53 = v15;
  swift_getWitnessTable();
  v16 = sub_2759B9F18();
  v35[2] = v16;
  v39 = v11;
  v17 = swift_getWitnessTable();
  v38 = v17;
  v35[0] = a3;
  v51 = a3;
  v37 = swift_getWitnessTable();
  v55 = v11;
  v56 = v10;
  v57 = v16;
  v58 = v17;
  v59 = v37;
  v18 = sub_2759B9EF8();
  v40 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v36 = v35 - v22;
  v23 = v8;
  v55 = *(a1 + *(v8 + 44));
  v47 = a2;
  v48 = a3;
  v24 = v41;
  v49 = v41;
  v35[1] = swift_getKeyPath();
  v25 = v43;
  v26 = v44;
  v27 = v23;
  (*(v44 + 16))(v43, a1, v23);
  v28 = (*(v26 + 80) + 40) & ~*(v26 + 80);
  v29 = swift_allocObject();
  v30 = v35[0];
  *(v29 + 2) = a2;
  *(v29 + 3) = v30;
  *(v29 + 4) = v24;
  (*(v26 + 32))(&v29[v28], v25, v27);

  v34 = swift_getWitnessTable();
  sub_2759B9ED8();
  v50 = v34;
  swift_getWitnessTable();
  v31 = v36;
  sub_2758C832C();
  v32 = *(v40 + 8);
  v32(v21, v18);
  sub_2758C832C();
  return (v32)(v31, v18);
}

uint64_t sub_275978D80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21[0] = a5;
  v21[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F18, &qword_2759CE2B8);
  v21[13] = sub_2759BA448();
  v21[14] = a3;
  v21[15] = type metadata accessor for SixPackCard(255);
  v21[16] = swift_getWitnessTable();
  v21[17] = a4;
  sub_2759B9EF8();
  sub_2759B95F8();
  v10 = sub_27597DA50();
  v21[12] = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  v21[10] = v10;
  v21[11] = swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_2759B9F18();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v18 = *a1;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = v21[0];
  v21[7] = v18;
  v21[8] = a2;
  sub_2759B9F08();
  swift_getWitnessTable();
  sub_2758C832C();
  v19 = *(v12 + 8);
  v19(v15, v11);
  sub_2758C832C();
  return (v19)(v17, v11);
}

uint64_t sub_275979038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v88 = a5;
  v84 = a2;
  v92 = a6;
  v9 = sub_2759BA448();
  v10 = type metadata accessor for SixPackCard(255);
  v77 = v9;
  v99 = v9;
  v100 = a3;
  v101 = v10;
  WitnessTable = swift_getWitnessTable();
  v76 = WitnessTable;
  v85 = a4;
  v103 = a4;
  v11 = sub_2759B9EF8();
  v81 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v79 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = &v71 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F50, &qword_2759CE2C8);
  v15 = MEMORY[0x28223BE20](v87);
  v83 = &v71 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v82 = &v71 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FF0, &qword_2759CE408);
  MEMORY[0x28223BE20](v86);
  v21 = &v71 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F18, &qword_2759CE2B8);
  MEMORY[0x28223BE20](v22);
  v24 = &v71 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F30, &qword_2759CE2C0);
  v26 = MEMORY[0x28223BE20](v25);
  v75 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = (&v71 - v28);
  v91 = v11;
  v30 = a1;
  v31 = sub_2759B95F8();
  v89 = *(v31 - 8);
  v90 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = &v71 - v32;
  v34 = sub_2759BA428();
  if (v34 == 1)
  {
    sub_2759BA458();
    v35 = v99;
    *(v29 + v10[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
    swift_storeEnumTagMultiPayload();
    *(v29 + v10[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
    swift_storeEnumTagMultiPayload();
    *(v29 + v10[7]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
    swift_storeEnumTagMultiPayload();
    v36 = v88;
    *v29 = v35;
    v29[1] = v36;
    v37 = v29 + *(v25 + 36);
    *v37 = 2;
    v37[8] = 0;
    sub_27586FBC8(v29, v21, &qword_280A11F30, &qword_2759CE2C0);
    swift_storeEnumTagMultiPayload();
    sub_27597DB08();
    sub_27589B02C(&qword_280A11F48, &qword_280A11F50, &qword_2759CE2C8, MEMORY[0x277CE14C0]);
    sub_2759B95E8();
    v38 = sub_27597DA50();
    v93 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
    v39 = v91;
    v40 = swift_getWitnessTable();
    sub_27596F000(v24, v22, v39, v38, v40);
    sub_27586BF04(v24, &qword_280A11F18, &qword_2759CE2B8);
    sub_27586BF04(v29, &qword_280A11F30, &qword_2759CE2C0);
  }

  else
  {
    v41 = v34;
    v71 = v21;
    v72 = v24;
    v73 = v22;
    v74 = v33;
    v42 = v85;
    v43 = v88;
    v44 = type metadata accessor for SixPackGrid(0, a3, v85, v88);
    if (v41 == 2 && *(v84 + *(v44 + 48)) == 3)
    {
      sub_2759BA458();
      v85 = v99;
      *(v29 + v10[5]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
      swift_storeEnumTagMultiPayload();
      *(v29 + v10[6]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
      swift_storeEnumTagMultiPayload();
      *(v29 + v10[7]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
      swift_storeEnumTagMultiPayload();
      *v29 = v85;
      v29[1] = v43;
      v45 = v29 + *(v25 + 36);
      *v45 = 2;
      v45[8] = 0;
      sub_2759BA458();
      v46 = v99;
      KeyPath = swift_getKeyPath();
      v48 = v82;
      *&v82[v10[5]] = KeyPath;
      swift_storeEnumTagMultiPayload();
      *(v48 + v10[6]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v48 + v10[7]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *v48 = v46;
      v48[1] = v43;
      v49 = v75;
      sub_27586FBC8(v29, v75, &qword_280A11F30, &qword_2759CE2C0);
      v50 = v80;
      sub_27597FCCC(v48, v80, type metadata accessor for SixPackCard);
      v51 = v83;
      sub_27586FBC8(v49, v83, &qword_280A11F30, &qword_2759CE2C0);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FF8, &unk_2759CE410);
      sub_27597FCCC(v50, v51 + *(v52 + 48), type metadata accessor for SixPackCard);
      sub_27597E920(v50, type metadata accessor for SixPackCard);
      sub_27586BF04(v49, &qword_280A11F30, &qword_2759CE2C0);
      sub_27586FBC8(v51, v71, &qword_280A11F50, &qword_2759CE2C8);
      swift_storeEnumTagMultiPayload();
      sub_27597DB08();
      sub_27589B02C(&qword_280A11F48, &qword_280A11F50, &qword_2759CE2C8, MEMORY[0x277CE14C0]);
      v53 = v72;
      sub_2759B95E8();
      v54 = sub_27597DA50();
      v94 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
      v55 = v91;
      v56 = swift_getWitnessTable();
      v57 = v74;
      sub_27596F000(v53, v73, v55, v54, v56);
      sub_27586BF04(v53, &qword_280A11F18, &qword_2759CE2B8);
      sub_27586BF04(v51, &qword_280A11F50, &qword_2759CE2C8);
      sub_27597E920(v48, type metadata accessor for SixPackCard);
      v33 = v57;
      sub_27586BF04(v29, &qword_280A11F30, &qword_2759CE2C0);
    }

    else
    {
      v99 = v30;
      MEMORY[0x28223BE20](v44);
      *(&v71 - 4) = a3;
      *(&v71 - 3) = v42;
      swift_getKeyPath();
      v58 = swift_allocObject();
      v58[2] = a3;
      v58[3] = v42;
      v58[4] = v43;
      v59 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);

      v70 = v59;
      v60 = v79;
      sub_2759B9ED8();
      v98 = v59;
      v61 = v91;
      v62 = swift_getWitnessTable();
      v63 = v78;
      sub_2758C832C();
      v64 = *(v81 + 8);
      v64(v60, v61);
      sub_2758C832C();
      v65 = sub_27597DA50();
      v33 = v74;
      sub_27596F0F8(v60, v73, v61, v65, v62);
      v64(v60, v61);
      v64(v63, v61);
    }
  }

  v66 = sub_27597DA50();
  v97 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  v67 = swift_getWitnessTable();
  v95 = v66;
  v96 = v67;
  v68 = v90;
  swift_getWitnessTable();
  sub_2758C832C();
  return (*(v89 + 8))(v33, v68);
}

uint64_t sub_275979CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a1;
  v103 = a5;
  v97 = a4;
  v96 = type metadata accessor for SixPackGrid(0, a2, a3, a4);
  v93 = *(v96 - 8);
  v90 = *(v93 + 64);
  MEMORY[0x28223BE20](v96);
  v91 = &v83 - v7;
  v8 = sub_2759BA448();
  v9 = sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  v10 = type metadata accessor for SixPackCard(255);
  WitnessTable = swift_getWitnessTable();
  v135 = v8;
  v136 = a2;
  v98 = a2;
  v137 = v10;
  v138 = WitnessTable;
  v139 = a3;
  v12 = sub_2759B9EF8();
  v13 = sub_2759B95F8();
  sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF500]);
  v107 = v13;
  v14 = sub_2759B8FE8();
  v15 = swift_getWitnessTable();
  v99 = a3;
  v134 = a3;
  v16 = swift_getWitnessTable();
  v94 = v9;
  v135 = v9;
  v136 = v8;
  v106 = v14;
  v137 = v14;
  v138 = v15;
  v92 = v15;
  v89 = v16;
  v139 = v16;
  v17 = sub_2759B9EF8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v83 - v22;
  v105 = v12;
  v24 = v95;
  v25 = sub_2759B8FE8();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v83 - v30;
  v102 = v17;
  v32 = sub_2759B95F8();
  v100 = *(v32 - 8);
  v101 = v32;
  MEMORY[0x28223BE20](v32);
  v104 = &v83 - v33;
  v34 = v96;
  v35 = sub_275974A48(v96);
  if (v35 == 3)
  {
    v36 = sub_2759BA028();
    v96 = v26;
    v94 = v31;
    v37 = v36;
    v39 = v38;
    v40 = swift_allocObject();
    v41 = v99;
    *(v40 + 16) = v98;
    *(v40 + 24) = v41;
    *(v40 + 32) = v97;
    *(v40 + 40) = v37;
    *(v40 + 48) = v39;
    *(v40 + 56) = 0x4028000000000000;
    *(v40 + 64) = 0;
    MEMORY[0x28223BE20](v40);
    *(&v83 - 4) = v42;
    *(&v83 - 3) = v43;
    v82 = v24;
    v81 = v44;
    sub_27597A76C(sub_27597DE68, (&v83 - 6), v29);

    v45 = sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF510]);
    v115 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
    v99 = MEMORY[0x277CE1290];
    v46 = swift_getWitnessTable();
    v113 = v45;
    v114 = v46;
    v47 = swift_getWitnessTable();
    v48 = v94;
    sub_2758C832C();
    v49 = *(v96 + 8);
    v49(v29, v25);
    sub_2758C832C();
    v111 = sub_27597DC18();
    v112 = v46;
    v50 = swift_getWitnessTable();
    v109 = v45;
    v110 = v50;
    v108 = swift_getWitnessTable();
    v51 = v102;
    v52 = swift_getWitnessTable();
    sub_27596F000(v29, v25, v51, v47, v52);
    v49(v29, v25);
    v49(v48, v25);
  }

  else
  {
    v88 = v23;
    v53 = v34;
    v84 = *(v24 + *(v34 + 44));
    v135 = v84;
    MEMORY[0x28223BE20](v35);
    v55 = v98;
    v54 = v99;
    *(&v83 - 4) = v98;
    *(&v83 - 3) = v54;
    v87 = v18;
    v56 = v97;
    v81 = v97;
    KeyPath = swift_getKeyPath();
    v85 = v21;
    v86 = KeyPath;
    v58 = v93;
    v59 = v25;
    v60 = v91;
    (*(v93 + 16))(v91, v24, v53);
    v61 = (*(v58 + 80) + 40) & ~*(v58 + 80);
    v62 = swift_allocObject();
    *(v62 + 2) = v55;
    *(v62 + 3) = v54;
    *(v62 + 4) = v56;
    (*(v58 + 32))(&v62[v61], v60, v53);
    v63 = sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF510]);
    v98 = v63;
    v64 = sub_27597DC18();
    v133 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);

    v99 = swift_getWitnessTable();
    v131 = v64;
    v132 = v99;
    v65 = swift_getWitnessTable();
    v129 = v63;
    v130 = v65;
    v66 = swift_getWitnessTable();
    v81 = v66;
    v67 = v85;
    sub_2759B9ED8();
    v128 = v66;
    v68 = v102;
    v69 = swift_getWitnessTable();
    v70 = v88;
    sub_2758C832C();
    v71 = *(v87 + 8);
    v71(v67, v68);
    sub_2758C832C();
    v126 = v98;
    v127 = v99;
    v72 = swift_getWitnessTable();
    sub_27596F0F8(v67, v59, v68, v72, v69);
    v71(v67, v68);
    v71(v70, v68);
  }

  v73 = sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF510]);
  v125 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  v74 = swift_getWitnessTable();
  v123 = v73;
  v124 = v74;
  v75 = swift_getWitnessTable();
  v121 = sub_27597DC18();
  v122 = v74;
  v76 = swift_getWitnessTable();
  v119 = v73;
  v120 = v76;
  v118 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v116 = v75;
  v117 = v77;
  v78 = v101;
  swift_getWitnessTable();
  v79 = v104;
  sub_2758C832C();
  return (*(v100 + 8))(v79, v78);
}

uint64_t sub_27597A76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a9@<X8>)
{
  sub_2759BA448();
  type metadata accessor for SixPackCard(255);
  swift_getWitnessTable();
  v12 = sub_2759B9EF8();
  v15 = sub_27586D8BC(v12, v13, v14);
  sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  WitnessTable = swift_getWitnessTable();
  return sub_27596F1F0(a1, a2, &type metadata for EqualSizeHStackLayout, v12, v15, WitnessTable, a9);
}

uint64_t sub_27597A8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v9 = sub_2759BA448();
  v24 = type metadata accessor for SixPackCard(255);
  WitnessTable = swift_getWitnessTable();
  v34 = v9;
  v35 = a2;
  v36 = v24;
  v37 = WitnessTable;
  v38 = a3;
  v10 = sub_2759B9EF8();
  v25 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v22 = &v21 - v14;
  v34 = *(a1 + *(type metadata accessor for SixPackGrid(0, a2, a3, a4) + 44));
  v30 = a2;
  v31 = a3;
  v32 = a4;
  sub_2759BA448();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = sub_2759BA3A8();

  v34 = v15;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v20 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  sub_2759B9ED8();
  v33 = v20;
  swift_getWitnessTable();
  v17 = v22;
  sub_2758C832C();
  v18 = *(v25 + 8);
  v18(v13, v10);
  sub_2758C832C();
  return (v18)(v17, v10);
}

uint64_t sub_27597ABD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for SixPackCard(0);
  *(a3 + v7[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  *a3 = v5;
  a3[1] = a2;

  return swift_unknownObjectRetain();
}

uint64_t sub_27597ACE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a4;
  v44 = a1;
  v50 = a5;
  v39 = type metadata accessor for SixPackGrid(0, a2, a3, a4);
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = v36 - v8;
  v9 = sub_2759BA448();
  v10 = sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  v11 = type metadata accessor for SixPackCard(255);
  WitnessTable = swift_getWitnessTable();
  v61 = v9;
  v62 = a2;
  v63 = v11;
  v64 = WitnessTable;
  v65 = a3;
  v45 = sub_2759B9EF8();
  v43 = sub_2759B95F8();
  sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF500]);
  v13 = sub_2759B8FE8();
  v38 = v13;
  v48 = v10;
  v14 = swift_getWitnessTable();
  v47 = v14;
  v60 = a3;
  v46 = swift_getWitnessTable();
  v61 = v10;
  v62 = v9;
  v63 = v13;
  v64 = v14;
  v65 = v46;
  v15 = sub_2759B9EF8();
  v49 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v37 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v40 = v36 - v18;
  v19 = v39;
  v20 = v44;
  v61 = *(v44 + *(v39 + 44));
  v51 = a2;
  v52 = a3;
  v21 = v42;
  v53 = v42;
  v36[1] = swift_getKeyPath();
  v22 = v41;
  v23 = v20;
  v24 = v19;
  (*(v7 + 16))(v41, v23, v19);
  v25 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = a2;
  *(v26 + 3) = a3;
  *(v26 + 4) = v21;
  (*(v7 + 32))(&v26[v25], v22, v24);
  v27 = sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF510]);
  v28 = sub_27597DC18();
  v59 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);

  v29 = swift_getWitnessTable();
  v57 = v28;
  v58 = v29;
  v30 = swift_getWitnessTable();
  v55 = v27;
  v56 = v30;
  v35 = swift_getWitnessTable();
  v31 = v37;
  sub_2759B9ED8();
  v54 = v35;
  swift_getWitnessTable();
  v32 = v40;
  sub_2758C832C();
  v33 = *(v49 + 8);
  v33(v31, v15);
  sub_2758C832C();
  return (v33)(v32, v15);
}

uint64_t sub_27597B230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a7;
  v29[1] = a6;
  v30 = a2;
  v35 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  v47 = sub_2759BA448();
  v48 = a3;
  v49 = type metadata accessor for SixPackCard(255);
  WitnessTable = swift_getWitnessTable();
  v51 = a4;
  v32 = sub_2759B9EF8();
  v31 = sub_2759B95F8();
  sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF500]);
  v12 = sub_2759B8FE8();
  v34 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v29 - v16;
  v18 = *a1;
  v19 = sub_2759BA028();
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  *(v22 + 32) = a5;
  *(v22 + 40) = v19;
  *(v22 + 48) = v21;
  *(v22 + 56) = 0x4028000000000000;
  *(v22 + 64) = 0;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v18;
  v41 = v30;
  sub_27597B5D4(v33, v36, v15);

  v23 = sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF510]);
  v24 = sub_27597DC18();
  v46 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  v25 = swift_getWitnessTable();
  v44 = v24;
  v45 = v25;
  v26 = swift_getWitnessTable();
  v42 = v23;
  v43 = v26;
  swift_getWitnessTable();
  sub_2758C832C();
  v27 = *(v34 + 8);
  v27(v15, v12);
  sub_2758C832C();
  return (v27)(v17, v12);
}

uint64_t sub_27597B5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  sub_2759BA448();
  type metadata accessor for SixPackCard(255);
  swift_getWitnessTable();
  sub_2759B9EF8();
  v12 = sub_2759B95F8();
  v15 = sub_27586D8BC(v12, v13, v14);
  sub_27597DC18();
  sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  return sub_27596F1F0(a1, a2, &type metadata for EqualSizeHStackLayout, v12, v15, WitnessTable, a9);
}

uint64_t sub_27597B768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v83 = a7;
  v78 = a6;
  v90 = a5;
  v87 = a2;
  v94 = a8;
  v11 = sub_2759BA448();
  v12 = type metadata accessor for SixPackCard(255);
  v80 = v11;
  v101 = v11;
  v102 = a3;
  v103 = v12;
  WitnessTable = swift_getWitnessTable();
  v79 = WitnessTable;
  v88 = a4;
  v105 = a4;
  v13 = sub_2759B9EF8();
  v84 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v82 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = v72 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F88, &qword_2759CE2E0);
  MEMORY[0x28223BE20](v89);
  v86 = v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FD0, &qword_2759CE3E8);
  MEMORY[0x28223BE20](v18);
  v20 = v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11F60, &qword_2759CE2D8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v72 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v77 = v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v76 = v72 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v85 = v72 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = (v72 - v31);
  v91 = v13;
  v33 = sub_2759B95F8();
  v92 = *(v33 - 8);
  v93 = v33;
  MEMORY[0x28223BE20](v33);
  v35 = v72 - v34;
  v36 = sub_2759BA428();
  if (v36 == 1)
  {
    sub_2759BA458();
    v37 = v101;
    *(v32 + v12[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
    swift_storeEnumTagMultiPayload();
    *(v32 + v12[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
    swift_storeEnumTagMultiPayload();
    *(v32 + v12[7]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
    swift_storeEnumTagMultiPayload();
    v38 = v90;
    *v32 = v37;
    v32[1] = v38;
    sub_27597FCCC(v32, v20, type metadata accessor for SixPackCard);
    swift_storeEnumTagMultiPayload();
    v39 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
    sub_27589B02C(&qword_280A11F80, &qword_280A11F88, &qword_2759CE2E0, MEMORY[0x277CE14C0]);
    sub_2759B95E8();
    v40 = sub_27597DC18();
    v95 = v39;
    v41 = v91;
    v42 = swift_getWitnessTable();
    sub_27596F000(v24, v21, v41, v40, v42);
    sub_27586BF04(v24, &qword_280A11F60, &qword_2759CE2D8);
    sub_27597E920(v32, type metadata accessor for SixPackCard);
  }

  else
  {
    v43 = v36;
    v72[1] = v18;
    v73 = v24;
    v74 = v21;
    v75 = v35;
    v44 = v88;
    v45 = v90;
    v46 = type metadata accessor for SixPackGrid(0, a3, v88, v90);
    if (v43 == 2 && *(v87 + *(v46 + 48)) == 3)
    {
      sub_2759BA458();
      v88 = v101;
      *(v32 + v12[5]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
      swift_storeEnumTagMultiPayload();
      *(v32 + v12[6]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
      swift_storeEnumTagMultiPayload();
      *(v32 + v12[7]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
      swift_storeEnumTagMultiPayload();
      *v32 = v88;
      v32[1] = v45;
      sub_2759BA458();
      v47 = v101;
      KeyPath = swift_getKeyPath();
      v49 = v85;
      *&v85[v12[5]] = KeyPath;
      swift_storeEnumTagMultiPayload();
      *(v49 + v12[6]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v49 + v12[7]) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *v49 = v47;
      v49[1] = v45;
      v50 = v76;
      sub_27597FCCC(v32, v76, type metadata accessor for SixPackCard);
      v51 = v77;
      sub_27597FCCC(v49, v77, type metadata accessor for SixPackCard);
      v52 = v86;
      sub_27597FCCC(v50, v86, type metadata accessor for SixPackCard);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FD8, &qword_2759CE3F0);
      sub_27597FCCC(v51, v52 + *(v53 + 48), type metadata accessor for SixPackCard);
      sub_27597E920(v51, type metadata accessor for SixPackCard);
      sub_27597E920(v50, type metadata accessor for SixPackCard);
      sub_27586FBC8(v52, v20, &qword_280A11F88, &qword_2759CE2E0);
      swift_storeEnumTagMultiPayload();
      v54 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
      sub_27589B02C(&qword_280A11F80, &qword_280A11F88, &qword_2759CE2E0, MEMORY[0x277CE14C0]);
      v55 = v73;
      sub_2759B95E8();
      v56 = sub_27597DC18();
      v96 = v54;
      v57 = v91;
      v58 = swift_getWitnessTable();
      v35 = v75;
      sub_27596F000(v55, v74, v57, v56, v58);
      sub_27586BF04(v55, &qword_280A11F60, &qword_2759CE2D8);
      sub_27586BF04(v52, &qword_280A11F88, &qword_2759CE2E0);
      sub_27597E920(v49, type metadata accessor for SixPackCard);
      sub_27597E920(v32, type metadata accessor for SixPackCard);
    }

    else
    {
      v101 = a1;
      MEMORY[0x28223BE20](v46);
      v72[-4] = a3;
      v72[-3] = v44;
      swift_getKeyPath();
      v59 = swift_allocObject();
      v59[2] = a3;
      v59[3] = v44;
      v59[4] = v45;
      v60 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);

      v71 = v60;
      v61 = v82;
      sub_2759B9ED8();
      v100 = v60;
      v62 = v91;
      v63 = swift_getWitnessTable();
      v64 = v81;
      sub_2758C832C();
      v65 = *(v84 + 8);
      v65(v61, v62);
      sub_2758C832C();
      v66 = sub_27597DC18();
      v35 = v75;
      sub_27596F0F8(v61, v74, v62, v66, v63);
      v65(v61, v62);
      v65(v64, v62);
    }
  }

  v67 = sub_27597DC18();
  v99 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  v68 = swift_getWitnessTable();
  v97 = v67;
  v98 = v68;
  v69 = v93;
  swift_getWitnessTable();
  sub_2758C832C();
  return (*(v92 + 8))(v35, v69);
}

uint64_t sub_27597C364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v9 = sub_2759BA448();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11FB0, &unk_2759CE2F8);
  WitnessTable = swift_getWitnessTable();
  v34 = v9;
  v35 = a2;
  v36 = v24;
  v37 = WitnessTable;
  v38 = a3;
  v10 = sub_2759B9EF8();
  v25 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v22 = &v21 - v14;
  v34 = *(a1 + *(type metadata accessor for SixPackGrid(0, a2, a3, a4) + 44));
  v30 = a2;
  v31 = a3;
  v32 = a4;
  sub_2759BA448();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = sub_2759BA3A8();

  v34 = v15;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v20 = sub_27589B02C(&qword_280A11FB8, &qword_280A11FB0, &unk_2759CE2F8, MEMORY[0x277CDF0A0]);
  sub_2759B9ED8();
  v33 = v20;
  swift_getWitnessTable();
  v17 = v22;
  sub_2758C832C();
  v18 = *(v25 + 8);
  v18(v13, v10);
  sub_2758C832C();
  return (v18)(v17, v10);
}

uint64_t sub_27597C69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for SixPackCard(0);
  *(a3 + v7[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  a3[1] = a2;

  return swift_unknownObjectRetain();
}

uint64_t sub_27597C7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v48 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12378, &qword_2759CE898);
  MEMORY[0x28223BE20](v49);
  v4 = &v46 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12380, &qword_2759CE8A0);
  MEMORY[0x28223BE20](v47);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12388, &qword_2759CE8A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12390, &qword_2759CE8B0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = *(v2 + 32);
  sub_2759BA028();
  if (v13)
  {
    sub_2759B8F18();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12398, &qword_2759CE8B8);
    (*(*(v14 - 8) + 16))(v9, v46, v14);
    v15 = &v9[*(v7 + 36)];
    v16 = v51;
    *v15 = v50;
    *(v15 + 1) = v16;
    *(v15 + 2) = v52;
    sub_27597FD34();
    sub_2759B9B38();
    sub_27586BF04(v9, &qword_280A12388, &qword_2759CE8A8);
    if (qword_280A0E328 != -1)
    {
      swift_once();
    }

    v17 = qword_280A23890;
    v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A123D0, &qword_2759CE8C8) + 36)];
    *v18 = v17;
    v18[1] = sub_2759803B0;
    v18[2] = 0;
    LOBYTE(v17) = sub_2759B97E8();
    sub_2759B8D78();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A123C0, &qword_2759CE8C0) + 36)];
    *v27 = v17;
    *(v27 + 1) = v20;
    *(v27 + 2) = v22;
    *(v27 + 3) = v24;
    *(v27 + 4) = v26;
    v27[40] = 0;
    LOBYTE(v17) = sub_2759B97F8();
    sub_2759B8D78();
    v28 = &v12[*(v10 + 36)];
    *v28 = v17;
    *(v28 + 1) = v29;
    *(v28 + 2) = v30;
    *(v28 + 3) = v31;
    *(v28 + 4) = v32;
    v28[40] = 0;
    v33 = &qword_280A12390;
    v34 = &qword_2759CE8B0;
    sub_27586FBC8(v12, v6, &qword_280A12390, &qword_2759CE8B0);
    swift_storeEnumTagMultiPayload();
    sub_27597FDEC();
    sub_27598004C();
    sub_2759B95E8();
    v35 = v12;
  }

  else
  {
    sub_2759B8F18();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12398, &qword_2759CE8B8);
    (*(*(v36 - 8) + 16))(v9, v46, v36);
    v37 = &v9[*(v7 + 36)];
    v38 = v51;
    *v37 = v50;
    *(v37 + 1) = v38;
    *(v37 + 2) = v52;
    sub_27597FD34();
    sub_2759B9B38();
    sub_27586BF04(v9, &qword_280A12388, &qword_2759CE8A8);
    v39 = sub_2759B97E8();
    sub_2759B8D78();
    v40 = &v4[*(v49 + 36)];
    *v40 = v39;
    *(v40 + 1) = v41;
    *(v40 + 2) = v42;
    *(v40 + 3) = v43;
    *(v40 + 4) = v44;
    v40[40] = 0;
    v33 = &qword_280A12378;
    v34 = &qword_2759CE898;
    sub_27586FBC8(v4, v6, &qword_280A12378, &qword_2759CE898);
    swift_storeEnumTagMultiPayload();
    sub_27597FDEC();
    sub_27598004C();
    sub_2759B95E8();
    v35 = v4;
  }

  return sub_27586BF04(v35, v33, v34);
}

uint64_t sub_27597CCB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2759B93D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_27586FBC8(v2, &v14 - v9, &qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B8DA8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_27597CEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v62 = sub_2759B8DA8();
  v3 = *(v62 - 8);
  v4 = MEMORY[0x28223BE20](v62);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v61 - v7;
  v9 = sub_2759B9108();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12320, &qword_2759CE810);
  MEMORY[0x28223BE20](v63);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12328, &qword_2759CE818);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12330, &qword_2759CE820);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - v20;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12338, &qword_2759CE828);
  MEMORY[0x28223BE20](v64);
  v66 = &v61 - v22;
  v67 = a1;
  sub_2759B96D8();
  v23 = *(v19 + 44);
  v24 = v62;
  v65 = v21;
  v25 = &v21[v23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12340, &qword_2759CE830);
  sub_2759B9138();
  *v25 = swift_getKeyPath();
  v26 = *(v10 + 28);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_2759B94B8();
  (*(*(v28 - 8) + 104))(&v12[v26], v27, v28);
  __asm { FMOV            V0.2D, #10.0 }

  *v12 = _Q0;
  sub_27597CCB8(v8);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v24);
  sub_2759B8D98();
  v34 = *(v3 + 8);
  v34(v6, v24);
  if (qword_280A0E3E0 != -1)
  {
    swift_once();
  }

  v35 = qword_280A239E0;

  v34(v8, v24);
  v36 = MEMORY[0x277CDFC08];
  sub_27597FC64(v12, v14, MEMORY[0x277CDFC08]);
  v37 = v63;
  *&v14[*(v63 + 52)] = v35;
  *&v14[*(v37 + 56)] = 256;
  sub_2759B9C18();
  v38 = sub_2759B9C58();

  sub_2759B8DD8();
  sub_27597FCCC(v14, v17, v36);
  v39 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12348, &qword_2759CE868) + 36)];
  v40 = v70;
  *v39 = v69;
  *(v39 + 1) = v40;
  *(v39 + 4) = v71;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12350, &qword_2759CE870);
  *&v17[*(v41 + 52)] = v38;
  *&v17[*(v41 + 56)] = 256;
  v42 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12358, &qword_2759CE878) + 36)];
  sub_27586FBC8(v14, v42, &qword_280A12320, &qword_2759CE810);
  v43 = sub_2759BA028();
  v45 = v44;
  sub_27586BF04(v14, &qword_280A12320, &qword_2759CE810);
  v46 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12360, &qword_2759CE880) + 36));
  *v46 = v43;
  v46[1] = v45;
  v47 = sub_2759BA028();
  v49 = v48;
  v50 = v66;
  v51 = &v66[*(v64 + 36)];
  sub_27589F26C(v17, v51, &qword_280A12328, &qword_2759CE818);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12368, &qword_2759CE888) + 36));
  *v52 = v47;
  v52[1] = v49;
  sub_27589F26C(v65, v50, &qword_280A12330, &qword_2759CE820);
  if (sub_2759B96E8())
  {
    v53 = 0.95;
  }

  else
  {
    v53 = 1.0;
  }

  sub_2759BA118();
  v55 = v54;
  v57 = v56;
  v58 = v68;
  sub_27589F26C(v50, v68, &qword_280A12338, &qword_2759CE828);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12370, &qword_2759CE890);
  v60 = v58 + *(result + 36);
  *v60 = v53;
  *(v60 + 8) = v53;
  *(v60 + 16) = v55;
  *(v60 + 24) = v57;
  return result;
}

uint64_t sub_27597D4D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC8, &qword_2759CE3C8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27586FBC8(a1, &v5 - v3, &qword_280A11FC8, &qword_2759CE3C8);
  return sub_2759B9298();
}

uint64_t sub_27597D57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  v9();
  sub_2758C832C();
  v12 = *(v5 + 8);
  v12(v8, a4);
  sub_2758C832C();
  return (v12)(v11, a4);
}

uint64_t sub_27597D6B0(uint64_t a1)
{
  v2 = sub_2759B9148();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2759B9218();
}

id sub_27597D778(double a1, double a2)
{
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a1 scale:{a2, v6}];
  v8 = objc_opt_self();
  v9 = [v8 currentTraitCollection];
  v10 = [v9 layoutDirection];

  if (v10 == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  [v7 setLanguageDirection_];
  v12 = [v8 currentTraitCollection];
  v13 = [v12 accessibilityContrast];

  [v7 setContrast_];
  [v7 setDrawBorder_];
  [v7 setShape_];
  return v7;
}

void sub_27597D8EC(uint64_t a1)
{
  sub_27597E424(319, &qword_280A0F5F0, MEMORY[0x277CE02A8]);
  if (v1 <= 0x3F)
  {
    sub_2759BA448();
    sub_2759BA448();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_27597DA50()
{
  result = qword_280A11F20;
  if (!qword_280A11F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F18, &qword_2759CE2B8);
    sub_27597DB08();
    sub_27589B02C(&qword_280A11F48, &qword_280A11F50, &qword_2759CE2C8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11F20);
  }

  return result;
}

unint64_t sub_27597DB08()
{
  result = qword_280A11F28;
  if (!qword_280A11F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
    v3 = sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
    sub_27597DBC4(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11F28);
  }

  return result;
}

unint64_t sub_27597DBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11F40;
  if (!qword_280A11F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11F40);
  }

  return result;
}

unint64_t sub_27597DC18()
{
  result = qword_280A11F78;
  if (!qword_280A11F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
    sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
    sub_27589B02C(&qword_280A11F80, &qword_280A11F88, &qword_2759CE2E0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11F78);
  }

  return result;
}

unint64_t sub_27597DD00()
{
  result = qword_280A11F98;
  if (!qword_280A11F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F90, &qword_2759CE2E8);
    sub_27597DB08();
    sub_27589B02C(&qword_280A11FA0, &qword_280A11FA8, &qword_2759CE2F0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11F98);
  }

  return result;
}

uint64_t sub_27597DDC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *a1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FB0, &unk_2759CE2F8);
  return sub_27597C69C(v5, v4, (a2 + *(v6 + 36)));
}

uint64_t sub_27597DEE8(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(type metadata accessor for SixPackGrid(0, v4, v5, v6) - 8);
  v8 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return a2(a1, v8, v4, v5, v6);
}

uint64_t sub_27597E014@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = *(type metadata accessor for SixPackGrid(0, v9, v10, v11) - 8);
  return sub_27597B230(a1, v4 + ((*(v12 + 80) + 40) & ~*(v12 + 80)), v9, v10, v11, a2, a3, a4);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(type metadata accessor for SixPackGrid(0, v0[2], v0[3], v0[4]) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2759B94D8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_27597E2D8(uint64_t a1)
{
  sub_27597E3C4();
  if (v1 <= 0x3F)
  {
    sub_27597E424(319, &qword_280A0F928, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      sub_27597E478(319);
      if (v3 <= 0x3F)
      {
        sub_27597E424(319, &qword_280A0F5F0, MEMORY[0x277CE02A8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_27597E3C4()
{
  result = qword_280A12018;
  if (!qword_280A12018)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280A12018);
  }

  return result;
}

void sub_27597E424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2759B8DB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_27597E478(uint64_t a1)
{
  if (!qword_280A12020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11FC8, &qword_2759CE3C8);
    v1 = sub_2759B8DB8();
    if (!v2)
    {
      atomic_store(v1, &qword_280A12020);
    }
  }
}

unint64_t sub_27597E538()
{
  result = qword_280A12048;
  if (!qword_280A12048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12040, &qword_2759CE4A0);
    sub_27597E5C4();
    sub_27597E794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12048);
  }

  return result;
}

unint64_t sub_27597E5C4()
{
  result = qword_280A12050;
  if (!qword_280A12050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12058, &qword_2759CE4A8);
    sub_27597E650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12050);
  }

  return result;
}

unint64_t sub_27597E650()
{
  result = qword_280A12060;
  if (!qword_280A12060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12068, &qword_2759CE4B0);
    sub_27597E6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12060);
  }

  return result;
}

unint64_t sub_27597E6DC()
{
  result = qword_280A12070;
  if (!qword_280A12070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12078, &qword_2759CE4B8);
    sub_27589B02C(&qword_280A12080, &qword_280A12088, &qword_2759CE4C0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12070);
  }

  return result;
}

unint64_t sub_27597E794()
{
  result = qword_280A12090;
  if (!qword_280A12090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12098, &qword_2759CE4C8);
    sub_27597E820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12090);
  }

  return result;
}

unint64_t sub_27597E820()
{
  result = qword_280A120A0;
  if (!qword_280A120A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A120A8, &qword_2759CE4D0);
    sub_27589B02C(&qword_280A120B0, &qword_280A120B8, &qword_2759CE4D8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A120A0);
  }

  return result;
}

uint64_t sub_27597E8D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27597E920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_62Tm()
{
  v1 = type metadata accessor for SixPackCard(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  swift_unknownObjectRelease();
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2759B8DA8();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2759B96B8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2759B94D8();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27597EBF8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SixPackCard(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_27597EC6C()
{
  result = qword_280A120D0;
  if (!qword_280A120D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12038, &qword_2759CE498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12028, &qword_2759CE488);
    type metadata accessor for SixPackButtonStyle(255);
    sub_27589B02C(&qword_280A120C0, &qword_280A12028, &qword_2759CE488, MEMORY[0x277CDF028]);
    sub_27597E8D8(&qword_280A120C8, type metadata accessor for SixPackButtonStyle, &unk_2759CE7D8);
    swift_getOpaqueTypeConformance2();
    sub_27597E8D8(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A120D0);
  }

  return result;
}

unint64_t sub_27597EDE8()
{
  result = qword_280A12168;
  if (!qword_280A12168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12160, &qword_2759CE5D8);
    sub_27597EEA0();
    sub_27589B02C(&qword_280A12190, &qword_280A12198, &qword_2759CE5F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12168);
  }

  return result;
}

unint64_t sub_27597EEA0()
{
  result = qword_280A12170;
  if (!qword_280A12170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12178, &qword_2759CE5E0);
    sub_27589B02C(&qword_280A12180, &qword_280A12188, &qword_2759CE5E8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12170);
  }

  return result;
}

uint64_t sub_27597EF58@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2759B8508() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SixPackCard(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2759739EC(a1, v2 + v6, v9, a2);
}

unint64_t sub_27597F03C()
{
  result = qword_280A121B0;
  if (!qword_280A121B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A121A8, &qword_2759CE600);
    sub_27597F0F4();
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121B0);
  }

  return result;
}

unint64_t sub_27597F0F4()
{
  result = qword_280A121B8;
  if (!qword_280A121B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A121C0, &qword_2759CE608);
    sub_27589B02C(&qword_280A121C8, &qword_280A121D0, &unk_2759CE610, MEMORY[0x277CDD638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121B8);
  }

  return result;
}

unint64_t sub_27597F1AC()
{
  result = qword_280A121D8;
  if (!qword_280A121D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12140, &qword_2759CE558);
    sub_27597F238();
    sub_27597F344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121D8);
  }

  return result;
}

unint64_t sub_27597F238()
{
  result = qword_280A121E0;
  if (!qword_280A121E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12148, &qword_2759CE560);
    v3 = sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0, MEMORY[0x277CDD7F8]);
    sub_27597F2F0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121E0);
  }

  return result;
}

unint64_t sub_27597F2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A121E8;
  if (!qword_280A121E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121E8);
  }

  return result;
}

unint64_t sub_27597F344()
{
  result = qword_280A121F0;
  if (!qword_280A121F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12128, &unk_2759CE538);
    sub_27589B02C(&qword_280A0FF90, &qword_280A0FF88, qword_2759C5C20, MEMORY[0x277D7EA70]);
    sub_27597E8D8(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121F0);
  }

  return result;
}

unint64_t sub_27597F42C()
{
  result = qword_280A121F8;
  if (!qword_280A121F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12120, &unk_2759CE528);
    v3 = sub_27589B02C(&qword_280A12200, &qword_280A12208, &qword_2759CE620, MEMORY[0x277CDD638]);
    sub_27597F2F0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A121F8);
  }

  return result;
}

void sub_27597F4E4(uint64_t a1)
{
  v3 = *(type metadata accessor for SixPackCard(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_275974354(a1, v4);
}

unint64_t sub_27597F564()
{
  result = qword_280A12228;
  if (!qword_280A12228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12220, &qword_2759CE638);
    sub_27597F5F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12228);
  }

  return result;
}

unint64_t sub_27597F5F0()
{
  result = qword_280A12230;
  if (!qword_280A12230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12238, &qword_2759CE640);
    sub_27589B02C(&qword_280A0FF90, &qword_280A0FF88, qword_2759C5C20, MEMORY[0x277D7EA70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12230);
  }

  return result;
}

unint64_t sub_27597F6A0()
{
  result = qword_280A12288;
  if (!qword_280A12288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12260, &qword_2759CE668);
    v3 = sub_27589B02C(&qword_280A0FF90, &qword_280A0FF88, qword_2759C5C20, MEMORY[0x277D7EA70]);
    sub_27597F2F0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12288);
  }

  return result;
}

unint64_t sub_27597F758()
{
  result = qword_280A12290;
  if (!qword_280A12290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12278, &qword_2759CE680);
    sub_27597F238();
    sub_27597F6A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12290);
  }

  return result;
}

unint64_t sub_27597F7E4()
{
  result = qword_280A12298;
  if (!qword_280A12298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12258, &qword_2759CE660);
    sub_27597F6A0();
    sub_27597F238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12298);
  }

  return result;
}

unint64_t sub_27597F870()
{
  result = qword_280A122D8;
  if (!qword_280A122D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A122C8, &qword_2759CE6B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12178, &qword_2759CE5E0);
    sub_27597EEA0();
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A122E0, &qword_280A122E8, &qword_2759CE6F8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A122D8);
  }

  return result;
}

unint64_t sub_27597F964()
{
  result = qword_280A12300;
  if (!qword_280A12300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A122B8, &qword_2759CE6A8);
    sub_27597F870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12300);
  }

  return result;
}

uint64_t sub_27597F9F0(uint64_t a1)
{
  v4 = *(type metadata accessor for SixPackCard(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_275970080(a1, v6, v7, v1 + v5);
}

void sub_27597FB08(uint64_t a1)
{
  sub_27597E424(319, &qword_280A0F928, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_27597FB90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27597FBD8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_27597FC64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_27597FCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_27597FD34()
{
  result = qword_280A123A0;
  if (!qword_280A123A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12388, &qword_2759CE8A8);
    sub_27589B02C(&qword_280A123A8, &qword_280A12398, &qword_2759CE8B8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123A0);
  }

  return result;
}

unint64_t sub_27597FDEC()
{
  result = qword_280A123B0;
  if (!qword_280A123B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12390, &qword_2759CE8B0);
    sub_27597FE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123B0);
  }

  return result;
}

unint64_t sub_27597FE78()
{
  result = qword_280A123B8;
  if (!qword_280A123B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A123C0, &qword_2759CE8C0);
    sub_27597FF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123B8);
  }

  return result;
}

unint64_t sub_27597FF04()
{
  result = qword_280A123C8;
  if (!qword_280A123C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A123D0, &qword_2759CE8C8);
    sub_27597FF90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123C8);
  }

  return result;
}

unint64_t sub_27597FF90()
{
  result = qword_280A123D8;
  if (!qword_280A123D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A123E0, &qword_2759CE8D0);
    sub_27597FD34();
    sub_27597E8D8(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123D8);
  }

  return result;
}

unint64_t sub_27598004C()
{
  result = qword_280A123E8;
  if (!qword_280A123E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12378, &qword_2759CE898);
    sub_27597FF90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123E8);
  }

  return result;
}

unint64_t sub_2759800D8()
{
  result = qword_280A123F0;
  if (!qword_280A123F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12370, &qword_2759CE890);
    sub_275980164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123F0);
  }

  return result;
}

unint64_t sub_275980164()
{
  result = qword_280A123F8;
  if (!qword_280A123F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12338, &qword_2759CE828);
    sub_27598021C();
    sub_27589B02C(&qword_280A12418, &qword_280A12368, &qword_2759CE888, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A123F8);
  }

  return result;
}

unint64_t sub_27598021C()
{
  result = qword_280A12400;
  if (!qword_280A12400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12330, &qword_2759CE820);
    sub_27597E8D8(&qword_280A12408, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_27589B02C(&qword_280A12410, &qword_280A12340, &qword_2759CE830, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12400);
  }

  return result;
}

unint64_t sub_275980304()
{
  result = qword_280A12420;
  if (!qword_280A12420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12428, &unk_2759CE8D8);
    sub_27597FDEC();
    sub_27598004C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12420);
  }

  return result;
}

uint64_t sub_2759803C0()
{
  v0[2] = sub_2759BA4C8();
  v0[3] = sub_2759BA4B8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_27588B550;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(0, 1);
}

char *sub_275980478@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v152 = a4;
  v143 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v8 - 8);
  v149 = &v109 - v9;
  v148 = sub_2759B8458();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v11 = (&v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2759B85C8();
  MEMORY[0x28223BE20](v12 - 8);
  v145 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2759BA248();
  MEMORY[0x28223BE20](v14 - 8);
  v121 = sub_2759B8468();
  v146 = *(v121 - 8);
  v151 = v146;
  MEMORY[0x28223BE20](v121);
  v150 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2759BA188();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12430, &qword_2759CE9B0);
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v21 = &v109 - v20;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12438, &qword_2759CE9B8);
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v109 - v22;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12440, &qword_2759CE9C0);
  MEMORY[0x28223BE20](v110);
  v122 = &v109 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12448, &qword_2759CE9C8);
  MEMORY[0x28223BE20](v120);
  v124 = &v109 - v24;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12450, &qword_2759CE9D0);
  MEMORY[0x28223BE20](v123);
  v125 = &v109 - v25;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12458, &qword_2759CE9D8);
  MEMORY[0x28223BE20](v128);
  v127 = &v109 - v26;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12460, &qword_2759CE9E0);
  v136 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v130 = &v109 - v27;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12468, &qword_2759CE9E8);
  MEMORY[0x28223BE20](v134);
  v132 = &v109 - v28;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12470, &qword_2759CE9F0);
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v131 = &v109 - v29;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12478, &qword_2759CE9F8);
  MEMORY[0x28223BE20](v129);
  v137 = &v109 - v30;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12480, &qword_2759CEA00);
  MEMORY[0x28223BE20](v133);
  v135 = &v109 - v31;
  v141 = a1;
  v153 = a1;
  v154 = a2;
  v142 = a2;
  v126 = a3;
  v155 = a3;
  v156 = v152;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12488, &qword_2759CEA08);
  sub_27589B02C(&qword_280A12490, &qword_280A12488, &qword_2759CEA08, MEMORY[0x277CE14C0]);
  v112 = v21;
  sub_2759B9938();
  *v19 = 0xD000000000000021;
  v19[1] = 0x80000002759DDB00;
  v32 = *MEMORY[0x277D4D788];
  v118 = v17;
  v33 = *(v17 + 104);
  v117 = v19;
  v119 = v16;
  v33(v19, v32, v16);
  sub_2759BA238();
  v144 = "Localizable-Backup";
  sub_2759B85B8();
  v34 = type metadata accessor for iCloudHomeViewModel(0);
  *v11 = v34;
  v35 = *MEMORY[0x277CC9120];
  v36 = *(v147 + 104);
  v37 = v11;
  v38 = v11;
  v39 = v148;
  v36(v37, v35, v148);
  sub_2759B8478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12498, &qword_2759CEA10);
  v147 = *(v146 + 72);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2759C2110;
  v146 = v40;
  sub_2759BA238();
  sub_2759B85B8();
  *v38 = v34;
  v36(v38, v35, v39);
  sub_2759B8478();
  sub_2759BA238();
  sub_2759B85B8();
  *v38 = v34;
  v36(v38, v35, v39);
  v41 = v149;
  sub_2759B8478();
  sub_2759B84F8();
  v42 = sub_2759B8508();
  v43 = *(v42 - 8);
  result = (*(v43 + 48))(v41, 1, v42);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    LODWORD(v148) = v126 & 1;
    sub_27589B02C(&qword_280A124A0, &qword_280A12430, &qword_2759CE9B0, MEMORY[0x277CDE5A0]);
    v45 = v111;
    v46 = v117;
    v47 = v150;
    v48 = v116;
    v49 = v112;
    sub_2759B9A18();

    (*(v151 + 8))(v47, v121);
    (*(v118 + 8))(v46, v119);
    (*(v114 + 8))(v49, v48);
    (*(v43 + 8))(v41, v42);
    KeyPath = swift_getKeyPath();
    v51 = v122;
    (*(v113 + 32))(v122, v45, v115);
    v52 = &v51[*(v110 + 36)];
    *v52 = KeyPath;
    v52[1] = 0;
    v53 = sub_2759BA098();
    v54 = v141;
    v55 = v142;
    v159 = v141;
    v160 = v142;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v56 = v157;
    swift_getKeyPath();
    v159 = v56;
    sub_275982050(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v57 = *&v56[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
    v58 = v57;

    v59 = v51;
    v60 = v124;
    sub_27589F26C(v59, v124, &qword_280A12440, &qword_2759CE9C0);
    v61 = (v60 + *(v120 + 36));
    *v61 = v53;
    v61[1] = v57;
    v62 = sub_2759BA098();
    v159 = v54;
    v160 = v55;
    sub_2759B9D68();
    v63 = v157;
    v64 = *&v157[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps];

    v65 = v60;
    v66 = v125;
    sub_27589F26C(v65, v125, &qword_280A12448, &qword_2759CE9C8);
    v67 = (v66 + *(v123 + 36));
    *v67 = v62;
    v67[1] = v64;
    v68 = sub_2759BA098();
    v159 = v54;
    v160 = v55;
    sub_2759B9D68();
    v69 = v157;
    v70 = *&v157[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps];

    v71 = v66;
    v72 = v127;
    sub_27589F26C(v71, v127, &qword_280A12450, &qword_2759CE9D0);
    v73 = (v72 + *(v128 + 36));
    *v73 = v68;
    v73[1] = v70;
    v159 = v54;
    v160 = v55;
    sub_2759B9D68();
    v74 = v157;
    swift_getKeyPath();
    v159 = v74;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();

    v76 = v55;
    if (Strong && (swift_getKeyPath(), v159 = Strong, sub_275982050(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel), sub_2759B8638(), , v77 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel, swift_beginAccess(), v78 = *&Strong[v77], v79 = v78, Strong, v78))
    {
      v80 = *&v79[OBJC_IVAR___ICSHomeDataModel_manageStorageViewInfo];

      v82 = *&v80[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_title];
      v81 = *&v80[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_title + 8];
    }

    else
    {
      v82 = 0;
      v81 = 0xE000000000000000;
    }

    v157 = v82;
    v158 = v81;
    v83 = sub_275982098();
    sub_27589F2D4(v83, v84, v85);
    v86 = v130;
    sub_2759B9AC8();

    sub_27586BF04(v72, &qword_280A12458, &qword_2759CE9D8);
    v87 = sub_2759B97E8();
    sub_2759B8D78();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = v132;
    (*(v136 + 32))(v132, v86, v139);
    v97 = v96 + *(v134 + 36);
    *v97 = v87;
    *(v97 + 8) = v89;
    *(v97 + 16) = v91;
    *(v97 + 24) = v93;
    *(v97 + 32) = v95;
    *(v97 + 40) = 0;
    sub_2759823E8();
    v98 = v131;
    sub_2759B9A08();
    sub_27586BF04(v96, &qword_280A12468, &qword_2759CE9E8);
    v99 = swift_allocObject();
    *(v99 + 16) = v54;
    *(v99 + 24) = v76;
    v100 = v148;
    *(v99 + 32) = v148;
    v101 = v152;
    *(v99 + 40) = v152;
    v102 = v137;
    (*(v138 + 32))(v137, v98, v140);
    v103 = &v102[*(v129 + 36)];
    *v103 = sub_2759824CC;
    v103[1] = v99;
    v103[2] = 0;
    v103[3] = 0;
    v104 = swift_allocObject();
    *(v104 + 16) = v54;
    *(v104 + 24) = v76;
    *(v104 + 32) = v100;
    *(v104 + 40) = v101;
    v105 = v102;
    v106 = v135;
    sub_27589F26C(v105, v135, &qword_280A12478, &qword_2759CE9F8);
    v107 = (v106 + *(v133 + 36));
    *v107 = 0;
    v107[1] = 0;
    v107[2] = sub_275982524;
    v107[3] = v104;
    sub_27589F26C(v106, v143, &qword_280A12480, &qword_2759CEA00);
    swift_retain_n();
    v152 = v54;
    swift_retain_n();
    v108 = v152;

    return v108;
  }

  return result;
}

uint64_t sub_2759816BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ManageStorageThermometerView(0);
  v7 = (v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  *&v49[0] = a1;
  *(&v49[0] + 1) = a2;
  *&v39 = a1;
  *(&v39 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  sub_2759308A0(0, *&v47[0], &v41);
  *&v49[0] = a1;
  *(&v49[0] + 1) = a2;
  sub_2759B9D68();
  v12 = *&v47[0];
  *&v47[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C70, qword_2759C1240);
  sub_2759B9D58();
  v13 = *&v49[0];
  v14 = v7[11];
  *&v11[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *&v11[v7[12]] = 0x3FEBBE76C8B43958;
  v15 = &v11[v7[13]];
  *v15 = 0x303838373837;
  *(v15 + 1) = 0xE600000000000000;
  *&v11[v7[14]] = 0x3FD47AE147AE147BLL;
  *&v47[0] = v12;
  v16 = v12;
  sub_2759B9D58();

  *v11 = v49[0];
  LOBYTE(v47[0]) = 0;
  sub_2759B9D58();

  v17 = *(&v49[0] + 1);
  v11[16] = v49[0];
  *(v11 + 3) = v17;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  v18 = v39;
  v49[0] = v39;
  sub_2759B9D68();
  type metadata accessor for ManageStorageAppsListViewModel(0);
  sub_2759B9D58();
  v19 = *(&v49[0] + 1);
  v38 = *&v49[0];
  v49[0] = v18;
  sub_2759B9D68();
  sub_2759B9D58();
  v20 = *(&v49[0] + 1);
  v37 = *&v49[0];
  v49[0] = v18;
  sub_2759B9D68();
  sub_2759B9D58();
  v21 = v49[0];
  v22 = v40;
  sub_275982534(v11, v40);
  v23 = v44;
  v24 = v45;
  v47[3] = v44;
  v47[4] = v45;
  v25 = v46;
  v48 = v46;
  v26 = v41;
  v27 = v42;
  v47[0] = v41;
  v47[1] = v42;
  v47[2] = v43;
  *(a3 + 32) = v43;
  *(a3 + 48) = v23;
  *(a3 + 64) = v24;
  *(a3 + 80) = v25;
  *a3 = v26;
  *(a3 + 16) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A124F0, &qword_2759CEB18);
  sub_275982534(v22, a3 + v28[12]);
  v29 = (a3 + v28[16]);
  v30 = v37;
  v31 = v38;
  *v29 = v38;
  v29[1] = v19;
  v29[2] = 0x4044000000000000;
  v32 = (a3 + v28[20]);
  *v32 = v30;
  v32[1] = v20;
  *(a3 + v28[24]) = v21;
  sub_275931040(v47, v49);

  v33 = v31;

  v34 = v30;

  v35 = v21;
  sub_275982598(v11);

  sub_275982598(v40);
  v49[2] = v43;
  v49[3] = v44;
  v49[4] = v45;
  v50 = v46;
  v49[0] = v41;
  v49[1] = v42;
  return sub_275931078(v49);
}

uint64_t sub_275981B18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v15 = a1;
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v7 = v14;
  v8 = *&v14[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController];

  sub_2759BA4D8();
  v9 = sub_2759BA518();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v10;
  *(v11 + 40) = xmmword_2759C3450;
  *(v11 + 56) = 6666;
  *(v11 + 58) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 1;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = -1;
  sub_275931D20(0, 0, v6, &unk_2759C4530, v11);

  return sub_275936100(v6);
}

void sub_275981CD4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  ManageStorageAppsListViewModel.cancelPendingTasks()();
}

uint64_t sub_275981D38(void *a1)
{
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  LOBYTE(v14) = 1;
  sub_2759B9D58();
  v14 = a1;
  v5 = a1;
  sub_2759B9D58();
  v6 = v15;
  sub_2759BA4E8();
  v7 = sub_2759BA518();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  sub_2759BA4C8();
  v8 = v5;
  v9 = sub_2759BA4B8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_27587D460(0, 0, v4, &unk_2759CE8F0, v10);

  return v6;
}

uint64_t sub_275981ED8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return sub_2759803C0();
}

uint64_t sub_275981F8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275981FD4(uint64_t result, int a2, int a3)
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

uint64_t sub_275982050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_275982098()
{
  result = qword_280A124A8;
  if (!qword_280A124A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12458, &qword_2759CE9D8);
    sub_275982150();
    sub_27589B02C(&qword_280A124D8, &qword_280A124E0, &qword_2759CEAD8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A124A8);
  }

  return result;
}

unint64_t sub_275982150()
{
  result = qword_280A124B0;
  if (!qword_280A124B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12450, &qword_2759CE9D0);
    sub_275982208();
    sub_27589B02C(&qword_280A124D8, &qword_280A124E0, &qword_2759CEAD8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A124B0);
  }

  return result;
}

unint64_t sub_275982208()
{
  result = qword_280A124B8;
  if (!qword_280A124B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12448, &qword_2759CE9C8);
    sub_2759822C0();
    sub_27589B02C(&qword_280A124C8, &qword_280A124D0, &qword_2759CEAD0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A124B8);
  }

  return result;
}

unint64_t sub_2759822C0()
{
  result = qword_280A124C0;
  if (!qword_280A124C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12440, &qword_2759CE9C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12430, &qword_2759CE9B0);
    sub_27589B02C(&qword_280A124A0, &qword_280A12430, &qword_2759CE9B0, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A12180, &qword_280A12188, &qword_2759CE5E8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A124C0);
  }

  return result;
}

unint64_t sub_2759823E8()
{
  result = qword_280A124E8;
  if (!qword_280A124E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12468, &qword_2759CE9E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12458, &qword_2759CE9D8);
    v1 = sub_275982098();
    sub_27589F2D4(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A124E8);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275982534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageThermometerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275982598(uint64_t a1)
{
  v2 = type metadata accessor for ManageStorageThermometerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2759825F4()
{
  result = qword_280A124F8;
  if (!qword_280A124F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12480, &qword_2759CEA00);
    sub_275982680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A124F8);
  }

  return result;
}

unint64_t sub_275982680()
{
  result = qword_280A12500;
  if (!qword_280A12500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12478, &qword_2759CE9F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12468, &qword_2759CE9E8);
    sub_2759823E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12500);
  }

  return result;
}

id Feature.__allocating_init(featureId:title:subtitle:icons:action:iTunesItemId:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = objc_allocWithZone(v12);
  v21 = &v20[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = &v20[OBJC_IVAR____TtC14iCloudSettings7Feature_title];
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &v20[OBJC_IVAR____TtC14iCloudSettings7Feature_subtitle];
  *v23 = a5;
  *(v23 + 1) = a6;
  *&v20[OBJC_IVAR____TtC14iCloudSettings7Feature_action] = a8;
  v24 = &v20[OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId];
  *v24 = a9;
  *(v24 + 1) = a10;
  v25 = &v20[OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier];
  *v25 = a11;
  *(v25 + 1) = a12;
  *&v20[OBJC_IVAR____TtC14iCloudSettings7Feature_icons] = a7;
  v28.receiver = v20;
  v28.super_class = v12;
  return objc_msgSendSuper2(&v28, sel_init);
}

void *iCloudHomeDataModel.upsellCard.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_upsellCard);
  v2 = v1;
  return v1;
}

void *iCloudHomeDataModel.icloudPlusCard.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_icloudPlusCard);
  v2 = v1;
  return v1;
}

void *iCloudHomeDataModel.backupViewInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_backupViewInfo);
  v2 = v1;
  return v1;
}

void *iCloudHomeDataModel.preLaunchAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_preLaunchAction);
  v2 = v1;
  return v1;
}

void *iCloudHomeDataModel.manageSubscriptionsAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_manageSubscriptionsAction);
  v2 = v1;
  return v1;
}

void *iCloudHomeDataModel.settingsFooter.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_settingsFooter);
  v2 = v1;
  return v1;
}

void *iCloudHomeDataModel.informationCard.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICSHomeDataModel_informationCard);
  v2 = v1;
  return v1;
}

unint64_t sub_275982AC0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6143726564616568;
    v6 = 0x6C5064756F6C4369;
    v7 = 0x704164756F6C4369;
    if (a1 != 3)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x61436C6C65737075;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65537265746F6F66;
    v2 = 0x74616D726F666E69;
    if (a1 == 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000019;
    if (a1 == 6)
    {
      v3 = 0x636E75614C657270;
    }

    if (a1 == 5)
    {
      v3 = 0x695670756B636162;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

id iCloudHomeDataModel.init(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___ICSHomeDataModel__rawJsonObject] = a1;
  v5 = *(a1 + 16);

  if (v5 && (v6 = sub_27586F8A0(0x6143726564616568, 0xEA00000000006472), (v7 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v6, v53), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v51;
  }

  else
  {
    v8 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v9 = objc_allocWithZone(type metadata accessor for HeaderCard());
  *&v2[OBJC_IVAR___ICSHomeDataModel_headerCard] = HeaderCard.init(_:)(v8);
  if (*(a1 + 16) && (v10 = sub_27586F8A0(0x61436C6C65737075, 0xEA00000000006472), (v11 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v10, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    if (swift_dynamicCast())
    {
      v12 = v51;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(type metadata accessor for UpsellCard());
  *&v2[OBJC_IVAR___ICSHomeDataModel_upsellCard] = UpsellCard.init(_:)(v12);
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x6C5064756F6C4369, 0xEE00647261437375), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v53), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v51;
  }

  else
  {
    v16 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v17 = objc_allocWithZone(type metadata accessor for iCloudPlusCard());
  *&v2[OBJC_IVAR___ICSHomeDataModel_icloudPlusCard] = iCloudPlusCard.init(_:)(v16);
  if (*(a1 + 16) && (v18 = sub_27586F8A0(0x704164756F6C4369, 0xEE00647261437370), (v19 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v18, v53), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v20 = v51;
  }

  else
  {
    v20 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v21 = objc_allocWithZone(type metadata accessor for iCloudAppsCard());
  *&v2[OBJC_IVAR___ICSHomeDataModel_icloudAppsCard] = iCloudAppsCard.init(_:)(v20);
  if (*(a1 + 16) && (v22 = sub_27586F8A0(0xD000000000000011, 0x80000002759E2D20), (v23 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v22, v53), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v24 = v51;
  }

  else
  {
    v24 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v25 = objc_allocWithZone(type metadata accessor for ManageStorageViewInfo());
  *&v2[OBJC_IVAR___ICSHomeDataModel_manageStorageViewInfo] = ManageStorageViewInfo.init(_:)(v24);
  if (*(a1 + 16) && (v26 = sub_27586F8A0(0x695670756B636162, 0xEA00000000007765), (v27 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v26, v53), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v28 = v51;
  }

  else
  {
    v28 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v29 = objc_allocWithZone(type metadata accessor for BackupViewInfo());
  *&v2[OBJC_IVAR___ICSHomeDataModel_backupViewInfo] = BackupViewInfo.init(_:)(v28);
  v30 = *(a1 + 16);
  if (v30)
  {
    v31 = sub_27586F8A0(0xD000000000000010, 0x80000002759E2D40);
    if ((v32 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v31, v53), swift_dynamicCast()))
    {
      LOBYTE(v30) = v51;
    }

    else
    {
      LOBYTE(v30) = 0;
    }
  }

  v2[OBJC_IVAR___ICSHomeDataModel_underMaintenance] = v30;
  if (*(a1 + 16) && (v33 = sub_27586F8A0(0x74616D726F666E69, 0xEF647261436E6F69), (v34 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v33, v53), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v35 = objc_allocWithZone(type metadata accessor for InformationCard());
    v36 = InformationCard.init(_:)(v51);
  }

  else
  {
    v36 = 0;
  }

  *&v2[OBJC_IVAR___ICSHomeDataModel_informationCard] = v36;
  if (*(a1 + 16) && (v37 = sub_27586F8A0(0x636E75614C657270, 0xEF6E6F6974634168), (v38 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v37, v53), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v39 = objc_allocWithZone(type metadata accessor for Action());
    v40 = Action.init(_:)(v51);
  }

  else
  {
    v40 = 0;
  }

  *&v2[OBJC_IVAR___ICSHomeDataModel_preLaunchAction] = v40;
  if (*(a1 + 16) && (v41 = sub_27586F8A0(0x65537265746F6F66, 0xED00006E6F697463), (v42 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v41, v53), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750), (swift_dynamicCast() & 1) != 0))
  {
    v43 = v51;
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v44 = objc_allocWithZone(type metadata accessor for SettingsFooter());
  *&v2[OBJC_IVAR___ICSHomeDataModel_settingsFooter] = SettingsFooter.init(_:)(v43, v45);
  if (!*(a1 + 16) || (v46 = sub_27586F8A0(0xD000000000000019, 0x80000002759E2D60), (v47 & 1) == 0))
  {

    goto LABEL_57;
  }

  sub_275864C94(*(a1 + 56) + 32 * v46, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_57:
    v49 = 0;
    goto LABEL_58;
  }

  v48 = objc_allocWithZone(type metadata accessor for Action());
  v49 = Action.init(_:)(v51);
LABEL_58:
  *&v2[OBJC_IVAR___ICSHomeDataModel_manageSubscriptionsAction] = v49;
  v52.receiver = v2;
  v52.super_class = ObjectType;
  return objc_msgSendSuper2(&v52, sel_init);
}

uint64_t iCloudHomeDataModel.description.getter()
{

  return sub_2759852D8(&OBJC_IVAR___ICSHomeDataModel__rawJsonObject);
}

id iCloudHomeDataModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_275983868(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1685024583;
  v4 = 0xE400000000000000;
  v5 = 1819047238;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E55;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x754674736F6D6C41;
    v2 = 0xEA00000000006C6CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t HeaderCard.storageState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageState);

  return v1;
}

void *HeaderCard.statefulHeader.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_statefulHeader);
  v2 = v1;
  return v1;
}

id HeaderCard.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_27586F8A0(0xD000000000000014, 0x80000002759E2DB0);
    if ((v6 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v5, v24), swift_dynamicCast()))
    {
      LOBYTE(v4) = v21;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  v1[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_isiCloudPlusSubscriber] = v4;
  if (*(a1 + 16) && (v7 = sub_27586F8A0(0x53656761726F7473, 0xEC00000065746174), (v8 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v7, v24), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v21;
    v10 = v22;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = &v1[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageState];
  *v11 = v9;
  v11[1] = v10;
  if (*(a1 + 16) && (v12 = sub_27586F8A0(0x53656761726F7473, 0xEE007972616D6D75), (v13 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v12, v24), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v21;
  }

  else
  {
    v14 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v15 = objc_allocWithZone(type metadata accessor for StorageSummary());
  *&v2[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary] = StorageSummary.init(_:)(v14);
  if (!*(a1 + 16) || (v16 = sub_27586F8A0(0x6C75666574617473, 0xEE00726564616548), (v17 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_275864C94(*(a1 + 56) + 32 * v16, v24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v19 = 0;
    goto LABEL_22;
  }

  v18 = objc_allocWithZone(type metadata accessor for StatefulHeader());
  v19 = StatefulHeader.init(_:)(v21);
LABEL_22:
  *&v2[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_statefulHeader] = v19;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for HeaderCard();
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t StorageSummary.subscriptionLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_subscriptionLabel);

  return v1;
}

uint64_t StorageSummary.storageBarLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel);

  return v1;
}

uint64_t StorageSummary.storageBarColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor);

  return v1;
}

uint64_t StorageSummary.usageLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel);

  return v1;
}

id StorageSummary.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0xD000000000000011, 0x80000002759E2DF0), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v38), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v35;
    v7 = v36;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_subscriptionLabel];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x42656761726F7473, 0xEF6C6562614C7261), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v38), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v35;
    v12 = v36;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel];
  *v13 = v11;
  *(v13 + 1) = v12;
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x42656761726F7473, 0xEF726F6C6F437261), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v38), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v35;
    v17 = v36;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = &v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor];
  *v18 = v16;
  *(v18 + 1) = v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = sub_27586F8A0(0xD000000000000013, 0x80000002759E2E10);
    if ((v21 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v20, v38), swift_dynamicCast()))
    {
      v19 = v35;
    }

    else
    {
      v19 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_totalStorageInBytes] = v19;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = sub_27586F8A0(0xD000000000000012, 0x80000002759E2E30);
    if ((v24 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v23, v38), swift_dynamicCast()))
    {
      v22 = v35;
    }

    else
    {
      v22 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usedStorageInBytes] = v22;
  if (*(a1 + 16) && (v25 = sub_27586F8A0(0x62614C6567617375, 0xEA00000000006C65), (v26 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v25, v38), (swift_dynamicCast() & 1) != 0))
  {
    v27 = v35;
    v28 = v36;
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = &v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel];
  *v29 = v27;
  *(v29 + 1) = v28;
  if (!*(a1 + 16) || (v30 = sub_27586F8A0(0x6E6F69746361, 0xE600000000000000), (v31 & 1) == 0))
  {

    goto LABEL_36;
  }

  sub_275864C94(*(a1 + 56) + 32 * v30, v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v32 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_37;
  }

  v32 = v35;
LABEL_37:
  v33 = objc_allocWithZone(type metadata accessor for Action());
  *&v2[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_action] = Action.init(_:)(v32);
  v37.receiver = v2;
  v37.super_class = type metadata accessor for StorageSummary();
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t StatefulHeader.layoutType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_layoutType);

  return v1;
}

uint64_t StatefulHeader.subTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle);

  return v1;
}

uint64_t StatefulHeader.impressionUrlString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_impressionUrlString);

  return v1;
}

id StatefulHeader.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x795474756F79616CLL, 0xEA00000000006570), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v38), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v34;
    v7 = v35;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v1[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_layoutType];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v38), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v34;
    v12 = v35;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v1[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle];
  *v13 = v11;
  *(v13 + 1) = v12;
  v37 = MEMORY[0x277D84F90];
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x736E6F69746361, 0xE700000000000000), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v38), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750), (swift_dynamicCast() & 1) != 0))
  {
    v16 = *(v34 + 16);
    if (v16)
    {
      v17 = (v34 + 32);
      v18 = type metadata accessor for Action();
      do
      {
        v19 = *v17;
        v20 = objc_allocWithZone(v18);
        swift_bridgeObjectRetain_n();
        Action.init(_:)(v19);
        MEMORY[0x277C84160]();
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2759BA3F8();
        }

        sub_2759BA418();
        v21 = v37;

        ++v17;
        --v16;
      }

      while (v16);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  *&v1[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_actions] = v21;
  v22 = *(a1 + 16);

  if (v22 && (v23 = sub_27586F8A0(0x7255796669746F6ELL, 0xE90000000000006CLL), (v24 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v23, v38);
    v25 = swift_dynamicCast();
    v26 = v34;
    v27 = v35;
    if (!v25)
    {
      v26 = 0;
      v27 = 0;
    }
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v28 = &v2[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_impressionUrlString];
  *v28 = v26;
  *(v28 + 1) = v27;
  if (*(a1 + 16) && (v29 = sub_27586F8A0(0x6150796669746F6ELL, 0xED000064616F6C79), (v30 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v29, v38);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    v31 = swift_dynamicCast();
    v32 = v34;
    if (!v31)
    {
      v32 = 0;
    }
  }

  else
  {

    v32 = 0;
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_impressionPayload] = v32;

  v36.receiver = v2;
  v36.super_class = type metadata accessor for StatefulHeader();
  return objc_msgSendSuper2(&v36, sel_init);
}

uint64_t Action.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_type);

  return v1;
}

uint64_t Action.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_title);

  return v1;
}

uint64_t Action.urlString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);

  return v1;
}

void *Action.actionConfirmation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation);
  v2 = v1;
  return v1;
}

id Action.init(_:)(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = a1;
  v4 = *(a1 + 16);

  if (v4 && (v5 = sub_27586F8A0(0x6C75616665447369, 0xE900000000000074), (v6 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v5, v44), swift_dynamicCast()))
  {
    v7 = v41;
  }

  else
  {
    v7 = 0;
  }

  v2[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = sub_27586F8A0(0x7572747365447369, 0xED00006576697463);
    if ((v10 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v9, v44), swift_dynamicCast()))
    {
      LOBYTE(v8) = v41;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  v2[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = v8;
  if (*(a1 + 16) && (v11 = sub_27586F8A0(0x79546E6F69746361, 0xEA00000000006570), (v12 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v11, v44), (swift_dynamicCast() & 1) != 0))
  {
    v13 = v41;
    v14 = v42;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = &v2[OBJC_IVAR____TtC14iCloudSettings6Action_type];
  *v15 = v13;
  v15[1] = v14;
  v16 = *(a1 + 16);
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = sub_27586F8A0(0x656C746974, 0xE500000000000000);
  if ((v18 & 1) == 0)
  {
    v16 = 0;
LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  sub_275864C94(*(a1 + 56) + 32 * v17, v44);
  v19 = swift_dynamicCast();
  v16 = v41;
  v20 = v42;
  if (!v19)
  {
    v16 = 0;
    v20 = 0;
  }

LABEL_22:
  v21 = &v2[OBJC_IVAR____TtC14iCloudSettings6Action_title];
  *v21 = v16;
  v21[1] = v20;
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_27:
    v26 = 0;
    goto LABEL_28;
  }

  v23 = sub_27586F8A0(0x52556E6F69746361, 0xE90000000000004CLL);
  if ((v24 & 1) == 0)
  {
    v22 = 0;
    goto LABEL_27;
  }

  sub_275864C94(*(a1 + 56) + 32 * v23, v44);
  v25 = swift_dynamicCast();
  v22 = v41;
  v26 = v42;
  if (!v25)
  {
    v22 = 0;
    v26 = 0;
  }

LABEL_28:
  v27 = &v2[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
  *v27 = v22;
  v27[1] = v26;
  v28 = *(a1 + 16);
  if (v28)
  {
    v29 = sub_27586F8A0(0xD000000000000010, 0x80000002759DEB80);
    if (v30)
    {
      sub_275864C94(*(a1 + 56) + 32 * v29, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
      v31 = swift_dynamicCast();
      v28 = v41;
      if (!v31)
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = v28;
  v32 = *(a1 + 16);
  if (v32)
  {
    v33 = sub_27586F8A0(0x6D61726150797562, 0xED00007372657465);
    if (v34)
    {
      sub_275864C94(*(a1 + 56) + 32 * v33, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
      v35 = swift_dynamicCast();
      v32 = v41;
      if (!v35)
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = v32;
  if (!*(a1 + 16) || (v36 = sub_27586F8A0(0x616D7269666E6F63, 0xEC0000006E6F6974), (v37 & 1) == 0))
  {

    goto LABEL_45;
  }

  sub_275864C94(*(a1 + 56) + 32 * v36, v44);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_45:
    v39 = 0;
    goto LABEL_46;
  }

  v38 = objc_allocWithZone(type metadata accessor for ActionConfirmation());
  v39 = ActionConfirmation.init(_:)(v41);
LABEL_46:
  *&v2[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = v39;
  v43.receiver = v2;
  v43.super_class = type metadata accessor for Action();
  return objc_msgSendSuper2(&v43, sel_init);
}

uint64_t sub_275985278()
{

  return sub_2759852D8(&OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject);
}

uint64_t sub_2759852D8(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2759BA2D8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = objc_opt_self();
  v3 = sub_2759BA1C8();
  v4 = [v2 isValidJSONObject_];

  if (v4)
  {
    v5 = sub_2759BA1C8();
    v17[0] = 0;
    v6 = [v2 dataWithJSONObject:v5 options:1 error:v17];

    v7 = v17[0];
    if (v6)
    {
      v8 = sub_2759B8538();
      v10 = v9;

      sub_2759BA2C8();
      v11 = sub_2759BA2A8();
      v13 = v12;
      sub_27585A900(v8, v10);
      if (v13)
      {
        return v11;
      }
    }

    else
    {
      v15 = v7;
      v16 = sub_2759B8448();

      swift_willThrow();
    }
  }

  return 0xD000000000000020;
}

uint64_t sub_275985538()
{
  v0 = sub_2759BA258();
  v1 = _ICQActionForString();

  return ((v1 - 114) < 0xE) & (0x20F1u >> (v1 - 114));
}

uint64_t UpsellCard.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10UpsellCard_title);

  return v1;
}

uint64_t UpsellCard.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10UpsellCard_subtitle);

  return v1;
}

id UpsellCard.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v38), (swift_dynamicCast() & 1) != 0))
    {
      v6 = v33;
      v7 = v35;
    }

    else
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = &v1[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_title];
    *v8 = v6;
    *(v8 + 1) = v7;
    if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v38), (swift_dynamicCast() & 1) != 0))
    {
      v11 = v33;
      v12 = v35;
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = &v1[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_subtitle];
    *v13 = v11;
    *(v13 + 1) = v12;
    v14 = MEMORY[0x277D84F90];
    v34 = MEMORY[0x277D84F90];
    if (*(a1 + 16))
    {
      v15 = sub_27586F8A0(0x7365727574616566, 0xE800000000000000);
      if (v16)
      {
        sub_275864C94(*(a1 + 56) + 32 * v15, v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
        if (swift_dynamicCast())
        {
          v14 = v36;
        }
      }
    }

    v17 = *(v14 + 16);
    if (v17)
    {
      v18 = (v14 + 32);
      v19 = type metadata accessor for Feature();
      do
      {
        v20 = *v18;
        v21 = objc_allocWithZone(v19);
        swift_bridgeObjectRetain_n();
        Feature.init(_:)(v20);
        MEMORY[0x277C84160]();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2759BA3F8();
        }

        sub_2759BA418();
        v22 = v34;

        ++v18;
        --v17;
      }

      while (v17);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    *&v1[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_features] = v22;
    v28 = *(a1 + 16);

    if (v28 && (v29 = sub_27586F8A0(0x6E6F69746361, 0xE600000000000000), (v30 & 1) != 0))
    {
      sub_275864C94(*(a1 + 56) + 32 * v29, v38);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
      if (swift_dynamicCast())
      {
        v31 = v36;
LABEL_34:
        v32 = objc_allocWithZone(type metadata accessor for Action());
        *&v2[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_action] = Action.init(_:)(v31);

        v37.receiver = v2;
        v37.super_class = type metadata accessor for UpsellCard();
        return objc_msgSendSuper2(&v37, sel_init);
      }
    }

    else
    {
    }

    v31 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_34;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v23 = sub_2759B89A8();
  __swift_project_value_buffer(v23, qword_2815ADE70);
  v24 = sub_2759B8988();
  v25 = sub_2759BA648();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_275819000, v24, v25, "No upsell card info received.", v26, 2u);
    MEMORY[0x277C85860](v26, -1, -1);
  }

  type metadata accessor for UpsellCard();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t iCloudPlusCard.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_title);

  return v1;
}

id iCloudPlusCard.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v28), (swift_dynamicCast() & 1) != 0))
    {
      v6 = v23;
      v7 = v25;
    }

    else
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = &v2[OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_title];
    *v8 = v6;
    *(v8 + 1) = v7;
    v24 = MEMORY[0x277D84F90];
    if (*(a1 + 16) && (v9 = sub_27586F8A0(0x7365727574616566, 0xE800000000000000), (v10 & 1) != 0))
    {
      sub_275864C94(*(a1 + 56) + 32 * v9, v28);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
      if (swift_dynamicCast())
      {
        v11 = v26;
        v12 = *(v26 + 16);
        if (!v12)
        {
LABEL_11:
          v13 = MEMORY[0x277D84F90];
LABEL_12:

          *&v2[OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_features] = v13;
          v27.receiver = v2;
          v27.super_class = type metadata accessor for iCloudPlusCard();
          return objc_msgSendSuper2(&v27, sel_init);
        }

LABEL_15:
        v15 = (v11 + 32);
        v16 = type metadata accessor for Feature();
        do
        {
          v17 = *v15;
          v18 = objc_allocWithZone(v16);
          swift_bridgeObjectRetain_n();
          Feature.init(_:)(v17);
          MEMORY[0x277C84160]();
          if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2759BA3F8();
          }

          sub_2759BA418();
          v13 = v24;

          ++v15;
          --v12;
        }

        while (v12);
        goto LABEL_12;
      }
    }

    else
    {
    }

    v11 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v19 = sub_2759B89A8();
  __swift_project_value_buffer(v19, qword_2815ADE70);
  v20 = sub_2759B8988();
  v21 = sub_2759BA648();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_275819000, v20, v21, "No iCloud+ features info received.", v22, 2u);
    MEMORY[0x277C85860](v22, -1, -1);
  }

  type metadata accessor for iCloudPlusCard();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2759860B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a3)
  {
    v5 = sub_2759BA1D8();
  }

  else
  {
    v5 = 0;
  }

  return a4(v5);
}

uint64_t Feature.featureId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId);

  return v1;
}

void *Feature.action.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_action);
  v2 = v1;
  return v1;
}

uint64_t Feature.iTunesItemId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId);

  return v1;
}

uint64_t Feature.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier);

  return v1;
}

void *Feature.icons.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings7Feature_icons);
  v2 = v1;
  return v1;
}

id Feature.init(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (*(a1 + 16) && (v5 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v6 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v5, v45), (swift_dynamicCast() & 1) != 0))
  {
    v7 = v42;
    v8 = v43;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = &v1[OBJC_IVAR____TtC14iCloudSettings7Feature_title];
  *v9 = v7;
  v9[1] = v8;
  if (*(a1 + 16) && (v10 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v11 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v10, v45), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v42;
    v13 = v43;
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = &v1[OBJC_IVAR____TtC14iCloudSettings7Feature_subtitle];
  *v14 = v12;
  v14[1] = v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = sub_27586F8A0(0x4965727574616566, 0xE900000000000064);
  if ((v17 & 1) == 0)
  {
    v15 = 0;
LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  sub_275864C94(*(a1 + 56) + 32 * v16, v45);
  v18 = swift_dynamicCast();
  v15 = v42;
  v19 = v43;
  if (!v18)
  {
    v15 = 0;
    v19 = 0;
  }

LABEL_17:
  v20 = &v1[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId];
  *v20 = v15;
  v20[1] = v19;
  if (*(a1 + 16) && (v21 = sub_27586F8A0(0x6E6F69746361, 0xE600000000000000), (v22 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v21, v45), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v23 = v42;
  }

  else
  {
    v23 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v24 = objc_allocWithZone(type metadata accessor for Action());
  *&v2[OBJC_IVAR____TtC14iCloudSettings7Feature_action] = Action.init(_:)(v23);
  v25 = *(a1 + 16);
  if (!v25)
  {
    goto LABEL_27;
  }

  v26 = sub_27586F8A0(0x744973656E755469, 0xEC00000064496D65);
  if ((v27 & 1) == 0)
  {
    v25 = 0;
LABEL_27:
    v29 = 0;
    goto LABEL_28;
  }

  sub_275864C94(*(a1 + 56) + 32 * v26, v45);
  v28 = swift_dynamicCast();
  v25 = v42;
  v29 = v43;
  if (!v28)
  {
    v25 = 0;
    v29 = 0;
  }

LABEL_28:
  v30 = &v2[OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId];
  *v30 = v25;
  *(v30 + 1) = v29;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_33:
    v35 = 0;
    goto LABEL_34;
  }

  v32 = sub_27586F8A0(0xD000000000000010, 0x80000002759E2EF0);
  if ((v33 & 1) == 0)
  {
    v31 = 0;
    goto LABEL_33;
  }

  sub_275864C94(*(a1 + 56) + 32 * v32, v45);
  v34 = swift_dynamicCast();
  v31 = v42;
  v35 = v43;
  if (!v34)
  {
    v31 = 0;
    v35 = 0;
  }

LABEL_34:
  v36 = &v2[OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier];
  *v36 = v31;
  *(v36 + 1) = v35;
  if (!*(a1 + 16) || (v37 = sub_27586F8A0(0x736E6F6369, 0xE500000000000000), (v38 & 1) == 0))
  {

    goto LABEL_39;
  }

  sub_275864C94(*(a1 + 56) + 32 * v37, v45);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v39 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_40;
  }

  v39 = v42;
LABEL_40:
  v40 = objc_allocWithZone(type metadata accessor for Icons());
  *&v2[OBJC_IVAR____TtC14iCloudSettings7Feature_icons] = Icons.init(_:)(v39);
  v44.receiver = v2;
  v44.super_class = ObjectType;
  return objc_msgSendSuper2(&v44, sel_init);
}

id Feature.init(featureId:title:subtitle:icons:action:iTunesItemId:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v21 = &v12[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = &v12[OBJC_IVAR____TtC14iCloudSettings7Feature_title];
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &v12[OBJC_IVAR____TtC14iCloudSettings7Feature_subtitle];
  *v23 = a5;
  *(v23 + 1) = a6;
  *&v12[OBJC_IVAR____TtC14iCloudSettings7Feature_action] = a8;
  v24 = &v12[OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId];
  *v24 = a9;
  *(v24 + 1) = a10;
  v25 = &v12[OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier];
  *v25 = a11;
  *(v25 + 1) = a12;
  *&v12[OBJC_IVAR____TtC14iCloudSettings7Feature_icons] = a7;
  v28.receiver = v12;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init);
}

id _s14iCloudSettings01iA13HomeDataModelCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t iCloudAppsCard.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title);

  return v1;
}

uint64_t iCloudAppsCard.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_subtitle);

  return v1;
}

uint64_t iCloudAppsCard.detailLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel);

  return v1;
}

uint64_t iCloudAppsCard.statusColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_statusColor);

  return v1;
}

id iCloudAppsCard.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v36), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v33;
    v7 = v34;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v36), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v33;
    v12 = v34;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_subtitle];
  *v13 = v11;
  *(v13 + 1) = v12;
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x614C6C6961746564, 0xEB000000006C6562), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v36), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v33;
    v17 = v34;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = &v2[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel];
  *v18 = v16;
  *(v18 + 1) = v17;
  if (*(a1 + 16) && (v19 = sub_27586F8A0(0x6F43737574617473, 0xEB00000000726F6CLL), (v20 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v19, v36), (swift_dynamicCast() & 1) != 0))
  {
    v21 = v33;
    v22 = v34;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = &v2[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_statusColor];
  *v23 = v21;
  *(v23 + 1) = v22;
  v24 = MEMORY[0x277D84F90];
  if (*(a1 + 16) && (v25 = sub_27586F8A0(1936748641, 0xE400000000000000), (v26 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v25, v36);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
    if (swift_dynamicCast())
    {
      v27 = v33;
      goto LABEL_27;
    }
  }

  else
  {
  }

  v27 = MEMORY[0x277D84F90];
LABEL_27:
  v36[0] = v24;
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v27 + 32;
    v30 = type metadata accessor for iCloudApp();
    do
    {
      objc_allocWithZone(v30);

      iCloudApp.init(_:)(v31);
      MEMORY[0x277C84160]();
      if (*((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v29 += 8;
      --v28;
    }

    while (v28);
    v24 = v36[0];
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_apps] = v24;
  v35.receiver = v2;
  v35.super_class = type metadata accessor for iCloudAppsCard();
  return objc_msgSendSuper2(&v35, sel_init);
}

uint64_t iCloudApp.dataclass.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9iCloudApp_dataclass);

  return v1;
}

uint64_t iCloudApp.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9iCloudApp_subtitle);

  return v1;
}

uint64_t iCloudApp.iTunesItemId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9iCloudApp_iTunesItemId);

  return v1;
}

void *iCloudApp.icons.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9iCloudApp_icons);
  v2 = v1;
  return v1;
}

id iCloudApp.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x73616C6361746164, 0xE900000000000073), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v28), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v25;
    v7 = v26;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_dataclass];
  *v8 = v6;
  v8[1] = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v28), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v25;
    v12 = v26;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_subtitle];
  *v13 = v11;
  v13[1] = v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = sub_27586F8A0(0x744973656E755469, 0xEC00000064496D65);
  if ((v16 & 1) == 0)
  {
    v14 = 0;
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  sub_275864C94(*(a1 + 56) + 32 * v15, v28);
  v17 = swift_dynamicCast();
  v14 = v25;
  v18 = v26;
  if (!v17)
  {
    v14 = 0;
    v18 = 0;
  }

LABEL_17:
  v19 = &v2[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_iTunesItemId];
  *v19 = v14;
  v19[1] = v18;
  if (!*(a1 + 16) || (v20 = sub_27586F8A0(0x736E6F6369, 0xE500000000000000), (v21 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_275864C94(*(a1 + 56) + 32 * v20, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  v22 = objc_allocWithZone(type metadata accessor for Icons());
  v23 = Icons.init(_:)(v25);
LABEL_23:
  *&v2[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_icons] = v23;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for iCloudApp();
  return objc_msgSendSuper2(&v27, sel_init);
}

id BackupViewInfo.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90];
  if (*(a1 + 16) && (v5 = sub_27586F8A0(1936746868, 0xE400000000000000), (v6 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v5, v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
    if (swift_dynamicCast())
    {
      v7 = v14;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = MEMORY[0x277D84F90];
LABEL_7:
  v16[0] = v4;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32);
    v10 = type metadata accessor for InlineTip(0);
    do
    {
      v11 = *v9;
      v12 = objc_allocWithZone(v10);
      swift_bridgeObjectRetain_n();
      InlineTip.init(_:)(v11);
      MEMORY[0x277C84160]();
      if (*((v16[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v4 = v16[0];

      ++v9;
      --v8;
    }

    while (v8);
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings14BackupViewInfo_tips] = v4;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for BackupViewInfo();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t InlineTip.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9InlineTip_title);

  return v1;
}

uint64_t InlineTip.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings9InlineTip_subtitle);

  return v1;
}

id InlineTip.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  if (*(a1 + 16) && (v7 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v8 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v7, v40), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v36;
    v10 = v37;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = &v1[OBJC_IVAR____TtC14iCloudSettings9InlineTip_title];
  *v11 = v9;
  v11[1] = v10;
  if (*(a1 + 16) && (v12 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v13 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v12, v40), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v36;
    v15 = v37;
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = &v1[OBJC_IVAR____TtC14iCloudSettings9InlineTip_subtitle];
  *v16 = v14;
  v16[1] = v15;
  if (*(a1 + 16) && (v17 = sub_27586F8A0(0x736E6F6369, 0xE500000000000000), (v18 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v17, v40), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v19 = v36;
    if (!*(v36 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v19 = sub_2758A2A88(MEMORY[0x277D84F90]);
    if (!*(v19 + 16))
    {
LABEL_21:

      goto LABEL_22;
    }
  }

  v20 = sub_27586F8A0(1936487029, 0xE400000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_275864C94(*(v19 + 56) + 32 * v20, v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if (swift_dynamicCast())
  {
    v22 = v36;
    if (!*(v36 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_22:
  v22 = sub_2758A2A88(MEMORY[0x277D84F90]);
  if (!*(v22 + 16))
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_23:
  v23 = sub_27586F8A0(30771, 0xE200000000000000);
  if ((v24 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_275864C94(*(v22 + 56) + 32 * v23, v40);

  swift_dynamicCast();
LABEL_26:
  sub_2759B84F8();

  sub_2758B4BD0(v6, &v2[OBJC_IVAR____TtC14iCloudSettings9InlineTip_iconURL]);
  v36 = MEMORY[0x277D84F90];
  if (!*(a1 + 16) || (v25 = sub_27586F8A0(0x736E6F69746361, 0xE700000000000000), (v26 & 1) == 0))
  {

    goto LABEL_36;
  }

  sub_275864C94(*(a1 + 56) + 32 * v25, v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v32 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  v27 = *(v38 + 16);
  if (v27)
  {
    v28 = (v38 + 32);
    v29 = type metadata accessor for Action();
    do
    {
      v30 = *v28;
      v31 = objc_allocWithZone(v29);
      swift_bridgeObjectRetain_n();
      Action.init(_:)(v30);
      MEMORY[0x277C84160]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v32 = v36;

      ++v28;
      --v27;
    }

    while (v27);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

LABEL_37:
  *&v2[OBJC_IVAR____TtC14iCloudSettings9InlineTip_actions] = v32;
  v33 = type metadata accessor for InlineTip(0);
  v39.receiver = v2;
  v39.super_class = v33;
  return objc_msgSendSuper2(&v39, sel_init);
}

uint64_t Icons.assetId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings5Icons_assetId);

  return v1;
}

uint64_t Icons.sfSymbolId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings5Icons_sfSymbolId);

  return v1;
}

id sub_2759883B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a1 + *a3))
  {

    v4 = sub_2759BA1C8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_275988434(char a1)
{
  result = 1936487029;
  switch(a1)
  {
    case 1:
      result = 0x64497465737361;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6C6F626D79536673;
      break;
    case 4:
      result = 30769;
      break;
    case 5:
      result = 30770;
      break;
    case 6:
      result = 30771;
      break;
    case 7:
      result = 0x78316B726164;
      break;
    case 8:
      result = 0x78326B726164;
      break;
    case 9:
      result = 0x78336B726164;
      break;
    case 10:
      result = 0x7831746E6974;
      break;
    case 11:
      result = 0x7832746E6974;
      break;
    case 12:
      result = 0x7833746E6974;
      break;
    default:
      return result;
  }

  return result;
}

id Icons.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(1936487029, 0xE400000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v27), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE78, &qword_2759CEB20), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v24;
  }

  else
  {
    v6 = sub_2758A30D4(MEMORY[0x277D84F90]);
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings5Icons_urls] = v6;
  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = sub_27586F8A0(0x64497465737361, 0xE700000000000000);
  if ((v9 & 1) == 0)
  {
    v7 = 0;
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  sub_275864C94(*(a1 + 56) + 32 * v8, v27);
  v10 = swift_dynamicCast();
  v7 = v24;
  v11 = v25;
  if (!v10)
  {
    v7 = 0;
    v11 = 0;
  }

LABEL_12:
  v12 = &v2[OBJC_IVAR____TtC14iCloudSettings5Icons_assetId];
  *v12 = v7;
  *(v12 + 1) = v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = sub_27586F8A0(0xD000000000000011, 0x80000002759E2FB0);
    if (v15)
    {
      sub_275864C94(*(a1 + 56) + 32 * v14, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2F8, &qword_2759C3760);
      v16 = swift_dynamicCast();
      v13 = v24;
      if (!v16)
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings5Icons_bundleIdentifiers] = v13;
  if (*(a1 + 16) && (v17 = sub_27586F8A0(0x6C6F626D79536673, 0xEA00000000006449), (v18 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v17, v27);

    v19 = swift_dynamicCast();
    v20 = v24;
    v21 = v25;
    if (!v19)
    {
      v20 = 0;
      v21 = 0;
    }
  }

  else
  {

    v20 = 0;
    v21 = 0;
  }

  v22 = &v2[OBJC_IVAR____TtC14iCloudSettings5Icons_sfSymbolId];
  *v22 = v20;
  *(v22 + 1) = v21;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for Icons();
  return objc_msgSendSuper2(&v26, sel_init);
}

id sub_27598884C(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = a1;
  a3();

  v9 = sub_2759B8508();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_2759B84B8();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_275988AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = *(v3 + OBJC_IVAR____TtC14iCloudSettings5Icons_urls);
  if (v10)
  {
    if (*(v10 + 16))
    {
      sub_27586F8A0(a1, a2);
      if (v11)
      {

        sub_2759B84F8();

        v12 = sub_2759B8508();
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v9, 1, v12) != 1)
        {
          (*(v13 + 32))(a3, v9, v12);
          return (*(v13 + 56))(a3, 0, 1, v12);
        }

        sub_27585A458(v9);
      }
    }
  }

  v14 = sub_2759B8508();
  return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
}

uint64_t ActionConfirmation.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings18ActionConfirmation_title);

  return v1;
}

uint64_t ActionConfirmation.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings18ActionConfirmation_message);

  return v1;
}

id ActionConfirmation.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v29), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v24;
    v7 = v26;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings18ActionConfirmation_title];
  *v8 = v6;
  *(v8 + 1) = v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000);
  if ((v11 & 1) == 0)
  {
    v9 = 0;
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  sub_275864C94(*(a1 + 56) + 32 * v10, v29);
  v12 = swift_dynamicCast();
  v9 = v24;
  v13 = v26;
  if (!v12)
  {
    v9 = 0;
    v13 = 0;
  }

LABEL_12:
  v14 = &v2[OBJC_IVAR____TtC14iCloudSettings18ActionConfirmation_message];
  *v14 = v9;
  *(v14 + 1) = v13;
  v25 = MEMORY[0x277D84F90];
  if (!*(a1 + 16) || (v15 = sub_27586F8A0(0x736E6F69746361, 0xE700000000000000), (v16 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_275864C94(*(a1 + 56) + 32 * v15, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v22 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v17 = *(v27 + 16);
  if (v17)
  {
    v18 = (v27 + 32);
    v19 = type metadata accessor for Action();
    do
    {
      v20 = *v18;
      v21 = objc_allocWithZone(v19);
      swift_bridgeObjectRetain_n();
      Action.init(_:)(v20);
      MEMORY[0x277C84160]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v22 = v25;

      ++v18;
      --v17;
    }

    while (v17);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

LABEL_23:
  *&v2[OBJC_IVAR____TtC14iCloudSettings18ActionConfirmation_actions] = v22;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for ActionConfirmation();
  return objc_msgSendSuper2(&v28, sel_init);
}

id sub_2759892A4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_2759BA258();

  return v3;
}

uint64_t sub_275989328(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

double sub_275989388(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2759BA298();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;

  return result;
}

double sub_275989400(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  return result;
}

double sub_27598945C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;

  return result;
}

uint64_t SettingsFooterItem.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier);

  return v1;
}

void *SettingsFooterItem.action.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_action);
  v2 = v1;
  return v1;
}

id SettingsFooterItem.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v28), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v25;
    v7 = v26;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_title];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v28), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v25;
    v12 = v26;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_subtitle];
  *v13 = v11;
  *(v13 + 1) = v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = sub_27586F8A0(0x4965727574616566, 0xE900000000000064);
  if ((v16 & 1) == 0)
  {
    v14 = 0;
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  sub_275864C94(*(a1 + 56) + 32 * v15, v28);
  v17 = swift_dynamicCast();
  v14 = v25;
  v18 = v26;
  if (!v17)
  {
    v14 = 0;
    v18 = 0;
  }

LABEL_17:
  v19 = &v2[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier];
  *v19 = v14;
  *(v19 + 1) = v18;
  if (!*(a1 + 16) || (v20 = sub_27586F8A0(0x6E6F69746361, 0xE600000000000000), (v21 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_275864C94(*(a1 + 56) + 32 * v20, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v22 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_23;
  }

  v22 = v25;
LABEL_23:
  v23 = objc_allocWithZone(type metadata accessor for Action());
  *&v2[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_action] = Action.init(_:)(v22);
  v27.receiver = v2;
  v27.super_class = type metadata accessor for SettingsFooterItem();
  return objc_msgSendSuper2(&v27, sel_init);
}

id SettingsFooterItem.__allocating_init(identifier:title:subtitle:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v15[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_title];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &v15[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_subtitle];
  *v18 = a5;
  *(v18 + 1) = a6;
  *&v15[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_action] = a7;
  v20.receiver = v15;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, sel_init);
}

id SettingsFooterItem.init(identifier:title:subtitle:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = &v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_identifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_title];
  *v9 = a3;
  *(v9 + 1) = a4;
  v10 = &v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_subtitle];
  *v10 = a5;
  *(v10 + 1) = a6;
  *&v7[OBJC_IVAR____TtC14iCloudSettings18SettingsFooterItem_action] = a7;
  v12.receiver = v7;
  v12.super_class = type metadata accessor for SettingsFooterItem();
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_275989B3C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{

  v8 = *(a1 + *a6);
}

id sub_275989BD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  a5(a4, a2);

  v5 = sub_2759BA3D8();

  return v5;
}

id SettingsFooter.init(_:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = a1 + 32;
      v7 = type metadata accessor for SettingsFooterItem();
      do
      {
        objc_allocWithZone(v7);

        SettingsFooterItem.init(_:)(v8);
        MEMORY[0x277C84160]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2759BA3F8();
        }

        sub_2759BA418();
        v6 += 8;
        --v5;
      }

      while (v5);
      v4 = v15;
    }

    *&v3[OBJC_IVAR____TtC14iCloudSettings14SettingsFooter_footerItems] = v4;
    v14.receiver = v3;
    v14.super_class = type metadata accessor for SettingsFooter();
    return objc_msgSendSuper2(&v14, sel_init);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_2815ADE70);
    v11 = sub_2759B8988();
    v12 = sub_2759BA648();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_275819000, v11, v12, "No items in footer section.", v13, 2u);
      MEMORY[0x277C85860](v13, -1, -1);
    }

    type metadata accessor for SettingsFooter();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t InformationCard.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings15InformationCard_message);

  return v1;
}

id InformationCard.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16) || (v4 = sub_27586F8A0(0x6567617373656DLL, 0xE700000000000000), (v5 & 1) == 0))
  {

    goto LABEL_6;
  }

  sub_275864C94(*(a1 + 56) + 32 * v4, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = 0;
    v7 = 0xE000000000000000;
    goto LABEL_7;
  }

  v6 = v10;
  v7 = v11;
LABEL_7:
  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings15InformationCard_message];
  *v8 = v6;
  *(v8 + 1) = v7;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for InformationCard();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_27598A0F4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for InlineTip(uint64_t a1)
{
  result = qword_280A12750;
  if (!qword_280A12750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_getTm_0@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

void sub_27598A66C(uint64_t a1)
{
  sub_2758BB454(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_27598AB3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

double sub_27598AC44()
{
  v1 = v0;
  v2 = sub_2759B88F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[7];
  if (v6)
  {
    v7 = qword_280A0E350;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238D0);
    v9 = sub_2759B8988();
    v10 = sub_2759BA658();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2758937B8(0xD000000000000024, 0x80000002759E3D60, &v16);
      _os_log_impl(&dword_275819000, v9, v10, "%s signpost started before previous was ended", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_2758D85BC("iOSManageStorageDrilldownLoad", 29, 2, v6);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_2759B8918();
  sub_2759B88D8();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v13 = sub_2758D88D0("iOSManageStorageDrilldownLoad", 29, 2, v5);
  (*(v3 + 8))(v5, v2);
  v1[7] = v13;

  return result;
}

void sub_27598AEBC()
{
  v1 = v0[7];
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

    sub_2758D85BC("iOSManageStorageDrilldownLoad", 29, 2, v1);

    v0[7] = 0;
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v2 = sub_2759B89A8();
    __swift_project_value_buffer(v2, qword_280A238D0);
    oslog = sub_2759B8988();
    v3 = sub_2759BA658();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2758937B8(0xD000000000000024, 0x80000002759E3D10, &v7);
      _os_log_impl(&dword_275819000, oslog, v3, "Unbalanced call to %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x277C85860](v5, -1, -1);
      MEMORY[0x277C85860](v4, -1, -1);
    }
  }
}

double sub_27598B078()
{
  v1 = v0;
  v2 = sub_2759B88F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[8];
  if (v6)
  {
    v7 = qword_280A0E350;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238D0);
    v9 = sub_2759B8988();
    v10 = sub_2759BA658();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2758937B8(0xD000000000000023, 0x80000002759E3E40, &v16);
      _os_log_impl(&dword_275819000, v9, v10, "%s signpost started before previous was ended", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_2758D85BC("iOSManageStorageLoad", 20, 2, v6);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_2759B8918();
  sub_2759B88D8();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v13 = sub_2758D88D0("iOSManageStorageLoad", 20, 2, v5);
  (*(v3 + 8))(v5, v2);
  v1[8] = v13;

  return result;
}

void sub_27598B2F0()
{
  v1 = v0[8];
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

    sub_2758D85BC("iOSManageStorageLoad", 20, 2, v1);

    v0[8] = 0;
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v2 = sub_2759B89A8();
    __swift_project_value_buffer(v2, qword_280A238D0);
    oslog = sub_2759B8988();
    v3 = sub_2759BA658();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2758937B8(0xD000000000000023, 0x80000002759E3DF0, &v7);
      _os_log_impl(&dword_275819000, oslog, v3, "Unbalanced call to %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x277C85860](v5, -1, -1);
      MEMORY[0x277C85860](v4, -1, -1);
    }
  }
}

double sub_27598B4AC()
{
  v1 = v0;
  v2 = sub_2759B88F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[9];
  if (v6)
  {
    v7 = qword_280A0E350;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238D0);
    v9 = sub_2759B8988();
    v10 = sub_2759BA658();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2758937B8(0xD00000000000001ALL, 0x80000002759E3DD0, &v16);
      _os_log_impl(&dword_275819000, v9, v10, "%s signpost started before previous was ended", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_2758D85BC("iOSDriveDeleteAction", 20, 2, v6);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_2759B8918();
  sub_2759B88D8();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v13 = sub_2758D88D0("iOSDriveDeleteAction", 20, 2, v5);
  (*(v3 + 8))(v5, v2);
  v1[9] = v13;

  return result;
}

void sub_27598B724()
{
  v1 = v0[9];
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

    sub_2758D85BC("iOSDriveDeleteAction", 20, 2, v1);

    v0[9] = 0;
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v2 = sub_2759B89A8();
    __swift_project_value_buffer(v2, qword_280A238D0);
    oslog = sub_2759B8988();
    v3 = sub_2759BA658();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2758937B8(0xD00000000000001BLL, 0x80000002759E3D90, &v7);
      _os_log_impl(&dword_275819000, oslog, v3, "Unbalanced call to %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x277C85860](v5, -1, -1);
      MEMORY[0x277C85860](v4, -1, -1);
    }
  }
}

uint64_t sub_27598B8E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27598B970(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_27598B9C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

void sub_27598BA28(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = sub_27598BAE4(a1, a2 & 1, a3, a4, a5);
  if ((a2 & 1) != 0 && *(v6 + 2))
  {
    v7 = (v6 + 40);
    v8 = 0.0;
    v9 = *(v6 + 2);
    do
    {
      v10 = *v7;
      v7 += 4;
      v11 = v10;
      if (v8 <= v10)
      {
        v8 = v11;
      }

      --v9;
    }

    while (v9);
  }

  CGPointMake();
}

char *sub_27598BAE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char *a5)
{
  v176 = sub_2759B8E58();
  v171 = *(v176 - 8);
  v10 = MEMORY[0x28223BE20](v176);
  v173 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v175 = &v169 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v172 = &v169 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v174 = &v169 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v180 = &v169 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v179 = &v169 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v169 - v23;
  MEMORY[0x28223BE20](v22);
  v177 = &v169 - v25;
  v190 = type metadata accessor for WrappingHStackLayout.RowItem(0);
  v200 = *(v190 - 8);
  v26 = MEMORY[0x28223BE20](v190);
  *&v206 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v205 = &v169 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v201 = &v169 - v31;
  MEMORY[0x28223BE20](v30);
  v170 = &v169 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12768, &qword_2759CEF20);
  v198 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v193 = &v169 - v34;
  v195 = sub_2759B8F98();
  v188 = *(v195 - 8);
  v35 = MEMORY[0x28223BE20](v195);
  v204 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x28223BE20](v35);
  v182 = &v169 - v38;
  MEMORY[0x28223BE20](v37);
  v202 = (&v169 - v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12770, &qword_2759CEF28);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v43 = &v169 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v203 = &v169 - v44;
  v45 = sub_2759B9028();
  v197 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v47 = &v169 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12778, &qword_2759CEF30);
  MEMORY[0x28223BE20](v48 - 8);
  v191 = (&v169 - v49);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12780, &qword_2759CEF38);
  MEMORY[0x28223BE20](v192);
  v199 = &v169 - v50;
  if (a2)
  {
    v51 = INFINITY;
  }

  else
  {
    v51 = *&a1;
  }

  v52 = sub_27598DAE8(&qword_280A0EBB0, MEMORY[0x277CDF820]);
  v53 = a5;
  v54 = sub_2759BA5C8();
  v184 = v24;
  v186 = v43;
  v178 = v45;
  v194 = v52;
  if (v54)
  {
    v55 = v54;
    v56 = v188;
    v207 = MEMORY[0x277D84F90];
    sub_275950A70(0, v54 & ~(v54 >> 63), 0);
    v57 = v207;
    sub_2759BA5B8();
    if (v55 < 0)
    {
      goto LABEL_85;
    }

    v58 = v52;
    v185 = v47;
    v189 = v33;
    v59 = (v56 + 2);
    v60 = (v56 + 1);
    do
    {
      v61 = sub_2759BA5F8();
      v62 = v202;
      v63 = v58;
      v64 = v195;
      (*v59)(v202);
      v61(&v211, 0);
      sub_2759B90F8();
      LOBYTE(v211) = v65 & 1;
      v210 = v66 & 1;
      sub_2759B8F68();
      v68 = v67;
      v70 = v69;
      (*v60)(v62, v64);
      v207 = v57;
      v72 = *(v57 + 16);
      v71 = *(v57 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_275950A70((v71 > 1), v72 + 1, 1);
        v57 = v207;
      }

      *(v57 + 16) = v72 + 1;
      v73 = v57 + 16 * v72;
      *(v73 + 32) = v68;
      *(v73 + 40) = v70;
      sub_2759BA5E8();
      --v55;
      v58 = v63;
    }

    while (v55);
    v196 = v57;
    v33 = v189;
    v43 = v186;
    v74 = v198;
    v47 = v185;
  }

  else
  {
    v196 = MEMORY[0x277D84F90];
    v74 = v198;
  }

  v75 = v197;
  v76 = v191;
  v77 = v178;
  (v197[2])(v191, v53, v178);
  (v75[4])(v47, v76, v77);
  sub_27598DAE8(&qword_280A12788, MEMORY[0x277CDF810]);
  v78 = v199;
  sub_2759BA398();
  v181 = *(v192 + 36);
  *&v78[v181] = 0;
  v53 = 0;
  v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DF0, &qword_2759C9250) + 36);
  v197 = (v188 + 2);
  v198 = (v188 + 4);
  v192 = (v74 + 56);
  v191 = (v74 + 48);
  v183 = (v171 + 8);
  v189 = v196 + 32;
  ++v188;
  v5 = 0.0;
  v169 = xmmword_2759C17A0;
  v185 = MEMORY[0x277D84F90];
  v6 = 0.0;
  v202 = MEMORY[0x277D84F90];
  v47 = v170;
  v52 = v195;
  while (1)
  {
    sub_2759BA5D8();
    if (*&v78[v79] == v211)
    {
      (*v192)(v43, 1, 1, v33);
    }

    else
    {
      v80 = sub_2759BA5F8();
      v81 = v182;
      (*v197)(v182);
      v80(&v211, 0);
      a5 = v199;
      sub_2759BA5E8();
      v82 = *(v33 + 48);
      v83 = v193;
      *v193 = v53;
      (*v198)(&v83[v82], v81, v52);
      if (__OFADD__(v53++, 1))
      {
        goto LABEL_80;
      }

      *&a5[v181] = v53;
      v43 = v186;
      sub_27589F26C(v193, v186, &qword_280A12768, &qword_2759CEF20);
      (*v192)(v43, 0, 1, v33);
    }

    v85 = v203;
    sub_27589F26C(v43, v203, &qword_280A12770, &qword_2759CEF28);
    v86 = (*v191)(v85, 1, v33);
    v87 = v202;
    if (v86 == 1)
    {
      break;
    }

    v88 = *v203;
    (*v198)(v204, v203 + *(v33 + 48), v52);
    v89 = v87[2];
    if (v89)
    {
      sub_27598D5D8(v87 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * (v89 - 1), v47);
      if (*(v187 + 32))
      {
        v90 = v177;
        sub_2759B8F88();
        v91 = v53;
        v92 = v184;
        sub_2759B8F88();
        sub_2759B8E38();
        v94 = v93;
        v95 = v33;
        v96 = v176;
        v97 = *v183;
        v98 = v92;
        v53 = v91;
        (*v183)(v98, v176);
        v97(v90, v96);
        v33 = v95;
        v43 = v186;
        v52 = v195;
      }

      else
      {
        v94 = *(v187 + 24);
      }

      a5 = v196;
      sub_27598D63C(v47);
    }

    else
    {
      v94 = 0.0;
      a5 = v196;
    }

    if ((v88 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v88 >= *(a5 + 2))
    {
      goto LABEL_79;
    }

    v99 = &v189[16 * v88];
    v100 = *v99;
    v101 = v94 + v6 + *v99;
    if (v101 > v51)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v185 = sub_275870F54(0, *(v185 + 2) + 1, 1, v185);
      }

      v112 = *(v185 + 2);
      v111 = *(v185 + 3);
      if (v112 >= v111 >> 1)
      {
        v185 = sub_275870F54((v111 > 1), v112 + 1, 1, v185);
      }

      v113 = v185;
      *(v185 + 2) = v112 + 1;
      v114 = &v113[32 * v112];
      *(v114 + 4) = v202;
      *(v114 + 5) = v6;
      *(v114 + 6) = v5;
      *(v114 + 7) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECD0, &qword_2759C26B8);
      v115 = (*(v200 + 80) + 32) & ~*(v200 + 80);
      v116 = swift_allocObject();
      *(v116 + 16) = v169;
      v202 = v116;
      v117 = v116 + v115;
      v118 = *v99;
      v119 = *(v99 + 1);
      v120 = v204;
      v52 = v195;
      (*v197)(v117, v204, v195);
      v121 = v190;
      *(v117 + *(v190 + 20)) = 0;
      v122 = (v117 + *(v121 + 24));
      *v122 = v118;
      *(v122 + 1) = v119;
      v6 = *v99;
      v5 = v99[1];
      (*v188)(v120, v52);
      v47 = v170;
      v43 = v186;
    }

    else
    {
      v102 = v6 + v94;
      v103 = v99[1];
      if (v5 <= v103)
      {
        v5 = v99[1];
      }

      v104 = v201;
      (*v197)(v201, v204, v52);
      v105 = v190;
      *(v104 + *(v190 + 20)) = v102;
      v106 = (v104 + *(v105 + 24));
      *v106 = v100;
      v106[1] = v103;
      v107 = v202;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_275871060(0, v107[2] + 1, 1, v107);
      }

      v202 = v107;
      v109 = v107[2];
      v108 = v107[3];
      if (v109 >= v108 >> 1)
      {
        v202 = sub_275871060((v108 > 1), v109 + 1, 1, v202);
      }

      (*v188)(v204, v52);
      v110 = v202;
      v202[2] = v109 + 1;
      sub_27598DB94(v201, v110 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v109);
      v6 = v101;
    }

    v78 = v199;
  }

  v123 = v202;
  a5 = v171;
  sub_27598DB2C(v199);

  if (v123[2])
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v175;
    v52 = v176;
    v53 = v177;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

  v127 = *(v185 + 2);
  v47 = v175;
  v52 = v176;
  v53 = v177;
  if (v127 < 2)
  {
    goto LABEL_45;
  }

LABEL_56:
  v5 = *(v187 + 40);
  LODWORD(v140) = *(v187 + 48);
  v198 = a5 + 16;
  v204 = (a5 + 32);
  v141 = 1;
  v142 = v183;
  v193 = (v183 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v130 = v127;
  a5 = v174;
  v131 = v185;
  v195 = v127;
  LODWORD(v194) = v140;
  while (v141 <= v130)
  {
    if (v141 >= v130)
    {
      goto LABEL_82;
    }

    v143 = &v131[32 * v141];
    v144 = *(v143 + 2);
    v6 = *(v143 + 3);
    v145 = v5;
    if (v140)
    {
      v197 = v141;
      v185 = v131;
      v146 = *(v143 + 4);
      v147 = *v143;

      v201 = v147;

      v148 = v180;
      sub_2759B8E18();
      v196 = *v198;
      (v196)(a5, v148, v52);
      v149 = *(v146 + 2);
      if (v149)
      {
        v150 = (*(v200 + 80) + 32) & ~*(v200 + 80);
        v199 = v146;
        v151 = &v146[v150];
        v152 = a5;
        v153 = v53;
        v154 = v52;
        v203 = *(v200 + 72);
        v155 = v184;
        v157 = v204;
        v156 = v205;
        do
        {
          sub_27598D5D8(v151, v156);
          sub_2759B8F88();
          sub_2759B97D8();
          sub_2759B8E28();
          v156 = v205;
          v158 = *v142;
          (*v142)(v155, v154);
          sub_27598D63C(v156);
          v158(v152, v154);
          (*v157)(v152, v153, v154);
          v151 += v203;
          --v149;
        }

        while (v149);

        a5 = v152;
        v47 = v175;
        v52 = v154;
        v53 = v153;
        v127 = v195;
      }

      else
      {

        v158 = *v142;
      }

      v158(v180, v52);
      v199 = *v204;
      (v199)(v179, a5, v52);
      sub_2759B8E18();
      v159 = v173;
      (v196)(v173, v47, v52);
      v160 = *(v201 + 16);
      if (v160)
      {
        v161 = v201 + ((*(v200 + 80) + 32) & ~*(v200 + 80));
        v162 = v159;
        v203 = *(v200 + 72);
        v163 = v184;
        v164 = v206;
        v165 = v199;
        do
        {
          sub_27598D5D8(v161, v164);
          sub_2759B8F88();
          sub_2759B97D8();
          sub_2759B8E28();
          v164 = v206;
          v158(v163, v52);
          sub_27598D63C(v164);
          v158(v162, v52);
          (v165)(v162, v53, v52);
          v161 += v203;
          --v160;
        }

        while (v160);

        v159 = v162;
        v47 = v175;
        v127 = v195;
      }

      else
      {
      }

      v158(v47, v52);
      v140 = v172;
      (v199)(v172, v159, v52);
      v166 = v179;
      sub_2759B8E38();
      v145 = v167;
      v158(v140, v52);
      v158(v166, v52);
      a5 = v174;
      v131 = v185;
      v142 = v183;
      LOBYTE(v140) = v194;
      v141 = v197;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v131 = sub_275893F6C(v131);
    }

    v130 = *(v131 + 2);
    if (v141 >= v130)
    {
      goto LABEL_83;
    }

    *&v131[32 * v141++ + 56] = v6 + v144 + v145;
    if (v141 == v127)
    {
      goto LABEL_46;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    v185 = sub_275870F54(0, *(v185 + 2) + 1, 1, v185);
LABEL_42:
    v126 = *(v185 + 2);
    v125 = *(v185 + 3);
    v127 = v126 + 1;
    if (v126 >= v125 >> 1)
    {
      v185 = sub_275870F54((v125 > 1), v126 + 1, 1, v185);
    }

    v128 = v185;
    *(v185 + 2) = v127;
    v129 = &v128[32 * v126];
    *(v129 + 4) = v202;
    *(v129 + 5) = v6;
    *(v129 + 6) = v5;
    *(v129 + 7) = 0;
    if (v127 >= 2)
    {
      goto LABEL_56;
    }

LABEL_45:
    v130 = v127;
    v131 = v185;
LABEL_46:
    if ((*(v187 + 49) & 1) == 0)
    {

      return v131;
    }

    if (!v130)
    {
      break;
    }

    v214 = MEMORY[0x277D84F90];
    sub_275950A50(0, v130, 0);
    v52 = 0;
    a5 = v214;
    v132 = v131 + 56;
    while (v52 < *(v131 + 2))
    {
      v133 = *v132;
      v134 = *(v132 - 1);
      v207 = *(v132 - 3);
      v208 = v134;
      v209 = v133;
      sub_27598D698(&v207, &v211, v51);
      v135 = v211;
      v136 = v212;
      v137 = v213;
      v214 = a5;
      v47 = *(a5 + 2);
      v138 = *(a5 + 3);
      if (v47 >= v138 >> 1)
      {
        v206 = v212;
        sub_275950A50((v138 > 1), (v47 + 1), 1);
        v136 = v206;
        a5 = v214;
      }

      *(a5 + 2) = v47 + 1;
      v139 = &a5[32 * v47];
      *(v139 + 4) = v135;
      ++v52;
      *(v139 + 40) = v136;
      *(v139 + 7) = v137;
      v132 += 4;
      if (v130 == v52)
      {

        return a5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}