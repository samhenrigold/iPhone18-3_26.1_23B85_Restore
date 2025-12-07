uint64_t sub_226BD0BA0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v54 = sub_226D6D52C();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6913C();
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v4 + 272), *(v4 + 296));
  sub_226D6E39C();
  v13 = sub_226D69A3C();

  if (v13)
  {
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v14 = sub_226D6E07C();
    __swift_project_value_buffer(v14, qword_28105F5C0);
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Notifications disabled for order tracking, ignoring";
LABEL_23:
      _os_log_impl(&dword_226AB4000, v15, v16, v18, v17, 2u);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (![a1 effectiveNotificationsEnabled])
  {
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v44 = sub_226D6E07C();
    __swift_project_value_buffer(v44, qword_28105F5C0);
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Notifications disabled for this order, ignoring";
      goto LABEL_23;
    }

LABEL_24:

    return MEMORY[0x277D84F90];
  }

  v19 = sub_226BD40DC(a1, a2, a3, v53);
  if (sub_226D6755C())
  {
    if (v19 >> 62)
    {
      goto LABEL_30;
    }

    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:

      v50 = a2;
      v20 = [a2 merchant];
      v21 = [v20 displayName];

      v22 = sub_226D67C2C();
      v46 = v23;
      v47 = v22;

      v24 = *MEMORY[0x277CC77B0];
      v25 = v51;
      v26 = *(v51 + 13);
      v26(v12, v24, v10);
      v27 = sub_226D6811C();
      v48 = v28;
      v49 = v27;
      v29 = *(v25 + 1);
      a2 = (v25 + 8);
      v29(v12, v10);
      v51 = "ORDER_NOTIFICATION_TITLE_OPEN";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_226D70840;
      *(v30 + 56) = MEMORY[0x277D837D0];
      *(v30 + 64) = sub_226B16404();
      v31 = v46;
      *(v30 + 32) = v47;
      *(v30 + 40) = v31;
      v26(v12, v24, v10);
      v32 = sub_226D6812C();
      v34 = v33;

      v29(v12, v10);
      v35 = sub_226BD256C(0xF000000000000007, v49, v48, v32, v34, a1, v50, v53);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_226D71F20;
      *(v19 + 32) = v35;
      goto LABEL_11;
    }
  }

  while (1)
  {
LABEL_11:
    if (v19 >> 62)
    {
      v36 = sub_226D6EDFC();
      if (!v36)
      {
LABEL_28:

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v36 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_28;
      }
    }

    v55 = MEMORY[0x277D84F90];
    sub_226D6EF8C();
    if ((v36 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_30:
    if (!sub_226D6EDFC())
    {
      goto LABEL_10;
    }
  }

  v37 = objc_opt_self();
  v38 = 0;
  v39 = (v52 + 8);
  do
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x22AA8AFD0](v38, v19);
    }

    else
    {
      v40 = *(v19 + 8 * v38 + 32);
    }

    v41 = v40;
    ++v38;
    sub_226D6D51C();
    sub_226D6D4CC();
    (*v39)(v9, v54);
    v42 = sub_226D6E36C();

    v43 = [v37 requestWithIdentifier:v42 content:v41 trigger:0];

    sub_226D6EF6C();
    sub_226D6EF9C();
    sub_226D6EFAC();
    sub_226D6EF7C();
  }

  while (v36 != v38);

  return v55;
}

id sub_226BD1218(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_226D6D1AC();
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v33 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6913C();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D52C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 272), *(v1 + 296));
  sub_226D6E39C();
  v12 = sub_226D69A3C();

  if (v12)
  {
    return 0;
  }

  v30 = v3;
  __swift_project_boxed_opaque_existential_1((v2 + 232), *(v2 + 256));
  if (sub_226D69A3C())
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v2 + 232), *(v2 + 256));
  v37 = MEMORY[0x277D839B0];
  v36[0] = 1;
  sub_226D69A2C();
  sub_226AC47B0(v36, &unk_27D7A8BB0, &unk_226D74340);
  sub_226D6D51C();
  v14 = sub_226D6D4CC();
  v29[0] = v15;
  v29[1] = v14;
  (*(v9 + 8))(v11, v8);
  v16 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v17 = *MEMORY[0x277CC77B0];
  v18 = v31;
  v19 = v32;
  v20 = *(v31 + 104);
  v20(v7, v17, v32);
  sub_226D6811C();
  v21 = *(v18 + 8);
  v21(v7, v19);
  v22 = sub_226D6E36C();

  [v16 setTitle_];

  v20(v7, v17, v19);
  sub_226D6811C();
  v21(v7, v19);
  v23 = sub_226D6E36C();

  [v16 setBody_];

  v24 = v33;
  sub_226D66D7C();
  v25 = sub_226D6D0DC();
  (*(v35 + 8))(v24, v30);
  [v16 setDefaultActionURL_];

  v26 = v16;
  v27 = sub_226D6E36C();

  v28 = [objc_opt_self() requestWithIdentifier:v27 content:v26 trigger:0];

  return v28;
}

id sub_226BD16C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6E36C();

  v7 = sub_226D6D0DC();
  if (a4)
  {
    v8 = sub_226D6E2AC();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v6 URL:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_226D6D1AC();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a3, v11);
  }

  else
  {
    v14 = v17[0];
    sub_226D6D04C();

    swift_willThrow();
    v15 = sub_226D6D1AC();
    (*(*(v15 - 8) + 8))(a3, v15);
  }

  return v9;
}

uint64_t sub_226BD1880(unsigned __int8 a1, uint64_t a2)
{
  v32 = a2;
  v33 = sub_226D6D6CC();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6D6DC();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D4AC();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A70, &qword_226D75FF0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v17 = sub_226D6CABC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 2u)
  {
    if (a1 < 2u)
    {
      return 0;
    }

    v23 = v19;
    sub_226AC40E8(v32, v16, &qword_27D7A7A70, &qword_226D75FF0);
    v24 = *(v18 + 48);
    v32 = v23;
    if (v24(v16, 1, v23) == 1)
    {
      sub_226AC47B0(v16, &qword_27D7A7A70, &qword_226D75FF0);
      return 2;
    }

    (*(v18 + 32))(v21, v16, v32);
    sub_226D6CAAC();
    sub_226D6D46C();
    sub_226D6D66C();
    v25 = v31;
    (*(v31 + 104))(v4, *MEMORY[0x277CC9968], v33);
    v26 = sub_226D6D69C();
    (*(v25 + 8))(v4, v33);
    (*(v30 + 8))(v7, v5);
    v27 = *(v29 + 8);
    v27(v10, v8);
    v27(v13, v8);
    (*(v18 + 8))(v21, v32);
    if (v26 != -1)
    {
      return 2;
    }

    return 1;
  }

  if (a1 != 4)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_226BD1CB4(unsigned __int8 a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_226D6D6CC();
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6D6DC();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D4AC();
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A70, &qword_226D75FF0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  v18 = sub_226D6CABC();
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 7u)
  {
    if (((1 << a1) & 0xA4) != 0)
    {
      return 1;
    }

    if (((1 << a1) & 0x50) != 0)
    {
      return 2;
    }

    if (a1 == 3)
    {
      v31 = v3;
      v24 = v19;
      v25 = v20;
      sub_226AC40E8(v36, v17, &qword_27D7A7A70, &qword_226D75FF0);
      v32 = v25;
      v26 = *(v25 + 48);
      v36 = v24;
      if (v26(v17, 1, v24) == 1)
      {
        sub_226AC47B0(v17, &qword_27D7A7A70, &qword_226D75FF0);
      }

      else
      {
        (*(v32 + 32))(v22, v17, v36);
        sub_226D6CAAC();
        sub_226D6D46C();
        sub_226D6D66C();
        v27 = v35;
        v28 = v31;
        (*(v35 + 104))(v5, *MEMORY[0x277CC9968], v31);
        v29 = sub_226D6D69C();
        (*(v27 + 8))(v5, v28);
        (*(v34 + 8))(v8, v6);
        v30 = *(v33 + 8);
        v30(v11, v9);
        v30(v14, v9);
        (*(v32 + 8))(v22, v36);
        if (v29 == -1)
        {
          return 1;
        }
      }

      return 2;
    }
  }

  return 0;
}

void *sub_226BD2110(uint64_t a1, void *a2)
{
  v5 = sub_226D6B22C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277CC7E60])
  {
    (*(v6 + 96))(v9, v5);
    v11 = v9[1];
    v12 = v9[2];
    v13 = objc_opt_self();
    v14 = [v13 preferredLanguages];
    sub_226D6E5EC();

    v15 = sub_226D6B28C();
    if (v2)
    {

      return a2;
    }

    v20 = v15;

    if (v20 >> 62)
    {
      if (sub_226D6EDFC())
      {
        goto LABEL_12;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_12:

      goto LABEL_13;
    }

    if (v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_226D70840;
      *(v28 + 32) = v11;
      *(v28 + 40) = v12;
      v29 = [v13 preferredLanguages];
      sub_226D6E5EC();

      v20 = sub_226D6B28C();

      goto LABEL_13;
    }
  }

  else
  {
    if (v10 == *MEMORY[0x277CC7E68])
    {
      (*(v6 + 96))(v9, v5);
      v16 = *v9;
      v17 = v9[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_226D70840;
      *(v18 + 32) = v16;
      *(v18 + 40) = v17;
      v19 = [objc_opt_self() preferredLanguages];
      sub_226D6E5EC();

      v20 = sub_226D6B28C();

      if (v2)
      {
        return a2;
      }

      goto LABEL_13;
    }

    if (v10 != *MEMORY[0x277CC7E58])
    {
      (*(v6 + 8))(v9, v5);
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_13:
  if (v20 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v22 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x22AA8AFD0](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v23 = *(v20 + 8 * v22 + 32);
      }

      a2 = v23;
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      sub_226D6820C();
      if (v25 >= 200.0)
      {
        sub_226D6820C();
        if (v26 >= 200.0)
        {

          return a2;
        }
      }

      ++v22;
      if (v24 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  return 0;
}

void *sub_226BD256C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t a6, void *a7, uint64_t a8)
{
  v99 = a8;
  v103 = a5;
  v104 = a7;
  v9 = sub_226D6D7DC();
  v94 = *(v9 - 8);
  v95 = v9;
  MEMORY[0x28223BE20](v9);
  v93 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6B22C();
  v106 = *(v11 - 8);
  v107 = v11;
  MEMORY[0x28223BE20](v11);
  v109 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_226D6B49C();
  v105 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v101 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v88 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v88 - v18;
  v20 = sub_226D6D1AC();
  v110 = *(v20 - 8);
  v111 = v20;
  MEMORY[0x28223BE20](v20);
  v92 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v96 = &v88 - v23;
  MEMORY[0x28223BE20](v24);
  v97 = &v88 - v25;
  MEMORY[0x28223BE20](v26);
  v98 = &v88 - v27;
  MEMORY[0x28223BE20](v28);
  v100 = &v88 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v88 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A70, &qword_226D75FF0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v88 - v34;
  v36 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v37 = sub_226D6E36C();
  [v36 setTitle_];

  v38 = sub_226D6E36C();
  [v36 setBody_];

  v102 = a1;
  v103 = (a1 & 0xF000000000000007);
  if ((a1 & 0xF000000000000007) == 0xF000000000000007)
  {
    [v36 setInterruptionLevel_];
    sub_226D6740C();
    v39 = v36;
    v40 = v110;
  }

  else
  {
    if (a1 < 0)
    {
      v44 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
      v45 = sub_226D6B52C();
      sub_226D6B51C();
      v43 = sub_226BD1880(v45, v35);
    }

    else
    {
      v41 = a1;
      v42 = sub_226D6BA3C();
      sub_226D6BA2C();
      v43 = sub_226BD1CB4(v42, v35);
    }

    v46 = v43;
    v40 = v110;
    sub_226AC47B0(v35, &qword_27D7A7A70, &qword_226D75FF0);
    sub_226BD4CD8(a1);
    [v36 setInterruptionLevel_];
    sub_226D6740C();
    sub_226D6A27C();
    v39 = v36;
  }

  sub_226D66D7C();

  v47 = v105[1];
  v48 = v19;
  v49 = v108;
  v47(v48, v108);
  v50 = sub_226D6D0DC();
  v51 = *(v40 + 8);
  v51(v32, v111);
  [v39 setDefaultActionURL_];

  sub_226D6740C();
  sub_226D6B47C();
  v47(v16, v49);
  v52 = sub_226D6E36C();

  v105 = v39;
  [v39 setThreadIdentifier_];

  v53 = v109;
  v54 = v104;
  sub_226D6B24C();
  v104 = sub_226BD2110(v53, v54);
  v90 = v47;
  v91 = v51;
  if (v104)
  {
    v88 = sub_226D6821C();
    v89 = v55;
    sub_226D6740C();
    if (v103 == 0xF000000000000007 || (v56 = sub_226D6A27C(), !v57))
    {
      sub_226D6B46C();
      v66 = v111;
      v67 = v96;
      v103 = *(v110 + 16);
      v103(v96, v99 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v111);
      sub_226D6D0EC();

      sub_226D6B44C();
      v68 = v97;
      sub_226D6D0FC();

      v69 = v91;
      v91(v67, v66);
      v112[0] = 0x6567616D69;
      v112[1] = 0xE500000000000000;
      MEMORY[0x22AA8A510](1735290926, 0xE400000000000000);
      v64 = v98;
      sub_226D6D0FC();

      v65 = v69;
      v69(v68, v66);
    }

    else
    {
      strcpy(v112, "fulfillment_");
      BYTE5(v112[1]) = 0;
      HIWORD(v112[1]) = -5120;
      MEMORY[0x22AA8A510](v56);
      v58 = v112[1];
      v102 = v112[0];
      sub_226D6B46C();
      v59 = v111;
      v60 = v96;
      v103 = *(v110 + 16);
      v103(v96, v99 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v111);
      sub_226D6D0EC();

      sub_226D6B44C();
      v61 = v97;
      sub_226D6D0FC();

      v62 = v60;
      v63 = v91;
      v91(v62, v59);
      v112[0] = v102;
      v112[1] = v58;

      MEMORY[0x22AA8A510](1735290926, 0xE400000000000000);
      v64 = v98;
      sub_226D6D0FC();

      v65 = v63;
      v63(v61, v111);
    }

    v70 = v88;
    v71 = v89;
    sub_226BCEF88(v88, v89, v64, v100);
    v72 = v108;
    v73 = v90;

    sub_226B11B98(v70, v71);
    v74 = v111;
    v65(v64, v111);
    v73(v101, v72);
    sub_226BD4C8C();
    v75 = v93;
    sub_226D6D7CC();
    v76 = sub_226D6D7BC();
    v78 = v77;
    v79 = v75;
    v80 = v100;
    (*(v94 + 8))(v79, v95);
    v81 = v92;
    v103(v92, v80, v74);
    v82 = sub_226BD16C4(v76, v78, v81, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_226D71F20;
    *(v83 + 32) = v82;
    v84 = v82;
    v85 = sub_226D6E5CC();

    v86 = v105;
    [v105 setAttachments_];

    v65(v80, v74);
    (*(v106 + 8))(v109, v107);
    return v86;
  }

  else
  {
    (*(v106 + 8))(v53, v107);
    return v105;
  }
}

id sub_226BD31B0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v106 = a4;
  v122 = a1;
  v101 = sub_226D6D7DC();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6B22C();
  v110 = *(v7 - 8);
  v111 = v7;
  MEMORY[0x28223BE20](v7);
  v114 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_226D6B49C();
  v117 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v105 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v109 = &v96 - v11;
  v113 = sub_226D6D1AC();
  v116 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v98 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v102 = &v96 - v14;
  MEMORY[0x28223BE20](v15);
  v103 = &v96 - v16;
  MEMORY[0x28223BE20](v17);
  v104 = &v96 - v18;
  MEMORY[0x28223BE20](v19);
  v115 = &v96 - v20;
  v21 = sub_226D6CA6C();
  v22 = *(v21 - 8);
  v124 = v21;
  v125 = v22;
  MEMORY[0x28223BE20](v21);
  v123 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_226D6D71C();
  MEMORY[0x28223BE20](v24 - 8);
  v121 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v26 - 8);
  v120 = (&v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v28 - 8);
  v29 = sub_226D69B8C();
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_226D6CB0C();
  v32 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_226D6CAFC();
  v35 = *(v118 - 1);
  MEMORY[0x28223BE20](v118);
  v37 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A80, &unk_226D75FF8);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v96 - v42;
  v44 = a2;
  v45 = a3;
  v46 = v122;
  v122 = v44;
  v107 = v45;
  v108 = v46;
  sub_226D6CADC();
  sub_226D6D56C();
  sub_226D6D66C();
  sub_226D6D70C();
  sub_226D69B5C();
  v47 = v124;
  MEMORY[0x22AA88B70](v31);
  sub_226BD4CF0(&qword_27D7A7A88, MEMORY[0x277CC8570], MEMORY[0x277CC8568]);
  v48 = v119;
  sub_226D6CA2C();
  (*(v32 + 8))(v34, v48);
  (*(v35 + 8))(v37, v118);
  sub_226AC40E8(v43, v40, &qword_27D7A7A80, &unk_226D75FF8);
  if ((*(v125 + 48))(v40, 1, v47) == 1)
  {
    sub_226AC47B0(v43, &qword_27D7A7A80, &unk_226D75FF8);
    sub_226AC47B0(v40, &qword_27D7A7A80, &unk_226D75FF8);
    return 0;
  }

  else
  {
    v121 = v43;
    (*(v125 + 32))(v123, v40, v47);
    v49 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
    sub_226D6CA4C();
    v50 = sub_226D6E36C();

    [v49 setTitle_];

    sub_226D6CA5C();
    v51 = sub_226D6E36C();

    [v49 setBody_];

    v52 = v108;
    sub_226D6843C();
    [v49 setInterruptionLevel_];
    v53 = v109;
    sub_226D6740C();
    v54 = [v52 returnIdentifier];
    sub_226D6E39C();

    v55 = v115;
    sub_226D66D8C();

    v56 = v117 + 8;
    v57 = *(v117 + 8);
    v58 = v112;
    v57(v53, v112);
    v59 = sub_226D6D0DC();
    v60 = v116 + 8;
    v120 = *(v116 + 8);
    v120(v55, v113);
    [v49 setDefaultActionURL_];

    sub_226D6740C();
    sub_226D6B47C();
    v57(v53, v58);
    v61 = sub_226D6E36C();

    [v49 setThreadIdentifier_];

    v62 = v114;
    v63 = v107;
    sub_226D6B25C();
    v64 = sub_226BD2110(v62, v63);
    v119 = v60;
    v65 = v56;
    v66 = v115;
    v117 = v65;
    if (v64)
    {
      v109 = v57;
      v118 = v64;
      v97 = sub_226D6821C();
      v107 = v67;
      sub_226D6740C();
      v68 = [v52 returnIdentifier];
      v69 = sub_226D6E39C();
      v71 = v70;

      v126 = 0x5F6E7275746572;
      v127 = 0xE700000000000000;
      MEMORY[0x22AA8A510](v69, v71);

      v72 = v127;
      v122 = v126;
      sub_226D6B46C();
      v73 = *(v116 + 16);
      v74 = v102;
      v75 = v113;
      v116 += 16;
      v108 = v73;
      v73(v102, v106 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v113);
      sub_226D6D0EC();

      sub_226D6B44C();
      sub_226D6D0FC();

      v76 = v120;
      v120(v74, v75);
      v126 = v122;
      v127 = v72;

      MEMORY[0x22AA8A510](1735290926, 0xE400000000000000);
      v77 = v103;
      sub_226D6D0FC();
      v78 = v75;

      v79 = v66;
      v80 = v76;
      v81 = v97;
      v80(v79, v75);
      v82 = v107;

      v83 = v104;
      sub_226BCEF88(v81, v82, v77, v104);
      sub_226B11B98(v81, v82);
      v80(v77, v78);
      (v109)(v105, v112);
      sub_226BD4C8C();
      v84 = v99;
      sub_226D6D7CC();
      v85 = sub_226D6D7BC();
      v87 = v86;
      (*(v100 + 8))(v84, v101);
      v88 = v98;
      (v108)(v98, v83, v78);
      v91 = sub_226BD16C4(v85, v87, v88, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_226D71F20;
      *(v92 + 32) = v91;
      v93 = v91;
      v94 = sub_226D6E5CC();

      [v49 setAttachments_];

      v80(v83, v78);
      (*(v110 + 8))(v114, v111);
      v95 = v124;
      v89 = v123;
    }

    else
    {
      (*(v110 + 8))(v62, v111);
      v89 = v123;
      v95 = v124;
    }

    (*(v125 + 8))(v89, v95);
    sub_226AC47B0(v121, &qword_27D7A7A80, &unk_226D75FF8);
  }

  return v49;
}

uint64_t sub_226BD40DC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v109 = a1;
  v7 = 0;
  v105 = sub_226D6CA6C();
  v90 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v85 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D71C();
  MEMORY[0x28223BE20](v9 - 8);
  v104 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v11 - 8);
  v103 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v13 - 8);
  v102 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D69B8C();
  MEMORY[0x28223BE20](v15 - 8);
  v101 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_226D6CA7C();
  v93 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_226D6CA3C();
  v92 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A80, &unk_226D75FF8);
  MEMORY[0x28223BE20](v19 - 8);
  v96 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v95 = &v81 - v22;
  v87 = a3;
  v108 = sub_226D675AC();
  v110 = a2;
  v23 = sub_226D6B20C();
  v24 = v23;
  v25 = *(v23 + 16);
  v26 = MEMORY[0x277D84F90];
  if (!v25)
  {
    goto LABEL_13;
  }

  v27 = 0;
  v94 = v23 + 32;
  v91 = (v25 - 1);
  do
  {
    v106 = v26;
    v28 = v27;
    while (1)
    {
      if (v28 >= *(v24 + 16))
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v29 = *(v94 + 8 * v28);
      v27 = (v28 + 1);
      v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
      v112 = sub_226D6A27C();
      v113 = v31;
      MEMORY[0x28223BE20](v112);
      *(&v81 - 2) = &v112;
      v4 = sub_226CCB428(sub_226BAE190, (&v81 - 4), v108);

      if (v4)
      {
        break;
      }

      v28 = (v28 + 1);
      if (v25 == v27)
      {
        v26 = v106;
        goto LABEL_13;
      }
    }

    v26 = v106;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = v26;
    v33 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_226AE2384(0, *(v26 + 16) + 1, 1);
      v26 = v114;
    }

    v35 = *(v26 + 16);
    v34 = *(v26 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_226AE2384((v34 > 1), v35 + 1, 1);
      v26 = v114;
    }

    *(v26 + 16) = v35 + 1;
    *(v26 + 8 * v35 + 32) = v29;
    v7 = v33;
  }

  while (v91 != v28);
