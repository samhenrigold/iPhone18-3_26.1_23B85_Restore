uint64_t sub_20DFC7404()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F78, &qword_20E010888);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_20E0088D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008834();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_20DF66E28(v2, &qword_27C852F78, &qword_20E010888);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = sub_20E0088A4();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = sub_20E008854();
      if (v12)
      {
        v13 = v11;
        v14 = v12;
        v22 = v9;
        v23 = v10;

        MEMORY[0x20F32A4B0](3092282, 0xE300000000000000);

        MEMORY[0x20F32A4B0](v13, v14);

        v16 = v22;
        v15 = v23;
        v17 = sub_20E008874();
        v19 = v18;
        v22 = v16;
        v23 = v15;

        MEMORY[0x20F32A4B0](v17, v19);

        v20 = v22;
        (*(v4 + 8))(v6, v3);
        return v20;
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }
  }

  return 0;
}

uint64_t sub_20DFC76A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v14;
  *(v8 + 224) = v12;
  *(v8 + 240) = v13;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a5;
  *(v8 + 200) = a6;
  *(v8 + 176) = a1;
  *(v8 + 184) = a4;
  v9 = sub_20E008C14();
  *(v8 + 264) = v9;
  *(v8 + 272) = *(v9 - 8);
  *(v8 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFC7780, 0, 0);
}

uint64_t sub_20DFC7780()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 224);
  v18 = *(v0 + 232);
  v19 = *(v0 + 240);
  v4 = *(v0 + 208);
  v16 = *(v0 + 264);
  v17 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);

  sub_20DF84E08(v1);
  v8 = sub_20E008BA4();
  v10 = v9;
  (*(v2 + 8))(v1, v16);
  *(v0 + 16) = v7;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v4;
  *(v0 + 48) = v17;
  *(v0 + 56) = v3;
  *(v0 + 64) = v18;
  *(v0 + 72) = v19;
  *(v0 + 80) = v8;
  *(v0 + 88) = v10;
  v11 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v11;
  *(v0 + 160) = *(v0 + 80);
  v12 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v12;
  v13 = swift_task_alloc();
  *(v0 + 288) = v13;
  *v13 = v0;
  v13[1] = sub_20DFC78EC;
  v14 = *(v0 + 256);

  return sub_20DFC9A00(v0 + 96, v14);
}

uint64_t sub_20DFC78EC(char a1)
{
  v2 = *v1;
  *(v2 + 296) = a1;

  sub_20DFCA6A4(v2 + 16);

  return MEMORY[0x2822009F8](sub_20DFC79F4, 0, 0);
}

uint64_t sub_20DFC79F4()
{
  **(v0 + 176) = *(v0 + 296);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DFC7A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20DFC9618(a3, v25 - v10);
  v12 = sub_20E0094C4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20DF66E28(v11, &qword_27C8522B0, &qword_20E00B1F0);
  }

  else
  {
    sub_20E0094B4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20E009484();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20E009264() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_20DF66E28(a3, &qword_27C8522B0, &qword_20E00B1F0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20DF66E28(a3, &qword_27C8522B0, &qword_20E00B1F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20DFC7D48()
{
  v22 = *MEMORY[0x277D85DE8];
  sub_20E008774();
  swift_allocObject();
  sub_20E008764();
  v1 = v0[2];
  v2 = v0[4];
  v20 = v0[3];
  v21 = v2;
  v3 = *v0;
  v18 = v0[1];
  v19 = v1;
  *(&v17 + 1) = *(&v3 + 1);
  sub_20DFCA70C();
  v5 = sub_20E008754();
  v7 = v6;

  v8 = objc_opt_self();
  v9 = sub_20E008B64();
  *&v17 = 0;
  v10 = [v8 JSONObjectWithData:v9 options:4 error:&v17];

  v11 = v17;
  if (v10)
  {
    sub_20E009654();
    sub_20DF67FFC(v5, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v11;
    v13 = sub_20E008A34();

    swift_willThrow();
    sub_20DF67FFC(v5, v7);

    v17 = 0u;
    v18 = 0u;
  }

  v15[0] = v17;
  v15[1] = v18;
  if (!*(&v18 + 1))
  {
    return 0;
  }

  sub_20DF77A64(v15, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20DFC7F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[61] = a3;
  v4[62] = a4;
  v4[59] = a1;
  v4[60] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v4[63] = swift_task_alloc();
  v5 = sub_20E008714();
  v4[64] = v5;
  v4[65] = *(v5 - 8);
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v4[68] = swift_task_alloc();
  v6 = sub_20E008AF4();
  v4[69] = v6;
  v4[70] = *(v6 - 8);
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFC8110, 0, 0);
}

uint64_t sub_20DFC8110()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  sub_20DF85FEC();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_20DF66E28(*(v0 + 544), &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C8520C0 != -1)
    {
LABEL_40:
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8627A0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Request URL for Metrics API not found", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = *(v0 + 520);
    v9 = *(v0 + 512);
    v10 = *(v0 + 472);

    (*(v8 + 56))(v10, 1, 1, v9);
    goto LABEL_35;
  }

  v11 = *(v0 + 480);
  (*(*(v0 + 560) + 32))(*(v0 + 576), *(v0 + 544), *(v0 + 552));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *(v0 + 480) + 32;
    v15 = MEMORY[0x277D84F90];
    v69 = v14;
    do
    {
      v71 = v15;
      v16 = (v14 + 80 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= v12)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        *(v0 + 16) = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[4];
        *(v0 + 64) = v16[3];
        *(v0 + 80) = v20;
        *(v0 + 32) = v18;
        *(v0 + 48) = v19;
        v13 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_39;
        }

        sub_20E008774();
        swift_allocObject();
        sub_20DFCA6D4(v0 + 16, v0 + 96);
        sub_20E008764();
        v21 = *(v0 + 64);
        *(v0 + 208) = *(v0 + 48);
        *(v0 + 224) = v21;
        *(v0 + 240) = *(v0 + 80);
        v22 = *(v0 + 32);
        *(v0 + 176) = *(v0 + 16);
        *(v0 + 192) = v22;
        sub_20DFCA70C();
        v23 = sub_20E008754();
        v25 = v24;

        v26 = objc_opt_self();
        v27 = sub_20E008B64();
        *(v0 + 448) = 0;
        v28 = [v26 JSONObjectWithData:v27 options:4 error:v0 + 448];

        v29 = *(v0 + 448);
        if (v28)
        {
          sub_20E009654();
          sub_20DFCA6A4(v0 + 16);
          sub_20DF67FFC(v23, v25);
          swift_unknownObjectRelease();
        }

        else
        {
          v30 = v29;
          v31 = sub_20E008A34();

          swift_willThrow();
          sub_20DFCA6A4(v0 + 16);
          sub_20DF67FFC(v23, v25);

          v73 = 0u;
          v74 = 0u;
        }

        *(v0 + 256) = v73;
        *(v0 + 272) = v74;
        if (*(v0 + 280))
        {
          sub_20DF77A64((v0 + 256), (v0 + 288));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
          if (swift_dynamicCast())
          {
            v32 = *(v0 + 456);
            if (v32)
            {
              break;
            }
          }
        }

        ++v17;
        v16 += 5;
        if (v13 == v12)
        {
          v15 = v71;
          goto LABEL_26;
        }
      }

      v15 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_20DFFB228(0, v71[2] + 1, 1, v71);
      }

      v34 = v15[2];
      v33 = v15[3];
      if (v34 >= v33 >> 1)
      {
        v15 = sub_20DFFB228((v33 > 1), v34 + 1, 1, v15);
      }

      v15[2] = v34 + 1;
      v15[v34 + 4] = v32;
      v14 = v69;
    }

    while (v13 != v12);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_26:
  *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F70, &qword_20E010880);
  *(v0 + 320) = v15;
  sub_20DF77A64((v0 + 320), (v0 + 352));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20DF857D4((v0 + 352), 0x73746E657665, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(v0 + 408) = MEMORY[0x277D837D0];
  *(v0 + 384) = 0xD000000000000012;
  *(v0 + 392) = 0x800000020E016DA0;
  sub_20DF77A64((v0 + 384), (v0 + 416));
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_20DF857D4((v0 + 416), 0x6E69616D6F64, 0xE600000000000000, v36);
  v37 = objc_opt_self();
  v38 = sub_20E009154();

  *(v0 + 464) = 0;
  v39 = [v37 dataWithJSONObject:v38 options:0 error:v0 + 464];

  v40 = *(v0 + 464);
  if (!v39)
  {
    v56 = v40;
    v57 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C8520C0 != -1)
    {
      swift_once();
    }

    v58 = sub_20E009094();
    __swift_project_value_buffer(v58, qword_27C8627A0);
    v59 = sub_20E009074();
    v60 = sub_20E009544();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_20DF62000, v59, v60, "Unable to encode Metrics request body", v61, 2u);
      MEMORY[0x20F32B3A0](v61, -1, -1);
    }

    v62 = *(v0 + 576);
    v63 = *(v0 + 560);
    v64 = *(v0 + 552);
    v65 = *(v0 + 520);
    v66 = *(v0 + 512);
    v67 = *(v0 + 472);

    (*(v63 + 8))(v62, v64);
    (*(v65 + 56))(v67, 1, 1, v66);
LABEL_35:

    v68 = *(v0 + 8);

    return v68();
  }

  v41 = *(v0 + 568);
  v42 = *(v0 + 560);
  v43 = *(v0 + 552);
  v44 = *(v0 + 536);
  v45 = *(v0 + 528);
  v46 = *(v0 + 520);
  v70 = *(v0 + 576);
  v72 = *(v0 + 512);
  v47 = sub_20E008B84();
  v49 = v48;

  *(v0 + 584) = v47;
  *(v0 + 592) = v49;
  (*(v42 + 16))(v41, v70, v43);
  sub_20E0086B4();
  sub_20DFDF668(v44);
  v50 = *(v46 + 8);
  *(v0 + 600) = v50;
  *(v0 + 608) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v50(v45, v72);
  sub_20E008694();
  sub_20DF67FA8(v47, v49);
  sub_20E0086F4();
  v51 = swift_task_alloc();
  *(v0 + 616) = v51;
  *v51 = v0;
  v51[1] = sub_20DFC89E8;
  v52 = *(v0 + 536);
  v53 = *(v0 + 504);
  v54 = *(v0 + 488);

  return sub_20DF83234(v53, v52, v54);
}

uint64_t sub_20DFC89E8()
{

  if (v0)
  {

    v1 = sub_20DFC8E6C;
  }

  else
  {
    v1 = sub_20DFC8B2C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20DFC8B2C()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C8520C0 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8627A0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to sign Metrics request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = v0[75];
    v9 = v0[74];
    v10 = v0[73];
    v25 = v0[72];
    v11 = v0[70];
    v12 = v0[69];
    v13 = v0[67];
    v14 = v0[65];
    v15 = v0[64];
    v26 = v0[59];

    sub_20DF67FFC(v10, v9);
    v8(v13, v15);
    (*(v11 + 8))(v25, v12);
    (*(v14 + 56))(v26, 1, 1, v15);
  }

  else
  {
    v16 = v0[75];
    v17 = v0[74];
    v18 = v0[73];
    v27 = v0[72];
    v19 = v0[70];
    v24 = v0[69];
    v20 = v0[67];
    v21 = v0[59];
    (*(v1 + 32))(v21, v3, v2);
    sub_20E008704();
    sub_20DF67FFC(v18, v17);
    v16(v20, v2);
    (*(v19 + 8))(v27, v24);
    (*(v1 + 56))(v21, 0, 1, v2);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_20DFC8E6C()
{
  (*(v0[65] + 56))(v0[63], 1, 1, v0[64]);
  sub_20DF66E28(v0[63], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C8520C0 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C8627A0);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to sign Metrics request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v15 = v0[72];
  v8 = v0[70];
  v9 = v0[69];
  v10 = v0[67];
  v11 = v0[65];
  v12 = v0[64];
  v16 = v0[59];

  sub_20DF67FFC(v7, v6);
  v5(v10, v12);
  (*(v8 + 8))(v15, v9);
  (*(v11 + 56))(v16, 1, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_20DFC90C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F80, &qword_20E010948);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFCA828();
  sub_20E009A84();
  v8[15] = 0;
  sub_20E009914();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_20E009914();
  v8[13] = 2;
  sub_20E009914();
  v8[12] = 3;
  sub_20E009934();
  v8[11] = 4;
  sub_20E009934();
  v8[10] = 5;
  sub_20E009914();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20DFC92C8()
{
  v1 = *v0;
  v2 = 0x4972656E74726170;
  v3 = 0xD000000000000017;
  if (v1 != 4)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 1)
  {
    v2 = 0x746E696F70646E65;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20DFC9394@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DFCA87C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DFC93C8(uint64_t a1)
{
  v2 = sub_20DFCA828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFC9404(uint64_t a1)
{
  v2 = sub_20DFCA828();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_20DFC9440@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_20DFCAA88(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_20DFC94A4(uint64_t a1)
{
  sub_20E008CD4();
  v3 = v1[3];
  v11 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DF6BA84;

  return sub_20DFC76A4(a1, v11, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_20DFC9618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DFC9688(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_20DFC977C;

  return v5(v2 + 32);
}

uint64_t sub_20DFC977C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20DFC9890(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DF6BD98;

  return sub_20DFC9688(a1, v4);
}

uint64_t sub_20DFC9948(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DF6BA84;

  return sub_20DFC9688(a1, v4);
}

uint64_t sub_20DFC9A00(uint64_t a1, uint64_t a2)
{
  v2[37] = a1;
  v2[38] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v2[39] = swift_task_alloc();
  v3 = sub_20E008714();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFC9AF8, 0, 0);
}

uint64_t sub_20DFC9AF8()
{
  v20 = v0;
  if (qword_27C8520C0 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_20E009094();
  v0[43] = __swift_project_value_buffer(v2, qword_27C8627A0);
  sub_20DFCA6D4(v1, (v0 + 16));
  v3 = sub_20E009074();
  v4 = sub_20E009554();
  sub_20DFCA6A4(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v0[36] = sub_20DFC7D48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F60, &unk_20E010870);
    v7 = sub_20E009244();
    v9 = sub_20DF74468(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20DF62000, v3, v4, "Logging metric event %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F32B3A0](v6, -1, -1);
    MEMORY[0x20F32B3A0](v5, -1, -1);
  }

  v10 = v0[37];
  KeyPath = swift_getKeyPath();
  v0[44] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F58, &qword_20E010858);
  inited = swift_initStackObject();
  v0[45] = inited;
  inited[1] = xmmword_20E00AB50;
  v13 = v10[1];
  v14 = v10[2];
  v15 = v10[4];
  inited[5] = v10[3];
  inited[6] = v15;
  inited[3] = v13;
  inited[4] = v14;
  inited[2] = *v10;
  sub_20DFCA6D4(v10, (v0 + 26));
  v16 = swift_task_alloc();
  v0[46] = v16;
  *v16 = v0;
  v16[1] = sub_20DFC9D68;
  v17 = v0[39];

  return sub_20DFC7F3C(v17, inited, KeyPath, 0);
}

uint64_t sub_20DFC9D68()
{
  v1 = *(*v0 + 360);

  swift_setDeallocating();
  sub_20DFCA6A4(v1 + 32);

  return MEMORY[0x2822009F8](sub_20DFC9EA4, 0, 0);
}

uint64_t sub_20DFC9EA4()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    v4 = sub_20E009074();
    v5 = sub_20E009544();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20DF62000, v4, v5, "Unable to generate request URL for utility metrics api.", v6, 2u);
      MEMORY[0x20F32B3A0](v6, -1, -1);
    }

    v7 = v0[1];

    return v7(0);
  }

  else
  {
    (*(v2 + 32))(v0[42], v3, v1);
    sub_20DFDF8DC(0xD00000000000001DLL, 0x800000020E016D40, 0xD000000000000015, 0x800000020E016D60);
    v9 = swift_task_alloc();
    v0[47] = v9;
    *v9 = v0;
    v9[1] = sub_20DFCA0AC;
    v10 = v0[42];

    return MEMORY[0x28211ECF8](v10, 0);
  }
}

uint64_t sub_20DFCA0AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 384) = a3;
  *(v7 + 392) = v3;

  if (v3)
  {
    v8 = sub_20DFCA514;
  }

  else
  {
    sub_20DF67FFC(a1, a2);
    v8 = sub_20DFCA1DC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20DFCA1DC()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 384);
    sub_20DFDFFF8(0xD00000000000001CLL, 0x800000020E016D80, [v2 statusCode], &unk_28252DF88);
    if ([v2 statusCode] == 200)
    {
      v4 = sub_20E009074();
      v5 = sub_20E009554();
      v6 = os_log_type_enabled(v4, v5);
      v7 = *(v0 + 384);
      v9 = *(v0 + 328);
      v8 = *(v0 + 336);
      v10 = *(v0 + 320);
      if (v6)
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_20DF62000, v4, v5, "Metrics event posted successfully", v11, 2u);
        MEMORY[0x20F32B3A0](v11, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v8, v10);
      v26 = 1;
      goto LABEL_16;
    }

    v20 = *(v0 + 384);
    v21 = sub_20E009074();
    v22 = sub_20E009544();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 384);
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = [v2 statusCode];

      _os_log_impl(&dword_20DF62000, v21, v22, "Request failed : Status Code %ld", v24, 0xCu);
      MEMORY[0x20F32B3A0](v24, -1, -1);
      v25 = *(v0 + 384);
    }

    else
    {

      v25 = *(v0 + 384);
      v21 = v25;
    }

    v28 = *(v0 + 328);
    v27 = *(v0 + 336);
    v29 = *(v0 + 320);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v12 = sub_20E009074();
    v13 = sub_20E009544();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 384);
    v17 = *(v0 + 328);
    v16 = *(v0 + 336);
    v18 = *(v0 + 320);
    if (v14)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20DF62000, v12, v13, "Unable to process Metrics API Response.", v19, 2u);
      MEMORY[0x20F32B3A0](v19, -1, -1);
    }

    else
    {
    }

    (*(v17 + 8))(v16, v18);
  }

  v26 = 0;
