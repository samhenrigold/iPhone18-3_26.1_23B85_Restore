uint64_t sub_226AD427C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 88) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_226AD43DC, 0, 0);
}

uint64_t sub_226AD43DC()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = swift_allocObject();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v9 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);

  v4 = v1;
  v5 = swift_task_alloc();
  v0[13] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FA8, &qword_226D73790);
  *v5 = v0;
  v5[1] = sub_226AD44FC;
  v7 = v0[2];

  return v9(v7, &unk_226D70860, v3, v6);
}

uint64_t sub_226AD44FC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226AD4688;
  }

  else
  {

    v2 = sub_226AD4618;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226AD4618()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226AD4688()
{

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  v8 = v0[9];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to match an institution with a payment pass: %@", v9, 0xCu);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);

    v13 = v4;
    v4 = v8;
  }

  else
  {

    v13 = v8;
  }

  v14 = v0[2];
  v15 = sub_226D671FC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

id sub_226AD48A4(uint64_t a1, unint64_t a2)
{
  v5 = v2[27];
  v6 = v2[28];
  __swift_project_boxed_opaque_existential_1(v2 + 24, v5);
  (*(v6 + 8))(&v16, v5, v6);
  v7 = v16;
  v8 = sub_226D6E36C();
  v9 = [v7 passWithFPANIdentifier_];

  if (!v9)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F710);

    v11 = sub_226D6E05C();
    v12 = sub_226D6E9CC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_226AC4530(a1, a2, &v16);
      _os_log_impl(&dword_226AB4000, v11, v12, "A pass with %s is not found, skipping matching.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }

    return 0;
  }

  return v9;
}

uint64_t sub_226AD4A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226AD4A8C, 0, 0);
}

uint64_t sub_226AD4A8C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FA8, &qword_226D73790);
  *v2 = v0;
  v2[1] = sub_226AD4B7C;
  v4 = *(v0 + 16);

  return MEMORY[0x282116CE0](v4, "bankConnect/passMatcher", 23, 2, &unk_226D70D40, v1, v3);
}

uint64_t sub_226AD4B7C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AD4CB8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226AD4CB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226AD4D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226AD4D40, 0, 0);
}

uint64_t sub_226AD4D40()
{
  v19 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = [v6 primaryAccountIdentifier];
    v10 = sub_226D6E39C();
    v12 = v11;

    v13 = sub_226AC4530(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_226AB4000, v4, v5, "Fetching institution for payment pass with fpanID: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v14 = swift_task_alloc();
  v0[5] = v14;
  *v14 = v0;
  v14[1] = sub_226AD4F38;
  v15 = v0[4];
  v16 = v0[2];

  return sub_226AD502C(v16, v15);
}

uint64_t sub_226AD4F38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226AD502C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_226D671FC();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v3;
  v6[1] = sub_226AD5124;

  return sub_226ADE79C(a2);
}

uint64_t sub_226AD5124(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226AD5274, 0, 0);
  }
}

id sub_226AD5274()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    (*(*(v0 + 48) + 16))(*(v0 + 56), v1 + ((*(*(v0 + 48) + 80) + 32) & ~*(*(v0 + 48) + 80)), *(v0 + 40));
    if (v2 == 1)
    {
      v3 = [*(v0 + 24) associatedApplicationIdentifiers];
      if (!v3 || (v4 = v3, v5 = sub_226D6E89C(), v4, v6 = sub_226AE10EC(v5), , !v6))
      {

        v6 = MEMORY[0x277D84FA0];
      }

      *(v0 + 80) = v6;
      result = [*(v0 + 24) storeIdentifiers];
      if (result)
      {
        v8 = result;

        sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
        v9 = sub_226D6E5EC();
        *(v0 + 88) = v9;

        v10 = swift_task_alloc();
        *(v0 + 96) = v10;
        *v10 = v0;
        v10[1] = sub_226AD565C;
        v11 = *(v0 + 56);

        return sub_226ADBB60(v11, v6, v9);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v16 = sub_226D6E07C();
    __swift_project_value_buffer(v16, qword_28105F710);

    v17 = sub_226D6E05C();
    v18 = sub_226D6E9CC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      v20 = *(v1 + 16);

      *(v19 + 4) = v20;

      _os_log_impl(&dword_226AB4000, v17, v18, "More than one (%{public}ld) institutions matched to pass, aborting matching.", v19, 0xCu);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  else
  {

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v12 = sub_226D6E07C();
    __swift_project_value_buffer(v12, qword_28105F710);
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9EC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226AB4000, v13, v14, "No institution matched, returning nil.", v15, 2u);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }
  }

  (*(*(v0 + 48) + 56))(*(v0 + 16), 1, 1, *(v0 + 40));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_226AD565C(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_226AD5898;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v5 = sub_226AD57C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226AD57C8()
{
  v1 = *(v0 + 48);
  if (*(v0 + 112) == 1)
  {
    (*(v1 + 32))(*(v0 + 16), *(v0 + 56), *(v0 + 40));
    v2 = 0;
  }

  else
  {
    (*(v1 + 8))(*(v0 + 56), *(v0 + 40));
    v2 = 1;
  }

  (*(*(v0 + 48) + 56))(*(v0 + 16), v2, 1, *(v0 + 40));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226AD5898()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t BankConnectPassMatcher.institutions(for:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_226D690BC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AD59D4, 0, 0);
}

uint64_t sub_226AD59D4()
{
  v53 = v0;
  v2 = *(v0 + 72);
  v48 = *(v0 + 80);
  v3 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 40;
    v44 = v2 + 40;
    do
    {
      v45 = v3;
      v7 = (v6 + 16 * v5);
      v3 = v5;
      while (1)
      {
        if (v3 >= v4)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (__OFADD__(v3, 1))
        {
          goto LABEL_33;
        }

        v50 = v3 + 1;
        v8 = *(v7 - 1);
        v1 = *v7;
        v10 = v48[27];
        v9 = v48[28];
        __swift_project_boxed_opaque_existential_1(v48 + 24, v10);
        v11 = *(v9 + 8);

        v11(&v52, v10, v9);
        v12 = v52;
        v13 = sub_226D6E36C();
        v14 = [v12 passWithFPANIdentifier_];

        if (v14)
        {
          break;
        }

        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v15 = sub_226D6E07C();
        __swift_project_value_buffer(v15, qword_28105F710);

        v16 = sub_226D6E05C();
        v17 = sub_226D6E9CC();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v52 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_226AC4530(v8, v1, &v52);
          _os_log_impl(&dword_226AB4000, v16, v17, "A pass with %s is not found, skipping matching.", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v19);
          MEMORY[0x22AA8BEE0](v19, -1, -1);
          MEMORY[0x22AA8BEE0](v18, -1, -1);
        }

        ++v3;
        v7 += 2;
        if (v50 == v4)
        {
          v3 = v45;
          goto LABEL_17;
        }
      }

      MEMORY[0x22AA8A610](v20);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226D6E61C();
      }

      sub_226D6E65C();
      v5 = v3 + 1;
      v3 = v51;
      v6 = v44;
    }

    while (v50 != v4);
  }

LABEL_17:
  v46[14] = v3;
  sub_226AE532C(v46[10] + 16, (v46 + 2));
  v4 = v46[5];
  v1 = v46[6];
  __swift_project_boxed_opaque_existential_1(v46 + 2, v4);
  if (v3 >> 62)
  {
LABEL_34:
    v21 = sub_226D6EDFC();
  }

  else
  {
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46[15] = v21;
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v52 = MEMORY[0x277D84F90];
    v23 = sub_226AE1D68(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
      __break(1u);
      return MEMORY[0x282119F40](v23, v24, v25);
    }

    v47 = v1;
    v49 = v4;
    v26 = 0;
    v22 = v52;
    v27 = v3;
    v28 = v3 & 0xC000000000000001;
    do
    {
      if (v28)
      {
        v29 = MEMORY[0x22AA8AFD0](v26, v27);
      }

      else
      {
        v29 = *(v27 + 8 * v26 + 32);
      }

      v30 = v29;
      v31 = [v30 serialNumber];
      v32 = sub_226D6E39C();
      v34 = v33;

      v52 = v22;
      v36 = *(v22 + 16);
      v35 = *(v22 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_226AE1D68((v35 > 1), v36 + 1, 1);
        v22 = v52;
      }

      ++v26;
      *(v22 + 16) = v36 + 1;
      v37 = v22 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
    }

    while (v21 != v26);
    v4 = v49;
    v1 = v47;
  }

  v39 = v46[12];
  v38 = v46[13];
  v40 = v46[11];
  v41 = sub_226AE3C28(v22);

  *v38 = v41;
  (*(v39 + 104))(v38, *MEMORY[0x277CC7768], v40);
  v42 = swift_task_alloc();
  v46[16] = v42;
  *v42 = v46;
  v42[1] = sub_226AD5EB4;
  v23 = v46[13];
  v24 = v4;
  v25 = v1;

  return MEMORY[0x282119F40](v23, v24, v25);
}

uint64_t sub_226AD5EB4(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 136) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_226AD6014, 0, 0);
}

uint64_t sub_226AD6014()
{
  v1 = v0[14];
  v2 = v0[10];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);

  v4 = swift_task_alloc();
  v0[19] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FB8, &unk_226D70890);
  *v4 = v0;
  v4[1] = sub_226AD6140;

  return v7(v0 + 7, &unk_226D70888, v3, v5);
}

uint64_t sub_226AD6140()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_226AD62D8;
  }

  else
  {

    v2 = sub_226AD6268;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226AD6268()
{

  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

char *sub_226AD62D8()
{
  v44 = v0;

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);

  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v7 = 136315394;
    v39 = v8;
    v40 = v9;
    if (v6)
    {
      v38 = v5;
      v10 = v0[15];
      v43 = MEMORY[0x277D84F90];
      result = sub_226AE1D68(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v37 = v4;
      v12 = 0;
      v13 = v0[14];
      v14 = v43;
      v15 = v13 & 0xC000000000000001;
      v41 = v13 + 32;
      do
      {
        if (v15)
        {
          v16 = MEMORY[0x22AA8AFD0](v12, v0[14]);
        }

        else
        {
          v16 = *(v41 + 8 * v12);
        }

        v17 = v16;
        v18 = [v17 primaryAccountIdentifier];
        v19 = sub_226D6E39C();
        v21 = v20;

        v43 = v14;
        v23 = *(v14 + 16);
        v22 = *(v14 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_226AE1D68((v22 > 1), v23 + 1, 1);
          v14 = v43;
        }

        v24 = v0[15];
        ++v12;
        *(v14 + 16) = v23 + 1;
        v25 = v14 + 16 * v23;
        *(v25 + 32) = v19;
        *(v25 + 40) = v21;
      }

      while (v12 != v24);

      v4 = v37;
      v5 = v38;
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v28 = v0[20];
    v0[8] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
    sub_226AE3D6C();
    v29 = sub_226D6E31C();
    v31 = v30;

    v32 = sub_226AC4530(v29, v31, &v42);

    *(v7 + 4) = v32;
    *(v7 + 12) = 2112;
    v33 = v28;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v34;
    *v39 = v34;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to match institutions with payment passes with fpanIDs: %s: %@.", v7, 0x16u);
    sub_226AC47B0(v39, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x22AA8BEE0](v40, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);

    v27 = v28;
  }

  else
  {
    v26 = v0[20];

    v27 = v26;
  }

  v35 = v0[1];
  v36 = MEMORY[0x277D84F90];

  return v35(v36);
}

uint64_t sub_226AD66A0(uint64_t a1)
{
  result = MEMORY[0x22AA8A960](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_226C24D14(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226AD67BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226AD67E0, 0, 0);
}

uint64_t sub_226AD67E0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FB8, &unk_226D70890);
  *v2 = v0;
  v2[1] = sub_226AD68D0;
  v4 = *(v0 + 16);

  return MEMORY[0x282116CE0](v4, "bankConnect/passesMatcher", 25, 2, &unk_226D70CA0, v1, v3);
}

uint64_t sub_226AD68D0()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AE5A90, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226AD6A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_226AD6A30, 0, 0);
}

char *sub_226AD6A30()
{
  v38 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F710);

  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v5 = 136315138;
    if (v4 >> 62)
    {
      v7 = sub_226D6EDFC();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v37 = MEMORY[0x277D84F90];
      result = sub_226AE1D68(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return result;
      }

      v33 = v6;
      v34 = v5;
      v35 = v2;
      v8 = v37;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = 0;
        do
        {
          MEMORY[0x22AA8AFD0](v10, v0[5]);
          v11 = [swift_unknownObjectRetain() primaryAccountIdentifier];
          v12 = sub_226D6E39C();
          v14 = v13;

          swift_unknownObjectRelease_n();
          v37 = v8;
          v16 = *(v8 + 16);
          v15 = *(v8 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_226AE1D68((v15 > 1), v16 + 1, 1);
            v8 = v37;
          }

          ++v10;
          *(v8 + 16) = v16 + 1;
          v17 = v8 + 16 * v16;
          *(v17 + 32) = v12;
          *(v17 + 40) = v14;
        }

        while (v7 != v10);
      }

      else
      {
        v18 = (v0[5] + 32);
        do
        {
          v19 = *v18;
          v20 = [v19 primaryAccountIdentifier];
          v21 = sub_226D6E39C();
          v23 = v22;

          v37 = v8;
          v25 = *(v8 + 16);
          v24 = *(v8 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_226AE1D68((v24 > 1), v25 + 1, 1);
            v8 = v37;
          }

          *(v8 + 16) = v25 + 1;
          v26 = v8 + 16 * v25;
          *(v26 + 32) = v21;
          *(v26 + 40) = v23;
          ++v18;
          --v7;
        }

        while (v7);
      }

      v2 = v35;
      v6 = v33;
      v5 = v34;
    }

    v0[2] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
    sub_226AE3D6C();
    v27 = sub_226D6E31C();
    v29 = v28;

    v30 = sub_226AC4530(v27, v29, &v36);

    *(v5 + 4) = v30;
    _os_log_impl(&dword_226AB4000, v2, v3, "Fetching institutions for payment passes with fpanIDs: %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v31 = swift_task_alloc();
  v0[6] = v31;
  *v31 = v0;
  v31[1] = sub_226AD6DFC;
  v32 = v0[5];

  return sub_226AD6F6C(v32);
}

uint64_t sub_226AD6DFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_226AD6F48, 0, 0);
  }
}

uint64_t sub_226AD6F6C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = sub_226D671FC();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = sub_226D68DEC();
  v2[8] = v5;
  v2[9] = *(v5 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[14] = v6;
  *v6 = v2;
  v6[1] = sub_226AD70F4;

  return sub_226AD8504(a1);
}

uint64_t sub_226AD70F4(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226AD7278, 0, 0);
  }
}

uint64_t sub_226AD7278(__n128 a1)
{
  v63 = v1;
  result = *(v1 + 120);
  v3 = *(result + 16);
  *(v1 + 136) = v3;
  if (v3)
  {
    *(v1 + 224) = *(*(v1 + 72) + 80);
    v4 = *(v1 + 128);
    v5 = MEMORY[0x277D84F90];
    *(v1 + 144) = 0;
    *(v1 + 152) = v5;
    if (*(result + 16))
    {
      v6 = 0;
      a1.n128_u64[0] = 136315394;
      v56 = a1;
      while (1)
      {
        v7 = *(v1 + 104);
        v8 = *(v1 + 64);
        v9 = *(v1 + 72);
        v10 = *(v1 + 16);
        v12 = *(v9 + 16);
        v9 += 16;
        v11 = v12;
        v13 = *(v9 + 56);
        v14 = result + ((*(v1 + 224) + 32) & ~*(v1 + 224)) + v13 * v6;
        *(v1 + 160) = v13;
        *(v1 + 168) = v12;
        *(v1 + 176) = v9 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v12(v7, v14, v8);
        v15 = swift_task_alloc();
        *(v15 + 16) = v7;
        v16 = sub_226BA2CBC(sub_226AE530C, v15, v10);
        *(v1 + 184) = v16;

        if (v16)
        {
          break;
        }

        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v17 = *(v1 + 104);
        v19 = *(v1 + 80);
        v18 = *(v1 + 88);
        v20 = *(v1 + 64);
        v21 = sub_226D6E07C();
        __swift_project_value_buffer(v21, qword_28105F710);
        v11(v18, v17, v20);
        v11(v19, v17, v20);
        v22 = sub_226D6E05C();
        v23 = sub_226D6E9CC();
        v24 = os_log_type_enabled(v22, v23);
        v26 = *(v1 + 80);
        v25 = *(v1 + 88);
        v27 = *(v1 + 64);
        v28 = *(v1 + 72);
        if (v24)
        {
          v60 = v23;
          v30 = *(v1 + 40);
          v29 = *(v1 + 48);
          v57 = *(v1 + 32);
          v31 = swift_slowAlloc();
          log = v22;
          v59 = swift_slowAlloc();
          v62[0] = v59;
          *v31 = v56.n128_u32[0];
          sub_226D68DCC();
          v32 = sub_226D671DC();
          v61 = v4;
          v34 = v33;
          (*(v30 + 8))(v29, v57);
          v35 = *(v28 + 8);
          v35(v25, v27);
          v36 = sub_226AC4530(v32, v34, v62);
          v4 = v61;

          *(v31 + 4) = v36;
          *(v31 + 12) = 2080;
          v37 = sub_226D68DDC();
          v39 = v38;
          v35(v26, v27);
          v40 = sub_226AC4530(v37, v39, v62);

          *(v31 + 14) = v40;
          _os_log_impl(&dword_226AB4000, log, v60, "Institution %s was matched with a non-existing pass %s", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v59, -1, -1);
          v41 = v31;
          v5 = MEMORY[0x277D84F90];
          MEMORY[0x22AA8BEE0](v41, -1, -1);
        }

        else
        {

          v42 = *(v28 + 8);
          v42(v26, v27);
          v42(v25, v27);
        }

        v43 = *(v1 + 136);
        v44 = *(v1 + 144) + 1;
        (*(*(v1 + 72) + 8))(*(v1 + 104), *(v1 + 64));
        if (v44 == v43)
        {
          goto LABEL_18;
        }

        v6 = *(v1 + 144) + 1;
        *(v1 + 144) = v6;
        *(v1 + 152) = v5;
        result = *(v1 + 120);
        if (v6 >= *(result + 16))
        {
          goto LABEL_25;
        }
      }

      sub_226D68DCC();
      v45 = [v16 associatedApplicationIdentifiers];
      if (!v45 || (v46 = v45, v47 = sub_226D6E89C(), v46, v48 = sub_226AE10EC(v47), , !v48))
      {

        v48 = MEMORY[0x277D84FA0];
      }

      *(v1 + 192) = v48;
      v49 = [v16 storeIdentifiers];
      if (v49)
      {
        v50 = v49;
        sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
        v51 = sub_226D6E5EC();
      }

      else
      {
        v51 = MEMORY[0x277D84F90];
      }

      *(v1 + 200) = v51;
      v54 = swift_task_alloc();
      *(v1 + 208) = v54;
      *v54 = v1;
      v54[1] = sub_226AD7808;
      v55 = *(v1 + 56);

      return sub_226ADBB60(v55, v48, v51);
    }

    else
    {
LABEL_25:
      __break(1u);
    }
  }

  else
  {
LABEL_18:

    v52 = *(v1 + 8);
    v53 = MEMORY[0x277D84F90];

    return v52(v53);
  }

  return result;
}