LABEL_13:
  v86 = v7;

  v112 = MEMORY[0x277D84F90];
  v36 = *(v26 + 16);
  if (v36)
  {
    v94 = v26 + 32;
    ++v93;
    ++v92;
    v91 = (v90 + 48);
    v84 = (v90 + 32);
    v83 = (v90 + 8);
    v89 = v36;
    v82 = v36 - 1;
    v88 = MEMORY[0x277D84F90];
    v37 = &qword_27D7A7A80;
    v106 = v26;
    v38 = 0;
    while (v38 < *(v26 + 16))
    {
      v39 = *(v94 + 8 * v38);
      v40 = v38 + 1;
      v90 = v38;
      v108 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
      v4 = v109;
      v41 = v110;
      v42 = v97;
      sub_226D6CA1C();
      v43 = v37;
      sub_226D6D56C();
      sub_226D6D66C();
      sub_226D6D70C();
      v44 = v101;
      sub_226D69B5C();
      v45 = v99;
      v46 = v44;
      v47 = v95;
      MEMORY[0x22AA88AB0](v46);
      sub_226BD4CF0(&qword_27D7A9670, MEMORY[0x277CC83D0], MEMORY[0x277CC83C8]);
      v48 = v100;
      sub_226D6CA2C();
      v49 = v45;
      v37 = v43;
      v50 = v48;
      v51 = v96;
      (*v93)(v49, v50);
      (*v92)(v42, v98);
      sub_226AC40E8(v47, v51, v43, &unk_226D75FF8);
      if ((*v91)(v51, 1, v105) == 1)
      {

        sub_226AC47B0(v47, v43, &unk_226D75FF8);
        sub_226AC47B0(v51, v43, &unk_226D75FF8);
        v38 = v40;
        v26 = v106;
        if (v89 == v40)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v52 = v85;
        v53 = v51;
        v54 = v105;
        (*v84)(v85, v53, v105);
        v88 = sub_226D6CA4C();
        v56 = v55;
        v57 = sub_226D6CA5C();
        v4 = sub_226BD256C(v39, v88, v56, v57, v58, v4, v41, v107);

        (*v83)(v52, v54);
        v59 = sub_226AC47B0(v47, v37, &unk_226D75FF8);
        MEMORY[0x22AA8A610](v59);
        if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_226D6E61C();
        }

        sub_226D6E65C();
        v88 = v112;
        v26 = v106;
        if (v82 == v90)
        {
          goto LABEL_24;
        }

        v38 = v40;
      }
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v88 = MEMORY[0x277D84F90];
LABEL_24:

  v114 = v88;
  v108 = sub_226D6758C();
  v60 = sub_226D6B29C();
  v4 = v60;
  v111 = MEMORY[0x277D84F90];
  if (v60 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v62 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v63 = 0;
    v105 = v4 & 0xFFFFFFFFFFFFFF8;
    v106 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v106)
      {
        v64 = MEMORY[0x22AA8AFD0](v63, v4);
      }

      else
      {
        if (v63 >= *(v105 + 16))
        {
          goto LABEL_59;
        }

        v64 = *(v4 + 8 * v63 + 32);
      }

      v65 = v64;
      v66 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      v67 = [v64 returnIdentifier];
      v68 = sub_226D6E39C();
      v70 = v69;

      v112 = v68;
      v113 = v70;
      MEMORY[0x28223BE20](v71);
      *(&v81 - 2) = &v112;
      LOBYTE(v67) = sub_226CCB428(sub_226BAE5A0, (&v81 - 4), v108);

      if (v67)
      {
        sub_226D6EF6C();
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      else
      {
      }

      ++v63;
      if (v66 == i)
      {
        v72 = v111;
        v62 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v72 = MEMORY[0x277D84F90];
LABEL_39:

  v112 = v62;
  if (v72 < 0 || (v72 & 0x4000000000000000) != 0)
  {
    v73 = sub_226D6EDFC();
  }

  else
  {
    v73 = *(v72 + 16);
  }

  v74 = 0;
  v75 = MEMORY[0x277D84F90];
  while (v73 != v74)
  {
    if ((v72 & 0xC000000000000001) != 0)
    {
      v76 = MEMORY[0x22AA8AFD0](v74, v72);
    }

    else
    {
      if (v74 >= *(v72 + 16))
      {
        goto LABEL_55;
      }

      v76 = *(v72 + 8 * v74 + 32);
    }

    v77 = v76;
    v78 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v79 = sub_226BD31B0(v76, v109, v110, v107);

    ++v74;
    if (v79)
    {
      MEMORY[0x22AA8A610]();
      if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226D6E61C();
      }

      sub_226D6E65C();
      v75 = v112;
      v74 = v78;
    }
  }

  sub_226CEE0B0(v75);
  return v114;
}

unint64_t sub_226BD4C8C()
{
  result = qword_27D7A7A78;
  if (!qword_27D7A7A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A7A78);
  }

  return result;
}

void sub_226BD4CD8(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t sub_226BD4CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon20ManagedOrderImporterC30NotificationSchedulingBehaviorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226BD4D50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_226BD4DA0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void *sub_226BD4DF4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t BankConnectServiceImplementation.institution(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_226BD4E48, 0, 0);
}

uint64_t sub_226BD4E48()
{
  __swift_project_boxed_opaque_existential_1((v0[10] + 16), *(v0[10] + 40));
  sub_226D1F020(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v8 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_226BD4F94;
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];

  return v8(v6, v4, v5, v1, v2);
}

uint64_t sub_226BD4F94()
{

  return MEMORY[0x2822009F8](sub_226B99748, 0, 0);
}

uint64_t sub_226BD5094(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_226BD513C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_226BD5468(MEMORY[0x277CC7C20]);
}

void sub_226BD51B4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_226BD5468(MEMORY[0x277CC7C18]);
}

void sub_226BD522C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a1;
  v8 = a4;
  sub_226BD54E0(a4);
}

id sub_226BD52DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RemoteUIHandle(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_226BD534C(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];

  sub_226BD55B0(&a1[*((*v2 & *a1) + 0x68)]);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(&a1[*((*v2 & *a1) + 0x70)]);
  v5 = *&a1[*((*v2 & *a1) + 0x78)];
}

void sub_226BD54E0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_226D6A59C();
  }
}

uint64_t sub_226BD55B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A7B70, &qword_226D76110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226BD5618(uint64_t a1, void *a2)
{
  v4 = sub_226D696EC();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B1CC();
  sub_226D694BC();
  v11 = a2;
  v12 = v21;
  v13 = sub_226D6B19C();
  if (v12)
  {
    v14 = v12;
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v15 = v13;
    v18[1] = 0;
    v21 = a1;
    (*(v8 + 8))(v10, v7);
    if (v15)
    {
      [v11 deleteObject_];
    }

    (*(v19 + 16))(v6, v21, v20);
    v16 = v11;
    v14 = sub_226D6B1DC();
    if (v15)
    {

      return v14 | 0x8000000000000000;
    }
  }

  return v14;
}

uint64_t BankConnectServiceImplementation.initiateConnectionAuthorization(for:fpanID:authorizationConfiguration:authorizationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v7 + 112) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_226D671FC();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BD58FC, 0, 0);
}

uint64_t sub_226BD58FC()
{
  v33 = v0;
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_27D7A7D10);
  (*(v2 + 16))(v1, v5, v3);

  v7 = sub_226D6E05C();
  v8 = sub_226D6E9AC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 64);
  if (v9)
  {
    v29 = *(v0 + 40);
    v30 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v13 = 136315394;
    v14 = sub_226D671AC();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_226AC4530(v14, v16, &v32);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    if (v29)
    {
      v18 = v30;
    }

    else
    {
      v18 = 0x3E6C696E3CLL;
    }

    if (v29)
    {
      v19 = v4;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    v20 = sub_226AC4530(v18, v19, &v32);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_226AB4000, v7, v8, "Initiating consent for institutionID: %s with fpanID: %s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v31, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = swift_task_alloc();
  *(v0 + 88) = v21;
  *v21 = v0;
  v21[1] = sub_226BD5BB8;
  v22 = *(v0 + 48);
  v23 = *(v0 + 32);
  v24 = *(v0 + 40);
  v25 = *(v0 + 16);
  v26 = *(v0 + 24);
  v27 = *(v0 + 112);

  return sub_226BD5D38(v25, v26, v23, v24, v22, v27);
}

uint64_t sub_226BD5BB8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 96) = v6;
    *v6 = v3;
    v6[1] = sub_226B99F1C;
    v7 = *(v2 + 16);

    return sub_226BD6E30(v7);
  }
}

uint64_t sub_226BD5D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v7 + 328) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_226D671FC();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  v9 = sub_226D6888C();
  *(v7 + 88) = v9;
  *(v7 + 96) = *(v9 - 8);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  v10 = sub_226D6860C();
  *(v7 + 120) = v10;
  *(v7 + 128) = *(v10 - 8);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  sub_226D6B8AC();
  *(v7 + 152) = swift_task_alloc();
  v11 = sub_226D6C3CC();
  *(v7 + 160) = v11;
  *(v7 + 168) = *(v11 - 8);
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D7A7B80, &qword_226D76130);
  *(v7 + 216) = v12;
  *(v7 + 224) = *(v12 - 8);
  *(v7 + 232) = swift_task_alloc();
  v13 = sub_226D6D52C();
  *(v7 + 240) = v13;
  *(v7 + 248) = *(v13 - 8);
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BD6088, 0, 0);
}

uint64_t sub_226BD6088(uint64_t a1)
{
  v2 = *(v1 + 56);
  sub_226D6D51C();
  v3 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  __swift_project_boxed_opaque_existential_1(v3 + 46, v3[49]);
  v4 = sub_226BD7790(0x56uLL);
  v5 = sub_226D45B2C(v4 + 43);
  *(v1 + 272) = v5;
  *(v1 + 280) = v6;
  v7 = v6;
  v8 = v5;
  v9 = sub_226D45F38(v5, v6);
  *(v1 + 288) = v10;
  v11 = v9;
  v12 = v10;
  v13 = *(v1 + 264);
  v25 = *(v1 + 328);
  v23 = *(v1 + 40);
  v24 = *(v1 + 48);
  v14 = *(v1 + 24);
  v22 = *(v1 + 32);
  v15 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  __swift_project_boxed_opaque_existential_1(v15 + 1, v15[4]);

  v16 = sub_226D6C2AC();
  *(v1 + 296) = v16;
  v17 = swift_task_alloc();
  *(v1 + 304) = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v13;
  *(v17 + 32) = v14;
  *(v17 + 40) = v8;
  *(v17 + 48) = v7;
  *(v17 + 56) = v11;
  *(v17 + 64) = v12;
  *(v17 + 72) = v22;
  *(v17 + 80) = v23;
  *(v17 + 88) = v25;
  *(v17 + 96) = v24;
  v18 = swift_task_alloc();
  *(v1 + 312) = v18;
  *v18 = v1;
  v18[1] = sub_226BD64DC;
  v19 = *(v1 + 232);
  v20 = *(v1 + 216);

  return MEMORY[0x282119B28](v19, &unk_226D76140, v17, v20);
}

uint64_t sub_226BD64DC()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    swift_bridgeObjectRelease_n();

    v2 = sub_226BD6B64;
  }

  else
  {

    v2 = sub_226BD6630;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226BD6630()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = *(v3 + 16);
  v4(v1, v0[6], v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x277CC8268] || v5 == *MEMORY[0x277CC8258])
  {
    v39 = v4;
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[25];
    v9 = v0[23];
    v10 = v0[20];
    v11 = v0[21];

    (*(v11 + 96))(v9, v10);
    (*(v7 + 32))(v8, v9, v6);
    v12 = 0;
  }

  else
  {
    if (v5 != *MEMORY[0x277CC8260])
    {
      return sub_226D6F0AC();
    }

    v39 = v4;

    v12 = 1;
  }

  v13 = v0[32];
  v14 = v0[33];
  v36 = v14;
  v15 = v0[30];
  v25 = v0[29];
  v38 = v0[28];
  v16 = v0[26];
  v40 = v0[27];
  v17 = v0[25];
  v33 = v0[24];
  v34 = v0[22];
  v35 = v0[20];
  v18 = v0[18];
  v43 = v0[17];
  v19 = v0[16];
  v26 = v0[15];
  v41 = v0[13];
  v42 = v0[14];
  v20 = v0[12];
  v27 = v0[11];
  v30 = v0[10];
  v31 = v0[8];
  v32 = v0[6];
  v28 = v0[3];
  v29 = v0[9];
  v37 = v0[31];
  (*(v37 + 56))(v17, v12, 1, v15);
  sub_226BACBC0(v17, v16);
  (*(v37 + 16))(v13, v14, v15);
  MEMORY[0x22AA87740](v40);
  sub_226D685FC();
  v21 = *(v19 + 8);
  v21(v18, v26);
  MEMORY[0x22AA87740](v40);
  sub_226D685EC();
  v21(v43, v26);
  sub_226D6B6AC();
  sub_226D6886C();
  v22 = *(v20 + 8);
  v22(v42, v27);
  sub_226D6B6AC();
  sub_226D6887C();
  v22(v41, v27);
  sub_226D6B87C();
  sub_226B36DE0(v16, v33);
  (*(v29 + 16))(v30, v28, v31);
  v39(v34, v32, v35);

  sub_226BD7920(v34);
  sub_226D6B86C();

  sub_226AC47B0(v16, &qword_27D7A6D68, &qword_226D75210);
  (*(v38 + 8))(v25, v40);
  (*(v37 + 8))(v36, v15);

  v23 = v0[1];

  return v23();
}

uint64_t sub_226BD6B64()
{

  v1 = v0[40];
  (*(v0[31] + 8))(v0[33], v0[30]);
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error while trying to call initiate consent: %@.", v6, 0xCu);
    sub_226AC47B0(v7, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v10 = sub_226D6A0DC();
  sub_226BD7738();
  swift_allocError();
  *v11 = v1;
  (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277CC7AB0], v10);
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_226BD6E30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_226BD6E50, 0, 0);
}

uint64_t sub_226BD6E50()
{
  v1 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[3] + 16), *(v0[3] + 40));
  sub_226D6BAAC();
  v2 = sub_226D676AC();

  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_226D6EB7C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_226BD70EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v15;
  *(v8 + 152) = v14;
  *(v8 + 64) = v13;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_226D6C3CC();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  v10 = sub_226D6C82C();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BD722C, 0, 0);
}

uint64_t sub_226BD722C(uint64_t a1)
{
  v2 = v1[9];
  sub_226D6D4CC();
  sub_226D671AC();
  if (v2)
  {
    v3 = v1[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_226D70840;
    *(v4 + 32) = v3;
    *(v4 + 40) = v2;
  }

  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[10];
  v15 = v1[11];

  v8 = sub_226D6B83C();
  v10 = v9;
  sub_226D6D20C();
  sub_226B11B98(v8, v10);
  (*(v6 + 16))(v5, v7, v15);
  sub_226D6C81C();
  v11 = swift_task_alloc();
  v1[17] = v11;
  *v11 = v1;
  v11[1] = sub_226BD73F0;
  v12 = v1[16];
  v13 = v1[2];

  return MEMORY[0x282119AE8](v13, v12);
}

uint64_t sub_226BD73F0()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(v5 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226BD75A8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_226BD75A8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_226BD7618(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  sub_226D6C1BC();
  swift_allocObject();
  sub_226D6C1AC();
  v4 = sub_226D6C19C();

  if (!v2)
  {

    v7[0] = 0;
    if ([a2 save_])
    {
      return v7[0];
    }

    else
    {
      v6 = v7[0];
      sub_226D6D04C();

      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_226BD7738()
{
  result = qword_27D7A6290;
  if (!qword_27D7A6290)
  {
    sub_226D6A0DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6290);
  }

  return result;
}

unint64_t sub_226BD7790(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AA8BF00](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AA8BF00](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226BD781C(uint64_t a1)
{
  v11 = v1[3];
  v12 = v1[2];
  v4 = v1[5];
  v10 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AD827C;

  return sub_226BD70EC(a1, v12, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_226BD7920(uint64_t a1)
{
  v2 = sub_226D6C3CC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC8268])
  {
    (*(v3 + 8))(a1, v2);
    (*(v3 + 96))(v6, v2);
    v8 = sub_226D6D52C();
    (*(*(v8 - 8) + 8))(v6, v8);
    return 1;
  }

  else if (v7 == *MEMORY[0x277CC8258])
  {
    (*(v3 + 8))(a1, v2);
    (*(v3 + 96))(v6, v2);
    v10 = sub_226D6D52C();
    (*(*(v10 - 8) + 8))(v6, v10);
    return 2;
  }

  else if (v7 == *MEMORY[0x277CC8260])
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  else
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

uint64_t sub_226BD7BA4(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F6A8);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226AB4000, v4, v5, "Starting reprocessing cascade set as part of post install task", v6, 2u);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  sub_226BAFC9C(v7);
}

uint64_t sub_226BD7CD0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for PostInstallTaskEnvironment(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (qword_281060348 != -1)
  {
    swift_once();
  }

  v9 = qword_281064528;
  sub_226BD7F04(a1, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 25) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3 & 1;
  sub_226BD7F68(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226BD7FCC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_226B1BA20;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226CAD254;
  aBlock[3] = &block_descriptor_10;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226BD7F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PostInstallTaskEnvironment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BD7F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PostInstallTaskEnvironment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226BD80C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D66E3C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  if (qword_27D7A5ED8 != -1)
  {
    swift_once();
  }

  v7 = sub_226D66DDC();
  __swift_project_value_buffer(v7, qword_27D7B61D8);
  (*(v4 + 104))(v6, *MEMORY[0x277CC6548], v3);
  v8 = sub_226D66E5C();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_226BD8250()
{
  v0 = sub_226D66DDC();
  __swift_allocate_value_buffer(v0, qword_27D7B61D8);
  __swift_project_value_buffer(v0, qword_27D7B61D8);
  return sub_226D66DCC();
}

uint64_t sub_226BD82B4()
{
  v0 = sub_226D66DDC();
  __swift_allocate_value_buffer(v0, qword_281064560);
  __swift_project_value_buffer(v0, qword_281064560);
  return sub_226D66DCC();
}

uint64_t sub_226BD8318(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_226D6E07C();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

char *sub_226BD842C()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 112)]);
  __swift_destroy_boxed_opaque_existential_0Tm(&v0[*(*v0 + 120)]);
  v2 = *(*v0 + 136);
  v3 = sub_226D6E07C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_226BD8580()
{
  sub_226BD842C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226BD85C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_226BD8614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_226BD865C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226BD890C()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_27D7A7C38);
  __swift_project_value_buffer(v0, qword_27D7A7C38);
  return sub_226D6E06C();
}

uint64_t sub_226BD89F4()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_27D7A7C68);
  __swift_project_value_buffer(v0, qword_27D7A7C68);
  return sub_226D6E06C();
}

uint64_t sub_226BD8CC0()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_28105F688);
  __swift_project_value_buffer(v0, qword_28105F688);
  return sub_226D6E06C();
}