LABEL_16:

  v30 = *(v0 + 8);

  return v30(v26);
}

uint64_t sub_20DFCA514()
{
  v1 = v0[49];
  v2 = v1;
  v3 = sub_20E009074();
  v4 = sub_20E009544();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[49];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20DF62000, v3, v4, "Metrics log event failed %@", v7, 0xCu);
    sub_20DF66E28(v8, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v8, -1, -1);
    MEMORY[0x20F32B3A0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[41] + 8))(v0[42], v0[40]);

  v11 = v0[1];

  return v11(0);
}

unint64_t sub_20DFCA70C()
{
  result = qword_27C852F68;
  if (!qword_27C852F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F68);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_20DFCA77C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DFCA7C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFCA828()
{
  result = qword_27C852F88;
  if (!qword_27C852F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F88);
  }

  return result;
}

uint64_t sub_20DFCA87C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000020E016DC0 == a2;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000064 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E016DE0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020E016E00 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E016E20 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20DFCAA88@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F90, &qword_20E010950);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFCA828();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = sub_20E009894();
  v11 = v10;
  LOBYTE(v35[0]) = 1;
  *&v29 = sub_20E009894();
  *(&v29 + 1) = v12;
  LOBYTE(v35[0]) = 2;
  v26 = sub_20E009894();
  v28 = v13;
  LOBYTE(v35[0]) = 3;
  v27 = 0;
  v25 = sub_20E0098B4();
  LOBYTE(v35[0]) = 4;
  v24 = sub_20E0098B4();
  v43 = 5;
  v14 = sub_20E009894();
  v15 = *(v6 + 8);
  v16 = v14;
  v27 = v17;
  v15(v8, v5);
  *&v30 = v9;
  *(&v30 + 1) = v11;
  v18 = v29;
  v31 = v29;
  v19 = v28;
  *&v32 = v26;
  *(&v32 + 1) = v28;
  *&v33 = v25;
  *(&v33 + 1) = v24;
  v20 = v27;
  *&v34 = v16;
  *(&v34 + 1) = v27;
  sub_20DFCA6D4(&v30, v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35[0] = v9;
  v35[1] = v11;
  v36 = __PAIR128__(*(&v29 + 1), v18);
  v37 = v26;
  v38 = v19;
  v39 = v25;
  v40 = v24;
  v41 = v16;
  v42 = v20;
  result = sub_20DFCA6A4(v35);
  v22 = v33;
  a2[2] = v32;
  a2[3] = v22;
  a2[4] = v34;
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  return result;
}

unint64_t sub_20DFCAE5C()
{
  result = qword_27C852F98;
  if (!qword_27C852F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F98);
  }

  return result;
}

unint64_t sub_20DFCAEB4()
{
  result = qword_27C852FA0;
  if (!qword_27C852FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852FA0);
  }

  return result;
}

unint64_t sub_20DFCAF0C()
{
  result = qword_27C852FA8;
  if (!qword_27C852FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852FA8);
  }

  return result;
}

uint64_t sub_20DFCAF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v6[10] = swift_task_alloc();
  v8 = sub_20E008714();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[14] = v9;
  *v9 = v6;
  v9[1] = sub_20DFCB094;

  return sub_20DF9D6CC(a6);
}

uint64_t sub_20DFCB094()
{

  return MEMORY[0x2822009F8](sub_20DFCB190, 0, 0);
}

uint64_t sub_20DFCB190()
{
  KeyPath = swift_getKeyPath();
  v0[15] = KeyPath;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_20DFCB248;
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  return sub_20DFA6CD0(v3, v6, v7, v4, v5, KeyPath, 0);
}

uint64_t sub_20DFCB248()
{

  return MEMORY[0x2822009F8](sub_20DFCB360, 0, 0);
}

uint64_t sub_20DFCB360()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626F8);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for Service Location Lookup", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    sub_20DFDF8DC(0xD000000000000026, 0x800000020E016E60, 0xD000000000000030, 0x800000020E016E90);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_20DFCB61C;
    v12 = v0[13];

    return MEMORY[0x28211ECF8](v12, 0);
  }
}

uint64_t sub_20DFCB61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = v3;

  if (v3)
  {
    v6 = sub_20DFCC4C4;
  }

  else
  {
    v6 = sub_20DFCB734;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DFCB734()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C8626F8);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Unable to process Service Location Response.", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    v13 = *(v0 + 152);
    v14 = *(v0 + 160);
    v15 = *(v0 + 144);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 88);

    type metadata accessor for NetworkError(0);
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v19 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v15, v13);
    goto LABEL_51;
  }

  v2 = v1;
  v3 = *(v0 + 160);
  sub_20DFDFFF8(0xD00000000000001BLL, 0x800000020E016ED0, [v2 statusCode], &unk_28252DF60);
  v4 = [v2 statusCode];
  if (v4 > 411)
  {
    switch(v4)
    {
      case 412:
        if (qword_27C852088 != -1)
        {
          swift_once();
        }

        v44 = sub_20E009094();
        __swift_project_value_buffer(v44, qword_27C8626F8);
        v6 = sub_20E009074();
        v45 = sub_20E009544();
        if (os_log_type_enabled(v6, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_20DF62000, v6, v45, "Access Token expired. Retry after refreshing token", v46, 2u);
          MEMORY[0x20F32B3A0](v46, -1, -1);
        }

        goto LABEL_50;
      case 429:
        if (qword_27C852088 != -1)
        {
          swift_once();
        }

        v58 = sub_20E009094();
        __swift_project_value_buffer(v58, qword_27C8626F8);
        v6 = sub_20E009074();
        v59 = sub_20E009544();
        if (os_log_type_enabled(v6, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_20DF62000, v6, v59, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v60, 2u);
          MEMORY[0x20F32B3A0](v60, -1, -1);
        }

        goto LABEL_50;
      case 500:
        if (qword_27C852088 != -1)
        {
          swift_once();
        }

        v20 = sub_20E009094();
        __swift_project_value_buffer(v20, qword_27C8626F8);
        v21 = sub_20E009074();
        v22 = sub_20E009544();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_20DF62000, v21, v22, "Internal Server Error", v23, 2u);
          MEMORY[0x20F32B3A0](v23, -1, -1);
        }

        v25 = *(v0 + 152);
        v24 = *(v0 + 160);
        v26 = *(v0 + 144);
        v27 = *(v0 + 96);
        v79 = *(v0 + 88);
        v81 = *(v0 + 104);

        type metadata accessor for NetworkError(0);
        sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
        swift_allocError();
        *v28 = [v2 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v26, v25);

        (*(v27 + 8))(v81, v79);
        goto LABEL_52;
    }

    goto LABEL_37;
  }

  if (v4 != 200)
  {
    if (v4 == 400)
    {
      if (qword_27C852088 != -1)
      {
        swift_once();
      }

      v55 = sub_20E009094();
      __swift_project_value_buffer(v55, qword_27C8626F8);
      v6 = sub_20E009074();
      v56 = sub_20E009544();
      if (os_log_type_enabled(v6, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_20DF62000, v6, v56, "BAD REQUEST | Check request", v57, 2u);
        MEMORY[0x20F32B3A0](v57, -1, -1);
      }

      goto LABEL_50;
    }

    if (v4 == 401)
    {
      if (qword_27C852088 != -1)
      {
        swift_once();
      }

      v5 = sub_20E009094();
      __swift_project_value_buffer(v5, qword_27C8626F8);
      v6 = sub_20E009074();
      v7 = sub_20E009544();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20DF62000, v6, v7, "Request Unauthorized.", v8, 2u);
        MEMORY[0x20F32B3A0](v8, -1, -1);
      }

LABEL_50:
      v61 = *(v0 + 152);
      v14 = *(v0 + 160);
      v62 = *(v0 + 144);
      v17 = *(v0 + 96);
      v16 = *(v0 + 104);
      v18 = *(v0 + 88);

      type metadata accessor for NetworkError(0);
      sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v62, v61);

LABEL_51:
      (*(v17 + 8))(v16, v18);
LABEL_52:

      v63 = *(v0 + 8);
      goto LABEL_53;
    }

LABEL_37:
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 160);
    v48 = sub_20E009094();
    __swift_project_value_buffer(v48, qword_27C8626F8);
    v49 = v47;
    v50 = sub_20E009074();
    v51 = sub_20E009544();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 160);
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = [v2 statusCode];

      _os_log_impl(&dword_20DF62000, v50, v51, "Request failed : Status Code %ld", v53, 0xCu);
      MEMORY[0x20F32B3A0](v53, -1, -1);
      v54 = *(v0 + 160);
    }

    else
    {

      v54 = *(v0 + 160);
      v50 = v54;
    }

    v66 = *(v0 + 144);
    v65 = *(v0 + 152);
    v67 = *(v0 + 96);
    v80 = *(v0 + 88);
    v82 = *(v0 + 104);

    type metadata accessor for NetworkError(0);
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v68 = [v2 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v66, v65);

    (*(v67 + 8))(v82, v80);
    goto LABEL_52;
  }

  if (qword_27C852088 != -1)
  {
    swift_once();
  }

  v29 = sub_20E009094();
  __swift_project_value_buffer(v29, qword_27C8626F8);
  v30 = sub_20E009074();
  v31 = sub_20E009554();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_20DF62000, v30, v31, "Service Locations Response received", v32, 2u);
    MEMORY[0x20F32B3A0](v32, -1, -1);
  }

  v33 = *(v0 + 168);

  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  sub_20DFCD420();
  sub_20E008724();
  v34 = v33;

  if (v33)
  {
LABEL_29:
    v35 = sub_20E009074();
    v36 = sub_20E009544();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_20DF62000, v35, v36, "Error while decoding response from server", v37, 2u);
      MEMORY[0x20F32B3A0](v37, -1, -1);
    }

    v38 = *(v0 + 152);
    v39 = *(v0 + 160);
    v40 = *(v0 + 144);
    v42 = *(v0 + 96);
    v41 = *(v0 + 104);
    v43 = *(v0 + 88);

    sub_20DFFE0B0(v34);
    swift_willThrow();
    sub_20DF67FFC(v40, v38);

    (*(v42 + 8))(v41, v43);
    goto LABEL_52;
  }

  v69 = *(v0 + 16);
  if (!v69)
  {
    v75 = sub_20E009074();
    v76 = sub_20E009544();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_20DF62000, v75, v76, "Error while decoding response from server", v77, 2u);
      MEMORY[0x20F32B3A0](v77, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v34 = swift_allocError();
    *v78 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_29;
  }

  v70 = *(v0 + 152);
  v71 = *(v0 + 160);
  v72 = *(v0 + 144);
  v73 = *(v0 + 24);
  v74 = *(v0 + 32);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  sub_20DF67FFC(v72, v70);
  *v74 = v69;
  v74[1] = v73;

  v63 = *(v0 + 8);
LABEL_53:

  return v63();
}

uint64_t sub_20DFCC4C4()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20DFCC54C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853048, &qword_20E010D68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFCEFA8(v7, v8);
  sub_20DFCEF00();
  sub_20E009A84();
  v10 = v7;
  v11 = v8;
  sub_20DFCEFEC();
  sub_20E009904();
  sub_20DFCED98(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20DFCC6B0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853030, &qword_20E010D60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFCEF00();
  sub_20E009A74();
  if (!v2)
  {
    sub_20DFCEF54();
    sub_20E009884();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20DFCC83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x800000020E016F10 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_20E009984();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_20DFCC8D0(uint64_t a1)
{
  v2 = sub_20DFCEF00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFCC90C(uint64_t a1)
{
  v2 = sub_20DFCEF00();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_20DFCC978()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_20DFCC9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000020E0148F0 == a2 || (sub_20E009984() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000020E016E40 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_20E009984();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_20DFCCA9C(uint64_t a1)
{
  v2 = sub_20DFCCD54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFCCAD8(uint64_t a1)
{
  v2 = sub_20DFCCD54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UtilityServiceLocations.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852FB0, &qword_20E010A70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFCCD54();

  sub_20E009A84();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852FC0, &qword_20E010A78);
  sub_20DFCD10C(&qword_27C852FC8, &qword_27C852620, &protocol conformance descriptor for UtilityServiceLocation, MEMORY[0x277D83948]);
  sub_20E009944();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852FD0, &qword_20E010A80);
    sub_20DFCCDA8(&qword_27C852FD8, sub_20DFCCE20, MEMORY[0x277D83948]);
    sub_20E009904();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_20DFCCD54()
{
  result = qword_27C852FB8;
  if (!qword_27C852FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852FB8);
  }

  return result;
}

uint64_t sub_20DFCCDA8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852FD0, &qword_20E010A80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DFCCE20()
{
  result = qword_27C852FE0;
  if (!qword_27C852FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852FE0);
  }

  return result;
}

uint64_t UtilityServiceLocations.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852FE8, &qword_20E010A88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFCCD54();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852FC0, &qword_20E010A78);
  v13 = 0;
  sub_20DFCD10C(&qword_27C852FF0, &qword_27C852648, &protocol conformance descriptor for UtilityServiceLocation, MEMORY[0x277D83978]);
  sub_20E0098C4();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852FD0, &qword_20E010A80);
  v13 = 1;
  sub_20DFCCDA8(&qword_27C852FF8, sub_20DFCD1A8, MEMORY[0x277D83978]);
  sub_20E009884();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20DFCD10C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852FC0, &qword_20E010A78);
    sub_20DFCD3D8(a2, type metadata accessor for UtilityServiceLocation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DFCD1A8()
{
  result = qword_27C853000;
  if (!qword_27C853000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853000);
  }

  return result;
}

uint64_t sub_20DFCD22C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20DFCD274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFCD2D4()
{
  result = qword_27C853008;
  if (!qword_27C853008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853008);
  }

  return result;
}

unint64_t sub_20DFCD32C()
{
  result = qword_27C853010;
  if (!qword_27C853010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853010);
  }

  return result;
}

unint64_t sub_20DFCD384()
{
  result = qword_27C853018;
  if (!qword_27C853018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853018);
  }

  return result;
}

uint64_t sub_20DFCD3D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20DFCD420()
{
  result = qword_27C853020;
  if (!qword_27C853020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853020);
  }

  return result;
}

uint64_t sub_20DFCD474(uint64_t a1)
{
  if (a1 && *(a1 + 16))
  {
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v2 = sub_20E009094();
    __swift_project_value_buffer(v2, qword_27C8626F8);
    v3 = sub_20E009074();
    v4 = sub_20E009534();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20DF62000, v3, v4, "Checking for Ineligibility Code", v5, 2u);
      MEMORY[0x20F32B3A0](v5, -1, -1);
    }

    v6 = *(a1 + 56);
    sub_20DFCEDD8();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
  }

  else
  {
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v8 = sub_20E009094();
    __swift_project_value_buffer(v8, qword_27C8626F8);
    v9 = sub_20E009074();
    v10 = sub_20E009534();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20DF62000, v9, v10, "No Ineligible service locations found", v11, 2u);
      MEMORY[0x20F32B3A0](v11, -1, -1);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20DFCD654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v5[10] = swift_task_alloc();
  v7 = sub_20E008714();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[14] = v8;
  *v8 = v5;
  v8[1] = sub_20DFCD788;

  return sub_20DF9D6CC(a5);
}

uint64_t sub_20DFCD788()
{

  return MEMORY[0x2822009F8](sub_20DFCD884, 0, 0);
}

uint64_t sub_20DFCD884()
{
  KeyPath = swift_getKeyPath();
  v0[15] = KeyPath;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_20DFCD93C;
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  return sub_20DFA6CD0(v3, v6, v7, v4, v5, KeyPath, 0);
}

uint64_t sub_20DFCD93C()
{

  return MEMORY[0x2822009F8](sub_20DFCDA54, 0, 0);
}

