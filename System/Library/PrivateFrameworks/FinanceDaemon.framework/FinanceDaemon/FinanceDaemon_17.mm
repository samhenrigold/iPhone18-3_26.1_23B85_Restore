uint64_t sub_226C6A144()
{
  v22 = v0;
  v1 = *(v0 + 192);
  (*(v0 + 160))(*(v0 + 120), *(v0 + 56), *(v0 + 96));
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 176);
  v7 = *(v0 + 120);
  v8 = *(v0 + 96);
  if (v5)
  {
    v19 = v4;
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v9 = 136315394;
    sub_226C6BBAC(&qword_27D7A8728, MEMORY[0x277CC7500], MEMORY[0x277CC7508]);
    v10 = sub_226D6F1CC();
    v12 = v11;
    v6(v7, v8);
    v13 = sub_226AC4530(v10, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v18 = v15;
    _os_log_impl(&dword_226AB4000, v3, v19, "Failed to handle event %s. %@", v9, 0x16u);
    sub_226AC47B0(v18, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {

    v6(v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_226C6A3F4()
{
  v17 = v0;
  (*(v0 + 160))(*(v0 + 112), *(v0 + 56), *(v0 + 96));
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 176);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  if (v3)
  {
    v15 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_226C6BBAC(&qword_27D7A8728, MEMORY[0x277CC7500], MEMORY[0x277CC7508]);
    v9 = sub_226D6F1CC();
    v11 = v10;
    v15(v5, v6);
    v12 = sub_226AC4530(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_226AB4000, v1, v2, "Handled notification event %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {

    v4(v5, v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v13 = *(v0 + 8);

  return v13(1);
}

uint64_t sub_226C6A624()
{
  v22 = v0;
  v1 = *(v0 + 208);
  (*(v0 + 160))(*(v0 + 120), *(v0 + 56), *(v0 + 96));
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 176);
  v7 = *(v0 + 120);
  v8 = *(v0 + 96);
  if (v5)
  {
    v19 = v4;
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v9 = 136315394;
    sub_226C6BBAC(&qword_27D7A8728, MEMORY[0x277CC7500], MEMORY[0x277CC7508]);
    v10 = sub_226D6F1CC();
    v12 = v11;
    v6(v7, v8);
    v13 = sub_226AC4530(v10, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v18 = v15;
    _os_log_impl(&dword_226AB4000, v3, v19, "Failed to handle event %s. %@", v9, 0x16u);
    sub_226AC47B0(v18, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {

    v6(v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_226C6A8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a1;
  v3[27] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8718, &qword_226D79638);
  v3[28] = swift_task_alloc();
  v5 = sub_226D6873C();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v6 = sub_226D6867C();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[23] = &type metadata for BankConnectEnvironmentImplementation;
  v3[24] = sub_226B6CA08();
  v7 = swift_allocObject();
  v3[20] = v7;
  sub_226B42014(a2, v7 + 16);

  return MEMORY[0x2822009F8](sub_226C6AA7C, 0, 0);
}

void *sub_226C6AA7C()
{
  v58 = v0;
  v57 = *(v0 + 208);

  sub_226C67A84(&v57);
  result = v57;
  *(v0 + 296) = v57;
  v2 = result[2];
  *(v0 + 304) = v2;
  v3 = MEMORY[0x277D84F98];
  if (v2)
  {
    v4 = 0;
    *(v0 + 376) = *(*(v0 + 264) + 80);
    while (1)
    {
      *(v0 + 320) = v4;
      *(v0 + 328) = v3;
      *(v0 + 312) = v3;
      v11 = *(v0 + 296);
      if (v4 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v12 = *(v0 + 288);
      v13 = *(v0 + 256);
      v14 = *(v0 + 264);
      v16 = *(v0 + 240);
      v15 = *(v0 + 248);
      v17 = *(v0 + 232);
      v19 = *(v14 + 16);
      v14 += 16;
      v18 = v19;
      v20 = *(v14 + 56);
      v21 = v11 + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + v20 * v4;
      *(v0 + 336) = v20;
      *(v0 + 344) = v19;
      *(v0 + 352) = v14 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19(v12, v21, v13);
      sub_226D6F36C();
      sub_226D6866C();
      sub_226C6BBAC(&qword_27D7A8720, MEMORY[0x277CC7530], MEMORY[0x277CC7538]);
      sub_226D6E30C();
      (*(v16 + 8))(v15, v17);
      sub_226D6865C();
      sub_226D6E42C();

      sub_226D6863C();
      if (v22)
      {
        sub_226D6E42C();
      }

      v23 = *(v0 + 104);
      v24 = *(v0 + 136);
      *(v0 + 48) = *(v0 + 120);
      *(v0 + 64) = v24;
      *(v0 + 80) = *(v0 + 152);
      *(v0 + 16) = *(v0 + 88);
      *(v0 + 32) = v23;
      v25 = sub_226D6F34C();
      *(v0 + 360) = v25;
      if (!*(v3 + 16))
      {
        break;
      }

      v26 = sub_226C2FE90(v25);
      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = *(v0 + 256);
      v29 = *(v0 + 264);
      v30 = *(v0 + 224);
      v18(v30, *(v3 + 56) + v26 * v20, v28);
      (*(v29 + 56))(v30, 0, 1, v28);
      sub_226AC47B0(v30, &qword_27D7A8718, &qword_226D79638);
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 280);
      v31 = *(v0 + 288);
      v33 = *(v0 + 256);
      v34 = sub_226D6E07C();
      __swift_project_value_buffer(v34, qword_28105F710);
      v18(v32, v31, v33);
      v35 = sub_226D6E05C();
      v36 = sub_226D6E9EC();
      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 280);
      v39 = *(v0 + 288);
      v41 = *(v0 + 256);
      v40 = *(v0 + 264);
      if (v37)
      {
        v5 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v57 = v55;
        *v5 = 136315138;
        sub_226C6BBAC(&qword_27D7A8728, MEMORY[0x277CC7500], MEMORY[0x277CC7508]);
        v56 = v39;
        v6 = sub_226D6F1CC();
        v8 = v7;
        v9 = *(v40 + 8);
        v9(v38, v41);
        v10 = sub_226AC4530(v6, v8, &v57);

        *(v5 + 4) = v10;
        _os_log_impl(&dword_226AB4000, v35, v36, "Skipped notification event %s.", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        MEMORY[0x22AA8BEE0](v55, -1, -1);
        MEMORY[0x22AA8BEE0](v5, -1, -1);

        result = (v9)(v56, v41);
      }

      else
      {

        v42 = *(v40 + 8);
        v42(v38, v41);
        result = (v42)(v39, v41);
      }

      v4 = *(v0 + 320) + 1;
      v3 = MEMORY[0x277D84F98];
      if (v4 == *(v0 + 304))
      {
        goto LABEL_17;
      }
    }

    v43 = *(v0 + 224);
    (*(*(v0 + 264) + 56))(v43, 1, 1, *(v0 + 256));
    sub_226AC47B0(v43, &qword_27D7A8718, &qword_226D79638);
    v44 = __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
    v45 = swift_task_alloc();
    *(v0 + 368) = v45;
    *v45 = v0;
    v45[1] = sub_226C6B110;
    v46 = *(v0 + 288);
    v47 = *(v0 + 216);

    return sub_226C694F0(v46, v44, v47);
  }

  else
  {
LABEL_17:

    v48 = *(v3 + 16);
    if (v48)
    {
      v49 = *(v0 + 264);
      v50 = sub_226C24CC4(*(v3 + 16), 0);
      sub_226C3B594(&v57, &v50[(*(v49 + 80) + 32) & ~*(v49 + 80)], v48, MEMORY[0x277D84F98]);
      v52 = v51;
      v53 = v57;

      result = sub_226AD3C20(v53);
      if (v52 != v48)
      {
LABEL_25:
        __break(1u);
        return result;
      }
    }

    else
    {

      v50 = MEMORY[0x277D84F90];
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 160));

    v54 = *(v0 + 8);

    return v54(v50);
  }
}

uint64_t sub_226C6B110(char a1)
{
  *(*v1 + 380) = a1;

  return MEMORY[0x2822009F8](sub_226C6B210, 0, 0);
}

uint64_t sub_226C6B210()
{
  v84 = v1;
  if ((*(v1 + 380) & 1) == 0)
  {
    result = (*(*(v1 + 264) + 8))(*(v1 + 288), *(v1 + 256));
    v14 = *(v1 + 328);
    v15 = *(v1 + 312);
    goto LABEL_17;
  }

  v2 = *(v1 + 360);
  v3 = *(v1 + 312);
  (*(v1 + 344))(*(v1 + 272), *(v1 + 288), *(v1 + 256));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 200) = v3;
  v5 = sub_226C2FE90(v2);
  v7 = *(v3 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v0 = v6;
  if (*(*(v1 + 312) + 24) >= v10)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_13:
    v19 = v5;
    sub_226C398D4();
    v5 = v19;
    v15 = *(v1 + 200);
    if (v0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v20 = *(v1 + 360);
    v21 = *(v1 + 336);
    v22 = *(v1 + 288);
    v24 = *(v1 + 264);
    v23 = *(v1 + 272);
    v25 = *(v1 + 256);
    v15[(v5 >> 6) + 8] |= 1 << v5;
    *(v15[6] + 8 * v5) = v20;
    (*(v24 + 32))(v15[7] + v21 * v5, v23, v25);
    result = (*(v24 + 8))(v22, v25);
    v26 = v15[2];
    v9 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v9)
    {
      goto LABEL_42;
    }

    v15[2] = v27;
    goto LABEL_16;
  }

  v11 = *(v1 + 360);
  sub_226C35044(v10, isUniquelyReferenced_nonNull_native);
  v5 = sub_226C2FE90(v11);
  if ((v0 & 1) != (v12 & 1))
  {

    return sub_226D6F25C();
  }

LABEL_10:
  v15 = *(v1 + 200);
  if ((v0 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v16 = *(v1 + 288);
  v17 = *(v1 + 264);
  v18 = *(v1 + 256);
  (*(v17 + 40))(v15[7] + *(v1 + 336) * v5, *(v1 + 272), v18);
  result = (*(v17 + 8))(v16, v18);
LABEL_16:
  v14 = v15;
LABEL_17:
  v28 = *(v1 + 320) + 1;
  if (v28 == *(v1 + 304))
  {
LABEL_18:

    v29 = *(v14 + 16);
    if (!v29)
    {

      v31 = MEMORY[0x277D84F90];
      goto LABEL_37;
    }

    v30 = *(v1 + 264);
    v31 = sub_226C24CC4(*(v14 + 16), 0);
    sub_226C3B594(&v83, &v31[(*(v30 + 80) + 32) & ~*(v30 + 80)], v29, v14);
    v33 = v32;
    v34 = v83;

    result = sub_226AD3C20(v34);
    if (v33 == v29)
    {

LABEL_37:
      __swift_destroy_boxed_opaque_existential_0Tm((v1 + 160));

      v78 = *(v1 + 8);

      return v78(v31);
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  v81 = v15;
  v82 = v14;
  while (1)
  {
    *(v1 + 320) = v28;
    *(v1 + 328) = v14;
    *(v1 + 312) = v15;
    v36 = *(v1 + 296);
    if (v28 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    v37 = *(v1 + 288);
    v38 = *(v1 + 256);
    v39 = *(v1 + 264);
    v41 = *(v1 + 240);
    v40 = *(v1 + 248);
    v42 = *(v1 + 232);
    v44 = *(v39 + 16);
    v39 += 16;
    v43 = v44;
    v45 = *(v39 + 56);
    v46 = v36 + ((*(v1 + 376) + 32) & ~*(v1 + 376)) + v45 * v28;
    *(v1 + 336) = v45;
    *(v1 + 344) = v44;
    *(v1 + 352) = v39 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v37, v46, v38);
    sub_226D6F36C();
    sub_226D6866C();
    sub_226C6BBAC(&qword_27D7A8720, MEMORY[0x277CC7530], MEMORY[0x277CC7538]);
    sub_226D6E30C();
    (*(v41 + 8))(v40, v42);
    sub_226D6865C();
    sub_226D6E42C();

    sub_226D6863C();
    if (v47)
    {
      sub_226D6E42C();
    }

    v48 = *(v1 + 104);
    v49 = *(v1 + 136);
    *(v1 + 48) = *(v1 + 120);
    *(v1 + 64) = v49;
    *(v1 + 80) = *(v1 + 152);
    *(v1 + 16) = *(v1 + 88);
    *(v1 + 32) = v48;
    v50 = sub_226D6F34C();
    *(v1 + 360) = v50;
    if (!*(v82 + 16))
    {
      break;
    }

    v51 = sub_226C2FE90(v50);
    if ((v52 & 1) == 0)
    {
      break;
    }

    v54 = *(v1 + 256);
    v53 = *(v1 + 264);
    v55 = *(v1 + 224);
    v43(v55, *(v82 + 56) + v51 * v45, v54);
    (*(v53 + 56))(v55, 0, 1, v54);
    sub_226AC47B0(v55, &qword_27D7A8718, &qword_226D79638);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v57 = *(v1 + 280);
    v56 = *(v1 + 288);
    v58 = *(v1 + 256);
    v59 = sub_226D6E07C();
    __swift_project_value_buffer(v59, qword_28105F710);
    v43(v57, v56, v58);
    v60 = sub_226D6E05C();
    v61 = sub_226D6E9EC();
    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v1 + 280);
    v64 = *(v1 + 288);
    v66 = *(v1 + 256);
    v65 = *(v1 + 264);
    if (v62)
    {
      v67 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v83 = v79;
      *v67 = 136315138;
      sub_226C6BBAC(&qword_27D7A8728, MEMORY[0x277CC7500], MEMORY[0x277CC7508]);
      v80 = v64;
      v68 = sub_226D6F1CC();
      v70 = v69;
      v71 = *(v65 + 8);
      v71(v63, v66);
      v72 = sub_226AC4530(v68, v70, &v83);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_226AB4000, v60, v61, "Skipped notification event %s.", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      MEMORY[0x22AA8BEE0](v79, -1, -1);
      MEMORY[0x22AA8BEE0](v67, -1, -1);

      result = (v71)(v80, v66);
    }

    else
    {

      v35 = *(v65 + 8);
      v35(v63, v66);
      result = (v35)(v64, v66);
    }

    v28 = *(v1 + 320) + 1;
    v15 = v81;
    v14 = v82;
    if (v28 == *(v1 + 304))
    {
      goto LABEL_18;
    }
  }

  v73 = *(v1 + 224);
  (*(*(v1 + 264) + 56))(v73, 1, 1, *(v1 + 256));
  sub_226AC47B0(v73, &qword_27D7A8718, &qword_226D79638);
  v74 = __swift_project_boxed_opaque_existential_1((v1 + 160), *(v1 + 184));
  v75 = swift_task_alloc();
  *(v1 + 368) = v75;
  *v75 = v1;
  v75[1] = sub_226C6B110;
  v76 = *(v1 + 288);
  v77 = *(v1 + 216);

  return sub_226C694F0(v76, v74, v77);
}

void sub_226C6BA80(uint64_t a1)
{
  sub_226D6D4AC();
  if (v1 <= 0x3F)
  {
    sub_226B20350(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226C6BB28(uint64_t a1)
{
  *(a1 + 8) = sub_226C6BBAC(&qword_27D7A8730, type metadata accessor for BankConnectNotificationEventsFetchTask, &unk_226D795D0);
  result = sub_226C6BBAC(&qword_27D7A8738, type metadata accessor for BankConnectNotificationEventsFetchTask, &unk_226D79688);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226C6BBAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226C6BBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v6 = sub_226D6D52C();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_226D6925C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6E07C();
  __swift_project_value_buffer(v13, qword_28105F5E0);
  v14 = *(v10 + 16);
  v35 = a1;
  v14(v12, a1, v9);
  v15 = sub_226D6E05C();
  v16 = sub_226D6E9EC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v3;
    v18 = v17;
    v30 = swift_slowAlloc();
    v36 = v30;
    *v18 = 136315138;
    v29 = v16;
    MEMORY[0x22AA852F0]();
    sub_226C6D74C(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_226D6F1CC();
    v31 = a3;
    v21 = v20;
    (*(v33 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
    v22 = sub_226AC4530(v19, v21, &v36);
    a3 = v31;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_226AB4000, v15, v29, "Inserting/updating PredictedTransaction with ID: %s", v18, 0xCu);
    v23 = v30;
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
    MEMORY[0x22AA8BEE0](v18, -1, -1);
  }

  else
  {

    v24 = (*(v10 + 8))(v12, v9);
  }

  MEMORY[0x28223BE20](v24);
  v25 = v35;
  *&v28[-32] = v26;
  *&v28[-24] = v25;
  *&v28[-16] = a3;
  return sub_226D6EA6C();
}

void sub_226C6BF94(uint64_t a1)
{
  v1 = sub_226D676AC();
  sub_226D6EB7C();
}

void sub_226C6C018(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v56[1] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D52C();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6925C();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6C6EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6C1EC();
  swift_allocObject();
  sub_226D6C1DC();
  v16 = sub_226D6C1CC();
  if (!v3)
  {

    v56[0] = 0;
    if ([a3 save_])
    {
      v17 = v56[0];

      return;
    }

    v18 = v56[0];
    v4 = sub_226D6D04C();

    swift_willThrow();
  }

  v56[0] = v4;
  v19 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v20 = (*(v13 + 88))(v15, v12);
    if (v20 == *MEMORY[0x277CC8358])
    {

      (*(v13 + 96))(v15, v12);
      v21 = sub_226D66EDC();
      sub_226C6D74C(&qword_27D7A7DC0, MEMORY[0x277CC65F8], MEMORY[0x277CC6600]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CC65D8], v21);
      swift_willThrow();
      (*(v52 + 8))(v15, v53);
LABEL_10:

      return;
    }

    if (v20 == *MEMORY[0x277CC8360])
    {

      v23 = sub_226D66EDC();
      sub_226C6D74C(&qword_27D7A7DC0, MEMORY[0x277CC65F8], MEMORY[0x277CC6600]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277CC65D8], v23);
      swift_willThrow();
      goto LABEL_10;
    }

    (*(v13 + 8))(v15, v12);
  }

  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v25 = sub_226D6E07C();
  __swift_project_value_buffer(v25, qword_28105F5E0);
  v27 = v54;
  v26 = v55;
  v28 = v11;
  (*(v54 + 16))(v11, a1, v55);
  v29 = v4;
  v30 = sub_226D6E05C();
  v31 = sub_226D6E9CC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v49 = v31;
    v33 = v32;
    v48 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v56[0] = v50;
    *v33 = 136315394;
    v34 = v51;
    v47 = v30;
    MEMORY[0x22AA852F0]();
    sub_226C6D74C(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v35 = v53;
    v36 = sub_226D6F1CC();
    v37 = v28;
    v39 = v38;
    (*(v52 + 8))(v34, v35);
    (*(v27 + 8))(v37, v26);
    v40 = sub_226AC4530(v36, v39, v56);

    *(v33 + 4) = v40;
    *(v33 + 12) = 2112;
    v41 = v4;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 14) = v42;
    v43 = v47;
    v44 = v48;
    *v48 = v42;
    _os_log_impl(&dword_226AB4000, v43, v49, "Failed to save PredictedTransaction with ID: %s error: %@", v33, 0x16u);
    sub_226B17298(v44);
    MEMORY[0x22AA8BEE0](v44, -1, -1);
    v45 = v50;
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x22AA8BEE0](v45, -1, -1);
    MEMORY[0x22AA8BEE0](v33, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v11, v26);
  }

  swift_willThrow();
}

void sub_226C6C720(uint64_t a1, uint64_t a2)
{
  v5 = sub_226D6D52C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F5E0);
  (*(v6 + 16))(v8, a1, v5);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v26 = v2;
    v24 = v14;
    v27 = v14;
    *v13 = 136315138;
    sub_226C6D74C(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_226D6F1CC();
    v16 = a1;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_226AC4530(v15, v18, &v27);
    a1 = v16;

    *(v13 + 4) = v19;
    _os_log_impl(&dword_226AB4000, v10, v11, "Deleting PredictedTransaction with ID %s.", v13, 0xCu);
    v20 = v24;
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v21 = sub_226D676AC();
  MEMORY[0x28223BE20](v21);
  *(&v23 - 2) = a1;
  *(&v23 - 1) = v22;
  sub_226D6EB7C();
}

void sub_226C6CA1C(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  sub_226D6AFBC();
  v4 = sub_226D6AFAC();
  if (!v2)
  {
    v5 = v4;
    if (v4)
    {
      [a2 deleteObject_];
      v12[0] = 0;
      if ([a2 save_])
      {
        v6 = v12[0];
      }

      else
      {
        v11 = v12[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v7 = sub_226D6E07C();
      __swift_project_value_buffer(v7, qword_28105F5E0);
      v8 = sub_226D6E05C();
      v9 = sub_226D6E9CC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_226AB4000, v8, v9, "Failed to find PredictedTransaction.", v10, 2u);
        MEMORY[0x22AA8BEE0](v10, -1, -1);
      }
    }
  }
}

void sub_226C6CBF4()
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F5E0);
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226AB4000, v1, v2, "Deleting all PredictedTransactions.", v3, 2u);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
  }

  v4 = sub_226D676AC();
  MEMORY[0x28223BE20](v4);
  sub_226D6EB7C();
}

void sub_226C6CD44(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  sub_226D6AFBC();
  v2 = [swift_getObjCClassFromMetadata() fetchRequest];
  v3 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v8[0] = 0;
  v4 = [a1 executeRequest:v3 error:v8];
  if (v4)
  {
    v5 = v4;
    v6 = v8[0];
  }

  else
  {
    v7 = v8[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

void sub_226C6CE60(void *a1, uint64_t a2, char a3)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentQueryGenerationToken];
  v33[0] = 0;
  v12 = [a1 setQueryGenerationFromToken:v11 error:v33];

  v13 = v33[0];
  if (!v12)
  {
    v17 = v33[0];
    sub_226D6D04C();

LABEL_6:
    swift_willThrow();
    return;
  }

  sub_226D69F0C();
  v14 = v13;
  v15 = sub_226D69D7C();
  if (v3)
  {
    return;
  }

  v16 = v15;
  if (!v15)
  {
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v18 = sub_226D6E07C();
    __swift_project_value_buffer(v18, qword_28105F600);
    (*(v8 + 16))(v10, a2, v7);
    v19 = sub_226D6E05C();
    v20 = sub_226D6E9CC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33[0] = v32;
      *v21 = 136315394;
      sub_226C6D74C(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v22 = sub_226D6F1CC();
      v24 = v23;
      (*(v8 + 8))(v10, v7);
      v25 = sub_226AC4530(v22, v24, v33);

      *(v21 + 4) = v25;
      *(v21 + 12) = 1024;
      *(v21 + 14) = a3 & 1;
      _os_log_impl(&dword_226AB4000, v19, v20, "Failed to find account with %s, unable to update the user suppressed notifications to: %{BOOL}d.", v21, 0x12u);
      v26 = v32;
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x22AA8BEE0](v26, -1, -1);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v28 = sub_226D66EDC();
    sub_226C6D74C(&qword_27D7A7DC0, MEMORY[0x277CC65F8], MEMORY[0x277CC6600]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277CC65D8], v28);
    goto LABEL_6;
  }

  sub_226D69C6C();
  swift_allocObject();
  sub_226D69C5C();
  sub_226D69C4C();

  v33[0] = 0;
  if ([a1 save_])
  {
    v27 = v33[0];
  }

  else
  {
    v30 = v33[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

void sub_226C6D2F8(void *a1, uint64_t a2, char a3)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentQueryGenerationToken];
  v33[0] = 0;
  v12 = [a1 setQueryGenerationFromToken:v11 error:v33];

  v13 = v33[0];
  if (!v12)
  {
    v18 = v33[0];
    sub_226D6D04C();

LABEL_7:
    swift_willThrow();
    return;
  }

  sub_226D6AFBC();
  v14 = v13;
  v15 = sub_226D6AFAC();
  if (v3)
  {
    return;
  }

  if (!v15)
  {
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v19 = sub_226D6E07C();
    __swift_project_value_buffer(v19, qword_28105F600);
    (*(v8 + 16))(v10, a2, v7);
    v20 = sub_226D6E05C();
    v21 = sub_226D6E9CC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33[0] = v32;
      *v22 = 136315394;
      sub_226C6D74C(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_226D6F1CC();
      v25 = v24;
      (*(v8 + 8))(v10, v7);
      v26 = sub_226AC4530(v23, v25, v33);

      *(v22 + 4) = v26;
      *(v22 + 12) = 1024;
      *(v22 + 14) = a3 & 1;
      _os_log_impl(&dword_226AB4000, v20, v21, "Failed to find a predicted transaction with %s, unable to mark it as suppressed by the user: %{BOOL}d.", v22, 0x12u);
      v27 = v32;
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x22AA8BEE0](v27, -1, -1);
      MEMORY[0x22AA8BEE0](v22, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v29 = sub_226D66EDC();
    sub_226C6D74C(&qword_27D7A7DC0, MEMORY[0x277CC65F8], MEMORY[0x277CC6600]);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277CC65D8], v29);
    goto LABEL_7;
  }

  v16 = v15;
  [v15 setIsSuppressedByUser_];
  v33[0] = 0;
  if ([a1 save_])
  {
    v17 = v33[0];
  }

  else
  {
    v28 = v33[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226C6D74C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask(uint64_t a1)
{
  result = qword_27D7A8790;
  if (!qword_27D7A8790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226C6D8E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8788, &qword_226D797B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  v5 = sub_226D6921C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v21[1] = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v13 = swift_dynamicCast();
  v14 = *(v6 + 56);
  if (v13)
  {
    v14(v4, 0, 1, v5);
    v15 = MEMORY[0x277CC77F8];
    sub_226C771A8(v4, v11, MEMORY[0x277CC77F8]);
    sub_226C771A8(v11, v8, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
        v18 = sub_226D6B49C();
        v19 = *(*(v18 - 8) + 8);
        v19(&v8[v17], v18);
        v19(v8, v18);
        return 9;
      }

      else
      {
        return 6;
      }
    }

    else
    {
      sub_226C77210(v8, MEMORY[0x277CC77F8]);
      return 8;
    }
  }

  else
  {
    v14(v4, 1, 1, v5);
    sub_226AC47B0(v4, &qword_27D7A8788, &qword_226D797B0);
    return 0;
  }
}

unint64_t sub_226C6DB80(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8788, &qword_226D797B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  v10 = sub_226D6921C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v10);
    sub_226C771A8(v9, v13, MEMORY[0x277CC77F8]);
    v17 = sub_226B31344();
    sub_226C77210(v13, MEMORY[0x277CC77F8]);
  }

  else
  {
    v16(v9, 1, 1, v10);
    sub_226AC47B0(v9, &qword_27D7A8788, &qword_226D797B0);
    swift_getErrorValue();
    v17 = sub_226B317B8(v26[2], v26[3]);
  }

  v27 = v17;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
  v19 = (v2 + *(type metadata accessor for OrderWebServiceFetchChangesTask(0) + 24));
  v20 = v19[1];
  *v6 = *v19;
  *(v6 + 1) = v20;
  v21 = sub_226D6D1AC();
  (*(*(v21 - 8) + 16))(&v6[v18], v2, v21);
  swift_storeEnumTagMultiPayload();

  v22 = sub_226CF3FBC();
  v24 = v23;
  sub_226C77210(v6, type metadata accessor for OrderWebServiceTaskIdentifier);
  sub_226D48940(v22, v24, 0xD000000000000013, 0x8000000226D81C60);
  return v27;
}

unint64_t sub_226C6DECC(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8788, &qword_226D797B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = sub_226D6921C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v10, 0, 1, v11);
    sub_226C771A8(v10, v14, MEMORY[0x277CC77F8]);
    v18 = sub_226B31344();
    sub_226C77210(v14, MEMORY[0x277CC77F8]);
  }

  else
  {
    v17(v10, 1, 1, v11);
    sub_226AC47B0(v10, &qword_27D7A8788, &qword_226D797B0);
    swift_getErrorValue();
    v18 = sub_226B317B8(v23[2], v23[3]);
  }

  v24 = v18;
  a2(0);

  sub_226D6B45C();
  swift_storeEnumTagMultiPayload();
  v19 = sub_226CF3FBC();
  v21 = v20;
  sub_226C77210(v7, type metadata accessor for OrderWebServiceTaskIdentifier);
  sub_226D48940(v19, v21, 0xD000000000000013, 0x8000000226D81C60);
  return v24;
}

unint64_t sub_226C6E218(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8788, &qword_226D797B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = sub_226D6921C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v10, 0, 1, v11);
    sub_226C771A8(v10, v14, MEMORY[0x277CC77F8]);
    v18 = sub_226B31344();
    sub_226C77210(v14, MEMORY[0x277CC77F8]);
  }

  else
  {
    v17(v10, 1, 1, v11);
    sub_226AC47B0(v10, &qword_27D7A8788, &qword_226D797B0);
    swift_getErrorValue();
    v18 = sub_226B317B8(v23[2], v23[3]);
  }

  v24 = v18;
  a2(0);

  sub_226D6B45C();
  swift_storeEnumTagMultiPayload();
  v19 = sub_226CF3FBC();
  v21 = v20;
  sub_226C77210(v7, type metadata accessor for OrderWebServiceTaskIdentifier);
  sub_226D48940(v19, v21, 0xD000000000000013, 0x8000000226D81C60);
  return v24;
}

unint64_t sub_226C6E52C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8788, &qword_226D797B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  v10 = sub_226D6921C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v10);
    sub_226C771A8(v9, v13, MEMORY[0x277CC77F8]);
    v17 = sub_226B31344();
    sub_226C77210(v13, MEMORY[0x277CC77F8]);
  }

  else
  {
    v16(v9, 1, 1, v10);
    sub_226AC47B0(v9, &qword_27D7A8788, &qword_226D797B0);
    swift_getErrorValue();
    v17 = sub_226B317B8(v26[2], v26[3]);
  }

  v27 = v17;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
  v19 = (v2 + *(type metadata accessor for OrderWebServiceLogTask(0) + 20));
  v20 = v19[1];
  *v6 = *v19;
  *(v6 + 1) = v20;
  v21 = sub_226D6D1AC();
  (*(*(v21 - 8) + 16))(&v6[v18], v2, v21);
  swift_storeEnumTagMultiPayload();

  v22 = sub_226CF3FBC();
  v24 = v23;
  sub_226C77210(v6, type metadata accessor for OrderWebServiceTaskIdentifier);
  sub_226D48940(v22, v24, 0xD000000000000013, 0x8000000226D81C60);
  return v27;
}