uint64_t sub_226BD8DB0()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_28105F668);
  __swift_project_value_buffer(v0, qword_28105F668);
  return sub_226D6E06C();
}

uint64_t sub_226BD8EA4()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_27D7A7D10);
  __swift_project_value_buffer(v0, qword_27D7A7D10);
  return sub_226D6E06C();
}

uint64_t sub_226BD8F70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_226D6E07C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_226D6E06C();
}

uint64_t sub_226BD900C()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_27D7A7D40);
  __swift_project_value_buffer(v0, qword_27D7A7D40);
  return sub_226D6E06C();
}

uint64_t sub_226BD90B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_226D6E07C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_226BD9148()
{
  v0 = sub_226D6DFFC();
  __swift_allocate_value_buffer(v0, qword_281064510);
  __swift_project_value_buffer(v0, qword_281064510);
  return sub_226D6DFEC();
}

uint64_t sub_226BD91C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for BankConnectAccountDataFetchTask(0);
  sub_226AF265C(v1 + Task[7], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    return sub_226AF265C(v1 + Task[5], a1);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v1 + Task[6]);
    v13 = v12 < 1;
    v14 = v12 - 1;
    if (!v13)
    {
      exp2(v14);
    }

    sub_226D6D3DC();
    (*(v7 + 8))(v9, v6);
    return (*(v7 + 56))(a1, 0, 1, v6);
  }
}

uint64_t sub_226BD93DC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_226D6764C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_226D67C0C();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BD9510, 0, 0);
}

uint64_t sub_226BD9510()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  *(v0 + 120) = sub_226B41FC0();
  v13 = swift_allocObject();
  sub_226B42014(v3, v13 + 16);
  v4 = sub_226D6B13C();
  swift_allocObject();
  v5 = sub_226D6B12C();
  *(v0 + 128) = v5;
  *(v0 + 16) = v5;
  *(v0 + 232) = *MEMORY[0x277CC6D38];
  v6 = *(v2 + 104);
  *(v0 + 136) = v6;
  *(v0 + 144) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_226BD9684;
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);
  v10 = *(v0 + 48);
  v11 = MEMORY[0x277CC7E10];

  return MEMORY[0x282119F10](v8, v10, v9, v4, v11);
}

uint64_t sub_226BD9684()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    (*(v2[8] + 8))(v2[11], v2[7]);
    v3 = sub_226BD9EEC;
  }

  else
  {
    v5 = v2[13];
    v4 = v2[14];
    v6 = v2[11];
    v7 = v2[12];
    v8 = v2[7];
    v9 = v2[8];
    v10 = *(v9 + 8);
    v2[21] = v10;
    v2[22] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);
    (*(v5 + 8))(v4, v7);
    v3 = sub_226BD97F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226BD97F8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 232);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  v6 = __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v14 = swift_allocObject();
  sub_226B42014(v6, v14 + 16);
  v7 = sub_226D6BB5C();
  swift_allocObject();
  v8 = sub_226D6BB4C();
  *(v0 + 184) = v8;
  *(v0 + 24) = v8;
  v1(v3, v2, v4);
  v9 = swift_task_alloc();
  *(v0 + 192) = v9;
  *v9 = v0;
  v9[1] = sub_226BD9954;
  v10 = *(v0 + 80);
  v11 = *(v0 + 48);
  v12 = MEMORY[0x277CC8090];

  return MEMORY[0x28211A560](v11, v10, v7, v12);
}

uint64_t sub_226BD9954()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  (*(v2 + 168))(*(v2 + 80), *(v2 + 56));
  if (v0)
  {
    v3 = sub_226BD9F80;
  }

  else
  {
    v3 = sub_226BD9AC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226BD9AC4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 232);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  v6 = __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v14 = swift_allocObject();
  sub_226B42014(v6, v14 + 16);
  v7 = sub_226D6C51C();
  swift_allocObject();
  v8 = sub_226D6C50C();
  *(v0 + 208) = v8;
  *(v0 + 32) = v8;
  v1(v3, v2, v4);
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  *v9 = v0;
  v9[1] = sub_226BD9C24;
  v10 = *(v0 + 72);
  v11 = *(v0 + 48);
  v12 = MEMORY[0x277CC8280];

  return MEMORY[0x28211A9B0](v11, v10, v7, v12);
}