uint64_t sub_20DFCDA54()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626F8);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for Service Location Lookup", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    sub_20DFDF8DC(0xD000000000000011, 0x800000020E016EF0, 0xD000000000000030, 0x800000020E016E90);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_20DFCDD10;
    v12 = v0[13];

    return MEMORY[0x28211ECF8](v12, 0);
  }
}

uint64_t sub_20DFCDD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = v3;

  if (v3)
  {
    v6 = sub_20DFCC4C4;
  }

  else
  {
    v6 = sub_20DFCDE28;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DFCDE28()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C8626F8);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Unable to process Service Location Response.", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    v13 = *(v0 + 152);
    v14 = *(v0 + 160);
    v15 = *(v0 + 144);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 88);

    type metadata accessor for NetworkError(0);
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v19 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v15, v13);
    goto LABEL_50;
  }

  v2 = v1;
  v3 = *(v0 + 160);
  sub_20DFDFFF8(0xD00000000000001BLL, 0x800000020E016ED0, [v2 statusCode], &unk_28252DF38);
  v4 = [v2 statusCode];
  if (v4 > 411)
  {
    switch(v4)
    {
      case 412:
        if (qword_27C852088 != -1)
        {
          swift_once();
        }

        v42 = sub_20E009094();
        __swift_project_value_buffer(v42, qword_27C8626F8);
        v6 = sub_20E009074();
        v43 = sub_20E009544();
        if (os_log_type_enabled(v6, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_20DF62000, v6, v43, "Access Token expired. Retry after refreshing token", v44, 2u);
          MEMORY[0x20F32B3A0](v44, -1, -1);
        }

        goto LABEL_49;
      case 429:
        if (qword_27C852088 != -1)
        {
          swift_once();
        }

        v56 = sub_20E009094();
        __swift_project_value_buffer(v56, qword_27C8626F8);
        v6 = sub_20E009074();
        v57 = sub_20E009544();
        if (os_log_type_enabled(v6, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_20DF62000, v6, v57, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v58, 2u);
          MEMORY[0x20F32B3A0](v58, -1, -1);
        }

        goto LABEL_49;
      case 500:
        if (qword_27C852088 != -1)
        {
          swift_once();
        }

        v20 = sub_20E009094();
        __swift_project_value_buffer(v20, qword_27C8626F8);
        v21 = sub_20E009074();
        v22 = sub_20E009544();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_20DF62000, v21, v22, "Internal Server Error", v23, 2u);
          MEMORY[0x20F32B3A0](v23, -1, -1);
        }

        v25 = *(v0 + 152);
        v24 = *(v0 + 160);
        v26 = *(v0 + 144);
        v27 = *(v0 + 96);
        v97 = *(v0 + 88);
        v99 = *(v0 + 104);

        type metadata accessor for NetworkError(0);
        sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
        swift_allocError();
        *v28 = [v2 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v26, v25);

        (*(v27 + 8))(v99, v97);
        goto LABEL_51;
    }

    goto LABEL_36;
  }

  if (v4 != 200)
  {
    if (v4 == 400)
    {
      if (qword_27C852088 != -1)
      {
        swift_once();
      }

      v53 = sub_20E009094();
      __swift_project_value_buffer(v53, qword_27C8626F8);
      v6 = sub_20E009074();
      v54 = sub_20E009544();
      if (os_log_type_enabled(v6, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_20DF62000, v6, v54, "BAD REQUEST | Check request", v55, 2u);
        MEMORY[0x20F32B3A0](v55, -1, -1);
      }

      goto LABEL_49;
    }

    if (v4 == 401)
    {
      if (qword_27C852088 != -1)
      {
        swift_once();
      }

      v5 = sub_20E009094();
      __swift_project_value_buffer(v5, qword_27C8626F8);
      v6 = sub_20E009074();
      v7 = sub_20E009544();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20DF62000, v6, v7, "Request Unauthorized.", v8, 2u);
        MEMORY[0x20F32B3A0](v8, -1, -1);
      }

LABEL_49:
      v59 = *(v0 + 152);
      v14 = *(v0 + 160);
      v60 = *(v0 + 144);
      v17 = *(v0 + 96);
      v16 = *(v0 + 104);
      v18 = *(v0 + 88);

      type metadata accessor for NetworkError(0);
      sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v60, v59);

LABEL_50:
      (*(v17 + 8))(v16, v18);
LABEL_51:

      v61 = *(v0 + 8);

      return v61();
    }

LABEL_36:
    if (qword_27C852088 != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 160);
    v46 = sub_20E009094();
    __swift_project_value_buffer(v46, qword_27C8626F8);
    v47 = v45;
    v48 = sub_20E009074();
    v49 = sub_20E009544();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 160);
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = [v2 statusCode];

      _os_log_impl(&dword_20DF62000, v48, v49, "Request failed : Status Code %ld", v51, 0xCu);
      MEMORY[0x20F32B3A0](v51, -1, -1);
      v52 = *(v0 + 160);
    }

    else
    {

      v52 = *(v0 + 160);
      v48 = v52;
    }

    v64 = *(v0 + 144);
    v63 = *(v0 + 152);
    v65 = *(v0 + 96);
    v98 = *(v0 + 88);
    v100 = *(v0 + 104);

    type metadata accessor for NetworkError(0);
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v66 = [v2 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v64, v63);

    (*(v65 + 8))(v100, v98);
    goto LABEL_51;
  }

  if (qword_27C852088 != -1)
  {
    swift_once();
  }

  v29 = sub_20E009094();
  __swift_project_value_buffer(v29, qword_27C8626F8);
  v30 = sub_20E009074();
  v31 = sub_20E009554();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_20DF62000, v30, v31, "Service Locations Response received", v32, 2u);
    MEMORY[0x20F32B3A0](v32, -1, -1);
  }

  v33 = *(v0 + 168);

  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  sub_20DFCD420();
  sub_20E008724();
  v34 = v33;

  if (v33)
  {
LABEL_29:
    *(v0 + 32) = v34;
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    if (swift_dynamicCast())
    {
      v36 = *(v0 + 152);
      v37 = *(v0 + 160);
      v38 = *(v0 + 144);
      v40 = *(v0 + 96);
      v39 = *(v0 + 104);
      v41 = *(v0 + 88);
      swift_willThrow();
      sub_20DF67FFC(v38, v36);

      (*(v40 + 8))(v39, v41);
    }

    else
    {
      v67 = sub_20E009074();
      v68 = sub_20E009544();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_20DF62000, v67, v68, "Error while decoding response from server", v69, 2u);
        MEMORY[0x20F32B3A0](v69, -1, -1);
      }

      v70 = *(v0 + 152);
      v71 = *(v0 + 160);
      v72 = *(v0 + 144);
      v74 = *(v0 + 96);
      v73 = *(v0 + 104);
      v75 = *(v0 + 88);

      sub_20DFFE0B0(v34);
      swift_willThrow();
      sub_20DF67FFC(v72, v70);

      (*(v74 + 8))(v73, v75);
    }

    goto LABEL_51;
  }

  v76 = *(v0 + 16);
  if (!v76)
  {
    v83 = sub_20E009074();
    v84 = sub_20E009544();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_20DF62000, v83, v84, "Error while decoding response from server", v85, 2u);
      MEMORY[0x20F32B3A0](v85, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DFCD3D8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v34 = swift_allocError();
    *v86 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_29;
  }

  v77 = *(v0 + 24);
  if (v76 >> 62)
  {
    if (sub_20E009804())
    {
      goto LABEL_62;
    }

LABEL_70:
    v87 = sub_20E009074();
    v88 = sub_20E009544();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_20DF62000, v87, v88, "No Eligible Service Locations found for the utility.", v89, 2u);
      MEMORY[0x20F32B3A0](v89, -1, -1);
    }

    v90 = sub_20DFCD474(v77);
    v91 = *(v0 + 152);
    v92 = *(v0 + 160);
    v93 = *(v0 + 144);
    v95 = *(v0 + 96);
    v94 = *(v0 + 104);
    v96 = *(v0 + 88);

    sub_20DF67FFC(v93, v91);
    sub_20DFCED98(v76, v77);

    (*(v95 + 8))(v94, v96);
    v76 = v90;
    goto LABEL_63;
  }

  if (!*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_70;
  }

LABEL_62:
  v78 = *(v0 + 152);
  v79 = *(v0 + 160);
  v80 = *(v0 + 144);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  sub_20DF67FFC(v80, v78);

  sub_20DFCED98(v81, v77);
LABEL_63:

  v82 = *(v0 + 8);

  return v82(v76);
}

uint64_t sub_20DFCED98(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_20DFCEDD8()
{
  result = qword_27C853028;
  if (!qword_27C853028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853028);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HomeUtilityServices0B16ServiceLocationsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20DFCEE44(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20DFCEEA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

unint64_t sub_20DFCEF00()
{
  result = qword_27C853038;
  if (!qword_27C853038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853038);
  }

  return result;
}

unint64_t sub_20DFCEF54()
{
  result = qword_27C853040;
  if (!qword_27C853040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853040);
  }

  return result;
}

uint64_t sub_20DFCEFA8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_20DFCEFEC()
{
  result = qword_27C853050;
  if (!qword_27C853050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853050);
  }

  return result;
}

unint64_t sub_20DFCF054()
{
  result = qword_27C853058;
  if (!qword_27C853058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853058);
  }

  return result;
}

unint64_t sub_20DFCF0AC()
{
  result = qword_27C853060;
  if (!qword_27C853060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853060);
  }

  return result;
}

unint64_t sub_20DFCF104()
{
  result = qword_27C853068;
  if (!qword_27C853068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853068);
  }

  return result;
}

uint64_t sub_20DFCF158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v13;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v8[7] = swift_task_alloc();
  v9 = sub_20E008714();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v8[12] = swift_task_alloc();
  v10 = sub_20E008AF4();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFCF30C, 0, 0);
}

uint64_t sub_20DFCF30C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  sub_20DF85FEC();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v0[12], &qword_27C8520D0, &qword_20E00AB70);
    if (qword_281123100 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_281124A48);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Request URL for Utility Configuration API not found", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[15];
    v11 = v0[16];
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[4];
    (*(v13 + 32))(v11, v0[12], v12);
    (*(v13 + 16))(v10, v11, v12);
    sub_20E0086B4();
    sub_20E008694();
    if (v14)
    {
      v15 = v0[4];
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        sub_20E0086D4();
      }
    }

    sub_20DFDF668(v0[10]);
    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v17[1] = sub_20DFCF62C;
    v18 = v0[10];
    v20 = v0[6];
    v19 = v0[7];
    v21 = v0[5];

    return (sub_20DF83234)(v19, v18, v21, v20);
  }
}

uint64_t sub_20DFCF62C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[8];
  if (v0)
  {

    v7 = *(v5 + 8);
    v3[20] = v7;
    v7(v4, v6);
    v8 = sub_20DFCFA80;
  }

  else
  {
    v9 = *(v5 + 8);
    v3[18] = v9;
    v3[19] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v6);
    v8 = sub_20DFCF7D0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20DFCF7D0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[18];
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_281123100 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_281124A48);
    v6 = sub_20E009074();
    v7 = sub_20E009544();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20DF62000, v6, v7, "Unable to sign Utility Configuration request", v8, 2u);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }

    v9 = v0[16];
    v10 = v0[13];
    v11 = v0[14];
    v12 = v0[11];
    v13 = v0[8];

    v4(v12, v13);
    (*(v11 + 8))(v9, v10);
    v14 = 1;
  }

  else
  {
    v15 = v0[18];
    v21 = v0[16];
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[11];
    (*(v2 + 32))(v0[2], v3, v1);
    sub_20E008704();
    v15(v18, v1);
    (*(v16 + 8))(v21, v17);
    v14 = 0;
  }

  (*(v0[9] + 56))(v0[2], v14, 1, v0[8]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_20DFCFA80()
{
  (*(v0[9] + 56))(v0[7], 1, 1, v0[8]);
  v1 = v0[20];
  sub_20DF66E28(v0[7], &qword_27C8520C8, &qword_20E010830);
  if (qword_281123100 != -1)
  {
    swift_once();
  }

  v2 = sub_20E009094();
  __swift_project_value_buffer(v2, qword_281124A48);
  v3 = sub_20E009074();
  v4 = sub_20E009544();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20DF62000, v3, v4, "Unable to sign Utility Configuration request", v5, 2u);
    MEMORY[0x20F32B3A0](v5, -1, -1);
  }

  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];

  v1(v9, v10);
  (*(v8 + 8))(v6, v7);
  (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_20DFCFC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[151] = a3;
  v3[150] = a2;
  v3[149] = a1;
  v3[152] = type metadata accessor for NetworkError(0);
  v3[153] = swift_task_alloc();
  v4 = sub_20E008A44();
  v3[154] = v4;
  v3[155] = *(v4 - 8);
  v3[156] = swift_task_alloc();
  v5 = sub_20E008AF4();
  v3[157] = v5;
  v3[158] = *(v5 - 8);
  v3[159] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v3[162] = swift_task_alloc();
  v6 = sub_20E008714();
  v3[163] = v6;
  v3[164] = *(v6 - 8);
  v3[165] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  v3[166] = swift_task_alloc();
  v7 = sub_20E008CD4();
  v3[167] = v7;
  v3[168] = *(v7 - 8);
  v3[169] = swift_task_alloc();
  v3[170] = swift_task_alloc();
  v3[171] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFCFF6C, 0, 0);
}

uint64_t sub_20DFCFF6C()
{
  v83 = v0;
  if (qword_281123098 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  __dst[0] = qword_2811249C0;
  __dst[1] = *algn_2811249C8;

  MEMORY[0x20F32A4B0](v2, v1);
  v3 = sub_20DFF20F8();
  v5 = v4;

  MEMORY[0x20F32A4B0](v3, v5);

  v7 = __dst[0];
  v6 = __dst[1];
  *(v0 + 1376) = __dst[0];
  *(v0 + 1384) = v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = sub_20E0091C4();
  v10 = [v8 fileExistsAtPath_];
  *(v0 + 1480) = v10;

  if (!v10 || (sub_20DFD841C(v7, v6) & 1) == 0)
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v42 = sub_20E009094();
    __swift_project_value_buffer(v42, qword_281124A00);
    v43 = sub_20E009074();
    v44 = sub_20E009544();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_17;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "No perviously fetched Config file found on disk. Proceed to fetch new file.";
    goto LABEL_16;
  }

  sub_20DFD795C(*(v0 + 1192), *(v0 + 1200));
  v11 = sub_20E0091C4();

  v12 = sub_20E0091C4();
  v13 = CFPreferencesCopyAppValue(v11, v12);

  v14 = *(v0 + 1344);
  v15 = *(v0 + 1336);
  v16 = *(v0 + 1328);
  if (!v13)
  {
    (*(v14 + 56))(v16, 1, 1, *(v0 + 1336));
    goto LABEL_22;
  }

  *(v0 + 1184) = v13;
  v17 = v16;
  v18 = swift_dynamicCast();
  (*(v14 + 56))(v17, v18 ^ 1u, 1, v15);
  if ((*(v14 + 48))(v17, 1, v15) == 1)
  {
LABEL_22:
    sub_20DF66E28(*(v0 + 1328), &qword_27C852A58, &qword_20E00F7A0);
    goto LABEL_23;
  }

  v19 = *(v0 + 1360);
  v20 = *(v0 + 1344);
  v21 = *(v0 + 1336);
  (*(v20 + 32))(*(v0 + 1368), *(v0 + 1328), v21);
  sub_20E008C94();
  v22 = sub_20E008C44();
  v23 = *(v20 + 8);
  v23(v19, v21);
  if (v22)
  {
    v81 = v23;
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 1368);
    v25 = *(v0 + 1352);
    v26 = *(v0 + 1344);
    v27 = *(v0 + 1336);
    v28 = sub_20E009094();
    __swift_project_value_buffer(v28, qword_281124A18);
    (*(v26 + 16))(v25, v24, v27);
    v29 = sub_20E009074();
    v30 = sub_20E009554();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 1352);
    v33 = *(v0 + 1336);
    if (v31)
    {
      v34 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      __dst[0] = v79;
      *v34 = 136315138;
      v80 = v28;
      v35 = sub_20DFE2F10();
      v37 = v36;
      v38 = v33;
      v39 = v81;
      v81(v32, v38);
      v40 = v35;
      v28 = v80;
      v41 = sub_20DF74468(v40, v37, __dst);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_20DF62000, v29, v30, "Utility config will expire in %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x20F32B3A0](v79, -1, -1);
      MEMORY[0x20F32B3A0](v34, -1, -1);
    }

    else
    {

      v56 = v33;
      v39 = v81;
      v81(v32, v56);
    }

    v57 = sub_20E009074();
    v58 = sub_20E009554();
    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 1368);
    v61 = *(v0 + 1336);
    if (v59)
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_20DF62000, v57, v58, "Utility Configuration exists locally and is Valid. Skip Fetching.", v62, 2u);
      MEMORY[0x20F32B3A0](v62, -1, -1);
    }

    v39(v60, v61);
    v63 = *(v0 + 1248);
    v64 = *(v0 + 1240);
    v65 = *(v0 + 1232);
    (*(*(v0 + 1264) + 56))(*(v0 + 1280), 1, 1, *(v0 + 1256));
    (*(v64 + 104))(v63, *MEMORY[0x277CC91D8], v65);
    sub_20E008AD4();
    v66 = sub_20E008B14();
    v68 = v67;
    sub_20E008744();
    swift_allocObject();
    sub_20E008734();
    sub_20DFD99A0();
    sub_20E008724();

    memcpy(__dst, (v0 + 16), 0x220uLL);
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v28, qword_281124A18);
    v69 = sub_20E009074();
    v70 = sub_20E009554();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_20DF62000, v69, v70, "> Utility Config values being returned", v71, 2u);
      MEMORY[0x20F32B3A0](v71, -1, -1);
    }

    v72 = *(v0 + 1272);
    v73 = *(v0 + 1264);
    v74 = *(v0 + 1256);

    v75 = type metadata accessor for UtilityConfiguration();
    v76 = objc_allocWithZone(v75);
    memcpy(&v76[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config], __dst, 0x220uLL);
    *(v0 + 1128) = v76;
    *(v0 + 1136) = v75;
    v77 = objc_msgSendSuper2((v0 + 1128), sel_init);
    sub_20DF67FFC(v66, v68);
    (*(v73 + 8))(v72, v74);

    v78 = *(v0 + 8);

    return v78(v77);
  }

  v23(*(v0 + 1368), *(v0 + 1336));