uint64_t sub_226AD7808(char a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    (*(*(v4 + 40) + 8))(*(v4 + 56), *(v4 + 32));

    v5 = sub_226AD8024;
  }

  else
  {
    v6 = *(v4 + 56);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    *(v4 + 228) = a1 & 1;
    (*(v8 + 8))(v6, v7);

    v5 = sub_226AD79C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226AD79C8()
{
  v71 = v0;
  if (*(v0 + 228))
  {
    (*(v0 + 168))(*(v0 + 96), *(v0 + 104), *(v0 + 64));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v0 + 152);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_30:
      v69 = sub_226BBAAE4(0, v69[2] + 1, 1, v69, v2);
    }

    v4 = v69[2];
    v3 = v69[3];
    if (v4 >= v3 >> 1)
    {
      v69 = sub_226BBAAE4((v3 > 1), v4 + 1, 1, v69, v2);
    }

    v5 = *(v0 + 160);
    v6 = *(v0 + 224);
    v7 = *(v0 + 96);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);

    v69[2] = v4 + 1;
    (*(v9 + 32))(v69 + ((v6 + 32) & ~v6) + v5 * v4, v7, v8);
  }

  else
  {

    v69 = *(v0 + 152);
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144) + 1;
  (*(*(v0 + 72) + 8))(*(v0 + 104), *(v0 + 64));
  if (v12 == v11)
  {
LABEL_8:

    v13 = *(v0 + 8);

    return v13(v69);
  }

  else
  {
    v2.n128_u64[0] = 136315394;
    v63 = v2;
    while (1)
    {
      v29 = *(v0 + 144) + 1;
      *(v0 + 144) = v29;
      *(v0 + 152) = v69;
      v30 = *(v0 + 120);
      if (v29 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v31 = *(v0 + 104);
      v32 = *(v0 + 64);
      v33 = *(v0 + 72);
      v34 = *(v0 + 16);
      v36 = *(v33 + 16);
      v33 += 16;
      v35 = v36;
      v37 = *(v33 + 56);
      v38 = v30 + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + v37 * v29;
      *(v0 + 160) = v37;
      *(v0 + 168) = v36;
      *(v0 + 176) = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v36(v31, v38, v32);
      v39 = swift_task_alloc();
      *(v39 + 16) = v31;
      v40 = sub_226BA2CBC(sub_226AE530C, v39, v34);
      *(v0 + 184) = v40;

      if (v40)
      {
        break;
      }

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 104);
      v43 = *(v0 + 80);
      v42 = *(v0 + 88);
      v44 = *(v0 + 64);
      v45 = sub_226D6E07C();
      __swift_project_value_buffer(v45, qword_28105F710);
      v35(v42, v41, v44);
      v35(v43, v41, v44);
      v46 = sub_226D6E05C();
      v47 = sub_226D6E9CC();
      v48 = os_log_type_enabled(v46, v47);
      v50 = *(v0 + 80);
      v49 = *(v0 + 88);
      v51 = *(v0 + 64);
      v52 = *(v0 + 72);
      if (v48)
      {
        v67 = v47;
        v16 = *(v0 + 40);
        v15 = *(v0 + 48);
        v64 = *(v0 + 32);
        v17 = swift_slowAlloc();
        log = v46;
        v66 = swift_slowAlloc();
        v70[0] = v66;
        *v17 = v63.n128_u32[0];
        sub_226D68DCC();
        v18 = sub_226D671DC();
        v68 = v10;
        v20 = v19;
        (*(v16 + 8))(v15, v64);
        v21 = *(v52 + 8);
        v21(v49, v51);
        v22 = sub_226AC4530(v18, v20, v70);
        v10 = v68;

        *(v17 + 4) = v22;
        *(v17 + 12) = 2080;
        v23 = sub_226D68DDC();
        v25 = v24;
        v21(v50, v51);
        v26 = sub_226AC4530(v23, v25, v70);

        *(v17 + 14) = v26;
        _os_log_impl(&dword_226AB4000, log, v67, "Institution %s was matched with a non-existing pass %s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v66, -1, -1);
        MEMORY[0x22AA8BEE0](v17, -1, -1);
      }

      else
      {

        v53 = *(v52 + 8);
        v53(v50, v51);
        v53(v49, v51);
      }

      v27 = *(v0 + 136);
      v28 = *(v0 + 144) + 1;
      (*(*(v0 + 72) + 8))(*(v0 + 104), *(v0 + 64));
      if (v28 == v27)
      {
        goto LABEL_8;
      }
    }

    sub_226D68DCC();
    v54 = [v40 associatedApplicationIdentifiers];
    if (!v54 || (v55 = v54, v56 = sub_226D6E89C(), v55, v57 = sub_226AE10EC(v56), , !v57))
    {

      v57 = MEMORY[0x277D84FA0];
    }

    *(v0 + 192) = v57;
    v58 = [v40 storeIdentifiers];
    if (v58)
    {
      v59 = v58;
      sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
      v60 = sub_226D6E5EC();
    }

    else
    {
      v60 = MEMORY[0x277D84F90];
    }

    *(v0 + 200) = v60;
    v61 = swift_task_alloc();
    *(v0 + 208) = v61;
    *v61 = v0;
    v61[1] = sub_226AD7808;
    v62 = *(v0 + 56);

    return sub_226ADBB60(v62, v57, v60);
  }
}

uint64_t sub_226AD8024()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

void *BankConnectPassMatcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);

  sub_226AC47B0((v0 + 19), &qword_27D7A5FD0, &qword_226D708A0);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  return v0;
}

uint64_t BankConnectPassMatcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);

  sub_226AC47B0((v0 + 19), &qword_27D7A5FD0, &qword_226D708A0);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_226AD81C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226AD827C;

  return BankConnectPassMatcher.institution(for:)(a1, a2, a3);
}

uint64_t sub_226AD827C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226AD8370(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD8408;

  return BankConnectPassMatcher.institutions(for:)(a1);
}

uint64_t sub_226AD8408(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_226AD8504(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D685BC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v2[8] = swift_task_alloc();
  v4 = sub_226D68BAC();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_226D688BC();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = sub_226D68BFC();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  sub_226D671FC();
  v2[21] = swift_task_alloc();
  v2[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62A0, &qword_226D70CD0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v7 = sub_226D68DEC();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v8 = sub_226D684AC();
  v2[30] = v8;
  v2[31] = *(v8 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62A8, &qword_226D70CD8);
  v2[36] = swift_task_alloc();
  v9 = sub_226D6870C();
  v2[37] = v9;
  v2[38] = *(v9 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AD893C, 0, 0);
}

uint64_t sub_226AD893C()
{
  v1 = v0[3];
  v28 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v1 &= 0xFFFFFFFFFFFFFF8uLL;
    v5 = v0[3] + 32;
    v6 = &off_2785C8000;
    v26 = v1;
    v27 = i;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x22AA8AFD0](v3, v24[3]);
      }

      else
      {
        if (v3 >= *(v1 + 16))
        {
          goto LABEL_32;
        }

        v7 = *(v5 + 8 * v3);
      }

      v8 = v7;
      v0 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v9 = [v7 v6[480]];
      if (v9 && (v9, (v10 = [v8 issuerCountryCode]) != 0))
      {
        v11 = v10;
        sub_226D6E39C();

        __swift_project_boxed_opaque_existential_1((v25 + 56), *(v25 + 80));
        LOBYTE(v11) = sub_226D66E8C();

        if (v11)
        {
          v12 = [v8 associatedApplicationIdentifiers];
          if (!v12 || (v13 = v12, v14 = sub_226D6E89C(), v13, v15 = sub_226AE10EC(v14), , !v15))
          {

            v15 = MEMORY[0x277D84FA0];
          }

          v6 = &off_2785C8000;
          v16 = [v8 storeIdentifiers];
          if (v16)
          {
            v17 = v16;
            sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
            v18 = sub_226D6E5EC();
          }

          else
          {
            v18 = MEMORY[0x277D84F90];
          }

          v19 = *(v15 + 16);

          if (v19)
          {

            goto LABEL_25;
          }

          if (v18 >> 62)
          {
            v20 = sub_226D6EDFC();
          }

          else
          {
            v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v20)
          {
LABEL_25:
            sub_226D6EF6C();
            sub_226D6EF9C();
            sub_226D6EFAC();
            sub_226D6EF7C();
          }

          else
          {
          }

          v1 = v26;
          i = v27;
          goto LABEL_5;
        }

        v1 = v26;
        i = v27;
        v6 = &off_2785C8000;
      }

      else
      {
      }

LABEL_5:
      ++v3;
      if (v0 == i)
      {
        v21 = v28;
        v0 = v24;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_35:
  v0[41] = v21;
  v22 = swift_task_alloc();
  v0[42] = v22;
  *v22 = v0;
  v22[1] = sub_226AD8CA0;

  return sub_226ADCB10();
}

uint64_t sub_226AD8CA0()
{

  return MEMORY[0x2822009F8](sub_226AD8D9C, 0, 0);
}

uint64_t sub_226AD8D9C()
{
  v2 = v0;
  v3 = v0[41];
  v4 = MEMORY[0x277D84F90];
  v7 = sub_226B222FC(MEMORY[0x277D84F90]);
  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    v8 = sub_226D6EDFC();
    v0[43] = v8;
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *(v0[41] + 16);
    v0[43] = v8;
    if (v8)
    {
LABEL_4:
      v9 = v0[41];
      v10 = *(v0[4] + 144);
      v0[46] = v7;
      v0[47] = v7;
      v0[44] = v10;
      v0[45] = 0;
      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA8AFD0](0);
LABEL_8:
        v0[48] = v11;
        v0[49] = 1;
        v12 = [v11 serialNumber];
        v13 = sub_226D6E39C();
        v15 = v14;

        v0[50] = v13;
        v0[51] = v15;
        sub_226D6C11C();
        sub_226AE41E4(&qword_27D7A62B0, MEMORY[0x277CC81F0], MEMORY[0x277CC81F8]);
        v17 = sub_226D6E6CC();

        return MEMORY[0x2822009F8](sub_226AD96EC, v17, v16);
      }

      if (*(v9 + 16))
      {
        v11 = *(v9 + 32);
        goto LABEL_8;
      }

      __break(1u);
      return MEMORY[0x282119B28](v8, v9, v5, v6);
    }
  }

  v0[54] = v7;
  v18 = v0[41];

  v20 = sub_226AD66A0(v19);
  v85 = v4;
  v21 = v2[41];
  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v22 = sub_226D6EDFC();
    v21 = v2[41];
    v80 = v7;
    v81 = v2;
    if (!v22)
    {
      goto LABEL_15;
    }