void sub_226C6E874(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = sub_226D6921C();
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = sub_226D66DFC();
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  if (a2)
  {
    v23 = a3;
    v24 = a1;
    v18 = a2;
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
    if (swift_dynamicCast())
    {
      sub_226C771A8(v17, v14, MEMORY[0x277CC6528]);
      sub_226C76578(v14, v18, v23);

      v20 = MEMORY[0x277CC6528];
      v21 = v14;
    }

    else
    {

      v24 = a1;
      v22 = a1;
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_8;
      }

      sub_226C771A8(v11, v8, MEMORY[0x277CC77F8]);
      sub_226C76B14(v8, v18, v23);

      v20 = MEMORY[0x277CC77F8];
      v21 = v8;
    }

    sub_226C77210(v21, v20);
LABEL_8:
  }
}

void sub_226C6EC08(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned int a6, void (*a7)(char *, uint64_t, void, uint64_t, uint64_t, void), void (*a8)(char *, uint64_t, void, uint64_t, uint64_t, void))
{
  v30 = a8;
  v31 = a7;
  v32 = a6;
  v34 = a5;
  v33 = a4;
  v11 = sub_226D6921C();
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = sub_226D66DFC();
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  v35 = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    sub_226C771A8(v22, v19, MEMORY[0x277CC6528]);
    v31(v19, a2, a3 & 1, v33, v34, v32);
    v24 = MEMORY[0x277CC6528];
    v25 = v19;
LABEL_5:
    sub_226C77210(v25, v24);
    goto LABEL_6;
  }

  v26 = v33;
  v27 = v34;

  v35 = a1;
  v28 = a1;
  if (swift_dynamicCast())
  {
    sub_226C771A8(v16, v13, MEMORY[0x277CC77F8]);
    v30(v13, a2, a3 & 1, v26, v27, v32);
    v24 = MEMORY[0x277CC77F8];
    v25 = v13;
    goto LABEL_5;
  }

LABEL_6:
}

void sub_226C6EEB0(void *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(char *, uint64_t, void, uint64_t), void (*a6)(char *, uint64_t, void, uint64_t))
{
  v28 = a6;
  v29 = a5;
  v30 = a4;
  v9 = sub_226D6921C();
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = sub_226D66DFC();
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  v31 = a1;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    sub_226C771A8(v20, v17, MEMORY[0x277CC6528]);
    v29(v17, a2, a3 & 1, v30);
    v22 = MEMORY[0x277CC6528];
    v23 = v17;
LABEL_5:
    sub_226C77210(v23, v22);
    goto LABEL_6;
  }

  v24 = a3;
  v25 = v30;

  v31 = a1;
  v26 = a1;
  if (swift_dynamicCast())
  {
    sub_226C771A8(v14, v11, MEMORY[0x277CC77F8]);
    v28(v11, a2, v24 & 1, v25);
    v22 = MEMORY[0x277CC77F8];
    v23 = v11;
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t sub_226C6F118()
{
  v1 = v0;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000029, 0x8000000226D85940);
  PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask(0);
  MEMORY[0x22AA8A510](*(v1 + *(PendingApplePayOrderTask + 20)), *(v1 + *(PendingApplePayOrderTask + 20) + 8));
  MEMORY[0x22AA8A510](0xD000000000000012, 0x8000000226D856A0);
  MEMORY[0x22AA8A510](*(v1 + *(PendingApplePayOrderTask + 24)), *(v1 + *(PendingApplePayOrderTask + 24) + 8));
  MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D85840);
  sub_226D6D1AC();
  sub_226C77874(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v3 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v3);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226C6F270(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_226D6B03C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_226D6B49C();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask(0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C6F3C8, 0, 0);
}