LABEL_23:
  sub_20DFD7AB8(*(v0 + 1192), *(v0 + 1200));
  v52 = sub_20E0091C4();

  v53 = sub_20E0091C4();
  v54 = CFPreferencesCopyAppValue(v52, v53);

  if (v54)
  {
    *(v0 + 1176) = v54;
    if (swift_dynamicCast())
    {
      v47 = *(v0 + 1144);
      v48 = *(v0 + 1152);
      goto LABEL_18;
    }
  }

  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  v55 = sub_20E009094();
  __swift_project_value_buffer(v55, qword_281124A18);
  v43 = sub_20E009074();
  v44 = sub_20E009544();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Config file exists on disk. But no eTag Value!";
LABEL_16:
    _os_log_impl(&dword_20DF62000, v43, v44, v46, v45, 2u);
    MEMORY[0x20F32B3A0](v45, -1, -1);
  }

LABEL_17:

  v47 = 0;
  v48 = 0;
LABEL_18:
  *(v0 + 1400) = v48;
  *(v0 + 1392) = v47;
  v49 = swift_task_alloc();
  *(v0 + 1408) = v49;
  *v49 = v0;
  v49[1] = sub_20DFD0C6C;
  v50 = *(v0 + 1208);

  return sub_20DF9D6CC(v50);
}

uint64_t sub_20DFD0C6C()
{

  return MEMORY[0x2822009F8](sub_20DFD0D68, 0, 0);
}

uint64_t sub_20DFD0D68()
{
  v1 = v0[150];
  v2 = v0[149];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20E00AB50;
  *(v3 + 32) = 0x497974696C697475;
  *(v3 + 40) = 0xE900000000000064;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;

  v0[177] = sub_20DF74E1C(v3);
  swift_setDeallocating();
  sub_20DF66E28(v3 + 32, &qword_27C852140, &qword_20E011050);
  swift_deallocClassInstance();
  KeyPath = swift_getKeyPath();
  v0[178] = KeyPath;
  v5 = swift_task_alloc();
  v0[179] = v5;
  *v5 = v0;
  v5[1] = sub_20DFD0EE4;
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[162];
  v9 = v0[150];
  v10 = v0[149];

  return sub_20DFCF158(v8, v10, v9, v7, v6, 21333, 0xE200000000000000, KeyPath);
}

uint64_t sub_20DFD0EE4()
{

  return MEMORY[0x2822009F8](sub_20DFD1018, 0, 0);
}

uint64_t sub_20DFD1018()
{
  v1 = v0[164];
  v2 = v0[163];
  v3 = v0[162];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {

    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_281124A00);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable generate request URL for Utility Configuration Fetch", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    sub_20DF960FC();
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v1 + 32))(v0[165], v3, v2);
    sub_20DFDF8DC(0xD000000000000013, 0x800000020E016F30, 0xD00000000000001ELL, 0x800000020E016F50);
    v11 = swift_task_alloc();
    v0[180] = v11;
    *v11 = v0;
    v11[1] = sub_20DFD134C;
    v12 = v0[165];

    return MEMORY[0x28211ECF8](v12, 0);
  }
}

uint64_t sub_20DFD134C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[181] = a1;
  v5[182] = a2;
  v5[183] = a3;
  v5[184] = v3;

  if (v3)
  {

    v6 = sub_20DFD26E8;
  }

  else
  {
    v6 = sub_20DFD1480;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DFD1480()
{
  v123 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v24 = sub_20E009094();
    __swift_project_value_buffer(v24, qword_281124A18);
    v25 = sub_20E009074();
    v26 = sub_20E009544();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20DF62000, v25, v26, "Unable to process Utility Territory Configuration Response.", v27, 2u);
      MEMORY[0x20F32B3A0](v27, -1, -1);
    }

    v21 = *(v0 + 1464);
    v22 = *(v0 + 1456);
    v23 = *(v0 + 1448);

    sub_20DF960FC();
    v10 = swift_allocError();
    *v28 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_18:

LABEL_44:
    v39 = v23;
    v58 = v22;
    goto LABEL_45;
  }

  v2 = v1;
  v3 = *(v0 + 1464);
  sub_20DFDFFF8(0xD00000000000001CLL, 0x800000020E016F70, [v2 statusCode], &unk_28252D448);
  v4 = [v2 statusCode];
  if (v4 == 304)
  {
    if (*(v0 + 1480) == 1)
    {
      if (*(v0 + 1400))
      {

        if (qword_2811230E8 != -1)
        {
          swift_once();
        }

        v29 = sub_20E009094();
        __swift_project_value_buffer(v29, qword_281124A18);
        v30 = sub_20E009074();
        v31 = sub_20E009534();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_20DF62000, v30, v31, "Utility Territory on disk unmodified. Use existing file on disk.", v32, 2u);
          MEMORY[0x20F32B3A0](v32, -1, -1);
        }

        v33 = *(v0 + 1472);
        v34 = *(v0 + 1200);
        v35 = *(v0 + 1192);

        sub_20DFD7BA4(v2, v35, v34);
        v10 = v33;
        v36 = *(v0 + 1464);
        v37 = *(v0 + 1456);
        v38 = *(v0 + 1448);
        if (!v10)
        {
          (*(*(v0 + 1312) + 8))(*(v0 + 1320), *(v0 + 1304));

          sub_20DF67FFC(v38, v37);
LABEL_61:
          v105 = *(v0 + 1248);
          v106 = *(v0 + 1240);
          v107 = *(v0 + 1232);
          (*(*(v0 + 1264) + 56))(*(v0 + 1280), 1, 1, *(v0 + 1256));
          (*(v106 + 104))(v105, *MEMORY[0x277CC91D8], v107);
          sub_20E008AD4();
          v108 = sub_20E008B14();
          v110 = v109;
          sub_20E008744();
          swift_allocObject();
          sub_20E008734();
          sub_20DFD99A0();
          sub_20E008724();

          memcpy(__src, (v0 + 16), 0x220uLL);
          if (qword_2811230E8 != -1)
          {
            swift_once();
          }

          v111 = sub_20E009094();
          __swift_project_value_buffer(v111, qword_281124A18);
          v112 = sub_20E009074();
          v113 = sub_20E009554();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            *v114 = 0;
            _os_log_impl(&dword_20DF62000, v112, v113, "> Utility Config values being returned", v114, 2u);
            MEMORY[0x20F32B3A0](v114, -1, -1);
          }

          v115 = *(v0 + 1272);
          v116 = *(v0 + 1264);
          v117 = *(v0 + 1256);

          v118 = type metadata accessor for UtilityConfiguration();
          v119 = objc_allocWithZone(v118);
          memcpy(&v119[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config], __src, 0x220uLL);
          *(v0 + 1128) = v119;
          *(v0 + 1136) = v118;
          v120 = objc_msgSendSuper2((v0 + 1128), sel_init);
          sub_20DF67FFC(v108, v110);
          (*(v116 + 8))(v115, v117);

          v121 = *(v0 + 8);

          return v121(v120);
        }

        v39 = v38;
        goto LABEL_36;
      }
    }

    else
    {
    }

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v59 = *(v0 + 1464);
    v60 = sub_20E009094();
    __swift_project_value_buffer(v60, qword_281124A18);
    v61 = v59;
    v62 = sub_20E009074();
    v63 = sub_20E009534();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      __src[0] = v65;
      *v64 = 136315138;
      v66 = [v2 allHeaderFields];
      sub_20E009164();

      v67 = sub_20E009174();
      v69 = v68;

      v70 = sub_20DF74468(v67, v69, __src);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_20DF62000, v62, v63, "Headers: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x20F32B3A0](v65, -1, -1);
      MEMORY[0x20F32B3A0](v64, -1, -1);
    }

    v71 = sub_20E009074();
    v72 = sub_20E009534();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_20DF62000, v71, v72, "Server return 304, but inconsistency in stored Config detected!", v73, 2u);
      MEMORY[0x20F32B3A0](v73, -1, -1);
    }

    v74 = *(v0 + 1464);
    v22 = *(v0 + 1456);
    v23 = *(v0 + 1448);
    v75 = *(v0 + 1200);
    v76 = *(v0 + 1192);

    sub_20DFD7F58(v76, v75);
    sub_20DFC1448();
    v10 = swift_allocError();
    *v77 = 1;
    swift_willThrow();

    goto LABEL_44;
  }

  if (v4 == 200)
  {

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_281124A18);
    v6 = sub_20E009074();
    v7 = sub_20E009534();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20DF62000, v6, v7, "New Configuration Fetched", v8, 2u);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }

    v9 = *(v0 + 1472);

    sub_20DFD2C2C(__src);
    v10 = v9;
    if (!v9)
    {
      v11 = *(v0 + 1456);
      v12 = *(v0 + 1448);
      v13 = *(v0 + 1288);
      v14 = *(v0 + 1200);
      v15 = *(v0 + 1192);
      memcpy((v0 + 560), __src, 0x220uLL);
      sub_20DFD99F4(v0 + 560);
      sub_20DFD2EB0(v12, v11, v15, v14, v13);
      v16 = *(v0 + 1200);
      v17 = *(v0 + 1192);
      sub_20DF66E28(*(v0 + 1288), &qword_27C8520D0, &qword_20E00AB70);
      sub_20DFD7BA4(v2, v17, v16);

      v95 = sub_20E009074();
      v96 = sub_20E009554();
      v97 = os_log_type_enabled(v95, v96);
      v98 = *(v0 + 1464);
      v99 = *(v0 + 1456);
      v100 = *(v0 + 1448);
      v101 = *(v0 + 1320);
      v102 = *(v0 + 1312);
      v103 = *(v0 + 1304);
      if (v97)
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&dword_20DF62000, v95, v96, "New Utility Territory Config saved to disk", v104, 2u);
        MEMORY[0x20F32B3A0](v104, -1, -1);
        sub_20DF67FFC(v100, v99);
      }

      else
      {

        sub_20DF67FFC(v100, v99);
      }

      (*(v102 + 8))(v101, v103);
      goto LABEL_61;
    }

    v18 = sub_20E009074();
    v19 = sub_20E009544();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20DF62000, v18, v19, "Unable to decode response from server", v20, 2u);
      MEMORY[0x20F32B3A0](v20, -1, -1);
    }

    v21 = *(v0 + 1464);
    v22 = *(v0 + 1456);
    v23 = *(v0 + 1448);

    swift_willThrow();
    goto LABEL_18;
  }

  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  v40 = sub_20E009094();
  __swift_project_value_buffer(v40, qword_281124A18);
  v41 = sub_20E009074();
  v42 = sub_20E009544();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_20DF62000, v41, v42, "Error while checking for Utility Territory Config", v43, 2u);
    MEMORY[0x20F32B3A0](v43, -1, -1);
  }

  v44 = *(v0 + 1464);

  v45 = v44;
  v46 = [v2 description];
  v47 = sub_20E0091D4();
  v49 = v48;

  v50 = sub_20E009074();
  v51 = sub_20E009544();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    __src[0] = v53;
    *v52 = 136315138;
    v54 = sub_20DF74468(v47, v49, __src);

    *(v52 + 4) = v54;
    _os_log_impl(&dword_20DF62000, v50, v51, "%s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x20F32B3A0](v53, -1, -1);
    MEMORY[0x20F32B3A0](v52, -1, -1);
  }

  else
  {
  }

  v55 = *(v0 + 1464);
  v37 = *(v0 + 1456);
  v56 = *(v0 + 1448);
  sub_20DF960FC();
  v10 = swift_allocError();
  *v57 = [v2 statusCode];
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v39 = v56;
LABEL_36:
  v58 = v37;
LABEL_45:
  sub_20DF67FFC(v39, v58);
  v78 = v10;
  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  v79 = sub_20E009094();
  __swift_project_value_buffer(v79, qword_281124A18);
  v80 = v10;
  v81 = sub_20E009074();
  v82 = sub_20E009544();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v83 = 138412290;
    v85 = v10;
    v86 = _swift_stdlib_bridgeErrorToNSError();
    *(v83 + 4) = v86;
    *v84 = v86;
    _os_log_impl(&dword_20DF62000, v81, v82, "Error while trying to fetch Utility Territory Config from server %@", v83, 0xCu);
    sub_20DF66E28(v84, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v84, -1, -1);
    MEMORY[0x20F32B3A0](v83, -1, -1);
  }

  *(v0 + 1160) = v10;
  v87 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v88 = swift_dynamicCast();
  v89 = *(v0 + 1320);
  v90 = *(v0 + 1312);
  v91 = *(v0 + 1304);
  if (v88)
  {
    v92 = *(v0 + 1224);

    sub_20DFB2F60(v92);
    swift_willThrow();
  }

  else
  {
    sub_20DFFF4B4(v10);
    swift_willThrow();
  }

  (*(v90 + 8))(v89, v91);

  v93 = *(v0 + 8);

  return v93();
}

uint64_t sub_20DFD26E8()
{
  v1 = v0[184];
  v2 = v1;
  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  v3 = sub_20E009094();
  __swift_project_value_buffer(v3, qword_281124A18);
  v4 = v1;
  v5 = sub_20E009074();
  v6 = sub_20E009544();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20DF62000, v5, v6, "Error while trying to fetch Utility Territory Config from server %@", v7, 0xCu);
    sub_20DF66E28(v8, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v8, -1, -1);
    MEMORY[0x20F32B3A0](v7, -1, -1);
  }

  v0[145] = v1;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v12 = swift_dynamicCast();
  v13 = v0[165];
  v14 = v0[164];
  v15 = v0[163];
  if (v12)
  {
    v16 = v0[153];

    sub_20DFB2F60(v16);
    swift_willThrow();
  }

  else
  {
    sub_20DFFF4B4(v1);
    swift_willThrow();
  }

  (*(v14 + 8))(v13, v15);

  v17 = v0[1];

  return v17();
}

void sub_20DFD29C0(uint64_t a1, uint64_t a2)
{
  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  sub_20DFC149C();
  sub_20E008724();
  if (v2)
  {

    v3 = sub_20DFFE0B0(v2);
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_281124A18);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Error while decoding response.", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = v3;
    v9 = sub_20E009074();
    v10 = sub_20E009544();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_20E0099E4();
      v15 = sub_20DF74468(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_20DF62000, v9, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F32B3A0](v12, -1, -1);
      MEMORY[0x20F32B3A0](v11, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
  }
}

void sub_20DFD2C2C(void *a3@<X8>)
{
  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  sub_20DFD99A0();
  sub_20E008724();
  if (v3)
  {

    v5 = sub_20DFFE0B0(v3);
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v6 = sub_20E009094();
    __swift_project_value_buffer(v6, qword_281124A18);
    v7 = sub_20E009074();
    v8 = sub_20E009544();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20DF62000, v7, v8, "Error while decoding response.", v9, 2u);
      MEMORY[0x20F32B3A0](v9, -1, -1);
    }

    v10 = v5;
    v11 = sub_20E009074();
    v12 = sub_20E009544();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __src[0] = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_20E0099E4();
      v17 = sub_20DF74468(v15, v16, __src);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20DF62000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F32B3A0](v14, -1, -1);
      MEMORY[0x20F32B3A0](v13, -1, -1);
    }

    swift_willThrow();
  }

  else
  {

    memcpy(a3, __src, 0x220uLL);
  }
}