uint64_t sub_226BD9C24()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2 + 168))(*(v2 + 72), *(v2 + 56));
  if (v0)
  {
    v3 = sub_226BDA014;
  }

  else
  {
    v3 = sub_226BD9D94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226BD9D94()
{
  v1 = v0[5];
  v2 = v0[6];

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_226D676AC();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_226D6EB7C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_226BD9EEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226BD9F80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226BDA014()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226BDA0A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_226D66DFC();
  v3[6] = swift_task_alloc();
  type metadata accessor for BankConnectAccountDataFetchTask(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BDA16C, 0, 0);
}

uint64_t sub_226BDA16C()
{
  v26 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226BDB288(v3, v2, type metadata accessor for BankConnectAccountDataFetchTask);
  sub_226BDB288(v4, v1, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  if (!v8)
  {

    sub_226BDB2F0(v10, MEMORY[0x277CC6528]);
    sub_226BDB2F0(v9, type metadata accessor for BankConnectAccountDataFetchTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v25 = v13;
  *v11 = 136315394;
  sub_226D6B9BC();
  sub_226BDB4C8(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
  v14 = sub_226D6F1CC();
  v16 = v15;
  sub_226BDB2F0(v9, type metadata accessor for BankConnectAccountDataFetchTask);
  v17 = sub_226AC4530(v14, v16, &v25);

  *(v11 + 4) = v17;
  *(v11 + 12) = 2112;
  sub_226BDB4C8(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
  swift_allocError();
  sub_226BDB288(v10, v18, MEMORY[0x277CC6528]);
  v19 = _swift_stdlib_bridgeErrorToNSError();
  sub_226BDB2F0(v10, MEMORY[0x277CC6528]);
  *(v11 + 14) = v19;
  *v12 = v19;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to fetch account %s with error: %@", v11, 0x16u);
  sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  MEMORY[0x22AA8BEE0](v11, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v20 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v21 = sub_226D676AC();
    v22 = swift_task_alloc();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    sub_226D6EB7C();
  }

LABEL_8:

  v23 = *(v0 + 8);

  return v23();
}

void sub_226BDA578(uint64_t a1, void *a2)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for BankConnectAccountDataFetchTask(0);
  MEMORY[0x28223BE20](Task - 8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v40 - v13;
  sub_226D69F0C();
  v15 = sub_226D69D9C();
  if (v2)
  {
    return;
  }

  v16 = v15;
  v40[1] = 0;
  if (!v15)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v20 = sub_226D6E07C();
    __swift_project_value_buffer(v20, qword_28105F710);
    sub_226BDB288(a1, v14, type metadata accessor for BankConnectAccountDataFetchTask);
    v21 = sub_226D6E05C();
    v22 = sub_226D6E9AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41[0] = v24;
      *v23 = 136315138;
      sub_226D6B9BC();
      sub_226BDB4C8(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v25 = sub_226D6F1CC();
      v27 = v26;
      sub_226BDB2F0(v14, type metadata accessor for BankConnectAccountDataFetchTask);
      v28 = sub_226AC4530(v25, v27, v41);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_226AB4000, v21, v22, "Account %s doesn't exist", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
      MEMORY[0x22AA8BEE0](v23, -1, -1);

      return;
    }

    v38 = v14;
LABEL_17:
    sub_226BDB2F0(v38, type metadata accessor for BankConnectAccountDataFetchTask);
    return;
  }

  if (([v15 isAccountEnabled] & 1) == 0)
  {
    if (qword_28105F708 == -1)
    {
LABEL_13:
      v29 = sub_226D6E07C();
      __swift_project_value_buffer(v29, qword_28105F710);
      sub_226BDB288(a1, v11, type metadata accessor for BankConnectAccountDataFetchTask);
      v30 = sub_226D6E05C();
      v31 = sub_226D6E9AC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v41[0] = v33;
        *v32 = 136315138;
        sub_226D6B9BC();
        sub_226BDB4C8(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v34 = sub_226D6F1CC();
        v36 = v35;
        sub_226BDB2F0(v11, type metadata accessor for BankConnectAccountDataFetchTask);
        v37 = sub_226AC4530(v34, v36, v41);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_226AB4000, v30, v31, "Account %s was disabled while fetching data from the server.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x22AA8BEE0](v33, -1, -1);
        MEMORY[0x22AA8BEE0](v32, -1, -1);

        return;
      }

      v38 = v11;
      goto LABEL_17;
    }

LABEL_21:
    swift_once();
    goto LABEL_13;
  }

  v17 = [v16 accountRequestAttemptCount];
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  [v16 setAccountRequestAttemptCount_];
  sub_226D6D46C();
  v18 = sub_226D6D3EC();
  (*(v6 + 8))(v8, v5);
  [v16 setLastAccountRequestAttemptDate_];

  v41[0] = 0;
  if ([a2 save_])
  {
    v19 = v41[0];
  }

  else
  {
    v39 = v41[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

void sub_226BDAB64(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  Task = type metadata accessor for BankConnectAccountDataFetchTask(0);
  MEMORY[0x28223BE20](Task - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v8 = sub_226D69D9C();
  if (!v2)
  {
    if (v8)
    {
      v9 = v8;
      [v8 setAccountRequestAttemptCount_];
      [v9 setLastAccountRequestAttemptDate_];
      v21[0] = 0;
      if ([a2 save_])
      {
        v10 = v21[0];
      }

      else
      {
        v20 = v21[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v11 = sub_226D6E07C();
      __swift_project_value_buffer(v11, qword_28105F710);
      sub_226BDB288(a1, v7, type metadata accessor for BankConnectAccountDataFetchTask);
      v12 = sub_226D6E05C();
      v13 = sub_226D6E9CC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21[0] = v15;
        *v14 = 136315138;
        sub_226D6B9BC();
        sub_226BDB4C8(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v16 = sub_226D6F1CC();
        v18 = v17;
        sub_226BDB2F0(v7, type metadata accessor for BankConnectAccountDataFetchTask);
        v19 = sub_226AC4530(v16, v18, v21);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_226AB4000, v12, v13, "Account %s not found, unable to update task scheduling.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x22AA8BEE0](v15, -1, -1);
        MEMORY[0x22AA8BEE0](v14, -1, -1);
      }

      else
      {

        sub_226BDB2F0(v7, type metadata accessor for BankConnectAccountDataFetchTask);
      }
    }
  }
}

uint64_t sub_226BDAE8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226BD93DC(a1);
}

uint64_t sub_226BDAF20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226BDA0A8(a1, a2);
}

uint64_t sub_226BDAFC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226D6B9BC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_226BDB048()
{
  sub_226D6B9BC();
  sub_226BDB4C8(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
  v0 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v0);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000027;
}

uint64_t sub_226BDB18C(uint64_t a1)
{
  result = sub_226BDB4C8(&qword_27D7A7D58, type metadata accessor for BankConnectAccountDataFetchTask, &unk_226D763D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectAccountDataFetchTask(uint64_t a1)
{
  result = qword_27D7A7D68;
  if (!qword_27D7A7D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BDB230(uint64_t a1)
{
  result = sub_226BDB4C8(&qword_27D7A7D60, type metadata accessor for BankConnectAccountDataFetchTask, &unk_226D76414);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226BDB288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BDB2F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226BDB3B0(uint64_t a1)
{
  sub_226D6B9BC();
  if (v1 <= 0x3F)
  {
    sub_226B20350(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226BDB444(uint64_t a1)
{
  *(a1 + 8) = sub_226BDB4C8(&qword_27D7A7D78, type metadata accessor for BankConnectAccountDataFetchTask, &unk_226D76440);
  result = sub_226BDB4C8(&qword_27D7A7D80, type metadata accessor for BankConnectAccountDataFetchTask, &unk_226D764A0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226BDB4C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t BankConnectServiceImplementation.logo(forInstitutionID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226BDB538, 0, 0);
}

uint64_t sub_226BDB538()
{
  v0[5] = __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40))[51];

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_226BDB5F4;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x28211A648](v3, v2);
}

uint64_t sub_226BDB5F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_226BDB760, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_226BDB760()
{
  v18 = v0;

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);

  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_226AC4530(v9, v8, &v17);
    *(v10 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error obtaining logo asset data for institution id: %s error: %@", v10, 0x16u);
    sub_226B17298(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15(0, 0xF000000000000000);
}

uint64_t BankConnectServiceImplementation.removeLogo(forInstitutionID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226BDB998, 0, 0);
}

uint64_t sub_226BDB998()
{
  v0[5] = __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40))[51];

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_226BDBA54;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x28211A630](v3, v2);
}

uint64_t sub_226BDBA54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_226BDBB64(char *a1@<X0>, unsigned int (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v130 = a5;
  v131 = a4;
  v136 = a1;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DA0, &qword_226D765A0);
  MEMORY[0x28223BE20](v137);
  v129 = &v108 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DA8, &unk_226D765A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v108 - v9;
  v11 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
  v138 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v108 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v108 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v108 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v108 - v24;
  v122 = sub_226D69CAC();
  v127 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a2;
  v121 = a3;
  v27 = v139;
  sub_226BDF504(v136, a2, a3, v131);
  v132 = v27;
  if (!v27)
  {
    v124 = v25;
    v134 = v16;
    v135 = v11;
    v126 = v10;
    v139 = v19;
    v133 = v13;
    v136 = v22;
    v29 = v28;
    v113 = sub_226D69CBC();
    v112 = sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
    swift_getKeyPath();
    v111 = sub_226D6E9FC();
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_226D71F30;
    v31 = v30;
    v32 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v34 = swift_allocObject();
    v128 = xmmword_226D70840;
    *(v34 + 16) = xmmword_226D70840;
    *(v34 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
    *(v34 + 64) = sub_226BAE1D0();
    *(v34 + 32) = v29;
    *(v31 + 32) = sub_226D6E91C();
    v109 = v31;
    v118 = v33;
    v35 = swift_allocObject();
    *(v35 + 16) = v128;
    *(v35 + 56) = MEMORY[0x277D837D0];
    v123 = sub_226B16404();
    *(v35 + 64) = v123;
    v36 = v121;
    *(v35 + 32) = v119;
    *(v35 + 40) = v36;

    v117 = v32;
    *(v31 + 40) = sub_226D6E91C();
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_226D72B90;
    v37 = *MEMORY[0x277CC79F0];
    v38 = v127;
    v39 = v127 + 104;
    v115 = *(v127 + 13);
    v40 = v120;
    v41 = v122;
    v115(v120, v37, v122);
    v121 = v39;
    v114 = "Unknown classification outcome";
    v42 = swift_allocObject();
    *(v42 + 16) = v128;
    v43 = sub_226D69C9C();
    v44 = v123;
    *(v42 + 56) = MEMORY[0x277D837D0];
    *(v42 + 64) = v44;
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    v46 = sub_226D6E91C();
    v47 = *(v38 + 1);
    v127 = v38 + 8;
    v119 = v47;
    (v47)(v40, v41);
    v48 = v116;
    *(v116 + 32) = v46;
    v49 = v115;
    v115(v40, *MEMORY[0x277CC79E0], v41);
    v50 = swift_allocObject();
    *(v50 + 16) = v128;
    v51 = sub_226D69C9C();
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 64) = v44;
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    v53 = sub_226D6E91C();
    (v119)(v40, v41);
    *(v48 + 40) = v53;
    v49(v40, *MEMORY[0x277CC79E8], v41);
    v54 = swift_allocObject();
    *(v54 + 16) = v128;
    v55 = sub_226D69C9C();
    v56 = v123;
    *(v54 + 56) = MEMORY[0x277D837D0];
    *(v54 + 64) = v56;
    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    v58 = sub_226D6E91C();
    v59 = v119;
    (v119)(v40, v41);
    v60 = v116;
    *(v116 + 48) = v58;
    v115(v40, *MEMORY[0x277CC79F8], v41);
    v61 = swift_allocObject();
    *(v61 + 16) = v128;
    v62 = sub_226D69C9C();
    v63 = v123;
    *(v61 + 56) = MEMORY[0x277D837D0];
    *(v61 + 64) = v63;
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    v65 = sub_226D6E91C();
    (v59)(v40, v41);
    v66 = v113;
    *(v60 + 56) = v65;
    v67 = sub_226D6E5CC();

    v68 = objc_opt_self();
    v69 = [v68 orPredicateWithSubpredicates_];

    *(v109 + 48) = v69;
    v70 = sub_226D6E5CC();

    v71 = [v68 andPredicateWithSubpredicates_];

    [v66 setPredicate_];
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_226D71F20;
    v73 = v111;
    *(v72 + 32) = v111;
    v74 = v73;
    v75 = sub_226D6E5CC();

    [v66 setSortDescriptors_];

    v76 = v132;
    v77 = sub_226D6EBBC();
    v78 = v76;
    if (v76)
    {
      v132 = v76;

      return;
    }

    v79 = v77;
    if (v77 >> 62)
    {
      goto LABEL_52;
    }

    for (i = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v81 = v139;
      v82 = v126;
      v125 = v74;
      v127 = v71;
      if (!i)
      {
        break;
      }

      v74 = 0;
      v131 = v79 & 0xFFFFFFFFFFFFFF8;
      v132 = v79 & 0xC000000000000001;
      v71 = (v138 + 48);
      v83 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v132)
        {
          v84 = MEMORY[0x22AA8AFD0](v74, v79);
        }

        else
        {
          if (v74 >= *(v131 + 16))
          {
            goto LABEL_50;
          }

          v84 = *(v79 + 8 * v74 + 32);
        }

        v85 = v84;
        v86 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        v140 = v84;
        v87 = v78;
        sub_226BDE708(&v140, v82);

        if ((*v71)(v82, 1, v135) == 1)
        {
          sub_226AC47B0(v82, &qword_27D7A7DA8, &unk_226D765A8);
          v81 = v139;
        }

        else
        {
          v88 = v82;
          v89 = v124;
          sub_226BDFD44(v88, v124);
          sub_226BDFD44(v89, v134);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_226BBAE44(0, v83[2] + 1, 1, v83);
          }

          v91 = v83[2];
          v90 = v83[3];
          if (v91 >= v90 >> 1)
          {
            v83 = sub_226BBAE44((v90 > 1), v91 + 1, 1, v83);
          }

          v83[2] = v91 + 1;
          sub_226BDFD44(v134, v83 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v91);
          v81 = v139;
          v78 = v87;
          v82 = v126;
        }

        ++v74;
        if (v86 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      ;
    }

    v83 = MEMORY[0x277D84F90];
LABEL_22:
    v132 = v78;

    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    v92 = *(v78 - 8);
    v93 = *(v92 + 56);
    v71 = v136;
    v131 = v92 + 56;
    *&v128 = v93;
    v93(v136, 1, 4, v78);
    v74 = v130;
    sub_226BDE698(v71, v130);
    v135 = v83[2];
    if (v135)
    {
      v94 = 0;
      v134 = v83 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
      v95 = (v92 + 48);
      v79 = v129;
      while (1)
      {
        if (v94 >= v83[2])
        {
          goto LABEL_51;
        }

        sub_226BDE698(&v134[*(v138 + 72) * v94], v81);
        v98 = *(v137 + 48);
        sub_226BDE698(v74, v79);
        sub_226BDE698(v81, v79 + v98);
        v99 = v81;
        v100 = *v95;
        v101 = (*v95)(v79, 4, v78);
        if (v101 != 1)
        {
          break;
        }

        sub_226BDFDA8(v74);
        v96 = v133;
        sub_226BDFD44(v99, v133);
        v97 = v79 + v98;
LABEL_25:
        sub_226BDFDA8(v97);
        v71 = v136;
LABEL_26:
        ++v94;
        sub_226BDFD44(v96, v74);
        v81 = v139;
        if (v135 == v94)
        {
          goto LABEL_47;
        }
      }

      v102 = v101;
      v103 = v100(v79 + v98, 4, v78);
      sub_226BDFDA8(v99);
      if (v103 <= 1)
      {
        if (!v103)
        {
          v74 = v130;
          sub_226BDFDA8(v130);
          v107 = sub_226D6B49C();
          v79 = v129;
          v96 = v133;
          (*(*(v107 - 8) + 32))(v133, v129 + v98, v107);
          (v128)(v96, 0, 4, v78);
LABEL_41:
          v97 = v79;
          goto LABEL_25;
        }

        v74 = v130;
        v96 = v133;
        sub_226BDFD44(v130, v133);
      }

      else
      {
        if (v103 != 2)
        {
          v71 = v136;
          if (v103 == 3)
          {
            sub_226BDFDA8(v130);
            v79 = v129;
            if (v102 > 2)
            {
              v96 = v133;
              v105 = v133;
              if (v102 == 3)
              {
                v106 = 3;
              }

              else
              {
                v106 = 4;
              }
            }

            else if (v102)
            {
              v96 = v133;
              v105 = v133;
              v106 = 2;
            }

            else
            {
              v104 = sub_226D6B49C();
              v96 = v133;
              (*(*(v104 - 8) + 32))(v133, v79, v104);
              v105 = v96;
              v106 = 0;
            }

            (v128)(v105, v106, 4, v78);
            v74 = v130;
          }

          else
          {
            v74 = v130;
            sub_226BDFDA8(v130);
            v96 = v133;
            (v128)(v133, 4, 4, v78);
            v79 = v129;
            sub_226BDFDA8(v129);
          }

          goto LABEL_26;
        }

        v74 = v130;
        sub_226BDFDA8(v130);
        v96 = v133;
        (v128)(v133, 2, 4, v78);
      }

      v79 = v129;
      goto LABEL_41;
    }

LABEL_47:

    sub_226BDFDA8(v71);
  }
}

uint64_t sub_226BDC9A0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 timestamp];
  if (v3)
  {
    v4 = v3;
    sub_226D6D45C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_226D6D4AC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t static ManagedCloudOrderEvent.predicateForUserEvent(withType:)()
{
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226D70840;
  v1 = sub_226D69C9C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_226B16404();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return sub_226D6E91C();
}

void sub_226BDCB08(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, _BYTE *a5@<X8>)
{
  v136 = a1;
  v139 = a4;
  v129 = a5;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A8, &qword_226D72090);
  MEMORY[0x28223BE20](v126);
  v130 = (&v109 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  MEMORY[0x28223BE20](v8 - 8);
  v125 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v109 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v109 - v14;
  v16 = sub_226D6D4AC();
  v131 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v109 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v109 - v26;
  v138 = sub_226D69CAC();
  v134 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v132 = a2;
  v133 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v136;
  v30 = v137;
  v136 = a3;
  sub_226BDF504(v29, a2, a3, v139);
  if (!v30)
  {
    v114 = v24;
    v112 = v21;
    v117 = v27;
    v111 = v12;
    v115 = v15;
    v113 = v18;
    v116 = v16;
    v127 = 0;
    v32 = v31;
    v124 = sub_226D69CBC();
    v123 = sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
    swift_getKeyPath();
    v122 = sub_226D6E9FC();
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_226D71F30;
    v34 = v33;
    v35 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v37 = swift_allocObject();
    v137 = xmmword_226D70840;
    *(v37 + 16) = xmmword_226D70840;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
    *(v37 + 64) = sub_226BAE1D0();
    *(v37 + 32) = v32;
    v128 = v35;
    *(v34 + 32) = sub_226D6E91C();
    v120 = v34;
    v118 = v36;
    v38 = swift_allocObject();
    *(v38 + 16) = v137;
    *(v38 + 56) = MEMORY[0x277D837D0];
    v119 = sub_226B16404();
    *(v38 + 64) = v119;
    v39 = v136;
    *(v38 + 32) = v132;
    *(v38 + 40) = v39;

    *(v34 + 40) = sub_226D6E91C();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_226D71F40;
    v41 = v133;
    v42 = v134;
    v43 = v134 + 104;
    v44 = *(v134 + 104);
    v110 = *MEMORY[0x277CC79D8];
    v44(v133);
    v136 = "Unknown classification outcome";
    v45 = swift_allocObject();
    *(v45 + 16) = v137;
    v46 = sub_226D69C9C();
    v47 = v119;
    *(v45 + 56) = MEMORY[0x277D837D0];
    *(v45 + 64) = v47;
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    v49 = sub_226D6E91C();
    v52 = *(v42 + 8);
    v50 = v42 + 8;
    v51 = v52;
    v53 = v138;
    v52(v41, v138);
    *(v40 + 32) = v49;
    v54 = *MEMORY[0x277CC79D0];
    v132 = v43;
    v109 = v44;
    (v44)(v41, v54, v53);
    v55 = swift_allocObject();
    *(v55 + 16) = v137;
    v56 = sub_226D69C9C();
    *(v55 + 56) = MEMORY[0x277D837D0];
    *(v55 + 64) = v47;
    *(v55 + 32) = v56;
    *(v55 + 40) = v57;
    v58 = sub_226D6E91C();
    v52(v41, v138);
    *(v40 + 40) = v58;
    v59 = sub_226D6E5CC();

    v60 = objc_opt_self();
    v61 = [v60 orPredicateWithSubpredicates_];

    *(v120 + 48) = v61;
    v62 = v124;
    v63 = sub_226D6E5CC();

    v64 = [v60 andPredicateWithSubpredicates_];

    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_226D71F20;
    v66 = v122;
    *(v65 + 32) = v122;
    v67 = v66;
    v68 = sub_226D6E5CC();

    [v62 setSortDescriptors_];

    [v62 setPredicate_];
    [v62 setFetchLimit_];
    v69 = v127;
    v70 = sub_226D6EBBC();
    if (v69)
    {

      return;
    }

    v135 = v50;
    v136 = v67;
    v139 = v51;
    *&v137 = v64;
    if (v70 >> 62)
    {
      v108 = v70;
      v71 = sub_226D6EDFC();
      v70 = v108;
    }

    else
    {
      v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v72 = v116;
    v73 = v130;
    v74 = v131;
    v75 = v115;
    v76 = v117;
    v127 = 0;
    if (v71)
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x22AA8AFD0](0);
      }

      else
      {
        if (!*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v77 = *(v70 + 32);
      }

      v78 = v77;
      v79 = v114;

      if (v78)
      {
        v80 = [v78 timestamp];
        if (v80)
        {
          v81 = v80;
          sub_226D6D45C();

          v82 = 0;
        }

        else
        {
          v82 = 1;
        }

        (*(v74 + 56))(v79, v82, 1, v72);
        v83 = v79;
        v84 = v117;
        sub_226AFD80C(v83, v117, &qword_27D7A8BE0, &unk_226D718F0);
        v85 = v112;
        sub_226AC40E8(v84, v112, &qword_27D7A8BE0, &unk_226D718F0);
        if ((*(v74 + 48))(v85, 1, v72) == 1)
        {
          sub_226AC47B0(v84, &qword_27D7A8BE0, &unk_226D718F0);

          sub_226AC47B0(v85, &qword_27D7A8BE0, &unk_226D718F0);
          goto LABEL_18;
        }

        v130 = *(v74 + 32);
        v131 = v74 + 32;
        v130(v113, v85, v72);
        sub_226D69CFC();
        v87 = v111;
        v88 = v138;
        (v109)(v111, v110, v138);
        v89 = v134;
        (*(v134 + 56))(v87, 0, 1, v88);
        v90 = *(v126 + 48);
        sub_226AC40E8(v75, v73, &qword_27D7A68B0, qword_226D72098);
        v132 = v90;
        v91 = v89;
        sub_226AC40E8(v87, v73 + v90, &qword_27D7A68B0, qword_226D72098);
        v92 = *(v89 + 48);
        if (v92(v73, 1, v88) == 1)
        {

          sub_226AC47B0(v87, &qword_27D7A68B0, qword_226D72098);
          sub_226AC47B0(v75, &qword_27D7A68B0, qword_226D72098);
          sub_226AC47B0(v117, &qword_27D7A8BE0, &unk_226D718F0);
          v93 = v92(v73 + v132, 1, v88);
          v94 = v116;
          v95 = v73;
          if (v93 == 1)
          {
            sub_226AC47B0(v73, &qword_27D7A68B0, qword_226D72098);
            v96 = 1;
LABEL_26:
            v99 = v113;
            v100 = v129;
LABEL_28:
            v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A00, &qword_226D72538);
            v107 = *(v106 + 48);
            *v100 = v96 & 1;
            v130(&v100[v107], v99, v94);
            (*(*(v106 - 8) + 56))(v100, 0, 1, v106);
            return;
          }
        }

        else
        {
          v97 = v125;
          sub_226AC40E8(v73, v125, &qword_27D7A68B0, qword_226D72098);
          v98 = v132;
          v95 = v73;
          if (v92(v73 + v132, 1, v88) != 1)
          {
            v101 = v73 + v98;
            v102 = v133;
            (*(v91 + 32))(v133, v101, v88);
            sub_226BDF4BC(&qword_27D7A68B8, MEMORY[0x277CC7A48], MEMORY[0x277CC7A50]);
            v103 = v97;
            v96 = sub_226D6E35C();

            v104 = v102;
            v105 = v139;
            v139(v104, v88);
            sub_226AC47B0(v111, &qword_27D7A68B0, qword_226D72098);
            sub_226AC47B0(v115, &qword_27D7A68B0, qword_226D72098);
            sub_226AC47B0(v117, &qword_27D7A8BE0, &unk_226D718F0);
            v105(v103, v88);
            v100 = v129;
            sub_226AC47B0(v95, &qword_27D7A68B0, qword_226D72098);
            v94 = v116;
            v99 = v113;
            goto LABEL_28;
          }

          sub_226AC47B0(v111, &qword_27D7A68B0, qword_226D72098);
          sub_226AC47B0(v115, &qword_27D7A68B0, qword_226D72098);
          sub_226AC47B0(v117, &qword_27D7A8BE0, &unk_226D718F0);
          v139(v97, v88);
          v94 = v116;
        }

        sub_226AC47B0(v95, &qword_27D7A68A8, &qword_226D72090);
        v96 = 0;
        goto LABEL_26;
      }
    }

    else
    {
    }

    (*(v74 + 56))(v76, 1, 1, v72);
    sub_226AC47B0(v76, &qword_27D7A8BE0, &unk_226D718F0);

LABEL_18:
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A00, &qword_226D72538);
    (*(*(v86 - 8) + 56))(v129, 1, 1, v86);
  }
}

unint64_t sub_226BDD96C(uint64_t a1, void *a2)
{
  v90 = a2;
  v79 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v2 - 8);
  v75 = &v74 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A8, &qword_226D72090);
  MEMORY[0x28223BE20](v80);
  v78 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v74 - v8;
  MEMORY[0x28223BE20](v9);
  v82 = &v74 - v10;
  v95 = sub_226D69CAC();
  v94 = *(v95 - 8);
  v11 = v94;
  MEMORY[0x28223BE20](v95);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_226D69CBC();
  v88 = sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  swift_getKeyPath();
  v87 = sub_226D6E9FC();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_226D71F40;
  v15 = *MEMORY[0x277CC7A38];
  v92 = *(v11 + 104);
  v76 = v15;
  v92(v13);
  v83 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v16 = swift_allocObject();
  v84 = xmmword_226D70840;
  *(v16 + 16) = xmmword_226D70840;
  v17 = sub_226D69C9C();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v20 = sub_226B16404();
  *(v16 + 64) = v20;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v21 = sub_226D6E91C();
  v22 = *(v94 + 8);
  v23 = v95;
  v22(v13, v95);
  *(v14 + 32) = v21;
  v24 = *MEMORY[0x277CC7A40];
  v77 = v11 + 104;
  (v92)(v13, v24, v23);
  v25 = v93;
  v26 = swift_allocObject();
  *(v26 + 16) = v84;
  v27 = sub_226D69C9C();
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = v20;
  v28 = v13;
  v29 = v22;
  *(v26 + 32) = v27;
  *(v26 + 40) = v30;
  v31 = v28;
  v32 = sub_226D6E91C();
  v22(v31, v95);
  *(v14 + 40) = v32;
  v33 = sub_226D6E5CC();

  v34 = [objc_opt_self() orPredicateWithSubpredicates_];

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_226D71F20;
  v36 = v87;
  *(v35 + 32) = v87;
  v37 = v36;
  v38 = sub_226D6E5CC();

  [v25 setSortDescriptors_];

  [v25 setPredicate_];
  [v25 setFetchLimit_];
  v39 = v90;
  v40 = v91;
  result = sub_226D6EBBC();
  if (v40)
  {

    return v39 & 1;
  }

  v86 = v31;
  v87 = v29;
  v90 = v37;
  v91 = v34;
  v42 = v80;
  v43 = v95;
  if (result >> 62)
  {
    v73 = result;
    v44 = sub_226D6EDFC();
    result = v73;
  }

  else
  {
    v44 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v81;
  v46 = v42;
  if (!v44)
  {

    goto LABEL_12;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v47 = MEMORY[0x22AA8AFD0](0);
LABEL_9:
    v48 = v47;

    if (v48)
    {
      v49 = v48;
      v50 = v82;
      sub_226D69CFC();
      v89 = v49;

      LODWORD(v88) = 0;
      v51 = v94;
      goto LABEL_13;
    }

LABEL_12:
    v51 = v94;
    v52 = *(v94 + 56);
    LODWORD(v88) = 1;
    v50 = v82;
    v52(v82, 1, 1, v43);
    v89 = 0;
LABEL_13:
    (v92)(v45, v76, v43);
    (*(v51 + 56))(v45, 0, 1, v43);
    v53 = *(v46 + 48);
    v54 = v50;
    v55 = v78;
    sub_226AC40E8(v54, v78, &qword_27D7A68B0, qword_226D72098);
    sub_226AC40E8(v45, v55 + v53, &qword_27D7A68B0, qword_226D72098);
    v56 = *(v51 + 48);
    if (v56(v55, 1, v43) == 1)
    {
      sub_226AC47B0(v45, &qword_27D7A68B0, qword_226D72098);
      v57 = v56(v55 + v53, 1, v43);
      v58 = v79;
      v59 = v88;
      if (v57 == 1)
      {
        sub_226AC47B0(v55, &qword_27D7A68B0, qword_226D72098);
        v39 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v60 = v74;
      sub_226AC40E8(v55, v74, &qword_27D7A68B0, qword_226D72098);
      if (v56(v55 + v53, 1, v43) != 1)
      {
        v66 = v86;
        (*(v94 + 32))(v86, v55 + v53, v43);
        sub_226BDF4BC(&qword_27D7A68B8, MEMORY[0x277CC7A48], MEMORY[0x277CC7A50]);
        v39 = sub_226D6E35C();
        v67 = v87;
        v87(v66, v43);
        sub_226AC47B0(v81, &qword_27D7A68B0, qword_226D72098);
        v67(v60, v43);
        v64 = v82;
        sub_226AC47B0(v55, &qword_27D7A68B0, qword_226D72098);
        v58 = v79;
        v62 = v90;
        v61 = v91;
        v63 = v89;
        if (v88)
        {
          goto LABEL_20;
        }

        goto LABEL_22;
      }

      sub_226AC47B0(v81, &qword_27D7A68B0, qword_226D72098);
      v87(v60, v43);
      v58 = v79;
      v59 = v88;
    }

    sub_226AC47B0(v55, &qword_27D7A68A8, &qword_226D72090);
    v39 = 0;
LABEL_19:
    v62 = v90;
    v61 = v91;
    v63 = v89;
    v64 = v82;
    if (v59)
    {
LABEL_20:
      sub_226AC47B0(v64, &qword_27D7A68B0, qword_226D72098);

      v65 = sub_226D6D4AC();
      (*(*(v65 - 8) + 56))(v58, 1, 1, v65);
      return v39 & 1;
    }

LABEL_22:
    v68 = [v63 timestamp];
    if (v68)
    {
      v69 = v75;
      v70 = v68;
      sub_226D6D45C();

      sub_226AC47B0(v64, &qword_27D7A68B0, qword_226D72098);
      v71 = 0;
    }

    else
    {
      sub_226AC47B0(v64, &qword_27D7A68B0, qword_226D72098);

      v71 = 1;
      v69 = v75;
    }

    v72 = sub_226D6D4AC();
    (*(*(v72 - 8) + 56))(v69, v71, 1, v72);
    sub_226AFD80C(v69, v58, &qword_27D7A8BE0, &unk_226D718F0);
    return v39 & 1;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v47 = *(result + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t ManagedCloudOrderEvent.TrackingStatus.description.getter()
{
  v1 = v0;
  v2 = sub_226D6B49C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226BDE698(v1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
  v10 = (*(*(v9 - 8) + 48))(v8, 4, v9);
  if (v10 <= 1)
  {
    if (v10)
    {
      return 0xD000000000000018;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v14 = 0;
      v15 = 0xE000000000000000;
      sub_226D6EEFC();

      v14 = 0xD000000000000023;
      v15 = 0x8000000226D82A80;
      sub_226BDF4BC(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
      v12 = sub_226D6F1CC();
      MEMORY[0x22AA8A510](v12);

      MEMORY[0x22AA8A510](41, 0xE100000000000000);
      v13 = v14;
      (*(v3 + 8))(v5, v2);
      return v13;
    }
  }

  else if (v10 == 2)
  {
    return 0xD000000000000015;
  }

  else if (v10 == 3)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(uint64_t a1)
{
  result = qword_27D7A7D88;
  if (!qword_27D7A7D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BDE698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BDE708@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_226D6B49C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v47 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DA8, &unk_226D765A8);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6638, &unk_226D71860);
  MEMORY[0x28223BE20](v13 - 8);
  v48 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v53 = &v47 - v17;
  v18 = *a1;
  v19 = [v18 classicOrderTypeIdentifier];
  if (v19)
  {
    v20 = v19;
    sub_226D6E39C();
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v18 classicOrderIdentifier];
  if (v23)
  {
    v24 = v23;
    v25 = v3;
    v50 = v12;
    sub_226D6E39C();
    v27 = v26;

    if (v22)
    {
      v28 = v53;
      if (v27)
      {
        sub_226D6B45C();
        v3 = v25;
        (*(v4 + 56))(v28, 0, 1, v25);
        v29 = v52;
        v12 = v50;
        goto LABEL_16;
      }

      v29 = v52;
      v12 = v50;
      v3 = v25;
      goto LABEL_12;
    }

    v29 = v52;
    v12 = v50;
    v28 = v53;
LABEL_14:

    v3 = v25;
    goto LABEL_15;
  }

  if (!v22)
  {
    v25 = v3;
    v28 = v53;
    v29 = v52;
    goto LABEL_14;
  }

  v28 = v53;
  v29 = v52;
LABEL_12:

LABEL_15:
  (*(v4 + 56))(v28, 1, 1, v3);
LABEL_16:
  sub_226D69CFC();
  v30 = sub_226D69CAC();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v12, 1, v30) == 1)
  {
    sub_226AC47B0(v28, &qword_27D7A6638, &unk_226D71860);
LABEL_18:
    v32 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
    (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
    return sub_226AC47B0(v12, &qword_27D7A68B0, qword_226D72098);
  }

  v33 = v51;
  sub_226AC40E8(v12, v51, &qword_27D7A68B0, qword_226D72098);
  v34 = (*(v31 + 88))(v33, v30);
  if (v34 == *MEMORY[0x277CC79F0])
  {
    sub_226AC47B0(v28, &qword_27D7A6638, &unk_226D71860);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    (*(*(v35 - 8) + 56))(v29, 2, 4, v35);
LABEL_25:
    v38 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
    (*(*(v38 - 8) + 56))(v29, 0, 1, v38);
    return sub_226AC47B0(v12, &qword_27D7A68B0, qword_226D72098);
  }

  if (v34 == *MEMORY[0x277CC79E0])
  {
    sub_226AC47B0(v28, &qword_27D7A6638, &unk_226D71860);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    (*(*(v36 - 8) + 56))(v29, 3, 4, v36);
    goto LABEL_25;
  }

  if (v34 == *MEMORY[0x277CC79E8])
  {
    sub_226AC47B0(v28, &qword_27D7A6638, &unk_226D71860);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    (*(*(v37 - 8) + 56))(v29, 4, 4, v37);
    goto LABEL_25;
  }

  if (v34 != *MEMORY[0x277CC79F8])
  {
    sub_226AC47B0(v28, &qword_27D7A6638, &unk_226D71860);
    (*(v31 + 8))(v51, v30);
    goto LABEL_18;
  }

  v40 = v48;
  sub_226AFD80C(v28, v48, &qword_27D7A6638, &unk_226D71860);
  if ((*(v4 + 48))(v40, 1, v3) == 1)
  {
    sub_226AC47B0(v40, &qword_27D7A6638, &unk_226D71860);
    v41 = 1;
    v42 = v49;
  }

  else
  {
    v43 = *(v4 + 32);
    v44 = v47;
    v43(v47, v40, v3);
    v42 = v49;
    v43(v49, v44, v3);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    (*(*(v45 - 8) + 56))(v42, 0, 4, v45);
    v41 = 0;
  }

  v46 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
  (*(*(v46 - 8) + 56))(v42, v41, 1, v46);
  sub_226AFD80C(v42, v29, &qword_27D7A7DA8, &unk_226D765A8);
  return sub_226AC47B0(v12, &qword_27D7A68B0, qword_226D72098);
}

void sub_226BDEEA4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sender];
  if (v3)
  {
    v4 = v3;
    v5 = sub_226D6E39C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_226BDEF0C(unint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    sub_226C2CBBC();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  sub_226D5303C(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

unint64_t sub_226BDEFE0@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v9 = *v4, 1 << *(*v4 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    sub_226C2CD40();
    v9 = v14;
  }

  v10 = *(v9 + 48) + 56 * a1;
  v11 = *(v10 + 48);
  v12 = *(v10 + 16);
  *a3 = *v10;
  *(a3 + 16) = v12;
  *(a3 + 32) = *(v10 + 32);
  *(a3 + 48) = v11;
  result = sub_226D53200(a1);
  *v4 = v14;
  return result;
}

uint64_t _s10FinanceKit22ManagedCloudOrderEventC0A6DaemonE14TrackingStatusO2eeoiySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6B49C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DA0, &qword_226D765A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  sub_226BDE698(a1, &v22 - v12);
  sub_226BDE698(a2, &v13[v15]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v13, 4, v16);
  if (v18 <= 1)
  {
    if (!v18)
    {
      sub_226BDE698(v13, v10);
      if (!v17(&v13[v15], 4, v16))
      {
        (*(v5 + 32))(v7, &v13[v15], v4);
        v19 = MEMORY[0x22AA87530](v10, v7);
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_226BDFDA8(v13);
        return v19 & 1;
      }

      (*(v5 + 8))(v10, v4);
      goto LABEL_12;
    }

    if (v17(&v13[v15], 4, v16) == 1)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_226AC47B0(v13, &qword_27D7A7DA0, &qword_226D765A0);
    v19 = 0;
    return v19 & 1;
  }

  if (v18 == 2)
  {
    if (v17(&v13[v15], 4, v16) == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v18 != 3)
  {
    if (v17(&v13[v15], 4, v16) == 4)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v17(&v13[v15], 4, v16) != 3)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_226BDFDA8(v13);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_226BDF41C(uint64_t a1)
{
  sub_226BDF474();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_226BDF474()
{
  if (!qword_27D7A7D98)
  {
    v0 = sub_226D6B49C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A7D98);
    }
  }
}

uint64_t sub_226BDF4BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226BDF504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v78 = a4;
  v77 = a3;
  v76 = a2;
  v75 = sub_226D69CAC();
  v7 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x277D84FA0];
  v89 = a1;
  v9 = *(a1 + 16);

  if (!v9)
  {
LABEL_39:

    return;
  }

  v79 = v5;
  v73 = (v7 + 104);
  v72 = *MEMORY[0x277CC79C8];
  v71 = "Unknown classification outcome";
  v70 = (v7 + 8);
  v69 = "emailMessageID in %@";
  v68 = "sanitizedOrderNumber == %@";
  v67 = "emailMessageID == %@";
  v66 = xmmword_226D71F30;
  v81 = xmmword_226D70840;
  v65 = xmmword_226D71F40;
  while (1)
  {
    v10 = sub_226D6ED6C();
    v11 = sub_226BDEF0C(v10, *(a1 + 36));
    v84 = v11;
    v13 = v12;
    v87 = v12;

    sub_226C24D14(&v88, v11, v13);

    v86 = sub_226D69D0C();
    v80 = sub_226D69CBC();
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v14 = swift_allocObject();
    *(v14 + 16) = v66;
    v15 = v74;
    v16 = v75;
    (*v73)(v74, v72, v75);
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v17 = swift_allocObject();
    *(v17 + 16) = v81;
    v18 = sub_226D69C9C();
    v20 = v19;
    *(v17 + 56) = MEMORY[0x277D837D0];
    v21 = sub_226B16404();
    *(v17 + 64) = v21;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v22 = sub_226D6E91C();
    (*v70)(v15, v16);
    *(v14 + 32) = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = v81;
    v24 = MEMORY[0x277D837D0];
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = v21;
    *(v23 + 32) = v76;
    *(v23 + 40) = v77;

    *(v14 + 40) = sub_226D6E91C();
    v25 = swift_allocObject();
    *(v25 + 16) = v65;
    v26 = swift_allocObject();
    *(v26 + 16) = v81;
    *(v26 + 56) = v24;
    *(v26 + 64) = v21;
    v27 = v84;
    *(v26 + 32) = v84;
    v28 = v87;
    *(v26 + 40) = v87;
    v29 = v28;

    *(v25 + 32) = sub_226D6E91C();
    v30 = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = v81;
    *(v31 + 56) = v24;
    *(v31 + 64) = v21;
    *(v31 + 32) = v27;
    *(v31 + 40) = v29;

    *(v25 + 40) = sub_226D6E91C();
    v32 = sub_226D6E5CC();

    v33 = objc_opt_self();
    v34 = [v33 orPredicateWithSubpredicates_];

    *(v14 + 48) = v34;
    v35 = sub_226D6E5CC();

    v36 = [v33 andPredicateWithSubpredicates_];

    v37 = v80;
    [v80 setPredicate_];

    sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
    v38 = sub_226D6E5CC();
    [v37 setSortDescriptors_];

    v39 = v79;
    v40 = sub_226D6EBBC();
    if (v39)
    {

      return;
    }

    v79 = 0;
    v85 = v40;
    if (v40 >> 62)
    {
      break;
    }

    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_7;
    }

LABEL_3:

    a1 = v89;
    if (!*(v89 + 16))
    {
      goto LABEL_39;
    }
  }

  v41 = sub_226D6EDFC();
  if (!v41)
  {
    goto LABEL_3;
  }

LABEL_7:
  v42 = 0;
  v86 = v85 & 0xC000000000000001;
  v82 = v85 + 32;
  v83 = v85 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v86)
    {
      v43 = MEMORY[0x22AA8AFD0](v42, v85);
    }

    else
    {
      if (v42 >= *(v83 + 16))
      {
        goto LABEL_41;
      }

      v43 = *(v82 + 8 * v42);
    }

    v44 = v43;
    if (__OFADD__(v42++, 1))
    {
      break;
    }

    v46 = [v43 emailMessageID];
    if (v46)
    {
      v47 = v46;
      v48 = sub_226D6E39C();
      v50 = v49;

      if (v48 == v84 && v50 == v30)
      {

LABEL_24:
        v53 = [v44 otherEmailMessageID];
        if (!v53)
        {
          goto LABEL_43;
        }

        goto LABEL_25;
      }

      v52 = sub_226D6F21C();

      if (v52)
      {
        goto LABEL_24;
      }
    }

    v53 = [v44 emailMessageID];
    if (!v53)
    {
      goto LABEL_42;
    }

LABEL_25:
    v54 = v53;
    v55 = sub_226D6E39C();
    v57 = v56;

    v58 = v90;
    if (*(v90 + 16) && (sub_226D6F2FC(), sub_226D6E42C(), v59 = sub_226D6F35C(), v60 = -1 << *(v58 + 32), v61 = v59 & ~v60, ((*(v58 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) != 0))
    {
      v62 = ~v60;
      while (1)
      {
        v63 = (*(v58 + 48) + 16 * v61);
        v64 = *v63 == v55 && v63[1] == v57;
        if (v64 || (sub_226D6F21C() & 1) != 0)
        {
          break;
        }

        v61 = (v61 + 1) & v62;
        if (((*(v58 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      sub_226C24D14(&v88, v55, v57);
    }

    v30 = v87;
    if (v42 == v41)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_226BDFD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BDFDA8(uint64_t a1)
{
  v2 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_226BDFE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v81 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A8, &qword_226D72090);
  MEMORY[0x28223BE20](v75);
  v74 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v71 - v8;
  MEMORY[0x28223BE20](v9);
  v77 = &v71 - v10;
  v80 = sub_226D69CAC();
  v11 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_226D69D0C();
  v89 = sub_226D69CBC();
  v85 = sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  swift_getKeyPath();
  v84 = sub_226D6E9FC();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v14 = swift_allocObject();
  v79 = xmmword_226D71F40;
  *(v14 + 16) = xmmword_226D71F40;
  v15 = v14;
  v82 = v14;
  v90 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v16 = swift_allocObject();
  v91 = xmmword_226D70840;
  *(v16 + 16) = xmmword_226D70840;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v92 = sub_226B16404();
  *(v16 + 64) = v92;
  *(v16 + 32) = v81;
  *(v16 + 40) = a2;

  *(v15 + 32) = sub_226D6E91C();
  v17 = swift_allocObject();
  *(v17 + 16) = v79;
  v18 = v11 + 104;
  v19 = *(v11 + 104);
  v20 = v13;
  v21 = v13;
  v73 = *MEMORY[0x277CC7A00];
  v22 = v80;
  v19(v21);
  v23 = swift_allocObject();
  *(v23 + 16) = v91;
  v24 = v20;
  v25 = sub_226D69C9C();
  v26 = v92;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = v26;
  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  v28 = sub_226D6E91C();
  v81 = v11;
  v29 = v11 + 8;
  v30 = *(v11 + 8);
  v30(v24, v22);
  *(v17 + 32) = v28;
  v31 = *MEMORY[0x277CC7A08];
  *&v79 = v18;
  v72 = v19;
  (v19)(v24, v31, v22);
  v32 = v29;
  v33 = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = v91;
  v35 = sub_226D69C9C();
  v36 = v92;
  *(v34 + 56) = MEMORY[0x277D837D0];
  *(v34 + 64) = v36;
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  v38 = v89;
  v39 = sub_226D6E91C();
  v40 = v22;
  v41 = v30;
  v42 = v32;
  v43 = v40;
  v41(v33);
  *(v17 + 40) = v39;
  v44 = sub_226D6E5CC();

  v45 = objc_opt_self();
  v46 = [v45 orPredicateWithSubpredicates_];

  *(v82 + 40) = v46;
  v47 = sub_226D6E5CC();

  v48 = [v45 andPredicateWithSubpredicates_];

  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_226D71F20;
  v50 = v84;
  *(v49 + 32) = v84;
  v51 = v50;
  v52 = sub_226D6E5CC();

  [v38 setSortDescriptors_];

  [v38 setPredicate_];
  [v38 setFetchLimit_];
  v53 = v88;
  v54 = sub_226D6EBBC();
  if (v53)
  {

    return;
  }

  v92 = 0;
  v90 = v42;
  *&v91 = v51;
  v88 = v41;
  v85 = v33;
  if (v54 >> 62)
  {
    v70 = v54;
    v55 = sub_226D6EDFC();
    v54 = v70;
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v76;
  v57 = v77;
  v58 = v81;
  if (!v55)
  {

    return;
  }

  if ((v54 & 0xC000000000000001) != 0)
  {
    v59 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v59 = *(v54 + 32);
  }

  v86 = v59;

  sub_226D69CFC();
  (v72)(v56, v73, v43);
  (*(v58 + 56))(v56, 0, 1, v43);
  v60 = *(v75 + 48);
  v61 = v74;
  sub_226AC40E8(v57, v74, &qword_27D7A68B0, qword_226D72098);
  v87 = v60;
  v62 = v43;
  v63 = v61;
  sub_226AC40E8(v56, v61 + v60, &qword_27D7A68B0, qword_226D72098);
  v64 = *(v58 + 48);
  if (v64(v61, 1, v62) == 1)
  {

    sub_226AC47B0(v56, &qword_27D7A68B0, qword_226D72098);
    sub_226AC47B0(v57, &qword_27D7A68B0, qword_226D72098);
    if (v64(v61 + v87, 1, v62) == 1)
    {
      sub_226AC47B0(v61, &qword_27D7A68B0, qword_226D72098);
      return;
    }

    goto LABEL_15;
  }

  v65 = v86;
  v66 = v71;
  sub_226AC40E8(v61, v71, &qword_27D7A68B0, qword_226D72098);
  v67 = v87;
  if (v64(v63 + v87, 1, v62) == 1)
  {

    sub_226AC47B0(v76, &qword_27D7A68B0, qword_226D72098);
    sub_226AC47B0(v77, &qword_27D7A68B0, qword_226D72098);
    (v88)(v66, v62);
LABEL_15:
    sub_226AC47B0(v63, &qword_27D7A68A8, &qword_226D72090);
    return;
  }

  v68 = v85;
  (*(v81 + 32))(v85, v63 + v67, v62);
  sub_226BDF4BC(&qword_27D7A68B8, MEMORY[0x277CC7A48], MEMORY[0x277CC7A50]);
  sub_226D6E35C();

  v69 = v88;
  (v88)(v68, v62);
  sub_226AC47B0(v76, &qword_27D7A68B0, qword_226D72098);
  sub_226AC47B0(v77, &qword_27D7A68B0, qword_226D72098);
  v69(v66, v62);
  sub_226AC47B0(v63, &qword_27D7A68B0, qword_226D72098);
}

void sub_226BE07D4(uint64_t a1)
{
  v52 = a1;
  v1 = sub_226D69CAC();
  v2 = *(v1 - 8);
  v47 = v1;
  v48 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69D0C();
  v50 = sub_226D69CDC();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D71F40;
  v6 = *MEMORY[0x277CC7A00];
  v49 = *(v2 + 104);
  v49(v4, v6, v1);
  v46[0] = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v46[1] = "Unknown classification outcome";
  v46[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v7 = swift_allocObject();
  v54 = xmmword_226D70840;
  *(v7 + 16) = xmmword_226D70840;
  v8 = sub_226D69C9C();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  v11 = sub_226B16404();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v12 = sub_226D6E91C();
  v13 = v47;
  v14 = *(v48 + 8);
  v14(v4, v47);
  *(v5 + 32) = v12;
  v49(v4, *MEMORY[0x277CC7A08], v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v54;
  v16 = sub_226D69C9C();
  v17 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = v11;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v19 = sub_226D6E91C();
  v14(v4, v13);
  v20 = v50;
  v21 = 0x7265646E6573;
  *(v5 + 40) = v19;
  v22 = sub_226D6E5CC();

  v23 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v20 setPredicate_];
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_226D71F20;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  swift_getKeyPath();
  *(v24 + 32) = sub_226D6E9FC();
  v25 = sub_226D6E5CC();

  [v20 setSortDescriptors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v26 = swift_allocObject();
  *(v26 + 16) = v54;
  *(v26 + 56) = v17;
  *(v26 + 32) = 0x7265646E6573;
  *(v26 + 40) = 0xE600000000000000;
  v27 = MEMORY[0x277D84F70];
  v28 = sub_226D6E5CC();

  [v20 setPropertiesToFetch_];

  [v20 setReturnsDistinctResults_];
  sub_226AE59B4(0, &qword_27D7A7178, 0x277CBEAC0);
  v29 = v53;
  v30 = sub_226D6EBBC();
  v31 = v29;
  if (v29)
  {
  }

  else
  {
    v32 = v30;
    if (v30 >> 62)
    {
      goto LABEL_19;
    }

    v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      while (1)
      {
        v49 = v31;
        v59 = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v33 & ~(v33 >> 63), 0);
        if (v33 < 0)
        {
          break;
        }

        v34 = 0;
        v35 = v59;
        v36 = v32;
        v53 = v32;
        *&v54 = v32 & 0xC000000000000001;
        v51 = v32 & 0xFFFFFFFFFFFFFF8;
        v52 = v33;
        while (1)
        {
          v37 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v54)
          {
            v38 = MEMORY[0x22AA8AFD0](v34, v36);
          }

          else
          {
            if (v34 >= *(v51 + 16))
            {
              goto LABEL_18;
            }

            v38 = *(v36 + 8 * v34 + 32);
          }

          v39 = v38;
          v32 = v21;
          v40 = sub_226D6E36C();
          v41 = [v39 valueForKeyPath_];

          if (!v41)
          {
            goto LABEL_22;
          }

          sub_226D6ED0C();
          swift_unknownObjectRelease();

          sub_226B24A98(&v55, &v56);
          v20 = v27;
          swift_dynamicCast();
          v31 = v57;
          v42 = v58;
          v59 = v35;
          v44 = *(v35 + 16);
          v43 = *(v35 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_226AE1D68((v43 > 1), v44 + 1, 1);
            v35 = v59;
          }

          *(v35 + 16) = v44 + 1;
          v45 = v35 + 16 * v44;
          *(v45 + 32) = v31;
          *(v45 + 40) = v42;
          ++v34;
          v36 = v53;
          v21 = v32;
          v27 = v20;
          if (v37 == v52)
          {

            return;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v33 = sub_226D6EDFC();
        if (!v33)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
LABEL_20:
    }
  }
}

uint64_t sub_226BE0E00(void *a1, uint64_t a2)
{
  type metadata accessor for PostInstallSystemTask();
  *(swift_initStackObject() + 16) = a2;

  sub_226D66E6C();
  [a1 setTaskCompleted];
  swift_setDeallocating();
}

void sub_226BE0EAC()
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F5E0);
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226AB4000, v1, v2, "Starting post install tasks", v3, 2u);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
  }

  v4 = sub_226CFBD40();
  if (*(v4 + 16))
  {
    v5 = v4;
    v6 = sub_226D6E05C();
    v7 = sub_226D6E9DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
      v11 = MEMORY[0x22AA8A6A0](v5, v10);
      v13 = v12;

      v14 = sub_226AC4530(v11, v13, &v15);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_226AB4000, v6, v7, "Error running post install tasks: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x22AA8BEE0](v9, -1, -1);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_226BE10EC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedScheduler];
  v3 = sub_226D6E36C();
  v9[4] = sub_226BE12C8;
  v9[5] = a1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_226C01160;
  v9[3] = &block_descriptor_11;
  v4 = _Block_copy(v9);

  LOBYTE(a1) = [v2 registerForTaskWithIdentifier:v3 usingQueue:0 launchHandler:v4];
  _Block_release(v4);

  if ((a1 & 1) == 0)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v5 = sub_226D6E07C();
    __swift_project_value_buffer(v5, qword_28105F5E0);
    v6 = sub_226D6E05C();
    v7 = sub_226D6E9DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226AB4000, v6, v7, "Unable to register post install tasks", v8, 2u);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t BankConnectServiceImplementation.offlineLabPermission()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_226BE1324, 0, 0);
}

uint64_t sub_226BE1324()
{
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F668);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Obtaining local offline lab consent status.", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(v0 + 104);

  v6 = __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_226AC40E8((v6 + 88), v0 + 56, &qword_27D7A7048, &qword_226D74690);
  if (*(v0 + 80))
  {
    v7 = *(v0 + 96);
    sub_226AC484C((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_226BE2CD0(v7);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v8 = *(v0 + 8);
  }

  else
  {
    sub_226AC47B0(v0 + 56, &qword_27D7A7048, &qword_226D74690);
    v9 = sub_226D6A0DC();
    sub_226BE38A0(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
    v10 = swift_allocError();
    *v11 = 0xD000000000000030;
    v11[1] = 0x8000000226D82C10;
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277CC7AC0], v9);
    swift_willThrow();
    v12 = v10;
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9DC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v10;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_226AB4000, v13, v14, "Unable to retrieve offline lab consent locally. Error: %@", v15, 0xCu);
      sub_226AC47B0(v16, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    v19 = sub_226D6A0DC();
    sub_226BE38A0(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
    swift_allocError();
    *v20 = v10;
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277CC7AB0], v19);
    swift_willThrow();
    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t BankConnectServiceImplementation.offlineLabSharingPreference()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_226D692FC();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BE17DC, 0, 0);
}

uint64_t sub_226BE17DC()
{
  v1 = *(v0 + 104);
  v2 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_226AC40E8((v2 + 88), v0 + 56, &qword_27D7A7048, &qword_226D74690);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 136);
    sub_226AC484C((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_226BE2CD0(v3);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_226D6BAAC();
    v7 = sub_226D676AC();

    *(swift_task_alloc() + 16) = v7;
    sub_226D6EB8C();
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 112);

    v22 = *(v0 + 144);
    v15 = *MEMORY[0x277CC7870];
    v16 = *(v13 + 104);
    v16(v12, v15, v14);
    sub_226D692EC();
    v17 = *(v13 + 8);
    v17(v12, v14);
    if ((v22 & 1) == 0)
    {
      v18 = *(v0 + 128);
      v19 = *(v0 + 112);
      v16(v18, v15, v19);
      sub_226D692EC();
      v17(v18, v19);
    }

    v20 = *(v0 + 136);
    v21 = *(v0 + 112);
    sub_226D6930C();

    v17(v20, v21);

    v10 = *(v0 + 8);
  }

  else
  {
    sub_226AC47B0(v0 + 56, &qword_27D7A7048, &qword_226D74690);
    v4 = sub_226D6A0DC();
    sub_226BE38A0(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
    v5 = swift_allocError();
    *v6 = 0xD000000000000030;
    v6[1] = 0x8000000226D82C10;
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277CC7AC0], v4);
    swift_willThrow();
    v8 = sub_226D6A0DC();
    sub_226BE38A0(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
    swift_allocError();
    *v9 = v5;
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277CC7AB0], v8);
    swift_willThrow();

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t BankConnectServiceImplementation.setOfflineLabSharingPermission(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_226BE1C3C, 0, 0);
}

uint64_t sub_226BE1C3C()
{
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F668);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_226AB4000, v2, v3, "Updating offline lab sharing permission to: %{BOOL}d.", v5, 8u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = *(v0 + 24);

  sub_226BE2918(v6);
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 24);
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v9;
    _os_log_impl(&dword_226AB4000, v7, v8, "Done updating offline lab sharing permission to: %{BOOL}d.", v10, 8u);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_226BE1EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x2822009F8](sub_226BE1EE0, 0, 0);
}

uint64_t sub_226BE1EE0()
{
  sub_226BE33B8(v0[19], v0[20], v0[21], v0[22]);
  sub_226AE532C(v0[23] + 16, (v0 + 9));
  v1 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 9), v1);
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  v0[24] = v3;
  (*(v2 + 16))();
  v0[17] = &type metadata for BankConnectEnvironmentImplementation;
  v4 = sub_226B6A16C();
  v0[18] = v4;
  v5 = swift_allocObject();
  v0[14] = v5;
  memcpy((v5 + 16), v3, 0x3B0uLL);
  type metadata accessor for OfflineLabSystemTask();
  inited = swift_initStackObject();
  v0[25] = inited;
  v7 = v0[17];
  v8 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 14), v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  inited[5] = &type metadata for BankConnectEnvironmentImplementation;
  inited[6] = v4;
  v11 = swift_allocObject();
  inited[2] = v11;
  memcpy((v11 + 16), v10, 0x3B0uLL);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_226BE2198;

  return sub_226B80F9C();
}

uint64_t sub_226BE2198()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_226BE2324;
  }

  else
  {
    v2 = sub_226BE22AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226BE22AC()
{
  v1 = *(v0 + 200);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226BE2324()
{
  v1 = *(v0 + 200);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226BE239C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = v7;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a2;
  *(v8 + 112) = a4;
  *(v8 + 176) = a3;
  *(v8 + 96) = a1;
  return MEMORY[0x2822009F8](sub_226BE23CC, 0, 0);
}

uint64_t sub_226BE23CC()
{
  sub_226BE33B8(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  v3 = *(v0 + 144);
  v4 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_226AC40E8((v4 + 88), v0 + 56, &qword_27D7A7048, &qword_226D74690);
  if (*(v0 + 80))
  {
    sub_226AC484C((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    v5 = sub_226D676AC();
    *(v0 + 152) = v5;
    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    *v6 = v0;
    v6[1] = sub_226BE2604;
    v7 = *(v0 + 176);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);

    return sub_226B50ED8(v9, v8, v5, v0 + 16, v7);
  }

  else
  {
    sub_226AC47B0(v0 + 56, &qword_27D7A7048, &qword_226D74690);
    v10 = sub_226D6A0DC();
    sub_226BE38A0(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
    swift_allocError();
    *v11 = 0xD00000000000002BLL;
    v11[1] = 0x8000000226D82C50;
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277CC7AC0], v10);
    swift_willThrow();
    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_226BE2604()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_226BE2738;
  }

  else
  {
    v3 = sub_226B99748;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226BE2738()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226BE279C@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v11[3] = type metadata accessor for OfflineLabDefaultLogicProvider(0);
  v11[4] = &off_283A6E4A0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_226C0639C(boxed_opaque_existential_1);
  v12[3] = sub_226D6B5EC();
  v12[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_226D6B58C();
  v11[5] = a1;
  v12[5] = a1;
  sub_226D6842C();
  a1;
  v6 = sub_226D6840C();
  v7 = sub_226D683CC();
  [v6 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DB0, &qword_226D76620);
  sub_226D6EB8C();

  if (v2)
  {
    return sub_226BE3240(v11);
  }

  sub_226BE3240(v11);
  if (v10 >> 62)
  {
    v9 = sub_226D6EDFC();
  }

  else
  {
    v9 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a2 = v9 != 0;
  return result;
}

void sub_226BE2918(char a1)
{
  v2 = v1;
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F668);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_226AB4000, v5, v6, "Setting permission locally to %{BOOL}d...", v7, 8u);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v8 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_226AC40E8((v8 + 88), &v23, &qword_27D7A7048, &qword_226D74690);
  if (!v24)
  {
    sub_226AC47B0(&v23, &qword_27D7A7048, &qword_226D74690);
    v11 = sub_226D6A0DC();
    sub_226BE38A0(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
    v10 = swift_allocError();
    *v12 = 0xD000000000000030;
    v12[1] = 0x8000000226D82C10;
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277CC7AC0], v11);
    swift_willThrow();
    goto LABEL_9;
  }

  sub_226AC484C(&v23, v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  OfflineLabConfigurationManager.setHasPermission(_:)(a1 & 1);
  v10 = v9;
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
LABEL_9:
    v13 = v10;
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9CC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 67109378;
      *(v16 + 4) = a1 & 1;
      *(v16 + 8) = 2112;
      v18 = v10;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 10) = v19;
      *v17 = v19;
      _os_log_impl(&dword_226AB4000, v14, v15, "Unable to set lab permission to: %{BOOL}d locally: %@", v16, 0x12u);
      sub_226AC47B0(v17, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }

    swift_willThrow();
    return;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  v20 = sub_226D6E05C();
  v21 = sub_226D6E9AC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_226AB4000, v20, v21, "Done setting permission locally.", v22, 2u);
    MEMORY[0x22AA8BEE0](v22, -1, -1);
  }
}

uint64_t sub_226BE2CD0@<X0>(char *a1@<X8>)
{
  v60 = a1;
  v1 = sub_226D692FC();
  v2 = *(v1 - 8);
  v58 = v1;
  v59 = v2;
  MEMORY[0x28223BE20](v1);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71D0, &qword_226D76660);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  v23 = v61;
  result = OfflineLabConfigurationManager.userItem.getter(v12);
  if (!v23)
  {
    v54 = v16;
    v55 = v19;
    v56 = v9;
    v25 = v58;
    v61 = 0;
    v26 = (*(v14 + 48))(v12, 1, v13);
    v27 = v59;
    v28 = (v59 + 104);
    if (v26 == 1)
    {
      sub_226AC47B0(v12, &qword_27D7A71D0, &qword_226D76660);
      return (*v28)(v60, *MEMORY[0x277CC7860], v25);
    }

    else
    {
      v53 = v13;
      sub_226BE3294(v12, v22);
      if (*v22)
      {
        v29 = MEMORY[0x277CC7870];
      }

      else
      {
        v29 = MEMORY[0x277CC7868];
      }

      v30 = v56;
      (*v28)(v56, *v29, v25);
      if (qword_28105F660 != -1)
      {
        swift_once();
      }

      v31 = sub_226D6E07C();
      __swift_project_value_buffer(v31, qword_28105F668);
      v32 = v27;
      v33 = *(v27 + 16);
      v34 = v6;
      v33(v6, v30, v25);
      v35 = v55;
      sub_226BE32F8(v22, v55);
      v36 = sub_226D6E05C();
      v52 = sub_226D6E9AC();
      if (os_log_type_enabled(v36, v52))
      {
        v37 = swift_slowAlloc();
        v50 = v36;
        v38 = v37;
        v62 = swift_slowAlloc();
        v51 = v22;
        v39 = v62;
        *v38 = 136315394;
        v33(v57, v34, v25);
        v40 = sub_226D6E3FC();
        v42 = v41;
        (*(v32 + 8))(v34, v25);
        v43 = sub_226AC4530(v40, v42, &v62);
        v30 = v56;

        *(v38 + 4) = v43;
        *(v38 + 12) = 2080;
        sub_226BE32F8(v35, v54);
        v44 = sub_226D6E3FC();
        v46 = v45;
        sub_226BE335C(v35);
        v47 = sub_226AC4530(v44, v46, &v62);

        *(v38 + 14) = v47;
        v48 = v50;
        _os_log_impl(&dword_226AB4000, v50, v52, "Returning permission: %s for userItem: %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v39, -1, -1);
        MEMORY[0x22AA8BEE0](v38, -1, -1);

        v49 = v51;
      }

      else
      {

        sub_226BE335C(v35);
        (*(v32 + 8))(v34, v25);
        v49 = v22;
      }

      sub_226BE335C(v49);
      return (*(v32 + 32))(v60, v30, v25);
    }
  }

  return result;
}

uint64_t sub_226BE3294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BE32F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BE335C(uint64_t a1)
{
  v2 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226BE33B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v4 = sub_226D67F1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DB8, &qword_226D76630);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  MEMORY[0x28223BE20](v11 - 8);
  v32 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  sub_226D68CCC();
  sub_226D67EDC();
  (*(v5 + 56))(v15, 0, 1, v4);
  v19 = *(v8 + 56);
  sub_226AC40E8(v18, v10, &qword_27D7A7180, &qword_226D74600);
  sub_226AC40E8(v15, &v10[v19], &qword_27D7A7180, &qword_226D74600);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) == 1)
  {
    sub_226AC47B0(v15, &qword_27D7A7180, &qword_226D74600);
    sub_226AC47B0(v18, &qword_27D7A7180, &qword_226D74600);
    if (v20(&v10[v19], 1, v4) == 1)
    {
      return sub_226AC47B0(v10, &qword_27D7A7180, &qword_226D74600);
    }

    goto LABEL_6;
  }

  sub_226AC40E8(v10, v32, &qword_27D7A7180, &qword_226D74600);
  if (v20(&v10[v19], 1, v4) == 1)
  {
    sub_226AC47B0(v15, &qword_27D7A7180, &qword_226D74600);
    sub_226AC47B0(v18, &qword_27D7A7180, &qword_226D74600);
    (*(v5 + 8))(v32, v4);
LABEL_6:
    sub_226AC47B0(v10, &qword_27D7A7DB8, &qword_226D76630);
LABEL_7:
    v22 = sub_226D66EDC();
    sub_226BE38A0(&qword_27D7A7DC0, MEMORY[0x277CC65F8], MEMORY[0x277CC6600]);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277CC65E0], v22);
    return swift_willThrow();
  }

  v24 = v28;
  (*(v5 + 32))(v28, &v10[v19], v4);
  sub_226BE38A0(&qword_281062BD0, MEMORY[0x277CC7098], MEMORY[0x277CC70B0]);
  v25 = v32;
  LODWORD(v31) = sub_226D6E35C();
  v26 = *(v5 + 8);
  v26(v24, v4);
  sub_226AC47B0(v15, &qword_27D7A7180, &qword_226D74600);
  sub_226AC47B0(v18, &qword_27D7A7180, &qword_226D74600);
  v26(v25, v4);
  result = sub_226AC47B0(v10, &qword_27D7A7180, &qword_226D74600);
  if ((v31 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_226BE38A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OfflineLabConfigurationManager.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_226D67F1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D67EEC();
  v6 = sub_226D67F0C();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v11[3] = sub_226D6B5EC();
  v11[4] = MEMORY[0x277CC7F70];
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_226D6B58C();
  *a1 = v6;
  a1[1] = v8;
  a1[2] = 0xD000000000000021;
  a1[3] = 0x8000000226D7F6B0;
  sub_226AE532C(v11, v10);
  type metadata accessor for OfflineLabConfigurationManager(0);
  sub_226D6B5FC();
  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t OfflineLabConfigurationManager.OfflineLabUserItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0) + 20);
  v4 = sub_226D6D52C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_226BE3B30()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6F43656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D726550736168;
  }
}