LABEL_17:
    v23 = 0;
    v24 = v20 + 56;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x22AA8AFD0](v23, v81[41]);
      }

      else
      {
        if (v23 >= *(v21 + 16))
        {
          goto LABEL_64;
        }

        v25 = *(v21 + 32 + 8 * v23);
      }

      v1 = v25;
      if (__OFADD__(v23++, 1))
      {
        break;
      }

      v2 = v22;
      v27 = [v25 serialNumber];
      v28 = sub_226D6E39C();
      v30 = v29;

      if (*(v20 + 16) && (sub_226D6F2FC(), sub_226D6E42C(), v31 = sub_226D6F35C(), v32 = -1 << *(v20 + 32), v33 = v31 & ~v32, ((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v34 = ~v32;
        while (1)
        {
          v35 = (*(v20 + 48) + 16 * v33);
          v36 = *v35 == v28 && v35[1] == v30;
          if (v36 || (sub_226D6F21C() & 1) != 0)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:

        sub_226D6EF6C();
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      v22 = v2;
      if (v23 == v2)
      {
        v1 = v85;
        v7 = v80;
        v2 = v81;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v22 = *(v21 + 16);
  v80 = v7;
  v81 = v2;
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_15:
  v1 = MEMORY[0x277D84F90];
LABEL_37:
  v2[55] = v1;

  v37 = *(v7 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v37)
  {
    v72 = v1;
    v38 = v2[31];
    v39 = v2[27];
    v78 = v2[24];
    v77 = v2[22];
    v86 = MEMORY[0x277D84F90];
    sub_226AE1D88(0, v37, 0);
    v20 = v86;
    v1 = v7 + 64;
    v40 = sub_226D6ED6C();
    v41 = 0;
    v42 = *(v7 + 36);
    v79 = v39;
    v73 = v7 + 72;
    v74 = v37;
    v76 = (v7 + 64);
    v75 = v42;
    while ((v40 & 0x8000000000000000) == 0 && v40 < 1 << *(v7 + 32))
    {
      if ((*(v1 + 8 * (v40 >> 6)) & (1 << v40)) == 0)
      {
        goto LABEL_66;
      }

      if (v42 != *(v7 + 36))
      {
        goto LABEL_67;
      }

      v83 = v40 >> 6;
      v82 = v41;
      v45 = v2[24];
      v44 = v2[25];
      v46 = *(v77 + 48);
      v47 = v2[30];
      v84 = v20;
      v48 = v2[23];
      v49 = *(v7 + 56);
      v50 = (*(v7 + 48) + 16 * v40);
      v52 = *v50;
      v51 = v50[1];
      (*(v38 + 16))(v44 + v46, v49 + *(v38 + 72) * v40, v47);
      *v45 = v52;
      *(v78 + 8) = v51;
      (*(v38 + 32))(&v45[*(v77 + 48)], v44 + v46, v47);
      sub_226AC40E8(v45, v48, &qword_27D7A62A0, &qword_226D70CD0);

      sub_226D671EC();
      sub_226AC40E8(v45, v48, &qword_27D7A62A0, &qword_226D70CD0);
      v53 = *(v77 + 48);
      sub_226D68DBC();
      sub_226AC47B0(v45, &qword_27D7A62A0, &qword_226D70CD0);
      v54 = v48 + v53;
      v20 = v84;
      (*(v38 + 8))(v54, v47);
      v56 = *(v84 + 16);
      v55 = *(v84 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_226AE1D88((v55 > 1), v56 + 1, 1);
        v20 = v84;
      }

      v2 = v81;
      v57 = v81[29];
      v58 = v81[26];
      *(v20 + 16) = v56 + 1;
      (*(v79 + 32))(v20 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v56, v57, v58);
      v7 = v80;
      v43 = 1 << *(v80 + 32);
      v1 = v76;
      if (v40 >= v43)
      {
        goto LABEL_68;
      }

      v59 = v76[v83];
      if ((v59 & (1 << v40)) == 0)
      {
        goto LABEL_69;
      }

      v42 = v75;
      if (v75 != *(v80 + 36))
      {
        goto LABEL_70;
      }

      v60 = v59 & (-2 << (v40 & 0x3F));
      if (v60)
      {
        v43 = __clz(__rbit64(v60)) | v40 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v61 = v83 << 6;
        v62 = (v73 + 8 * v83);
        v63 = v83 + 1;
        while (v63 < (v43 + 63) >> 6)
        {
          v65 = *v62++;
          v64 = v65;
          v61 += 64;
          ++v63;
          if (v65)
          {
            sub_226AE5444(v40, v75, 0);
            v43 = __clz(__rbit64(v64)) + v61;
            goto LABEL_40;
          }
        }

        sub_226AE5444(v40, v75, 0);
      }

LABEL_40:
      v41 = v82 + 1;
      v40 = v43;
      if (v82 + 1 == v74)
      {
        v1 = v72;
        goto LABEL_57;
      }
    }

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
LABEL_70:
    __break(1u);
LABEL_71:
    if (!sub_226D6EDFC())
    {
      goto LABEL_72;
    }

LABEL_60:
    v66 = v2[4];
    __swift_project_boxed_opaque_existential_1((v66 + 96), *(v66 + 120));
    v67 = sub_226D6C2AC();
    v2[57] = v67;
    v68 = swift_task_alloc();
    v2[58] = v68;
    v68[2] = v67;
    v68[3] = v1;
    v68[4] = v66;
    v69 = swift_task_alloc();
    v2[59] = v69;
    *v69 = v2;
    v69[1] = sub_226ADA60C;
    v8 = v2[20];
    v6 = v2[18];
    v9 = &unk_226D70CF0;
    v5 = v68;

    return MEMORY[0x282119B28](v8, v9, v5, v6);
  }

LABEL_57:
  v2[56] = v20;
  if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    goto LABEL_71;
  }

  if (*(v1 + 16))
  {
    goto LABEL_60;
  }

LABEL_72:

  v70 = v2[1];

  return v70(v20);
}

uint64_t sub_226AD96EC()
{
  v1 = v0[45];
  sub_226D6C10C();
  v0[52] = v1;
  if (v1)
  {
    v2 = sub_226AD9788;
  }

  else
  {
    v0[53] = 0;

    v2 = sub_226AD9960;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226AD9788()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[52];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error obtaining cached response with error: %@.", v8, 0xCu);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[38] + 56))(v0[36], 1, 1, v0[37]);
  v0[53] = 0;

  return MEMORY[0x2822009F8](sub_226AD9960, 0, 0);
}

uint64_t sub_226AD9960()
{
  v5 = v1;
  v6 = v1[38];
  v8 = *(v5 + 288);
  v7 = *(v5 + 296);
  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    v9 = *(v5 + 384);

    sub_226AC47B0(v8, &qword_27D7A62A8, &qword_226D70CD8);
LABEL_13:
    v33 = *(v5 + 368);
    v21 = *(v5 + 376);
    while (1)
    {
      v34 = *(v5 + 392);
      if (v34 == *(v5 + 344))
      {
        break;
      }

      v38 = *(v5 + 424);
      *(v5 + 368) = v33;
      *(v5 + 376) = v21;
      *(v5 + 360) = v38;
      v39 = *(v5 + 328);
      if ((v39 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x22AA8AFD0](v34);
        goto LABEL_70;
      }

      if (v34 < *(v39 + 16))
      {
        v40 = *(v39 + 8 * v34 + 32);
LABEL_70:
        *(v5 + 384) = v40;
        *(v5 + 392) = v34 + 1;
        if (!__OFADD__(v34, 1))
        {
          v91 = [v40 serialNumber];
          v92 = sub_226D6E39C();
          v94 = v93;

          *(v5 + 400) = v92;
          *(v5 + 408) = v94;
          sub_226D6C11C();
          sub_226AE41E4(&qword_27D7A62B0, MEMORY[0x277CC81F0], MEMORY[0x277CC81F8]);
          v96 = sub_226D6E6CC();

          return MEMORY[0x2822009F8](sub_226AD96EC, v96, v95);
        }

LABEL_87:
        __break(1u);
LABEL_88:
        if (!sub_226D6EDFC())
        {
LABEL_89:

          v103 = *(v5 + 8);

          return v103(v2);
        }

LABEL_65:
        v83 = *(v5 + 32);
        __swift_project_boxed_opaque_existential_1((v83 + 96), *(v83 + 120));
        v84 = sub_226D6C2AC();
        *(v5 + 456) = v84;
        v85 = swift_task_alloc();
        *(v5 + 464) = v85;
        v85[2] = v84;
        v85[3] = v4;
        v85[4] = v83;
        v86 = swift_task_alloc();
        *(v5 + 472) = v86;
        *v86 = v5;
        v86[1] = sub_226ADA60C;
        v87 = *(v5 + 160);
        v88 = *(v5 + 144);
        v89 = &unk_226D70CF0;
        v90 = v85;

        return MEMORY[0x282119B28](v87, v89, v90, v88);
      }

LABEL_93:
      __break(1u);
LABEL_94:
      v104 = v21;
      sub_226C37384();
      v21 = v104;
LABEL_75:
      v2 = *(v5 + 384);
      v97 = *(v5 + 304);
      v117 = *(v5 + 296);
      v119 = *(v5 + 320);
      v98 = *(v5 + 272);
      v116 = *(v5 + 280);
      v4 = *(v5 + 240);
      v99 = *(v5 + 248);
      if (v3)
      {
        v0 = v21;

        v33 = *(v5 + 16);
        (*(v99 + 40))(v33[7] + *(v99 + 72) * v0, v98, v4);

        (*(v99 + 8))(v116, v4);
        (*(v97 + 8))(v119, v117);
        v21 = v33;
      }

      else
      {
        v33 = *(v5 + 16);
        v33[(v21 >> 6) + 8] |= 1 << v21;
        v100 = (v33[6] + 16 * v21);
        *v100 = v0;
        v100[1] = v7;
        (*(v99 + 32))(v33[7] + *(v99 + 72) * v21, v98, v4);

        (*(v99 + 8))(v116, v4);
        v87 = (*(v97 + 8))(v119, v117);
        v101 = v33[2];
        v25 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v25)
        {
          __break(1u);
          return MEMORY[0x282119B28](v87, v89, v90, v88);
        }

        v33[2] = v102;
        v21 = v33;
        v5 = v111;
      }
    }

    *(v5 + 432) = v21;
    v35 = *(v5 + 328);

    v2 = sub_226AD66A0(v113);
    v120 = MEMORY[0x277D84F90];
    v36 = *(v5 + 328);
    if (v35 < 0 || (v35 & 0x4000000000000000) != 0)
    {
      v37 = sub_226D6EDFC();
      v36 = *(v5 + 328);
      v112 = v5;
      if (!v37)
      {
LABEL_18:
        v4 = MEMORY[0x277D84F90];
LABEL_42:
        *(v5 + 440) = v4;

        v53 = *(v113 + 16);
        v2 = MEMORY[0x277D84F90];
        if (!v53)
        {
LABEL_62:
          *(v5 + 448) = v2;
          if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
          {
            goto LABEL_88;
          }

          if (!*(v4 + 16))
          {
            goto LABEL_89;
          }

          goto LABEL_65;
        }

        v105 = v4;
        v54 = *(v5 + 248);
        v55 = *(v5 + 216);
        v109 = *(v5 + 192);
        v108 = *(v5 + 176);
        v121 = MEMORY[0x277D84F90];
        sub_226AE1D88(0, v53, 0);
        v2 = v121;
        v56 = v113 + 64;
        v57 = sub_226D6ED6C();
        v58 = v113;
        v59 = v57;
        v60 = 0;
        v4 = *(v113 + 36);
        v110 = v55;
        v106 = v53;
        v107 = v4;
        v61 = v54;
        while ((v59 & 0x8000000000000000) == 0 && v59 < 1 << *(v58 + 32))
        {
          if ((*(v56 + 8 * (v59 >> 6)) & (1 << v59)) == 0)
          {
            goto LABEL_82;
          }

          if (v4 != *(v58 + 36))
          {
            goto LABEL_83;
          }

          v115 = v59 >> 6;
          v114 = v60;
          v4 = *(v5 + 192);
          v63 = *(v5 + 200);
          v64 = *(v108 + 48);
          v65 = *(v5 + 240);
          v118 = v2;
          v66 = *(v5 + 184);
          v67 = (*(v58 + 48) + 16 * v59);
          v68 = *v67;
          v69 = v67[1];
          (*(v61 + 16))(v63 + v64, *(v58 + 56) + *(v61 + 72) * v59, v65);
          *v4 = v68;
          *(v109 + 8) = v69;
          (*(v61 + 32))(v4 + *(v108 + 48), v63 + v64, v65);
          sub_226AC40E8(v4, v66, &qword_27D7A62A0, &qword_226D70CD0);

          sub_226D671EC();
          sub_226AC40E8(v4, v66, &qword_27D7A62A0, &qword_226D70CD0);
          v70 = *(v108 + 48);
          sub_226D68DBC();
          sub_226AC47B0(v4, &qword_27D7A62A0, &qword_226D70CD0);
          v71 = v66 + v70;
          v2 = v118;
          (*(v61 + 8))(v71, v65);
          v73 = *(v118 + 16);
          v72 = *(v118 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_226AE1D88((v72 > 1), v73 + 1, 1);
            v2 = v118;
          }

          v5 = v112;
          v74 = v112[29];
          v75 = v112[26];
          *(v2 + 16) = v73 + 1;
          (*(v110 + 32))(v2 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v73, v74, v75);
          v58 = v113;
          v62 = 1 << *(v113 + 32);
          v56 = v113 + 64;
          if (v59 >= v62)
          {
            goto LABEL_84;
          }

          v76 = *(v113 + 64 + 8 * v115);
          if ((v76 & (1 << v59)) == 0)
          {
            goto LABEL_85;
          }

          v4 = v107;
          if (v107 != *(v113 + 36))
          {
            goto LABEL_86;
          }

          v77 = v76 & (-2 << (v59 & 0x3F));
          if (v77)
          {
            v62 = __clz(__rbit64(v77)) | v59 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v78 = v115 << 6;
            v79 = (v113 + 72 + 8 * v115);
            v80 = v115 + 1;
            while (v80 < (v62 + 63) >> 6)
            {
              v82 = *v79++;
              v81 = v82;
              v78 += 64;
              ++v80;
              if (v82)
              {
                sub_226AE5444(v59, v107, 0);
                v58 = v113;
                v62 = __clz(__rbit64(v81)) + v78;
                goto LABEL_45;
              }
            }

            sub_226AE5444(v59, v107, 0);
            v58 = v113;
          }

LABEL_45:
          v60 = v114 + 1;
          v59 = v62;
          if (v114 + 1 == v106)
          {
            v4 = v105;
            goto LABEL_62;
          }
        }

LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v37 = *(v36 + 16);
      v112 = v5;
      if (!v37)
      {
        goto LABEL_18;
      }
    }

    v5 = 0;
    v41 = v2 + 56;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x22AA8AFD0](v5, v112[41]);
      }

      else
      {
        if (v5 >= *(v36 + 16))
        {
          goto LABEL_80;
        }

        v42 = *(v36 + 32 + 8 * v5);
      }

      v4 = v42;
      v25 = __OFADD__(v5++, 1);
      if (v25)
      {
        break;
      }

      v43 = [v42 serialNumber];
      v44 = sub_226D6E39C();
      v46 = v45;

      if (*(v2 + 16) && (sub_226D6F2FC(), sub_226D6E42C(), v47 = sub_226D6F35C(), v48 = -1 << *(v2 + 32), v49 = v47 & ~v48, ((*(v41 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0))
      {
        v50 = ~v48;
        while (1)
        {
          v51 = (*(v2 + 48) + 16 * v49);
          v52 = *v51 == v44 && v51[1] == v46;
          if (v52 || (sub_226D6F21C() & 1) != 0)
          {
            break;
          }

          v49 = (v49 + 1) & v50;
          if (((*(v41 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        if (v5 == v37)
        {
LABEL_41:
          v4 = v120;
          v5 = v112;
          goto LABEL_42;
        }
      }

      else
      {
LABEL_23:

        sub_226D6EF6C();
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
        if (v5 == v37)
        {
          goto LABEL_41;
        }
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  (*(v6 + 32))(*(v5 + 320), v8, v7);
  v10 = sub_226D686FC();
  if (!v10)
  {
LABEL_12:
    v29 = *(v5 + 384);
    v30 = *(v5 + 320);
    v7 = *(v5 + 296);
    v31 = *(v5 + 304);

    v32 = *(v31 + 8);
    v0 = v31 + 8;
    v32(v30, v7);
    goto LABEL_13;
  }

  if (!*(v10 + 16))
  {

    goto LABEL_12;
  }

  v11 = *(v5 + 384);
  v12 = *(v5 + 368);
  v3 = *(v5 + 272);
  v13 = *(v5 + 280);
  v14 = *(v5 + 248);
  v111 = v5;
  v15 = *(v5 + 240);
  v16 = *(v14 + 16);
  v16(v13, v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v15);

  v17 = [v11 serialNumber];

  v0 = sub_226D6E39C();
  v7 = v18;

  v19 = v15;
  v5 = v111;
  v16(v3, v13, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v111[2] = v12;
  v21 = sub_226C2FDD4(v0, v7);
  v23 = *(v12 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
    goto LABEL_93;
  }

  LOBYTE(v3) = v22;
  if (*(v111[46] + 24) >= v26)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_75;
  }

  sub_226C30724(v26, isUniquelyReferenced_nonNull_native);
  v21 = sub_226C2FDD4(v0, v7);
  if ((v3 & 1) == (v27 & 1))
  {
    goto LABEL_75;
  }

  return sub_226D6F25C();
}

uint64_t sub_226ADA60C()
{
  *(*v1 + 480) = v0;

  if (v0)
  {

    v2 = sub_226ADB770;
  }

  else
  {

    v2 = sub_226ADA770;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226ADA770()
{
  v1 = sub_226D68BEC();
  v0[61] = v1;
  v2 = *(v1 + 16);
  v0[62] = v2;
  if (v2)
  {
    v3 = v0;
    v4 = v0[13];
    v5 = *(v4 + 80);
    *(v3 + 136) = v5;
    v3[63] = *(v4 + 72);
    v6 = *(v4 + 16);
    v3[64] = v6;
    v3[65] = 0;
    v7 = v3[17];
    v8 = v3[12];
    v9 = v3[7];
    v10 = v3[6];
    v59 = v3[5];
    v6(v7, v1 + ((v5 + 32) & ~v5), v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62B8, &qword_226D70D00);
    *(swift_allocObject() + 16) = xmmword_226D70840;
    sub_226D6889C();
    sub_226D686EC();
    sub_226D68BDC();
    sub_226D68B7C();
    sub_226D688AC();
    (*(v4 + 8))(v7, v8);
    v11 = sub_226D685AC();
    v13 = v12;
    v3[66] = v12;
    (*(v10 + 8))(v9, v59);
    v14 = swift_task_alloc();
    v3[67] = v14;
    *v14 = v3;
    v14[1] = sub_226ADAEBC;
    v15 = v3[11];

    return sub_226ADDDC4(v15, v11, v13);
  }

  else
  {

    result = sub_226D68BEC();
    v17 = result;
    v58 = *(result + 16);
    v60 = v0;
    if (v58)
    {
      v18 = 0;
      v19 = v0[13];
      v20 = (v0[31] + 8);
      v55 = (v19 + 32);
      v52 = MEMORY[0x277D84F90];
      while (v18 < *(v17 + 16))
      {
        v21 = v0[33];
        v22 = v0[30];
        v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
        v24 = *(v19 + 72);
        (*(v19 + 16))(v0[16], v17 + v23 + v24 * v18, v0[12]);
        sub_226D6889C();
        v25 = sub_226D6849C();
        (*v20)(v21, v22);
        if (v25 == 2 || (v25 & 1) == 0)
        {
          v0 = v60;
          result = (*(v19 + 8))(v60[16], v60[12]);
        }

        else
        {
          v0 = v60;
          v26 = *v55;
          (*v55)(v60[15], v60[16], v60[12]);
          v27 = v52;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226AE1DCC(0, *(v52 + 16) + 1, 1);
            v0 = v60;
            v27 = v52;
          }

          v29 = *(v27 + 16);
          v28 = *(v27 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_226AE1DCC((v28 > 1), v29 + 1, 1);
            v0 = v60;
            v27 = v52;
          }

          v30 = v0[15];
          v31 = v0[12];
          *(v27 + 16) = v29 + 1;
          v52 = v27;
          result = v26(v27 + v23 + v29 * v24, v30, v31);
        }

        if (v58 == ++v18)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
LABEL_18:

      v32 = *(v52 + 16);
      if (v32)
      {
        v33 = v0[27];
        v34 = v0[13];
        v35 = v0[6];
        v61 = MEMORY[0x277D84F90];
        sub_226AE1D88(0, v32, 0);
        v36 = v61;
        v38 = *(v34 + 16);
        v37 = v34 + 16;
        v39 = v52 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
        v54 = *(v37 + 56);
        v56 = v38;
        v57 = v33;
        v53 = (v35 + 8);
        do
        {
          v40 = v60[14];
          v41 = v60[12];
          v42 = v60[7];
          v43 = v60[5];
          v56(v40, v39, v41);
          sub_226D6889C();
          sub_226D671EC();
          sub_226D688AC();
          sub_226D685AC();
          (*v53)(v42, v43);
          sub_226D68DBC();
          (*(v37 - 8))(v40, v41);
          v45 = *(v61 + 16);
          v44 = *(v61 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_226AE1D88((v44 > 1), v45 + 1, 1);
          }

          v46 = v60[28];
          v47 = v60[26];
          *(v61 + 16) = v45 + 1;
          (*(v57 + 32))(v61 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v45, v46, v47);
          v39 += v54;
          --v32;
        }

        while (v32);
        v0 = v60;
      }

      else
      {

        v36 = MEMORY[0x277D84F90];
      }

      v49 = v0[19];
      v48 = v0[20];
      v50 = v0[18];
      v62 = v0[56];
      sub_226CED260(v36);

      (*(v49 + 8))(v48, v50);

      v51 = v0[1];

      return v51(v62);
    }
  }

  return result;
}

uint64_t sub_226ADAEBC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_226ADB030, 0, 0);
}

uint64_t sub_226ADB030()
{
  v1 = v0[65] + 1;
  if (v1 == v0[62])
  {

    result = sub_226D68BEC();
    v3 = result;
    v59 = *(result + 16);
    v60 = v0;
    if (v59)
    {
      v4 = 0;
      v5 = v0[13];
      v6 = (v0[31] + 8);
      v56 = (v5 + 32);
      v53 = MEMORY[0x277D84F90];
      while (v4 < *(v3 + 16))
      {
        v7 = v0[33];
        v8 = v0[30];
        v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v10 = *(v5 + 72);
        (*(v5 + 16))(v0[16], v3 + v9 + v10 * v4, v0[12]);
        sub_226D6889C();
        v11 = sub_226D6849C();
        (*v6)(v7, v8);
        if (v11 == 2 || (v11 & 1) == 0)
        {
          v0 = v60;
          result = (*(v5 + 8))(v60[16], v60[12]);
        }

        else
        {
          v0 = v60;
          v12 = *v56;
          (*v56)(v60[15], v60[16], v60[12]);
          v13 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226AE1DCC(0, *(v53 + 16) + 1, 1);
            v0 = v60;
            v13 = v53;
          }

          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_226AE1DCC((v14 > 1), v15 + 1, 1);
            v0 = v60;
            v13 = v53;
          }

          v16 = v0[15];
          v17 = v0[12];
          *(v13 + 16) = v15 + 1;
          v53 = v13;
          result = v12(v13 + v9 + v15 * v10, v16, v17);
        }

        if (v59 == ++v4)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v53 = MEMORY[0x277D84F90];
LABEL_18:

      v33 = *(v53 + 16);
      if (v33)
      {
        v34 = v0[27];
        v35 = v0[13];
        v36 = v0[6];
        v62 = MEMORY[0x277D84F90];
        sub_226AE1D88(0, v33, 0);
        v37 = v62;
        v39 = *(v35 + 16);
        v38 = v35 + 16;
        v40 = v53 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
        v55 = *(v38 + 56);
        v57 = v39;
        v58 = v34;
        v54 = (v36 + 8);
        do
        {
          v41 = v60[14];
          v42 = v60[12];
          v43 = v60[7];
          v44 = v60[5];
          v57(v41, v40, v42);
          sub_226D6889C();
          sub_226D671EC();
          sub_226D688AC();
          sub_226D685AC();
          (*v54)(v43, v44);
          sub_226D68DBC();
          (*(v38 - 8))(v41, v42);
          v46 = *(v62 + 16);
          v45 = *(v62 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_226AE1D88((v45 > 1), v46 + 1, 1);
          }

          v47 = v60[28];
          v48 = v60[26];
          *(v62 + 16) = v46 + 1;
          (*(v58 + 32))(v62 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v46, v47, v48);
          v40 += v55;
          --v33;
        }

        while (v33);
        v0 = v60;
      }

      else
      {

        v37 = MEMORY[0x277D84F90];
      }

      v50 = v0[19];
      v49 = v0[20];
      v51 = v0[18];
      v63 = v0[56];
      sub_226CED260(v37);

      (*(v50 + 8))(v49, v51);

      v52 = v0[1];

      return v52(v63);
    }
  }

  else
  {
    v0[65] = v1;
    v19 = v0[63];
    v18 = v0[64];
    v20 = *(v0 + 544);
    v21 = v0[61];
    v22 = v0;
    v23 = v0[17];
    v24 = v0[12];
    v25 = v0[13];
    v26 = v0[7];
    v27 = v0[6];
    v61 = v22[5];
    v18(v23, v21 + ((v20 + 32) & ~v20) + v19 * v1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62B8, &qword_226D70D00);
    *(swift_allocObject() + 16) = xmmword_226D70840;
    sub_226D6889C();
    sub_226D686EC();
    sub_226D68BDC();
    sub_226D68B7C();
    sub_226D688AC();
    (*(v25 + 8))(v23, v24);
    v28 = sub_226D685AC();
    v30 = v29;
    v22[66] = v29;
    (*(v27 + 8))(v26, v61);
    v31 = swift_task_alloc();
    v22[67] = v31;
    *v31 = v22;
    v31[1] = sub_226ADAEBC;
    v32 = v22[11];

    return sub_226ADDDC4(v32, v28, v30);
  }

  return result;
}

uint64_t sub_226ADB770()
{

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 480);
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 480);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to fetch the institutions via batch endpoint: %@.", v7, 0xCu);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = *(v0 + 480);

  v12 = sub_226D6A0DC();
  sub_226AE41E4(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
  swift_allocError();
  *v13 = v11;
  (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277CC7AB0], v12);
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_226ADBAB0(id *a1)
{
  v1 = [*a1 serialNumber];
  v2 = sub_226D6E39C();
  v4 = v3;

  if (v2 == sub_226D68DDC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_226D6F21C();
  }

  return v7 & 1;
}

uint64_t sub_226ADBB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_226D690AC();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_226D68C9C();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ADBCB8, 0, 0);
}

uint64_t sub_226ADBCB8()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  sub_226D6717C();
  sub_226D68C8C();
  *(v0 + 240) = sub_226AE41E4(&qword_27D7A6288, MEMORY[0x277CC75A8], MEMORY[0x277CC75B0]);
  v5 = sub_226D6ED1C();
  v6 = *(v4 + 8);
  *(v0 + 248) = v6;
  *(v0 + 256) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
LABEL_2:
    v7 = 1;
LABEL_40:

    v53 = *(v0 + 8);

    return v53(v7);
  }

  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v10 = *(v0 + 208);
  sub_226D6717C();
  sub_226D68C7C();
  v11 = sub_226D6ED1C();
  v6(v9, v10);
  v6(v8, v10);
  if (v11)
  {
    v12 = *(v0 + 160);
    v13 = -1;
    v14 = -1 << *(v12 + 32);
    if (-v14 < 64)
    {
      v13 = ~(-1 << -v14);
    }

    v15 = v13 & *(v12 + 56);
    v16 = (63 - v14) >> 6;

    v17 = 0;
    if (v15)
    {
      while (1)
      {
        v18 = v17;
LABEL_11:

        v19 = sub_226D6E36C();

        v20 = objc_opt_self();
        *(v0 + 144) = 0;
        v21 = [v20 bundleRecordWithApplicationIdentifier:v19 error:v0 + 144];

        v22 = *(v0 + 144);
        if (v21)
        {
          break;
        }

        v15 &= v15 - 1;
        v23 = v22;
        v24 = sub_226D6D04C();

        swift_willThrow();
        v17 = v18;
        if (!v15)
        {
          goto LABEL_8;
        }
      }

      v37 = v22;

LABEL_44:

      goto LABEL_2;
    }

    while (1)
    {
LABEL_8:
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_29:
        v26 = v12 & 0xFFFFFFFFFFFFFF8;
        v38 = sub_226D6EDFC();
        *(v0 + 264) = v26;
        *(v0 + 272) = v38;
        if (!v38)
        {
          goto LABEL_30;
        }

LABEL_17:
        v28 = *(v0 + 168);
        if ((v28 & 0xC000000000000001) != 0)
        {
          goto LABEL_46;
        }

        if (*(v26 + 16))
        {
          v29 = *(v28 + 32);
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_48;
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(v12 + 56 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_11;
      }
    }

    v25 = *(v0 + 176);

    sub_226AC40E8(v25 + 152, v0 + 56, &qword_27D7A5FD0, &qword_226D708A0);
    if (*(v0 + 80))
    {
      v12 = *(v0 + 168);
      sub_226AC484C((v0 + 56), v0 + 16);
      if (!(v12 >> 62))
      {
        v26 = v12 & 0xFFFFFFFFFFFFFF8;
        v27 = *(v26 + 16);
        *(v0 + 264) = v26;
        *(v0 + 272) = v27;
        if (v27)
        {
          goto LABEL_17;
        }

LABEL_30:
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    sub_226AC47B0(v0 + 56, &qword_27D7A5FD0, &qword_226D708A0);
    if (qword_28105F708 == -1)
    {
      goto LABEL_24;
    }

LABEL_48:
    swift_once();
LABEL_24:
    v33 = sub_226D6E07C();
    __swift_project_value_buffer(v33, qword_28105F710);
    v34 = sub_226D6E05C();
    v35 = sub_226D6E9EC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_226AB4000, v34, v35, "Unable to validate associatedStoreIdentifiers, softwareLibrary unavailable on this platform.", v36, 2u);
      MEMORY[0x22AA8BEE0](v36, -1, -1);
    }
  }

LABEL_31:
  v39 = *(v0 + 248);
  v40 = *(v0 + 232);
  v41 = *(v0 + 224);
  v42 = *(v0 + 208);
  sub_226D6717C();
  sub_226D68C6C();
  v43 = sub_226D6ED1C();
  v39(v41, v42);
  v39(v40, v42);
  if ((v43 & 1) == 0)
  {
LABEL_39:
    v7 = 0;
    goto LABEL_40;
  }

  v44 = sub_226D6719C();
  v7 = v44;
  if (!v44)
  {
    goto LABEL_40;
  }

  v45 = *(v44 + 16);
  if (!v45)
  {
LABEL_38:

    goto LABEL_39;
  }

  v46 = 0;
  v47 = v44 + 40;
  while (v46 < *(v7 + 16))
  {
    v48 = objc_allocWithZone(MEMORY[0x277CC1E50]);

    v49 = sub_226D6E36C();

    *(v0 + 136) = 0;
    v21 = [v48 initWithBundleIdentifier:v49 error:v0 + 136];

    v50 = *(v0 + 136);
    if (v21)
    {
      v54 = v50;

      goto LABEL_44;
    }

    ++v46;
    v51 = v50;
    v52 = sub_226D6D04C();

    swift_willThrow();
    v47 += 16;
    if (v45 == v46)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_46:
  v29 = MEMORY[0x22AA8AFD0](0);
LABEL_20:
  v30 = v29;
  *(v0 + 280) = v29;
  *(v0 + 288) = 1;
  sub_226AE532C(v0 + 16, v0 + 96);
  v31 = v30;
  sub_226D6909C();
  v32 = swift_task_alloc();
  *(v0 + 296) = v32;
  *v32 = v0;
  v32[1] = sub_226ADC344;

  return MEMORY[0x282118688]();
}

uint64_t sub_226ADC344(char a1)
{
  v4 = *v2;
  *(v4 + 304) = v1;

  v5 = *(v4 + 200);
  v6 = *(v4 + 184);
  v7 = (*(v4 + 192) + 8);
  if (v1)
  {
    (*v7)(v5, v6);
    v8 = sub_226ADC844;
  }

  else
  {
    *(v4 + 312) = a1 & 1;
    (*v7)(v5, v6);
    v8 = sub_226ADC500;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_226ADC500()
{
  v1 = *(v0 + 312);

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v2 = 1;
    goto LABEL_13;
  }

  v2 = *(v0 + 288);
  if (v2 != *(v0 + 272))
  {
    v20 = *(v0 + 168);
    if ((v20 & 0xC000000000000001) == 0)
    {
      if (v2 >= *(*(v0 + 264) + 16))
      {
        goto LABEL_27;
      }

      v21 = *(v20 + 8 * v2 + 32);
LABEL_19:
      v22 = v21;
      *(v0 + 280) = v21;
      *(v0 + 288) = v2 + 1;
      if (!__OFADD__(v2, 1))
      {
        sub_226AE532C(v0 + 16, v0 + 96);
        v23 = v22;
        sub_226D6909C();
        v24 = swift_task_alloc();
        *(v0 + 296) = v24;
        *v24 = v0;
        v24[1] = sub_226ADC344;

        return MEMORY[0x282118688]();
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

LABEL_25:
    v21 = MEMORY[0x22AA8AFD0](v2);
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  sub_226D6717C();
  sub_226D68C6C();
  v7 = sub_226D6ED1C();
  v3(v5, v6);
  v3(v4, v6);
  if ((v7 & 1) == 0)
  {
LABEL_12:
    v2 = 0;
    goto LABEL_13;
  }

  v8 = sub_226D6719C();
  v2 = v8;
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_11:

    goto LABEL_12;
  }

  v10 = 0;
  v11 = v8 + 40;
  while (1)
  {
    if (v10 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    v12 = objc_allocWithZone(MEMORY[0x277CC1E50]);

    v13 = sub_226D6E36C();

    *(v0 + 136) = 0;
    v14 = [v12 initWithBundleIdentifier:v13 error:v0 + 136];

    v15 = *(v0 + 136);
    if (v14)
    {
      break;
    }

    ++v10;
    v16 = v15;
    v17 = sub_226D6D04C();

    swift_willThrow();
    v11 += 16;
    if (v9 == v10)
    {
      goto LABEL_11;
    }
  }

  v25 = v15;

  v2 = 1;
LABEL_13:

  v18 = *(v0 + 8);

  return v18(v2);
}

uint64_t sub_226ADC844()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[35];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);
  v4 = v2;
  v5 = v1;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[38];
    v9 = v0[35];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_226AB4000, v6, v7, "Failed to determine if %@ was installed with error: %@.", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FB0, &qword_226D70870);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  v15 = v0[38];
  v16 = v0[35];

  v17 = sub_226D6A0DC();
  sub_226AE41E4(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
  swift_allocError();
  *v18 = v15;
  (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277CC7AB0], v17);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_226ADCB10()
{
  v1[2] = v0;
  v2 = sub_226D6D4AC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ADCBD0, 0, 0);
}

uint64_t sub_226ADCBD0()
{
  *(v0 + 48) = *(*(v0 + 16) + 144);
  sub_226D6D46C();
  sub_226D6C11C();
  sub_226AE41E4(&qword_27D7A62B0, MEMORY[0x277CC81F0], MEMORY[0x277CC81F8]);
  v2 = sub_226D6E6CC();

  return MEMORY[0x2822009F8](sub_226ADCC98, v2, v1);
}

uint64_t sub_226ADCC98()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  sub_226D6C0DC();
  v0[7] = 0;
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226ADCD7C()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error removing expired cached responses: %@", v8, 0xCu);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_226ADCF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226ADCF4C, 0, 0);
}

uint64_t sub_226ADCF4C()
{
  *(v0 + 48) = *(*(v0 + 40) + 144);
  sub_226D6C11C();
  sub_226AE41E4(&qword_27D7A62B0, MEMORY[0x277CC81F0], MEMORY[0x277CC81F8]);
  v2 = sub_226D6E6CC();

  return MEMORY[0x2822009F8](sub_226ADD00C, v2, v1);
}

uint64_t sub_226ADD00C()
{
  sub_226D6C10C();
  *(v0 + 56) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226ADD0C4()
{
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
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error obtaining cached response with error: %@.", v8, 0xCu);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[2];
  v13 = sub_226D6870C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = v0[1];

  return v14();
}

uint64_t sub_226ADD2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6C95C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_226D6C96C();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ADD3CC, 0, 0);
}

uint64_t sub_226ADD3CC()
{
  v45 = v0;
  v1 = v0[4];
  v41 = v1 >> 62;
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_46;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[4]; ; i = v0[4])
  {
    v5 = v1 & 0xC000000000000001;
    v6 = i + 32;
    if (v3)
    {
      v7 = 0;
      v42 = MEMORY[0x277D84F90];
      do
      {
        v8 = v7;
        while (1)
        {
          if (v5)
          {
            v9 = MEMORY[0x22AA8AFD0](v8, v0[4]);
            v7 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_42;
            }
          }

          else
          {
            if (v8 >= *(v2 + 16))
            {
              goto LABEL_43;
            }

            v9 = *(v6 + 8 * v8);
            v7 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }
          }

          v10 = v9;
          v11 = [v10 issuerCountryCode];
          if (v11)
          {
            break;
          }

          ++v8;
          if (v7 == v3)
          {
            goto LABEL_22;
          }
        }

        v39 = v1;
        v12 = v11;
        v13 = sub_226D6E39C();
        v38 = v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_226BBAB0C(0, *(v42 + 2) + 1, 1, v42);
        }

        v16 = *(v42 + 2);
        v15 = *(v42 + 3);
        if (v16 >= v15 >> 1)
        {
          v42 = sub_226BBAB0C((v15 > 1), v16 + 1, 1, v42);
        }

        *(v42 + 2) = v16 + 1;
        v17 = &v42[16 * v16];
        v1 = v39;
        *(v17 + 4) = v13;
        *(v17 + 5) = v38;
      }

      while (v7 != v3);
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
    }

LABEL_22:
    v18 = sub_226AE3C28(v42);

    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = sub_226C24A6C(*(v18 + 16), 0);
      v21 = sub_226C3A908(&v43, v20 + 4, v19, v18);
      v22 = sub_226AD3C20(v43);
      if (v21 != v19)
      {
        __break(1u);
LABEL_48:
        __break(1u);
        return MEMORY[0x282119B18](v22, v23);
      }

      if (!v41)
      {
LABEL_25:
        v1 = *(v2 + 16);
        goto LABEL_28;
      }
    }

    else
    {

      if (!v41)
      {
        goto LABEL_25;
      }
    }

    v1 = sub_226D6EDFC();
LABEL_28:
    if (!v1)
    {
      break;
    }

    v44 = MEMORY[0x277D84F90];
    v22 = sub_226AE1E10(0, v1 & ~(v1 >> 63), 0);
    if (v1 < 0)
    {
      goto LABEL_48;
    }

    v40 = v6;
    v24 = 0;
    v25 = v0[7];
    v26 = v44;
    v41 = v2;
    v27 = v5;
    v28 = v1;
    while (1)
    {
      v2 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v5)
      {
        v29 = MEMORY[0x22AA8AFD0](v24, v0[4]);
      }

      else
      {
        if (v24 >= *(v41 + 16))
        {
          goto LABEL_45;
        }

        v29 = *(v40 + 8 * v24);
      }

      v30 = v29;
      v31 = v0[8];
      v43 = v29;
      sub_226ADDA08(&v43, v31);

      v44 = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      v1 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        sub_226AE1E10((v32 > 1), v33 + 1, 1);
        v26 = v44;
      }

      v34 = v0[8];
      v35 = v0[6];
      *(v26 + 16) = v1;
      (*(v25 + 32))(v26 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v33, v34, v35);
      ++v24;
      v5 = v27;
      if (v2 == v28)
      {
        goto LABEL_39;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v3 = sub_226D6EDFC();
  }

LABEL_39:
  sub_226D6C93C();
  v36 = swift_task_alloc();
  v0[12] = v36;
  *v36 = v0;
  v36[1] = sub_226ADD7E0;
  v23 = v0[11];
  v22 = v0[2];

  return MEMORY[0x282119B18](v22, v23);
}

uint64_t sub_226ADD7E0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(v5 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226ADD998, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_226ADD998()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_226ADDA08@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v32 = [*a1 passTypeIdentifier];
  sub_226D6E39C();
  v31 = [v3 serialNumber];
  sub_226D6E39C();
  v4 = [v3 associatedApplicationIdentifiers];
  if (!v4 || (v5 = v4, v6 = sub_226D6E89C(), v5, v7 = sub_226AE10EC(v6), , !v7))
  {

    v7 = MEMORY[0x277D84FA0];
  }

  v8 = *(v7 + 16);
  v33[6] = a2;
  if (v8)
  {
    v30 = sub_226C24A6C(v8, 0);
    v9 = sub_226C3A908(v33, v30 + 4, v8, v7);
    sub_226AD3C20(v33[0]);
    if (v9 == v8)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

LABEL_8:
  v10 = [v3 storeIdentifiers];
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = v10;
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v13 = sub_226D6E5EC();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v13 >> 62)
  {
    v14 = sub_226D6EDFC();
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  v33[0] = v11;
  result = sub_226AE1D68(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v16 = 0;
  v17 = v33[0];
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x22AA8AFD0](v16, v13);
    }

    else
    {
      v18 = *(v13 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = [v19 stringValue];
    v21 = sub_226D6E39C();
    v23 = v22;

    v33[0] = v17;
    v25 = *(v17 + 16);
    v24 = *(v17 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_226AE1D68((v24 > 1), v25 + 1, 1);
      v17 = v33[0];
    }

    ++v16;
    *(v17 + 16) = v25 + 1;
    v26 = v17 + 16 * v25;
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
  }

  while (v14 != v16);
LABEL_23:

  result = [v3 devicePrimaryPaymentApplication];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = result;
  [result paymentType];

  result = PKPaymentMethodTypeToString();
  if (result)
  {
    v28 = result;

    sub_226D6E39C();
    v29 = [v3 organizationName];
    sub_226D6E39C();

    return sub_226D6C94C();
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_226ADDDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D68BAC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = sub_226D6D4AC();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ADDF50, 0, 0);
}

uint64_t sub_226ADDF50()
{
  v33 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_226D68B9C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(v0[13], &qword_27D7A8BE0, &unk_226D718F0);
LABEL_8:
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v11 = v0[10];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[2];
    v15 = sub_226D6E07C();
    __swift_project_value_buffer(v15, qword_28105F710);
    (*(v13 + 16))(v11, v14, v12);
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9BC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[10];
      v19 = v0[6];
      v20 = v0[7];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      sub_226D68B9C();
      v23 = sub_226D6E3FC();
      v25 = v24;
      (*(v20 + 8))(v18, v19);
      v26 = sub_226AC4530(v23, v25, &v32);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_226AB4000, v16, v17, "Response expiration not valid. Expiration: %s.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x22AA8BEE0](v22, -1, -1);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
    }

    else
    {
      v27 = v0[10];
      v28 = v0[6];
      v29 = v0[7];

      (*(v29 + 8))(v27, v28);
    }

    v30 = v0[1];

    return v30();
  }

  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[15];
  (*(v6 + 32))(v0[17], v0[13], v5);
  sub_226D6D46C();
  v7 = sub_226D6D3FC();
  v8 = *(v6 + 8);
  v0[18] = v8;
  v0[19] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v5);
  if ((v7 & 1) == 0)
  {
    v8(v0[17], v0[14]);
    goto LABEL_8;
  }

  v0[20] = *(v0[5] + 144);
  sub_226D6C11C();
  sub_226AE41E4(&qword_27D7A62B0, MEMORY[0x277CC81F0], MEMORY[0x277CC81F8]);
  v10 = sub_226D6E6CC();

  return MEMORY[0x2822009F8](sub_226ADE320, v10, v9);
}