uint64_t sub_20DFD2EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a1;
  v81 = a2;
  v70 = a5;
  v91 = *MEMORY[0x277D85DE8];
  v86 = sub_20E008A44();
  v7 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v69 - v10;
  v12 = sub_20E008AF4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - v16;
  if (qword_281123098 != -1)
  {
    swift_once();
  }

  v18 = *algn_2811249C8;
  v85 = qword_2811249C0;
  v89 = qword_2811249C0;
  v90 = *algn_2811249C8;

  MEMORY[0x20F32A4B0](a3, a4);
  v19 = v89;
  v20 = v90;
  v21 = sub_20DFF20F8();
  v23 = v22;
  v89 = v19;
  v90 = v20;

  MEMORY[0x20F32A4B0](v21, v23);

  v24 = v89;
  v83 = v13;
  v77 = *(v13 + 56);
  v78 = v13 + 56;
  v77(v11, 1, 1, v12);
  v25 = *(v7 + 104);
  v26 = v79;
  v72 = *MEMORY[0x277CC91D8];
  v71 = v25;
  v25(v79);

  v82 = v17;
  v87 = v24;
  v75 = v11;
  sub_20E008AD4();
  v27 = [objc_opt_self() defaultManager];
  v88 = 1;
  v73 = v18;
  v28 = sub_20E0091C4();
  v29 = v27;
  LOBYTE(v24) = [v27 fileExistsAtPath:v28 isDirectory:&v88];

  v84 = v12;
  if (v24)
  {
    v30 = v83;
LABEL_11:
    v39 = v82;
    v40 = v76;
    goto LABEL_13;
  }

  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v31 = sub_20E009094();
  __swift_project_value_buffer(v31, qword_281124A00);
  v32 = sub_20E009074();
  v33 = sub_20E009554();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_20DF62000, v32, v33, "Creating folder to save config.", v34, 2u);
    v12 = v84;
    MEMORY[0x20F32B3A0](v34, -1, -1);
  }

  v77(v75, 1, 1, v12);
  v71(v26, v72, v86);

  v35 = v74;
  sub_20E008AD4();
  v36 = sub_20E008A64();
  v30 = v83;
  (*(v83 + 8))(v35, v12);
  v89 = 0;
  v37 = [v27 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v89];

  if (v37)
  {
    v38 = v89;
    goto LABEL_11;
  }

  v41 = v89;
  v42 = sub_20E008A34();

  swift_willThrow();
  v40 = 0;
  v39 = v82;
LABEL_13:
  v43 = sub_20E0091C4();
  v44 = [v27 fileExistsAtPath_];

  if (v44)
  {
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v45 = sub_20E009094();
    __swift_project_value_buffer(v45, qword_281124A18);
    v46 = sub_20E009074();
    v47 = sub_20E009554();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_20DF62000, v46, v47, "Removing existing file from disk", v48, 2u);
      MEMORY[0x20F32B3A0](v48, -1, -1);
    }

    v49 = sub_20E0091C4();

    v89 = 0;
    v50 = [v27 removeItemAtPath:v49 error:&v89];

    if (v50)
    {
      v51 = v89;
    }

    else
    {
      v52 = v89;
      v53 = sub_20E008A34();

      swift_willThrow();
      v40 = 0;
    }
  }

  else
  {
  }

  sub_20E008B94();
  if (v40)
  {
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v54 = sub_20E009094();
    __swift_project_value_buffer(v54, qword_281124A18);
    v55 = v40;
    v56 = sub_20E009074();
    v57 = sub_20E009544();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      v60 = v40;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 4) = v61;
      *v59 = v61;
      _os_log_impl(&dword_20DF62000, v56, v57, "Error while trying to write config to disk. %@", v58, 0xCu);
      sub_20DF66E28(v59, &qword_27C8521E0, &unk_20E011080);
      MEMORY[0x20F32B3A0](v59, -1, -1);
      MEMORY[0x20F32B3A0](v58, -1, -1);
    }

    swift_willThrow();
    return (*(v30 + 8))(v39, v84);
  }

  else
  {
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v63 = sub_20E009094();
    __swift_project_value_buffer(v63, qword_281124A18);
    v64 = sub_20E009074();
    v65 = sub_20E009554();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_20DF62000, v64, v65, "Successfully wrote config to disk", v66, 2u);
      MEMORY[0x20F32B3A0](v66, -1, -1);
    }

    v67 = v70;
    v68 = v84;
    (*(v30 + 32))(v70, v39, v84);
    return (v77)(v67, 0, 1, v68);
  }
}

uint64_t sub_20DFD37B4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853230, &qword_20E011828);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDDB84();
  sub_20E009A84();
  memcpy(v11, v2, sizeof(v11));
  sub_20DFDDBD8(v2, v10);
  sub_20DF75378();
  sub_20E009944();
  memcpy(v10, v11, sizeof(v10));
  sub_20DF753CC(v10);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20DFD3954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7974696C697475 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E009984();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20DFD39DC(uint64_t a1)
{
  v2 = sub_20DFDDB84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD3A18(uint64_t a1)
{
  v2 = sub_20DFDDB84();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20DFD3A54@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_20DFD889C(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x220uLL);
  }

  return result;
}