uint64_t sub_226BE3BA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_226BE6DB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_226BE3BE4(uint64_t a1)
{
  v2 = sub_226BE3E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226BE3C20(uint64_t a1)
{
  v2 = sub_226BE3E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OfflineLabConfigurationManager.OfflineLabUserItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DC8, &qword_226D76650);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226BE3E50();
  sub_226D6F38C();
  v8[15] = 0;
  sub_226D6F18C();
  if (!v1)
  {
    type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
    v8[14] = 1;
    sub_226D6D52C();
    sub_226BE4228(&qword_27D7A7DD8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_226D6F19C();
    v8[13] = 2;
    sub_226D6F17C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_226BE3E50()
{
  result = qword_27D7A7DD0;
  if (!qword_27D7A7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7DD0);
  }

  return result;
}

uint64_t OfflineLabConfigurationManager.OfflineLabUserItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_226D6D52C();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DE0, &qword_226D76658);
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v21 - v7;
  v9 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226BE3E50();
  sub_226D6F37C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v23 = a1;
  v13 = v25;
  v12 = v26;
  v14 = v27;
  v31 = 0;
  v15 = sub_226D6F15C();
  v22 = v11;
  *v11 = v15 & 1;
  v30 = 1;
  sub_226BE4228(&qword_27D7A7DE8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_226D6F16C();
  v16 = *(v12 + 32);
  v17 = v22;
  v21 = *(v9 + 20);
  v16(&v22[v21], v6, v14);
  v29 = 2;
  v18 = sub_226D6F14C();
  (*(v13 + 8))(v8, v28);
  v19 = (v17 + *(v9 + 24));
  *v19 = v18;
  v19[1] = HIBYTE(v18) & 1;
  sub_226BE32F8(v17, v24);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return sub_226BE335C(v17);
}

uint64_t sub_226BE4228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226BE42A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7E40, &qword_226D76968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D76640;
  v2 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v31 = v2;
  v3 = *MEMORY[0x277CDC238];
  v30 = *MEMORY[0x277CDC238];
  type metadata accessor for CFString(0);
  *(inited + 40) = v3;
  v4 = *MEMORY[0x277CDBEC8];
  *(inited + 64) = v5;
  *(inited + 72) = v4;
  v6 = v0[1];
  v7 = MEMORY[0x277D837D0];
  *(inited + 80) = *v0;
  *(inited + 88) = v6;
  v8 = *MEMORY[0x277CDC120];
  *(inited + 104) = v7;
  *(inited + 112) = v8;
  v9 = v0[3];
  v10 = MEMORY[0x277CDBF20];
  *(inited + 120) = v0[2];
  *(inited + 128) = v9;
  v11 = *v10;
  *(inited + 144) = v7;
  *(inited + 152) = v11;
  v12 = MEMORY[0x277CDBFC0];
  *(inited + 160) = 0xD00000000000002ALL;
  *(inited + 168) = 0x8000000226D82CB0;
  v13 = *v12;
  *(inited + 184) = v7;
  *(inited + 192) = v13;
  v14 = MEMORY[0x277D839B0];
  *(inited + 200) = 1;
  v15 = *MEMORY[0x277CDBED8];
  *(inited + 224) = v14;
  *(inited + 232) = v15;
  v16 = *MEMORY[0x277CDBEE0];
  v17 = MEMORY[0x277CDC140];
  *(inited + 240) = *MEMORY[0x277CDBEE0];
  v18 = *v17;
  *(inited + 264) = v5;
  *(inited + 272) = v18;
  *(inited + 304) = v14;
  *(inited + 280) = 1;
  v19 = v31;
  v20 = v30;
  v21 = v4;

  v22 = v8;

  v23 = v11;
  v24 = v13;
  v25 = v15;
  v26 = v16;
  v27 = v18;
  v28 = sub_226B23454(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AC8, &unk_226D76970);
  swift_arrayDestroy();
  return v28;
}