uint64_t sub_226ADE320()
{
  sub_226D6C0EC();
  *(v0 + 168) = 0;

  return MEMORY[0x2822009F8](sub_226ADE3B4, 0, 0);
}

uint64_t sub_226ADE3B4()
{
  (*(v0 + 144))(*(v0 + 136), *(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226ADE470()
{
  v37 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[2];
  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F710);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v8 = v1;
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9CC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[18];
  v13 = v0[17];
  v34 = v0[21];
  v35 = v0[14];
  v14 = v0[9];
  if (v11)
  {
    v33 = v0[18];
    v16 = v0[7];
    v15 = v0[8];
    v31 = v10;
    v17 = v0[6];
    v32 = v0[17];
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v18 = 136315394;
    v7(v15, v14, v17);
    v19 = sub_226D6E3FC();
    v21 = v20;
    (*(v16 + 8))(v14, v17);
    v22 = sub_226AC4530(v19, v21, &v36);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2112;
    v23 = v34;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v24;
    *v29 = v24;
    _os_log_impl(&dword_226AB4000, v9, v31, "Failed to add response: %s to cache for with error: %@.", v18, 0x16u);
    sub_226AC47B0(v29, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x22AA8BEE0](v30, -1, -1);
    MEMORY[0x22AA8BEE0](v18, -1, -1);

    v33(v32, v35);
  }

  else
  {
    v25 = v0[6];
    v26 = v0[7];

    (*(v26 + 8))(v14, v25);
    v12(v13, v35);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_226ADE79C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D671FC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v2[7] = swift_task_alloc();
  v4 = sub_226D684AC();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = sub_226D68BAC();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62A8, &qword_226D70CD8);
  v2[18] = swift_task_alloc();
  v7 = sub_226D6870C();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ADEA0C, 0, 0);
}

uint64_t sub_226ADEA0C()
{
  v1 = [*(v0 + 16) issuerCountryCode];
  if (!v1)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v14 = 0xD000000000000032;
    v15 = sub_226D6E07C();
    __swift_project_value_buffer(v15, qword_28105F710);
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9CC();
    v18 = "bankConnect/passMatcher";
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_13;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Pass doesn't have a issuer country code, unable to determine eligibility. Aborting.";
LABEL_12:
    _os_log_impl(&dword_226AB4000, v16, v17, v20, v19, 2u);
    MEMORY[0x22AA8BEE0](v19, -1, -1);
LABEL_13:

    v21 = sub_226D6A0DC();
    sub_226AE41E4(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
    v22 = swift_allocError();
    *v23 = v14;
    v23[1] = v18 | 0x8000000000000000;
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277CC7AC0], v21);
    swift_willThrow();
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v24 = sub_226D6E07C();
    __swift_project_value_buffer(v24, qword_28105F710);
    v25 = v22;
    v26 = sub_226D6E05C();
    v27 = sub_226D6E9CC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v22;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_226AB4000, v26, v27, "Failed to fetch the institutions: %@.", v28, 0xCu);
      sub_226AC47B0(v29, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v29, -1, -1);
      MEMORY[0x22AA8BEE0](v28, -1, -1);
    }

    v32 = sub_226D6A0DC();
    sub_226AE41E4(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
    swift_allocError();
    *v33 = v22;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277CC7AB0], v32);
    swift_willThrow();

    v34 = *(v0 + 8);

    return v34();
  }

  v2 = *(v0 + 24);
  v3 = v1;
  v4 = sub_226D6E39C();
  v6 = v5;

  *(v0 + 176) = v4;
  *(v0 + 184) = v6;
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  if (sub_226D66E8C())
  {
    v7 = [*(v0 + 16) associatedApplicationIdentifiers];
    if (!v7 || (v8 = v7, v9 = sub_226D6E89C(), v8, v10 = sub_226AE10EC(v9), , !v10))
    {

      v10 = MEMORY[0x277D84FA0];
    }

    *(v0 + 192) = v10;
    v11 = [*(v0 + 16) storeIdentifiers];
    if (v11)
    {
      v12 = v11;
      sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
      v13 = sub_226D6E5EC();
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    *(v0 + 200) = v13;
    if (*(v10 + 16))
    {
      goto LABEL_27;
    }

    if (v13 >> 62)
    {
      if (sub_226D6EDFC())
      {
        goto LABEL_27;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_27:
      v38 = swift_task_alloc();
      *(v0 + 208) = v38;
      *v38 = v0;
      v38[1] = sub_226ADF14C;

      return sub_226ADCB10();
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v39 = sub_226D6E07C();
    __swift_project_value_buffer(v39, qword_28105F710);
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9CC();
    v18 = "suer country code.";
    v14 = 0xD000000000000059;
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_13;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Failed to fetch the institutions. Payment pass doesn't have any associatedApplicationIdentifiers or associatedStoreIdentifiers.";
    goto LABEL_12;
  }

  v36 = *(v0 + 8);
  v37 = MEMORY[0x277D84F90];

  return v36(v37);
}

uint64_t sub_226ADF14C()
{

  return MEMORY[0x2822009F8](sub_226ADF248, 0, 0);
}

uint64_t sub_226ADF248()
{
  v1 = [*(v0 + 16) serialNumber];
  v2 = sub_226D6E39C();
  v4 = v3;

  *(v0 + 216) = v2;
  *(v0 + 224) = v4;
  v5 = swift_task_alloc();
  *(v0 + 232) = v5;
  *v5 = v0;
  v5[1] = sub_226ADF320;
  v6 = *(v0 + 144);

  return sub_226ADCF28(v6, v2, v4);
}

uint64_t sub_226ADF320()
{

  return MEMORY[0x2822009F8](sub_226ADF41C, 0, 0);
}

uint64_t sub_226ADF41C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    sub_226AC47B0(v3, &qword_27D7A62A8, &qword_226D70CD8);
    __swift_project_boxed_opaque_existential_1((v5 + 96), *(v5 + 120));
    v6 = sub_226D6C2AC();
    *(v0 + 240) = v6;
    v7 = [v4 devicePrimaryPaymentApplication];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 paymentType];
    }

    else
    {
      v9 = 0;
    }

    v50 = *(v0 + 216);
    v49 = *(v0 + 224);
    v63 = *(v0 + 176);
    v51 = *(v0 + 16);
    v52 = swift_task_alloc();
    *(v0 + 248) = v52;
    v53 = *(v0 + 192);
    *(v52 + 16) = v6;
    *(v52 + 24) = v63;
    *(v52 + 40) = v51;
    *(v52 + 48) = v50;
    *(v52 + 56) = v49;
    *(v52 + 64) = v53;
    *(v52 + 80) = v9;
    v54 = swift_task_alloc();
    *(v0 + 256) = v54;
    *v54 = v0;
    v54[1] = sub_226ADFAC0;
    v11 = *(v0 + 136);
    v14 = *(v0 + 120);
    v12 = &unk_226D70D68;
    v13 = v52;

    return MEMORY[0x282119B28](v11, v12, v13, v14);
  }

  v10 = *(v0 + 168);

  (*(v2 + 32))(v10, v3, v1);
  v11 = sub_226D686FC();
  if (v11)
  {
    v15 = v11;
    v16 = *(v11 + 16);
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v18 = 0;
      v19 = *(v0 + 72);
      v61 = (v19 + 32);
      v58 = *(v11 + 16);
      while (v18 < *(v15 + 16))
      {
        v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
        v21 = *(v19 + 72);
        (*(v19 + 16))(*(v0 + 112), v15 + v20 + v21 * v18, *(v0 + 64));
        v22 = sub_226D6849C();
        if (v22 == 2 || (v22 & 1) == 0)
        {
          v11 = (*(v19 + 8))(*(v0 + 112), *(v0 + 64));
        }

        else
        {
          v60 = *v61;
          (*v61)(*(v0 + 104), *(v0 + 112), *(v0 + 64));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226AE1D24(0, *(v17 + 16) + 1, 1);
          }

          v24 = *(v17 + 16);
          v23 = *(v17 + 24);
          v25 = v17;
          if (v24 >= v23 >> 1)
          {
            sub_226AE1D24((v23 > 1), v24 + 1, 1);
            v25 = v17;
          }

          v26 = *(v0 + 104);
          v27 = *(v0 + 64);
          *(v25 + 16) = v24 + 1;
          v11 = v60(v25 + v20 + v24 * v21, v26, v27);
          v17 = v25;
          v16 = v58;
        }

        if (v16 == ++v18)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      return MEMORY[0x282119B28](v11, v12, v13, v14);
    }