uint64_t sub_226C6F3C8()
{
  v34 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[8];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226C775F8(v3, v2, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  sub_226C775F8(v3, v1, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  v9 = v0[17];
  if (v7)
  {
    v28 = v0[16];
    loga = v5;
    v10 = v0[14];
    v30 = v6;
    v12 = v0[12];
    v11 = v0[13];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v13 = 136315394;

    sub_226D6B45C();
    sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v14 = sub_226D6F1CC();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    sub_226C77210(v9, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
    v17 = sub_226AC4530(v14, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_226D6D1AC();
    sub_226C77874(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v18 = sub_226D6F1CC();
    v20 = v19;
    sub_226C77210(v28, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
    v21 = sub_226AC4530(v18, v20, &v33);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_226AB4000, loga, v30, "Fetching order %s from web service %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v29, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  else
  {

    sub_226C77210(v8, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
    sub_226C77210(v9, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  }

  sub_226D6B02C();
  result = sub_226D6B01C();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v23 = v0[11];
    v24 = sub_226C0B798(v0[8]);
    v0[18] = v24;
    v25 = swift_task_alloc();
    v0[19] = v25;
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    log = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
    v26 = swift_task_alloc();
    v0[20] = v26;
    *v26 = v0;
    v26[1] = sub_226C6F84C;
    v27 = MEMORY[0x277CC7EB8];

    return (log)(v0 + 2, &unk_226D797C8, v25, v27);
  }

  return result;
}

uint64_t sub_226C6F84C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_226C6FA50;
  }

  else
  {

    v2 = sub_226C6F968;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C6F968()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  v5 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  (*(v2 + 8))(v1, v3);

  *v4 = v9;
  *(v4 + 16) = v8;
  *(v4 + 32) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_226C6FA50()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226C6FB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  v7 = (*MEMORY[0x277CC7910] + MEMORY[0x277CC7910]);
  v5 = swift_task_alloc();
  *(v3 + 64) = v5;
  *v5 = v3;
  v5[1] = sub_226C6FBDC;

  return v7(v3 + 16, a3);
}

uint64_t sub_226C6FBDC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226C6FD0C, 0, 0);
  }
}

uint64_t sub_226C6FD0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  *(v3 + 32) = *(v0 + 48);
  *v3 = v1;
  *(v3 + 16) = v2;
  return (*(v0 + 8))();
}

void sub_226C6FD34(char *a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v117 = a7;
  v123 = a5;
  v124 = a6;
  v121 = a3;
  v122 = a4;
  v132 = a2;
  v120 = a8;
  v147 = *MEMORY[0x277D85DE8];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  MEMORY[0x28223BE20](v118);
  v119 = &v107 - v9;
  v10 = type metadata accessor for OrderNotificationCenter.Continuation(0);
  MEMORY[0x28223BE20](v10 - 8);
  v114 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated);
  v116 = (&v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v126 = (&v107 - v14);
  PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask(0);
  MEMORY[0x28223BE20](PendingApplePayOrderTask);
  v125 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v127 = &v107 - v18;
  MEMORY[0x28223BE20](v19);
  v128 = &v107 - v20;
  v131 = sub_226D6B49C();
  v21 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v107 - v25;
  sub_226D6AF9C();
  v129 = a1;

  sub_226D6B45C();
  v27 = v130;
  v28 = sub_226D6AF6C();
  if (v27)
  {
    (*(v21 + 8))(v26, v131);
  }

  else
  {
    v29 = v28;
    v30 = v128;
    v112 = v23;
    v113 = PendingApplePayOrderTask;
    v32 = *(v21 + 8);
    v31 = v21 + 8;
    v33 = v131;
    v32(v26, v131);
    v111 = v32;
    if (v29)
    {
      v110 = v31;
      v128 = v29;
      v130 = 0;
      v34 = sub_226B31FA8();
      v35 = type metadata accessor for WalletMessageUpdater();
      v36 = swift_allocObject();
      v37 = sub_226D69BFC();
      v108 = MEMORY[0x22AA85C90]();
      *(&v144 + 1) = &type metadata for ClassicOrderBiomeStream;
      *&v145[0] = &off_283A6D820;
      sub_226C02324(v145 + 8);
      v38 = sub_226D6B5EC();
      v39 = MEMORY[0x277CC7F68];
      v141 = v38;
      v142 = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(&v140);
      sub_226D6B58C();
      v138 = v38;
      v139 = v39;
      __swift_allocate_boxed_opaque_existential_1(&v137);
      sub_226D6B5AC();
      v40 = sub_226D6827C();
      v135 = v35;
      v136 = sub_226C77874(&qword_281062070, type metadata accessor for WalletMessageUpdater, &protocol conformance descriptor for WalletMessageUpdater);
      *&v134 = v36;
      type metadata accessor for ManagedOrderImporter();
      inited = swift_initStackObject();
      *(inited + 312) = 0xD000000000000018;
      *(inited + 320) = 0x8000000226D81BA0;
      sub_226AC484C(&v140, inited + 232);
      sub_226AC484C(&v137, inited + 272);
      v42 = MEMORY[0x277CC7238];
      *(inited + 16) = v40;
      *(inited + 24) = v42;
      *(inited + 72) = v145[4];
      *(inited + 88) = v146;
      *(inited + 96) = &type metadata for WidgetRefresher;
      *(inited + 104) = v34;
      sub_226AC484C(&v134, inited + 112);
      v43 = v145[2];
      *(inited + 40) = v145[3];
      v44 = v143;
      *(inited + 168) = v144;
      v45 = v145[1];
      *(inited + 184) = v145[0];
      *(inited + 200) = v45;
      *(inited + 216) = v43;
      *(inited + 32) = v108;
      v109 = inited + 32;
      v46 = MEMORY[0x277CC79A8];
      *(inited + 56) = v37;
      *(inited + 64) = v46;
      *(inited + 152) = v44;
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v47 = sub_226D6E07C();
      v48 = __swift_project_value_buffer(v47, qword_28105F5C0);
      v49 = v129;
      v50 = v127;
      sub_226C775F8(v129, v127, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
      v108 = v48;
      v51 = sub_226D6E05C();
      v52 = sub_226D6E9EC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v133[0] = v107;
        *v53 = 136315138;

        v54 = v112;
        sub_226D6B45C();
        sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
        v55 = v131;
        v56 = sub_226D6F1CC();
        v58 = v57;
        v111(v54, v55);
        sub_226C77210(v127, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
        v59 = sub_226AC4530(v56, v58, v133);

        *(v53 + 4) = v59;
        _os_log_impl(&dword_226AB4000, v51, v52, "Inserting or updating order %s", v53, 0xCu);
        v60 = v107;
        __swift_destroy_boxed_opaque_existential_0Tm(v107);
        MEMORY[0x22AA8BEE0](v60, -1, -1);
        v61 = v53;
        v49 = v129;
        MEMORY[0x22AA8BEE0](v61, -1, -1);
      }

      else
      {

        sub_226C77210(v50, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
      }

      v73 = v126;
      v74 = v130;
      sub_226BBC0D4(v121, v122, v123, 257, v132, v126);
      v75 = v125;
      if (v74)
      {
        swift_setDeallocating();
        sub_226AC47B0(v109, &qword_27D7A7790, &unk_226D79770);
        sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
        sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));
      }

      else
      {
        v76 = v128;
        v127 = [v128 requestAttemptCount];
        v77 = v116;
        sub_226C775F8(v73, v116, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v129 = *v77;
        if (EnumCaseMultiPayload <= 1)
        {
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
          sub_226AC47B0(v77 + *(v79 + 48), &qword_27D7A7798, &unk_226D75570);
        }

        v80 = [v76 transactionIdentifier];
        [v129 setApplePayTransactionIdentifier_];

        if (v117)
        {
          v81 = sub_226D6E36C();
        }

        else
        {
          v81 = 0;
        }

        [v129 setLastModifiedValue_];

        sub_226C775F8(v49, v75, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
        v82 = sub_226D6E05C();
        v83 = sub_226D6E9EC();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v133[0] = v124;
          *v84 = 136315138;
          v130 = 0;

          v85 = v112;
          sub_226D6B45C();
          sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
          v86 = v131;
          v87 = sub_226D6F1CC();
          v89 = v88;
          v111(v85, v86);
          sub_226C77210(v125, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
          v90 = sub_226AC4530(v87, v89, v133);

          *(v84 + 4) = v90;
          _os_log_impl(&dword_226AB4000, v82, v83, "Deleting pending Apple Pay order %s", v84, 0xCu);
          v91 = v124;
          __swift_destroy_boxed_opaque_existential_0Tm(v124);
          MEMORY[0x22AA8BEE0](v91, -1, -1);
          v92 = v84;
          v93 = v128;
          MEMORY[0x22AA8BEE0](v92, -1, -1);

          v94 = v118;
          v95 = v119;
        }

        else
        {

          sub_226C77210(v75, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
          v94 = v118;
          v95 = v119;
          v93 = v128;
        }

        v96 = v132;
        [v132 deleteObject_];
        v133[0] = 0;
        if ([v96 save_])
        {
          v97 = qword_281061980;
          v98 = v133[0];
          if (v97 != -1)
          {
            swift_once();
          }

          v99 = __swift_project_value_buffer(v94, qword_281064538);
          sub_226AE532C(v99, v95);
          sub_226C775F8(v99 + *(v94 + 48), v95 + *(v94 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
          v100 = v114;
          sub_226C771A8(v95 + *(v94 + 48), v114, type metadata accessor for OrderNotificationCenter.Continuation);
          __swift_destroy_boxed_opaque_existential_0Tm(v95);
          v101 = v126;
          sub_226BE7E54(v126, v100);
          sub_226C77210(v100, type metadata accessor for OrderNotificationCenter.Continuation);
          v102 = v96;
          v103 = v129;
          [v102 refreshObject:v129 mergeChanges:0];
          type metadata accessor for OrderImportAnalyticsEventsBuilder();
          v104 = swift_initStackObject();
          *(v104 + 16) = v127;
          *(v104 + 24) = 0;
          v105 = sub_226BB3780(v101);
          swift_setDeallocating();
          sub_226AC47B0(v109, &qword_27D7A7790, &unk_226D79770);
          sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
          sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));

          sub_226C77210(v101, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
          *v120 = v105;
        }

        else
        {
          v106 = v133[0];
          sub_226D6D04C();

          swift_willThrow();
          swift_setDeallocating();
          sub_226AC47B0(v109, &qword_27D7A7790, &unk_226D79770);
          sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
          sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));

          sub_226C77210(v126, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
        }
      }
    }

    else
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v62 = sub_226D6E07C();
      __swift_project_value_buffer(v62, qword_28105F5C0);
      sub_226C775F8(v129, v30, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
      v63 = sub_226D6E05C();
      v64 = sub_226D6E9AC();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v130 = 0;
        v110 = v31;
        v132 = v66;
        *&v143 = v66;
        *v65 = 136315138;

        v67 = v112;
        sub_226D6B45C();
        sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
        v68 = sub_226D6F1CC();
        v70 = v69;
        v111(v67, v33);
        sub_226C77210(v128, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
        v71 = sub_226AC4530(v68, v70, &v143);

        *(v65 + 4) = v71;
        _os_log_impl(&dword_226AB4000, v63, v64, "Pending Apple Pay order %s not found", v65, 0xCu);
        v72 = v132;
        __swift_destroy_boxed_opaque_existential_0Tm(v132);
        MEMORY[0x22AA8BEE0](v72, -1, -1);
        MEMORY[0x22AA8BEE0](v65, -1, -1);
      }

      else
      {

        sub_226C77210(v30, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
      }

      *v120 = MEMORY[0x277D84F90];
    }
  }
}

uint64_t sub_226C70D0C(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 48) = *a1;
  v4 = *(a1 + 32);
  *(v3 + 64) = *(a1 + 16);
  *(v3 + 72) = v4;
  v5 = sub_226D6B49C();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask(0);
  *(v3 + 112) = swift_task_alloc();
  v6 = sub_226D67CEC();
  *(v3 + 120) = v6;
  *(v3 + 128) = *(v6 - 8);
  *(v3 + 136) = swift_task_alloc();
  v7 = sub_226D6D4AC();
  *(v3 + 144) = v7;
  *(v3 + 152) = *(v7 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C70ED8, 0, 0);
}

uint64_t sub_226C70ED8()
{
  v50 = v0;
  v1 = v0[6];
  if (!v1)
  {
    return sub_226D6F0AC();
  }

  v48 = *(v0[3] + 24);
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[8];
  v6 = v0[7];

  sub_226B11B44(v6, v5);

  sub_226D6726C();
  sub_226D67CDC();
  (*(v2 + 8))(v3, v4);
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[14];
  v12 = v0[5];
  v13 = sub_226D6E07C();
  __swift_project_value_buffer(v13, qword_28105F5C0);
  sub_226C775F8(v12, v11, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  (*(v9 + 16))(v8, v7, v10);
  v14 = sub_226D6E05C();
  v15 = sub_226D6E9EC();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[19];
  v18 = v0[20];
  v19 = v0[18];
  v20 = v0[14];
  if (v16)
  {
    v46 = v15;
    log = v14;
    v21 = v0[12];
    v22 = v0[11];
    v42 = v0[10];
    v43 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49[0] = v45;
    *v43 = 136315394;
    v44 = v18;

    sub_226D6B45C();
    sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v23 = sub_226D6F1CC();
    v25 = v24;
    (*(v22 + 8))(v21, v42);
    sub_226C77210(v20, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
    v26 = sub_226AC4530(v23, v25, v49);

    *(v43 + 4) = v26;
    *(v43 + 12) = 2080;
    sub_226C77874(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v27 = sub_226D6F1CC();
    v29 = v28;
    v30 = *(v17 + 8);
    (v30)(v44, v19);
    v31 = sub_226AC4530(v27, v29, v49);

    *(v43 + 14) = v31;
    _os_log_impl(&dword_226AB4000, log, v46, "Fetched order %s, updated at %s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v45, -1, -1);
    MEMORY[0x22AA8BEE0](v43, -1, -1);
  }

  else
  {

    v30 = *(v17 + 8);
    (v30)(v18, v19);
    sub_226C77210(v20, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  }

  v34 = v0[8];
  v33 = v0[9];
  v35 = v0[7];
  v36 = v0[5];
  v37 = sub_226D676AC();
  v38 = swift_task_alloc();
  v38[2] = v36;
  v38[3] = v37;
  v38[4] = v1;
  v38[5] = v35;
  v38[6] = v34;
  v38[7] = v48;
  v38[8] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8760, &unk_226D79760);
  sub_226D6EB7C();

  if (*(v0[2] + 16))
  {
    __swift_project_boxed_opaque_existential_1((v0[4] + 136), *(v0[4] + 160));
    sub_226D69AEC();
  }

  sub_226D6725C();
  v40 = v0[7];
  v39 = v0[8];
  v30();
  sub_226B11B98(v40, v39);

  v41 = v0[1];

  return v41();
}

void sub_226C7158C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v60 = a2;
  v54 = a4;
  v57 = a3;
  v55 = a5;
  v61[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6D4AC();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask(0);
  MEMORY[0x28223BE20](PendingApplePayOrderTask);
  v58 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_226D6B49C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  sub_226D6AF9C();
  v56 = a1;

  sub_226D6B45C();
  v17 = v59;
  v18 = sub_226D6AF6C();
  v59 = v17;
  if (v17)
  {
    (*(v11 + 8))(v16, v10);
    return;
  }

  v19 = v18;
  v20 = v56;
  v21 = v57;
  v50 = v13;
  v22 = v58;
  v23 = *(v11 + 8);
  v23(v16, v10);
  if (!v19)
  {
    v16 = v20;
    if (qword_28105F5B8 == -1)
    {
LABEL_11:
      v32 = sub_226D6E07C();
      __swift_project_value_buffer(v32, qword_28105F5C0);
      v33 = v16;
      v34 = v22;
      sub_226C775F8(v33, v22, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
      v35 = sub_226D6E05C();
      v36 = sub_226D6E9AC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v60 = v19;
        v38 = v37;
        v56 = v37;
        v57 = swift_slowAlloc();
        v61[0] = v57;
        *v38 = 136315138;
        v39 = v36;

        v40 = v50;
        sub_226D6B45C();
        sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
        v41 = sub_226D6F1CC();
        v43 = v42;
        v23(v40, v10);
        sub_226C77210(v58, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
        v44 = sub_226AC4530(v41, v43, v61);

        v45 = v56;
        *(v56 + 4) = v44;
        _os_log_impl(&dword_226AB4000, v35, v39, "Pending Apple Pay order %s not found", v45, 0xCu);
        v46 = v57;
        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        MEMORY[0x22AA8BEE0](v46, -1, -1);
        v19 = v60;
        MEMORY[0x22AA8BEE0](v45, -1, -1);
      }

      else
      {

        sub_226C77210(v34, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
      }

      v31 = 0;
      v27 = v55;
      goto LABEL_16;
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  v23 = [v19 orderWebService];
  sub_226C6E874(v21, v23, sub_226C6F118);

  v22 = &selRef_setSortDescriptors_;
  v24 = [v19 requestAttemptCount];
  if (__OFADD__(v24, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  [v19 setRequestAttemptCount_];
  v25 = v51;
  sub_226D6D46C();
  v26 = sub_226D6D3EC();
  (*(v52 + 8))(v25, v53);
  [v19 setLastRequestAttemptDate_];

  v27 = v55;
  v28 = v60;
  if (v54)
  {
    v29 = [v19 responseCount];
    if (__OFADD__(v29, 1))
    {
      __break(1u);
    }

    [v19 setResponseCount_];
  }

  v61[0] = 0;
  if (![v28 save_])
  {
    v47 = v61[0];
    v48 = sub_226D6D04C();

    v59 = v48;
    swift_willThrow();

    return;
  }

  v30 = v61[0];
  v31 = [v19 requestAttemptCount];

LABEL_16:
  *v27 = v31;
  *(v27 + 8) = v19 == 0;
}

uint64_t sub_226C71BB8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = sub_226D66DFC();
  v3[12] = swift_task_alloc();
  v4 = sub_226D6B49C();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask(0);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C71CDC, 0, 0);
}

uint64_t sub_226C71CDC()
{
  v42 = v0;
  v1 = *(v0 + 64);
  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v3 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v3;
  v4 = sub_226C6D8E8(v1);
  v5 = sub_226C6DECC(v1, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask, 0);
  sub_226BA21B0(v4, v5);

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 136);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F5C0);
  sub_226C775F8(v7, v6, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  v10 = v8;
  v11 = sub_226D6E05C();
  v12 = sub_226D6E9CC();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 136);
  if (!v13)
  {

    sub_226C77210(v14, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
    if (sub_226D6E82C())
    {
      goto LABEL_11;
    }

LABEL_7:
    v24 = *(v0 + 64);
    *(v0 + 56) = v24;
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
    if (swift_dynamicCast())
    {
      v26 = *(v0 + 96);
      v27 = swift_getEnumCaseMultiPayload() > 1;
      sub_226C77210(v26, MEMORY[0x277CC6528]);
    }

    else
    {
      v27 = 1;
    }

    v28 = *(v0 + 80);
    v29 = *(v0 + 64);

    v30 = sub_226D676AC();
    v31 = swift_task_alloc();
    *(v31 + 16) = v28;
    *(v31 + 24) = v30;
    *(v31 + 32) = v29;
    *(v31 + 40) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F0, &unk_226D79950);
    sub_226D6EB7C();
    v32 = *(v0 + 72);
    v33 = *(v0 + 64);

    sub_226C6EC08(v33, *(v0 + 40), *(v0 + 48), v32 + 136, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask, 0, sub_226C72D5C, sub_226C74E58);

    goto LABEL_11;
  }

  v40 = v12;
  v15 = *(v0 + 120);
  v16 = *(v0 + 112);
  v36 = *(v0 + 104);
  v38 = *(v0 + 64);
  v17 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v41 = v39;
  *v17 = 136315394;

  sub_226D6B45C();
  sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
  v18 = sub_226D6F1CC();
  v20 = v19;
  (*(v16 + 8))(v15, v36);
  sub_226C77210(v14, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  v21 = sub_226AC4530(v18, v20, &v41);

  *(v17 + 4) = v21;
  *(v17 + 12) = 2112;
  v22 = v38;
  v23 = _swift_stdlib_bridgeErrorToNSError();
  *(v17 + 14) = v23;
  *v37 = v23;
  _os_log_impl(&dword_226AB4000, v11, v40, "Failed to fetch order %s with error: %@", v17, 0x16u);
  sub_226AC47B0(v37, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v37, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  MEMORY[0x22AA8BEE0](v39, -1, -1);
  MEMORY[0x22AA8BEE0](v17, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_226C72250()
{

  sub_226D6B45C();
  type metadata accessor for OrderWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226C722E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_226D71840;

  sub_226D6B45C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v2 = sub_226B1FBC0(v1);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v2;
}

uint64_t sub_226C72444(uint64_t a1)
{
  result = sub_226C77874(&qword_27D7A8748, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask, &unk_226D796F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226C724C0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  v73 = a4;
  v8 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  v17 = sub_226D66DFC();
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C775F8(a1, v19, MEMORY[0x277CC6528]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v72 = sub_226CC2B20();
    v71 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = 0x6F43737574617473;
    *(inited + 40) = 0xEA00000000006564;
    sub_226C772C4();
    *(inited + 48) = sub_226D6EC1C();
    v42 = sub_226B224E8(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A77D8, &qword_226D75660);
    v43 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v44 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v43;
      sub_226BE6628(v44, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v43 = v74;
    }

    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v47 = (v5 + *(type metadata accessor for OrderWebServiceFetchChangesTask(0) + 24));
    v48 = v47[1];
    *v13 = *v47;
    *(v13 + 1) = v48;
    v49 = sub_226D6D1AC();
    (*(*(v49 - 8) + 16))(&v13[v46], v5, v49);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v51 = v50;
    sub_226C77210(v13, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v51)
    {
      v52 = sub_226D6E36C();

      v53 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v43;
      sub_226BE6628(v52, 0xD000000000000013, 0x8000000226D81C60, v53);
      v43 = v74;
    }

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v43;
    sub_226C7735C(v42, sub_226C77310, 0, v54, &v74);
    swift_bridgeObjectRelease_n();
    v55 = v74;
    __swift_project_boxed_opaque_existential_1(v73, v73[3]);
    v77 = &type metadata for BasicAnalyticEvent;
    v56 = sub_226C77270();
    v74 = v72;
    v75 = v71;
    v78 = v56;
    v76 = v55;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v74);
    return sub_226AC47B0(v19, &qword_27D7A8BE0, &unk_226D718F0);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v72 = sub_226CC2B20();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_226D70840;
    *(v23 + 32) = 0x6F43737574617473;
    *(v23 + 40) = 0xEA00000000006564;
    *(v23 + 48) = sub_226D6E8EC();
    v24 = sub_226B224E8(v23);
    swift_setDeallocating();
    sub_226AC47B0(v23 + 32, &qword_27D7A77D8, &qword_226D75660);
    v25 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v26 = sub_226D6F2CC();
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v25;
      sub_226BE6628(v26, 0x4374706D65747461, 0xEC000000746E756FLL, v27);
      v25 = v74;
    }

    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v29 = (v5 + *(type metadata accessor for OrderWebServiceFetchChangesTask(0) + 24));
    v30 = v29[1];
    *v16 = *v29;
    *(v16 + 1) = v30;
    v31 = sub_226D6D1AC();
    (*(*(v31 - 8) + 16))(&v16[v28], v5, v31);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v33 = v32;
    sub_226C77210(v16, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v33)
    {
      v34 = sub_226D6E36C();

      v35 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v25;
      sub_226BE6628(v34, 0xD000000000000013, 0x8000000226D81C60, v35);
      v25 = v74;
    }

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v25;
    sub_226C7735C(v24, sub_226C77310, 0, v36, &v74);
    swift_bridgeObjectRelease_n();
    v37 = v74;
    __swift_project_boxed_opaque_existential_1(v73, v73[3]);
    v77 = &type metadata for BasicAnalyticEvent;
    v38 = sub_226C77270();
    v74 = v72;
    v75 = v22;
    v78 = v38;
    v76 = v37;
    sub_226D69AFC();
    return __swift_destroy_boxed_opaque_existential_0Tm(&v74);
  }

  else
  {
    v72 = sub_226CC2B20();
    v58 = v57;
    v59 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v60 = sub_226D6F2CC();
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v59;
      sub_226BE6628(v60, 0x4374706D65747461, 0xEC000000746E756FLL, v61);
      v59 = v74;
    }

    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v63 = (v5 + *(type metadata accessor for OrderWebServiceFetchChangesTask(0) + 24));
    v64 = v63[1];
    *v10 = *v63;
    *(v10 + 1) = v64;
    v65 = sub_226D6D1AC();
    (*(*(v65 - 8) + 16))(&v10[v62], v5, v65);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v67 = v66;
    sub_226C77210(v10, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v67)
    {
      v68 = sub_226D6E36C();

      v69 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v59;
      sub_226BE6628(v68, 0xD000000000000013, 0x8000000226D81C60, v69);
      v59 = v74;
    }

    __swift_project_boxed_opaque_existential_1(v73, v73[3]);
    v77 = &type metadata for BasicAnalyticEvent;
    v70 = sub_226C77270();
    v74 = v72;
    v75 = v58;
    v78 = v70;
    v76 = v59;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v74);
    return sub_226C77210(v19, MEMORY[0x277CC6528]);
  }
}

uint64_t sub_226C72D5C(uint64_t a1, uint64_t a2, char a3, void *a4, void (*a5)(void), unsigned int a6)
{
  v62 = a6;
  v61 = a5;
  v63 = a4;
  v8 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = sub_226D66DFC();
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C775F8(a1, v19, MEMORY[0x277CC6528]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v60 = sub_226CC2B20();
    v59 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = 0x6F43737574617473;
    *(inited + 40) = 0xEA00000000006564;
    sub_226C772C4();
    *(inited + 48) = sub_226D6EC1C();
    v38 = sub_226B224E8(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A77D8, &qword_226D75660);
    v39 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v40 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v39;
      sub_226BE6628(v40, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v39 = v64;
    }

    v61(0);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v43 = v42;
    sub_226C77210(v13, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v43)
    {
      v44 = sub_226D6E36C();

      v45 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v39;
      sub_226BE6628(v44, 0xD000000000000013, 0x8000000226D81C60, v45);
      v39 = v64;
    }

    v46 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v39;
    sub_226C7735C(v38, sub_226C77310, 0, v46, &v64);
    swift_bridgeObjectRelease_n();
    v47 = v64;
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v67 = &type metadata for BasicAnalyticEvent;
    v48 = sub_226C77270();
    v64 = v60;
    v65 = v59;
    v68 = v48;
    v66 = v47;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v64);
    return sub_226AC47B0(v19, &qword_27D7A8BE0, &unk_226D718F0);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v60 = sub_226CC2B20();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_226D70840;
    *(v23 + 32) = 0x6F43737574617473;
    *(v23 + 40) = 0xEA00000000006564;
    *(v23 + 48) = sub_226D6E8EC();
    v24 = sub_226B224E8(v23);
    swift_setDeallocating();
    sub_226AC47B0(v23 + 32, &qword_27D7A77D8, &qword_226D75660);
    v25 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v26 = sub_226D6F2CC();
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v25;
      sub_226BE6628(v26, 0x4374706D65747461, 0xEC000000746E756FLL, v27);
      v25 = v64;
    }

    v61(0);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v29 = v28;
    sub_226C77210(v16, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v29)
    {
      v30 = sub_226D6E36C();

      v31 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v25;
      sub_226BE6628(v30, 0xD000000000000013, 0x8000000226D81C60, v31);
      v25 = v64;
    }

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v25;
    sub_226C7735C(v24, sub_226C77310, 0, v32, &v64);
    swift_bridgeObjectRelease_n();
    v33 = v64;
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v67 = &type metadata for BasicAnalyticEvent;
    v34 = sub_226C77270();
    v64 = v60;
    v65 = v22;
    v68 = v34;
    v66 = v33;
    sub_226D69AFC();
    return __swift_destroy_boxed_opaque_existential_0Tm(&v64);
  }

  else
  {
    v60 = sub_226CC2B20();
    v50 = v49;
    v51 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v52 = sub_226D6F2CC();
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v51;
      sub_226BE6628(v52, 0x4374706D65747461, 0xEC000000746E756FLL, v53);
      v51 = v64;
    }

    v61(0);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v55 = v54;
    sub_226C77210(v10, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v55)
    {
      v56 = sub_226D6E36C();

      v57 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v51;
      sub_226BE6628(v56, 0xD000000000000013, 0x8000000226D81C60, v57);
      v51 = v64;
    }

    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v67 = &type metadata for BasicAnalyticEvent;
    v58 = sub_226C77270();
    v64 = v60;
    v65 = v50;
    v68 = v58;
    v66 = v51;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v64);
    return sub_226C77210(v19, MEMORY[0x277CC6528]);
  }
}

uint64_t sub_226C735A8(uint64_t a1, uint64_t a2, char a3, void *a4, void (*a5)(void), unsigned int a6)
{
  v62 = a6;
  v61 = a5;
  v63 = a4;
  v8 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = sub_226D66DFC();
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C775F8(a1, v19, MEMORY[0x277CC6528]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v60 = sub_226CC2B20();
    v59 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = 0x6F43737574617473;
    *(inited + 40) = 0xEA00000000006564;
    sub_226C772C4();
    *(inited + 48) = sub_226D6EC1C();
    v38 = sub_226B224E8(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A77D8, &qword_226D75660);
    v39 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v40 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v39;
      sub_226BE6628(v40, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v39 = v64;
    }

    v61(0);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v43 = v42;
    sub_226C77210(v13, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v43)
    {
      v44 = sub_226D6E36C();

      v45 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v39;
      sub_226BE6628(v44, 0xD000000000000013, 0x8000000226D81C60, v45);
      v39 = v64;
    }

    v46 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v39;
    sub_226C7735C(v38, sub_226C77310, 0, v46, &v64);
    swift_bridgeObjectRelease_n();
    v47 = v64;
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v67 = &type metadata for BasicAnalyticEvent;
    v48 = sub_226C77270();
    v64 = v60;
    v65 = v59;
    v68 = v48;
    v66 = v47;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v64);
    return sub_226AC47B0(v19, &qword_27D7A8BE0, &unk_226D718F0);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v60 = sub_226CC2B20();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_226D70840;
    *(v23 + 32) = 0x6F43737574617473;
    *(v23 + 40) = 0xEA00000000006564;
    *(v23 + 48) = sub_226D6E8EC();
    v24 = sub_226B224E8(v23);
    swift_setDeallocating();
    sub_226AC47B0(v23 + 32, &qword_27D7A77D8, &qword_226D75660);
    v25 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v26 = sub_226D6F2CC();
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v25;
      sub_226BE6628(v26, 0x4374706D65747461, 0xEC000000746E756FLL, v27);
      v25 = v64;
    }

    v61(0);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v29 = v28;
    sub_226C77210(v16, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v29)
    {
      v30 = sub_226D6E36C();

      v31 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v25;
      sub_226BE6628(v30, 0xD000000000000013, 0x8000000226D81C60, v31);
      v25 = v64;
    }

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v25;
    sub_226C7735C(v24, sub_226C77310, 0, v32, &v64);
    swift_bridgeObjectRelease_n();
    v33 = v64;
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v67 = &type metadata for BasicAnalyticEvent;
    v34 = sub_226C77270();
    v64 = v60;
    v65 = v22;
    v68 = v34;
    v66 = v33;
    sub_226D69AFC();
    return __swift_destroy_boxed_opaque_existential_0Tm(&v64);
  }

  else
  {
    v60 = sub_226CC2B20();
    v50 = v49;
    v51 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v52 = sub_226D6F2CC();
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v51;
      sub_226BE6628(v52, 0x4374706D65747461, 0xEC000000746E756FLL, v53);
      v51 = v64;
    }

    v61(0);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v55 = v54;
    sub_226C77210(v10, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v55)
    {
      v56 = sub_226D6E36C();

      v57 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v51;
      sub_226BE6628(v56, 0xD000000000000013, 0x8000000226D81C60, v57);
      v51 = v64;
    }

    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v67 = &type metadata for BasicAnalyticEvent;
    v58 = sub_226C77270();
    v64 = v60;
    v65 = v50;
    v68 = v58;
    v66 = v51;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v64);
    return sub_226C77210(v19, MEMORY[0x277CC6528]);
  }
}

uint64_t sub_226C73DF4(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  v73 = a4;
  v8 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  v17 = sub_226D66DFC();
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C775F8(a1, v19, MEMORY[0x277CC6528]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v72 = sub_226CC2B20();
    v71 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = 0x6F43737574617473;
    *(inited + 40) = 0xEA00000000006564;
    sub_226C772C4();
    *(inited + 48) = sub_226D6EC1C();
    v42 = sub_226B224E8(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A77D8, &qword_226D75660);
    v43 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v44 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v43;
      sub_226BE6628(v44, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v43 = v74;
    }

    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v47 = (v5 + *(type metadata accessor for OrderWebServiceLogTask(0) + 20));
    v48 = v47[1];
    *v13 = *v47;
    *(v13 + 1) = v48;
    v49 = sub_226D6D1AC();
    (*(*(v49 - 8) + 16))(&v13[v46], v5, v49);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v51 = v50;
    sub_226C77210(v13, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v51)
    {
      v52 = sub_226D6E36C();

      v53 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v43;
      sub_226BE6628(v52, 0xD000000000000013, 0x8000000226D81C60, v53);
      v43 = v74;
    }

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v43;
    sub_226C7735C(v42, sub_226C77310, 0, v54, &v74);
    swift_bridgeObjectRelease_n();
    v55 = v74;
    __swift_project_boxed_opaque_existential_1(v73, v73[3]);
    v77 = &type metadata for BasicAnalyticEvent;
    v56 = sub_226C77270();
    v74 = v72;
    v75 = v71;
    v78 = v56;
    v76 = v55;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v74);
    return sub_226AC47B0(v19, &qword_27D7A8BE0, &unk_226D718F0);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v72 = sub_226CC2B20();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_226D70840;
    *(v23 + 32) = 0x6F43737574617473;
    *(v23 + 40) = 0xEA00000000006564;
    *(v23 + 48) = sub_226D6E8EC();
    v24 = sub_226B224E8(v23);
    swift_setDeallocating();
    sub_226AC47B0(v23 + 32, &qword_27D7A77D8, &qword_226D75660);
    v25 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v26 = sub_226D6F2CC();
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v25;
      sub_226BE6628(v26, 0x4374706D65747461, 0xEC000000746E756FLL, v27);
      v25 = v74;
    }

    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v29 = (v5 + *(type metadata accessor for OrderWebServiceLogTask(0) + 20));
    v30 = v29[1];
    *v16 = *v29;
    *(v16 + 1) = v30;
    v31 = sub_226D6D1AC();
    (*(*(v31 - 8) + 16))(&v16[v28], v5, v31);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v33 = v32;
    sub_226C77210(v16, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v33)
    {
      v34 = sub_226D6E36C();

      v35 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v25;
      sub_226BE6628(v34, 0xD000000000000013, 0x8000000226D81C60, v35);
      v25 = v74;
    }

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v25;
    sub_226C7735C(v24, sub_226C77310, 0, v36, &v74);
    swift_bridgeObjectRelease_n();
    v37 = v74;
    __swift_project_boxed_opaque_existential_1(v73, v73[3]);
    v77 = &type metadata for BasicAnalyticEvent;
    v38 = sub_226C77270();
    v74 = v72;
    v75 = v22;
    v78 = v38;
    v76 = v37;
    sub_226D69AFC();
    return __swift_destroy_boxed_opaque_existential_0Tm(&v74);
  }

  else
  {
    v72 = sub_226CC2B20();
    v58 = v57;
    v59 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v60 = sub_226D6F2CC();
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v59;
      sub_226BE6628(v60, 0x4374706D65747461, 0xEC000000746E756FLL, v61);
      v59 = v74;
    }

    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v63 = (v5 + *(type metadata accessor for OrderWebServiceLogTask(0) + 20));
    v64 = v63[1];
    *v10 = *v63;
    *(v10 + 1) = v64;
    v65 = sub_226D6D1AC();
    (*(*(v65 - 8) + 16))(&v10[v62], v5, v65);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v67 = v66;
    sub_226C77210(v10, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v67)
    {
      v68 = sub_226D6E36C();

      v69 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v59;
      sub_226BE6628(v68, 0xD000000000000013, 0x8000000226D81C60, v69);
      v59 = v74;
    }

    __swift_project_boxed_opaque_existential_1(v73, v73[3]);
    v77 = &type metadata for BasicAnalyticEvent;
    v70 = sub_226C77270();
    v74 = v72;
    v75 = v58;
    v78 = v70;
    v76 = v59;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v74);
    return sub_226C77210(v19, MEMORY[0x277CC6528]);
  }
}

uint64_t sub_226C74690(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v75 = a2;
  v78 = a4;
  v77 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v77);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v72 - v9;
  v11 = sub_226D6B49C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - v16;
  v18 = sub_226D6921C();
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C775F8(a1, v20, MEMORY[0x277CC77F8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
    v74 = v12;
    v22 = *(v12 + 32);
    v22(v17, v20, v11);
    v73 = v11;
    v22(v14, &v20[v21], v11);
    v23 = sub_226D6B46C();
    v25 = v24;
    if (v23 != sub_226D6B46C() || v25 != v26)
    {
      sub_226D6F21C();
    }

    v46 = sub_226D6B44C();
    v48 = v47;
    if (v46 != sub_226D6B44C() || v48 != v49)
    {
      sub_226D6F21C();
    }

    v50 = sub_226CC29A0();
    v72 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D71840;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000226D7F980;
    *(inited + 48) = sub_226D6E6BC();
    *(inited + 56) = 0xD000000000000016;
    *(inited + 64) = 0x8000000226D7F9A0;
    *(inited + 72) = sub_226D6E6BC();
    v53 = sub_226B224E8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
    swift_arrayDestroy();
    v54 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v55 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v54;
      sub_226BE6628(v55, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v54 = v79;
    }

    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    ChangesTask = type metadata accessor for OrderWebServiceFetchChangesTask(0);
    v59 = v76;
    v60 = (v76 + *(ChangesTask + 24));
    v61 = v60[1];
    *v10 = *v60;
    *(v10 + 1) = v61;
    v62 = sub_226D6D1AC();
    (*(*(v62 - 8) + 16))(&v10[v57], v59, v62);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v64 = v63;
    sub_226C77210(v10, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v64)
    {
      v65 = sub_226D6E36C();

      v66 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v54;
      sub_226BE6628(v65, 0xD000000000000013, 0x8000000226D81C60, v66);
      v54 = v79;
    }

    v67 = v73;

    v68 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v54;
    sub_226C7735C(v53, sub_226C77310, 0, v68, &v79);
    swift_bridgeObjectRelease_n();
    v69 = v79;
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v82 = &type metadata for BasicAnalyticEvent;
    v70 = sub_226C77270();
    v79 = v50;
    v80 = v72;
    v83 = v70;
    v81 = v69;
    sub_226D69AFC();
    v71 = *(v74 + 8);
    v71(v14, v67);
    v71(v17, v67);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v79);
  }

  else
  {
    v28 = sub_226CC29A0();
    v30 = v29;
    v31 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v32 = sub_226D6F2CC();
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v31;
      sub_226BE6628(v32, 0x4374706D65747461, 0xEC000000746E756FLL, v33);
      v31 = v79;
    }

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v35 = type metadata accessor for OrderWebServiceFetchChangesTask(0);
    v36 = v76;
    v37 = (v76 + *(v35 + 24));
    v38 = v37[1];
    *v7 = *v37;
    *(v7 + 1) = v38;
    v39 = sub_226D6D1AC();
    (*(*(v39 - 8) + 16))(&v7[v34], v36, v39);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v41 = v40;
    sub_226C77210(v7, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v41)
    {
      v42 = sub_226D6E36C();

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v31;
      sub_226BE6628(v42, 0xD000000000000013, 0x8000000226D81C60, v43);
      v31 = v79;
    }

    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v82 = &type metadata for BasicAnalyticEvent;
    v44 = sub_226C77270();
    v79 = v28;
    v80 = v30;
    v83 = v44;
    v81 = v31;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v79);
    return sub_226C77210(v20, MEMORY[0x277CC77F8]);
  }
}