uint64_t sub_20DFD3AF4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853070, &qword_20E011028);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v44 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFD5B60();
  sub_20E009A84();
  LOBYTE(v69) = 0;
  sub_20E009914();
  if (!v2)
  {
    v69 = *(v3 + 16);
    LOBYTE(v66[0]) = 1;
    sub_20DFD5BB4();
    sub_20E009944();
    v9 = *(v3 + 176);
    v10 = *(v3 + 208);
    v100 = *(v3 + 192);
    v101[0] = v10;
    *(v101 + 10) = *(v3 + 218);
    v11 = *(v3 + 112);
    v12 = *(v3 + 144);
    v96 = *(v3 + 128);
    v97 = v12;
    v14 = *(v3 + 144);
    v13 = *(v3 + 160);
    v15 = v13;
    v99 = *(v3 + 176);
    v98 = v13;
    v16 = *(v3 + 48);
    v17 = *(v3 + 80);
    v92 = *(v3 + 64);
    v93 = v17;
    v19 = *(v3 + 80);
    v18 = *(v3 + 96);
    v20 = v18;
    v95 = *(v3 + 112);
    v94 = v18;
    v21 = *(v3 + 32);
    v22 = v21;
    v91[1] = *(v3 + 48);
    v91[0] = v21;
    v23 = *(v3 + 208);
    v79 = v100;
    v80[0] = v23;
    *(v80 + 10) = *(v3 + 218);
    v75 = v96;
    v76 = v14;
    v77 = v15;
    v78 = v9;
    v71 = v92;
    v72 = v19;
    v73 = v20;
    v74 = v11;
    v69 = v22;
    v70 = v16;
    v68 = 2;
    sub_20DFD5C08(v91, v66);
    sub_20DFD5C40();
    sub_20E009944();
    v66[10] = v79;
    *v67 = v80[0];
    *&v67[10] = *(v80 + 10);
    v66[6] = v75;
    v66[7] = v76;
    v66[8] = v77;
    v66[9] = v78;
    v66[2] = v71;
    v66[3] = v72;
    v66[4] = v73;
    v66[5] = v74;
    v66[0] = v69;
    v66[1] = v70;
    sub_20DFD5C94(v66);
    *&v54 = *(v3 + 240);
    LOBYTE(v52[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853090, &qword_20E011030);
    sub_20DFD5CC4();
    sub_20E009904();
    v24 = *(v3 + 392);
    v25 = *(v3 + 360);
    v87 = *(v3 + 376);
    v88 = v24;
    v26 = *(v3 + 392);
    v27 = *(v3 + 424);
    v89 = *(v3 + 408);
    v90 = v27;
    v28 = *(v3 + 328);
    v29 = *(v3 + 296);
    v83 = *(v3 + 312);
    v84 = v28;
    v30 = *(v3 + 328);
    v31 = *(v3 + 360);
    v85 = *(v3 + 344);
    v86 = v31;
    v32 = *(v3 + 264);
    v33 = *(v3 + 280);
    v82[0] = *(v3 + 248);
    v82[1] = v32;
    v34 = *(v3 + 264);
    v35 = *(v3 + 296);
    v82[2] = *(v3 + 280);
    v82[3] = v35;
    v62 = v87;
    v63 = v26;
    v36 = *(v3 + 424);
    v64 = v89;
    v65 = v36;
    v58 = v83;
    v59 = v30;
    v60 = v85;
    v61 = v25;
    v54 = *(v3 + 248);
    v55 = v34;
    v56 = v33;
    v57 = v29;
    v53 = 4;
    sub_20DFD5D9C(v82, v52);
    sub_20DFD5DD4();
    sub_20E009944();
    v52[8] = v62;
    v52[9] = v63;
    v52[10] = v64;
    v52[11] = v65;
    v52[4] = v58;
    v52[5] = v59;
    v52[6] = v60;
    v52[7] = v61;
    v52[0] = v54;
    v52[1] = v55;
    v52[2] = v56;
    v52[3] = v57;
    sub_20DFD5E28(v52);
    v37 = *(v3 + 456);
    v81[0] = *(v3 + 440);
    v81[1] = v37;
    v38 = *(v3 + 488);
    v40 = *(v3 + 440);
    v39 = *(v3 + 456);
    v81[2] = *(v3 + 472);
    v81[3] = v38;
    v48 = v40;
    v49 = v39;
    v41 = *(v3 + 488);
    v50 = *(v3 + 472);
    v51 = v41;
    v47 = 5;
    sub_20DFD5E58(v81, v46);
    sub_20DFD5E90();
    sub_20E009944();
    v46[0] = v48;
    v46[1] = v49;
    v46[2] = v50;
    v46[3] = v51;
    sub_20DFD5EE4(v46);
    *&v44[0] = *(v3 + 504);
    v45 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8530B8, &qword_20E011038);
    sub_20DFD5F14();
    sub_20E009944();
    v42 = *(v3 + 528);
    v44[0] = *(v3 + 512);
    v44[1] = v42;
    v45 = 7;
    sub_20DFD5FEC();
    sub_20E009944();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20DFD4134(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853158, &qword_20E0117B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFD9FC0();
  sub_20E009A84();
  LOBYTE(v21) = 0;
  sub_20E009914();
  if (!v2)
  {
    LOBYTE(v21) = 1;
    sub_20E009914();
    LOBYTE(v21) = 2;
    sub_20E009914();
    v9 = v3[4];
    v21 = v3[3];
    v22 = v9;
    LOBYTE(v19[0]) = 3;
    sub_20DFDA014();
    sub_20E009944();
    v10 = v3[7];
    v11 = v3[9];
    v30 = v3[8];
    v31 = v11;
    v12 = v3[9];
    v32 = v3[10];
    v13 = v3[5];
    v14 = v3[7];
    v28 = v3[6];
    v29 = v14;
    v15 = v3[5];
    v24 = v30;
    v25 = v12;
    v26 = v3[10];
    v27 = v15;
    v21 = v13;
    v22 = v28;
    v23 = v10;
    v20 = 4;
    sub_20DFDA068(&v27, v19);
    sub_20DFDA0A0();
    sub_20E009944();
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v19[5] = v26;
    v19[0] = v21;
    v19[1] = v22;
    sub_20DFDA0F4(v19);
    v18 = 5;
    sub_20E0098F4();
    v18 = 6;
    sub_20E0098F4();
    v18 = 7;
    sub_20E0098E4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20DFD446C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a5;
  v12[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8532F8, &qword_20E0122A8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDE6FC();
  sub_20E009A84();
  v15 = 0;
  sub_20E009914();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = 1;
  sub_20E009934();
  v13 = 2;
  sub_20E009934();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_20DFD4620(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853308, &qword_20E0122B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDE750();
  sub_20E009A84();
  LOBYTE(v10) = 0;
  sub_20E009924();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_20E009914();
    LOBYTE(v10) = 2;
    sub_20E009914();
    *&v10 = *(v3 + 40);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853318, &qword_20E0122B8);
    sub_20DFDE7A4();
    sub_20E009944();
    *&v10 = *(v3 + 48);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853330, &qword_20E0122C0);
    sub_20DFDE87C();
    sub_20E009904();
    v10 = *(v3 + 56);
    v11 = *(v3 + 72);
    v12 = 5;
    sub_20DFDE954();
    sub_20E009944();
    LOBYTE(v10) = 6;
    sub_20E009914();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20DFD48F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8533F8, &unk_20E0127E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDF0AC();
  sub_20E009A84();
  v13 = 0;
  sub_20E009914();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    sub_20DF756D4(&qword_2811230A8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_20E009944();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_20DFD4AB8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1701869940;
    v7 = 0x79654B6D726F66;
    v8 = 0x74786554746E6968;
    if (a1 != 3)
    {
      v8 = 0x746E6F4374786574;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6C6562616CLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x7865676572;
    if (a1 != 9)
    {
      v2 = 0x6465726975716572;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6472616F6279656BLL;
    v4 = 0x6572756365537369;
    if (a1 != 6)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 != 5)
    {
      v3 = v4;
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

uint64_t sub_20DFD4C1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8533E8, &qword_20E0127E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDF058();
  sub_20E009A84();
  v8[15] = 0;
  sub_20E009914();
  if (!v1)
  {
    v8[14] = 1;
    sub_20E009914();
    v8[13] = 2;
    sub_20E009914();
    v8[12] = 3;
    sub_20E0098D4();
    v8[11] = 4;
    sub_20E009914();
    v8[10] = 5;
    sub_20E009914();
    v8[9] = 6;
    sub_20E009924();
    v8[8] = 7;
    sub_20E009934();
    v8[7] = 8;
    sub_20E009934();
    v8[6] = 9;
    sub_20E009914();
    v8[5] = 10;
    sub_20E0098E4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20DFD4EC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853408, &qword_20E0127F8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDF100();
  sub_20E009A84();
  v13 = 0;
  sub_20E009934();
  if (!v4)
  {
    v12 = 1;
    sub_20E009914();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_20DFD5058(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853188, &qword_20E0117C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDA178();
  sub_20E009A84();
  LOBYTE(v20) = 0;
  sub_20E009914();
  if (!v2)
  {
    LOBYTE(v20) = 1;
    sub_20E009914();
    LOBYTE(v20) = 2;
    sub_20E009914();
    LOBYTE(v20) = 3;
    sub_20E0098D4();
    v9 = v3[8];
    v10 = v3[6];
    v30 = v3[7];
    v31 = v9;
    v11 = v3[8];
    v12 = v3[10];
    v32 = v3[9];
    v33 = v12;
    v13 = v3[4];
    v14 = v3[6];
    v28 = v3[5];
    v29 = v14;
    v15 = v3[4];
    v24 = v11;
    v25 = v32;
    v26 = v3[10];
    v27 = v15;
    v20 = v13;
    v21 = v28;
    v22 = v10;
    v23 = v30;
    v19 = 4;
    sub_20DFDA1CC(&v27, v18);
    sub_20DFDA204();
    sub_20E009944();
    v18[4] = v24;
    v18[5] = v25;
    v18[6] = v26;
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v18[3] = v23;
    sub_20DFDA258(v18);
    v17[15] = 5;
    sub_20E009914();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20DFD5330(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853350, &qword_20E0122C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDE9A8();
  sub_20E009A84();
  v8[15] = 0;
  sub_20E009914();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_20E009914();
  v8[13] = 2;
  sub_20E009914();
  v8[12] = 3;
  sub_20E009914();
  v8[11] = 4;
  sub_20E009914();
  v8[10] = 5;
  sub_20E009914();
  v8[9] = 6;
  sub_20E009914();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20DFD5594(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_20E009A84();
  v17 = 0;
  v11 = v13[1];
  sub_20E009914();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v16 = 1;
  sub_20E009914();
  v15 = 2;
  sub_20E009914();
  v14 = 3;
  sub_20E009914();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_20DFD57AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v20[2] = a3;
  v20[0] = a4;
  v20[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (a8)(v15, v16, v17);
  sub_20E009A84();
  v22 = 0;
  v18 = v20[3];
  sub_20E009914();
  if (!v18)
  {
    v21 = 1;
    sub_20E009914();
  }

  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_20DFD593C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000010;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x617A696E6167726FLL;
  if (v1 != 4)
  {
    v4 = 0x74726F70707573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6D6E6F7269766E65;
  if (v1 != 2)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x6B726F77747261;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20DFD5A5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DFD8A50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DFD5A84(uint64_t a1)
{
  v2 = sub_20DFD5B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD5AC0(uint64_t a1)
{
  v2 = sub_20DFD5B60();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20DFD5AFC@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_20DFD8D00(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x220uLL);
  }

  return result;
}

unint64_t sub_20DFD5B60()
{
  result = qword_27C853078;
  if (!qword_27C853078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853078);
  }

  return result;
}

unint64_t sub_20DFD5BB4()
{
  result = qword_27C853080;
  if (!qword_27C853080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853080);
  }

  return result;
}

unint64_t sub_20DFD5C40()
{
  result = qword_27C853088;
  if (!qword_27C853088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853088);
  }

  return result;
}

unint64_t sub_20DFD5CC4()
{
  result = qword_27C853098;
  if (!qword_27C853098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853090, &qword_20E011030);
    sub_20DFD5D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853098);
  }

  return result;
}

unint64_t sub_20DFD5D48()
{
  result = qword_27C8530A0;
  if (!qword_27C8530A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530A0);
  }

  return result;
}

unint64_t sub_20DFD5DD4()
{
  result = qword_27C8530A8;
  if (!qword_27C8530A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530A8);
  }

  return result;
}

unint64_t sub_20DFD5E90()
{
  result = qword_27C8530B0;
  if (!qword_27C8530B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530B0);
  }

  return result;
}

unint64_t sub_20DFD5F14()
{
  result = qword_27C8530C0;
  if (!qword_27C8530C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8530B8, &qword_20E011038);
    sub_20DFD5F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530C0);
  }

  return result;
}

unint64_t sub_20DFD5F98()
{
  result = qword_27C8530C8;
  if (!qword_27C8530C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530C8);
  }

  return result;
}

unint64_t sub_20DFD5FEC()
{
  result = qword_27C8530D0;
  if (!qword_27C8530D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530D0);
  }

  return result;
}

uint64_t sub_20DFD6040()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_20DFD6064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20DFD6140(uint64_t a1)
{
  v2 = sub_20DFDA124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD617C(uint64_t a1)
{
  v2 = sub_20DFDA124();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_20DFD6254()
{
  v1 = 1701667182;
  v2 = 0x6D726F6674616C70;
  if (*v0 != 2)
  {
    v2 = 0x6B726F77747261;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20DFD62CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DFDA384(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DFD62F4(uint64_t a1)
{
  v2 = sub_20DFDA2DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD6330(uint64_t a1)
{
  v2 = sub_20DFDA2DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFD6398(uint64_t a1)
{
  v2 = sub_20DFD9F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD63D4(uint64_t a1)
{
  v2 = sub_20DFD9F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFD6410@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8531D0, &qword_20E0117E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFD9F6C();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_20E009894();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_20DFD658C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853148, &qword_20E0117B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFD9F6C();
  sub_20E009A84();
  sub_20E009914();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20DFD66C8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001ALL;
    if (v1 != 6)
    {
      v5 = 0xD000000000000017;
    }

    v6 = 0xD000000000000019;
    if (v1 == 4)
    {
      v6 = 0x616F626E4F666174;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x696669746E656469;
    v3 = 0x6966697373616C63;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0)
    {
      v2 = 1701667182;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_20DFD67E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DFDA7E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DFD6810(uint64_t a1)
{
  v2 = sub_20DFD9FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD684C(uint64_t a1)
{
  v2 = sub_20DFD9FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_20DFD6888@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_20DFDAA94(a2, v10);
  if (!v2)
  {
    v5 = v11[0];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v5;
    *(a1 + 186) = *(v11 + 10);
    v6 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v6;
    v7 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v7;
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_20DFD690C()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  if (v2 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_20DFD6960@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DFDB0D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DFD6988(uint64_t a1)
{
  v2 = sub_20DFDE6FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD69C4(uint64_t a1)
{
  v2 = sub_20DFDE6FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFD6A00@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_20DFDB1F4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_20DFD6A50()
{
  v1 = *v0;
  v2 = 0x64656C62616E65;
  v3 = 0x65706F725070746FLL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x73646C656966;
  if (v1 != 3)
  {
    v4 = 0x736E6F6974636573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x6449746E65696C63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20DFD6B38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DFDB3FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DFD6B60(uint64_t a1)
{
  v2 = sub_20DFDE750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD6B9C(uint64_t a1)
{
  v2 = sub_20DFDE750();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20DFD6BD8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_20DFDB654(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_20DFD6C3C(uint64_t a1)
{
  v2 = sub_20DFDF0AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD6C78(uint64_t a1)
{
  v2 = sub_20DFDF0AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFD6CB4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_20DFDBBD0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_20DFD6D0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DFDBDF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DFD6D40(uint64_t a1)
{
  v2 = sub_20DFDF058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD6D7C(uint64_t a1)
{
  v2 = sub_20DFDF058();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_20DFD6DB8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_20DFDC184(a2, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 121) = *(v9 + 9);
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_20DFD6E2C()
{
  if (*v0)
  {
    return 0x6472616F6279656BLL;
  }

  else
  {
    return 0x6874676E656CLL;
  }
}

uint64_t sub_20DFD6E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874676E656CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6472616F6279656BLL && a2 == 0xEC00000065707954)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20DFD6F48(uint64_t a1)
{
  v2 = sub_20DFDF100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD6F84(uint64_t a1)
{
  v2 = sub_20DFDF100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFD6FC0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_20DFDC7C8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_20DFD7010()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6D614E74726F6873;
  v4 = 0x73736572646461;
  if (v1 != 4)
  {
    v4 = 0x746E656449616965;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D754E656E6F6870;
  if (v1 != 1)
  {
    v5 = 0x65746973626577;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20DFD70DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DFDC974(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DFD7104(uint64_t a1)
{
  v2 = sub_20DFDA178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD7140(uint64_t a1)
{
  v2 = sub_20DFDA178();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20DFD717C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_20DFDCB84(a2, v11);
  if (!v2)
  {
    v5 = v19;
    a1[8] = v18;
    a1[9] = v5;
    v6 = v21;
    a1[10] = v20;
    a1[11] = v6;
    v7 = v15;
    a1[4] = v14;
    a1[5] = v7;
    v8 = v17;
    a1[6] = v16;
    a1[7] = v8;
    v9 = v11[1];
    *a1 = v11[0];
    a1[1] = v9;
    result = *&v12;
    v10 = v13;
    a1[2] = v12;
    a1[3] = v10;
  }

  return result;
}

uint64_t sub_20DFD71F8(uint64_t a1)
{
  v2 = sub_20DFDE9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD7234(uint64_t a1)
{
  v2 = sub_20DFDE9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_20DFD7270@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_20DFDD07C(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_20DFD72E8()
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DFD7398(uint64_t a1)
{
  sub_20E009194();
}

uint64_t sub_20DFD7434(uint64_t a1)
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

unint64_t sub_20DFD74E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20DFDD5EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20DFD7510(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "tionToken";
  v4 = "customerServiceEmail";
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001BLL;
    v4 = "customerServiceSms";
  }

  if (*v1)
  {
    v3 = "customerServicePhone";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_20DFD7580()
{
  v1 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000014;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_20DFD75EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DFDD5EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DFD7614(uint64_t a1)
{
  v2 = sub_20DFDA288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD7650(uint64_t a1)
{
  v2 = sub_20DFDA288();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20DFD76B8@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_20DFD7700()
{
  if (*v0)
  {
    return 6910581;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_20DFD772C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6910581 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20DFD7808(uint64_t a1)
{
  v2 = sub_20DFDA330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFD7844(uint64_t a1)
{
  v2 = sub_20DFDA330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DFD78C4@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_20DFDD994(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t sub_20DFD795C(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DFE7E38();
  v4 = 0xEA00000000006C61;
  v5 = 0x6E7265746E496171;
  v6 = 1953654115;
  if (v3 != 2)
  {
    v6 = 1685025392;
  }

  if (v3)
  {
    v5 = 7759204;
    v4 = 0xE300000000000000;
  }

  if (v3 <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v3 <= 1)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  v9 = sub_20DFF20F8();
  v11 = v10;
  sub_20E009714();

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  MEMORY[0x20F32A4B0](v7, v8);

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  MEMORY[0x20F32A4B0](v9, v11);

  MEMORY[0x20F32A4B0](0x6E5564696C61762ELL, 0xEB000000006C6974);
  return a1;
}

uint64_t sub_20DFD7AB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DFE7E38();
  v4 = 0xEA00000000006C61;
  v5 = 0x6E7265746E496171;
  v6 = 1953654115;
  if (v3 != 2)
  {
    v6 = 1685025392;
  }

  if (v3)
  {
    v5 = 7759204;
    v4 = 0xE300000000000000;
  }

  if (v3 <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v3 <= 1)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  MEMORY[0x20F32A4B0](v7, v8);

  MEMORY[0x20F32A4B0](0x676174652ELL, 0xE500000000000000);
  return a1;
}

uint64_t sub_20DFD7BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = sub_20E008CD4();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DFAEBC4();
  sub_20E008C54();
  v9 = sub_20DFAE84C();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_20DFD7AB8(a2, a3);
    v30 = MEMORY[0x277D837D0];
    v29[0] = v11;
    v29[1] = v12;
    sub_20DF9C678(v13, v14, v29, 0xD00000000000002CLL, 0x800000020E0160E0);
    if (v3)
    {
      (*(v6 + 8))(v8, v31);
LABEL_7:

      sub_20DF66E28(v29, &qword_27C8521F0, &unk_20E00EC00);
      if (qword_2811230E8 != -1)
      {
        swift_once();
      }

      v20 = sub_20E009094();
      __swift_project_value_buffer(v20, qword_281124A18);
      v21 = sub_20E009074();
      v22 = sub_20E009544();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_20DF62000, v21, v22, "Error while trying to save Utility Territory config metadata.", v23, 2u);
        MEMORY[0x20F32B3A0](v23, -1, -1);
      }

      return swift_willThrow();
    }

    sub_20DF66E28(v29, &qword_27C8521F0, &unk_20E00EC00);
  }

  v15 = v31;
  v16 = sub_20DFD795C(a2, a3);
  v18 = v17;
  v30 = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
  (*(v6 + 16))(boxed_opaque_existential_0, v8, v15);
  sub_20DF9C678(v16, v18, v29, 0xD00000000000002CLL, 0x800000020E0160E0);
  if (v3)
  {
    (*(v6 + 8))(v8, v15);
    goto LABEL_7;
  }

  sub_20DF66E28(v29, &qword_27C8521F0, &unk_20E00EC00);
  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  v25 = sub_20E009094();
  __swift_project_value_buffer(v25, qword_281124A18);
  v26 = sub_20E009074();
  v27 = sub_20E009554();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_20DF62000, v26, v27, "Utility Territory Config MetaData saved.", v28, 2u);
    MEMORY[0x20F32B3A0](v28, -1, -1);
  }

  return (*(v6 + 8))(v8, v15);
}

uint64_t sub_20DFD7F58(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (qword_281123098 != -1)
  {
    swift_once();
  }

  v26 = qword_2811249C0;
  v27 = *algn_2811249C8;

  MEMORY[0x20F32A4B0](a1, a2);
  v4 = sub_20DFF20F8();
  v6 = v5;

  MEMORY[0x20F32A4B0](v4, v6);

  v7 = [objc_opt_self() defaultManager];
  v8 = sub_20E0091C4();
  v9 = [v7 fileExistsAtPath_];

  if (v9)
  {
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v10 = sub_20E009094();
    __swift_project_value_buffer(v10, qword_281124A18);
    v11 = sub_20E009074();
    v12 = sub_20E009554();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20DF62000, v11, v12, "Removing existing file from disk", v13, 2u);
      MEMORY[0x20F32B3A0](v13, -1, -1);
    }

    v14 = sub_20E0091C4();

    v26 = 0;
    v15 = [v7 removeItemAtPath:v14 error:&v26];

    if (v15)
    {
      v16 = v26;
    }

    else
    {
      v17 = v26;
      v18 = sub_20E008A34();

      swift_willThrow();
    }
  }

  else
  {
  }

  v19 = sub_20DFD7AB8(a1, a2);
  v21 = v20;
  v22 = sub_20DFD795C(a1, a2);
  v24 = v23;
  v28 = MEMORY[0x277D837D0];
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_20DF9C678(v19, v21, &v26, 0xD00000000000002CLL, 0x800000020E0160E0);

  sub_20DF66E28(&v26, &qword_27C8521F0, &unk_20E00EC00);
  v28 = sub_20E008CD4();
  __swift_allocate_boxed_opaque_existential_0(&v26);
  sub_20E008C94();
  sub_20DF9C678(v22, v24, &v26, 0xD00000000000002CLL, 0x800000020E0160E0);

  return sub_20DF66E28(&v26, &qword_27C8521F0, &unk_20E00EC00);
}

uint64_t sub_20DFD841C(uint64_t a1, uint64_t a2)
{
  v2 = sub_20E008A44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  v9 = sub_20E008AF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v2);

  sub_20E008AD4();
  v13 = sub_20E008B14();
  v15 = v14;
  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  sub_20DFD99A0();
  sub_20E008724();
  sub_20DF67FFC(v13, v15);

  memcpy(v17, v18, sizeof(v17));
  sub_20DFD99F4(v17);
  (*(v10 + 8))(v12, v9);
  return 1;
}

void *sub_20DFD889C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853220, &qword_20E011820);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-v6 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDDB84();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v13;
  sub_20DF75420();
  sub_20E0098C4();
  (*(v5 + 8))(v7, v4);
  memcpy(v11, v12, sizeof(v11));
  __swift_destroy_boxed_opaque_existential_0(a1);
  return memcpy(v8, v11, 0x220uLL);
}

uint64_t sub_20DFD8A50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E015060 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617A696E6167726FLL && a2 == 0xEC0000006E6F6974 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74726F70707573 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E016F90 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E016FB0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void *sub_20DFD8D00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8530D8, &qword_20E011040);
  v5 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v7 = &v20 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFD5B60();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  v27 = a2;
  LOBYTE(v29) = 0;
  v9 = sub_20E009894();
  v11 = v10;
  v26 = v9;
  LOBYTE(v28[0]) = 1;
  sub_20DFD964C();
  sub_20E0098C4();
  v12 = v29;
  v25 = v30;
  v88 = 2;
  sub_20DFD96A0();
  sub_20E0098C4();
  v127 = v99;
  v128[0] = v100[0];
  *(v128 + 10) = *(v100 + 10);
  v123 = v95;
  v124 = v96;
  v126 = v98;
  v125 = v97;
  v119 = v91;
  v120 = v92;
  v122 = v94;
  v121 = v93;
  v118 = v90;
  v117 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853090, &qword_20E011030);
  LOBYTE(v28[0]) = 3;
  sub_20DFD96F4();
  sub_20E009884();
  v13 = v12;
  v14 = v29;
  v75 = 4;
  sub_20DFD97CC();
  sub_20E0098C4();
  v113 = v84;
  v114 = v85;
  v115 = v86;
  v116 = v87;
  v109 = v80;
  v110 = v81;
  v111 = v82;
  v112 = v83;
  v105 = v76;
  v106 = v77;
  v107 = v78;
  v108 = v79;
  v70 = 5;
  sub_20DFD9820();
  v24 = 0;
  sub_20E0098C4();
  v101 = v71;
  v102 = v72;
  v103 = v73;
  v104 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8530B8, &qword_20E011038);
  LOBYTE(v28[0]) = 6;
  sub_20DFD9874();
  sub_20E0098C4();
  v23 = v29;
  v67 = 7;
  sub_20DFD994C();
  sub_20E0098C4();
  (*(v8 + 8))(v7, v129);
  v28[12] = v127;
  v28[13] = v128[0];
  *(&v28[13] + 10) = *(v128 + 10);
  v28[8] = v123;
  v28[9] = v124;
  v28[10] = v125;
  v28[11] = v126;
  v28[4] = v119;
  v28[5] = v120;
  v28[6] = v121;
  v28[7] = v122;
  v28[2] = v117;
  v28[3] = v118;
  *(&v28[24] + 8) = v114;
  *(&v28[25] + 8) = v115;
  *(&v28[26] + 8) = v116;
  *(&v28[20] + 8) = v110;
  *(&v28[21] + 8) = v111;
  *(&v28[22] + 8) = v112;
  *(&v28[23] + 8) = v113;
  *(&v28[16] + 8) = v106;
  *(&v28[17] + 8) = v107;
  v24 = *(&v68 + 1);
  v129 = v68;
  v21 = *(&v69 + 1);
  v22 = v69;
  v15 = v11;
  v16 = v25;
  v17 = v26;
  *&v28[0] = v26;
  *(&v28[0] + 1) = v15;
  *&v28[1] = v13;
  *(&v28[1] + 1) = v25;
  *(&v28[18] + 8) = v108;
  *(&v28[19] + 8) = v109;
  *(&v28[15] + 8) = v105;
  *(&v28[27] + 8) = v101;
  *(&v28[28] + 8) = v102;
  *(&v28[29] + 8) = v103;
  *(&v28[30] + 8) = v104;
  *&v28[15] = v14;
  v18 = v23;
  *(&v28[31] + 1) = v23;
  v28[32] = v68;
  v28[33] = v69;
  sub_20DF7531C(v28, &v29);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v43 = v127;
  v44[0] = v128[0];
  *(v44 + 10) = *(v128 + 10);
  v39 = v123;
  v40 = v124;
  v41 = v125;
  v42 = v126;
  v35 = v119;
  v36 = v120;
  v37 = v121;
  v38 = v122;
  v33 = v117;
  v34 = v118;
  v55 = v114;
  v56 = v115;
  v57 = v116;
  v51 = v110;
  v52 = v111;
  v53 = v112;
  v54 = v113;
  v47 = v106;
  v48 = v107;
  v29 = v17;
  v30 = v15;
  v31 = v13;
  v32 = v16;
  v49 = v108;
  v50 = v109;
  v46 = v105;
  v58 = v101;
  v59 = v102;
  v60 = v103;
  v61 = v104;
  v45 = v14;
  v62 = v18;
  v63 = v129;
  v64 = v24;
  v65 = v22;
  v66 = v21;
  sub_20DF753CC(&v29);
  return memcpy(v27, v28, 0x220uLL);
}

unint64_t sub_20DFD964C()
{
  result = qword_27C8530E0;
  if (!qword_27C8530E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530E0);
  }

  return result;
}

unint64_t sub_20DFD96A0()
{
  result = qword_27C8530E8;
  if (!qword_27C8530E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530E8);
  }

  return result;
}

unint64_t sub_20DFD96F4()
{
  result = qword_27C8530F0;
  if (!qword_27C8530F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853090, &qword_20E011030);
    sub_20DFD9778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530F0);
  }

  return result;
}

unint64_t sub_20DFD9778()
{
  result = qword_27C8530F8;
  if (!qword_27C8530F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8530F8);
  }

  return result;
}

unint64_t sub_20DFD97CC()
{
  result = qword_27C853100;
  if (!qword_27C853100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853100);
  }

  return result;
}

unint64_t sub_20DFD9820()
{
  result = qword_27C853108;
  if (!qword_27C853108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853108);
  }

  return result;
}

unint64_t sub_20DFD9874()
{
  result = qword_27C853110;
  if (!qword_27C853110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8530B8, &qword_20E011038);
    sub_20DFD98F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853110);
  }

  return result;
}

unint64_t sub_20DFD98F8()
{
  result = qword_27C853118;
  if (!qword_27C853118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853118);
  }

  return result;
}

unint64_t sub_20DFD994C()
{
  result = qword_27C853120;
  if (!qword_27C853120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853120);
  }

  return result;
}

unint64_t sub_20DFD99A0()
{
  result = qword_27C853128;
  if (!qword_27C853128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853128);
  }

  return result;
}

uint64_t sub_20DFD9A24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 544))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DFD9A6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 536) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 544) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 544) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20DFD9B90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DFD9BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_20DFD9C6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DFD9CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy202_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_20DFD9D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 202))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DFD9DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 202) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 202) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFD9E68()
{
  result = qword_27C853130;
  if (!qword_27C853130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853130);
  }

  return result;
}

unint64_t sub_20DFD9EC0()
{
  result = qword_27C853138;
  if (!qword_27C853138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853138);
  }

  return result;
}

unint64_t sub_20DFD9F18()
{
  result = qword_27C853140;
  if (!qword_27C853140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853140);
  }

  return result;
}

unint64_t sub_20DFD9F6C()
{
  result = qword_27C853150;
  if (!qword_27C853150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853150);
  }

  return result;
}

unint64_t sub_20DFD9FC0()
{
  result = qword_27C853160;
  if (!qword_27C853160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853160);
  }

  return result;
}

unint64_t sub_20DFDA014()
{
  result = qword_27C853168;
  if (!qword_27C853168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853168);
  }

  return result;
}

unint64_t sub_20DFDA0A0()
{
  result = qword_27C853170;
  if (!qword_27C853170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853170);
  }

  return result;
}