LABEL_17:

    v28 = v17;
    if (*(v17 + 16))
    {
      v29 = *(v0 + 96);
      v30 = *(v0 + 72);
      v32 = *(v0 + 56);
      v31 = *(v0 + 64);
      v33 = *(v0 + 24);
      v34 = *(v30 + 80);
      v35 = v28 + ((v34 + 32) & ~v34);
      v36 = sub_226D6E79C();
      (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
      v62 = *(v30 + 16);
      v62(v29, v35, v31);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = v33;
      (*(v30 + 32))(v37 + ((v34 + 40) & ~v34), v29, v31);

      sub_226B60364(0, 0, v32, &unk_226D70D78, v37);

      v38 = *(v28 + 16);
      if (v38)
      {
        v39 = *(v0 + 72);
        v40 = *(v0 + 40);
        v64 = MEMORY[0x277D84F90];
        sub_226AE1CE0(0, v38, 0);
        v41 = v64;
        v57 = (v39 + 8);
        v59 = *(v39 + 72);
        do
        {
          v43 = *(v0 + 88);
          v42 = *(v0 + 96);
          v44 = *(v0 + 64);
          v62(v42, v35, v44);
          v62(v43, v42, v44);
          sub_226D671EC();
          (*v57)(v42, v44);
          v46 = *(v64 + 16);
          v45 = *(v64 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_226AE1CE0((v45 > 1), v46 + 1, 1);
          }

          v47 = *(v0 + 48);
          v48 = *(v0 + 32);
          *(v64 + 16) = v46 + 1;
          (*(v40 + 32))(v64 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v46, v47, v48);
          v35 += v59;
          --v38;
        }

        while (v38);

        goto LABEL_30;
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
LABEL_30:
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

  v55 = *(v0 + 8);

  return v55(v41);
}

uint64_t sub_226ADFAC0()
{
  v2 = *v1;
  v2[33] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AE0284, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[34] = v3;
    *v3 = v2;
    v3[1] = sub_226ADFC6C;
    v4 = v2[27];
    v5 = v2[28];
    v6 = v2[17];

    return sub_226ADDDC4(v6, v4, v5);
  }
}

uint64_t sub_226ADFC6C()
{

  return MEMORY[0x2822009F8](sub_226ADFD84, 0, 0);
}

uint64_t sub_226ADFD84()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_226D68B8C();

  (*(v2 + 8))(v1, v3);
  result = sub_226D686FC();
  if (!result)
  {
    goto LABEL_22;
  }

  v5 = result;
  v6 = *(result + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_14:

    v18 = v7;
    if (*(v7 + 16))
    {
      v19 = v0[12];
      v20 = v0[9];
      v22 = v0[7];
      v21 = v0[8];
      v23 = v0[3];
      v24 = *(v20 + 80);
      v25 = v18 + ((v24 + 32) & ~v24);
      v26 = sub_226D6E79C();
      (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
      v45 = *(v20 + 16);
      v45(v19, v25, v21);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = v23;
      (*(v20 + 32))(v27 + ((v24 + 40) & ~v24), v19, v21);

      sub_226B60364(0, 0, v22, &unk_226D70D78, v27);

      v28 = *(v18 + 16);
      if (v28)
      {
        v29 = v0[9];
        v30 = v0[5];
        v46 = MEMORY[0x277D84F90];
        sub_226AE1CE0(0, v28, 0);
        v31 = v46;
        v40 = (v29 + 8);
        v42 = *(v29 + 72);
        do
        {
          v33 = v0[11];
          v32 = v0[12];
          v34 = v0[8];
          v45(v32, v25, v34);
          v45(v33, v32, v34);
          sub_226D671EC();
          (*v40)(v32, v34);
          v36 = *(v46 + 16);
          v35 = *(v46 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_226AE1CE0((v35 > 1), v36 + 1, 1);
          }

          v37 = v0[6];
          v38 = v0[4];
          *(v46 + 16) = v36 + 1;
          (*(v30 + 32))(v46 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v36, v37, v38);
          v25 += v42;
          --v28;
        }

        while (v28);

        goto LABEL_23;
      }
    }

LABEL_22:
    v31 = MEMORY[0x277D84F90];
LABEL_23:
    (*(v0[20] + 8))(v0[21], v0[19]);

    v39 = v0[1];

    return v39(v31);
  }

  v8 = 0;
  v9 = v0[9];
  v44 = (v9 + 32);
  v41 = *(result + 16);
  while (v8 < *(v5 + 16))
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = *(v9 + 72);
    (*(v9 + 16))(v0[14], v5 + v10 + v11 * v8, v0[8]);
    v12 = sub_226D6849C();
    if (v12 == 2 || (v12 & 1) == 0)
    {
      result = (*(v9 + 8))(v0[14], v0[8]);
    }

    else
    {
      v43 = *v44;
      (*v44)(v0[13], v0[14], v0[8]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_226AE1D24(0, *(v7 + 16) + 1, 1);
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      v15 = v7;
      if (v14 >= v13 >> 1)
      {
        sub_226AE1D24((v13 > 1), v14 + 1, 1);
        v15 = v7;
      }

      v16 = v0[13];
      v17 = v0[8];
      *(v15 + 16) = v14 + 1;
      result = v43(v15 + v10 + v14 * v11, v16, v17);
      v7 = v15;
      v6 = v41;
    }

    if (v6 == ++v8)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226AE0284()
{

  v1 = *(v0 + 264);
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
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to fetch the institutions: %@.", v6, 0xCu);
    sub_226AC47B0(v7, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v10 = sub_226D6A0DC();
  sub_226AE41E4(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
  swift_allocError();
  *v11 = v1;
  (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277CC7AB0], v10);
  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_226AE055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v12;
  v8[11] = v13;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_226D6C65C();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AE0634, 0, 0);
}

uint64_t sub_226AE0634()
{
  v40 = v0;
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;

  v38 = [v2 passTypeIdentifier];
  sub_226D6E39C();
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v0[9];
    v8 = sub_226C24A6C(*(v1 + 16), 0);
    v9 = sub_226C3A908(&v39, v8 + 4, v6, v7);
    v10 = v39;

    v11 = sub_226AD3C20(v10);
    if (v9 != v6)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  v13 = v0[10];
  if (v13 >> 62)
  {
    v14 = sub_226D6EDFC();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    goto LABEL_17;
  }

  v39 = MEMORY[0x277D84F90];
  v11 = sub_226AE1D68(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v39;
  if ((v13 & 0xC000000000000001) != 0)
  {
    v16 = 0;
    do
    {
      MEMORY[0x22AA8AFD0](v16, v0[10]);
      v17 = [swift_unknownObjectRetain() stringValue];
      v18 = sub_226D6E39C();
      v20 = v19;

      swift_unknownObjectRelease_n();
      v39 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226AE1D68((v21 > 1), v22 + 1, 1);
        v15 = v39;
      }

      ++v16;
      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
    }

    while (v14 != v16);
  }

  else
  {
    v24 = (v0[10] + 32);
    do
    {
      v25 = *v24;
      v26 = [v25 stringValue];
      v27 = sub_226D6E39C();
      v29 = v28;

      v39 = v15;
      v31 = *(v15 + 16);
      v30 = *(v15 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_226AE1D68((v30 > 1), v31 + 1, 1);
        v15 = v39;
      }

      *(v15 + 16) = v31 + 1;
      v32 = v15 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      ++v24;
      --v14;
    }

    while (v14);
  }

LABEL_17:
  v11 = PKPaymentMethodTypeToString();
  if (!v11)
  {
LABEL_24:
    __break(1u);
    return MEMORY[0x282119AD0](v11, v12);
  }

  v33 = v11;
  v34 = v0[6];

  sub_226D6E39C();
  v35 = [v34 organizationName];
  sub_226D6E39C();

  sub_226D6C64C();
  v36 = swift_task_alloc();
  v0[15] = v36;
  *v36 = v0;
  v36[1] = sub_226AE0A18;
  v12 = v0[14];
  v11 = v0[2];

  return MEMORY[0x282119AD0](v11, v12);
}

uint64_t sub_226AE0A18()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;
  *(v5 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AE0BC0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_226AE0BC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226AE0C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AE0CC0, 0, 0);
}

uint64_t sub_226AE0CC0()
{
  v0[5] = *(v0[2] + 136);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_226AE0D64;
  v3 = v0[3];
  v2 = v0[4];

  return MEMORY[0x28211A638](v2, v3);
}

uint64_t sub_226AE0D64()
{

  return MEMORY[0x2822009F8](sub_226AE0E60, 0, 0);
}

uint64_t sub_226AE0E60()
{
  v1 = v0[4];
  v2 = sub_226D6D1AC();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_226AC47B0(v1, &unk_27D7A62F8, &unk_226D73B70);
  if (v3 == 1)
  {
    v4 = sub_226D6848C();
    v6 = v5;
    v0[7] = v5;
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_226AE0FB8;

    return MEMORY[0x28211A630](v4, v6);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_226AE0FB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226AE10EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6280, &unk_226D70CC0);
    v2 = sub_226D6EECC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_226AE4FD4(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_226AE3AD0(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
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

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226AE1290(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226AD4A68(a1, v5, v4);
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

uint64_t sub_226AE1428(uint64_t a1, uint64_t a2)
{
  sub_226D6F2FC();
  swift_getWitnessTable();
  sub_226D6D78C();
  return sub_226D6F35C();
}

uint64_t sub_226AE1490(uint64_t a1, id *a2)
{
  result = sub_226D6E37C();
  *a2 = 0;
  return result;
}

uint64_t sub_226AE1508(uint64_t a1, id *a2)
{
  v3 = sub_226D6E38C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_226AE1588@<X0>(uint64_t *a2@<X8>)
{
  sub_226D6E39C();
  v3 = sub_226D6E36C();

  *a2 = v3;
  return result;
}

uint64_t sub_226AE15CC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_226D6D77C();
}

uint64_t sub_226AE1638(uint64_t a1)
{
  v2 = sub_226AE41E4(&qword_27D7A6390, type metadata accessor for FileAttributeKey, &unk_226D71128);
  v3 = sub_226AE41E4(&qword_27D7A6398, type metadata accessor for FileAttributeKey, &unk_226D70F24);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_226AE16F4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_226D6E36C();

  *a2 = v3;
  return result;
}

uint64_t sub_226AE173C(uint64_t a1)
{
  v2 = sub_226AE41E4(&qword_27D7A6380, type metadata accessor for FileProtectionType, &unk_226D71098);
  v3 = sub_226AE41E4(&qword_27D7A6388, type metadata accessor for FileProtectionType, &unk_226D71038);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_226AE17F8()
{
  v0 = sub_226D6E39C();
  v1 = MEMORY[0x22AA8A590](v0);

  return v1;
}

uint64_t sub_226AE1834(uint64_t a1)
{
  sub_226D6E39C();
  sub_226D6E42C();
}

uint64_t sub_226AE1888(uint64_t a1)
{
  sub_226D6E39C();
  sub_226D6F2FC();
  sub_226D6E42C();
  v1 = sub_226D6F35C();

  return v1;
}

uint64_t sub_226AE18FC(void *a1, uint64_t *a2)
{
  v2 = sub_226D6E39C();
  v4 = v3;
  if (v2 == sub_226D6E39C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_226D6F21C();
  }

  return v7 & 1;
}

void *sub_226AE1984(uint64_t a1, unint64_t a2)
{
  v3 = sub_226AE19D0(a1, a2);
  sub_226AE1B00(&unk_283A69BB0);
  return v3;
}

void *sub_226AE19D0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_226B10A88(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_226D6EF4C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_226D6E48C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_226B10A88(v10, 0);
        result = sub_226D6EEDC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_226AE1B00(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_226AE1BEC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_226AE1BEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62E0, &qword_226D70D30);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void *sub_226AE1CE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A62F0, &unk_226D70D80, MEMORY[0x277CC6B80]);
  *v3 = result;
  return result;
}

void *sub_226AE1D24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A62B8, &qword_226D70D00, MEMORY[0x277CC74D8]);
  *v3 = result;
  return result;
}

char *sub_226AE1D68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE2A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226AE1D88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A62D0, &qword_226D759A0, MEMORY[0x277CC7650]);
  *v3 = result;
  return result;
}

void *sub_226AE1DCC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A62C0, &qword_226D70D08, MEMORY[0x277CC7548]);
  *v3 = result;
  return result;
}