uint64_t sub_226C74E58(uint64_t a1, uint64_t a2, char a3, void *a4, void (*a5)(void), unsigned int a6)
{
  v69 = a6;
  v67 = a5;
  v70 = a4;
  v66 = a2;
  v68 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v68);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v13 = sub_226D6B49C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = sub_226D6921C();
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C775F8(a1, v22, MEMORY[0x277CC77F8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
    v65 = v14;
    v24 = *(v14 + 32);
    v24(v19, v22, v13);
    v64 = v13;
    v24(v16, &v22[v23], v13);
    v25 = sub_226D6B46C();
    v27 = v26;
    if (v25 != sub_226D6B46C() || v27 != v28)
    {
      sub_226D6F21C();
    }

    v42 = sub_226D6B44C();
    v44 = v43;
    if (v42 != sub_226D6B44C() || v44 != v45)
    {
      sub_226D6F21C();
    }

    v63 = sub_226CC29A0();
    v62 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D71840;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000226D7F980;
    *(inited + 48) = sub_226D6E6BC();
    *(inited + 56) = 0xD000000000000016;
    *(inited + 64) = 0x8000000226D7F9A0;
    *(inited + 72) = sub_226D6E6BC();
    v48 = sub_226B224E8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
    swift_arrayDestroy();
    v49 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v50 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v49;
      sub_226BE6628(v50, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v49 = v71;
    }

    v67(0);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v53 = v52;
    sub_226C77210(v12, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v53)
    {
      v54 = sub_226D6E36C();

      v55 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v49;
      sub_226BE6628(v54, 0xD000000000000013, 0x8000000226D81C60, v55);
      v49 = v71;
    }

    v56 = v64;

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v49;
    sub_226C7735C(v48, sub_226C77310, 0, v57, &v71);
    swift_bridgeObjectRelease_n();
    v58 = v71;
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v74 = &type metadata for BasicAnalyticEvent;
    v59 = sub_226C77270();
    v71 = v63;
    v72 = v62;
    v75 = v59;
    v73 = v58;
    sub_226D69AFC();
    v60 = *(v65 + 8);
    v60(v16, v56);
    v60(v19, v56);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v71);
  }

  else
  {
    v30 = sub_226CC29A0();
    v32 = v31;
    v33 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v34 = sub_226D6F2CC();
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v33;
      sub_226BE6628(v34, 0x4374706D65747461, 0xEC000000746E756FLL, v35);
      v33 = v71;
    }

    v67(0);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v37 = v36;
    sub_226C77210(v9, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v37)
    {
      v38 = sub_226D6E36C();

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v33;
      sub_226BE6628(v38, 0xD000000000000013, 0x8000000226D81C60, v39);
      v33 = v71;
    }

    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v74 = &type metadata for BasicAnalyticEvent;
    v40 = sub_226C77270();
    v71 = v30;
    v72 = v32;
    v75 = v40;
    v73 = v33;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v71);
    return sub_226C77210(v22, MEMORY[0x277CC77F8]);
  }
}

uint64_t sub_226C75604(uint64_t a1, uint64_t a2, char a3, void *a4, void (*a5)(void), unsigned int a6)
{
  v69 = a6;
  v67 = a5;
  v70 = a4;
  v66 = a2;
  v68 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v68);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v13 = sub_226D6B49C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = sub_226D6921C();
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C775F8(a1, v22, MEMORY[0x277CC77F8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
    v65 = v14;
    v24 = *(v14 + 32);
    v24(v19, v22, v13);
    v64 = v13;
    v24(v16, &v22[v23], v13);
    v25 = sub_226D6B46C();
    v27 = v26;
    if (v25 != sub_226D6B46C() || v27 != v28)
    {
      sub_226D6F21C();
    }

    v42 = sub_226D6B44C();
    v44 = v43;
    if (v42 != sub_226D6B44C() || v44 != v45)
    {
      sub_226D6F21C();
    }

    v63 = sub_226CC29A0();
    v62 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D71840;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000226D7F980;
    *(inited + 48) = sub_226D6E6BC();
    *(inited + 56) = 0xD000000000000016;
    *(inited + 64) = 0x8000000226D7F9A0;
    *(inited + 72) = sub_226D6E6BC();
    v48 = sub_226B224E8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
    swift_arrayDestroy();
    v49 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v50 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v49;
      sub_226BE6628(v50, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v49 = v71;
    }

    v67(0);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v53 = v52;
    sub_226C77210(v12, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v53)
    {
      v54 = sub_226D6E36C();

      v55 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v49;
      sub_226BE6628(v54, 0xD000000000000013, 0x8000000226D81C60, v55);
      v49 = v71;
    }

    v56 = v64;

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v49;
    sub_226C7735C(v48, sub_226C77310, 0, v57, &v71);
    swift_bridgeObjectRelease_n();
    v58 = v71;
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v74 = &type metadata for BasicAnalyticEvent;
    v59 = sub_226C77270();
    v71 = v63;
    v72 = v62;
    v75 = v59;
    v73 = v58;
    sub_226D69AFC();
    v60 = *(v65 + 8);
    v60(v16, v56);
    v60(v19, v56);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v71);
  }

  else
  {
    v30 = sub_226CC29A0();
    v32 = v31;
    v33 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v34 = sub_226D6F2CC();
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v33;
      sub_226BE6628(v34, 0x4374706D65747461, 0xEC000000746E756FLL, v35);
      v33 = v71;
    }

    v67(0);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v37 = v36;
    sub_226C77210(v9, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v37)
    {
      v38 = sub_226D6E36C();

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v33;
      sub_226BE6628(v38, 0xD000000000000013, 0x8000000226D81C60, v39);
      v33 = v71;
    }

    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v74 = &type metadata for BasicAnalyticEvent;
    v40 = sub_226C77270();
    v71 = v30;
    v72 = v32;
    v75 = v40;
    v73 = v33;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v71);
    return sub_226C77210(v22, MEMORY[0x277CC77F8]);
  }
}

uint64_t sub_226C75DB0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v75 = a2;
  v78 = a4;
  v77 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v77);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v72 - v9;
  v11 = sub_226D6B49C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - v16;
  v18 = sub_226D6921C();
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C775F8(a1, v20, MEMORY[0x277CC77F8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
    v74 = v12;
    v22 = *(v12 + 32);
    v22(v17, v20, v11);
    v73 = v11;
    v22(v14, &v20[v21], v11);
    v23 = sub_226D6B46C();
    v25 = v24;
    if (v23 != sub_226D6B46C() || v25 != v26)
    {
      sub_226D6F21C();
    }

    v46 = sub_226D6B44C();
    v48 = v47;
    if (v46 != sub_226D6B44C() || v48 != v49)
    {
      sub_226D6F21C();
    }

    v50 = sub_226CC29A0();
    v72 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D71840;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000226D7F980;
    *(inited + 48) = sub_226D6E6BC();
    *(inited + 56) = 0xD000000000000016;
    *(inited + 64) = 0x8000000226D7F9A0;
    *(inited + 72) = sub_226D6E6BC();
    v53 = sub_226B224E8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
    swift_arrayDestroy();
    v54 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v55 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v54;
      sub_226BE6628(v55, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v54 = v79;
    }

    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v58 = type metadata accessor for OrderWebServiceLogTask(0);
    v59 = v76;
    v60 = (v76 + *(v58 + 20));
    v61 = v60[1];
    *v10 = *v60;
    *(v10 + 1) = v61;
    v62 = sub_226D6D1AC();
    (*(*(v62 - 8) + 16))(&v10[v57], v59, v62);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v64 = v63;
    sub_226C77210(v10, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v64)
    {
      v65 = sub_226D6E36C();

      v66 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v54;
      sub_226BE6628(v65, 0xD000000000000013, 0x8000000226D81C60, v66);
      v54 = v79;
    }

    v67 = v73;

    v68 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v54;
    sub_226C7735C(v53, sub_226C77310, 0, v68, &v79);
    swift_bridgeObjectRelease_n();
    v69 = v79;
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v82 = &type metadata for BasicAnalyticEvent;
    v70 = sub_226C77270();
    v79 = v50;
    v80 = v72;
    v83 = v70;
    v81 = v69;
    sub_226D69AFC();
    v71 = *(v74 + 8);
    v71(v14, v67);
    v71(v17, v67);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v79);
  }

  else
  {
    v28 = sub_226CC29A0();
    v30 = v29;
    v31 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v32 = sub_226D6F2CC();
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v31;
      sub_226BE6628(v32, 0x4374706D65747461, 0xEC000000746E756FLL, v33);
      v31 = v79;
    }

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v35 = type metadata accessor for OrderWebServiceLogTask(0);
    v36 = v76;
    v37 = (v76 + *(v35 + 20));
    v38 = v37[1];
    *v7 = *v37;
    *(v7 + 1) = v38;
    v39 = sub_226D6D1AC();
    (*(*(v39 - 8) + 16))(&v7[v34], v36, v39);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v41 = v40;
    sub_226C77210(v7, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v41)
    {
      v42 = sub_226D6E36C();

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v31;
      sub_226BE6628(v42, 0xD000000000000013, 0x8000000226D81C60, v43);
      v31 = v79;
    }

    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v82 = &type metadata for BasicAnalyticEvent;
    v44 = sub_226C77270();
    v79 = v28;
    v80 = v30;
    v83 = v44;
    v81 = v31;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v79);
    return sub_226C77210(v20, MEMORY[0x277CC77F8]);
  }
}