unint64_t sub_20DFDA124()
{
  result = qword_27C853180;
  if (!qword_27C853180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853180);
  }

  return result;
}

unint64_t sub_20DFDA178()
{
  result = qword_27C853190;
  if (!qword_27C853190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853190);
  }

  return result;
}

unint64_t sub_20DFDA204()
{
  result = qword_27C853198;
  if (!qword_27C853198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853198);
  }

  return result;
}

unint64_t sub_20DFDA288()
{
  result = qword_27C8531A8;
  if (!qword_27C8531A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8531A8);
  }

  return result;
}

unint64_t sub_20DFDA2DC()
{
  result = qword_27C8531B8;
  if (!qword_27C8531B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8531B8);
  }

  return result;
}

unint64_t sub_20DFDA330()
{
  result = qword_27C8531C8;
  if (!qword_27C8531C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8531C8);
  }

  return result;
}

uint64_t sub_20DFDA384(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E016FF0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_20DFDA4F0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853210, &qword_20E011810);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDA2DC();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_20E009894();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_20E009894();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_20E009894();
  v25 = v13;
  v33 = 3;
  v14 = sub_20E009894();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_20DFDD92C(&v28, v32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_20DFDD964(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

uint64_t sub_20DFDA7E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E016FD0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616F626E4F666174 && a2 == 0xED0000676E696472 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000020E0151A0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000020E0151E0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020E0151C0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_20DFDAA94@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8531D8, &qword_20E0117F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_20DFD9FC0();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v48);
  }

  v10 = v6;
  v47 = a2;
  LOBYTE(v61) = 0;
  v11 = v5;
  v12 = sub_20E009894();
  v46 = v13;
  LOBYTE(v61) = 1;
  v14 = sub_20E009894();
  v45 = v15;
  v16 = v14;
  LOBYTE(v61) = 2;
  *&v44 = sub_20E009894();
  *(&v44 + 1) = v17;
  LOBYTE(v49) = 3;
  sub_20DFDB02C();
  sub_20E0098C4();
  v41 = v16;
  v42 = v61;
  v43 = v62;
  v18 = v63;
  v19 = v64;
  v95 = 4;
  sub_20DFDB080();
  sub_20E0098C4();
  *&v40 = v18;
  *(&v40 + 1) = v19;
  v89 = v82;
  v90 = v83;
  v91 = v84;
  v92 = v85;
  v87 = v80;
  v88 = v81;
  LOBYTE(v61) = 5;
  v20 = sub_20E009874();
  v93 = v21 & 1;
  LOBYTE(v61) = 6;
  v38 = sub_20E009874();
  v39 = v20;
  v22 = v42;
  v86 = v23 & 1;
  v94 = 7;
  v24 = sub_20E009864();
  (*(v10 + 8))(v8, v11);
  v25 = v46;
  *&v49 = v12;
  *(&v49 + 1) = v46;
  v26 = v41;
  *&v50 = v41;
  *(&v50 + 1) = v45;
  v51 = v44;
  v52 = __PAIR128__(v43, v22);
  v27 = v40;
  v53 = v40;
  v56 = v89;
  v57 = v90;
  v58 = v91;
  v59 = v92;
  v54 = v87;
  v55 = v88;
  v28 = v38;
  *&v60[0] = v39;
  HIDWORD(v37) = v93;
  BYTE8(v60[0]) = v93;
  *&v60[1] = v38;
  LOBYTE(v11) = v86;
  BYTE8(v60[1]) = v86;
  BYTE9(v60[1]) = v24;
  sub_20DFD5C08(&v49, &v61);
  __swift_destroy_boxed_opaque_existential_0(v48);
  v61 = v12;
  v62 = v25;
  v63 = v26;
  v64 = v45;
  v65 = v44;
  v66 = v42;
  v67 = v43;
  v68 = __PAIR128__(*(&v40 + 1), v27);
  v71 = v89;
  v72 = v90;
  v73 = v91;
  v74 = v92;
  v69 = v87;
  v70 = v88;
  v75 = v39;
  v76 = BYTE4(v37);
  v77 = v28;
  v78 = v11;
  v79 = v24;
  result = sub_20DFD5C94(&v61);
  v30 = v60[0];
  v31 = v47;
  v47[10] = v59;
  v31[11] = v30;
  *(v31 + 186) = *(v60 + 10);
  v32 = v56;
  v31[6] = v55;
  v31[7] = v32;
  v33 = v58;
  v31[8] = v57;
  v31[9] = v33;
  v34 = v52;
  v31[2] = v51;
  v31[3] = v34;
  v35 = v54;
  v31[4] = v53;
  v31[5] = v35;
  v36 = v50;
  *v31 = v49;
  v31[1] = v36;
  return result;
}

unint64_t sub_20DFDB02C()
{
  result = qword_27C8531E0;
  if (!qword_27C8531E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8531E0);
  }

  return result;
}

unint64_t sub_20DFDB080()
{
  result = qword_27C8531E8;
  if (!qword_27C8531E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8531E8);
  }

  return result;
}

uint64_t sub_20DFDB0D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x800000020E017010 == a2;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020E0150E0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020E015100 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_20E009984();

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

uint64_t sub_20DFDB1F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853360, &qword_20E0122D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDE6FC();
  sub_20E009A74();
  if (!v1)
  {
    v12 = 0;
    v7 = sub_20E009894();
    v11 = 1;
    sub_20E0098B4();
    v10 = 2;
    sub_20E0098B4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_20DFDB3FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020E017010 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65706F725070746FLL && a2 == 0xED00007365697472 || (sub_20E009984() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E017030 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_20DFDB654@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853368, &qword_20E0122D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDE750();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v47) = 0;
  v9 = sub_20E0098A4();
  LOBYTE(v47) = 1;
  v11 = sub_20E009894();
  v39 = v12;
  LOBYTE(v47) = 2;
  v13 = sub_20E009894();
  v38 = v14;
  v36 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853318, &qword_20E0122B8);
  LOBYTE(v41) = 3;
  sub_20DFDE9FC();
  sub_20E0098C4();
  v40 = 0;
  v35 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853330, &qword_20E0122C0);
  LOBYTE(v41) = 4;
  sub_20DFDEAD4();
  v15 = v40;
  sub_20E009884();
  v40 = v15;
  if (v15)
  {
    (*(v6 + 8))(v8, v5);
    v16 = 0;
  }

  else
  {
    v37 = v47;
    LOBYTE(v41) = 5;
    sub_20DFDEBAC();
    v17 = v40;
    sub_20E0098C4();
    if (!v17)
    {
      v34 = v47;
      v33 = v48;
      v18 = v49;
      v60 = 6;
      v32 = sub_20E009894();
      v40 = 0;
      v20 = v19;
      v21 = v9 & 1;
      v59 = v21;
      (*(v6 + 8))(v8, v5);
      LOBYTE(v41) = v21;
      *(&v41 + 1) = v11;
      v22 = v39;
      *&v42 = v39;
      v23 = v38;
      *(&v42 + 1) = v36;
      *&v43 = v38;
      v24 = v35;
      v25 = v37;
      *(&v43 + 1) = v35;
      *&v44 = v37;
      *(&v44 + 1) = v34;
      *&v45 = v33;
      v31 = v18;
      *(&v45 + 1) = v18;
      v26 = v32;
      *&v46 = v32;
      *(&v46 + 1) = v20;
      sub_20DFDA068(&v41, &v47);
      __swift_destroy_boxed_opaque_existential_0(a1);
      LOBYTE(v47) = v59;
      v48 = v11;
      v49 = v22;
      v50 = v36;
      v51 = v23;
      v52 = v24;
      v53 = v25;
      v54 = v34;
      v55 = v33;
      v56 = v31;
      v57 = v26;
      v58 = v20;
      result = sub_20DFDA0F4(&v47);
      v27 = v44;
      a2[2] = v43;
      a2[3] = v27;
      v28 = v46;
      a2[4] = v45;
      a2[5] = v28;
      v29 = v42;
      *a2 = v41;
      a2[1] = v29;
      return result;
    }

    v40 = v17;
    (*(v6 + 8))(v8, v5);
    v16 = 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);

  if (v16)
  {
  }

  return result;
}

uint64_t sub_20DFDBBD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853420, &qword_20E012808);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDF0AC();
  sub_20E009A74();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_20E009894();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    v9[15] = 1;
    sub_20DF756D4(&qword_2811230A0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_20E0098C4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_20DFDBDF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B6D726F66 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74786554746E6968 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E6F4374786574 && a2 == 0xEF65707954746E65 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6472616F6279656BLL && a2 == 0xEC00000065707954 || (sub_20E009984() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6572756365537369 && a2 == 0xE800000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020E015360 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020E015380 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7865676572 && a2 == 0xE500000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_20DFDC184@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853418, &qword_20E012800);
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v7 = &v31 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDF058();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  v46 = a2;
  LOBYTE(v56[0]) = 0;
  v9 = sub_20E009894();
  v45 = v10;
  LOBYTE(v56[0]) = 1;
  v11 = sub_20E009894();
  v44 = v12;
  v39 = v11;
  LOBYTE(v56[0]) = 2;
  v38 = sub_20E009894();
  v43 = v13;
  LOBYTE(v56[0]) = 3;
  v37 = sub_20E009854();
  v42 = v14;
  LOBYTE(v56[0]) = 4;
  v36 = sub_20E009894();
  v41 = v15;
  LOBYTE(v56[0]) = 5;
  v35 = sub_20E009894();
  v40 = v16;
  LOBYTE(v56[0]) = 6;
  v17 = sub_20E0098A4();
  LOBYTE(v56[0]) = 7;
  v33 = sub_20E0098B4();
  LOBYTE(v56[0]) = 8;
  v34 = sub_20E0098B4();
  LOBYTE(v56[0]) = 9;
  v32 = sub_20E009894();
  v19 = v18;
  v64 = 10;
  v20 = sub_20E009864();
  v21 = v17 & 1;
  v63 = v21;
  (*(v8 + 8))(v7, v47);
  v22 = v45;
  *&v48 = v9;
  *(&v48 + 1) = v45;
  v23 = v40;
  *&v49 = v39;
  *(&v49 + 1) = v44;
  *&v50 = v38;
  *(&v50 + 1) = v43;
  *&v51 = v37;
  *(&v51 + 1) = v42;
  *&v52 = v36;
  *(&v52 + 1) = v41;
  *&v53 = v35;
  *(&v53 + 1) = v40;
  LOBYTE(v54) = v21;
  v24 = v33;
  *(&v54 + 1) = v33;
  *&v55[0] = v34;
  *(&v55[0] + 1) = v32;
  *&v55[1] = v19;
  BYTE8(v55[1]) = v20;
  sub_20DFDF154(&v48, v56);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v56[0] = v9;
  v56[1] = v22;
  v56[2] = v39;
  v56[3] = v44;
  v56[4] = v38;
  v56[5] = v43;
  v56[6] = v37;
  v56[7] = v42;
  v56[8] = v36;
  v56[9] = v41;
  v56[10] = v35;
  v56[11] = v23;
  v57 = v63;
  v58 = v24;
  v59 = v34;
  v60 = v32;
  v61 = v19;
  v62 = v20;
  result = sub_20DFDF18C(v56);
  v26 = v55[0];
  v27 = v46;
  v46[6] = v54;
  v27[7] = v26;
  *(v27 + 121) = *(v55 + 9);
  v28 = v51;
  v27[2] = v50;
  v27[3] = v28;
  v29 = v53;
  v27[4] = v52;
  v27[5] = v29;
  v30 = v49;
  *v27 = v48;
  v27[1] = v30;
  return result;
}

uint64_t sub_20DFDC7C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853428, &qword_20E012810);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_20DFDF100();
  sub_20E009A74();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_20E0098B4();
    v9[14] = 1;
    sub_20E009894();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_20DFDC974(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065 || (sub_20E009984() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_20E009984() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E656449616965 && a2 == 0xED00007265696669)
  {

    return 5;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20DFDCB84@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8531F8, &qword_20E011800);
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v32 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDA178();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v7 = v4;
  LOBYTE(v52[0]) = 0;
  v8 = v39;
  v9 = v6;
  v10 = sub_20E009894();
  v12 = v11;
  LOBYTE(v52[0]) = 1;
  v13 = sub_20E009894();
  v37 = v14;
  LOBYTE(v52[0]) = 2;
  v15 = sub_20E009894();
  v36 = v16;
  v33 = v13;
  v34 = v15;
  LOBYTE(v52[0]) = 3;
  v32 = sub_20E009854();
  v35 = v17;
  v77 = 4;
  sub_20DFDD028();
  sub_20E0098C4();
  v73 = v66;
  v74 = v67;
  v75 = v68;
  v69 = v62;
  v70 = v63;
  v71 = v64;
  v72 = v65;
  v76 = 5;
  v18 = sub_20E009894();
  v19 = v9;
  v21 = v20;
  (*(v7 + 8))(v19, v8);
  *&v40 = v10;
  *(&v40 + 1) = v12;
  v22 = v33;
  v23 = v36;
  *&v41 = v33;
  *(&v41 + 1) = v37;
  *&v42 = v34;
  *(&v42 + 1) = v36;
  *&v43 = v32;
  *(&v43 + 1) = v35;
  v48 = v73;
  v49 = v74;
  v50 = v75;
  v44 = v69;
  v45 = v70;
  v46 = v71;
  v47 = v72;
  *&v51 = v18;
  *(&v51 + 1) = v21;
  sub_20DFD5D9C(&v40, v52);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v52[0] = v10;
  v52[1] = v12;
  v52[2] = v22;
  v52[3] = v37;
  v52[4] = v34;
  v52[5] = v23;
  v52[6] = v32;
  v52[7] = v35;
  v57 = v73;
  v58 = v74;
  v59 = v75;
  v53 = v69;
  v54 = v70;
  v55 = v71;
  v56 = v72;
  v60 = v18;
  v61 = v21;
  result = sub_20DFD5E28(v52);
  v25 = v49;
  v26 = v38;
  v38[8] = v48;
  v26[9] = v25;
  v27 = v51;
  v26[10] = v50;
  v26[11] = v27;
  v28 = v45;
  v26[4] = v44;
  v26[5] = v28;
  v29 = v47;
  v26[6] = v46;
  v26[7] = v29;
  v30 = v41;
  *v26 = v40;
  v26[1] = v30;
  v31 = v43;
  v26[2] = v42;
  v26[3] = v31;
  return result;
}