void *sub_226AE1E10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A62C8, &unk_226D70D10, MEMORY[0x277CC8390]);
  *v3 = result;
  return result;
}

void *sub_226AE1E54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6210, &unk_226D70C40, type metadata accessor for AccountMatchResult);
  *v3 = result;
  return result;
}

void *sub_226AE1E98(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6208, &unk_226D7BDB0, MEMORY[0x277CC6F70]);
  *v3 = result;
  return result;
}

char *sub_226AE1EDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE2B94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226AE1EFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6178, &qword_226D70BB8, MEMORY[0x277CC7B18]);
  *v3 = result;
  return result;
}

void *sub_226AE1F40(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6080, &qword_226D70A98, MEMORY[0x277D20920]);
  *v3 = result;
  return result;
}

void *sub_226AE1F84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6088, &unk_226D70AA0, MEMORY[0x277D20978]);
  *v3 = result;
  return result;
}

void *sub_226AE1FC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6238, &unk_226D70C60, MEMORY[0x277CC6B60]);
  *v3 = result;
  return result;
}

void *sub_226AE200C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6220, &qword_226D70C50, MEMORY[0x277CC8170]);
  *v3 = result;
  return result;
}

void *sub_226AE2050(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3678(a1, a2, a3, *v3, &qword_27D7A6058, &qword_226D70A70, &qword_27D7A6060, &qword_226D70A78);
  *v3 = result;
  return result;
}

void *sub_226AE2090(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6078, &qword_226D70A90, MEMORY[0x277CC8058]);
  *v3 = result;
  return result;
}

void *sub_226AE20D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6250, &qword_226D70C70, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_226AE2118(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6070, &qword_226D70A88, _s8MetadataV9CloudItemV6ObjectVMa_0);
  *v3 = result;
  return result;
}

void *sub_226AE215C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6068, &qword_226D70A80, _s9OperationOMa);
  *v3 = result;
  return result;
}

void *sub_226AE21A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6368, &qword_226D75950, type metadata accessor for OfflineLabAccountInfo);
  *v3 = result;
  return result;
}

void *sub_226AE21E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60D8, &unk_226D70AE0, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  *v3 = result;
  return result;
}

void *sub_226AE2228(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60E0, &qword_226D758C0, _s9OperationOMa_0);
  *v3 = result;
  return result;
}

char *sub_226AE226C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE2CE8(a1, a2, a3, *v3, &qword_27D7A6098, &unk_226D758B0, &_s9OperationON_0);
  *v3 = result;
  return result;
}

char *sub_226AE22A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE2CE8(a1, a2, a3, *v3, &qword_27D7A6120, &qword_226D70B20, &_s9OperationON);
  *v3 = result;
  return result;
}

void *sub_226AE22DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE2E04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226AE22FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60A0, &qword_226D70AB0, _s8MetadataV9CloudItemV6ObjectVMa_1);
  *v3 = result;
  return result;
}

void *sub_226AE2340(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6128, &qword_226D70B28, _s8MetadataV9CloudItemV6ObjectVMa);
  *v3 = result;
  return result;
}

char *sub_226AE2384(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE2FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226AE23A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226AE23C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60C0, &qword_226D70AC8, MEMORY[0x277CC7098]);
  *v3 = result;
  return result;
}

void *sub_226AE2408(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &unk_27D7A60B0, &qword_226D70AC0, MEMORY[0x277D208F0]);
  *v3 = result;
  return result;
}

void *sub_226AE244C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3988(a1, a2, a3, *v3, &qword_27D7A6138, &qword_226D70B38, &qword_27D7A6140, &qword_226D70B40);
  *v3 = result;
  return result;
}

char *sub_226AE248C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3204(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226AE24AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6268, &qword_226D70C88, MEMORY[0x277CC6DA8]);
  *v3 = result;
  return result;
}

char *sub_226AE24F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226AE2510(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3988(a1, a2, a3, *v3, &qword_27D7A6158, &qword_226D70B98, &qword_27D7A6160, &qword_226D70BA0);
  *v3 = result;
  return result;
}

void *sub_226AE2550(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3678(a1, a2, a3, *v3, &qword_27D7A6168, &qword_226D70BA8, &qword_27D7A6170, &qword_226D70BB0);
  *v3 = result;
  return result;
}

void *sub_226AE2590(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6148, &qword_226D70B48, MEMORY[0x277CC7A80]);
  *v3 = result;
  return result;
}

void *sub_226AE25D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6188, &qword_226D70BC0, MEMORY[0x277CC78A0]);
  *v3 = result;
  return result;
}

void *sub_226AE2618(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6190, &qword_226D70BC8, MEMORY[0x277CC7898]);
  *v3 = result;
  return result;
}

void *sub_226AE265C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6198, &qword_226D70BD0, MEMORY[0x277CC7890]);
  *v3 = result;
  return result;
}

void *sub_226AE26A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3988(a1, a2, a3, *v3, &qword_27D7A61C0, &qword_226D775E0, &qword_27D7A61C8, &qword_226D70C00);
  *v3 = result;
  return result;
}

void *sub_226AE26E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A6270, &qword_226D70C90, type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata);
  *v3 = result;
  return result;
}

void *sub_226AE2724(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60A8, &qword_226D70AB8, MEMORY[0x277D208E8]);
  *v3 = result;
  return result;
}

void *sub_226AE2768(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A61B0, &qword_226D70BE8, MEMORY[0x277CC7540]);
  *v3 = result;
  return result;
}

void *sub_226AE27AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A61B8, &unk_226D70BF0, MEMORY[0x277CC7510]);
  *v3 = result;
  return result;
}

void *sub_226AE27F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60E8, &qword_226D70AF0, _s8MetadataV9CloudItemV6ObjectVMa_2);
  *v3 = result;
  return result;
}

void *sub_226AE2834(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &unk_27D7A6240, &qword_226D77F30, type metadata accessor for Permission);
  *v3 = result;
  return result;
}

void *sub_226AE2878(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A60F8, &qword_226D70B00, MEMORY[0x277CC7DD0]);
  *v3 = result;
  return result;
}

char *sub_226AE28BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226AE28DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3558(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226AE28FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3988(a1, a2, a3, *v3, &unk_27D7A61A0, &qword_226D70BD8, &unk_27D7A8C00, &qword_226D70BE0);
  *v3 = result;
  return result;
}

void *sub_226AE293C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A61F8, &qword_226D70C28, MEMORY[0x277CC7F78]);
  *v3 = result;
  return result;
}

void *sub_226AE2980(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3678(a1, a2, a3, *v3, &qword_27D7A6258, &qword_226D70C78, &qword_27D7A6260, &qword_226D70C80);
  *v3 = result;
  return result;
}

void *sub_226AE29C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A61F0, &qword_226D70C20, MEMORY[0x277CC6610]);
  *v3 = result;
  return result;
}

void *sub_226AE2A04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE37AC(a1, a2, a3, *v3, &qword_27D7A61E0, &qword_226D70C18, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

void *sub_226AE2A48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226AE3988(a1, a2, a3, *v3, &qword_27D7A61D0, &qword_226D70C08, &qword_27D7A61D8, &qword_226D70C10);
  *v3 = result;
  return result;
}