uint64_t sub_226C76578(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v32 = a2;
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = sub_226D66DFC();
  MEMORY[0x28223BE20](v15);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226C775F8(a1, v17, MEMORY[0x277CC6528]);
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if (result > 5)
    {
      if (result == 6)
      {
        v23 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8770, &qword_226D79798) + 48));
        (*(v6 + 32))(v8, v17, v5);
        v34 = 0;
        v35 = 0xE000000000000000;
        sub_226D6EEFC();
        MEMORY[0x22AA8A510](0xD000000000000031, 0x8000000226D85A40);
        v24 = sub_226D6D48C();
        MEMORY[0x22AA8A510](v24);

        MEMORY[0x22AA8A510](0xD000000000000024, 0x8000000226D85A80);
        LOWORD(v33) = v23;
        v25 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v25);

        v26 = v34;
        v27 = v35;
        result = (*(v6 + 8))(v8, v5);
      }

      else
      {
        v27 = 0x8000000226D85AE0;
        v26 = 0xD000000000000023;
      }
    }

    else
    {
      v19 = *v17;
      v34 = 0;
      v35 = 0xE000000000000000;
      if (result == 4)
      {
        sub_226D6EEFC();

        v34 = 0xD000000000000017;
        v35 = 0x8000000226D85A20;
        v33 = v19;
        v20 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v20);

        result = MEMORY[0x22AA8A510](0x6576696563657220, 0xE900000000000064);
      }

      else
      {
        sub_226D6EEFC();

        v34 = 0xD000000000000016;
        v35 = 0x8000000226D85A00;
        v28 = sub_226C77028(v19);
        MEMORY[0x22AA8A510](v28);
      }

      v26 = v34;
      v27 = v35;
    }

    goto LABEL_17;
  }

  if (result <= 1)
  {
    return sub_226C77210(v17, MEMORY[0x277CC6528]);
  }

  if (result != 2)
  {
    sub_226B72784(v17, v14);
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_226D6EEFC();

    v34 = 0xD000000000000025;
    v35 = 0x8000000226D85AB0;
    sub_226AF265C(v14, v11);
    if ((*(v6 + 48))(v11, 1, v5) == 1)
    {
      sub_226AC47B0(v11, &qword_27D7A8BE0, &unk_226D718F0);
      v21 = 0xE300000000000000;
      v22 = 7104878;
    }

    else
    {
      v29 = sub_226D6D48C();
      v21 = v30;
      (*(v6 + 8))(v11, v5);
      v22 = v29;
    }

    MEMORY[0x22AA8A510](v22, v21);

    v26 = v34;
    v27 = v35;
    result = sub_226AC47B0(v14, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_17:
    v34 = a3(result);
    v35 = v31;
    MEMORY[0x22AA8A510](8250, 0xE200000000000000);
    MEMORY[0x22AA8A510](v26, v27);

    sub_226D6D46C();
    sub_226D69F5C();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_226C76B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v38 = a3;
  v39 = a2;
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6B49C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = sub_226D6921C();
  MEMORY[0x28223BE20](v15);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226C775F8(a1, v17, MEMORY[0x277CC77F8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
      v37 = v4;
      v20 = *(v9 + 32);
      v20(v14, v17, v8);
      v20(v11, (v17 + v19), v8);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD000000000000028, 0x8000000226D85B10);
      v21 = sub_226D6B46C();
      MEMORY[0x22AA8A510](v21);

      MEMORY[0x22AA8A510](0xD000000000000015, 0x8000000226D85B40);
      v22 = sub_226D6B44C();
      MEMORY[0x22AA8A510](v22);

      MEMORY[0x22AA8A510](0xD000000000000029, 0x8000000226D85B60);
      v23 = sub_226D6B46C();
      MEMORY[0x22AA8A510](v23);

      MEMORY[0x22AA8A510](0xD000000000000015, 0x8000000226D85B40);
      v24 = sub_226D6B44C();
      MEMORY[0x22AA8A510](v24);

      MEMORY[0x22AA8A510](0x64616574736E6920, 0xE800000000000000);
      v26 = v40;
      v25 = v41;
      v27 = *(v9 + 8);
      v27(v11, v8);
      v27(v14, v8);
      v4 = v37;
    }

    else
    {
      v30 = objc_opt_self();
      sub_226D6727C();
      v31 = [v30 stringFromByteCount:sub_226D6723C() countStyle:3];
      v32 = sub_226D6E39C();
      v34 = v33;

      v40 = 0;
      v41 = 0xE000000000000000;
      sub_226D6EEFC();

      v40 = 0xD00000000000002ALL;
      v41 = 0x8000000226D85BB0;
      MEMORY[0x22AA8A510](v32, v34);

      v26 = v40;
      v25 = v41;
    }
  }

  else
  {
    v28 = *v17;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_226D6EEFC();

    v40 = 0xD000000000000018;
    v41 = 0x8000000226D85B90;
    v29 = sub_226C77028(v28);
    MEMORY[0x22AA8A510](v29);

    v26 = v40;
    v25 = v41;
  }

  v40 = v38();
  v41 = v35;
  MEMORY[0x22AA8A510](8250, 0xE200000000000000);
  MEMORY[0x22AA8A510](v26, v25);

  sub_226D6D46C();
  sub_226D69F5C();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_226C77028(void *a1)
{
  v8 = a1;
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8778, &qword_226D797A0);
  if (swift_dynamicCast())
  {
    sub_226AC484C(v6, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v2 = sub_226D6CEBC();
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      swift_getErrorValue();
      v4 = sub_226D6F26C();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_226AC47B0(v6, &qword_27D7A8780, &qword_226D797A8);
    swift_getErrorValue();
    return sub_226D6F26C();
  }
}

uint64_t sub_226C771A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C77210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_226C77270()
{
  result = qword_27D7A8768;
  if (!qword_27D7A8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8768);
  }

  return result;
}

unint64_t sub_226C772C4()
{
  result = qword_27D7A6278;
  if (!qword_27D7A6278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A6278);
  }

  return result;
}