uint64_t OfflineLabConfigurationManager.userItem.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_226BE42A0();
  v3 = *MEMORY[0x277CDC558];
  v17 = MEMORY[0x277D839B0];
  LOBYTE(v16) = 1;
  sub_226B24A98(&v16, result);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_226BE5BEC(result, v3, isUniquelyReferenced_nonNull_native);
  result[0] = 0;
  type metadata accessor for CFString(0);
  sub_226BE4228(&qword_27D7A6048, type metadata accessor for CFString, &unk_226D70A28);
  v5 = sub_226D6E2AC();

  v6 = SecItemCopyMatching(v5, result);

  if (v6 == -25300)
  {
    v9 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
    (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    return swift_unknownObjectRelease();
  }

  if (v6)
  {
    sub_226AE59B4(0, &qword_27D7A7DF0, 0x277CCA9B8);
    v10 = sub_226BE47FC(v6);
    sub_226BE5D2C();
    swift_allocError();
    *v11 = v10;
    *(v11 + 8) = 0;
LABEL_14:
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  if (!result[0])
  {
    goto LABEL_12;
  }

  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    if (result[0])
    {
      ObjectType = swift_getObjectType();
      sub_226BE5D2C();
      swift_allocError();
      *v13 = ObjectType;
LABEL_13:
      *(v13 + 8) = 1;
      goto LABEL_14;
    }

LABEL_12:
    sub_226BE5D2C();
    swift_allocError();
    *v13 = 0;
    goto LABEL_13;
  }

  v7 = v16;
  sub_226D6CC1C();
  swift_allocObject();
  sub_226D6CC0C();
  v8 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  sub_226BE4228(&qword_27D7A7E00, type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem, &protocol conformance descriptor for OfflineLabConfigurationManager.OfflineLabUserItem);
  sub_226D6CBFC();
  if (v1)
  {

    sub_226B11B98(v7, *(&v7 + 1));
  }

  else
  {
    sub_226B11B98(v7, *(&v7 + 1));

    (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }

  return swift_unknownObjectRelease();
}

id sub_226BE47FC(OSStatus a1)
{
  v2 = SecCopyErrorMessageString(a1, 0);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_226D6E38C();
    }
  }

  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = *MEMORY[0x277CCA590];
  v6 = [v4 initWithDomain:v5 code:a1 userInfo:0];

  return v6;
}

uint64_t sub_226BE49B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71D0, &qword_226D76660);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2;
  result = OfflineLabConfigurationManager.userItem.getter(v9 - v2);
  if (!v0)
  {
    v5 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
    if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
    {
      sub_226AC47B0(v3, &qword_27D7A71D0, &qword_226D76660);
LABEL_8:
      v7 = 2;
LABEL_9:
      sub_226BE5D2C();
      swift_allocError();
      *v8 = v7;
      *(v8 + 8) = 5;
      return swift_willThrow();
    }

    v6 = *v3;
    sub_226BE335C(v3);
    if (v6 != 1)
    {
      goto LABEL_8;
    }

    type metadata accessor for OfflineLabConfigurationManager(0);
    sub_226D6B5DC();
    if (v10)
    {
      if (swift_dynamicCast())
      {
        return v11;
      }
    }

    else
    {
      sub_226AC47B0(v9, &unk_27D7A8BB0, &unk_226D74340);
    }

    sub_226BE4C04();
    sub_226D6B5DC();
    if (v10)
    {
      if (swift_dynamicCast())
      {
        return v11;
      }
    }

    else
    {
      sub_226AC47B0(v9, &unk_27D7A8BB0, &unk_226D74340);
    }

    v7 = 0;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_226BE4C04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71D0, &qword_226D76660);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22[-v2];
  v4 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v22[-v9];
  result = OfflineLabConfigurationManager.userItem.getter(v3);
  if (!v0)
  {
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_226AC47B0(v3, &qword_27D7A71D0, &qword_226D76660);
      sub_226BE5D2C();
      swift_allocError();
      *v12 = 1;
      *(v12 + 8) = 5;
      return swift_willThrow();
    }

    else
    {
      sub_226BE3294(v3, v10);
      v13 = *(v4 + 20);
      v14 = &v10[*(v4 + 24)];
      v15 = *v14;
      v16 = v14[1];
      if (v15 < 0x7F)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = 127;
      }

      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      v19 = *v10;
      v20 = sub_226D6D52C();
      (*(*(v20 - 8) + 16))(&v7[v13], &v10[v13], v20);
      *v7 = v19;
      v21 = &v7[*(v4 + 24)];
      *v21 = v18;
      v21[1] = 0;
      sub_226BE4ED0(v7);
      type metadata accessor for OfflineLabConfigurationManager(0);
      v23 = MEMORY[0x277D84B78];
      v22[0] = v18;
      sub_226D6B5BC();
      sub_226BE335C(v7);
      sub_226BE335C(v10);
      return sub_226AC47B0(v22, &unk_27D7A8BB0, &unk_226D74340);
    }
  }

  return result;
}