unint64_t sub_20DFDD028()
{
  result = qword_27C853200;
  if (!qword_27C853200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853200);
  }

  return result;
}

uint64_t sub_20DFDD07C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853398, &qword_20E0122E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDE9A8();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v46[0]) = 0;
  v9 = sub_20E009894();
  v38 = v10;
  LOBYTE(v46[0]) = 1;
  *&v37 = sub_20E009894();
  *(&v37 + 1) = v11;
  LOBYTE(v46[0]) = 2;
  v35 = sub_20E009894();
  v13 = v12;
  LOBYTE(v46[0]) = 3;
  v14 = sub_20E009894();
  v36 = v15;
  v31 = v14;
  LOBYTE(v46[0]) = 4;
  v34 = 0;
  v30 = sub_20E009894();
  v33 = v16;
  LOBYTE(v46[0]) = 5;
  v29 = sub_20E009894();
  v32 = v17;
  v58 = 6;
  v18 = sub_20E009894();
  v19 = *(v6 + 8);
  v20 = v18;
  v34 = v21;
  v19(v8, v5);
  *&v39 = v9;
  v22 = v38;
  *(&v39 + 1) = v38;
  v40 = v37;
  *&v41 = v35;
  *(&v41 + 1) = v13;
  *&v42 = v31;
  v23 = v36;
  *(&v42 + 1) = v36;
  *&v43 = v30;
  *(&v43 + 1) = v33;
  *&v44 = v29;
  *(&v44 + 1) = v32;
  *&v45 = v20;
  v24 = v34;
  *(&v45 + 1) = v34;
  sub_20DFDA1CC(&v39, v46);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v46[0] = v9;
  v46[1] = v22;
  v47 = v37;
  v48 = v35;
  v49 = v13;
  v50 = v31;
  v51 = v23;
  v52 = v30;
  v53 = v33;
  v54 = v29;
  v55 = v32;
  v56 = v20;
  v57 = v24;
  result = sub_20DFDA258(v46);
  v26 = v44;
  a2[4] = v43;
  a2[5] = v26;
  a2[6] = v45;
  v27 = v40;
  *a2 = v39;
  a2[1] = v27;
  v28 = v42;
  a2[2] = v41;
  a2[3] = v28;
  return result;
}

unint64_t sub_20DFDD5EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_20E009844();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20DFDD638@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853208, &qword_20E011808);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFDA288();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_20E009894();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_20E009894();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_20E009894();
  v25 = v13;
  v33 = 3;
  v14 = sub_20E009894();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_20DFD5E58(&v28, v32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_20DFD5EE4(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

uint64_t sub_20DFDD994(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  sub_20E009A74();
  if (!v5)
  {
    v12 = v15;
    v17 = 0;
    v11 = sub_20E009894();
    v16 = 1;
    sub_20E009894();
    (*(v12 + 8))(v10, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

unint64_t sub_20DFDDB84()
{
  result = qword_27C853228;
  if (!qword_27C853228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853228);
  }

  return result;
}

uint64_t sub_20DFDDC70(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_20DFDDD00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_20DFDDDFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_20DFDDE44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFDDEC0()
{
  result = qword_27C853238;
  if (!qword_27C853238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853238);
  }

  return result;
}

unint64_t sub_20DFDDF18()
{
  result = qword_27C853240;
  if (!qword_27C853240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853240);
  }

  return result;
}

unint64_t sub_20DFDDF70()
{
  result = qword_27C853248;
  if (!qword_27C853248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853248);
  }

  return result;
}

unint64_t sub_20DFDDFC8()
{
  result = qword_27C853250;
  if (!qword_27C853250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853250);
  }

  return result;
}

unint64_t sub_20DFDE020()
{
  result = qword_27C853258;
  if (!qword_27C853258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853258);
  }

  return result;
}

unint64_t sub_20DFDE078()
{
  result = qword_27C853260;
  if (!qword_27C853260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853260);
  }

  return result;
}

unint64_t sub_20DFDE0D0()
{
  result = qword_27C853268;
  if (!qword_27C853268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853268);
  }

  return result;
}

unint64_t sub_20DFDE128()
{
  result = qword_27C853270;
  if (!qword_27C853270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853270);
  }

  return result;
}

unint64_t sub_20DFDE180()
{
  result = qword_27C853278;
  if (!qword_27C853278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853278);
  }

  return result;
}

unint64_t sub_20DFDE1D8()
{
  result = qword_27C853280;
  if (!qword_27C853280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853280);
  }

  return result;
}

unint64_t sub_20DFDE230()
{
  result = qword_27C853288;
  if (!qword_27C853288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853288);
  }

  return result;
}

unint64_t sub_20DFDE288()
{
  result = qword_27C853290;
  if (!qword_27C853290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853290);
  }

  return result;
}

unint64_t sub_20DFDE2E0()
{
  result = qword_27C853298;
  if (!qword_27C853298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853298);
  }

  return result;
}

unint64_t sub_20DFDE338()
{
  result = qword_27C8532A0;
  if (!qword_27C8532A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532A0);
  }

  return result;
}

unint64_t sub_20DFDE390()
{
  result = qword_27C8532A8;
  if (!qword_27C8532A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532A8);
  }

  return result;
}

unint64_t sub_20DFDE3E8()
{
  result = qword_27C8532B0;
  if (!qword_27C8532B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532B0);
  }

  return result;
}

unint64_t sub_20DFDE440()
{
  result = qword_27C8532B8;
  if (!qword_27C8532B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532B8);
  }

  return result;
}

unint64_t sub_20DFDE498()
{
  result = qword_27C8532C0;
  if (!qword_27C8532C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532C0);
  }

  return result;
}

unint64_t sub_20DFDE4F0()
{
  result = qword_27C8532C8;
  if (!qword_27C8532C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532C8);
  }

  return result;
}

unint64_t sub_20DFDE548()
{
  result = qword_27C8532D0;
  if (!qword_27C8532D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532D0);
  }

  return result;
}

unint64_t sub_20DFDE5A0()
{
  result = qword_27C8532D8;
  if (!qword_27C8532D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532D8);
  }

  return result;
}

unint64_t sub_20DFDE5F8()
{
  result = qword_27C8532E0;
  if (!qword_27C8532E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532E0);
  }

  return result;
}

unint64_t sub_20DFDE650()
{
  result = qword_27C8532E8;
  if (!qword_27C8532E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532E8);
  }

  return result;
}

unint64_t sub_20DFDE6A8()
{
  result = qword_27C8532F0;
  if (!qword_27C8532F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8532F0);
  }

  return result;
}

unint64_t sub_20DFDE6FC()
{
  result = qword_27C853300;
  if (!qword_27C853300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853300);
  }

  return result;
}

unint64_t sub_20DFDE750()
{
  result = qword_27C853310;
  if (!qword_27C853310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853310);
  }

  return result;
}

unint64_t sub_20DFDE7A4()
{
  result = qword_27C853320;
  if (!qword_27C853320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853318, &qword_20E0122B8);
    sub_20DFDE828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853320);
  }

  return result;
}

unint64_t sub_20DFDE828()
{
  result = qword_27C853328;
  if (!qword_27C853328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853328);
  }

  return result;
}

unint64_t sub_20DFDE87C()
{
  result = qword_27C853338;
  if (!qword_27C853338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853330, &qword_20E0122C0);
    sub_20DFDE900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853338);
  }

  return result;
}

unint64_t sub_20DFDE900()
{
  result = qword_27C853340;
  if (!qword_27C853340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853340);
  }

  return result;
}

unint64_t sub_20DFDE954()
{
  result = qword_27C853348;
  if (!qword_27C853348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853348);
  }

  return result;
}

unint64_t sub_20DFDE9A8()
{
  result = qword_27C853358;
  if (!qword_27C853358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853358);
  }

  return result;
}

unint64_t sub_20DFDE9FC()
{
  result = qword_27C853370;
  if (!qword_27C853370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853318, &qword_20E0122B8);
    sub_20DFDEA80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853370);
  }

  return result;
}

unint64_t sub_20DFDEA80()
{
  result = qword_27C853378;
  if (!qword_27C853378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853378);
  }

  return result;
}

unint64_t sub_20DFDEAD4()
{
  result = qword_27C853380;
  if (!qword_27C853380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C853330, &qword_20E0122C0);
    sub_20DFDEB58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853380);
  }

  return result;
}

unint64_t sub_20DFDEB58()
{
  result = qword_27C853388;
  if (!qword_27C853388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853388);
  }

  return result;
}

unint64_t sub_20DFDEBAC()
{
  result = qword_27C853390;
  if (!qword_27C853390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853390);
  }

  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_20DFDEC84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DFDECCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFDED44()
{
  result = qword_27C8533A0;
  if (!qword_27C8533A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533A0);
  }

  return result;
}

unint64_t sub_20DFDED9C()
{
  result = qword_27C8533A8;
  if (!qword_27C8533A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533A8);
  }

  return result;
}

unint64_t sub_20DFDEDF4()
{
  result = qword_27C8533B0;
  if (!qword_27C8533B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533B0);
  }

  return result;
}

unint64_t sub_20DFDEE4C()
{
  result = qword_27C8533B8;
  if (!qword_27C8533B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533B8);
  }

  return result;
}

unint64_t sub_20DFDEEA4()
{
  result = qword_27C8533C0;
  if (!qword_27C8533C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533C0);
  }

  return result;
}

unint64_t sub_20DFDEEFC()
{
  result = qword_27C8533C8;
  if (!qword_27C8533C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533C8);
  }

  return result;
}

unint64_t sub_20DFDEF54()
{
  result = qword_27C8533D0;
  if (!qword_27C8533D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533D0);
  }

  return result;
}

unint64_t sub_20DFDEFAC()
{
  result = qword_27C8533D8;
  if (!qword_27C8533D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533D8);
  }

  return result;
}

unint64_t sub_20DFDF004()
{
  result = qword_27C8533E0;
  if (!qword_27C8533E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533E0);
  }

  return result;
}

unint64_t sub_20DFDF058()
{
  result = qword_27C8533F0;
  if (!qword_27C8533F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8533F0);
  }

  return result;
}

unint64_t sub_20DFDF0AC()
{
  result = qword_27C853400;
  if (!qword_27C853400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853400);
  }

  return result;
}

unint64_t sub_20DFDF100()
{
  result = qword_27C853410;
  if (!qword_27C853410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853410);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalTAFField.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalTAFField.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20DFDF330()
{
  result = qword_27C853430;
  if (!qword_27C853430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853430);
  }

  return result;
}

unint64_t sub_20DFDF388()
{
  result = qword_27C853438;
  if (!qword_27C853438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853438);
  }

  return result;
}

unint64_t sub_20DFDF3E0()
{
  result = qword_27C853440;
  if (!qword_27C853440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853440);
  }

  return result;
}

unint64_t sub_20DFDF438()
{
  result = qword_27C853448;
  if (!qword_27C853448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853448);
  }

  return result;
}

unint64_t sub_20DFDF490()
{
  result = qword_27C853450;
  if (!qword_27C853450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853450);
  }

  return result;
}

unint64_t sub_20DFDF4E8()
{
  result = qword_27C853458;
  if (!qword_27C853458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853458);
  }

  return result;
}

unint64_t sub_20DFDF540()
{
  result = qword_27C853460;
  if (!qword_27C853460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853460);
  }

  return result;
}

unint64_t sub_20DFDF598()
{
  result = qword_27C853468;
  if (!qword_27C853468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853468);
  }

  return result;
}

unint64_t sub_20DFDF5F0()
{
  result = qword_27C853470;
  if (!qword_27C853470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853470);
  }

  return result;
}

uint64_t sub_20DFDF668@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20E008D04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20E008714();
  (*(*(v7 - 8) + 16))(a1, v1, v7);
  sub_20E008CF4();
  sub_20E008CE4();
  (*(v4 + 8))(v6, v3);
  sub_20E009254();

  sub_20E0086D4();

  sub_20DFE1098();
  sub_20E0086D4();

  v8 = [objc_opt_self() processInfo];
  LOBYTE(v3) = [v8 isMacCatalystApp];

  if ((v3 & 1) == 0)
  {
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 systemName];

    sub_20E0091D4();
  }

  sub_20E0086D4();
}

void sub_20DFDF8DC(unint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (os_variant_has_internal_diagnostics())
  {
    v8 = sub_20E0086A4();
    if (v8)
    {
      v9 = v8;
      if (qword_2811230C8 != -1)
      {
LABEL_40:
        swift_once();
      }

      v10 = sub_20E009094();
      __swift_project_value_buffer(v10, qword_2811249D0);

      v11 = sub_20E009074();
      v12 = sub_20E009554();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = v9;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        p_isa = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_20DF74468(a3, a4, &p_isa);
        _os_log_impl(&dword_20DF62000, v11, v12, ">>> %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x20F32B3A0](v15, -1, -1);
        v16 = v14;
        v9 = v13;
        MEMORY[0x20F32B3A0](v16, -1, -1);
      }

      v17 = sub_20E009074();
      v18 = sub_20E009554();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        p_isa = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_20DF74468(a1, a2, &p_isa);
        _os_log_impl(&dword_20DF62000, v17, v18, "%s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x20F32B3A0](v20, -1, -1);
        MEMORY[0x20F32B3A0](v19, -1, -1);
      }

      a4 = sub_20E009074();
      v21 = sub_20E009554();
      if (os_log_type_enabled(a4, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20DF62000, a4, v21, "======== Headers =======", v22, 2u);
        MEMORY[0x20F32B3A0](v22, -1, -1);
      }

      v23 = 0;
      v24 = v9 + 64;
      v25 = 1 << *(v9 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      a3 = v26 & *(v9 + 64);
      v27 = (v25 + 63) >> 6;
      v53 = v9;
      while (a3)
      {
        a2 = v23;
LABEL_28:
        v40 = __clz(__rbit64(a3));
        a3 &= a3 - 1;
        v41 = (a2 << 10) | (16 * v40);
        v42 = *(v9 + 48) + v41;
        a4 = *v42;
        v43 = *(v42 + 8);
        v44 = (*(v9 + 56) + v41);
        a1 = v44[1];
        v55 = *v44;

        v45 = sub_20E009074();
        v46 = sub_20E009554();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          p_isa = &v54->isa;
          *v47 = 136315394;
          v48 = sub_20DF74468(a4, v43, &p_isa);

          *(v47 + 4) = v48;
          *(v47 + 12) = 2080;
          v49 = sub_20DF74468(v55, a1, &p_isa);

          *(v47 + 14) = v49;
          _os_log_impl(&dword_20DF62000, v45, v46, "%s: %s", v47, 0x16u);
          a4 = v54;
          swift_arrayDestroy();
          MEMORY[0x20F32B3A0](v54, -1, -1);
          v50 = v47;
          v9 = v53;
          MEMORY[0x20F32B3A0](v50, -1, -1);
        }

        else
        {
        }

        v23 = a2;
      }

      while (1)
      {
        a2 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (a2 >= v27)
        {
          break;
        }

        a3 = *(v24 + 8 * a2);
        ++v23;
        if (a3)
        {
          goto LABEL_28;
        }
      }

      oslog = sub_20E009074();
      v51 = sub_20E009554();
      if (os_log_type_enabled(oslog, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_20DF62000, oslog, v51, "========================", v52, 2u);
        MEMORY[0x20F32B3A0](v52, -1, -1);
      }

LABEL_36:

      return;
    }
  }

  v28 = sub_20E0086A4();
  if (!v28)
  {
    return;
  }

  v29 = v28;
  if (*(v28 + 16))
  {
    v30 = sub_20DFB85D0(0x7365757165522D58, 0xEB00000000644974);
    if (v31)
    {
      v32 = (*(v29 + 56) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];

      if (qword_2811230C8 != -1)
      {
        swift_once();
      }

      v35 = sub_20E009094();
      __swift_project_value_buffer(v35, qword_2811249D0);

      oslog = sub_20E009074();
      v36 = sub_20E009554();

      if (os_log_type_enabled(oslog, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        p_isa = v38;
        *v37 = 136315394;
        *(v37 + 4) = sub_20DF74468(a3, a4, &p_isa);
        *(v37 + 12) = 2080;
        v39 = sub_20DF74468(v34, v33, &p_isa);

        *(v37 + 14) = v39;
        _os_log_impl(&dword_20DF62000, oslog, v36, ">>> %s : requestID: %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F32B3A0](v38, -1, -1);
        MEMORY[0x20F32B3A0](v37, -1, -1);

        return;
      }

      goto LABEL_36;
    }
  }
}