id sub_226C77310@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_226C7735C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v47[0] = *v18;
    v47[1] = v19;
    v47[2] = v20;

    v21 = v20;
    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = sub_226C2FDD4(v44, v45);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v43 & 1) == 0)
      {
        sub_226C39114();
      }
    }

    else
    {
      sub_226C34598(v30, v43 & 1);
      v32 = sub_226C2FDD4(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v48;
    if (v31)
    {
      v12 = *(v34[7] + 8 * v27);

      v13 = v34[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v15;
    v6 = v40;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_226AD3C20(a1);
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

uint64_t sub_226C775F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C77660(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226C6FB1C(a1, v5, v4);
}

void sub_226C77734(uint64_t a1)
{
  sub_226D6D1AC();
  if (v1 <= 0x3F)
  {
    sub_226B20350(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226C777F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  *(a1 + 8) = sub_226C77874(&qword_27D7A8750, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask, &unk_226D7973C);
  result = sub_226C77874(a4, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask, a5);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226C77874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226C778E4()
{
  v1 = *(*(v0 + 16) + 72);
  if (v1)
  {
    v2 = v1;
    sub_226B6D8E4();

    v3 = *(v0 + 8);
  }

  else
  {
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v4 = sub_226D6E07C();
    __swift_project_value_buffer(v4, qword_28105F628);
    v5 = sub_226D6E05C();
    v6 = sub_226D6E9CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226AB4000, v5, v6, "Requested Spotlight reindex, but no indexer present", v7, 2u);
      MEMORY[0x22AA8BEE0](v7, -1, -1);
    }

    v8 = sub_226D670FC();
    sub_226C77A94();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277CC6B30], v8);
    swift_willThrow();
    v3 = *(v0 + 8);
  }

  return v3();
}

unint64_t sub_226C77A94()
{
  result = qword_27D7A87A8;
  if (!qword_27D7A87A8)
  {
    sub_226D670FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A87A8);
  }

  return result;
}

uint64_t type metadata accessor for OrderWebServiceFetchTask(uint64_t a1)
{
  result = qword_27D7A87B0;
  if (!qword_27D7A87B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226C77B60(uint64_t a1)
{
  sub_226D6D1AC();
  if (v1 <= 0x3F)
  {
    sub_226BBB5E0();
    if (v2 <= 0x3F)
    {
      sub_226B20350(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_226C77C18()
{
  v1 = v0;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000020, 0x8000000226D85D10);
  Task = type metadata accessor for OrderWebServiceFetchTask(0);
  MEMORY[0x22AA8A510](*(v1 + Task[5]), *(v1 + Task[5] + 8));
  MEMORY[0x22AA8A510](0xD000000000000012, 0x8000000226D856A0);
  MEMORY[0x22AA8A510](*(v1 + Task[6]), *(v1 + Task[6] + 8));
  MEMORY[0x22AA8A510](0x6F4D7473616C202CLL, 0xEF3D646569666964);
  v3 = (v0 + Task[9]);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x3E656E6F6E3CLL;
  }

  MEMORY[0x22AA8A510](v4, v5);

  MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D85840);
  sub_226D6D1AC();
  sub_226C7B948(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v6 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v6);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226C77DE0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_226D6B49C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for OrderWebServiceFetchTask(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C77EDC, 0, 0);
}

uint64_t sub_226C77EDC()
{
  v34 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[8];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226C7B7F8(v3, v2, type metadata accessor for OrderWebServiceFetchTask);
  sub_226C7B7F8(v3, v1, type metadata accessor for OrderWebServiceFetchTask);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  v9 = v0[14];
  if (v7)
  {
    v28 = v0[13];
    loga = v5;
    v10 = v0[11];
    v30 = v6;
    v12 = v0[9];
    v11 = v0[10];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v13 = 136315394;

    sub_226D6B45C();
    sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v14 = sub_226D6F1CC();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    sub_226C7B798(v9, type metadata accessor for OrderWebServiceFetchTask);
    v17 = sub_226AC4530(v14, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_226D6D1AC();
    sub_226C7B948(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v18 = sub_226D6F1CC();
    v20 = v19;
    sub_226C7B798(v28, type metadata accessor for OrderWebServiceFetchTask);
    v21 = sub_226AC4530(v18, v20, &v33);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_226AB4000, loga, v30, "Fetching order %s from web service %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v29, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  else
  {

    sub_226C7B798(v8, type metadata accessor for OrderWebServiceFetchTask);
    sub_226C7B798(v9, type metadata accessor for OrderWebServiceFetchTask);
  }

  v22 = v0[8];
  v23 = sub_226C0B798(v22);
  v0[15] = v23;
  v24 = swift_task_alloc();
  v0[16] = v24;
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  log = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
  v25 = swift_task_alloc();
  v0[17] = v25;
  *v25 = v0;
  v25[1] = sub_226C782EC;
  v26 = MEMORY[0x277CC7EB8];

  return (log)(v0 + 2, &unk_226D79970, v24, v26);
}

uint64_t sub_226C782EC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_226C784B8;
  }

  else
  {

    v2 = sub_226C78408;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C78408()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  *v1 = v6;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226C784B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C7854C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_226D6B03C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C78610, 0, 0);
}

uint64_t sub_226C78610()
{
  type metadata accessor for OrderWebServiceFetchTask(0);

  sub_226D6B02C();
  v4 = (*MEMORY[0x277CC7910] + MEMORY[0x277CC7910]);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_226C78764;
  v2 = *(v0 + 96);

  return v4(v0 + 16, v2);
}

uint64_t sub_226C78764()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_226C78948;
  }

  else
  {
    v5 = sub_226C788D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226C788D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  *(v3 + 32) = *(v0 + 48);
  *v3 = v1;
  *(v3 + 16) = v2;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226C78948()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_226C789AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D676AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8760, &unk_226D79760);
  sub_226D6EB7C();
  if (!v2)
  {
    if (*(v5 + 16))
    {
      __swift_project_boxed_opaque_existential_1((a2 + 136), *(a2 + 160));
      sub_226D69AEC();
    }
  }
}

void sub_226C78A94(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, unint64_t *a5@<X8>)
{
  v166 = a4;
  v182 = a2;
  v200 = *MEMORY[0x277D85DE8];
  v7 = a3[1];
  v8 = a3[2];
  v170 = *a3;
  v171 = v8;
  v176 = a3;
  v9 = a3[4];
  v172 = v7;
  v173 = v9;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  MEMORY[0x28223BE20](v164);
  v165 = (v148 - v10);
  v11 = type metadata accessor for OrderNotificationCenter.Continuation(0);
  MEMORY[0x28223BE20](v11 - 8);
  v163 = v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6D4AC();
  v160 = *(v13 - 8);
  v161 = v13;
  MEMORY[0x28223BE20](v13);
  v159 = v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  v174 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v162 = v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v148 - v17;
  MEMORY[0x28223BE20](v19);
  v177 = (v148 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A87E8, &unk_226D79938);
  MEMORY[0x28223BE20](v21 - 8);
  v168 = v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v148 - v24;
  Task = type metadata accessor for OrderWebServiceFetchTask(0);
  MEMORY[0x28223BE20](Task);
  v175 = v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v167 = v148 - v29;
  v30 = sub_226D6B49C();
  v31 = *(v30 - 8);
  v180 = v30;
  v181 = v31;
  MEMORY[0x28223BE20](v30);
  v169 = v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = v148 - v34;
  v36 = [objc_opt_self() currentQueryGenerationToken];
  *&v196 = 0;
  v37 = [a1 setQueryGenerationFromToken:v36 error:&v196];

  v38 = v196;
  if (!v37)
  {
    v45 = v196;
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  v155 = v18;
  v156 = a5;
  v157 = v25;
  sub_226D6751C();
  v39 = (v182 + *(Task + 20));
  v158 = Task;
  v40 = *v39;
  v41 = v39[1];
  v42 = v38;

  sub_226D6B45C();
  v43 = v179;
  v44 = sub_226D6745C();
  if (v43)
  {
    (*(v181 + 8))(v35, v180);
    return;
  }

  v150 = v40;
  v151 = v41;
  v179 = a1;
  v46 = v181 + 8;
  v47 = *(v181 + 8);
  v48 = v44;
  v47(v35, v180);
  if (v48)
  {
    v152 = v47;
    v167 = 0;
    v49 = *(v182 + *(v158 + 32));
    v154 = v48;
    [v48 setFetchSequenceNumber_];
    v181 = sub_226B31FA8();
    v50 = type metadata accessor for WalletMessageUpdater();
    v51 = swift_allocObject();
    v52 = sub_226D69BFC();
    v53 = MEMORY[0x22AA85C90]();
    *(&v197 + 1) = &type metadata for ClassicOrderBiomeStream;
    *&v198[0] = &off_283A6D820;
    sub_226C02324(v198 + 8);
    v54 = sub_226D6B5EC();
    v55 = MEMORY[0x277CC7F68];
    v194 = v54;
    v195 = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v193);
    sub_226D6B58C();
    v191 = v54;
    v192 = v55;
    __swift_allocate_boxed_opaque_existential_1(&v190);
    sub_226D6B5AC();
    v56 = sub_226D6827C();
    v188 = v50;
    v189 = sub_226C7B948(&qword_281062070, type metadata accessor for WalletMessageUpdater, &protocol conformance descriptor for WalletMessageUpdater);
    *&v187 = v51;
    type metadata accessor for ManagedOrderImporter();
    inited = swift_initStackObject();
    *(inited + 312) = 0xD000000000000018;
    *(inited + 320) = 0x8000000226D81BA0;
    sub_226AC484C(&v193, inited + 232);
    sub_226AC484C(&v190, inited + 272);
    v58 = MEMORY[0x277CC7238];
    *(inited + 16) = v56;
    *(inited + 24) = v58;
    *(inited + 72) = v198[4];
    *(inited + 88) = v199;
    *(inited + 96) = &type metadata for WidgetRefresher;
    *(inited + 104) = v181;
    sub_226AC484C(&v187, inited + 112);
    *(inited + 32) = v53;
    v153 = inited + 32;
    *(inited + 40) = v198[3];
    v59 = MEMORY[0x277CC79A8];
    *(inited + 56) = v52;
    *(inited + 64) = v59;
    v60 = v196;
    *(inited + 168) = v197;
    v61 = v198[1];
    *(inited + 184) = v198[0];
    *(inited + 200) = v61;
    *(inited + 216) = v198[2];
    *(inited + 152) = v60;
    v62 = *v176;
    if (!*v176)
    {
      v103 = v157;
      (*(v174 + 56))(v157, 1, 1, updated);
      v181 = MEMORY[0x277D84F90];
      v104 = v156;
      v105 = v154;
      goto LABEL_34;
    }

    v181 = v46;
    v149 = v62;
    v64 = v176[1];
    v63 = v176[2];
    v65 = v176[4];
    v148[1] = v176[3];

    sub_226B11B44(v172, v171);
    v66 = qword_28105F5B8;

    if (v66 != -1)
    {
      swift_once();
    }

    v173 = v65;
    v176 = v63;
    v67 = sub_226D6E07C();
    __swift_project_value_buffer(v67, qword_28105F5C0);
    v68 = v175;
    sub_226C7B7F8(v182, v175, type metadata accessor for OrderWebServiceFetchTask);
    v69 = sub_226D6E05C();
    v70 = sub_226D6E9EC();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v167;
    if (v71)
    {
      v73 = swift_slowAlloc();
      v172 = v64;
      v74 = v73;
      v170 = v73;
      v171 = swift_slowAlloc();
      v183 = v171;
      *v74 = 136315138;

      v75 = v72;
      v76 = v169;
      sub_226D6B45C();
      sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
      v77 = v180;
      v78 = sub_226D6F1CC();
      v80 = v79;
      v81 = v76;
      v72 = v75;
      v152(v81, v77);
      sub_226C7B798(v175, type metadata accessor for OrderWebServiceFetchTask);
      v82 = sub_226AC4530(v78, v80, &v183);

      v83 = v170;
      *(v170 + 4) = v82;
      v84 = v83;
      _os_log_impl(&dword_226AB4000, v69, v70, "Updating content for order %s", v83, 0xCu);
      v85 = v171;
      __swift_destroy_boxed_opaque_existential_0Tm(v171);
      MEMORY[0x22AA8BEE0](v85, -1, -1);
      v64 = v172;
      MEMORY[0x22AA8BEE0](v84, -1, -1);
    }

    else
    {

      sub_226C7B798(v68, type metadata accessor for OrderWebServiceFetchTask);
    }

    v106 = v177;
    v107 = v64;
    v108 = v64;
    v109 = v176;
    sub_226BBCB6C(v154, v149, v107, v176, 0x101u, v179, v177);
    v110 = v157;
    if (v72)
    {
      sub_226B11B98(v108, v109);

      swift_setDeallocating();
      sub_226AC47B0(v153, &qword_27D7A7790, &unk_226D79770);
      sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
      sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));

      return;
    }

    v172 = v108;
    sub_226C7B7F8(v106, v157, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
    (*(v174 + 56))(v110, 0, 1, updated);
    v105 = v154;
    v111 = [v154 requestAttemptCount];
    type metadata accessor for OrderImportAnalyticsEventsBuilder();
    v112 = swift_initStackObject();
    *(v112 + 16) = v111;
    *(v112 + 24) = 1;
    v181 = sub_226BB3780(v106);
    v113 = v173;
    if (v173)
    {

      v114 = sub_226D6E36C();
    }

    else
    {
      v114 = 0;
    }

    v115 = v182;
    v116 = v172;
    [v105 setLastModifiedValue_];

    if (*(v115 + *(v158 + 36) + 8))
    {
      v117 = v155;
      sub_226C7B7F8(v177, v155, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v119 = v117;
      v113 = v173;
      sub_226C7B798(v119, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      if (EnumCaseMultiPayload == 2)
      {
        __swift_project_boxed_opaque_existential_1(v166 + 17, v166[20]);
        v185 = &type metadata for OrderWebServiceFetchTask.IfModifiedSinceIgnoredEvent;
        v186 = sub_226C7B8B4();
        v120 = swift_allocObject();
        v183 = v120;
        v120[2] = 0xD00000000000003DLL;
        v120[3] = 0x8000000226D85C60;
        v105 = v154;
        v121 = v151;
        v120[4] = v150;
        v120[5] = v121;

        v116 = v172;
        sub_226D69AFC();
        __swift_destroy_boxed_opaque_existential_0Tm(&v183);
        v122 = [v105 orderWebService];
        if (v122)
        {
          v123 = v122;
          v183 = 0;
          v184 = 0xE000000000000000;
          sub_226D6EEFC();
          v124 = sub_226C77C18();
          MEMORY[0x22AA8A510](v124);

          MEMORY[0x22AA8A510](0xD000000000000069, 0x8000000226D85CA0);
          v125 = v159;
          sub_226D6D46C();
          sub_226D69F5C();

          v116 = v172;

          v126 = v125;
          v113 = v173;
          (*(v160 + 8))(v126, v161);
        }
      }
    }

    if (v113)
    {

      v127 = v116;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v166 + 17, v166[20]);
      v185 = &type metadata for OrderWebServiceFetchTask.IfModifiedMissingEvent;
      v186 = sub_226C7B860();
      v128 = swift_allocObject();
      v183 = v128;
      v128[2] = 0xD000000000000039;
      v128[3] = 0x8000000226D85BE0;
      v105 = v154;
      v129 = v151;
      v128[4] = v150;
      v128[5] = v129;

      sub_226D69AFC();
      __swift_destroy_boxed_opaque_existential_0Tm(&v183);
      v130 = [v105 orderWebService];
      if (v130)
      {
        v131 = v130;
        v183 = 0;
        v184 = 0xE000000000000000;
        sub_226D6EEFC();
        v132 = sub_226C77C18();
        MEMORY[0x22AA8A510](v132);

        MEMORY[0x22AA8A510](0xD000000000000033, 0x8000000226D85C20);
        v133 = v159;
        sub_226D6D46C();
        sub_226D69F5C();
        sub_226B11B98(v172, v176);

        (*(v160 + 8))(v133, v161);
        goto LABEL_33;
      }

      v127 = v172;
    }

    sub_226B11B98(v127, v176);

LABEL_33:
    sub_226C7B798(v177, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
    v104 = v156;
    v103 = v157;
LABEL_34:
    v134 = v168;
    [v105 setRequestAttemptCount_];
    [v105 setLastRequestAttemptDate_];
    v183 = 0;
    v135 = [v179 save_];
    v136 = v183;
    if (v135)
    {
      sub_226C7B728(v103, v134);
      if ((*(v174 + 48))(v134, 1, updated) == 1)
      {
        v137 = v136;
        sub_226AC47B0(v134, &qword_27D7A87E8, &unk_226D79938);
      }

      else
      {
        v140 = v162;
        sub_226C051C0(v134, v162, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
        v141 = qword_281061980;
        v142 = v136;
        if (v141 != -1)
        {
          swift_once();
        }

        v143 = v164;
        v144 = __swift_project_value_buffer(v164, qword_281064538);
        v145 = v165;
        sub_226AE532C(v144, v165);
        sub_226C7B7F8(v144 + *(v143 + 48), v145 + *(v143 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
        v146 = v145 + *(v143 + 48);
        v147 = v163;
        sub_226C051C0(v146, v163, type metadata accessor for OrderNotificationCenter.Continuation);
        __swift_destroy_boxed_opaque_existential_0Tm(v145);
        sub_226BE7E54(v140, v147);
        sub_226C7B798(v147, type metadata accessor for OrderNotificationCenter.Continuation);
        sub_226C7B798(v140, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
        v103 = v157;
        v105 = v154;
      }

      [v179 refreshObject:v105 mergeChanges:0];
      swift_setDeallocating();
      sub_226AC47B0(v153, &qword_27D7A7790, &unk_226D79770);
      sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
      sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));

      sub_226AC47B0(v103, &qword_27D7A87E8, &unk_226D79938);
      *v104 = v181;
    }

    else
    {
      v138 = v103;
      v139 = v183;

      sub_226D6D04C();

      swift_willThrow();
      swift_setDeallocating();
      sub_226AC47B0(v153, &qword_27D7A7790, &unk_226D79770);
      sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
      sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));

      sub_226AC47B0(v138, &qword_27D7A87E8, &unk_226D79938);
    }

    return;
  }

  v86 = v182;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v87 = sub_226D6E07C();
  __swift_project_value_buffer(v87, qword_28105F5C0);
  v88 = v167;
  sub_226C7B7F8(v86, v167, type metadata accessor for OrderWebServiceFetchTask);
  v89 = sub_226D6E05C();
  v90 = sub_226D6E9AC();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v181 = v46;
    v92 = v91;
    v179 = v91;
    v182 = swift_slowAlloc();
    *&v196 = v182;
    *v92 = 136315138;
    v152 = v47;

    v93 = v169;
    sub_226D6B45C();
    sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v94 = v88;
    v95 = v180;
    v96 = sub_226D6F1CC();
    v98 = v97;
    v152(v93, v95);
    sub_226C7B798(v94, type metadata accessor for OrderWebServiceFetchTask);
    v99 = sub_226AC4530(v96, v98, &v196);

    v100 = v179;
    *(v179 + 4) = v99;
    v101 = v100;
    _os_log_impl(&dword_226AB4000, v89, v90, "Order %s not found", v100, 0xCu);
    v102 = v182;
    __swift_destroy_boxed_opaque_existential_0Tm(v182);
    MEMORY[0x22AA8BEE0](v102, -1, -1);
    MEMORY[0x22AA8BEE0](v101, -1, -1);
  }

  else
  {

    sub_226C7B798(v88, type metadata accessor for OrderWebServiceFetchTask);
  }

  *v156 = MEMORY[0x277D84F90];
}

uint64_t sub_226C79EE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6B49C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for OrderWebServiceFetchTask(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = sub_226D67CEC();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_226D6D4AC();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C7A0AC, 0, 0);
}

uint64_t sub_226C7A0AC()
{
  v59 = v0;
  v1 = *v0[2];
  if (v1)
  {
    v2 = v0[12];
    v3 = v0[13];
    v4 = v0[11];

    sub_226D6726C();
    sub_226D67CDC();
    (*(v2 + 8))(v3, v4);
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v6 = v0[16];
    v5 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[10];
    v10 = v0[4];
    v11 = sub_226D6E07C();
    __swift_project_value_buffer(v11, qword_28105F5C0);
    sub_226C7B7F8(v10, v9, type metadata accessor for OrderWebServiceFetchTask);
    (*(v7 + 16))(v6, v5, v8);
    v12 = sub_226D6E05C();
    v13 = sub_226D6E9EC();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[16];
    v15 = v0[17];
    v17 = v0[14];
    v18 = v0[15];
    v19 = v0[10];
    if (v14)
    {
      v50 = v0[14];
      log = v12;
      v56 = v0[17];
      v20 = v0[7];
      v21 = v0[6];
      v47 = v0[5];
      v48 = swift_slowAlloc();
      buf = swift_slowAlloc();
      v58[0] = buf;
      *v48 = 136315394;
      v49 = v13;

      sub_226D6B45C();
      sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
      v22 = sub_226D6F1CC();
      v24 = v23;
      (*(v21 + 8))(v20, v47);
      sub_226C7B798(v19, type metadata accessor for OrderWebServiceFetchTask);
      v25 = sub_226AC4530(v22, v24, v58);

      *(v48 + 4) = v25;
      *(v48 + 12) = 2080;
      sub_226C7B948(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v26 = sub_226D6F1CC();
      v28 = v27;
      v29 = *(v18 + 8);
      v29(v16, v50);
      v30 = sub_226AC4530(v26, v28, v58);

      *(v48 + 14) = v30;
      _os_log_impl(&dword_226AB4000, log, v49, "Fetched order %s, updated at %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](buf, -1, -1);
      MEMORY[0x22AA8BEE0](v48, -1, -1);

      v29(v56, v50);
    }

    else
    {

      v44 = *(v18 + 8);
      v44(v16, v17);
      sub_226C7B798(v19, type metadata accessor for OrderWebServiceFetchTask);
      v44(v15, v17);
    }
  }

  else
  {
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v31 = v0[9];
    v32 = v0[4];
    v33 = sub_226D6E07C();
    __swift_project_value_buffer(v33, qword_28105F5C0);
    sub_226C7B7F8(v32, v31, type metadata accessor for OrderWebServiceFetchTask);
    v34 = sub_226D6E05C();
    v35 = sub_226D6E9EC();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[9];
    if (v36)
    {
      v57 = v35;
      v38 = v0[7];
      v39 = v0[6];
      v51 = v0[5];
      bufa = swift_slowAlloc();
      loga = swift_slowAlloc();
      v58[0] = loga;
      *bufa = 136315138;

      sub_226D6B45C();
      sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
      v40 = sub_226D6F1CC();
      v42 = v41;
      (*(v39 + 8))(v38, v51);
      sub_226C7B798(v37, type metadata accessor for OrderWebServiceFetchTask);
      v43 = sub_226AC4530(v40, v42, v58);

      *(bufa + 4) = v43;
      _os_log_impl(&dword_226AB4000, v34, v57, "Order %s not modified since last fetch", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(loga);
      MEMORY[0x22AA8BEE0](loga, -1, -1);
      MEMORY[0x22AA8BEE0](bufa, -1, -1);
    }

    else
    {

      sub_226C7B798(v37, type metadata accessor for OrderWebServiceFetchTask);
    }
  }

  sub_226C789AC(v0[2], v0[3]);
  if (v1)
  {

    sub_226D6725C();
  }

  v45 = v0[1];

  return v45();
}

uint64_t sub_226C7A814(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_226D6B49C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for OrderWebServiceFetchTask(0);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C7A908, 0, 0);
}

uint64_t sub_226C7A908()
{
  v38 = v0;
  v1 = *(v0 + 56);
  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v3 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v3;
  v4 = sub_226C778C0();
  v5 = sub_226C6DEB0(v1);
  sub_226BA21B0(v4, v5);

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F5C0);
  sub_226C7B7F8(v7, v6, type metadata accessor for OrderWebServiceFetchTask);
  v10 = v8;
  v11 = sub_226D6E05C();
  v12 = sub_226D6E9CC();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 112);
  if (!v13)
  {

    sub_226C7B798(v14, type metadata accessor for OrderWebServiceFetchTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v36 = v12;
  v15 = *(v0 + 96);
  v16 = *(v0 + 88);
  v32 = *(v0 + 80);
  v34 = *(v0 + 56);
  v17 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v37 = v35;
  *v17 = 136315394;

  sub_226D6B45C();
  sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
  v18 = sub_226D6F1CC();
  v20 = v19;
  (*(v16 + 8))(v15, v32);
  sub_226C7B798(v14, type metadata accessor for OrderWebServiceFetchTask);
  v21 = sub_226AC4530(v18, v20, &v37);

  *(v17 + 4) = v21;
  *(v17 + 12) = 2112;
  v22 = v34;
  v23 = _swift_stdlib_bridgeErrorToNSError();
  *(v17 + 14) = v23;
  *v33 = v23;
  _os_log_impl(&dword_226AB4000, v11, v36, "Failed to fetch order %s with error: %@", v17, 0x16u);
  sub_226AC47B0(v33, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v33, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  MEMORY[0x22AA8BEE0](v35, -1, -1);
  MEMORY[0x22AA8BEE0](v17, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v24 = *(v0 + 72);
    v25 = *(v0 + 56);
    v26 = sub_226D676AC();
    v27 = swift_task_alloc();
    v27[2] = v24;
    v27[3] = v26;
    v27[4] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F0, &unk_226D79950);
    sub_226D6EB7C();
    v28 = *(v0 + 64);
    v29 = *(v0 + 56);

    sub_226C6EB3C(v29, *(v0 + 40), *(v0 + 48), v28 + 136);
  }

LABEL_8:

  v30 = *(v0 + 8);

  return v30();
}

void sub_226C7AD8C(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a2;
  v49 = a3;
  v47 = a4;
  v53[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D4AC();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for OrderWebServiceFetchTask(0);
  MEMORY[0x28223BE20](Task);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6B49C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  sub_226D6751C();
  v48 = a1;

  sub_226D6B45C();
  v16 = v51;
  v17 = sub_226D6745C();
  v51 = v16;
  if (v16)
  {
    (*(v10 + 8))(v15, v9);
    return;
  }

  v18 = v17;
  v19 = v48;
  v20 = v49;
  v43 = v12;
  v21 = v50;
  v22 = *(v10 + 8);
  v22(v15, v9);
  if (!v18)
  {
    v49 = v9;
    v52 = 0;
    v9 = v19;
    if (qword_28105F5B8 == -1)
    {
LABEL_8:
      v29 = sub_226D6E07C();
      __swift_project_value_buffer(v29, qword_28105F5C0);
      sub_226C7B7F8(v9, v21, type metadata accessor for OrderWebServiceFetchTask);
      v30 = sub_226D6E05C();
      v31 = sub_226D6E9AC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v53[0] = v48;
        *v32 = 136315138;

        v33 = v22;
        v34 = v43;
        sub_226D6B45C();
        sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
        v35 = v49;
        v36 = sub_226D6F1CC();
        v38 = v37;
        v33(v34, v35);
        sub_226C7B798(v50, type metadata accessor for OrderWebServiceFetchTask);
        v39 = sub_226AC4530(v36, v38, v53);

        *(v32 + 4) = v39;
        _os_log_impl(&dword_226AB4000, v30, v31, "Order %s not found", v32, 0xCu);
        v40 = v48;
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        MEMORY[0x22AA8BEE0](v40, -1, -1);
        MEMORY[0x22AA8BEE0](v32, -1, -1);
      }

      else
      {

        sub_226C7B798(v21, type metadata accessor for OrderWebServiceFetchTask);
      }

      v27 = 0;
      v28 = v47;
      v18 = v52;
      goto LABEL_13;
    }

LABEL_15:
    swift_once();
    goto LABEL_8;
  }

  v21 = [v18 orderWebService];
  sub_226C6EAC8(v20, v21);

  v23 = [v18 requestAttemptCount];
  if (__OFADD__(v23, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  [v18 setRequestAttemptCount_];
  v24 = v44;
  sub_226D6D46C();
  v25 = sub_226D6D3EC();
  (*(v45 + 8))(v24, v46);
  [v18 setLastRequestAttemptDate_];

  v53[0] = 0;
  if (![v52 save_])
  {
    v41 = v53[0];
    v42 = sub_226D6D04C();

    v51 = v42;
    swift_willThrow();

    return;
  }

  v26 = v53[0];
  v27 = [v18 requestAttemptCount];

  v28 = v47;
LABEL_13:
  *v28 = v27;
  *(v28 + 8) = v18 == 0;
}

uint64_t sub_226C7B368()
{

  sub_226D6B45C();
  type metadata accessor for OrderWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226C7B3F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_226D71840;

  sub_226D6B45C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v2 = sub_226B1FBC0(v1);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v2;
}

uint64_t sub_226C7B5A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  *(a1 + 8) = sub_226C7B948(&qword_27D7A87C8, type metadata accessor for OrderWebServiceFetchTask, &unk_226D798BC);
  result = sub_226C7B948(a4, type metadata accessor for OrderWebServiceFetchTask, a5);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226C7B6B0(uint64_t a1)
{
  result = sub_226C7B948(&qword_27D7A87E0, type metadata accessor for OrderWebServiceFetchTask, &unk_226D7985C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226C7B728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A87E8, &unk_226D79938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C7B798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226C7B7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_226C7B860()
{
  result = qword_27D7A87F0;
  if (!qword_27D7A87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A87F0);
  }

  return result;
}

unint64_t sub_226C7B8B4()
{
  result = qword_27D7A87F8;
  if (!qword_27D7A87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A87F8);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226C7B948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226C7B9B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226C7854C(a1, v5, v4);
}

uint64_t sub_226C7BA90(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D690CC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8800, &unk_226D79A50);
  v3[9] = swift_task_alloc();
  v5 = sub_226D6B54C();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C7BBF4, 0, 0);
}

uint64_t sub_226C7BBF4()
{
  v41 = v0;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F5E0);

  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v40[0] = v6;
    *v5 = 136315138;
    v7 = sub_226D6D52C();
    v8 = MEMORY[0x22AA8A6A0](v4, v7);
    v10 = sub_226AC4530(v8, v9, v40);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v2, v3, "Updating transaction category for transactions %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[9];
  v14 = *(v0[6] + 16);
  v14(v0[8], v0[2], v0[5]);
  sub_226D6B53C();
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_226C7C150(v0[9]);
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v15 = v0[7];
    v16 = v0[5];
    v17 = v0[2];
    __swift_project_value_buffer(v1, qword_28105F600);
    v14(v15, v17, v16);
    v18 = sub_226D6E05C();
    v19 = sub_226D6E9CC();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40[0] = v25;
      *v24 = 136315138;
      sub_226C7CBB0(&qword_27D7A8808, MEMORY[0x277CC7770], MEMORY[0x277CC7778]);
      v26 = sub_226D6F1CC();
      v28 = v27;
      (*(v22 + 8))(v21, v23);
      v29 = sub_226AC4530(v26, v28, v40);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_226AB4000, v18, v19, "Failed to change preferred transaction category. Unsupported transaction category %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }

    v37 = sub_226D66EDC();
    sub_226C7CBB0(&qword_27D7A7DC0, MEMORY[0x277CC65F8], MEMORY[0x277CC6600]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277CC65F0], v37);
    swift_willThrow();

    v36 = v0[1];
  }

  else
  {
    v31 = v0[11];
    v30 = v0[12];
    v32 = v0[10];
    v33 = v0[3];
    (*(v31 + 32))(v30, v0[9], v32);
    v34 = sub_226D676AC();
    v35 = swift_task_alloc();
    v35[2] = v34;
    v35[3] = v33;
    v35[4] = v30;
    sub_226D6EB7C();

    (*(v31 + 8))(v30, v32);

    v36 = v0[1];
  }

  return v36();
}

uint64_t sub_226C7C150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8800, &unk_226D79A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_226C7C1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a3;
  v63[1] = *MEMORY[0x277D85DE8];
  v47 = sub_226D6D4AC();
  v7 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D52C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v56 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = [objc_opt_self() currentQueryGenerationToken];
  v63[0] = 0;
  v60 = a1;
  v16 = [a1 setQueryGenerationFromToken:v15 error:v63];

  v17 = v63[0];
  if (v16)
  {
    v18 = *(a2 + 16);
    if (v18)
    {
      v19 = sub_226D6AC0C();
      v20 = v10 + 16;
      v61 = *(v10 + 16);
      v21 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v46 = (v7 + 8);
      v57 = *(v20 + 56);
      v58 = v19;
      v22 = v17;
      *&v23 = 136315138;
      v49 = v23;
      v24 = v50;
      v54 = v20;
      v55 = v14;
      v59 = (v20 - 8);
      while (1)
      {
        v26 = v61(v14, v21, v9);
        v62 = MEMORY[0x22AA8B6A0](v26);
        v27 = sub_226D6AABC();
        if (v4)
        {
          break;
        }

        v40 = v27;
        if (!v27)
        {
          goto LABEL_9;
        }

        sub_226D6C4DC();
        swift_allocObject();
        sub_226D6C4CC();
        sub_226D6D46C();
        sub_226D6C4AC();
        (*v46)(v24, v47);

        v25 = v59;
LABEL_6:
        objc_autoreleasePoolPop(v62);
        (*v25)(v14, v9);
        v21 += v57;
        if (!--v18)
        {
          goto LABEL_17;
        }
      }

      v4 = 0;
LABEL_9:
      v28 = v56;
      if (qword_28105F5F8 != -1)
      {
        swift_once();
      }

      v29 = sub_226D6E07C();
      __swift_project_value_buffer(v29, qword_28105F600);
      v61(v28, v14, v9);
      v30 = sub_226D6E05C();
      v31 = sub_226D6E9CC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v52 = v18;
        v33 = v32;
        v51 = swift_slowAlloc();
        v63[0] = v51;
        *v33 = v49;
        sub_226C7CBB0(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v34 = sub_226D6F1CC();
        v53 = 0;
        v36 = v35;
        v25 = v59;
        (*v59)(v28, v9);
        v37 = sub_226AC4530(v34, v36, v63);
        v4 = v53;

        *(v33 + 4) = v37;
        _os_log_impl(&dword_226AB4000, v30, v31, "Failed to change preferred transaction category. Transaction with %s doesn't exist.", v33, 0xCu);
        v38 = v51;
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        v24 = v50;
        MEMORY[0x22AA8BEE0](v38, -1, -1);
        v39 = v33;
        v18 = v52;
        MEMORY[0x22AA8BEE0](v39, -1, -1);
      }

      else
      {

        v25 = v59;
        (*v59)(v28, v9);
      }

      v14 = v55;
      goto LABEL_6;
    }

    v42 = v63[0];
LABEL_17:
    v63[0] = 0;
    if ([v60 save_])
    {
      return v63[0];
    }

    v44 = v63[0];
    sub_226D6D04C();
  }

  else
  {
    v41 = v63[0];
    sub_226D6D04C();
  }

  return swift_willThrow();
}

void sub_226C7C780(void *a1, uint64_t a2, char a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentQueryGenerationToken];
  v31[0] = 0;
  v12 = [a1 setQueryGenerationFromToken:v11 error:v31];

  v13 = v31[0];
  if (v12)
  {
    sub_226D6AC0C();
    v14 = v13;
    v15 = sub_226D6AABC();
    if (!v3)
    {
      v16 = v15;
      if (v15)
      {
        sub_226D6C4DC();
        swift_allocObject();
        sub_226D6C4CC();
        sub_226D6C4BC();

        v31[0] = 0;
        if ([a1 save_])
        {
          v27 = v31[0];
        }

        else
        {
          v28 = v31[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }

      else
      {
        if (qword_28105F5F8 != -1)
        {
          swift_once();
        }

        v18 = sub_226D6E07C();
        __swift_project_value_buffer(v18, qword_28105F600);
        (*(v8 + 16))(v10, a2, v7);
        v19 = sub_226D6E05C();
        v20 = sub_226D6E9CC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v31[0] = v30;
          *v21 = 136315394;
          sub_226C7CBB0(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          HIDWORD(v29) = v20;
          v22 = sub_226D6F1CC();
          v24 = v23;
          (*(v8 + 8))(v10, v7);
          v25 = sub_226AC4530(v22, v24, v31);

          *(v21 + 4) = v25;
          *(v21 + 12) = 1024;
          *(v21 + 14) = a3 & 1;
          _os_log_impl(&dword_226AB4000, v19, BYTE4(v29), "Failed to find transaction with %s, unable to update the exclude from spending summary to: %{BOOL}d.", v21, 0x12u);
          v26 = v30;
          __swift_destroy_boxed_opaque_existential_0Tm(v30);
          MEMORY[0x22AA8BEE0](v26, -1, -1);
          MEMORY[0x22AA8BEE0](v21, -1, -1);
        }

        else
        {

          (*(v8 + 8))(v10, v7);
        }
      }
    }
  }

  else
  {
    v17 = v31[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226C7CBB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226C7CC08(void *a1, uint64_t a2)
{
  v34 = a2;
  v36[5] = *MEMORY[0x277D85DE8];
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66D0, &unk_226D75B80);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v36[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v36];

  v15 = v36[0];
  if (v14)
  {
    v33 = v3;
    v16 = v4;
    v17 = *(v7 + 48);
    sub_226D69D0C();
    v18 = v15;
    v19 = v35;
    result = sub_226BDD96C(&v12[v17], a1);
    if (!v19)
    {
      v21 = result & 1;
      *v12 = result & 1;
      sub_226C7D0B4(v12, v9);
      v22 = *(v7 + 48);
      v23 = v16;
      v24 = *(v16 + 48);
      v25 = v33;
      if (v24(&v9[v22], 1, v33) == 1)
      {
        sub_226AC47B0(v12, &qword_27D7A66D0, &unk_226D75B80);
        v26 = &qword_27D7A8BE0;
        v27 = &unk_226D718F0;
        v28 = &v9[v22];
      }

      else
      {
        (*(v23 + 32))(v6, &v9[v22], v25);
        v30 = sub_226D6B5EC();
        v36[3] = v30;
        v36[4] = MEMORY[0x277CC7F70];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
        (*(*(v30 - 1) + 16))(boxed_opaque_existential_1, v34, v30);
        sub_226B5A9C8(v21, v6);
        sub_226AFD7B8(v36);
        (*(v23 + 8))(v6, v25);
        v26 = &qword_27D7A66D0;
        v27 = &unk_226D75B80;
        v28 = v12;
      }

      return sub_226AC47B0(v28, v26, v27);
    }
  }

  else
  {
    v29 = v36[0];
    sub_226D6D04C();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_226C7CF58(uint64_t a1)
{
  v2 = sub_226D6B5EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_226D676AC();
  v7 = type metadata accessor for PostInstallTaskEnvironment(0);
  (*(v3 + 16))(v5, a1 + *(v7 + 20), v2);
  v10 = v6;
  v11 = v5;
  sub_226D6EB7C();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_226C7D0B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66D0, &unk_226D75B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_226C7D134(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  sub_226D69F8C();
  v2 = [swift_getObjCClassFromMetadata() fetchRequest];
  v3 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v8[0] = 0;
  v4 = [a1 executeRequest:v3 error:v8];
  if (v4)
  {
    v5 = v4;
    v6 = v8[0];
  }

  else
  {
    v7 = v8[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

void sub_226C7D270()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F710);
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226AB4000, v1, v2, "Running clear transaction icons post install task", v3, 2u);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
  }

  v4 = sub_226D676AC();
  MEMORY[0x28223BE20](v4);
  sub_226D6EB8C();
}

__n128 ManagedOrderUpdater.__allocating_init(widgetRefresher:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(a1 + 32);
  return result;
}

uint64_t ManagedOrderUpdater.init(widgetRefresher:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  return v1;
}

void sub_226C7D450(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_226D6751C();
  v5 = sub_226D6745C();
  if (!v4)
  {
    v6 = v5;
    if (v5)
    {
      sub_226D674CC();
    }

    else
    {
      sub_226C7DB0C();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void *sub_226C7D500(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  sub_226D6751C();
  result = sub_226D6745C();
  if (!v4)
  {
    if (result)
    {
      v7 = result;
      sub_226D674BC();
      memset(v8, 0, sizeof(v8));
      sub_226B42C34(v7, a4);

      return sub_226AFD62C(v8);
    }

    else
    {
      sub_226C7DB0C();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_226C7D5EC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_226D674BC();
  memset(v7, 0, sizeof(v7));
  sub_226B42C34(a1, a4);
  return sub_226AFD62C(v7);
}

uint64_t sub_226C7D668()
{
  v1 = sub_226D6714C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C7DB60(v0 + 16, v7);
  if (!v8)
  {
    return sub_226C7DBD0(v7);
  }

  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v2 + 104))(v4, *MEMORY[0x277CC6B48], v1);
  sub_226D680BC();
  (*(v2 + 8))(v4, v1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t ManagedOrderUpdater.__deallocating_deinit()
{
  sub_226C7DBD0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ManagedOrderUpdater.OrderUpdatingError.hashValue.getter()
{
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](0);
  return sub_226D6F35C();
}

unint64_t sub_226C7D88C(uint64_t a1, uint64_t a2)
{
  sub_226D6751C();
  v4 = sub_226D674EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D79B40;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 32) = 0xD000000000000012;
  *(v5 + 40) = 0x8000000226D83150;
  *(v5 + 56) = v6;
  *(v5 + 64) = 0x626557726564726FLL;
  *(v5 + 72) = 0xEF65636976726553;
  *(v5 + 88) = v6;
  *(v5 + 96) = 0xD000000000000013;
  *(v5 + 104) = 0x8000000226D85D70;
  *(v5 + 120) = v6;
  *(v5 + 128) = 0xD000000000000017;
  *(v5 + 136) = 0x8000000226D85D90;
  *(v5 + 152) = v6;
  *(v5 + 160) = 0xD000000000000020;
  *(v5 + 168) = 0x8000000226D85DB0;
  *(v5 + 216) = v6;
  *(v5 + 184) = v6;
  *(v5 + 192) = 0xD000000000000020;
  *(v5 + 200) = 0x8000000226D85DE0;
  v7 = sub_226D6E5CC();

  [v4 setPropertiesToFetch_];

  result = sub_226D6EBBC();
  if (v2)
  {

    return v3 & 1;
  }

  v9 = result;
  if (!(result >> 62))
  {
    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_14:

    v3 = 0;
    return v3 & 1;
  }

  result = sub_226D6EDFC();
  v10 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v10 >= 1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      v11 = 0;
      do
      {
        MEMORY[0x22AA8AFD0](v11++, v9);
        v12 = sub_226D674DC();
        swift_unknownObjectRelease();
        v3 |= v12;
      }

      while (v10 != v11);
    }

    else
    {
      v3 = 0;
      v13 = 32;
      do
      {
        v14 = *(v9 + v13);
        v15 = sub_226D674DC();

        v3 |= v15;
        v13 += 8;
        --v10;
      }

      while (v10);
    }

    return v3 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_226C7DB0C()
{
  result = qword_27D7A8810;
  if (!qword_27D7A8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8810);
  }

  return result;
}

uint64_t sub_226C7DB60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6910, &unk_226D721C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C7DBD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6910, &unk_226D721C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226C7DC3C()
{
  result = qword_27D7A8818;
  if (!qword_27D7A8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8818);
  }

  return result;
}

uint64_t sub_226C7DDF8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 152) = a3;
  *(v4 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v5 = sub_226D6D4AC();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C7DF28, 0, 0);
}

uint64_t sub_226C7DF28()
{
  *(v0 + 16) = MEMORY[0x277D84FA0];
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    result = sub_226D6EDFC();
    *(v0 + 112) = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    v10 = *(v0 + 16);
    if (*(v0 + 152))
    {
      v11 = sub_226C7ED30(v10);
    }

    else
    {
      v11 = sub_226C7E99C(v10);
    }

    v12 = v11;

    v13 = *(v0 + 32);
    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    v15 = sub_226C40EA4(sub_226C7F8D0, v14, v12);

    v16 = *(v0 + 8);

    return v16(v15);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 112) = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = *(v0 + 24);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;
  *(v0 + 120) = v4;
  *(v0 + 128) = 1;
  v6 = *(v0 + 40);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v17 = (*(v8 + 8) + **(v8 + 8));
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_226C7E278;

  return v17(v5, v7, v8);
}

uint64_t sub_226C7E278(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_226C7E378, 0, 0);
}

void sub_226C7E378()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    goto LABEL_24;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = *(v0 + 144); v2; i = *(v0 + 144))
  {
    v4 = 0;
    v55 = v1 & 0xFFFFFFFFFFFFFF8;
    v56 = v1 & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v53 = i + 32;
    v54 = v2;
    while (v56)
    {
      v7 = MEMORY[0x22AA8AFD0](v4, *(v0 + 144));
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      v9 = v7;
      v10 = [v9 transactionDate];
      if (v10)
      {
        v11 = v10;
        sub_226D6D45C();

        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      v14 = *(v0 + 72);
      v13 = *(v0 + 80);
      v16 = *(v0 + 56);
      v15 = *(v0 + 64);
      v17 = *(v0 + 48);
      (*(v13 + 56))(v17, v12, 1, v14);
      v18 = v17;
      v1 = &qword_27D7A8BE0;
      sub_226AFD80C(v18, v16, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226AFD80C(v16, v15, &qword_27D7A8BE0, &unk_226D718F0);

      if ((*(v13 + 48))(v15, 1, v14) == 1)
      {
        sub_226AC47B0(*(v0 + 64), &qword_27D7A8BE0, &unk_226D718F0);
        v6 = v54;
      }

      else
      {
        v19 = *(v0 + 80);
        v21 = *(v19 + 32);
        v1 = v19 + 32;
        v20 = v21;
        v21(*(v0 + 104), *(v0 + 64), *(v0 + 72));
        v6 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_226BBB218(0, *(v5 + 2) + 1, 1, v5);
        }

        v23 = *(v5 + 2);
        v22 = *(v5 + 3);
        if (v23 >= v22 >> 1)
        {
          v5 = sub_226BBB218((v22 > 1), v23 + 1, 1, v5);
        }

        v24 = *(v0 + 104);
        v25 = *(v0 + 72);
        v26 = *(v0 + 80);
        *(v5 + 2) = v23 + 1;
        v20(&v5[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23], v24, v25);
      }

      ++v4;
      if (v8 == v6)
      {
        goto LABEL_26;
      }
    }

    if (v4 >= *(v55 + 16))
    {
      goto LABEL_23;
    }

    v7 = *(v53 + 8 * v4);
    v8 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v2 = sub_226D6EDFC();
  }

  v5 = MEMORY[0x277D84F90];
LABEL_26:

  v27 = *(v5 + 2);
  if (v27)
  {
    v28 = *(v0 + 80);
    v29 = &v5[(*(v28 + 80) + 32) & ~*(v28 + 80)];
    v30 = *(v28 + 72);
    v31 = *(v28 + 16);
    do
    {
      v33 = *(v0 + 88);
      v32 = *(v0 + 96);
      v35 = *(v0 + 72);
      v34 = *(v0 + 80);
      v31(v33, v29, v35);
      sub_226C259C4(v32, v33);
      (*(v34 + 8))(v32, v35);
      v29 += v30;
      --v27;
    }

    while (v27);
  }

  v36 = *(v0 + 128);
  v37 = *(v0 + 112);

  if (v36 == v37)
  {
    v38 = *(v0 + 16);
    if (*(v0 + 152))
    {
      v39 = sub_226C7ED30(v38);
    }

    else
    {
      v39 = sub_226C7E99C(v38);
    }

    v43 = v39;

    v49 = *(v0 + 32);
    v50 = swift_task_alloc();
    *(v50 + 16) = v49;
    v51 = sub_226C40EA4(sub_226C7F8D0, v50, v43);

    v52 = *(v0 + 8);

    v52(v51);
    return;
  }

  v40 = *(v0 + 128);
  v41 = *(v0 + 24);
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x22AA8AFD0](*(v0 + 128));
  }

  else
  {
    if (v40 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_46:
      __break(1u);
      return;
    }

    v42 = *(v41 + 8 * v40 + 32);
  }

  v44 = v42;
  *(v0 + 120) = v42;
  *(v0 + 128) = v40 + 1;
  if (__OFADD__(v40, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  v45 = *(v0 + 40);
  v46 = v45[3];
  v47 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v57 = (*(v47 + 8) + **(v47 + 8));
  v48 = swift_task_alloc();
  *(v0 + 136) = v48;
  *v48 = v0;
  v48[1] = sub_226C7E278;

  v57(v44, v46, v47);
}

uint64_t sub_226C7E99C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v27 - v8;
  MEMORY[0x28223BE20](v9);
  v30 = &v27 - v10;
  MEMORY[0x28223BE20](v11);
  v34 = &v27 - v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v28 = v1;
    v29 = v4;
    v14 = sub_226C24AF0(v13, 0);
    sub_226C3ACA0(v33, &v14[(*(v5 + 80) + 32) & ~*(v5 + 80)], v13, a1);
    v16 = v15;
    v17 = v33[0];
    v2 = v33[3];

    sub_226AD3C20(v17);
    if (v16 != v13)
    {
      __break(1u);
      goto LABEL_11;
    }

    v2 = v28;
    v4 = v29;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v33[0] = v14;
  sub_226C7F8F0(sub_226C811D4, 0);
  if (v2)
  {
LABEL_11:

    __break(1u);
    return result;
  }

  v18 = *(v33[0] + 16);
  if (v18)
  {
    v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v29 = 0;
    v20 = v33[0] + v19;
    v21 = *(v5 + 16);
    v21(v34, v33[0] + v19, v4);
    v22 = v30;
    v21(v30, v20 + *(v5 + 72) * (v18 - 1), v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A78F8, &unk_226D75940);
    sub_226D6CD7C();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_226D70840;
    type metadata accessor for BankConnectLinkingDateQueryCalculator(0);
    sub_226D6D5FC();
    v24 = v34;
    sub_226D6D5EC();
    sub_226D6CD3C();
    v25 = *(v5 + 8);
    v25(v22, v4);
    v25(v24, v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v23;
}

char *sub_226C7ED30(uint64_t a1)
{
  v2 = sub_226D6CD7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v75 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v71 - v6;
  MEMORY[0x28223BE20](v8);
  v82 = &v71 - v9;
  MEMORY[0x28223BE20](v10);
  v81 = &v71 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - v13;
  v84 = sub_226D6D4AC();
  v15 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v97 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v96 = &v71 - v18;
  MEMORY[0x28223BE20](v19);
  v93 = &v71 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  MEMORY[0x28223BE20](v21 - 8);
  v74 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v77 = &v71 - v24;
  MEMORY[0x28223BE20](v25);
  v83 = &v71 - v26;
  v28 = MEMORY[0x28223BE20](v27);
  v29 = *(v3 + 56);
  v98 = &v71 - v30;
  v91 = v29;
  v92 = v3 + 56;
  v29(v28);
  v31 = *(a1 + 16);
  if (v31)
  {
    v32 = sub_226C24AF0(*(a1 + 16), 0);
    v33 = v15;
    sub_226C3ACA0(v100, &v32[(*(v15 + 80) + 32) & ~*(v15 + 80)], v31, a1);
    v15 = v34;
    v35 = v100[0];
    v94 = v100[2];
    v95 = v100[1];
    v89 = v100[4];
    v90 = v100[3];

    sub_226AD3C20(v35);
    if (v15 == v31)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v33 = v15;
  v32 = MEMORY[0x277D84F90];
LABEL_5:
  v100[0] = v32;
  v36 = v99;
  sub_226C7F8F0(sub_226C811D4, 0);
  if (v36)
  {

    __break(1u);
  }

  else
  {
    v73 = 0;
    v37 = v100[0];
    v38 = *(v100[0] + 16);
    v39 = v84;
    if (v38)
    {
      v95 = v14;
      v72 = v7;
      v40 = *(type metadata accessor for BankConnectLinkingDateQueryCalculator(0) + 20);
      v41 = v33 + 16;
      v89 = *(v33 + 16);
      v90 = v40;
      v42 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v71 = v37;
      v43 = v37 + v42;
      v44 = *(v33 + 72);
      v87 = (v33 + 8);
      v88 = v44;
      v86 = (v3 + 48);
      v94 = (v3 + 32);
      v76 = (v3 + 16);
      v78 = v3;
      v79 = (v3 + 8);
      v85 = MEMORY[0x277D84F90];
      v101 = v2;
      v45 = v83;
      v80 = v41;
      do
      {
        v99 = v38;
        v46 = v93;
        v89(v93, v43, v39);
        sub_226D6D5FC();
        sub_226D6D5EC();
        (*v87)(v46, v39);
        v47 = v95;
        sub_226D6CD3C();
        v48 = v98;
        sub_226AEF224(v98, v45);
        v49 = v101;
        if ((*v86)(v45, 1, v101) == 1)
        {
          sub_226AC47B0(v48, &qword_27D7A6558, &qword_226D7CCE0);
          sub_226AC47B0(v45, &qword_27D7A6558, &qword_226D7CCE0);
          (*v94)(v48, v47, v49);
          (v91)(v48, 0, 1, v49);
        }

        else
        {
          v50 = *v94;
          v51 = v81;
          (*v94)(v81, v45, v49);
          if (sub_226D6CD1C())
          {
            sub_226D6CD4C();
            sub_226D6CD2C();
            v52 = v77;
            sub_226D6CD3C();
            v53 = *v79;
            (*v79)(v51, v101);
            v53(v47, v101);
            sub_226AC47B0(v48, &qword_27D7A6558, &qword_226D7CCE0);
            (v91)(v52, 0, 1, v101);
            v54 = v52;
            v45 = v83;
            sub_226AFD80C(v54, v48, &qword_27D7A6558, &qword_226D7CCE0);
            v39 = v84;
          }

          else
          {
            (*v76)(v82, v51, v49);
            v55 = v85;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = sub_226BBB1F0(0, v55[2] + 1, 1, v55);
            }

            v57 = v55[2];
            v56 = v55[3];
            if (v57 >= v56 >> 1)
            {
              v85 = sub_226BBB1F0((v56 > 1), v57 + 1, 1, v55);
            }

            else
            {
              v85 = v55;
            }

            v58 = v78;
            v59 = v51;
            v60 = v101;
            (*(v78 + 8))(v59, v101);
            v61 = v98;
            sub_226AC47B0(v98, &qword_27D7A6558, &qword_226D7CCE0);
            v62 = v85;
            v85[2] = v57 + 1;
            v50(v62 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v57, v82, v60);
            v50(v61, v95, v60);
            (v91)(v61, 0, 1, v60);
            v45 = v83;
            v39 = v84;
          }
        }

        v43 += v88;
        v38 = v99 - 1;
      }

      while (v99 != 1);

      v3 = v78;
      v63 = v75;
      v7 = v72;
      v2 = v101;
      v64 = v85;
    }

    else
    {

      v64 = MEMORY[0x277D84F90];
      v63 = v75;
    }

    v65 = v98;
    v66 = v74;
    sub_226AEF224(v98, v74);
    if ((*(v3 + 48))(v66, 1, v2) == 1)
    {
      sub_226AC47B0(v65, &qword_27D7A6558, &qword_226D7CCE0);
      sub_226AC47B0(v66, &qword_27D7A6558, &qword_226D7CCE0);
    }

    else
    {
      v67 = *(v3 + 32);
      v67(v7, v66, v2);
      (*(v3 + 16))(v63, v7, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_226BBB1F0(0, *(v64 + 2) + 1, 1, v64);
      }

      v69 = *(v64 + 2);
      v68 = *(v64 + 3);
      if (v69 >= v68 >> 1)
      {
        v64 = sub_226BBB1F0((v68 > 1), v69 + 1, 1, v64);
      }

      (*(v3 + 8))(v7, v2);
      sub_226AC47B0(v98, &qword_27D7A6558, &qword_226D7CCE0);
      *(v64 + 2) = v69 + 1;
      v67(&v64[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v69], v63, v2);
    }

    return v64;
  }

  return result;
}

uint64_t sub_226C7F750(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6CD7C();
  v9 = MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  return sub_226D6BE2C();
}

void sub_226C7F8F0(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_226D6D4AC();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_226C694B4(v5);
  }

  sub_226C7F9B0(a1, a2);
  *v2 = v5;
}

void sub_226C7F9B0(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_226D6F1BC();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_226D6D4AC();
        v9 = sub_226D6E63C();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_226D6D4AC() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_226C7FDD8(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_226C7FAEC(0, v5, 1, a1, a2);
  }
}

void sub_226C7FAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v11);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v38 - v14;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v16;
    v19 = *v5;
    v21 = *(v17 + 16);
    v20 = v17 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = (v19 + v22 * (a3 - 1));
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        (v48)(v50, v25, v11, v18);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          v37(v28, v11);
          return;
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        v33(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        v34(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = &v42[v38];
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }
}

void sub_226C7FDD8(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v163);
  v146 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v149 = &v134 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v134 - v18;
  MEMORY[0x28223BE20](v20);
  v140 = &v134 - v21;
  MEMORY[0x28223BE20](v22);
  v29.n128_f64[0] = MEMORY[0x28223BE20](&v134 - v23);
  v161 = v26;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v25;
  v139 = v24;
  v151 = v19;
  v147 = v28;
  v148 = v27;
  v137 = a6;
  v31 = 0;
  v159 = (v26 + 8);
  v160 = v26 + 16;
  v155 = (v26 + 32);
  v32 = MEMORY[0x277D84F90];
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163, v29);
      v157 = v36;
      v138 = v35;
      v39 = v35 + v36 * v144;
      v40 = v139;
      v152 = v37;
      (v37)(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
        goto LABEL_117;
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = v138 + v157 * (v144 + 2);
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
LABEL_117:

          return;
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, v63 + v61, v163);
              if (v61 < a4 || v63 + v61 >= (v63 + v58))
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v64((v63 + a4), v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32, v29);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                  goto LABEL_117;
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                v123(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = (v138 - 1);
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    a4 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_226BBB0C4(0, *(v32 + 2) + 1, 1, v32);
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v32 = sub_226BBB0C4((v67 > 1), v68 + 1, 1, v32);
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    sub_226C809E4((*v162 + *(v161 + 72) * v110), (*v162 + *(v161 + 72) * *&v32[16 * a4 + 32]), (*v162 + *(v161 + 72) * v111), v71, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_226C69374(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    sub_226C692E8(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

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
  v32 = sub_226C69374(v32);
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
    goto LABEL_117;
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    sub_226C809E4((*v162 + *(v161 + 72) * v128), (*v162 + *(v161 + 72) * *&v32[16 * v127 + 16]), (*v162 + *(v161 + 72) * v129), a4, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_226C69374(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    sub_226C692E8(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_226C809E4(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v77 = a6;
  v78 = a5;
  v76 = sub_226D6D4AC();
  v11 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  MEMORY[0x28223BE20](v18);
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v23 = &v68 - v19;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v22 != -1)
  {
    v25 = (a2 - a1) / v22;
    v84 = a1;
    v83 = a4;
    v79 = v22;
    if (v25 < v24 / v22)
    {
      v26 = v25 * v22;
      if (a4 < a1 || &a1[v26] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v75 = &a4[v26];
      v82 = &a4[v26];
      if (v26 >= 1 && a2 < a3)
      {
        v52 = *(v11 + 16);
        v73 = v17;
        v74 = v11 + 16;
        v71 = v52;
        v72 = (v11 + 8);
        v53 = v23;
        v54 = v76;
        v55 = v6;
        v70 = a3;
        while (1)
        {
          v80 = a1;
          v56 = v71;
          v71(v53, a2, v54);
          v57 = a2;
          v58 = v53;
          v59 = v73;
          v56(v73, a4, v54);
          v60 = v78(v58, v59);
          if (v55)
          {
            break;
          }

          v61 = v60;
          v81 = 0;
          v62 = *v72;
          (*v72)(v59, v54);
          v62(v58, v54);
          v53 = v58;
          if (v61)
          {
            v63 = v79;
            v64 = v80;
            a2 = &v57[v79];
            if (v80 < v57 || v80 >= a2)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }
          }

          else
          {
            v63 = v79;
            v64 = v80;
            v65 = &a4[v79];
            a2 = v57;
            if (v80 < a4 || v80 >= v65)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }

            v83 = v65;
            a4 = v65;
          }

          a1 = &v64[v63];
          v84 = a1;
          if (a4 >= v75 || a2 >= v70)
          {
            goto LABEL_65;
          }
        }

        v66 = *v72;
        (*v72)(v59, v54);
        v66(v58, v54);
      }

LABEL_65:
      sub_226C693A0(&v84, &v83, &v82);
      return;
    }

    v75 = v20;
    v27 = a3;
    v28 = a2;
    v29 = v24 / v22 * v22;
    if (a4 < v28 || &v28[v29] <= a4)
    {
      v30 = v28;
      v31 = v76;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v30 = v28;
      v31 = v76;
      if (a4 == v28)
      {
LABEL_24:
        v81 = v6;
        v33 = &a4[v29];
        if (v29 >= 1)
        {
          v34 = -v22;
          v68 = a4;
          v69 = (v11 + 16);
          v71 = (v11 + 8);
          v35 = &a4[v29];
          v36 = v27;
          v37 = v75;
          v80 = a1;
          v73 = -v22;
          do
          {
            v74 = v33;
            v70 = v33;
            v38 = v30;
            v76 = v30 + v34;
            v72 = v30;
            while (1)
            {
              if (v38 <= a1)
              {
                v84 = v38;
                v33 = v70;
                goto LABEL_64;
              }

              v39 = v36;
              v40 = v73;
              v79 = v35;
              v41 = &v35[v73];
              v42 = *v69;
              (*v69)(v37, &v35[v73], v31);
              v42(v13, v76, v31);
              v43 = v37;
              v44 = v81;
              v45 = v78(v37, v13);
              v81 = v44;
              if (v44)
              {
                v67 = *v71;
                (*v71)(v13, v31);
                v67(v43, v31);
                v84 = v72;
                v33 = v74;
                goto LABEL_64;
              }

              v46 = v45;
              v47 = &v39[v40];
              v48 = v13;
              v49 = *v71;
              v50 = v48;
              (*v71)();
              v49(v43, v31);
              if (v46)
              {
                break;
              }

              v36 = &v39[v40];
              if (v39 < v79 || v47 >= v79)
              {
                swift_arrayInitWithTakeFrontToBack();
                v13 = v50;
                v37 = v75;
              }

              else
              {
                v13 = v50;
                v37 = v75;
                if (v39 != v79)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v74 = v41;
              v35 = v41;
              a1 = v80;
              v38 = v72;
              if (v41 <= v68)
              {
                v30 = v72;
                v33 = v74;
                goto LABEL_63;
              }
            }

            v36 = &v39[v40];
            if (v39 < v72 || v47 >= v72)
            {
              v30 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v51 = v68;
              v13 = v50;
              v37 = v75;
            }

            else
            {
              v37 = v75;
              v30 = v76;
              v51 = v68;
              v13 = v50;
              if (v39 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v35 = v79;
            a1 = v80;
            v34 = v73;
            v33 = v74;
          }

          while (v79 > v51);
        }

LABEL_63:
        v84 = v30;
LABEL_64:
        v82 = v33;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v22 = v79;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
}

uint64_t type metadata accessor for BankConnectLinkingDateQueryCalculator(uint64_t a1)
{
  result = qword_27D7A8820;
  if (!qword_27D7A8820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_226C81150(uint64_t a1)
{
  result = sub_226AEEB3C();
  if (v2 <= 0x3F)
  {
    result = sub_226D6D6DC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_226C811F0(void *a1, uint64_t a2)
{
  type metadata accessor for OrderWebServiceSystemTask();
  *(swift_initStackObject() + 16) = a2;

  sub_226D66E6C();
  [a1 setTaskCompleted];
  swift_setDeallocating();
}

uint64_t sub_226C8129C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F5E0);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226AB4000, v6, v7, "Running orders reboot task", v8, 2u);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v9 = *(a1 + 16);
  v10 = sub_226D6E79C();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;

  sub_226B60364(0, 0, v4, &unk_226D79CD8, v11);
}

void sub_226C81494(uint64_t a1)
{
  v2 = [objc_opt_self() sharedScheduler];
  v3 = sub_226D6E36C();
  v9[4] = sub_226C81670;
  v9[5] = a1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_226C01160;
  v9[3] = &block_descriptor_14;
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
      _os_log_impl(&dword_226AB4000, v6, v7, "Unable to register orders reboot task", v8, 2u);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }
  }
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226C816AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226C0CF18(a1, v4, v5, v6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_226C81774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_226C817BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_226C8180C()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F710);
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226AB4000, v1, v2, "Running permission post install task", v3, 2u);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
  }

  v4 = [objc_opt_self() defaultManager];
  sub_226D6D17C();
  v5 = sub_226D6E36C();

  v6 = [v4 fileExistsAtPath_];

  v7 = sub_226D6E05C();
  v8 = sub_226D6E9AC();
  v9 = os_log_type_enabled(v7, v8);
  if (v6)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226AB4000, v7, v8, "Backup file exists", v10, 2u);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }
  }

  else if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_226AB4000, v7, v8, "Backup file does not exist", v11, 2u);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  v12 = sub_226D676AC();
  MEMORY[0x28223BE20](v12);
  sub_226D6EB7C();
}

void sub_226C81B1C(int a1, int a2, int a3, NSManagedObjectContext in)
{
  v8[1] = *MEMORY[0x277D85DE8];
  FinancialDataAppPermissions.importApplicationsFromFile(in:)(in);
  if (!v5)
  {
    v8[0] = 0;
    if ([(objc_class *)in.super.isa save:v8])
    {
      v6 = v8[0];
    }

    else
    {
      v7 = v8[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

uint64_t sub_226C81C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_226C81CA8, 0, 0);
}

uint64_t sub_226C81CA8()
{
  v25 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  *(v0 + 80) = __swift_project_value_buffer(v1, qword_28105F5C0);

  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_226AC4530(v5, v4, v24);
    _os_log_impl(&dword_226AB4000, v2, v3, "Starting invalidate token task for order type %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = sub_226D676AC();
  *(v0 + 88) = v10;
  v11 = swift_task_alloc();
  v11[2] = v9;
  v11[3] = v8;
  v11[4] = v10;
  sub_226D6EB7C();

  if (*(v0 + 112) == 1)
  {
    sub_226AE532C(*(v0 + 56) + 96, v0 + 16);
    v12 = sub_226D6E05C();
    v13 = sub_226D6E9EC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_226AB4000, v12, v13, "Updating enabled topics", v14, 2u);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v15 = swift_task_alloc();
    *(v0 + 96) = v15;
    *v15 = v0;
    v15[1] = sub_226C8209C;

    return sub_226D0A5C4();
  }

  else
  {

    v17 = sub_226D6E05C();
    v18 = sub_226D6E9AC();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 64);
      v19 = *(v0 + 72);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_226AC4530(v20, v19, v24);
      _os_log_impl(&dword_226AB4000, v17, v18, "Order type %s not found", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x22AA8BEE0](v22, -1, -1);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
    }

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_226C8209C()
{

  return MEMORY[0x2822009F8](sub_226C82198, 0, 0);
}

uint64_t sub_226C82198()
{
  v12 = v0;

  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_226AC4530(v4, v3, &v11);
    _os_log_impl(&dword_226AB4000, v1, v2, "Invalidating token for order type %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_226C82320;
  v9 = v0[8];
  v8 = v0[9];

  return sub_226D0B53C(v9, v8);
}

uint64_t sub_226C82320()
{

  return MEMORY[0x2822009F8](sub_226C8241C, 0, 0);
}

uint64_t sub_226C8241C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void sub_226C82488(void *a3@<X2>, _BYTE *a4@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D67FDC();
  v7 = sub_226D67FBC();
  if (!v4)
  {
    if (v7)
    {
      v8 = v7;
      [v7 setDeviceLibraryIdentifier_];
      [v8 setPushToken_];
      v11[0] = 0;
      if ([a3 save_])
      {
        v9 = v11[0];

        *a4 = 1;
      }

      else
      {
        v10 = v11[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      *a4 = 0;
    }
  }
}

double sub_226C825C4@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for OrderWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_226C82618()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v3 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  v6 = (v5 + v4);
  *v6 = v2;
  v6[1] = v1;
  swift_storeEnumTagMultiPayload();

  v7 = sub_226B1FBC0(v5);
  swift_setDeallocating();
  sub_226C5EA2C(v6);
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_226C8272C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226C81C84(a1, v5, v4);
}

unint64_t sub_226C827D4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_226D6EEFC();

  MEMORY[0x22AA8A510](v1, v2);
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

unint64_t sub_226C82860(uint64_t a1)
{
  result = sub_226C82888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226C82888()
{
  result = qword_27D7A8830;
  if (!qword_27D7A8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8830);
  }

  return result;
}

uint64_t sub_226C8296C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226C829B4(uint64_t a1)
{
  result = sub_226C829DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226C829DC()
{
  result = qword_27D7A8838;
  if (!qword_27D7A8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8838);
  }

  return result;
}

uint64_t sub_226C82A50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_226D6D4AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_226C82AE8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask(0);
  sub_226AC40E8(v1 + *(PendingApplePayOrderTask + 36), v5, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v1 + *(PendingApplePayOrderTask + 32));
    if (v12 > 0)
    {
      exp2((v12 - 1));
    }

    sub_226D6D3DC();
    (*(v7 + 8))(v9, v6);
    v11 = 0;
  }

  return (*(v7 + 56))(a1, v11, 1, v6);
}

uint64_t sub_226C82D10@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OrderWebServiceLogTask(0);
  sub_226AC40E8(v1 + *(v10 + 28), v5, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v1 + *(v10 + 24));
    if (v12 > 0)
    {
      exp2((v12 - 1));
    }

    sub_226D6D3DC();
    (*(v7 + 8))(v9, v6);
    v11 = 0;
  }

  return (*(v7 + 56))(a1, v11, 1, v6);
}

uint64_t sub_226C82F38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_226D6D4AC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1)(0, v10);
  sub_226AC40E8(v2 + *(v13 + 44), v7, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226AC47B0(v7, &qword_27D7A8BE0, &unk_226D718F0);
    v14 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = *(v2 + *(v13 + 40));
    if (v15 > 0)
    {
      exp2((v15 - 1));
    }

    sub_226D6D3DC();
    (*(v9 + 8))(v12, v8);
    v14 = 0;
  }

  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226C83168@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_226D6D4AC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1)(0, v10);
  sub_226AC40E8(v2 + *(v13 + 40), v7, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226AC47B0(v7, &qword_27D7A8BE0, &unk_226D718F0);
    v14 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = *(v2 + *(v13 + 36));
    if (v15 > 0)
    {
      exp2((v15 - 1));
    }

    sub_226D6D3DC();
    (*(v9 + 8))(v12, v8);
    v14 = 0;
  }

  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226C83398@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OrderWebServiceRequestTokenTask(0);
  sub_226AC40E8(v1 + *(v10 + 24), v5, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v1 + 16);
    if (v12 > 0)
    {
      exp2((v12 - 1));
    }

    sub_226D6D3DC();
    (*(v7 + 8))(v9, v6);
    v11 = 0;
  }

  return (*(v7 + 56))(a1, v11, 1, v6);
}

uint64_t sub_226C835B4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrismWebServiceRegisterTransactionTask(0);
  sub_226AC40E8(v1 + *(v10 + 24), v5, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v1 + *(v10 + 20));
    if (v12 > 0)
    {
      exp2((v12 - 1));
    }

    sub_226D6D3DC();
    (*(v7 + 8))(v9, v6);
    v11 = 0;
  }

  return (*(v7 + 56))(a1, v11, 1, v6);
}