char *sub_226AE2A88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_226AE2B94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6228, &qword_226D70C58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_226AE2CE8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_226AE2E04(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6108, &qword_226D70B10);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6110, &qword_226D70B18) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6110, &qword_226D70B18) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_226AE2FF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A60C8, &qword_226D70AD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_226AE3100(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A60D0, &qword_226D70AD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_226AE3204(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6130, &qword_226D70B30);
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
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

char *sub_226AE3324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A60F0, &qword_226D70AF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_226AE3448(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_226AE3558(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6360, &unk_226D71170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_226AE3678(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_226AE37AC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_226AE3988(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_226AE3AD0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_226D6F2FC();
  sub_226D6E42C();
  result = sub_226D6F35C();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    while (1)
    {
      v14 = (*(v5 + 48) + 16 * v9);
      if (*v14 == a1 && v14[1] == a2)
      {
        break;
      }

      result = sub_226D6F21C();
      if (result)
      {
        break;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) == 0)
      {
        goto LABEL_9;
      }
    }

    *v14 = a1;
    v14[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v7 + 8 * v10) = v12 | v11;
      v16 = (*(v5 + 48) + 16 * v9);
      *v16 = a1;
      v16[1] = a2;
      v17 = *(v5 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v5 + 16) = v19;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226AE3C28(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA8A960](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_226C24D14(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_226AE3CC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226AD67BC(a1, v5, v4);
}

unint64_t sub_226AE3D6C()
{
  result = qword_27D7A5FC8;
  if (!qword_27D7A5FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A5FC0, &unk_226D75DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A5FC8);
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

uint64_t dispatch thunk of BankConnectPassMatching.institution(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_226AE5A84;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BankConnectPassMatching.institutions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226AD8408;

  return v9(a1, a2, a3);
}

uint64_t sub_226AE40F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226AE4118(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_226AE41E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226AE4230(uint64_t a1)
{
  v2 = sub_226D6715C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226AE41E4(&qword_27D7A6230, MEMORY[0x277CC6B60], MEMORY[0x277CC6B68]);
  result = MEMORY[0x22AA8A960](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_226C24E64(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226AE43CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226AE5084();
  result = MEMORY[0x22AA8A960](v2, &type metadata for ManagedCloudOrderEvent.MerchantSource, v3);
  v9 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v10[0] = *v5;
      v10[1] = v6;
      v10[2] = *(v5 + 32);
      v11 = *(v5 + 48);
      sub_226AE50D8(v10, v7);
      sub_226C25434(v7, v10);
      sub_226AE5134(v7[0], v7[1], v7[2], v7[3], v7[4], v7[5], v8);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_226AE447C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v4 = sub_226D69D3C();
    v5 = sub_226AE41E4(&qword_27D7A6090, MEMORY[0x277CC7A58], MEMORY[0x277D85378]);
    result = MEMORY[0x22AA8A960](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AA8AFD0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_226C25988(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_226D6EDFC();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_226AE45DC(uint64_t a1)
{
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226AE41E4(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x22AA8A960](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_226C2514C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226AE4778(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = MEMORY[0x22AA8A960](result, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_226C24D14(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_226AE483C(uint64_t a1)
{
  v2 = type metadata accessor for AccountAndStartingDate(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226AE41E4(&qword_27D7A61E8, type metadata accessor for AccountAndStartingDate, &unk_226D74390);
  result = MEMORY[0x22AA8A960](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_226AE51A0(v12, v5);
      sub_226C25CAC(v8, v5);
      sub_226AE5204(v8);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_226AE49A4(uint64_t a1)
{
  v2 = sub_226D67F1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226AE41E4(&qword_27D7A9630, MEMORY[0x277CC7098], MEMORY[0x277CC70A8]);
  result = MEMORY[0x22AA8A960](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_226C2676C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226AE4B40(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA8A960](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_226AE4FD4(v4, v5);
      sub_226C26A54(v6, v5);
      sub_226AE5030(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_226AE4BCC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v7 = sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v8 = sub_226AE59FC();
  v14[1] = MEMORY[0x22AA8A960](v4, v7, v8);
  v9 = v3 - a2;
  if (v3 != a2)
  {
    if (a2 <= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = a2;
    }

    v11 = v10 - a2;
    v12 = (a1 + 8 * a2);
    while (v11)
    {
      v13 = *v12++;
      sub_226C264CC(v14, v13);

      --v11;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_226AE4C9C(uint64_t a1)
{
  v2 = sub_226D67C0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226AE41E4(&qword_27D7A6150, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]);
  result = MEMORY[0x22AA8A960](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_226C26E88(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226AE4E38(uint64_t a1)
{
  v2 = sub_226D66F6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226AE41E4(&qword_27D7A6118, MEMORY[0x277CC66D0], MEMORY[0x277CC66D8]);
  result = MEMORY[0x22AA8A960](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_226C27458(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_226AE5084()
{
  result = qword_27D7A6180;
  if (!qword_27D7A6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6180);
  }

  return result;
}

uint64_t sub_226AE5134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a2;
  if (a7 >= 2u)
  {
    if (a7 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_226AE51A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountAndStartingDate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226AE5204(uint64_t a1)
{
  v2 = type metadata accessor for AccountAndStartingDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226AE5260(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226AD6A0C(a1, v5, v4);
}

uint64_t sub_226AE532C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_226AE5390(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226ADD2AC(a1, v4, v5, v6);
}

uint64_t sub_226AE5444(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_226AE5450(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226AD4D1C(a1, v5, v4);
}

uint64_t sub_226AE54FC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226AE5A84;

  return sub_226AE055C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_226AE55F0(uint64_t a1)
{
  v4 = *(sub_226D684AC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_226AD827C;

  return sub_226AE0C24(a1, v6, v7, v8, v1 + v5);
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_226AE56F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226AE5714(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_226AE57B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_226AE59B4(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_226AE59FC()
{
  result = qword_27D7A6378;
  if (!qword_27D7A6378)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6378);
  }

  return result;
}

void sub_226AE5A94(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_226D6EDFC();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x277D84F90];
    sub_226AE1EDC(0, v2 & ~(v2 >> 63), 0);
    v32 = v37;
    if (v31)
    {
      v3 = sub_226D6EDAC();
    }

    else
    {
      v3 = sub_226D6ED6C();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_226CCCCD8(v34, v35, v36, v1);
        v13 = v12;
        v14 = [v12 paymentType];

        v15 = v32;
        v37 = v32;
        v17 = *(v32 + 16);
        v16 = *(v32 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_226AE1EDC((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_226D6EDCC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A64B8, &qword_226D71318);
          v6 = sub_226D6E8CC();
          sub_226D6EE4C();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_226AE5444(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_226AE5444(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_226AE5444(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_226AE5DE8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_226D676AC();
  v7 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
  v8 = type metadata accessor for BankConnectPassKitTransactionsDataSource();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v14[3] = v8;
  v14[4] = &protocol witness table for BankConnectPassKitTransactionsDataSource;
  v14[0] = v9;
  sub_226AE532C(v14, v13);
  v10 = type metadata accessor for BankConnectAccountMatcher();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_226AC484C(v13, v11 + 32);
  *(v11 + 72) = v6;
  a3[3] = v10;
  a3[4] = &off_283A6A758;
  *a3 = v11;
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

BOOL sub_226AE5ED0()
{
  if ((MEMORY[0x22AA83C70]() & 1) == 0)
  {
    return 0;
  }

  sub_226D68CBC();
  sub_226AEE790(&qword_27D7A6570, MEMORY[0x277CC75E0], MEMORY[0x277CC75F0]);
  sub_226D6E53C();
  sub_226D6E53C();
  return v2 == v1;
}

uint64_t sub_226AE5F9C()
{
  result = sub_226AEE890();
  qword_27D7B61B0 = result;
  byte_27D7B61B8 = 0;
  return result;
}

uint64_t sub_226AE5FC4()
{
  result = sub_226AEE890();
  qword_27D7B61C0 = result;
  byte_27D7B61C8 = 1;
  return result;
}

uint64_t sub_226AE5FF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6470, &unk_226D71300);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_226D71190;
  *(v1 + 56) = type metadata accessor for FPANIDMatchStrategy(0);
  *(v1 + 64) = sub_226AEE790(&qword_27D7A6478, type metadata accessor for FPANIDMatchStrategy, &unk_226D71500);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  v3 = *MEMORY[0x277CC75C8];
  v4 = sub_226D68CBC();
  v5 = *(*(v4 - 8) + 104);
  v5(boxed_opaque_existential_1, v3, v4);
  *(v1 + 96) = type metadata accessor for AccountTypeMatchStrategy(0);
  *(v1 + 104) = sub_226AEE790(&qword_27D7A6480, type metadata accessor for AccountTypeMatchStrategy, &unk_226D714D8);
  v6 = __swift_allocate_boxed_opaque_existential_1((v1 + 72));
  v5(v6, *MEMORY[0x277CC75D0], v4);
  *(v1 + 136) = type metadata accessor for PANSuffixMatchStrategy(0);
  *(v1 + 144) = sub_226AEE790(&qword_27D7A6488, type metadata accessor for PANSuffixMatchStrategy, &unk_226D714B0);
  v7 = __swift_allocate_boxed_opaque_existential_1((v1 + 112));
  v5(v7, *MEMORY[0x277CC75D8], v4);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 72);
  matched = type metadata accessor for TransactionsMatchStrategy(0);
  *(v1 + 176) = matched;
  *(v1 + 184) = sub_226AEE790(&qword_27D7A6490, type metadata accessor for TransactionsMatchStrategy, &unk_226D71488);
  v12 = __swift_allocate_boxed_opaque_existential_1((v1 + 152));
  v5(v12, *MEMORY[0x277CC75B8], v4);
  v13 = v12 + matched[5];
  *v13 = v8;
  v13[8] = v9;
  sub_226AE532C(v0 + 32, v12 + matched[6]);
  *(v12 + matched[7]) = v10;
  v14 = v10;
  return v1;
}

uint64_t sub_226AE6274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = sub_226D67C0C();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v6 = sub_226D68CBC();
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();
  matched = type metadata accessor for AccountMatchResult(0);
  v4[34] = matched;
  v4[35] = *(matched - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AE6420, 0, 0);
}

uint64_t sub_226AE6420()
{
  if (!*(*(v0 + 208) + 16))
  {
    if (qword_28105F708 == -1)
    {
LABEL_8:
      v9 = sub_226D6E07C();
      __swift_project_value_buffer(v9, qword_28105F710);
      v10 = sub_226D6E05C();
      v11 = sub_226D6E9CC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_226AB4000, v10, v11, "Failed to match an account. No accounts provided for matching.", v12, 2u);
        MEMORY[0x22AA8BEE0](v12, -1, -1);
      }

      v13 = sub_226D6B66C();
      sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
      swift_allocError();
      v15 = v14;
      v16 = MEMORY[0x277CC7F90];
      goto LABEL_22;
    }

LABEL_27:
    swift_once();
    goto LABEL_8;
  }

  v1 = sub_226AE5FF0();
  *(v0 + 328) = v1;
  v2 = *(v1 + 16);
  *(v0 + 336) = v2;

  if (v2)
  {
    *(v0 + 384) = *MEMORY[0x277CC75D0];
    *(v0 + 388) = *MEMORY[0x277CC75C0];
    v3 = *(v0 + 208);
    *(v0 + 344) = 0;
    *(v0 + 352) = v3;
    if (*(v1 + 16))
    {
      sub_226AE532C(v1 + 32, v0 + 16);
      v4 = *(v0 + 40);
      v5 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
      v30 = (*(v5 + 24) + **(v5 + 24));
      v6 = swift_task_alloc();
      *(v0 + 360) = v6;
      *v6 = v0;
      v6[1] = sub_226AE6A24;
      v7 = *(v0 + 200);

      return v30(v3, v7, v4, v5);
    }

    __break(1u);
    goto LABEL_27;
  }

  v17 = *(v0 + 208);

  if (*(v17 + 16) > 1uLL)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v18 = sub_226D6E07C();
    __swift_project_value_buffer(v18, qword_28105F710);
    v19 = sub_226D6E05C();
    v20 = sub_226D6E9CC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_226AB4000, v19, v20, "Failed to match an account. Multiple accounts matched.", v21, 2u);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
    }

    v22 = sub_226D6B66C();
    sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
    swift_allocError();
    *v23 = v17;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277CC7FA8], v22);
    goto LABEL_23;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v24 = sub_226D6E07C();
  __swift_project_value_buffer(v24, qword_28105F710);
  v25 = sub_226D6E05C();
  v26 = sub_226D6E9CC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_226AB4000, v25, v26, "Failed to match an account. No accounts matched.", v27, 2u);
    MEMORY[0x22AA8BEE0](v27, -1, -1);
  }

  v13 = sub_226D6B66C();
  sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
  swift_allocError();
  v15 = v28;
  v16 = MEMORY[0x277CC7F98];
LABEL_22:
  (*(*(v13 - 8) + 104))(v15, *v16, v13);
LABEL_23:
  swift_willThrow();

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_226AE6A24(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {

    v4 = sub_226AE79C0;
  }

  else
  {
    v4 = sub_226AE6B74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226AE6B74()
{
  v90 = v0;
  v1 = *(v0 + 368);
  v84 = *(v1 + 16);
  if (!v84)
  {

    if (qword_28105F708 != -1)
    {
LABEL_66:
      swift_once();
    }

    v30 = sub_226D6E07C();
    __swift_project_value_buffer(v30, qword_28105F710);
    sub_226AE532C(v0 + 16, v0 + 136);
    v17 = sub_226D6E05C();
    v31 = sub_226D6E9CC();
    if (os_log_type_enabled(v17, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v89[0] = v33;
      *v32 = 136315138;
      __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
      v34 = sub_226D6F1CC();
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
      v37 = sub_226AC4530(v34, v36, v89);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_226AB4000, v17, v31, "Failed to match accounts with strategy: %s.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x22AA8BEE0](v33, -1, -1);
      MEMORY[0x22AA8BEE0](v32, -1, -1);
    }

    else
    {
LABEL_33:

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    }

    v51 = sub_226D6B66C();
    sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
    swift_allocError();
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277CC7F98], v51);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    goto LABEL_58;
  }

  v2 = 0;
  v81 = MEMORY[0x277D84F90];
  v83 = *(v0 + 368);
  do
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_66;
    }

    v3 = *(v0 + 384);
    v4 = *(v0 + 280);
    v5 = *(v0 + 256);
    v6 = *(v0 + 264);
    v7 = *(v0 + 248);
    v85 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v87 = *(v4 + 72);
    v82 = *(v0 + 368);
    sub_226AEEFFC(v82 + v85 + v87 * v2, *(v0 + 320), type metadata accessor for AccountMatchResult);
    v86 = *(v5 + 104);
    v86(v6, v3, v7);
    sub_226AEE790(&qword_27D7A6460, MEMORY[0x277CC75E0], MEMORY[0x277CC75E8]);
    LOBYTE(v3) = sub_226D6E35C();
    v8 = *(v5 + 8);
    v8(v6, v7);
    if (v3 & 1) != 0 || (v9 = *(v0 + 264), v10 = *(v0 + 248), v86(v9, *(v0 + 388), v10), v11 = sub_226D6E35C(), v8(v9, v10), (v11))
    {
      sub_226AEF1A0(*(v0 + 320), type metadata accessor for AccountMatchResult);
    }

    else
    {
      sub_226AEF064(*(v0 + 320), *(v0 + 304), type metadata accessor for AccountMatchResult);
      v12 = v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 176) = v81;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226AE1E54(0, v81[2].isa + 1, 1);
        v12 = *(v0 + 176);
      }

      isa = v12[2].isa;
      v14 = v12[3].isa;
      if (isa >= v14 >> 1)
      {
        sub_226AE1E54((v14 > 1), isa + 1, 1);
        v12 = *(v0 + 176);
      }

      v16 = *(v0 + 304);
      v12[2].isa = (isa + 1);
      v81 = v12;
      sub_226AEF064(v16, v12 + v85 + isa * v87, type metadata accessor for AccountMatchResult);
    }

    ++v2;
    v1 = v83;
  }

  while (v84 != v2);
  v17 = v81;
  v18 = v81[2].isa;
  if (v18)
  {
    v19 = (v0 + 312);
    sub_226AEEFFC(v81 + v85, *(v0 + 312), type metadata accessor for AccountMatchResult);

    if (v18 == 1)
    {

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v20 = sub_226D6E07C();
      __swift_project_value_buffer(v20, qword_28105F710);
      sub_226AE532C(v0 + 16, v0 + 96);
      v21 = sub_226D6E05C();
      v22 = sub_226D6E9EC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v89[0] = v24;
        *v23 = 136315138;
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v25 = sub_226D6F1CC();
        v27 = v26;
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
        v28 = sub_226AC4530(v25, v27, v89);

        *(v23 + 4) = v28;
        v29 = "An account was matched explicitly with strategy: %s.";
        goto LABEL_50;
      }

      v73 = (v0 + 96);
LABEL_60:
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      goto LABEL_61;
    }

    sub_226AEF1A0(*v19, type metadata accessor for AccountMatchResult);
    v38 = *(v83 + 16);
    if (!v38)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {

    v38 = *(v83 + 16);
    if (!v38)
    {
      goto LABEL_32;
    }
  }

  v19 = (v0 + 296);
  sub_226AEEFFC(v82 + v85, *(v0 + 296), type metadata accessor for AccountMatchResult);
  if (v38 == 1 && (*(*(v0 + 216) + 24) & 1) == 0)
  {

    if (qword_28105F708 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_68;
  }

  sub_226AEF1A0(*v19, type metadata accessor for AccountMatchResult);
  v39 = *(v83 + 16);
  if (v39)
  {
    *(v0 + 184) = MEMORY[0x277D84F90];
    sub_226AE1E98(0, v39, 0);
    v40 = *(v0 + 184);
    v41 = v82 + v85;
    do
    {
      v42 = *(v0 + 288);
      v43 = *(v0 + 232);
      v44 = *(v0 + 240);
      v45 = *(v0 + 224);
      v19 = type metadata accessor for AccountMatchResult;
      sub_226AEEFFC(v41, v42, type metadata accessor for AccountMatchResult);
      (*(v43 + 16))(v44, v42, v45);
      sub_226AEF1A0(v42, type metadata accessor for AccountMatchResult);
      *(v0 + 184) = v40;
      v47 = *(v40 + 16);
      v46 = *(v40 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_226AE1E98((v46 > 1), v47 + 1, 1);
        v40 = *(v0 + 184);
      }

      v49 = *(v0 + 232);
      v48 = *(v0 + 240);
      v50 = *(v0 + 224);
      *(v40 + 16) = v47 + 1;
      (*(v49 + 32))(v40 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v47, v48, v50);
      v41 += v87;
      --v39;
    }

    while (v39);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v53 = *(v0 + 336);
  v54 = *(v0 + 344) + 1;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v54 == v53)
  {

    if (*(v40 + 16) < 2uLL)
    {

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v74 = sub_226D6E07C();
      __swift_project_value_buffer(v74, qword_28105F710);
      v75 = sub_226D6E05C();
      v76 = sub_226D6E9CC();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_226AB4000, v75, v76, "Failed to match an account. No accounts matched.", v77, 2u);
        MEMORY[0x22AA8BEE0](v77, -1, -1);
      }

      v78 = sub_226D6B66C();
      sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
      swift_allocError();
      (*(*(v78 - 8) + 104))(v79, *MEMORY[0x277CC7F98], v78);
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v55 = sub_226D6E07C();
      __swift_project_value_buffer(v55, qword_28105F710);
      v56 = sub_226D6E05C();
      v57 = sub_226D6E9CC();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_226AB4000, v56, v57, "Failed to match an account. Multiple accounts matched.", v58, 2u);
        MEMORY[0x22AA8BEE0](v58, -1, -1);
      }

      v59 = sub_226D6B66C();
      sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
      swift_allocError();
      *v60 = v40;
      (*(*(v59 - 8) + 104))(v60, *MEMORY[0x277CC7FA8], v59);
    }

    swift_willThrow();
LABEL_58:

    v80 = *(v0 + 8);
LABEL_62:

    return v80();
  }

  v61 = *(v0 + 344) + 1;
  *(v0 + 344) = v61;
  *(v0 + 352) = v40;
  v62 = *(v0 + 328);
  if (v61 >= *(v62 + 16))
  {
    __break(1u);
LABEL_68:
    swift_once();
LABEL_48:
    v68 = sub_226D6E07C();
    __swift_project_value_buffer(v68, qword_28105F710);
    sub_226AE532C(v0 + 16, v0 + 56);
    v21 = sub_226D6E05C();
    v22 = sub_226D6E9EC();
    if (!os_log_type_enabled(v21, v22))
    {

      v73 = (v0 + 56);
      goto LABEL_60;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v89[0] = v24;
    *v23 = 136315138;
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v69 = sub_226D6F1CC();
    v71 = v70;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v72 = sub_226AC4530(v69, v71, v89);

    *(v23 + 4) = v72;
    v29 = "Successfully matched an account with strategy: %s.";
LABEL_50:
    _os_log_impl(&dword_226AB4000, v21, v22, v29, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x22AA8BEE0](v24, -1, -1);
    MEMORY[0x22AA8BEE0](v23, -1, -1);

LABEL_61:
    sub_226AEF064(*v19, *(v0 + 192), type metadata accessor for AccountMatchResult);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v80 = *(v0 + 8);
    goto LABEL_62;
  }

  sub_226AE532C(v62 + 40 * v61 + 32, v0 + 16);
  v63 = *(v0 + 40);
  v64 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v63);
  v88 = (*(v64 + 24) + **(v64 + 24));
  v65 = swift_task_alloc();
  *(v0 + 360) = v65;
  *v65 = v0;
  v65[1] = sub_226AE6A24;
  v66 = *(v0 + 200);

  return v88(v40, v66, v63, v64);
}

uint64_t sub_226AE79C0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226AE7A84()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BankConnectAccountMatcher.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BankConnectAccountMatcher.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_226AE7BB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_226AE7C00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226AE7C7C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  matched = type metadata accessor for AccountMatchResult(0);
  v2[4] = matched;
  v2[5] = *(matched - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A64A0, &qword_226D71310);
  v2[7] = swift_task_alloc();
  v4 = sub_226D6715C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_226D67C0C();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AE7E5C, 0, 0);
}

id sub_226AE7E5C()
{
  v121 = v0;
  v1 = v0[2];
  v107 = *(v1 + 16);
  if (v107)
  {
    v2 = 0;
    v3 = 0;
    v4 = v0[15];
    v5 = *(v4 + 16);
    v4 += 16;
    v106 = v5;
    v100 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v105 = v1 + v100;
    v6 = v0[9];
    v103 = (v6 + 104);
    v114 = (v6 + 56);
    v118 = (v6 + 32);
    v116 = (v6 + 8);
    v101 = (v4 + 16);
    v104 = (v4 - 8);
    v108 = *(v4 + 56);
    v112 = *MEMORY[0x277CC6B58];
    v113 = *MEMORY[0x277CC6B50];
    v102 = MEMORY[0x277D84F90];
    v109 = v6;
    while (1)
    {
      v12 = v0[3];
      v106(v0[17], v105 + v3 * v108, v0[14]);
      result = [v12 paymentApplications];
      if (!result)
      {
        break;
      }

      v14 = result;
      v111 = v3;
      sub_226AE59B4(0, &qword_27D7A64A8, 0x277D37FE0);
      sub_226AEE9F8();
      v15 = sub_226D6E89C();

      sub_226AE5A94(v15);
      v17 = v16;
      v110 = v2;

      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (v17 + 32);
        v20 = MEMORY[0x277D84F90];
        while (1)
        {
          v23 = *v19++;
          v22 = v23;
          if (v23 <= 5)
          {
            if (((1 << v22) & 0x2A) != 0)
            {
              v24 = v113;
LABEL_14:
              v25 = v0[10];
              v27 = v0[7];
              v26 = v0[8];
              (*v103)(v27, v24, v26);
              (*v114)(v27, 0, 1, v26);
              v28 = *v118;
              (*v118)(v25, v27, v26);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = sub_226BBAE1C(0, v20[2] + 1, 1, v20);
              }

              v30 = v20[2];
              v29 = v20[3];
              if (v30 >= v29 >> 1)
              {
                v20 = sub_226BBAE1C((v29 > 1), v30 + 1, 1, v20);
              }

              v31 = v0[10];
              v32 = v0[8];
              v20[2] = v30 + 1;
              v28(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30, v31, v32);
              goto LABEL_9;
            }

            v24 = v112;
            if (((1 << v22) & 0x14) != 0)
            {
              goto LABEL_14;
            }
          }

          v21 = v0[7];
          (*v114)(v21, 1, 1, v0[8]);
          sub_226AC47B0(v21, &qword_27D7A64A0, &qword_226D71310);
LABEL_9:
          if (!--v18)
          {
            goto LABEL_20;
          }
        }
      }

      v20 = MEMORY[0x277D84F90];
LABEL_20:
      v33 = v0[8];

      v34 = v20[2];
      v35 = sub_226AEE790(&qword_27D7A6230, MEMORY[0x277CC6B60], MEMORY[0x277CC6B68]);
      v36 = MEMORY[0x22AA8A960](v34, v33, v35);
      v120[0] = v36;
      v37 = v20[2];
      if (v37)
      {
        v38 = v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v115 = *(v6 + 72);
        v39 = *(v6 + 16);
        do
        {
          v41 = v0[11];
          v40 = v0[12];
          v42 = v0[8];
          v39(v41, v38, v42);
          v43 = v41;
          v44 = v116;
          sub_226C24E64(v40, v43);
          (*v116)(v40, v42);
          v38 += v115;
          --v37;
        }

        while (v37);

        v45 = v120[0];
        v6 = v109;
      }

      else
      {
        v45 = v36;

        v44 = v116;
      }

      sub_226D67B6C();
      if (*(v45 + 16))
      {
        v46 = sub_226D6E2FC();
        v47 = -1 << *(v45 + 32);
        v48 = v46 & ~v47;
        if ((*(v45 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
        {
          v49 = ~v47;
          v50 = *(v109 + 72);
          v51 = *(v109 + 16);
          while (1)
          {
            v52 = v0[12];
            v53 = v0[8];
            v51(v52, *(v45 + 48) + v48 * v50, v53);
            sub_226AEE790(&qword_27D7A6548, MEMORY[0x277CC6B60], MEMORY[0x277CC6B70]);
            v54 = sub_226D6E35C();
            v55 = *v116;
            (*v116)(v52, v53);
            if (v54)
            {
              break;
            }

            v48 = (v48 + 1) & v49;
            if (((*(v45 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          v60 = v0[16];
          v61 = v0[17];
          v63 = v0[13];
          v62 = v0[14];
          v64 = v0[8];

          v55(v63, v64);
          v65 = *v101;
          (*v101)(v60, v61, v62);
          v66 = v102;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226AE1E98(0, *(v102 + 16) + 1, 1);
            v66 = v102;
          }

          v2 = v110;
          v11 = v111;
          v6 = v109;
          v68 = *(v66 + 16);
          v67 = *(v66 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_226AE1E98((v67 > 1), v68 + 1, 1);
            v66 = v102;
          }

          v69 = v0[16];
          v70 = v0[14];
          *(v66 + 16) = v68 + 1;
          v102 = v66;
          v65(v66 + v100 + v68 * v108, v69, v70);
        }

        else
        {
LABEL_3:
          v7 = v0[17];
          v9 = v0[13];
          v8 = v0[14];
          v10 = v0[8];

          (*v116)(v9, v10);
          (*v104)(v7, v8);
          v2 = v110;
          v11 = v111;
          v6 = v109;
        }
      }

      else
      {
        v56 = v0[17];
        v58 = v0[13];
        v57 = v0[14];
        v59 = v0[8];

        (*v44)(v58, v59);
        (*v104)(v56, v57);
        v2 = v110;
        v11 = v111;
      }

      v3 = v11 + 1;
      if (v3 == v107)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
  }

  else
  {
    v102 = MEMORY[0x277D84F90];
LABEL_38:
    v71 = *(v102 + 16);
    if (v71)
    {
      v72 = v0[15];
      v73 = v0[5];
      v119 = v0[4];
      v120[0] = MEMORY[0x277D84F90];
      sub_226AE1E54(0, v71, 0);
      v74 = v120[0];
      v75 = *(v72 + 16);
      v72 += 16;
      v117 = v75;
      v76 = v102 + ((*(v72 + 64) + 32) & ~*(v72 + 64));
      v77 = *(v72 + 56);
      v78 = *MEMORY[0x277CC75D0];
      do
      {
        v79 = v0[6];
        v117(v79, v76, v0[14]);
        v80 = *(v119 + 20);
        v81 = sub_226D68CBC();
        (*(*(v81 - 8) + 104))(v79 + v80, v78, v81);
        v120[0] = v74;
        v83 = *(v74 + 16);
        v82 = *(v74 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_226AE1E54((v82 > 1), v83 + 1, 1);
          v74 = v120[0];
        }

        v84 = v0[6];
        *(v74 + 16) = v83 + 1;
        sub_226AEF064(v84, v74 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v83, type metadata accessor for AccountMatchResult);
        v76 += v77;
        --v71;
      }

      while (v71);

      v85 = v0[1];

      return v85(v74);
    }

    else
    {

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v86 = v0[3];
      v87 = sub_226D6E07C();
      __swift_project_value_buffer(v87, qword_28105F710);
      v88 = v86;
      v89 = sub_226D6E05C();
      v90 = sub_226D6E9CC();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v120[0] = v92;
        *v91 = 136315138;
        sub_226AE8A00();
        sub_226AEE790(&qword_27D7A6230, MEMORY[0x277CC6B60], MEMORY[0x277CC6B68]);
        v93 = sub_226D6E8AC();
        v95 = v94;

        v96 = sub_226AC4530(v93, v95, v120);

        *(v91 + 4) = v96;
        _os_log_impl(&dword_226AB4000, v89, v90, "Failed to match an account. Can't find an account with one of the types: %s.", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v92);
        MEMORY[0x22AA8BEE0](v92, -1, -1);
        MEMORY[0x22AA8BEE0](v91, -1, -1);
      }

      v97 = sub_226D6B66C();
      sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
      swift_allocError();
      (*(*(v97 - 8) + 104))(v98, *MEMORY[0x277CC7F88], v97);
      swift_willThrow();

      v99 = v0[1];

      return v99();
    }
  }

  return result;
}

id sub_226AE8A00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A64A0, &qword_226D71310);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_226D6715C();
  v31 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 paymentApplications];
  if (result)
  {
    v10 = result;
    sub_226AE59B4(0, &qword_27D7A64A8, 0x277D37FE0);
    sub_226AEE9F8();
    v11 = sub_226D6E89C();

    sub_226AE5A94(v11);
    v13 = v12;

    v14 = *(v13 + 16);
    if (v14)
    {
      v27 = *MEMORY[0x277CC6B50];
      v28 = (v31 + 104);
      v15 = (v31 + 56);
      v16 = (v31 + 32);
      v17 = MEMORY[0x277D84F90];
      v26 = *MEMORY[0x277CC6B58];
      v18 = 32;
      v29 = v13;
      v30 = v8;
      while (1)
      {
        v19 = *(v13 + v18);
        if (v19 <= 5)
        {
          if (((1 << v19) & 0x2A) != 0)
          {
            v20 = v27;
LABEL_10:
            (*v28)(v4, v20, v5);
            (*v15)(v4, 0, 1, v5);
            v21 = *v16;
            (*v16)(v8, v4, v5);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_226BBAE1C(0, v17[2] + 1, 1, v17);
            }

            v23 = v17[2];
            v22 = v17[3];
            if (v23 >= v22 >> 1)
            {
              v17 = sub_226BBAE1C((v22 > 1), v23 + 1, 1, v17);
            }

            v17[2] = v23 + 1;
            v24 = v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23;
            v8 = v30;
            v21(v24, v30, v5);
            v13 = v29;
            goto LABEL_5;
          }

          v20 = v26;
          if (((1 << v19) & 0x14) != 0)
          {
            goto LABEL_10;
          }
        }

        (*v15)(v4, 1, 1, v5);
        sub_226AC47B0(v4, &qword_27D7A64A0, &qword_226D71310);
LABEL_5:
        v18 += 8;
        if (!--v14)
        {

          goto LABEL_17;
        }
      }
    }

    v17 = MEMORY[0x277D84F90];
LABEL_17:
    v25 = sub_226AE4230(v17);

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226AE8D7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AEF2B8;

  return sub_226AE7C7C(a1, a2);
}

uint64_t sub_226AE8E40(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6540, &qword_226D71528);
  v2[4] = swift_task_alloc();
  matched = type metadata accessor for AccountMatchResult(0);
  v2[5] = matched;
  v2[6] = *(matched - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_226D67C0C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AE8F94, 0, 0);
}

uint64_t sub_226AE8F94()
{
  v1 = v0[2];
  v48 = *(v1 + 16);
  if (v48)
  {
    v2 = 0;
    v3 = v0[9];
    v41 = v0[5];
    v4 = *(v3 + 16);
    v3 += 16;
    v47 = v4;
    v46 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v45 = *(v3 + 56);
    v38 = *MEMORY[0x277CC75C8];
    v39 = (v3 - 8);
    v40 = (v3 + 16);
    v42 = v0[6];
    v44 = (v42 + 56);
    v43 = *MEMORY[0x277CC75D0];
    v5 = MEMORY[0x277D84F90];
    v4(v0[10], v46, v0[8]);
    while (1)
    {
      v10 = *(sub_226D67BEC() + 16);

      v11 = v43;
      if (v10)
      {
        v12 = v0[3];
        v13 = sub_226D67BEC();
        v14 = sub_226AE3C28(v13);

        v15 = [v12 primaryAccountIdentifier];
        v16 = sub_226D6E39C();
        v18 = v17;

        if (!*(v14 + 16) || (sub_226D6F2FC(), sub_226D6E42C(), v19 = sub_226D6F35C(), v20 = -1 << *(v14 + 32), v21 = v19 & ~v20, ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0))
        {
LABEL_3:
          v6 = v0[10];
          v7 = v0[8];
          v9 = v0[4];
          v8 = v0[5];

          (*v39)(v6, v7);
          (*v44)(v9, 1, 1, v8);
          sub_226AC47B0(v9, &qword_27D7A6540, &qword_226D71528);
          goto LABEL_4;
        }

        v22 = ~v20;
        while (1)
        {
          v23 = (*(v14 + 48) + 16 * v21);
          v24 = *v23 == v16 && v23[1] == v18;
          if (v24 || (sub_226D6F21C() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v11 = v38;
      }

      v25 = v0[10];
      v27 = v0[7];
      v26 = v0[8];
      v29 = v0[4];
      v28 = v0[5];
      v30 = *(v41 + 20);
      v31 = sub_226D68CBC();
      (*(*(v31 - 8) + 104))(v29 + v30, v11, v31);
      (*v40)(v29, v25, v26);
      (*v44)(v29, 0, 1, v28);
      sub_226AEF064(v29, v27, type metadata accessor for AccountMatchResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_226BBAC18(0, v5[2] + 1, 1, v5, v32);
      }

      v34 = v5[2];
      v33 = v5[3];
      if (v34 >= v33 >> 1)
      {
        v5 = sub_226BBAC18((v33 > 1), v34 + 1, 1, v5, v32);
      }

      v35 = v0[7];
      v5[2] = v34 + 1;
      sub_226AEF064(v35, v5 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v34, type metadata accessor for AccountMatchResult);
LABEL_4:
      if (++v2 == v48)
      {
        goto LABEL_24;
      }

      v47(v0[10], v46 + v2 * v45, v0[8]);
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_24:

  v36 = v0[1];

  return v36(v5);
}

uint64_t sub_226AE93D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE947C;

  return sub_226AE8E40(a1, a2);
}

uint64_t sub_226AE947C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_226AE9594(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6540, &qword_226D71528);
  v2[4] = swift_task_alloc();
  matched = type metadata accessor for AccountMatchResult(0);
  v2[5] = matched;
  v2[6] = *(matched - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AE96A4, 0, 0);
}

uint64_t sub_226AE96A4()
{
  v56 = v0;
  v1 = [*(v0 + 24) primaryAccountNumberSuffix];
  v2 = sub_226D6E39C();
  v4 = v3;

  v5 = sub_226AE9C34(v2, v4);
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = *(*(v0 + 16) + 16);
    if (v9)
    {
      v51 = *(v0 + 48);
      v10 = (v51 + 48);
      v11 = *(sub_226D67C0C() - 8);
      v53 = *(v11 + 72);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v13 = MEMORY[0x277D84F90];
      do
      {
        v15 = *(v0 + 32);
        v14 = *(v0 + 40);
        sub_226AE9DA4(*(v0 + 16) + v12, v5, v7, v15);
        if ((*v10)(v15, 1, v14) == 1)
        {
          sub_226AC47B0(*(v0 + 32), &qword_27D7A6540, &qword_226D71528);
        }

        else
        {
          v17 = *(v0 + 64);
          v16 = *(v0 + 72);
          sub_226AEF064(*(v0 + 32), v16, type metadata accessor for AccountMatchResult);
          sub_226AEF064(v16, v17, type metadata accessor for AccountMatchResult);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_226BBAC18(0, v13[2] + 1, 1, v13, v18);
          }

          v20 = v13[2];
          v19 = v13[3];
          if (v20 >= v19 >> 1)
          {
            v13 = sub_226BBAC18((v19 > 1), v20 + 1, 1, v13, v18);
          }

          v21 = *(v0 + 64);
          v13[2] = v20 + 1;
          sub_226AEF064(v21, v13 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v20, type metadata accessor for AccountMatchResult);
          v10 = (v51 + 48);
        }

        v12 += v53;
        --v9;
      }

      while (v9);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }
  }

  else
  {

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 24);
    v23 = sub_226D6E07C();
    __swift_project_value_buffer(v23, qword_28105F710);
    v24 = v22;
    v25 = sub_226D6E05C();
    v26 = sub_226D6E9EC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 24);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v55 = v29;
      *v28 = 136315138;
      v30 = [v27 primaryAccountNumberSuffix];
      v31 = sub_226D6E39C();
      v33 = v32;

      v34 = sub_226AC4530(v31, v33, &v55);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_226AB4000, v25, v26, "Failed to match an account by PAN suffix. The pass doesn't have the Funding PAN suffix. primaryAccountNumberSuffix: %s.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x22AA8BEE0](v29, -1, -1);
      MEMORY[0x22AA8BEE0](v28, -1, -1);
    }

    v35 = *(v0 + 16);
    v36 = *(v35 + 16);
    v13 = MEMORY[0x277D84F90];
    if (v36)
    {
      v37 = *(v0 + 48);
      v54 = *(v0 + 40);
      v55 = MEMORY[0x277D84F90];
      sub_226AE1E54(0, v36, 0);
      v13 = v55;
      v52 = sub_226D67C0C();
      v38 = *(v52 - 8);
      v50 = *(v38 + 16);
      v39 = v35 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
      v40 = *(v38 + 72);
      v41 = *MEMORY[0x277CC75D0];
      do
      {
        v42 = *(v0 + 56);
        v50(v42, v39, v52);
        v43 = *(v54 + 20);
        v44 = sub_226D68CBC();
        (*(*(v44 - 8) + 104))(v42 + v43, v41, v44);
        v55 = v13;
        v46 = v13[2];
        v45 = v13[3];
        if (v46 >= v45 >> 1)
        {
          sub_226AE1E54((v45 > 1), v46 + 1, 1);
          v13 = v55;
        }

        v47 = *(v0 + 56);
        v13[2] = v46 + 1;
        sub_226AEF064(v47, v13 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v46, type metadata accessor for AccountMatchResult);
        v39 += v40;
        --v36;
      }

      while (v36);
    }
  }

  v48 = *(v0 + 8);

  return v48(v13);
}

uint64_t sub_226AE9C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6CCFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  v16[0] = a1;
  v16[1] = a2;
  sub_226D6CCCC();
  sub_226D6CCEC();
  v11 = *(v5 + 8);
  v11(v10, v4);
  sub_226AEEF6C();
  v12 = sub_226D6ECCC();
  v11(v7, v4);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v12 + 16 + 16 * v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}