void sub_226BE4ED0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7E40, &qword_226D76968);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D70840;
  v3 = *MEMORY[0x277CDC5E8];
  *(inited + 32) = *MEMORY[0x277CDC5E8];
  sub_226D6CCAC();
  swift_allocObject();
  v4 = v3;
  sub_226D6CC9C();
  type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  sub_226BE4228(&qword_27D7A7E08, type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem, &protocol conformance descriptor for OfflineLabConfigurationManager.OfflineLabUserItem);
  v5 = sub_226D6CC8C();
  if (v1)
  {

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AC8, &unk_226D76970);
    swift_arrayDestroy();
  }

  else
  {
    v7 = v5;
    v8 = v6;

    *(inited + 64) = MEMORY[0x277CC9318];
    *(inited + 40) = v7;
    *(inited + 48) = v8;
    sub_226B23454(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A6AC8, &unk_226D76970);
    sub_226BE42A0();
    type metadata accessor for CFString(0);
    sub_226BE4228(&qword_27D7A6048, type metadata accessor for CFString, &unk_226D70A28);
    v9 = sub_226D6E2AC();

    v10 = sub_226D6E2AC();

    v11 = SecItemUpdate(v9, v10);

    if (v11)
    {
      sub_226AE59B4(0, &qword_27D7A7DF0, 0x277CCA9B8);
      v12 = sub_226BE47FC(v11);
      sub_226BE5D2C();
      swift_allocError();
      *v13 = v12;
      *(v13 + 8) = 3;
      swift_willThrow();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OfflineLabConfigurationManager.setHasPermission(_:)(Swift::Bool a1)
{
  v43 = a1;
  v2 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71D0, &qword_226D76660);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  OfflineLabConfigurationManager.userItem.getter(&v40 - v16);
  if (!v1)
  {
    v18 = v43;
    v41 = v17;
    v42 = 0;
    sub_226BE5D80(v17, v14);
    if ((*(v3 + 48))(v14, 1, v2) == 1)
    {
      sub_226AC47B0(v14, &qword_27D7A71D0, &qword_226D76660);
      v19 = v5;
      sub_226D6D51C();
      *v5 = v18;
      *&v5[*(v2 + 24)] = 256;
      v20 = sub_226BE42A0();
      v21 = *MEMORY[0x277CDC5E8];
      sub_226D6CCAC();
      swift_allocObject();
      v22 = v21;
      sub_226D6CC9C();
      sub_226BE4228(&qword_27D7A7E08, type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem, &protocol conformance descriptor for OfflineLabConfigurationManager.OfflineLabUserItem);
      v23 = v42;
      v24 = sub_226D6CC8C();
      v42 = v23;
      if (v23)
      {

        sub_226BE335C(v19);
        sub_226AC47B0(v41, &qword_27D7A71D0, &qword_226D76660);

        return;
      }

      v33 = v24;
      v34 = v25;

      v46 = MEMORY[0x277CC9318];
      *&v45 = v33;
      *(&v45 + 1) = v34;
      sub_226B24A98(&v45, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v20;
      sub_226BE5BEC(v44, v22, isUniquelyReferenced_nonNull_native);

      type metadata accessor for CFString(0);
      sub_226BE4228(&qword_27D7A6048, type metadata accessor for CFString, &unk_226D70A28);
      v36 = sub_226D6E2AC();

      v37 = SecItemAdd(v36, 0);

      v32 = v41;
      if (v37)
      {
        sub_226AE59B4(0, &qword_27D7A7DF0, 0x277CCA9B8);
        v38 = sub_226BE47FC(v37);
        sub_226BE5D2C();
        swift_allocError();
        *v39 = v38;
        *(v39 + 8) = 2;
        swift_willThrow();
        sub_226BE335C(v19);
        sub_226AC47B0(v32, &qword_27D7A71D0, &qword_226D76660);
        return;
      }

      v11 = v19;
    }

    else
    {
      sub_226BE3294(v14, v11);
      if (*v11 != v18)
      {
        v26 = *(v2 + 20);
        v27 = sub_226D6D52C();
        (*(*(v27 - 8) + 16))(&v8[v26], &v11[v26], v27);
        v28 = *(v2 + 24);
        v29 = v11[v28];
        v30 = v11[v28 + 1];
        *v8 = v18;
        v31 = &v8[v28];
        *v31 = v29;
        v31[1] = v30;
        sub_226BE4ED0(v8);
        sub_226BE335C(v8);
        sub_226BE335C(v11);
        sub_226AC47B0(v41, &qword_27D7A71D0, &qword_226D76660);
        return;
      }

      v32 = v41;
    }

    sub_226BE335C(v11);
    sub_226AC47B0(v32, &qword_27D7A71D0, &qword_226D76660);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OfflineLabConfigurationManager.deleteUserItem()()
{
  sub_226BE42A0();
  type metadata accessor for CFString(0);
  sub_226BE4228(&qword_27D7A6048, type metadata accessor for CFString, &unk_226D70A28);
  v0 = sub_226D6E2AC();

  v1 = SecItemDelete(v0);

  type metadata accessor for OfflineLabConfigurationManager(0);
  sub_226D6B59C();
  if (v1)
  {
    v2 = v1 == -25300;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    sub_226AE59B4(0, &qword_27D7A7DF0, 0x277CCA9B8);
    v3 = sub_226BE47FC(v1);
    sub_226BE5D2C();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 4;
    swift_willThrow();
  }
}

void sub_226BE57C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_226C2FDD4(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_226C37EBC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_226C31844(v18, a5 & 1);
    v13 = sub_226C2FDD4(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_226D6F25C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_226C36244(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_226BE5918(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_226C30098(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

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
      v18 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
      return sub_226BE6EE4(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_226C38488();
    goto LABEL_7;
  }

  sub_226C32284(v13, a3 & 1);
  v20 = sub_226C30098(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_226C36294(v10, a2, a1, v16);
}

id sub_226BE5A6C(uint64_t a1, void *a2, char a3, __n128 a4)
{
  v5 = v4;
  v8 = *v4;
  v10 = sub_226C3015C(a2);
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
      sub_226C386BC();
      goto LABEL_7;
    }

    sub_226C3264C(v13, a3 & 1);
    v24 = sub_226C3015C(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v5;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v5;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_226D6D52C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:
  sub_226C3633C(v10, a2, a1, v16);

  return a2;
}

_OWORD *sub_226BE5BEC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_226C301A0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_226C38A98();
      v8 = v16;
      goto LABEL_8;
    }

    sub_226C329AC(v13, a3 & 1);
    v8 = sub_226C301A0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_226D6F25C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);

    return sub_226B24A98(a1, v19);
  }

  else
  {
    sub_226C36430(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_226BE5D2C()
{
  result = qword_27D7A7DF8;
  if (!qword_27D7A7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7DF8);
  }

  return result;
}

uint64_t sub_226BE5D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71D0, &qword_226D76660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BE5E18(uint64_t a1)
{
  result = sub_226D6B5EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_226BE5EBC(uint64_t a1)
{
  sub_226D6D52C();
  if (v1 <= 0x3F)
  {
    sub_226BE5F50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226BE5F50()
{
  if (!qword_27D7A7E20)
  {
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A7E20);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon30OfflineLabConfigurationManagerV0cdeF5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 4)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_226BE5FBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_226BE6004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_226BE6048(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_226BE6084()
{
  result = qword_27D7A7E28;
  if (!qword_27D7A7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7E28);
  }

  return result;
}

unint64_t sub_226BE60DC()
{
  result = qword_27D7A7E30;
  if (!qword_27D7A7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7E30);
  }

  return result;
}

unint64_t sub_226BE6134()
{
  result = qword_27D7A7E38;
  if (!qword_27D7A7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7E38);
  }

  return result;
}

void sub_226BE6188(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226C2FDD4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_226C38D90();
      v11 = v19;
      goto LABEL_8;
    }

    sub_226C32F14(v16, a4 & 1);
    v11 = sub_226C2FDD4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_226D6F25C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    sub_226B24A98(a1, v22);
  }

  else
  {
    sub_226C36498(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_226BE62D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_226D680FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_226C302EC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_226C38F34();
      goto LABEL_7;
    }

    sub_226C335AC(v17, a3 & 1);
    v28 = sub_226C302EC(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_226C36504(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_226D68CEC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

_OWORD *sub_226BE64DC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_226C2FE4C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_226C38F70();
      goto LABEL_7;
    }

    sub_226C33A58(v13, a3 & 1);
    v19 = sub_226C2FE4C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_226AE4FD4(a2, v21);
      return sub_226C36530(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return sub_226B24A98(a1, v17);
}

void sub_226BE6628(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226C2FDD4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_226C39114();
      v11 = v19;
      goto LABEL_8;
    }

    sub_226C34598(v16, a4 & 1);
    v11 = sub_226C2FDD4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_226D6F25C();
      __break(1u);
_objc_release_x1:
      MEMORY[0x2821F96F8]();
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  sub_226C363E8(v11, a2, a3, a1, v21);
}

uint64_t sub_226BE676C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_226C3064C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_226C39298();
      goto LABEL_7;
    }

    sub_226C3485C(v17, a3 & 1);
    v22 = sub_226C3064C(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_226C365AC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_226BE6938(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_226D6D52C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_226C3049C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_226C392C0();
      goto LABEL_7;
    }

    sub_226C34C3C(v17, a3 & 1);
    v28 = sub_226C3049C(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_226C365C4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_226D67E5C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_226BE6B3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226C2FDD4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_226C39D4C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_226C356F0(v16, a4 & 1);
    v11 = sub_226C2FDD4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_226D6F25C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_226C363E8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_226BE6C6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_226C2FE4C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

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
      v18 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
      return sub_226BE6EE4(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_226C39EB8();
    goto LABEL_7;
  }

  sub_226C3599C(v13, a3 & 1);
  v20 = sub_226C2FE4C(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_226AE4FD4(a2, v22);
  return sub_226C367AC(v10, v22, a1, v16);
}

uint64_t sub_226BE6DB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696D726550736168 && a2 == 0xED00006E6F697373;
  if (v4 || (sub_226D6F21C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_226D6F21C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43656369766564 && a2 == 0xEB00000000746E75)
  {

    return 2;
  }

  else
  {
    v6 = sub_226D6F21C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_226BE6EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BE6F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226BE6F70, 0, 0);
}

uint64_t sub_226BE6F70()
{
  v1 = v0[5];
  v2 = *(v1 + 56);
  if ((*(*(v1 + 64) + 8))())
  {
    v3 = v0[3];
    if (v3)
    {
      v4 = v0[4];
      v5 = swift_task_alloc();
      v0[6] = v5;
      *v5 = v0;
      v5[1] = sub_226BE734C;

      return sub_226BE86AC(v3, v4);
    }

    v12 = v0[2];
    if (v12 >> 62)
    {
      v13 = sub_226D6EDFC();
      v0[7] = v13;
      if (v13)
      {
LABEL_16:
        if (v13 < 1)
        {
          __break(1u);
        }

        else
        {
          v14 = v0[2];
          v0[8] = 0;
          if ((v14 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x22AA8AFD0](0);
          }

          else
          {
            v15 = *(v14 + 32);
          }

          v2 = v15;
          v0[9] = v15;
          if (qword_28105F6C0 == -1)
          {
            goto LABEL_21;
          }
        }

        swift_once();
LABEL_21:
        v16 = sub_226D6E07C();
        v0[10] = __swift_project_value_buffer(v16, qword_28105F6C8);
        v17 = v2;
        v18 = sub_226D6E05C();
        v19 = sub_226D6E9AC();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v17;
          *v21 = v17;
          v22 = v17;
          _os_log_impl(&dword_226AB4000, v18, v19, "Scheduling notification request: %@", v20, 0xCu);
          sub_226AC47B0(v21, &qword_27D7A5FB0, &qword_226D70870);
          MEMORY[0x22AA8BEE0](v21, -1, -1);
          MEMORY[0x22AA8BEE0](v20, -1, -1);
        }

        v23 = v0[5];

        v24 = v23[5];
        v25 = v23[6];
        __swift_project_boxed_opaque_existential_1(v23 + 2, v24);
        v26 = swift_task_alloc();
        v0[11] = v26;
        *v26 = v0;
        v26[1] = sub_226BE778C;

        return MEMORY[0x282119030](v17, v24, v25);
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[7] = v13;
      if (v13)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (qword_28105F6C0 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    __swift_project_value_buffer(v7, qword_28105F6C8);
    v8 = sub_226D6E05C();
    v9 = sub_226D6E9AC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226AB4000, v8, v9, "Wallet isn't visible, suppressing notifications", v10, 2u);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_226BE734C(char a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_226BE744C, 0, 0);
}

uint64_t sub_226BE744C()
{
  if (*(v1 + 104) == 1)
  {
    if (qword_28105F6C0 != -1)
    {
      swift_once();
    }

    v2 = sub_226D6E07C();
    __swift_project_value_buffer(v2, qword_28105F6C8);
    v3 = sub_226D6E05C();
    v4 = sub_226D6E9AC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_226AB4000, v3, v4, "Associated app is installed, suppressing notifications", v5, 2u);
      MEMORY[0x22AA8BEE0](v5, -1, -1);
    }

    goto LABEL_20;
  }

  v6 = *(v1 + 16);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 56) = v7;
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_20:
    v21 = *(v1 + 8);

    return v21();
  }

  v7 = sub_226D6EDFC();
  *(v1 + 56) = v7;
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_9:
  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v1 + 16);
    *(v1 + 64) = 0;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AA8AFD0](0);
    }

    else
    {
      v9 = *(v8 + 32);
    }

    v0 = v9;
    *(v1 + 72) = v9;
    if (qword_28105F6C0 == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v10 = sub_226D6E07C();
  *(v1 + 80) = __swift_project_value_buffer(v10, qword_28105F6C8);
  v11 = v0;
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9AC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_226AB4000, v12, v13, "Scheduling notification request: %@", v14, 0xCu);
    sub_226AC47B0(v15, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  v17 = *(v1 + 40);

  v18 = v17[5];
  v19 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v18);
  v20 = swift_task_alloc();
  *(v1 + 88) = v20;
  *v20 = v1;
  v20[1] = sub_226BE778C;

  return MEMORY[0x282119030](v11, v18, v19);
}

uint64_t sub_226BE778C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_226BE7AFC;
  }

  else
  {
    v2 = sub_226BE78A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226BE78A0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 64) + 1;
    *(v0 + 64) = v5;
    v6 = *(v0 + 16);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v8 = v7;
    *(v0 + 72) = v7;
    if (qword_28105F6C0 != -1)
    {
      swift_once();
    }

    v9 = sub_226D6E07C();
    *(v0 + 80) = __swift_project_value_buffer(v9, qword_28105F6C8);
    v10 = v8;
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9AC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_226AB4000, v11, v12, "Scheduling notification request: %@", v13, 0xCu);
      sub_226AC47B0(v14, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }

    v16 = *(v0 + 40);

    v17 = v16[5];
    v18 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v17);
    v19 = swift_task_alloc();
    *(v0 + 88) = v19;
    *v19 = v0;
    v19[1] = sub_226BE778C;

    return MEMORY[0x282119030](v10, v17, v18);
  }
}

uint64_t sub_226BE7AFC()
{
  v1 = *(v0 + 96);
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to schedule notification request with error: %@", v7, 0xCu);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);

    v3 = *(v0 + 72);
  }

  else
  {
  }

  v12 = *(v0 + 56);
  v11 = *(v0 + 64);

  if (v11 + 1 == v12)
  {
    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 64) + 1;
    *(v0 + 64) = v15;
    v16 = *(v0 + 16);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v17 = *(v16 + 8 * v15 + 32);
    }

    v18 = v17;
    *(v0 + 72) = v17;
    if (qword_28105F6C0 != -1)
    {
      swift_once();
    }

    v19 = sub_226D6E07C();
    *(v0 + 80) = __swift_project_value_buffer(v19, qword_28105F6C8);
    v20 = v18;
    v21 = sub_226D6E05C();
    v22 = sub_226D6E9AC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_226AB4000, v21, v22, "Scheduling notification request: %@", v23, 0xCu);
      sub_226AC47B0(v24, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
      MEMORY[0x22AA8BEE0](v23, -1, -1);
    }

    v26 = *(v0 + 40);

    v27 = v26[5];
    v28 = v26[6];
    __swift_project_boxed_opaque_existential_1(v26 + 2, v27);
    v29 = swift_task_alloc();
    *(v0 + 88) = v29;
    *v29 = v0;
    v29[1] = sub_226BE778C;

    return MEMORY[0x282119030](v20, v27, v28);
  }
}

uint64_t sub_226BE7E54(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = sub_226D6714C();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v41 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC0, &unk_226D73820);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  v17 = sub_226D6D1AC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  type metadata accessor for NotificationAttachmentStore(0);
  swift_allocObject();
  v18 = NotificationAttachmentStore.init(notificationAttachmentDirectory:)(v16);
  v19 = a1;
  v45 = v2;
  v20 = sub_226BD0228(a1, v18);
  v22 = v21;
  v24 = v23;

  if (v20)
  {

    sub_226BE998C(v22, v24);
    v25 = os_transaction_create();
    v48[0] = v20;
    v48[1] = v22;
    v48[2] = v24;
    v49 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED8, &qword_226D73848);
    sub_226D6E7CC();
    (*(v11 + 8))(v13, v10);
    sub_226B6AE3C(v22, v24);
  }

  sub_226BB8488(v19, v9);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    return sub_226BB84EC(v9);
  }

  v26 = *v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
  sub_226AC47B0(v9 + *(v27 + 48), &qword_27D7A7798, &unk_226D75570);
  v28 = v45;
  sub_226AC40E8(v45 + 72, v48, &qword_27D7A6910, &unk_226D721C0);
  if (v49)
  {
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v30 = v41;
    v29 = v42;
    v31 = v43;
    (*(v42 + 104))(v41, *MEMORY[0x277CC6B48], v43);
    sub_226D680BC();
    (*(v29 + 8))(v30, v31);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
  }

  else
  {
    sub_226AC47B0(v48, &qword_27D7A6910, &unk_226D721C0);
  }

  v33 = v44;
  sub_226BB8488(v19, v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = *v33;
  if (!EnumCaseMultiPayload)
  {

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    v39 = *(v33 + *(v38 + 64) + 3);
    sub_226AC47B0(v33 + *(v38 + 48), &qword_27D7A7798, &unk_226D75570);
    if (v39 != 1)
    {
      goto LABEL_12;
    }

LABEL_11:
    __swift_project_boxed_opaque_existential_1((v28 + 112), *(v28 + 136));
    sub_226D69A5C();
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    v37 = *(v33 + *(v36 + 64) + 3);
    sub_226AC47B0(v33 + *(v36 + 48), &qword_27D7A7798, &unk_226D75570);
    if ((v37 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v40 = *(v33 + 11);

  if (v40)
  {
    goto LABEL_11;
  }

LABEL_12:
  sub_226AC40E8(v28 + 152, v48, &qword_27D7A6FA0, &qword_226D79780);
  if (v49)
  {
    sub_226BC7B60(v26);

    return sub_226B5BD20(v48);
  }

  else
  {

    return sub_226AC47B0(v48, &qword_27D7A6FA0, &qword_226D79780);
  }
}

uint64_t sub_226BE8540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7E48, &unk_226D769C8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  __swift_allocate_value_buffer(v4, qword_281064538);
  v5 = __swift_project_value_buffer(v4, qword_281064538);
  (*(v1 + 104))(v3, *MEMORY[0x277D85778], v0);
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7E50, &unk_226D769D8);
  v5[4] = sub_226BE9928();
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_226D6E7AC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_226BE86AC(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_226D690AC();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BE8770, 0, 0);
}

uint64_t sub_226BE8770()
{
  sub_226AC40E8(*(v0 + 192) + 72, v0 + 56, &qword_27D7A5FD0, &qword_226D708A0);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 176);
    sub_226AC484C((v0 + 56), v0 + 16);
    v2 = *(v1 + 16);
    *(v0 + 224) = v2;
    if (v2)
    {
      *(v0 + 232) = 0;
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_226D67D4C();
      v3 = swift_task_alloc();
      *(v0 + 240) = v3;
      *v3 = v0;
      v3[1] = sub_226BE8C7C;

      return MEMORY[0x282118688]();
    }

    v4 = *(v0 + 184);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v0 + 192);
      v7 = *(v6 + 112);
      v8 = *(v6 + 120);
      v9 = *(v8 + 8);
      v22 = sub_226D6EC9C();
      v21 = (*(v22 - 8) + 8);
      v10 = (v4 + 40);
      do
      {
        v12 = *(v10 - 1);
        v11 = *v10;
        v13 = swift_task_alloc();

        v9(v12, v11, v7, v8);
        v14 = *(v7 - 8);
        if ((*(v14 + 48))(v13, 1, v7) == 1)
        {
          (*v21)(v13, v22);

          *(v0 + 168) = 0;
          *(v0 + 152) = 0u;
          *(v0 + 136) = 0u;
        }

        else
        {
          *(v0 + 120) = v7;
          *(v0 + 128) = v8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
          (*(v14 + 32))(boxed_opaque_existential_1, v13, v7);

          v16 = *(v0 + 112);
          v17 = *(v0 + 120);
          *(v0 + 136) = *(v0 + 96);
          *(v0 + 152) = v16;
          *(v0 + 160) = v17;
          if (v17)
          {
            sub_226AC47B0(v0 + 136, &qword_27D7A7E58, &qword_226D769F8);
            __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
            v19 = 1;
            goto LABEL_16;
          }
        }

        v10 += 2;
        sub_226AC47B0(v0 + 136, &qword_27D7A7E58, &qword_226D769F8);
        --v5;
      }

      while (v5);
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_226AC47B0(v0 + 56, &qword_27D7A5FD0, &qword_226D708A0);
  }

  v19 = 0;