uint64_t sub_226C837DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226C83888(a1);
}

uint64_t sub_226C83888(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D6C21C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[7] = v4;
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8850, &unk_226D79F00);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[11] = v5;
  *v5 = v2;
  v5[1] = sub_226C839E4;

  return sub_226C62040(v4);
}

uint64_t sub_226C839E4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_226C83C84;
  }

  else
  {
    v2 = sub_226C83AF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C83AF8()
{
  (*(v0[5] + 32))(v0[10], v0[7], v0[4]);
  swift_storeEnumTagMultiPayload();
  sub_226AC40E8(v0[10], v0[9], &qword_27D7A8850, &unk_226D79F00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    v0[15] = *v2;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_226C8408C;
    v5 = v0[2];

    return sub_226C63750(v3, v5);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v2, v0[4]);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_226C83DF8;
    v8 = v0[6];
    v9 = v0[2];

    return sub_226C62CE8(v8, v9);
  }
}

uint64_t sub_226C83C84()
{
  *v0[10] = v0[12];
  swift_storeEnumTagMultiPayload();
  sub_226AC40E8(v0[10], v0[9], &qword_27D7A8850, &unk_226D79F00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    v0[15] = *v2;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_226C8408C;
    v5 = v0[2];

    return sub_226C63750(v3, v5);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v2, v0[4]);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_226C83DF8;
    v8 = v0[6];
    v9 = v0[2];

    return sub_226C62CE8(v8, v9);
  }
}

uint64_t sub_226C83DF8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226C83FC8;
  }

  else
  {
    v2 = sub_226C83F0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C83F0C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  sub_226AC47B0(v0[10], &qword_27D7A8850, &unk_226D79F00);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226C83FC8()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  sub_226AC47B0(v0[10], &qword_27D7A8850, &unk_226D79F00);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226C8408C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_226C8424C;
  }

  else
  {
    v2 = sub_226C841A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C841A0()
{
  sub_226AC47B0(*(v0 + 80), &qword_27D7A8850, &unk_226D79F00);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C8424C()
{
  sub_226AC47B0(*(v0 + 80), &qword_27D7A8850, &unk_226D79F00);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C84300(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = swift_task_alloc();
  v2[14] = v3;
  *v3 = v2;
  v3[1] = sub_226C843A0;

  return sub_226C6F270((v2 + 2));
}

uint64_t sub_226C843A0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_226C84744;
  }

  else
  {
    v2 = sub_226C844B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C844B4()
{
  sub_226C86498(v0 + 16, v0 + 56);
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_226C84558;
  v2 = *(v0 + 96);

  return sub_226C70D0C(v0 + 16, v2);
}

uint64_t sub_226C84558()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_226C846D8;
  }

  else
  {
    v2 = sub_226C8466C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C8466C()
{
  sub_226C864F4(v0 + 16);
  sub_226C864F4(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C846D8()
{
  sub_226C864F4(v0 + 16);
  sub_226C864F4(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C84744()
{
  v1 = *(v0 + 120);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_226C847E4;
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);

  return sub_226C71BB8(v3, v4);
}

uint64_t sub_226C847E4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_226C84968;
  }

  else
  {
    v2 = sub_226C848F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C848F8()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226C84968()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226C849D8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = swift_task_alloc();
  v2[14] = v3;
  *v3 = v2;
  v3[1] = sub_226C84A78;

  return sub_226C77DE0((v2 + 2));
}

uint64_t sub_226C84A78()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_226C84D44;
  }

  else
  {
    v2 = sub_226C84B8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C84B8C()
{
  sub_226C86498(v0 + 16, v0 + 56);
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_226C84C30;
  v2 = *(v0 + 96);

  return sub_226C79EE8(v0 + 16, v2);
}

uint64_t sub_226C84C30()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_226C867E0;
  }

  else
  {
    v2 = sub_226C867E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C84D44()
{
  v1 = *(v0 + 120);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_226C84DE4;
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);

  return sub_226C7A814(v3, v4);
}

uint64_t sub_226C84DE4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_226C867E8;
  }

  else
  {
    v2 = sub_226C867DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C84EF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D6BA4C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[7] = v4;
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8848, &unk_226D79EE8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[11] = v5;
  *v5 = v2;
  v5[1] = sub_226C85054;

  return sub_226CAADC0(v4);
}

uint64_t sub_226C85054()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_226C852F4;
  }

  else
  {
    v2 = sub_226C85168;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C85168()
{
  (*(v0[5] + 32))(v0[10], v0[7], v0[4]);
  swift_storeEnumTagMultiPayload();
  sub_226AC40E8(v0[10], v0[9], &qword_27D7A8848, &unk_226D79EE8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    v0[15] = *v2;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_226C856FC;
    v5 = v0[2];

    return sub_226CAC154(v3, v5);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v2, v0[4]);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_226C85468;
    v8 = v0[6];
    v9 = v0[2];

    return sub_226CAB65C(v8, v9);
  }
}

uint64_t sub_226C852F4()
{
  *v0[10] = v0[12];
  swift_storeEnumTagMultiPayload();
  sub_226AC40E8(v0[10], v0[9], &qword_27D7A8848, &unk_226D79EE8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    v0[15] = *v2;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_226C856FC;
    v5 = v0[2];

    return sub_226CAC154(v3, v5);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v2, v0[4]);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_226C85468;
    v8 = v0[6];
    v9 = v0[2];

    return sub_226CAB65C(v8, v9);
  }
}

uint64_t sub_226C85468()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226C85638;
  }

  else
  {
    v2 = sub_226C8557C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C8557C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  sub_226AC47B0(v0[10], &qword_27D7A8848, &unk_226D79EE8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226C85638()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  sub_226AC47B0(v0[10], &qword_27D7A8848, &unk_226D79EE8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226C856FC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_226C858BC;
  }

  else
  {
    v2 = sub_226C85810;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}