LABEL_16:

  v18 = *(v0 + 8);

  return v18(v19);
}

uint64_t sub_226BE8C7C(char a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = sub_226BE9298;
  }

  else
  {
    *(v4 + 256) = a1 & 1;
    v5 = sub_226BE8DA8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226BE8DA8()
{
  v1 = *(v0 + 256);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  if (v1)
  {
LABEL_2:
    v2 = 1;
LABEL_22:
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v31 = *(v0 + 8);

    return v31(v2);
  }

  v3 = *(v0 + 232) + 1;
  if (v3 == *(v0 + 224))
  {
    v4 = *(v0 + 184);
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_21:
      v2 = 0;
      goto LABEL_22;
    }

    v6 = *(v0 + 248);
    v7 = *(v0 + 192);
    v8 = *(v7 + 112);
    v9 = *(v7 + 120);
    v10 = v9 + 8;
    v36 = *(v9 + 8);
    v34 = sub_226D6EC9C();
    v33 = (*(v34 - 8) + 8);
    v11 = (v4 + 40);
    v35 = v8;
    while (1)
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = swift_task_alloc();

      v36(v13, v12, v8, v9);
      if (v6)
      {
        break;
      }

      v26 = *(v8 - 8);
      if ((*(v26 + 48))(v14, 1, v8) == 1)
      {
        (*v33)(v14, v34);

LABEL_7:
        *(v0 + 168) = 0;
        *(v0 + 152) = 0u;
        *(v0 + 136) = 0u;
        goto LABEL_8;
      }

      *(v0 + 120) = v8;
      *(v0 + 128) = v9;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      (*(v26 + 32))(boxed_opaque_existential_1, v14, v8);

      v28 = *(v0 + 112);
      v29 = *(v0 + 120);
      *(v0 + 136) = *(v0 + 96);
      *(v0 + 152) = v28;
      *(v0 + 160) = v29;
      if (v29)
      {
        sub_226AC47B0(v0 + 136, &qword_27D7A7E58, &qword_226D769F8);
        goto LABEL_2;
      }

LABEL_8:
      v11 += 2;
      sub_226AC47B0(v0 + 136, &qword_27D7A7E58, &qword_226D769F8);
      v6 = 0;
      if (!--v5)
      {
        goto LABEL_21;
      }
    }

    if (qword_28105F6C0 != -1)
    {
      swift_once();
    }

    v15 = sub_226D6E07C();
    __swift_project_value_buffer(v15, qword_28105F6C8);
    v16 = v6;
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9CC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = v9;
      v21 = v10;
      v22 = swift_slowAlloc();
      *v19 = 138412290;
      v23 = v6;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_226AB4000, v17, v18, "Failed to check bundle presence with error: %@", v19, 0xCu);
      sub_226AC47B0(v22, &qword_27D7A5FB0, &qword_226D70870);
      v25 = v22;
      v10 = v21;
      v9 = v20;
      v8 = v35;
      MEMORY[0x22AA8BEE0](v25, -1, -1);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    else
    {
    }

    goto LABEL_7;
  }

  *(v0 + 232) = v3;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_226D67D4C();
  v30 = swift_task_alloc();
  *(v0 + 240) = v30;
  *v30 = v0;
  v30[1] = sub_226BE8C7C;

  return MEMORY[0x282118688]();
}

uint64_t sub_226BE9298()
{
  if (qword_28105F6C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F6C8);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 248);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to check app installation with error: %@", v7, 0xCu);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = *(v0 + 248);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v14 = *(v0 + 200);

  (*(v12 + 8))(v13, v14);
  v15 = *(v0 + 232) + 1;
  if (v15 == *(v0 + 224))
  {
    v16 = *(v0 + 184);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v0 + 192);
      v19 = *(v18 + 112);
      v20 = *(v18 + 120);
      v35 = *(v20 + 8);
      v34 = sub_226D6EC9C();
      v33 = (*(v34 - 8) + 8);
      v21 = (v16 + 40);
      do
      {
        v23 = *(v21 - 1);
        v22 = *v21;
        v24 = swift_task_alloc();

        v35(v23, v22, v19, v20);
        v25 = *(v19 - 8);
        if ((*(v25 + 48))(v24, 1, v19) == 1)
        {
          (*v33)(v24, v34);

          *(v0 + 168) = 0;
          *(v0 + 152) = 0u;
          *(v0 + 136) = 0u;
        }

        else
        {
          *(v0 + 120) = v19;
          *(v0 + 128) = v20;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
          (*(v25 + 32))(boxed_opaque_existential_1, v24, v19);

          v27 = *(v0 + 112);
          v28 = *(v0 + 120);
          *(v0 + 136) = *(v0 + 96);
          *(v0 + 152) = v27;
          *(v0 + 160) = v28;
          if (v28)
          {
            sub_226AC47B0(v0 + 136, &qword_27D7A7E58, &qword_226D769F8);
            v31 = 1;
            goto LABEL_17;
          }
        }

        v21 += 2;
        sub_226AC47B0(v0 + 136, &qword_27D7A7E58, &qword_226D769F8);
        --v17;
      }

      while (v17);
    }

    v31 = 0;
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v30 = *(v0 + 8);

    return v30(v31);
  }

  else
  {
    *(v0 + 232) = v15;
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_226D67D4C();
    v29 = swift_task_alloc();
    *(v0 + 240) = v29;
    *v29 = v0;
    v29[1] = sub_226BE8C7C;

    return MEMORY[0x282118688]();
  }
}

uint64_t sub_226BE98B4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  sub_226AC47B0(v0 + 72, &qword_27D7A5FD0, &qword_226D708A0);

  return swift_deallocClassInstance();
}

unint64_t sub_226BE9928()
{
  result = qword_28105F4D0;
  if (!qword_28105F4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A7E50, &unk_226D769D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F4D0);
  }

  return result;
}

double sub_226BE998C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t type metadata accessor for OrderNotificationCenter.Continuation(uint64_t a1)
{
  result = qword_2810619E0;
  if (!qword_2810619E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226BE9A40(uint64_t a1)
{
  sub_226BE9AAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_226BE9AAC()
{
  if (!qword_28105F4F8)
  {
    v0 = sub_226D6E7DC();
    if (!v1)
    {
      atomic_store(v0, &qword_28105F4F8);
    }
  }
}

uint64_t sub_226BE9AFC(uint64_t *a1, int a2)
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

uint64_t sub_226BE9B44(uint64_t result, int a2, int a3)
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

uint64_t sub_226BE9BAC()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_27D7A7E60);
  v1 = __swift_project_value_buffer(v0, qword_27D7A7E60);
  if (qword_28105F680 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28105F688);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_226BE9C8C(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t sub_226BE9D80(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226BE9DA4, v2, 0);
}

uint64_t sub_226BE9DA4()
{
  v29 = v0;
  if (qword_27D7A5F78 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_27D7A7E60);

  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28[0] = v6;
    *v5 = 136315138;
    v7 = sub_226D66F6C();
    v8 = MEMORY[0x22AA8A6A0](v4, v7);
    v10 = sub_226AC4530(v8, v9, v28);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v2, v3, "Detected data changes for: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v12 = v0[3];
  v11 = v0[4];
  v13 = v11[17];
  v14 = v11[18];
  __swift_project_boxed_opaque_existential_1(v11 + 14, v13);
  v15 = (*(v14 + 64))(v12, v13, v14);
  v0[5] = v15;
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17 == 1)
  {
    v18 = 0xE800000000000000;
  }

  else
  {
    v18 = 0xEA00000000007365;
  }

  v19 = sub_226D6E05C();
  v20 = sub_226D6E9EC();

  if (os_log_type_enabled(v19, v20))
  {
    if (v17 == 1)
    {
      v21 = 0x79726576696C6564;
    }

    else
    {
      v21 = 0x69726576696C6564;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28[0] = v23;
    *v22 = 134218242;
    *(v22 + 4) = v17;
    *(v22 + 12) = 2080;
    v24 = sub_226AC4530(v21, v18, v28);

    *(v22 + 14) = v24;
    _os_log_impl(&dword_226AB4000, v19, v20, "Marked %ld %s registrations as scheduled", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
    MEMORY[0x22AA8BEE0](v22, -1, -1);
  }

  else
  {
  }

  v25 = swift_task_alloc();
  v0[6] = v25;
  *v25 = v0;
  v25[1] = sub_226BEA150;
  v26 = v0[2];

  return sub_226BEA260(v16, v26);
}

uint64_t sub_226BEA150()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226BEA260(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = sub_226D6D4AC();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_226D66F5C();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BEA418, v2, 0);
}

uint64_t sub_226BEA418()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[14];
  v4 = sub_226D6E59C();
  v5 = *(v3 + 104);
  v5(v1, *MEMORY[0x277CC6688], v2);
  if (*(v4 + 16) && (v6 = sub_226C303C4(v0[19]), (v7 & 1) != 0))
  {
    v8 = v0[19];
    v9 = v0[13];
    v10 = *(*(v4 + 56) + 8 * v6);
    v11 = *(v0[14] + 8);

    v11(v8, v9);
    v12 = *(v10 + 16);

    if (v12)
    {
      sub_226BEAAF8(v0[3]);
    }
  }

  else
  {
    v11 = *(v0[14] + 8);
    v11(v0[19], v0[13]);
  }

  v13 = *MEMORY[0x277CC6678];
  v5(v0[18], v13, v0[13]);
  v69 = v5;
  v70 = v11;
  if (!*(v4 + 16) || (sub_226C303C4(v0[18]), (v14 & 1) == 0))
  {
    v26 = v0[8];
    v27 = v0[9];
    v28 = v0[7];
    v11(v0[18], v0[13]);
    (*(v27 + 56))(v28, 1, 1, v26);
    goto LABEL_11;
  }

  v15 = v0[13];
  v16 = v0[9];
  v65 = v0[18];
  v66 = v0[8];
  v17 = v0[7];

  v11(v65, v15);
  sub_226D6E58C();

  v18 = v17;
  v5 = v69;
  if ((*(v16 + 48))(v18, 1, v66) == 1)
  {
LABEL_11:
    sub_226AC47B0(v0[7], &qword_27D7A8BE0, &unk_226D718F0);
    goto LABEL_12;
  }

  v19 = v0[17];
  v21 = v0[12];
  v20 = v0[13];
  v22 = v0[8];
  v23 = v0[9];
  v24 = v0[3];
  (*(v23 + 32))(v21, v0[7], v22);
  v69(v19, v13, v20);
  sub_226BEAFF4(v21, v19, v24);
  v70(v19, v20);
  v25 = v21;
  v5 = v69;
  (*(v23 + 8))(v25, v22);
LABEL_12:
  v29 = *MEMORY[0x277CC6670];
  v5(v0[16], v29, v0[13]);
  if (!*(v4 + 16) || (sub_226C303C4(v0[16]), (v30 & 1) == 0))
  {
    v43 = v0[8];
    v44 = v0[9];
    v45 = v0[6];
    v70(v0[16], v0[13]);
    (*(v44 + 56))(v45, 1, 1, v43);
    goto LABEL_17;
  }

  v31 = v0[16];
  v32 = v0[13];
  v33 = v0[9];
  v67 = v0[8];
  v34 = v0[6];

  v70(v31, v32);
  sub_226D6E58C();

  v35 = v34;
  v5 = v69;
  if ((*(v33 + 48))(v35, 1, v67) == 1)
  {
LABEL_17:
    sub_226AC47B0(v0[6], &qword_27D7A8BE0, &unk_226D718F0);
    goto LABEL_18;
  }

  v36 = v0[17];
  v37 = v0[13];
  v38 = v0[11];
  v39 = v0[8];
  v40 = v0[9];
  v41 = v0[3];
  (*(v40 + 32))(v38, v0[6], v39);
  v69(v36, v29, v37);
  sub_226BEAFF4(v38, v36, v41);
  v70(v36, v37);
  v42 = v38;
  v5 = v69;
  (*(v40 + 8))(v42, v39);
LABEL_18:
  v46 = *MEMORY[0x277CC6680];
  v5(v0[15], v46, v0[13]);
  if (*(v4 + 16) && (sub_226C303C4(v0[15]), (v47 & 1) != 0))
  {
    v48 = v0[15];
    v49 = v0[13];
    v50 = v0[9];
    v68 = v0[8];
    v51 = v0[5];

    v70(v48, v49);

    sub_226D6E58C();

    if ((*(v50 + 48))(v51, 1, v68) != 1)
    {
      v52 = v0[17];
      v53 = v0[13];
      v55 = v0[9];
      v54 = v0[10];
      v56 = v0[8];
      v57 = v0[3];
      (*(v55 + 32))(v54, v0[5], v56);
      v69(v52, v46, v53);
      sub_226BEAFF4(v54, v52, v57);
      v70(v52, v53);
      (*(v55 + 8))(v54, v56);
      goto LABEL_24;
    }
  }

  else
  {
    v58 = v0[15];
    v59 = v0[13];
    v60 = v0[8];
    v61 = v0[9];
    v62 = v0[5];

    v70(v58, v59);
    (*(v61 + 56))(v62, 1, 1, v60);
  }

  sub_226AC47B0(v0[5], &qword_27D7A8BE0, &unk_226D718F0);
LABEL_24:

  v63 = v0[1];

  return v63();
}

uint64_t sub_226BEAAF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D66F5C();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  if (qword_27D7A5F78 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6E07C();
  v14 = __swift_project_value_buffer(v13, qword_27D7A7E60);
  v15 = *(v7 + 16);
  v40 = a1;
  v15(v12, a1, v6);
  v38 = v14;
  v16 = sub_226D6E05C();
  v17 = sub_226D6E9EC();
  v18 = os_log_type_enabled(v16, v17);
  v39 = v7;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v36 = v2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v37 = v4;
    v22 = v21;
    v43 = v21;
    *v20 = 136315138;
    sub_226BEEB10(&qword_281062B80, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v23 = sub_226D6F1CC();
    v25 = v24;
    v26 = *(v7 + 8);
    v26(v12, v6);
    v27 = sub_226AC4530(v23, v25, &v43);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_226AB4000, v16, v17, "Scheduling immediate background task starting at: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v28 = v22;
    v4 = v37;
    MEMORY[0x22AA8BEE0](v28, -1, -1);
    v29 = v20;
    v2 = v36;
    MEMORY[0x22AA8BEE0](v29, -1, -1);
  }

  else
  {

    v26 = *(v7 + 8);
    v26(v12, v6);
  }

  v31 = v41;
  v30 = v42;
  (*(v42 + 104))(v41, *MEMORY[0x277CC6688], v4);
  v32 = v2[22];
  v33 = v2[23];
  __swift_project_boxed_opaque_existential_1(v2 + 19, v32);
  sub_226D66F4C();
  sub_226D6D41C();
  (*(v33 + 8))(v31, v9, v32, v33);
  v26(v9, v6);
  return (*(v30 + 8))(v31, v4);
}

uint64_t sub_226BEAFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D66F5C();
  v62 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v50 - v9;
  v11 = sub_226D6D4AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v60 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v50 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v50 - v18;
  sub_226BEEB10(&qword_27D7A66D8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v20 = sub_226D6E33C();
  v61 = v12;
  v21 = *(v12 + 16);
  if (v20)
  {
    v22 = a3;
  }

  else
  {
    v22 = a1;
  }

  v21(v19, v22, v11);
  if (qword_27D7A5F78 != -1)
  {
    swift_once();
  }

  v23 = sub_226D6E07C();
  v24 = __swift_project_value_buffer(v23, qword_27D7A7E60);
  v25 = *(v62 + 16);
  v59 = a2;
  v53 = v25;
  v54 = v62 + 16;
  v25(v10, a2, v6);
  v21(v16, v19, v11);
  v21(v60, a3, v11);
  v55 = v24;
  v26 = sub_226D6E05C();
  v27 = sub_226D6E9EC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v50[1] = v6;
    v29 = v28;
    v51 = swift_slowAlloc();
    v63[0] = v51;
    *v29 = 136315650;
    sub_226BEEB10(&qword_281062C38, 255, MEMORY[0x277CC6690], MEMORY[0x277CC66A8]);
    v30 = sub_226D6F1CC();
    v57 = v19;
    v32 = v31;
    v52 = *(v62 + 8);
    v52(v10, v6);
    v33 = sub_226AC4530(v30, v32, v63);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    sub_226BEEB10(&qword_281062B80, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v34 = sub_226D6F1CC();
    v36 = v35;
    v37 = *(v61 + 8);
    v37(v16, v11);
    v38 = sub_226AC4530(v34, v36, v63);

    *(v29 + 14) = v38;
    *(v29 + 22) = 2080;
    v39 = v60;
    v40 = sub_226D6F1CC();
    v42 = v41;
    v37(v39, v11);
    v43 = sub_226AC4530(v40, v42, v63);
    v19 = v57;

    *(v29 + 24) = v43;
    _os_log_impl(&dword_226AB4000, v26, v27, "Scheduling %s background task for %s at %s", v29, 0x20u);
    v44 = v51;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v44, -1, -1);
    v45 = v29;
    v46 = v37;
    MEMORY[0x22AA8BEE0](v45, -1, -1);
  }

  else
  {

    v46 = *(v61 + 8);
    v46(v60, v11);
    v46(v16, v11);
    v52 = *(v62 + 8);
    v52(v10, v6);
  }

  v47 = v58[22];
  v48 = v58[23];
  __swift_project_boxed_opaque_existential_1(v58 + 19, v47);
  (*(v48 + 16))(v59, v19, v47, v48);
  return (v46)(v19, v11);
}

uint64_t sub_226BEB7D0()
{
  v1 = v0;
  v2 = sub_226D66F5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[22];
  v7 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v6);
  v8 = *MEMORY[0x277CC6688];
  v22 = *(v3 + 104);
  v22(v5, v8, v2);
  v25 = v3 + 104;
  v9 = *(v7 + 24);

  v9(v5, &unk_226D76AA8, v0, v6, v7);

  v23 = *(v3 + 8);
  v24 = v3 + 8;
  v23(v5, v2);
  v10 = v0[22];
  v11 = v0[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v12 = v22;
  v22(v5, *MEMORY[0x277CC6678], v2);
  v13 = *(v11 + 32);

  v13(v5, &unk_226D76AB8, v0, v10, v11);

  v14 = v23;
  v23(v5, v2);
  v15 = v0[22];
  v16 = v0[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v12(v5, *MEMORY[0x277CC6670], v2);
  v17 = *(v16 + 32);

  v17(v5, &unk_226D76AC8, v0, v15, v16);

  v14(v5, v2);
  v18 = v0[22];
  v19 = v0[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v12(v5, *MEMORY[0x277CC6680], v2);
  v20 = *(v19 + 32);

  v20(v5, &unk_226D76AD8, v0, v18, v19);

  return (v23)(v5, v2);
}

uint64_t sub_226BEBB00(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_226D6D4AC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BEBBC0, 0, 0);
}

uint64_t sub_226BEBBC0()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = os_transaction_create();
  sub_226D6D46C();

  return MEMORY[0x2822009F8](sub_226BEBC40, v1, 0);
}

uint64_t sub_226BEBC40()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_226BEBD28;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v4, "backgroundDelivery/immediate", 28, 2, &unk_226D76BF8, v3, v5);
}

uint64_t sub_226BEBD28()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_226BEBF34;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_226BEBE50;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226BEBE50()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x2822009F8](sub_226BEBEC8, 0, 0);
}

uint64_t sub_226BEBEC8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226BEBF34()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_226BEBFC4, 0, 0);
}

uint64_t sub_226BEBFC4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226BEC030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6D4AC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BEC0F4, 0, 0);
}

uint64_t sub_226BEC0F4()
{
  v1 = *(v0 + 32);
  *(v0 + 64) = os_transaction_create();
  sub_226D6D46C();

  return MEMORY[0x2822009F8](sub_226BEC174, v1, 0);
}

uint64_t sub_226BEC174()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_226BEC264;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v5, "backgroundDelivery/hourly", 25, 2, &unk_226D76BE8, v3, v6);
}

void sub_226BEC264()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 32);

    MEMORY[0x2822009F8](sub_226BEC3A4, v3, 0);
  }
}

uint64_t sub_226BEC3A4()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  return MEMORY[0x2822009F8](sub_226BEC41C, 0, 0);
}

uint64_t sub_226BEC41C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}